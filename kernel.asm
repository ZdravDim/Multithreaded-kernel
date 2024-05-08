
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	7e013103          	ld	sp,2016(sp) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	428060ef          	jal	ra,80006444 <start>

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
    80001080:	279010ef          	jal	ra,80002af8 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	640080e7          	jalr	1600(ra) # 800028ac <_ZN15MemoryAllocator20get_number_of_blocksEm>
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

int sem_open (sem_t* handle, unsigned init) { return 0; }
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00813423          	sd	s0,8(sp)
    80001410:	01010413          	addi	s0,sp,16
    80001414:	00000513          	li	a0,0
    80001418:	00813403          	ld	s0,8(sp)
    8000141c:	01010113          	addi	sp,sp,16
    80001420:	00008067          	ret

0000000080001424 <_Z9sem_closeP3Sem>:

int sem_close (sem_t handle) { return 0; }
    80001424:	ff010113          	addi	sp,sp,-16
    80001428:	00813423          	sd	s0,8(sp)
    8000142c:	01010413          	addi	s0,sp,16
    80001430:	00000513          	li	a0,0
    80001434:	00813403          	ld	s0,8(sp)
    80001438:	01010113          	addi	sp,sp,16
    8000143c:	00008067          	ret

0000000080001440 <_Z8sem_waitP3Sem>:

int sem_wait (sem_t id) { return 0; }
    80001440:	ff010113          	addi	sp,sp,-16
    80001444:	00813423          	sd	s0,8(sp)
    80001448:	01010413          	addi	s0,sp,16
    8000144c:	00000513          	li	a0,0
    80001450:	00813403          	ld	s0,8(sp)
    80001454:	01010113          	addi	sp,sp,16
    80001458:	00008067          	ret

000000008000145c <_Z10sem_signalP3Sem>:

int sem_signal (sem_t id) { return 0; }
    8000145c:	ff010113          	addi	sp,sp,-16
    80001460:	00813423          	sd	s0,8(sp)
    80001464:	01010413          	addi	s0,sp,16
    80001468:	00000513          	li	a0,0
    8000146c:	00813403          	ld	s0,8(sp)
    80001470:	01010113          	addi	sp,sp,16
    80001474:	00008067          	ret

0000000080001478 <_Z13sem_timedwaitP3Semm>:

int sem_timedwait(sem_t id, time_t timeout) { return 0; }
    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00813423          	sd	s0,8(sp)
    80001480:	01010413          	addi	s0,sp,16
    80001484:	00000513          	li	a0,0
    80001488:	00813403          	ld	s0,8(sp)
    8000148c:	01010113          	addi	sp,sp,16
    80001490:	00008067          	ret

0000000080001494 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) { return 0; }
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00813423          	sd	s0,8(sp)
    8000149c:	01010413          	addi	s0,sp,16
    800014a0:	00000513          	li	a0,0
    800014a4:	00813403          	ld	s0,8(sp)
    800014a8:	01010113          	addi	sp,sp,16
    800014ac:	00008067          	ret

00000000800014b0 <_Z10time_sleepm>:

int time_sleep (time_t) { return 0; }
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00813423          	sd	s0,8(sp)
    800014b8:	01010413          	addi	s0,sp,16
    800014bc:	00000513          	li	a0,0
    800014c0:	00813403          	ld	s0,8(sp)
    800014c4:	01010113          	addi	sp,sp,16
    800014c8:	00008067          	ret

00000000800014cc <_Z4getcv>:

char getc () {
    800014cc:	fe010113          	addi	sp,sp,-32
    800014d0:	00113c23          	sd	ra,24(sp)
    800014d4:	00813823          	sd	s0,16(sp)
    800014d8:	02010413          	addi	s0,sp,32
    char volatile c;
    syscall(GETC);
    800014dc:	00000713          	li	a4,0
    800014e0:	00000693          	li	a3,0
    800014e4:	00000613          	li	a2,0
    800014e8:	00000593          	li	a1,0
    800014ec:	04100513          	li	a0,65
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	d4c080e7          	jalr	-692(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(c));
    800014f8:	00050793          	mv	a5,a0
    800014fc:	fef407a3          	sb	a5,-17(s0)
    return c;
    80001500:	fef44503          	lbu	a0,-17(s0)
}
    80001504:	0ff57513          	andi	a0,a0,255
    80001508:	01813083          	ld	ra,24(sp)
    8000150c:	01013403          	ld	s0,16(sp)
    80001510:	02010113          	addi	sp,sp,32
    80001514:	00008067          	ret

0000000080001518 <_Z4putcc>:

void putc (char c) {
    80001518:	ff010113          	addi	sp,sp,-16
    8000151c:	00113423          	sd	ra,8(sp)
    80001520:	00813023          	sd	s0,0(sp)
    80001524:	01010413          	addi	s0,sp,16
    80001528:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    8000152c:	00000713          	li	a4,0
    80001530:	00000693          	li	a3,0
    80001534:	00000613          	li	a2,0
    80001538:	04200513          	li	a0,66
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	d00080e7          	jalr	-768(ra) # 8000123c <_Z7syscallmmmmm>
    80001544:	00813083          	ld	ra,8(sp)
    80001548:	00013403          	ld	s0,0(sp)
    8000154c:	01010113          	addi	sp,sp,16
    80001550:	00008067          	ret

0000000080001554 <_ZN3SemD1Ev>:
#include "../h/semaphore.hpp"

Sem::~Sem() {
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00113423          	sd	ra,8(sp)
    8000155c:	00813023          	sd	s0,0(sp)
    80001560:	01010413          	addi	s0,sp,16
    80001564:	0000a797          	auipc	a5,0xa
    80001568:	02c78793          	addi	a5,a5,44 # 8000b590 <_ZTV3Sem+0x10>
    8000156c:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    80001570:	00850513          	addi	a0,a0,8
    80001574:	00002097          	auipc	ra,0x2
    80001578:	838080e7          	jalr	-1992(ra) # 80002dac <_ZN10ThreadList4freeEv>
}
    8000157c:	00813083          	ld	ra,8(sp)
    80001580:	00013403          	ld	s0,0(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <_ZN3SemD0Ev>:
Sem::~Sem() {
    8000158c:	fe010113          	addi	sp,sp,-32
    80001590:	00113c23          	sd	ra,24(sp)
    80001594:	00813823          	sd	s0,16(sp)
    80001598:	00913423          	sd	s1,8(sp)
    8000159c:	02010413          	addi	s0,sp,32
    800015a0:	00050493          	mv	s1,a0
}
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	fb0080e7          	jalr	-80(ra) # 80001554 <_ZN3SemD1Ev>
    800015ac:	00048513          	mv	a0,s1
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	af0080e7          	jalr	-1296(ra) # 800020a0 <_ZdlPv>
    800015b8:	01813083          	ld	ra,24(sp)
    800015bc:	01013403          	ld	s0,16(sp)
    800015c0:	00813483          	ld	s1,8(sp)
    800015c4:	02010113          	addi	sp,sp,32
    800015c8:	00008067          	ret

00000000800015cc <_ZN3Sem5blockEv>:
    if (closed) return -1;
    if (++value <= 0) unblock();
    return 0;
}

void Sem::block() {
    800015cc:	fe010113          	addi	sp,sp,-32
    800015d0:	00113c23          	sd	ra,24(sp)
    800015d4:	00813823          	sd	s0,16(sp)
    800015d8:	00913423          	sd	s1,8(sp)
    800015dc:	01213023          	sd	s2,0(sp)
    800015e0:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    800015e4:	0000a917          	auipc	s2,0xa
    800015e8:	20493903          	ld	s2,516(s2) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015ec:	00093483          	ld	s1,0(s2)
    blocked_threads.push_back(old);
    800015f0:	00048593          	mv	a1,s1
    800015f4:	00850513          	addi	a0,a0,8
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	674080e7          	jalr	1652(ra) # 80002c6c <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001600:	00001097          	auipc	ra,0x1
    80001604:	32c080e7          	jalr	812(ra) # 8000292c <_ZN9Scheduler3getEv>
    80001608:	00050593          	mv	a1,a0
    8000160c:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    80001610:	00048513          	mv	a0,s1
    80001614:	00000097          	auipc	ra,0x0
    80001618:	604080e7          	jalr	1540(ra) # 80001c18 <_ZN3TCB5yieldEPS_S0_>
}
    8000161c:	01813083          	ld	ra,24(sp)
    80001620:	01013403          	ld	s0,16(sp)
    80001624:	00813483          	ld	s1,8(sp)
    80001628:	00013903          	ld	s2,0(sp)
    8000162c:	02010113          	addi	sp,sp,32
    80001630:	00008067          	ret

0000000080001634 <_ZN3Sem4waitEv>:
    if (closed) return -1;
    80001634:	01c54783          	lbu	a5,28(a0)
    80001638:	06079063          	bnez	a5,80001698 <_ZN3Sem4waitEv+0x64>
int Sem::wait() {
    8000163c:	fe010113          	addi	sp,sp,-32
    80001640:	00113c23          	sd	ra,24(sp)
    80001644:	00813823          	sd	s0,16(sp)
    80001648:	00913423          	sd	s1,8(sp)
    8000164c:	02010413          	addi	s0,sp,32
    80001650:	00050493          	mv	s1,a0
    if (--value < 0) {
    80001654:	01852783          	lw	a5,24(a0)
    80001658:	fff7879b          	addiw	a5,a5,-1
    8000165c:	00f52c23          	sw	a5,24(a0)
    80001660:	02079713          	slli	a4,a5,0x20
    80001664:	00074e63          	bltz	a4,80001680 <_ZN3Sem4waitEv+0x4c>
    return 0;
    80001668:	00000513          	li	a0,0
}
    8000166c:	01813083          	ld	ra,24(sp)
    80001670:	01013403          	ld	s0,16(sp)
    80001674:	00813483          	ld	s1,8(sp)
    80001678:	02010113          	addi	sp,sp,32
    8000167c:	00008067          	ret
        block();
    80001680:	00000097          	auipc	ra,0x0
    80001684:	f4c080e7          	jalr	-180(ra) # 800015cc <_ZN3Sem5blockEv>
        if (closed) return -2; /// thread released because Semaphore is closed
    80001688:	01c4c783          	lbu	a5,28(s1)
    8000168c:	00079a63          	bnez	a5,800016a0 <_ZN3Sem4waitEv+0x6c>
    return 0;
    80001690:	00000513          	li	a0,0
    80001694:	fd9ff06f          	j	8000166c <_ZN3Sem4waitEv+0x38>
    if (closed) return -1;
    80001698:	fff00513          	li	a0,-1
}
    8000169c:	00008067          	ret
        if (closed) return -2; /// thread released because Semaphore is closed
    800016a0:	ffe00513          	li	a0,-2
    800016a4:	fc9ff06f          	j	8000166c <_ZN3Sem4waitEv+0x38>

00000000800016a8 <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00113423          	sd	ra,8(sp)
    800016b0:	00813023          	sd	s0,0(sp)
    800016b4:	01010413          	addi	s0,sp,16
    TCB* thread = blocked_threads.get_first();
    800016b8:	00850513          	addi	a0,a0,8
    800016bc:	00001097          	auipc	ra,0x1
    800016c0:	55c080e7          	jalr	1372(ra) # 80002c18 <_ZN10ThreadList9get_firstEv>
    Scheduler::put(thread);
    800016c4:	00001097          	auipc	ra,0x1
    800016c8:	208080e7          	jalr	520(ra) # 800028cc <_ZN9Scheduler3putEP3TCB>
}
    800016cc:	00813083          	ld	ra,8(sp)
    800016d0:	00013403          	ld	s0,0(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret

00000000800016dc <_ZN3Sem6signalEv>:
    if (closed) return -1;
    800016dc:	01c54783          	lbu	a5,28(a0)
    800016e0:	04079663          	bnez	a5,8000172c <_ZN3Sem6signalEv+0x50>
    if (++value <= 0) unblock();
    800016e4:	01852783          	lw	a5,24(a0)
    800016e8:	0017879b          	addiw	a5,a5,1
    800016ec:	0007871b          	sext.w	a4,a5
    800016f0:	00f52c23          	sw	a5,24(a0)
    800016f4:	00e05663          	blez	a4,80001700 <_ZN3Sem6signalEv+0x24>
    return 0;
    800016f8:	00000513          	li	a0,0
}
    800016fc:	00008067          	ret
int Sem::signal() {
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00113423          	sd	ra,8(sp)
    80001708:	00813023          	sd	s0,0(sp)
    8000170c:	01010413          	addi	s0,sp,16
    if (++value <= 0) unblock();
    80001710:	00000097          	auipc	ra,0x0
    80001714:	f98080e7          	jalr	-104(ra) # 800016a8 <_ZN3Sem7unblockEv>
    return 0;
    80001718:	00000513          	li	a0,0
}
    8000171c:	00813083          	ld	ra,8(sp)
    80001720:	00013403          	ld	s0,0(sp)
    80001724:	01010113          	addi	sp,sp,16
    80001728:	00008067          	ret
    if (closed) return -1;
    8000172c:	fff00513          	li	a0,-1
    80001730:	00008067          	ret

0000000080001734 <_ZN3Sem9timedWaitEm>:

int Sem::timedWait(time_t time) {
    80001734:	ff010113          	addi	sp,sp,-16
    80001738:	00813423          	sd	s0,8(sp)
    8000173c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001740:	00000513          	li	a0,0
    80001744:	00813403          	ld	s0,8(sp)
    80001748:	01010113          	addi	sp,sp,16
    8000174c:	00008067          	ret

0000000080001750 <_ZN3Sem7tryWaitEv>:

int Sem::tryWait() {
    80001750:	ff010113          	addi	sp,sp,-16
    80001754:	00813423          	sd	s0,8(sp)
    80001758:	01010413          	addi	s0,sp,16
    return 0;
}
    8000175c:	00000513          	li	a0,0
    80001760:	00813403          	ld	s0,8(sp)
    80001764:	01010113          	addi	sp,sp,16
    80001768:	00008067          	ret

000000008000176c <_Z7workerAPv>:
    void* address = mem_alloc(50);
    MemoryAllocator::print();
    mem_free(address);
    MemoryAllocator::print();
}
void workerA(void *args) {
    8000176c:	fe010113          	addi	sp,sp,-32
    80001770:	00113c23          	sd	ra,24(sp)
    80001774:	00813823          	sd	s0,16(sp)
    80001778:	00913423          	sd	s1,8(sp)
    8000177c:	02010413          	addi	s0,sp,32
    80001780:	0140006f          	j	80001794 <_Z7workerAPv+0x28>
    while (1) {
        __putc('\n');
        for (int i = 0; i < 10; ++i) __putc('A');
        thread_dispatch();
    80001784:	00000097          	auipc	ra,0x0
    80001788:	c48080e7          	jalr	-952(ra) # 800013cc <_Z15thread_dispatchv>
        thread_exit();
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	bf4080e7          	jalr	-1036(ra) # 80001380 <_Z11thread_exitv>
        __putc('\n');
    80001794:	00a00513          	li	a0,10
    80001798:	00007097          	auipc	ra,0x7
    8000179c:	d74080e7          	jalr	-652(ra) # 8000850c <__putc>
        for (int i = 0; i < 10; ++i) __putc('A');
    800017a0:	00000493          	li	s1,0
    800017a4:	00900793          	li	a5,9
    800017a8:	fc97cee3          	blt	a5,s1,80001784 <_Z7workerAPv+0x18>
    800017ac:	04100513          	li	a0,65
    800017b0:	00007097          	auipc	ra,0x7
    800017b4:	d5c080e7          	jalr	-676(ra) # 8000850c <__putc>
    800017b8:	0014849b          	addiw	s1,s1,1
    800017bc:	fe9ff06f          	j	800017a4 <_Z7workerAPv+0x38>

00000000800017c0 <_Z7workerBPv>:
    }
}
void workerB(void *args) {
    800017c0:	fe010113          	addi	sp,sp,-32
    800017c4:	00113c23          	sd	ra,24(sp)
    800017c8:	00813823          	sd	s0,16(sp)
    800017cc:	00913423          	sd	s1,8(sp)
    800017d0:	02010413          	addi	s0,sp,32
    800017d4:	0140006f          	j	800017e8 <_Z7workerBPv+0x28>
    while (1) {
        __putc('\n');
        for (int i = 0; i < 10; ++i) __putc('B');
        thread_dispatch();
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	bf4080e7          	jalr	-1036(ra) # 800013cc <_Z15thread_dispatchv>
        thread_exit();
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	ba0080e7          	jalr	-1120(ra) # 80001380 <_Z11thread_exitv>
        __putc('\n');
    800017e8:	00a00513          	li	a0,10
    800017ec:	00007097          	auipc	ra,0x7
    800017f0:	d20080e7          	jalr	-736(ra) # 8000850c <__putc>
        for (int i = 0; i < 10; ++i) __putc('B');
    800017f4:	00000493          	li	s1,0
    800017f8:	00900793          	li	a5,9
    800017fc:	fc97cee3          	blt	a5,s1,800017d8 <_Z7workerBPv+0x18>
    80001800:	04200513          	li	a0,66
    80001804:	00007097          	auipc	ra,0x7
    80001808:	d08080e7          	jalr	-760(ra) # 8000850c <__putc>
    8000180c:	0014849b          	addiw	s1,s1,1
    80001810:	fe9ff06f          	j	800017f8 <_Z7workerBPv+0x38>

0000000080001814 <printNumber>:
extern "C" void printNumber(uint64 num) {
    80001814:	fd010113          	addi	sp,sp,-48
    80001818:	02113423          	sd	ra,40(sp)
    8000181c:	02813023          	sd	s0,32(sp)
    80001820:	00913c23          	sd	s1,24(sp)
    80001824:	01213823          	sd	s2,16(sp)
    80001828:	01313423          	sd	s3,8(sp)
    8000182c:	03010413          	addi	s0,sp,48
    80001830:	00050913          	mv	s2,a0
    __putc('\n');
    80001834:	00a00513          	li	a0,10
    80001838:	00007097          	auipc	ra,0x7
    8000183c:	cd4080e7          	jalr	-812(ra) # 8000850c <__putc>
    __putc('N');
    80001840:	04e00513          	li	a0,78
    80001844:	00007097          	auipc	ra,0x7
    80001848:	cc8080e7          	jalr	-824(ra) # 8000850c <__putc>
    __putc(':');
    8000184c:	03a00513          	li	a0,58
    80001850:	00007097          	auipc	ra,0x7
    80001854:	cbc080e7          	jalr	-836(ra) # 8000850c <__putc>
    __putc(' ');
    80001858:	02000513          	li	a0,32
    8000185c:	00007097          	auipc	ra,0x7
    80001860:	cb0080e7          	jalr	-848(ra) # 8000850c <__putc>
    if (!num) __putc('0');
    80001864:	00090863          	beqz	s2,80001874 <printNumber+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001868:	00000993          	li	s3,0
    8000186c:	00000493          	li	s1,0
    80001870:	01c0006f          	j	8000188c <printNumber+0x78>
    if (!num) __putc('0');
    80001874:	03000513          	li	a0,48
    80001878:	00007097          	auipc	ra,0x7
    8000187c:	c94080e7          	jalr	-876(ra) # 8000850c <__putc>
    80001880:	fe9ff06f          	j	80001868 <printNumber+0x54>
        num /= 10;
    80001884:	00a00793          	li	a5,10
    80001888:	02f95933          	divu	s2,s2,a5
    while (num) {
    8000188c:	02090463          	beqz	s2,800018b4 <printNumber+0xa0>
        num2 *= 10;
    80001890:	00249793          	slli	a5,s1,0x2
    80001894:	009784b3          	add	s1,a5,s1
    80001898:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    8000189c:	00a00493          	li	s1,10
    800018a0:	029974b3          	remu	s1,s2,s1
    800018a4:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    800018a8:	fc049ee3          	bnez	s1,80001884 <printNumber+0x70>
    800018ac:	00198993          	addi	s3,s3,1
    800018b0:	fd5ff06f          	j	80001884 <printNumber+0x70>
    while (num2) {
    800018b4:	02048063          	beqz	s1,800018d4 <printNumber+0xc0>
        __putc(num2 % 10 + '0');
    800018b8:	00a00913          	li	s2,10
    800018bc:	0324f533          	remu	a0,s1,s2
    800018c0:	03050513          	addi	a0,a0,48
    800018c4:	00007097          	auipc	ra,0x7
    800018c8:	c48080e7          	jalr	-952(ra) # 8000850c <__putc>
        num2 /= 10;
    800018cc:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    800018d0:	fe5ff06f          	j	800018b4 <printNumber+0xa0>
    while (zero_count--) __putc('0');
    800018d4:	fff98493          	addi	s1,s3,-1
    800018d8:	00098c63          	beqz	s3,800018f0 <printNumber+0xdc>
    800018dc:	03000513          	li	a0,48
    800018e0:	00007097          	auipc	ra,0x7
    800018e4:	c2c080e7          	jalr	-980(ra) # 8000850c <__putc>
    800018e8:	00048993          	mv	s3,s1
    800018ec:	fe9ff06f          	j	800018d4 <printNumber+0xc0>
}
    800018f0:	02813083          	ld	ra,40(sp)
    800018f4:	02013403          	ld	s0,32(sp)
    800018f8:	01813483          	ld	s1,24(sp)
    800018fc:	01013903          	ld	s2,16(sp)
    80001900:	00813983          	ld	s3,8(sp)
    80001904:	03010113          	addi	sp,sp,48
    80001908:	00008067          	ret

000000008000190c <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    8000190c:	fe010113          	addi	sp,sp,-32
    80001910:	00113c23          	sd	ra,24(sp)
    80001914:	00813823          	sd	s0,16(sp)
    80001918:	00913423          	sd	s1,8(sp)
    8000191c:	01213023          	sd	s2,0(sp)
    80001920:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001924:	00001097          	auipc	ra,0x1
    80001928:	ee4080e7          	jalr	-284(ra) # 80002808 <_ZN15MemoryAllocator5printEv>
    void *address = MemoryAllocator::mem_alloc(1);
    8000192c:	00100513          	li	a0,1
    80001930:	00001097          	auipc	ra,0x1
    80001934:	b80080e7          	jalr	-1152(ra) # 800024b0 <_ZN15MemoryAllocator9mem_allocEm>
    80001938:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	ecc080e7          	jalr	-308(ra) # 80002808 <_ZN15MemoryAllocator5printEv>
    int s1 = MemoryAllocator::mem_free(address);
    80001944:	00048513          	mv	a0,s1
    80001948:	00001097          	auipc	ra,0x1
    8000194c:	d54080e7          	jalr	-684(ra) # 8000269c <_ZN15MemoryAllocator8mem_freeEPv>
    80001950:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    80001954:	00001097          	auipc	ra,0x1
    80001958:	eb4080e7          	jalr	-332(ra) # 80002808 <_ZN15MemoryAllocator5printEv>
    int s2 = MemoryAllocator::mem_free(address);
    8000195c:	00048513          	mv	a0,s1
    80001960:	00001097          	auipc	ra,0x1
    80001964:	d3c080e7          	jalr	-708(ra) # 8000269c <_ZN15MemoryAllocator8mem_freeEPv>
    80001968:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	e9c080e7          	jalr	-356(ra) # 80002808 <_ZN15MemoryAllocator5printEv>
    __putc('\n');
    80001974:	00a00513          	li	a0,10
    80001978:	00007097          	auipc	ra,0x7
    8000197c:	b94080e7          	jalr	-1132(ra) # 8000850c <__putc>
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    80001980:	02090263          	beqz	s2,800019a4 <_Z19testMemoryAllocatorv+0x98>
    if (s2 == -3) __putc('G'); /// same
    80001984:	ffd00793          	li	a5,-3
    80001988:	02f48663          	beq	s1,a5,800019b4 <_Z19testMemoryAllocatorv+0xa8>
}
    8000198c:	01813083          	ld	ra,24(sp)
    80001990:	01013403          	ld	s0,16(sp)
    80001994:	00813483          	ld	s1,8(sp)
    80001998:	00013903          	ld	s2,0(sp)
    8000199c:	02010113          	addi	sp,sp,32
    800019a0:	00008067          	ret
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    800019a4:	04700513          	li	a0,71
    800019a8:	00007097          	auipc	ra,0x7
    800019ac:	b64080e7          	jalr	-1180(ra) # 8000850c <__putc>
    800019b0:	fd5ff06f          	j	80001984 <_Z19testMemoryAllocatorv+0x78>
    if (s2 == -3) __putc('G'); /// same
    800019b4:	04700513          	li	a0,71
    800019b8:	00007097          	auipc	ra,0x7
    800019bc:	b54080e7          	jalr	-1196(ra) # 8000850c <__putc>
}
    800019c0:	fcdff06f          	j	8000198c <_Z19testMemoryAllocatorv+0x80>

00000000800019c4 <_Z11testMemoryCv>:
void testMemoryC() {
    800019c4:	fe010113          	addi	sp,sp,-32
    800019c8:	00113c23          	sd	ra,24(sp)
    800019cc:	00813823          	sd	s0,16(sp)
    800019d0:	00913423          	sd	s1,8(sp)
    800019d4:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    800019d8:	00001097          	auipc	ra,0x1
    800019dc:	e30080e7          	jalr	-464(ra) # 80002808 <_ZN15MemoryAllocator5printEv>
    void* address = mem_alloc(50);
    800019e0:	03200513          	li	a0,50
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	874080e7          	jalr	-1932(ra) # 80001258 <_Z9mem_allocm>
    800019ec:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	e18080e7          	jalr	-488(ra) # 80002808 <_ZN15MemoryAllocator5printEv>
    mem_free(address);
    800019f8:	00048513          	mv	a0,s1
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	8b0080e7          	jalr	-1872(ra) # 800012ac <_Z8mem_freePv>
    MemoryAllocator::print();
    80001a04:	00001097          	auipc	ra,0x1
    80001a08:	e04080e7          	jalr	-508(ra) # 80002808 <_ZN15MemoryAllocator5printEv>
}
    80001a0c:	01813083          	ld	ra,24(sp)
    80001a10:	01013403          	ld	s0,16(sp)
    80001a14:	00813483          	ld	s1,8(sp)
    80001a18:	02010113          	addi	sp,sp,32
    80001a1c:	00008067          	ret

0000000080001a20 <_Z11testThreadsv>:
    }
}
void testThreads() {
    80001a20:	fe010113          	addi	sp,sp,-32
    80001a24:	00113c23          	sd	ra,24(sp)
    80001a28:	00813823          	sd	s0,16(sp)
    80001a2c:	00913423          	sd	s1,8(sp)
    80001a30:	02010413          	addi	s0,sp,32
    static thread_t threads[3];

    thread_create(&threads[0], nullptr, nullptr);
    80001a34:	0000a497          	auipc	s1,0xa
    80001a38:	e0c48493          	addi	s1,s1,-500 # 8000b840 <_ZZ11testThreadsvE7threads>
    80001a3c:	00000613          	li	a2,0
    80001a40:	00000593          	li	a1,0
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	8b0080e7          	jalr	-1872(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001a50:	0004b703          	ld	a4,0(s1)
    80001a54:	0000a797          	auipc	a5,0xa
    80001a58:	d947b783          	ld	a5,-620(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a5c:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], workerA, nullptr);
    80001a60:	00000613          	li	a2,0
    80001a64:	00000597          	auipc	a1,0x0
    80001a68:	d0858593          	addi	a1,a1,-760 # 8000176c <_Z7workerAPv>
    80001a6c:	0000a517          	auipc	a0,0xa
    80001a70:	ddc50513          	addi	a0,a0,-548 # 8000b848 <_ZZ11testThreadsvE7threads+0x8>
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	884080e7          	jalr	-1916(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], workerB, nullptr);
    80001a7c:	00000613          	li	a2,0
    80001a80:	00000597          	auipc	a1,0x0
    80001a84:	d4058593          	addi	a1,a1,-704 # 800017c0 <_Z7workerBPv>
    80001a88:	0000a517          	auipc	a0,0xa
    80001a8c:	dc850513          	addi	a0,a0,-568 # 8000b850 <_ZZ11testThreadsvE7threads+0x10>
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	868080e7          	jalr	-1944(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    80001a98:	00c0006f          	j	80001aa4 <_Z11testThreadsv+0x84>

    while (!threads[1] -> is_finished() || !threads[2] -> is_finished()) thread_dispatch();
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	930080e7          	jalr	-1744(ra) # 800013cc <_Z15thread_dispatchv>
    80001aa4:	0000a517          	auipc	a0,0xa
    80001aa8:	da453503          	ld	a0,-604(a0) # 8000b848 <_ZZ11testThreadsvE7threads+0x8>
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	510080e7          	jalr	1296(ra) # 80001fbc <_ZNK3TCB11is_finishedEv>
    80001ab4:	fe0504e3          	beqz	a0,80001a9c <_Z11testThreadsv+0x7c>
    80001ab8:	0000a517          	auipc	a0,0xa
    80001abc:	d9853503          	ld	a0,-616(a0) # 8000b850 <_ZZ11testThreadsvE7threads+0x10>
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	4fc080e7          	jalr	1276(ra) # 80001fbc <_ZNK3TCB11is_finishedEv>
    80001ac8:	fc050ae3          	beqz	a0,80001a9c <_Z11testThreadsv+0x7c>
}
    80001acc:	01813083          	ld	ra,24(sp)
    80001ad0:	01013403          	ld	s0,16(sp)
    80001ad4:	00813483          	ld	s1,8(sp)
    80001ad8:	02010113          	addi	sp,sp,32
    80001adc:	00008067          	ret

0000000080001ae0 <_Z15userMainWrapperPv>:
void userMain();
void userMainWrapper(void *args) {
    80001ae0:	ff010113          	addi	sp,sp,-16
    80001ae4:	00113423          	sd	ra,8(sp)
    80001ae8:	00813023          	sd	s0,0(sp)
    80001aec:	01010413          	addi	s0,sp,16
    userMain();
    80001af0:	00004097          	auipc	ra,0x4
    80001af4:	e48080e7          	jalr	-440(ra) # 80005938 <_Z8userMainv>
}
    80001af8:	00813083          	ld	ra,8(sp)
    80001afc:	00013403          	ld	s0,0(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret

0000000080001b08 <_Z10initializev>:
void initialize() {
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00113423          	sd	ra,8(sp)
    80001b10:	00813023          	sd	s0,0(sp)
    80001b14:	01010413          	addi	s0,sp,16
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001b18:	0000a797          	auipc	a5,0xa
    80001b1c:	cc07b783          	ld	a5,-832(a5) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001b20:	10579073          	csrw	stvec,a5
    /// Enable software interrupts
//    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    /// Initialize Memory Allocator
    MemoryAllocator::initialize();
    80001b24:	00001097          	auipc	ra,0x1
    80001b28:	aa8080e7          	jalr	-1368(ra) # 800025cc <_ZN15MemoryAllocator10initializeEv>
}
    80001b2c:	00813083          	ld	ra,8(sp)
    80001b30:	00013403          	ld	s0,0(sp)
    80001b34:	01010113          	addi	sp,sp,16
    80001b38:	00008067          	ret

0000000080001b3c <_Z4testv>:
void test() {
    80001b3c:	ff010113          	addi	sp,sp,-16
    80001b40:	00113423          	sd	ra,8(sp)
    80001b44:	00813023          	sd	s0,0(sp)
    80001b48:	01010413          	addi	s0,sp,16
    /// Test Memory Allocation
//    testMemoryAllocator();
//    testMemoryC();
    /// Test Threads
    testThreads();
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	ed4080e7          	jalr	-300(ra) # 80001a20 <_Z11testThreadsv>
    /// Test Everything
//    static thread_t umain;
//    thread_create(&umain, userMainWrapper, nullptr);
//    while (!umain -> is_finished()) thread_dispatch();
}
    80001b54:	00813083          	ld	ra,8(sp)
    80001b58:	00013403          	ld	s0,0(sp)
    80001b5c:	01010113          	addi	sp,sp,16
    80001b60:	00008067          	ret

0000000080001b64 <main>:


int main() {
    80001b64:	ff010113          	addi	sp,sp,-16
    80001b68:	00113423          	sd	ra,8(sp)
    80001b6c:	00813023          	sd	s0,0(sp)
    80001b70:	01010413          	addi	s0,sp,16
    initialize();
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	f94080e7          	jalr	-108(ra) # 80001b08 <_Z10initializev>
    test();
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	fc0080e7          	jalr	-64(ra) # 80001b3c <_Z4testv>
    __putc('\n');
    80001b84:	00a00513          	li	a0,10
    80001b88:	00007097          	auipc	ra,0x7
    80001b8c:	984080e7          	jalr	-1660(ra) # 8000850c <__putc>
    return 0;
    80001b90:	00000513          	li	a0,0
    80001b94:	00813083          	ld	ra,8(sp)
    80001b98:	00013403          	ld	s0,0(sp)
    80001b9c:	01010113          	addi	sp,sp,16
    80001ba0:	00008067          	ret

0000000080001ba4 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
    };
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    return 0;
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001ba4:	00e53423          	sd	a4,8(a0)
    80001ba8:	00f53823          	sd	a5,16(a0)
    id = cnt++;
    80001bac:	0000a717          	auipc	a4,0xa
    80001bb0:	cac70713          	addi	a4,a4,-852 # 8000b858 <_ZN3TCB3cntE>
    80001bb4:	00072783          	lw	a5,0(a4)
    80001bb8:	0017881b          	addiw	a6,a5,1
    80001bbc:	01072023          	sw	a6,0(a4)
    80001bc0:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80001bc4:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80001bc8:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80001bcc:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80001bd0:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80001bd4:	00200793          	li	a5,2
    80001bd8:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80001bdc:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80001be0:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80001be4:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80001be8:	02058663          	beqz	a1,80001c14 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE+0x70>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001bec:	fe010113          	addi	sp,sp,-32
    80001bf0:	00113c23          	sd	ra,24(sp)
    80001bf4:	00813823          	sd	s0,16(sp)
    80001bf8:	02010413          	addi	s0,sp,32
    if (function_body) Scheduler::put(this);
    80001bfc:	00001097          	auipc	ra,0x1
    80001c00:	cd0080e7          	jalr	-816(ra) # 800028cc <_ZN9Scheduler3putEP3TCB>
}
    80001c04:	01813083          	ld	ra,24(sp)
    80001c08:	01013403          	ld	s0,16(sp)
    80001c0c:	02010113          	addi	sp,sp,32
    80001c10:	00008067          	ret
    80001c14:	00008067          	ret

0000000080001c18 <_ZN3TCB5yieldEPS_S0_>:
//    RiscV::popSppSpie();
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80001c18:	fe010113          	addi	sp,sp,-32
    80001c1c:	00113c23          	sd	ra,24(sp)
    80001c20:	00813823          	sd	s0,16(sp)
    80001c24:	00913423          	sd	s1,8(sp)
    80001c28:	01213023          	sd	s2,0(sp)
    80001c2c:	02010413          	addi	s0,sp,32
    80001c30:	00050493          	mv	s1,a0
    80001c34:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80001c38:	fffff097          	auipc	ra,0xfffff
    80001c3c:	4d0080e7          	jalr	1232(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80001c40:	01248a63          	beq	s1,s2,80001c54 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80001c44:	00890593          	addi	a1,s2,8
    80001c48:	00848513          	addi	a0,s1,8
    80001c4c:	fffff097          	auipc	ra,0xfffff
    80001c50:	5bc080e7          	jalr	1468(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80001c54:	fffff097          	auipc	ra,0xfffff
    80001c58:	534080e7          	jalr	1332(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    80001c5c:	01813083          	ld	ra,24(sp)
    80001c60:	01013403          	ld	s0,16(sp)
    80001c64:	00813483          	ld	s1,8(sp)
    80001c68:	00013903          	ld	s2,0(sp)
    80001c6c:	02010113          	addi	sp,sp,32
    80001c70:	00008067          	ret

0000000080001c74 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001c74:	fe010113          	addi	sp,sp,-32
    80001c78:	00113c23          	sd	ra,24(sp)
    80001c7c:	00813823          	sd	s0,16(sp)
    80001c80:	00913423          	sd	s1,8(sp)
    80001c84:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001c88:	0000a497          	auipc	s1,0xa
    80001c8c:	bd84b483          	ld	s1,-1064(s1) # 8000b860 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80001c90:	0184a783          	lw	a5,24(s1)
    80001c94:	02078e63          	beqz	a5,80001cd0 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    80001c98:	00001097          	auipc	ra,0x1
    80001c9c:	c94080e7          	jalr	-876(ra) # 8000292c <_ZN9Scheduler3getEv>
    80001ca0:	00050593          	mv	a1,a0
    80001ca4:	0000a797          	auipc	a5,0xa
    80001ca8:	baa7be23          	sd	a0,-1092(a5) # 8000b860 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    80001cac:	00a48863          	beq	s1,a0,80001cbc <_ZN3TCB8dispatchEv+0x48>
    80001cb0:	00048513          	mv	a0,s1
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	f64080e7          	jalr	-156(ra) # 80001c18 <_ZN3TCB5yieldEPS_S0_>
}
    80001cbc:	01813083          	ld	ra,24(sp)
    80001cc0:	01013403          	ld	s0,16(sp)
    80001cc4:	00813483          	ld	s1,8(sp)
    80001cc8:	02010113          	addi	sp,sp,32
    80001ccc:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80001cd0:	00048513          	mv	a0,s1
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	bf8080e7          	jalr	-1032(ra) # 800028cc <_ZN9Scheduler3putEP3TCB>
    80001cdc:	fbdff06f          	j	80001c98 <_ZN3TCB8dispatchEv+0x24>

0000000080001ce0 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00813423          	sd	s0,8(sp)
    80001ce8:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80001cec:	04053503          	ld	a0,64(a0)
    80001cf0:	00813403          	ld	s0,8(sp)
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00008067          	ret

0000000080001cfc <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80001cfc:	ff010113          	addi	sp,sp,-16
    80001d00:	00813423          	sd	s0,8(sp)
    80001d04:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001d08:	04b53023          	sd	a1,64(a0)
}
    80001d0c:	00813403          	ld	s0,8(sp)
    80001d10:	01010113          	addi	sp,sp,16
    80001d14:	00008067          	ret

0000000080001d18 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001d18:	ff010113          	addi	sp,sp,-16
    80001d1c:	00813423          	sd	s0,8(sp)
    80001d20:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80001d24:	04b53823          	sd	a1,80(a0)
}
    80001d28:	00813403          	ld	s0,8(sp)
    80001d2c:	01010113          	addi	sp,sp,16
    80001d30:	00008067          	ret

0000000080001d34 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80001d34:	ff010113          	addi	sp,sp,-16
    80001d38:	00813423          	sd	s0,8(sp)
    80001d3c:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80001d40:	05053503          	ld	a0,80(a0)
    80001d44:	00813403          	ld	s0,8(sp)
    80001d48:	01010113          	addi	sp,sp,16
    80001d4c:	00008067          	ret

0000000080001d50 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00813423          	sd	s0,8(sp)
    80001d58:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80001d5c:	04b53423          	sd	a1,72(a0)
}
    80001d60:	00813403          	ld	s0,8(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80001d6c:	ff010113          	addi	sp,sp,-16
    80001d70:	00813423          	sd	s0,8(sp)
    80001d74:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80001d78:	04853503          	ld	a0,72(a0)
    80001d7c:	00813403          	ld	s0,8(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00813423          	sd	s0,8(sp)
    80001d90:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80001d94:	00b52c23          	sw	a1,24(a0)
}
    80001d98:	00813403          	ld	s0,8(sp)
    80001d9c:	01010113          	addi	sp,sp,16
    80001da0:	00008067          	ret

0000000080001da4 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00113423          	sd	ra,8(sp)
    80001dac:	00813023          	sd	s0,0(sp)
    80001db0:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80001db4:	00400593          	li	a1,4
    80001db8:	0000a517          	auipc	a0,0xa
    80001dbc:	aa853503          	ld	a0,-1368(a0) # 8000b860 <_ZN3TCB7runningE>
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	fc8080e7          	jalr	-56(ra) # 80001d88 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	eac080e7          	jalr	-340(ra) # 80001c74 <_ZN3TCB8dispatchEv>
}
    80001dd0:	00813083          	ld	ra,8(sp)
    80001dd4:	00013403          	ld	s0,0(sp)
    80001dd8:	01010113          	addi	sp,sp,16
    80001ddc:	00008067          	ret

0000000080001de0 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80001de0:	ff010113          	addi	sp,sp,-16
    80001de4:	00113423          	sd	ra,8(sp)
    80001de8:	00813023          	sd	s0,0(sp)
    80001dec:	01010413          	addi	s0,sp,16
    if (running -> function_body) running -> function_body(running -> arg);
    80001df0:	0000a717          	auipc	a4,0xa
    80001df4:	a7073703          	ld	a4,-1424(a4) # 8000b860 <_ZN3TCB7runningE>
    80001df8:	02073783          	ld	a5,32(a4)
    80001dfc:	00078663          	beqz	a5,80001e08 <_ZN3TCB16wrapper_functionEv+0x28>
    80001e00:	02873503          	ld	a0,40(a4)
    80001e04:	000780e7          	jalr	a5
    thread_exit();
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	f9c080e7          	jalr	-100(ra) # 80001da4 <_ZN3TCB11thread_exitEv>
}
    80001e10:	00813083          	ld	ra,8(sp)
    80001e14:	00013403          	ld	s0,0(sp)
    80001e18:	01010113          	addi	sp,sp,16
    80001e1c:	00008067          	ret

0000000080001e20 <_ZN3TCB5startEv>:

void TCB::start() {
    80001e20:	fe010113          	addi	sp,sp,-32
    80001e24:	00113c23          	sd	ra,24(sp)
    80001e28:	00813823          	sd	s0,16(sp)
    80001e2c:	00913423          	sd	s1,8(sp)
    80001e30:	02010413          	addi	s0,sp,32
    80001e34:	00050493          	mv	s1,a0
    Scheduler::put(this);
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	a94080e7          	jalr	-1388(ra) # 800028cc <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    80001e40:	0000a797          	auipc	a5,0xa
    80001e44:	a207b783          	ld	a5,-1504(a5) # 8000b860 <_ZN3TCB7runningE>
    80001e48:	00078c63          	beqz	a5,80001e60 <_ZN3TCB5startEv+0x40>
}
    80001e4c:	01813083          	ld	ra,24(sp)
    80001e50:	01013403          	ld	s0,16(sp)
    80001e54:	00813483          	ld	s1,8(sp)
    80001e58:	02010113          	addi	sp,sp,32
    80001e5c:	00008067          	ret
    if (!running) running = this;
    80001e60:	0000a797          	auipc	a5,0xa
    80001e64:	a097b023          	sd	s1,-1536(a5) # 8000b860 <_ZN3TCB7runningE>
}
    80001e68:	fe5ff06f          	j	80001e4c <_ZN3TCB5startEv+0x2c>

0000000080001e6c <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80001e6c:	ff010113          	addi	sp,sp,-16
    80001e70:	00113423          	sd	ra,8(sp)
    80001e74:	00813023          	sd	s0,0(sp)
    80001e78:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	a30080e7          	jalr	-1488(ra) # 800028ac <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	62c080e7          	jalr	1580(ra) # 800024b0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e8c:	00813083          	ld	ra,8(sp)
    80001e90:	00013403          	ld	s0,0(sp)
    80001e94:	01010113          	addi	sp,sp,16
    80001e98:	00008067          	ret

0000000080001e9c <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80001e9c:	ff010113          	addi	sp,sp,-16
    80001ea0:	00113423          	sd	ra,8(sp)
    80001ea4:	00813023          	sd	s0,0(sp)
    80001ea8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	7f0080e7          	jalr	2032(ra) # 8000269c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001eb4:	00813083          	ld	ra,8(sp)
    80001eb8:	00013403          	ld	s0,0(sp)
    80001ebc:	01010113          	addi	sp,sp,16
    80001ec0:	00008067          	ret

0000000080001ec4 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80001ec4:	fa010113          	addi	sp,sp,-96
    80001ec8:	04113c23          	sd	ra,88(sp)
    80001ecc:	04813823          	sd	s0,80(sp)
    80001ed0:	04913423          	sd	s1,72(sp)
    80001ed4:	05213023          	sd	s2,64(sp)
    80001ed8:	03313c23          	sd	s3,56(sp)
    80001edc:	03413823          	sd	s4,48(sp)
    80001ee0:	03513423          	sd	s5,40(sp)
    80001ee4:	06010413          	addi	s0,sp,96
    80001ee8:	00050993          	mv	s3,a0
    80001eec:	00058a13          	mv	s4,a1
    80001ef0:	00060a93          	mv	s5,a2
    80001ef4:	00068493          	mv	s1,a3
    Context context = {
    80001ef8:	00000797          	auipc	a5,0x0
    80001efc:	ee878793          	addi	a5,a5,-280 # 80001de0 <_ZN3TCB16wrapper_functionEv>
    80001f00:	faf43023          	sd	a5,-96(s0)
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0)
    80001f04:	04068663          	beqz	a3,80001f50 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x8c>
    80001f08:	000017b7          	lui	a5,0x1
    80001f0c:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001f10:	00f687b3          	add	a5,a3,a5
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001f14:	fa043703          	ld	a4,-96(s0)
    80001f18:	fae43823          	sd	a4,-80(s0)
    80001f1c:	faf43c23          	sd	a5,-72(s0)
    80001f20:	05800513          	li	a0,88
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	f48080e7          	jalr	-184(ra) # 80001e6c <_ZN3TCBnwEm>
    80001f2c:	00050913          	mv	s2,a0
    80001f30:	fb043703          	ld	a4,-80(s0)
    80001f34:	fb843783          	ld	a5,-72(s0)
    80001f38:	00048693          	mv	a3,s1
    80001f3c:	000a8613          	mv	a2,s5
    80001f40:	000a0593          	mv	a1,s4
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	c60080e7          	jalr	-928(ra) # 80001ba4 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    80001f4c:	0280006f          	j	80001f74 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0xb0>
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0)
    80001f50:	00000793          	li	a5,0
    80001f54:	fc1ff06f          	j	80001f14 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x50>
    80001f58:	00050493          	mv	s1,a0
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001f5c:	00090513          	mv	a0,s2
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	f3c080e7          	jalr	-196(ra) # 80001e9c <_ZN3TCBdlEPv>
    80001f68:	00048513          	mv	a0,s1
    80001f6c:	0000b097          	auipc	ra,0xb
    80001f70:	a4c080e7          	jalr	-1460(ra) # 8000c9b8 <_Unwind_Resume>
    80001f74:	0129b023          	sd	s2,0(s3)
}
    80001f78:	00000513          	li	a0,0
    80001f7c:	05813083          	ld	ra,88(sp)
    80001f80:	05013403          	ld	s0,80(sp)
    80001f84:	04813483          	ld	s1,72(sp)
    80001f88:	04013903          	ld	s2,64(sp)
    80001f8c:	03813983          	ld	s3,56(sp)
    80001f90:	03013a03          	ld	s4,48(sp)
    80001f94:	02813a83          	ld	s5,40(sp)
    80001f98:	06010113          	addi	sp,sp,96
    80001f9c:	00008067          	ret

0000000080001fa0 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    80001fa0:	ff010113          	addi	sp,sp,-16
    80001fa4:	00813423          	sd	s0,8(sp)
    80001fa8:	01010413          	addi	s0,sp,16
    return time_slice;
}
    80001fac:	03853503          	ld	a0,56(a0)
    80001fb0:	00813403          	ld	s0,8(sp)
    80001fb4:	01010113          	addi	sp,sp,16
    80001fb8:	00008067          	ret

0000000080001fbc <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00813423          	sd	s0,8(sp)
    80001fc4:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80001fc8:	01852503          	lw	a0,24(a0)
    80001fcc:	ffc50513          	addi	a0,a0,-4
}
    80001fd0:	00153513          	seqz	a0,a0
    80001fd4:	00813403          	ld	s0,8(sp)
    80001fd8:	01010113          	addi	sp,sp,16
    80001fdc:	00008067          	ret

0000000080001fe0 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    80001fe0:	fe010113          	addi	sp,sp,-32
    80001fe4:	00113c23          	sd	ra,24(sp)
    80001fe8:	00813823          	sd	s0,16(sp)
    80001fec:	00913423          	sd	s1,8(sp)
    80001ff0:	02010413          	addi	s0,sp,32
    80001ff4:	00050493          	mv	s1,a0
    80001ff8:	00009797          	auipc	a5,0x9
    80001ffc:	5f078793          	addi	a5,a5,1520 # 8000b5e8 <_ZTV6Thread+0x10>
    80002000:	00f53023          	sd	a5,0(a0)
    myHandle -> set_status(TCB::FINISHED);
    80002004:	00400593          	li	a1,4
    80002008:	00853503          	ld	a0,8(a0)
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	d7c080e7          	jalr	-644(ra) # 80001d88 <_ZN3TCB10set_statusENS_6StatusE>
    delete myHandle;
    80002014:	0084b503          	ld	a0,8(s1)
    80002018:	00050663          	beqz	a0,80002024 <_ZN6ThreadD1Ev+0x44>
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	e80080e7          	jalr	-384(ra) # 80001e9c <_ZN3TCBdlEPv>
}
    80002024:	01813083          	ld	ra,24(sp)
    80002028:	01013403          	ld	s0,16(sp)
    8000202c:	00813483          	ld	s1,8(sp)
    80002030:	02010113          	addi	sp,sp,32
    80002034:	00008067          	ret

0000000080002038 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002038:	00009797          	auipc	a5,0x9
    8000203c:	5d878793          	addi	a5,a5,1496 # 8000b610 <_ZTV9Semaphore+0x10>
    80002040:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80002044:	00853503          	ld	a0,8(a0)
    80002048:	02050663          	beqz	a0,80002074 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00113423          	sd	ra,8(sp)
    80002054:	00813023          	sd	s0,0(sp)
    80002058:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    8000205c:	fffff097          	auipc	ra,0xfffff
    80002060:	3c8080e7          	jalr	968(ra) # 80001424 <_Z9sem_closeP3Sem>
}
    80002064:	00813083          	ld	ra,8(sp)
    80002068:	00013403          	ld	s0,0(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret
    80002074:	00008067          	ret

0000000080002078 <_Znwm>:
void* operator new(size_t size){
    80002078:	ff010113          	addi	sp,sp,-16
    8000207c:	00113423          	sd	ra,8(sp)
    80002080:	00813023          	sd	s0,0(sp)
    80002084:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002088:	fffff097          	auipc	ra,0xfffff
    8000208c:	1d0080e7          	jalr	464(ra) # 80001258 <_Z9mem_allocm>
}
    80002090:	00813083          	ld	ra,8(sp)
    80002094:	00013403          	ld	s0,0(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret

00000000800020a0 <_ZdlPv>:
void operator delete(void* p) noexcept {
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00113423          	sd	ra,8(sp)
    800020a8:	00813023          	sd	s0,0(sp)
    800020ac:	01010413          	addi	s0,sp,16
    mem_free(p);
    800020b0:	fffff097          	auipc	ra,0xfffff
    800020b4:	1fc080e7          	jalr	508(ra) # 800012ac <_Z8mem_freePv>
}
    800020b8:	00813083          	ld	ra,8(sp)
    800020bc:	00013403          	ld	s0,0(sp)
    800020c0:	01010113          	addi	sp,sp,16
    800020c4:	00008067          	ret

00000000800020c8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800020c8:	fe010113          	addi	sp,sp,-32
    800020cc:	00113c23          	sd	ra,24(sp)
    800020d0:	00813823          	sd	s0,16(sp)
    800020d4:	00913423          	sd	s1,8(sp)
    800020d8:	02010413          	addi	s0,sp,32
    800020dc:	00050493          	mv	s1,a0
}
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	f00080e7          	jalr	-256(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    800020e8:	00048513          	mv	a0,s1
    800020ec:	00000097          	auipc	ra,0x0
    800020f0:	fb4080e7          	jalr	-76(ra) # 800020a0 <_ZdlPv>
    800020f4:	01813083          	ld	ra,24(sp)
    800020f8:	01013403          	ld	s0,16(sp)
    800020fc:	00813483          	ld	s1,8(sp)
    80002100:	02010113          	addi	sp,sp,32
    80002104:	00008067          	ret

0000000080002108 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002108:	fe010113          	addi	sp,sp,-32
    8000210c:	00113c23          	sd	ra,24(sp)
    80002110:	00813823          	sd	s0,16(sp)
    80002114:	00913423          	sd	s1,8(sp)
    80002118:	02010413          	addi	s0,sp,32
    8000211c:	00050493          	mv	s1,a0
}
    80002120:	00000097          	auipc	ra,0x0
    80002124:	f18080e7          	jalr	-232(ra) # 80002038 <_ZN9SemaphoreD1Ev>
    80002128:	00048513          	mv	a0,s1
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	f74080e7          	jalr	-140(ra) # 800020a0 <_ZdlPv>
    80002134:	01813083          	ld	ra,24(sp)
    80002138:	01013403          	ld	s0,16(sp)
    8000213c:	00813483          	ld	s1,8(sp)
    80002140:	02010113          	addi	sp,sp,32
    80002144:	00008067          	ret

0000000080002148 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00113423          	sd	ra,8(sp)
    80002150:	00813023          	sd	s0,0(sp)
    80002154:	01010413          	addi	s0,sp,16
    80002158:	00009797          	auipc	a5,0x9
    8000215c:	49078793          	addi	a5,a5,1168 # 8000b5e8 <_ZTV6Thread+0x10>
    80002160:	00f53023          	sd	a5,0(a0)
    80002164:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    80002168:	00850513          	addi	a0,a0,8
    8000216c:	fffff097          	auipc	ra,0xfffff
    80002170:	18c080e7          	jalr	396(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002174:	00813083          	ld	ra,8(sp)
    80002178:	00013403          	ld	s0,0(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <_ZN6Thread5startEv>:
int Thread::start() {
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00113423          	sd	ra,8(sp)
    8000218c:	00813023          	sd	s0,0(sp)
    80002190:	01010413          	addi	s0,sp,16
    myHandle -> start();
    80002194:	00853503          	ld	a0,8(a0)
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	c88080e7          	jalr	-888(ra) # 80001e20 <_ZN3TCB5startEv>
}
    800021a0:	00000513          	li	a0,0
    800021a4:	00813083          	ld	ra,8(sp)
    800021a8:	00013403          	ld	s0,0(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret

00000000800021b4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00113423          	sd	ra,8(sp)
    800021bc:	00813023          	sd	s0,0(sp)
    800021c0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800021c4:	fffff097          	auipc	ra,0xfffff
    800021c8:	208080e7          	jalr	520(ra) # 800013cc <_Z15thread_dispatchv>
}
    800021cc:	00813083          	ld	ra,8(sp)
    800021d0:	00013403          	ld	s0,0(sp)
    800021d4:	01010113          	addi	sp,sp,16
    800021d8:	00008067          	ret

00000000800021dc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800021dc:	ff010113          	addi	sp,sp,-16
    800021e0:	00113423          	sd	ra,8(sp)
    800021e4:	00813023          	sd	s0,0(sp)
    800021e8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800021ec:	fffff097          	auipc	ra,0xfffff
    800021f0:	2c4080e7          	jalr	708(ra) # 800014b0 <_Z10time_sleepm>
}
    800021f4:	00000513          	li	a0,0
    800021f8:	00813083          	ld	ra,8(sp)
    800021fc:	00013403          	ld	s0,0(sp)
    80002200:	01010113          	addi	sp,sp,16
    80002204:	00008067          	ret

0000000080002208 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr) {
    80002208:	ff010113          	addi	sp,sp,-16
    8000220c:	00813423          	sd	s0,8(sp)
    80002210:	01010413          	addi	s0,sp,16
    80002214:	00009797          	auipc	a5,0x9
    80002218:	3d478793          	addi	a5,a5,980 # 8000b5e8 <_ZTV6Thread+0x10>
    8000221c:	00f53023          	sd	a5,0(a0)
    80002220:	00053423          	sd	zero,8(a0)
}
    80002224:	00813403          	ld	s0,8(sp)
    80002228:	01010113          	addi	sp,sp,16
    8000222c:	00008067          	ret

0000000080002230 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    80002230:	ff010113          	addi	sp,sp,-16
    80002234:	00113423          	sd	ra,8(sp)
    80002238:	00813023          	sd	s0,0(sp)
    8000223c:	01010413          	addi	s0,sp,16
    80002240:	00009797          	auipc	a5,0x9
    80002244:	3d078793          	addi	a5,a5,976 # 8000b610 <_ZTV9Semaphore+0x10>
    80002248:	00f53023          	sd	a5,0(a0)
    8000224c:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002250:	00850513          	addi	a0,a0,8
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	1b4080e7          	jalr	436(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    8000225c:	00813083          	ld	ra,8(sp)
    80002260:	00013403          	ld	s0,0(sp)
    80002264:	01010113          	addi	sp,sp,16
    80002268:	00008067          	ret

000000008000226c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    8000226c:	00853503          	ld	a0,8(a0)
    80002270:	02050663          	beqz	a0,8000229c <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002274:	ff010113          	addi	sp,sp,-16
    80002278:	00113423          	sd	ra,8(sp)
    8000227c:	00813023          	sd	s0,0(sp)
    80002280:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002284:	fffff097          	auipc	ra,0xfffff
    80002288:	1bc080e7          	jalr	444(ra) # 80001440 <_Z8sem_waitP3Sem>
    return -1;
}
    8000228c:	00813083          	ld	ra,8(sp)
    80002290:	00013403          	ld	s0,0(sp)
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00008067          	ret
    return -1;
    8000229c:	fff00513          	li	a0,-1
}
    800022a0:	00008067          	ret

00000000800022a4 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    800022a4:	00853503          	ld	a0,8(a0)
    800022a8:	02050663          	beqz	a0,800022d4 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800022ac:	ff010113          	addi	sp,sp,-16
    800022b0:	00113423          	sd	ra,8(sp)
    800022b4:	00813023          	sd	s0,0(sp)
    800022b8:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800022bc:	fffff097          	auipc	ra,0xfffff
    800022c0:	1a0080e7          	jalr	416(ra) # 8000145c <_Z10sem_signalP3Sem>
    return -1;
}
    800022c4:	00813083          	ld	ra,8(sp)
    800022c8:	00013403          	ld	s0,0(sp)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret
    return -1;
    800022d4:	fff00513          	li	a0,-1
}
    800022d8:	00008067          	ret

00000000800022dc <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    800022dc:	ff010113          	addi	sp,sp,-16
    800022e0:	00813423          	sd	s0,8(sp)
    800022e4:	01010413          	addi	s0,sp,16
    return 0;
}
    800022e8:	00000513          	li	a0,0
    800022ec:	00813403          	ld	s0,8(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret

00000000800022f8 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800022f8:	ff010113          	addi	sp,sp,-16
    800022fc:	00813423          	sd	s0,8(sp)
    80002300:	01010413          	addi	s0,sp,16
    return 0;
}
    80002304:	00000513          	li	a0,0
    80002308:	00813403          	ld	s0,8(sp)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret

0000000080002314 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00813423          	sd	s0,8(sp)
    8000231c:	01010413          	addi	s0,sp,16

}
    80002320:	00813403          	ld	s0,8(sp)
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00008067          	ret

000000008000232c <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    8000232c:	fe010113          	addi	sp,sp,-32
    80002330:	00113c23          	sd	ra,24(sp)
    80002334:	00813823          	sd	s0,16(sp)
    80002338:	00913423          	sd	s1,8(sp)
    8000233c:	02010413          	addi	s0,sp,32
    80002340:	00050493          	mv	s1,a0
    80002344:	00000097          	auipc	ra,0x0
    80002348:	ec4080e7          	jalr	-316(ra) # 80002208 <_ZN6ThreadC1Ev>
    8000234c:	00009797          	auipc	a5,0x9
    80002350:	26c78793          	addi	a5,a5,620 # 8000b5b8 <_ZTV14PeriodicThread+0x10>
    80002354:	00f4b023          	sd	a5,0(s1)

}
    80002358:	01813083          	ld	ra,24(sp)
    8000235c:	01013403          	ld	s0,16(sp)
    80002360:	00813483          	ld	s1,8(sp)
    80002364:	02010113          	addi	sp,sp,32
    80002368:	00008067          	ret

000000008000236c <_ZN7Console4getcEv>:

char Console::getc() {
    8000236c:	ff010113          	addi	sp,sp,-16
    80002370:	00113423          	sd	ra,8(sp)
    80002374:	00813023          	sd	s0,0(sp)
    80002378:	01010413          	addi	s0,sp,16
    return ::getc();
    8000237c:	fffff097          	auipc	ra,0xfffff
    80002380:	150080e7          	jalr	336(ra) # 800014cc <_Z4getcv>
}
    80002384:	00813083          	ld	ra,8(sp)
    80002388:	00013403          	ld	s0,0(sp)
    8000238c:	01010113          	addi	sp,sp,16
    80002390:	00008067          	ret

0000000080002394 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00113423          	sd	ra,8(sp)
    8000239c:	00813023          	sd	s0,0(sp)
    800023a0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800023a4:	fffff097          	auipc	ra,0xfffff
    800023a8:	174080e7          	jalr	372(ra) # 80001518 <_Z4putcc>
}
    800023ac:	00813083          	ld	ra,8(sp)
    800023b0:	00013403          	ld	s0,0(sp)
    800023b4:	01010113          	addi	sp,sp,16
    800023b8:	00008067          	ret

00000000800023bc <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00813423          	sd	s0,8(sp)
    800023c4:	01010413          	addi	s0,sp,16
    800023c8:	00813403          	ld	s0,8(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret

00000000800023d4 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00813423          	sd	s0,8(sp)
    800023dc:	01010413          	addi	s0,sp,16
    800023e0:	00813403          	ld	s0,8(sp)
    800023e4:	01010113          	addi	sp,sp,16
    800023e8:	00008067          	ret

00000000800023ec <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00113423          	sd	ra,8(sp)
    800023f4:	00813023          	sd	s0,0(sp)
    800023f8:	01010413          	addi	s0,sp,16
    800023fc:	00009797          	auipc	a5,0x9
    80002400:	1bc78793          	addi	a5,a5,444 # 8000b5b8 <_ZTV14PeriodicThread+0x10>
    80002404:	00f53023          	sd	a5,0(a0)
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	bd8080e7          	jalr	-1064(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80002410:	00813083          	ld	ra,8(sp)
    80002414:	00013403          	ld	s0,0(sp)
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret

0000000080002420 <_ZN14PeriodicThreadD0Ev>:
    80002420:	fe010113          	addi	sp,sp,-32
    80002424:	00113c23          	sd	ra,24(sp)
    80002428:	00813823          	sd	s0,16(sp)
    8000242c:	00913423          	sd	s1,8(sp)
    80002430:	02010413          	addi	s0,sp,32
    80002434:	00050493          	mv	s1,a0
    80002438:	00009797          	auipc	a5,0x9
    8000243c:	18078793          	addi	a5,a5,384 # 8000b5b8 <_ZTV14PeriodicThread+0x10>
    80002440:	00f53023          	sd	a5,0(a0)
    80002444:	00000097          	auipc	ra,0x0
    80002448:	b9c080e7          	jalr	-1124(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    8000244c:	00048513          	mv	a0,s1
    80002450:	00000097          	auipc	ra,0x0
    80002454:	c50080e7          	jalr	-944(ra) # 800020a0 <_ZdlPv>
    80002458:	01813083          	ld	ra,24(sp)
    8000245c:	01013403          	ld	s0,16(sp)
    80002460:	00813483          	ld	s1,8(sp)
    80002464:	02010113          	addi	sp,sp,32
    80002468:	00008067          	ret

000000008000246c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00813423          	sd	s0,8(sp)
    80002474:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002478:	00853783          	ld	a5,8(a0)
    8000247c:	02078463          	beqz	a5,800024a4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002480:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80002484:	01053783          	ld	a5,16(a0)
    80002488:	00078863          	beqz	a5,80002498 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    8000248c:	00060463          	beqz	a2,80002494 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002490:	00853583          	ld	a1,8(a0)
    80002494:	00b7b423          	sd	a1,8(a5)
}
    80002498:	00813403          	ld	s0,8(sp)
    8000249c:	01010113          	addi	sp,sp,16
    800024a0:	00008067          	ret
    else freeSegHead = nextSeg;
    800024a4:	00009797          	auipc	a5,0x9
    800024a8:	3cb7b623          	sd	a1,972(a5) # 8000b870 <_ZN15MemoryAllocator11freeSegHeadE>
    800024ac:	fd9ff06f          	j	80002484 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

00000000800024b0 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    800024b0:	fe010113          	addi	sp,sp,-32
    800024b4:	00113c23          	sd	ra,24(sp)
    800024b8:	00813823          	sd	s0,16(sp)
    800024bc:	00913423          	sd	s1,8(sp)
    800024c0:	01213023          	sd	s2,0(sp)
    800024c4:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800024c8:	0e050e63          	beqz	a0,800025c4 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800024cc:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800024d0:	00009497          	auipc	s1,0x9
    800024d4:	3a04b483          	ld	s1,928(s1) # 8000b870 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800024d8:	0a048e63          	beqz	s1,80002594 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800024dc:	0004b783          	ld	a5,0(s1)
    800024e0:	0527e463          	bltu	a5,s2,80002528 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800024e4:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800024e8:	01700713          	li	a4,23
    800024ec:	04f76263          	bltu	a4,a5,80002530 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800024f0:	00000613          	li	a2,0
    800024f4:	0104b583          	ld	a1,16(s1)
    800024f8:	00048513          	mv	a0,s1
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	f70080e7          	jalr	-144(ra) # 8000246c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    80002504:	00009797          	auipc	a5,0x9
    80002508:	3747b783          	ld	a5,884(a5) # 8000b878 <_ZN15MemoryAllocator11usedSegHeadE>
    8000250c:	04078863          	beqz	a5,8000255c <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80002510:	0497fa63          	bgeu	a5,s1,80002564 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80002514:	00078713          	mv	a4,a5
    80002518:	0107b783          	ld	a5,16(a5)
    8000251c:	04078663          	beqz	a5,80002568 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002520:	fe97eae3          	bltu	a5,s1,80002514 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002524:	0440006f          	j	80002568 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80002528:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    8000252c:	fadff06f          	j	800024d8 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002530:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002534:	0084b703          	ld	a4,8(s1)
    80002538:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    8000253c:	0104b703          	ld	a4,16(s1)
    80002540:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002544:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80002548:	00100613          	li	a2,1
    8000254c:	00048513          	mv	a0,s1
    80002550:	00000097          	auipc	ra,0x0
    80002554:	f1c080e7          	jalr	-228(ra) # 8000246c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80002558:	fadff06f          	j	80002504 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    8000255c:	00078713          	mv	a4,a5
    80002560:	0080006f          	j	80002568 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002564:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002568:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    8000256c:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002570:	04070063          	beqz	a4,800025b0 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80002574:	01073783          	ld	a5,16(a4)
    80002578:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    8000257c:	02070e63          	beqz	a4,800025b8 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002580:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002584:	0104b783          	ld	a5,16(s1)
    80002588:	00078463          	beqz	a5,80002590 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    8000258c:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002590:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002594:	00048513          	mv	a0,s1
    80002598:	01813083          	ld	ra,24(sp)
    8000259c:	01013403          	ld	s0,16(sp)
    800025a0:	00813483          	ld	s1,8(sp)
    800025a4:	00013903          	ld	s2,0(sp)
    800025a8:	02010113          	addi	sp,sp,32
    800025ac:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800025b0:	00070793          	mv	a5,a4
    800025b4:	fc5ff06f          	j	80002578 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    800025b8:	00009797          	auipc	a5,0x9
    800025bc:	2c97b023          	sd	s1,704(a5) # 8000b878 <_ZN15MemoryAllocator11usedSegHeadE>
    800025c0:	fc5ff06f          	j	80002584 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800025c4:	00000493          	li	s1,0
    800025c8:	fcdff06f          	j	80002594 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800025cc <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800025cc:	00009797          	auipc	a5,0x9
    800025d0:	2b47b783          	ld	a5,692(a5) # 8000b880 <_ZN15MemoryAllocator8instanceE>
    800025d4:	00078463          	beqz	a5,800025dc <_ZN15MemoryAllocator10initializeEv+0x10>
    800025d8:	00008067          	ret
void MemoryAllocator::initialize() {
    800025dc:	fe010113          	addi	sp,sp,-32
    800025e0:	00113c23          	sd	ra,24(sp)
    800025e4:	00813823          	sd	s0,16(sp)
    800025e8:	00913423          	sd	s1,8(sp)
    800025ec:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800025f0:	00009797          	auipc	a5,0x9
    800025f4:	1e07b783          	ld	a5,480(a5) # 8000b7d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025f8:	0007b783          	ld	a5,0(a5)
    800025fc:	00009497          	auipc	s1,0x9
    80002600:	27448493          	addi	s1,s1,628 # 8000b870 <_ZN15MemoryAllocator11freeSegHeadE>
    80002604:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80002608:	00009717          	auipc	a4,0x9
    8000260c:	1e873703          	ld	a4,488(a4) # 8000b7f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002610:	00073703          	ld	a4,0(a4)
    80002614:	40f70733          	sub	a4,a4,a5
    80002618:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    8000261c:	0004b783          	ld	a5,0(s1)
    80002620:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80002624:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80002628:	00100513          	li	a0,1
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	e84080e7          	jalr	-380(ra) # 800024b0 <_ZN15MemoryAllocator9mem_allocEm>
    80002634:	00a4b823          	sd	a0,16(s1)
}
    80002638:	01813083          	ld	ra,24(sp)
    8000263c:	01013403          	ld	s0,16(sp)
    80002640:	00813483          	ld	s1,8(sp)
    80002644:	02010113          	addi	sp,sp,32
    80002648:	00008067          	ret

000000008000264c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    8000264c:	ff010113          	addi	sp,sp,-16
    80002650:	00813423          	sd	s0,8(sp)
    80002654:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002658:	01053783          	ld	a5,16(a0)
    8000265c:	00078863          	beqz	a5,8000266c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002660:	00053703          	ld	a4,0(a0)
    80002664:	00e506b3          	add	a3,a0,a4
    80002668:	00d78863          	beq	a5,a3,80002678 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    8000266c:	00813403          	ld	s0,8(sp)
    80002670:	01010113          	addi	sp,sp,16
    80002674:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002678:	0007b683          	ld	a3,0(a5)
    8000267c:	00d70733          	add	a4,a4,a3
    80002680:	01870713          	addi	a4,a4,24
    80002684:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002688:	0107b783          	ld	a5,16(a5)
    8000268c:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002690:	fc078ee3          	beqz	a5,8000266c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002694:	00a7b423          	sd	a0,8(a5)
}
    80002698:	fd5ff06f          	j	8000266c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

000000008000269c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000269c:	14050263          	beqz	a0,800027e0 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    800026a0:	fd010113          	addi	sp,sp,-48
    800026a4:	02113423          	sd	ra,40(sp)
    800026a8:	02813023          	sd	s0,32(sp)
    800026ac:	00913c23          	sd	s1,24(sp)
    800026b0:	01213823          	sd	s2,16(sp)
    800026b4:	01313423          	sd	s3,8(sp)
    800026b8:	03010413          	addi	s0,sp,48
    800026bc:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800026c0:	00009797          	auipc	a5,0x9
    800026c4:	1107b783          	ld	a5,272(a5) # 8000b7d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800026c8:	0007b783          	ld	a5,0(a5)
    800026cc:	10f56e63          	bltu	a0,a5,800027e8 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    800026d0:	00009797          	auipc	a5,0x9
    800026d4:	1207b783          	ld	a5,288(a5) # 8000b7f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026d8:	0007b783          	ld	a5,0(a5)
    800026dc:	10a7ea63          	bltu	a5,a0,800027f0 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    800026e0:	00009797          	auipc	a5,0x9
    800026e4:	1987b783          	ld	a5,408(a5) # 8000b878 <_ZN15MemoryAllocator11usedSegHeadE>
    800026e8:	10078863          	beqz	a5,800027f8 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800026ec:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800026f0:	00078863          	beqz	a5,80002700 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800026f4:	08978e63          	beq	a5,s1,80002790 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800026f8:	0107b783          	ld	a5,16(a5)
    800026fc:	ff5ff06f          	j	800026f0 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80002700:	00000793          	li	a5,0
    if (!found) return -3;
    80002704:	0e078e63          	beqz	a5,80002800 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    80002708:	00000613          	li	a2,0
    8000270c:	ff893583          	ld	a1,-8(s2)
    80002710:	00048513          	mv	a0,s1
    80002714:	00000097          	auipc	ra,0x0
    80002718:	d58080e7          	jalr	-680(ra) # 8000246c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    8000271c:	00009797          	auipc	a5,0x9
    80002720:	1547b783          	ld	a5,340(a5) # 8000b870 <_ZN15MemoryAllocator11freeSegHeadE>
    80002724:	06078a63          	beqz	a5,80002798 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80002728:	08f4e463          	bltu	s1,a5,800027b0 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    8000272c:	00078993          	mv	s3,a5
    80002730:	0107b783          	ld	a5,16(a5)
    80002734:	00078463          	beqz	a5,8000273c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80002738:	fe97eae3          	bltu	a5,s1,8000272c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    8000273c:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002740:	0109b783          	ld	a5,16(s3)
    80002744:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002748:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    8000274c:	ff893783          	ld	a5,-8(s2)
    80002750:	00078463          	beqz	a5,80002758 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002754:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002758:	00048513          	mv	a0,s1
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	ef0080e7          	jalr	-272(ra) # 8000264c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002764:	00098513          	mv	a0,s3
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	ee4080e7          	jalr	-284(ra) # 8000264c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002770:	00000513          	li	a0,0
}
    80002774:	02813083          	ld	ra,40(sp)
    80002778:	02013403          	ld	s0,32(sp)
    8000277c:	01813483          	ld	s1,24(sp)
    80002780:	01013903          	ld	s2,16(sp)
    80002784:	00813983          	ld	s3,8(sp)
    80002788:	03010113          	addi	sp,sp,48
    8000278c:	00008067          	ret
            found = true;
    80002790:	00100793          	li	a5,1
    80002794:	f71ff06f          	j	80002704 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002798:	00009797          	auipc	a5,0x9
    8000279c:	0c97bc23          	sd	s1,216(a5) # 8000b870 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    800027a0:	fe093c23          	sd	zero,-8(s2)
    800027a4:	fe093823          	sd	zero,-16(s2)
    return 0;
    800027a8:	00000513          	li	a0,0
    800027ac:	fc9ff06f          	j	80002774 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    800027b0:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    800027b4:	00009797          	auipc	a5,0x9
    800027b8:	0bc78793          	addi	a5,a5,188 # 8000b870 <_ZN15MemoryAllocator11freeSegHeadE>
    800027bc:	0007b703          	ld	a4,0(a5)
    800027c0:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800027c4:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800027c8:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800027cc:	00048513          	mv	a0,s1
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	e7c080e7          	jalr	-388(ra) # 8000264c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800027d8:	00000513          	li	a0,0
    800027dc:	f99ff06f          	j	80002774 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800027e0:	fff00513          	li	a0,-1
}
    800027e4:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800027e8:	fff00513          	li	a0,-1
    800027ec:	f89ff06f          	j	80002774 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    800027f0:	fff00513          	li	a0,-1
    800027f4:	f81ff06f          	j	80002774 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    800027f8:	ffe00513          	li	a0,-2
    800027fc:	f79ff06f          	j	80002774 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    80002800:	ffd00513          	li	a0,-3
    80002804:	f71ff06f          	j	80002774 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

0000000080002808 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002808:	fe010113          	addi	sp,sp,-32
    8000280c:	00113c23          	sd	ra,24(sp)
    80002810:	00813823          	sd	s0,16(sp)
    80002814:	00913423          	sd	s1,8(sp)
    80002818:	02010413          	addi	s0,sp,32
    __putc('\n');
    8000281c:	00a00513          	li	a0,10
    80002820:	00006097          	auipc	ra,0x6
    80002824:	cec080e7          	jalr	-788(ra) # 8000850c <__putc>
    __putc('M');
    80002828:	04d00513          	li	a0,77
    8000282c:	00006097          	auipc	ra,0x6
    80002830:	ce0080e7          	jalr	-800(ra) # 8000850c <__putc>
    __putc(':');
    80002834:	03a00513          	li	a0,58
    80002838:	00006097          	auipc	ra,0x6
    8000283c:	cd4080e7          	jalr	-812(ra) # 8000850c <__putc>
    __putc(' ');
    80002840:	02000513          	li	a0,32
    80002844:	00006097          	auipc	ra,0x6
    80002848:	cc8080e7          	jalr	-824(ra) # 8000850c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    8000284c:	00009497          	auipc	s1,0x9
    80002850:	0244b483          	ld	s1,36(s1) # 8000b870 <_ZN15MemoryAllocator11freeSegHeadE>
    80002854:	00048c63          	beqz	s1,8000286c <_ZN15MemoryAllocator5printEv+0x64>
    80002858:	06600513          	li	a0,102
    8000285c:	00006097          	auipc	ra,0x6
    80002860:	cb0080e7          	jalr	-848(ra) # 8000850c <__putc>
    80002864:	0104b483          	ld	s1,16(s1)
    80002868:	fedff06f          	j	80002854 <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    8000286c:	00900513          	li	a0,9
    80002870:	00006097          	auipc	ra,0x6
    80002874:	c9c080e7          	jalr	-868(ra) # 8000850c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80002878:	00009497          	auipc	s1,0x9
    8000287c:	0004b483          	ld	s1,0(s1) # 8000b878 <_ZN15MemoryAllocator11usedSegHeadE>
    80002880:	00048c63          	beqz	s1,80002898 <_ZN15MemoryAllocator5printEv+0x90>
    80002884:	07500513          	li	a0,117
    80002888:	00006097          	auipc	ra,0x6
    8000288c:	c84080e7          	jalr	-892(ra) # 8000850c <__putc>
    80002890:	0104b483          	ld	s1,16(s1)
    80002894:	fedff06f          	j	80002880 <_ZN15MemoryAllocator5printEv+0x78>
}
    80002898:	01813083          	ld	ra,24(sp)
    8000289c:	01013403          	ld	s0,16(sp)
    800028a0:	00813483          	ld	s1,8(sp)
    800028a4:	02010113          	addi	sp,sp,32
    800028a8:	00008067          	ret

00000000800028ac <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    800028ac:	ff010113          	addi	sp,sp,-16
    800028b0:	00813423          	sd	s0,8(sp)
    800028b4:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800028b8:	05750513          	addi	a0,a0,87
}
    800028bc:	00655513          	srli	a0,a0,0x6
    800028c0:	00813403          	ld	s0,8(sp)
    800028c4:	01010113          	addi	sp,sp,16
    800028c8:	00008067          	ret

00000000800028cc <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    800028cc:	fe010113          	addi	sp,sp,-32
    800028d0:	00113c23          	sd	ra,24(sp)
    800028d4:	00813823          	sd	s0,16(sp)
    800028d8:	00913423          	sd	s1,8(sp)
    800028dc:	02010413          	addi	s0,sp,32
    800028e0:	00050493          	mv	s1,a0
    if (tail_ready) {
    800028e4:	00009517          	auipc	a0,0x9
    800028e8:	fa453503          	ld	a0,-92(a0) # 8000b888 <_ZN9Scheduler10tail_readyE>
    800028ec:	02051463          	bnez	a0,80002914 <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    800028f0:	00009797          	auipc	a5,0x9
    800028f4:	f9878793          	addi	a5,a5,-104 # 8000b888 <_ZN9Scheduler10tail_readyE>
    800028f8:	0097b023          	sd	s1,0(a5)
    800028fc:	0097b423          	sd	s1,8(a5)
}
    80002900:	01813083          	ld	ra,24(sp)
    80002904:	01013403          	ld	s0,16(sp)
    80002908:	00813483          	ld	s1,8(sp)
    8000290c:	02010113          	addi	sp,sp,32
    80002910:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    80002914:	00048593          	mv	a1,s1
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	3e4080e7          	jalr	996(ra) # 80001cfc <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002920:	00009797          	auipc	a5,0x9
    80002924:	f697b423          	sd	s1,-152(a5) # 8000b888 <_ZN9Scheduler10tail_readyE>
        return;
    80002928:	fd9ff06f          	j	80002900 <_ZN9Scheduler3putEP3TCB+0x34>

000000008000292c <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    8000292c:	fe010113          	addi	sp,sp,-32
    80002930:	00113c23          	sd	ra,24(sp)
    80002934:	00813823          	sd	s0,16(sp)
    80002938:	00913423          	sd	s1,8(sp)
    8000293c:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002940:	00009497          	auipc	s1,0x9
    80002944:	f504b483          	ld	s1,-176(s1) # 8000b890 <_ZN9Scheduler10head_readyE>
    80002948:	00048c63          	beqz	s1,80002960 <_ZN9Scheduler3getEv+0x34>
    TCB *head = head_ready;
    head_ready = head_ready -> get_next_ready();
    8000294c:	00048513          	mv	a0,s1
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	390080e7          	jalr	912(ra) # 80001ce0 <_ZNK3TCB14get_next_readyEv>
    80002958:	00009797          	auipc	a5,0x9
    8000295c:	f2a7bc23          	sd	a0,-200(a5) # 8000b890 <_ZN9Scheduler10head_readyE>
    return head;
}
    80002960:	00048513          	mv	a0,s1
    80002964:	01813083          	ld	ra,24(sp)
    80002968:	01013403          	ld	s0,16(sp)
    8000296c:	00813483          	ld	s1,8(sp)
    80002970:	02010113          	addi	sp,sp,32
    80002974:	00008067          	ret

0000000080002978 <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    80002978:	fc010113          	addi	sp,sp,-64
    8000297c:	02113c23          	sd	ra,56(sp)
    80002980:	02813823          	sd	s0,48(sp)
    80002984:	02913423          	sd	s1,40(sp)
    80002988:	03213023          	sd	s2,32(sp)
    8000298c:	01313c23          	sd	s3,24(sp)
    80002990:	01413823          	sd	s4,16(sp)
    80002994:	01513423          	sd	s5,8(sp)
    80002998:	04010413          	addi	s0,sp,64
    8000299c:	00050a93          	mv	s5,a0
    800029a0:	00058993          	mv	s3,a1
    thread -> set_status(TCB::Status::SLEEPING);
    800029a4:	00100593          	li	a1,1
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	3e0080e7          	jalr	992(ra) # 80001d88 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    800029b0:	00009497          	auipc	s1,0x9
    800029b4:	ee84b483          	ld	s1,-280(s1) # 8000b898 <_ZN9Scheduler13head_sleepingE>
    800029b8:	02048e63          	beqz	s1,800029f4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x7c>
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    800029bc:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    800029c0:	00000a13          	li	s4,0
    while (tmp) {
    800029c4:	04048c63          	beqz	s1,80002a1c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
        current_time += tmp -> get_time_to_sleep();
    800029c8:	00048513          	mv	a0,s1
    800029cc:	fffff097          	auipc	ra,0xfffff
    800029d0:	3a0080e7          	jalr	928(ra) # 80001d6c <_ZNK3TCB17get_time_to_sleepEv>
    800029d4:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    800029d8:	0729e463          	bltu	s3,s2,80002a40 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xc8>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    800029dc:	00048513          	mv	a0,s1
    800029e0:	fffff097          	auipc	ra,0xfffff
    800029e4:	354080e7          	jalr	852(ra) # 80001d34 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    800029e8:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    800029ec:	00050493          	mv	s1,a0
    while (tmp) {
    800029f0:	fd5ff06f          	j	800029c4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x4c>
        head_sleeping = thread;
    800029f4:	00009797          	auipc	a5,0x9
    800029f8:	eb57b223          	sd	s5,-348(a5) # 8000b898 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    800029fc:	00000593          	li	a1,0
    80002a00:	000a8513          	mv	a0,s5
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	314080e7          	jalr	788(ra) # 80001d18 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002a0c:	00098593          	mv	a1,s3
    80002a10:	000a8513          	mv	a0,s5
    80002a14:	fffff097          	auipc	ra,0xfffff
    80002a18:	33c080e7          	jalr	828(ra) # 80001d50 <_ZN3TCB17set_time_to_sleepEm>
    }
}
    80002a1c:	03813083          	ld	ra,56(sp)
    80002a20:	03013403          	ld	s0,48(sp)
    80002a24:	02813483          	ld	s1,40(sp)
    80002a28:	02013903          	ld	s2,32(sp)
    80002a2c:	01813983          	ld	s3,24(sp)
    80002a30:	01013a03          	ld	s4,16(sp)
    80002a34:	00813a83          	ld	s5,8(sp)
    80002a38:	04010113          	addi	sp,sp,64
    80002a3c:	00008067          	ret
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
    80002a40:	000a0a63          	beqz	s4,80002a54 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xdc>
    80002a44:	000a0513          	mv	a0,s4
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	324080e7          	jalr	804(ra) # 80001d6c <_ZNK3TCB17get_time_to_sleepEv>
    80002a50:	40a989b3          	sub	s3,s3,a0
            thread -> set_time_to_sleep(new_time);
    80002a54:	00098593          	mv	a1,s3
    80002a58:	000a8513          	mv	a0,s5
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	2f4080e7          	jalr	756(ra) # 80001d50 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002a64:	00048593          	mv	a1,s1
    80002a68:	000a8513          	mv	a0,s5
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	2ac080e7          	jalr	684(ra) # 80001d18 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002a74:	040a0c63          	beqz	s4,80002acc <_ZN9Scheduler12put_to_sleepEP3TCBm+0x154>
    80002a78:	000a8593          	mv	a1,s5
    80002a7c:	000a0513          	mv	a0,s4
    80002a80:	fffff097          	auipc	ra,0xfffff
    80002a84:	298080e7          	jalr	664(ra) # 80001d18 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002a88:	00048513          	mv	a0,s1
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	2a8080e7          	jalr	680(ra) # 80001d34 <_ZNK3TCB17get_next_sleepingEv>
    80002a94:	00050493          	mv	s1,a0
    80002a98:	f80482e3          	beqz	s1,80002a1c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80002a9c:	00048513          	mv	a0,s1
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	2cc080e7          	jalr	716(ra) # 80001d6c <_ZNK3TCB17get_time_to_sleepEv>
    80002aa8:	413505b3          	sub	a1,a0,s3
    80002aac:	00048513          	mv	a0,s1
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	2a0080e7          	jalr	672(ra) # 80001d50 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002ab8:	00048513          	mv	a0,s1
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	278080e7          	jalr	632(ra) # 80001d34 <_ZNK3TCB17get_next_sleepingEv>
    80002ac4:	00050493          	mv	s1,a0
    80002ac8:	fd1ff06f          	j	80002a98 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x120>
            else head_sleeping = thread;
    80002acc:	00009797          	auipc	a5,0x9
    80002ad0:	dd57b623          	sd	s5,-564(a5) # 8000b898 <_ZN9Scheduler13head_sleepingE>
    80002ad4:	fb5ff06f          	j	80002a88 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x110>

0000000080002ad8 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002ad8:	ff010113          	addi	sp,sp,-16
    80002adc:	00813423          	sd	s0,8(sp)
    80002ae0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002ae4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002ae8:	10200073          	sret
}
    80002aec:	00813403          	ld	s0,8(sp)
    80002af0:	01010113          	addi	sp,sp,16
    80002af4:	00008067          	ret

0000000080002af8 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002af8:	fc010113          	addi	sp,sp,-64
    80002afc:	02113c23          	sd	ra,56(sp)
    80002b00:	02813823          	sd	s0,48(sp)
    80002b04:	02913423          	sd	s1,40(sp)
    80002b08:	03213023          	sd	s2,32(sp)
    80002b0c:	04010413          	addi	s0,sp,64
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002b10:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002b14:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002b18:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002b1c:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002b20:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002b24:	142027f3          	csrr	a5,scause
    80002b28:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80002b2c:	fc843703          	ld	a4,-56(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002b30:	fff00793          	li	a5,-1
    80002b34:	03f79793          	slli	a5,a5,0x3f
    80002b38:	00178793          	addi	a5,a5,1
    80002b3c:	02f70463          	beq	a4,a5,80002b64 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
//        }
//        mc_sip(SIP_SSIE);
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002b40:	fff00793          	li	a5,-1
    80002b44:	03f79793          	slli	a5,a5,0x3f
    80002b48:	00978793          	addi	a5,a5,9
    80002b4c:	02f70863          	beq	a4,a5,80002b7c <_ZN5RiscV22handle_supervisor_trapEv+0x84>
        console_handler();
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002b50:	00200793          	li	a5,2
    80002b54:	02f70a63          	beq	a4,a5,80002b88 <_ZN5RiscV22handle_supervisor_trapEv+0x90>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002b58:	ff870713          	addi	a4,a4,-8
    80002b5c:	00100793          	li	a5,1
    80002b60:	02e7fa63          	bgeu	a5,a4,80002b94 <_ZN5RiscV22handle_supervisor_trapEv+0x9c>
                break;
        }
        write_sepc(sepc);
        write_sstatus(sstatus);
    }
    80002b64:	03813083          	ld	ra,56(sp)
    80002b68:	03013403          	ld	s0,48(sp)
    80002b6c:	02813483          	ld	s1,40(sp)
    80002b70:	02013903          	ld	s2,32(sp)
    80002b74:	04010113          	addi	sp,sp,64
    80002b78:	00008067          	ret
        console_handler();
    80002b7c:	00006097          	auipc	ra,0x6
    80002b80:	a04080e7          	jalr	-1532(ra) # 80008580 <console_handler>
    80002b84:	fe1ff06f          	j	80002b64 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002b88:	00100793          	li	a5,1
    80002b8c:	00078513          	mv	a0,a5
        return;
    80002b90:	fd5ff06f          	j	80002b64 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002b94:	141027f3          	csrr	a5,sepc
    80002b98:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002b9c:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = read_sepc() + 4;
    80002ba0:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002ba4:	100027f3          	csrr	a5,sstatus
    80002ba8:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002bac:	fd043903          	ld	s2,-48(s0)
        switch(syscall_code) {
    80002bb0:	01300793          	li	a5,19
    80002bb4:	0307e463          	bltu	a5,a6,80002bdc <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
    80002bb8:	00281813          	slli	a6,a6,0x2
    80002bbc:	00006717          	auipc	a4,0x6
    80002bc0:	46470713          	addi	a4,a4,1124 # 80009020 <CONSOLE_STATUS+0x10>
    80002bc4:	00e80833          	add	a6,a6,a4
    80002bc8:	00082783          	lw	a5,0(a6)
    80002bcc:	00e787b3          	add	a5,a5,a4
    80002bd0:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	8dc080e7          	jalr	-1828(ra) # 800024b0 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002bdc:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002be0:	10091073          	csrw	sstatus,s2
}
    80002be4:	f81ff06f          	j	80002b64 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
                MemoryAllocator::mem_free((void *) a1);
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	ab4080e7          	jalr	-1356(ra) # 8000269c <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002bf0:	fedff06f          	j	80002bdc <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002bf4:	fffff097          	auipc	ra,0xfffff
    80002bf8:	2d0080e7          	jalr	720(ra) # 80001ec4 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002bfc:	fe1ff06f          	j	80002bdc <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                TCB::thread_exit();
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	1a4080e7          	jalr	420(ra) # 80001da4 <_ZN3TCB11thread_exitEv>
                break;
    80002c08:	fd5ff06f          	j	80002bdc <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
                TCB::dispatch();
    80002c0c:	fffff097          	auipc	ra,0xfffff
    80002c10:	068080e7          	jalr	104(ra) # 80001c74 <_ZN3TCB8dispatchEv>
                break;
    80002c14:	fc9ff06f          	j	80002bdc <_ZN5RiscV22handle_supervisor_trapEv+0xe4>

0000000080002c18 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    80002c18:	ff010113          	addi	sp,sp,-16
    80002c1c:	00813423          	sd	s0,8(sp)
    80002c20:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002c24:	00053503          	ld	a0,0(a0)
    80002c28:	00050463          	beqz	a0,80002c30 <_ZN10ThreadList9get_firstEv+0x18>
    80002c2c:	00053503          	ld	a0,0(a0)
}
    80002c30:	00813403          	ld	s0,8(sp)
    80002c34:	01010113          	addi	sp,sp,16
    80002c38:	00008067          	ret

0000000080002c3c <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002c3c:	ff010113          	addi	sp,sp,-16
    80002c40:	00113423          	sd	ra,8(sp)
    80002c44:	00813023          	sd	s0,0(sp)
    80002c48:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	c60080e7          	jalr	-928(ra) # 800028ac <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	85c080e7          	jalr	-1956(ra) # 800024b0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002c5c:	00813083          	ld	ra,8(sp)
    80002c60:	00013403          	ld	s0,0(sp)
    80002c64:	01010113          	addi	sp,sp,16
    80002c68:	00008067          	ret

0000000080002c6c <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002c6c:	fe010113          	addi	sp,sp,-32
    80002c70:	00113c23          	sd	ra,24(sp)
    80002c74:	00813823          	sd	s0,16(sp)
    80002c78:	00913423          	sd	s1,8(sp)
    80002c7c:	01213023          	sd	s2,0(sp)
    80002c80:	02010413          	addi	s0,sp,32
    80002c84:	00050493          	mv	s1,a0
    80002c88:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80002c8c:	01000513          	li	a0,16
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	fac080e7          	jalr	-84(ra) # 80002c3c <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80002c98:	01253023          	sd	s2,0(a0)
    80002c9c:	00053423          	sd	zero,8(a0)
    80002ca0:	0004b783          	ld	a5,0(s1)
    80002ca4:	02078263          	beqz	a5,80002cc8 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80002ca8:	00a4b023          	sd	a0,0(s1)
    80002cac:	00a4b423          	sd	a0,8(s1)
}
    80002cb0:	01813083          	ld	ra,24(sp)
    80002cb4:	01013403          	ld	s0,16(sp)
    80002cb8:	00813483          	ld	s1,8(sp)
    80002cbc:	00013903          	ld	s2,0(sp)
    80002cc0:	02010113          	addi	sp,sp,32
    80002cc4:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80002cc8:	0084b783          	ld	a5,8(s1)
    80002ccc:	00a7b423          	sd	a0,8(a5)
    80002cd0:	fddff06f          	j	80002cac <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080002cd4 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80002cd4:	fe010113          	addi	sp,sp,-32
    80002cd8:	00113c23          	sd	ra,24(sp)
    80002cdc:	00813823          	sd	s0,16(sp)
    80002ce0:	00913423          	sd	s1,8(sp)
    80002ce4:	01213023          	sd	s2,0(sp)
    80002ce8:	02010413          	addi	s0,sp,32
    80002cec:	00050493          	mv	s1,a0
    80002cf0:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80002cf4:	01000513          	li	a0,16
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	f44080e7          	jalr	-188(ra) # 80002c3c <_ZN10ThreadList4NodenwEm>
    80002d00:	01253023          	sd	s2,0(a0)
    80002d04:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80002d08:	0004b783          	ld	a5,0(s1)
    80002d0c:	00f53423          	sd	a5,8(a0)
    head = node;
    80002d10:	00a4b023          	sd	a0,0(s1)
}
    80002d14:	01813083          	ld	ra,24(sp)
    80002d18:	01013403          	ld	s0,16(sp)
    80002d1c:	00813483          	ld	s1,8(sp)
    80002d20:	00013903          	ld	s2,0(sp)
    80002d24:	02010113          	addi	sp,sp,32
    80002d28:	00008067          	ret

0000000080002d2c <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80002d2c:	ff010113          	addi	sp,sp,-16
    80002d30:	00113423          	sd	ra,8(sp)
    80002d34:	00813023          	sd	s0,0(sp)
    80002d38:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	960080e7          	jalr	-1696(ra) # 8000269c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002d44:	00813083          	ld	ra,8(sp)
    80002d48:	00013403          	ld	s0,0(sp)
    80002d4c:	01010113          	addi	sp,sp,16
    80002d50:	00008067          	ret

0000000080002d54 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80002d54:	fe010113          	addi	sp,sp,-32
    80002d58:	00113c23          	sd	ra,24(sp)
    80002d5c:	00813823          	sd	s0,16(sp)
    80002d60:	00913423          	sd	s1,8(sp)
    80002d64:	02010413          	addi	s0,sp,32
    80002d68:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002d6c:	00053503          	ld	a0,0(a0)
    80002d70:	02050a63          	beqz	a0,80002da4 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80002d74:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80002d78:	00853703          	ld	a4,8(a0)
    80002d7c:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    80002d80:	00073423          	sd	zero,8(a4)
    delete tmp;
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	fa8080e7          	jalr	-88(ra) # 80002d2c <_ZN10ThreadList4NodedlEPv>
}
    80002d8c:	00048513          	mv	a0,s1
    80002d90:	01813083          	ld	ra,24(sp)
    80002d94:	01013403          	ld	s0,16(sp)
    80002d98:	00813483          	ld	s1,8(sp)
    80002d9c:	02010113          	addi	sp,sp,32
    80002da0:	00008067          	ret
    if (!head) return nullptr;
    80002da4:	00050493          	mv	s1,a0
    80002da8:	fe5ff06f          	j	80002d8c <_ZN10ThreadList12remove_firstEv+0x38>

0000000080002dac <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80002dac:	fe010113          	addi	sp,sp,-32
    80002db0:	00113c23          	sd	ra,24(sp)
    80002db4:	00813823          	sd	s0,16(sp)
    80002db8:	00913423          	sd	s1,8(sp)
    80002dbc:	02010413          	addi	s0,sp,32
    80002dc0:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80002dc4:	00048513          	mv	a0,s1
    80002dc8:	00000097          	auipc	ra,0x0
    80002dcc:	e50080e7          	jalr	-432(ra) # 80002c18 <_ZN10ThreadList9get_firstEv>
    80002dd0:	00050a63          	beqz	a0,80002de4 <_ZN10ThreadList4freeEv+0x38>
    80002dd4:	00048513          	mv	a0,s1
    80002dd8:	00000097          	auipc	ra,0x0
    80002ddc:	f7c080e7          	jalr	-132(ra) # 80002d54 <_ZN10ThreadList12remove_firstEv>
    80002de0:	fe5ff06f          	j	80002dc4 <_ZN10ThreadList4freeEv+0x18>
}
    80002de4:	01813083          	ld	ra,24(sp)
    80002de8:	01013403          	ld	s0,16(sp)
    80002dec:	00813483          	ld	s1,8(sp)
    80002df0:	02010113          	addi	sp,sp,32
    80002df4:	00008067          	ret

0000000080002df8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002df8:	fe010113          	addi	sp,sp,-32
    80002dfc:	00113c23          	sd	ra,24(sp)
    80002e00:	00813823          	sd	s0,16(sp)
    80002e04:	00913423          	sd	s1,8(sp)
    80002e08:	01213023          	sd	s2,0(sp)
    80002e0c:	02010413          	addi	s0,sp,32
    80002e10:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002e14:	00000913          	li	s2,0
    80002e18:	00c0006f          	j	80002e24 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e1c:	ffffe097          	auipc	ra,0xffffe
    80002e20:	5b0080e7          	jalr	1456(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002e24:	ffffe097          	auipc	ra,0xffffe
    80002e28:	6a8080e7          	jalr	1704(ra) # 800014cc <_Z4getcv>
    80002e2c:	0005059b          	sext.w	a1,a0
    80002e30:	01b00793          	li	a5,27
    80002e34:	02f58a63          	beq	a1,a5,80002e68 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002e38:	0084b503          	ld	a0,8(s1)
    80002e3c:	00003097          	auipc	ra,0x3
    80002e40:	384080e7          	jalr	900(ra) # 800061c0 <_ZN6Buffer3putEi>
        i++;
    80002e44:	0019071b          	addiw	a4,s2,1
    80002e48:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e4c:	0004a683          	lw	a3,0(s1)
    80002e50:	0026979b          	slliw	a5,a3,0x2
    80002e54:	00d787bb          	addw	a5,a5,a3
    80002e58:	0017979b          	slliw	a5,a5,0x1
    80002e5c:	02f767bb          	remw	a5,a4,a5
    80002e60:	fc0792e3          	bnez	a5,80002e24 <_ZL16producerKeyboardPv+0x2c>
    80002e64:	fb9ff06f          	j	80002e1c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002e68:	00100793          	li	a5,1
    80002e6c:	00009717          	auipc	a4,0x9
    80002e70:	a2f72a23          	sw	a5,-1484(a4) # 8000b8a0 <_ZL9threadEnd>
    data->buffer->put('!');
    80002e74:	02100593          	li	a1,33
    80002e78:	0084b503          	ld	a0,8(s1)
    80002e7c:	00003097          	auipc	ra,0x3
    80002e80:	344080e7          	jalr	836(ra) # 800061c0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e84:	0104b503          	ld	a0,16(s1)
    80002e88:	ffffe097          	auipc	ra,0xffffe
    80002e8c:	5d4080e7          	jalr	1492(ra) # 8000145c <_Z10sem_signalP3Sem>
}
    80002e90:	01813083          	ld	ra,24(sp)
    80002e94:	01013403          	ld	s0,16(sp)
    80002e98:	00813483          	ld	s1,8(sp)
    80002e9c:	00013903          	ld	s2,0(sp)
    80002ea0:	02010113          	addi	sp,sp,32
    80002ea4:	00008067          	ret

0000000080002ea8 <_ZL8producerPv>:

static void producer(void *arg) {
    80002ea8:	fe010113          	addi	sp,sp,-32
    80002eac:	00113c23          	sd	ra,24(sp)
    80002eb0:	00813823          	sd	s0,16(sp)
    80002eb4:	00913423          	sd	s1,8(sp)
    80002eb8:	01213023          	sd	s2,0(sp)
    80002ebc:	02010413          	addi	s0,sp,32
    80002ec0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ec4:	00000913          	li	s2,0
    80002ec8:	00c0006f          	j	80002ed4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ecc:	ffffe097          	auipc	ra,0xffffe
    80002ed0:	500080e7          	jalr	1280(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002ed4:	00009797          	auipc	a5,0x9
    80002ed8:	9cc7a783          	lw	a5,-1588(a5) # 8000b8a0 <_ZL9threadEnd>
    80002edc:	02079e63          	bnez	a5,80002f18 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002ee0:	0004a583          	lw	a1,0(s1)
    80002ee4:	0305859b          	addiw	a1,a1,48
    80002ee8:	0084b503          	ld	a0,8(s1)
    80002eec:	00003097          	auipc	ra,0x3
    80002ef0:	2d4080e7          	jalr	724(ra) # 800061c0 <_ZN6Buffer3putEi>
        i++;
    80002ef4:	0019071b          	addiw	a4,s2,1
    80002ef8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002efc:	0004a683          	lw	a3,0(s1)
    80002f00:	0026979b          	slliw	a5,a3,0x2
    80002f04:	00d787bb          	addw	a5,a5,a3
    80002f08:	0017979b          	slliw	a5,a5,0x1
    80002f0c:	02f767bb          	remw	a5,a4,a5
    80002f10:	fc0792e3          	bnez	a5,80002ed4 <_ZL8producerPv+0x2c>
    80002f14:	fb9ff06f          	j	80002ecc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002f18:	0104b503          	ld	a0,16(s1)
    80002f1c:	ffffe097          	auipc	ra,0xffffe
    80002f20:	540080e7          	jalr	1344(ra) # 8000145c <_Z10sem_signalP3Sem>
}
    80002f24:	01813083          	ld	ra,24(sp)
    80002f28:	01013403          	ld	s0,16(sp)
    80002f2c:	00813483          	ld	s1,8(sp)
    80002f30:	00013903          	ld	s2,0(sp)
    80002f34:	02010113          	addi	sp,sp,32
    80002f38:	00008067          	ret

0000000080002f3c <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002f3c:	fd010113          	addi	sp,sp,-48
    80002f40:	02113423          	sd	ra,40(sp)
    80002f44:	02813023          	sd	s0,32(sp)
    80002f48:	00913c23          	sd	s1,24(sp)
    80002f4c:	01213823          	sd	s2,16(sp)
    80002f50:	01313423          	sd	s3,8(sp)
    80002f54:	03010413          	addi	s0,sp,48
    80002f58:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f5c:	00000993          	li	s3,0
    80002f60:	01c0006f          	j	80002f7c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002f64:	ffffe097          	auipc	ra,0xffffe
    80002f68:	468080e7          	jalr	1128(ra) # 800013cc <_Z15thread_dispatchv>
    80002f6c:	0500006f          	j	80002fbc <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002f70:	00a00513          	li	a0,10
    80002f74:	ffffe097          	auipc	ra,0xffffe
    80002f78:	5a4080e7          	jalr	1444(ra) # 80001518 <_Z4putcc>
    while (!threadEnd) {
    80002f7c:	00009797          	auipc	a5,0x9
    80002f80:	9247a783          	lw	a5,-1756(a5) # 8000b8a0 <_ZL9threadEnd>
    80002f84:	06079063          	bnez	a5,80002fe4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002f88:	00893503          	ld	a0,8(s2)
    80002f8c:	00003097          	auipc	ra,0x3
    80002f90:	2c4080e7          	jalr	708(ra) # 80006250 <_ZN6Buffer3getEv>
        i++;
    80002f94:	0019849b          	addiw	s1,s3,1
    80002f98:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f9c:	0ff57513          	andi	a0,a0,255
    80002fa0:	ffffe097          	auipc	ra,0xffffe
    80002fa4:	578080e7          	jalr	1400(ra) # 80001518 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002fa8:	00092703          	lw	a4,0(s2)
    80002fac:	0027179b          	slliw	a5,a4,0x2
    80002fb0:	00e787bb          	addw	a5,a5,a4
    80002fb4:	02f4e7bb          	remw	a5,s1,a5
    80002fb8:	fa0786e3          	beqz	a5,80002f64 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002fbc:	05000793          	li	a5,80
    80002fc0:	02f4e4bb          	remw	s1,s1,a5
    80002fc4:	fa049ce3          	bnez	s1,80002f7c <_ZL8consumerPv+0x40>
    80002fc8:	fa9ff06f          	j	80002f70 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002fcc:	00893503          	ld	a0,8(s2)
    80002fd0:	00003097          	auipc	ra,0x3
    80002fd4:	280080e7          	jalr	640(ra) # 80006250 <_ZN6Buffer3getEv>
        putc(key);
    80002fd8:	0ff57513          	andi	a0,a0,255
    80002fdc:	ffffe097          	auipc	ra,0xffffe
    80002fe0:	53c080e7          	jalr	1340(ra) # 80001518 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002fe4:	00893503          	ld	a0,8(s2)
    80002fe8:	00003097          	auipc	ra,0x3
    80002fec:	2f4080e7          	jalr	756(ra) # 800062dc <_ZN6Buffer6getCntEv>
    80002ff0:	fca04ee3          	bgtz	a0,80002fcc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002ff4:	01093503          	ld	a0,16(s2)
    80002ff8:	ffffe097          	auipc	ra,0xffffe
    80002ffc:	464080e7          	jalr	1124(ra) # 8000145c <_Z10sem_signalP3Sem>
}
    80003000:	02813083          	ld	ra,40(sp)
    80003004:	02013403          	ld	s0,32(sp)
    80003008:	01813483          	ld	s1,24(sp)
    8000300c:	01013903          	ld	s2,16(sp)
    80003010:	00813983          	ld	s3,8(sp)
    80003014:	03010113          	addi	sp,sp,48
    80003018:	00008067          	ret

000000008000301c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000301c:	f9010113          	addi	sp,sp,-112
    80003020:	06113423          	sd	ra,104(sp)
    80003024:	06813023          	sd	s0,96(sp)
    80003028:	04913c23          	sd	s1,88(sp)
    8000302c:	05213823          	sd	s2,80(sp)
    80003030:	05313423          	sd	s3,72(sp)
    80003034:	05413023          	sd	s4,64(sp)
    80003038:	03513c23          	sd	s5,56(sp)
    8000303c:	03613823          	sd	s6,48(sp)
    80003040:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003044:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003048:	00006517          	auipc	a0,0x6
    8000304c:	02850513          	addi	a0,a0,40 # 80009070 <CONSOLE_STATUS+0x60>
    80003050:	00002097          	auipc	ra,0x2
    80003054:	220080e7          	jalr	544(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    80003058:	01e00593          	li	a1,30
    8000305c:	fa040493          	addi	s1,s0,-96
    80003060:	00048513          	mv	a0,s1
    80003064:	00002097          	auipc	ra,0x2
    80003068:	294080e7          	jalr	660(ra) # 800052f8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000306c:	00048513          	mv	a0,s1
    80003070:	00002097          	auipc	ra,0x2
    80003074:	360080e7          	jalr	864(ra) # 800053d0 <_Z11stringToIntPKc>
    80003078:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000307c:	00006517          	auipc	a0,0x6
    80003080:	01450513          	addi	a0,a0,20 # 80009090 <CONSOLE_STATUS+0x80>
    80003084:	00002097          	auipc	ra,0x2
    80003088:	1ec080e7          	jalr	492(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    8000308c:	01e00593          	li	a1,30
    80003090:	00048513          	mv	a0,s1
    80003094:	00002097          	auipc	ra,0x2
    80003098:	264080e7          	jalr	612(ra) # 800052f8 <_Z9getStringPci>
    n = stringToInt(input);
    8000309c:	00048513          	mv	a0,s1
    800030a0:	00002097          	auipc	ra,0x2
    800030a4:	330080e7          	jalr	816(ra) # 800053d0 <_Z11stringToIntPKc>
    800030a8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800030ac:	00006517          	auipc	a0,0x6
    800030b0:	00450513          	addi	a0,a0,4 # 800090b0 <CONSOLE_STATUS+0xa0>
    800030b4:	00002097          	auipc	ra,0x2
    800030b8:	1bc080e7          	jalr	444(ra) # 80005270 <_Z11printStringPKc>
    800030bc:	00000613          	li	a2,0
    800030c0:	00a00593          	li	a1,10
    800030c4:	00090513          	mv	a0,s2
    800030c8:	00002097          	auipc	ra,0x2
    800030cc:	358080e7          	jalr	856(ra) # 80005420 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800030d0:	00006517          	auipc	a0,0x6
    800030d4:	ff850513          	addi	a0,a0,-8 # 800090c8 <CONSOLE_STATUS+0xb8>
    800030d8:	00002097          	auipc	ra,0x2
    800030dc:	198080e7          	jalr	408(ra) # 80005270 <_Z11printStringPKc>
    800030e0:	00000613          	li	a2,0
    800030e4:	00a00593          	li	a1,10
    800030e8:	00048513          	mv	a0,s1
    800030ec:	00002097          	auipc	ra,0x2
    800030f0:	334080e7          	jalr	820(ra) # 80005420 <_Z8printIntiii>
    printString(".\n");
    800030f4:	00006517          	auipc	a0,0x6
    800030f8:	fec50513          	addi	a0,a0,-20 # 800090e0 <CONSOLE_STATUS+0xd0>
    800030fc:	00002097          	auipc	ra,0x2
    80003100:	174080e7          	jalr	372(ra) # 80005270 <_Z11printStringPKc>
    if(threadNum > n) {
    80003104:	0324c463          	blt	s1,s2,8000312c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003108:	03205c63          	blez	s2,80003140 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000310c:	03800513          	li	a0,56
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	f68080e7          	jalr	-152(ra) # 80002078 <_Znwm>
    80003118:	00050a13          	mv	s4,a0
    8000311c:	00048593          	mv	a1,s1
    80003120:	00003097          	auipc	ra,0x3
    80003124:	004080e7          	jalr	4(ra) # 80006124 <_ZN6BufferC1Ei>
    80003128:	0300006f          	j	80003158 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000312c:	00006517          	auipc	a0,0x6
    80003130:	fbc50513          	addi	a0,a0,-68 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003134:	00002097          	auipc	ra,0x2
    80003138:	13c080e7          	jalr	316(ra) # 80005270 <_Z11printStringPKc>
        return;
    8000313c:	0140006f          	j	80003150 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003140:	00006517          	auipc	a0,0x6
    80003144:	fe850513          	addi	a0,a0,-24 # 80009128 <CONSOLE_STATUS+0x118>
    80003148:	00002097          	auipc	ra,0x2
    8000314c:	128080e7          	jalr	296(ra) # 80005270 <_Z11printStringPKc>
        return;
    80003150:	000b0113          	mv	sp,s6
    80003154:	1500006f          	j	800032a4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003158:	00000593          	li	a1,0
    8000315c:	00008517          	auipc	a0,0x8
    80003160:	74c50513          	addi	a0,a0,1868 # 8000b8a8 <_ZL10waitForAll>
    80003164:	ffffe097          	auipc	ra,0xffffe
    80003168:	2a4080e7          	jalr	676(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    8000316c:	00391793          	slli	a5,s2,0x3
    80003170:	00f78793          	addi	a5,a5,15
    80003174:	ff07f793          	andi	a5,a5,-16
    80003178:	40f10133          	sub	sp,sp,a5
    8000317c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003180:	0019071b          	addiw	a4,s2,1
    80003184:	00171793          	slli	a5,a4,0x1
    80003188:	00e787b3          	add	a5,a5,a4
    8000318c:	00379793          	slli	a5,a5,0x3
    80003190:	00f78793          	addi	a5,a5,15
    80003194:	ff07f793          	andi	a5,a5,-16
    80003198:	40f10133          	sub	sp,sp,a5
    8000319c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800031a0:	00191613          	slli	a2,s2,0x1
    800031a4:	012607b3          	add	a5,a2,s2
    800031a8:	00379793          	slli	a5,a5,0x3
    800031ac:	00f987b3          	add	a5,s3,a5
    800031b0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800031b4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800031b8:	00008717          	auipc	a4,0x8
    800031bc:	6f073703          	ld	a4,1776(a4) # 8000b8a8 <_ZL10waitForAll>
    800031c0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800031c4:	00078613          	mv	a2,a5
    800031c8:	00000597          	auipc	a1,0x0
    800031cc:	d7458593          	addi	a1,a1,-652 # 80002f3c <_ZL8consumerPv>
    800031d0:	f9840513          	addi	a0,s0,-104
    800031d4:	ffffe097          	auipc	ra,0xffffe
    800031d8:	124080e7          	jalr	292(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031dc:	00000493          	li	s1,0
    800031e0:	0280006f          	j	80003208 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800031e4:	00000597          	auipc	a1,0x0
    800031e8:	c1458593          	addi	a1,a1,-1004 # 80002df8 <_ZL16producerKeyboardPv>
                      data + i);
    800031ec:	00179613          	slli	a2,a5,0x1
    800031f0:	00f60633          	add	a2,a2,a5
    800031f4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800031f8:	00c98633          	add	a2,s3,a2
    800031fc:	ffffe097          	auipc	ra,0xffffe
    80003200:	0fc080e7          	jalr	252(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003204:	0014849b          	addiw	s1,s1,1
    80003208:	0524d263          	bge	s1,s2,8000324c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000320c:	00149793          	slli	a5,s1,0x1
    80003210:	009787b3          	add	a5,a5,s1
    80003214:	00379793          	slli	a5,a5,0x3
    80003218:	00f987b3          	add	a5,s3,a5
    8000321c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003220:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003224:	00008717          	auipc	a4,0x8
    80003228:	68473703          	ld	a4,1668(a4) # 8000b8a8 <_ZL10waitForAll>
    8000322c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003230:	00048793          	mv	a5,s1
    80003234:	00349513          	slli	a0,s1,0x3
    80003238:	00aa8533          	add	a0,s5,a0
    8000323c:	fa9054e3          	blez	s1,800031e4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003240:	00000597          	auipc	a1,0x0
    80003244:	c6858593          	addi	a1,a1,-920 # 80002ea8 <_ZL8producerPv>
    80003248:	fa5ff06f          	j	800031ec <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000324c:	ffffe097          	auipc	ra,0xffffe
    80003250:	180080e7          	jalr	384(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003254:	00000493          	li	s1,0
    80003258:	00994e63          	blt	s2,s1,80003274 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000325c:	00008517          	auipc	a0,0x8
    80003260:	64c53503          	ld	a0,1612(a0) # 8000b8a8 <_ZL10waitForAll>
    80003264:	ffffe097          	auipc	ra,0xffffe
    80003268:	1dc080e7          	jalr	476(ra) # 80001440 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    8000326c:	0014849b          	addiw	s1,s1,1
    80003270:	fe9ff06f          	j	80003258 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003274:	00008517          	auipc	a0,0x8
    80003278:	63453503          	ld	a0,1588(a0) # 8000b8a8 <_ZL10waitForAll>
    8000327c:	ffffe097          	auipc	ra,0xffffe
    80003280:	1a8080e7          	jalr	424(ra) # 80001424 <_Z9sem_closeP3Sem>
    delete buffer;
    80003284:	000a0e63          	beqz	s4,800032a0 <_Z22producerConsumer_C_APIv+0x284>
    80003288:	000a0513          	mv	a0,s4
    8000328c:	00003097          	auipc	ra,0x3
    80003290:	0d8080e7          	jalr	216(ra) # 80006364 <_ZN6BufferD1Ev>
    80003294:	000a0513          	mv	a0,s4
    80003298:	fffff097          	auipc	ra,0xfffff
    8000329c:	e08080e7          	jalr	-504(ra) # 800020a0 <_ZdlPv>
    800032a0:	000b0113          	mv	sp,s6

}
    800032a4:	f9040113          	addi	sp,s0,-112
    800032a8:	06813083          	ld	ra,104(sp)
    800032ac:	06013403          	ld	s0,96(sp)
    800032b0:	05813483          	ld	s1,88(sp)
    800032b4:	05013903          	ld	s2,80(sp)
    800032b8:	04813983          	ld	s3,72(sp)
    800032bc:	04013a03          	ld	s4,64(sp)
    800032c0:	03813a83          	ld	s5,56(sp)
    800032c4:	03013b03          	ld	s6,48(sp)
    800032c8:	07010113          	addi	sp,sp,112
    800032cc:	00008067          	ret
    800032d0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800032d4:	000a0513          	mv	a0,s4
    800032d8:	fffff097          	auipc	ra,0xfffff
    800032dc:	dc8080e7          	jalr	-568(ra) # 800020a0 <_ZdlPv>
    800032e0:	00048513          	mv	a0,s1
    800032e4:	00009097          	auipc	ra,0x9
    800032e8:	6d4080e7          	jalr	1748(ra) # 8000c9b8 <_Unwind_Resume>

00000000800032ec <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800032ec:	fe010113          	addi	sp,sp,-32
    800032f0:	00113c23          	sd	ra,24(sp)
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	01213023          	sd	s2,0(sp)
    80003300:	02010413          	addi	s0,sp,32
    80003304:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003308:	00100793          	li	a5,1
    8000330c:	02a7f863          	bgeu	a5,a0,8000333c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003310:	00a00793          	li	a5,10
    80003314:	02f577b3          	remu	a5,a0,a5
    80003318:	02078e63          	beqz	a5,80003354 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000331c:	fff48513          	addi	a0,s1,-1
    80003320:	00000097          	auipc	ra,0x0
    80003324:	fcc080e7          	jalr	-52(ra) # 800032ec <_ZL9fibonaccim>
    80003328:	00050913          	mv	s2,a0
    8000332c:	ffe48513          	addi	a0,s1,-2
    80003330:	00000097          	auipc	ra,0x0
    80003334:	fbc080e7          	jalr	-68(ra) # 800032ec <_ZL9fibonaccim>
    80003338:	00a90533          	add	a0,s2,a0
}
    8000333c:	01813083          	ld	ra,24(sp)
    80003340:	01013403          	ld	s0,16(sp)
    80003344:	00813483          	ld	s1,8(sp)
    80003348:	00013903          	ld	s2,0(sp)
    8000334c:	02010113          	addi	sp,sp,32
    80003350:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003354:	ffffe097          	auipc	ra,0xffffe
    80003358:	078080e7          	jalr	120(ra) # 800013cc <_Z15thread_dispatchv>
    8000335c:	fc1ff06f          	j	8000331c <_ZL9fibonaccim+0x30>

0000000080003360 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003360:	fe010113          	addi	sp,sp,-32
    80003364:	00113c23          	sd	ra,24(sp)
    80003368:	00813823          	sd	s0,16(sp)
    8000336c:	00913423          	sd	s1,8(sp)
    80003370:	01213023          	sd	s2,0(sp)
    80003374:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003378:	00000913          	li	s2,0
    8000337c:	0380006f          	j	800033b4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003380:	ffffe097          	auipc	ra,0xffffe
    80003384:	04c080e7          	jalr	76(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003388:	00148493          	addi	s1,s1,1
    8000338c:	000027b7          	lui	a5,0x2
    80003390:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003394:	0097ee63          	bltu	a5,s1,800033b0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003398:	00000713          	li	a4,0
    8000339c:	000077b7          	lui	a5,0x7
    800033a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800033a4:	fce7eee3          	bltu	a5,a4,80003380 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800033a8:	00170713          	addi	a4,a4,1
    800033ac:	ff1ff06f          	j	8000339c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800033b0:	00190913          	addi	s2,s2,1
    800033b4:	00900793          	li	a5,9
    800033b8:	0527e063          	bltu	a5,s2,800033f8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800033bc:	00006517          	auipc	a0,0x6
    800033c0:	d9c50513          	addi	a0,a0,-612 # 80009158 <CONSOLE_STATUS+0x148>
    800033c4:	00002097          	auipc	ra,0x2
    800033c8:	eac080e7          	jalr	-340(ra) # 80005270 <_Z11printStringPKc>
    800033cc:	00000613          	li	a2,0
    800033d0:	00a00593          	li	a1,10
    800033d4:	0009051b          	sext.w	a0,s2
    800033d8:	00002097          	auipc	ra,0x2
    800033dc:	048080e7          	jalr	72(ra) # 80005420 <_Z8printIntiii>
    800033e0:	00006517          	auipc	a0,0x6
    800033e4:	cc850513          	addi	a0,a0,-824 # 800090a8 <CONSOLE_STATUS+0x98>
    800033e8:	00002097          	auipc	ra,0x2
    800033ec:	e88080e7          	jalr	-376(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800033f0:	00000493          	li	s1,0
    800033f4:	f99ff06f          	j	8000338c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800033f8:	00006517          	auipc	a0,0x6
    800033fc:	d6850513          	addi	a0,a0,-664 # 80009160 <CONSOLE_STATUS+0x150>
    80003400:	00002097          	auipc	ra,0x2
    80003404:	e70080e7          	jalr	-400(ra) # 80005270 <_Z11printStringPKc>
    finishedA = true;
    80003408:	00100793          	li	a5,1
    8000340c:	00008717          	auipc	a4,0x8
    80003410:	4af70223          	sb	a5,1188(a4) # 8000b8b0 <_ZL9finishedA>
}
    80003414:	01813083          	ld	ra,24(sp)
    80003418:	01013403          	ld	s0,16(sp)
    8000341c:	00813483          	ld	s1,8(sp)
    80003420:	00013903          	ld	s2,0(sp)
    80003424:	02010113          	addi	sp,sp,32
    80003428:	00008067          	ret

000000008000342c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000342c:	fe010113          	addi	sp,sp,-32
    80003430:	00113c23          	sd	ra,24(sp)
    80003434:	00813823          	sd	s0,16(sp)
    80003438:	00913423          	sd	s1,8(sp)
    8000343c:	01213023          	sd	s2,0(sp)
    80003440:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003444:	00000913          	li	s2,0
    80003448:	0380006f          	j	80003480 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000344c:	ffffe097          	auipc	ra,0xffffe
    80003450:	f80080e7          	jalr	-128(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003454:	00148493          	addi	s1,s1,1
    80003458:	000027b7          	lui	a5,0x2
    8000345c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003460:	0097ee63          	bltu	a5,s1,8000347c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003464:	00000713          	li	a4,0
    80003468:	000077b7          	lui	a5,0x7
    8000346c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003470:	fce7eee3          	bltu	a5,a4,8000344c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003474:	00170713          	addi	a4,a4,1
    80003478:	ff1ff06f          	j	80003468 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000347c:	00190913          	addi	s2,s2,1
    80003480:	00f00793          	li	a5,15
    80003484:	0527e063          	bltu	a5,s2,800034c4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003488:	00006517          	auipc	a0,0x6
    8000348c:	ce850513          	addi	a0,a0,-792 # 80009170 <CONSOLE_STATUS+0x160>
    80003490:	00002097          	auipc	ra,0x2
    80003494:	de0080e7          	jalr	-544(ra) # 80005270 <_Z11printStringPKc>
    80003498:	00000613          	li	a2,0
    8000349c:	00a00593          	li	a1,10
    800034a0:	0009051b          	sext.w	a0,s2
    800034a4:	00002097          	auipc	ra,0x2
    800034a8:	f7c080e7          	jalr	-132(ra) # 80005420 <_Z8printIntiii>
    800034ac:	00006517          	auipc	a0,0x6
    800034b0:	bfc50513          	addi	a0,a0,-1028 # 800090a8 <CONSOLE_STATUS+0x98>
    800034b4:	00002097          	auipc	ra,0x2
    800034b8:	dbc080e7          	jalr	-580(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800034bc:	00000493          	li	s1,0
    800034c0:	f99ff06f          	j	80003458 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800034c4:	00006517          	auipc	a0,0x6
    800034c8:	cb450513          	addi	a0,a0,-844 # 80009178 <CONSOLE_STATUS+0x168>
    800034cc:	00002097          	auipc	ra,0x2
    800034d0:	da4080e7          	jalr	-604(ra) # 80005270 <_Z11printStringPKc>
    finishedB = true;
    800034d4:	00100793          	li	a5,1
    800034d8:	00008717          	auipc	a4,0x8
    800034dc:	3cf70ca3          	sb	a5,985(a4) # 8000b8b1 <_ZL9finishedB>
    thread_dispatch();
    800034e0:	ffffe097          	auipc	ra,0xffffe
    800034e4:	eec080e7          	jalr	-276(ra) # 800013cc <_Z15thread_dispatchv>
}
    800034e8:	01813083          	ld	ra,24(sp)
    800034ec:	01013403          	ld	s0,16(sp)
    800034f0:	00813483          	ld	s1,8(sp)
    800034f4:	00013903          	ld	s2,0(sp)
    800034f8:	02010113          	addi	sp,sp,32
    800034fc:	00008067          	ret

0000000080003500 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003500:	fe010113          	addi	sp,sp,-32
    80003504:	00113c23          	sd	ra,24(sp)
    80003508:	00813823          	sd	s0,16(sp)
    8000350c:	00913423          	sd	s1,8(sp)
    80003510:	01213023          	sd	s2,0(sp)
    80003514:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003518:	00000493          	li	s1,0
    8000351c:	0400006f          	j	8000355c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003520:	00006517          	auipc	a0,0x6
    80003524:	c6850513          	addi	a0,a0,-920 # 80009188 <CONSOLE_STATUS+0x178>
    80003528:	00002097          	auipc	ra,0x2
    8000352c:	d48080e7          	jalr	-696(ra) # 80005270 <_Z11printStringPKc>
    80003530:	00000613          	li	a2,0
    80003534:	00a00593          	li	a1,10
    80003538:	00048513          	mv	a0,s1
    8000353c:	00002097          	auipc	ra,0x2
    80003540:	ee4080e7          	jalr	-284(ra) # 80005420 <_Z8printIntiii>
    80003544:	00006517          	auipc	a0,0x6
    80003548:	b6450513          	addi	a0,a0,-1180 # 800090a8 <CONSOLE_STATUS+0x98>
    8000354c:	00002097          	auipc	ra,0x2
    80003550:	d24080e7          	jalr	-732(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003554:	0014849b          	addiw	s1,s1,1
    80003558:	0ff4f493          	andi	s1,s1,255
    8000355c:	00200793          	li	a5,2
    80003560:	fc97f0e3          	bgeu	a5,s1,80003520 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003564:	00006517          	auipc	a0,0x6
    80003568:	c2c50513          	addi	a0,a0,-980 # 80009190 <CONSOLE_STATUS+0x180>
    8000356c:	00002097          	auipc	ra,0x2
    80003570:	d04080e7          	jalr	-764(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003574:	00700313          	li	t1,7
    thread_dispatch();
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	e54080e7          	jalr	-428(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003580:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003584:	00006517          	auipc	a0,0x6
    80003588:	c1c50513          	addi	a0,a0,-996 # 800091a0 <CONSOLE_STATUS+0x190>
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	ce4080e7          	jalr	-796(ra) # 80005270 <_Z11printStringPKc>
    80003594:	00000613          	li	a2,0
    80003598:	00a00593          	li	a1,10
    8000359c:	0009051b          	sext.w	a0,s2
    800035a0:	00002097          	auipc	ra,0x2
    800035a4:	e80080e7          	jalr	-384(ra) # 80005420 <_Z8printIntiii>
    800035a8:	00006517          	auipc	a0,0x6
    800035ac:	b0050513          	addi	a0,a0,-1280 # 800090a8 <CONSOLE_STATUS+0x98>
    800035b0:	00002097          	auipc	ra,0x2
    800035b4:	cc0080e7          	jalr	-832(ra) # 80005270 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800035b8:	00c00513          	li	a0,12
    800035bc:	00000097          	auipc	ra,0x0
    800035c0:	d30080e7          	jalr	-720(ra) # 800032ec <_ZL9fibonaccim>
    800035c4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800035c8:	00006517          	auipc	a0,0x6
    800035cc:	be050513          	addi	a0,a0,-1056 # 800091a8 <CONSOLE_STATUS+0x198>
    800035d0:	00002097          	auipc	ra,0x2
    800035d4:	ca0080e7          	jalr	-864(ra) # 80005270 <_Z11printStringPKc>
    800035d8:	00000613          	li	a2,0
    800035dc:	00a00593          	li	a1,10
    800035e0:	0009051b          	sext.w	a0,s2
    800035e4:	00002097          	auipc	ra,0x2
    800035e8:	e3c080e7          	jalr	-452(ra) # 80005420 <_Z8printIntiii>
    800035ec:	00006517          	auipc	a0,0x6
    800035f0:	abc50513          	addi	a0,a0,-1348 # 800090a8 <CONSOLE_STATUS+0x98>
    800035f4:	00002097          	auipc	ra,0x2
    800035f8:	c7c080e7          	jalr	-900(ra) # 80005270 <_Z11printStringPKc>
    800035fc:	0400006f          	j	8000363c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003600:	00006517          	auipc	a0,0x6
    80003604:	b8850513          	addi	a0,a0,-1144 # 80009188 <CONSOLE_STATUS+0x178>
    80003608:	00002097          	auipc	ra,0x2
    8000360c:	c68080e7          	jalr	-920(ra) # 80005270 <_Z11printStringPKc>
    80003610:	00000613          	li	a2,0
    80003614:	00a00593          	li	a1,10
    80003618:	00048513          	mv	a0,s1
    8000361c:	00002097          	auipc	ra,0x2
    80003620:	e04080e7          	jalr	-508(ra) # 80005420 <_Z8printIntiii>
    80003624:	00006517          	auipc	a0,0x6
    80003628:	a8450513          	addi	a0,a0,-1404 # 800090a8 <CONSOLE_STATUS+0x98>
    8000362c:	00002097          	auipc	ra,0x2
    80003630:	c44080e7          	jalr	-956(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003634:	0014849b          	addiw	s1,s1,1
    80003638:	0ff4f493          	andi	s1,s1,255
    8000363c:	00500793          	li	a5,5
    80003640:	fc97f0e3          	bgeu	a5,s1,80003600 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003644:	00006517          	auipc	a0,0x6
    80003648:	b1c50513          	addi	a0,a0,-1252 # 80009160 <CONSOLE_STATUS+0x150>
    8000364c:	00002097          	auipc	ra,0x2
    80003650:	c24080e7          	jalr	-988(ra) # 80005270 <_Z11printStringPKc>
    finishedC = true;
    80003654:	00100793          	li	a5,1
    80003658:	00008717          	auipc	a4,0x8
    8000365c:	24f70d23          	sb	a5,602(a4) # 8000b8b2 <_ZL9finishedC>
    thread_dispatch();
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	d6c080e7          	jalr	-660(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003668:	01813083          	ld	ra,24(sp)
    8000366c:	01013403          	ld	s0,16(sp)
    80003670:	00813483          	ld	s1,8(sp)
    80003674:	00013903          	ld	s2,0(sp)
    80003678:	02010113          	addi	sp,sp,32
    8000367c:	00008067          	ret

0000000080003680 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003680:	fe010113          	addi	sp,sp,-32
    80003684:	00113c23          	sd	ra,24(sp)
    80003688:	00813823          	sd	s0,16(sp)
    8000368c:	00913423          	sd	s1,8(sp)
    80003690:	01213023          	sd	s2,0(sp)
    80003694:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003698:	00a00493          	li	s1,10
    8000369c:	0400006f          	j	800036dc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800036a0:	00006517          	auipc	a0,0x6
    800036a4:	b1850513          	addi	a0,a0,-1256 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800036a8:	00002097          	auipc	ra,0x2
    800036ac:	bc8080e7          	jalr	-1080(ra) # 80005270 <_Z11printStringPKc>
    800036b0:	00000613          	li	a2,0
    800036b4:	00a00593          	li	a1,10
    800036b8:	00048513          	mv	a0,s1
    800036bc:	00002097          	auipc	ra,0x2
    800036c0:	d64080e7          	jalr	-668(ra) # 80005420 <_Z8printIntiii>
    800036c4:	00006517          	auipc	a0,0x6
    800036c8:	9e450513          	addi	a0,a0,-1564 # 800090a8 <CONSOLE_STATUS+0x98>
    800036cc:	00002097          	auipc	ra,0x2
    800036d0:	ba4080e7          	jalr	-1116(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800036d4:	0014849b          	addiw	s1,s1,1
    800036d8:	0ff4f493          	andi	s1,s1,255
    800036dc:	00c00793          	li	a5,12
    800036e0:	fc97f0e3          	bgeu	a5,s1,800036a0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800036e4:	00006517          	auipc	a0,0x6
    800036e8:	adc50513          	addi	a0,a0,-1316 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800036ec:	00002097          	auipc	ra,0x2
    800036f0:	b84080e7          	jalr	-1148(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800036f4:	00500313          	li	t1,5
    thread_dispatch();
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	cd4080e7          	jalr	-812(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003700:	01000513          	li	a0,16
    80003704:	00000097          	auipc	ra,0x0
    80003708:	be8080e7          	jalr	-1048(ra) # 800032ec <_ZL9fibonaccim>
    8000370c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003710:	00006517          	auipc	a0,0x6
    80003714:	ac050513          	addi	a0,a0,-1344 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	b58080e7          	jalr	-1192(ra) # 80005270 <_Z11printStringPKc>
    80003720:	00000613          	li	a2,0
    80003724:	00a00593          	li	a1,10
    80003728:	0009051b          	sext.w	a0,s2
    8000372c:	00002097          	auipc	ra,0x2
    80003730:	cf4080e7          	jalr	-780(ra) # 80005420 <_Z8printIntiii>
    80003734:	00006517          	auipc	a0,0x6
    80003738:	97450513          	addi	a0,a0,-1676 # 800090a8 <CONSOLE_STATUS+0x98>
    8000373c:	00002097          	auipc	ra,0x2
    80003740:	b34080e7          	jalr	-1228(ra) # 80005270 <_Z11printStringPKc>
    80003744:	0400006f          	j	80003784 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003748:	00006517          	auipc	a0,0x6
    8000374c:	a7050513          	addi	a0,a0,-1424 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003750:	00002097          	auipc	ra,0x2
    80003754:	b20080e7          	jalr	-1248(ra) # 80005270 <_Z11printStringPKc>
    80003758:	00000613          	li	a2,0
    8000375c:	00a00593          	li	a1,10
    80003760:	00048513          	mv	a0,s1
    80003764:	00002097          	auipc	ra,0x2
    80003768:	cbc080e7          	jalr	-836(ra) # 80005420 <_Z8printIntiii>
    8000376c:	00006517          	auipc	a0,0x6
    80003770:	93c50513          	addi	a0,a0,-1732 # 800090a8 <CONSOLE_STATUS+0x98>
    80003774:	00002097          	auipc	ra,0x2
    80003778:	afc080e7          	jalr	-1284(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000377c:	0014849b          	addiw	s1,s1,1
    80003780:	0ff4f493          	andi	s1,s1,255
    80003784:	00f00793          	li	a5,15
    80003788:	fc97f0e3          	bgeu	a5,s1,80003748 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000378c:	00006517          	auipc	a0,0x6
    80003790:	a5450513          	addi	a0,a0,-1452 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003794:	00002097          	auipc	ra,0x2
    80003798:	adc080e7          	jalr	-1316(ra) # 80005270 <_Z11printStringPKc>
    finishedD = true;
    8000379c:	00100793          	li	a5,1
    800037a0:	00008717          	auipc	a4,0x8
    800037a4:	10f709a3          	sb	a5,275(a4) # 8000b8b3 <_ZL9finishedD>
    thread_dispatch();
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	c24080e7          	jalr	-988(ra) # 800013cc <_Z15thread_dispatchv>
}
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00813483          	ld	s1,8(sp)
    800037bc:	00013903          	ld	s2,0(sp)
    800037c0:	02010113          	addi	sp,sp,32
    800037c4:	00008067          	ret

00000000800037c8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800037c8:	fc010113          	addi	sp,sp,-64
    800037cc:	02113c23          	sd	ra,56(sp)
    800037d0:	02813823          	sd	s0,48(sp)
    800037d4:	02913423          	sd	s1,40(sp)
    800037d8:	03213023          	sd	s2,32(sp)
    800037dc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800037e0:	02000513          	li	a0,32
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	894080e7          	jalr	-1900(ra) # 80002078 <_Znwm>
    800037ec:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800037f0:	fffff097          	auipc	ra,0xfffff
    800037f4:	a18080e7          	jalr	-1512(ra) # 80002208 <_ZN6ThreadC1Ev>
    800037f8:	00008797          	auipc	a5,0x8
    800037fc:	e3878793          	addi	a5,a5,-456 # 8000b630 <_ZTV7WorkerA+0x10>
    80003800:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003804:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003808:	00006517          	auipc	a0,0x6
    8000380c:	9e850513          	addi	a0,a0,-1560 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003810:	00002097          	auipc	ra,0x2
    80003814:	a60080e7          	jalr	-1440(ra) # 80005270 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003818:	02000513          	li	a0,32
    8000381c:	fffff097          	auipc	ra,0xfffff
    80003820:	85c080e7          	jalr	-1956(ra) # 80002078 <_Znwm>
    80003824:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	9e0080e7          	jalr	-1568(ra) # 80002208 <_ZN6ThreadC1Ev>
    80003830:	00008797          	auipc	a5,0x8
    80003834:	e2878793          	addi	a5,a5,-472 # 8000b658 <_ZTV7WorkerB+0x10>
    80003838:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000383c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003840:	00006517          	auipc	a0,0x6
    80003844:	9c850513          	addi	a0,a0,-1592 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003848:	00002097          	auipc	ra,0x2
    8000384c:	a28080e7          	jalr	-1496(ra) # 80005270 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003850:	02000513          	li	a0,32
    80003854:	fffff097          	auipc	ra,0xfffff
    80003858:	824080e7          	jalr	-2012(ra) # 80002078 <_Znwm>
    8000385c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003860:	fffff097          	auipc	ra,0xfffff
    80003864:	9a8080e7          	jalr	-1624(ra) # 80002208 <_ZN6ThreadC1Ev>
    80003868:	00008797          	auipc	a5,0x8
    8000386c:	e1878793          	addi	a5,a5,-488 # 8000b680 <_ZTV7WorkerC+0x10>
    80003870:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003874:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003878:	00006517          	auipc	a0,0x6
    8000387c:	9a850513          	addi	a0,a0,-1624 # 80009220 <CONSOLE_STATUS+0x210>
    80003880:	00002097          	auipc	ra,0x2
    80003884:	9f0080e7          	jalr	-1552(ra) # 80005270 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003888:	02000513          	li	a0,32
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	7ec080e7          	jalr	2028(ra) # 80002078 <_Znwm>
    80003894:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003898:	fffff097          	auipc	ra,0xfffff
    8000389c:	970080e7          	jalr	-1680(ra) # 80002208 <_ZN6ThreadC1Ev>
    800038a0:	00008797          	auipc	a5,0x8
    800038a4:	e0878793          	addi	a5,a5,-504 # 8000b6a8 <_ZTV7WorkerD+0x10>
    800038a8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800038ac:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800038b0:	00006517          	auipc	a0,0x6
    800038b4:	98850513          	addi	a0,a0,-1656 # 80009238 <CONSOLE_STATUS+0x228>
    800038b8:	00002097          	auipc	ra,0x2
    800038bc:	9b8080e7          	jalr	-1608(ra) # 80005270 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800038c0:	00000493          	li	s1,0
    800038c4:	00300793          	li	a5,3
    800038c8:	0297c663          	blt	a5,s1,800038f4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800038cc:	00349793          	slli	a5,s1,0x3
    800038d0:	fe040713          	addi	a4,s0,-32
    800038d4:	00f707b3          	add	a5,a4,a5
    800038d8:	fe07b503          	ld	a0,-32(a5)
    800038dc:	fffff097          	auipc	ra,0xfffff
    800038e0:	8a8080e7          	jalr	-1880(ra) # 80002184 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800038e4:	0014849b          	addiw	s1,s1,1
    800038e8:	fddff06f          	j	800038c4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800038ec:	fffff097          	auipc	ra,0xfffff
    800038f0:	8c8080e7          	jalr	-1848(ra) # 800021b4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038f4:	00008797          	auipc	a5,0x8
    800038f8:	fbc7c783          	lbu	a5,-68(a5) # 8000b8b0 <_ZL9finishedA>
    800038fc:	fe0788e3          	beqz	a5,800038ec <_Z20Threads_CPP_API_testv+0x124>
    80003900:	00008797          	auipc	a5,0x8
    80003904:	fb17c783          	lbu	a5,-79(a5) # 8000b8b1 <_ZL9finishedB>
    80003908:	fe0782e3          	beqz	a5,800038ec <_Z20Threads_CPP_API_testv+0x124>
    8000390c:	00008797          	auipc	a5,0x8
    80003910:	fa67c783          	lbu	a5,-90(a5) # 8000b8b2 <_ZL9finishedC>
    80003914:	fc078ce3          	beqz	a5,800038ec <_Z20Threads_CPP_API_testv+0x124>
    80003918:	00008797          	auipc	a5,0x8
    8000391c:	f9b7c783          	lbu	a5,-101(a5) # 8000b8b3 <_ZL9finishedD>
    80003920:	fc0786e3          	beqz	a5,800038ec <_Z20Threads_CPP_API_testv+0x124>
    80003924:	fc040493          	addi	s1,s0,-64
    80003928:	0080006f          	j	80003930 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000392c:	00848493          	addi	s1,s1,8
    80003930:	fe040793          	addi	a5,s0,-32
    80003934:	08f48663          	beq	s1,a5,800039c0 <_Z20Threads_CPP_API_testv+0x1f8>
    80003938:	0004b503          	ld	a0,0(s1)
    8000393c:	fe0508e3          	beqz	a0,8000392c <_Z20Threads_CPP_API_testv+0x164>
    80003940:	00053783          	ld	a5,0(a0)
    80003944:	0087b783          	ld	a5,8(a5)
    80003948:	000780e7          	jalr	a5
    8000394c:	fe1ff06f          	j	8000392c <_Z20Threads_CPP_API_testv+0x164>
    80003950:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003954:	00048513          	mv	a0,s1
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	748080e7          	jalr	1864(ra) # 800020a0 <_ZdlPv>
    80003960:	00090513          	mv	a0,s2
    80003964:	00009097          	auipc	ra,0x9
    80003968:	054080e7          	jalr	84(ra) # 8000c9b8 <_Unwind_Resume>
    8000396c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003970:	00048513          	mv	a0,s1
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	72c080e7          	jalr	1836(ra) # 800020a0 <_ZdlPv>
    8000397c:	00090513          	mv	a0,s2
    80003980:	00009097          	auipc	ra,0x9
    80003984:	038080e7          	jalr	56(ra) # 8000c9b8 <_Unwind_Resume>
    80003988:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000398c:	00048513          	mv	a0,s1
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	710080e7          	jalr	1808(ra) # 800020a0 <_ZdlPv>
    80003998:	00090513          	mv	a0,s2
    8000399c:	00009097          	auipc	ra,0x9
    800039a0:	01c080e7          	jalr	28(ra) # 8000c9b8 <_Unwind_Resume>
    800039a4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800039a8:	00048513          	mv	a0,s1
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	6f4080e7          	jalr	1780(ra) # 800020a0 <_ZdlPv>
    800039b4:	00090513          	mv	a0,s2
    800039b8:	00009097          	auipc	ra,0x9
    800039bc:	000080e7          	jalr	ra # 8000c9b8 <_Unwind_Resume>
}
    800039c0:	03813083          	ld	ra,56(sp)
    800039c4:	03013403          	ld	s0,48(sp)
    800039c8:	02813483          	ld	s1,40(sp)
    800039cc:	02013903          	ld	s2,32(sp)
    800039d0:	04010113          	addi	sp,sp,64
    800039d4:	00008067          	ret

00000000800039d8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800039d8:	ff010113          	addi	sp,sp,-16
    800039dc:	00113423          	sd	ra,8(sp)
    800039e0:	00813023          	sd	s0,0(sp)
    800039e4:	01010413          	addi	s0,sp,16
    800039e8:	00008797          	auipc	a5,0x8
    800039ec:	c4878793          	addi	a5,a5,-952 # 8000b630 <_ZTV7WorkerA+0x10>
    800039f0:	00f53023          	sd	a5,0(a0)
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	5ec080e7          	jalr	1516(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    800039fc:	00813083          	ld	ra,8(sp)
    80003a00:	00013403          	ld	s0,0(sp)
    80003a04:	01010113          	addi	sp,sp,16
    80003a08:	00008067          	ret

0000000080003a0c <_ZN7WorkerAD0Ev>:
    80003a0c:	fe010113          	addi	sp,sp,-32
    80003a10:	00113c23          	sd	ra,24(sp)
    80003a14:	00813823          	sd	s0,16(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	02010413          	addi	s0,sp,32
    80003a20:	00050493          	mv	s1,a0
    80003a24:	00008797          	auipc	a5,0x8
    80003a28:	c0c78793          	addi	a5,a5,-1012 # 8000b630 <_ZTV7WorkerA+0x10>
    80003a2c:	00f53023          	sd	a5,0(a0)
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	5b0080e7          	jalr	1456(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80003a38:	00048513          	mv	a0,s1
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	664080e7          	jalr	1636(ra) # 800020a0 <_ZdlPv>
    80003a44:	01813083          	ld	ra,24(sp)
    80003a48:	01013403          	ld	s0,16(sp)
    80003a4c:	00813483          	ld	s1,8(sp)
    80003a50:	02010113          	addi	sp,sp,32
    80003a54:	00008067          	ret

0000000080003a58 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00113423          	sd	ra,8(sp)
    80003a60:	00813023          	sd	s0,0(sp)
    80003a64:	01010413          	addi	s0,sp,16
    80003a68:	00008797          	auipc	a5,0x8
    80003a6c:	bf078793          	addi	a5,a5,-1040 # 8000b658 <_ZTV7WorkerB+0x10>
    80003a70:	00f53023          	sd	a5,0(a0)
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	56c080e7          	jalr	1388(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80003a7c:	00813083          	ld	ra,8(sp)
    80003a80:	00013403          	ld	s0,0(sp)
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00008067          	ret

0000000080003a8c <_ZN7WorkerBD0Ev>:
    80003a8c:	fe010113          	addi	sp,sp,-32
    80003a90:	00113c23          	sd	ra,24(sp)
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	00050493          	mv	s1,a0
    80003aa4:	00008797          	auipc	a5,0x8
    80003aa8:	bb478793          	addi	a5,a5,-1100 # 8000b658 <_ZTV7WorkerB+0x10>
    80003aac:	00f53023          	sd	a5,0(a0)
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	530080e7          	jalr	1328(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80003ab8:	00048513          	mv	a0,s1
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	5e4080e7          	jalr	1508(ra) # 800020a0 <_ZdlPv>
    80003ac4:	01813083          	ld	ra,24(sp)
    80003ac8:	01013403          	ld	s0,16(sp)
    80003acc:	00813483          	ld	s1,8(sp)
    80003ad0:	02010113          	addi	sp,sp,32
    80003ad4:	00008067          	ret

0000000080003ad8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003ad8:	ff010113          	addi	sp,sp,-16
    80003adc:	00113423          	sd	ra,8(sp)
    80003ae0:	00813023          	sd	s0,0(sp)
    80003ae4:	01010413          	addi	s0,sp,16
    80003ae8:	00008797          	auipc	a5,0x8
    80003aec:	b9878793          	addi	a5,a5,-1128 # 8000b680 <_ZTV7WorkerC+0x10>
    80003af0:	00f53023          	sd	a5,0(a0)
    80003af4:	ffffe097          	auipc	ra,0xffffe
    80003af8:	4ec080e7          	jalr	1260(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80003afc:	00813083          	ld	ra,8(sp)
    80003b00:	00013403          	ld	s0,0(sp)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <_ZN7WorkerCD0Ev>:
    80003b0c:	fe010113          	addi	sp,sp,-32
    80003b10:	00113c23          	sd	ra,24(sp)
    80003b14:	00813823          	sd	s0,16(sp)
    80003b18:	00913423          	sd	s1,8(sp)
    80003b1c:	02010413          	addi	s0,sp,32
    80003b20:	00050493          	mv	s1,a0
    80003b24:	00008797          	auipc	a5,0x8
    80003b28:	b5c78793          	addi	a5,a5,-1188 # 8000b680 <_ZTV7WorkerC+0x10>
    80003b2c:	00f53023          	sd	a5,0(a0)
    80003b30:	ffffe097          	auipc	ra,0xffffe
    80003b34:	4b0080e7          	jalr	1200(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	564080e7          	jalr	1380(ra) # 800020a0 <_ZdlPv>
    80003b44:	01813083          	ld	ra,24(sp)
    80003b48:	01013403          	ld	s0,16(sp)
    80003b4c:	00813483          	ld	s1,8(sp)
    80003b50:	02010113          	addi	sp,sp,32
    80003b54:	00008067          	ret

0000000080003b58 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00113423          	sd	ra,8(sp)
    80003b60:	00813023          	sd	s0,0(sp)
    80003b64:	01010413          	addi	s0,sp,16
    80003b68:	00008797          	auipc	a5,0x8
    80003b6c:	b4078793          	addi	a5,a5,-1216 # 8000b6a8 <_ZTV7WorkerD+0x10>
    80003b70:	00f53023          	sd	a5,0(a0)
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	46c080e7          	jalr	1132(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80003b7c:	00813083          	ld	ra,8(sp)
    80003b80:	00013403          	ld	s0,0(sp)
    80003b84:	01010113          	addi	sp,sp,16
    80003b88:	00008067          	ret

0000000080003b8c <_ZN7WorkerDD0Ev>:
    80003b8c:	fe010113          	addi	sp,sp,-32
    80003b90:	00113c23          	sd	ra,24(sp)
    80003b94:	00813823          	sd	s0,16(sp)
    80003b98:	00913423          	sd	s1,8(sp)
    80003b9c:	02010413          	addi	s0,sp,32
    80003ba0:	00050493          	mv	s1,a0
    80003ba4:	00008797          	auipc	a5,0x8
    80003ba8:	b0478793          	addi	a5,a5,-1276 # 8000b6a8 <_ZTV7WorkerD+0x10>
    80003bac:	00f53023          	sd	a5,0(a0)
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	430080e7          	jalr	1072(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80003bb8:	00048513          	mv	a0,s1
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	4e4080e7          	jalr	1252(ra) # 800020a0 <_ZdlPv>
    80003bc4:	01813083          	ld	ra,24(sp)
    80003bc8:	01013403          	ld	s0,16(sp)
    80003bcc:	00813483          	ld	s1,8(sp)
    80003bd0:	02010113          	addi	sp,sp,32
    80003bd4:	00008067          	ret

0000000080003bd8 <_ZN7WorkerA3runEv>:
    void run() override {
    80003bd8:	ff010113          	addi	sp,sp,-16
    80003bdc:	00113423          	sd	ra,8(sp)
    80003be0:	00813023          	sd	s0,0(sp)
    80003be4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003be8:	00000593          	li	a1,0
    80003bec:	fffff097          	auipc	ra,0xfffff
    80003bf0:	774080e7          	jalr	1908(ra) # 80003360 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003bf4:	00813083          	ld	ra,8(sp)
    80003bf8:	00013403          	ld	s0,0(sp)
    80003bfc:	01010113          	addi	sp,sp,16
    80003c00:	00008067          	ret

0000000080003c04 <_ZN7WorkerB3runEv>:
    void run() override {
    80003c04:	ff010113          	addi	sp,sp,-16
    80003c08:	00113423          	sd	ra,8(sp)
    80003c0c:	00813023          	sd	s0,0(sp)
    80003c10:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003c14:	00000593          	li	a1,0
    80003c18:	00000097          	auipc	ra,0x0
    80003c1c:	814080e7          	jalr	-2028(ra) # 8000342c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003c20:	00813083          	ld	ra,8(sp)
    80003c24:	00013403          	ld	s0,0(sp)
    80003c28:	01010113          	addi	sp,sp,16
    80003c2c:	00008067          	ret

0000000080003c30 <_ZN7WorkerC3runEv>:
    void run() override {
    80003c30:	ff010113          	addi	sp,sp,-16
    80003c34:	00113423          	sd	ra,8(sp)
    80003c38:	00813023          	sd	s0,0(sp)
    80003c3c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003c40:	00000593          	li	a1,0
    80003c44:	00000097          	auipc	ra,0x0
    80003c48:	8bc080e7          	jalr	-1860(ra) # 80003500 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003c4c:	00813083          	ld	ra,8(sp)
    80003c50:	00013403          	ld	s0,0(sp)
    80003c54:	01010113          	addi	sp,sp,16
    80003c58:	00008067          	ret

0000000080003c5c <_ZN7WorkerD3runEv>:
    void run() override {
    80003c5c:	ff010113          	addi	sp,sp,-16
    80003c60:	00113423          	sd	ra,8(sp)
    80003c64:	00813023          	sd	s0,0(sp)
    80003c68:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003c6c:	00000593          	li	a1,0
    80003c70:	00000097          	auipc	ra,0x0
    80003c74:	a10080e7          	jalr	-1520(ra) # 80003680 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003c78:	00813083          	ld	ra,8(sp)
    80003c7c:	00013403          	ld	s0,0(sp)
    80003c80:	01010113          	addi	sp,sp,16
    80003c84:	00008067          	ret

0000000080003c88 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003c88:	f8010113          	addi	sp,sp,-128
    80003c8c:	06113c23          	sd	ra,120(sp)
    80003c90:	06813823          	sd	s0,112(sp)
    80003c94:	06913423          	sd	s1,104(sp)
    80003c98:	07213023          	sd	s2,96(sp)
    80003c9c:	05313c23          	sd	s3,88(sp)
    80003ca0:	05413823          	sd	s4,80(sp)
    80003ca4:	05513423          	sd	s5,72(sp)
    80003ca8:	05613023          	sd	s6,64(sp)
    80003cac:	03713c23          	sd	s7,56(sp)
    80003cb0:	03813823          	sd	s8,48(sp)
    80003cb4:	03913423          	sd	s9,40(sp)
    80003cb8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003cbc:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003cc0:	00005517          	auipc	a0,0x5
    80003cc4:	3b050513          	addi	a0,a0,944 # 80009070 <CONSOLE_STATUS+0x60>
    80003cc8:	00001097          	auipc	ra,0x1
    80003ccc:	5a8080e7          	jalr	1448(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    80003cd0:	01e00593          	li	a1,30
    80003cd4:	f8040493          	addi	s1,s0,-128
    80003cd8:	00048513          	mv	a0,s1
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	61c080e7          	jalr	1564(ra) # 800052f8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003ce4:	00048513          	mv	a0,s1
    80003ce8:	00001097          	auipc	ra,0x1
    80003cec:	6e8080e7          	jalr	1768(ra) # 800053d0 <_Z11stringToIntPKc>
    80003cf0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003cf4:	00005517          	auipc	a0,0x5
    80003cf8:	39c50513          	addi	a0,a0,924 # 80009090 <CONSOLE_STATUS+0x80>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	574080e7          	jalr	1396(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    80003d04:	01e00593          	li	a1,30
    80003d08:	00048513          	mv	a0,s1
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	5ec080e7          	jalr	1516(ra) # 800052f8 <_Z9getStringPci>
    n = stringToInt(input);
    80003d14:	00048513          	mv	a0,s1
    80003d18:	00001097          	auipc	ra,0x1
    80003d1c:	6b8080e7          	jalr	1720(ra) # 800053d0 <_Z11stringToIntPKc>
    80003d20:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003d24:	00005517          	auipc	a0,0x5
    80003d28:	38c50513          	addi	a0,a0,908 # 800090b0 <CONSOLE_STATUS+0xa0>
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	544080e7          	jalr	1348(ra) # 80005270 <_Z11printStringPKc>
    printInt(threadNum);
    80003d34:	00000613          	li	a2,0
    80003d38:	00a00593          	li	a1,10
    80003d3c:	00098513          	mv	a0,s3
    80003d40:	00001097          	auipc	ra,0x1
    80003d44:	6e0080e7          	jalr	1760(ra) # 80005420 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003d48:	00005517          	auipc	a0,0x5
    80003d4c:	38050513          	addi	a0,a0,896 # 800090c8 <CONSOLE_STATUS+0xb8>
    80003d50:	00001097          	auipc	ra,0x1
    80003d54:	520080e7          	jalr	1312(ra) # 80005270 <_Z11printStringPKc>
    printInt(n);
    80003d58:	00000613          	li	a2,0
    80003d5c:	00a00593          	li	a1,10
    80003d60:	00048513          	mv	a0,s1
    80003d64:	00001097          	auipc	ra,0x1
    80003d68:	6bc080e7          	jalr	1724(ra) # 80005420 <_Z8printIntiii>
    printString(".\n");
    80003d6c:	00005517          	auipc	a0,0x5
    80003d70:	37450513          	addi	a0,a0,884 # 800090e0 <CONSOLE_STATUS+0xd0>
    80003d74:	00001097          	auipc	ra,0x1
    80003d78:	4fc080e7          	jalr	1276(ra) # 80005270 <_Z11printStringPKc>
    if (threadNum > n) {
    80003d7c:	0334c463          	blt	s1,s3,80003da4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003d80:	03305c63          	blez	s3,80003db8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003d84:	03800513          	li	a0,56
    80003d88:	ffffe097          	auipc	ra,0xffffe
    80003d8c:	2f0080e7          	jalr	752(ra) # 80002078 <_Znwm>
    80003d90:	00050a93          	mv	s5,a0
    80003d94:	00048593          	mv	a1,s1
    80003d98:	00001097          	auipc	ra,0x1
    80003d9c:	7a8080e7          	jalr	1960(ra) # 80005540 <_ZN9BufferCPPC1Ei>
    80003da0:	0300006f          	j	80003dd0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003da4:	00005517          	auipc	a0,0x5
    80003da8:	34450513          	addi	a0,a0,836 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	4c4080e7          	jalr	1220(ra) # 80005270 <_Z11printStringPKc>
        return;
    80003db4:	0140006f          	j	80003dc8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003db8:	00005517          	auipc	a0,0x5
    80003dbc:	37050513          	addi	a0,a0,880 # 80009128 <CONSOLE_STATUS+0x118>
    80003dc0:	00001097          	auipc	ra,0x1
    80003dc4:	4b0080e7          	jalr	1200(ra) # 80005270 <_Z11printStringPKc>
        return;
    80003dc8:	000c0113          	mv	sp,s8
    80003dcc:	2140006f          	j	80003fe0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003dd0:	01000513          	li	a0,16
    80003dd4:	ffffe097          	auipc	ra,0xffffe
    80003dd8:	2a4080e7          	jalr	676(ra) # 80002078 <_Znwm>
    80003ddc:	00050913          	mv	s2,a0
    80003de0:	00000593          	li	a1,0
    80003de4:	ffffe097          	auipc	ra,0xffffe
    80003de8:	44c080e7          	jalr	1100(ra) # 80002230 <_ZN9SemaphoreC1Ej>
    80003dec:	00008797          	auipc	a5,0x8
    80003df0:	ad27ba23          	sd	s2,-1324(a5) # 8000b8c0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003df4:	00399793          	slli	a5,s3,0x3
    80003df8:	00f78793          	addi	a5,a5,15
    80003dfc:	ff07f793          	andi	a5,a5,-16
    80003e00:	40f10133          	sub	sp,sp,a5
    80003e04:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003e08:	0019871b          	addiw	a4,s3,1
    80003e0c:	00171793          	slli	a5,a4,0x1
    80003e10:	00e787b3          	add	a5,a5,a4
    80003e14:	00379793          	slli	a5,a5,0x3
    80003e18:	00f78793          	addi	a5,a5,15
    80003e1c:	ff07f793          	andi	a5,a5,-16
    80003e20:	40f10133          	sub	sp,sp,a5
    80003e24:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003e28:	00199493          	slli	s1,s3,0x1
    80003e2c:	013484b3          	add	s1,s1,s3
    80003e30:	00349493          	slli	s1,s1,0x3
    80003e34:	009b04b3          	add	s1,s6,s1
    80003e38:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003e3c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003e40:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003e44:	02800513          	li	a0,40
    80003e48:	ffffe097          	auipc	ra,0xffffe
    80003e4c:	230080e7          	jalr	560(ra) # 80002078 <_Znwm>
    80003e50:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003e54:	ffffe097          	auipc	ra,0xffffe
    80003e58:	3b4080e7          	jalr	948(ra) # 80002208 <_ZN6ThreadC1Ev>
    80003e5c:	00008797          	auipc	a5,0x8
    80003e60:	8c478793          	addi	a5,a5,-1852 # 8000b720 <_ZTV8Consumer+0x10>
    80003e64:	00fbb023          	sd	a5,0(s7)
    80003e68:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003e6c:	000b8513          	mv	a0,s7
    80003e70:	ffffe097          	auipc	ra,0xffffe
    80003e74:	314080e7          	jalr	788(ra) # 80002184 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003e78:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003e7c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003e80:	00008797          	auipc	a5,0x8
    80003e84:	a407b783          	ld	a5,-1472(a5) # 8000b8c0 <_ZL10waitForAll>
    80003e88:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e8c:	02800513          	li	a0,40
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	1e8080e7          	jalr	488(ra) # 80002078 <_Znwm>
    80003e98:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e9c:	ffffe097          	auipc	ra,0xffffe
    80003ea0:	36c080e7          	jalr	876(ra) # 80002208 <_ZN6ThreadC1Ev>
    80003ea4:	00008797          	auipc	a5,0x8
    80003ea8:	82c78793          	addi	a5,a5,-2004 # 8000b6d0 <_ZTV16ProducerKeyborad+0x10>
    80003eac:	00f4b023          	sd	a5,0(s1)
    80003eb0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003eb4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003eb8:	00048513          	mv	a0,s1
    80003ebc:	ffffe097          	auipc	ra,0xffffe
    80003ec0:	2c8080e7          	jalr	712(ra) # 80002184 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ec4:	00100913          	li	s2,1
    80003ec8:	0300006f          	j	80003ef8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ecc:	00008797          	auipc	a5,0x8
    80003ed0:	82c78793          	addi	a5,a5,-2004 # 8000b6f8 <_ZTV8Producer+0x10>
    80003ed4:	00fcb023          	sd	a5,0(s9)
    80003ed8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003edc:	00391793          	slli	a5,s2,0x3
    80003ee0:	00fa07b3          	add	a5,s4,a5
    80003ee4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003ee8:	000c8513          	mv	a0,s9
    80003eec:	ffffe097          	auipc	ra,0xffffe
    80003ef0:	298080e7          	jalr	664(ra) # 80002184 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ef4:	0019091b          	addiw	s2,s2,1
    80003ef8:	05395263          	bge	s2,s3,80003f3c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003efc:	00191493          	slli	s1,s2,0x1
    80003f00:	012484b3          	add	s1,s1,s2
    80003f04:	00349493          	slli	s1,s1,0x3
    80003f08:	009b04b3          	add	s1,s6,s1
    80003f0c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003f10:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003f14:	00008797          	auipc	a5,0x8
    80003f18:	9ac7b783          	ld	a5,-1620(a5) # 8000b8c0 <_ZL10waitForAll>
    80003f1c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003f20:	02800513          	li	a0,40
    80003f24:	ffffe097          	auipc	ra,0xffffe
    80003f28:	154080e7          	jalr	340(ra) # 80002078 <_Znwm>
    80003f2c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003f30:	ffffe097          	auipc	ra,0xffffe
    80003f34:	2d8080e7          	jalr	728(ra) # 80002208 <_ZN6ThreadC1Ev>
    80003f38:	f95ff06f          	j	80003ecc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003f3c:	ffffe097          	auipc	ra,0xffffe
    80003f40:	278080e7          	jalr	632(ra) # 800021b4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f44:	00000493          	li	s1,0
    80003f48:	0099ce63          	blt	s3,s1,80003f64 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003f4c:	00008517          	auipc	a0,0x8
    80003f50:	97453503          	ld	a0,-1676(a0) # 8000b8c0 <_ZL10waitForAll>
    80003f54:	ffffe097          	auipc	ra,0xffffe
    80003f58:	318080e7          	jalr	792(ra) # 8000226c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f5c:	0014849b          	addiw	s1,s1,1
    80003f60:	fe9ff06f          	j	80003f48 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003f64:	00008517          	auipc	a0,0x8
    80003f68:	95c53503          	ld	a0,-1700(a0) # 8000b8c0 <_ZL10waitForAll>
    80003f6c:	00050863          	beqz	a0,80003f7c <_Z20testConsumerProducerv+0x2f4>
    80003f70:	00053783          	ld	a5,0(a0)
    80003f74:	0087b783          	ld	a5,8(a5)
    80003f78:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003f7c:	00000493          	li	s1,0
    80003f80:	0080006f          	j	80003f88 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003f84:	0014849b          	addiw	s1,s1,1
    80003f88:	0334d263          	bge	s1,s3,80003fac <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003f8c:	00349793          	slli	a5,s1,0x3
    80003f90:	00fa07b3          	add	a5,s4,a5
    80003f94:	0007b503          	ld	a0,0(a5)
    80003f98:	fe0506e3          	beqz	a0,80003f84 <_Z20testConsumerProducerv+0x2fc>
    80003f9c:	00053783          	ld	a5,0(a0)
    80003fa0:	0087b783          	ld	a5,8(a5)
    80003fa4:	000780e7          	jalr	a5
    80003fa8:	fddff06f          	j	80003f84 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003fac:	000b8a63          	beqz	s7,80003fc0 <_Z20testConsumerProducerv+0x338>
    80003fb0:	000bb783          	ld	a5,0(s7)
    80003fb4:	0087b783          	ld	a5,8(a5)
    80003fb8:	000b8513          	mv	a0,s7
    80003fbc:	000780e7          	jalr	a5
    delete buffer;
    80003fc0:	000a8e63          	beqz	s5,80003fdc <_Z20testConsumerProducerv+0x354>
    80003fc4:	000a8513          	mv	a0,s5
    80003fc8:	00002097          	auipc	ra,0x2
    80003fcc:	870080e7          	jalr	-1936(ra) # 80005838 <_ZN9BufferCPPD1Ev>
    80003fd0:	000a8513          	mv	a0,s5
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	0cc080e7          	jalr	204(ra) # 800020a0 <_ZdlPv>
    80003fdc:	000c0113          	mv	sp,s8
}
    80003fe0:	f8040113          	addi	sp,s0,-128
    80003fe4:	07813083          	ld	ra,120(sp)
    80003fe8:	07013403          	ld	s0,112(sp)
    80003fec:	06813483          	ld	s1,104(sp)
    80003ff0:	06013903          	ld	s2,96(sp)
    80003ff4:	05813983          	ld	s3,88(sp)
    80003ff8:	05013a03          	ld	s4,80(sp)
    80003ffc:	04813a83          	ld	s5,72(sp)
    80004000:	04013b03          	ld	s6,64(sp)
    80004004:	03813b83          	ld	s7,56(sp)
    80004008:	03013c03          	ld	s8,48(sp)
    8000400c:	02813c83          	ld	s9,40(sp)
    80004010:	08010113          	addi	sp,sp,128
    80004014:	00008067          	ret
    80004018:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000401c:	000a8513          	mv	a0,s5
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	080080e7          	jalr	128(ra) # 800020a0 <_ZdlPv>
    80004028:	00048513          	mv	a0,s1
    8000402c:	00009097          	auipc	ra,0x9
    80004030:	98c080e7          	jalr	-1652(ra) # 8000c9b8 <_Unwind_Resume>
    80004034:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004038:	00090513          	mv	a0,s2
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	064080e7          	jalr	100(ra) # 800020a0 <_ZdlPv>
    80004044:	00048513          	mv	a0,s1
    80004048:	00009097          	auipc	ra,0x9
    8000404c:	970080e7          	jalr	-1680(ra) # 8000c9b8 <_Unwind_Resume>
    80004050:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004054:	000b8513          	mv	a0,s7
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	048080e7          	jalr	72(ra) # 800020a0 <_ZdlPv>
    80004060:	00048513          	mv	a0,s1
    80004064:	00009097          	auipc	ra,0x9
    80004068:	954080e7          	jalr	-1708(ra) # 8000c9b8 <_Unwind_Resume>
    8000406c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004070:	00048513          	mv	a0,s1
    80004074:	ffffe097          	auipc	ra,0xffffe
    80004078:	02c080e7          	jalr	44(ra) # 800020a0 <_ZdlPv>
    8000407c:	00090513          	mv	a0,s2
    80004080:	00009097          	auipc	ra,0x9
    80004084:	938080e7          	jalr	-1736(ra) # 8000c9b8 <_Unwind_Resume>
    80004088:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000408c:	000c8513          	mv	a0,s9
    80004090:	ffffe097          	auipc	ra,0xffffe
    80004094:	010080e7          	jalr	16(ra) # 800020a0 <_ZdlPv>
    80004098:	00048513          	mv	a0,s1
    8000409c:	00009097          	auipc	ra,0x9
    800040a0:	91c080e7          	jalr	-1764(ra) # 8000c9b8 <_Unwind_Resume>

00000000800040a4 <_ZN8Consumer3runEv>:
    void run() override {
    800040a4:	fd010113          	addi	sp,sp,-48
    800040a8:	02113423          	sd	ra,40(sp)
    800040ac:	02813023          	sd	s0,32(sp)
    800040b0:	00913c23          	sd	s1,24(sp)
    800040b4:	01213823          	sd	s2,16(sp)
    800040b8:	01313423          	sd	s3,8(sp)
    800040bc:	03010413          	addi	s0,sp,48
    800040c0:	00050913          	mv	s2,a0
        int i = 0;
    800040c4:	00000993          	li	s3,0
    800040c8:	0100006f          	j	800040d8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800040cc:	00a00513          	li	a0,10
    800040d0:	ffffe097          	auipc	ra,0xffffe
    800040d4:	2c4080e7          	jalr	708(ra) # 80002394 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800040d8:	00007797          	auipc	a5,0x7
    800040dc:	7e07a783          	lw	a5,2016(a5) # 8000b8b8 <_ZL9threadEnd>
    800040e0:	04079a63          	bnez	a5,80004134 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800040e4:	02093783          	ld	a5,32(s2)
    800040e8:	0087b503          	ld	a0,8(a5)
    800040ec:	00001097          	auipc	ra,0x1
    800040f0:	638080e7          	jalr	1592(ra) # 80005724 <_ZN9BufferCPP3getEv>
            i++;
    800040f4:	0019849b          	addiw	s1,s3,1
    800040f8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800040fc:	0ff57513          	andi	a0,a0,255
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	294080e7          	jalr	660(ra) # 80002394 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004108:	05000793          	li	a5,80
    8000410c:	02f4e4bb          	remw	s1,s1,a5
    80004110:	fc0494e3          	bnez	s1,800040d8 <_ZN8Consumer3runEv+0x34>
    80004114:	fb9ff06f          	j	800040cc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004118:	02093783          	ld	a5,32(s2)
    8000411c:	0087b503          	ld	a0,8(a5)
    80004120:	00001097          	auipc	ra,0x1
    80004124:	604080e7          	jalr	1540(ra) # 80005724 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004128:	0ff57513          	andi	a0,a0,255
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	268080e7          	jalr	616(ra) # 80002394 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004134:	02093783          	ld	a5,32(s2)
    80004138:	0087b503          	ld	a0,8(a5)
    8000413c:	00001097          	auipc	ra,0x1
    80004140:	674080e7          	jalr	1652(ra) # 800057b0 <_ZN9BufferCPP6getCntEv>
    80004144:	fca04ae3          	bgtz	a0,80004118 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004148:	02093783          	ld	a5,32(s2)
    8000414c:	0107b503          	ld	a0,16(a5)
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	154080e7          	jalr	340(ra) # 800022a4 <_ZN9Semaphore6signalEv>
    }
    80004158:	02813083          	ld	ra,40(sp)
    8000415c:	02013403          	ld	s0,32(sp)
    80004160:	01813483          	ld	s1,24(sp)
    80004164:	01013903          	ld	s2,16(sp)
    80004168:	00813983          	ld	s3,8(sp)
    8000416c:	03010113          	addi	sp,sp,48
    80004170:	00008067          	ret

0000000080004174 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004174:	ff010113          	addi	sp,sp,-16
    80004178:	00113423          	sd	ra,8(sp)
    8000417c:	00813023          	sd	s0,0(sp)
    80004180:	01010413          	addi	s0,sp,16
    80004184:	00007797          	auipc	a5,0x7
    80004188:	59c78793          	addi	a5,a5,1436 # 8000b720 <_ZTV8Consumer+0x10>
    8000418c:	00f53023          	sd	a5,0(a0)
    80004190:	ffffe097          	auipc	ra,0xffffe
    80004194:	e50080e7          	jalr	-432(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80004198:	00813083          	ld	ra,8(sp)
    8000419c:	00013403          	ld	s0,0(sp)
    800041a0:	01010113          	addi	sp,sp,16
    800041a4:	00008067          	ret

00000000800041a8 <_ZN8ConsumerD0Ev>:
    800041a8:	fe010113          	addi	sp,sp,-32
    800041ac:	00113c23          	sd	ra,24(sp)
    800041b0:	00813823          	sd	s0,16(sp)
    800041b4:	00913423          	sd	s1,8(sp)
    800041b8:	02010413          	addi	s0,sp,32
    800041bc:	00050493          	mv	s1,a0
    800041c0:	00007797          	auipc	a5,0x7
    800041c4:	56078793          	addi	a5,a5,1376 # 8000b720 <_ZTV8Consumer+0x10>
    800041c8:	00f53023          	sd	a5,0(a0)
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	e14080e7          	jalr	-492(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    800041d4:	00048513          	mv	a0,s1
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	ec8080e7          	jalr	-312(ra) # 800020a0 <_ZdlPv>
    800041e0:	01813083          	ld	ra,24(sp)
    800041e4:	01013403          	ld	s0,16(sp)
    800041e8:	00813483          	ld	s1,8(sp)
    800041ec:	02010113          	addi	sp,sp,32
    800041f0:	00008067          	ret

00000000800041f4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800041f4:	ff010113          	addi	sp,sp,-16
    800041f8:	00113423          	sd	ra,8(sp)
    800041fc:	00813023          	sd	s0,0(sp)
    80004200:	01010413          	addi	s0,sp,16
    80004204:	00007797          	auipc	a5,0x7
    80004208:	4cc78793          	addi	a5,a5,1228 # 8000b6d0 <_ZTV16ProducerKeyborad+0x10>
    8000420c:	00f53023          	sd	a5,0(a0)
    80004210:	ffffe097          	auipc	ra,0xffffe
    80004214:	dd0080e7          	jalr	-560(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80004218:	00813083          	ld	ra,8(sp)
    8000421c:	00013403          	ld	s0,0(sp)
    80004220:	01010113          	addi	sp,sp,16
    80004224:	00008067          	ret

0000000080004228 <_ZN16ProducerKeyboradD0Ev>:
    80004228:	fe010113          	addi	sp,sp,-32
    8000422c:	00113c23          	sd	ra,24(sp)
    80004230:	00813823          	sd	s0,16(sp)
    80004234:	00913423          	sd	s1,8(sp)
    80004238:	02010413          	addi	s0,sp,32
    8000423c:	00050493          	mv	s1,a0
    80004240:	00007797          	auipc	a5,0x7
    80004244:	49078793          	addi	a5,a5,1168 # 8000b6d0 <_ZTV16ProducerKeyborad+0x10>
    80004248:	00f53023          	sd	a5,0(a0)
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	d94080e7          	jalr	-620(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80004254:	00048513          	mv	a0,s1
    80004258:	ffffe097          	auipc	ra,0xffffe
    8000425c:	e48080e7          	jalr	-440(ra) # 800020a0 <_ZdlPv>
    80004260:	01813083          	ld	ra,24(sp)
    80004264:	01013403          	ld	s0,16(sp)
    80004268:	00813483          	ld	s1,8(sp)
    8000426c:	02010113          	addi	sp,sp,32
    80004270:	00008067          	ret

0000000080004274 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004274:	ff010113          	addi	sp,sp,-16
    80004278:	00113423          	sd	ra,8(sp)
    8000427c:	00813023          	sd	s0,0(sp)
    80004280:	01010413          	addi	s0,sp,16
    80004284:	00007797          	auipc	a5,0x7
    80004288:	47478793          	addi	a5,a5,1140 # 8000b6f8 <_ZTV8Producer+0x10>
    8000428c:	00f53023          	sd	a5,0(a0)
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	d50080e7          	jalr	-688(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80004298:	00813083          	ld	ra,8(sp)
    8000429c:	00013403          	ld	s0,0(sp)
    800042a0:	01010113          	addi	sp,sp,16
    800042a4:	00008067          	ret

00000000800042a8 <_ZN8ProducerD0Ev>:
    800042a8:	fe010113          	addi	sp,sp,-32
    800042ac:	00113c23          	sd	ra,24(sp)
    800042b0:	00813823          	sd	s0,16(sp)
    800042b4:	00913423          	sd	s1,8(sp)
    800042b8:	02010413          	addi	s0,sp,32
    800042bc:	00050493          	mv	s1,a0
    800042c0:	00007797          	auipc	a5,0x7
    800042c4:	43878793          	addi	a5,a5,1080 # 8000b6f8 <_ZTV8Producer+0x10>
    800042c8:	00f53023          	sd	a5,0(a0)
    800042cc:	ffffe097          	auipc	ra,0xffffe
    800042d0:	d14080e7          	jalr	-748(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    800042d4:	00048513          	mv	a0,s1
    800042d8:	ffffe097          	auipc	ra,0xffffe
    800042dc:	dc8080e7          	jalr	-568(ra) # 800020a0 <_ZdlPv>
    800042e0:	01813083          	ld	ra,24(sp)
    800042e4:	01013403          	ld	s0,16(sp)
    800042e8:	00813483          	ld	s1,8(sp)
    800042ec:	02010113          	addi	sp,sp,32
    800042f0:	00008067          	ret

00000000800042f4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800042f4:	fe010113          	addi	sp,sp,-32
    800042f8:	00113c23          	sd	ra,24(sp)
    800042fc:	00813823          	sd	s0,16(sp)
    80004300:	00913423          	sd	s1,8(sp)
    80004304:	02010413          	addi	s0,sp,32
    80004308:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000430c:	ffffd097          	auipc	ra,0xffffd
    80004310:	1c0080e7          	jalr	448(ra) # 800014cc <_Z4getcv>
    80004314:	0005059b          	sext.w	a1,a0
    80004318:	01b00793          	li	a5,27
    8000431c:	00f58c63          	beq	a1,a5,80004334 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004320:	0204b783          	ld	a5,32(s1)
    80004324:	0087b503          	ld	a0,8(a5)
    80004328:	00001097          	auipc	ra,0x1
    8000432c:	36c080e7          	jalr	876(ra) # 80005694 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004330:	fddff06f          	j	8000430c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004334:	00100793          	li	a5,1
    80004338:	00007717          	auipc	a4,0x7
    8000433c:	58f72023          	sw	a5,1408(a4) # 8000b8b8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004340:	0204b783          	ld	a5,32(s1)
    80004344:	02100593          	li	a1,33
    80004348:	0087b503          	ld	a0,8(a5)
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	348080e7          	jalr	840(ra) # 80005694 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004354:	0204b783          	ld	a5,32(s1)
    80004358:	0107b503          	ld	a0,16(a5)
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	f48080e7          	jalr	-184(ra) # 800022a4 <_ZN9Semaphore6signalEv>
    }
    80004364:	01813083          	ld	ra,24(sp)
    80004368:	01013403          	ld	s0,16(sp)
    8000436c:	00813483          	ld	s1,8(sp)
    80004370:	02010113          	addi	sp,sp,32
    80004374:	00008067          	ret

0000000080004378 <_ZN8Producer3runEv>:
    void run() override {
    80004378:	fe010113          	addi	sp,sp,-32
    8000437c:	00113c23          	sd	ra,24(sp)
    80004380:	00813823          	sd	s0,16(sp)
    80004384:	00913423          	sd	s1,8(sp)
    80004388:	01213023          	sd	s2,0(sp)
    8000438c:	02010413          	addi	s0,sp,32
    80004390:	00050493          	mv	s1,a0
        int i = 0;
    80004394:	00000913          	li	s2,0
        while (!threadEnd) {
    80004398:	00007797          	auipc	a5,0x7
    8000439c:	5207a783          	lw	a5,1312(a5) # 8000b8b8 <_ZL9threadEnd>
    800043a0:	04079263          	bnez	a5,800043e4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800043a4:	0204b783          	ld	a5,32(s1)
    800043a8:	0007a583          	lw	a1,0(a5)
    800043ac:	0305859b          	addiw	a1,a1,48
    800043b0:	0087b503          	ld	a0,8(a5)
    800043b4:	00001097          	auipc	ra,0x1
    800043b8:	2e0080e7          	jalr	736(ra) # 80005694 <_ZN9BufferCPP3putEi>
            i++;
    800043bc:	0019071b          	addiw	a4,s2,1
    800043c0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800043c4:	0204b783          	ld	a5,32(s1)
    800043c8:	0007a783          	lw	a5,0(a5)
    800043cc:	00e787bb          	addw	a5,a5,a4
    800043d0:	00500513          	li	a0,5
    800043d4:	02a7e53b          	remw	a0,a5,a0
    800043d8:	ffffe097          	auipc	ra,0xffffe
    800043dc:	e04080e7          	jalr	-508(ra) # 800021dc <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800043e0:	fb9ff06f          	j	80004398 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800043e4:	0204b783          	ld	a5,32(s1)
    800043e8:	0107b503          	ld	a0,16(a5)
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	eb8080e7          	jalr	-328(ra) # 800022a4 <_ZN9Semaphore6signalEv>
    }
    800043f4:	01813083          	ld	ra,24(sp)
    800043f8:	01013403          	ld	s0,16(sp)
    800043fc:	00813483          	ld	s1,8(sp)
    80004400:	00013903          	ld	s2,0(sp)
    80004404:	02010113          	addi	sp,sp,32
    80004408:	00008067          	ret

000000008000440c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000440c:	fe010113          	addi	sp,sp,-32
    80004410:	00113c23          	sd	ra,24(sp)
    80004414:	00813823          	sd	s0,16(sp)
    80004418:	00913423          	sd	s1,8(sp)
    8000441c:	01213023          	sd	s2,0(sp)
    80004420:	02010413          	addi	s0,sp,32
    80004424:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004428:	00100793          	li	a5,1
    8000442c:	02a7f863          	bgeu	a5,a0,8000445c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004430:	00a00793          	li	a5,10
    80004434:	02f577b3          	remu	a5,a0,a5
    80004438:	02078e63          	beqz	a5,80004474 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000443c:	fff48513          	addi	a0,s1,-1
    80004440:	00000097          	auipc	ra,0x0
    80004444:	fcc080e7          	jalr	-52(ra) # 8000440c <_ZL9fibonaccim>
    80004448:	00050913          	mv	s2,a0
    8000444c:	ffe48513          	addi	a0,s1,-2
    80004450:	00000097          	auipc	ra,0x0
    80004454:	fbc080e7          	jalr	-68(ra) # 8000440c <_ZL9fibonaccim>
    80004458:	00a90533          	add	a0,s2,a0
}
    8000445c:	01813083          	ld	ra,24(sp)
    80004460:	01013403          	ld	s0,16(sp)
    80004464:	00813483          	ld	s1,8(sp)
    80004468:	00013903          	ld	s2,0(sp)
    8000446c:	02010113          	addi	sp,sp,32
    80004470:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004474:	ffffd097          	auipc	ra,0xffffd
    80004478:	f58080e7          	jalr	-168(ra) # 800013cc <_Z15thread_dispatchv>
    8000447c:	fc1ff06f          	j	8000443c <_ZL9fibonaccim+0x30>

0000000080004480 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004480:	fe010113          	addi	sp,sp,-32
    80004484:	00113c23          	sd	ra,24(sp)
    80004488:	00813823          	sd	s0,16(sp)
    8000448c:	00913423          	sd	s1,8(sp)
    80004490:	01213023          	sd	s2,0(sp)
    80004494:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004498:	00a00493          	li	s1,10
    8000449c:	0400006f          	j	800044dc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800044a0:	00005517          	auipc	a0,0x5
    800044a4:	d1850513          	addi	a0,a0,-744 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800044a8:	00001097          	auipc	ra,0x1
    800044ac:	dc8080e7          	jalr	-568(ra) # 80005270 <_Z11printStringPKc>
    800044b0:	00000613          	li	a2,0
    800044b4:	00a00593          	li	a1,10
    800044b8:	00048513          	mv	a0,s1
    800044bc:	00001097          	auipc	ra,0x1
    800044c0:	f64080e7          	jalr	-156(ra) # 80005420 <_Z8printIntiii>
    800044c4:	00005517          	auipc	a0,0x5
    800044c8:	be450513          	addi	a0,a0,-1052 # 800090a8 <CONSOLE_STATUS+0x98>
    800044cc:	00001097          	auipc	ra,0x1
    800044d0:	da4080e7          	jalr	-604(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800044d4:	0014849b          	addiw	s1,s1,1
    800044d8:	0ff4f493          	andi	s1,s1,255
    800044dc:	00c00793          	li	a5,12
    800044e0:	fc97f0e3          	bgeu	a5,s1,800044a0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800044e4:	00005517          	auipc	a0,0x5
    800044e8:	cdc50513          	addi	a0,a0,-804 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800044ec:	00001097          	auipc	ra,0x1
    800044f0:	d84080e7          	jalr	-636(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800044f4:	00500313          	li	t1,5
    thread_dispatch();
    800044f8:	ffffd097          	auipc	ra,0xffffd
    800044fc:	ed4080e7          	jalr	-300(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004500:	01000513          	li	a0,16
    80004504:	00000097          	auipc	ra,0x0
    80004508:	f08080e7          	jalr	-248(ra) # 8000440c <_ZL9fibonaccim>
    8000450c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004510:	00005517          	auipc	a0,0x5
    80004514:	cc050513          	addi	a0,a0,-832 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80004518:	00001097          	auipc	ra,0x1
    8000451c:	d58080e7          	jalr	-680(ra) # 80005270 <_Z11printStringPKc>
    80004520:	00000613          	li	a2,0
    80004524:	00a00593          	li	a1,10
    80004528:	0009051b          	sext.w	a0,s2
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	ef4080e7          	jalr	-268(ra) # 80005420 <_Z8printIntiii>
    80004534:	00005517          	auipc	a0,0x5
    80004538:	b7450513          	addi	a0,a0,-1164 # 800090a8 <CONSOLE_STATUS+0x98>
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	d34080e7          	jalr	-716(ra) # 80005270 <_Z11printStringPKc>
    80004544:	0400006f          	j	80004584 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004548:	00005517          	auipc	a0,0x5
    8000454c:	c7050513          	addi	a0,a0,-912 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004550:	00001097          	auipc	ra,0x1
    80004554:	d20080e7          	jalr	-736(ra) # 80005270 <_Z11printStringPKc>
    80004558:	00000613          	li	a2,0
    8000455c:	00a00593          	li	a1,10
    80004560:	00048513          	mv	a0,s1
    80004564:	00001097          	auipc	ra,0x1
    80004568:	ebc080e7          	jalr	-324(ra) # 80005420 <_Z8printIntiii>
    8000456c:	00005517          	auipc	a0,0x5
    80004570:	b3c50513          	addi	a0,a0,-1220 # 800090a8 <CONSOLE_STATUS+0x98>
    80004574:	00001097          	auipc	ra,0x1
    80004578:	cfc080e7          	jalr	-772(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000457c:	0014849b          	addiw	s1,s1,1
    80004580:	0ff4f493          	andi	s1,s1,255
    80004584:	00f00793          	li	a5,15
    80004588:	fc97f0e3          	bgeu	a5,s1,80004548 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000458c:	00005517          	auipc	a0,0x5
    80004590:	c5450513          	addi	a0,a0,-940 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80004594:	00001097          	auipc	ra,0x1
    80004598:	cdc080e7          	jalr	-804(ra) # 80005270 <_Z11printStringPKc>
    finishedD = true;
    8000459c:	00100793          	li	a5,1
    800045a0:	00007717          	auipc	a4,0x7
    800045a4:	32f70423          	sb	a5,808(a4) # 8000b8c8 <_ZL9finishedD>
    thread_dispatch();
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	e24080e7          	jalr	-476(ra) # 800013cc <_Z15thread_dispatchv>
}
    800045b0:	01813083          	ld	ra,24(sp)
    800045b4:	01013403          	ld	s0,16(sp)
    800045b8:	00813483          	ld	s1,8(sp)
    800045bc:	00013903          	ld	s2,0(sp)
    800045c0:	02010113          	addi	sp,sp,32
    800045c4:	00008067          	ret

00000000800045c8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800045c8:	fe010113          	addi	sp,sp,-32
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	00813823          	sd	s0,16(sp)
    800045d4:	00913423          	sd	s1,8(sp)
    800045d8:	01213023          	sd	s2,0(sp)
    800045dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800045e0:	00000493          	li	s1,0
    800045e4:	0400006f          	j	80004624 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800045e8:	00005517          	auipc	a0,0x5
    800045ec:	ba050513          	addi	a0,a0,-1120 # 80009188 <CONSOLE_STATUS+0x178>
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	c80080e7          	jalr	-896(ra) # 80005270 <_Z11printStringPKc>
    800045f8:	00000613          	li	a2,0
    800045fc:	00a00593          	li	a1,10
    80004600:	00048513          	mv	a0,s1
    80004604:	00001097          	auipc	ra,0x1
    80004608:	e1c080e7          	jalr	-484(ra) # 80005420 <_Z8printIntiii>
    8000460c:	00005517          	auipc	a0,0x5
    80004610:	a9c50513          	addi	a0,a0,-1380 # 800090a8 <CONSOLE_STATUS+0x98>
    80004614:	00001097          	auipc	ra,0x1
    80004618:	c5c080e7          	jalr	-932(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000461c:	0014849b          	addiw	s1,s1,1
    80004620:	0ff4f493          	andi	s1,s1,255
    80004624:	00200793          	li	a5,2
    80004628:	fc97f0e3          	bgeu	a5,s1,800045e8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000462c:	00005517          	auipc	a0,0x5
    80004630:	b6450513          	addi	a0,a0,-1180 # 80009190 <CONSOLE_STATUS+0x180>
    80004634:	00001097          	auipc	ra,0x1
    80004638:	c3c080e7          	jalr	-964(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000463c:	00700313          	li	t1,7
    thread_dispatch();
    80004640:	ffffd097          	auipc	ra,0xffffd
    80004644:	d8c080e7          	jalr	-628(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004648:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000464c:	00005517          	auipc	a0,0x5
    80004650:	b5450513          	addi	a0,a0,-1196 # 800091a0 <CONSOLE_STATUS+0x190>
    80004654:	00001097          	auipc	ra,0x1
    80004658:	c1c080e7          	jalr	-996(ra) # 80005270 <_Z11printStringPKc>
    8000465c:	00000613          	li	a2,0
    80004660:	00a00593          	li	a1,10
    80004664:	0009051b          	sext.w	a0,s2
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	db8080e7          	jalr	-584(ra) # 80005420 <_Z8printIntiii>
    80004670:	00005517          	auipc	a0,0x5
    80004674:	a3850513          	addi	a0,a0,-1480 # 800090a8 <CONSOLE_STATUS+0x98>
    80004678:	00001097          	auipc	ra,0x1
    8000467c:	bf8080e7          	jalr	-1032(ra) # 80005270 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004680:	00c00513          	li	a0,12
    80004684:	00000097          	auipc	ra,0x0
    80004688:	d88080e7          	jalr	-632(ra) # 8000440c <_ZL9fibonaccim>
    8000468c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004690:	00005517          	auipc	a0,0x5
    80004694:	b1850513          	addi	a0,a0,-1256 # 800091a8 <CONSOLE_STATUS+0x198>
    80004698:	00001097          	auipc	ra,0x1
    8000469c:	bd8080e7          	jalr	-1064(ra) # 80005270 <_Z11printStringPKc>
    800046a0:	00000613          	li	a2,0
    800046a4:	00a00593          	li	a1,10
    800046a8:	0009051b          	sext.w	a0,s2
    800046ac:	00001097          	auipc	ra,0x1
    800046b0:	d74080e7          	jalr	-652(ra) # 80005420 <_Z8printIntiii>
    800046b4:	00005517          	auipc	a0,0x5
    800046b8:	9f450513          	addi	a0,a0,-1548 # 800090a8 <CONSOLE_STATUS+0x98>
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	bb4080e7          	jalr	-1100(ra) # 80005270 <_Z11printStringPKc>
    800046c4:	0400006f          	j	80004704 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800046c8:	00005517          	auipc	a0,0x5
    800046cc:	ac050513          	addi	a0,a0,-1344 # 80009188 <CONSOLE_STATUS+0x178>
    800046d0:	00001097          	auipc	ra,0x1
    800046d4:	ba0080e7          	jalr	-1120(ra) # 80005270 <_Z11printStringPKc>
    800046d8:	00000613          	li	a2,0
    800046dc:	00a00593          	li	a1,10
    800046e0:	00048513          	mv	a0,s1
    800046e4:	00001097          	auipc	ra,0x1
    800046e8:	d3c080e7          	jalr	-708(ra) # 80005420 <_Z8printIntiii>
    800046ec:	00005517          	auipc	a0,0x5
    800046f0:	9bc50513          	addi	a0,a0,-1604 # 800090a8 <CONSOLE_STATUS+0x98>
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	b7c080e7          	jalr	-1156(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800046fc:	0014849b          	addiw	s1,s1,1
    80004700:	0ff4f493          	andi	s1,s1,255
    80004704:	00500793          	li	a5,5
    80004708:	fc97f0e3          	bgeu	a5,s1,800046c8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000470c:	00005517          	auipc	a0,0x5
    80004710:	a5450513          	addi	a0,a0,-1452 # 80009160 <CONSOLE_STATUS+0x150>
    80004714:	00001097          	auipc	ra,0x1
    80004718:	b5c080e7          	jalr	-1188(ra) # 80005270 <_Z11printStringPKc>
    finishedC = true;
    8000471c:	00100793          	li	a5,1
    80004720:	00007717          	auipc	a4,0x7
    80004724:	1af704a3          	sb	a5,425(a4) # 8000b8c9 <_ZL9finishedC>
    thread_dispatch();
    80004728:	ffffd097          	auipc	ra,0xffffd
    8000472c:	ca4080e7          	jalr	-860(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004730:	01813083          	ld	ra,24(sp)
    80004734:	01013403          	ld	s0,16(sp)
    80004738:	00813483          	ld	s1,8(sp)
    8000473c:	00013903          	ld	s2,0(sp)
    80004740:	02010113          	addi	sp,sp,32
    80004744:	00008067          	ret

0000000080004748 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004748:	fe010113          	addi	sp,sp,-32
    8000474c:	00113c23          	sd	ra,24(sp)
    80004750:	00813823          	sd	s0,16(sp)
    80004754:	00913423          	sd	s1,8(sp)
    80004758:	01213023          	sd	s2,0(sp)
    8000475c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004760:	00000913          	li	s2,0
    80004764:	0380006f          	j	8000479c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	c64080e7          	jalr	-924(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004770:	00148493          	addi	s1,s1,1
    80004774:	000027b7          	lui	a5,0x2
    80004778:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000477c:	0097ee63          	bltu	a5,s1,80004798 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004780:	00000713          	li	a4,0
    80004784:	000077b7          	lui	a5,0x7
    80004788:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000478c:	fce7eee3          	bltu	a5,a4,80004768 <_ZL11workerBodyBPv+0x20>
    80004790:	00170713          	addi	a4,a4,1
    80004794:	ff1ff06f          	j	80004784 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004798:	00190913          	addi	s2,s2,1
    8000479c:	00f00793          	li	a5,15
    800047a0:	0527e063          	bltu	a5,s2,800047e0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800047a4:	00005517          	auipc	a0,0x5
    800047a8:	9cc50513          	addi	a0,a0,-1588 # 80009170 <CONSOLE_STATUS+0x160>
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	ac4080e7          	jalr	-1340(ra) # 80005270 <_Z11printStringPKc>
    800047b4:	00000613          	li	a2,0
    800047b8:	00a00593          	li	a1,10
    800047bc:	0009051b          	sext.w	a0,s2
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	c60080e7          	jalr	-928(ra) # 80005420 <_Z8printIntiii>
    800047c8:	00005517          	auipc	a0,0x5
    800047cc:	8e050513          	addi	a0,a0,-1824 # 800090a8 <CONSOLE_STATUS+0x98>
    800047d0:	00001097          	auipc	ra,0x1
    800047d4:	aa0080e7          	jalr	-1376(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800047d8:	00000493          	li	s1,0
    800047dc:	f99ff06f          	j	80004774 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800047e0:	00005517          	auipc	a0,0x5
    800047e4:	99850513          	addi	a0,a0,-1640 # 80009178 <CONSOLE_STATUS+0x168>
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	a88080e7          	jalr	-1400(ra) # 80005270 <_Z11printStringPKc>
    finishedB = true;
    800047f0:	00100793          	li	a5,1
    800047f4:	00007717          	auipc	a4,0x7
    800047f8:	0cf70b23          	sb	a5,214(a4) # 8000b8ca <_ZL9finishedB>
    thread_dispatch();
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	bd0080e7          	jalr	-1072(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004804:	01813083          	ld	ra,24(sp)
    80004808:	01013403          	ld	s0,16(sp)
    8000480c:	00813483          	ld	s1,8(sp)
    80004810:	00013903          	ld	s2,0(sp)
    80004814:	02010113          	addi	sp,sp,32
    80004818:	00008067          	ret

000000008000481c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000481c:	fe010113          	addi	sp,sp,-32
    80004820:	00113c23          	sd	ra,24(sp)
    80004824:	00813823          	sd	s0,16(sp)
    80004828:	00913423          	sd	s1,8(sp)
    8000482c:	01213023          	sd	s2,0(sp)
    80004830:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004834:	00000913          	li	s2,0
    80004838:	0380006f          	j	80004870 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000483c:	ffffd097          	auipc	ra,0xffffd
    80004840:	b90080e7          	jalr	-1136(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004844:	00148493          	addi	s1,s1,1
    80004848:	000027b7          	lui	a5,0x2
    8000484c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004850:	0097ee63          	bltu	a5,s1,8000486c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004854:	00000713          	li	a4,0
    80004858:	000077b7          	lui	a5,0x7
    8000485c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004860:	fce7eee3          	bltu	a5,a4,8000483c <_ZL11workerBodyAPv+0x20>
    80004864:	00170713          	addi	a4,a4,1
    80004868:	ff1ff06f          	j	80004858 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000486c:	00190913          	addi	s2,s2,1
    80004870:	00900793          	li	a5,9
    80004874:	0527e063          	bltu	a5,s2,800048b4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004878:	00005517          	auipc	a0,0x5
    8000487c:	8e050513          	addi	a0,a0,-1824 # 80009158 <CONSOLE_STATUS+0x148>
    80004880:	00001097          	auipc	ra,0x1
    80004884:	9f0080e7          	jalr	-1552(ra) # 80005270 <_Z11printStringPKc>
    80004888:	00000613          	li	a2,0
    8000488c:	00a00593          	li	a1,10
    80004890:	0009051b          	sext.w	a0,s2
    80004894:	00001097          	auipc	ra,0x1
    80004898:	b8c080e7          	jalr	-1140(ra) # 80005420 <_Z8printIntiii>
    8000489c:	00005517          	auipc	a0,0x5
    800048a0:	80c50513          	addi	a0,a0,-2036 # 800090a8 <CONSOLE_STATUS+0x98>
    800048a4:	00001097          	auipc	ra,0x1
    800048a8:	9cc080e7          	jalr	-1588(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800048ac:	00000493          	li	s1,0
    800048b0:	f99ff06f          	j	80004848 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800048b4:	00005517          	auipc	a0,0x5
    800048b8:	8ac50513          	addi	a0,a0,-1876 # 80009160 <CONSOLE_STATUS+0x150>
    800048bc:	00001097          	auipc	ra,0x1
    800048c0:	9b4080e7          	jalr	-1612(ra) # 80005270 <_Z11printStringPKc>
    finishedA = true;
    800048c4:	00100793          	li	a5,1
    800048c8:	00007717          	auipc	a4,0x7
    800048cc:	00f701a3          	sb	a5,3(a4) # 8000b8cb <_ZL9finishedA>
}
    800048d0:	01813083          	ld	ra,24(sp)
    800048d4:	01013403          	ld	s0,16(sp)
    800048d8:	00813483          	ld	s1,8(sp)
    800048dc:	00013903          	ld	s2,0(sp)
    800048e0:	02010113          	addi	sp,sp,32
    800048e4:	00008067          	ret

00000000800048e8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800048e8:	fd010113          	addi	sp,sp,-48
    800048ec:	02113423          	sd	ra,40(sp)
    800048f0:	02813023          	sd	s0,32(sp)
    800048f4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800048f8:	00000613          	li	a2,0
    800048fc:	00000597          	auipc	a1,0x0
    80004900:	f2058593          	addi	a1,a1,-224 # 8000481c <_ZL11workerBodyAPv>
    80004904:	fd040513          	addi	a0,s0,-48
    80004908:	ffffd097          	auipc	ra,0xffffd
    8000490c:	9f0080e7          	jalr	-1552(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004910:	00005517          	auipc	a0,0x5
    80004914:	8e050513          	addi	a0,a0,-1824 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	958080e7          	jalr	-1704(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004920:	00000613          	li	a2,0
    80004924:	00000597          	auipc	a1,0x0
    80004928:	e2458593          	addi	a1,a1,-476 # 80004748 <_ZL11workerBodyBPv>
    8000492c:	fd840513          	addi	a0,s0,-40
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	9c8080e7          	jalr	-1592(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004938:	00005517          	auipc	a0,0x5
    8000493c:	8d050513          	addi	a0,a0,-1840 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	930080e7          	jalr	-1744(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004948:	00000613          	li	a2,0
    8000494c:	00000597          	auipc	a1,0x0
    80004950:	c7c58593          	addi	a1,a1,-900 # 800045c8 <_ZL11workerBodyCPv>
    80004954:	fe040513          	addi	a0,s0,-32
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	9a0080e7          	jalr	-1632(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004960:	00005517          	auipc	a0,0x5
    80004964:	8c050513          	addi	a0,a0,-1856 # 80009220 <CONSOLE_STATUS+0x210>
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	908080e7          	jalr	-1784(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004970:	00000613          	li	a2,0
    80004974:	00000597          	auipc	a1,0x0
    80004978:	b0c58593          	addi	a1,a1,-1268 # 80004480 <_ZL11workerBodyDPv>
    8000497c:	fe840513          	addi	a0,s0,-24
    80004980:	ffffd097          	auipc	ra,0xffffd
    80004984:	978080e7          	jalr	-1672(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004988:	00005517          	auipc	a0,0x5
    8000498c:	8b050513          	addi	a0,a0,-1872 # 80009238 <CONSOLE_STATUS+0x228>
    80004990:	00001097          	auipc	ra,0x1
    80004994:	8e0080e7          	jalr	-1824(ra) # 80005270 <_Z11printStringPKc>
    80004998:	00c0006f          	j	800049a4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000499c:	ffffd097          	auipc	ra,0xffffd
    800049a0:	a30080e7          	jalr	-1488(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800049a4:	00007797          	auipc	a5,0x7
    800049a8:	f277c783          	lbu	a5,-217(a5) # 8000b8cb <_ZL9finishedA>
    800049ac:	fe0788e3          	beqz	a5,8000499c <_Z18Threads_C_API_testv+0xb4>
    800049b0:	00007797          	auipc	a5,0x7
    800049b4:	f1a7c783          	lbu	a5,-230(a5) # 8000b8ca <_ZL9finishedB>
    800049b8:	fe0782e3          	beqz	a5,8000499c <_Z18Threads_C_API_testv+0xb4>
    800049bc:	00007797          	auipc	a5,0x7
    800049c0:	f0d7c783          	lbu	a5,-243(a5) # 8000b8c9 <_ZL9finishedC>
    800049c4:	fc078ce3          	beqz	a5,8000499c <_Z18Threads_C_API_testv+0xb4>
    800049c8:	00007797          	auipc	a5,0x7
    800049cc:	f007c783          	lbu	a5,-256(a5) # 8000b8c8 <_ZL9finishedD>
    800049d0:	fc0786e3          	beqz	a5,8000499c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800049d4:	02813083          	ld	ra,40(sp)
    800049d8:	02013403          	ld	s0,32(sp)
    800049dc:	03010113          	addi	sp,sp,48
    800049e0:	00008067          	ret

00000000800049e4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800049e4:	fd010113          	addi	sp,sp,-48
    800049e8:	02113423          	sd	ra,40(sp)
    800049ec:	02813023          	sd	s0,32(sp)
    800049f0:	00913c23          	sd	s1,24(sp)
    800049f4:	01213823          	sd	s2,16(sp)
    800049f8:	01313423          	sd	s3,8(sp)
    800049fc:	03010413          	addi	s0,sp,48
    80004a00:	00050993          	mv	s3,a0
    80004a04:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004a08:	00000913          	li	s2,0
    80004a0c:	00c0006f          	j	80004a18 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a10:	ffffd097          	auipc	ra,0xffffd
    80004a14:	7a4080e7          	jalr	1956(ra) # 800021b4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004a18:	ffffd097          	auipc	ra,0xffffd
    80004a1c:	ab4080e7          	jalr	-1356(ra) # 800014cc <_Z4getcv>
    80004a20:	0005059b          	sext.w	a1,a0
    80004a24:	01b00793          	li	a5,27
    80004a28:	02f58a63          	beq	a1,a5,80004a5c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004a2c:	0084b503          	ld	a0,8(s1)
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	c64080e7          	jalr	-924(ra) # 80005694 <_ZN9BufferCPP3putEi>
        i++;
    80004a38:	0019071b          	addiw	a4,s2,1
    80004a3c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a40:	0004a683          	lw	a3,0(s1)
    80004a44:	0026979b          	slliw	a5,a3,0x2
    80004a48:	00d787bb          	addw	a5,a5,a3
    80004a4c:	0017979b          	slliw	a5,a5,0x1
    80004a50:	02f767bb          	remw	a5,a4,a5
    80004a54:	fc0792e3          	bnez	a5,80004a18 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004a58:	fb9ff06f          	j	80004a10 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004a5c:	00100793          	li	a5,1
    80004a60:	00007717          	auipc	a4,0x7
    80004a64:	e6f72823          	sw	a5,-400(a4) # 8000b8d0 <_ZL9threadEnd>
    td->buffer->put('!');
    80004a68:	0209b783          	ld	a5,32(s3)
    80004a6c:	02100593          	li	a1,33
    80004a70:	0087b503          	ld	a0,8(a5)
    80004a74:	00001097          	auipc	ra,0x1
    80004a78:	c20080e7          	jalr	-992(ra) # 80005694 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004a7c:	0104b503          	ld	a0,16(s1)
    80004a80:	ffffe097          	auipc	ra,0xffffe
    80004a84:	824080e7          	jalr	-2012(ra) # 800022a4 <_ZN9Semaphore6signalEv>
}
    80004a88:	02813083          	ld	ra,40(sp)
    80004a8c:	02013403          	ld	s0,32(sp)
    80004a90:	01813483          	ld	s1,24(sp)
    80004a94:	01013903          	ld	s2,16(sp)
    80004a98:	00813983          	ld	s3,8(sp)
    80004a9c:	03010113          	addi	sp,sp,48
    80004aa0:	00008067          	ret

0000000080004aa4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004aa4:	fe010113          	addi	sp,sp,-32
    80004aa8:	00113c23          	sd	ra,24(sp)
    80004aac:	00813823          	sd	s0,16(sp)
    80004ab0:	00913423          	sd	s1,8(sp)
    80004ab4:	01213023          	sd	s2,0(sp)
    80004ab8:	02010413          	addi	s0,sp,32
    80004abc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004ac0:	00000913          	li	s2,0
    80004ac4:	00c0006f          	j	80004ad0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004ac8:	ffffd097          	auipc	ra,0xffffd
    80004acc:	6ec080e7          	jalr	1772(ra) # 800021b4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004ad0:	00007797          	auipc	a5,0x7
    80004ad4:	e007a783          	lw	a5,-512(a5) # 8000b8d0 <_ZL9threadEnd>
    80004ad8:	02079e63          	bnez	a5,80004b14 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004adc:	0004a583          	lw	a1,0(s1)
    80004ae0:	0305859b          	addiw	a1,a1,48
    80004ae4:	0084b503          	ld	a0,8(s1)
    80004ae8:	00001097          	auipc	ra,0x1
    80004aec:	bac080e7          	jalr	-1108(ra) # 80005694 <_ZN9BufferCPP3putEi>
        i++;
    80004af0:	0019071b          	addiw	a4,s2,1
    80004af4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004af8:	0004a683          	lw	a3,0(s1)
    80004afc:	0026979b          	slliw	a5,a3,0x2
    80004b00:	00d787bb          	addw	a5,a5,a3
    80004b04:	0017979b          	slliw	a5,a5,0x1
    80004b08:	02f767bb          	remw	a5,a4,a5
    80004b0c:	fc0792e3          	bnez	a5,80004ad0 <_ZN12ProducerSync8producerEPv+0x2c>
    80004b10:	fb9ff06f          	j	80004ac8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004b14:	0104b503          	ld	a0,16(s1)
    80004b18:	ffffd097          	auipc	ra,0xffffd
    80004b1c:	78c080e7          	jalr	1932(ra) # 800022a4 <_ZN9Semaphore6signalEv>
}
    80004b20:	01813083          	ld	ra,24(sp)
    80004b24:	01013403          	ld	s0,16(sp)
    80004b28:	00813483          	ld	s1,8(sp)
    80004b2c:	00013903          	ld	s2,0(sp)
    80004b30:	02010113          	addi	sp,sp,32
    80004b34:	00008067          	ret

0000000080004b38 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004b38:	fd010113          	addi	sp,sp,-48
    80004b3c:	02113423          	sd	ra,40(sp)
    80004b40:	02813023          	sd	s0,32(sp)
    80004b44:	00913c23          	sd	s1,24(sp)
    80004b48:	01213823          	sd	s2,16(sp)
    80004b4c:	01313423          	sd	s3,8(sp)
    80004b50:	01413023          	sd	s4,0(sp)
    80004b54:	03010413          	addi	s0,sp,48
    80004b58:	00050993          	mv	s3,a0
    80004b5c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b60:	00000a13          	li	s4,0
    80004b64:	01c0006f          	j	80004b80 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004b68:	ffffd097          	auipc	ra,0xffffd
    80004b6c:	64c080e7          	jalr	1612(ra) # 800021b4 <_ZN6Thread8dispatchEv>
    80004b70:	0500006f          	j	80004bc0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004b74:	00a00513          	li	a0,10
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	9a0080e7          	jalr	-1632(ra) # 80001518 <_Z4putcc>
    while (!threadEnd) {
    80004b80:	00007797          	auipc	a5,0x7
    80004b84:	d507a783          	lw	a5,-688(a5) # 8000b8d0 <_ZL9threadEnd>
    80004b88:	06079263          	bnez	a5,80004bec <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004b8c:	00893503          	ld	a0,8(s2)
    80004b90:	00001097          	auipc	ra,0x1
    80004b94:	b94080e7          	jalr	-1132(ra) # 80005724 <_ZN9BufferCPP3getEv>
        i++;
    80004b98:	001a049b          	addiw	s1,s4,1
    80004b9c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004ba0:	0ff57513          	andi	a0,a0,255
    80004ba4:	ffffd097          	auipc	ra,0xffffd
    80004ba8:	974080e7          	jalr	-1676(ra) # 80001518 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004bac:	00092703          	lw	a4,0(s2)
    80004bb0:	0027179b          	slliw	a5,a4,0x2
    80004bb4:	00e787bb          	addw	a5,a5,a4
    80004bb8:	02f4e7bb          	remw	a5,s1,a5
    80004bbc:	fa0786e3          	beqz	a5,80004b68 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004bc0:	05000793          	li	a5,80
    80004bc4:	02f4e4bb          	remw	s1,s1,a5
    80004bc8:	fa049ce3          	bnez	s1,80004b80 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004bcc:	fa9ff06f          	j	80004b74 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004bd0:	0209b783          	ld	a5,32(s3)
    80004bd4:	0087b503          	ld	a0,8(a5)
    80004bd8:	00001097          	auipc	ra,0x1
    80004bdc:	b4c080e7          	jalr	-1204(ra) # 80005724 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004be0:	0ff57513          	andi	a0,a0,255
    80004be4:	ffffd097          	auipc	ra,0xffffd
    80004be8:	7b0080e7          	jalr	1968(ra) # 80002394 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004bec:	0209b783          	ld	a5,32(s3)
    80004bf0:	0087b503          	ld	a0,8(a5)
    80004bf4:	00001097          	auipc	ra,0x1
    80004bf8:	bbc080e7          	jalr	-1092(ra) # 800057b0 <_ZN9BufferCPP6getCntEv>
    80004bfc:	fca04ae3          	bgtz	a0,80004bd0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004c00:	01093503          	ld	a0,16(s2)
    80004c04:	ffffd097          	auipc	ra,0xffffd
    80004c08:	6a0080e7          	jalr	1696(ra) # 800022a4 <_ZN9Semaphore6signalEv>
}
    80004c0c:	02813083          	ld	ra,40(sp)
    80004c10:	02013403          	ld	s0,32(sp)
    80004c14:	01813483          	ld	s1,24(sp)
    80004c18:	01013903          	ld	s2,16(sp)
    80004c1c:	00813983          	ld	s3,8(sp)
    80004c20:	00013a03          	ld	s4,0(sp)
    80004c24:	03010113          	addi	sp,sp,48
    80004c28:	00008067          	ret

0000000080004c2c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004c2c:	f8010113          	addi	sp,sp,-128
    80004c30:	06113c23          	sd	ra,120(sp)
    80004c34:	06813823          	sd	s0,112(sp)
    80004c38:	06913423          	sd	s1,104(sp)
    80004c3c:	07213023          	sd	s2,96(sp)
    80004c40:	05313c23          	sd	s3,88(sp)
    80004c44:	05413823          	sd	s4,80(sp)
    80004c48:	05513423          	sd	s5,72(sp)
    80004c4c:	05613023          	sd	s6,64(sp)
    80004c50:	03713c23          	sd	s7,56(sp)
    80004c54:	03813823          	sd	s8,48(sp)
    80004c58:	03913423          	sd	s9,40(sp)
    80004c5c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004c60:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c64:	00004517          	auipc	a0,0x4
    80004c68:	40c50513          	addi	a0,a0,1036 # 80009070 <CONSOLE_STATUS+0x60>
    80004c6c:	00000097          	auipc	ra,0x0
    80004c70:	604080e7          	jalr	1540(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    80004c74:	01e00593          	li	a1,30
    80004c78:	f8040493          	addi	s1,s0,-128
    80004c7c:	00048513          	mv	a0,s1
    80004c80:	00000097          	auipc	ra,0x0
    80004c84:	678080e7          	jalr	1656(ra) # 800052f8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c88:	00048513          	mv	a0,s1
    80004c8c:	00000097          	auipc	ra,0x0
    80004c90:	744080e7          	jalr	1860(ra) # 800053d0 <_Z11stringToIntPKc>
    80004c94:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c98:	00004517          	auipc	a0,0x4
    80004c9c:	3f850513          	addi	a0,a0,1016 # 80009090 <CONSOLE_STATUS+0x80>
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	5d0080e7          	jalr	1488(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    80004ca8:	01e00593          	li	a1,30
    80004cac:	00048513          	mv	a0,s1
    80004cb0:	00000097          	auipc	ra,0x0
    80004cb4:	648080e7          	jalr	1608(ra) # 800052f8 <_Z9getStringPci>
    n = stringToInt(input);
    80004cb8:	00048513          	mv	a0,s1
    80004cbc:	00000097          	auipc	ra,0x0
    80004cc0:	714080e7          	jalr	1812(ra) # 800053d0 <_Z11stringToIntPKc>
    80004cc4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004cc8:	00004517          	auipc	a0,0x4
    80004ccc:	3e850513          	addi	a0,a0,1000 # 800090b0 <CONSOLE_STATUS+0xa0>
    80004cd0:	00000097          	auipc	ra,0x0
    80004cd4:	5a0080e7          	jalr	1440(ra) # 80005270 <_Z11printStringPKc>
    80004cd8:	00000613          	li	a2,0
    80004cdc:	00a00593          	li	a1,10
    80004ce0:	00090513          	mv	a0,s2
    80004ce4:	00000097          	auipc	ra,0x0
    80004ce8:	73c080e7          	jalr	1852(ra) # 80005420 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	3dc50513          	addi	a0,a0,988 # 800090c8 <CONSOLE_STATUS+0xb8>
    80004cf4:	00000097          	auipc	ra,0x0
    80004cf8:	57c080e7          	jalr	1404(ra) # 80005270 <_Z11printStringPKc>
    80004cfc:	00000613          	li	a2,0
    80004d00:	00a00593          	li	a1,10
    80004d04:	00048513          	mv	a0,s1
    80004d08:	00000097          	auipc	ra,0x0
    80004d0c:	718080e7          	jalr	1816(ra) # 80005420 <_Z8printIntiii>
    printString(".\n");
    80004d10:	00004517          	auipc	a0,0x4
    80004d14:	3d050513          	addi	a0,a0,976 # 800090e0 <CONSOLE_STATUS+0xd0>
    80004d18:	00000097          	auipc	ra,0x0
    80004d1c:	558080e7          	jalr	1368(ra) # 80005270 <_Z11printStringPKc>
    if(threadNum > n) {
    80004d20:	0324c463          	blt	s1,s2,80004d48 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004d24:	03205c63          	blez	s2,80004d5c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004d28:	03800513          	li	a0,56
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	34c080e7          	jalr	844(ra) # 80002078 <_Znwm>
    80004d34:	00050a93          	mv	s5,a0
    80004d38:	00048593          	mv	a1,s1
    80004d3c:	00001097          	auipc	ra,0x1
    80004d40:	804080e7          	jalr	-2044(ra) # 80005540 <_ZN9BufferCPPC1Ei>
    80004d44:	0300006f          	j	80004d74 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004d48:	00004517          	auipc	a0,0x4
    80004d4c:	3a050513          	addi	a0,a0,928 # 800090e8 <CONSOLE_STATUS+0xd8>
    80004d50:	00000097          	auipc	ra,0x0
    80004d54:	520080e7          	jalr	1312(ra) # 80005270 <_Z11printStringPKc>
        return;
    80004d58:	0140006f          	j	80004d6c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004d5c:	00004517          	auipc	a0,0x4
    80004d60:	3cc50513          	addi	a0,a0,972 # 80009128 <CONSOLE_STATUS+0x118>
    80004d64:	00000097          	auipc	ra,0x0
    80004d68:	50c080e7          	jalr	1292(ra) # 80005270 <_Z11printStringPKc>
        return;
    80004d6c:	000b8113          	mv	sp,s7
    80004d70:	2380006f          	j	80004fa8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004d74:	01000513          	li	a0,16
    80004d78:	ffffd097          	auipc	ra,0xffffd
    80004d7c:	300080e7          	jalr	768(ra) # 80002078 <_Znwm>
    80004d80:	00050493          	mv	s1,a0
    80004d84:	00000593          	li	a1,0
    80004d88:	ffffd097          	auipc	ra,0xffffd
    80004d8c:	4a8080e7          	jalr	1192(ra) # 80002230 <_ZN9SemaphoreC1Ej>
    80004d90:	00007797          	auipc	a5,0x7
    80004d94:	b497b423          	sd	s1,-1208(a5) # 8000b8d8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d98:	00391793          	slli	a5,s2,0x3
    80004d9c:	00f78793          	addi	a5,a5,15
    80004da0:	ff07f793          	andi	a5,a5,-16
    80004da4:	40f10133          	sub	sp,sp,a5
    80004da8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004dac:	0019071b          	addiw	a4,s2,1
    80004db0:	00171793          	slli	a5,a4,0x1
    80004db4:	00e787b3          	add	a5,a5,a4
    80004db8:	00379793          	slli	a5,a5,0x3
    80004dbc:	00f78793          	addi	a5,a5,15
    80004dc0:	ff07f793          	andi	a5,a5,-16
    80004dc4:	40f10133          	sub	sp,sp,a5
    80004dc8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004dcc:	00191c13          	slli	s8,s2,0x1
    80004dd0:	012c07b3          	add	a5,s8,s2
    80004dd4:	00379793          	slli	a5,a5,0x3
    80004dd8:	00fa07b3          	add	a5,s4,a5
    80004ddc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004de0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004de4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004de8:	02800513          	li	a0,40
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	28c080e7          	jalr	652(ra) # 80002078 <_Znwm>
    80004df4:	00050b13          	mv	s6,a0
    80004df8:	012c0c33          	add	s8,s8,s2
    80004dfc:	003c1c13          	slli	s8,s8,0x3
    80004e00:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004e04:	ffffd097          	auipc	ra,0xffffd
    80004e08:	404080e7          	jalr	1028(ra) # 80002208 <_ZN6ThreadC1Ev>
    80004e0c:	00007797          	auipc	a5,0x7
    80004e10:	98c78793          	addi	a5,a5,-1652 # 8000b798 <_ZTV12ConsumerSync+0x10>
    80004e14:	00fb3023          	sd	a5,0(s6)
    80004e18:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004e1c:	000b0513          	mv	a0,s6
    80004e20:	ffffd097          	auipc	ra,0xffffd
    80004e24:	364080e7          	jalr	868(ra) # 80002184 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e28:	00000493          	li	s1,0
    80004e2c:	0380006f          	j	80004e64 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e30:	00007797          	auipc	a5,0x7
    80004e34:	94078793          	addi	a5,a5,-1728 # 8000b770 <_ZTV12ProducerSync+0x10>
    80004e38:	00fcb023          	sd	a5,0(s9)
    80004e3c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004e40:	00349793          	slli	a5,s1,0x3
    80004e44:	00f987b3          	add	a5,s3,a5
    80004e48:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004e4c:	00349793          	slli	a5,s1,0x3
    80004e50:	00f987b3          	add	a5,s3,a5
    80004e54:	0007b503          	ld	a0,0(a5)
    80004e58:	ffffd097          	auipc	ra,0xffffd
    80004e5c:	32c080e7          	jalr	812(ra) # 80002184 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e60:	0014849b          	addiw	s1,s1,1
    80004e64:	0b24d063          	bge	s1,s2,80004f04 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004e68:	00149793          	slli	a5,s1,0x1
    80004e6c:	009787b3          	add	a5,a5,s1
    80004e70:	00379793          	slli	a5,a5,0x3
    80004e74:	00fa07b3          	add	a5,s4,a5
    80004e78:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004e7c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004e80:	00007717          	auipc	a4,0x7
    80004e84:	a5873703          	ld	a4,-1448(a4) # 8000b8d8 <_ZL10waitForAll>
    80004e88:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004e8c:	02905863          	blez	s1,80004ebc <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e90:	02800513          	li	a0,40
    80004e94:	ffffd097          	auipc	ra,0xffffd
    80004e98:	1e4080e7          	jalr	484(ra) # 80002078 <_Znwm>
    80004e9c:	00050c93          	mv	s9,a0
    80004ea0:	00149c13          	slli	s8,s1,0x1
    80004ea4:	009c0c33          	add	s8,s8,s1
    80004ea8:	003c1c13          	slli	s8,s8,0x3
    80004eac:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004eb0:	ffffd097          	auipc	ra,0xffffd
    80004eb4:	358080e7          	jalr	856(ra) # 80002208 <_ZN6ThreadC1Ev>
    80004eb8:	f79ff06f          	j	80004e30 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004ebc:	02800513          	li	a0,40
    80004ec0:	ffffd097          	auipc	ra,0xffffd
    80004ec4:	1b8080e7          	jalr	440(ra) # 80002078 <_Znwm>
    80004ec8:	00050c93          	mv	s9,a0
    80004ecc:	00149c13          	slli	s8,s1,0x1
    80004ed0:	009c0c33          	add	s8,s8,s1
    80004ed4:	003c1c13          	slli	s8,s8,0x3
    80004ed8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004edc:	ffffd097          	auipc	ra,0xffffd
    80004ee0:	32c080e7          	jalr	812(ra) # 80002208 <_ZN6ThreadC1Ev>
    80004ee4:	00007797          	auipc	a5,0x7
    80004ee8:	86478793          	addi	a5,a5,-1948 # 8000b748 <_ZTV16ProducerKeyboard+0x10>
    80004eec:	00fcb023          	sd	a5,0(s9)
    80004ef0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004ef4:	00349793          	slli	a5,s1,0x3
    80004ef8:	00f987b3          	add	a5,s3,a5
    80004efc:	0197b023          	sd	s9,0(a5)
    80004f00:	f4dff06f          	j	80004e4c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004f04:	ffffd097          	auipc	ra,0xffffd
    80004f08:	2b0080e7          	jalr	688(ra) # 800021b4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004f0c:	00000493          	li	s1,0
    80004f10:	00994e63          	blt	s2,s1,80004f2c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004f14:	00007517          	auipc	a0,0x7
    80004f18:	9c453503          	ld	a0,-1596(a0) # 8000b8d8 <_ZL10waitForAll>
    80004f1c:	ffffd097          	auipc	ra,0xffffd
    80004f20:	350080e7          	jalr	848(ra) # 8000226c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004f24:	0014849b          	addiw	s1,s1,1
    80004f28:	fe9ff06f          	j	80004f10 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004f2c:	00000493          	li	s1,0
    80004f30:	0080006f          	j	80004f38 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004f34:	0014849b          	addiw	s1,s1,1
    80004f38:	0324d263          	bge	s1,s2,80004f5c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004f3c:	00349793          	slli	a5,s1,0x3
    80004f40:	00f987b3          	add	a5,s3,a5
    80004f44:	0007b503          	ld	a0,0(a5)
    80004f48:	fe0506e3          	beqz	a0,80004f34 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004f4c:	00053783          	ld	a5,0(a0)
    80004f50:	0087b783          	ld	a5,8(a5)
    80004f54:	000780e7          	jalr	a5
    80004f58:	fddff06f          	j	80004f34 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004f5c:	000b0a63          	beqz	s6,80004f70 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004f60:	000b3783          	ld	a5,0(s6)
    80004f64:	0087b783          	ld	a5,8(a5)
    80004f68:	000b0513          	mv	a0,s6
    80004f6c:	000780e7          	jalr	a5
    delete waitForAll;
    80004f70:	00007517          	auipc	a0,0x7
    80004f74:	96853503          	ld	a0,-1688(a0) # 8000b8d8 <_ZL10waitForAll>
    80004f78:	00050863          	beqz	a0,80004f88 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004f7c:	00053783          	ld	a5,0(a0)
    80004f80:	0087b783          	ld	a5,8(a5)
    80004f84:	000780e7          	jalr	a5
    delete buffer;
    80004f88:	000a8e63          	beqz	s5,80004fa4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004f8c:	000a8513          	mv	a0,s5
    80004f90:	00001097          	auipc	ra,0x1
    80004f94:	8a8080e7          	jalr	-1880(ra) # 80005838 <_ZN9BufferCPPD1Ev>
    80004f98:	000a8513          	mv	a0,s5
    80004f9c:	ffffd097          	auipc	ra,0xffffd
    80004fa0:	104080e7          	jalr	260(ra) # 800020a0 <_ZdlPv>
    80004fa4:	000b8113          	mv	sp,s7

}
    80004fa8:	f8040113          	addi	sp,s0,-128
    80004fac:	07813083          	ld	ra,120(sp)
    80004fb0:	07013403          	ld	s0,112(sp)
    80004fb4:	06813483          	ld	s1,104(sp)
    80004fb8:	06013903          	ld	s2,96(sp)
    80004fbc:	05813983          	ld	s3,88(sp)
    80004fc0:	05013a03          	ld	s4,80(sp)
    80004fc4:	04813a83          	ld	s5,72(sp)
    80004fc8:	04013b03          	ld	s6,64(sp)
    80004fcc:	03813b83          	ld	s7,56(sp)
    80004fd0:	03013c03          	ld	s8,48(sp)
    80004fd4:	02813c83          	ld	s9,40(sp)
    80004fd8:	08010113          	addi	sp,sp,128
    80004fdc:	00008067          	ret
    80004fe0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004fe4:	000a8513          	mv	a0,s5
    80004fe8:	ffffd097          	auipc	ra,0xffffd
    80004fec:	0b8080e7          	jalr	184(ra) # 800020a0 <_ZdlPv>
    80004ff0:	00048513          	mv	a0,s1
    80004ff4:	00008097          	auipc	ra,0x8
    80004ff8:	9c4080e7          	jalr	-1596(ra) # 8000c9b8 <_Unwind_Resume>
    80004ffc:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005000:	00048513          	mv	a0,s1
    80005004:	ffffd097          	auipc	ra,0xffffd
    80005008:	09c080e7          	jalr	156(ra) # 800020a0 <_ZdlPv>
    8000500c:	00090513          	mv	a0,s2
    80005010:	00008097          	auipc	ra,0x8
    80005014:	9a8080e7          	jalr	-1624(ra) # 8000c9b8 <_Unwind_Resume>
    80005018:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000501c:	000b0513          	mv	a0,s6
    80005020:	ffffd097          	auipc	ra,0xffffd
    80005024:	080080e7          	jalr	128(ra) # 800020a0 <_ZdlPv>
    80005028:	00048513          	mv	a0,s1
    8000502c:	00008097          	auipc	ra,0x8
    80005030:	98c080e7          	jalr	-1652(ra) # 8000c9b8 <_Unwind_Resume>
    80005034:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005038:	000c8513          	mv	a0,s9
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	064080e7          	jalr	100(ra) # 800020a0 <_ZdlPv>
    80005044:	00048513          	mv	a0,s1
    80005048:	00008097          	auipc	ra,0x8
    8000504c:	970080e7          	jalr	-1680(ra) # 8000c9b8 <_Unwind_Resume>
    80005050:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005054:	000c8513          	mv	a0,s9
    80005058:	ffffd097          	auipc	ra,0xffffd
    8000505c:	048080e7          	jalr	72(ra) # 800020a0 <_ZdlPv>
    80005060:	00048513          	mv	a0,s1
    80005064:	00008097          	auipc	ra,0x8
    80005068:	954080e7          	jalr	-1708(ra) # 8000c9b8 <_Unwind_Resume>

000000008000506c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000506c:	ff010113          	addi	sp,sp,-16
    80005070:	00113423          	sd	ra,8(sp)
    80005074:	00813023          	sd	s0,0(sp)
    80005078:	01010413          	addi	s0,sp,16
    8000507c:	00006797          	auipc	a5,0x6
    80005080:	71c78793          	addi	a5,a5,1820 # 8000b798 <_ZTV12ConsumerSync+0x10>
    80005084:	00f53023          	sd	a5,0(a0)
    80005088:	ffffd097          	auipc	ra,0xffffd
    8000508c:	f58080e7          	jalr	-168(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80005090:	00813083          	ld	ra,8(sp)
    80005094:	00013403          	ld	s0,0(sp)
    80005098:	01010113          	addi	sp,sp,16
    8000509c:	00008067          	ret

00000000800050a0 <_ZN12ConsumerSyncD0Ev>:
    800050a0:	fe010113          	addi	sp,sp,-32
    800050a4:	00113c23          	sd	ra,24(sp)
    800050a8:	00813823          	sd	s0,16(sp)
    800050ac:	00913423          	sd	s1,8(sp)
    800050b0:	02010413          	addi	s0,sp,32
    800050b4:	00050493          	mv	s1,a0
    800050b8:	00006797          	auipc	a5,0x6
    800050bc:	6e078793          	addi	a5,a5,1760 # 8000b798 <_ZTV12ConsumerSync+0x10>
    800050c0:	00f53023          	sd	a5,0(a0)
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	f1c080e7          	jalr	-228(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    800050cc:	00048513          	mv	a0,s1
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	fd0080e7          	jalr	-48(ra) # 800020a0 <_ZdlPv>
    800050d8:	01813083          	ld	ra,24(sp)
    800050dc:	01013403          	ld	s0,16(sp)
    800050e0:	00813483          	ld	s1,8(sp)
    800050e4:	02010113          	addi	sp,sp,32
    800050e8:	00008067          	ret

00000000800050ec <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800050ec:	ff010113          	addi	sp,sp,-16
    800050f0:	00113423          	sd	ra,8(sp)
    800050f4:	00813023          	sd	s0,0(sp)
    800050f8:	01010413          	addi	s0,sp,16
    800050fc:	00006797          	auipc	a5,0x6
    80005100:	67478793          	addi	a5,a5,1652 # 8000b770 <_ZTV12ProducerSync+0x10>
    80005104:	00f53023          	sd	a5,0(a0)
    80005108:	ffffd097          	auipc	ra,0xffffd
    8000510c:	ed8080e7          	jalr	-296(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80005110:	00813083          	ld	ra,8(sp)
    80005114:	00013403          	ld	s0,0(sp)
    80005118:	01010113          	addi	sp,sp,16
    8000511c:	00008067          	ret

0000000080005120 <_ZN12ProducerSyncD0Ev>:
    80005120:	fe010113          	addi	sp,sp,-32
    80005124:	00113c23          	sd	ra,24(sp)
    80005128:	00813823          	sd	s0,16(sp)
    8000512c:	00913423          	sd	s1,8(sp)
    80005130:	02010413          	addi	s0,sp,32
    80005134:	00050493          	mv	s1,a0
    80005138:	00006797          	auipc	a5,0x6
    8000513c:	63878793          	addi	a5,a5,1592 # 8000b770 <_ZTV12ProducerSync+0x10>
    80005140:	00f53023          	sd	a5,0(a0)
    80005144:	ffffd097          	auipc	ra,0xffffd
    80005148:	e9c080e7          	jalr	-356(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    8000514c:	00048513          	mv	a0,s1
    80005150:	ffffd097          	auipc	ra,0xffffd
    80005154:	f50080e7          	jalr	-176(ra) # 800020a0 <_ZdlPv>
    80005158:	01813083          	ld	ra,24(sp)
    8000515c:	01013403          	ld	s0,16(sp)
    80005160:	00813483          	ld	s1,8(sp)
    80005164:	02010113          	addi	sp,sp,32
    80005168:	00008067          	ret

000000008000516c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000516c:	ff010113          	addi	sp,sp,-16
    80005170:	00113423          	sd	ra,8(sp)
    80005174:	00813023          	sd	s0,0(sp)
    80005178:	01010413          	addi	s0,sp,16
    8000517c:	00006797          	auipc	a5,0x6
    80005180:	5cc78793          	addi	a5,a5,1484 # 8000b748 <_ZTV16ProducerKeyboard+0x10>
    80005184:	00f53023          	sd	a5,0(a0)
    80005188:	ffffd097          	auipc	ra,0xffffd
    8000518c:	e58080e7          	jalr	-424(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    80005190:	00813083          	ld	ra,8(sp)
    80005194:	00013403          	ld	s0,0(sp)
    80005198:	01010113          	addi	sp,sp,16
    8000519c:	00008067          	ret

00000000800051a0 <_ZN16ProducerKeyboardD0Ev>:
    800051a0:	fe010113          	addi	sp,sp,-32
    800051a4:	00113c23          	sd	ra,24(sp)
    800051a8:	00813823          	sd	s0,16(sp)
    800051ac:	00913423          	sd	s1,8(sp)
    800051b0:	02010413          	addi	s0,sp,32
    800051b4:	00050493          	mv	s1,a0
    800051b8:	00006797          	auipc	a5,0x6
    800051bc:	59078793          	addi	a5,a5,1424 # 8000b748 <_ZTV16ProducerKeyboard+0x10>
    800051c0:	00f53023          	sd	a5,0(a0)
    800051c4:	ffffd097          	auipc	ra,0xffffd
    800051c8:	e1c080e7          	jalr	-484(ra) # 80001fe0 <_ZN6ThreadD1Ev>
    800051cc:	00048513          	mv	a0,s1
    800051d0:	ffffd097          	auipc	ra,0xffffd
    800051d4:	ed0080e7          	jalr	-304(ra) # 800020a0 <_ZdlPv>
    800051d8:	01813083          	ld	ra,24(sp)
    800051dc:	01013403          	ld	s0,16(sp)
    800051e0:	00813483          	ld	s1,8(sp)
    800051e4:	02010113          	addi	sp,sp,32
    800051e8:	00008067          	ret

00000000800051ec <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800051ec:	ff010113          	addi	sp,sp,-16
    800051f0:	00113423          	sd	ra,8(sp)
    800051f4:	00813023          	sd	s0,0(sp)
    800051f8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800051fc:	02053583          	ld	a1,32(a0)
    80005200:	fffff097          	auipc	ra,0xfffff
    80005204:	7e4080e7          	jalr	2020(ra) # 800049e4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005208:	00813083          	ld	ra,8(sp)
    8000520c:	00013403          	ld	s0,0(sp)
    80005210:	01010113          	addi	sp,sp,16
    80005214:	00008067          	ret

0000000080005218 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005218:	ff010113          	addi	sp,sp,-16
    8000521c:	00113423          	sd	ra,8(sp)
    80005220:	00813023          	sd	s0,0(sp)
    80005224:	01010413          	addi	s0,sp,16
        producer(td);
    80005228:	02053583          	ld	a1,32(a0)
    8000522c:	00000097          	auipc	ra,0x0
    80005230:	878080e7          	jalr	-1928(ra) # 80004aa4 <_ZN12ProducerSync8producerEPv>
    }
    80005234:	00813083          	ld	ra,8(sp)
    80005238:	00013403          	ld	s0,0(sp)
    8000523c:	01010113          	addi	sp,sp,16
    80005240:	00008067          	ret

0000000080005244 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005244:	ff010113          	addi	sp,sp,-16
    80005248:	00113423          	sd	ra,8(sp)
    8000524c:	00813023          	sd	s0,0(sp)
    80005250:	01010413          	addi	s0,sp,16
        consumer(td);
    80005254:	02053583          	ld	a1,32(a0)
    80005258:	00000097          	auipc	ra,0x0
    8000525c:	8e0080e7          	jalr	-1824(ra) # 80004b38 <_ZN12ConsumerSync8consumerEPv>
    }
    80005260:	00813083          	ld	ra,8(sp)
    80005264:	00013403          	ld	s0,0(sp)
    80005268:	01010113          	addi	sp,sp,16
    8000526c:	00008067          	ret

0000000080005270 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005270:	fe010113          	addi	sp,sp,-32
    80005274:	00113c23          	sd	ra,24(sp)
    80005278:	00813823          	sd	s0,16(sp)
    8000527c:	00913423          	sd	s1,8(sp)
    80005280:	02010413          	addi	s0,sp,32
    80005284:	00050493          	mv	s1,a0
    LOCK();
    80005288:	00100613          	li	a2,1
    8000528c:	00000593          	li	a1,0
    80005290:	00006517          	auipc	a0,0x6
    80005294:	65050513          	addi	a0,a0,1616 # 8000b8e0 <lockPrint>
    80005298:	ffffc097          	auipc	ra,0xffffc
    8000529c:	f84080e7          	jalr	-124(ra) # 8000121c <copy_and_swap>
    800052a0:	00050863          	beqz	a0,800052b0 <_Z11printStringPKc+0x40>
    800052a4:	ffffc097          	auipc	ra,0xffffc
    800052a8:	128080e7          	jalr	296(ra) # 800013cc <_Z15thread_dispatchv>
    800052ac:	fddff06f          	j	80005288 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800052b0:	0004c503          	lbu	a0,0(s1)
    800052b4:	00050a63          	beqz	a0,800052c8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800052b8:	ffffc097          	auipc	ra,0xffffc
    800052bc:	260080e7          	jalr	608(ra) # 80001518 <_Z4putcc>
        string++;
    800052c0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800052c4:	fedff06f          	j	800052b0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800052c8:	00000613          	li	a2,0
    800052cc:	00100593          	li	a1,1
    800052d0:	00006517          	auipc	a0,0x6
    800052d4:	61050513          	addi	a0,a0,1552 # 8000b8e0 <lockPrint>
    800052d8:	ffffc097          	auipc	ra,0xffffc
    800052dc:	f44080e7          	jalr	-188(ra) # 8000121c <copy_and_swap>
    800052e0:	fe0514e3          	bnez	a0,800052c8 <_Z11printStringPKc+0x58>
}
    800052e4:	01813083          	ld	ra,24(sp)
    800052e8:	01013403          	ld	s0,16(sp)
    800052ec:	00813483          	ld	s1,8(sp)
    800052f0:	02010113          	addi	sp,sp,32
    800052f4:	00008067          	ret

00000000800052f8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800052f8:	fd010113          	addi	sp,sp,-48
    800052fc:	02113423          	sd	ra,40(sp)
    80005300:	02813023          	sd	s0,32(sp)
    80005304:	00913c23          	sd	s1,24(sp)
    80005308:	01213823          	sd	s2,16(sp)
    8000530c:	01313423          	sd	s3,8(sp)
    80005310:	01413023          	sd	s4,0(sp)
    80005314:	03010413          	addi	s0,sp,48
    80005318:	00050993          	mv	s3,a0
    8000531c:	00058a13          	mv	s4,a1
    LOCK();
    80005320:	00100613          	li	a2,1
    80005324:	00000593          	li	a1,0
    80005328:	00006517          	auipc	a0,0x6
    8000532c:	5b850513          	addi	a0,a0,1464 # 8000b8e0 <lockPrint>
    80005330:	ffffc097          	auipc	ra,0xffffc
    80005334:	eec080e7          	jalr	-276(ra) # 8000121c <copy_and_swap>
    80005338:	00050863          	beqz	a0,80005348 <_Z9getStringPci+0x50>
    8000533c:	ffffc097          	auipc	ra,0xffffc
    80005340:	090080e7          	jalr	144(ra) # 800013cc <_Z15thread_dispatchv>
    80005344:	fddff06f          	j	80005320 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005348:	00000913          	li	s2,0
    8000534c:	00090493          	mv	s1,s2
    80005350:	0019091b          	addiw	s2,s2,1
    80005354:	03495a63          	bge	s2,s4,80005388 <_Z9getStringPci+0x90>
        cc = getc();
    80005358:	ffffc097          	auipc	ra,0xffffc
    8000535c:	174080e7          	jalr	372(ra) # 800014cc <_Z4getcv>
        if(cc < 1)
    80005360:	02050463          	beqz	a0,80005388 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005364:	009984b3          	add	s1,s3,s1
    80005368:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000536c:	00a00793          	li	a5,10
    80005370:	00f50a63          	beq	a0,a5,80005384 <_Z9getStringPci+0x8c>
    80005374:	00d00793          	li	a5,13
    80005378:	fcf51ae3          	bne	a0,a5,8000534c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000537c:	00090493          	mv	s1,s2
    80005380:	0080006f          	j	80005388 <_Z9getStringPci+0x90>
    80005384:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005388:	009984b3          	add	s1,s3,s1
    8000538c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005390:	00000613          	li	a2,0
    80005394:	00100593          	li	a1,1
    80005398:	00006517          	auipc	a0,0x6
    8000539c:	54850513          	addi	a0,a0,1352 # 8000b8e0 <lockPrint>
    800053a0:	ffffc097          	auipc	ra,0xffffc
    800053a4:	e7c080e7          	jalr	-388(ra) # 8000121c <copy_and_swap>
    800053a8:	fe0514e3          	bnez	a0,80005390 <_Z9getStringPci+0x98>
    return buf;
}
    800053ac:	00098513          	mv	a0,s3
    800053b0:	02813083          	ld	ra,40(sp)
    800053b4:	02013403          	ld	s0,32(sp)
    800053b8:	01813483          	ld	s1,24(sp)
    800053bc:	01013903          	ld	s2,16(sp)
    800053c0:	00813983          	ld	s3,8(sp)
    800053c4:	00013a03          	ld	s4,0(sp)
    800053c8:	03010113          	addi	sp,sp,48
    800053cc:	00008067          	ret

00000000800053d0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800053d0:	ff010113          	addi	sp,sp,-16
    800053d4:	00813423          	sd	s0,8(sp)
    800053d8:	01010413          	addi	s0,sp,16
    800053dc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800053e0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800053e4:	0006c603          	lbu	a2,0(a3)
    800053e8:	fd06071b          	addiw	a4,a2,-48
    800053ec:	0ff77713          	andi	a4,a4,255
    800053f0:	00900793          	li	a5,9
    800053f4:	02e7e063          	bltu	a5,a4,80005414 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800053f8:	0025179b          	slliw	a5,a0,0x2
    800053fc:	00a787bb          	addw	a5,a5,a0
    80005400:	0017979b          	slliw	a5,a5,0x1
    80005404:	00168693          	addi	a3,a3,1
    80005408:	00c787bb          	addw	a5,a5,a2
    8000540c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005410:	fd5ff06f          	j	800053e4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005414:	00813403          	ld	s0,8(sp)
    80005418:	01010113          	addi	sp,sp,16
    8000541c:	00008067          	ret

0000000080005420 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005420:	fc010113          	addi	sp,sp,-64
    80005424:	02113c23          	sd	ra,56(sp)
    80005428:	02813823          	sd	s0,48(sp)
    8000542c:	02913423          	sd	s1,40(sp)
    80005430:	03213023          	sd	s2,32(sp)
    80005434:	01313c23          	sd	s3,24(sp)
    80005438:	04010413          	addi	s0,sp,64
    8000543c:	00050493          	mv	s1,a0
    80005440:	00058913          	mv	s2,a1
    80005444:	00060993          	mv	s3,a2
    LOCK();
    80005448:	00100613          	li	a2,1
    8000544c:	00000593          	li	a1,0
    80005450:	00006517          	auipc	a0,0x6
    80005454:	49050513          	addi	a0,a0,1168 # 8000b8e0 <lockPrint>
    80005458:	ffffc097          	auipc	ra,0xffffc
    8000545c:	dc4080e7          	jalr	-572(ra) # 8000121c <copy_and_swap>
    80005460:	00050863          	beqz	a0,80005470 <_Z8printIntiii+0x50>
    80005464:	ffffc097          	auipc	ra,0xffffc
    80005468:	f68080e7          	jalr	-152(ra) # 800013cc <_Z15thread_dispatchv>
    8000546c:	fddff06f          	j	80005448 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005470:	00098463          	beqz	s3,80005478 <_Z8printIntiii+0x58>
    80005474:	0804c463          	bltz	s1,800054fc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005478:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000547c:	00000593          	li	a1,0
    }

    i = 0;
    80005480:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005484:	0009079b          	sext.w	a5,s2
    80005488:	0325773b          	remuw	a4,a0,s2
    8000548c:	00048613          	mv	a2,s1
    80005490:	0014849b          	addiw	s1,s1,1
    80005494:	02071693          	slli	a3,a4,0x20
    80005498:	0206d693          	srli	a3,a3,0x20
    8000549c:	00006717          	auipc	a4,0x6
    800054a0:	31470713          	addi	a4,a4,788 # 8000b7b0 <digits>
    800054a4:	00d70733          	add	a4,a4,a3
    800054a8:	00074683          	lbu	a3,0(a4)
    800054ac:	fd040713          	addi	a4,s0,-48
    800054b0:	00c70733          	add	a4,a4,a2
    800054b4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800054b8:	0005071b          	sext.w	a4,a0
    800054bc:	0325553b          	divuw	a0,a0,s2
    800054c0:	fcf772e3          	bgeu	a4,a5,80005484 <_Z8printIntiii+0x64>
    if(neg)
    800054c4:	00058c63          	beqz	a1,800054dc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800054c8:	fd040793          	addi	a5,s0,-48
    800054cc:	009784b3          	add	s1,a5,s1
    800054d0:	02d00793          	li	a5,45
    800054d4:	fef48823          	sb	a5,-16(s1)
    800054d8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800054dc:	fff4849b          	addiw	s1,s1,-1
    800054e0:	0204c463          	bltz	s1,80005508 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800054e4:	fd040793          	addi	a5,s0,-48
    800054e8:	009787b3          	add	a5,a5,s1
    800054ec:	ff07c503          	lbu	a0,-16(a5)
    800054f0:	ffffc097          	auipc	ra,0xffffc
    800054f4:	028080e7          	jalr	40(ra) # 80001518 <_Z4putcc>
    800054f8:	fe5ff06f          	j	800054dc <_Z8printIntiii+0xbc>
        x = -xx;
    800054fc:	4090053b          	negw	a0,s1
        neg = 1;
    80005500:	00100593          	li	a1,1
        x = -xx;
    80005504:	f7dff06f          	j	80005480 <_Z8printIntiii+0x60>

    UNLOCK();
    80005508:	00000613          	li	a2,0
    8000550c:	00100593          	li	a1,1
    80005510:	00006517          	auipc	a0,0x6
    80005514:	3d050513          	addi	a0,a0,976 # 8000b8e0 <lockPrint>
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	d04080e7          	jalr	-764(ra) # 8000121c <copy_and_swap>
    80005520:	fe0514e3          	bnez	a0,80005508 <_Z8printIntiii+0xe8>
    80005524:	03813083          	ld	ra,56(sp)
    80005528:	03013403          	ld	s0,48(sp)
    8000552c:	02813483          	ld	s1,40(sp)
    80005530:	02013903          	ld	s2,32(sp)
    80005534:	01813983          	ld	s3,24(sp)
    80005538:	04010113          	addi	sp,sp,64
    8000553c:	00008067          	ret

0000000080005540 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005540:	fd010113          	addi	sp,sp,-48
    80005544:	02113423          	sd	ra,40(sp)
    80005548:	02813023          	sd	s0,32(sp)
    8000554c:	00913c23          	sd	s1,24(sp)
    80005550:	01213823          	sd	s2,16(sp)
    80005554:	01313423          	sd	s3,8(sp)
    80005558:	03010413          	addi	s0,sp,48
    8000555c:	00050493          	mv	s1,a0
    80005560:	00058913          	mv	s2,a1
    80005564:	0015879b          	addiw	a5,a1,1
    80005568:	0007851b          	sext.w	a0,a5
    8000556c:	00f4a023          	sw	a5,0(s1)
    80005570:	0004a823          	sw	zero,16(s1)
    80005574:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005578:	00251513          	slli	a0,a0,0x2
    8000557c:	ffffc097          	auipc	ra,0xffffc
    80005580:	cdc080e7          	jalr	-804(ra) # 80001258 <_Z9mem_allocm>
    80005584:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005588:	01000513          	li	a0,16
    8000558c:	ffffd097          	auipc	ra,0xffffd
    80005590:	aec080e7          	jalr	-1300(ra) # 80002078 <_Znwm>
    80005594:	00050993          	mv	s3,a0
    80005598:	00000593          	li	a1,0
    8000559c:	ffffd097          	auipc	ra,0xffffd
    800055a0:	c94080e7          	jalr	-876(ra) # 80002230 <_ZN9SemaphoreC1Ej>
    800055a4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800055a8:	01000513          	li	a0,16
    800055ac:	ffffd097          	auipc	ra,0xffffd
    800055b0:	acc080e7          	jalr	-1332(ra) # 80002078 <_Znwm>
    800055b4:	00050993          	mv	s3,a0
    800055b8:	00090593          	mv	a1,s2
    800055bc:	ffffd097          	auipc	ra,0xffffd
    800055c0:	c74080e7          	jalr	-908(ra) # 80002230 <_ZN9SemaphoreC1Ej>
    800055c4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800055c8:	01000513          	li	a0,16
    800055cc:	ffffd097          	auipc	ra,0xffffd
    800055d0:	aac080e7          	jalr	-1364(ra) # 80002078 <_Znwm>
    800055d4:	00050913          	mv	s2,a0
    800055d8:	00100593          	li	a1,1
    800055dc:	ffffd097          	auipc	ra,0xffffd
    800055e0:	c54080e7          	jalr	-940(ra) # 80002230 <_ZN9SemaphoreC1Ej>
    800055e4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800055e8:	01000513          	li	a0,16
    800055ec:	ffffd097          	auipc	ra,0xffffd
    800055f0:	a8c080e7          	jalr	-1396(ra) # 80002078 <_Znwm>
    800055f4:	00050913          	mv	s2,a0
    800055f8:	00100593          	li	a1,1
    800055fc:	ffffd097          	auipc	ra,0xffffd
    80005600:	c34080e7          	jalr	-972(ra) # 80002230 <_ZN9SemaphoreC1Ej>
    80005604:	0324b823          	sd	s2,48(s1)
}
    80005608:	02813083          	ld	ra,40(sp)
    8000560c:	02013403          	ld	s0,32(sp)
    80005610:	01813483          	ld	s1,24(sp)
    80005614:	01013903          	ld	s2,16(sp)
    80005618:	00813983          	ld	s3,8(sp)
    8000561c:	03010113          	addi	sp,sp,48
    80005620:	00008067          	ret
    80005624:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005628:	00098513          	mv	a0,s3
    8000562c:	ffffd097          	auipc	ra,0xffffd
    80005630:	a74080e7          	jalr	-1420(ra) # 800020a0 <_ZdlPv>
    80005634:	00048513          	mv	a0,s1
    80005638:	00007097          	auipc	ra,0x7
    8000563c:	380080e7          	jalr	896(ra) # 8000c9b8 <_Unwind_Resume>
    80005640:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005644:	00098513          	mv	a0,s3
    80005648:	ffffd097          	auipc	ra,0xffffd
    8000564c:	a58080e7          	jalr	-1448(ra) # 800020a0 <_ZdlPv>
    80005650:	00048513          	mv	a0,s1
    80005654:	00007097          	auipc	ra,0x7
    80005658:	364080e7          	jalr	868(ra) # 8000c9b8 <_Unwind_Resume>
    8000565c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005660:	00090513          	mv	a0,s2
    80005664:	ffffd097          	auipc	ra,0xffffd
    80005668:	a3c080e7          	jalr	-1476(ra) # 800020a0 <_ZdlPv>
    8000566c:	00048513          	mv	a0,s1
    80005670:	00007097          	auipc	ra,0x7
    80005674:	348080e7          	jalr	840(ra) # 8000c9b8 <_Unwind_Resume>
    80005678:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000567c:	00090513          	mv	a0,s2
    80005680:	ffffd097          	auipc	ra,0xffffd
    80005684:	a20080e7          	jalr	-1504(ra) # 800020a0 <_ZdlPv>
    80005688:	00048513          	mv	a0,s1
    8000568c:	00007097          	auipc	ra,0x7
    80005690:	32c080e7          	jalr	812(ra) # 8000c9b8 <_Unwind_Resume>

0000000080005694 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005694:	fe010113          	addi	sp,sp,-32
    80005698:	00113c23          	sd	ra,24(sp)
    8000569c:	00813823          	sd	s0,16(sp)
    800056a0:	00913423          	sd	s1,8(sp)
    800056a4:	01213023          	sd	s2,0(sp)
    800056a8:	02010413          	addi	s0,sp,32
    800056ac:	00050493          	mv	s1,a0
    800056b0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800056b4:	01853503          	ld	a0,24(a0)
    800056b8:	ffffd097          	auipc	ra,0xffffd
    800056bc:	bb4080e7          	jalr	-1100(ra) # 8000226c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800056c0:	0304b503          	ld	a0,48(s1)
    800056c4:	ffffd097          	auipc	ra,0xffffd
    800056c8:	ba8080e7          	jalr	-1112(ra) # 8000226c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800056cc:	0084b783          	ld	a5,8(s1)
    800056d0:	0144a703          	lw	a4,20(s1)
    800056d4:	00271713          	slli	a4,a4,0x2
    800056d8:	00e787b3          	add	a5,a5,a4
    800056dc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800056e0:	0144a783          	lw	a5,20(s1)
    800056e4:	0017879b          	addiw	a5,a5,1
    800056e8:	0004a703          	lw	a4,0(s1)
    800056ec:	02e7e7bb          	remw	a5,a5,a4
    800056f0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800056f4:	0304b503          	ld	a0,48(s1)
    800056f8:	ffffd097          	auipc	ra,0xffffd
    800056fc:	bac080e7          	jalr	-1108(ra) # 800022a4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005700:	0204b503          	ld	a0,32(s1)
    80005704:	ffffd097          	auipc	ra,0xffffd
    80005708:	ba0080e7          	jalr	-1120(ra) # 800022a4 <_ZN9Semaphore6signalEv>

}
    8000570c:	01813083          	ld	ra,24(sp)
    80005710:	01013403          	ld	s0,16(sp)
    80005714:	00813483          	ld	s1,8(sp)
    80005718:	00013903          	ld	s2,0(sp)
    8000571c:	02010113          	addi	sp,sp,32
    80005720:	00008067          	ret

0000000080005724 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005724:	fe010113          	addi	sp,sp,-32
    80005728:	00113c23          	sd	ra,24(sp)
    8000572c:	00813823          	sd	s0,16(sp)
    80005730:	00913423          	sd	s1,8(sp)
    80005734:	01213023          	sd	s2,0(sp)
    80005738:	02010413          	addi	s0,sp,32
    8000573c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005740:	02053503          	ld	a0,32(a0)
    80005744:	ffffd097          	auipc	ra,0xffffd
    80005748:	b28080e7          	jalr	-1240(ra) # 8000226c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000574c:	0284b503          	ld	a0,40(s1)
    80005750:	ffffd097          	auipc	ra,0xffffd
    80005754:	b1c080e7          	jalr	-1252(ra) # 8000226c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005758:	0084b703          	ld	a4,8(s1)
    8000575c:	0104a783          	lw	a5,16(s1)
    80005760:	00279693          	slli	a3,a5,0x2
    80005764:	00d70733          	add	a4,a4,a3
    80005768:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000576c:	0017879b          	addiw	a5,a5,1
    80005770:	0004a703          	lw	a4,0(s1)
    80005774:	02e7e7bb          	remw	a5,a5,a4
    80005778:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000577c:	0284b503          	ld	a0,40(s1)
    80005780:	ffffd097          	auipc	ra,0xffffd
    80005784:	b24080e7          	jalr	-1244(ra) # 800022a4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005788:	0184b503          	ld	a0,24(s1)
    8000578c:	ffffd097          	auipc	ra,0xffffd
    80005790:	b18080e7          	jalr	-1256(ra) # 800022a4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005794:	00090513          	mv	a0,s2
    80005798:	01813083          	ld	ra,24(sp)
    8000579c:	01013403          	ld	s0,16(sp)
    800057a0:	00813483          	ld	s1,8(sp)
    800057a4:	00013903          	ld	s2,0(sp)
    800057a8:	02010113          	addi	sp,sp,32
    800057ac:	00008067          	ret

00000000800057b0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800057b0:	fe010113          	addi	sp,sp,-32
    800057b4:	00113c23          	sd	ra,24(sp)
    800057b8:	00813823          	sd	s0,16(sp)
    800057bc:	00913423          	sd	s1,8(sp)
    800057c0:	01213023          	sd	s2,0(sp)
    800057c4:	02010413          	addi	s0,sp,32
    800057c8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800057cc:	02853503          	ld	a0,40(a0)
    800057d0:	ffffd097          	auipc	ra,0xffffd
    800057d4:	a9c080e7          	jalr	-1380(ra) # 8000226c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800057d8:	0304b503          	ld	a0,48(s1)
    800057dc:	ffffd097          	auipc	ra,0xffffd
    800057e0:	a90080e7          	jalr	-1392(ra) # 8000226c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800057e4:	0144a783          	lw	a5,20(s1)
    800057e8:	0104a903          	lw	s2,16(s1)
    800057ec:	0327ce63          	blt	a5,s2,80005828 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800057f0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800057f4:	0304b503          	ld	a0,48(s1)
    800057f8:	ffffd097          	auipc	ra,0xffffd
    800057fc:	aac080e7          	jalr	-1364(ra) # 800022a4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005800:	0284b503          	ld	a0,40(s1)
    80005804:	ffffd097          	auipc	ra,0xffffd
    80005808:	aa0080e7          	jalr	-1376(ra) # 800022a4 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000580c:	00090513          	mv	a0,s2
    80005810:	01813083          	ld	ra,24(sp)
    80005814:	01013403          	ld	s0,16(sp)
    80005818:	00813483          	ld	s1,8(sp)
    8000581c:	00013903          	ld	s2,0(sp)
    80005820:	02010113          	addi	sp,sp,32
    80005824:	00008067          	ret
        ret = cap - head + tail;
    80005828:	0004a703          	lw	a4,0(s1)
    8000582c:	4127093b          	subw	s2,a4,s2
    80005830:	00f9093b          	addw	s2,s2,a5
    80005834:	fc1ff06f          	j	800057f4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005838 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005838:	fe010113          	addi	sp,sp,-32
    8000583c:	00113c23          	sd	ra,24(sp)
    80005840:	00813823          	sd	s0,16(sp)
    80005844:	00913423          	sd	s1,8(sp)
    80005848:	02010413          	addi	s0,sp,32
    8000584c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005850:	00a00513          	li	a0,10
    80005854:	ffffd097          	auipc	ra,0xffffd
    80005858:	b40080e7          	jalr	-1216(ra) # 80002394 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000585c:	00004517          	auipc	a0,0x4
    80005860:	9f450513          	addi	a0,a0,-1548 # 80009250 <CONSOLE_STATUS+0x240>
    80005864:	00000097          	auipc	ra,0x0
    80005868:	a0c080e7          	jalr	-1524(ra) # 80005270 <_Z11printStringPKc>
    while (getCnt()) {
    8000586c:	00048513          	mv	a0,s1
    80005870:	00000097          	auipc	ra,0x0
    80005874:	f40080e7          	jalr	-192(ra) # 800057b0 <_ZN9BufferCPP6getCntEv>
    80005878:	02050c63          	beqz	a0,800058b0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000587c:	0084b783          	ld	a5,8(s1)
    80005880:	0104a703          	lw	a4,16(s1)
    80005884:	00271713          	slli	a4,a4,0x2
    80005888:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000588c:	0007c503          	lbu	a0,0(a5)
    80005890:	ffffd097          	auipc	ra,0xffffd
    80005894:	b04080e7          	jalr	-1276(ra) # 80002394 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005898:	0104a783          	lw	a5,16(s1)
    8000589c:	0017879b          	addiw	a5,a5,1
    800058a0:	0004a703          	lw	a4,0(s1)
    800058a4:	02e7e7bb          	remw	a5,a5,a4
    800058a8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800058ac:	fc1ff06f          	j	8000586c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800058b0:	02100513          	li	a0,33
    800058b4:	ffffd097          	auipc	ra,0xffffd
    800058b8:	ae0080e7          	jalr	-1312(ra) # 80002394 <_ZN7Console4putcEc>
    Console::putc('\n');
    800058bc:	00a00513          	li	a0,10
    800058c0:	ffffd097          	auipc	ra,0xffffd
    800058c4:	ad4080e7          	jalr	-1324(ra) # 80002394 <_ZN7Console4putcEc>
    mem_free(buffer);
    800058c8:	0084b503          	ld	a0,8(s1)
    800058cc:	ffffc097          	auipc	ra,0xffffc
    800058d0:	9e0080e7          	jalr	-1568(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    800058d4:	0204b503          	ld	a0,32(s1)
    800058d8:	00050863          	beqz	a0,800058e8 <_ZN9BufferCPPD1Ev+0xb0>
    800058dc:	00053783          	ld	a5,0(a0)
    800058e0:	0087b783          	ld	a5,8(a5)
    800058e4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800058e8:	0184b503          	ld	a0,24(s1)
    800058ec:	00050863          	beqz	a0,800058fc <_ZN9BufferCPPD1Ev+0xc4>
    800058f0:	00053783          	ld	a5,0(a0)
    800058f4:	0087b783          	ld	a5,8(a5)
    800058f8:	000780e7          	jalr	a5
    delete mutexTail;
    800058fc:	0304b503          	ld	a0,48(s1)
    80005900:	00050863          	beqz	a0,80005910 <_ZN9BufferCPPD1Ev+0xd8>
    80005904:	00053783          	ld	a5,0(a0)
    80005908:	0087b783          	ld	a5,8(a5)
    8000590c:	000780e7          	jalr	a5
    delete mutexHead;
    80005910:	0284b503          	ld	a0,40(s1)
    80005914:	00050863          	beqz	a0,80005924 <_ZN9BufferCPPD1Ev+0xec>
    80005918:	00053783          	ld	a5,0(a0)
    8000591c:	0087b783          	ld	a5,8(a5)
    80005920:	000780e7          	jalr	a5
}
    80005924:	01813083          	ld	ra,24(sp)
    80005928:	01013403          	ld	s0,16(sp)
    8000592c:	00813483          	ld	s1,8(sp)
    80005930:	02010113          	addi	sp,sp,32
    80005934:	00008067          	ret

0000000080005938 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005938:	fe010113          	addi	sp,sp,-32
    8000593c:	00113c23          	sd	ra,24(sp)
    80005940:	00813823          	sd	s0,16(sp)
    80005944:	00913423          	sd	s1,8(sp)
    80005948:	01213023          	sd	s2,0(sp)
    8000594c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005950:	00004517          	auipc	a0,0x4
    80005954:	91850513          	addi	a0,a0,-1768 # 80009268 <CONSOLE_STATUS+0x258>
    80005958:	00000097          	auipc	ra,0x0
    8000595c:	918080e7          	jalr	-1768(ra) # 80005270 <_Z11printStringPKc>
    int test = getc() - '0';
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	b6c080e7          	jalr	-1172(ra) # 800014cc <_Z4getcv>
    80005968:	0005091b          	sext.w	s2,a0
    8000596c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005970:	ffffc097          	auipc	ra,0xffffc
    80005974:	b5c080e7          	jalr	-1188(ra) # 800014cc <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    80005978:	fcf9071b          	addiw	a4,s2,-49
    8000597c:	00100793          	li	a5,1
    80005980:	04e7f063          	bgeu	a5,a4,800059c0 <_Z8userMainv+0x88>
    80005984:	00700793          	li	a5,7
    80005988:	02f48c63          	beq	s1,a5,800059c0 <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    8000598c:	fcd9079b          	addiw	a5,s2,-51
    80005990:	00100693          	li	a3,1
    80005994:	04f6fa63          	bgeu	a3,a5,800059e8 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005998:	fcb9091b          	addiw	s2,s2,-53
    8000599c:	00100793          	li	a5,1
    800059a0:	0527fe63          	bgeu	a5,s2,800059fc <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800059a4:	00600793          	li	a5,6
    800059a8:	02e7f463          	bgeu	a5,a4,800059d0 <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    800059ac:	00004517          	auipc	a0,0x4
    800059b0:	96c50513          	addi	a0,a0,-1684 # 80009318 <CONSOLE_STATUS+0x308>
    800059b4:	00000097          	auipc	ra,0x0
    800059b8:	8bc080e7          	jalr	-1860(ra) # 80005270 <_Z11printStringPKc>
    800059bc:	0140006f          	j	800059d0 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    800059c0:	00004517          	auipc	a0,0x4
    800059c4:	8c850513          	addi	a0,a0,-1848 # 80009288 <CONSOLE_STATUS+0x278>
    800059c8:	00000097          	auipc	ra,0x0
    800059cc:	8a8080e7          	jalr	-1880(ra) # 80005270 <_Z11printStringPKc>
    }
    800059d0:	01813083          	ld	ra,24(sp)
    800059d4:	01013403          	ld	s0,16(sp)
    800059d8:	00813483          	ld	s1,8(sp)
    800059dc:	00013903          	ld	s2,0(sp)
    800059e0:	02010113          	addi	sp,sp,32
    800059e4:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    800059e8:	00004517          	auipc	a0,0x4
    800059ec:	8d050513          	addi	a0,a0,-1840 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800059f0:	00000097          	auipc	ra,0x0
    800059f4:	880080e7          	jalr	-1920(ra) # 80005270 <_Z11printStringPKc>
            return;
    800059f8:	fd9ff06f          	j	800059d0 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800059fc:	00004517          	auipc	a0,0x4
    80005a00:	8ec50513          	addi	a0,a0,-1812 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80005a04:	00000097          	auipc	ra,0x0
    80005a08:	86c080e7          	jalr	-1940(ra) # 80005270 <_Z11printStringPKc>
            return;
    80005a0c:	fc5ff06f          	j	800059d0 <_Z8userMainv+0x98>

0000000080005a10 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005a10:	fe010113          	addi	sp,sp,-32
    80005a14:	00113c23          	sd	ra,24(sp)
    80005a18:	00813823          	sd	s0,16(sp)
    80005a1c:	00913423          	sd	s1,8(sp)
    80005a20:	01213023          	sd	s2,0(sp)
    80005a24:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005a28:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005a2c:	00600493          	li	s1,6
    while (--i > 0) {
    80005a30:	fff4849b          	addiw	s1,s1,-1
    80005a34:	04905463          	blez	s1,80005a7c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a38:	00004517          	auipc	a0,0x4
    80005a3c:	90850513          	addi	a0,a0,-1784 # 80009340 <CONSOLE_STATUS+0x330>
    80005a40:	00000097          	auipc	ra,0x0
    80005a44:	830080e7          	jalr	-2000(ra) # 80005270 <_Z11printStringPKc>
        printInt(sleep_time);
    80005a48:	00000613          	li	a2,0
    80005a4c:	00a00593          	li	a1,10
    80005a50:	0009051b          	sext.w	a0,s2
    80005a54:	00000097          	auipc	ra,0x0
    80005a58:	9cc080e7          	jalr	-1588(ra) # 80005420 <_Z8printIntiii>
        printString(" !\n");
    80005a5c:	00004517          	auipc	a0,0x4
    80005a60:	8ec50513          	addi	a0,a0,-1812 # 80009348 <CONSOLE_STATUS+0x338>
    80005a64:	00000097          	auipc	ra,0x0
    80005a68:	80c080e7          	jalr	-2036(ra) # 80005270 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a6c:	00090513          	mv	a0,s2
    80005a70:	ffffc097          	auipc	ra,0xffffc
    80005a74:	a40080e7          	jalr	-1472(ra) # 800014b0 <_Z10time_sleepm>
    while (--i > 0) {
    80005a78:	fb9ff06f          	j	80005a30 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a7c:	00a00793          	li	a5,10
    80005a80:	02f95933          	divu	s2,s2,a5
    80005a84:	fff90913          	addi	s2,s2,-1
    80005a88:	00006797          	auipc	a5,0x6
    80005a8c:	e6078793          	addi	a5,a5,-416 # 8000b8e8 <_ZL8finished>
    80005a90:	01278933          	add	s2,a5,s2
    80005a94:	00100793          	li	a5,1
    80005a98:	00f90023          	sb	a5,0(s2)
}
    80005a9c:	01813083          	ld	ra,24(sp)
    80005aa0:	01013403          	ld	s0,16(sp)
    80005aa4:	00813483          	ld	s1,8(sp)
    80005aa8:	00013903          	ld	s2,0(sp)
    80005aac:	02010113          	addi	sp,sp,32
    80005ab0:	00008067          	ret

0000000080005ab4 <_Z12testSleepingv>:

void testSleeping() {
    80005ab4:	fc010113          	addi	sp,sp,-64
    80005ab8:	02113c23          	sd	ra,56(sp)
    80005abc:	02813823          	sd	s0,48(sp)
    80005ac0:	02913423          	sd	s1,40(sp)
    80005ac4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005ac8:	00a00793          	li	a5,10
    80005acc:	fcf43823          	sd	a5,-48(s0)
    80005ad0:	01400793          	li	a5,20
    80005ad4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ad8:	00000493          	li	s1,0
    80005adc:	02c0006f          	j	80005b08 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005ae0:	00349793          	slli	a5,s1,0x3
    80005ae4:	fd040613          	addi	a2,s0,-48
    80005ae8:	00f60633          	add	a2,a2,a5
    80005aec:	00000597          	auipc	a1,0x0
    80005af0:	f2458593          	addi	a1,a1,-220 # 80005a10 <_ZL9sleepyRunPv>
    80005af4:	fc040513          	addi	a0,s0,-64
    80005af8:	00f50533          	add	a0,a0,a5
    80005afc:	ffffb097          	auipc	ra,0xffffb
    80005b00:	7fc080e7          	jalr	2044(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b04:	0014849b          	addiw	s1,s1,1
    80005b08:	00100793          	li	a5,1
    80005b0c:	fc97dae3          	bge	a5,s1,80005ae0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005b10:	00006797          	auipc	a5,0x6
    80005b14:	dd87c783          	lbu	a5,-552(a5) # 8000b8e8 <_ZL8finished>
    80005b18:	fe078ce3          	beqz	a5,80005b10 <_Z12testSleepingv+0x5c>
    80005b1c:	00006797          	auipc	a5,0x6
    80005b20:	dcd7c783          	lbu	a5,-563(a5) # 8000b8e9 <_ZL8finished+0x1>
    80005b24:	fe0786e3          	beqz	a5,80005b10 <_Z12testSleepingv+0x5c>
}
    80005b28:	03813083          	ld	ra,56(sp)
    80005b2c:	03013403          	ld	s0,48(sp)
    80005b30:	02813483          	ld	s1,40(sp)
    80005b34:	04010113          	addi	sp,sp,64
    80005b38:	00008067          	ret

0000000080005b3c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005b3c:	fe010113          	addi	sp,sp,-32
    80005b40:	00113c23          	sd	ra,24(sp)
    80005b44:	00813823          	sd	s0,16(sp)
    80005b48:	00913423          	sd	s1,8(sp)
    80005b4c:	01213023          	sd	s2,0(sp)
    80005b50:	02010413          	addi	s0,sp,32
    80005b54:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b58:	00100793          	li	a5,1
    80005b5c:	02a7f863          	bgeu	a5,a0,80005b8c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b60:	00a00793          	li	a5,10
    80005b64:	02f577b3          	remu	a5,a0,a5
    80005b68:	02078e63          	beqz	a5,80005ba4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b6c:	fff48513          	addi	a0,s1,-1
    80005b70:	00000097          	auipc	ra,0x0
    80005b74:	fcc080e7          	jalr	-52(ra) # 80005b3c <_ZL9fibonaccim>
    80005b78:	00050913          	mv	s2,a0
    80005b7c:	ffe48513          	addi	a0,s1,-2
    80005b80:	00000097          	auipc	ra,0x0
    80005b84:	fbc080e7          	jalr	-68(ra) # 80005b3c <_ZL9fibonaccim>
    80005b88:	00a90533          	add	a0,s2,a0
}
    80005b8c:	01813083          	ld	ra,24(sp)
    80005b90:	01013403          	ld	s0,16(sp)
    80005b94:	00813483          	ld	s1,8(sp)
    80005b98:	00013903          	ld	s2,0(sp)
    80005b9c:	02010113          	addi	sp,sp,32
    80005ba0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005ba4:	ffffc097          	auipc	ra,0xffffc
    80005ba8:	828080e7          	jalr	-2008(ra) # 800013cc <_Z15thread_dispatchv>
    80005bac:	fc1ff06f          	j	80005b6c <_ZL9fibonaccim+0x30>

0000000080005bb0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005bb0:	fe010113          	addi	sp,sp,-32
    80005bb4:	00113c23          	sd	ra,24(sp)
    80005bb8:	00813823          	sd	s0,16(sp)
    80005bbc:	00913423          	sd	s1,8(sp)
    80005bc0:	01213023          	sd	s2,0(sp)
    80005bc4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005bc8:	00a00493          	li	s1,10
    80005bcc:	0400006f          	j	80005c0c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005bd0:	00003517          	auipc	a0,0x3
    80005bd4:	5e850513          	addi	a0,a0,1512 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005bd8:	fffff097          	auipc	ra,0xfffff
    80005bdc:	698080e7          	jalr	1688(ra) # 80005270 <_Z11printStringPKc>
    80005be0:	00000613          	li	a2,0
    80005be4:	00a00593          	li	a1,10
    80005be8:	00048513          	mv	a0,s1
    80005bec:	00000097          	auipc	ra,0x0
    80005bf0:	834080e7          	jalr	-1996(ra) # 80005420 <_Z8printIntiii>
    80005bf4:	00003517          	auipc	a0,0x3
    80005bf8:	4b450513          	addi	a0,a0,1204 # 800090a8 <CONSOLE_STATUS+0x98>
    80005bfc:	fffff097          	auipc	ra,0xfffff
    80005c00:	674080e7          	jalr	1652(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005c04:	0014849b          	addiw	s1,s1,1
    80005c08:	0ff4f493          	andi	s1,s1,255
    80005c0c:	00c00793          	li	a5,12
    80005c10:	fc97f0e3          	bgeu	a5,s1,80005bd0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005c14:	00003517          	auipc	a0,0x3
    80005c18:	5ac50513          	addi	a0,a0,1452 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005c1c:	fffff097          	auipc	ra,0xfffff
    80005c20:	654080e7          	jalr	1620(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005c24:	00500313          	li	t1,5
    thread_dispatch();
    80005c28:	ffffb097          	auipc	ra,0xffffb
    80005c2c:	7a4080e7          	jalr	1956(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005c30:	01000513          	li	a0,16
    80005c34:	00000097          	auipc	ra,0x0
    80005c38:	f08080e7          	jalr	-248(ra) # 80005b3c <_ZL9fibonaccim>
    80005c3c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c40:	00003517          	auipc	a0,0x3
    80005c44:	59050513          	addi	a0,a0,1424 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80005c48:	fffff097          	auipc	ra,0xfffff
    80005c4c:	628080e7          	jalr	1576(ra) # 80005270 <_Z11printStringPKc>
    80005c50:	00000613          	li	a2,0
    80005c54:	00a00593          	li	a1,10
    80005c58:	0009051b          	sext.w	a0,s2
    80005c5c:	fffff097          	auipc	ra,0xfffff
    80005c60:	7c4080e7          	jalr	1988(ra) # 80005420 <_Z8printIntiii>
    80005c64:	00003517          	auipc	a0,0x3
    80005c68:	44450513          	addi	a0,a0,1092 # 800090a8 <CONSOLE_STATUS+0x98>
    80005c6c:	fffff097          	auipc	ra,0xfffff
    80005c70:	604080e7          	jalr	1540(ra) # 80005270 <_Z11printStringPKc>
    80005c74:	0400006f          	j	80005cb4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c78:	00003517          	auipc	a0,0x3
    80005c7c:	54050513          	addi	a0,a0,1344 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005c80:	fffff097          	auipc	ra,0xfffff
    80005c84:	5f0080e7          	jalr	1520(ra) # 80005270 <_Z11printStringPKc>
    80005c88:	00000613          	li	a2,0
    80005c8c:	00a00593          	li	a1,10
    80005c90:	00048513          	mv	a0,s1
    80005c94:	fffff097          	auipc	ra,0xfffff
    80005c98:	78c080e7          	jalr	1932(ra) # 80005420 <_Z8printIntiii>
    80005c9c:	00003517          	auipc	a0,0x3
    80005ca0:	40c50513          	addi	a0,a0,1036 # 800090a8 <CONSOLE_STATUS+0x98>
    80005ca4:	fffff097          	auipc	ra,0xfffff
    80005ca8:	5cc080e7          	jalr	1484(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005cac:	0014849b          	addiw	s1,s1,1
    80005cb0:	0ff4f493          	andi	s1,s1,255
    80005cb4:	00f00793          	li	a5,15
    80005cb8:	fc97f0e3          	bgeu	a5,s1,80005c78 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005cbc:	00003517          	auipc	a0,0x3
    80005cc0:	52450513          	addi	a0,a0,1316 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80005cc4:	fffff097          	auipc	ra,0xfffff
    80005cc8:	5ac080e7          	jalr	1452(ra) # 80005270 <_Z11printStringPKc>
    finishedD = true;
    80005ccc:	00100793          	li	a5,1
    80005cd0:	00006717          	auipc	a4,0x6
    80005cd4:	c0f70d23          	sb	a5,-998(a4) # 8000b8ea <_ZL9finishedD>
    thread_dispatch();
    80005cd8:	ffffb097          	auipc	ra,0xffffb
    80005cdc:	6f4080e7          	jalr	1780(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005ce0:	01813083          	ld	ra,24(sp)
    80005ce4:	01013403          	ld	s0,16(sp)
    80005ce8:	00813483          	ld	s1,8(sp)
    80005cec:	00013903          	ld	s2,0(sp)
    80005cf0:	02010113          	addi	sp,sp,32
    80005cf4:	00008067          	ret

0000000080005cf8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005cf8:	fe010113          	addi	sp,sp,-32
    80005cfc:	00113c23          	sd	ra,24(sp)
    80005d00:	00813823          	sd	s0,16(sp)
    80005d04:	00913423          	sd	s1,8(sp)
    80005d08:	01213023          	sd	s2,0(sp)
    80005d0c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005d10:	00000493          	li	s1,0
    80005d14:	0400006f          	j	80005d54 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005d18:	00003517          	auipc	a0,0x3
    80005d1c:	47050513          	addi	a0,a0,1136 # 80009188 <CONSOLE_STATUS+0x178>
    80005d20:	fffff097          	auipc	ra,0xfffff
    80005d24:	550080e7          	jalr	1360(ra) # 80005270 <_Z11printStringPKc>
    80005d28:	00000613          	li	a2,0
    80005d2c:	00a00593          	li	a1,10
    80005d30:	00048513          	mv	a0,s1
    80005d34:	fffff097          	auipc	ra,0xfffff
    80005d38:	6ec080e7          	jalr	1772(ra) # 80005420 <_Z8printIntiii>
    80005d3c:	00003517          	auipc	a0,0x3
    80005d40:	36c50513          	addi	a0,a0,876 # 800090a8 <CONSOLE_STATUS+0x98>
    80005d44:	fffff097          	auipc	ra,0xfffff
    80005d48:	52c080e7          	jalr	1324(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005d4c:	0014849b          	addiw	s1,s1,1
    80005d50:	0ff4f493          	andi	s1,s1,255
    80005d54:	00200793          	li	a5,2
    80005d58:	fc97f0e3          	bgeu	a5,s1,80005d18 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d5c:	00003517          	auipc	a0,0x3
    80005d60:	43450513          	addi	a0,a0,1076 # 80009190 <CONSOLE_STATUS+0x180>
    80005d64:	fffff097          	auipc	ra,0xfffff
    80005d68:	50c080e7          	jalr	1292(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d6c:	00700313          	li	t1,7
    thread_dispatch();
    80005d70:	ffffb097          	auipc	ra,0xffffb
    80005d74:	65c080e7          	jalr	1628(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005d78:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005d7c:	00003517          	auipc	a0,0x3
    80005d80:	42450513          	addi	a0,a0,1060 # 800091a0 <CONSOLE_STATUS+0x190>
    80005d84:	fffff097          	auipc	ra,0xfffff
    80005d88:	4ec080e7          	jalr	1260(ra) # 80005270 <_Z11printStringPKc>
    80005d8c:	00000613          	li	a2,0
    80005d90:	00a00593          	li	a1,10
    80005d94:	0009051b          	sext.w	a0,s2
    80005d98:	fffff097          	auipc	ra,0xfffff
    80005d9c:	688080e7          	jalr	1672(ra) # 80005420 <_Z8printIntiii>
    80005da0:	00003517          	auipc	a0,0x3
    80005da4:	30850513          	addi	a0,a0,776 # 800090a8 <CONSOLE_STATUS+0x98>
    80005da8:	fffff097          	auipc	ra,0xfffff
    80005dac:	4c8080e7          	jalr	1224(ra) # 80005270 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005db0:	00c00513          	li	a0,12
    80005db4:	00000097          	auipc	ra,0x0
    80005db8:	d88080e7          	jalr	-632(ra) # 80005b3c <_ZL9fibonaccim>
    80005dbc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005dc0:	00003517          	auipc	a0,0x3
    80005dc4:	3e850513          	addi	a0,a0,1000 # 800091a8 <CONSOLE_STATUS+0x198>
    80005dc8:	fffff097          	auipc	ra,0xfffff
    80005dcc:	4a8080e7          	jalr	1192(ra) # 80005270 <_Z11printStringPKc>
    80005dd0:	00000613          	li	a2,0
    80005dd4:	00a00593          	li	a1,10
    80005dd8:	0009051b          	sext.w	a0,s2
    80005ddc:	fffff097          	auipc	ra,0xfffff
    80005de0:	644080e7          	jalr	1604(ra) # 80005420 <_Z8printIntiii>
    80005de4:	00003517          	auipc	a0,0x3
    80005de8:	2c450513          	addi	a0,a0,708 # 800090a8 <CONSOLE_STATUS+0x98>
    80005dec:	fffff097          	auipc	ra,0xfffff
    80005df0:	484080e7          	jalr	1156(ra) # 80005270 <_Z11printStringPKc>
    80005df4:	0400006f          	j	80005e34 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005df8:	00003517          	auipc	a0,0x3
    80005dfc:	39050513          	addi	a0,a0,912 # 80009188 <CONSOLE_STATUS+0x178>
    80005e00:	fffff097          	auipc	ra,0xfffff
    80005e04:	470080e7          	jalr	1136(ra) # 80005270 <_Z11printStringPKc>
    80005e08:	00000613          	li	a2,0
    80005e0c:	00a00593          	li	a1,10
    80005e10:	00048513          	mv	a0,s1
    80005e14:	fffff097          	auipc	ra,0xfffff
    80005e18:	60c080e7          	jalr	1548(ra) # 80005420 <_Z8printIntiii>
    80005e1c:	00003517          	auipc	a0,0x3
    80005e20:	28c50513          	addi	a0,a0,652 # 800090a8 <CONSOLE_STATUS+0x98>
    80005e24:	fffff097          	auipc	ra,0xfffff
    80005e28:	44c080e7          	jalr	1100(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005e2c:	0014849b          	addiw	s1,s1,1
    80005e30:	0ff4f493          	andi	s1,s1,255
    80005e34:	00500793          	li	a5,5
    80005e38:	fc97f0e3          	bgeu	a5,s1,80005df8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005e3c:	00003517          	auipc	a0,0x3
    80005e40:	32450513          	addi	a0,a0,804 # 80009160 <CONSOLE_STATUS+0x150>
    80005e44:	fffff097          	auipc	ra,0xfffff
    80005e48:	42c080e7          	jalr	1068(ra) # 80005270 <_Z11printStringPKc>
    finishedC = true;
    80005e4c:	00100793          	li	a5,1
    80005e50:	00006717          	auipc	a4,0x6
    80005e54:	a8f70da3          	sb	a5,-1381(a4) # 8000b8eb <_ZL9finishedC>
    thread_dispatch();
    80005e58:	ffffb097          	auipc	ra,0xffffb
    80005e5c:	574080e7          	jalr	1396(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005e60:	01813083          	ld	ra,24(sp)
    80005e64:	01013403          	ld	s0,16(sp)
    80005e68:	00813483          	ld	s1,8(sp)
    80005e6c:	00013903          	ld	s2,0(sp)
    80005e70:	02010113          	addi	sp,sp,32
    80005e74:	00008067          	ret

0000000080005e78 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005e78:	fe010113          	addi	sp,sp,-32
    80005e7c:	00113c23          	sd	ra,24(sp)
    80005e80:	00813823          	sd	s0,16(sp)
    80005e84:	00913423          	sd	s1,8(sp)
    80005e88:	01213023          	sd	s2,0(sp)
    80005e8c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005e90:	00000913          	li	s2,0
    80005e94:	0400006f          	j	80005ed4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005e98:	ffffb097          	auipc	ra,0xffffb
    80005e9c:	534080e7          	jalr	1332(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005ea0:	00148493          	addi	s1,s1,1
    80005ea4:	000027b7          	lui	a5,0x2
    80005ea8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005eac:	0097ee63          	bltu	a5,s1,80005ec8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005eb0:	00000713          	li	a4,0
    80005eb4:	000077b7          	lui	a5,0x7
    80005eb8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005ebc:	fce7eee3          	bltu	a5,a4,80005e98 <_ZL11workerBodyBPv+0x20>
    80005ec0:	00170713          	addi	a4,a4,1
    80005ec4:	ff1ff06f          	j	80005eb4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005ec8:	00a00793          	li	a5,10
    80005ecc:	04f90663          	beq	s2,a5,80005f18 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005ed0:	00190913          	addi	s2,s2,1
    80005ed4:	00f00793          	li	a5,15
    80005ed8:	0527e463          	bltu	a5,s2,80005f20 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005edc:	00003517          	auipc	a0,0x3
    80005ee0:	29450513          	addi	a0,a0,660 # 80009170 <CONSOLE_STATUS+0x160>
    80005ee4:	fffff097          	auipc	ra,0xfffff
    80005ee8:	38c080e7          	jalr	908(ra) # 80005270 <_Z11printStringPKc>
    80005eec:	00000613          	li	a2,0
    80005ef0:	00a00593          	li	a1,10
    80005ef4:	0009051b          	sext.w	a0,s2
    80005ef8:	fffff097          	auipc	ra,0xfffff
    80005efc:	528080e7          	jalr	1320(ra) # 80005420 <_Z8printIntiii>
    80005f00:	00003517          	auipc	a0,0x3
    80005f04:	1a850513          	addi	a0,a0,424 # 800090a8 <CONSOLE_STATUS+0x98>
    80005f08:	fffff097          	auipc	ra,0xfffff
    80005f0c:	368080e7          	jalr	872(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f10:	00000493          	li	s1,0
    80005f14:	f91ff06f          	j	80005ea4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005f18:	14102ff3          	csrr	t6,sepc
    80005f1c:	fb5ff06f          	j	80005ed0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005f20:	00003517          	auipc	a0,0x3
    80005f24:	25850513          	addi	a0,a0,600 # 80009178 <CONSOLE_STATUS+0x168>
    80005f28:	fffff097          	auipc	ra,0xfffff
    80005f2c:	348080e7          	jalr	840(ra) # 80005270 <_Z11printStringPKc>
    finishedB = true;
    80005f30:	00100793          	li	a5,1
    80005f34:	00006717          	auipc	a4,0x6
    80005f38:	9af70c23          	sb	a5,-1608(a4) # 8000b8ec <_ZL9finishedB>
    thread_dispatch();
    80005f3c:	ffffb097          	auipc	ra,0xffffb
    80005f40:	490080e7          	jalr	1168(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005f44:	01813083          	ld	ra,24(sp)
    80005f48:	01013403          	ld	s0,16(sp)
    80005f4c:	00813483          	ld	s1,8(sp)
    80005f50:	00013903          	ld	s2,0(sp)
    80005f54:	02010113          	addi	sp,sp,32
    80005f58:	00008067          	ret

0000000080005f5c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f5c:	fe010113          	addi	sp,sp,-32
    80005f60:	00113c23          	sd	ra,24(sp)
    80005f64:	00813823          	sd	s0,16(sp)
    80005f68:	00913423          	sd	s1,8(sp)
    80005f6c:	01213023          	sd	s2,0(sp)
    80005f70:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f74:	00000913          	li	s2,0
    80005f78:	0380006f          	j	80005fb0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005f7c:	ffffb097          	auipc	ra,0xffffb
    80005f80:	450080e7          	jalr	1104(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f84:	00148493          	addi	s1,s1,1
    80005f88:	000027b7          	lui	a5,0x2
    80005f8c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f90:	0097ee63          	bltu	a5,s1,80005fac <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005f94:	00000713          	li	a4,0
    80005f98:	000077b7          	lui	a5,0x7
    80005f9c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005fa0:	fce7eee3          	bltu	a5,a4,80005f7c <_ZL11workerBodyAPv+0x20>
    80005fa4:	00170713          	addi	a4,a4,1
    80005fa8:	ff1ff06f          	j	80005f98 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005fac:	00190913          	addi	s2,s2,1
    80005fb0:	00900793          	li	a5,9
    80005fb4:	0527e063          	bltu	a5,s2,80005ff4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005fb8:	00003517          	auipc	a0,0x3
    80005fbc:	1a050513          	addi	a0,a0,416 # 80009158 <CONSOLE_STATUS+0x148>
    80005fc0:	fffff097          	auipc	ra,0xfffff
    80005fc4:	2b0080e7          	jalr	688(ra) # 80005270 <_Z11printStringPKc>
    80005fc8:	00000613          	li	a2,0
    80005fcc:	00a00593          	li	a1,10
    80005fd0:	0009051b          	sext.w	a0,s2
    80005fd4:	fffff097          	auipc	ra,0xfffff
    80005fd8:	44c080e7          	jalr	1100(ra) # 80005420 <_Z8printIntiii>
    80005fdc:	00003517          	auipc	a0,0x3
    80005fe0:	0cc50513          	addi	a0,a0,204 # 800090a8 <CONSOLE_STATUS+0x98>
    80005fe4:	fffff097          	auipc	ra,0xfffff
    80005fe8:	28c080e7          	jalr	652(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005fec:	00000493          	li	s1,0
    80005ff0:	f99ff06f          	j	80005f88 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005ff4:	00003517          	auipc	a0,0x3
    80005ff8:	16c50513          	addi	a0,a0,364 # 80009160 <CONSOLE_STATUS+0x150>
    80005ffc:	fffff097          	auipc	ra,0xfffff
    80006000:	274080e7          	jalr	628(ra) # 80005270 <_Z11printStringPKc>
    finishedA = true;
    80006004:	00100793          	li	a5,1
    80006008:	00006717          	auipc	a4,0x6
    8000600c:	8ef702a3          	sb	a5,-1819(a4) # 8000b8ed <_ZL9finishedA>
}
    80006010:	01813083          	ld	ra,24(sp)
    80006014:	01013403          	ld	s0,16(sp)
    80006018:	00813483          	ld	s1,8(sp)
    8000601c:	00013903          	ld	s2,0(sp)
    80006020:	02010113          	addi	sp,sp,32
    80006024:	00008067          	ret

0000000080006028 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006028:	fd010113          	addi	sp,sp,-48
    8000602c:	02113423          	sd	ra,40(sp)
    80006030:	02813023          	sd	s0,32(sp)
    80006034:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006038:	00000613          	li	a2,0
    8000603c:	00000597          	auipc	a1,0x0
    80006040:	f2058593          	addi	a1,a1,-224 # 80005f5c <_ZL11workerBodyAPv>
    80006044:	fd040513          	addi	a0,s0,-48
    80006048:	ffffb097          	auipc	ra,0xffffb
    8000604c:	2b0080e7          	jalr	688(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006050:	00003517          	auipc	a0,0x3
    80006054:	1a050513          	addi	a0,a0,416 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80006058:	fffff097          	auipc	ra,0xfffff
    8000605c:	218080e7          	jalr	536(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006060:	00000613          	li	a2,0
    80006064:	00000597          	auipc	a1,0x0
    80006068:	e1458593          	addi	a1,a1,-492 # 80005e78 <_ZL11workerBodyBPv>
    8000606c:	fd840513          	addi	a0,s0,-40
    80006070:	ffffb097          	auipc	ra,0xffffb
    80006074:	288080e7          	jalr	648(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006078:	00003517          	auipc	a0,0x3
    8000607c:	19050513          	addi	a0,a0,400 # 80009208 <CONSOLE_STATUS+0x1f8>
    80006080:	fffff097          	auipc	ra,0xfffff
    80006084:	1f0080e7          	jalr	496(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006088:	00000613          	li	a2,0
    8000608c:	00000597          	auipc	a1,0x0
    80006090:	c6c58593          	addi	a1,a1,-916 # 80005cf8 <_ZL11workerBodyCPv>
    80006094:	fe040513          	addi	a0,s0,-32
    80006098:	ffffb097          	auipc	ra,0xffffb
    8000609c:	260080e7          	jalr	608(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800060a0:	00003517          	auipc	a0,0x3
    800060a4:	18050513          	addi	a0,a0,384 # 80009220 <CONSOLE_STATUS+0x210>
    800060a8:	fffff097          	auipc	ra,0xfffff
    800060ac:	1c8080e7          	jalr	456(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800060b0:	00000613          	li	a2,0
    800060b4:	00000597          	auipc	a1,0x0
    800060b8:	afc58593          	addi	a1,a1,-1284 # 80005bb0 <_ZL11workerBodyDPv>
    800060bc:	fe840513          	addi	a0,s0,-24
    800060c0:	ffffb097          	auipc	ra,0xffffb
    800060c4:	238080e7          	jalr	568(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800060c8:	00003517          	auipc	a0,0x3
    800060cc:	17050513          	addi	a0,a0,368 # 80009238 <CONSOLE_STATUS+0x228>
    800060d0:	fffff097          	auipc	ra,0xfffff
    800060d4:	1a0080e7          	jalr	416(ra) # 80005270 <_Z11printStringPKc>
    800060d8:	00c0006f          	j	800060e4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800060dc:	ffffb097          	auipc	ra,0xffffb
    800060e0:	2f0080e7          	jalr	752(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800060e4:	00006797          	auipc	a5,0x6
    800060e8:	8097c783          	lbu	a5,-2039(a5) # 8000b8ed <_ZL9finishedA>
    800060ec:	fe0788e3          	beqz	a5,800060dc <_Z16System_Mode_testv+0xb4>
    800060f0:	00005797          	auipc	a5,0x5
    800060f4:	7fc7c783          	lbu	a5,2044(a5) # 8000b8ec <_ZL9finishedB>
    800060f8:	fe0782e3          	beqz	a5,800060dc <_Z16System_Mode_testv+0xb4>
    800060fc:	00005797          	auipc	a5,0x5
    80006100:	7ef7c783          	lbu	a5,2031(a5) # 8000b8eb <_ZL9finishedC>
    80006104:	fc078ce3          	beqz	a5,800060dc <_Z16System_Mode_testv+0xb4>
    80006108:	00005797          	auipc	a5,0x5
    8000610c:	7e27c783          	lbu	a5,2018(a5) # 8000b8ea <_ZL9finishedD>
    80006110:	fc0786e3          	beqz	a5,800060dc <_Z16System_Mode_testv+0xb4>
    }

}
    80006114:	02813083          	ld	ra,40(sp)
    80006118:	02013403          	ld	s0,32(sp)
    8000611c:	03010113          	addi	sp,sp,48
    80006120:	00008067          	ret

0000000080006124 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006124:	fe010113          	addi	sp,sp,-32
    80006128:	00113c23          	sd	ra,24(sp)
    8000612c:	00813823          	sd	s0,16(sp)
    80006130:	00913423          	sd	s1,8(sp)
    80006134:	01213023          	sd	s2,0(sp)
    80006138:	02010413          	addi	s0,sp,32
    8000613c:	00050493          	mv	s1,a0
    80006140:	00058913          	mv	s2,a1
    80006144:	0015879b          	addiw	a5,a1,1
    80006148:	0007851b          	sext.w	a0,a5
    8000614c:	00f4a023          	sw	a5,0(s1)
    80006150:	0004a823          	sw	zero,16(s1)
    80006154:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006158:	00251513          	slli	a0,a0,0x2
    8000615c:	ffffb097          	auipc	ra,0xffffb
    80006160:	0fc080e7          	jalr	252(ra) # 80001258 <_Z9mem_allocm>
    80006164:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006168:	00000593          	li	a1,0
    8000616c:	02048513          	addi	a0,s1,32
    80006170:	ffffb097          	auipc	ra,0xffffb
    80006174:	298080e7          	jalr	664(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006178:	00090593          	mv	a1,s2
    8000617c:	01848513          	addi	a0,s1,24
    80006180:	ffffb097          	auipc	ra,0xffffb
    80006184:	288080e7          	jalr	648(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006188:	00100593          	li	a1,1
    8000618c:	02848513          	addi	a0,s1,40
    80006190:	ffffb097          	auipc	ra,0xffffb
    80006194:	278080e7          	jalr	632(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006198:	00100593          	li	a1,1
    8000619c:	03048513          	addi	a0,s1,48
    800061a0:	ffffb097          	auipc	ra,0xffffb
    800061a4:	268080e7          	jalr	616(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    800061a8:	01813083          	ld	ra,24(sp)
    800061ac:	01013403          	ld	s0,16(sp)
    800061b0:	00813483          	ld	s1,8(sp)
    800061b4:	00013903          	ld	s2,0(sp)
    800061b8:	02010113          	addi	sp,sp,32
    800061bc:	00008067          	ret

00000000800061c0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800061c0:	fe010113          	addi	sp,sp,-32
    800061c4:	00113c23          	sd	ra,24(sp)
    800061c8:	00813823          	sd	s0,16(sp)
    800061cc:	00913423          	sd	s1,8(sp)
    800061d0:	01213023          	sd	s2,0(sp)
    800061d4:	02010413          	addi	s0,sp,32
    800061d8:	00050493          	mv	s1,a0
    800061dc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800061e0:	01853503          	ld	a0,24(a0)
    800061e4:	ffffb097          	auipc	ra,0xffffb
    800061e8:	25c080e7          	jalr	604(ra) # 80001440 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    800061ec:	0304b503          	ld	a0,48(s1)
    800061f0:	ffffb097          	auipc	ra,0xffffb
    800061f4:	250080e7          	jalr	592(ra) # 80001440 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    800061f8:	0084b783          	ld	a5,8(s1)
    800061fc:	0144a703          	lw	a4,20(s1)
    80006200:	00271713          	slli	a4,a4,0x2
    80006204:	00e787b3          	add	a5,a5,a4
    80006208:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000620c:	0144a783          	lw	a5,20(s1)
    80006210:	0017879b          	addiw	a5,a5,1
    80006214:	0004a703          	lw	a4,0(s1)
    80006218:	02e7e7bb          	remw	a5,a5,a4
    8000621c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006220:	0304b503          	ld	a0,48(s1)
    80006224:	ffffb097          	auipc	ra,0xffffb
    80006228:	238080e7          	jalr	568(ra) # 8000145c <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    8000622c:	0204b503          	ld	a0,32(s1)
    80006230:	ffffb097          	auipc	ra,0xffffb
    80006234:	22c080e7          	jalr	556(ra) # 8000145c <_Z10sem_signalP3Sem>

}
    80006238:	01813083          	ld	ra,24(sp)
    8000623c:	01013403          	ld	s0,16(sp)
    80006240:	00813483          	ld	s1,8(sp)
    80006244:	00013903          	ld	s2,0(sp)
    80006248:	02010113          	addi	sp,sp,32
    8000624c:	00008067          	ret

0000000080006250 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006250:	fe010113          	addi	sp,sp,-32
    80006254:	00113c23          	sd	ra,24(sp)
    80006258:	00813823          	sd	s0,16(sp)
    8000625c:	00913423          	sd	s1,8(sp)
    80006260:	01213023          	sd	s2,0(sp)
    80006264:	02010413          	addi	s0,sp,32
    80006268:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000626c:	02053503          	ld	a0,32(a0)
    80006270:	ffffb097          	auipc	ra,0xffffb
    80006274:	1d0080e7          	jalr	464(ra) # 80001440 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006278:	0284b503          	ld	a0,40(s1)
    8000627c:	ffffb097          	auipc	ra,0xffffb
    80006280:	1c4080e7          	jalr	452(ra) # 80001440 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006284:	0084b703          	ld	a4,8(s1)
    80006288:	0104a783          	lw	a5,16(s1)
    8000628c:	00279693          	slli	a3,a5,0x2
    80006290:	00d70733          	add	a4,a4,a3
    80006294:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006298:	0017879b          	addiw	a5,a5,1
    8000629c:	0004a703          	lw	a4,0(s1)
    800062a0:	02e7e7bb          	remw	a5,a5,a4
    800062a4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800062a8:	0284b503          	ld	a0,40(s1)
    800062ac:	ffffb097          	auipc	ra,0xffffb
    800062b0:	1b0080e7          	jalr	432(ra) # 8000145c <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    800062b4:	0184b503          	ld	a0,24(s1)
    800062b8:	ffffb097          	auipc	ra,0xffffb
    800062bc:	1a4080e7          	jalr	420(ra) # 8000145c <_Z10sem_signalP3Sem>

    return ret;
}
    800062c0:	00090513          	mv	a0,s2
    800062c4:	01813083          	ld	ra,24(sp)
    800062c8:	01013403          	ld	s0,16(sp)
    800062cc:	00813483          	ld	s1,8(sp)
    800062d0:	00013903          	ld	s2,0(sp)
    800062d4:	02010113          	addi	sp,sp,32
    800062d8:	00008067          	ret

00000000800062dc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800062dc:	fe010113          	addi	sp,sp,-32
    800062e0:	00113c23          	sd	ra,24(sp)
    800062e4:	00813823          	sd	s0,16(sp)
    800062e8:	00913423          	sd	s1,8(sp)
    800062ec:	01213023          	sd	s2,0(sp)
    800062f0:	02010413          	addi	s0,sp,32
    800062f4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800062f8:	02853503          	ld	a0,40(a0)
    800062fc:	ffffb097          	auipc	ra,0xffffb
    80006300:	144080e7          	jalr	324(ra) # 80001440 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80006304:	0304b503          	ld	a0,48(s1)
    80006308:	ffffb097          	auipc	ra,0xffffb
    8000630c:	138080e7          	jalr	312(ra) # 80001440 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80006310:	0144a783          	lw	a5,20(s1)
    80006314:	0104a903          	lw	s2,16(s1)
    80006318:	0327ce63          	blt	a5,s2,80006354 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000631c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006320:	0304b503          	ld	a0,48(s1)
    80006324:	ffffb097          	auipc	ra,0xffffb
    80006328:	138080e7          	jalr	312(ra) # 8000145c <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    8000632c:	0284b503          	ld	a0,40(s1)
    80006330:	ffffb097          	auipc	ra,0xffffb
    80006334:	12c080e7          	jalr	300(ra) # 8000145c <_Z10sem_signalP3Sem>

    return ret;
}
    80006338:	00090513          	mv	a0,s2
    8000633c:	01813083          	ld	ra,24(sp)
    80006340:	01013403          	ld	s0,16(sp)
    80006344:	00813483          	ld	s1,8(sp)
    80006348:	00013903          	ld	s2,0(sp)
    8000634c:	02010113          	addi	sp,sp,32
    80006350:	00008067          	ret
        ret = cap - head + tail;
    80006354:	0004a703          	lw	a4,0(s1)
    80006358:	4127093b          	subw	s2,a4,s2
    8000635c:	00f9093b          	addw	s2,s2,a5
    80006360:	fc1ff06f          	j	80006320 <_ZN6Buffer6getCntEv+0x44>

0000000080006364 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006364:	fe010113          	addi	sp,sp,-32
    80006368:	00113c23          	sd	ra,24(sp)
    8000636c:	00813823          	sd	s0,16(sp)
    80006370:	00913423          	sd	s1,8(sp)
    80006374:	02010413          	addi	s0,sp,32
    80006378:	00050493          	mv	s1,a0
    putc('\n');
    8000637c:	00a00513          	li	a0,10
    80006380:	ffffb097          	auipc	ra,0xffffb
    80006384:	198080e7          	jalr	408(ra) # 80001518 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006388:	00003517          	auipc	a0,0x3
    8000638c:	ec850513          	addi	a0,a0,-312 # 80009250 <CONSOLE_STATUS+0x240>
    80006390:	fffff097          	auipc	ra,0xfffff
    80006394:	ee0080e7          	jalr	-288(ra) # 80005270 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006398:	00048513          	mv	a0,s1
    8000639c:	00000097          	auipc	ra,0x0
    800063a0:	f40080e7          	jalr	-192(ra) # 800062dc <_ZN6Buffer6getCntEv>
    800063a4:	02a05c63          	blez	a0,800063dc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800063a8:	0084b783          	ld	a5,8(s1)
    800063ac:	0104a703          	lw	a4,16(s1)
    800063b0:	00271713          	slli	a4,a4,0x2
    800063b4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800063b8:	0007c503          	lbu	a0,0(a5)
    800063bc:	ffffb097          	auipc	ra,0xffffb
    800063c0:	15c080e7          	jalr	348(ra) # 80001518 <_Z4putcc>
        head = (head + 1) % cap;
    800063c4:	0104a783          	lw	a5,16(s1)
    800063c8:	0017879b          	addiw	a5,a5,1
    800063cc:	0004a703          	lw	a4,0(s1)
    800063d0:	02e7e7bb          	remw	a5,a5,a4
    800063d4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800063d8:	fc1ff06f          	j	80006398 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800063dc:	02100513          	li	a0,33
    800063e0:	ffffb097          	auipc	ra,0xffffb
    800063e4:	138080e7          	jalr	312(ra) # 80001518 <_Z4putcc>
    putc('\n');
    800063e8:	00a00513          	li	a0,10
    800063ec:	ffffb097          	auipc	ra,0xffffb
    800063f0:	12c080e7          	jalr	300(ra) # 80001518 <_Z4putcc>
    mem_free(buffer);
    800063f4:	0084b503          	ld	a0,8(s1)
    800063f8:	ffffb097          	auipc	ra,0xffffb
    800063fc:	eb4080e7          	jalr	-332(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006400:	0204b503          	ld	a0,32(s1)
    80006404:	ffffb097          	auipc	ra,0xffffb
    80006408:	020080e7          	jalr	32(ra) # 80001424 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    8000640c:	0184b503          	ld	a0,24(s1)
    80006410:	ffffb097          	auipc	ra,0xffffb
    80006414:	014080e7          	jalr	20(ra) # 80001424 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80006418:	0304b503          	ld	a0,48(s1)
    8000641c:	ffffb097          	auipc	ra,0xffffb
    80006420:	008080e7          	jalr	8(ra) # 80001424 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80006424:	0284b503          	ld	a0,40(s1)
    80006428:	ffffb097          	auipc	ra,0xffffb
    8000642c:	ffc080e7          	jalr	-4(ra) # 80001424 <_Z9sem_closeP3Sem>
}
    80006430:	01813083          	ld	ra,24(sp)
    80006434:	01013403          	ld	s0,16(sp)
    80006438:	00813483          	ld	s1,8(sp)
    8000643c:	02010113          	addi	sp,sp,32
    80006440:	00008067          	ret

0000000080006444 <start>:
    80006444:	ff010113          	addi	sp,sp,-16
    80006448:	00813423          	sd	s0,8(sp)
    8000644c:	01010413          	addi	s0,sp,16
    80006450:	300027f3          	csrr	a5,mstatus
    80006454:	ffffe737          	lui	a4,0xffffe
    80006458:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1caf>
    8000645c:	00e7f7b3          	and	a5,a5,a4
    80006460:	00001737          	lui	a4,0x1
    80006464:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006468:	00e7e7b3          	or	a5,a5,a4
    8000646c:	30079073          	csrw	mstatus,a5
    80006470:	00000797          	auipc	a5,0x0
    80006474:	16078793          	addi	a5,a5,352 # 800065d0 <system_main>
    80006478:	34179073          	csrw	mepc,a5
    8000647c:	00000793          	li	a5,0
    80006480:	18079073          	csrw	satp,a5
    80006484:	000107b7          	lui	a5,0x10
    80006488:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000648c:	30279073          	csrw	medeleg,a5
    80006490:	30379073          	csrw	mideleg,a5
    80006494:	104027f3          	csrr	a5,sie
    80006498:	2227e793          	ori	a5,a5,546
    8000649c:	10479073          	csrw	sie,a5
    800064a0:	fff00793          	li	a5,-1
    800064a4:	00a7d793          	srli	a5,a5,0xa
    800064a8:	3b079073          	csrw	pmpaddr0,a5
    800064ac:	00f00793          	li	a5,15
    800064b0:	3a079073          	csrw	pmpcfg0,a5
    800064b4:	f14027f3          	csrr	a5,mhartid
    800064b8:	0200c737          	lui	a4,0x200c
    800064bc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064c0:	0007869b          	sext.w	a3,a5
    800064c4:	00269713          	slli	a4,a3,0x2
    800064c8:	000f4637          	lui	a2,0xf4
    800064cc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800064d0:	00d70733          	add	a4,a4,a3
    800064d4:	0037979b          	slliw	a5,a5,0x3
    800064d8:	020046b7          	lui	a3,0x2004
    800064dc:	00d787b3          	add	a5,a5,a3
    800064e0:	00c585b3          	add	a1,a1,a2
    800064e4:	00371693          	slli	a3,a4,0x3
    800064e8:	00005717          	auipc	a4,0x5
    800064ec:	40870713          	addi	a4,a4,1032 # 8000b8f0 <timer_scratch>
    800064f0:	00b7b023          	sd	a1,0(a5)
    800064f4:	00d70733          	add	a4,a4,a3
    800064f8:	00f73c23          	sd	a5,24(a4)
    800064fc:	02c73023          	sd	a2,32(a4)
    80006500:	34071073          	csrw	mscratch,a4
    80006504:	00000797          	auipc	a5,0x0
    80006508:	6ec78793          	addi	a5,a5,1772 # 80006bf0 <timervec>
    8000650c:	30579073          	csrw	mtvec,a5
    80006510:	300027f3          	csrr	a5,mstatus
    80006514:	0087e793          	ori	a5,a5,8
    80006518:	30079073          	csrw	mstatus,a5
    8000651c:	304027f3          	csrr	a5,mie
    80006520:	0807e793          	ori	a5,a5,128
    80006524:	30479073          	csrw	mie,a5
    80006528:	f14027f3          	csrr	a5,mhartid
    8000652c:	0007879b          	sext.w	a5,a5
    80006530:	00078213          	mv	tp,a5
    80006534:	30200073          	mret
    80006538:	00813403          	ld	s0,8(sp)
    8000653c:	01010113          	addi	sp,sp,16
    80006540:	00008067          	ret

0000000080006544 <timerinit>:
    80006544:	ff010113          	addi	sp,sp,-16
    80006548:	00813423          	sd	s0,8(sp)
    8000654c:	01010413          	addi	s0,sp,16
    80006550:	f14027f3          	csrr	a5,mhartid
    80006554:	0200c737          	lui	a4,0x200c
    80006558:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000655c:	0007869b          	sext.w	a3,a5
    80006560:	00269713          	slli	a4,a3,0x2
    80006564:	000f4637          	lui	a2,0xf4
    80006568:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000656c:	00d70733          	add	a4,a4,a3
    80006570:	0037979b          	slliw	a5,a5,0x3
    80006574:	020046b7          	lui	a3,0x2004
    80006578:	00d787b3          	add	a5,a5,a3
    8000657c:	00c585b3          	add	a1,a1,a2
    80006580:	00371693          	slli	a3,a4,0x3
    80006584:	00005717          	auipc	a4,0x5
    80006588:	36c70713          	addi	a4,a4,876 # 8000b8f0 <timer_scratch>
    8000658c:	00b7b023          	sd	a1,0(a5)
    80006590:	00d70733          	add	a4,a4,a3
    80006594:	00f73c23          	sd	a5,24(a4)
    80006598:	02c73023          	sd	a2,32(a4)
    8000659c:	34071073          	csrw	mscratch,a4
    800065a0:	00000797          	auipc	a5,0x0
    800065a4:	65078793          	addi	a5,a5,1616 # 80006bf0 <timervec>
    800065a8:	30579073          	csrw	mtvec,a5
    800065ac:	300027f3          	csrr	a5,mstatus
    800065b0:	0087e793          	ori	a5,a5,8
    800065b4:	30079073          	csrw	mstatus,a5
    800065b8:	304027f3          	csrr	a5,mie
    800065bc:	0807e793          	ori	a5,a5,128
    800065c0:	30479073          	csrw	mie,a5
    800065c4:	00813403          	ld	s0,8(sp)
    800065c8:	01010113          	addi	sp,sp,16
    800065cc:	00008067          	ret

00000000800065d0 <system_main>:
    800065d0:	fe010113          	addi	sp,sp,-32
    800065d4:	00813823          	sd	s0,16(sp)
    800065d8:	00913423          	sd	s1,8(sp)
    800065dc:	00113c23          	sd	ra,24(sp)
    800065e0:	02010413          	addi	s0,sp,32
    800065e4:	00000097          	auipc	ra,0x0
    800065e8:	0c4080e7          	jalr	196(ra) # 800066a8 <cpuid>
    800065ec:	00005497          	auipc	s1,0x5
    800065f0:	22448493          	addi	s1,s1,548 # 8000b810 <started>
    800065f4:	02050263          	beqz	a0,80006618 <system_main+0x48>
    800065f8:	0004a783          	lw	a5,0(s1)
    800065fc:	0007879b          	sext.w	a5,a5
    80006600:	fe078ce3          	beqz	a5,800065f8 <system_main+0x28>
    80006604:	0ff0000f          	fence
    80006608:	00003517          	auipc	a0,0x3
    8000660c:	d7850513          	addi	a0,a0,-648 # 80009380 <CONSOLE_STATUS+0x370>
    80006610:	00001097          	auipc	ra,0x1
    80006614:	a7c080e7          	jalr	-1412(ra) # 8000708c <panic>
    80006618:	00001097          	auipc	ra,0x1
    8000661c:	9d0080e7          	jalr	-1584(ra) # 80006fe8 <consoleinit>
    80006620:	00001097          	auipc	ra,0x1
    80006624:	15c080e7          	jalr	348(ra) # 8000777c <printfinit>
    80006628:	00003517          	auipc	a0,0x3
    8000662c:	a8050513          	addi	a0,a0,-1408 # 800090a8 <CONSOLE_STATUS+0x98>
    80006630:	00001097          	auipc	ra,0x1
    80006634:	ab8080e7          	jalr	-1352(ra) # 800070e8 <__printf>
    80006638:	00003517          	auipc	a0,0x3
    8000663c:	d1850513          	addi	a0,a0,-744 # 80009350 <CONSOLE_STATUS+0x340>
    80006640:	00001097          	auipc	ra,0x1
    80006644:	aa8080e7          	jalr	-1368(ra) # 800070e8 <__printf>
    80006648:	00003517          	auipc	a0,0x3
    8000664c:	a6050513          	addi	a0,a0,-1440 # 800090a8 <CONSOLE_STATUS+0x98>
    80006650:	00001097          	auipc	ra,0x1
    80006654:	a98080e7          	jalr	-1384(ra) # 800070e8 <__printf>
    80006658:	00001097          	auipc	ra,0x1
    8000665c:	4b0080e7          	jalr	1200(ra) # 80007b08 <kinit>
    80006660:	00000097          	auipc	ra,0x0
    80006664:	148080e7          	jalr	328(ra) # 800067a8 <trapinit>
    80006668:	00000097          	auipc	ra,0x0
    8000666c:	16c080e7          	jalr	364(ra) # 800067d4 <trapinithart>
    80006670:	00000097          	auipc	ra,0x0
    80006674:	5c0080e7          	jalr	1472(ra) # 80006c30 <plicinit>
    80006678:	00000097          	auipc	ra,0x0
    8000667c:	5e0080e7          	jalr	1504(ra) # 80006c58 <plicinithart>
    80006680:	00000097          	auipc	ra,0x0
    80006684:	078080e7          	jalr	120(ra) # 800066f8 <userinit>
    80006688:	0ff0000f          	fence
    8000668c:	00100793          	li	a5,1
    80006690:	00003517          	auipc	a0,0x3
    80006694:	cd850513          	addi	a0,a0,-808 # 80009368 <CONSOLE_STATUS+0x358>
    80006698:	00f4a023          	sw	a5,0(s1)
    8000669c:	00001097          	auipc	ra,0x1
    800066a0:	a4c080e7          	jalr	-1460(ra) # 800070e8 <__printf>
    800066a4:	0000006f          	j	800066a4 <system_main+0xd4>

00000000800066a8 <cpuid>:
    800066a8:	ff010113          	addi	sp,sp,-16
    800066ac:	00813423          	sd	s0,8(sp)
    800066b0:	01010413          	addi	s0,sp,16
    800066b4:	00020513          	mv	a0,tp
    800066b8:	00813403          	ld	s0,8(sp)
    800066bc:	0005051b          	sext.w	a0,a0
    800066c0:	01010113          	addi	sp,sp,16
    800066c4:	00008067          	ret

00000000800066c8 <mycpu>:
    800066c8:	ff010113          	addi	sp,sp,-16
    800066cc:	00813423          	sd	s0,8(sp)
    800066d0:	01010413          	addi	s0,sp,16
    800066d4:	00020793          	mv	a5,tp
    800066d8:	00813403          	ld	s0,8(sp)
    800066dc:	0007879b          	sext.w	a5,a5
    800066e0:	00779793          	slli	a5,a5,0x7
    800066e4:	00006517          	auipc	a0,0x6
    800066e8:	23c50513          	addi	a0,a0,572 # 8000c920 <cpus>
    800066ec:	00f50533          	add	a0,a0,a5
    800066f0:	01010113          	addi	sp,sp,16
    800066f4:	00008067          	ret

00000000800066f8 <userinit>:
    800066f8:	ff010113          	addi	sp,sp,-16
    800066fc:	00813423          	sd	s0,8(sp)
    80006700:	01010413          	addi	s0,sp,16
    80006704:	00813403          	ld	s0,8(sp)
    80006708:	01010113          	addi	sp,sp,16
    8000670c:	ffffb317          	auipc	t1,0xffffb
    80006710:	45830067          	jr	1112(t1) # 80001b64 <main>

0000000080006714 <either_copyout>:
    80006714:	ff010113          	addi	sp,sp,-16
    80006718:	00813023          	sd	s0,0(sp)
    8000671c:	00113423          	sd	ra,8(sp)
    80006720:	01010413          	addi	s0,sp,16
    80006724:	02051663          	bnez	a0,80006750 <either_copyout+0x3c>
    80006728:	00058513          	mv	a0,a1
    8000672c:	00060593          	mv	a1,a2
    80006730:	0006861b          	sext.w	a2,a3
    80006734:	00002097          	auipc	ra,0x2
    80006738:	c60080e7          	jalr	-928(ra) # 80008394 <__memmove>
    8000673c:	00813083          	ld	ra,8(sp)
    80006740:	00013403          	ld	s0,0(sp)
    80006744:	00000513          	li	a0,0
    80006748:	01010113          	addi	sp,sp,16
    8000674c:	00008067          	ret
    80006750:	00003517          	auipc	a0,0x3
    80006754:	c5850513          	addi	a0,a0,-936 # 800093a8 <CONSOLE_STATUS+0x398>
    80006758:	00001097          	auipc	ra,0x1
    8000675c:	934080e7          	jalr	-1740(ra) # 8000708c <panic>

0000000080006760 <either_copyin>:
    80006760:	ff010113          	addi	sp,sp,-16
    80006764:	00813023          	sd	s0,0(sp)
    80006768:	00113423          	sd	ra,8(sp)
    8000676c:	01010413          	addi	s0,sp,16
    80006770:	02059463          	bnez	a1,80006798 <either_copyin+0x38>
    80006774:	00060593          	mv	a1,a2
    80006778:	0006861b          	sext.w	a2,a3
    8000677c:	00002097          	auipc	ra,0x2
    80006780:	c18080e7          	jalr	-1000(ra) # 80008394 <__memmove>
    80006784:	00813083          	ld	ra,8(sp)
    80006788:	00013403          	ld	s0,0(sp)
    8000678c:	00000513          	li	a0,0
    80006790:	01010113          	addi	sp,sp,16
    80006794:	00008067          	ret
    80006798:	00003517          	auipc	a0,0x3
    8000679c:	c3850513          	addi	a0,a0,-968 # 800093d0 <CONSOLE_STATUS+0x3c0>
    800067a0:	00001097          	auipc	ra,0x1
    800067a4:	8ec080e7          	jalr	-1812(ra) # 8000708c <panic>

00000000800067a8 <trapinit>:
    800067a8:	ff010113          	addi	sp,sp,-16
    800067ac:	00813423          	sd	s0,8(sp)
    800067b0:	01010413          	addi	s0,sp,16
    800067b4:	00813403          	ld	s0,8(sp)
    800067b8:	00003597          	auipc	a1,0x3
    800067bc:	c4058593          	addi	a1,a1,-960 # 800093f8 <CONSOLE_STATUS+0x3e8>
    800067c0:	00006517          	auipc	a0,0x6
    800067c4:	1e050513          	addi	a0,a0,480 # 8000c9a0 <tickslock>
    800067c8:	01010113          	addi	sp,sp,16
    800067cc:	00001317          	auipc	t1,0x1
    800067d0:	5cc30067          	jr	1484(t1) # 80007d98 <initlock>

00000000800067d4 <trapinithart>:
    800067d4:	ff010113          	addi	sp,sp,-16
    800067d8:	00813423          	sd	s0,8(sp)
    800067dc:	01010413          	addi	s0,sp,16
    800067e0:	00000797          	auipc	a5,0x0
    800067e4:	30078793          	addi	a5,a5,768 # 80006ae0 <kernelvec>
    800067e8:	10579073          	csrw	stvec,a5
    800067ec:	00813403          	ld	s0,8(sp)
    800067f0:	01010113          	addi	sp,sp,16
    800067f4:	00008067          	ret

00000000800067f8 <usertrap>:
    800067f8:	ff010113          	addi	sp,sp,-16
    800067fc:	00813423          	sd	s0,8(sp)
    80006800:	01010413          	addi	s0,sp,16
    80006804:	00813403          	ld	s0,8(sp)
    80006808:	01010113          	addi	sp,sp,16
    8000680c:	00008067          	ret

0000000080006810 <usertrapret>:
    80006810:	ff010113          	addi	sp,sp,-16
    80006814:	00813423          	sd	s0,8(sp)
    80006818:	01010413          	addi	s0,sp,16
    8000681c:	00813403          	ld	s0,8(sp)
    80006820:	01010113          	addi	sp,sp,16
    80006824:	00008067          	ret

0000000080006828 <kerneltrap>:
    80006828:	fe010113          	addi	sp,sp,-32
    8000682c:	00813823          	sd	s0,16(sp)
    80006830:	00113c23          	sd	ra,24(sp)
    80006834:	00913423          	sd	s1,8(sp)
    80006838:	02010413          	addi	s0,sp,32
    8000683c:	142025f3          	csrr	a1,scause
    80006840:	100027f3          	csrr	a5,sstatus
    80006844:	0027f793          	andi	a5,a5,2
    80006848:	10079c63          	bnez	a5,80006960 <kerneltrap+0x138>
    8000684c:	142027f3          	csrr	a5,scause
    80006850:	0207ce63          	bltz	a5,8000688c <kerneltrap+0x64>
    80006854:	00003517          	auipc	a0,0x3
    80006858:	bec50513          	addi	a0,a0,-1044 # 80009440 <CONSOLE_STATUS+0x430>
    8000685c:	00001097          	auipc	ra,0x1
    80006860:	88c080e7          	jalr	-1908(ra) # 800070e8 <__printf>
    80006864:	141025f3          	csrr	a1,sepc
    80006868:	14302673          	csrr	a2,stval
    8000686c:	00003517          	auipc	a0,0x3
    80006870:	be450513          	addi	a0,a0,-1052 # 80009450 <CONSOLE_STATUS+0x440>
    80006874:	00001097          	auipc	ra,0x1
    80006878:	874080e7          	jalr	-1932(ra) # 800070e8 <__printf>
    8000687c:	00003517          	auipc	a0,0x3
    80006880:	bec50513          	addi	a0,a0,-1044 # 80009468 <CONSOLE_STATUS+0x458>
    80006884:	00001097          	auipc	ra,0x1
    80006888:	808080e7          	jalr	-2040(ra) # 8000708c <panic>
    8000688c:	0ff7f713          	andi	a4,a5,255
    80006890:	00900693          	li	a3,9
    80006894:	04d70063          	beq	a4,a3,800068d4 <kerneltrap+0xac>
    80006898:	fff00713          	li	a4,-1
    8000689c:	03f71713          	slli	a4,a4,0x3f
    800068a0:	00170713          	addi	a4,a4,1
    800068a4:	fae798e3          	bne	a5,a4,80006854 <kerneltrap+0x2c>
    800068a8:	00000097          	auipc	ra,0x0
    800068ac:	e00080e7          	jalr	-512(ra) # 800066a8 <cpuid>
    800068b0:	06050663          	beqz	a0,8000691c <kerneltrap+0xf4>
    800068b4:	144027f3          	csrr	a5,sip
    800068b8:	ffd7f793          	andi	a5,a5,-3
    800068bc:	14479073          	csrw	sip,a5
    800068c0:	01813083          	ld	ra,24(sp)
    800068c4:	01013403          	ld	s0,16(sp)
    800068c8:	00813483          	ld	s1,8(sp)
    800068cc:	02010113          	addi	sp,sp,32
    800068d0:	00008067          	ret
    800068d4:	00000097          	auipc	ra,0x0
    800068d8:	3d0080e7          	jalr	976(ra) # 80006ca4 <plic_claim>
    800068dc:	00a00793          	li	a5,10
    800068e0:	00050493          	mv	s1,a0
    800068e4:	06f50863          	beq	a0,a5,80006954 <kerneltrap+0x12c>
    800068e8:	fc050ce3          	beqz	a0,800068c0 <kerneltrap+0x98>
    800068ec:	00050593          	mv	a1,a0
    800068f0:	00003517          	auipc	a0,0x3
    800068f4:	b3050513          	addi	a0,a0,-1232 # 80009420 <CONSOLE_STATUS+0x410>
    800068f8:	00000097          	auipc	ra,0x0
    800068fc:	7f0080e7          	jalr	2032(ra) # 800070e8 <__printf>
    80006900:	01013403          	ld	s0,16(sp)
    80006904:	01813083          	ld	ra,24(sp)
    80006908:	00048513          	mv	a0,s1
    8000690c:	00813483          	ld	s1,8(sp)
    80006910:	02010113          	addi	sp,sp,32
    80006914:	00000317          	auipc	t1,0x0
    80006918:	3c830067          	jr	968(t1) # 80006cdc <plic_complete>
    8000691c:	00006517          	auipc	a0,0x6
    80006920:	08450513          	addi	a0,a0,132 # 8000c9a0 <tickslock>
    80006924:	00001097          	auipc	ra,0x1
    80006928:	498080e7          	jalr	1176(ra) # 80007dbc <acquire>
    8000692c:	00005717          	auipc	a4,0x5
    80006930:	ee870713          	addi	a4,a4,-280 # 8000b814 <ticks>
    80006934:	00072783          	lw	a5,0(a4)
    80006938:	00006517          	auipc	a0,0x6
    8000693c:	06850513          	addi	a0,a0,104 # 8000c9a0 <tickslock>
    80006940:	0017879b          	addiw	a5,a5,1
    80006944:	00f72023          	sw	a5,0(a4)
    80006948:	00001097          	auipc	ra,0x1
    8000694c:	540080e7          	jalr	1344(ra) # 80007e88 <release>
    80006950:	f65ff06f          	j	800068b4 <kerneltrap+0x8c>
    80006954:	00001097          	auipc	ra,0x1
    80006958:	09c080e7          	jalr	156(ra) # 800079f0 <uartintr>
    8000695c:	fa5ff06f          	j	80006900 <kerneltrap+0xd8>
    80006960:	00003517          	auipc	a0,0x3
    80006964:	aa050513          	addi	a0,a0,-1376 # 80009400 <CONSOLE_STATUS+0x3f0>
    80006968:	00000097          	auipc	ra,0x0
    8000696c:	724080e7          	jalr	1828(ra) # 8000708c <panic>

0000000080006970 <clockintr>:
    80006970:	fe010113          	addi	sp,sp,-32
    80006974:	00813823          	sd	s0,16(sp)
    80006978:	00913423          	sd	s1,8(sp)
    8000697c:	00113c23          	sd	ra,24(sp)
    80006980:	02010413          	addi	s0,sp,32
    80006984:	00006497          	auipc	s1,0x6
    80006988:	01c48493          	addi	s1,s1,28 # 8000c9a0 <tickslock>
    8000698c:	00048513          	mv	a0,s1
    80006990:	00001097          	auipc	ra,0x1
    80006994:	42c080e7          	jalr	1068(ra) # 80007dbc <acquire>
    80006998:	00005717          	auipc	a4,0x5
    8000699c:	e7c70713          	addi	a4,a4,-388 # 8000b814 <ticks>
    800069a0:	00072783          	lw	a5,0(a4)
    800069a4:	01013403          	ld	s0,16(sp)
    800069a8:	01813083          	ld	ra,24(sp)
    800069ac:	00048513          	mv	a0,s1
    800069b0:	0017879b          	addiw	a5,a5,1
    800069b4:	00813483          	ld	s1,8(sp)
    800069b8:	00f72023          	sw	a5,0(a4)
    800069bc:	02010113          	addi	sp,sp,32
    800069c0:	00001317          	auipc	t1,0x1
    800069c4:	4c830067          	jr	1224(t1) # 80007e88 <release>

00000000800069c8 <devintr>:
    800069c8:	142027f3          	csrr	a5,scause
    800069cc:	00000513          	li	a0,0
    800069d0:	0007c463          	bltz	a5,800069d8 <devintr+0x10>
    800069d4:	00008067          	ret
    800069d8:	fe010113          	addi	sp,sp,-32
    800069dc:	00813823          	sd	s0,16(sp)
    800069e0:	00113c23          	sd	ra,24(sp)
    800069e4:	00913423          	sd	s1,8(sp)
    800069e8:	02010413          	addi	s0,sp,32
    800069ec:	0ff7f713          	andi	a4,a5,255
    800069f0:	00900693          	li	a3,9
    800069f4:	04d70c63          	beq	a4,a3,80006a4c <devintr+0x84>
    800069f8:	fff00713          	li	a4,-1
    800069fc:	03f71713          	slli	a4,a4,0x3f
    80006a00:	00170713          	addi	a4,a4,1
    80006a04:	00e78c63          	beq	a5,a4,80006a1c <devintr+0x54>
    80006a08:	01813083          	ld	ra,24(sp)
    80006a0c:	01013403          	ld	s0,16(sp)
    80006a10:	00813483          	ld	s1,8(sp)
    80006a14:	02010113          	addi	sp,sp,32
    80006a18:	00008067          	ret
    80006a1c:	00000097          	auipc	ra,0x0
    80006a20:	c8c080e7          	jalr	-884(ra) # 800066a8 <cpuid>
    80006a24:	06050663          	beqz	a0,80006a90 <devintr+0xc8>
    80006a28:	144027f3          	csrr	a5,sip
    80006a2c:	ffd7f793          	andi	a5,a5,-3
    80006a30:	14479073          	csrw	sip,a5
    80006a34:	01813083          	ld	ra,24(sp)
    80006a38:	01013403          	ld	s0,16(sp)
    80006a3c:	00813483          	ld	s1,8(sp)
    80006a40:	00200513          	li	a0,2
    80006a44:	02010113          	addi	sp,sp,32
    80006a48:	00008067          	ret
    80006a4c:	00000097          	auipc	ra,0x0
    80006a50:	258080e7          	jalr	600(ra) # 80006ca4 <plic_claim>
    80006a54:	00a00793          	li	a5,10
    80006a58:	00050493          	mv	s1,a0
    80006a5c:	06f50663          	beq	a0,a5,80006ac8 <devintr+0x100>
    80006a60:	00100513          	li	a0,1
    80006a64:	fa0482e3          	beqz	s1,80006a08 <devintr+0x40>
    80006a68:	00048593          	mv	a1,s1
    80006a6c:	00003517          	auipc	a0,0x3
    80006a70:	9b450513          	addi	a0,a0,-1612 # 80009420 <CONSOLE_STATUS+0x410>
    80006a74:	00000097          	auipc	ra,0x0
    80006a78:	674080e7          	jalr	1652(ra) # 800070e8 <__printf>
    80006a7c:	00048513          	mv	a0,s1
    80006a80:	00000097          	auipc	ra,0x0
    80006a84:	25c080e7          	jalr	604(ra) # 80006cdc <plic_complete>
    80006a88:	00100513          	li	a0,1
    80006a8c:	f7dff06f          	j	80006a08 <devintr+0x40>
    80006a90:	00006517          	auipc	a0,0x6
    80006a94:	f1050513          	addi	a0,a0,-240 # 8000c9a0 <tickslock>
    80006a98:	00001097          	auipc	ra,0x1
    80006a9c:	324080e7          	jalr	804(ra) # 80007dbc <acquire>
    80006aa0:	00005717          	auipc	a4,0x5
    80006aa4:	d7470713          	addi	a4,a4,-652 # 8000b814 <ticks>
    80006aa8:	00072783          	lw	a5,0(a4)
    80006aac:	00006517          	auipc	a0,0x6
    80006ab0:	ef450513          	addi	a0,a0,-268 # 8000c9a0 <tickslock>
    80006ab4:	0017879b          	addiw	a5,a5,1
    80006ab8:	00f72023          	sw	a5,0(a4)
    80006abc:	00001097          	auipc	ra,0x1
    80006ac0:	3cc080e7          	jalr	972(ra) # 80007e88 <release>
    80006ac4:	f65ff06f          	j	80006a28 <devintr+0x60>
    80006ac8:	00001097          	auipc	ra,0x1
    80006acc:	f28080e7          	jalr	-216(ra) # 800079f0 <uartintr>
    80006ad0:	fadff06f          	j	80006a7c <devintr+0xb4>
	...

0000000080006ae0 <kernelvec>:
    80006ae0:	f0010113          	addi	sp,sp,-256
    80006ae4:	00113023          	sd	ra,0(sp)
    80006ae8:	00213423          	sd	sp,8(sp)
    80006aec:	00313823          	sd	gp,16(sp)
    80006af0:	00413c23          	sd	tp,24(sp)
    80006af4:	02513023          	sd	t0,32(sp)
    80006af8:	02613423          	sd	t1,40(sp)
    80006afc:	02713823          	sd	t2,48(sp)
    80006b00:	02813c23          	sd	s0,56(sp)
    80006b04:	04913023          	sd	s1,64(sp)
    80006b08:	04a13423          	sd	a0,72(sp)
    80006b0c:	04b13823          	sd	a1,80(sp)
    80006b10:	04c13c23          	sd	a2,88(sp)
    80006b14:	06d13023          	sd	a3,96(sp)
    80006b18:	06e13423          	sd	a4,104(sp)
    80006b1c:	06f13823          	sd	a5,112(sp)
    80006b20:	07013c23          	sd	a6,120(sp)
    80006b24:	09113023          	sd	a7,128(sp)
    80006b28:	09213423          	sd	s2,136(sp)
    80006b2c:	09313823          	sd	s3,144(sp)
    80006b30:	09413c23          	sd	s4,152(sp)
    80006b34:	0b513023          	sd	s5,160(sp)
    80006b38:	0b613423          	sd	s6,168(sp)
    80006b3c:	0b713823          	sd	s7,176(sp)
    80006b40:	0b813c23          	sd	s8,184(sp)
    80006b44:	0d913023          	sd	s9,192(sp)
    80006b48:	0da13423          	sd	s10,200(sp)
    80006b4c:	0db13823          	sd	s11,208(sp)
    80006b50:	0dc13c23          	sd	t3,216(sp)
    80006b54:	0fd13023          	sd	t4,224(sp)
    80006b58:	0fe13423          	sd	t5,232(sp)
    80006b5c:	0ff13823          	sd	t6,240(sp)
    80006b60:	cc9ff0ef          	jal	ra,80006828 <kerneltrap>
    80006b64:	00013083          	ld	ra,0(sp)
    80006b68:	00813103          	ld	sp,8(sp)
    80006b6c:	01013183          	ld	gp,16(sp)
    80006b70:	02013283          	ld	t0,32(sp)
    80006b74:	02813303          	ld	t1,40(sp)
    80006b78:	03013383          	ld	t2,48(sp)
    80006b7c:	03813403          	ld	s0,56(sp)
    80006b80:	04013483          	ld	s1,64(sp)
    80006b84:	04813503          	ld	a0,72(sp)
    80006b88:	05013583          	ld	a1,80(sp)
    80006b8c:	05813603          	ld	a2,88(sp)
    80006b90:	06013683          	ld	a3,96(sp)
    80006b94:	06813703          	ld	a4,104(sp)
    80006b98:	07013783          	ld	a5,112(sp)
    80006b9c:	07813803          	ld	a6,120(sp)
    80006ba0:	08013883          	ld	a7,128(sp)
    80006ba4:	08813903          	ld	s2,136(sp)
    80006ba8:	09013983          	ld	s3,144(sp)
    80006bac:	09813a03          	ld	s4,152(sp)
    80006bb0:	0a013a83          	ld	s5,160(sp)
    80006bb4:	0a813b03          	ld	s6,168(sp)
    80006bb8:	0b013b83          	ld	s7,176(sp)
    80006bbc:	0b813c03          	ld	s8,184(sp)
    80006bc0:	0c013c83          	ld	s9,192(sp)
    80006bc4:	0c813d03          	ld	s10,200(sp)
    80006bc8:	0d013d83          	ld	s11,208(sp)
    80006bcc:	0d813e03          	ld	t3,216(sp)
    80006bd0:	0e013e83          	ld	t4,224(sp)
    80006bd4:	0e813f03          	ld	t5,232(sp)
    80006bd8:	0f013f83          	ld	t6,240(sp)
    80006bdc:	10010113          	addi	sp,sp,256
    80006be0:	10200073          	sret
    80006be4:	00000013          	nop
    80006be8:	00000013          	nop
    80006bec:	00000013          	nop

0000000080006bf0 <timervec>:
    80006bf0:	34051573          	csrrw	a0,mscratch,a0
    80006bf4:	00b53023          	sd	a1,0(a0)
    80006bf8:	00c53423          	sd	a2,8(a0)
    80006bfc:	00d53823          	sd	a3,16(a0)
    80006c00:	01853583          	ld	a1,24(a0)
    80006c04:	02053603          	ld	a2,32(a0)
    80006c08:	0005b683          	ld	a3,0(a1)
    80006c0c:	00c686b3          	add	a3,a3,a2
    80006c10:	00d5b023          	sd	a3,0(a1)
    80006c14:	00200593          	li	a1,2
    80006c18:	14459073          	csrw	sip,a1
    80006c1c:	01053683          	ld	a3,16(a0)
    80006c20:	00853603          	ld	a2,8(a0)
    80006c24:	00053583          	ld	a1,0(a0)
    80006c28:	34051573          	csrrw	a0,mscratch,a0
    80006c2c:	30200073          	mret

0000000080006c30 <plicinit>:
    80006c30:	ff010113          	addi	sp,sp,-16
    80006c34:	00813423          	sd	s0,8(sp)
    80006c38:	01010413          	addi	s0,sp,16
    80006c3c:	00813403          	ld	s0,8(sp)
    80006c40:	0c0007b7          	lui	a5,0xc000
    80006c44:	00100713          	li	a4,1
    80006c48:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c4c:	00e7a223          	sw	a4,4(a5)
    80006c50:	01010113          	addi	sp,sp,16
    80006c54:	00008067          	ret

0000000080006c58 <plicinithart>:
    80006c58:	ff010113          	addi	sp,sp,-16
    80006c5c:	00813023          	sd	s0,0(sp)
    80006c60:	00113423          	sd	ra,8(sp)
    80006c64:	01010413          	addi	s0,sp,16
    80006c68:	00000097          	auipc	ra,0x0
    80006c6c:	a40080e7          	jalr	-1472(ra) # 800066a8 <cpuid>
    80006c70:	0085171b          	slliw	a4,a0,0x8
    80006c74:	0c0027b7          	lui	a5,0xc002
    80006c78:	00e787b3          	add	a5,a5,a4
    80006c7c:	40200713          	li	a4,1026
    80006c80:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c84:	00813083          	ld	ra,8(sp)
    80006c88:	00013403          	ld	s0,0(sp)
    80006c8c:	00d5151b          	slliw	a0,a0,0xd
    80006c90:	0c2017b7          	lui	a5,0xc201
    80006c94:	00a78533          	add	a0,a5,a0
    80006c98:	00052023          	sw	zero,0(a0)
    80006c9c:	01010113          	addi	sp,sp,16
    80006ca0:	00008067          	ret

0000000080006ca4 <plic_claim>:
    80006ca4:	ff010113          	addi	sp,sp,-16
    80006ca8:	00813023          	sd	s0,0(sp)
    80006cac:	00113423          	sd	ra,8(sp)
    80006cb0:	01010413          	addi	s0,sp,16
    80006cb4:	00000097          	auipc	ra,0x0
    80006cb8:	9f4080e7          	jalr	-1548(ra) # 800066a8 <cpuid>
    80006cbc:	00813083          	ld	ra,8(sp)
    80006cc0:	00013403          	ld	s0,0(sp)
    80006cc4:	00d5151b          	slliw	a0,a0,0xd
    80006cc8:	0c2017b7          	lui	a5,0xc201
    80006ccc:	00a78533          	add	a0,a5,a0
    80006cd0:	00452503          	lw	a0,4(a0)
    80006cd4:	01010113          	addi	sp,sp,16
    80006cd8:	00008067          	ret

0000000080006cdc <plic_complete>:
    80006cdc:	fe010113          	addi	sp,sp,-32
    80006ce0:	00813823          	sd	s0,16(sp)
    80006ce4:	00913423          	sd	s1,8(sp)
    80006ce8:	00113c23          	sd	ra,24(sp)
    80006cec:	02010413          	addi	s0,sp,32
    80006cf0:	00050493          	mv	s1,a0
    80006cf4:	00000097          	auipc	ra,0x0
    80006cf8:	9b4080e7          	jalr	-1612(ra) # 800066a8 <cpuid>
    80006cfc:	01813083          	ld	ra,24(sp)
    80006d00:	01013403          	ld	s0,16(sp)
    80006d04:	00d5179b          	slliw	a5,a0,0xd
    80006d08:	0c201737          	lui	a4,0xc201
    80006d0c:	00f707b3          	add	a5,a4,a5
    80006d10:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d14:	00813483          	ld	s1,8(sp)
    80006d18:	02010113          	addi	sp,sp,32
    80006d1c:	00008067          	ret

0000000080006d20 <consolewrite>:
    80006d20:	fb010113          	addi	sp,sp,-80
    80006d24:	04813023          	sd	s0,64(sp)
    80006d28:	04113423          	sd	ra,72(sp)
    80006d2c:	02913c23          	sd	s1,56(sp)
    80006d30:	03213823          	sd	s2,48(sp)
    80006d34:	03313423          	sd	s3,40(sp)
    80006d38:	03413023          	sd	s4,32(sp)
    80006d3c:	01513c23          	sd	s5,24(sp)
    80006d40:	05010413          	addi	s0,sp,80
    80006d44:	06c05c63          	blez	a2,80006dbc <consolewrite+0x9c>
    80006d48:	00060993          	mv	s3,a2
    80006d4c:	00050a13          	mv	s4,a0
    80006d50:	00058493          	mv	s1,a1
    80006d54:	00000913          	li	s2,0
    80006d58:	fff00a93          	li	s5,-1
    80006d5c:	01c0006f          	j	80006d78 <consolewrite+0x58>
    80006d60:	fbf44503          	lbu	a0,-65(s0)
    80006d64:	0019091b          	addiw	s2,s2,1
    80006d68:	00148493          	addi	s1,s1,1
    80006d6c:	00001097          	auipc	ra,0x1
    80006d70:	a9c080e7          	jalr	-1380(ra) # 80007808 <uartputc>
    80006d74:	03298063          	beq	s3,s2,80006d94 <consolewrite+0x74>
    80006d78:	00048613          	mv	a2,s1
    80006d7c:	00100693          	li	a3,1
    80006d80:	000a0593          	mv	a1,s4
    80006d84:	fbf40513          	addi	a0,s0,-65
    80006d88:	00000097          	auipc	ra,0x0
    80006d8c:	9d8080e7          	jalr	-1576(ra) # 80006760 <either_copyin>
    80006d90:	fd5518e3          	bne	a0,s5,80006d60 <consolewrite+0x40>
    80006d94:	04813083          	ld	ra,72(sp)
    80006d98:	04013403          	ld	s0,64(sp)
    80006d9c:	03813483          	ld	s1,56(sp)
    80006da0:	02813983          	ld	s3,40(sp)
    80006da4:	02013a03          	ld	s4,32(sp)
    80006da8:	01813a83          	ld	s5,24(sp)
    80006dac:	00090513          	mv	a0,s2
    80006db0:	03013903          	ld	s2,48(sp)
    80006db4:	05010113          	addi	sp,sp,80
    80006db8:	00008067          	ret
    80006dbc:	00000913          	li	s2,0
    80006dc0:	fd5ff06f          	j	80006d94 <consolewrite+0x74>

0000000080006dc4 <consoleread>:
    80006dc4:	f9010113          	addi	sp,sp,-112
    80006dc8:	06813023          	sd	s0,96(sp)
    80006dcc:	04913c23          	sd	s1,88(sp)
    80006dd0:	05213823          	sd	s2,80(sp)
    80006dd4:	05313423          	sd	s3,72(sp)
    80006dd8:	05413023          	sd	s4,64(sp)
    80006ddc:	03513c23          	sd	s5,56(sp)
    80006de0:	03613823          	sd	s6,48(sp)
    80006de4:	03713423          	sd	s7,40(sp)
    80006de8:	03813023          	sd	s8,32(sp)
    80006dec:	06113423          	sd	ra,104(sp)
    80006df0:	01913c23          	sd	s9,24(sp)
    80006df4:	07010413          	addi	s0,sp,112
    80006df8:	00060b93          	mv	s7,a2
    80006dfc:	00050913          	mv	s2,a0
    80006e00:	00058c13          	mv	s8,a1
    80006e04:	00060b1b          	sext.w	s6,a2
    80006e08:	00006497          	auipc	s1,0x6
    80006e0c:	bc048493          	addi	s1,s1,-1088 # 8000c9c8 <cons>
    80006e10:	00400993          	li	s3,4
    80006e14:	fff00a13          	li	s4,-1
    80006e18:	00a00a93          	li	s5,10
    80006e1c:	05705e63          	blez	s7,80006e78 <consoleread+0xb4>
    80006e20:	09c4a703          	lw	a4,156(s1)
    80006e24:	0984a783          	lw	a5,152(s1)
    80006e28:	0007071b          	sext.w	a4,a4
    80006e2c:	08e78463          	beq	a5,a4,80006eb4 <consoleread+0xf0>
    80006e30:	07f7f713          	andi	a4,a5,127
    80006e34:	00e48733          	add	a4,s1,a4
    80006e38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e3c:	0017869b          	addiw	a3,a5,1
    80006e40:	08d4ac23          	sw	a3,152(s1)
    80006e44:	00070c9b          	sext.w	s9,a4
    80006e48:	0b370663          	beq	a4,s3,80006ef4 <consoleread+0x130>
    80006e4c:	00100693          	li	a3,1
    80006e50:	f9f40613          	addi	a2,s0,-97
    80006e54:	000c0593          	mv	a1,s8
    80006e58:	00090513          	mv	a0,s2
    80006e5c:	f8e40fa3          	sb	a4,-97(s0)
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	8b4080e7          	jalr	-1868(ra) # 80006714 <either_copyout>
    80006e68:	01450863          	beq	a0,s4,80006e78 <consoleread+0xb4>
    80006e6c:	001c0c13          	addi	s8,s8,1
    80006e70:	fffb8b9b          	addiw	s7,s7,-1
    80006e74:	fb5c94e3          	bne	s9,s5,80006e1c <consoleread+0x58>
    80006e78:	000b851b          	sext.w	a0,s7
    80006e7c:	06813083          	ld	ra,104(sp)
    80006e80:	06013403          	ld	s0,96(sp)
    80006e84:	05813483          	ld	s1,88(sp)
    80006e88:	05013903          	ld	s2,80(sp)
    80006e8c:	04813983          	ld	s3,72(sp)
    80006e90:	04013a03          	ld	s4,64(sp)
    80006e94:	03813a83          	ld	s5,56(sp)
    80006e98:	02813b83          	ld	s7,40(sp)
    80006e9c:	02013c03          	ld	s8,32(sp)
    80006ea0:	01813c83          	ld	s9,24(sp)
    80006ea4:	40ab053b          	subw	a0,s6,a0
    80006ea8:	03013b03          	ld	s6,48(sp)
    80006eac:	07010113          	addi	sp,sp,112
    80006eb0:	00008067          	ret
    80006eb4:	00001097          	auipc	ra,0x1
    80006eb8:	1d8080e7          	jalr	472(ra) # 8000808c <push_on>
    80006ebc:	0984a703          	lw	a4,152(s1)
    80006ec0:	09c4a783          	lw	a5,156(s1)
    80006ec4:	0007879b          	sext.w	a5,a5
    80006ec8:	fef70ce3          	beq	a4,a5,80006ec0 <consoleread+0xfc>
    80006ecc:	00001097          	auipc	ra,0x1
    80006ed0:	234080e7          	jalr	564(ra) # 80008100 <pop_on>
    80006ed4:	0984a783          	lw	a5,152(s1)
    80006ed8:	07f7f713          	andi	a4,a5,127
    80006edc:	00e48733          	add	a4,s1,a4
    80006ee0:	01874703          	lbu	a4,24(a4)
    80006ee4:	0017869b          	addiw	a3,a5,1
    80006ee8:	08d4ac23          	sw	a3,152(s1)
    80006eec:	00070c9b          	sext.w	s9,a4
    80006ef0:	f5371ee3          	bne	a4,s3,80006e4c <consoleread+0x88>
    80006ef4:	000b851b          	sext.w	a0,s7
    80006ef8:	f96bf2e3          	bgeu	s7,s6,80006e7c <consoleread+0xb8>
    80006efc:	08f4ac23          	sw	a5,152(s1)
    80006f00:	f7dff06f          	j	80006e7c <consoleread+0xb8>

0000000080006f04 <consputc>:
    80006f04:	10000793          	li	a5,256
    80006f08:	00f50663          	beq	a0,a5,80006f14 <consputc+0x10>
    80006f0c:	00001317          	auipc	t1,0x1
    80006f10:	9f430067          	jr	-1548(t1) # 80007900 <uartputc_sync>
    80006f14:	ff010113          	addi	sp,sp,-16
    80006f18:	00113423          	sd	ra,8(sp)
    80006f1c:	00813023          	sd	s0,0(sp)
    80006f20:	01010413          	addi	s0,sp,16
    80006f24:	00800513          	li	a0,8
    80006f28:	00001097          	auipc	ra,0x1
    80006f2c:	9d8080e7          	jalr	-1576(ra) # 80007900 <uartputc_sync>
    80006f30:	02000513          	li	a0,32
    80006f34:	00001097          	auipc	ra,0x1
    80006f38:	9cc080e7          	jalr	-1588(ra) # 80007900 <uartputc_sync>
    80006f3c:	00013403          	ld	s0,0(sp)
    80006f40:	00813083          	ld	ra,8(sp)
    80006f44:	00800513          	li	a0,8
    80006f48:	01010113          	addi	sp,sp,16
    80006f4c:	00001317          	auipc	t1,0x1
    80006f50:	9b430067          	jr	-1612(t1) # 80007900 <uartputc_sync>

0000000080006f54 <consoleintr>:
    80006f54:	fe010113          	addi	sp,sp,-32
    80006f58:	00813823          	sd	s0,16(sp)
    80006f5c:	00913423          	sd	s1,8(sp)
    80006f60:	01213023          	sd	s2,0(sp)
    80006f64:	00113c23          	sd	ra,24(sp)
    80006f68:	02010413          	addi	s0,sp,32
    80006f6c:	00006917          	auipc	s2,0x6
    80006f70:	a5c90913          	addi	s2,s2,-1444 # 8000c9c8 <cons>
    80006f74:	00050493          	mv	s1,a0
    80006f78:	00090513          	mv	a0,s2
    80006f7c:	00001097          	auipc	ra,0x1
    80006f80:	e40080e7          	jalr	-448(ra) # 80007dbc <acquire>
    80006f84:	02048c63          	beqz	s1,80006fbc <consoleintr+0x68>
    80006f88:	0a092783          	lw	a5,160(s2)
    80006f8c:	09892703          	lw	a4,152(s2)
    80006f90:	07f00693          	li	a3,127
    80006f94:	40e7873b          	subw	a4,a5,a4
    80006f98:	02e6e263          	bltu	a3,a4,80006fbc <consoleintr+0x68>
    80006f9c:	00d00713          	li	a4,13
    80006fa0:	04e48063          	beq	s1,a4,80006fe0 <consoleintr+0x8c>
    80006fa4:	07f7f713          	andi	a4,a5,127
    80006fa8:	00e90733          	add	a4,s2,a4
    80006fac:	0017879b          	addiw	a5,a5,1
    80006fb0:	0af92023          	sw	a5,160(s2)
    80006fb4:	00970c23          	sb	s1,24(a4)
    80006fb8:	08f92e23          	sw	a5,156(s2)
    80006fbc:	01013403          	ld	s0,16(sp)
    80006fc0:	01813083          	ld	ra,24(sp)
    80006fc4:	00813483          	ld	s1,8(sp)
    80006fc8:	00013903          	ld	s2,0(sp)
    80006fcc:	00006517          	auipc	a0,0x6
    80006fd0:	9fc50513          	addi	a0,a0,-1540 # 8000c9c8 <cons>
    80006fd4:	02010113          	addi	sp,sp,32
    80006fd8:	00001317          	auipc	t1,0x1
    80006fdc:	eb030067          	jr	-336(t1) # 80007e88 <release>
    80006fe0:	00a00493          	li	s1,10
    80006fe4:	fc1ff06f          	j	80006fa4 <consoleintr+0x50>

0000000080006fe8 <consoleinit>:
    80006fe8:	fe010113          	addi	sp,sp,-32
    80006fec:	00113c23          	sd	ra,24(sp)
    80006ff0:	00813823          	sd	s0,16(sp)
    80006ff4:	00913423          	sd	s1,8(sp)
    80006ff8:	02010413          	addi	s0,sp,32
    80006ffc:	00006497          	auipc	s1,0x6
    80007000:	9cc48493          	addi	s1,s1,-1588 # 8000c9c8 <cons>
    80007004:	00048513          	mv	a0,s1
    80007008:	00002597          	auipc	a1,0x2
    8000700c:	47058593          	addi	a1,a1,1136 # 80009478 <CONSOLE_STATUS+0x468>
    80007010:	00001097          	auipc	ra,0x1
    80007014:	d88080e7          	jalr	-632(ra) # 80007d98 <initlock>
    80007018:	00000097          	auipc	ra,0x0
    8000701c:	7ac080e7          	jalr	1964(ra) # 800077c4 <uartinit>
    80007020:	01813083          	ld	ra,24(sp)
    80007024:	01013403          	ld	s0,16(sp)
    80007028:	00000797          	auipc	a5,0x0
    8000702c:	d9c78793          	addi	a5,a5,-612 # 80006dc4 <consoleread>
    80007030:	0af4bc23          	sd	a5,184(s1)
    80007034:	00000797          	auipc	a5,0x0
    80007038:	cec78793          	addi	a5,a5,-788 # 80006d20 <consolewrite>
    8000703c:	0cf4b023          	sd	a5,192(s1)
    80007040:	00813483          	ld	s1,8(sp)
    80007044:	02010113          	addi	sp,sp,32
    80007048:	00008067          	ret

000000008000704c <console_read>:
    8000704c:	ff010113          	addi	sp,sp,-16
    80007050:	00813423          	sd	s0,8(sp)
    80007054:	01010413          	addi	s0,sp,16
    80007058:	00813403          	ld	s0,8(sp)
    8000705c:	00006317          	auipc	t1,0x6
    80007060:	a2433303          	ld	t1,-1500(t1) # 8000ca80 <devsw+0x10>
    80007064:	01010113          	addi	sp,sp,16
    80007068:	00030067          	jr	t1

000000008000706c <console_write>:
    8000706c:	ff010113          	addi	sp,sp,-16
    80007070:	00813423          	sd	s0,8(sp)
    80007074:	01010413          	addi	s0,sp,16
    80007078:	00813403          	ld	s0,8(sp)
    8000707c:	00006317          	auipc	t1,0x6
    80007080:	a0c33303          	ld	t1,-1524(t1) # 8000ca88 <devsw+0x18>
    80007084:	01010113          	addi	sp,sp,16
    80007088:	00030067          	jr	t1

000000008000708c <panic>:
    8000708c:	fe010113          	addi	sp,sp,-32
    80007090:	00113c23          	sd	ra,24(sp)
    80007094:	00813823          	sd	s0,16(sp)
    80007098:	00913423          	sd	s1,8(sp)
    8000709c:	02010413          	addi	s0,sp,32
    800070a0:	00050493          	mv	s1,a0
    800070a4:	00002517          	auipc	a0,0x2
    800070a8:	3dc50513          	addi	a0,a0,988 # 80009480 <CONSOLE_STATUS+0x470>
    800070ac:	00006797          	auipc	a5,0x6
    800070b0:	a607ae23          	sw	zero,-1412(a5) # 8000cb28 <pr+0x18>
    800070b4:	00000097          	auipc	ra,0x0
    800070b8:	034080e7          	jalr	52(ra) # 800070e8 <__printf>
    800070bc:	00048513          	mv	a0,s1
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	028080e7          	jalr	40(ra) # 800070e8 <__printf>
    800070c8:	00002517          	auipc	a0,0x2
    800070cc:	fe050513          	addi	a0,a0,-32 # 800090a8 <CONSOLE_STATUS+0x98>
    800070d0:	00000097          	auipc	ra,0x0
    800070d4:	018080e7          	jalr	24(ra) # 800070e8 <__printf>
    800070d8:	00100793          	li	a5,1
    800070dc:	00004717          	auipc	a4,0x4
    800070e0:	72f72e23          	sw	a5,1852(a4) # 8000b818 <panicked>
    800070e4:	0000006f          	j	800070e4 <panic+0x58>

00000000800070e8 <__printf>:
    800070e8:	f3010113          	addi	sp,sp,-208
    800070ec:	08813023          	sd	s0,128(sp)
    800070f0:	07313423          	sd	s3,104(sp)
    800070f4:	09010413          	addi	s0,sp,144
    800070f8:	05813023          	sd	s8,64(sp)
    800070fc:	08113423          	sd	ra,136(sp)
    80007100:	06913c23          	sd	s1,120(sp)
    80007104:	07213823          	sd	s2,112(sp)
    80007108:	07413023          	sd	s4,96(sp)
    8000710c:	05513c23          	sd	s5,88(sp)
    80007110:	05613823          	sd	s6,80(sp)
    80007114:	05713423          	sd	s7,72(sp)
    80007118:	03913c23          	sd	s9,56(sp)
    8000711c:	03a13823          	sd	s10,48(sp)
    80007120:	03b13423          	sd	s11,40(sp)
    80007124:	00006317          	auipc	t1,0x6
    80007128:	9ec30313          	addi	t1,t1,-1556 # 8000cb10 <pr>
    8000712c:	01832c03          	lw	s8,24(t1)
    80007130:	00b43423          	sd	a1,8(s0)
    80007134:	00c43823          	sd	a2,16(s0)
    80007138:	00d43c23          	sd	a3,24(s0)
    8000713c:	02e43023          	sd	a4,32(s0)
    80007140:	02f43423          	sd	a5,40(s0)
    80007144:	03043823          	sd	a6,48(s0)
    80007148:	03143c23          	sd	a7,56(s0)
    8000714c:	00050993          	mv	s3,a0
    80007150:	4a0c1663          	bnez	s8,800075fc <__printf+0x514>
    80007154:	60098c63          	beqz	s3,8000776c <__printf+0x684>
    80007158:	0009c503          	lbu	a0,0(s3)
    8000715c:	00840793          	addi	a5,s0,8
    80007160:	f6f43c23          	sd	a5,-136(s0)
    80007164:	00000493          	li	s1,0
    80007168:	22050063          	beqz	a0,80007388 <__printf+0x2a0>
    8000716c:	00002a37          	lui	s4,0x2
    80007170:	00018ab7          	lui	s5,0x18
    80007174:	000f4b37          	lui	s6,0xf4
    80007178:	00989bb7          	lui	s7,0x989
    8000717c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007180:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007184:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007188:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000718c:	00148c9b          	addiw	s9,s1,1
    80007190:	02500793          	li	a5,37
    80007194:	01998933          	add	s2,s3,s9
    80007198:	38f51263          	bne	a0,a5,8000751c <__printf+0x434>
    8000719c:	00094783          	lbu	a5,0(s2)
    800071a0:	00078c9b          	sext.w	s9,a5
    800071a4:	1e078263          	beqz	a5,80007388 <__printf+0x2a0>
    800071a8:	0024849b          	addiw	s1,s1,2
    800071ac:	07000713          	li	a4,112
    800071b0:	00998933          	add	s2,s3,s1
    800071b4:	38e78a63          	beq	a5,a4,80007548 <__printf+0x460>
    800071b8:	20f76863          	bltu	a4,a5,800073c8 <__printf+0x2e0>
    800071bc:	42a78863          	beq	a5,a0,800075ec <__printf+0x504>
    800071c0:	06400713          	li	a4,100
    800071c4:	40e79663          	bne	a5,a4,800075d0 <__printf+0x4e8>
    800071c8:	f7843783          	ld	a5,-136(s0)
    800071cc:	0007a603          	lw	a2,0(a5)
    800071d0:	00878793          	addi	a5,a5,8
    800071d4:	f6f43c23          	sd	a5,-136(s0)
    800071d8:	42064a63          	bltz	a2,8000760c <__printf+0x524>
    800071dc:	00a00713          	li	a4,10
    800071e0:	02e677bb          	remuw	a5,a2,a4
    800071e4:	00002d97          	auipc	s11,0x2
    800071e8:	2c4d8d93          	addi	s11,s11,708 # 800094a8 <digits>
    800071ec:	00900593          	li	a1,9
    800071f0:	0006051b          	sext.w	a0,a2
    800071f4:	00000c93          	li	s9,0
    800071f8:	02079793          	slli	a5,a5,0x20
    800071fc:	0207d793          	srli	a5,a5,0x20
    80007200:	00fd87b3          	add	a5,s11,a5
    80007204:	0007c783          	lbu	a5,0(a5)
    80007208:	02e656bb          	divuw	a3,a2,a4
    8000720c:	f8f40023          	sb	a5,-128(s0)
    80007210:	14c5d863          	bge	a1,a2,80007360 <__printf+0x278>
    80007214:	06300593          	li	a1,99
    80007218:	00100c93          	li	s9,1
    8000721c:	02e6f7bb          	remuw	a5,a3,a4
    80007220:	02079793          	slli	a5,a5,0x20
    80007224:	0207d793          	srli	a5,a5,0x20
    80007228:	00fd87b3          	add	a5,s11,a5
    8000722c:	0007c783          	lbu	a5,0(a5)
    80007230:	02e6d73b          	divuw	a4,a3,a4
    80007234:	f8f400a3          	sb	a5,-127(s0)
    80007238:	12a5f463          	bgeu	a1,a0,80007360 <__printf+0x278>
    8000723c:	00a00693          	li	a3,10
    80007240:	00900593          	li	a1,9
    80007244:	02d777bb          	remuw	a5,a4,a3
    80007248:	02079793          	slli	a5,a5,0x20
    8000724c:	0207d793          	srli	a5,a5,0x20
    80007250:	00fd87b3          	add	a5,s11,a5
    80007254:	0007c503          	lbu	a0,0(a5)
    80007258:	02d757bb          	divuw	a5,a4,a3
    8000725c:	f8a40123          	sb	a0,-126(s0)
    80007260:	48e5f263          	bgeu	a1,a4,800076e4 <__printf+0x5fc>
    80007264:	06300513          	li	a0,99
    80007268:	02d7f5bb          	remuw	a1,a5,a3
    8000726c:	02059593          	slli	a1,a1,0x20
    80007270:	0205d593          	srli	a1,a1,0x20
    80007274:	00bd85b3          	add	a1,s11,a1
    80007278:	0005c583          	lbu	a1,0(a1)
    8000727c:	02d7d7bb          	divuw	a5,a5,a3
    80007280:	f8b401a3          	sb	a1,-125(s0)
    80007284:	48e57263          	bgeu	a0,a4,80007708 <__printf+0x620>
    80007288:	3e700513          	li	a0,999
    8000728c:	02d7f5bb          	remuw	a1,a5,a3
    80007290:	02059593          	slli	a1,a1,0x20
    80007294:	0205d593          	srli	a1,a1,0x20
    80007298:	00bd85b3          	add	a1,s11,a1
    8000729c:	0005c583          	lbu	a1,0(a1)
    800072a0:	02d7d7bb          	divuw	a5,a5,a3
    800072a4:	f8b40223          	sb	a1,-124(s0)
    800072a8:	46e57663          	bgeu	a0,a4,80007714 <__printf+0x62c>
    800072ac:	02d7f5bb          	remuw	a1,a5,a3
    800072b0:	02059593          	slli	a1,a1,0x20
    800072b4:	0205d593          	srli	a1,a1,0x20
    800072b8:	00bd85b3          	add	a1,s11,a1
    800072bc:	0005c583          	lbu	a1,0(a1)
    800072c0:	02d7d7bb          	divuw	a5,a5,a3
    800072c4:	f8b402a3          	sb	a1,-123(s0)
    800072c8:	46ea7863          	bgeu	s4,a4,80007738 <__printf+0x650>
    800072cc:	02d7f5bb          	remuw	a1,a5,a3
    800072d0:	02059593          	slli	a1,a1,0x20
    800072d4:	0205d593          	srli	a1,a1,0x20
    800072d8:	00bd85b3          	add	a1,s11,a1
    800072dc:	0005c583          	lbu	a1,0(a1)
    800072e0:	02d7d7bb          	divuw	a5,a5,a3
    800072e4:	f8b40323          	sb	a1,-122(s0)
    800072e8:	3eeaf863          	bgeu	s5,a4,800076d8 <__printf+0x5f0>
    800072ec:	02d7f5bb          	remuw	a1,a5,a3
    800072f0:	02059593          	slli	a1,a1,0x20
    800072f4:	0205d593          	srli	a1,a1,0x20
    800072f8:	00bd85b3          	add	a1,s11,a1
    800072fc:	0005c583          	lbu	a1,0(a1)
    80007300:	02d7d7bb          	divuw	a5,a5,a3
    80007304:	f8b403a3          	sb	a1,-121(s0)
    80007308:	42eb7e63          	bgeu	s6,a4,80007744 <__printf+0x65c>
    8000730c:	02d7f5bb          	remuw	a1,a5,a3
    80007310:	02059593          	slli	a1,a1,0x20
    80007314:	0205d593          	srli	a1,a1,0x20
    80007318:	00bd85b3          	add	a1,s11,a1
    8000731c:	0005c583          	lbu	a1,0(a1)
    80007320:	02d7d7bb          	divuw	a5,a5,a3
    80007324:	f8b40423          	sb	a1,-120(s0)
    80007328:	42ebfc63          	bgeu	s7,a4,80007760 <__printf+0x678>
    8000732c:	02079793          	slli	a5,a5,0x20
    80007330:	0207d793          	srli	a5,a5,0x20
    80007334:	00fd8db3          	add	s11,s11,a5
    80007338:	000dc703          	lbu	a4,0(s11)
    8000733c:	00a00793          	li	a5,10
    80007340:	00900c93          	li	s9,9
    80007344:	f8e404a3          	sb	a4,-119(s0)
    80007348:	00065c63          	bgez	a2,80007360 <__printf+0x278>
    8000734c:	f9040713          	addi	a4,s0,-112
    80007350:	00f70733          	add	a4,a4,a5
    80007354:	02d00693          	li	a3,45
    80007358:	fed70823          	sb	a3,-16(a4)
    8000735c:	00078c93          	mv	s9,a5
    80007360:	f8040793          	addi	a5,s0,-128
    80007364:	01978cb3          	add	s9,a5,s9
    80007368:	f7f40d13          	addi	s10,s0,-129
    8000736c:	000cc503          	lbu	a0,0(s9)
    80007370:	fffc8c93          	addi	s9,s9,-1
    80007374:	00000097          	auipc	ra,0x0
    80007378:	b90080e7          	jalr	-1136(ra) # 80006f04 <consputc>
    8000737c:	ffac98e3          	bne	s9,s10,8000736c <__printf+0x284>
    80007380:	00094503          	lbu	a0,0(s2)
    80007384:	e00514e3          	bnez	a0,8000718c <__printf+0xa4>
    80007388:	1a0c1663          	bnez	s8,80007534 <__printf+0x44c>
    8000738c:	08813083          	ld	ra,136(sp)
    80007390:	08013403          	ld	s0,128(sp)
    80007394:	07813483          	ld	s1,120(sp)
    80007398:	07013903          	ld	s2,112(sp)
    8000739c:	06813983          	ld	s3,104(sp)
    800073a0:	06013a03          	ld	s4,96(sp)
    800073a4:	05813a83          	ld	s5,88(sp)
    800073a8:	05013b03          	ld	s6,80(sp)
    800073ac:	04813b83          	ld	s7,72(sp)
    800073b0:	04013c03          	ld	s8,64(sp)
    800073b4:	03813c83          	ld	s9,56(sp)
    800073b8:	03013d03          	ld	s10,48(sp)
    800073bc:	02813d83          	ld	s11,40(sp)
    800073c0:	0d010113          	addi	sp,sp,208
    800073c4:	00008067          	ret
    800073c8:	07300713          	li	a4,115
    800073cc:	1ce78a63          	beq	a5,a4,800075a0 <__printf+0x4b8>
    800073d0:	07800713          	li	a4,120
    800073d4:	1ee79e63          	bne	a5,a4,800075d0 <__printf+0x4e8>
    800073d8:	f7843783          	ld	a5,-136(s0)
    800073dc:	0007a703          	lw	a4,0(a5)
    800073e0:	00878793          	addi	a5,a5,8
    800073e4:	f6f43c23          	sd	a5,-136(s0)
    800073e8:	28074263          	bltz	a4,8000766c <__printf+0x584>
    800073ec:	00002d97          	auipc	s11,0x2
    800073f0:	0bcd8d93          	addi	s11,s11,188 # 800094a8 <digits>
    800073f4:	00f77793          	andi	a5,a4,15
    800073f8:	00fd87b3          	add	a5,s11,a5
    800073fc:	0007c683          	lbu	a3,0(a5)
    80007400:	00f00613          	li	a2,15
    80007404:	0007079b          	sext.w	a5,a4
    80007408:	f8d40023          	sb	a3,-128(s0)
    8000740c:	0047559b          	srliw	a1,a4,0x4
    80007410:	0047569b          	srliw	a3,a4,0x4
    80007414:	00000c93          	li	s9,0
    80007418:	0ee65063          	bge	a2,a4,800074f8 <__printf+0x410>
    8000741c:	00f6f693          	andi	a3,a3,15
    80007420:	00dd86b3          	add	a3,s11,a3
    80007424:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007428:	0087d79b          	srliw	a5,a5,0x8
    8000742c:	00100c93          	li	s9,1
    80007430:	f8d400a3          	sb	a3,-127(s0)
    80007434:	0cb67263          	bgeu	a2,a1,800074f8 <__printf+0x410>
    80007438:	00f7f693          	andi	a3,a5,15
    8000743c:	00dd86b3          	add	a3,s11,a3
    80007440:	0006c583          	lbu	a1,0(a3)
    80007444:	00f00613          	li	a2,15
    80007448:	0047d69b          	srliw	a3,a5,0x4
    8000744c:	f8b40123          	sb	a1,-126(s0)
    80007450:	0047d593          	srli	a1,a5,0x4
    80007454:	28f67e63          	bgeu	a2,a5,800076f0 <__printf+0x608>
    80007458:	00f6f693          	andi	a3,a3,15
    8000745c:	00dd86b3          	add	a3,s11,a3
    80007460:	0006c503          	lbu	a0,0(a3)
    80007464:	0087d813          	srli	a6,a5,0x8
    80007468:	0087d69b          	srliw	a3,a5,0x8
    8000746c:	f8a401a3          	sb	a0,-125(s0)
    80007470:	28b67663          	bgeu	a2,a1,800076fc <__printf+0x614>
    80007474:	00f6f693          	andi	a3,a3,15
    80007478:	00dd86b3          	add	a3,s11,a3
    8000747c:	0006c583          	lbu	a1,0(a3)
    80007480:	00c7d513          	srli	a0,a5,0xc
    80007484:	00c7d69b          	srliw	a3,a5,0xc
    80007488:	f8b40223          	sb	a1,-124(s0)
    8000748c:	29067a63          	bgeu	a2,a6,80007720 <__printf+0x638>
    80007490:	00f6f693          	andi	a3,a3,15
    80007494:	00dd86b3          	add	a3,s11,a3
    80007498:	0006c583          	lbu	a1,0(a3)
    8000749c:	0107d813          	srli	a6,a5,0x10
    800074a0:	0107d69b          	srliw	a3,a5,0x10
    800074a4:	f8b402a3          	sb	a1,-123(s0)
    800074a8:	28a67263          	bgeu	a2,a0,8000772c <__printf+0x644>
    800074ac:	00f6f693          	andi	a3,a3,15
    800074b0:	00dd86b3          	add	a3,s11,a3
    800074b4:	0006c683          	lbu	a3,0(a3)
    800074b8:	0147d79b          	srliw	a5,a5,0x14
    800074bc:	f8d40323          	sb	a3,-122(s0)
    800074c0:	21067663          	bgeu	a2,a6,800076cc <__printf+0x5e4>
    800074c4:	02079793          	slli	a5,a5,0x20
    800074c8:	0207d793          	srli	a5,a5,0x20
    800074cc:	00fd8db3          	add	s11,s11,a5
    800074d0:	000dc683          	lbu	a3,0(s11)
    800074d4:	00800793          	li	a5,8
    800074d8:	00700c93          	li	s9,7
    800074dc:	f8d403a3          	sb	a3,-121(s0)
    800074e0:	00075c63          	bgez	a4,800074f8 <__printf+0x410>
    800074e4:	f9040713          	addi	a4,s0,-112
    800074e8:	00f70733          	add	a4,a4,a5
    800074ec:	02d00693          	li	a3,45
    800074f0:	fed70823          	sb	a3,-16(a4)
    800074f4:	00078c93          	mv	s9,a5
    800074f8:	f8040793          	addi	a5,s0,-128
    800074fc:	01978cb3          	add	s9,a5,s9
    80007500:	f7f40d13          	addi	s10,s0,-129
    80007504:	000cc503          	lbu	a0,0(s9)
    80007508:	fffc8c93          	addi	s9,s9,-1
    8000750c:	00000097          	auipc	ra,0x0
    80007510:	9f8080e7          	jalr	-1544(ra) # 80006f04 <consputc>
    80007514:	ff9d18e3          	bne	s10,s9,80007504 <__printf+0x41c>
    80007518:	0100006f          	j	80007528 <__printf+0x440>
    8000751c:	00000097          	auipc	ra,0x0
    80007520:	9e8080e7          	jalr	-1560(ra) # 80006f04 <consputc>
    80007524:	000c8493          	mv	s1,s9
    80007528:	00094503          	lbu	a0,0(s2)
    8000752c:	c60510e3          	bnez	a0,8000718c <__printf+0xa4>
    80007530:	e40c0ee3          	beqz	s8,8000738c <__printf+0x2a4>
    80007534:	00005517          	auipc	a0,0x5
    80007538:	5dc50513          	addi	a0,a0,1500 # 8000cb10 <pr>
    8000753c:	00001097          	auipc	ra,0x1
    80007540:	94c080e7          	jalr	-1716(ra) # 80007e88 <release>
    80007544:	e49ff06f          	j	8000738c <__printf+0x2a4>
    80007548:	f7843783          	ld	a5,-136(s0)
    8000754c:	03000513          	li	a0,48
    80007550:	01000d13          	li	s10,16
    80007554:	00878713          	addi	a4,a5,8
    80007558:	0007bc83          	ld	s9,0(a5)
    8000755c:	f6e43c23          	sd	a4,-136(s0)
    80007560:	00000097          	auipc	ra,0x0
    80007564:	9a4080e7          	jalr	-1628(ra) # 80006f04 <consputc>
    80007568:	07800513          	li	a0,120
    8000756c:	00000097          	auipc	ra,0x0
    80007570:	998080e7          	jalr	-1640(ra) # 80006f04 <consputc>
    80007574:	00002d97          	auipc	s11,0x2
    80007578:	f34d8d93          	addi	s11,s11,-204 # 800094a8 <digits>
    8000757c:	03ccd793          	srli	a5,s9,0x3c
    80007580:	00fd87b3          	add	a5,s11,a5
    80007584:	0007c503          	lbu	a0,0(a5)
    80007588:	fffd0d1b          	addiw	s10,s10,-1
    8000758c:	004c9c93          	slli	s9,s9,0x4
    80007590:	00000097          	auipc	ra,0x0
    80007594:	974080e7          	jalr	-1676(ra) # 80006f04 <consputc>
    80007598:	fe0d12e3          	bnez	s10,8000757c <__printf+0x494>
    8000759c:	f8dff06f          	j	80007528 <__printf+0x440>
    800075a0:	f7843783          	ld	a5,-136(s0)
    800075a4:	0007bc83          	ld	s9,0(a5)
    800075a8:	00878793          	addi	a5,a5,8
    800075ac:	f6f43c23          	sd	a5,-136(s0)
    800075b0:	000c9a63          	bnez	s9,800075c4 <__printf+0x4dc>
    800075b4:	1080006f          	j	800076bc <__printf+0x5d4>
    800075b8:	001c8c93          	addi	s9,s9,1
    800075bc:	00000097          	auipc	ra,0x0
    800075c0:	948080e7          	jalr	-1720(ra) # 80006f04 <consputc>
    800075c4:	000cc503          	lbu	a0,0(s9)
    800075c8:	fe0518e3          	bnez	a0,800075b8 <__printf+0x4d0>
    800075cc:	f5dff06f          	j	80007528 <__printf+0x440>
    800075d0:	02500513          	li	a0,37
    800075d4:	00000097          	auipc	ra,0x0
    800075d8:	930080e7          	jalr	-1744(ra) # 80006f04 <consputc>
    800075dc:	000c8513          	mv	a0,s9
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	924080e7          	jalr	-1756(ra) # 80006f04 <consputc>
    800075e8:	f41ff06f          	j	80007528 <__printf+0x440>
    800075ec:	02500513          	li	a0,37
    800075f0:	00000097          	auipc	ra,0x0
    800075f4:	914080e7          	jalr	-1772(ra) # 80006f04 <consputc>
    800075f8:	f31ff06f          	j	80007528 <__printf+0x440>
    800075fc:	00030513          	mv	a0,t1
    80007600:	00000097          	auipc	ra,0x0
    80007604:	7bc080e7          	jalr	1980(ra) # 80007dbc <acquire>
    80007608:	b4dff06f          	j	80007154 <__printf+0x6c>
    8000760c:	40c0053b          	negw	a0,a2
    80007610:	00a00713          	li	a4,10
    80007614:	02e576bb          	remuw	a3,a0,a4
    80007618:	00002d97          	auipc	s11,0x2
    8000761c:	e90d8d93          	addi	s11,s11,-368 # 800094a8 <digits>
    80007620:	ff700593          	li	a1,-9
    80007624:	02069693          	slli	a3,a3,0x20
    80007628:	0206d693          	srli	a3,a3,0x20
    8000762c:	00dd86b3          	add	a3,s11,a3
    80007630:	0006c683          	lbu	a3,0(a3)
    80007634:	02e557bb          	divuw	a5,a0,a4
    80007638:	f8d40023          	sb	a3,-128(s0)
    8000763c:	10b65e63          	bge	a2,a1,80007758 <__printf+0x670>
    80007640:	06300593          	li	a1,99
    80007644:	02e7f6bb          	remuw	a3,a5,a4
    80007648:	02069693          	slli	a3,a3,0x20
    8000764c:	0206d693          	srli	a3,a3,0x20
    80007650:	00dd86b3          	add	a3,s11,a3
    80007654:	0006c683          	lbu	a3,0(a3)
    80007658:	02e7d73b          	divuw	a4,a5,a4
    8000765c:	00200793          	li	a5,2
    80007660:	f8d400a3          	sb	a3,-127(s0)
    80007664:	bca5ece3          	bltu	a1,a0,8000723c <__printf+0x154>
    80007668:	ce5ff06f          	j	8000734c <__printf+0x264>
    8000766c:	40e007bb          	negw	a5,a4
    80007670:	00002d97          	auipc	s11,0x2
    80007674:	e38d8d93          	addi	s11,s11,-456 # 800094a8 <digits>
    80007678:	00f7f693          	andi	a3,a5,15
    8000767c:	00dd86b3          	add	a3,s11,a3
    80007680:	0006c583          	lbu	a1,0(a3)
    80007684:	ff100613          	li	a2,-15
    80007688:	0047d69b          	srliw	a3,a5,0x4
    8000768c:	f8b40023          	sb	a1,-128(s0)
    80007690:	0047d59b          	srliw	a1,a5,0x4
    80007694:	0ac75e63          	bge	a4,a2,80007750 <__printf+0x668>
    80007698:	00f6f693          	andi	a3,a3,15
    8000769c:	00dd86b3          	add	a3,s11,a3
    800076a0:	0006c603          	lbu	a2,0(a3)
    800076a4:	00f00693          	li	a3,15
    800076a8:	0087d79b          	srliw	a5,a5,0x8
    800076ac:	f8c400a3          	sb	a2,-127(s0)
    800076b0:	d8b6e4e3          	bltu	a3,a1,80007438 <__printf+0x350>
    800076b4:	00200793          	li	a5,2
    800076b8:	e2dff06f          	j	800074e4 <__printf+0x3fc>
    800076bc:	00002c97          	auipc	s9,0x2
    800076c0:	dccc8c93          	addi	s9,s9,-564 # 80009488 <CONSOLE_STATUS+0x478>
    800076c4:	02800513          	li	a0,40
    800076c8:	ef1ff06f          	j	800075b8 <__printf+0x4d0>
    800076cc:	00700793          	li	a5,7
    800076d0:	00600c93          	li	s9,6
    800076d4:	e0dff06f          	j	800074e0 <__printf+0x3f8>
    800076d8:	00700793          	li	a5,7
    800076dc:	00600c93          	li	s9,6
    800076e0:	c69ff06f          	j	80007348 <__printf+0x260>
    800076e4:	00300793          	li	a5,3
    800076e8:	00200c93          	li	s9,2
    800076ec:	c5dff06f          	j	80007348 <__printf+0x260>
    800076f0:	00300793          	li	a5,3
    800076f4:	00200c93          	li	s9,2
    800076f8:	de9ff06f          	j	800074e0 <__printf+0x3f8>
    800076fc:	00400793          	li	a5,4
    80007700:	00300c93          	li	s9,3
    80007704:	dddff06f          	j	800074e0 <__printf+0x3f8>
    80007708:	00400793          	li	a5,4
    8000770c:	00300c93          	li	s9,3
    80007710:	c39ff06f          	j	80007348 <__printf+0x260>
    80007714:	00500793          	li	a5,5
    80007718:	00400c93          	li	s9,4
    8000771c:	c2dff06f          	j	80007348 <__printf+0x260>
    80007720:	00500793          	li	a5,5
    80007724:	00400c93          	li	s9,4
    80007728:	db9ff06f          	j	800074e0 <__printf+0x3f8>
    8000772c:	00600793          	li	a5,6
    80007730:	00500c93          	li	s9,5
    80007734:	dadff06f          	j	800074e0 <__printf+0x3f8>
    80007738:	00600793          	li	a5,6
    8000773c:	00500c93          	li	s9,5
    80007740:	c09ff06f          	j	80007348 <__printf+0x260>
    80007744:	00800793          	li	a5,8
    80007748:	00700c93          	li	s9,7
    8000774c:	bfdff06f          	j	80007348 <__printf+0x260>
    80007750:	00100793          	li	a5,1
    80007754:	d91ff06f          	j	800074e4 <__printf+0x3fc>
    80007758:	00100793          	li	a5,1
    8000775c:	bf1ff06f          	j	8000734c <__printf+0x264>
    80007760:	00900793          	li	a5,9
    80007764:	00800c93          	li	s9,8
    80007768:	be1ff06f          	j	80007348 <__printf+0x260>
    8000776c:	00002517          	auipc	a0,0x2
    80007770:	d2450513          	addi	a0,a0,-732 # 80009490 <CONSOLE_STATUS+0x480>
    80007774:	00000097          	auipc	ra,0x0
    80007778:	918080e7          	jalr	-1768(ra) # 8000708c <panic>

000000008000777c <printfinit>:
    8000777c:	fe010113          	addi	sp,sp,-32
    80007780:	00813823          	sd	s0,16(sp)
    80007784:	00913423          	sd	s1,8(sp)
    80007788:	00113c23          	sd	ra,24(sp)
    8000778c:	02010413          	addi	s0,sp,32
    80007790:	00005497          	auipc	s1,0x5
    80007794:	38048493          	addi	s1,s1,896 # 8000cb10 <pr>
    80007798:	00048513          	mv	a0,s1
    8000779c:	00002597          	auipc	a1,0x2
    800077a0:	d0458593          	addi	a1,a1,-764 # 800094a0 <CONSOLE_STATUS+0x490>
    800077a4:	00000097          	auipc	ra,0x0
    800077a8:	5f4080e7          	jalr	1524(ra) # 80007d98 <initlock>
    800077ac:	01813083          	ld	ra,24(sp)
    800077b0:	01013403          	ld	s0,16(sp)
    800077b4:	0004ac23          	sw	zero,24(s1)
    800077b8:	00813483          	ld	s1,8(sp)
    800077bc:	02010113          	addi	sp,sp,32
    800077c0:	00008067          	ret

00000000800077c4 <uartinit>:
    800077c4:	ff010113          	addi	sp,sp,-16
    800077c8:	00813423          	sd	s0,8(sp)
    800077cc:	01010413          	addi	s0,sp,16
    800077d0:	100007b7          	lui	a5,0x10000
    800077d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800077d8:	f8000713          	li	a4,-128
    800077dc:	00e781a3          	sb	a4,3(a5)
    800077e0:	00300713          	li	a4,3
    800077e4:	00e78023          	sb	a4,0(a5)
    800077e8:	000780a3          	sb	zero,1(a5)
    800077ec:	00e781a3          	sb	a4,3(a5)
    800077f0:	00700693          	li	a3,7
    800077f4:	00d78123          	sb	a3,2(a5)
    800077f8:	00e780a3          	sb	a4,1(a5)
    800077fc:	00813403          	ld	s0,8(sp)
    80007800:	01010113          	addi	sp,sp,16
    80007804:	00008067          	ret

0000000080007808 <uartputc>:
    80007808:	00004797          	auipc	a5,0x4
    8000780c:	0107a783          	lw	a5,16(a5) # 8000b818 <panicked>
    80007810:	00078463          	beqz	a5,80007818 <uartputc+0x10>
    80007814:	0000006f          	j	80007814 <uartputc+0xc>
    80007818:	fd010113          	addi	sp,sp,-48
    8000781c:	02813023          	sd	s0,32(sp)
    80007820:	00913c23          	sd	s1,24(sp)
    80007824:	01213823          	sd	s2,16(sp)
    80007828:	01313423          	sd	s3,8(sp)
    8000782c:	02113423          	sd	ra,40(sp)
    80007830:	03010413          	addi	s0,sp,48
    80007834:	00004917          	auipc	s2,0x4
    80007838:	fec90913          	addi	s2,s2,-20 # 8000b820 <uart_tx_r>
    8000783c:	00093783          	ld	a5,0(s2)
    80007840:	00004497          	auipc	s1,0x4
    80007844:	fe848493          	addi	s1,s1,-24 # 8000b828 <uart_tx_w>
    80007848:	0004b703          	ld	a4,0(s1)
    8000784c:	02078693          	addi	a3,a5,32
    80007850:	00050993          	mv	s3,a0
    80007854:	02e69c63          	bne	a3,a4,8000788c <uartputc+0x84>
    80007858:	00001097          	auipc	ra,0x1
    8000785c:	834080e7          	jalr	-1996(ra) # 8000808c <push_on>
    80007860:	00093783          	ld	a5,0(s2)
    80007864:	0004b703          	ld	a4,0(s1)
    80007868:	02078793          	addi	a5,a5,32
    8000786c:	00e79463          	bne	a5,a4,80007874 <uartputc+0x6c>
    80007870:	0000006f          	j	80007870 <uartputc+0x68>
    80007874:	00001097          	auipc	ra,0x1
    80007878:	88c080e7          	jalr	-1908(ra) # 80008100 <pop_on>
    8000787c:	00093783          	ld	a5,0(s2)
    80007880:	0004b703          	ld	a4,0(s1)
    80007884:	02078693          	addi	a3,a5,32
    80007888:	fce688e3          	beq	a3,a4,80007858 <uartputc+0x50>
    8000788c:	01f77693          	andi	a3,a4,31
    80007890:	00005597          	auipc	a1,0x5
    80007894:	2a058593          	addi	a1,a1,672 # 8000cb30 <uart_tx_buf>
    80007898:	00d586b3          	add	a3,a1,a3
    8000789c:	00170713          	addi	a4,a4,1
    800078a0:	01368023          	sb	s3,0(a3)
    800078a4:	00e4b023          	sd	a4,0(s1)
    800078a8:	10000637          	lui	a2,0x10000
    800078ac:	02f71063          	bne	a4,a5,800078cc <uartputc+0xc4>
    800078b0:	0340006f          	j	800078e4 <uartputc+0xdc>
    800078b4:	00074703          	lbu	a4,0(a4)
    800078b8:	00f93023          	sd	a5,0(s2)
    800078bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800078c0:	00093783          	ld	a5,0(s2)
    800078c4:	0004b703          	ld	a4,0(s1)
    800078c8:	00f70e63          	beq	a4,a5,800078e4 <uartputc+0xdc>
    800078cc:	00564683          	lbu	a3,5(a2)
    800078d0:	01f7f713          	andi	a4,a5,31
    800078d4:	00e58733          	add	a4,a1,a4
    800078d8:	0206f693          	andi	a3,a3,32
    800078dc:	00178793          	addi	a5,a5,1
    800078e0:	fc069ae3          	bnez	a3,800078b4 <uartputc+0xac>
    800078e4:	02813083          	ld	ra,40(sp)
    800078e8:	02013403          	ld	s0,32(sp)
    800078ec:	01813483          	ld	s1,24(sp)
    800078f0:	01013903          	ld	s2,16(sp)
    800078f4:	00813983          	ld	s3,8(sp)
    800078f8:	03010113          	addi	sp,sp,48
    800078fc:	00008067          	ret

0000000080007900 <uartputc_sync>:
    80007900:	ff010113          	addi	sp,sp,-16
    80007904:	00813423          	sd	s0,8(sp)
    80007908:	01010413          	addi	s0,sp,16
    8000790c:	00004717          	auipc	a4,0x4
    80007910:	f0c72703          	lw	a4,-244(a4) # 8000b818 <panicked>
    80007914:	02071663          	bnez	a4,80007940 <uartputc_sync+0x40>
    80007918:	00050793          	mv	a5,a0
    8000791c:	100006b7          	lui	a3,0x10000
    80007920:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007924:	02077713          	andi	a4,a4,32
    80007928:	fe070ce3          	beqz	a4,80007920 <uartputc_sync+0x20>
    8000792c:	0ff7f793          	andi	a5,a5,255
    80007930:	00f68023          	sb	a5,0(a3)
    80007934:	00813403          	ld	s0,8(sp)
    80007938:	01010113          	addi	sp,sp,16
    8000793c:	00008067          	ret
    80007940:	0000006f          	j	80007940 <uartputc_sync+0x40>

0000000080007944 <uartstart>:
    80007944:	ff010113          	addi	sp,sp,-16
    80007948:	00813423          	sd	s0,8(sp)
    8000794c:	01010413          	addi	s0,sp,16
    80007950:	00004617          	auipc	a2,0x4
    80007954:	ed060613          	addi	a2,a2,-304 # 8000b820 <uart_tx_r>
    80007958:	00004517          	auipc	a0,0x4
    8000795c:	ed050513          	addi	a0,a0,-304 # 8000b828 <uart_tx_w>
    80007960:	00063783          	ld	a5,0(a2)
    80007964:	00053703          	ld	a4,0(a0)
    80007968:	04f70263          	beq	a4,a5,800079ac <uartstart+0x68>
    8000796c:	100005b7          	lui	a1,0x10000
    80007970:	00005817          	auipc	a6,0x5
    80007974:	1c080813          	addi	a6,a6,448 # 8000cb30 <uart_tx_buf>
    80007978:	01c0006f          	j	80007994 <uartstart+0x50>
    8000797c:	0006c703          	lbu	a4,0(a3)
    80007980:	00f63023          	sd	a5,0(a2)
    80007984:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007988:	00063783          	ld	a5,0(a2)
    8000798c:	00053703          	ld	a4,0(a0)
    80007990:	00f70e63          	beq	a4,a5,800079ac <uartstart+0x68>
    80007994:	01f7f713          	andi	a4,a5,31
    80007998:	00e806b3          	add	a3,a6,a4
    8000799c:	0055c703          	lbu	a4,5(a1)
    800079a0:	00178793          	addi	a5,a5,1
    800079a4:	02077713          	andi	a4,a4,32
    800079a8:	fc071ae3          	bnez	a4,8000797c <uartstart+0x38>
    800079ac:	00813403          	ld	s0,8(sp)
    800079b0:	01010113          	addi	sp,sp,16
    800079b4:	00008067          	ret

00000000800079b8 <uartgetc>:
    800079b8:	ff010113          	addi	sp,sp,-16
    800079bc:	00813423          	sd	s0,8(sp)
    800079c0:	01010413          	addi	s0,sp,16
    800079c4:	10000737          	lui	a4,0x10000
    800079c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800079cc:	0017f793          	andi	a5,a5,1
    800079d0:	00078c63          	beqz	a5,800079e8 <uartgetc+0x30>
    800079d4:	00074503          	lbu	a0,0(a4)
    800079d8:	0ff57513          	andi	a0,a0,255
    800079dc:	00813403          	ld	s0,8(sp)
    800079e0:	01010113          	addi	sp,sp,16
    800079e4:	00008067          	ret
    800079e8:	fff00513          	li	a0,-1
    800079ec:	ff1ff06f          	j	800079dc <uartgetc+0x24>

00000000800079f0 <uartintr>:
    800079f0:	100007b7          	lui	a5,0x10000
    800079f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800079f8:	0017f793          	andi	a5,a5,1
    800079fc:	0a078463          	beqz	a5,80007aa4 <uartintr+0xb4>
    80007a00:	fe010113          	addi	sp,sp,-32
    80007a04:	00813823          	sd	s0,16(sp)
    80007a08:	00913423          	sd	s1,8(sp)
    80007a0c:	00113c23          	sd	ra,24(sp)
    80007a10:	02010413          	addi	s0,sp,32
    80007a14:	100004b7          	lui	s1,0x10000
    80007a18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a1c:	0ff57513          	andi	a0,a0,255
    80007a20:	fffff097          	auipc	ra,0xfffff
    80007a24:	534080e7          	jalr	1332(ra) # 80006f54 <consoleintr>
    80007a28:	0054c783          	lbu	a5,5(s1)
    80007a2c:	0017f793          	andi	a5,a5,1
    80007a30:	fe0794e3          	bnez	a5,80007a18 <uartintr+0x28>
    80007a34:	00004617          	auipc	a2,0x4
    80007a38:	dec60613          	addi	a2,a2,-532 # 8000b820 <uart_tx_r>
    80007a3c:	00004517          	auipc	a0,0x4
    80007a40:	dec50513          	addi	a0,a0,-532 # 8000b828 <uart_tx_w>
    80007a44:	00063783          	ld	a5,0(a2)
    80007a48:	00053703          	ld	a4,0(a0)
    80007a4c:	04f70263          	beq	a4,a5,80007a90 <uartintr+0xa0>
    80007a50:	100005b7          	lui	a1,0x10000
    80007a54:	00005817          	auipc	a6,0x5
    80007a58:	0dc80813          	addi	a6,a6,220 # 8000cb30 <uart_tx_buf>
    80007a5c:	01c0006f          	j	80007a78 <uartintr+0x88>
    80007a60:	0006c703          	lbu	a4,0(a3)
    80007a64:	00f63023          	sd	a5,0(a2)
    80007a68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a6c:	00063783          	ld	a5,0(a2)
    80007a70:	00053703          	ld	a4,0(a0)
    80007a74:	00f70e63          	beq	a4,a5,80007a90 <uartintr+0xa0>
    80007a78:	01f7f713          	andi	a4,a5,31
    80007a7c:	00e806b3          	add	a3,a6,a4
    80007a80:	0055c703          	lbu	a4,5(a1)
    80007a84:	00178793          	addi	a5,a5,1
    80007a88:	02077713          	andi	a4,a4,32
    80007a8c:	fc071ae3          	bnez	a4,80007a60 <uartintr+0x70>
    80007a90:	01813083          	ld	ra,24(sp)
    80007a94:	01013403          	ld	s0,16(sp)
    80007a98:	00813483          	ld	s1,8(sp)
    80007a9c:	02010113          	addi	sp,sp,32
    80007aa0:	00008067          	ret
    80007aa4:	00004617          	auipc	a2,0x4
    80007aa8:	d7c60613          	addi	a2,a2,-644 # 8000b820 <uart_tx_r>
    80007aac:	00004517          	auipc	a0,0x4
    80007ab0:	d7c50513          	addi	a0,a0,-644 # 8000b828 <uart_tx_w>
    80007ab4:	00063783          	ld	a5,0(a2)
    80007ab8:	00053703          	ld	a4,0(a0)
    80007abc:	04f70263          	beq	a4,a5,80007b00 <uartintr+0x110>
    80007ac0:	100005b7          	lui	a1,0x10000
    80007ac4:	00005817          	auipc	a6,0x5
    80007ac8:	06c80813          	addi	a6,a6,108 # 8000cb30 <uart_tx_buf>
    80007acc:	01c0006f          	j	80007ae8 <uartintr+0xf8>
    80007ad0:	0006c703          	lbu	a4,0(a3)
    80007ad4:	00f63023          	sd	a5,0(a2)
    80007ad8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007adc:	00063783          	ld	a5,0(a2)
    80007ae0:	00053703          	ld	a4,0(a0)
    80007ae4:	02f70063          	beq	a4,a5,80007b04 <uartintr+0x114>
    80007ae8:	01f7f713          	andi	a4,a5,31
    80007aec:	00e806b3          	add	a3,a6,a4
    80007af0:	0055c703          	lbu	a4,5(a1)
    80007af4:	00178793          	addi	a5,a5,1
    80007af8:	02077713          	andi	a4,a4,32
    80007afc:	fc071ae3          	bnez	a4,80007ad0 <uartintr+0xe0>
    80007b00:	00008067          	ret
    80007b04:	00008067          	ret

0000000080007b08 <kinit>:
    80007b08:	fc010113          	addi	sp,sp,-64
    80007b0c:	02913423          	sd	s1,40(sp)
    80007b10:	fffff7b7          	lui	a5,0xfffff
    80007b14:	00006497          	auipc	s1,0x6
    80007b18:	03b48493          	addi	s1,s1,59 # 8000db4f <end+0xfff>
    80007b1c:	02813823          	sd	s0,48(sp)
    80007b20:	01313c23          	sd	s3,24(sp)
    80007b24:	00f4f4b3          	and	s1,s1,a5
    80007b28:	02113c23          	sd	ra,56(sp)
    80007b2c:	03213023          	sd	s2,32(sp)
    80007b30:	01413823          	sd	s4,16(sp)
    80007b34:	01513423          	sd	s5,8(sp)
    80007b38:	04010413          	addi	s0,sp,64
    80007b3c:	000017b7          	lui	a5,0x1
    80007b40:	01100993          	li	s3,17
    80007b44:	00f487b3          	add	a5,s1,a5
    80007b48:	01b99993          	slli	s3,s3,0x1b
    80007b4c:	06f9e063          	bltu	s3,a5,80007bac <kinit+0xa4>
    80007b50:	00005a97          	auipc	s5,0x5
    80007b54:	000a8a93          	mv	s5,s5
    80007b58:	0754ec63          	bltu	s1,s5,80007bd0 <kinit+0xc8>
    80007b5c:	0734fa63          	bgeu	s1,s3,80007bd0 <kinit+0xc8>
    80007b60:	00088a37          	lui	s4,0x88
    80007b64:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b68:	00004917          	auipc	s2,0x4
    80007b6c:	cc890913          	addi	s2,s2,-824 # 8000b830 <kmem>
    80007b70:	00ca1a13          	slli	s4,s4,0xc
    80007b74:	0140006f          	j	80007b88 <kinit+0x80>
    80007b78:	000017b7          	lui	a5,0x1
    80007b7c:	00f484b3          	add	s1,s1,a5
    80007b80:	0554e863          	bltu	s1,s5,80007bd0 <kinit+0xc8>
    80007b84:	0534f663          	bgeu	s1,s3,80007bd0 <kinit+0xc8>
    80007b88:	00001637          	lui	a2,0x1
    80007b8c:	00100593          	li	a1,1
    80007b90:	00048513          	mv	a0,s1
    80007b94:	00000097          	auipc	ra,0x0
    80007b98:	5e4080e7          	jalr	1508(ra) # 80008178 <__memset>
    80007b9c:	00093783          	ld	a5,0(s2)
    80007ba0:	00f4b023          	sd	a5,0(s1)
    80007ba4:	00993023          	sd	s1,0(s2)
    80007ba8:	fd4498e3          	bne	s1,s4,80007b78 <kinit+0x70>
    80007bac:	03813083          	ld	ra,56(sp)
    80007bb0:	03013403          	ld	s0,48(sp)
    80007bb4:	02813483          	ld	s1,40(sp)
    80007bb8:	02013903          	ld	s2,32(sp)
    80007bbc:	01813983          	ld	s3,24(sp)
    80007bc0:	01013a03          	ld	s4,16(sp)
    80007bc4:	00813a83          	ld	s5,8(sp)
    80007bc8:	04010113          	addi	sp,sp,64
    80007bcc:	00008067          	ret
    80007bd0:	00002517          	auipc	a0,0x2
    80007bd4:	8f050513          	addi	a0,a0,-1808 # 800094c0 <digits+0x18>
    80007bd8:	fffff097          	auipc	ra,0xfffff
    80007bdc:	4b4080e7          	jalr	1204(ra) # 8000708c <panic>

0000000080007be0 <freerange>:
    80007be0:	fc010113          	addi	sp,sp,-64
    80007be4:	000017b7          	lui	a5,0x1
    80007be8:	02913423          	sd	s1,40(sp)
    80007bec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007bf0:	009504b3          	add	s1,a0,s1
    80007bf4:	fffff537          	lui	a0,0xfffff
    80007bf8:	02813823          	sd	s0,48(sp)
    80007bfc:	02113c23          	sd	ra,56(sp)
    80007c00:	03213023          	sd	s2,32(sp)
    80007c04:	01313c23          	sd	s3,24(sp)
    80007c08:	01413823          	sd	s4,16(sp)
    80007c0c:	01513423          	sd	s5,8(sp)
    80007c10:	01613023          	sd	s6,0(sp)
    80007c14:	04010413          	addi	s0,sp,64
    80007c18:	00a4f4b3          	and	s1,s1,a0
    80007c1c:	00f487b3          	add	a5,s1,a5
    80007c20:	06f5e463          	bltu	a1,a5,80007c88 <freerange+0xa8>
    80007c24:	00005a97          	auipc	s5,0x5
    80007c28:	f2ca8a93          	addi	s5,s5,-212 # 8000cb50 <end>
    80007c2c:	0954e263          	bltu	s1,s5,80007cb0 <freerange+0xd0>
    80007c30:	01100993          	li	s3,17
    80007c34:	01b99993          	slli	s3,s3,0x1b
    80007c38:	0734fc63          	bgeu	s1,s3,80007cb0 <freerange+0xd0>
    80007c3c:	00058a13          	mv	s4,a1
    80007c40:	00004917          	auipc	s2,0x4
    80007c44:	bf090913          	addi	s2,s2,-1040 # 8000b830 <kmem>
    80007c48:	00002b37          	lui	s6,0x2
    80007c4c:	0140006f          	j	80007c60 <freerange+0x80>
    80007c50:	000017b7          	lui	a5,0x1
    80007c54:	00f484b3          	add	s1,s1,a5
    80007c58:	0554ec63          	bltu	s1,s5,80007cb0 <freerange+0xd0>
    80007c5c:	0534fa63          	bgeu	s1,s3,80007cb0 <freerange+0xd0>
    80007c60:	00001637          	lui	a2,0x1
    80007c64:	00100593          	li	a1,1
    80007c68:	00048513          	mv	a0,s1
    80007c6c:	00000097          	auipc	ra,0x0
    80007c70:	50c080e7          	jalr	1292(ra) # 80008178 <__memset>
    80007c74:	00093703          	ld	a4,0(s2)
    80007c78:	016487b3          	add	a5,s1,s6
    80007c7c:	00e4b023          	sd	a4,0(s1)
    80007c80:	00993023          	sd	s1,0(s2)
    80007c84:	fcfa76e3          	bgeu	s4,a5,80007c50 <freerange+0x70>
    80007c88:	03813083          	ld	ra,56(sp)
    80007c8c:	03013403          	ld	s0,48(sp)
    80007c90:	02813483          	ld	s1,40(sp)
    80007c94:	02013903          	ld	s2,32(sp)
    80007c98:	01813983          	ld	s3,24(sp)
    80007c9c:	01013a03          	ld	s4,16(sp)
    80007ca0:	00813a83          	ld	s5,8(sp)
    80007ca4:	00013b03          	ld	s6,0(sp)
    80007ca8:	04010113          	addi	sp,sp,64
    80007cac:	00008067          	ret
    80007cb0:	00002517          	auipc	a0,0x2
    80007cb4:	81050513          	addi	a0,a0,-2032 # 800094c0 <digits+0x18>
    80007cb8:	fffff097          	auipc	ra,0xfffff
    80007cbc:	3d4080e7          	jalr	980(ra) # 8000708c <panic>

0000000080007cc0 <kfree>:
    80007cc0:	fe010113          	addi	sp,sp,-32
    80007cc4:	00813823          	sd	s0,16(sp)
    80007cc8:	00113c23          	sd	ra,24(sp)
    80007ccc:	00913423          	sd	s1,8(sp)
    80007cd0:	02010413          	addi	s0,sp,32
    80007cd4:	03451793          	slli	a5,a0,0x34
    80007cd8:	04079c63          	bnez	a5,80007d30 <kfree+0x70>
    80007cdc:	00005797          	auipc	a5,0x5
    80007ce0:	e7478793          	addi	a5,a5,-396 # 8000cb50 <end>
    80007ce4:	00050493          	mv	s1,a0
    80007ce8:	04f56463          	bltu	a0,a5,80007d30 <kfree+0x70>
    80007cec:	01100793          	li	a5,17
    80007cf0:	01b79793          	slli	a5,a5,0x1b
    80007cf4:	02f57e63          	bgeu	a0,a5,80007d30 <kfree+0x70>
    80007cf8:	00001637          	lui	a2,0x1
    80007cfc:	00100593          	li	a1,1
    80007d00:	00000097          	auipc	ra,0x0
    80007d04:	478080e7          	jalr	1144(ra) # 80008178 <__memset>
    80007d08:	00004797          	auipc	a5,0x4
    80007d0c:	b2878793          	addi	a5,a5,-1240 # 8000b830 <kmem>
    80007d10:	0007b703          	ld	a4,0(a5)
    80007d14:	01813083          	ld	ra,24(sp)
    80007d18:	01013403          	ld	s0,16(sp)
    80007d1c:	00e4b023          	sd	a4,0(s1)
    80007d20:	0097b023          	sd	s1,0(a5)
    80007d24:	00813483          	ld	s1,8(sp)
    80007d28:	02010113          	addi	sp,sp,32
    80007d2c:	00008067          	ret
    80007d30:	00001517          	auipc	a0,0x1
    80007d34:	79050513          	addi	a0,a0,1936 # 800094c0 <digits+0x18>
    80007d38:	fffff097          	auipc	ra,0xfffff
    80007d3c:	354080e7          	jalr	852(ra) # 8000708c <panic>

0000000080007d40 <kalloc>:
    80007d40:	fe010113          	addi	sp,sp,-32
    80007d44:	00813823          	sd	s0,16(sp)
    80007d48:	00913423          	sd	s1,8(sp)
    80007d4c:	00113c23          	sd	ra,24(sp)
    80007d50:	02010413          	addi	s0,sp,32
    80007d54:	00004797          	auipc	a5,0x4
    80007d58:	adc78793          	addi	a5,a5,-1316 # 8000b830 <kmem>
    80007d5c:	0007b483          	ld	s1,0(a5)
    80007d60:	02048063          	beqz	s1,80007d80 <kalloc+0x40>
    80007d64:	0004b703          	ld	a4,0(s1)
    80007d68:	00001637          	lui	a2,0x1
    80007d6c:	00500593          	li	a1,5
    80007d70:	00048513          	mv	a0,s1
    80007d74:	00e7b023          	sd	a4,0(a5)
    80007d78:	00000097          	auipc	ra,0x0
    80007d7c:	400080e7          	jalr	1024(ra) # 80008178 <__memset>
    80007d80:	01813083          	ld	ra,24(sp)
    80007d84:	01013403          	ld	s0,16(sp)
    80007d88:	00048513          	mv	a0,s1
    80007d8c:	00813483          	ld	s1,8(sp)
    80007d90:	02010113          	addi	sp,sp,32
    80007d94:	00008067          	ret

0000000080007d98 <initlock>:
    80007d98:	ff010113          	addi	sp,sp,-16
    80007d9c:	00813423          	sd	s0,8(sp)
    80007da0:	01010413          	addi	s0,sp,16
    80007da4:	00813403          	ld	s0,8(sp)
    80007da8:	00b53423          	sd	a1,8(a0)
    80007dac:	00052023          	sw	zero,0(a0)
    80007db0:	00053823          	sd	zero,16(a0)
    80007db4:	01010113          	addi	sp,sp,16
    80007db8:	00008067          	ret

0000000080007dbc <acquire>:
    80007dbc:	fe010113          	addi	sp,sp,-32
    80007dc0:	00813823          	sd	s0,16(sp)
    80007dc4:	00913423          	sd	s1,8(sp)
    80007dc8:	00113c23          	sd	ra,24(sp)
    80007dcc:	01213023          	sd	s2,0(sp)
    80007dd0:	02010413          	addi	s0,sp,32
    80007dd4:	00050493          	mv	s1,a0
    80007dd8:	10002973          	csrr	s2,sstatus
    80007ddc:	100027f3          	csrr	a5,sstatus
    80007de0:	ffd7f793          	andi	a5,a5,-3
    80007de4:	10079073          	csrw	sstatus,a5
    80007de8:	fffff097          	auipc	ra,0xfffff
    80007dec:	8e0080e7          	jalr	-1824(ra) # 800066c8 <mycpu>
    80007df0:	07852783          	lw	a5,120(a0)
    80007df4:	06078e63          	beqz	a5,80007e70 <acquire+0xb4>
    80007df8:	fffff097          	auipc	ra,0xfffff
    80007dfc:	8d0080e7          	jalr	-1840(ra) # 800066c8 <mycpu>
    80007e00:	07852783          	lw	a5,120(a0)
    80007e04:	0004a703          	lw	a4,0(s1)
    80007e08:	0017879b          	addiw	a5,a5,1
    80007e0c:	06f52c23          	sw	a5,120(a0)
    80007e10:	04071063          	bnez	a4,80007e50 <acquire+0x94>
    80007e14:	00100713          	li	a4,1
    80007e18:	00070793          	mv	a5,a4
    80007e1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e20:	0007879b          	sext.w	a5,a5
    80007e24:	fe079ae3          	bnez	a5,80007e18 <acquire+0x5c>
    80007e28:	0ff0000f          	fence
    80007e2c:	fffff097          	auipc	ra,0xfffff
    80007e30:	89c080e7          	jalr	-1892(ra) # 800066c8 <mycpu>
    80007e34:	01813083          	ld	ra,24(sp)
    80007e38:	01013403          	ld	s0,16(sp)
    80007e3c:	00a4b823          	sd	a0,16(s1)
    80007e40:	00013903          	ld	s2,0(sp)
    80007e44:	00813483          	ld	s1,8(sp)
    80007e48:	02010113          	addi	sp,sp,32
    80007e4c:	00008067          	ret
    80007e50:	0104b903          	ld	s2,16(s1)
    80007e54:	fffff097          	auipc	ra,0xfffff
    80007e58:	874080e7          	jalr	-1932(ra) # 800066c8 <mycpu>
    80007e5c:	faa91ce3          	bne	s2,a0,80007e14 <acquire+0x58>
    80007e60:	00001517          	auipc	a0,0x1
    80007e64:	66850513          	addi	a0,a0,1640 # 800094c8 <digits+0x20>
    80007e68:	fffff097          	auipc	ra,0xfffff
    80007e6c:	224080e7          	jalr	548(ra) # 8000708c <panic>
    80007e70:	00195913          	srli	s2,s2,0x1
    80007e74:	fffff097          	auipc	ra,0xfffff
    80007e78:	854080e7          	jalr	-1964(ra) # 800066c8 <mycpu>
    80007e7c:	00197913          	andi	s2,s2,1
    80007e80:	07252e23          	sw	s2,124(a0)
    80007e84:	f75ff06f          	j	80007df8 <acquire+0x3c>

0000000080007e88 <release>:
    80007e88:	fe010113          	addi	sp,sp,-32
    80007e8c:	00813823          	sd	s0,16(sp)
    80007e90:	00113c23          	sd	ra,24(sp)
    80007e94:	00913423          	sd	s1,8(sp)
    80007e98:	01213023          	sd	s2,0(sp)
    80007e9c:	02010413          	addi	s0,sp,32
    80007ea0:	00052783          	lw	a5,0(a0)
    80007ea4:	00079a63          	bnez	a5,80007eb8 <release+0x30>
    80007ea8:	00001517          	auipc	a0,0x1
    80007eac:	62850513          	addi	a0,a0,1576 # 800094d0 <digits+0x28>
    80007eb0:	fffff097          	auipc	ra,0xfffff
    80007eb4:	1dc080e7          	jalr	476(ra) # 8000708c <panic>
    80007eb8:	01053903          	ld	s2,16(a0)
    80007ebc:	00050493          	mv	s1,a0
    80007ec0:	fffff097          	auipc	ra,0xfffff
    80007ec4:	808080e7          	jalr	-2040(ra) # 800066c8 <mycpu>
    80007ec8:	fea910e3          	bne	s2,a0,80007ea8 <release+0x20>
    80007ecc:	0004b823          	sd	zero,16(s1)
    80007ed0:	0ff0000f          	fence
    80007ed4:	0f50000f          	fence	iorw,ow
    80007ed8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007edc:	ffffe097          	auipc	ra,0xffffe
    80007ee0:	7ec080e7          	jalr	2028(ra) # 800066c8 <mycpu>
    80007ee4:	100027f3          	csrr	a5,sstatus
    80007ee8:	0027f793          	andi	a5,a5,2
    80007eec:	04079a63          	bnez	a5,80007f40 <release+0xb8>
    80007ef0:	07852783          	lw	a5,120(a0)
    80007ef4:	02f05e63          	blez	a5,80007f30 <release+0xa8>
    80007ef8:	fff7871b          	addiw	a4,a5,-1
    80007efc:	06e52c23          	sw	a4,120(a0)
    80007f00:	00071c63          	bnez	a4,80007f18 <release+0x90>
    80007f04:	07c52783          	lw	a5,124(a0)
    80007f08:	00078863          	beqz	a5,80007f18 <release+0x90>
    80007f0c:	100027f3          	csrr	a5,sstatus
    80007f10:	0027e793          	ori	a5,a5,2
    80007f14:	10079073          	csrw	sstatus,a5
    80007f18:	01813083          	ld	ra,24(sp)
    80007f1c:	01013403          	ld	s0,16(sp)
    80007f20:	00813483          	ld	s1,8(sp)
    80007f24:	00013903          	ld	s2,0(sp)
    80007f28:	02010113          	addi	sp,sp,32
    80007f2c:	00008067          	ret
    80007f30:	00001517          	auipc	a0,0x1
    80007f34:	5c050513          	addi	a0,a0,1472 # 800094f0 <digits+0x48>
    80007f38:	fffff097          	auipc	ra,0xfffff
    80007f3c:	154080e7          	jalr	340(ra) # 8000708c <panic>
    80007f40:	00001517          	auipc	a0,0x1
    80007f44:	59850513          	addi	a0,a0,1432 # 800094d8 <digits+0x30>
    80007f48:	fffff097          	auipc	ra,0xfffff
    80007f4c:	144080e7          	jalr	324(ra) # 8000708c <panic>

0000000080007f50 <holding>:
    80007f50:	00052783          	lw	a5,0(a0)
    80007f54:	00079663          	bnez	a5,80007f60 <holding+0x10>
    80007f58:	00000513          	li	a0,0
    80007f5c:	00008067          	ret
    80007f60:	fe010113          	addi	sp,sp,-32
    80007f64:	00813823          	sd	s0,16(sp)
    80007f68:	00913423          	sd	s1,8(sp)
    80007f6c:	00113c23          	sd	ra,24(sp)
    80007f70:	02010413          	addi	s0,sp,32
    80007f74:	01053483          	ld	s1,16(a0)
    80007f78:	ffffe097          	auipc	ra,0xffffe
    80007f7c:	750080e7          	jalr	1872(ra) # 800066c8 <mycpu>
    80007f80:	01813083          	ld	ra,24(sp)
    80007f84:	01013403          	ld	s0,16(sp)
    80007f88:	40a48533          	sub	a0,s1,a0
    80007f8c:	00153513          	seqz	a0,a0
    80007f90:	00813483          	ld	s1,8(sp)
    80007f94:	02010113          	addi	sp,sp,32
    80007f98:	00008067          	ret

0000000080007f9c <push_off>:
    80007f9c:	fe010113          	addi	sp,sp,-32
    80007fa0:	00813823          	sd	s0,16(sp)
    80007fa4:	00113c23          	sd	ra,24(sp)
    80007fa8:	00913423          	sd	s1,8(sp)
    80007fac:	02010413          	addi	s0,sp,32
    80007fb0:	100024f3          	csrr	s1,sstatus
    80007fb4:	100027f3          	csrr	a5,sstatus
    80007fb8:	ffd7f793          	andi	a5,a5,-3
    80007fbc:	10079073          	csrw	sstatus,a5
    80007fc0:	ffffe097          	auipc	ra,0xffffe
    80007fc4:	708080e7          	jalr	1800(ra) # 800066c8 <mycpu>
    80007fc8:	07852783          	lw	a5,120(a0)
    80007fcc:	02078663          	beqz	a5,80007ff8 <push_off+0x5c>
    80007fd0:	ffffe097          	auipc	ra,0xffffe
    80007fd4:	6f8080e7          	jalr	1784(ra) # 800066c8 <mycpu>
    80007fd8:	07852783          	lw	a5,120(a0)
    80007fdc:	01813083          	ld	ra,24(sp)
    80007fe0:	01013403          	ld	s0,16(sp)
    80007fe4:	0017879b          	addiw	a5,a5,1
    80007fe8:	06f52c23          	sw	a5,120(a0)
    80007fec:	00813483          	ld	s1,8(sp)
    80007ff0:	02010113          	addi	sp,sp,32
    80007ff4:	00008067          	ret
    80007ff8:	0014d493          	srli	s1,s1,0x1
    80007ffc:	ffffe097          	auipc	ra,0xffffe
    80008000:	6cc080e7          	jalr	1740(ra) # 800066c8 <mycpu>
    80008004:	0014f493          	andi	s1,s1,1
    80008008:	06952e23          	sw	s1,124(a0)
    8000800c:	fc5ff06f          	j	80007fd0 <push_off+0x34>

0000000080008010 <pop_off>:
    80008010:	ff010113          	addi	sp,sp,-16
    80008014:	00813023          	sd	s0,0(sp)
    80008018:	00113423          	sd	ra,8(sp)
    8000801c:	01010413          	addi	s0,sp,16
    80008020:	ffffe097          	auipc	ra,0xffffe
    80008024:	6a8080e7          	jalr	1704(ra) # 800066c8 <mycpu>
    80008028:	100027f3          	csrr	a5,sstatus
    8000802c:	0027f793          	andi	a5,a5,2
    80008030:	04079663          	bnez	a5,8000807c <pop_off+0x6c>
    80008034:	07852783          	lw	a5,120(a0)
    80008038:	02f05a63          	blez	a5,8000806c <pop_off+0x5c>
    8000803c:	fff7871b          	addiw	a4,a5,-1
    80008040:	06e52c23          	sw	a4,120(a0)
    80008044:	00071c63          	bnez	a4,8000805c <pop_off+0x4c>
    80008048:	07c52783          	lw	a5,124(a0)
    8000804c:	00078863          	beqz	a5,8000805c <pop_off+0x4c>
    80008050:	100027f3          	csrr	a5,sstatus
    80008054:	0027e793          	ori	a5,a5,2
    80008058:	10079073          	csrw	sstatus,a5
    8000805c:	00813083          	ld	ra,8(sp)
    80008060:	00013403          	ld	s0,0(sp)
    80008064:	01010113          	addi	sp,sp,16
    80008068:	00008067          	ret
    8000806c:	00001517          	auipc	a0,0x1
    80008070:	48450513          	addi	a0,a0,1156 # 800094f0 <digits+0x48>
    80008074:	fffff097          	auipc	ra,0xfffff
    80008078:	018080e7          	jalr	24(ra) # 8000708c <panic>
    8000807c:	00001517          	auipc	a0,0x1
    80008080:	45c50513          	addi	a0,a0,1116 # 800094d8 <digits+0x30>
    80008084:	fffff097          	auipc	ra,0xfffff
    80008088:	008080e7          	jalr	8(ra) # 8000708c <panic>

000000008000808c <push_on>:
    8000808c:	fe010113          	addi	sp,sp,-32
    80008090:	00813823          	sd	s0,16(sp)
    80008094:	00113c23          	sd	ra,24(sp)
    80008098:	00913423          	sd	s1,8(sp)
    8000809c:	02010413          	addi	s0,sp,32
    800080a0:	100024f3          	csrr	s1,sstatus
    800080a4:	100027f3          	csrr	a5,sstatus
    800080a8:	0027e793          	ori	a5,a5,2
    800080ac:	10079073          	csrw	sstatus,a5
    800080b0:	ffffe097          	auipc	ra,0xffffe
    800080b4:	618080e7          	jalr	1560(ra) # 800066c8 <mycpu>
    800080b8:	07852783          	lw	a5,120(a0)
    800080bc:	02078663          	beqz	a5,800080e8 <push_on+0x5c>
    800080c0:	ffffe097          	auipc	ra,0xffffe
    800080c4:	608080e7          	jalr	1544(ra) # 800066c8 <mycpu>
    800080c8:	07852783          	lw	a5,120(a0)
    800080cc:	01813083          	ld	ra,24(sp)
    800080d0:	01013403          	ld	s0,16(sp)
    800080d4:	0017879b          	addiw	a5,a5,1
    800080d8:	06f52c23          	sw	a5,120(a0)
    800080dc:	00813483          	ld	s1,8(sp)
    800080e0:	02010113          	addi	sp,sp,32
    800080e4:	00008067          	ret
    800080e8:	0014d493          	srli	s1,s1,0x1
    800080ec:	ffffe097          	auipc	ra,0xffffe
    800080f0:	5dc080e7          	jalr	1500(ra) # 800066c8 <mycpu>
    800080f4:	0014f493          	andi	s1,s1,1
    800080f8:	06952e23          	sw	s1,124(a0)
    800080fc:	fc5ff06f          	j	800080c0 <push_on+0x34>

0000000080008100 <pop_on>:
    80008100:	ff010113          	addi	sp,sp,-16
    80008104:	00813023          	sd	s0,0(sp)
    80008108:	00113423          	sd	ra,8(sp)
    8000810c:	01010413          	addi	s0,sp,16
    80008110:	ffffe097          	auipc	ra,0xffffe
    80008114:	5b8080e7          	jalr	1464(ra) # 800066c8 <mycpu>
    80008118:	100027f3          	csrr	a5,sstatus
    8000811c:	0027f793          	andi	a5,a5,2
    80008120:	04078463          	beqz	a5,80008168 <pop_on+0x68>
    80008124:	07852783          	lw	a5,120(a0)
    80008128:	02f05863          	blez	a5,80008158 <pop_on+0x58>
    8000812c:	fff7879b          	addiw	a5,a5,-1
    80008130:	06f52c23          	sw	a5,120(a0)
    80008134:	07853783          	ld	a5,120(a0)
    80008138:	00079863          	bnez	a5,80008148 <pop_on+0x48>
    8000813c:	100027f3          	csrr	a5,sstatus
    80008140:	ffd7f793          	andi	a5,a5,-3
    80008144:	10079073          	csrw	sstatus,a5
    80008148:	00813083          	ld	ra,8(sp)
    8000814c:	00013403          	ld	s0,0(sp)
    80008150:	01010113          	addi	sp,sp,16
    80008154:	00008067          	ret
    80008158:	00001517          	auipc	a0,0x1
    8000815c:	3c050513          	addi	a0,a0,960 # 80009518 <digits+0x70>
    80008160:	fffff097          	auipc	ra,0xfffff
    80008164:	f2c080e7          	jalr	-212(ra) # 8000708c <panic>
    80008168:	00001517          	auipc	a0,0x1
    8000816c:	39050513          	addi	a0,a0,912 # 800094f8 <digits+0x50>
    80008170:	fffff097          	auipc	ra,0xfffff
    80008174:	f1c080e7          	jalr	-228(ra) # 8000708c <panic>

0000000080008178 <__memset>:
    80008178:	ff010113          	addi	sp,sp,-16
    8000817c:	00813423          	sd	s0,8(sp)
    80008180:	01010413          	addi	s0,sp,16
    80008184:	1a060e63          	beqz	a2,80008340 <__memset+0x1c8>
    80008188:	40a007b3          	neg	a5,a0
    8000818c:	0077f793          	andi	a5,a5,7
    80008190:	00778693          	addi	a3,a5,7
    80008194:	00b00813          	li	a6,11
    80008198:	0ff5f593          	andi	a1,a1,255
    8000819c:	fff6071b          	addiw	a4,a2,-1
    800081a0:	1b06e663          	bltu	a3,a6,8000834c <__memset+0x1d4>
    800081a4:	1cd76463          	bltu	a4,a3,8000836c <__memset+0x1f4>
    800081a8:	1a078e63          	beqz	a5,80008364 <__memset+0x1ec>
    800081ac:	00b50023          	sb	a1,0(a0)
    800081b0:	00100713          	li	a4,1
    800081b4:	1ae78463          	beq	a5,a4,8000835c <__memset+0x1e4>
    800081b8:	00b500a3          	sb	a1,1(a0)
    800081bc:	00200713          	li	a4,2
    800081c0:	1ae78a63          	beq	a5,a4,80008374 <__memset+0x1fc>
    800081c4:	00b50123          	sb	a1,2(a0)
    800081c8:	00300713          	li	a4,3
    800081cc:	18e78463          	beq	a5,a4,80008354 <__memset+0x1dc>
    800081d0:	00b501a3          	sb	a1,3(a0)
    800081d4:	00400713          	li	a4,4
    800081d8:	1ae78263          	beq	a5,a4,8000837c <__memset+0x204>
    800081dc:	00b50223          	sb	a1,4(a0)
    800081e0:	00500713          	li	a4,5
    800081e4:	1ae78063          	beq	a5,a4,80008384 <__memset+0x20c>
    800081e8:	00b502a3          	sb	a1,5(a0)
    800081ec:	00700713          	li	a4,7
    800081f0:	18e79e63          	bne	a5,a4,8000838c <__memset+0x214>
    800081f4:	00b50323          	sb	a1,6(a0)
    800081f8:	00700e93          	li	t4,7
    800081fc:	00859713          	slli	a4,a1,0x8
    80008200:	00e5e733          	or	a4,a1,a4
    80008204:	01059e13          	slli	t3,a1,0x10
    80008208:	01c76e33          	or	t3,a4,t3
    8000820c:	01859313          	slli	t1,a1,0x18
    80008210:	006e6333          	or	t1,t3,t1
    80008214:	02059893          	slli	a7,a1,0x20
    80008218:	40f60e3b          	subw	t3,a2,a5
    8000821c:	011368b3          	or	a7,t1,a7
    80008220:	02859813          	slli	a6,a1,0x28
    80008224:	0108e833          	or	a6,a7,a6
    80008228:	03059693          	slli	a3,a1,0x30
    8000822c:	003e589b          	srliw	a7,t3,0x3
    80008230:	00d866b3          	or	a3,a6,a3
    80008234:	03859713          	slli	a4,a1,0x38
    80008238:	00389813          	slli	a6,a7,0x3
    8000823c:	00f507b3          	add	a5,a0,a5
    80008240:	00e6e733          	or	a4,a3,a4
    80008244:	000e089b          	sext.w	a7,t3
    80008248:	00f806b3          	add	a3,a6,a5
    8000824c:	00e7b023          	sd	a4,0(a5)
    80008250:	00878793          	addi	a5,a5,8
    80008254:	fed79ce3          	bne	a5,a3,8000824c <__memset+0xd4>
    80008258:	ff8e7793          	andi	a5,t3,-8
    8000825c:	0007871b          	sext.w	a4,a5
    80008260:	01d787bb          	addw	a5,a5,t4
    80008264:	0ce88e63          	beq	a7,a4,80008340 <__memset+0x1c8>
    80008268:	00f50733          	add	a4,a0,a5
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	0017871b          	addiw	a4,a5,1
    80008274:	0cc77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0027871b          	addiw	a4,a5,2
    80008284:	0ac77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0037871b          	addiw	a4,a5,3
    80008294:	0ac77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0047871b          	addiw	a4,a5,4
    800082a4:	08c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0057871b          	addiw	a4,a5,5
    800082b4:	08c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0067871b          	addiw	a4,a5,6
    800082c4:	06c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0077871b          	addiw	a4,a5,7
    800082d4:	06c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0087871b          	addiw	a4,a5,8
    800082e4:	04c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0097871b          	addiw	a4,a5,9
    800082f4:	04c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	00a7871b          	addiw	a4,a5,10
    80008304:	02c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	00b7871b          	addiw	a4,a5,11
    80008314:	02c77663          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	00c7871b          	addiw	a4,a5,12
    80008324:	00c77e63          	bgeu	a4,a2,80008340 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	00d7879b          	addiw	a5,a5,13
    80008334:	00c7f663          	bgeu	a5,a2,80008340 <__memset+0x1c8>
    80008338:	00f507b3          	add	a5,a0,a5
    8000833c:	00b78023          	sb	a1,0(a5)
    80008340:	00813403          	ld	s0,8(sp)
    80008344:	01010113          	addi	sp,sp,16
    80008348:	00008067          	ret
    8000834c:	00b00693          	li	a3,11
    80008350:	e55ff06f          	j	800081a4 <__memset+0x2c>
    80008354:	00300e93          	li	t4,3
    80008358:	ea5ff06f          	j	800081fc <__memset+0x84>
    8000835c:	00100e93          	li	t4,1
    80008360:	e9dff06f          	j	800081fc <__memset+0x84>
    80008364:	00000e93          	li	t4,0
    80008368:	e95ff06f          	j	800081fc <__memset+0x84>
    8000836c:	00000793          	li	a5,0
    80008370:	ef9ff06f          	j	80008268 <__memset+0xf0>
    80008374:	00200e93          	li	t4,2
    80008378:	e85ff06f          	j	800081fc <__memset+0x84>
    8000837c:	00400e93          	li	t4,4
    80008380:	e7dff06f          	j	800081fc <__memset+0x84>
    80008384:	00500e93          	li	t4,5
    80008388:	e75ff06f          	j	800081fc <__memset+0x84>
    8000838c:	00600e93          	li	t4,6
    80008390:	e6dff06f          	j	800081fc <__memset+0x84>

0000000080008394 <__memmove>:
    80008394:	ff010113          	addi	sp,sp,-16
    80008398:	00813423          	sd	s0,8(sp)
    8000839c:	01010413          	addi	s0,sp,16
    800083a0:	0e060863          	beqz	a2,80008490 <__memmove+0xfc>
    800083a4:	fff6069b          	addiw	a3,a2,-1
    800083a8:	0006881b          	sext.w	a6,a3
    800083ac:	0ea5e863          	bltu	a1,a0,8000849c <__memmove+0x108>
    800083b0:	00758713          	addi	a4,a1,7
    800083b4:	00a5e7b3          	or	a5,a1,a0
    800083b8:	40a70733          	sub	a4,a4,a0
    800083bc:	0077f793          	andi	a5,a5,7
    800083c0:	00f73713          	sltiu	a4,a4,15
    800083c4:	00174713          	xori	a4,a4,1
    800083c8:	0017b793          	seqz	a5,a5
    800083cc:	00e7f7b3          	and	a5,a5,a4
    800083d0:	10078863          	beqz	a5,800084e0 <__memmove+0x14c>
    800083d4:	00900793          	li	a5,9
    800083d8:	1107f463          	bgeu	a5,a6,800084e0 <__memmove+0x14c>
    800083dc:	0036581b          	srliw	a6,a2,0x3
    800083e0:	fff8081b          	addiw	a6,a6,-1
    800083e4:	02081813          	slli	a6,a6,0x20
    800083e8:	01d85893          	srli	a7,a6,0x1d
    800083ec:	00858813          	addi	a6,a1,8
    800083f0:	00058793          	mv	a5,a1
    800083f4:	00050713          	mv	a4,a0
    800083f8:	01088833          	add	a6,a7,a6
    800083fc:	0007b883          	ld	a7,0(a5)
    80008400:	00878793          	addi	a5,a5,8
    80008404:	00870713          	addi	a4,a4,8
    80008408:	ff173c23          	sd	a7,-8(a4)
    8000840c:	ff0798e3          	bne	a5,a6,800083fc <__memmove+0x68>
    80008410:	ff867713          	andi	a4,a2,-8
    80008414:	02071793          	slli	a5,a4,0x20
    80008418:	0207d793          	srli	a5,a5,0x20
    8000841c:	00f585b3          	add	a1,a1,a5
    80008420:	40e686bb          	subw	a3,a3,a4
    80008424:	00f507b3          	add	a5,a0,a5
    80008428:	06e60463          	beq	a2,a4,80008490 <__memmove+0xfc>
    8000842c:	0005c703          	lbu	a4,0(a1)
    80008430:	00e78023          	sb	a4,0(a5)
    80008434:	04068e63          	beqz	a3,80008490 <__memmove+0xfc>
    80008438:	0015c603          	lbu	a2,1(a1)
    8000843c:	00100713          	li	a4,1
    80008440:	00c780a3          	sb	a2,1(a5)
    80008444:	04e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008448:	0025c603          	lbu	a2,2(a1)
    8000844c:	00200713          	li	a4,2
    80008450:	00c78123          	sb	a2,2(a5)
    80008454:	02e68e63          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008458:	0035c603          	lbu	a2,3(a1)
    8000845c:	00300713          	li	a4,3
    80008460:	00c781a3          	sb	a2,3(a5)
    80008464:	02e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008468:	0045c603          	lbu	a2,4(a1)
    8000846c:	00400713          	li	a4,4
    80008470:	00c78223          	sb	a2,4(a5)
    80008474:	00e68e63          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008478:	0055c603          	lbu	a2,5(a1)
    8000847c:	00500713          	li	a4,5
    80008480:	00c782a3          	sb	a2,5(a5)
    80008484:	00e68663          	beq	a3,a4,80008490 <__memmove+0xfc>
    80008488:	0065c703          	lbu	a4,6(a1)
    8000848c:	00e78323          	sb	a4,6(a5)
    80008490:	00813403          	ld	s0,8(sp)
    80008494:	01010113          	addi	sp,sp,16
    80008498:	00008067          	ret
    8000849c:	02061713          	slli	a4,a2,0x20
    800084a0:	02075713          	srli	a4,a4,0x20
    800084a4:	00e587b3          	add	a5,a1,a4
    800084a8:	f0f574e3          	bgeu	a0,a5,800083b0 <__memmove+0x1c>
    800084ac:	02069613          	slli	a2,a3,0x20
    800084b0:	02065613          	srli	a2,a2,0x20
    800084b4:	fff64613          	not	a2,a2
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00c78633          	add	a2,a5,a2
    800084c0:	fff7c683          	lbu	a3,-1(a5)
    800084c4:	fff78793          	addi	a5,a5,-1
    800084c8:	fff70713          	addi	a4,a4,-1
    800084cc:	00d70023          	sb	a3,0(a4)
    800084d0:	fec798e3          	bne	a5,a2,800084c0 <__memmove+0x12c>
    800084d4:	00813403          	ld	s0,8(sp)
    800084d8:	01010113          	addi	sp,sp,16
    800084dc:	00008067          	ret
    800084e0:	02069713          	slli	a4,a3,0x20
    800084e4:	02075713          	srli	a4,a4,0x20
    800084e8:	00170713          	addi	a4,a4,1
    800084ec:	00e50733          	add	a4,a0,a4
    800084f0:	00050793          	mv	a5,a0
    800084f4:	0005c683          	lbu	a3,0(a1)
    800084f8:	00178793          	addi	a5,a5,1
    800084fc:	00158593          	addi	a1,a1,1
    80008500:	fed78fa3          	sb	a3,-1(a5)
    80008504:	fee798e3          	bne	a5,a4,800084f4 <__memmove+0x160>
    80008508:	f89ff06f          	j	80008490 <__memmove+0xfc>

000000008000850c <__putc>:
    8000850c:	fe010113          	addi	sp,sp,-32
    80008510:	00813823          	sd	s0,16(sp)
    80008514:	00113c23          	sd	ra,24(sp)
    80008518:	02010413          	addi	s0,sp,32
    8000851c:	00050793          	mv	a5,a0
    80008520:	fef40593          	addi	a1,s0,-17
    80008524:	00100613          	li	a2,1
    80008528:	00000513          	li	a0,0
    8000852c:	fef407a3          	sb	a5,-17(s0)
    80008530:	fffff097          	auipc	ra,0xfffff
    80008534:	b3c080e7          	jalr	-1220(ra) # 8000706c <console_write>
    80008538:	01813083          	ld	ra,24(sp)
    8000853c:	01013403          	ld	s0,16(sp)
    80008540:	02010113          	addi	sp,sp,32
    80008544:	00008067          	ret

0000000080008548 <__getc>:
    80008548:	fe010113          	addi	sp,sp,-32
    8000854c:	00813823          	sd	s0,16(sp)
    80008550:	00113c23          	sd	ra,24(sp)
    80008554:	02010413          	addi	s0,sp,32
    80008558:	fe840593          	addi	a1,s0,-24
    8000855c:	00100613          	li	a2,1
    80008560:	00000513          	li	a0,0
    80008564:	fffff097          	auipc	ra,0xfffff
    80008568:	ae8080e7          	jalr	-1304(ra) # 8000704c <console_read>
    8000856c:	fe844503          	lbu	a0,-24(s0)
    80008570:	01813083          	ld	ra,24(sp)
    80008574:	01013403          	ld	s0,16(sp)
    80008578:	02010113          	addi	sp,sp,32
    8000857c:	00008067          	ret

0000000080008580 <console_handler>:
    80008580:	fe010113          	addi	sp,sp,-32
    80008584:	00813823          	sd	s0,16(sp)
    80008588:	00113c23          	sd	ra,24(sp)
    8000858c:	00913423          	sd	s1,8(sp)
    80008590:	02010413          	addi	s0,sp,32
    80008594:	14202773          	csrr	a4,scause
    80008598:	100027f3          	csrr	a5,sstatus
    8000859c:	0027f793          	andi	a5,a5,2
    800085a0:	06079e63          	bnez	a5,8000861c <console_handler+0x9c>
    800085a4:	00074c63          	bltz	a4,800085bc <console_handler+0x3c>
    800085a8:	01813083          	ld	ra,24(sp)
    800085ac:	01013403          	ld	s0,16(sp)
    800085b0:	00813483          	ld	s1,8(sp)
    800085b4:	02010113          	addi	sp,sp,32
    800085b8:	00008067          	ret
    800085bc:	0ff77713          	andi	a4,a4,255
    800085c0:	00900793          	li	a5,9
    800085c4:	fef712e3          	bne	a4,a5,800085a8 <console_handler+0x28>
    800085c8:	ffffe097          	auipc	ra,0xffffe
    800085cc:	6dc080e7          	jalr	1756(ra) # 80006ca4 <plic_claim>
    800085d0:	00a00793          	li	a5,10
    800085d4:	00050493          	mv	s1,a0
    800085d8:	02f50c63          	beq	a0,a5,80008610 <console_handler+0x90>
    800085dc:	fc0506e3          	beqz	a0,800085a8 <console_handler+0x28>
    800085e0:	00050593          	mv	a1,a0
    800085e4:	00001517          	auipc	a0,0x1
    800085e8:	e3c50513          	addi	a0,a0,-452 # 80009420 <CONSOLE_STATUS+0x410>
    800085ec:	fffff097          	auipc	ra,0xfffff
    800085f0:	afc080e7          	jalr	-1284(ra) # 800070e8 <__printf>
    800085f4:	01013403          	ld	s0,16(sp)
    800085f8:	01813083          	ld	ra,24(sp)
    800085fc:	00048513          	mv	a0,s1
    80008600:	00813483          	ld	s1,8(sp)
    80008604:	02010113          	addi	sp,sp,32
    80008608:	ffffe317          	auipc	t1,0xffffe
    8000860c:	6d430067          	jr	1748(t1) # 80006cdc <plic_complete>
    80008610:	fffff097          	auipc	ra,0xfffff
    80008614:	3e0080e7          	jalr	992(ra) # 800079f0 <uartintr>
    80008618:	fddff06f          	j	800085f4 <console_handler+0x74>
    8000861c:	00001517          	auipc	a0,0x1
    80008620:	f0450513          	addi	a0,a0,-252 # 80009520 <digits+0x78>
    80008624:	fffff097          	auipc	ra,0xfffff
    80008628:	a68080e7          	jalr	-1432(ra) # 8000708c <panic>
	...
