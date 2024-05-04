
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
    8000001c:	3f0060ef          	jal	ra,8000640c <start>

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

    #csrr t0, sepc
    #addi t0, t0, 4
    #csrw sepc, t0

    call _ZN5RiscV22handle_supervisor_trapEv
    8000107c:	265010ef          	jal	ra,80002ae0 <_ZN5RiscV22handle_supervisor_trapEv>

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
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
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

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001208:	10010113          	addi	sp,sp,256

    8000120c:	00008067          	ret

0000000080001210 <_ZN3TCB14context_switchEPNS_7ContextES1_>:
.global _ZN3TCB14context_switchEPNS_7ContextES1_
.type _ZN3TCB14context_switchEPNS_7ContextES1_, @function
_ZN3TCB14context_switchEPNS_7ContextES1_:

    #store old -> context
	sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
	sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    #load running -> context
	ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_Z7syscallmmmmm>:
#include "../h/syscall_c.hpp"

void syscall(uint64 syscall_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001250:	00000073          	ecall
}
    80001254:	00813403          	ld	s0,8(sp)
    80001258:	01010113          	addi	sp,sp,16
    8000125c:	00008067          	ret

0000000080001260 <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size == 0) return nullptr;
    80001260:	04050663          	beqz	a0,800012ac <_Z9mem_allocm+0x4c>
void* mem_alloc (size_t size) {
    80001264:	ff010113          	addi	sp,sp,-16
    80001268:	00113423          	sd	ra,8(sp)
    8000126c:	00813023          	sd	s0,0(sp)
    80001270:	01010413          	addi	s0,sp,16
    size = MemoryAllocator::get_number_of_blocks(size);
    80001274:	00001097          	auipc	ra,0x1
    80001278:	620080e7          	jalr	1568(ra) # 80002894 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000127c:	00050593          	mv	a1,a0
    void volatile *addr;
    syscall(MEM_ALLOC, size);
    80001280:	00000713          	li	a4,0
    80001284:	00000693          	li	a3,0
    80001288:	00000613          	li	a2,0
    8000128c:	00100513          	li	a0,1
    80001290:	00000097          	auipc	ra,0x0
    80001294:	fb4080e7          	jalr	-76(ra) # 80001244 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(addr));
    80001298:	00050513          	mv	a0,a0
    return (void*) addr;
}
    8000129c:	00813083          	ld	ra,8(sp)
    800012a0:	00013403          	ld	s0,0(sp)
    800012a4:	01010113          	addi	sp,sp,16
    800012a8:	00008067          	ret
    if (size == 0) return nullptr;
    800012ac:	00000513          	li	a0,0
}
    800012b0:	00008067          	ret

00000000800012b4 <_Z8mem_freePv>:

int mem_free (void* addr) {
    800012b4:	fe010113          	addi	sp,sp,-32
    800012b8:	00113c23          	sd	ra,24(sp)
    800012bc:	00813823          	sd	s0,16(sp)
    800012c0:	02010413          	addi	s0,sp,32
    800012c4:	00050593          	mv	a1,a0
    int volatile success;
    syscall(MEM_FREE, (uint64) addr);
    800012c8:	00000713          	li	a4,0
    800012cc:	00000693          	li	a3,0
    800012d0:	00000613          	li	a2,0
    800012d4:	00200513          	li	a0,2
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	f6c080e7          	jalr	-148(ra) # 80001244 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(success));
    800012e0:	00050793          	mv	a5,a0
    800012e4:	fef42623          	sw	a5,-20(s0)
    return success;
    800012e8:	fec42503          	lw	a0,-20(s0)
}
    800012ec:	0005051b          	sext.w	a0,a0
    800012f0:	01813083          	ld	ra,24(sp)
    800012f4:	01013403          	ld	s0,16(sp)
    800012f8:	02010113          	addi	sp,sp,32
    800012fc:	00008067          	ret

0000000080001300 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001300:	fc010113          	addi	sp,sp,-64
    80001304:	02113c23          	sd	ra,56(sp)
    80001308:	02813823          	sd	s0,48(sp)
    8000130c:	02913423          	sd	s1,40(sp)
    80001310:	03213023          	sd	s2,32(sp)
    80001314:	01313c23          	sd	s3,24(sp)
    80001318:	04010413          	addi	s0,sp,64
    8000131c:	00050913          	mv	s2,a0
    80001320:	00058493          	mv	s1,a1
    80001324:	00060993          	mv	s3,a2
    void* stack_space = nullptr;
    /// main thread alredy has it's stack
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001328:	04058c63          	beqz	a1,80001380 <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    8000132c:	00001537          	lui	a0,0x1
    80001330:	00000097          	auipc	ra,0x0
    80001334:	f30080e7          	jalr	-208(ra) # 80001260 <_Z9mem_allocm>
    80001338:	00050713          	mv	a4,a0
    int volatile status;
    syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
    8000133c:	00098693          	mv	a3,s3
    80001340:	00048613          	mv	a2,s1
    80001344:	00090593          	mv	a1,s2
    80001348:	01100513          	li	a0,17
    8000134c:	00000097          	auipc	ra,0x0
    80001350:	ef8080e7          	jalr	-264(ra) # 80001244 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    80001354:	00050793          	mv	a5,a0
    80001358:	fcf42623          	sw	a5,-52(s0)
    return status;
    8000135c:	fcc42503          	lw	a0,-52(s0)
}
    80001360:	0005051b          	sext.w	a0,a0
    80001364:	03813083          	ld	ra,56(sp)
    80001368:	03013403          	ld	s0,48(sp)
    8000136c:	02813483          	ld	s1,40(sp)
    80001370:	02013903          	ld	s2,32(sp)
    80001374:	01813983          	ld	s3,24(sp)
    80001378:	04010113          	addi	sp,sp,64
    8000137c:	00008067          	ret
    void* stack_space = nullptr;
    80001380:	00000713          	li	a4,0
    80001384:	fb9ff06f          	j	8000133c <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

0000000080001388 <_Z11thread_exitv>:

int thread_exit () {
    80001388:	fe010113          	addi	sp,sp,-32
    8000138c:	00113c23          	sd	ra,24(sp)
    80001390:	00813823          	sd	s0,16(sp)
    80001394:	02010413          	addi	s0,sp,32
    int volatile status;
    syscall(THREAD_EXIT);
    80001398:	00000713          	li	a4,0
    8000139c:	00000693          	li	a3,0
    800013a0:	00000613          	li	a2,0
    800013a4:	00000593          	li	a1,0
    800013a8:	01200513          	li	a0,18
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	e98080e7          	jalr	-360(ra) # 80001244 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    800013b4:	00050793          	mv	a5,a0
    800013b8:	fef42623          	sw	a5,-20(s0)
    return status;
    800013bc:	fec42503          	lw	a0,-20(s0)
}
    800013c0:	0005051b          	sext.w	a0,a0
    800013c4:	01813083          	ld	ra,24(sp)
    800013c8:	01013403          	ld	s0,16(sp)
    800013cc:	02010113          	addi	sp,sp,32
    800013d0:	00008067          	ret

00000000800013d4 <_Z15thread_dispatchv>:

void thread_dispatch () {
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00113423          	sd	ra,8(sp)
    800013dc:	00813023          	sd	s0,0(sp)
    800013e0:	01010413          	addi	s0,sp,16
    syscall(THREAD_DISPATCH);
    800013e4:	00000713          	li	a4,0
    800013e8:	00000693          	li	a3,0
    800013ec:	00000613          	li	a2,0
    800013f0:	00000593          	li	a1,0
    800013f4:	01300513          	li	a0,19
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	e4c080e7          	jalr	-436(ra) # 80001244 <_Z7syscallmmmmm>
}
    80001400:	00813083          	ld	ra,8(sp)
    80001404:	00013403          	ld	s0,0(sp)
    80001408:	01010113          	addi	sp,sp,16
    8000140c:	00008067          	ret

0000000080001410 <_Z8sem_openPP3Semj>:

int sem_open (sem_t* handle, unsigned init) { return 0; }
    80001410:	ff010113          	addi	sp,sp,-16
    80001414:	00813423          	sd	s0,8(sp)
    80001418:	01010413          	addi	s0,sp,16
    8000141c:	00000513          	li	a0,0
    80001420:	00813403          	ld	s0,8(sp)
    80001424:	01010113          	addi	sp,sp,16
    80001428:	00008067          	ret

000000008000142c <_Z9sem_closeP3Sem>:

int sem_close (sem_t handle) { return 0; }
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00813423          	sd	s0,8(sp)
    80001434:	01010413          	addi	s0,sp,16
    80001438:	00000513          	li	a0,0
    8000143c:	00813403          	ld	s0,8(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret

0000000080001448 <_Z8sem_waitP3Sem>:

int sem_wait (sem_t id) { return 0; }
    80001448:	ff010113          	addi	sp,sp,-16
    8000144c:	00813423          	sd	s0,8(sp)
    80001450:	01010413          	addi	s0,sp,16
    80001454:	00000513          	li	a0,0
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_Z10sem_signalP3Sem>:

int sem_signal (sem_t id) { return 0; }
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00813423          	sd	s0,8(sp)
    8000146c:	01010413          	addi	s0,sp,16
    80001470:	00000513          	li	a0,0
    80001474:	00813403          	ld	s0,8(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret

0000000080001480 <_Z13sem_timedwaitP3Semm>:

int sem_timedwait(sem_t id, time_t timeout) { return 0; }
    80001480:	ff010113          	addi	sp,sp,-16
    80001484:	00813423          	sd	s0,8(sp)
    80001488:	01010413          	addi	s0,sp,16
    8000148c:	00000513          	li	a0,0
    80001490:	00813403          	ld	s0,8(sp)
    80001494:	01010113          	addi	sp,sp,16
    80001498:	00008067          	ret

000000008000149c <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) { return 0; }
    8000149c:	ff010113          	addi	sp,sp,-16
    800014a0:	00813423          	sd	s0,8(sp)
    800014a4:	01010413          	addi	s0,sp,16
    800014a8:	00000513          	li	a0,0
    800014ac:	00813403          	ld	s0,8(sp)
    800014b0:	01010113          	addi	sp,sp,16
    800014b4:	00008067          	ret

00000000800014b8 <_Z10time_sleepm>:

int time_sleep (time_t) { return 0; }
    800014b8:	ff010113          	addi	sp,sp,-16
    800014bc:	00813423          	sd	s0,8(sp)
    800014c0:	01010413          	addi	s0,sp,16
    800014c4:	00000513          	li	a0,0
    800014c8:	00813403          	ld	s0,8(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <_Z4getcv>:

char getc () {
    800014d4:	fe010113          	addi	sp,sp,-32
    800014d8:	00113c23          	sd	ra,24(sp)
    800014dc:	00813823          	sd	s0,16(sp)
    800014e0:	02010413          	addi	s0,sp,32
    char volatile c;
    syscall(GETC);
    800014e4:	00000713          	li	a4,0
    800014e8:	00000693          	li	a3,0
    800014ec:	00000613          	li	a2,0
    800014f0:	00000593          	li	a1,0
    800014f4:	04100513          	li	a0,65
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	d4c080e7          	jalr	-692(ra) # 80001244 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(c));
    80001500:	00050793          	mv	a5,a0
    80001504:	fef407a3          	sb	a5,-17(s0)
    return c;
    80001508:	fef44503          	lbu	a0,-17(s0)
}
    8000150c:	0ff57513          	andi	a0,a0,255
    80001510:	01813083          	ld	ra,24(sp)
    80001514:	01013403          	ld	s0,16(sp)
    80001518:	02010113          	addi	sp,sp,32
    8000151c:	00008067          	ret

0000000080001520 <_Z4putcc>:

void putc (char c) {
    80001520:	ff010113          	addi	sp,sp,-16
    80001524:	00113423          	sd	ra,8(sp)
    80001528:	00813023          	sd	s0,0(sp)
    8000152c:	01010413          	addi	s0,sp,16
    80001530:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    80001534:	00000713          	li	a4,0
    80001538:	00000693          	li	a3,0
    8000153c:	00000613          	li	a2,0
    80001540:	04200513          	li	a0,66
    80001544:	00000097          	auipc	ra,0x0
    80001548:	d00080e7          	jalr	-768(ra) # 80001244 <_Z7syscallmmmmm>
    8000154c:	00813083          	ld	ra,8(sp)
    80001550:	00013403          	ld	s0,0(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <_ZN3SemD1Ev>:
#include "../h/semaphore.hpp"

Sem::~Sem() {
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00113423          	sd	ra,8(sp)
    80001564:	00813023          	sd	s0,0(sp)
    80001568:	01010413          	addi	s0,sp,16
    8000156c:	0000a797          	auipc	a5,0xa
    80001570:	01478793          	addi	a5,a5,20 # 8000b580 <_ZTV3Sem+0x10>
    80001574:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    80001578:	00850513          	addi	a0,a0,8
    8000157c:	00001097          	auipc	ra,0x1
    80001580:	7f8080e7          	jalr	2040(ra) # 80002d74 <_ZN10ThreadList4freeEv>
}
    80001584:	00813083          	ld	ra,8(sp)
    80001588:	00013403          	ld	s0,0(sp)
    8000158c:	01010113          	addi	sp,sp,16
    80001590:	00008067          	ret

0000000080001594 <_ZN3SemD0Ev>:
Sem::~Sem() {
    80001594:	fe010113          	addi	sp,sp,-32
    80001598:	00113c23          	sd	ra,24(sp)
    8000159c:	00813823          	sd	s0,16(sp)
    800015a0:	00913423          	sd	s1,8(sp)
    800015a4:	02010413          	addi	s0,sp,32
    800015a8:	00050493          	mv	s1,a0
}
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	fb0080e7          	jalr	-80(ra) # 8000155c <_ZN3SemD1Ev>
    800015b4:	00048513          	mv	a0,s1
    800015b8:	00001097          	auipc	ra,0x1
    800015bc:	ad0080e7          	jalr	-1328(ra) # 80002088 <_ZdlPv>
    800015c0:	01813083          	ld	ra,24(sp)
    800015c4:	01013403          	ld	s0,16(sp)
    800015c8:	00813483          	ld	s1,8(sp)
    800015cc:	02010113          	addi	sp,sp,32
    800015d0:	00008067          	ret

00000000800015d4 <_ZN3Sem5blockEv>:
    if (closed) return -1;
    if (++value <= 0) unblock();
    return 0;
}

void Sem::block() {
    800015d4:	fe010113          	addi	sp,sp,-32
    800015d8:	00113c23          	sd	ra,24(sp)
    800015dc:	00813823          	sd	s0,16(sp)
    800015e0:	00913423          	sd	s1,8(sp)
    800015e4:	01213023          	sd	s2,0(sp)
    800015e8:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    800015ec:	0000a917          	auipc	s2,0xa
    800015f0:	1ec93903          	ld	s2,492(s2) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015f4:	00093483          	ld	s1,0(s2)
    blocked_threads.push_back(old);
    800015f8:	00048593          	mv	a1,s1
    800015fc:	00850513          	addi	a0,a0,8
    80001600:	00001097          	auipc	ra,0x1
    80001604:	634080e7          	jalr	1588(ra) # 80002c34 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001608:	00001097          	auipc	ra,0x1
    8000160c:	30c080e7          	jalr	780(ra) # 80002914 <_ZN9Scheduler3getEv>
    80001610:	00050593          	mv	a1,a0
    80001614:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    80001618:	00048513          	mv	a0,s1
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	5d4080e7          	jalr	1492(ra) # 80001bf0 <_ZN3TCB5yieldEPS_S0_>
}
    80001624:	01813083          	ld	ra,24(sp)
    80001628:	01013403          	ld	s0,16(sp)
    8000162c:	00813483          	ld	s1,8(sp)
    80001630:	00013903          	ld	s2,0(sp)
    80001634:	02010113          	addi	sp,sp,32
    80001638:	00008067          	ret

000000008000163c <_ZN3Sem4waitEv>:
    if (closed) return -1;
    8000163c:	01c54783          	lbu	a5,28(a0)
    80001640:	06079063          	bnez	a5,800016a0 <_ZN3Sem4waitEv+0x64>
int Sem::wait() {
    80001644:	fe010113          	addi	sp,sp,-32
    80001648:	00113c23          	sd	ra,24(sp)
    8000164c:	00813823          	sd	s0,16(sp)
    80001650:	00913423          	sd	s1,8(sp)
    80001654:	02010413          	addi	s0,sp,32
    80001658:	00050493          	mv	s1,a0
    if (--value < 0) {
    8000165c:	01852783          	lw	a5,24(a0)
    80001660:	fff7879b          	addiw	a5,a5,-1
    80001664:	00f52c23          	sw	a5,24(a0)
    80001668:	02079713          	slli	a4,a5,0x20
    8000166c:	00074e63          	bltz	a4,80001688 <_ZN3Sem4waitEv+0x4c>
    return 0;
    80001670:	00000513          	li	a0,0
}
    80001674:	01813083          	ld	ra,24(sp)
    80001678:	01013403          	ld	s0,16(sp)
    8000167c:	00813483          	ld	s1,8(sp)
    80001680:	02010113          	addi	sp,sp,32
    80001684:	00008067          	ret
        block();
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	f4c080e7          	jalr	-180(ra) # 800015d4 <_ZN3Sem5blockEv>
        if (closed) return -2; /// thread released because Semaphore is closed
    80001690:	01c4c783          	lbu	a5,28(s1)
    80001694:	00079a63          	bnez	a5,800016a8 <_ZN3Sem4waitEv+0x6c>
    return 0;
    80001698:	00000513          	li	a0,0
    8000169c:	fd9ff06f          	j	80001674 <_ZN3Sem4waitEv+0x38>
    if (closed) return -1;
    800016a0:	fff00513          	li	a0,-1
}
    800016a4:	00008067          	ret
        if (closed) return -2; /// thread released because Semaphore is closed
    800016a8:	ffe00513          	li	a0,-2
    800016ac:	fc9ff06f          	j	80001674 <_ZN3Sem4waitEv+0x38>

00000000800016b0 <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    800016b0:	ff010113          	addi	sp,sp,-16
    800016b4:	00113423          	sd	ra,8(sp)
    800016b8:	00813023          	sd	s0,0(sp)
    800016bc:	01010413          	addi	s0,sp,16
    TCB* thread = blocked_threads.get_first();
    800016c0:	00850513          	addi	a0,a0,8
    800016c4:	00001097          	auipc	ra,0x1
    800016c8:	51c080e7          	jalr	1308(ra) # 80002be0 <_ZN10ThreadList9get_firstEv>
    Scheduler::put(thread);
    800016cc:	00001097          	auipc	ra,0x1
    800016d0:	1e8080e7          	jalr	488(ra) # 800028b4 <_ZN9Scheduler3putEP3TCB>
}
    800016d4:	00813083          	ld	ra,8(sp)
    800016d8:	00013403          	ld	s0,0(sp)
    800016dc:	01010113          	addi	sp,sp,16
    800016e0:	00008067          	ret

00000000800016e4 <_ZN3Sem6signalEv>:
    if (closed) return -1;
    800016e4:	01c54783          	lbu	a5,28(a0)
    800016e8:	04079663          	bnez	a5,80001734 <_ZN3Sem6signalEv+0x50>
    if (++value <= 0) unblock();
    800016ec:	01852783          	lw	a5,24(a0)
    800016f0:	0017879b          	addiw	a5,a5,1
    800016f4:	0007871b          	sext.w	a4,a5
    800016f8:	00f52c23          	sw	a5,24(a0)
    800016fc:	00e05663          	blez	a4,80001708 <_ZN3Sem6signalEv+0x24>
    return 0;
    80001700:	00000513          	li	a0,0
}
    80001704:	00008067          	ret
int Sem::signal() {
    80001708:	ff010113          	addi	sp,sp,-16
    8000170c:	00113423          	sd	ra,8(sp)
    80001710:	00813023          	sd	s0,0(sp)
    80001714:	01010413          	addi	s0,sp,16
    if (++value <= 0) unblock();
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	f98080e7          	jalr	-104(ra) # 800016b0 <_ZN3Sem7unblockEv>
    return 0;
    80001720:	00000513          	li	a0,0
}
    80001724:	00813083          	ld	ra,8(sp)
    80001728:	00013403          	ld	s0,0(sp)
    8000172c:	01010113          	addi	sp,sp,16
    80001730:	00008067          	ret
    if (closed) return -1;
    80001734:	fff00513          	li	a0,-1
    80001738:	00008067          	ret

000000008000173c <_ZN3Sem9timedWaitEm>:

int Sem::timedWait(time_t time) {
    8000173c:	ff010113          	addi	sp,sp,-16
    80001740:	00813423          	sd	s0,8(sp)
    80001744:	01010413          	addi	s0,sp,16
    return 0;
}
    80001748:	00000513          	li	a0,0
    8000174c:	00813403          	ld	s0,8(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret

0000000080001758 <_ZN3Sem7tryWaitEv>:

int Sem::tryWait() {
    80001758:	ff010113          	addi	sp,sp,-16
    8000175c:	00813423          	sd	s0,8(sp)
    80001760:	01010413          	addi	s0,sp,16
    return 0;
}
    80001764:	00000513          	li	a0,0
    80001768:	00813403          	ld	s0,8(sp)
    8000176c:	01010113          	addi	sp,sp,16
    80001770:	00008067          	ret

0000000080001774 <_Z7workerAPv>:
    void* address = mem_alloc(50);
    MemoryAllocator::print();
    mem_free(address);
    MemoryAllocator::print();
}
void workerA(void *args) {
    80001774:	fe010113          	addi	sp,sp,-32
    80001778:	00113c23          	sd	ra,24(sp)
    8000177c:	00813823          	sd	s0,16(sp)
    80001780:	00913423          	sd	s1,8(sp)
    80001784:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; ++i) __putc('A');
    80001788:	00000493          	li	s1,0
    8000178c:	00900793          	li	a5,9
    80001790:	0097cc63          	blt	a5,s1,800017a8 <_Z7workerAPv+0x34>
    80001794:	04100513          	li	a0,65
    80001798:	00007097          	auipc	ra,0x7
    8000179c:	d34080e7          	jalr	-716(ra) # 800084cc <__putc>
    800017a0:	0014849b          	addiw	s1,s1,1
    800017a4:	fe9ff06f          	j	8000178c <_Z7workerAPv+0x18>
}
    800017a8:	01813083          	ld	ra,24(sp)
    800017ac:	01013403          	ld	s0,16(sp)
    800017b0:	00813483          	ld	s1,8(sp)
    800017b4:	02010113          	addi	sp,sp,32
    800017b8:	00008067          	ret

00000000800017bc <_Z7workerBPv>:
void workerB(void *args) {
    800017bc:	fe010113          	addi	sp,sp,-32
    800017c0:	00113c23          	sd	ra,24(sp)
    800017c4:	00813823          	sd	s0,16(sp)
    800017c8:	00913423          	sd	s1,8(sp)
    800017cc:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; ++i) __putc('B');
    800017d0:	00000493          	li	s1,0
    800017d4:	00900793          	li	a5,9
    800017d8:	0097cc63          	blt	a5,s1,800017f0 <_Z7workerBPv+0x34>
    800017dc:	04200513          	li	a0,66
    800017e0:	00007097          	auipc	ra,0x7
    800017e4:	cec080e7          	jalr	-788(ra) # 800084cc <__putc>
    800017e8:	0014849b          	addiw	s1,s1,1
    800017ec:	fe9ff06f          	j	800017d4 <_Z7workerBPv+0x18>
}
    800017f0:	01813083          	ld	ra,24(sp)
    800017f4:	01013403          	ld	s0,16(sp)
    800017f8:	00813483          	ld	s1,8(sp)
    800017fc:	02010113          	addi	sp,sp,32
    80001800:	00008067          	ret

0000000080001804 <printNumber>:
extern "C" void printNumber(uint64 num) {
    80001804:	fd010113          	addi	sp,sp,-48
    80001808:	02113423          	sd	ra,40(sp)
    8000180c:	02813023          	sd	s0,32(sp)
    80001810:	00913c23          	sd	s1,24(sp)
    80001814:	01213823          	sd	s2,16(sp)
    80001818:	01313423          	sd	s3,8(sp)
    8000181c:	03010413          	addi	s0,sp,48
    80001820:	00050913          	mv	s2,a0
    __putc('\n');
    80001824:	00a00513          	li	a0,10
    80001828:	00007097          	auipc	ra,0x7
    8000182c:	ca4080e7          	jalr	-860(ra) # 800084cc <__putc>
    __putc('N');
    80001830:	04e00513          	li	a0,78
    80001834:	00007097          	auipc	ra,0x7
    80001838:	c98080e7          	jalr	-872(ra) # 800084cc <__putc>
    __putc(':');
    8000183c:	03a00513          	li	a0,58
    80001840:	00007097          	auipc	ra,0x7
    80001844:	c8c080e7          	jalr	-884(ra) # 800084cc <__putc>
    __putc(' ');
    80001848:	02000513          	li	a0,32
    8000184c:	00007097          	auipc	ra,0x7
    80001850:	c80080e7          	jalr	-896(ra) # 800084cc <__putc>
    if (!num) __putc('0');
    80001854:	00090863          	beqz	s2,80001864 <printNumber+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001858:	00000993          	li	s3,0
    8000185c:	00000493          	li	s1,0
    80001860:	01c0006f          	j	8000187c <printNumber+0x78>
    if (!num) __putc('0');
    80001864:	03000513          	li	a0,48
    80001868:	00007097          	auipc	ra,0x7
    8000186c:	c64080e7          	jalr	-924(ra) # 800084cc <__putc>
    80001870:	fe9ff06f          	j	80001858 <printNumber+0x54>
        num /= 10;
    80001874:	00a00793          	li	a5,10
    80001878:	02f95933          	divu	s2,s2,a5
    while (num) {
    8000187c:	02090463          	beqz	s2,800018a4 <printNumber+0xa0>
        num2 *= 10;
    80001880:	00249793          	slli	a5,s1,0x2
    80001884:	009784b3          	add	s1,a5,s1
    80001888:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    8000188c:	00a00493          	li	s1,10
    80001890:	029974b3          	remu	s1,s2,s1
    80001894:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001898:	fc049ee3          	bnez	s1,80001874 <printNumber+0x70>
    8000189c:	00198993          	addi	s3,s3,1
    800018a0:	fd5ff06f          	j	80001874 <printNumber+0x70>
    while (num2) {
    800018a4:	02048063          	beqz	s1,800018c4 <printNumber+0xc0>
        __putc(num2 % 10 + '0');
    800018a8:	00a00913          	li	s2,10
    800018ac:	0324f533          	remu	a0,s1,s2
    800018b0:	03050513          	addi	a0,a0,48
    800018b4:	00007097          	auipc	ra,0x7
    800018b8:	c18080e7          	jalr	-1000(ra) # 800084cc <__putc>
        num2 /= 10;
    800018bc:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    800018c0:	fe5ff06f          	j	800018a4 <printNumber+0xa0>
    while (zero_count--) __putc('0');
    800018c4:	fff98493          	addi	s1,s3,-1
    800018c8:	00098c63          	beqz	s3,800018e0 <printNumber+0xdc>
    800018cc:	03000513          	li	a0,48
    800018d0:	00007097          	auipc	ra,0x7
    800018d4:	bfc080e7          	jalr	-1028(ra) # 800084cc <__putc>
    800018d8:	00048993          	mv	s3,s1
    800018dc:	fe9ff06f          	j	800018c4 <printNumber+0xc0>
}
    800018e0:	02813083          	ld	ra,40(sp)
    800018e4:	02013403          	ld	s0,32(sp)
    800018e8:	01813483          	ld	s1,24(sp)
    800018ec:	01013903          	ld	s2,16(sp)
    800018f0:	00813983          	ld	s3,8(sp)
    800018f4:	03010113          	addi	sp,sp,48
    800018f8:	00008067          	ret

00000000800018fc <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    800018fc:	fe010113          	addi	sp,sp,-32
    80001900:	00113c23          	sd	ra,24(sp)
    80001904:	00813823          	sd	s0,16(sp)
    80001908:	00913423          	sd	s1,8(sp)
    8000190c:	01213023          	sd	s2,0(sp)
    80001910:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001914:	00001097          	auipc	ra,0x1
    80001918:	edc080e7          	jalr	-292(ra) # 800027f0 <_ZN15MemoryAllocator5printEv>
    void *address = MemoryAllocator::mem_alloc(1);
    8000191c:	00100513          	li	a0,1
    80001920:	00001097          	auipc	ra,0x1
    80001924:	b78080e7          	jalr	-1160(ra) # 80002498 <_ZN15MemoryAllocator9mem_allocEm>
    80001928:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	ec4080e7          	jalr	-316(ra) # 800027f0 <_ZN15MemoryAllocator5printEv>
    int s1 = MemoryAllocator::mem_free(address);
    80001934:	00048513          	mv	a0,s1
    80001938:	00001097          	auipc	ra,0x1
    8000193c:	d4c080e7          	jalr	-692(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPv>
    80001940:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    80001944:	00001097          	auipc	ra,0x1
    80001948:	eac080e7          	jalr	-340(ra) # 800027f0 <_ZN15MemoryAllocator5printEv>
    int s2 = MemoryAllocator::mem_free(address);
    8000194c:	00048513          	mv	a0,s1
    80001950:	00001097          	auipc	ra,0x1
    80001954:	d34080e7          	jalr	-716(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPv>
    80001958:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	e94080e7          	jalr	-364(ra) # 800027f0 <_ZN15MemoryAllocator5printEv>
    __putc('\n');
    80001964:	00a00513          	li	a0,10
    80001968:	00007097          	auipc	ra,0x7
    8000196c:	b64080e7          	jalr	-1180(ra) # 800084cc <__putc>
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    80001970:	02090263          	beqz	s2,80001994 <_Z19testMemoryAllocatorv+0x98>
    if (s2 == -3) __putc('G'); /// same
    80001974:	ffd00793          	li	a5,-3
    80001978:	02f48663          	beq	s1,a5,800019a4 <_Z19testMemoryAllocatorv+0xa8>
}
    8000197c:	01813083          	ld	ra,24(sp)
    80001980:	01013403          	ld	s0,16(sp)
    80001984:	00813483          	ld	s1,8(sp)
    80001988:	00013903          	ld	s2,0(sp)
    8000198c:	02010113          	addi	sp,sp,32
    80001990:	00008067          	ret
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    80001994:	04700513          	li	a0,71
    80001998:	00007097          	auipc	ra,0x7
    8000199c:	b34080e7          	jalr	-1228(ra) # 800084cc <__putc>
    800019a0:	fd5ff06f          	j	80001974 <_Z19testMemoryAllocatorv+0x78>
    if (s2 == -3) __putc('G'); /// same
    800019a4:	04700513          	li	a0,71
    800019a8:	00007097          	auipc	ra,0x7
    800019ac:	b24080e7          	jalr	-1244(ra) # 800084cc <__putc>
}
    800019b0:	fcdff06f          	j	8000197c <_Z19testMemoryAllocatorv+0x80>

00000000800019b4 <_Z11testMemoryCv>:
void testMemoryC() {
    800019b4:	fe010113          	addi	sp,sp,-32
    800019b8:	00113c23          	sd	ra,24(sp)
    800019bc:	00813823          	sd	s0,16(sp)
    800019c0:	00913423          	sd	s1,8(sp)
    800019c4:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    800019c8:	00001097          	auipc	ra,0x1
    800019cc:	e28080e7          	jalr	-472(ra) # 800027f0 <_ZN15MemoryAllocator5printEv>
    void* address = mem_alloc(50);
    800019d0:	03200513          	li	a0,50
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	88c080e7          	jalr	-1908(ra) # 80001260 <_Z9mem_allocm>
    800019dc:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	e10080e7          	jalr	-496(ra) # 800027f0 <_ZN15MemoryAllocator5printEv>
    mem_free(address);
    800019e8:	00048513          	mv	a0,s1
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	8c8080e7          	jalr	-1848(ra) # 800012b4 <_Z8mem_freePv>
    MemoryAllocator::print();
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	dfc080e7          	jalr	-516(ra) # 800027f0 <_ZN15MemoryAllocator5printEv>
}
    800019fc:	01813083          	ld	ra,24(sp)
    80001a00:	01013403          	ld	s0,16(sp)
    80001a04:	00813483          	ld	s1,8(sp)
    80001a08:	02010113          	addi	sp,sp,32
    80001a0c:	00008067          	ret

0000000080001a10 <_Z11testThreadsv>:
void testThreads() {
    80001a10:	fe010113          	addi	sp,sp,-32
    80001a14:	00113c23          	sd	ra,24(sp)
    80001a18:	00813823          	sd	s0,16(sp)
    80001a1c:	00913423          	sd	s1,8(sp)
    80001a20:	02010413          	addi	s0,sp,32
    static thread_t threads[3];

    thread_create(&threads[0], nullptr, nullptr);
    80001a24:	0000a497          	auipc	s1,0xa
    80001a28:	e0c48493          	addi	s1,s1,-500 # 8000b830 <_ZZ11testThreadsvE7threads>
    80001a2c:	00000613          	li	a2,0
    80001a30:	00000593          	li	a1,0
    80001a34:	00048513          	mv	a0,s1
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	8c8080e7          	jalr	-1848(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001a40:	0004b703          	ld	a4,0(s1)
    80001a44:	0000a797          	auipc	a5,0xa
    80001a48:	d947b783          	ld	a5,-620(a5) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a4c:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], workerA, nullptr);
    80001a50:	00000613          	li	a2,0
    80001a54:	00000597          	auipc	a1,0x0
    80001a58:	d2058593          	addi	a1,a1,-736 # 80001774 <_Z7workerAPv>
    80001a5c:	0000a517          	auipc	a0,0xa
    80001a60:	ddc50513          	addi	a0,a0,-548 # 8000b838 <_ZZ11testThreadsvE7threads+0x8>
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	89c080e7          	jalr	-1892(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], workerB, nullptr);
    80001a6c:	00000613          	li	a2,0
    80001a70:	00000597          	auipc	a1,0x0
    80001a74:	d4c58593          	addi	a1,a1,-692 # 800017bc <_Z7workerBPv>
    80001a78:	0000a517          	auipc	a0,0xa
    80001a7c:	dc850513          	addi	a0,a0,-568 # 8000b840 <_ZZ11testThreadsvE7threads+0x10>
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	880080e7          	jalr	-1920(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    80001a88:	00c0006f          	j	80001a94 <_Z11testThreadsv+0x84>

    while (!threads[1] -> is_finished() || !threads[2] -> is_finished()) thread_dispatch();
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	948080e7          	jalr	-1720(ra) # 800013d4 <_Z15thread_dispatchv>
    80001a94:	0000a517          	auipc	a0,0xa
    80001a98:	da453503          	ld	a0,-604(a0) # 8000b838 <_ZZ11testThreadsvE7threads+0x8>
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	508080e7          	jalr	1288(ra) # 80001fa4 <_ZNK3TCB11is_finishedEv>
    80001aa4:	fe0504e3          	beqz	a0,80001a8c <_Z11testThreadsv+0x7c>
    80001aa8:	0000a517          	auipc	a0,0xa
    80001aac:	d9853503          	ld	a0,-616(a0) # 8000b840 <_ZZ11testThreadsvE7threads+0x10>
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	4f4080e7          	jalr	1268(ra) # 80001fa4 <_ZNK3TCB11is_finishedEv>
    80001ab8:	fc050ae3          	beqz	a0,80001a8c <_Z11testThreadsv+0x7c>
}
    80001abc:	01813083          	ld	ra,24(sp)
    80001ac0:	01013403          	ld	s0,16(sp)
    80001ac4:	00813483          	ld	s1,8(sp)
    80001ac8:	02010113          	addi	sp,sp,32
    80001acc:	00008067          	ret

0000000080001ad0 <_Z10initializev>:

void userMain();
void initialize() {
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00113423          	sd	ra,8(sp)
    80001ad8:	00813023          	sd	s0,0(sp)
    80001adc:	01010413          	addi	s0,sp,16
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001ae0:	0000a797          	auipc	a5,0xa
    80001ae4:	ce87b783          	ld	a5,-792(a5) # 8000b7c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001ae8:	10579073          	csrw	stvec,a5
    /// Enable software interrupts
//    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    /// Initialize Memory Allocator
    MemoryAllocator::initialize();
    80001aec:	00001097          	auipc	ra,0x1
    80001af0:	ac8080e7          	jalr	-1336(ra) # 800025b4 <_ZN15MemoryAllocator10initializeEv>
}
    80001af4:	00813083          	ld	ra,8(sp)
    80001af8:	00013403          	ld	s0,0(sp)
    80001afc:	01010113          	addi	sp,sp,16
    80001b00:	00008067          	ret

0000000080001b04 <_Z4testv>:
void test() {
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00113423          	sd	ra,8(sp)
    80001b0c:	00813023          	sd	s0,0(sp)
    80001b10:	01010413          	addi	s0,sp,16
    /// Test Memory Allocation
    testMemoryAllocator();
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	de8080e7          	jalr	-536(ra) # 800018fc <_Z19testMemoryAllocatorv>
    testMemoryC();
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	e98080e7          	jalr	-360(ra) # 800019b4 <_Z11testMemoryCv>
    /// Test Threads
    testThreads();
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	eec080e7          	jalr	-276(ra) # 80001a10 <_Z11testThreadsv>
    /// Test Everything
//    userMain();
}
    80001b2c:	00813083          	ld	ra,8(sp)
    80001b30:	00013403          	ld	s0,0(sp)
    80001b34:	01010113          	addi	sp,sp,16
    80001b38:	00008067          	ret

0000000080001b3c <main>:


int main() {
    80001b3c:	ff010113          	addi	sp,sp,-16
    80001b40:	00113423          	sd	ra,8(sp)
    80001b44:	00813023          	sd	s0,0(sp)
    80001b48:	01010413          	addi	s0,sp,16
    initialize();
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	f84080e7          	jalr	-124(ra) # 80001ad0 <_Z10initializev>
    test();
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	fb0080e7          	jalr	-80(ra) # 80001b04 <_Z4testv>
    __putc('\n');
    80001b5c:	00a00513          	li	a0,10
    80001b60:	00007097          	auipc	ra,0x7
    80001b64:	96c080e7          	jalr	-1684(ra) # 800084cc <__putc>
    return 0;
    80001b68:	00000513          	li	a0,0
    80001b6c:	00813083          	ld	ra,8(sp)
    80001b70:	00013403          	ld	s0,0(sp)
    80001b74:	01010113          	addi	sp,sp,16
    80001b78:	00008067          	ret

0000000080001b7c <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
    };
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    return 0;
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001b7c:	00e53423          	sd	a4,8(a0)
    80001b80:	00f53823          	sd	a5,16(a0)
    id = cnt++;
    80001b84:	0000a717          	auipc	a4,0xa
    80001b88:	cc470713          	addi	a4,a4,-828 # 8000b848 <_ZN3TCB3cntE>
    80001b8c:	00072783          	lw	a5,0(a4)
    80001b90:	0017881b          	addiw	a6,a5,1
    80001b94:	01072023          	sw	a6,0(a4)
    80001b98:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80001b9c:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80001ba0:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80001ba4:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80001ba8:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80001bac:	00200793          	li	a5,2
    80001bb0:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80001bb4:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80001bb8:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80001bbc:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80001bc0:	02058663          	beqz	a1,80001bec <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE+0x70>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001bc4:	fe010113          	addi	sp,sp,-32
    80001bc8:	00113c23          	sd	ra,24(sp)
    80001bcc:	00813823          	sd	s0,16(sp)
    80001bd0:	02010413          	addi	s0,sp,32
    if (function_body) Scheduler::put(this);
    80001bd4:	00001097          	auipc	ra,0x1
    80001bd8:	ce0080e7          	jalr	-800(ra) # 800028b4 <_ZN9Scheduler3putEP3TCB>
}
    80001bdc:	01813083          	ld	ra,24(sp)
    80001be0:	01013403          	ld	s0,16(sp)
    80001be4:	02010113          	addi	sp,sp,32
    80001be8:	00008067          	ret
    80001bec:	00008067          	ret

0000000080001bf0 <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80001bf0:	fe010113          	addi	sp,sp,-32
    80001bf4:	00113c23          	sd	ra,24(sp)
    80001bf8:	00813823          	sd	s0,16(sp)
    80001bfc:	00913423          	sd	s1,8(sp)
    80001c00:	01213023          	sd	s2,0(sp)
    80001c04:	02010413          	addi	s0,sp,32
    80001c08:	00050493          	mv	s1,a0
    80001c0c:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80001c10:	fffff097          	auipc	ra,0xfffff
    80001c14:	4f0080e7          	jalr	1264(ra) # 80001100 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80001c18:	01248a63          	beq	s1,s2,80001c2c <_ZN3TCB5yieldEPS_S0_+0x3c>
    80001c1c:	00890593          	addi	a1,s2,8
    80001c20:	00848513          	addi	a0,s1,8
    80001c24:	fffff097          	auipc	ra,0xfffff
    80001c28:	5ec080e7          	jalr	1516(ra) # 80001210 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80001c2c:	fffff097          	auipc	ra,0xfffff
    80001c30:	55c080e7          	jalr	1372(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    80001c34:	01813083          	ld	ra,24(sp)
    80001c38:	01013403          	ld	s0,16(sp)
    80001c3c:	00813483          	ld	s1,8(sp)
    80001c40:	00013903          	ld	s2,0(sp)
    80001c44:	02010113          	addi	sp,sp,32
    80001c48:	00008067          	ret

0000000080001c4c <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001c4c:	fe010113          	addi	sp,sp,-32
    80001c50:	00113c23          	sd	ra,24(sp)
    80001c54:	00813823          	sd	s0,16(sp)
    80001c58:	00913423          	sd	s1,8(sp)
    80001c5c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001c60:	0000a497          	auipc	s1,0xa
    80001c64:	bf04b483          	ld	s1,-1040(s1) # 8000b850 <_ZN3TCB7runningE>
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001c68:	0184a783          	lw	a5,24(s1)
    80001c6c:	00400713          	li	a4,4
    80001c70:	00e78663          	beq	a5,a4,80001c7c <_ZN3TCB8dispatchEv+0x30>
    80001c74:	00200713          	li	a4,2
    80001c78:	02e79e63          	bne	a5,a4,80001cb4 <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    80001c7c:	00001097          	auipc	ra,0x1
    80001c80:	c98080e7          	jalr	-872(ra) # 80002914 <_ZN9Scheduler3getEv>
    80001c84:	00050593          	mv	a1,a0
    80001c88:	0000a797          	auipc	a5,0xa
    80001c8c:	bca7b423          	sd	a0,-1080(a5) # 8000b850 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    80001c90:	00a48863          	beq	s1,a0,80001ca0 <_ZN3TCB8dispatchEv+0x54>
    80001c94:	00048513          	mv	a0,s1
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	f58080e7          	jalr	-168(ra) # 80001bf0 <_ZN3TCB5yieldEPS_S0_>
}
    80001ca0:	01813083          	ld	ra,24(sp)
    80001ca4:	01013403          	ld	s0,16(sp)
    80001ca8:	00813483          	ld	s1,8(sp)
    80001cac:	02010113          	addi	sp,sp,32
    80001cb0:	00008067          	ret
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001cb4:	00048513          	mv	a0,s1
    80001cb8:	00001097          	auipc	ra,0x1
    80001cbc:	bfc080e7          	jalr	-1028(ra) # 800028b4 <_ZN9Scheduler3putEP3TCB>
    80001cc0:	fbdff06f          	j	80001c7c <_ZN3TCB8dispatchEv+0x30>

0000000080001cc4 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00813423          	sd	s0,8(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80001cd0:	04053503          	ld	a0,64(a0)
    80001cd4:	00813403          	ld	s0,8(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00813423          	sd	s0,8(sp)
    80001ce8:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001cec:	04b53023          	sd	a1,64(a0)
}
    80001cf0:	00813403          	ld	s0,8(sp)
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00008067          	ret

0000000080001cfc <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001cfc:	ff010113          	addi	sp,sp,-16
    80001d00:	00813423          	sd	s0,8(sp)
    80001d04:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80001d08:	04b53823          	sd	a1,80(a0)
}
    80001d0c:	00813403          	ld	s0,8(sp)
    80001d10:	01010113          	addi	sp,sp,16
    80001d14:	00008067          	ret

0000000080001d18 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80001d18:	ff010113          	addi	sp,sp,-16
    80001d1c:	00813423          	sd	s0,8(sp)
    80001d20:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80001d24:	05053503          	ld	a0,80(a0)
    80001d28:	00813403          	ld	s0,8(sp)
    80001d2c:	01010113          	addi	sp,sp,16
    80001d30:	00008067          	ret

0000000080001d34 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80001d34:	ff010113          	addi	sp,sp,-16
    80001d38:	00813423          	sd	s0,8(sp)
    80001d3c:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80001d40:	04b53423          	sd	a1,72(a0)
}
    80001d44:	00813403          	ld	s0,8(sp)
    80001d48:	01010113          	addi	sp,sp,16
    80001d4c:	00008067          	ret

0000000080001d50 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00813423          	sd	s0,8(sp)
    80001d58:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80001d5c:	04853503          	ld	a0,72(a0)
    80001d60:	00813403          	ld	s0,8(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80001d6c:	ff010113          	addi	sp,sp,-16
    80001d70:	00813423          	sd	s0,8(sp)
    80001d74:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80001d78:	00b52c23          	sw	a1,24(a0)
}
    80001d7c:	00813403          	ld	s0,8(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00113423          	sd	ra,8(sp)
    80001d90:	00813023          	sd	s0,0(sp)
    80001d94:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80001d98:	00400593          	li	a1,4
    80001d9c:	0000a517          	auipc	a0,0xa
    80001da0:	ab453503          	ld	a0,-1356(a0) # 8000b850 <_ZN3TCB7runningE>
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	fc8080e7          	jalr	-56(ra) # 80001d6c <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	ea0080e7          	jalr	-352(ra) # 80001c4c <_ZN3TCB8dispatchEv>
}
    80001db4:	00813083          	ld	ra,8(sp)
    80001db8:	00013403          	ld	s0,0(sp)
    80001dbc:	01010113          	addi	sp,sp,16
    80001dc0:	00008067          	ret

0000000080001dc4 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80001dc4:	ff010113          	addi	sp,sp,-16
    80001dc8:	00113423          	sd	ra,8(sp)
    80001dcc:	00813023          	sd	s0,0(sp)
    80001dd0:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	cec080e7          	jalr	-788(ra) # 80002ac0 <_ZN5RiscV10popSppSpieEv>
    running -> function_body(running -> arg);
    80001ddc:	0000a797          	auipc	a5,0xa
    80001de0:	a747b783          	ld	a5,-1420(a5) # 8000b850 <_ZN3TCB7runningE>
    80001de4:	0207b703          	ld	a4,32(a5)
    80001de8:	0287b503          	ld	a0,40(a5)
    80001dec:	000700e7          	jalr	a4
    thread_exit();
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	f98080e7          	jalr	-104(ra) # 80001d88 <_ZN3TCB11thread_exitEv>
}
    80001df8:	00813083          	ld	ra,8(sp)
    80001dfc:	00013403          	ld	s0,0(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <_ZN3TCB5startEv>:

void TCB::start() {
    80001e08:	fe010113          	addi	sp,sp,-32
    80001e0c:	00113c23          	sd	ra,24(sp)
    80001e10:	00813823          	sd	s0,16(sp)
    80001e14:	00913423          	sd	s1,8(sp)
    80001e18:	02010413          	addi	s0,sp,32
    80001e1c:	00050493          	mv	s1,a0
    Scheduler::put(this);
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	a94080e7          	jalr	-1388(ra) # 800028b4 <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    80001e28:	0000a797          	auipc	a5,0xa
    80001e2c:	a287b783          	ld	a5,-1496(a5) # 8000b850 <_ZN3TCB7runningE>
    80001e30:	00078c63          	beqz	a5,80001e48 <_ZN3TCB5startEv+0x40>
}
    80001e34:	01813083          	ld	ra,24(sp)
    80001e38:	01013403          	ld	s0,16(sp)
    80001e3c:	00813483          	ld	s1,8(sp)
    80001e40:	02010113          	addi	sp,sp,32
    80001e44:	00008067          	ret
    if (!running) running = this;
    80001e48:	0000a797          	auipc	a5,0xa
    80001e4c:	a097b423          	sd	s1,-1528(a5) # 8000b850 <_ZN3TCB7runningE>
}
    80001e50:	fe5ff06f          	j	80001e34 <_ZN3TCB5startEv+0x2c>

0000000080001e54 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80001e54:	ff010113          	addi	sp,sp,-16
    80001e58:	00113423          	sd	ra,8(sp)
    80001e5c:	00813023          	sd	s0,0(sp)
    80001e60:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80001e64:	00001097          	auipc	ra,0x1
    80001e68:	a30080e7          	jalr	-1488(ra) # 80002894 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001e6c:	00000097          	auipc	ra,0x0
    80001e70:	62c080e7          	jalr	1580(ra) # 80002498 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e74:	00813083          	ld	ra,8(sp)
    80001e78:	00013403          	ld	s0,0(sp)
    80001e7c:	01010113          	addi	sp,sp,16
    80001e80:	00008067          	ret

0000000080001e84 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00113423          	sd	ra,8(sp)
    80001e8c:	00813023          	sd	s0,0(sp)
    80001e90:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	7f0080e7          	jalr	2032(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e9c:	00813083          	ld	ra,8(sp)
    80001ea0:	00013403          	ld	s0,0(sp)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret

0000000080001eac <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80001eac:	fa010113          	addi	sp,sp,-96
    80001eb0:	04113c23          	sd	ra,88(sp)
    80001eb4:	04813823          	sd	s0,80(sp)
    80001eb8:	04913423          	sd	s1,72(sp)
    80001ebc:	05213023          	sd	s2,64(sp)
    80001ec0:	03313c23          	sd	s3,56(sp)
    80001ec4:	03413823          	sd	s4,48(sp)
    80001ec8:	03513423          	sd	s5,40(sp)
    80001ecc:	06010413          	addi	s0,sp,96
    80001ed0:	00050993          	mv	s3,a0
    80001ed4:	00058a13          	mv	s4,a1
    80001ed8:	00060a93          	mv	s5,a2
    80001edc:	00068493          	mv	s1,a3
    Context context = {
    80001ee0:	00000797          	auipc	a5,0x0
    80001ee4:	ee478793          	addi	a5,a5,-284 # 80001dc4 <_ZN3TCB16wrapper_functionEv>
    80001ee8:	faf43023          	sd	a5,-96(s0)
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0)
    80001eec:	04068663          	beqz	a3,80001f38 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x8c>
    80001ef0:	000017b7          	lui	a5,0x1
    80001ef4:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001ef8:	00f687b3          	add	a5,a3,a5
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001efc:	fa043703          	ld	a4,-96(s0)
    80001f00:	fae43823          	sd	a4,-80(s0)
    80001f04:	faf43c23          	sd	a5,-72(s0)
    80001f08:	05800513          	li	a0,88
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	f48080e7          	jalr	-184(ra) # 80001e54 <_ZN3TCBnwEm>
    80001f14:	00050913          	mv	s2,a0
    80001f18:	fb043703          	ld	a4,-80(s0)
    80001f1c:	fb843783          	ld	a5,-72(s0)
    80001f20:	00048693          	mv	a3,s1
    80001f24:	000a8613          	mv	a2,s5
    80001f28:	000a0593          	mv	a1,s4
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	c50080e7          	jalr	-944(ra) # 80001b7c <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    80001f34:	0280006f          	j	80001f5c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0xb0>
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0)
    80001f38:	00000793          	li	a5,0
    80001f3c:	fc1ff06f          	j	80001efc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x50>
    80001f40:	00050493          	mv	s1,a0
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001f44:	00090513          	mv	a0,s2
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	f3c080e7          	jalr	-196(ra) # 80001e84 <_ZN3TCBdlEPv>
    80001f50:	00048513          	mv	a0,s1
    80001f54:	0000b097          	auipc	ra,0xb
    80001f58:	a54080e7          	jalr	-1452(ra) # 8000c9a8 <_Unwind_Resume>
    80001f5c:	0129b023          	sd	s2,0(s3)
}
    80001f60:	00000513          	li	a0,0
    80001f64:	05813083          	ld	ra,88(sp)
    80001f68:	05013403          	ld	s0,80(sp)
    80001f6c:	04813483          	ld	s1,72(sp)
    80001f70:	04013903          	ld	s2,64(sp)
    80001f74:	03813983          	ld	s3,56(sp)
    80001f78:	03013a03          	ld	s4,48(sp)
    80001f7c:	02813a83          	ld	s5,40(sp)
    80001f80:	06010113          	addi	sp,sp,96
    80001f84:	00008067          	ret

0000000080001f88 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00813423          	sd	s0,8(sp)
    80001f90:	01010413          	addi	s0,sp,16
    return time_slice;
}
    80001f94:	03853503          	ld	a0,56(a0)
    80001f98:	00813403          	ld	s0,8(sp)
    80001f9c:	01010113          	addi	sp,sp,16
    80001fa0:	00008067          	ret

0000000080001fa4 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    80001fa4:	ff010113          	addi	sp,sp,-16
    80001fa8:	00813423          	sd	s0,8(sp)
    80001fac:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80001fb0:	01852503          	lw	a0,24(a0)
    80001fb4:	ffc50513          	addi	a0,a0,-4
}
    80001fb8:	00153513          	seqz	a0,a0
    80001fbc:	00813403          	ld	s0,8(sp)
    80001fc0:	01010113          	addi	sp,sp,16
    80001fc4:	00008067          	ret

0000000080001fc8 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    80001fc8:	fe010113          	addi	sp,sp,-32
    80001fcc:	00113c23          	sd	ra,24(sp)
    80001fd0:	00813823          	sd	s0,16(sp)
    80001fd4:	00913423          	sd	s1,8(sp)
    80001fd8:	02010413          	addi	s0,sp,32
    80001fdc:	00050493          	mv	s1,a0
    80001fe0:	00009797          	auipc	a5,0x9
    80001fe4:	5f878793          	addi	a5,a5,1528 # 8000b5d8 <_ZTV6Thread+0x10>
    80001fe8:	00f53023          	sd	a5,0(a0)
    myHandle -> set_status(TCB::FINISHED);
    80001fec:	00400593          	li	a1,4
    80001ff0:	00853503          	ld	a0,8(a0)
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	d78080e7          	jalr	-648(ra) # 80001d6c <_ZN3TCB10set_statusENS_6StatusE>
    delete myHandle;
    80001ffc:	0084b503          	ld	a0,8(s1)
    80002000:	00050663          	beqz	a0,8000200c <_ZN6ThreadD1Ev+0x44>
    80002004:	00000097          	auipc	ra,0x0
    80002008:	e80080e7          	jalr	-384(ra) # 80001e84 <_ZN3TCBdlEPv>
}
    8000200c:	01813083          	ld	ra,24(sp)
    80002010:	01013403          	ld	s0,16(sp)
    80002014:	00813483          	ld	s1,8(sp)
    80002018:	02010113          	addi	sp,sp,32
    8000201c:	00008067          	ret

0000000080002020 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002020:	00009797          	auipc	a5,0x9
    80002024:	5e078793          	addi	a5,a5,1504 # 8000b600 <_ZTV9Semaphore+0x10>
    80002028:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    8000202c:	00853503          	ld	a0,8(a0)
    80002030:	02050663          	beqz	a0,8000205c <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00113423          	sd	ra,8(sp)
    8000203c:	00813023          	sd	s0,0(sp)
    80002040:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80002044:	fffff097          	auipc	ra,0xfffff
    80002048:	3e8080e7          	jalr	1000(ra) # 8000142c <_Z9sem_closeP3Sem>
}
    8000204c:	00813083          	ld	ra,8(sp)
    80002050:	00013403          	ld	s0,0(sp)
    80002054:	01010113          	addi	sp,sp,16
    80002058:	00008067          	ret
    8000205c:	00008067          	ret

0000000080002060 <_Znwm>:
void* operator new(size_t size){
    80002060:	ff010113          	addi	sp,sp,-16
    80002064:	00113423          	sd	ra,8(sp)
    80002068:	00813023          	sd	s0,0(sp)
    8000206c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002070:	fffff097          	auipc	ra,0xfffff
    80002074:	1f0080e7          	jalr	496(ra) # 80001260 <_Z9mem_allocm>
}
    80002078:	00813083          	ld	ra,8(sp)
    8000207c:	00013403          	ld	s0,0(sp)
    80002080:	01010113          	addi	sp,sp,16
    80002084:	00008067          	ret

0000000080002088 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80002088:	ff010113          	addi	sp,sp,-16
    8000208c:	00113423          	sd	ra,8(sp)
    80002090:	00813023          	sd	s0,0(sp)
    80002094:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002098:	fffff097          	auipc	ra,0xfffff
    8000209c:	21c080e7          	jalr	540(ra) # 800012b4 <_Z8mem_freePv>
}
    800020a0:	00813083          	ld	ra,8(sp)
    800020a4:	00013403          	ld	s0,0(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800020b0:	fe010113          	addi	sp,sp,-32
    800020b4:	00113c23          	sd	ra,24(sp)
    800020b8:	00813823          	sd	s0,16(sp)
    800020bc:	00913423          	sd	s1,8(sp)
    800020c0:	02010413          	addi	s0,sp,32
    800020c4:	00050493          	mv	s1,a0
}
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	f00080e7          	jalr	-256(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    800020d0:	00048513          	mv	a0,s1
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	fb4080e7          	jalr	-76(ra) # 80002088 <_ZdlPv>
    800020dc:	01813083          	ld	ra,24(sp)
    800020e0:	01013403          	ld	s0,16(sp)
    800020e4:	00813483          	ld	s1,8(sp)
    800020e8:	02010113          	addi	sp,sp,32
    800020ec:	00008067          	ret

00000000800020f0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800020f0:	fe010113          	addi	sp,sp,-32
    800020f4:	00113c23          	sd	ra,24(sp)
    800020f8:	00813823          	sd	s0,16(sp)
    800020fc:	00913423          	sd	s1,8(sp)
    80002100:	02010413          	addi	s0,sp,32
    80002104:	00050493          	mv	s1,a0
}
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	f18080e7          	jalr	-232(ra) # 80002020 <_ZN9SemaphoreD1Ev>
    80002110:	00048513          	mv	a0,s1
    80002114:	00000097          	auipc	ra,0x0
    80002118:	f74080e7          	jalr	-140(ra) # 80002088 <_ZdlPv>
    8000211c:	01813083          	ld	ra,24(sp)
    80002120:	01013403          	ld	s0,16(sp)
    80002124:	00813483          	ld	s1,8(sp)
    80002128:	02010113          	addi	sp,sp,32
    8000212c:	00008067          	ret

0000000080002130 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    80002130:	ff010113          	addi	sp,sp,-16
    80002134:	00113423          	sd	ra,8(sp)
    80002138:	00813023          	sd	s0,0(sp)
    8000213c:	01010413          	addi	s0,sp,16
    80002140:	00009797          	auipc	a5,0x9
    80002144:	49878793          	addi	a5,a5,1176 # 8000b5d8 <_ZTV6Thread+0x10>
    80002148:	00f53023          	sd	a5,0(a0)
    8000214c:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    80002150:	00850513          	addi	a0,a0,8
    80002154:	fffff097          	auipc	ra,0xfffff
    80002158:	1ac080e7          	jalr	428(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
}
    8000215c:	00813083          	ld	ra,8(sp)
    80002160:	00013403          	ld	s0,0(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <_ZN6Thread5startEv>:
int Thread::start() {
    8000216c:	ff010113          	addi	sp,sp,-16
    80002170:	00113423          	sd	ra,8(sp)
    80002174:	00813023          	sd	s0,0(sp)
    80002178:	01010413          	addi	s0,sp,16
    myHandle -> start();
    8000217c:	00853503          	ld	a0,8(a0)
    80002180:	00000097          	auipc	ra,0x0
    80002184:	c88080e7          	jalr	-888(ra) # 80001e08 <_ZN3TCB5startEv>
}
    80002188:	00000513          	li	a0,0
    8000218c:	00813083          	ld	ra,8(sp)
    80002190:	00013403          	ld	s0,0(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00113423          	sd	ra,8(sp)
    800021a4:	00813023          	sd	s0,0(sp)
    800021a8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	228080e7          	jalr	552(ra) # 800013d4 <_Z15thread_dispatchv>
}
    800021b4:	00813083          	ld	ra,8(sp)
    800021b8:	00013403          	ld	s0,0(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800021c4:	ff010113          	addi	sp,sp,-16
    800021c8:	00113423          	sd	ra,8(sp)
    800021cc:	00813023          	sd	s0,0(sp)
    800021d0:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800021d4:	fffff097          	auipc	ra,0xfffff
    800021d8:	2e4080e7          	jalr	740(ra) # 800014b8 <_Z10time_sleepm>
}
    800021dc:	00000513          	li	a0,0
    800021e0:	00813083          	ld	ra,8(sp)
    800021e4:	00013403          	ld	s0,0(sp)
    800021e8:	01010113          	addi	sp,sp,16
    800021ec:	00008067          	ret

00000000800021f0 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr) {
    800021f0:	ff010113          	addi	sp,sp,-16
    800021f4:	00813423          	sd	s0,8(sp)
    800021f8:	01010413          	addi	s0,sp,16
    800021fc:	00009797          	auipc	a5,0x9
    80002200:	3dc78793          	addi	a5,a5,988 # 8000b5d8 <_ZTV6Thread+0x10>
    80002204:	00f53023          	sd	a5,0(a0)
    80002208:	00053423          	sd	zero,8(a0)
}
    8000220c:	00813403          	ld	s0,8(sp)
    80002210:	01010113          	addi	sp,sp,16
    80002214:	00008067          	ret

0000000080002218 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    80002218:	ff010113          	addi	sp,sp,-16
    8000221c:	00113423          	sd	ra,8(sp)
    80002220:	00813023          	sd	s0,0(sp)
    80002224:	01010413          	addi	s0,sp,16
    80002228:	00009797          	auipc	a5,0x9
    8000222c:	3d878793          	addi	a5,a5,984 # 8000b600 <_ZTV9Semaphore+0x10>
    80002230:	00f53023          	sd	a5,0(a0)
    80002234:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002238:	00850513          	addi	a0,a0,8
    8000223c:	fffff097          	auipc	ra,0xfffff
    80002240:	1d4080e7          	jalr	468(ra) # 80001410 <_Z8sem_openPP3Semj>
}
    80002244:	00813083          	ld	ra,8(sp)
    80002248:	00013403          	ld	s0,0(sp)
    8000224c:	01010113          	addi	sp,sp,16
    80002250:	00008067          	ret

0000000080002254 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    80002254:	00853503          	ld	a0,8(a0)
    80002258:	02050663          	beqz	a0,80002284 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00113423          	sd	ra,8(sp)
    80002264:	00813023          	sd	s0,0(sp)
    80002268:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    8000226c:	fffff097          	auipc	ra,0xfffff
    80002270:	1dc080e7          	jalr	476(ra) # 80001448 <_Z8sem_waitP3Sem>
    return -1;
}
    80002274:	00813083          	ld	ra,8(sp)
    80002278:	00013403          	ld	s0,0(sp)
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00008067          	ret
    return -1;
    80002284:	fff00513          	li	a0,-1
}
    80002288:	00008067          	ret

000000008000228c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    8000228c:	00853503          	ld	a0,8(a0)
    80002290:	02050663          	beqz	a0,800022bc <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00113423          	sd	ra,8(sp)
    8000229c:	00813023          	sd	s0,0(sp)
    800022a0:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	1c0080e7          	jalr	448(ra) # 80001464 <_Z10sem_signalP3Sem>
    return -1;
}
    800022ac:	00813083          	ld	ra,8(sp)
    800022b0:	00013403          	ld	s0,0(sp)
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00008067          	ret
    return -1;
    800022bc:	fff00513          	li	a0,-1
}
    800022c0:	00008067          	ret

00000000800022c4 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00813423          	sd	s0,8(sp)
    800022cc:	01010413          	addi	s0,sp,16
    return 0;
}
    800022d0:	00000513          	li	a0,0
    800022d4:	00813403          	ld	s0,8(sp)
    800022d8:	01010113          	addi	sp,sp,16
    800022dc:	00008067          	ret

00000000800022e0 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800022e0:	ff010113          	addi	sp,sp,-16
    800022e4:	00813423          	sd	s0,8(sp)
    800022e8:	01010413          	addi	s0,sp,16
    return 0;
}
    800022ec:	00000513          	li	a0,0
    800022f0:	00813403          	ld	s0,8(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00813423          	sd	s0,8(sp)
    80002304:	01010413          	addi	s0,sp,16

}
    80002308:	00813403          	ld	s0,8(sp)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret

0000000080002314 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80002314:	fe010113          	addi	sp,sp,-32
    80002318:	00113c23          	sd	ra,24(sp)
    8000231c:	00813823          	sd	s0,16(sp)
    80002320:	00913423          	sd	s1,8(sp)
    80002324:	02010413          	addi	s0,sp,32
    80002328:	00050493          	mv	s1,a0
    8000232c:	00000097          	auipc	ra,0x0
    80002330:	ec4080e7          	jalr	-316(ra) # 800021f0 <_ZN6ThreadC1Ev>
    80002334:	00009797          	auipc	a5,0x9
    80002338:	27478793          	addi	a5,a5,628 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    8000233c:	00f4b023          	sd	a5,0(s1)

}
    80002340:	01813083          	ld	ra,24(sp)
    80002344:	01013403          	ld	s0,16(sp)
    80002348:	00813483          	ld	s1,8(sp)
    8000234c:	02010113          	addi	sp,sp,32
    80002350:	00008067          	ret

0000000080002354 <_ZN7Console4getcEv>:

char Console::getc() {
    80002354:	ff010113          	addi	sp,sp,-16
    80002358:	00113423          	sd	ra,8(sp)
    8000235c:	00813023          	sd	s0,0(sp)
    80002360:	01010413          	addi	s0,sp,16
    return ::getc();
    80002364:	fffff097          	auipc	ra,0xfffff
    80002368:	170080e7          	jalr	368(ra) # 800014d4 <_Z4getcv>
}
    8000236c:	00813083          	ld	ra,8(sp)
    80002370:	00013403          	ld	s0,0(sp)
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret

000000008000237c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000237c:	ff010113          	addi	sp,sp,-16
    80002380:	00113423          	sd	ra,8(sp)
    80002384:	00813023          	sd	s0,0(sp)
    80002388:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	194080e7          	jalr	404(ra) # 80001520 <_Z4putcc>
}
    80002394:	00813083          	ld	ra,8(sp)
    80002398:	00013403          	ld	s0,0(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret

00000000800023a4 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800023a4:	ff010113          	addi	sp,sp,-16
    800023a8:	00813423          	sd	s0,8(sp)
    800023ac:	01010413          	addi	s0,sp,16
    800023b0:	00813403          	ld	s0,8(sp)
    800023b4:	01010113          	addi	sp,sp,16
    800023b8:	00008067          	ret

00000000800023bc <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00813423          	sd	s0,8(sp)
    800023c4:	01010413          	addi	s0,sp,16
    800023c8:	00813403          	ld	s0,8(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret

00000000800023d4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00113423          	sd	ra,8(sp)
    800023dc:	00813023          	sd	s0,0(sp)
    800023e0:	01010413          	addi	s0,sp,16
    800023e4:	00009797          	auipc	a5,0x9
    800023e8:	1c478793          	addi	a5,a5,452 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    800023ec:	00f53023          	sd	a5,0(a0)
    800023f0:	00000097          	auipc	ra,0x0
    800023f4:	bd8080e7          	jalr	-1064(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    800023f8:	00813083          	ld	ra,8(sp)
    800023fc:	00013403          	ld	s0,0(sp)
    80002400:	01010113          	addi	sp,sp,16
    80002404:	00008067          	ret

0000000080002408 <_ZN14PeriodicThreadD0Ev>:
    80002408:	fe010113          	addi	sp,sp,-32
    8000240c:	00113c23          	sd	ra,24(sp)
    80002410:	00813823          	sd	s0,16(sp)
    80002414:	00913423          	sd	s1,8(sp)
    80002418:	02010413          	addi	s0,sp,32
    8000241c:	00050493          	mv	s1,a0
    80002420:	00009797          	auipc	a5,0x9
    80002424:	18878793          	addi	a5,a5,392 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    80002428:	00f53023          	sd	a5,0(a0)
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	b9c080e7          	jalr	-1124(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80002434:	00048513          	mv	a0,s1
    80002438:	00000097          	auipc	ra,0x0
    8000243c:	c50080e7          	jalr	-944(ra) # 80002088 <_ZdlPv>
    80002440:	01813083          	ld	ra,24(sp)
    80002444:	01013403          	ld	s0,16(sp)
    80002448:	00813483          	ld	s1,8(sp)
    8000244c:	02010113          	addi	sp,sp,32
    80002450:	00008067          	ret

0000000080002454 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00813423          	sd	s0,8(sp)
    8000245c:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002460:	00853783          	ld	a5,8(a0)
    80002464:	02078463          	beqz	a5,8000248c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002468:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    8000246c:	01053783          	ld	a5,16(a0)
    80002470:	00078863          	beqz	a5,80002480 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80002474:	00060463          	beqz	a2,8000247c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002478:	00853583          	ld	a1,8(a0)
    8000247c:	00b7b423          	sd	a1,8(a5)
}
    80002480:	00813403          	ld	s0,8(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret
    else freeSegHead = nextSeg;
    8000248c:	00009797          	auipc	a5,0x9
    80002490:	3cb7ba23          	sd	a1,980(a5) # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    80002494:	fd9ff06f          	j	8000246c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

0000000080002498 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002498:	fe010113          	addi	sp,sp,-32
    8000249c:	00113c23          	sd	ra,24(sp)
    800024a0:	00813823          	sd	s0,16(sp)
    800024a4:	00913423          	sd	s1,8(sp)
    800024a8:	01213023          	sd	s2,0(sp)
    800024ac:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800024b0:	0e050e63          	beqz	a0,800025ac <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800024b4:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800024b8:	00009497          	auipc	s1,0x9
    800024bc:	3a84b483          	ld	s1,936(s1) # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800024c0:	0a048e63          	beqz	s1,8000257c <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800024c4:	0004b783          	ld	a5,0(s1)
    800024c8:	0527e463          	bltu	a5,s2,80002510 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800024cc:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800024d0:	01700713          	li	a4,23
    800024d4:	04f76263          	bltu	a4,a5,80002518 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800024d8:	00000613          	li	a2,0
    800024dc:	0104b583          	ld	a1,16(s1)
    800024e0:	00048513          	mv	a0,s1
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	f70080e7          	jalr	-144(ra) # 80002454 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800024ec:	00009797          	auipc	a5,0x9
    800024f0:	37c7b783          	ld	a5,892(a5) # 8000b868 <_ZN15MemoryAllocator11usedSegHeadE>
    800024f4:	04078863          	beqz	a5,80002544 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800024f8:	0497fa63          	bgeu	a5,s1,8000254c <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800024fc:	00078713          	mv	a4,a5
    80002500:	0107b783          	ld	a5,16(a5)
    80002504:	04078663          	beqz	a5,80002550 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002508:	fe97eae3          	bltu	a5,s1,800024fc <_ZN15MemoryAllocator9mem_allocEm+0x64>
    8000250c:	0440006f          	j	80002550 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80002510:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80002514:	fadff06f          	j	800024c0 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002518:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    8000251c:	0084b703          	ld	a4,8(s1)
    80002520:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002524:	0104b703          	ld	a4,16(s1)
    80002528:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    8000252c:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80002530:	00100613          	li	a2,1
    80002534:	00048513          	mv	a0,s1
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	f1c080e7          	jalr	-228(ra) # 80002454 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80002540:	fadff06f          	j	800024ec <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    80002544:	00078713          	mv	a4,a5
    80002548:	0080006f          	j	80002550 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    8000254c:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002550:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002554:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002558:	04070063          	beqz	a4,80002598 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    8000255c:	01073783          	ld	a5,16(a4)
    80002560:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002564:	02070e63          	beqz	a4,800025a0 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002568:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    8000256c:	0104b783          	ld	a5,16(s1)
    80002570:	00078463          	beqz	a5,80002578 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80002574:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002578:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    8000257c:	00048513          	mv	a0,s1
    80002580:	01813083          	ld	ra,24(sp)
    80002584:	01013403          	ld	s0,16(sp)
    80002588:	00813483          	ld	s1,8(sp)
    8000258c:	00013903          	ld	s2,0(sp)
    80002590:	02010113          	addi	sp,sp,32
    80002594:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002598:	00070793          	mv	a5,a4
    8000259c:	fc5ff06f          	j	80002560 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    800025a0:	00009797          	auipc	a5,0x9
    800025a4:	2c97b423          	sd	s1,712(a5) # 8000b868 <_ZN15MemoryAllocator11usedSegHeadE>
    800025a8:	fc5ff06f          	j	8000256c <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800025ac:	00000493          	li	s1,0
    800025b0:	fcdff06f          	j	8000257c <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800025b4 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800025b4:	00009797          	auipc	a5,0x9
    800025b8:	2bc7b783          	ld	a5,700(a5) # 8000b870 <_ZN15MemoryAllocator8instanceE>
    800025bc:	00078463          	beqz	a5,800025c4 <_ZN15MemoryAllocator10initializeEv+0x10>
    800025c0:	00008067          	ret
void MemoryAllocator::initialize() {
    800025c4:	fe010113          	addi	sp,sp,-32
    800025c8:	00113c23          	sd	ra,24(sp)
    800025cc:	00813823          	sd	s0,16(sp)
    800025d0:	00913423          	sd	s1,8(sp)
    800025d4:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800025d8:	00009797          	auipc	a5,0x9
    800025dc:	1e87b783          	ld	a5,488(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025e0:	0007b783          	ld	a5,0(a5)
    800025e4:	00009497          	auipc	s1,0x9
    800025e8:	27c48493          	addi	s1,s1,636 # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    800025ec:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800025f0:	00009717          	auipc	a4,0x9
    800025f4:	1f073703          	ld	a4,496(a4) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025f8:	00073703          	ld	a4,0(a4)
    800025fc:	40f70733          	sub	a4,a4,a5
    80002600:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80002604:	0004b783          	ld	a5,0(s1)
    80002608:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    8000260c:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80002610:	00100513          	li	a0,1
    80002614:	00000097          	auipc	ra,0x0
    80002618:	e84080e7          	jalr	-380(ra) # 80002498 <_ZN15MemoryAllocator9mem_allocEm>
    8000261c:	00a4b823          	sd	a0,16(s1)
}
    80002620:	01813083          	ld	ra,24(sp)
    80002624:	01013403          	ld	s0,16(sp)
    80002628:	00813483          	ld	s1,8(sp)
    8000262c:	02010113          	addi	sp,sp,32
    80002630:	00008067          	ret

0000000080002634 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00813423          	sd	s0,8(sp)
    8000263c:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002640:	01053783          	ld	a5,16(a0)
    80002644:	00078863          	beqz	a5,80002654 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002648:	00053703          	ld	a4,0(a0)
    8000264c:	00e506b3          	add	a3,a0,a4
    80002650:	00d78863          	beq	a5,a3,80002660 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80002654:	00813403          	ld	s0,8(sp)
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002660:	0007b683          	ld	a3,0(a5)
    80002664:	00d70733          	add	a4,a4,a3
    80002668:	01870713          	addi	a4,a4,24
    8000266c:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002670:	0107b783          	ld	a5,16(a5)
    80002674:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002678:	fc078ee3          	beqz	a5,80002654 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    8000267c:	00a7b423          	sd	a0,8(a5)
}
    80002680:	fd5ff06f          	j	80002654 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002684 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002684:	14050263          	beqz	a0,800027c8 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80002688:	fd010113          	addi	sp,sp,-48
    8000268c:	02113423          	sd	ra,40(sp)
    80002690:	02813023          	sd	s0,32(sp)
    80002694:	00913c23          	sd	s1,24(sp)
    80002698:	01213823          	sd	s2,16(sp)
    8000269c:	01313423          	sd	s3,8(sp)
    800026a0:	03010413          	addi	s0,sp,48
    800026a4:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800026a8:	00009797          	auipc	a5,0x9
    800026ac:	1187b783          	ld	a5,280(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800026b0:	0007b783          	ld	a5,0(a5)
    800026b4:	10f56e63          	bltu	a0,a5,800027d0 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    800026b8:	00009797          	auipc	a5,0x9
    800026bc:	1287b783          	ld	a5,296(a5) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026c0:	0007b783          	ld	a5,0(a5)
    800026c4:	10a7ea63          	bltu	a5,a0,800027d8 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    800026c8:	00009797          	auipc	a5,0x9
    800026cc:	1a07b783          	ld	a5,416(a5) # 8000b868 <_ZN15MemoryAllocator11usedSegHeadE>
    800026d0:	10078863          	beqz	a5,800027e0 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800026d4:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800026d8:	00078863          	beqz	a5,800026e8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800026dc:	08978e63          	beq	a5,s1,80002778 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800026e0:	0107b783          	ld	a5,16(a5)
    800026e4:	ff5ff06f          	j	800026d8 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800026e8:	00000793          	li	a5,0
    if (!found) return -3;
    800026ec:	0e078e63          	beqz	a5,800027e8 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    800026f0:	00000613          	li	a2,0
    800026f4:	ff893583          	ld	a1,-8(s2)
    800026f8:	00048513          	mv	a0,s1
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	d58080e7          	jalr	-680(ra) # 80002454 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    80002704:	00009797          	auipc	a5,0x9
    80002708:	15c7b783          	ld	a5,348(a5) # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    8000270c:	06078a63          	beqz	a5,80002780 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80002710:	08f4e463          	bltu	s1,a5,80002798 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80002714:	00078993          	mv	s3,a5
    80002718:	0107b783          	ld	a5,16(a5)
    8000271c:	00078463          	beqz	a5,80002724 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80002720:	fe97eae3          	bltu	a5,s1,80002714 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80002724:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002728:	0109b783          	ld	a5,16(s3)
    8000272c:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002730:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80002734:	ff893783          	ld	a5,-8(s2)
    80002738:	00078463          	beqz	a5,80002740 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    8000273c:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002740:	00048513          	mv	a0,s1
    80002744:	00000097          	auipc	ra,0x0
    80002748:	ef0080e7          	jalr	-272(ra) # 80002634 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    8000274c:	00098513          	mv	a0,s3
    80002750:	00000097          	auipc	ra,0x0
    80002754:	ee4080e7          	jalr	-284(ra) # 80002634 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002758:	00000513          	li	a0,0
}
    8000275c:	02813083          	ld	ra,40(sp)
    80002760:	02013403          	ld	s0,32(sp)
    80002764:	01813483          	ld	s1,24(sp)
    80002768:	01013903          	ld	s2,16(sp)
    8000276c:	00813983          	ld	s3,8(sp)
    80002770:	03010113          	addi	sp,sp,48
    80002774:	00008067          	ret
            found = true;
    80002778:	00100793          	li	a5,1
    8000277c:	f71ff06f          	j	800026ec <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002780:	00009797          	auipc	a5,0x9
    80002784:	0e97b023          	sd	s1,224(a5) # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002788:	fe093c23          	sd	zero,-8(s2)
    8000278c:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002790:	00000513          	li	a0,0
    80002794:	fc9ff06f          	j	8000275c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80002798:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    8000279c:	00009797          	auipc	a5,0x9
    800027a0:	0c478793          	addi	a5,a5,196 # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    800027a4:	0007b703          	ld	a4,0(a5)
    800027a8:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800027ac:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800027b0:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800027b4:	00048513          	mv	a0,s1
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	e7c080e7          	jalr	-388(ra) # 80002634 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800027c0:	00000513          	li	a0,0
    800027c4:	f99ff06f          	j	8000275c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800027c8:	fff00513          	li	a0,-1
}
    800027cc:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800027d0:	fff00513          	li	a0,-1
    800027d4:	f89ff06f          	j	8000275c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    800027d8:	fff00513          	li	a0,-1
    800027dc:	f81ff06f          	j	8000275c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    800027e0:	ffe00513          	li	a0,-2
    800027e4:	f79ff06f          	j	8000275c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    800027e8:	ffd00513          	li	a0,-3
    800027ec:	f71ff06f          	j	8000275c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

00000000800027f0 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800027f0:	fe010113          	addi	sp,sp,-32
    800027f4:	00113c23          	sd	ra,24(sp)
    800027f8:	00813823          	sd	s0,16(sp)
    800027fc:	00913423          	sd	s1,8(sp)
    80002800:	02010413          	addi	s0,sp,32
    __putc('\n');
    80002804:	00a00513          	li	a0,10
    80002808:	00006097          	auipc	ra,0x6
    8000280c:	cc4080e7          	jalr	-828(ra) # 800084cc <__putc>
    __putc('M');
    80002810:	04d00513          	li	a0,77
    80002814:	00006097          	auipc	ra,0x6
    80002818:	cb8080e7          	jalr	-840(ra) # 800084cc <__putc>
    __putc(':');
    8000281c:	03a00513          	li	a0,58
    80002820:	00006097          	auipc	ra,0x6
    80002824:	cac080e7          	jalr	-852(ra) # 800084cc <__putc>
    __putc(' ');
    80002828:	02000513          	li	a0,32
    8000282c:	00006097          	auipc	ra,0x6
    80002830:	ca0080e7          	jalr	-864(ra) # 800084cc <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80002834:	00009497          	auipc	s1,0x9
    80002838:	02c4b483          	ld	s1,44(s1) # 8000b860 <_ZN15MemoryAllocator11freeSegHeadE>
    8000283c:	00048c63          	beqz	s1,80002854 <_ZN15MemoryAllocator5printEv+0x64>
    80002840:	06600513          	li	a0,102
    80002844:	00006097          	auipc	ra,0x6
    80002848:	c88080e7          	jalr	-888(ra) # 800084cc <__putc>
    8000284c:	0104b483          	ld	s1,16(s1)
    80002850:	fedff06f          	j	8000283c <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    80002854:	00900513          	li	a0,9
    80002858:	00006097          	auipc	ra,0x6
    8000285c:	c74080e7          	jalr	-908(ra) # 800084cc <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80002860:	00009497          	auipc	s1,0x9
    80002864:	0084b483          	ld	s1,8(s1) # 8000b868 <_ZN15MemoryAllocator11usedSegHeadE>
    80002868:	00048c63          	beqz	s1,80002880 <_ZN15MemoryAllocator5printEv+0x90>
    8000286c:	07500513          	li	a0,117
    80002870:	00006097          	auipc	ra,0x6
    80002874:	c5c080e7          	jalr	-932(ra) # 800084cc <__putc>
    80002878:	0104b483          	ld	s1,16(s1)
    8000287c:	fedff06f          	j	80002868 <_ZN15MemoryAllocator5printEv+0x78>
}
    80002880:	01813083          	ld	ra,24(sp)
    80002884:	01013403          	ld	s0,16(sp)
    80002888:	00813483          	ld	s1,8(sp)
    8000288c:	02010113          	addi	sp,sp,32
    80002890:	00008067          	ret

0000000080002894 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00813423          	sd	s0,8(sp)
    8000289c:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800028a0:	05750513          	addi	a0,a0,87
}
    800028a4:	00655513          	srli	a0,a0,0x6
    800028a8:	00813403          	ld	s0,8(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    800028b4:	fe010113          	addi	sp,sp,-32
    800028b8:	00113c23          	sd	ra,24(sp)
    800028bc:	00813823          	sd	s0,16(sp)
    800028c0:	00913423          	sd	s1,8(sp)
    800028c4:	02010413          	addi	s0,sp,32
    800028c8:	00050493          	mv	s1,a0
    if (tail_ready) {
    800028cc:	00009517          	auipc	a0,0x9
    800028d0:	fac53503          	ld	a0,-84(a0) # 8000b878 <_ZN9Scheduler10tail_readyE>
    800028d4:	02051463          	bnez	a0,800028fc <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    800028d8:	00009797          	auipc	a5,0x9
    800028dc:	fa078793          	addi	a5,a5,-96 # 8000b878 <_ZN9Scheduler10tail_readyE>
    800028e0:	0097b023          	sd	s1,0(a5)
    800028e4:	0097b423          	sd	s1,8(a5)
}
    800028e8:	01813083          	ld	ra,24(sp)
    800028ec:	01013403          	ld	s0,16(sp)
    800028f0:	00813483          	ld	s1,8(sp)
    800028f4:	02010113          	addi	sp,sp,32
    800028f8:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    800028fc:	00048593          	mv	a1,s1
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	3e0080e7          	jalr	992(ra) # 80001ce0 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002908:	00009797          	auipc	a5,0x9
    8000290c:	f697b823          	sd	s1,-144(a5) # 8000b878 <_ZN9Scheduler10tail_readyE>
        return;
    80002910:	fd9ff06f          	j	800028e8 <_ZN9Scheduler3putEP3TCB+0x34>

0000000080002914 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002914:	fe010113          	addi	sp,sp,-32
    80002918:	00113c23          	sd	ra,24(sp)
    8000291c:	00813823          	sd	s0,16(sp)
    80002920:	00913423          	sd	s1,8(sp)
    80002924:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002928:	00009497          	auipc	s1,0x9
    8000292c:	f584b483          	ld	s1,-168(s1) # 8000b880 <_ZN9Scheduler10head_readyE>
    80002930:	00048c63          	beqz	s1,80002948 <_ZN9Scheduler3getEv+0x34>
    TCB *head = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002934:	00048513          	mv	a0,s1
    80002938:	fffff097          	auipc	ra,0xfffff
    8000293c:	38c080e7          	jalr	908(ra) # 80001cc4 <_ZNK3TCB14get_next_readyEv>
    80002940:	00009797          	auipc	a5,0x9
    80002944:	f4a7b023          	sd	a0,-192(a5) # 8000b880 <_ZN9Scheduler10head_readyE>
    return head;
}
    80002948:	00048513          	mv	a0,s1
    8000294c:	01813083          	ld	ra,24(sp)
    80002950:	01013403          	ld	s0,16(sp)
    80002954:	00813483          	ld	s1,8(sp)
    80002958:	02010113          	addi	sp,sp,32
    8000295c:	00008067          	ret

0000000080002960 <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    80002960:	fc010113          	addi	sp,sp,-64
    80002964:	02113c23          	sd	ra,56(sp)
    80002968:	02813823          	sd	s0,48(sp)
    8000296c:	02913423          	sd	s1,40(sp)
    80002970:	03213023          	sd	s2,32(sp)
    80002974:	01313c23          	sd	s3,24(sp)
    80002978:	01413823          	sd	s4,16(sp)
    8000297c:	01513423          	sd	s5,8(sp)
    80002980:	04010413          	addi	s0,sp,64
    80002984:	00050a93          	mv	s5,a0
    80002988:	00058993          	mv	s3,a1
    thread -> set_status(TCB::Status::SLEEPING);
    8000298c:	00100593          	li	a1,1
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	3dc080e7          	jalr	988(ra) # 80001d6c <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    80002998:	00009497          	auipc	s1,0x9
    8000299c:	ef04b483          	ld	s1,-272(s1) # 8000b888 <_ZN9Scheduler13head_sleepingE>
    800029a0:	02048e63          	beqz	s1,800029dc <_ZN9Scheduler12put_to_sleepEP3TCBm+0x7c>
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    800029a4:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    800029a8:	00000a13          	li	s4,0
    while (tmp) {
    800029ac:	04048c63          	beqz	s1,80002a04 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
        current_time += tmp -> get_time_to_sleep();
    800029b0:	00048513          	mv	a0,s1
    800029b4:	fffff097          	auipc	ra,0xfffff
    800029b8:	39c080e7          	jalr	924(ra) # 80001d50 <_ZNK3TCB17get_time_to_sleepEv>
    800029bc:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    800029c0:	0729e463          	bltu	s3,s2,80002a28 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xc8>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    800029c4:	00048513          	mv	a0,s1
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	350080e7          	jalr	848(ra) # 80001d18 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    800029d0:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    800029d4:	00050493          	mv	s1,a0
    while (tmp) {
    800029d8:	fd5ff06f          	j	800029ac <_ZN9Scheduler12put_to_sleepEP3TCBm+0x4c>
        head_sleeping = thread;
    800029dc:	00009797          	auipc	a5,0x9
    800029e0:	eb57b623          	sd	s5,-340(a5) # 8000b888 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    800029e4:	00000593          	li	a1,0
    800029e8:	000a8513          	mv	a0,s5
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	310080e7          	jalr	784(ra) # 80001cfc <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    800029f4:	00098593          	mv	a1,s3
    800029f8:	000a8513          	mv	a0,s5
    800029fc:	fffff097          	auipc	ra,0xfffff
    80002a00:	338080e7          	jalr	824(ra) # 80001d34 <_ZN3TCB17set_time_to_sleepEm>
    }
}
    80002a04:	03813083          	ld	ra,56(sp)
    80002a08:	03013403          	ld	s0,48(sp)
    80002a0c:	02813483          	ld	s1,40(sp)
    80002a10:	02013903          	ld	s2,32(sp)
    80002a14:	01813983          	ld	s3,24(sp)
    80002a18:	01013a03          	ld	s4,16(sp)
    80002a1c:	00813a83          	ld	s5,8(sp)
    80002a20:	04010113          	addi	sp,sp,64
    80002a24:	00008067          	ret
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
    80002a28:	000a0a63          	beqz	s4,80002a3c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xdc>
    80002a2c:	000a0513          	mv	a0,s4
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	320080e7          	jalr	800(ra) # 80001d50 <_ZNK3TCB17get_time_to_sleepEv>
    80002a38:	40a989b3          	sub	s3,s3,a0
            thread -> set_time_to_sleep(new_time);
    80002a3c:	00098593          	mv	a1,s3
    80002a40:	000a8513          	mv	a0,s5
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	2f0080e7          	jalr	752(ra) # 80001d34 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002a4c:	00048593          	mv	a1,s1
    80002a50:	000a8513          	mv	a0,s5
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	2a8080e7          	jalr	680(ra) # 80001cfc <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002a5c:	040a0c63          	beqz	s4,80002ab4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x154>
    80002a60:	000a8593          	mv	a1,s5
    80002a64:	000a0513          	mv	a0,s4
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	294080e7          	jalr	660(ra) # 80001cfc <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002a70:	00048513          	mv	a0,s1
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	2a4080e7          	jalr	676(ra) # 80001d18 <_ZNK3TCB17get_next_sleepingEv>
    80002a7c:	00050493          	mv	s1,a0
    80002a80:	f80482e3          	beqz	s1,80002a04 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80002a84:	00048513          	mv	a0,s1
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	2c8080e7          	jalr	712(ra) # 80001d50 <_ZNK3TCB17get_time_to_sleepEv>
    80002a90:	413505b3          	sub	a1,a0,s3
    80002a94:	00048513          	mv	a0,s1
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	29c080e7          	jalr	668(ra) # 80001d34 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002aa0:	00048513          	mv	a0,s1
    80002aa4:	fffff097          	auipc	ra,0xfffff
    80002aa8:	274080e7          	jalr	628(ra) # 80001d18 <_ZNK3TCB17get_next_sleepingEv>
    80002aac:	00050493          	mv	s1,a0
    80002ab0:	fd1ff06f          	j	80002a80 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x120>
            else head_sleeping = thread;
    80002ab4:	00009797          	auipc	a5,0x9
    80002ab8:	dd57ba23          	sd	s5,-556(a5) # 8000b888 <_ZN9Scheduler13head_sleepingE>
    80002abc:	fb5ff06f          	j	80002a70 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x110>

0000000080002ac0 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00813423          	sd	s0,8(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002acc:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002ad0:	10200073          	sret
}
    80002ad4:	00813403          	ld	s0,8(sp)
    80002ad8:	01010113          	addi	sp,sp,16
    80002adc:	00008067          	ret

0000000080002ae0 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002ae0:	fe010113          	addi	sp,sp,-32
    80002ae4:	00113c23          	sd	ra,24(sp)
    80002ae8:	00813823          	sd	s0,16(sp)
    80002aec:	02010413          	addi	s0,sp,32
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002af0:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002af4:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002af8:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002afc:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002b00:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002b04:	142027f3          	csrr	a5,scause
    80002b08:	fef43023          	sd	a5,-32(s0)
    return scause;
    80002b0c:	fe043703          	ld	a4,-32(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002b10:	fff00793          	li	a5,-1
    80002b14:	03f79793          	slli	a5,a5,0x3f
    80002b18:	00178793          	addi	a5,a5,1
    80002b1c:	02f70463          	beq	a4,a5,80002b44 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
//        }
//        mc_sip(SIP_SSIE);
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002b20:	fff00793          	li	a5,-1
    80002b24:	03f79793          	slli	a5,a5,0x3f
    80002b28:	00978793          	addi	a5,a5,9
    80002b2c:	02f70463          	beq	a4,a5,80002b54 <_ZN5RiscV22handle_supervisor_trapEv+0x74>
        console_handler();
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002b30:	00200793          	li	a5,2
    80002b34:	02f70663          	beq	a4,a5,80002b60 <_ZN5RiscV22handle_supervisor_trapEv+0x80>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002b38:	ff870713          	addi	a4,a4,-8
    80002b3c:	00100793          	li	a5,1
    80002b40:	02e7f663          	bgeu	a5,a4,80002b6c <_ZN5RiscV22handle_supervisor_trapEv+0x8c>
                break;
            default:
                break;
        }
    }
    80002b44:	01813083          	ld	ra,24(sp)
    80002b48:	01013403          	ld	s0,16(sp)
    80002b4c:	02010113          	addi	sp,sp,32
    80002b50:	00008067          	ret
        console_handler();
    80002b54:	00006097          	auipc	ra,0x6
    80002b58:	9ec080e7          	jalr	-1556(ra) # 80008540 <console_handler>
    80002b5c:	fe9ff06f          	j	80002b44 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002b60:	00100793          	li	a5,1
    80002b64:	00078513          	mv	a0,a5
        return;
    80002b68:	fddff06f          	j	80002b44 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002b6c:	141027f3          	csrr	a5,sepc
    80002b70:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80002b74:	fe843783          	ld	a5,-24(s0)
        write_sepc(read_sepc() + 4);
    80002b78:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002b7c:	14179073          	csrw	sepc,a5
        switch(syscall_code) {
    80002b80:	01300793          	li	a5,19
    80002b84:	fd07e0e3          	bltu	a5,a6,80002b44 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
    80002b88:	00281813          	slli	a6,a6,0x2
    80002b8c:	00006717          	auipc	a4,0x6
    80002b90:	49470713          	addi	a4,a4,1172 # 80009020 <CONSOLE_STATUS+0x10>
    80002b94:	00e80833          	add	a6,a6,a4
    80002b98:	00082783          	lw	a5,0(a6)
    80002b9c:	00e787b3          	add	a5,a5,a4
    80002ba0:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	8f4080e7          	jalr	-1804(ra) # 80002498 <_ZN15MemoryAllocator9mem_allocEm>
                break;
    80002bac:	f99ff06f          	j	80002b44 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                MemoryAllocator::mem_free((void *) a1);
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	ad4080e7          	jalr	-1324(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002bb8:	f8dff06f          	j	80002b44 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002bbc:	fffff097          	auipc	ra,0xfffff
    80002bc0:	2f0080e7          	jalr	752(ra) # 80001eac <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002bc4:	f81ff06f          	j	80002b44 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                TCB::thread_exit();
    80002bc8:	fffff097          	auipc	ra,0xfffff
    80002bcc:	1c0080e7          	jalr	448(ra) # 80001d88 <_ZN3TCB11thread_exitEv>
                break;
    80002bd0:	f75ff06f          	j	80002b44 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                TCB::dispatch();
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	078080e7          	jalr	120(ra) # 80001c4c <_ZN3TCB8dispatchEv>
                break;
    80002bdc:	f69ff06f          	j	80002b44 <_ZN5RiscV22handle_supervisor_trapEv+0x64>

0000000080002be0 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    80002be0:	ff010113          	addi	sp,sp,-16
    80002be4:	00813423          	sd	s0,8(sp)
    80002be8:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002bec:	00053503          	ld	a0,0(a0)
    80002bf0:	00050463          	beqz	a0,80002bf8 <_ZN10ThreadList9get_firstEv+0x18>
    80002bf4:	00053503          	ld	a0,0(a0)
}
    80002bf8:	00813403          	ld	s0,8(sp)
    80002bfc:	01010113          	addi	sp,sp,16
    80002c00:	00008067          	ret

0000000080002c04 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002c04:	ff010113          	addi	sp,sp,-16
    80002c08:	00113423          	sd	ra,8(sp)
    80002c0c:	00813023          	sd	s0,0(sp)
    80002c10:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	c80080e7          	jalr	-896(ra) # 80002894 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	87c080e7          	jalr	-1924(ra) # 80002498 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002c24:	00813083          	ld	ra,8(sp)
    80002c28:	00013403          	ld	s0,0(sp)
    80002c2c:	01010113          	addi	sp,sp,16
    80002c30:	00008067          	ret

0000000080002c34 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002c34:	fe010113          	addi	sp,sp,-32
    80002c38:	00113c23          	sd	ra,24(sp)
    80002c3c:	00813823          	sd	s0,16(sp)
    80002c40:	00913423          	sd	s1,8(sp)
    80002c44:	01213023          	sd	s2,0(sp)
    80002c48:	02010413          	addi	s0,sp,32
    80002c4c:	00050493          	mv	s1,a0
    80002c50:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80002c54:	01000513          	li	a0,16
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	fac080e7          	jalr	-84(ra) # 80002c04 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80002c60:	01253023          	sd	s2,0(a0)
    80002c64:	00053423          	sd	zero,8(a0)
    80002c68:	0004b783          	ld	a5,0(s1)
    80002c6c:	02078263          	beqz	a5,80002c90 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80002c70:	00a4b023          	sd	a0,0(s1)
    80002c74:	00a4b423          	sd	a0,8(s1)
}
    80002c78:	01813083          	ld	ra,24(sp)
    80002c7c:	01013403          	ld	s0,16(sp)
    80002c80:	00813483          	ld	s1,8(sp)
    80002c84:	00013903          	ld	s2,0(sp)
    80002c88:	02010113          	addi	sp,sp,32
    80002c8c:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80002c90:	0084b783          	ld	a5,8(s1)
    80002c94:	00a7b423          	sd	a0,8(a5)
    80002c98:	fddff06f          	j	80002c74 <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080002c9c <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80002c9c:	fe010113          	addi	sp,sp,-32
    80002ca0:	00113c23          	sd	ra,24(sp)
    80002ca4:	00813823          	sd	s0,16(sp)
    80002ca8:	00913423          	sd	s1,8(sp)
    80002cac:	01213023          	sd	s2,0(sp)
    80002cb0:	02010413          	addi	s0,sp,32
    80002cb4:	00050493          	mv	s1,a0
    80002cb8:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80002cbc:	01000513          	li	a0,16
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	f44080e7          	jalr	-188(ra) # 80002c04 <_ZN10ThreadList4NodenwEm>
    80002cc8:	01253023          	sd	s2,0(a0)
    80002ccc:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80002cd0:	0004b783          	ld	a5,0(s1)
    80002cd4:	00f53423          	sd	a5,8(a0)
    head = node;
    80002cd8:	00a4b023          	sd	a0,0(s1)
}
    80002cdc:	01813083          	ld	ra,24(sp)
    80002ce0:	01013403          	ld	s0,16(sp)
    80002ce4:	00813483          	ld	s1,8(sp)
    80002ce8:	00013903          	ld	s2,0(sp)
    80002cec:	02010113          	addi	sp,sp,32
    80002cf0:	00008067          	ret

0000000080002cf4 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80002cf4:	ff010113          	addi	sp,sp,-16
    80002cf8:	00113423          	sd	ra,8(sp)
    80002cfc:	00813023          	sd	s0,0(sp)
    80002d00:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002d04:	00000097          	auipc	ra,0x0
    80002d08:	980080e7          	jalr	-1664(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002d0c:	00813083          	ld	ra,8(sp)
    80002d10:	00013403          	ld	s0,0(sp)
    80002d14:	01010113          	addi	sp,sp,16
    80002d18:	00008067          	ret

0000000080002d1c <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80002d1c:	fe010113          	addi	sp,sp,-32
    80002d20:	00113c23          	sd	ra,24(sp)
    80002d24:	00813823          	sd	s0,16(sp)
    80002d28:	00913423          	sd	s1,8(sp)
    80002d2c:	02010413          	addi	s0,sp,32
    80002d30:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002d34:	00053503          	ld	a0,0(a0)
    80002d38:	02050a63          	beqz	a0,80002d6c <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80002d3c:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80002d40:	00853703          	ld	a4,8(a0)
    80002d44:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    80002d48:	00073423          	sd	zero,8(a4)
    delete tmp;
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	fa8080e7          	jalr	-88(ra) # 80002cf4 <_ZN10ThreadList4NodedlEPv>
}
    80002d54:	00048513          	mv	a0,s1
    80002d58:	01813083          	ld	ra,24(sp)
    80002d5c:	01013403          	ld	s0,16(sp)
    80002d60:	00813483          	ld	s1,8(sp)
    80002d64:	02010113          	addi	sp,sp,32
    80002d68:	00008067          	ret
    if (!head) return nullptr;
    80002d6c:	00050493          	mv	s1,a0
    80002d70:	fe5ff06f          	j	80002d54 <_ZN10ThreadList12remove_firstEv+0x38>

0000000080002d74 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80002d74:	fe010113          	addi	sp,sp,-32
    80002d78:	00113c23          	sd	ra,24(sp)
    80002d7c:	00813823          	sd	s0,16(sp)
    80002d80:	00913423          	sd	s1,8(sp)
    80002d84:	02010413          	addi	s0,sp,32
    80002d88:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80002d8c:	00048513          	mv	a0,s1
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	e50080e7          	jalr	-432(ra) # 80002be0 <_ZN10ThreadList9get_firstEv>
    80002d98:	00050a63          	beqz	a0,80002dac <_ZN10ThreadList4freeEv+0x38>
    80002d9c:	00048513          	mv	a0,s1
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	f7c080e7          	jalr	-132(ra) # 80002d1c <_ZN10ThreadList12remove_firstEv>
    80002da8:	fe5ff06f          	j	80002d8c <_ZN10ThreadList4freeEv+0x18>
}
    80002dac:	01813083          	ld	ra,24(sp)
    80002db0:	01013403          	ld	s0,16(sp)
    80002db4:	00813483          	ld	s1,8(sp)
    80002db8:	02010113          	addi	sp,sp,32
    80002dbc:	00008067          	ret

0000000080002dc0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002dc0:	fe010113          	addi	sp,sp,-32
    80002dc4:	00113c23          	sd	ra,24(sp)
    80002dc8:	00813823          	sd	s0,16(sp)
    80002dcc:	00913423          	sd	s1,8(sp)
    80002dd0:	01213023          	sd	s2,0(sp)
    80002dd4:	02010413          	addi	s0,sp,32
    80002dd8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002ddc:	00000913          	li	s2,0
    80002de0:	00c0006f          	j	80002dec <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002de4:	ffffe097          	auipc	ra,0xffffe
    80002de8:	5f0080e7          	jalr	1520(ra) # 800013d4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002dec:	ffffe097          	auipc	ra,0xffffe
    80002df0:	6e8080e7          	jalr	1768(ra) # 800014d4 <_Z4getcv>
    80002df4:	0005059b          	sext.w	a1,a0
    80002df8:	01b00793          	li	a5,27
    80002dfc:	02f58a63          	beq	a1,a5,80002e30 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002e00:	0084b503          	ld	a0,8(s1)
    80002e04:	00003097          	auipc	ra,0x3
    80002e08:	384080e7          	jalr	900(ra) # 80006188 <_ZN6Buffer3putEi>
        i++;
    80002e0c:	0019071b          	addiw	a4,s2,1
    80002e10:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e14:	0004a683          	lw	a3,0(s1)
    80002e18:	0026979b          	slliw	a5,a3,0x2
    80002e1c:	00d787bb          	addw	a5,a5,a3
    80002e20:	0017979b          	slliw	a5,a5,0x1
    80002e24:	02f767bb          	remw	a5,a4,a5
    80002e28:	fc0792e3          	bnez	a5,80002dec <_ZL16producerKeyboardPv+0x2c>
    80002e2c:	fb9ff06f          	j	80002de4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002e30:	00100793          	li	a5,1
    80002e34:	00009717          	auipc	a4,0x9
    80002e38:	a4f72e23          	sw	a5,-1444(a4) # 8000b890 <_ZL9threadEnd>
    data->buffer->put('!');
    80002e3c:	02100593          	li	a1,33
    80002e40:	0084b503          	ld	a0,8(s1)
    80002e44:	00003097          	auipc	ra,0x3
    80002e48:	344080e7          	jalr	836(ra) # 80006188 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e4c:	0104b503          	ld	a0,16(s1)
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	614080e7          	jalr	1556(ra) # 80001464 <_Z10sem_signalP3Sem>
}
    80002e58:	01813083          	ld	ra,24(sp)
    80002e5c:	01013403          	ld	s0,16(sp)
    80002e60:	00813483          	ld	s1,8(sp)
    80002e64:	00013903          	ld	s2,0(sp)
    80002e68:	02010113          	addi	sp,sp,32
    80002e6c:	00008067          	ret

0000000080002e70 <_ZL8producerPv>:

static void producer(void *arg) {
    80002e70:	fe010113          	addi	sp,sp,-32
    80002e74:	00113c23          	sd	ra,24(sp)
    80002e78:	00813823          	sd	s0,16(sp)
    80002e7c:	00913423          	sd	s1,8(sp)
    80002e80:	01213023          	sd	s2,0(sp)
    80002e84:	02010413          	addi	s0,sp,32
    80002e88:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e8c:	00000913          	li	s2,0
    80002e90:	00c0006f          	j	80002e9c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e94:	ffffe097          	auipc	ra,0xffffe
    80002e98:	540080e7          	jalr	1344(ra) # 800013d4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002e9c:	00009797          	auipc	a5,0x9
    80002ea0:	9f47a783          	lw	a5,-1548(a5) # 8000b890 <_ZL9threadEnd>
    80002ea4:	02079e63          	bnez	a5,80002ee0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002ea8:	0004a583          	lw	a1,0(s1)
    80002eac:	0305859b          	addiw	a1,a1,48
    80002eb0:	0084b503          	ld	a0,8(s1)
    80002eb4:	00003097          	auipc	ra,0x3
    80002eb8:	2d4080e7          	jalr	724(ra) # 80006188 <_ZN6Buffer3putEi>
        i++;
    80002ebc:	0019071b          	addiw	a4,s2,1
    80002ec0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002ec4:	0004a683          	lw	a3,0(s1)
    80002ec8:	0026979b          	slliw	a5,a3,0x2
    80002ecc:	00d787bb          	addw	a5,a5,a3
    80002ed0:	0017979b          	slliw	a5,a5,0x1
    80002ed4:	02f767bb          	remw	a5,a4,a5
    80002ed8:	fc0792e3          	bnez	a5,80002e9c <_ZL8producerPv+0x2c>
    80002edc:	fb9ff06f          	j	80002e94 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002ee0:	0104b503          	ld	a0,16(s1)
    80002ee4:	ffffe097          	auipc	ra,0xffffe
    80002ee8:	580080e7          	jalr	1408(ra) # 80001464 <_Z10sem_signalP3Sem>
}
    80002eec:	01813083          	ld	ra,24(sp)
    80002ef0:	01013403          	ld	s0,16(sp)
    80002ef4:	00813483          	ld	s1,8(sp)
    80002ef8:	00013903          	ld	s2,0(sp)
    80002efc:	02010113          	addi	sp,sp,32
    80002f00:	00008067          	ret

0000000080002f04 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002f04:	fd010113          	addi	sp,sp,-48
    80002f08:	02113423          	sd	ra,40(sp)
    80002f0c:	02813023          	sd	s0,32(sp)
    80002f10:	00913c23          	sd	s1,24(sp)
    80002f14:	01213823          	sd	s2,16(sp)
    80002f18:	01313423          	sd	s3,8(sp)
    80002f1c:	03010413          	addi	s0,sp,48
    80002f20:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f24:	00000993          	li	s3,0
    80002f28:	01c0006f          	j	80002f44 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002f2c:	ffffe097          	auipc	ra,0xffffe
    80002f30:	4a8080e7          	jalr	1192(ra) # 800013d4 <_Z15thread_dispatchv>
    80002f34:	0500006f          	j	80002f84 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002f38:	00a00513          	li	a0,10
    80002f3c:	ffffe097          	auipc	ra,0xffffe
    80002f40:	5e4080e7          	jalr	1508(ra) # 80001520 <_Z4putcc>
    while (!threadEnd) {
    80002f44:	00009797          	auipc	a5,0x9
    80002f48:	94c7a783          	lw	a5,-1716(a5) # 8000b890 <_ZL9threadEnd>
    80002f4c:	06079063          	bnez	a5,80002fac <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002f50:	00893503          	ld	a0,8(s2)
    80002f54:	00003097          	auipc	ra,0x3
    80002f58:	2c4080e7          	jalr	708(ra) # 80006218 <_ZN6Buffer3getEv>
        i++;
    80002f5c:	0019849b          	addiw	s1,s3,1
    80002f60:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f64:	0ff57513          	andi	a0,a0,255
    80002f68:	ffffe097          	auipc	ra,0xffffe
    80002f6c:	5b8080e7          	jalr	1464(ra) # 80001520 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002f70:	00092703          	lw	a4,0(s2)
    80002f74:	0027179b          	slliw	a5,a4,0x2
    80002f78:	00e787bb          	addw	a5,a5,a4
    80002f7c:	02f4e7bb          	remw	a5,s1,a5
    80002f80:	fa0786e3          	beqz	a5,80002f2c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f84:	05000793          	li	a5,80
    80002f88:	02f4e4bb          	remw	s1,s1,a5
    80002f8c:	fa049ce3          	bnez	s1,80002f44 <_ZL8consumerPv+0x40>
    80002f90:	fa9ff06f          	j	80002f38 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002f94:	00893503          	ld	a0,8(s2)
    80002f98:	00003097          	auipc	ra,0x3
    80002f9c:	280080e7          	jalr	640(ra) # 80006218 <_ZN6Buffer3getEv>
        putc(key);
    80002fa0:	0ff57513          	andi	a0,a0,255
    80002fa4:	ffffe097          	auipc	ra,0xffffe
    80002fa8:	57c080e7          	jalr	1404(ra) # 80001520 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002fac:	00893503          	ld	a0,8(s2)
    80002fb0:	00003097          	auipc	ra,0x3
    80002fb4:	2f4080e7          	jalr	756(ra) # 800062a4 <_ZN6Buffer6getCntEv>
    80002fb8:	fca04ee3          	bgtz	a0,80002f94 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002fbc:	01093503          	ld	a0,16(s2)
    80002fc0:	ffffe097          	auipc	ra,0xffffe
    80002fc4:	4a4080e7          	jalr	1188(ra) # 80001464 <_Z10sem_signalP3Sem>
}
    80002fc8:	02813083          	ld	ra,40(sp)
    80002fcc:	02013403          	ld	s0,32(sp)
    80002fd0:	01813483          	ld	s1,24(sp)
    80002fd4:	01013903          	ld	s2,16(sp)
    80002fd8:	00813983          	ld	s3,8(sp)
    80002fdc:	03010113          	addi	sp,sp,48
    80002fe0:	00008067          	ret

0000000080002fe4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002fe4:	f9010113          	addi	sp,sp,-112
    80002fe8:	06113423          	sd	ra,104(sp)
    80002fec:	06813023          	sd	s0,96(sp)
    80002ff0:	04913c23          	sd	s1,88(sp)
    80002ff4:	05213823          	sd	s2,80(sp)
    80002ff8:	05313423          	sd	s3,72(sp)
    80002ffc:	05413023          	sd	s4,64(sp)
    80003000:	03513c23          	sd	s5,56(sp)
    80003004:	03613823          	sd	s6,48(sp)
    80003008:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000300c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003010:	00006517          	auipc	a0,0x6
    80003014:	06050513          	addi	a0,a0,96 # 80009070 <CONSOLE_STATUS+0x60>
    80003018:	00002097          	auipc	ra,0x2
    8000301c:	220080e7          	jalr	544(ra) # 80005238 <_Z11printStringPKc>
    getString(input, 30);
    80003020:	01e00593          	li	a1,30
    80003024:	fa040493          	addi	s1,s0,-96
    80003028:	00048513          	mv	a0,s1
    8000302c:	00002097          	auipc	ra,0x2
    80003030:	294080e7          	jalr	660(ra) # 800052c0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003034:	00048513          	mv	a0,s1
    80003038:	00002097          	auipc	ra,0x2
    8000303c:	360080e7          	jalr	864(ra) # 80005398 <_Z11stringToIntPKc>
    80003040:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003044:	00006517          	auipc	a0,0x6
    80003048:	04c50513          	addi	a0,a0,76 # 80009090 <CONSOLE_STATUS+0x80>
    8000304c:	00002097          	auipc	ra,0x2
    80003050:	1ec080e7          	jalr	492(ra) # 80005238 <_Z11printStringPKc>
    getString(input, 30);
    80003054:	01e00593          	li	a1,30
    80003058:	00048513          	mv	a0,s1
    8000305c:	00002097          	auipc	ra,0x2
    80003060:	264080e7          	jalr	612(ra) # 800052c0 <_Z9getStringPci>
    n = stringToInt(input);
    80003064:	00048513          	mv	a0,s1
    80003068:	00002097          	auipc	ra,0x2
    8000306c:	330080e7          	jalr	816(ra) # 80005398 <_Z11stringToIntPKc>
    80003070:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003074:	00006517          	auipc	a0,0x6
    80003078:	03c50513          	addi	a0,a0,60 # 800090b0 <CONSOLE_STATUS+0xa0>
    8000307c:	00002097          	auipc	ra,0x2
    80003080:	1bc080e7          	jalr	444(ra) # 80005238 <_Z11printStringPKc>
    80003084:	00000613          	li	a2,0
    80003088:	00a00593          	li	a1,10
    8000308c:	00090513          	mv	a0,s2
    80003090:	00002097          	auipc	ra,0x2
    80003094:	358080e7          	jalr	856(ra) # 800053e8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003098:	00006517          	auipc	a0,0x6
    8000309c:	03050513          	addi	a0,a0,48 # 800090c8 <CONSOLE_STATUS+0xb8>
    800030a0:	00002097          	auipc	ra,0x2
    800030a4:	198080e7          	jalr	408(ra) # 80005238 <_Z11printStringPKc>
    800030a8:	00000613          	li	a2,0
    800030ac:	00a00593          	li	a1,10
    800030b0:	00048513          	mv	a0,s1
    800030b4:	00002097          	auipc	ra,0x2
    800030b8:	334080e7          	jalr	820(ra) # 800053e8 <_Z8printIntiii>
    printString(".\n");
    800030bc:	00006517          	auipc	a0,0x6
    800030c0:	02450513          	addi	a0,a0,36 # 800090e0 <CONSOLE_STATUS+0xd0>
    800030c4:	00002097          	auipc	ra,0x2
    800030c8:	174080e7          	jalr	372(ra) # 80005238 <_Z11printStringPKc>
    if(threadNum > n) {
    800030cc:	0324c463          	blt	s1,s2,800030f4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800030d0:	03205c63          	blez	s2,80003108 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800030d4:	03800513          	li	a0,56
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	f88080e7          	jalr	-120(ra) # 80002060 <_Znwm>
    800030e0:	00050a13          	mv	s4,a0
    800030e4:	00048593          	mv	a1,s1
    800030e8:	00003097          	auipc	ra,0x3
    800030ec:	004080e7          	jalr	4(ra) # 800060ec <_ZN6BufferC1Ei>
    800030f0:	0300006f          	j	80003120 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800030f4:	00006517          	auipc	a0,0x6
    800030f8:	ff450513          	addi	a0,a0,-12 # 800090e8 <CONSOLE_STATUS+0xd8>
    800030fc:	00002097          	auipc	ra,0x2
    80003100:	13c080e7          	jalr	316(ra) # 80005238 <_Z11printStringPKc>
        return;
    80003104:	0140006f          	j	80003118 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003108:	00006517          	auipc	a0,0x6
    8000310c:	02050513          	addi	a0,a0,32 # 80009128 <CONSOLE_STATUS+0x118>
    80003110:	00002097          	auipc	ra,0x2
    80003114:	128080e7          	jalr	296(ra) # 80005238 <_Z11printStringPKc>
        return;
    80003118:	000b0113          	mv	sp,s6
    8000311c:	1500006f          	j	8000326c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003120:	00000593          	li	a1,0
    80003124:	00008517          	auipc	a0,0x8
    80003128:	77450513          	addi	a0,a0,1908 # 8000b898 <_ZL10waitForAll>
    8000312c:	ffffe097          	auipc	ra,0xffffe
    80003130:	2e4080e7          	jalr	740(ra) # 80001410 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003134:	00391793          	slli	a5,s2,0x3
    80003138:	00f78793          	addi	a5,a5,15
    8000313c:	ff07f793          	andi	a5,a5,-16
    80003140:	40f10133          	sub	sp,sp,a5
    80003144:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003148:	0019071b          	addiw	a4,s2,1
    8000314c:	00171793          	slli	a5,a4,0x1
    80003150:	00e787b3          	add	a5,a5,a4
    80003154:	00379793          	slli	a5,a5,0x3
    80003158:	00f78793          	addi	a5,a5,15
    8000315c:	ff07f793          	andi	a5,a5,-16
    80003160:	40f10133          	sub	sp,sp,a5
    80003164:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003168:	00191613          	slli	a2,s2,0x1
    8000316c:	012607b3          	add	a5,a2,s2
    80003170:	00379793          	slli	a5,a5,0x3
    80003174:	00f987b3          	add	a5,s3,a5
    80003178:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000317c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003180:	00008717          	auipc	a4,0x8
    80003184:	71873703          	ld	a4,1816(a4) # 8000b898 <_ZL10waitForAll>
    80003188:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000318c:	00078613          	mv	a2,a5
    80003190:	00000597          	auipc	a1,0x0
    80003194:	d7458593          	addi	a1,a1,-652 # 80002f04 <_ZL8consumerPv>
    80003198:	f9840513          	addi	a0,s0,-104
    8000319c:	ffffe097          	auipc	ra,0xffffe
    800031a0:	164080e7          	jalr	356(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031a4:	00000493          	li	s1,0
    800031a8:	0280006f          	j	800031d0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800031ac:	00000597          	auipc	a1,0x0
    800031b0:	c1458593          	addi	a1,a1,-1004 # 80002dc0 <_ZL16producerKeyboardPv>
                      data + i);
    800031b4:	00179613          	slli	a2,a5,0x1
    800031b8:	00f60633          	add	a2,a2,a5
    800031bc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800031c0:	00c98633          	add	a2,s3,a2
    800031c4:	ffffe097          	auipc	ra,0xffffe
    800031c8:	13c080e7          	jalr	316(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031cc:	0014849b          	addiw	s1,s1,1
    800031d0:	0524d263          	bge	s1,s2,80003214 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800031d4:	00149793          	slli	a5,s1,0x1
    800031d8:	009787b3          	add	a5,a5,s1
    800031dc:	00379793          	slli	a5,a5,0x3
    800031e0:	00f987b3          	add	a5,s3,a5
    800031e4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800031e8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800031ec:	00008717          	auipc	a4,0x8
    800031f0:	6ac73703          	ld	a4,1708(a4) # 8000b898 <_ZL10waitForAll>
    800031f4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800031f8:	00048793          	mv	a5,s1
    800031fc:	00349513          	slli	a0,s1,0x3
    80003200:	00aa8533          	add	a0,s5,a0
    80003204:	fa9054e3          	blez	s1,800031ac <_Z22producerConsumer_C_APIv+0x1c8>
    80003208:	00000597          	auipc	a1,0x0
    8000320c:	c6858593          	addi	a1,a1,-920 # 80002e70 <_ZL8producerPv>
    80003210:	fa5ff06f          	j	800031b4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003214:	ffffe097          	auipc	ra,0xffffe
    80003218:	1c0080e7          	jalr	448(ra) # 800013d4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000321c:	00000493          	li	s1,0
    80003220:	00994e63          	blt	s2,s1,8000323c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003224:	00008517          	auipc	a0,0x8
    80003228:	67453503          	ld	a0,1652(a0) # 8000b898 <_ZL10waitForAll>
    8000322c:	ffffe097          	auipc	ra,0xffffe
    80003230:	21c080e7          	jalr	540(ra) # 80001448 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003234:	0014849b          	addiw	s1,s1,1
    80003238:	fe9ff06f          	j	80003220 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000323c:	00008517          	auipc	a0,0x8
    80003240:	65c53503          	ld	a0,1628(a0) # 8000b898 <_ZL10waitForAll>
    80003244:	ffffe097          	auipc	ra,0xffffe
    80003248:	1e8080e7          	jalr	488(ra) # 8000142c <_Z9sem_closeP3Sem>
    delete buffer;
    8000324c:	000a0e63          	beqz	s4,80003268 <_Z22producerConsumer_C_APIv+0x284>
    80003250:	000a0513          	mv	a0,s4
    80003254:	00003097          	auipc	ra,0x3
    80003258:	0d8080e7          	jalr	216(ra) # 8000632c <_ZN6BufferD1Ev>
    8000325c:	000a0513          	mv	a0,s4
    80003260:	fffff097          	auipc	ra,0xfffff
    80003264:	e28080e7          	jalr	-472(ra) # 80002088 <_ZdlPv>
    80003268:	000b0113          	mv	sp,s6

}
    8000326c:	f9040113          	addi	sp,s0,-112
    80003270:	06813083          	ld	ra,104(sp)
    80003274:	06013403          	ld	s0,96(sp)
    80003278:	05813483          	ld	s1,88(sp)
    8000327c:	05013903          	ld	s2,80(sp)
    80003280:	04813983          	ld	s3,72(sp)
    80003284:	04013a03          	ld	s4,64(sp)
    80003288:	03813a83          	ld	s5,56(sp)
    8000328c:	03013b03          	ld	s6,48(sp)
    80003290:	07010113          	addi	sp,sp,112
    80003294:	00008067          	ret
    80003298:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000329c:	000a0513          	mv	a0,s4
    800032a0:	fffff097          	auipc	ra,0xfffff
    800032a4:	de8080e7          	jalr	-536(ra) # 80002088 <_ZdlPv>
    800032a8:	00048513          	mv	a0,s1
    800032ac:	00009097          	auipc	ra,0x9
    800032b0:	6fc080e7          	jalr	1788(ra) # 8000c9a8 <_Unwind_Resume>

00000000800032b4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800032b4:	fe010113          	addi	sp,sp,-32
    800032b8:	00113c23          	sd	ra,24(sp)
    800032bc:	00813823          	sd	s0,16(sp)
    800032c0:	00913423          	sd	s1,8(sp)
    800032c4:	01213023          	sd	s2,0(sp)
    800032c8:	02010413          	addi	s0,sp,32
    800032cc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800032d0:	00100793          	li	a5,1
    800032d4:	02a7f863          	bgeu	a5,a0,80003304 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800032d8:	00a00793          	li	a5,10
    800032dc:	02f577b3          	remu	a5,a0,a5
    800032e0:	02078e63          	beqz	a5,8000331c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800032e4:	fff48513          	addi	a0,s1,-1
    800032e8:	00000097          	auipc	ra,0x0
    800032ec:	fcc080e7          	jalr	-52(ra) # 800032b4 <_ZL9fibonaccim>
    800032f0:	00050913          	mv	s2,a0
    800032f4:	ffe48513          	addi	a0,s1,-2
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	fbc080e7          	jalr	-68(ra) # 800032b4 <_ZL9fibonaccim>
    80003300:	00a90533          	add	a0,s2,a0
}
    80003304:	01813083          	ld	ra,24(sp)
    80003308:	01013403          	ld	s0,16(sp)
    8000330c:	00813483          	ld	s1,8(sp)
    80003310:	00013903          	ld	s2,0(sp)
    80003314:	02010113          	addi	sp,sp,32
    80003318:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000331c:	ffffe097          	auipc	ra,0xffffe
    80003320:	0b8080e7          	jalr	184(ra) # 800013d4 <_Z15thread_dispatchv>
    80003324:	fc1ff06f          	j	800032e4 <_ZL9fibonaccim+0x30>

0000000080003328 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003328:	fe010113          	addi	sp,sp,-32
    8000332c:	00113c23          	sd	ra,24(sp)
    80003330:	00813823          	sd	s0,16(sp)
    80003334:	00913423          	sd	s1,8(sp)
    80003338:	01213023          	sd	s2,0(sp)
    8000333c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003340:	00000913          	li	s2,0
    80003344:	0380006f          	j	8000337c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003348:	ffffe097          	auipc	ra,0xffffe
    8000334c:	08c080e7          	jalr	140(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003350:	00148493          	addi	s1,s1,1
    80003354:	000027b7          	lui	a5,0x2
    80003358:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000335c:	0097ee63          	bltu	a5,s1,80003378 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003360:	00000713          	li	a4,0
    80003364:	000077b7          	lui	a5,0x7
    80003368:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000336c:	fce7eee3          	bltu	a5,a4,80003348 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003370:	00170713          	addi	a4,a4,1
    80003374:	ff1ff06f          	j	80003364 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003378:	00190913          	addi	s2,s2,1
    8000337c:	00900793          	li	a5,9
    80003380:	0527e063          	bltu	a5,s2,800033c0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003384:	00006517          	auipc	a0,0x6
    80003388:	dd450513          	addi	a0,a0,-556 # 80009158 <CONSOLE_STATUS+0x148>
    8000338c:	00002097          	auipc	ra,0x2
    80003390:	eac080e7          	jalr	-340(ra) # 80005238 <_Z11printStringPKc>
    80003394:	00000613          	li	a2,0
    80003398:	00a00593          	li	a1,10
    8000339c:	0009051b          	sext.w	a0,s2
    800033a0:	00002097          	auipc	ra,0x2
    800033a4:	048080e7          	jalr	72(ra) # 800053e8 <_Z8printIntiii>
    800033a8:	00006517          	auipc	a0,0x6
    800033ac:	d0050513          	addi	a0,a0,-768 # 800090a8 <CONSOLE_STATUS+0x98>
    800033b0:	00002097          	auipc	ra,0x2
    800033b4:	e88080e7          	jalr	-376(ra) # 80005238 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800033b8:	00000493          	li	s1,0
    800033bc:	f99ff06f          	j	80003354 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800033c0:	00006517          	auipc	a0,0x6
    800033c4:	da050513          	addi	a0,a0,-608 # 80009160 <CONSOLE_STATUS+0x150>
    800033c8:	00002097          	auipc	ra,0x2
    800033cc:	e70080e7          	jalr	-400(ra) # 80005238 <_Z11printStringPKc>
    finishedA = true;
    800033d0:	00100793          	li	a5,1
    800033d4:	00008717          	auipc	a4,0x8
    800033d8:	4cf70623          	sb	a5,1228(a4) # 8000b8a0 <_ZL9finishedA>
}
    800033dc:	01813083          	ld	ra,24(sp)
    800033e0:	01013403          	ld	s0,16(sp)
    800033e4:	00813483          	ld	s1,8(sp)
    800033e8:	00013903          	ld	s2,0(sp)
    800033ec:	02010113          	addi	sp,sp,32
    800033f0:	00008067          	ret

00000000800033f4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800033f4:	fe010113          	addi	sp,sp,-32
    800033f8:	00113c23          	sd	ra,24(sp)
    800033fc:	00813823          	sd	s0,16(sp)
    80003400:	00913423          	sd	s1,8(sp)
    80003404:	01213023          	sd	s2,0(sp)
    80003408:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000340c:	00000913          	li	s2,0
    80003410:	0380006f          	j	80003448 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003414:	ffffe097          	auipc	ra,0xffffe
    80003418:	fc0080e7          	jalr	-64(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000341c:	00148493          	addi	s1,s1,1
    80003420:	000027b7          	lui	a5,0x2
    80003424:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003428:	0097ee63          	bltu	a5,s1,80003444 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000342c:	00000713          	li	a4,0
    80003430:	000077b7          	lui	a5,0x7
    80003434:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003438:	fce7eee3          	bltu	a5,a4,80003414 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000343c:	00170713          	addi	a4,a4,1
    80003440:	ff1ff06f          	j	80003430 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003444:	00190913          	addi	s2,s2,1
    80003448:	00f00793          	li	a5,15
    8000344c:	0527e063          	bltu	a5,s2,8000348c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003450:	00006517          	auipc	a0,0x6
    80003454:	d2050513          	addi	a0,a0,-736 # 80009170 <CONSOLE_STATUS+0x160>
    80003458:	00002097          	auipc	ra,0x2
    8000345c:	de0080e7          	jalr	-544(ra) # 80005238 <_Z11printStringPKc>
    80003460:	00000613          	li	a2,0
    80003464:	00a00593          	li	a1,10
    80003468:	0009051b          	sext.w	a0,s2
    8000346c:	00002097          	auipc	ra,0x2
    80003470:	f7c080e7          	jalr	-132(ra) # 800053e8 <_Z8printIntiii>
    80003474:	00006517          	auipc	a0,0x6
    80003478:	c3450513          	addi	a0,a0,-972 # 800090a8 <CONSOLE_STATUS+0x98>
    8000347c:	00002097          	auipc	ra,0x2
    80003480:	dbc080e7          	jalr	-580(ra) # 80005238 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003484:	00000493          	li	s1,0
    80003488:	f99ff06f          	j	80003420 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000348c:	00006517          	auipc	a0,0x6
    80003490:	cec50513          	addi	a0,a0,-788 # 80009178 <CONSOLE_STATUS+0x168>
    80003494:	00002097          	auipc	ra,0x2
    80003498:	da4080e7          	jalr	-604(ra) # 80005238 <_Z11printStringPKc>
    finishedB = true;
    8000349c:	00100793          	li	a5,1
    800034a0:	00008717          	auipc	a4,0x8
    800034a4:	40f700a3          	sb	a5,1025(a4) # 8000b8a1 <_ZL9finishedB>
    thread_dispatch();
    800034a8:	ffffe097          	auipc	ra,0xffffe
    800034ac:	f2c080e7          	jalr	-212(ra) # 800013d4 <_Z15thread_dispatchv>
}
    800034b0:	01813083          	ld	ra,24(sp)
    800034b4:	01013403          	ld	s0,16(sp)
    800034b8:	00813483          	ld	s1,8(sp)
    800034bc:	00013903          	ld	s2,0(sp)
    800034c0:	02010113          	addi	sp,sp,32
    800034c4:	00008067          	ret

00000000800034c8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800034c8:	fe010113          	addi	sp,sp,-32
    800034cc:	00113c23          	sd	ra,24(sp)
    800034d0:	00813823          	sd	s0,16(sp)
    800034d4:	00913423          	sd	s1,8(sp)
    800034d8:	01213023          	sd	s2,0(sp)
    800034dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034e0:	00000493          	li	s1,0
    800034e4:	0400006f          	j	80003524 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800034e8:	00006517          	auipc	a0,0x6
    800034ec:	ca050513          	addi	a0,a0,-864 # 80009188 <CONSOLE_STATUS+0x178>
    800034f0:	00002097          	auipc	ra,0x2
    800034f4:	d48080e7          	jalr	-696(ra) # 80005238 <_Z11printStringPKc>
    800034f8:	00000613          	li	a2,0
    800034fc:	00a00593          	li	a1,10
    80003500:	00048513          	mv	a0,s1
    80003504:	00002097          	auipc	ra,0x2
    80003508:	ee4080e7          	jalr	-284(ra) # 800053e8 <_Z8printIntiii>
    8000350c:	00006517          	auipc	a0,0x6
    80003510:	b9c50513          	addi	a0,a0,-1124 # 800090a8 <CONSOLE_STATUS+0x98>
    80003514:	00002097          	auipc	ra,0x2
    80003518:	d24080e7          	jalr	-732(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000351c:	0014849b          	addiw	s1,s1,1
    80003520:	0ff4f493          	andi	s1,s1,255
    80003524:	00200793          	li	a5,2
    80003528:	fc97f0e3          	bgeu	a5,s1,800034e8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000352c:	00006517          	auipc	a0,0x6
    80003530:	c6450513          	addi	a0,a0,-924 # 80009190 <CONSOLE_STATUS+0x180>
    80003534:	00002097          	auipc	ra,0x2
    80003538:	d04080e7          	jalr	-764(ra) # 80005238 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000353c:	00700313          	li	t1,7
    thread_dispatch();
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	e94080e7          	jalr	-364(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003548:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000354c:	00006517          	auipc	a0,0x6
    80003550:	c5450513          	addi	a0,a0,-940 # 800091a0 <CONSOLE_STATUS+0x190>
    80003554:	00002097          	auipc	ra,0x2
    80003558:	ce4080e7          	jalr	-796(ra) # 80005238 <_Z11printStringPKc>
    8000355c:	00000613          	li	a2,0
    80003560:	00a00593          	li	a1,10
    80003564:	0009051b          	sext.w	a0,s2
    80003568:	00002097          	auipc	ra,0x2
    8000356c:	e80080e7          	jalr	-384(ra) # 800053e8 <_Z8printIntiii>
    80003570:	00006517          	auipc	a0,0x6
    80003574:	b3850513          	addi	a0,a0,-1224 # 800090a8 <CONSOLE_STATUS+0x98>
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	cc0080e7          	jalr	-832(ra) # 80005238 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003580:	00c00513          	li	a0,12
    80003584:	00000097          	auipc	ra,0x0
    80003588:	d30080e7          	jalr	-720(ra) # 800032b4 <_ZL9fibonaccim>
    8000358c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003590:	00006517          	auipc	a0,0x6
    80003594:	c1850513          	addi	a0,a0,-1000 # 800091a8 <CONSOLE_STATUS+0x198>
    80003598:	00002097          	auipc	ra,0x2
    8000359c:	ca0080e7          	jalr	-864(ra) # 80005238 <_Z11printStringPKc>
    800035a0:	00000613          	li	a2,0
    800035a4:	00a00593          	li	a1,10
    800035a8:	0009051b          	sext.w	a0,s2
    800035ac:	00002097          	auipc	ra,0x2
    800035b0:	e3c080e7          	jalr	-452(ra) # 800053e8 <_Z8printIntiii>
    800035b4:	00006517          	auipc	a0,0x6
    800035b8:	af450513          	addi	a0,a0,-1292 # 800090a8 <CONSOLE_STATUS+0x98>
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	c7c080e7          	jalr	-900(ra) # 80005238 <_Z11printStringPKc>
    800035c4:	0400006f          	j	80003604 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035c8:	00006517          	auipc	a0,0x6
    800035cc:	bc050513          	addi	a0,a0,-1088 # 80009188 <CONSOLE_STATUS+0x178>
    800035d0:	00002097          	auipc	ra,0x2
    800035d4:	c68080e7          	jalr	-920(ra) # 80005238 <_Z11printStringPKc>
    800035d8:	00000613          	li	a2,0
    800035dc:	00a00593          	li	a1,10
    800035e0:	00048513          	mv	a0,s1
    800035e4:	00002097          	auipc	ra,0x2
    800035e8:	e04080e7          	jalr	-508(ra) # 800053e8 <_Z8printIntiii>
    800035ec:	00006517          	auipc	a0,0x6
    800035f0:	abc50513          	addi	a0,a0,-1348 # 800090a8 <CONSOLE_STATUS+0x98>
    800035f4:	00002097          	auipc	ra,0x2
    800035f8:	c44080e7          	jalr	-956(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035fc:	0014849b          	addiw	s1,s1,1
    80003600:	0ff4f493          	andi	s1,s1,255
    80003604:	00500793          	li	a5,5
    80003608:	fc97f0e3          	bgeu	a5,s1,800035c8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000360c:	00006517          	auipc	a0,0x6
    80003610:	b5450513          	addi	a0,a0,-1196 # 80009160 <CONSOLE_STATUS+0x150>
    80003614:	00002097          	auipc	ra,0x2
    80003618:	c24080e7          	jalr	-988(ra) # 80005238 <_Z11printStringPKc>
    finishedC = true;
    8000361c:	00100793          	li	a5,1
    80003620:	00008717          	auipc	a4,0x8
    80003624:	28f70123          	sb	a5,642(a4) # 8000b8a2 <_ZL9finishedC>
    thread_dispatch();
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	dac080e7          	jalr	-596(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80003630:	01813083          	ld	ra,24(sp)
    80003634:	01013403          	ld	s0,16(sp)
    80003638:	00813483          	ld	s1,8(sp)
    8000363c:	00013903          	ld	s2,0(sp)
    80003640:	02010113          	addi	sp,sp,32
    80003644:	00008067          	ret

0000000080003648 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003648:	fe010113          	addi	sp,sp,-32
    8000364c:	00113c23          	sd	ra,24(sp)
    80003650:	00813823          	sd	s0,16(sp)
    80003654:	00913423          	sd	s1,8(sp)
    80003658:	01213023          	sd	s2,0(sp)
    8000365c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003660:	00a00493          	li	s1,10
    80003664:	0400006f          	j	800036a4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003668:	00006517          	auipc	a0,0x6
    8000366c:	b5050513          	addi	a0,a0,-1200 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003670:	00002097          	auipc	ra,0x2
    80003674:	bc8080e7          	jalr	-1080(ra) # 80005238 <_Z11printStringPKc>
    80003678:	00000613          	li	a2,0
    8000367c:	00a00593          	li	a1,10
    80003680:	00048513          	mv	a0,s1
    80003684:	00002097          	auipc	ra,0x2
    80003688:	d64080e7          	jalr	-668(ra) # 800053e8 <_Z8printIntiii>
    8000368c:	00006517          	auipc	a0,0x6
    80003690:	a1c50513          	addi	a0,a0,-1508 # 800090a8 <CONSOLE_STATUS+0x98>
    80003694:	00002097          	auipc	ra,0x2
    80003698:	ba4080e7          	jalr	-1116(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000369c:	0014849b          	addiw	s1,s1,1
    800036a0:	0ff4f493          	andi	s1,s1,255
    800036a4:	00c00793          	li	a5,12
    800036a8:	fc97f0e3          	bgeu	a5,s1,80003668 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800036ac:	00006517          	auipc	a0,0x6
    800036b0:	b1450513          	addi	a0,a0,-1260 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800036b4:	00002097          	auipc	ra,0x2
    800036b8:	b84080e7          	jalr	-1148(ra) # 80005238 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800036bc:	00500313          	li	t1,5
    thread_dispatch();
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	d14080e7          	jalr	-748(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800036c8:	01000513          	li	a0,16
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	be8080e7          	jalr	-1048(ra) # 800032b4 <_ZL9fibonaccim>
    800036d4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800036d8:	00006517          	auipc	a0,0x6
    800036dc:	af850513          	addi	a0,a0,-1288 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800036e0:	00002097          	auipc	ra,0x2
    800036e4:	b58080e7          	jalr	-1192(ra) # 80005238 <_Z11printStringPKc>
    800036e8:	00000613          	li	a2,0
    800036ec:	00a00593          	li	a1,10
    800036f0:	0009051b          	sext.w	a0,s2
    800036f4:	00002097          	auipc	ra,0x2
    800036f8:	cf4080e7          	jalr	-780(ra) # 800053e8 <_Z8printIntiii>
    800036fc:	00006517          	auipc	a0,0x6
    80003700:	9ac50513          	addi	a0,a0,-1620 # 800090a8 <CONSOLE_STATUS+0x98>
    80003704:	00002097          	auipc	ra,0x2
    80003708:	b34080e7          	jalr	-1228(ra) # 80005238 <_Z11printStringPKc>
    8000370c:	0400006f          	j	8000374c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003710:	00006517          	auipc	a0,0x6
    80003714:	aa850513          	addi	a0,a0,-1368 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	b20080e7          	jalr	-1248(ra) # 80005238 <_Z11printStringPKc>
    80003720:	00000613          	li	a2,0
    80003724:	00a00593          	li	a1,10
    80003728:	00048513          	mv	a0,s1
    8000372c:	00002097          	auipc	ra,0x2
    80003730:	cbc080e7          	jalr	-836(ra) # 800053e8 <_Z8printIntiii>
    80003734:	00006517          	auipc	a0,0x6
    80003738:	97450513          	addi	a0,a0,-1676 # 800090a8 <CONSOLE_STATUS+0x98>
    8000373c:	00002097          	auipc	ra,0x2
    80003740:	afc080e7          	jalr	-1284(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003744:	0014849b          	addiw	s1,s1,1
    80003748:	0ff4f493          	andi	s1,s1,255
    8000374c:	00f00793          	li	a5,15
    80003750:	fc97f0e3          	bgeu	a5,s1,80003710 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003754:	00006517          	auipc	a0,0x6
    80003758:	a8c50513          	addi	a0,a0,-1396 # 800091e0 <CONSOLE_STATUS+0x1d0>
    8000375c:	00002097          	auipc	ra,0x2
    80003760:	adc080e7          	jalr	-1316(ra) # 80005238 <_Z11printStringPKc>
    finishedD = true;
    80003764:	00100793          	li	a5,1
    80003768:	00008717          	auipc	a4,0x8
    8000376c:	12f70da3          	sb	a5,315(a4) # 8000b8a3 <_ZL9finishedD>
    thread_dispatch();
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	c64080e7          	jalr	-924(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80003778:	01813083          	ld	ra,24(sp)
    8000377c:	01013403          	ld	s0,16(sp)
    80003780:	00813483          	ld	s1,8(sp)
    80003784:	00013903          	ld	s2,0(sp)
    80003788:	02010113          	addi	sp,sp,32
    8000378c:	00008067          	ret

0000000080003790 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003790:	fc010113          	addi	sp,sp,-64
    80003794:	02113c23          	sd	ra,56(sp)
    80003798:	02813823          	sd	s0,48(sp)
    8000379c:	02913423          	sd	s1,40(sp)
    800037a0:	03213023          	sd	s2,32(sp)
    800037a4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800037a8:	02000513          	li	a0,32
    800037ac:	fffff097          	auipc	ra,0xfffff
    800037b0:	8b4080e7          	jalr	-1868(ra) # 80002060 <_Znwm>
    800037b4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800037b8:	fffff097          	auipc	ra,0xfffff
    800037bc:	a38080e7          	jalr	-1480(ra) # 800021f0 <_ZN6ThreadC1Ev>
    800037c0:	00008797          	auipc	a5,0x8
    800037c4:	e6078793          	addi	a5,a5,-416 # 8000b620 <_ZTV7WorkerA+0x10>
    800037c8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800037cc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800037d0:	00006517          	auipc	a0,0x6
    800037d4:	a2050513          	addi	a0,a0,-1504 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800037d8:	00002097          	auipc	ra,0x2
    800037dc:	a60080e7          	jalr	-1440(ra) # 80005238 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800037e0:	02000513          	li	a0,32
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	87c080e7          	jalr	-1924(ra) # 80002060 <_Znwm>
    800037ec:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800037f0:	fffff097          	auipc	ra,0xfffff
    800037f4:	a00080e7          	jalr	-1536(ra) # 800021f0 <_ZN6ThreadC1Ev>
    800037f8:	00008797          	auipc	a5,0x8
    800037fc:	e5078793          	addi	a5,a5,-432 # 8000b648 <_ZTV7WorkerB+0x10>
    80003800:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003804:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003808:	00006517          	auipc	a0,0x6
    8000380c:	a0050513          	addi	a0,a0,-1536 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003810:	00002097          	auipc	ra,0x2
    80003814:	a28080e7          	jalr	-1496(ra) # 80005238 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003818:	02000513          	li	a0,32
    8000381c:	fffff097          	auipc	ra,0xfffff
    80003820:	844080e7          	jalr	-1980(ra) # 80002060 <_Znwm>
    80003824:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	9c8080e7          	jalr	-1592(ra) # 800021f0 <_ZN6ThreadC1Ev>
    80003830:	00008797          	auipc	a5,0x8
    80003834:	e4078793          	addi	a5,a5,-448 # 8000b670 <_ZTV7WorkerC+0x10>
    80003838:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000383c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003840:	00006517          	auipc	a0,0x6
    80003844:	9e050513          	addi	a0,a0,-1568 # 80009220 <CONSOLE_STATUS+0x210>
    80003848:	00002097          	auipc	ra,0x2
    8000384c:	9f0080e7          	jalr	-1552(ra) # 80005238 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003850:	02000513          	li	a0,32
    80003854:	fffff097          	auipc	ra,0xfffff
    80003858:	80c080e7          	jalr	-2036(ra) # 80002060 <_Znwm>
    8000385c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003860:	fffff097          	auipc	ra,0xfffff
    80003864:	990080e7          	jalr	-1648(ra) # 800021f0 <_ZN6ThreadC1Ev>
    80003868:	00008797          	auipc	a5,0x8
    8000386c:	e3078793          	addi	a5,a5,-464 # 8000b698 <_ZTV7WorkerD+0x10>
    80003870:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003874:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003878:	00006517          	auipc	a0,0x6
    8000387c:	9c050513          	addi	a0,a0,-1600 # 80009238 <CONSOLE_STATUS+0x228>
    80003880:	00002097          	auipc	ra,0x2
    80003884:	9b8080e7          	jalr	-1608(ra) # 80005238 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003888:	00000493          	li	s1,0
    8000388c:	00300793          	li	a5,3
    80003890:	0297c663          	blt	a5,s1,800038bc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003894:	00349793          	slli	a5,s1,0x3
    80003898:	fe040713          	addi	a4,s0,-32
    8000389c:	00f707b3          	add	a5,a4,a5
    800038a0:	fe07b503          	ld	a0,-32(a5)
    800038a4:	fffff097          	auipc	ra,0xfffff
    800038a8:	8c8080e7          	jalr	-1848(ra) # 8000216c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800038ac:	0014849b          	addiw	s1,s1,1
    800038b0:	fddff06f          	j	8000388c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800038b4:	fffff097          	auipc	ra,0xfffff
    800038b8:	8e8080e7          	jalr	-1816(ra) # 8000219c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038bc:	00008797          	auipc	a5,0x8
    800038c0:	fe47c783          	lbu	a5,-28(a5) # 8000b8a0 <_ZL9finishedA>
    800038c4:	fe0788e3          	beqz	a5,800038b4 <_Z20Threads_CPP_API_testv+0x124>
    800038c8:	00008797          	auipc	a5,0x8
    800038cc:	fd97c783          	lbu	a5,-39(a5) # 8000b8a1 <_ZL9finishedB>
    800038d0:	fe0782e3          	beqz	a5,800038b4 <_Z20Threads_CPP_API_testv+0x124>
    800038d4:	00008797          	auipc	a5,0x8
    800038d8:	fce7c783          	lbu	a5,-50(a5) # 8000b8a2 <_ZL9finishedC>
    800038dc:	fc078ce3          	beqz	a5,800038b4 <_Z20Threads_CPP_API_testv+0x124>
    800038e0:	00008797          	auipc	a5,0x8
    800038e4:	fc37c783          	lbu	a5,-61(a5) # 8000b8a3 <_ZL9finishedD>
    800038e8:	fc0786e3          	beqz	a5,800038b4 <_Z20Threads_CPP_API_testv+0x124>
    800038ec:	fc040493          	addi	s1,s0,-64
    800038f0:	0080006f          	j	800038f8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800038f4:	00848493          	addi	s1,s1,8
    800038f8:	fe040793          	addi	a5,s0,-32
    800038fc:	08f48663          	beq	s1,a5,80003988 <_Z20Threads_CPP_API_testv+0x1f8>
    80003900:	0004b503          	ld	a0,0(s1)
    80003904:	fe0508e3          	beqz	a0,800038f4 <_Z20Threads_CPP_API_testv+0x164>
    80003908:	00053783          	ld	a5,0(a0)
    8000390c:	0087b783          	ld	a5,8(a5)
    80003910:	000780e7          	jalr	a5
    80003914:	fe1ff06f          	j	800038f4 <_Z20Threads_CPP_API_testv+0x164>
    80003918:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000391c:	00048513          	mv	a0,s1
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	768080e7          	jalr	1896(ra) # 80002088 <_ZdlPv>
    80003928:	00090513          	mv	a0,s2
    8000392c:	00009097          	auipc	ra,0x9
    80003930:	07c080e7          	jalr	124(ra) # 8000c9a8 <_Unwind_Resume>
    80003934:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003938:	00048513          	mv	a0,s1
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	74c080e7          	jalr	1868(ra) # 80002088 <_ZdlPv>
    80003944:	00090513          	mv	a0,s2
    80003948:	00009097          	auipc	ra,0x9
    8000394c:	060080e7          	jalr	96(ra) # 8000c9a8 <_Unwind_Resume>
    80003950:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003954:	00048513          	mv	a0,s1
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	730080e7          	jalr	1840(ra) # 80002088 <_ZdlPv>
    80003960:	00090513          	mv	a0,s2
    80003964:	00009097          	auipc	ra,0x9
    80003968:	044080e7          	jalr	68(ra) # 8000c9a8 <_Unwind_Resume>
    8000396c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003970:	00048513          	mv	a0,s1
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	714080e7          	jalr	1812(ra) # 80002088 <_ZdlPv>
    8000397c:	00090513          	mv	a0,s2
    80003980:	00009097          	auipc	ra,0x9
    80003984:	028080e7          	jalr	40(ra) # 8000c9a8 <_Unwind_Resume>
}
    80003988:	03813083          	ld	ra,56(sp)
    8000398c:	03013403          	ld	s0,48(sp)
    80003990:	02813483          	ld	s1,40(sp)
    80003994:	02013903          	ld	s2,32(sp)
    80003998:	04010113          	addi	sp,sp,64
    8000399c:	00008067          	ret

00000000800039a0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800039a0:	ff010113          	addi	sp,sp,-16
    800039a4:	00113423          	sd	ra,8(sp)
    800039a8:	00813023          	sd	s0,0(sp)
    800039ac:	01010413          	addi	s0,sp,16
    800039b0:	00008797          	auipc	a5,0x8
    800039b4:	c7078793          	addi	a5,a5,-912 # 8000b620 <_ZTV7WorkerA+0x10>
    800039b8:	00f53023          	sd	a5,0(a0)
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	60c080e7          	jalr	1548(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    800039c4:	00813083          	ld	ra,8(sp)
    800039c8:	00013403          	ld	s0,0(sp)
    800039cc:	01010113          	addi	sp,sp,16
    800039d0:	00008067          	ret

00000000800039d4 <_ZN7WorkerAD0Ev>:
    800039d4:	fe010113          	addi	sp,sp,-32
    800039d8:	00113c23          	sd	ra,24(sp)
    800039dc:	00813823          	sd	s0,16(sp)
    800039e0:	00913423          	sd	s1,8(sp)
    800039e4:	02010413          	addi	s0,sp,32
    800039e8:	00050493          	mv	s1,a0
    800039ec:	00008797          	auipc	a5,0x8
    800039f0:	c3478793          	addi	a5,a5,-972 # 8000b620 <_ZTV7WorkerA+0x10>
    800039f4:	00f53023          	sd	a5,0(a0)
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	5d0080e7          	jalr	1488(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80003a00:	00048513          	mv	a0,s1
    80003a04:	ffffe097          	auipc	ra,0xffffe
    80003a08:	684080e7          	jalr	1668(ra) # 80002088 <_ZdlPv>
    80003a0c:	01813083          	ld	ra,24(sp)
    80003a10:	01013403          	ld	s0,16(sp)
    80003a14:	00813483          	ld	s1,8(sp)
    80003a18:	02010113          	addi	sp,sp,32
    80003a1c:	00008067          	ret

0000000080003a20 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003a20:	ff010113          	addi	sp,sp,-16
    80003a24:	00113423          	sd	ra,8(sp)
    80003a28:	00813023          	sd	s0,0(sp)
    80003a2c:	01010413          	addi	s0,sp,16
    80003a30:	00008797          	auipc	a5,0x8
    80003a34:	c1878793          	addi	a5,a5,-1000 # 8000b648 <_ZTV7WorkerB+0x10>
    80003a38:	00f53023          	sd	a5,0(a0)
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	58c080e7          	jalr	1420(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80003a44:	00813083          	ld	ra,8(sp)
    80003a48:	00013403          	ld	s0,0(sp)
    80003a4c:	01010113          	addi	sp,sp,16
    80003a50:	00008067          	ret

0000000080003a54 <_ZN7WorkerBD0Ev>:
    80003a54:	fe010113          	addi	sp,sp,-32
    80003a58:	00113c23          	sd	ra,24(sp)
    80003a5c:	00813823          	sd	s0,16(sp)
    80003a60:	00913423          	sd	s1,8(sp)
    80003a64:	02010413          	addi	s0,sp,32
    80003a68:	00050493          	mv	s1,a0
    80003a6c:	00008797          	auipc	a5,0x8
    80003a70:	bdc78793          	addi	a5,a5,-1060 # 8000b648 <_ZTV7WorkerB+0x10>
    80003a74:	00f53023          	sd	a5,0(a0)
    80003a78:	ffffe097          	auipc	ra,0xffffe
    80003a7c:	550080e7          	jalr	1360(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80003a80:	00048513          	mv	a0,s1
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	604080e7          	jalr	1540(ra) # 80002088 <_ZdlPv>
    80003a8c:	01813083          	ld	ra,24(sp)
    80003a90:	01013403          	ld	s0,16(sp)
    80003a94:	00813483          	ld	s1,8(sp)
    80003a98:	02010113          	addi	sp,sp,32
    80003a9c:	00008067          	ret

0000000080003aa0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003aa0:	ff010113          	addi	sp,sp,-16
    80003aa4:	00113423          	sd	ra,8(sp)
    80003aa8:	00813023          	sd	s0,0(sp)
    80003aac:	01010413          	addi	s0,sp,16
    80003ab0:	00008797          	auipc	a5,0x8
    80003ab4:	bc078793          	addi	a5,a5,-1088 # 8000b670 <_ZTV7WorkerC+0x10>
    80003ab8:	00f53023          	sd	a5,0(a0)
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	50c080e7          	jalr	1292(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80003ac4:	00813083          	ld	ra,8(sp)
    80003ac8:	00013403          	ld	s0,0(sp)
    80003acc:	01010113          	addi	sp,sp,16
    80003ad0:	00008067          	ret

0000000080003ad4 <_ZN7WorkerCD0Ev>:
    80003ad4:	fe010113          	addi	sp,sp,-32
    80003ad8:	00113c23          	sd	ra,24(sp)
    80003adc:	00813823          	sd	s0,16(sp)
    80003ae0:	00913423          	sd	s1,8(sp)
    80003ae4:	02010413          	addi	s0,sp,32
    80003ae8:	00050493          	mv	s1,a0
    80003aec:	00008797          	auipc	a5,0x8
    80003af0:	b8478793          	addi	a5,a5,-1148 # 8000b670 <_ZTV7WorkerC+0x10>
    80003af4:	00f53023          	sd	a5,0(a0)
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	4d0080e7          	jalr	1232(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80003b00:	00048513          	mv	a0,s1
    80003b04:	ffffe097          	auipc	ra,0xffffe
    80003b08:	584080e7          	jalr	1412(ra) # 80002088 <_ZdlPv>
    80003b0c:	01813083          	ld	ra,24(sp)
    80003b10:	01013403          	ld	s0,16(sp)
    80003b14:	00813483          	ld	s1,8(sp)
    80003b18:	02010113          	addi	sp,sp,32
    80003b1c:	00008067          	ret

0000000080003b20 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003b20:	ff010113          	addi	sp,sp,-16
    80003b24:	00113423          	sd	ra,8(sp)
    80003b28:	00813023          	sd	s0,0(sp)
    80003b2c:	01010413          	addi	s0,sp,16
    80003b30:	00008797          	auipc	a5,0x8
    80003b34:	b6878793          	addi	a5,a5,-1176 # 8000b698 <_ZTV7WorkerD+0x10>
    80003b38:	00f53023          	sd	a5,0(a0)
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	48c080e7          	jalr	1164(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80003b44:	00813083          	ld	ra,8(sp)
    80003b48:	00013403          	ld	s0,0(sp)
    80003b4c:	01010113          	addi	sp,sp,16
    80003b50:	00008067          	ret

0000000080003b54 <_ZN7WorkerDD0Ev>:
    80003b54:	fe010113          	addi	sp,sp,-32
    80003b58:	00113c23          	sd	ra,24(sp)
    80003b5c:	00813823          	sd	s0,16(sp)
    80003b60:	00913423          	sd	s1,8(sp)
    80003b64:	02010413          	addi	s0,sp,32
    80003b68:	00050493          	mv	s1,a0
    80003b6c:	00008797          	auipc	a5,0x8
    80003b70:	b2c78793          	addi	a5,a5,-1236 # 8000b698 <_ZTV7WorkerD+0x10>
    80003b74:	00f53023          	sd	a5,0(a0)
    80003b78:	ffffe097          	auipc	ra,0xffffe
    80003b7c:	450080e7          	jalr	1104(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80003b80:	00048513          	mv	a0,s1
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	504080e7          	jalr	1284(ra) # 80002088 <_ZdlPv>
    80003b8c:	01813083          	ld	ra,24(sp)
    80003b90:	01013403          	ld	s0,16(sp)
    80003b94:	00813483          	ld	s1,8(sp)
    80003b98:	02010113          	addi	sp,sp,32
    80003b9c:	00008067          	ret

0000000080003ba0 <_ZN7WorkerA3runEv>:
    void run() override {
    80003ba0:	ff010113          	addi	sp,sp,-16
    80003ba4:	00113423          	sd	ra,8(sp)
    80003ba8:	00813023          	sd	s0,0(sp)
    80003bac:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003bb0:	00000593          	li	a1,0
    80003bb4:	fffff097          	auipc	ra,0xfffff
    80003bb8:	774080e7          	jalr	1908(ra) # 80003328 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003bbc:	00813083          	ld	ra,8(sp)
    80003bc0:	00013403          	ld	s0,0(sp)
    80003bc4:	01010113          	addi	sp,sp,16
    80003bc8:	00008067          	ret

0000000080003bcc <_ZN7WorkerB3runEv>:
    void run() override {
    80003bcc:	ff010113          	addi	sp,sp,-16
    80003bd0:	00113423          	sd	ra,8(sp)
    80003bd4:	00813023          	sd	s0,0(sp)
    80003bd8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003bdc:	00000593          	li	a1,0
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	814080e7          	jalr	-2028(ra) # 800033f4 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003be8:	00813083          	ld	ra,8(sp)
    80003bec:	00013403          	ld	s0,0(sp)
    80003bf0:	01010113          	addi	sp,sp,16
    80003bf4:	00008067          	ret

0000000080003bf8 <_ZN7WorkerC3runEv>:
    void run() override {
    80003bf8:	ff010113          	addi	sp,sp,-16
    80003bfc:	00113423          	sd	ra,8(sp)
    80003c00:	00813023          	sd	s0,0(sp)
    80003c04:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003c08:	00000593          	li	a1,0
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	8bc080e7          	jalr	-1860(ra) # 800034c8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003c14:	00813083          	ld	ra,8(sp)
    80003c18:	00013403          	ld	s0,0(sp)
    80003c1c:	01010113          	addi	sp,sp,16
    80003c20:	00008067          	ret

0000000080003c24 <_ZN7WorkerD3runEv>:
    void run() override {
    80003c24:	ff010113          	addi	sp,sp,-16
    80003c28:	00113423          	sd	ra,8(sp)
    80003c2c:	00813023          	sd	s0,0(sp)
    80003c30:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003c34:	00000593          	li	a1,0
    80003c38:	00000097          	auipc	ra,0x0
    80003c3c:	a10080e7          	jalr	-1520(ra) # 80003648 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003c40:	00813083          	ld	ra,8(sp)
    80003c44:	00013403          	ld	s0,0(sp)
    80003c48:	01010113          	addi	sp,sp,16
    80003c4c:	00008067          	ret

0000000080003c50 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003c50:	f8010113          	addi	sp,sp,-128
    80003c54:	06113c23          	sd	ra,120(sp)
    80003c58:	06813823          	sd	s0,112(sp)
    80003c5c:	06913423          	sd	s1,104(sp)
    80003c60:	07213023          	sd	s2,96(sp)
    80003c64:	05313c23          	sd	s3,88(sp)
    80003c68:	05413823          	sd	s4,80(sp)
    80003c6c:	05513423          	sd	s5,72(sp)
    80003c70:	05613023          	sd	s6,64(sp)
    80003c74:	03713c23          	sd	s7,56(sp)
    80003c78:	03813823          	sd	s8,48(sp)
    80003c7c:	03913423          	sd	s9,40(sp)
    80003c80:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003c84:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c88:	00005517          	auipc	a0,0x5
    80003c8c:	3e850513          	addi	a0,a0,1000 # 80009070 <CONSOLE_STATUS+0x60>
    80003c90:	00001097          	auipc	ra,0x1
    80003c94:	5a8080e7          	jalr	1448(ra) # 80005238 <_Z11printStringPKc>
    getString(input, 30);
    80003c98:	01e00593          	li	a1,30
    80003c9c:	f8040493          	addi	s1,s0,-128
    80003ca0:	00048513          	mv	a0,s1
    80003ca4:	00001097          	auipc	ra,0x1
    80003ca8:	61c080e7          	jalr	1564(ra) # 800052c0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003cac:	00048513          	mv	a0,s1
    80003cb0:	00001097          	auipc	ra,0x1
    80003cb4:	6e8080e7          	jalr	1768(ra) # 80005398 <_Z11stringToIntPKc>
    80003cb8:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003cbc:	00005517          	auipc	a0,0x5
    80003cc0:	3d450513          	addi	a0,a0,980 # 80009090 <CONSOLE_STATUS+0x80>
    80003cc4:	00001097          	auipc	ra,0x1
    80003cc8:	574080e7          	jalr	1396(ra) # 80005238 <_Z11printStringPKc>
    getString(input, 30);
    80003ccc:	01e00593          	li	a1,30
    80003cd0:	00048513          	mv	a0,s1
    80003cd4:	00001097          	auipc	ra,0x1
    80003cd8:	5ec080e7          	jalr	1516(ra) # 800052c0 <_Z9getStringPci>
    n = stringToInt(input);
    80003cdc:	00048513          	mv	a0,s1
    80003ce0:	00001097          	auipc	ra,0x1
    80003ce4:	6b8080e7          	jalr	1720(ra) # 80005398 <_Z11stringToIntPKc>
    80003ce8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003cec:	00005517          	auipc	a0,0x5
    80003cf0:	3c450513          	addi	a0,a0,964 # 800090b0 <CONSOLE_STATUS+0xa0>
    80003cf4:	00001097          	auipc	ra,0x1
    80003cf8:	544080e7          	jalr	1348(ra) # 80005238 <_Z11printStringPKc>
    printInt(threadNum);
    80003cfc:	00000613          	li	a2,0
    80003d00:	00a00593          	li	a1,10
    80003d04:	00098513          	mv	a0,s3
    80003d08:	00001097          	auipc	ra,0x1
    80003d0c:	6e0080e7          	jalr	1760(ra) # 800053e8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003d10:	00005517          	auipc	a0,0x5
    80003d14:	3b850513          	addi	a0,a0,952 # 800090c8 <CONSOLE_STATUS+0xb8>
    80003d18:	00001097          	auipc	ra,0x1
    80003d1c:	520080e7          	jalr	1312(ra) # 80005238 <_Z11printStringPKc>
    printInt(n);
    80003d20:	00000613          	li	a2,0
    80003d24:	00a00593          	li	a1,10
    80003d28:	00048513          	mv	a0,s1
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	6bc080e7          	jalr	1724(ra) # 800053e8 <_Z8printIntiii>
    printString(".\n");
    80003d34:	00005517          	auipc	a0,0x5
    80003d38:	3ac50513          	addi	a0,a0,940 # 800090e0 <CONSOLE_STATUS+0xd0>
    80003d3c:	00001097          	auipc	ra,0x1
    80003d40:	4fc080e7          	jalr	1276(ra) # 80005238 <_Z11printStringPKc>
    if (threadNum > n) {
    80003d44:	0334c463          	blt	s1,s3,80003d6c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003d48:	03305c63          	blez	s3,80003d80 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003d4c:	03800513          	li	a0,56
    80003d50:	ffffe097          	auipc	ra,0xffffe
    80003d54:	310080e7          	jalr	784(ra) # 80002060 <_Znwm>
    80003d58:	00050a93          	mv	s5,a0
    80003d5c:	00048593          	mv	a1,s1
    80003d60:	00001097          	auipc	ra,0x1
    80003d64:	7a8080e7          	jalr	1960(ra) # 80005508 <_ZN9BufferCPPC1Ei>
    80003d68:	0300006f          	j	80003d98 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d6c:	00005517          	auipc	a0,0x5
    80003d70:	37c50513          	addi	a0,a0,892 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003d74:	00001097          	auipc	ra,0x1
    80003d78:	4c4080e7          	jalr	1220(ra) # 80005238 <_Z11printStringPKc>
        return;
    80003d7c:	0140006f          	j	80003d90 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d80:	00005517          	auipc	a0,0x5
    80003d84:	3a850513          	addi	a0,a0,936 # 80009128 <CONSOLE_STATUS+0x118>
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	4b0080e7          	jalr	1200(ra) # 80005238 <_Z11printStringPKc>
        return;
    80003d90:	000c0113          	mv	sp,s8
    80003d94:	2140006f          	j	80003fa8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003d98:	01000513          	li	a0,16
    80003d9c:	ffffe097          	auipc	ra,0xffffe
    80003da0:	2c4080e7          	jalr	708(ra) # 80002060 <_Znwm>
    80003da4:	00050913          	mv	s2,a0
    80003da8:	00000593          	li	a1,0
    80003dac:	ffffe097          	auipc	ra,0xffffe
    80003db0:	46c080e7          	jalr	1132(ra) # 80002218 <_ZN9SemaphoreC1Ej>
    80003db4:	00008797          	auipc	a5,0x8
    80003db8:	af27be23          	sd	s2,-1284(a5) # 8000b8b0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003dbc:	00399793          	slli	a5,s3,0x3
    80003dc0:	00f78793          	addi	a5,a5,15
    80003dc4:	ff07f793          	andi	a5,a5,-16
    80003dc8:	40f10133          	sub	sp,sp,a5
    80003dcc:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003dd0:	0019871b          	addiw	a4,s3,1
    80003dd4:	00171793          	slli	a5,a4,0x1
    80003dd8:	00e787b3          	add	a5,a5,a4
    80003ddc:	00379793          	slli	a5,a5,0x3
    80003de0:	00f78793          	addi	a5,a5,15
    80003de4:	ff07f793          	andi	a5,a5,-16
    80003de8:	40f10133          	sub	sp,sp,a5
    80003dec:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003df0:	00199493          	slli	s1,s3,0x1
    80003df4:	013484b3          	add	s1,s1,s3
    80003df8:	00349493          	slli	s1,s1,0x3
    80003dfc:	009b04b3          	add	s1,s6,s1
    80003e00:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003e04:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003e08:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003e0c:	02800513          	li	a0,40
    80003e10:	ffffe097          	auipc	ra,0xffffe
    80003e14:	250080e7          	jalr	592(ra) # 80002060 <_Znwm>
    80003e18:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003e1c:	ffffe097          	auipc	ra,0xffffe
    80003e20:	3d4080e7          	jalr	980(ra) # 800021f0 <_ZN6ThreadC1Ev>
    80003e24:	00008797          	auipc	a5,0x8
    80003e28:	8ec78793          	addi	a5,a5,-1812 # 8000b710 <_ZTV8Consumer+0x10>
    80003e2c:	00fbb023          	sd	a5,0(s7)
    80003e30:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003e34:	000b8513          	mv	a0,s7
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	334080e7          	jalr	820(ra) # 8000216c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003e40:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003e44:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003e48:	00008797          	auipc	a5,0x8
    80003e4c:	a687b783          	ld	a5,-1432(a5) # 8000b8b0 <_ZL10waitForAll>
    80003e50:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e54:	02800513          	li	a0,40
    80003e58:	ffffe097          	auipc	ra,0xffffe
    80003e5c:	208080e7          	jalr	520(ra) # 80002060 <_Znwm>
    80003e60:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	38c080e7          	jalr	908(ra) # 800021f0 <_ZN6ThreadC1Ev>
    80003e6c:	00008797          	auipc	a5,0x8
    80003e70:	85478793          	addi	a5,a5,-1964 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    80003e74:	00f4b023          	sd	a5,0(s1)
    80003e78:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e7c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003e80:	00048513          	mv	a0,s1
    80003e84:	ffffe097          	auipc	ra,0xffffe
    80003e88:	2e8080e7          	jalr	744(ra) # 8000216c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e8c:	00100913          	li	s2,1
    80003e90:	0300006f          	j	80003ec0 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e94:	00008797          	auipc	a5,0x8
    80003e98:	85478793          	addi	a5,a5,-1964 # 8000b6e8 <_ZTV8Producer+0x10>
    80003e9c:	00fcb023          	sd	a5,0(s9)
    80003ea0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003ea4:	00391793          	slli	a5,s2,0x3
    80003ea8:	00fa07b3          	add	a5,s4,a5
    80003eac:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003eb0:	000c8513          	mv	a0,s9
    80003eb4:	ffffe097          	auipc	ra,0xffffe
    80003eb8:	2b8080e7          	jalr	696(ra) # 8000216c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ebc:	0019091b          	addiw	s2,s2,1
    80003ec0:	05395263          	bge	s2,s3,80003f04 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003ec4:	00191493          	slli	s1,s2,0x1
    80003ec8:	012484b3          	add	s1,s1,s2
    80003ecc:	00349493          	slli	s1,s1,0x3
    80003ed0:	009b04b3          	add	s1,s6,s1
    80003ed4:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003ed8:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003edc:	00008797          	auipc	a5,0x8
    80003ee0:	9d47b783          	ld	a5,-1580(a5) # 8000b8b0 <_ZL10waitForAll>
    80003ee4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003ee8:	02800513          	li	a0,40
    80003eec:	ffffe097          	auipc	ra,0xffffe
    80003ef0:	174080e7          	jalr	372(ra) # 80002060 <_Znwm>
    80003ef4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	2f8080e7          	jalr	760(ra) # 800021f0 <_ZN6ThreadC1Ev>
    80003f00:	f95ff06f          	j	80003e94 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003f04:	ffffe097          	auipc	ra,0xffffe
    80003f08:	298080e7          	jalr	664(ra) # 8000219c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f0c:	00000493          	li	s1,0
    80003f10:	0099ce63          	blt	s3,s1,80003f2c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003f14:	00008517          	auipc	a0,0x8
    80003f18:	99c53503          	ld	a0,-1636(a0) # 8000b8b0 <_ZL10waitForAll>
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	338080e7          	jalr	824(ra) # 80002254 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f24:	0014849b          	addiw	s1,s1,1
    80003f28:	fe9ff06f          	j	80003f10 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003f2c:	00008517          	auipc	a0,0x8
    80003f30:	98453503          	ld	a0,-1660(a0) # 8000b8b0 <_ZL10waitForAll>
    80003f34:	00050863          	beqz	a0,80003f44 <_Z20testConsumerProducerv+0x2f4>
    80003f38:	00053783          	ld	a5,0(a0)
    80003f3c:	0087b783          	ld	a5,8(a5)
    80003f40:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003f44:	00000493          	li	s1,0
    80003f48:	0080006f          	j	80003f50 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003f4c:	0014849b          	addiw	s1,s1,1
    80003f50:	0334d263          	bge	s1,s3,80003f74 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003f54:	00349793          	slli	a5,s1,0x3
    80003f58:	00fa07b3          	add	a5,s4,a5
    80003f5c:	0007b503          	ld	a0,0(a5)
    80003f60:	fe0506e3          	beqz	a0,80003f4c <_Z20testConsumerProducerv+0x2fc>
    80003f64:	00053783          	ld	a5,0(a0)
    80003f68:	0087b783          	ld	a5,8(a5)
    80003f6c:	000780e7          	jalr	a5
    80003f70:	fddff06f          	j	80003f4c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003f74:	000b8a63          	beqz	s7,80003f88 <_Z20testConsumerProducerv+0x338>
    80003f78:	000bb783          	ld	a5,0(s7)
    80003f7c:	0087b783          	ld	a5,8(a5)
    80003f80:	000b8513          	mv	a0,s7
    80003f84:	000780e7          	jalr	a5
    delete buffer;
    80003f88:	000a8e63          	beqz	s5,80003fa4 <_Z20testConsumerProducerv+0x354>
    80003f8c:	000a8513          	mv	a0,s5
    80003f90:	00002097          	auipc	ra,0x2
    80003f94:	870080e7          	jalr	-1936(ra) # 80005800 <_ZN9BufferCPPD1Ev>
    80003f98:	000a8513          	mv	a0,s5
    80003f9c:	ffffe097          	auipc	ra,0xffffe
    80003fa0:	0ec080e7          	jalr	236(ra) # 80002088 <_ZdlPv>
    80003fa4:	000c0113          	mv	sp,s8
}
    80003fa8:	f8040113          	addi	sp,s0,-128
    80003fac:	07813083          	ld	ra,120(sp)
    80003fb0:	07013403          	ld	s0,112(sp)
    80003fb4:	06813483          	ld	s1,104(sp)
    80003fb8:	06013903          	ld	s2,96(sp)
    80003fbc:	05813983          	ld	s3,88(sp)
    80003fc0:	05013a03          	ld	s4,80(sp)
    80003fc4:	04813a83          	ld	s5,72(sp)
    80003fc8:	04013b03          	ld	s6,64(sp)
    80003fcc:	03813b83          	ld	s7,56(sp)
    80003fd0:	03013c03          	ld	s8,48(sp)
    80003fd4:	02813c83          	ld	s9,40(sp)
    80003fd8:	08010113          	addi	sp,sp,128
    80003fdc:	00008067          	ret
    80003fe0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003fe4:	000a8513          	mv	a0,s5
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	0a0080e7          	jalr	160(ra) # 80002088 <_ZdlPv>
    80003ff0:	00048513          	mv	a0,s1
    80003ff4:	00009097          	auipc	ra,0x9
    80003ff8:	9b4080e7          	jalr	-1612(ra) # 8000c9a8 <_Unwind_Resume>
    80003ffc:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004000:	00090513          	mv	a0,s2
    80004004:	ffffe097          	auipc	ra,0xffffe
    80004008:	084080e7          	jalr	132(ra) # 80002088 <_ZdlPv>
    8000400c:	00048513          	mv	a0,s1
    80004010:	00009097          	auipc	ra,0x9
    80004014:	998080e7          	jalr	-1640(ra) # 8000c9a8 <_Unwind_Resume>
    80004018:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000401c:	000b8513          	mv	a0,s7
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	068080e7          	jalr	104(ra) # 80002088 <_ZdlPv>
    80004028:	00048513          	mv	a0,s1
    8000402c:	00009097          	auipc	ra,0x9
    80004030:	97c080e7          	jalr	-1668(ra) # 8000c9a8 <_Unwind_Resume>
    80004034:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004038:	00048513          	mv	a0,s1
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	04c080e7          	jalr	76(ra) # 80002088 <_ZdlPv>
    80004044:	00090513          	mv	a0,s2
    80004048:	00009097          	auipc	ra,0x9
    8000404c:	960080e7          	jalr	-1696(ra) # 8000c9a8 <_Unwind_Resume>
    80004050:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004054:	000c8513          	mv	a0,s9
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	030080e7          	jalr	48(ra) # 80002088 <_ZdlPv>
    80004060:	00048513          	mv	a0,s1
    80004064:	00009097          	auipc	ra,0x9
    80004068:	944080e7          	jalr	-1724(ra) # 8000c9a8 <_Unwind_Resume>

000000008000406c <_ZN8Consumer3runEv>:
    void run() override {
    8000406c:	fd010113          	addi	sp,sp,-48
    80004070:	02113423          	sd	ra,40(sp)
    80004074:	02813023          	sd	s0,32(sp)
    80004078:	00913c23          	sd	s1,24(sp)
    8000407c:	01213823          	sd	s2,16(sp)
    80004080:	01313423          	sd	s3,8(sp)
    80004084:	03010413          	addi	s0,sp,48
    80004088:	00050913          	mv	s2,a0
        int i = 0;
    8000408c:	00000993          	li	s3,0
    80004090:	0100006f          	j	800040a0 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004094:	00a00513          	li	a0,10
    80004098:	ffffe097          	auipc	ra,0xffffe
    8000409c:	2e4080e7          	jalr	740(ra) # 8000237c <_ZN7Console4putcEc>
        while (!threadEnd) {
    800040a0:	00008797          	auipc	a5,0x8
    800040a4:	8087a783          	lw	a5,-2040(a5) # 8000b8a8 <_ZL9threadEnd>
    800040a8:	04079a63          	bnez	a5,800040fc <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800040ac:	02093783          	ld	a5,32(s2)
    800040b0:	0087b503          	ld	a0,8(a5)
    800040b4:	00001097          	auipc	ra,0x1
    800040b8:	638080e7          	jalr	1592(ra) # 800056ec <_ZN9BufferCPP3getEv>
            i++;
    800040bc:	0019849b          	addiw	s1,s3,1
    800040c0:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800040c4:	0ff57513          	andi	a0,a0,255
    800040c8:	ffffe097          	auipc	ra,0xffffe
    800040cc:	2b4080e7          	jalr	692(ra) # 8000237c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800040d0:	05000793          	li	a5,80
    800040d4:	02f4e4bb          	remw	s1,s1,a5
    800040d8:	fc0494e3          	bnez	s1,800040a0 <_ZN8Consumer3runEv+0x34>
    800040dc:	fb9ff06f          	j	80004094 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800040e0:	02093783          	ld	a5,32(s2)
    800040e4:	0087b503          	ld	a0,8(a5)
    800040e8:	00001097          	auipc	ra,0x1
    800040ec:	604080e7          	jalr	1540(ra) # 800056ec <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800040f0:	0ff57513          	andi	a0,a0,255
    800040f4:	ffffe097          	auipc	ra,0xffffe
    800040f8:	288080e7          	jalr	648(ra) # 8000237c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800040fc:	02093783          	ld	a5,32(s2)
    80004100:	0087b503          	ld	a0,8(a5)
    80004104:	00001097          	auipc	ra,0x1
    80004108:	674080e7          	jalr	1652(ra) # 80005778 <_ZN9BufferCPP6getCntEv>
    8000410c:	fca04ae3          	bgtz	a0,800040e0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004110:	02093783          	ld	a5,32(s2)
    80004114:	0107b503          	ld	a0,16(a5)
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	174080e7          	jalr	372(ra) # 8000228c <_ZN9Semaphore6signalEv>
    }
    80004120:	02813083          	ld	ra,40(sp)
    80004124:	02013403          	ld	s0,32(sp)
    80004128:	01813483          	ld	s1,24(sp)
    8000412c:	01013903          	ld	s2,16(sp)
    80004130:	00813983          	ld	s3,8(sp)
    80004134:	03010113          	addi	sp,sp,48
    80004138:	00008067          	ret

000000008000413c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000413c:	ff010113          	addi	sp,sp,-16
    80004140:	00113423          	sd	ra,8(sp)
    80004144:	00813023          	sd	s0,0(sp)
    80004148:	01010413          	addi	s0,sp,16
    8000414c:	00007797          	auipc	a5,0x7
    80004150:	5c478793          	addi	a5,a5,1476 # 8000b710 <_ZTV8Consumer+0x10>
    80004154:	00f53023          	sd	a5,0(a0)
    80004158:	ffffe097          	auipc	ra,0xffffe
    8000415c:	e70080e7          	jalr	-400(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80004160:	00813083          	ld	ra,8(sp)
    80004164:	00013403          	ld	s0,0(sp)
    80004168:	01010113          	addi	sp,sp,16
    8000416c:	00008067          	ret

0000000080004170 <_ZN8ConsumerD0Ev>:
    80004170:	fe010113          	addi	sp,sp,-32
    80004174:	00113c23          	sd	ra,24(sp)
    80004178:	00813823          	sd	s0,16(sp)
    8000417c:	00913423          	sd	s1,8(sp)
    80004180:	02010413          	addi	s0,sp,32
    80004184:	00050493          	mv	s1,a0
    80004188:	00007797          	auipc	a5,0x7
    8000418c:	58878793          	addi	a5,a5,1416 # 8000b710 <_ZTV8Consumer+0x10>
    80004190:	00f53023          	sd	a5,0(a0)
    80004194:	ffffe097          	auipc	ra,0xffffe
    80004198:	e34080e7          	jalr	-460(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    8000419c:	00048513          	mv	a0,s1
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	ee8080e7          	jalr	-280(ra) # 80002088 <_ZdlPv>
    800041a8:	01813083          	ld	ra,24(sp)
    800041ac:	01013403          	ld	s0,16(sp)
    800041b0:	00813483          	ld	s1,8(sp)
    800041b4:	02010113          	addi	sp,sp,32
    800041b8:	00008067          	ret

00000000800041bc <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800041bc:	ff010113          	addi	sp,sp,-16
    800041c0:	00113423          	sd	ra,8(sp)
    800041c4:	00813023          	sd	s0,0(sp)
    800041c8:	01010413          	addi	s0,sp,16
    800041cc:	00007797          	auipc	a5,0x7
    800041d0:	4f478793          	addi	a5,a5,1268 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    800041d4:	00f53023          	sd	a5,0(a0)
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	df0080e7          	jalr	-528(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    800041e0:	00813083          	ld	ra,8(sp)
    800041e4:	00013403          	ld	s0,0(sp)
    800041e8:	01010113          	addi	sp,sp,16
    800041ec:	00008067          	ret

00000000800041f0 <_ZN16ProducerKeyboradD0Ev>:
    800041f0:	fe010113          	addi	sp,sp,-32
    800041f4:	00113c23          	sd	ra,24(sp)
    800041f8:	00813823          	sd	s0,16(sp)
    800041fc:	00913423          	sd	s1,8(sp)
    80004200:	02010413          	addi	s0,sp,32
    80004204:	00050493          	mv	s1,a0
    80004208:	00007797          	auipc	a5,0x7
    8000420c:	4b878793          	addi	a5,a5,1208 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    80004210:	00f53023          	sd	a5,0(a0)
    80004214:	ffffe097          	auipc	ra,0xffffe
    80004218:	db4080e7          	jalr	-588(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    8000421c:	00048513          	mv	a0,s1
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	e68080e7          	jalr	-408(ra) # 80002088 <_ZdlPv>
    80004228:	01813083          	ld	ra,24(sp)
    8000422c:	01013403          	ld	s0,16(sp)
    80004230:	00813483          	ld	s1,8(sp)
    80004234:	02010113          	addi	sp,sp,32
    80004238:	00008067          	ret

000000008000423c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000423c:	ff010113          	addi	sp,sp,-16
    80004240:	00113423          	sd	ra,8(sp)
    80004244:	00813023          	sd	s0,0(sp)
    80004248:	01010413          	addi	s0,sp,16
    8000424c:	00007797          	auipc	a5,0x7
    80004250:	49c78793          	addi	a5,a5,1180 # 8000b6e8 <_ZTV8Producer+0x10>
    80004254:	00f53023          	sd	a5,0(a0)
    80004258:	ffffe097          	auipc	ra,0xffffe
    8000425c:	d70080e7          	jalr	-656(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80004260:	00813083          	ld	ra,8(sp)
    80004264:	00013403          	ld	s0,0(sp)
    80004268:	01010113          	addi	sp,sp,16
    8000426c:	00008067          	ret

0000000080004270 <_ZN8ProducerD0Ev>:
    80004270:	fe010113          	addi	sp,sp,-32
    80004274:	00113c23          	sd	ra,24(sp)
    80004278:	00813823          	sd	s0,16(sp)
    8000427c:	00913423          	sd	s1,8(sp)
    80004280:	02010413          	addi	s0,sp,32
    80004284:	00050493          	mv	s1,a0
    80004288:	00007797          	auipc	a5,0x7
    8000428c:	46078793          	addi	a5,a5,1120 # 8000b6e8 <_ZTV8Producer+0x10>
    80004290:	00f53023          	sd	a5,0(a0)
    80004294:	ffffe097          	auipc	ra,0xffffe
    80004298:	d34080e7          	jalr	-716(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    8000429c:	00048513          	mv	a0,s1
    800042a0:	ffffe097          	auipc	ra,0xffffe
    800042a4:	de8080e7          	jalr	-536(ra) # 80002088 <_ZdlPv>
    800042a8:	01813083          	ld	ra,24(sp)
    800042ac:	01013403          	ld	s0,16(sp)
    800042b0:	00813483          	ld	s1,8(sp)
    800042b4:	02010113          	addi	sp,sp,32
    800042b8:	00008067          	ret

00000000800042bc <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800042bc:	fe010113          	addi	sp,sp,-32
    800042c0:	00113c23          	sd	ra,24(sp)
    800042c4:	00813823          	sd	s0,16(sp)
    800042c8:	00913423          	sd	s1,8(sp)
    800042cc:	02010413          	addi	s0,sp,32
    800042d0:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800042d4:	ffffd097          	auipc	ra,0xffffd
    800042d8:	200080e7          	jalr	512(ra) # 800014d4 <_Z4getcv>
    800042dc:	0005059b          	sext.w	a1,a0
    800042e0:	01b00793          	li	a5,27
    800042e4:	00f58c63          	beq	a1,a5,800042fc <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800042e8:	0204b783          	ld	a5,32(s1)
    800042ec:	0087b503          	ld	a0,8(a5)
    800042f0:	00001097          	auipc	ra,0x1
    800042f4:	36c080e7          	jalr	876(ra) # 8000565c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800042f8:	fddff06f          	j	800042d4 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800042fc:	00100793          	li	a5,1
    80004300:	00007717          	auipc	a4,0x7
    80004304:	5af72423          	sw	a5,1448(a4) # 8000b8a8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004308:	0204b783          	ld	a5,32(s1)
    8000430c:	02100593          	li	a1,33
    80004310:	0087b503          	ld	a0,8(a5)
    80004314:	00001097          	auipc	ra,0x1
    80004318:	348080e7          	jalr	840(ra) # 8000565c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    8000431c:	0204b783          	ld	a5,32(s1)
    80004320:	0107b503          	ld	a0,16(a5)
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	f68080e7          	jalr	-152(ra) # 8000228c <_ZN9Semaphore6signalEv>
    }
    8000432c:	01813083          	ld	ra,24(sp)
    80004330:	01013403          	ld	s0,16(sp)
    80004334:	00813483          	ld	s1,8(sp)
    80004338:	02010113          	addi	sp,sp,32
    8000433c:	00008067          	ret

0000000080004340 <_ZN8Producer3runEv>:
    void run() override {
    80004340:	fe010113          	addi	sp,sp,-32
    80004344:	00113c23          	sd	ra,24(sp)
    80004348:	00813823          	sd	s0,16(sp)
    8000434c:	00913423          	sd	s1,8(sp)
    80004350:	01213023          	sd	s2,0(sp)
    80004354:	02010413          	addi	s0,sp,32
    80004358:	00050493          	mv	s1,a0
        int i = 0;
    8000435c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004360:	00007797          	auipc	a5,0x7
    80004364:	5487a783          	lw	a5,1352(a5) # 8000b8a8 <_ZL9threadEnd>
    80004368:	04079263          	bnez	a5,800043ac <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    8000436c:	0204b783          	ld	a5,32(s1)
    80004370:	0007a583          	lw	a1,0(a5)
    80004374:	0305859b          	addiw	a1,a1,48
    80004378:	0087b503          	ld	a0,8(a5)
    8000437c:	00001097          	auipc	ra,0x1
    80004380:	2e0080e7          	jalr	736(ra) # 8000565c <_ZN9BufferCPP3putEi>
            i++;
    80004384:	0019071b          	addiw	a4,s2,1
    80004388:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    8000438c:	0204b783          	ld	a5,32(s1)
    80004390:	0007a783          	lw	a5,0(a5)
    80004394:	00e787bb          	addw	a5,a5,a4
    80004398:	00500513          	li	a0,5
    8000439c:	02a7e53b          	remw	a0,a5,a0
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	e24080e7          	jalr	-476(ra) # 800021c4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800043a8:	fb9ff06f          	j	80004360 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800043ac:	0204b783          	ld	a5,32(s1)
    800043b0:	0107b503          	ld	a0,16(a5)
    800043b4:	ffffe097          	auipc	ra,0xffffe
    800043b8:	ed8080e7          	jalr	-296(ra) # 8000228c <_ZN9Semaphore6signalEv>
    }
    800043bc:	01813083          	ld	ra,24(sp)
    800043c0:	01013403          	ld	s0,16(sp)
    800043c4:	00813483          	ld	s1,8(sp)
    800043c8:	00013903          	ld	s2,0(sp)
    800043cc:	02010113          	addi	sp,sp,32
    800043d0:	00008067          	ret

00000000800043d4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800043d4:	fe010113          	addi	sp,sp,-32
    800043d8:	00113c23          	sd	ra,24(sp)
    800043dc:	00813823          	sd	s0,16(sp)
    800043e0:	00913423          	sd	s1,8(sp)
    800043e4:	01213023          	sd	s2,0(sp)
    800043e8:	02010413          	addi	s0,sp,32
    800043ec:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800043f0:	00100793          	li	a5,1
    800043f4:	02a7f863          	bgeu	a5,a0,80004424 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800043f8:	00a00793          	li	a5,10
    800043fc:	02f577b3          	remu	a5,a0,a5
    80004400:	02078e63          	beqz	a5,8000443c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004404:	fff48513          	addi	a0,s1,-1
    80004408:	00000097          	auipc	ra,0x0
    8000440c:	fcc080e7          	jalr	-52(ra) # 800043d4 <_ZL9fibonaccim>
    80004410:	00050913          	mv	s2,a0
    80004414:	ffe48513          	addi	a0,s1,-2
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	fbc080e7          	jalr	-68(ra) # 800043d4 <_ZL9fibonaccim>
    80004420:	00a90533          	add	a0,s2,a0
}
    80004424:	01813083          	ld	ra,24(sp)
    80004428:	01013403          	ld	s0,16(sp)
    8000442c:	00813483          	ld	s1,8(sp)
    80004430:	00013903          	ld	s2,0(sp)
    80004434:	02010113          	addi	sp,sp,32
    80004438:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000443c:	ffffd097          	auipc	ra,0xffffd
    80004440:	f98080e7          	jalr	-104(ra) # 800013d4 <_Z15thread_dispatchv>
    80004444:	fc1ff06f          	j	80004404 <_ZL9fibonaccim+0x30>

0000000080004448 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004448:	fe010113          	addi	sp,sp,-32
    8000444c:	00113c23          	sd	ra,24(sp)
    80004450:	00813823          	sd	s0,16(sp)
    80004454:	00913423          	sd	s1,8(sp)
    80004458:	01213023          	sd	s2,0(sp)
    8000445c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004460:	00a00493          	li	s1,10
    80004464:	0400006f          	j	800044a4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004468:	00005517          	auipc	a0,0x5
    8000446c:	d5050513          	addi	a0,a0,-688 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004470:	00001097          	auipc	ra,0x1
    80004474:	dc8080e7          	jalr	-568(ra) # 80005238 <_Z11printStringPKc>
    80004478:	00000613          	li	a2,0
    8000447c:	00a00593          	li	a1,10
    80004480:	00048513          	mv	a0,s1
    80004484:	00001097          	auipc	ra,0x1
    80004488:	f64080e7          	jalr	-156(ra) # 800053e8 <_Z8printIntiii>
    8000448c:	00005517          	auipc	a0,0x5
    80004490:	c1c50513          	addi	a0,a0,-996 # 800090a8 <CONSOLE_STATUS+0x98>
    80004494:	00001097          	auipc	ra,0x1
    80004498:	da4080e7          	jalr	-604(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000449c:	0014849b          	addiw	s1,s1,1
    800044a0:	0ff4f493          	andi	s1,s1,255
    800044a4:	00c00793          	li	a5,12
    800044a8:	fc97f0e3          	bgeu	a5,s1,80004468 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800044ac:	00005517          	auipc	a0,0x5
    800044b0:	d1450513          	addi	a0,a0,-748 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800044b4:	00001097          	auipc	ra,0x1
    800044b8:	d84080e7          	jalr	-636(ra) # 80005238 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800044bc:	00500313          	li	t1,5
    thread_dispatch();
    800044c0:	ffffd097          	auipc	ra,0xffffd
    800044c4:	f14080e7          	jalr	-236(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800044c8:	01000513          	li	a0,16
    800044cc:	00000097          	auipc	ra,0x0
    800044d0:	f08080e7          	jalr	-248(ra) # 800043d4 <_ZL9fibonaccim>
    800044d4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800044d8:	00005517          	auipc	a0,0x5
    800044dc:	cf850513          	addi	a0,a0,-776 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800044e0:	00001097          	auipc	ra,0x1
    800044e4:	d58080e7          	jalr	-680(ra) # 80005238 <_Z11printStringPKc>
    800044e8:	00000613          	li	a2,0
    800044ec:	00a00593          	li	a1,10
    800044f0:	0009051b          	sext.w	a0,s2
    800044f4:	00001097          	auipc	ra,0x1
    800044f8:	ef4080e7          	jalr	-268(ra) # 800053e8 <_Z8printIntiii>
    800044fc:	00005517          	auipc	a0,0x5
    80004500:	bac50513          	addi	a0,a0,-1108 # 800090a8 <CONSOLE_STATUS+0x98>
    80004504:	00001097          	auipc	ra,0x1
    80004508:	d34080e7          	jalr	-716(ra) # 80005238 <_Z11printStringPKc>
    8000450c:	0400006f          	j	8000454c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004510:	00005517          	auipc	a0,0x5
    80004514:	ca850513          	addi	a0,a0,-856 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004518:	00001097          	auipc	ra,0x1
    8000451c:	d20080e7          	jalr	-736(ra) # 80005238 <_Z11printStringPKc>
    80004520:	00000613          	li	a2,0
    80004524:	00a00593          	li	a1,10
    80004528:	00048513          	mv	a0,s1
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	ebc080e7          	jalr	-324(ra) # 800053e8 <_Z8printIntiii>
    80004534:	00005517          	auipc	a0,0x5
    80004538:	b7450513          	addi	a0,a0,-1164 # 800090a8 <CONSOLE_STATUS+0x98>
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	cfc080e7          	jalr	-772(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004544:	0014849b          	addiw	s1,s1,1
    80004548:	0ff4f493          	andi	s1,s1,255
    8000454c:	00f00793          	li	a5,15
    80004550:	fc97f0e3          	bgeu	a5,s1,80004510 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004554:	00005517          	auipc	a0,0x5
    80004558:	c8c50513          	addi	a0,a0,-884 # 800091e0 <CONSOLE_STATUS+0x1d0>
    8000455c:	00001097          	auipc	ra,0x1
    80004560:	cdc080e7          	jalr	-804(ra) # 80005238 <_Z11printStringPKc>
    finishedD = true;
    80004564:	00100793          	li	a5,1
    80004568:	00007717          	auipc	a4,0x7
    8000456c:	34f70823          	sb	a5,848(a4) # 8000b8b8 <_ZL9finishedD>
    thread_dispatch();
    80004570:	ffffd097          	auipc	ra,0xffffd
    80004574:	e64080e7          	jalr	-412(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80004578:	01813083          	ld	ra,24(sp)
    8000457c:	01013403          	ld	s0,16(sp)
    80004580:	00813483          	ld	s1,8(sp)
    80004584:	00013903          	ld	s2,0(sp)
    80004588:	02010113          	addi	sp,sp,32
    8000458c:	00008067          	ret

0000000080004590 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004590:	fe010113          	addi	sp,sp,-32
    80004594:	00113c23          	sd	ra,24(sp)
    80004598:	00813823          	sd	s0,16(sp)
    8000459c:	00913423          	sd	s1,8(sp)
    800045a0:	01213023          	sd	s2,0(sp)
    800045a4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800045a8:	00000493          	li	s1,0
    800045ac:	0400006f          	j	800045ec <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800045b0:	00005517          	auipc	a0,0x5
    800045b4:	bd850513          	addi	a0,a0,-1064 # 80009188 <CONSOLE_STATUS+0x178>
    800045b8:	00001097          	auipc	ra,0x1
    800045bc:	c80080e7          	jalr	-896(ra) # 80005238 <_Z11printStringPKc>
    800045c0:	00000613          	li	a2,0
    800045c4:	00a00593          	li	a1,10
    800045c8:	00048513          	mv	a0,s1
    800045cc:	00001097          	auipc	ra,0x1
    800045d0:	e1c080e7          	jalr	-484(ra) # 800053e8 <_Z8printIntiii>
    800045d4:	00005517          	auipc	a0,0x5
    800045d8:	ad450513          	addi	a0,a0,-1324 # 800090a8 <CONSOLE_STATUS+0x98>
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	c5c080e7          	jalr	-932(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800045e4:	0014849b          	addiw	s1,s1,1
    800045e8:	0ff4f493          	andi	s1,s1,255
    800045ec:	00200793          	li	a5,2
    800045f0:	fc97f0e3          	bgeu	a5,s1,800045b0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800045f4:	00005517          	auipc	a0,0x5
    800045f8:	b9c50513          	addi	a0,a0,-1124 # 80009190 <CONSOLE_STATUS+0x180>
    800045fc:	00001097          	auipc	ra,0x1
    80004600:	c3c080e7          	jalr	-964(ra) # 80005238 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004604:	00700313          	li	t1,7
    thread_dispatch();
    80004608:	ffffd097          	auipc	ra,0xffffd
    8000460c:	dcc080e7          	jalr	-564(ra) # 800013d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004610:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004614:	00005517          	auipc	a0,0x5
    80004618:	b8c50513          	addi	a0,a0,-1140 # 800091a0 <CONSOLE_STATUS+0x190>
    8000461c:	00001097          	auipc	ra,0x1
    80004620:	c1c080e7          	jalr	-996(ra) # 80005238 <_Z11printStringPKc>
    80004624:	00000613          	li	a2,0
    80004628:	00a00593          	li	a1,10
    8000462c:	0009051b          	sext.w	a0,s2
    80004630:	00001097          	auipc	ra,0x1
    80004634:	db8080e7          	jalr	-584(ra) # 800053e8 <_Z8printIntiii>
    80004638:	00005517          	auipc	a0,0x5
    8000463c:	a7050513          	addi	a0,a0,-1424 # 800090a8 <CONSOLE_STATUS+0x98>
    80004640:	00001097          	auipc	ra,0x1
    80004644:	bf8080e7          	jalr	-1032(ra) # 80005238 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004648:	00c00513          	li	a0,12
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	d88080e7          	jalr	-632(ra) # 800043d4 <_ZL9fibonaccim>
    80004654:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004658:	00005517          	auipc	a0,0x5
    8000465c:	b5050513          	addi	a0,a0,-1200 # 800091a8 <CONSOLE_STATUS+0x198>
    80004660:	00001097          	auipc	ra,0x1
    80004664:	bd8080e7          	jalr	-1064(ra) # 80005238 <_Z11printStringPKc>
    80004668:	00000613          	li	a2,0
    8000466c:	00a00593          	li	a1,10
    80004670:	0009051b          	sext.w	a0,s2
    80004674:	00001097          	auipc	ra,0x1
    80004678:	d74080e7          	jalr	-652(ra) # 800053e8 <_Z8printIntiii>
    8000467c:	00005517          	auipc	a0,0x5
    80004680:	a2c50513          	addi	a0,a0,-1492 # 800090a8 <CONSOLE_STATUS+0x98>
    80004684:	00001097          	auipc	ra,0x1
    80004688:	bb4080e7          	jalr	-1100(ra) # 80005238 <_Z11printStringPKc>
    8000468c:	0400006f          	j	800046cc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004690:	00005517          	auipc	a0,0x5
    80004694:	af850513          	addi	a0,a0,-1288 # 80009188 <CONSOLE_STATUS+0x178>
    80004698:	00001097          	auipc	ra,0x1
    8000469c:	ba0080e7          	jalr	-1120(ra) # 80005238 <_Z11printStringPKc>
    800046a0:	00000613          	li	a2,0
    800046a4:	00a00593          	li	a1,10
    800046a8:	00048513          	mv	a0,s1
    800046ac:	00001097          	auipc	ra,0x1
    800046b0:	d3c080e7          	jalr	-708(ra) # 800053e8 <_Z8printIntiii>
    800046b4:	00005517          	auipc	a0,0x5
    800046b8:	9f450513          	addi	a0,a0,-1548 # 800090a8 <CONSOLE_STATUS+0x98>
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	b7c080e7          	jalr	-1156(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800046c4:	0014849b          	addiw	s1,s1,1
    800046c8:	0ff4f493          	andi	s1,s1,255
    800046cc:	00500793          	li	a5,5
    800046d0:	fc97f0e3          	bgeu	a5,s1,80004690 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800046d4:	00005517          	auipc	a0,0x5
    800046d8:	a8c50513          	addi	a0,a0,-1396 # 80009160 <CONSOLE_STATUS+0x150>
    800046dc:	00001097          	auipc	ra,0x1
    800046e0:	b5c080e7          	jalr	-1188(ra) # 80005238 <_Z11printStringPKc>
    finishedC = true;
    800046e4:	00100793          	li	a5,1
    800046e8:	00007717          	auipc	a4,0x7
    800046ec:	1cf708a3          	sb	a5,465(a4) # 8000b8b9 <_ZL9finishedC>
    thread_dispatch();
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	ce4080e7          	jalr	-796(ra) # 800013d4 <_Z15thread_dispatchv>
}
    800046f8:	01813083          	ld	ra,24(sp)
    800046fc:	01013403          	ld	s0,16(sp)
    80004700:	00813483          	ld	s1,8(sp)
    80004704:	00013903          	ld	s2,0(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret

0000000080004710 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004710:	fe010113          	addi	sp,sp,-32
    80004714:	00113c23          	sd	ra,24(sp)
    80004718:	00813823          	sd	s0,16(sp)
    8000471c:	00913423          	sd	s1,8(sp)
    80004720:	01213023          	sd	s2,0(sp)
    80004724:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004728:	00000913          	li	s2,0
    8000472c:	0380006f          	j	80004764 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004730:	ffffd097          	auipc	ra,0xffffd
    80004734:	ca4080e7          	jalr	-860(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004738:	00148493          	addi	s1,s1,1
    8000473c:	000027b7          	lui	a5,0x2
    80004740:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004744:	0097ee63          	bltu	a5,s1,80004760 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004748:	00000713          	li	a4,0
    8000474c:	000077b7          	lui	a5,0x7
    80004750:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004754:	fce7eee3          	bltu	a5,a4,80004730 <_ZL11workerBodyBPv+0x20>
    80004758:	00170713          	addi	a4,a4,1
    8000475c:	ff1ff06f          	j	8000474c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004760:	00190913          	addi	s2,s2,1
    80004764:	00f00793          	li	a5,15
    80004768:	0527e063          	bltu	a5,s2,800047a8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000476c:	00005517          	auipc	a0,0x5
    80004770:	a0450513          	addi	a0,a0,-1532 # 80009170 <CONSOLE_STATUS+0x160>
    80004774:	00001097          	auipc	ra,0x1
    80004778:	ac4080e7          	jalr	-1340(ra) # 80005238 <_Z11printStringPKc>
    8000477c:	00000613          	li	a2,0
    80004780:	00a00593          	li	a1,10
    80004784:	0009051b          	sext.w	a0,s2
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	c60080e7          	jalr	-928(ra) # 800053e8 <_Z8printIntiii>
    80004790:	00005517          	auipc	a0,0x5
    80004794:	91850513          	addi	a0,a0,-1768 # 800090a8 <CONSOLE_STATUS+0x98>
    80004798:	00001097          	auipc	ra,0x1
    8000479c:	aa0080e7          	jalr	-1376(ra) # 80005238 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800047a0:	00000493          	li	s1,0
    800047a4:	f99ff06f          	j	8000473c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800047a8:	00005517          	auipc	a0,0x5
    800047ac:	9d050513          	addi	a0,a0,-1584 # 80009178 <CONSOLE_STATUS+0x168>
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	a88080e7          	jalr	-1400(ra) # 80005238 <_Z11printStringPKc>
    finishedB = true;
    800047b8:	00100793          	li	a5,1
    800047bc:	00007717          	auipc	a4,0x7
    800047c0:	0ef70f23          	sb	a5,254(a4) # 8000b8ba <_ZL9finishedB>
    thread_dispatch();
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	c10080e7          	jalr	-1008(ra) # 800013d4 <_Z15thread_dispatchv>
}
    800047cc:	01813083          	ld	ra,24(sp)
    800047d0:	01013403          	ld	s0,16(sp)
    800047d4:	00813483          	ld	s1,8(sp)
    800047d8:	00013903          	ld	s2,0(sp)
    800047dc:	02010113          	addi	sp,sp,32
    800047e0:	00008067          	ret

00000000800047e4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800047e4:	fe010113          	addi	sp,sp,-32
    800047e8:	00113c23          	sd	ra,24(sp)
    800047ec:	00813823          	sd	s0,16(sp)
    800047f0:	00913423          	sd	s1,8(sp)
    800047f4:	01213023          	sd	s2,0(sp)
    800047f8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800047fc:	00000913          	li	s2,0
    80004800:	0380006f          	j	80004838 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004804:	ffffd097          	auipc	ra,0xffffd
    80004808:	bd0080e7          	jalr	-1072(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000480c:	00148493          	addi	s1,s1,1
    80004810:	000027b7          	lui	a5,0x2
    80004814:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004818:	0097ee63          	bltu	a5,s1,80004834 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000481c:	00000713          	li	a4,0
    80004820:	000077b7          	lui	a5,0x7
    80004824:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004828:	fce7eee3          	bltu	a5,a4,80004804 <_ZL11workerBodyAPv+0x20>
    8000482c:	00170713          	addi	a4,a4,1
    80004830:	ff1ff06f          	j	80004820 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004834:	00190913          	addi	s2,s2,1
    80004838:	00900793          	li	a5,9
    8000483c:	0527e063          	bltu	a5,s2,8000487c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004840:	00005517          	auipc	a0,0x5
    80004844:	91850513          	addi	a0,a0,-1768 # 80009158 <CONSOLE_STATUS+0x148>
    80004848:	00001097          	auipc	ra,0x1
    8000484c:	9f0080e7          	jalr	-1552(ra) # 80005238 <_Z11printStringPKc>
    80004850:	00000613          	li	a2,0
    80004854:	00a00593          	li	a1,10
    80004858:	0009051b          	sext.w	a0,s2
    8000485c:	00001097          	auipc	ra,0x1
    80004860:	b8c080e7          	jalr	-1140(ra) # 800053e8 <_Z8printIntiii>
    80004864:	00005517          	auipc	a0,0x5
    80004868:	84450513          	addi	a0,a0,-1980 # 800090a8 <CONSOLE_STATUS+0x98>
    8000486c:	00001097          	auipc	ra,0x1
    80004870:	9cc080e7          	jalr	-1588(ra) # 80005238 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004874:	00000493          	li	s1,0
    80004878:	f99ff06f          	j	80004810 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000487c:	00005517          	auipc	a0,0x5
    80004880:	8e450513          	addi	a0,a0,-1820 # 80009160 <CONSOLE_STATUS+0x150>
    80004884:	00001097          	auipc	ra,0x1
    80004888:	9b4080e7          	jalr	-1612(ra) # 80005238 <_Z11printStringPKc>
    finishedA = true;
    8000488c:	00100793          	li	a5,1
    80004890:	00007717          	auipc	a4,0x7
    80004894:	02f705a3          	sb	a5,43(a4) # 8000b8bb <_ZL9finishedA>
}
    80004898:	01813083          	ld	ra,24(sp)
    8000489c:	01013403          	ld	s0,16(sp)
    800048a0:	00813483          	ld	s1,8(sp)
    800048a4:	00013903          	ld	s2,0(sp)
    800048a8:	02010113          	addi	sp,sp,32
    800048ac:	00008067          	ret

00000000800048b0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800048b0:	fd010113          	addi	sp,sp,-48
    800048b4:	02113423          	sd	ra,40(sp)
    800048b8:	02813023          	sd	s0,32(sp)
    800048bc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800048c0:	00000613          	li	a2,0
    800048c4:	00000597          	auipc	a1,0x0
    800048c8:	f2058593          	addi	a1,a1,-224 # 800047e4 <_ZL11workerBodyAPv>
    800048cc:	fd040513          	addi	a0,s0,-48
    800048d0:	ffffd097          	auipc	ra,0xffffd
    800048d4:	a30080e7          	jalr	-1488(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800048d8:	00005517          	auipc	a0,0x5
    800048dc:	91850513          	addi	a0,a0,-1768 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800048e0:	00001097          	auipc	ra,0x1
    800048e4:	958080e7          	jalr	-1704(ra) # 80005238 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800048e8:	00000613          	li	a2,0
    800048ec:	00000597          	auipc	a1,0x0
    800048f0:	e2458593          	addi	a1,a1,-476 # 80004710 <_ZL11workerBodyBPv>
    800048f4:	fd840513          	addi	a0,s0,-40
    800048f8:	ffffd097          	auipc	ra,0xffffd
    800048fc:	a08080e7          	jalr	-1528(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004900:	00005517          	auipc	a0,0x5
    80004904:	90850513          	addi	a0,a0,-1784 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	930080e7          	jalr	-1744(ra) # 80005238 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004910:	00000613          	li	a2,0
    80004914:	00000597          	auipc	a1,0x0
    80004918:	c7c58593          	addi	a1,a1,-900 # 80004590 <_ZL11workerBodyCPv>
    8000491c:	fe040513          	addi	a0,s0,-32
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	9e0080e7          	jalr	-1568(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004928:	00005517          	auipc	a0,0x5
    8000492c:	8f850513          	addi	a0,a0,-1800 # 80009220 <CONSOLE_STATUS+0x210>
    80004930:	00001097          	auipc	ra,0x1
    80004934:	908080e7          	jalr	-1784(ra) # 80005238 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004938:	00000613          	li	a2,0
    8000493c:	00000597          	auipc	a1,0x0
    80004940:	b0c58593          	addi	a1,a1,-1268 # 80004448 <_ZL11workerBodyDPv>
    80004944:	fe840513          	addi	a0,s0,-24
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	9b8080e7          	jalr	-1608(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004950:	00005517          	auipc	a0,0x5
    80004954:	8e850513          	addi	a0,a0,-1816 # 80009238 <CONSOLE_STATUS+0x228>
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	8e0080e7          	jalr	-1824(ra) # 80005238 <_Z11printStringPKc>
    80004960:	00c0006f          	j	8000496c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	a70080e7          	jalr	-1424(ra) # 800013d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000496c:	00007797          	auipc	a5,0x7
    80004970:	f4f7c783          	lbu	a5,-177(a5) # 8000b8bb <_ZL9finishedA>
    80004974:	fe0788e3          	beqz	a5,80004964 <_Z18Threads_C_API_testv+0xb4>
    80004978:	00007797          	auipc	a5,0x7
    8000497c:	f427c783          	lbu	a5,-190(a5) # 8000b8ba <_ZL9finishedB>
    80004980:	fe0782e3          	beqz	a5,80004964 <_Z18Threads_C_API_testv+0xb4>
    80004984:	00007797          	auipc	a5,0x7
    80004988:	f357c783          	lbu	a5,-203(a5) # 8000b8b9 <_ZL9finishedC>
    8000498c:	fc078ce3          	beqz	a5,80004964 <_Z18Threads_C_API_testv+0xb4>
    80004990:	00007797          	auipc	a5,0x7
    80004994:	f287c783          	lbu	a5,-216(a5) # 8000b8b8 <_ZL9finishedD>
    80004998:	fc0786e3          	beqz	a5,80004964 <_Z18Threads_C_API_testv+0xb4>
    }

}
    8000499c:	02813083          	ld	ra,40(sp)
    800049a0:	02013403          	ld	s0,32(sp)
    800049a4:	03010113          	addi	sp,sp,48
    800049a8:	00008067          	ret

00000000800049ac <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800049ac:	fd010113          	addi	sp,sp,-48
    800049b0:	02113423          	sd	ra,40(sp)
    800049b4:	02813023          	sd	s0,32(sp)
    800049b8:	00913c23          	sd	s1,24(sp)
    800049bc:	01213823          	sd	s2,16(sp)
    800049c0:	01313423          	sd	s3,8(sp)
    800049c4:	03010413          	addi	s0,sp,48
    800049c8:	00050993          	mv	s3,a0
    800049cc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800049d0:	00000913          	li	s2,0
    800049d4:	00c0006f          	j	800049e0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	7c4080e7          	jalr	1988(ra) # 8000219c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	af4080e7          	jalr	-1292(ra) # 800014d4 <_Z4getcv>
    800049e8:	0005059b          	sext.w	a1,a0
    800049ec:	01b00793          	li	a5,27
    800049f0:	02f58a63          	beq	a1,a5,80004a24 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800049f4:	0084b503          	ld	a0,8(s1)
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	c64080e7          	jalr	-924(ra) # 8000565c <_ZN9BufferCPP3putEi>
        i++;
    80004a00:	0019071b          	addiw	a4,s2,1
    80004a04:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a08:	0004a683          	lw	a3,0(s1)
    80004a0c:	0026979b          	slliw	a5,a3,0x2
    80004a10:	00d787bb          	addw	a5,a5,a3
    80004a14:	0017979b          	slliw	a5,a5,0x1
    80004a18:	02f767bb          	remw	a5,a4,a5
    80004a1c:	fc0792e3          	bnez	a5,800049e0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004a20:	fb9ff06f          	j	800049d8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004a24:	00100793          	li	a5,1
    80004a28:	00007717          	auipc	a4,0x7
    80004a2c:	e8f72c23          	sw	a5,-360(a4) # 8000b8c0 <_ZL9threadEnd>
    td->buffer->put('!');
    80004a30:	0209b783          	ld	a5,32(s3)
    80004a34:	02100593          	li	a1,33
    80004a38:	0087b503          	ld	a0,8(a5)
    80004a3c:	00001097          	auipc	ra,0x1
    80004a40:	c20080e7          	jalr	-992(ra) # 8000565c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004a44:	0104b503          	ld	a0,16(s1)
    80004a48:	ffffe097          	auipc	ra,0xffffe
    80004a4c:	844080e7          	jalr	-1980(ra) # 8000228c <_ZN9Semaphore6signalEv>
}
    80004a50:	02813083          	ld	ra,40(sp)
    80004a54:	02013403          	ld	s0,32(sp)
    80004a58:	01813483          	ld	s1,24(sp)
    80004a5c:	01013903          	ld	s2,16(sp)
    80004a60:	00813983          	ld	s3,8(sp)
    80004a64:	03010113          	addi	sp,sp,48
    80004a68:	00008067          	ret

0000000080004a6c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004a6c:	fe010113          	addi	sp,sp,-32
    80004a70:	00113c23          	sd	ra,24(sp)
    80004a74:	00813823          	sd	s0,16(sp)
    80004a78:	00913423          	sd	s1,8(sp)
    80004a7c:	01213023          	sd	s2,0(sp)
    80004a80:	02010413          	addi	s0,sp,32
    80004a84:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a88:	00000913          	li	s2,0
    80004a8c:	00c0006f          	j	80004a98 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a90:	ffffd097          	auipc	ra,0xffffd
    80004a94:	70c080e7          	jalr	1804(ra) # 8000219c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004a98:	00007797          	auipc	a5,0x7
    80004a9c:	e287a783          	lw	a5,-472(a5) # 8000b8c0 <_ZL9threadEnd>
    80004aa0:	02079e63          	bnez	a5,80004adc <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004aa4:	0004a583          	lw	a1,0(s1)
    80004aa8:	0305859b          	addiw	a1,a1,48
    80004aac:	0084b503          	ld	a0,8(s1)
    80004ab0:	00001097          	auipc	ra,0x1
    80004ab4:	bac080e7          	jalr	-1108(ra) # 8000565c <_ZN9BufferCPP3putEi>
        i++;
    80004ab8:	0019071b          	addiw	a4,s2,1
    80004abc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ac0:	0004a683          	lw	a3,0(s1)
    80004ac4:	0026979b          	slliw	a5,a3,0x2
    80004ac8:	00d787bb          	addw	a5,a5,a3
    80004acc:	0017979b          	slliw	a5,a5,0x1
    80004ad0:	02f767bb          	remw	a5,a4,a5
    80004ad4:	fc0792e3          	bnez	a5,80004a98 <_ZN12ProducerSync8producerEPv+0x2c>
    80004ad8:	fb9ff06f          	j	80004a90 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004adc:	0104b503          	ld	a0,16(s1)
    80004ae0:	ffffd097          	auipc	ra,0xffffd
    80004ae4:	7ac080e7          	jalr	1964(ra) # 8000228c <_ZN9Semaphore6signalEv>
}
    80004ae8:	01813083          	ld	ra,24(sp)
    80004aec:	01013403          	ld	s0,16(sp)
    80004af0:	00813483          	ld	s1,8(sp)
    80004af4:	00013903          	ld	s2,0(sp)
    80004af8:	02010113          	addi	sp,sp,32
    80004afc:	00008067          	ret

0000000080004b00 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004b00:	fd010113          	addi	sp,sp,-48
    80004b04:	02113423          	sd	ra,40(sp)
    80004b08:	02813023          	sd	s0,32(sp)
    80004b0c:	00913c23          	sd	s1,24(sp)
    80004b10:	01213823          	sd	s2,16(sp)
    80004b14:	01313423          	sd	s3,8(sp)
    80004b18:	01413023          	sd	s4,0(sp)
    80004b1c:	03010413          	addi	s0,sp,48
    80004b20:	00050993          	mv	s3,a0
    80004b24:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b28:	00000a13          	li	s4,0
    80004b2c:	01c0006f          	j	80004b48 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	66c080e7          	jalr	1644(ra) # 8000219c <_ZN6Thread8dispatchEv>
    80004b38:	0500006f          	j	80004b88 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004b3c:	00a00513          	li	a0,10
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	9e0080e7          	jalr	-1568(ra) # 80001520 <_Z4putcc>
    while (!threadEnd) {
    80004b48:	00007797          	auipc	a5,0x7
    80004b4c:	d787a783          	lw	a5,-648(a5) # 8000b8c0 <_ZL9threadEnd>
    80004b50:	06079263          	bnez	a5,80004bb4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004b54:	00893503          	ld	a0,8(s2)
    80004b58:	00001097          	auipc	ra,0x1
    80004b5c:	b94080e7          	jalr	-1132(ra) # 800056ec <_ZN9BufferCPP3getEv>
        i++;
    80004b60:	001a049b          	addiw	s1,s4,1
    80004b64:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004b68:	0ff57513          	andi	a0,a0,255
    80004b6c:	ffffd097          	auipc	ra,0xffffd
    80004b70:	9b4080e7          	jalr	-1612(ra) # 80001520 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004b74:	00092703          	lw	a4,0(s2)
    80004b78:	0027179b          	slliw	a5,a4,0x2
    80004b7c:	00e787bb          	addw	a5,a5,a4
    80004b80:	02f4e7bb          	remw	a5,s1,a5
    80004b84:	fa0786e3          	beqz	a5,80004b30 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004b88:	05000793          	li	a5,80
    80004b8c:	02f4e4bb          	remw	s1,s1,a5
    80004b90:	fa049ce3          	bnez	s1,80004b48 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004b94:	fa9ff06f          	j	80004b3c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004b98:	0209b783          	ld	a5,32(s3)
    80004b9c:	0087b503          	ld	a0,8(a5)
    80004ba0:	00001097          	auipc	ra,0x1
    80004ba4:	b4c080e7          	jalr	-1204(ra) # 800056ec <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004ba8:	0ff57513          	andi	a0,a0,255
    80004bac:	ffffd097          	auipc	ra,0xffffd
    80004bb0:	7d0080e7          	jalr	2000(ra) # 8000237c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004bb4:	0209b783          	ld	a5,32(s3)
    80004bb8:	0087b503          	ld	a0,8(a5)
    80004bbc:	00001097          	auipc	ra,0x1
    80004bc0:	bbc080e7          	jalr	-1092(ra) # 80005778 <_ZN9BufferCPP6getCntEv>
    80004bc4:	fca04ae3          	bgtz	a0,80004b98 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004bc8:	01093503          	ld	a0,16(s2)
    80004bcc:	ffffd097          	auipc	ra,0xffffd
    80004bd0:	6c0080e7          	jalr	1728(ra) # 8000228c <_ZN9Semaphore6signalEv>
}
    80004bd4:	02813083          	ld	ra,40(sp)
    80004bd8:	02013403          	ld	s0,32(sp)
    80004bdc:	01813483          	ld	s1,24(sp)
    80004be0:	01013903          	ld	s2,16(sp)
    80004be4:	00813983          	ld	s3,8(sp)
    80004be8:	00013a03          	ld	s4,0(sp)
    80004bec:	03010113          	addi	sp,sp,48
    80004bf0:	00008067          	ret

0000000080004bf4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004bf4:	f8010113          	addi	sp,sp,-128
    80004bf8:	06113c23          	sd	ra,120(sp)
    80004bfc:	06813823          	sd	s0,112(sp)
    80004c00:	06913423          	sd	s1,104(sp)
    80004c04:	07213023          	sd	s2,96(sp)
    80004c08:	05313c23          	sd	s3,88(sp)
    80004c0c:	05413823          	sd	s4,80(sp)
    80004c10:	05513423          	sd	s5,72(sp)
    80004c14:	05613023          	sd	s6,64(sp)
    80004c18:	03713c23          	sd	s7,56(sp)
    80004c1c:	03813823          	sd	s8,48(sp)
    80004c20:	03913423          	sd	s9,40(sp)
    80004c24:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004c28:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c2c:	00004517          	auipc	a0,0x4
    80004c30:	44450513          	addi	a0,a0,1092 # 80009070 <CONSOLE_STATUS+0x60>
    80004c34:	00000097          	auipc	ra,0x0
    80004c38:	604080e7          	jalr	1540(ra) # 80005238 <_Z11printStringPKc>
    getString(input, 30);
    80004c3c:	01e00593          	li	a1,30
    80004c40:	f8040493          	addi	s1,s0,-128
    80004c44:	00048513          	mv	a0,s1
    80004c48:	00000097          	auipc	ra,0x0
    80004c4c:	678080e7          	jalr	1656(ra) # 800052c0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c50:	00048513          	mv	a0,s1
    80004c54:	00000097          	auipc	ra,0x0
    80004c58:	744080e7          	jalr	1860(ra) # 80005398 <_Z11stringToIntPKc>
    80004c5c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c60:	00004517          	auipc	a0,0x4
    80004c64:	43050513          	addi	a0,a0,1072 # 80009090 <CONSOLE_STATUS+0x80>
    80004c68:	00000097          	auipc	ra,0x0
    80004c6c:	5d0080e7          	jalr	1488(ra) # 80005238 <_Z11printStringPKc>
    getString(input, 30);
    80004c70:	01e00593          	li	a1,30
    80004c74:	00048513          	mv	a0,s1
    80004c78:	00000097          	auipc	ra,0x0
    80004c7c:	648080e7          	jalr	1608(ra) # 800052c0 <_Z9getStringPci>
    n = stringToInt(input);
    80004c80:	00048513          	mv	a0,s1
    80004c84:	00000097          	auipc	ra,0x0
    80004c88:	714080e7          	jalr	1812(ra) # 80005398 <_Z11stringToIntPKc>
    80004c8c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004c90:	00004517          	auipc	a0,0x4
    80004c94:	42050513          	addi	a0,a0,1056 # 800090b0 <CONSOLE_STATUS+0xa0>
    80004c98:	00000097          	auipc	ra,0x0
    80004c9c:	5a0080e7          	jalr	1440(ra) # 80005238 <_Z11printStringPKc>
    80004ca0:	00000613          	li	a2,0
    80004ca4:	00a00593          	li	a1,10
    80004ca8:	00090513          	mv	a0,s2
    80004cac:	00000097          	auipc	ra,0x0
    80004cb0:	73c080e7          	jalr	1852(ra) # 800053e8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004cb4:	00004517          	auipc	a0,0x4
    80004cb8:	41450513          	addi	a0,a0,1044 # 800090c8 <CONSOLE_STATUS+0xb8>
    80004cbc:	00000097          	auipc	ra,0x0
    80004cc0:	57c080e7          	jalr	1404(ra) # 80005238 <_Z11printStringPKc>
    80004cc4:	00000613          	li	a2,0
    80004cc8:	00a00593          	li	a1,10
    80004ccc:	00048513          	mv	a0,s1
    80004cd0:	00000097          	auipc	ra,0x0
    80004cd4:	718080e7          	jalr	1816(ra) # 800053e8 <_Z8printIntiii>
    printString(".\n");
    80004cd8:	00004517          	auipc	a0,0x4
    80004cdc:	40850513          	addi	a0,a0,1032 # 800090e0 <CONSOLE_STATUS+0xd0>
    80004ce0:	00000097          	auipc	ra,0x0
    80004ce4:	558080e7          	jalr	1368(ra) # 80005238 <_Z11printStringPKc>
    if(threadNum > n) {
    80004ce8:	0324c463          	blt	s1,s2,80004d10 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004cec:	03205c63          	blez	s2,80004d24 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004cf0:	03800513          	li	a0,56
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	36c080e7          	jalr	876(ra) # 80002060 <_Znwm>
    80004cfc:	00050a93          	mv	s5,a0
    80004d00:	00048593          	mv	a1,s1
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	804080e7          	jalr	-2044(ra) # 80005508 <_ZN9BufferCPPC1Ei>
    80004d0c:	0300006f          	j	80004d3c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004d10:	00004517          	auipc	a0,0x4
    80004d14:	3d850513          	addi	a0,a0,984 # 800090e8 <CONSOLE_STATUS+0xd8>
    80004d18:	00000097          	auipc	ra,0x0
    80004d1c:	520080e7          	jalr	1312(ra) # 80005238 <_Z11printStringPKc>
        return;
    80004d20:	0140006f          	j	80004d34 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004d24:	00004517          	auipc	a0,0x4
    80004d28:	40450513          	addi	a0,a0,1028 # 80009128 <CONSOLE_STATUS+0x118>
    80004d2c:	00000097          	auipc	ra,0x0
    80004d30:	50c080e7          	jalr	1292(ra) # 80005238 <_Z11printStringPKc>
        return;
    80004d34:	000b8113          	mv	sp,s7
    80004d38:	2380006f          	j	80004f70 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004d3c:	01000513          	li	a0,16
    80004d40:	ffffd097          	auipc	ra,0xffffd
    80004d44:	320080e7          	jalr	800(ra) # 80002060 <_Znwm>
    80004d48:	00050493          	mv	s1,a0
    80004d4c:	00000593          	li	a1,0
    80004d50:	ffffd097          	auipc	ra,0xffffd
    80004d54:	4c8080e7          	jalr	1224(ra) # 80002218 <_ZN9SemaphoreC1Ej>
    80004d58:	00007797          	auipc	a5,0x7
    80004d5c:	b697b823          	sd	s1,-1168(a5) # 8000b8c8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d60:	00391793          	slli	a5,s2,0x3
    80004d64:	00f78793          	addi	a5,a5,15
    80004d68:	ff07f793          	andi	a5,a5,-16
    80004d6c:	40f10133          	sub	sp,sp,a5
    80004d70:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004d74:	0019071b          	addiw	a4,s2,1
    80004d78:	00171793          	slli	a5,a4,0x1
    80004d7c:	00e787b3          	add	a5,a5,a4
    80004d80:	00379793          	slli	a5,a5,0x3
    80004d84:	00f78793          	addi	a5,a5,15
    80004d88:	ff07f793          	andi	a5,a5,-16
    80004d8c:	40f10133          	sub	sp,sp,a5
    80004d90:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004d94:	00191c13          	slli	s8,s2,0x1
    80004d98:	012c07b3          	add	a5,s8,s2
    80004d9c:	00379793          	slli	a5,a5,0x3
    80004da0:	00fa07b3          	add	a5,s4,a5
    80004da4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004da8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004dac:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004db0:	02800513          	li	a0,40
    80004db4:	ffffd097          	auipc	ra,0xffffd
    80004db8:	2ac080e7          	jalr	684(ra) # 80002060 <_Znwm>
    80004dbc:	00050b13          	mv	s6,a0
    80004dc0:	012c0c33          	add	s8,s8,s2
    80004dc4:	003c1c13          	slli	s8,s8,0x3
    80004dc8:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004dcc:	ffffd097          	auipc	ra,0xffffd
    80004dd0:	424080e7          	jalr	1060(ra) # 800021f0 <_ZN6ThreadC1Ev>
    80004dd4:	00007797          	auipc	a5,0x7
    80004dd8:	9b478793          	addi	a5,a5,-1612 # 8000b788 <_ZTV12ConsumerSync+0x10>
    80004ddc:	00fb3023          	sd	a5,0(s6)
    80004de0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004de4:	000b0513          	mv	a0,s6
    80004de8:	ffffd097          	auipc	ra,0xffffd
    80004dec:	384080e7          	jalr	900(ra) # 8000216c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004df0:	00000493          	li	s1,0
    80004df4:	0380006f          	j	80004e2c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004df8:	00007797          	auipc	a5,0x7
    80004dfc:	96878793          	addi	a5,a5,-1688 # 8000b760 <_ZTV12ProducerSync+0x10>
    80004e00:	00fcb023          	sd	a5,0(s9)
    80004e04:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004e08:	00349793          	slli	a5,s1,0x3
    80004e0c:	00f987b3          	add	a5,s3,a5
    80004e10:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004e14:	00349793          	slli	a5,s1,0x3
    80004e18:	00f987b3          	add	a5,s3,a5
    80004e1c:	0007b503          	ld	a0,0(a5)
    80004e20:	ffffd097          	auipc	ra,0xffffd
    80004e24:	34c080e7          	jalr	844(ra) # 8000216c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e28:	0014849b          	addiw	s1,s1,1
    80004e2c:	0b24d063          	bge	s1,s2,80004ecc <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004e30:	00149793          	slli	a5,s1,0x1
    80004e34:	009787b3          	add	a5,a5,s1
    80004e38:	00379793          	slli	a5,a5,0x3
    80004e3c:	00fa07b3          	add	a5,s4,a5
    80004e40:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004e44:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004e48:	00007717          	auipc	a4,0x7
    80004e4c:	a8073703          	ld	a4,-1408(a4) # 8000b8c8 <_ZL10waitForAll>
    80004e50:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004e54:	02905863          	blez	s1,80004e84 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e58:	02800513          	li	a0,40
    80004e5c:	ffffd097          	auipc	ra,0xffffd
    80004e60:	204080e7          	jalr	516(ra) # 80002060 <_Znwm>
    80004e64:	00050c93          	mv	s9,a0
    80004e68:	00149c13          	slli	s8,s1,0x1
    80004e6c:	009c0c33          	add	s8,s8,s1
    80004e70:	003c1c13          	slli	s8,s8,0x3
    80004e74:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e78:	ffffd097          	auipc	ra,0xffffd
    80004e7c:	378080e7          	jalr	888(ra) # 800021f0 <_ZN6ThreadC1Ev>
    80004e80:	f79ff06f          	j	80004df8 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004e84:	02800513          	li	a0,40
    80004e88:	ffffd097          	auipc	ra,0xffffd
    80004e8c:	1d8080e7          	jalr	472(ra) # 80002060 <_Znwm>
    80004e90:	00050c93          	mv	s9,a0
    80004e94:	00149c13          	slli	s8,s1,0x1
    80004e98:	009c0c33          	add	s8,s8,s1
    80004e9c:	003c1c13          	slli	s8,s8,0x3
    80004ea0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004ea4:	ffffd097          	auipc	ra,0xffffd
    80004ea8:	34c080e7          	jalr	844(ra) # 800021f0 <_ZN6ThreadC1Ev>
    80004eac:	00007797          	auipc	a5,0x7
    80004eb0:	88c78793          	addi	a5,a5,-1908 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    80004eb4:	00fcb023          	sd	a5,0(s9)
    80004eb8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004ebc:	00349793          	slli	a5,s1,0x3
    80004ec0:	00f987b3          	add	a5,s3,a5
    80004ec4:	0197b023          	sd	s9,0(a5)
    80004ec8:	f4dff06f          	j	80004e14 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004ecc:	ffffd097          	auipc	ra,0xffffd
    80004ed0:	2d0080e7          	jalr	720(ra) # 8000219c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ed4:	00000493          	li	s1,0
    80004ed8:	00994e63          	blt	s2,s1,80004ef4 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004edc:	00007517          	auipc	a0,0x7
    80004ee0:	9ec53503          	ld	a0,-1556(a0) # 8000b8c8 <_ZL10waitForAll>
    80004ee4:	ffffd097          	auipc	ra,0xffffd
    80004ee8:	370080e7          	jalr	880(ra) # 80002254 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004eec:	0014849b          	addiw	s1,s1,1
    80004ef0:	fe9ff06f          	j	80004ed8 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004ef4:	00000493          	li	s1,0
    80004ef8:	0080006f          	j	80004f00 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004efc:	0014849b          	addiw	s1,s1,1
    80004f00:	0324d263          	bge	s1,s2,80004f24 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004f04:	00349793          	slli	a5,s1,0x3
    80004f08:	00f987b3          	add	a5,s3,a5
    80004f0c:	0007b503          	ld	a0,0(a5)
    80004f10:	fe0506e3          	beqz	a0,80004efc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004f14:	00053783          	ld	a5,0(a0)
    80004f18:	0087b783          	ld	a5,8(a5)
    80004f1c:	000780e7          	jalr	a5
    80004f20:	fddff06f          	j	80004efc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004f24:	000b0a63          	beqz	s6,80004f38 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004f28:	000b3783          	ld	a5,0(s6)
    80004f2c:	0087b783          	ld	a5,8(a5)
    80004f30:	000b0513          	mv	a0,s6
    80004f34:	000780e7          	jalr	a5
    delete waitForAll;
    80004f38:	00007517          	auipc	a0,0x7
    80004f3c:	99053503          	ld	a0,-1648(a0) # 8000b8c8 <_ZL10waitForAll>
    80004f40:	00050863          	beqz	a0,80004f50 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004f44:	00053783          	ld	a5,0(a0)
    80004f48:	0087b783          	ld	a5,8(a5)
    80004f4c:	000780e7          	jalr	a5
    delete buffer;
    80004f50:	000a8e63          	beqz	s5,80004f6c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004f54:	000a8513          	mv	a0,s5
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	8a8080e7          	jalr	-1880(ra) # 80005800 <_ZN9BufferCPPD1Ev>
    80004f60:	000a8513          	mv	a0,s5
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	124080e7          	jalr	292(ra) # 80002088 <_ZdlPv>
    80004f6c:	000b8113          	mv	sp,s7

}
    80004f70:	f8040113          	addi	sp,s0,-128
    80004f74:	07813083          	ld	ra,120(sp)
    80004f78:	07013403          	ld	s0,112(sp)
    80004f7c:	06813483          	ld	s1,104(sp)
    80004f80:	06013903          	ld	s2,96(sp)
    80004f84:	05813983          	ld	s3,88(sp)
    80004f88:	05013a03          	ld	s4,80(sp)
    80004f8c:	04813a83          	ld	s5,72(sp)
    80004f90:	04013b03          	ld	s6,64(sp)
    80004f94:	03813b83          	ld	s7,56(sp)
    80004f98:	03013c03          	ld	s8,48(sp)
    80004f9c:	02813c83          	ld	s9,40(sp)
    80004fa0:	08010113          	addi	sp,sp,128
    80004fa4:	00008067          	ret
    80004fa8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004fac:	000a8513          	mv	a0,s5
    80004fb0:	ffffd097          	auipc	ra,0xffffd
    80004fb4:	0d8080e7          	jalr	216(ra) # 80002088 <_ZdlPv>
    80004fb8:	00048513          	mv	a0,s1
    80004fbc:	00008097          	auipc	ra,0x8
    80004fc0:	9ec080e7          	jalr	-1556(ra) # 8000c9a8 <_Unwind_Resume>
    80004fc4:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004fc8:	00048513          	mv	a0,s1
    80004fcc:	ffffd097          	auipc	ra,0xffffd
    80004fd0:	0bc080e7          	jalr	188(ra) # 80002088 <_ZdlPv>
    80004fd4:	00090513          	mv	a0,s2
    80004fd8:	00008097          	auipc	ra,0x8
    80004fdc:	9d0080e7          	jalr	-1584(ra) # 8000c9a8 <_Unwind_Resume>
    80004fe0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004fe4:	000b0513          	mv	a0,s6
    80004fe8:	ffffd097          	auipc	ra,0xffffd
    80004fec:	0a0080e7          	jalr	160(ra) # 80002088 <_ZdlPv>
    80004ff0:	00048513          	mv	a0,s1
    80004ff4:	00008097          	auipc	ra,0x8
    80004ff8:	9b4080e7          	jalr	-1612(ra) # 8000c9a8 <_Unwind_Resume>
    80004ffc:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005000:	000c8513          	mv	a0,s9
    80005004:	ffffd097          	auipc	ra,0xffffd
    80005008:	084080e7          	jalr	132(ra) # 80002088 <_ZdlPv>
    8000500c:	00048513          	mv	a0,s1
    80005010:	00008097          	auipc	ra,0x8
    80005014:	998080e7          	jalr	-1640(ra) # 8000c9a8 <_Unwind_Resume>
    80005018:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000501c:	000c8513          	mv	a0,s9
    80005020:	ffffd097          	auipc	ra,0xffffd
    80005024:	068080e7          	jalr	104(ra) # 80002088 <_ZdlPv>
    80005028:	00048513          	mv	a0,s1
    8000502c:	00008097          	auipc	ra,0x8
    80005030:	97c080e7          	jalr	-1668(ra) # 8000c9a8 <_Unwind_Resume>

0000000080005034 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005034:	ff010113          	addi	sp,sp,-16
    80005038:	00113423          	sd	ra,8(sp)
    8000503c:	00813023          	sd	s0,0(sp)
    80005040:	01010413          	addi	s0,sp,16
    80005044:	00006797          	auipc	a5,0x6
    80005048:	74478793          	addi	a5,a5,1860 # 8000b788 <_ZTV12ConsumerSync+0x10>
    8000504c:	00f53023          	sd	a5,0(a0)
    80005050:	ffffd097          	auipc	ra,0xffffd
    80005054:	f78080e7          	jalr	-136(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80005058:	00813083          	ld	ra,8(sp)
    8000505c:	00013403          	ld	s0,0(sp)
    80005060:	01010113          	addi	sp,sp,16
    80005064:	00008067          	ret

0000000080005068 <_ZN12ConsumerSyncD0Ev>:
    80005068:	fe010113          	addi	sp,sp,-32
    8000506c:	00113c23          	sd	ra,24(sp)
    80005070:	00813823          	sd	s0,16(sp)
    80005074:	00913423          	sd	s1,8(sp)
    80005078:	02010413          	addi	s0,sp,32
    8000507c:	00050493          	mv	s1,a0
    80005080:	00006797          	auipc	a5,0x6
    80005084:	70878793          	addi	a5,a5,1800 # 8000b788 <_ZTV12ConsumerSync+0x10>
    80005088:	00f53023          	sd	a5,0(a0)
    8000508c:	ffffd097          	auipc	ra,0xffffd
    80005090:	f3c080e7          	jalr	-196(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80005094:	00048513          	mv	a0,s1
    80005098:	ffffd097          	auipc	ra,0xffffd
    8000509c:	ff0080e7          	jalr	-16(ra) # 80002088 <_ZdlPv>
    800050a0:	01813083          	ld	ra,24(sp)
    800050a4:	01013403          	ld	s0,16(sp)
    800050a8:	00813483          	ld	s1,8(sp)
    800050ac:	02010113          	addi	sp,sp,32
    800050b0:	00008067          	ret

00000000800050b4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800050b4:	ff010113          	addi	sp,sp,-16
    800050b8:	00113423          	sd	ra,8(sp)
    800050bc:	00813023          	sd	s0,0(sp)
    800050c0:	01010413          	addi	s0,sp,16
    800050c4:	00006797          	auipc	a5,0x6
    800050c8:	69c78793          	addi	a5,a5,1692 # 8000b760 <_ZTV12ProducerSync+0x10>
    800050cc:	00f53023          	sd	a5,0(a0)
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	ef8080e7          	jalr	-264(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    800050d8:	00813083          	ld	ra,8(sp)
    800050dc:	00013403          	ld	s0,0(sp)
    800050e0:	01010113          	addi	sp,sp,16
    800050e4:	00008067          	ret

00000000800050e8 <_ZN12ProducerSyncD0Ev>:
    800050e8:	fe010113          	addi	sp,sp,-32
    800050ec:	00113c23          	sd	ra,24(sp)
    800050f0:	00813823          	sd	s0,16(sp)
    800050f4:	00913423          	sd	s1,8(sp)
    800050f8:	02010413          	addi	s0,sp,32
    800050fc:	00050493          	mv	s1,a0
    80005100:	00006797          	auipc	a5,0x6
    80005104:	66078793          	addi	a5,a5,1632 # 8000b760 <_ZTV12ProducerSync+0x10>
    80005108:	00f53023          	sd	a5,0(a0)
    8000510c:	ffffd097          	auipc	ra,0xffffd
    80005110:	ebc080e7          	jalr	-324(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80005114:	00048513          	mv	a0,s1
    80005118:	ffffd097          	auipc	ra,0xffffd
    8000511c:	f70080e7          	jalr	-144(ra) # 80002088 <_ZdlPv>
    80005120:	01813083          	ld	ra,24(sp)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	00813483          	ld	s1,8(sp)
    8000512c:	02010113          	addi	sp,sp,32
    80005130:	00008067          	ret

0000000080005134 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005134:	ff010113          	addi	sp,sp,-16
    80005138:	00113423          	sd	ra,8(sp)
    8000513c:	00813023          	sd	s0,0(sp)
    80005140:	01010413          	addi	s0,sp,16
    80005144:	00006797          	auipc	a5,0x6
    80005148:	5f478793          	addi	a5,a5,1524 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    8000514c:	00f53023          	sd	a5,0(a0)
    80005150:	ffffd097          	auipc	ra,0xffffd
    80005154:	e78080e7          	jalr	-392(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80005158:	00813083          	ld	ra,8(sp)
    8000515c:	00013403          	ld	s0,0(sp)
    80005160:	01010113          	addi	sp,sp,16
    80005164:	00008067          	ret

0000000080005168 <_ZN16ProducerKeyboardD0Ev>:
    80005168:	fe010113          	addi	sp,sp,-32
    8000516c:	00113c23          	sd	ra,24(sp)
    80005170:	00813823          	sd	s0,16(sp)
    80005174:	00913423          	sd	s1,8(sp)
    80005178:	02010413          	addi	s0,sp,32
    8000517c:	00050493          	mv	s1,a0
    80005180:	00006797          	auipc	a5,0x6
    80005184:	5b878793          	addi	a5,a5,1464 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    80005188:	00f53023          	sd	a5,0(a0)
    8000518c:	ffffd097          	auipc	ra,0xffffd
    80005190:	e3c080e7          	jalr	-452(ra) # 80001fc8 <_ZN6ThreadD1Ev>
    80005194:	00048513          	mv	a0,s1
    80005198:	ffffd097          	auipc	ra,0xffffd
    8000519c:	ef0080e7          	jalr	-272(ra) # 80002088 <_ZdlPv>
    800051a0:	01813083          	ld	ra,24(sp)
    800051a4:	01013403          	ld	s0,16(sp)
    800051a8:	00813483          	ld	s1,8(sp)
    800051ac:	02010113          	addi	sp,sp,32
    800051b0:	00008067          	ret

00000000800051b4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800051b4:	ff010113          	addi	sp,sp,-16
    800051b8:	00113423          	sd	ra,8(sp)
    800051bc:	00813023          	sd	s0,0(sp)
    800051c0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800051c4:	02053583          	ld	a1,32(a0)
    800051c8:	fffff097          	auipc	ra,0xfffff
    800051cc:	7e4080e7          	jalr	2020(ra) # 800049ac <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800051d0:	00813083          	ld	ra,8(sp)
    800051d4:	00013403          	ld	s0,0(sp)
    800051d8:	01010113          	addi	sp,sp,16
    800051dc:	00008067          	ret

00000000800051e0 <_ZN12ProducerSync3runEv>:
    void run() override {
    800051e0:	ff010113          	addi	sp,sp,-16
    800051e4:	00113423          	sd	ra,8(sp)
    800051e8:	00813023          	sd	s0,0(sp)
    800051ec:	01010413          	addi	s0,sp,16
        producer(td);
    800051f0:	02053583          	ld	a1,32(a0)
    800051f4:	00000097          	auipc	ra,0x0
    800051f8:	878080e7          	jalr	-1928(ra) # 80004a6c <_ZN12ProducerSync8producerEPv>
    }
    800051fc:	00813083          	ld	ra,8(sp)
    80005200:	00013403          	ld	s0,0(sp)
    80005204:	01010113          	addi	sp,sp,16
    80005208:	00008067          	ret

000000008000520c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000520c:	ff010113          	addi	sp,sp,-16
    80005210:	00113423          	sd	ra,8(sp)
    80005214:	00813023          	sd	s0,0(sp)
    80005218:	01010413          	addi	s0,sp,16
        consumer(td);
    8000521c:	02053583          	ld	a1,32(a0)
    80005220:	00000097          	auipc	ra,0x0
    80005224:	8e0080e7          	jalr	-1824(ra) # 80004b00 <_ZN12ConsumerSync8consumerEPv>
    }
    80005228:	00813083          	ld	ra,8(sp)
    8000522c:	00013403          	ld	s0,0(sp)
    80005230:	01010113          	addi	sp,sp,16
    80005234:	00008067          	ret

0000000080005238 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005238:	fe010113          	addi	sp,sp,-32
    8000523c:	00113c23          	sd	ra,24(sp)
    80005240:	00813823          	sd	s0,16(sp)
    80005244:	00913423          	sd	s1,8(sp)
    80005248:	02010413          	addi	s0,sp,32
    8000524c:	00050493          	mv	s1,a0
    LOCK();
    80005250:	00100613          	li	a2,1
    80005254:	00000593          	li	a1,0
    80005258:	00006517          	auipc	a0,0x6
    8000525c:	67850513          	addi	a0,a0,1656 # 8000b8d0 <lockPrint>
    80005260:	ffffc097          	auipc	ra,0xffffc
    80005264:	fc4080e7          	jalr	-60(ra) # 80001224 <copy_and_swap>
    80005268:	00050863          	beqz	a0,80005278 <_Z11printStringPKc+0x40>
    8000526c:	ffffc097          	auipc	ra,0xffffc
    80005270:	168080e7          	jalr	360(ra) # 800013d4 <_Z15thread_dispatchv>
    80005274:	fddff06f          	j	80005250 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005278:	0004c503          	lbu	a0,0(s1)
    8000527c:	00050a63          	beqz	a0,80005290 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005280:	ffffc097          	auipc	ra,0xffffc
    80005284:	2a0080e7          	jalr	672(ra) # 80001520 <_Z4putcc>
        string++;
    80005288:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000528c:	fedff06f          	j	80005278 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005290:	00000613          	li	a2,0
    80005294:	00100593          	li	a1,1
    80005298:	00006517          	auipc	a0,0x6
    8000529c:	63850513          	addi	a0,a0,1592 # 8000b8d0 <lockPrint>
    800052a0:	ffffc097          	auipc	ra,0xffffc
    800052a4:	f84080e7          	jalr	-124(ra) # 80001224 <copy_and_swap>
    800052a8:	fe0514e3          	bnez	a0,80005290 <_Z11printStringPKc+0x58>
}
    800052ac:	01813083          	ld	ra,24(sp)
    800052b0:	01013403          	ld	s0,16(sp)
    800052b4:	00813483          	ld	s1,8(sp)
    800052b8:	02010113          	addi	sp,sp,32
    800052bc:	00008067          	ret

00000000800052c0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800052c0:	fd010113          	addi	sp,sp,-48
    800052c4:	02113423          	sd	ra,40(sp)
    800052c8:	02813023          	sd	s0,32(sp)
    800052cc:	00913c23          	sd	s1,24(sp)
    800052d0:	01213823          	sd	s2,16(sp)
    800052d4:	01313423          	sd	s3,8(sp)
    800052d8:	01413023          	sd	s4,0(sp)
    800052dc:	03010413          	addi	s0,sp,48
    800052e0:	00050993          	mv	s3,a0
    800052e4:	00058a13          	mv	s4,a1
    LOCK();
    800052e8:	00100613          	li	a2,1
    800052ec:	00000593          	li	a1,0
    800052f0:	00006517          	auipc	a0,0x6
    800052f4:	5e050513          	addi	a0,a0,1504 # 8000b8d0 <lockPrint>
    800052f8:	ffffc097          	auipc	ra,0xffffc
    800052fc:	f2c080e7          	jalr	-212(ra) # 80001224 <copy_and_swap>
    80005300:	00050863          	beqz	a0,80005310 <_Z9getStringPci+0x50>
    80005304:	ffffc097          	auipc	ra,0xffffc
    80005308:	0d0080e7          	jalr	208(ra) # 800013d4 <_Z15thread_dispatchv>
    8000530c:	fddff06f          	j	800052e8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005310:	00000913          	li	s2,0
    80005314:	00090493          	mv	s1,s2
    80005318:	0019091b          	addiw	s2,s2,1
    8000531c:	03495a63          	bge	s2,s4,80005350 <_Z9getStringPci+0x90>
        cc = getc();
    80005320:	ffffc097          	auipc	ra,0xffffc
    80005324:	1b4080e7          	jalr	436(ra) # 800014d4 <_Z4getcv>
        if(cc < 1)
    80005328:	02050463          	beqz	a0,80005350 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000532c:	009984b3          	add	s1,s3,s1
    80005330:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005334:	00a00793          	li	a5,10
    80005338:	00f50a63          	beq	a0,a5,8000534c <_Z9getStringPci+0x8c>
    8000533c:	00d00793          	li	a5,13
    80005340:	fcf51ae3          	bne	a0,a5,80005314 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005344:	00090493          	mv	s1,s2
    80005348:	0080006f          	j	80005350 <_Z9getStringPci+0x90>
    8000534c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005350:	009984b3          	add	s1,s3,s1
    80005354:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005358:	00000613          	li	a2,0
    8000535c:	00100593          	li	a1,1
    80005360:	00006517          	auipc	a0,0x6
    80005364:	57050513          	addi	a0,a0,1392 # 8000b8d0 <lockPrint>
    80005368:	ffffc097          	auipc	ra,0xffffc
    8000536c:	ebc080e7          	jalr	-324(ra) # 80001224 <copy_and_swap>
    80005370:	fe0514e3          	bnez	a0,80005358 <_Z9getStringPci+0x98>
    return buf;
}
    80005374:	00098513          	mv	a0,s3
    80005378:	02813083          	ld	ra,40(sp)
    8000537c:	02013403          	ld	s0,32(sp)
    80005380:	01813483          	ld	s1,24(sp)
    80005384:	01013903          	ld	s2,16(sp)
    80005388:	00813983          	ld	s3,8(sp)
    8000538c:	00013a03          	ld	s4,0(sp)
    80005390:	03010113          	addi	sp,sp,48
    80005394:	00008067          	ret

0000000080005398 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005398:	ff010113          	addi	sp,sp,-16
    8000539c:	00813423          	sd	s0,8(sp)
    800053a0:	01010413          	addi	s0,sp,16
    800053a4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800053a8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800053ac:	0006c603          	lbu	a2,0(a3)
    800053b0:	fd06071b          	addiw	a4,a2,-48
    800053b4:	0ff77713          	andi	a4,a4,255
    800053b8:	00900793          	li	a5,9
    800053bc:	02e7e063          	bltu	a5,a4,800053dc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800053c0:	0025179b          	slliw	a5,a0,0x2
    800053c4:	00a787bb          	addw	a5,a5,a0
    800053c8:	0017979b          	slliw	a5,a5,0x1
    800053cc:	00168693          	addi	a3,a3,1
    800053d0:	00c787bb          	addw	a5,a5,a2
    800053d4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800053d8:	fd5ff06f          	j	800053ac <_Z11stringToIntPKc+0x14>
    return n;
}
    800053dc:	00813403          	ld	s0,8(sp)
    800053e0:	01010113          	addi	sp,sp,16
    800053e4:	00008067          	ret

00000000800053e8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800053e8:	fc010113          	addi	sp,sp,-64
    800053ec:	02113c23          	sd	ra,56(sp)
    800053f0:	02813823          	sd	s0,48(sp)
    800053f4:	02913423          	sd	s1,40(sp)
    800053f8:	03213023          	sd	s2,32(sp)
    800053fc:	01313c23          	sd	s3,24(sp)
    80005400:	04010413          	addi	s0,sp,64
    80005404:	00050493          	mv	s1,a0
    80005408:	00058913          	mv	s2,a1
    8000540c:	00060993          	mv	s3,a2
    LOCK();
    80005410:	00100613          	li	a2,1
    80005414:	00000593          	li	a1,0
    80005418:	00006517          	auipc	a0,0x6
    8000541c:	4b850513          	addi	a0,a0,1208 # 8000b8d0 <lockPrint>
    80005420:	ffffc097          	auipc	ra,0xffffc
    80005424:	e04080e7          	jalr	-508(ra) # 80001224 <copy_and_swap>
    80005428:	00050863          	beqz	a0,80005438 <_Z8printIntiii+0x50>
    8000542c:	ffffc097          	auipc	ra,0xffffc
    80005430:	fa8080e7          	jalr	-88(ra) # 800013d4 <_Z15thread_dispatchv>
    80005434:	fddff06f          	j	80005410 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005438:	00098463          	beqz	s3,80005440 <_Z8printIntiii+0x58>
    8000543c:	0804c463          	bltz	s1,800054c4 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005440:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005444:	00000593          	li	a1,0
    }

    i = 0;
    80005448:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000544c:	0009079b          	sext.w	a5,s2
    80005450:	0325773b          	remuw	a4,a0,s2
    80005454:	00048613          	mv	a2,s1
    80005458:	0014849b          	addiw	s1,s1,1
    8000545c:	02071693          	slli	a3,a4,0x20
    80005460:	0206d693          	srli	a3,a3,0x20
    80005464:	00006717          	auipc	a4,0x6
    80005468:	33c70713          	addi	a4,a4,828 # 8000b7a0 <digits>
    8000546c:	00d70733          	add	a4,a4,a3
    80005470:	00074683          	lbu	a3,0(a4)
    80005474:	fd040713          	addi	a4,s0,-48
    80005478:	00c70733          	add	a4,a4,a2
    8000547c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005480:	0005071b          	sext.w	a4,a0
    80005484:	0325553b          	divuw	a0,a0,s2
    80005488:	fcf772e3          	bgeu	a4,a5,8000544c <_Z8printIntiii+0x64>
    if(neg)
    8000548c:	00058c63          	beqz	a1,800054a4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005490:	fd040793          	addi	a5,s0,-48
    80005494:	009784b3          	add	s1,a5,s1
    80005498:	02d00793          	li	a5,45
    8000549c:	fef48823          	sb	a5,-16(s1)
    800054a0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800054a4:	fff4849b          	addiw	s1,s1,-1
    800054a8:	0204c463          	bltz	s1,800054d0 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800054ac:	fd040793          	addi	a5,s0,-48
    800054b0:	009787b3          	add	a5,a5,s1
    800054b4:	ff07c503          	lbu	a0,-16(a5)
    800054b8:	ffffc097          	auipc	ra,0xffffc
    800054bc:	068080e7          	jalr	104(ra) # 80001520 <_Z4putcc>
    800054c0:	fe5ff06f          	j	800054a4 <_Z8printIntiii+0xbc>
        x = -xx;
    800054c4:	4090053b          	negw	a0,s1
        neg = 1;
    800054c8:	00100593          	li	a1,1
        x = -xx;
    800054cc:	f7dff06f          	j	80005448 <_Z8printIntiii+0x60>

    UNLOCK();
    800054d0:	00000613          	li	a2,0
    800054d4:	00100593          	li	a1,1
    800054d8:	00006517          	auipc	a0,0x6
    800054dc:	3f850513          	addi	a0,a0,1016 # 8000b8d0 <lockPrint>
    800054e0:	ffffc097          	auipc	ra,0xffffc
    800054e4:	d44080e7          	jalr	-700(ra) # 80001224 <copy_and_swap>
    800054e8:	fe0514e3          	bnez	a0,800054d0 <_Z8printIntiii+0xe8>
    800054ec:	03813083          	ld	ra,56(sp)
    800054f0:	03013403          	ld	s0,48(sp)
    800054f4:	02813483          	ld	s1,40(sp)
    800054f8:	02013903          	ld	s2,32(sp)
    800054fc:	01813983          	ld	s3,24(sp)
    80005500:	04010113          	addi	sp,sp,64
    80005504:	00008067          	ret

0000000080005508 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005508:	fd010113          	addi	sp,sp,-48
    8000550c:	02113423          	sd	ra,40(sp)
    80005510:	02813023          	sd	s0,32(sp)
    80005514:	00913c23          	sd	s1,24(sp)
    80005518:	01213823          	sd	s2,16(sp)
    8000551c:	01313423          	sd	s3,8(sp)
    80005520:	03010413          	addi	s0,sp,48
    80005524:	00050493          	mv	s1,a0
    80005528:	00058913          	mv	s2,a1
    8000552c:	0015879b          	addiw	a5,a1,1
    80005530:	0007851b          	sext.w	a0,a5
    80005534:	00f4a023          	sw	a5,0(s1)
    80005538:	0004a823          	sw	zero,16(s1)
    8000553c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005540:	00251513          	slli	a0,a0,0x2
    80005544:	ffffc097          	auipc	ra,0xffffc
    80005548:	d1c080e7          	jalr	-740(ra) # 80001260 <_Z9mem_allocm>
    8000554c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005550:	01000513          	li	a0,16
    80005554:	ffffd097          	auipc	ra,0xffffd
    80005558:	b0c080e7          	jalr	-1268(ra) # 80002060 <_Znwm>
    8000555c:	00050993          	mv	s3,a0
    80005560:	00000593          	li	a1,0
    80005564:	ffffd097          	auipc	ra,0xffffd
    80005568:	cb4080e7          	jalr	-844(ra) # 80002218 <_ZN9SemaphoreC1Ej>
    8000556c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005570:	01000513          	li	a0,16
    80005574:	ffffd097          	auipc	ra,0xffffd
    80005578:	aec080e7          	jalr	-1300(ra) # 80002060 <_Znwm>
    8000557c:	00050993          	mv	s3,a0
    80005580:	00090593          	mv	a1,s2
    80005584:	ffffd097          	auipc	ra,0xffffd
    80005588:	c94080e7          	jalr	-876(ra) # 80002218 <_ZN9SemaphoreC1Ej>
    8000558c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005590:	01000513          	li	a0,16
    80005594:	ffffd097          	auipc	ra,0xffffd
    80005598:	acc080e7          	jalr	-1332(ra) # 80002060 <_Znwm>
    8000559c:	00050913          	mv	s2,a0
    800055a0:	00100593          	li	a1,1
    800055a4:	ffffd097          	auipc	ra,0xffffd
    800055a8:	c74080e7          	jalr	-908(ra) # 80002218 <_ZN9SemaphoreC1Ej>
    800055ac:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800055b0:	01000513          	li	a0,16
    800055b4:	ffffd097          	auipc	ra,0xffffd
    800055b8:	aac080e7          	jalr	-1364(ra) # 80002060 <_Znwm>
    800055bc:	00050913          	mv	s2,a0
    800055c0:	00100593          	li	a1,1
    800055c4:	ffffd097          	auipc	ra,0xffffd
    800055c8:	c54080e7          	jalr	-940(ra) # 80002218 <_ZN9SemaphoreC1Ej>
    800055cc:	0324b823          	sd	s2,48(s1)
}
    800055d0:	02813083          	ld	ra,40(sp)
    800055d4:	02013403          	ld	s0,32(sp)
    800055d8:	01813483          	ld	s1,24(sp)
    800055dc:	01013903          	ld	s2,16(sp)
    800055e0:	00813983          	ld	s3,8(sp)
    800055e4:	03010113          	addi	sp,sp,48
    800055e8:	00008067          	ret
    800055ec:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800055f0:	00098513          	mv	a0,s3
    800055f4:	ffffd097          	auipc	ra,0xffffd
    800055f8:	a94080e7          	jalr	-1388(ra) # 80002088 <_ZdlPv>
    800055fc:	00048513          	mv	a0,s1
    80005600:	00007097          	auipc	ra,0x7
    80005604:	3a8080e7          	jalr	936(ra) # 8000c9a8 <_Unwind_Resume>
    80005608:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000560c:	00098513          	mv	a0,s3
    80005610:	ffffd097          	auipc	ra,0xffffd
    80005614:	a78080e7          	jalr	-1416(ra) # 80002088 <_ZdlPv>
    80005618:	00048513          	mv	a0,s1
    8000561c:	00007097          	auipc	ra,0x7
    80005620:	38c080e7          	jalr	908(ra) # 8000c9a8 <_Unwind_Resume>
    80005624:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005628:	00090513          	mv	a0,s2
    8000562c:	ffffd097          	auipc	ra,0xffffd
    80005630:	a5c080e7          	jalr	-1444(ra) # 80002088 <_ZdlPv>
    80005634:	00048513          	mv	a0,s1
    80005638:	00007097          	auipc	ra,0x7
    8000563c:	370080e7          	jalr	880(ra) # 8000c9a8 <_Unwind_Resume>
    80005640:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005644:	00090513          	mv	a0,s2
    80005648:	ffffd097          	auipc	ra,0xffffd
    8000564c:	a40080e7          	jalr	-1472(ra) # 80002088 <_ZdlPv>
    80005650:	00048513          	mv	a0,s1
    80005654:	00007097          	auipc	ra,0x7
    80005658:	354080e7          	jalr	852(ra) # 8000c9a8 <_Unwind_Resume>

000000008000565c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000565c:	fe010113          	addi	sp,sp,-32
    80005660:	00113c23          	sd	ra,24(sp)
    80005664:	00813823          	sd	s0,16(sp)
    80005668:	00913423          	sd	s1,8(sp)
    8000566c:	01213023          	sd	s2,0(sp)
    80005670:	02010413          	addi	s0,sp,32
    80005674:	00050493          	mv	s1,a0
    80005678:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000567c:	01853503          	ld	a0,24(a0)
    80005680:	ffffd097          	auipc	ra,0xffffd
    80005684:	bd4080e7          	jalr	-1068(ra) # 80002254 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005688:	0304b503          	ld	a0,48(s1)
    8000568c:	ffffd097          	auipc	ra,0xffffd
    80005690:	bc8080e7          	jalr	-1080(ra) # 80002254 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005694:	0084b783          	ld	a5,8(s1)
    80005698:	0144a703          	lw	a4,20(s1)
    8000569c:	00271713          	slli	a4,a4,0x2
    800056a0:	00e787b3          	add	a5,a5,a4
    800056a4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800056a8:	0144a783          	lw	a5,20(s1)
    800056ac:	0017879b          	addiw	a5,a5,1
    800056b0:	0004a703          	lw	a4,0(s1)
    800056b4:	02e7e7bb          	remw	a5,a5,a4
    800056b8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800056bc:	0304b503          	ld	a0,48(s1)
    800056c0:	ffffd097          	auipc	ra,0xffffd
    800056c4:	bcc080e7          	jalr	-1076(ra) # 8000228c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800056c8:	0204b503          	ld	a0,32(s1)
    800056cc:	ffffd097          	auipc	ra,0xffffd
    800056d0:	bc0080e7          	jalr	-1088(ra) # 8000228c <_ZN9Semaphore6signalEv>

}
    800056d4:	01813083          	ld	ra,24(sp)
    800056d8:	01013403          	ld	s0,16(sp)
    800056dc:	00813483          	ld	s1,8(sp)
    800056e0:	00013903          	ld	s2,0(sp)
    800056e4:	02010113          	addi	sp,sp,32
    800056e8:	00008067          	ret

00000000800056ec <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800056ec:	fe010113          	addi	sp,sp,-32
    800056f0:	00113c23          	sd	ra,24(sp)
    800056f4:	00813823          	sd	s0,16(sp)
    800056f8:	00913423          	sd	s1,8(sp)
    800056fc:	01213023          	sd	s2,0(sp)
    80005700:	02010413          	addi	s0,sp,32
    80005704:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005708:	02053503          	ld	a0,32(a0)
    8000570c:	ffffd097          	auipc	ra,0xffffd
    80005710:	b48080e7          	jalr	-1208(ra) # 80002254 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005714:	0284b503          	ld	a0,40(s1)
    80005718:	ffffd097          	auipc	ra,0xffffd
    8000571c:	b3c080e7          	jalr	-1220(ra) # 80002254 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005720:	0084b703          	ld	a4,8(s1)
    80005724:	0104a783          	lw	a5,16(s1)
    80005728:	00279693          	slli	a3,a5,0x2
    8000572c:	00d70733          	add	a4,a4,a3
    80005730:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005734:	0017879b          	addiw	a5,a5,1
    80005738:	0004a703          	lw	a4,0(s1)
    8000573c:	02e7e7bb          	remw	a5,a5,a4
    80005740:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005744:	0284b503          	ld	a0,40(s1)
    80005748:	ffffd097          	auipc	ra,0xffffd
    8000574c:	b44080e7          	jalr	-1212(ra) # 8000228c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005750:	0184b503          	ld	a0,24(s1)
    80005754:	ffffd097          	auipc	ra,0xffffd
    80005758:	b38080e7          	jalr	-1224(ra) # 8000228c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000575c:	00090513          	mv	a0,s2
    80005760:	01813083          	ld	ra,24(sp)
    80005764:	01013403          	ld	s0,16(sp)
    80005768:	00813483          	ld	s1,8(sp)
    8000576c:	00013903          	ld	s2,0(sp)
    80005770:	02010113          	addi	sp,sp,32
    80005774:	00008067          	ret

0000000080005778 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005778:	fe010113          	addi	sp,sp,-32
    8000577c:	00113c23          	sd	ra,24(sp)
    80005780:	00813823          	sd	s0,16(sp)
    80005784:	00913423          	sd	s1,8(sp)
    80005788:	01213023          	sd	s2,0(sp)
    8000578c:	02010413          	addi	s0,sp,32
    80005790:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005794:	02853503          	ld	a0,40(a0)
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	abc080e7          	jalr	-1348(ra) # 80002254 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800057a0:	0304b503          	ld	a0,48(s1)
    800057a4:	ffffd097          	auipc	ra,0xffffd
    800057a8:	ab0080e7          	jalr	-1360(ra) # 80002254 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800057ac:	0144a783          	lw	a5,20(s1)
    800057b0:	0104a903          	lw	s2,16(s1)
    800057b4:	0327ce63          	blt	a5,s2,800057f0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800057b8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800057bc:	0304b503          	ld	a0,48(s1)
    800057c0:	ffffd097          	auipc	ra,0xffffd
    800057c4:	acc080e7          	jalr	-1332(ra) # 8000228c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800057c8:	0284b503          	ld	a0,40(s1)
    800057cc:	ffffd097          	auipc	ra,0xffffd
    800057d0:	ac0080e7          	jalr	-1344(ra) # 8000228c <_ZN9Semaphore6signalEv>

    return ret;
}
    800057d4:	00090513          	mv	a0,s2
    800057d8:	01813083          	ld	ra,24(sp)
    800057dc:	01013403          	ld	s0,16(sp)
    800057e0:	00813483          	ld	s1,8(sp)
    800057e4:	00013903          	ld	s2,0(sp)
    800057e8:	02010113          	addi	sp,sp,32
    800057ec:	00008067          	ret
        ret = cap - head + tail;
    800057f0:	0004a703          	lw	a4,0(s1)
    800057f4:	4127093b          	subw	s2,a4,s2
    800057f8:	00f9093b          	addw	s2,s2,a5
    800057fc:	fc1ff06f          	j	800057bc <_ZN9BufferCPP6getCntEv+0x44>

0000000080005800 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005800:	fe010113          	addi	sp,sp,-32
    80005804:	00113c23          	sd	ra,24(sp)
    80005808:	00813823          	sd	s0,16(sp)
    8000580c:	00913423          	sd	s1,8(sp)
    80005810:	02010413          	addi	s0,sp,32
    80005814:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005818:	00a00513          	li	a0,10
    8000581c:	ffffd097          	auipc	ra,0xffffd
    80005820:	b60080e7          	jalr	-1184(ra) # 8000237c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005824:	00004517          	auipc	a0,0x4
    80005828:	a2c50513          	addi	a0,a0,-1492 # 80009250 <CONSOLE_STATUS+0x240>
    8000582c:	00000097          	auipc	ra,0x0
    80005830:	a0c080e7          	jalr	-1524(ra) # 80005238 <_Z11printStringPKc>
    while (getCnt()) {
    80005834:	00048513          	mv	a0,s1
    80005838:	00000097          	auipc	ra,0x0
    8000583c:	f40080e7          	jalr	-192(ra) # 80005778 <_ZN9BufferCPP6getCntEv>
    80005840:	02050c63          	beqz	a0,80005878 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005844:	0084b783          	ld	a5,8(s1)
    80005848:	0104a703          	lw	a4,16(s1)
    8000584c:	00271713          	slli	a4,a4,0x2
    80005850:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005854:	0007c503          	lbu	a0,0(a5)
    80005858:	ffffd097          	auipc	ra,0xffffd
    8000585c:	b24080e7          	jalr	-1244(ra) # 8000237c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005860:	0104a783          	lw	a5,16(s1)
    80005864:	0017879b          	addiw	a5,a5,1
    80005868:	0004a703          	lw	a4,0(s1)
    8000586c:	02e7e7bb          	remw	a5,a5,a4
    80005870:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005874:	fc1ff06f          	j	80005834 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005878:	02100513          	li	a0,33
    8000587c:	ffffd097          	auipc	ra,0xffffd
    80005880:	b00080e7          	jalr	-1280(ra) # 8000237c <_ZN7Console4putcEc>
    Console::putc('\n');
    80005884:	00a00513          	li	a0,10
    80005888:	ffffd097          	auipc	ra,0xffffd
    8000588c:	af4080e7          	jalr	-1292(ra) # 8000237c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005890:	0084b503          	ld	a0,8(s1)
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	a20080e7          	jalr	-1504(ra) # 800012b4 <_Z8mem_freePv>
    delete itemAvailable;
    8000589c:	0204b503          	ld	a0,32(s1)
    800058a0:	00050863          	beqz	a0,800058b0 <_ZN9BufferCPPD1Ev+0xb0>
    800058a4:	00053783          	ld	a5,0(a0)
    800058a8:	0087b783          	ld	a5,8(a5)
    800058ac:	000780e7          	jalr	a5
    delete spaceAvailable;
    800058b0:	0184b503          	ld	a0,24(s1)
    800058b4:	00050863          	beqz	a0,800058c4 <_ZN9BufferCPPD1Ev+0xc4>
    800058b8:	00053783          	ld	a5,0(a0)
    800058bc:	0087b783          	ld	a5,8(a5)
    800058c0:	000780e7          	jalr	a5
    delete mutexTail;
    800058c4:	0304b503          	ld	a0,48(s1)
    800058c8:	00050863          	beqz	a0,800058d8 <_ZN9BufferCPPD1Ev+0xd8>
    800058cc:	00053783          	ld	a5,0(a0)
    800058d0:	0087b783          	ld	a5,8(a5)
    800058d4:	000780e7          	jalr	a5
    delete mutexHead;
    800058d8:	0284b503          	ld	a0,40(s1)
    800058dc:	00050863          	beqz	a0,800058ec <_ZN9BufferCPPD1Ev+0xec>
    800058e0:	00053783          	ld	a5,0(a0)
    800058e4:	0087b783          	ld	a5,8(a5)
    800058e8:	000780e7          	jalr	a5
}
    800058ec:	01813083          	ld	ra,24(sp)
    800058f0:	01013403          	ld	s0,16(sp)
    800058f4:	00813483          	ld	s1,8(sp)
    800058f8:	02010113          	addi	sp,sp,32
    800058fc:	00008067          	ret

0000000080005900 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005900:	fe010113          	addi	sp,sp,-32
    80005904:	00113c23          	sd	ra,24(sp)
    80005908:	00813823          	sd	s0,16(sp)
    8000590c:	00913423          	sd	s1,8(sp)
    80005910:	01213023          	sd	s2,0(sp)
    80005914:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005918:	00004517          	auipc	a0,0x4
    8000591c:	95050513          	addi	a0,a0,-1712 # 80009268 <CONSOLE_STATUS+0x258>
    80005920:	00000097          	auipc	ra,0x0
    80005924:	918080e7          	jalr	-1768(ra) # 80005238 <_Z11printStringPKc>
    int test = getc() - '0';
    80005928:	ffffc097          	auipc	ra,0xffffc
    8000592c:	bac080e7          	jalr	-1108(ra) # 800014d4 <_Z4getcv>
    80005930:	0005091b          	sext.w	s2,a0
    80005934:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005938:	ffffc097          	auipc	ra,0xffffc
    8000593c:	b9c080e7          	jalr	-1124(ra) # 800014d4 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    80005940:	fcf9071b          	addiw	a4,s2,-49
    80005944:	00100793          	li	a5,1
    80005948:	04e7f063          	bgeu	a5,a4,80005988 <_Z8userMainv+0x88>
    8000594c:	00700793          	li	a5,7
    80005950:	02f48c63          	beq	s1,a5,80005988 <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80005954:	fcd9079b          	addiw	a5,s2,-51
    80005958:	00100693          	li	a3,1
    8000595c:	04f6fa63          	bgeu	a3,a5,800059b0 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005960:	fcb9091b          	addiw	s2,s2,-53
    80005964:	00100793          	li	a5,1
    80005968:	0527fe63          	bgeu	a5,s2,800059c4 <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000596c:	00600793          	li	a5,6
    80005970:	02e7f463          	bgeu	a5,a4,80005998 <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    80005974:	00004517          	auipc	a0,0x4
    80005978:	9a450513          	addi	a0,a0,-1628 # 80009318 <CONSOLE_STATUS+0x308>
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	8bc080e7          	jalr	-1860(ra) # 80005238 <_Z11printStringPKc>
    80005984:	0140006f          	j	80005998 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    80005988:	00004517          	auipc	a0,0x4
    8000598c:	90050513          	addi	a0,a0,-1792 # 80009288 <CONSOLE_STATUS+0x278>
    80005990:	00000097          	auipc	ra,0x0
    80005994:	8a8080e7          	jalr	-1880(ra) # 80005238 <_Z11printStringPKc>
    }
    80005998:	01813083          	ld	ra,24(sp)
    8000599c:	01013403          	ld	s0,16(sp)
    800059a0:	00813483          	ld	s1,8(sp)
    800059a4:	00013903          	ld	s2,0(sp)
    800059a8:	02010113          	addi	sp,sp,32
    800059ac:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    800059b0:	00004517          	auipc	a0,0x4
    800059b4:	90850513          	addi	a0,a0,-1784 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	880080e7          	jalr	-1920(ra) # 80005238 <_Z11printStringPKc>
            return;
    800059c0:	fd9ff06f          	j	80005998 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800059c4:	00004517          	auipc	a0,0x4
    800059c8:	92450513          	addi	a0,a0,-1756 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800059cc:	00000097          	auipc	ra,0x0
    800059d0:	86c080e7          	jalr	-1940(ra) # 80005238 <_Z11printStringPKc>
            return;
    800059d4:	fc5ff06f          	j	80005998 <_Z8userMainv+0x98>

00000000800059d8 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800059d8:	fe010113          	addi	sp,sp,-32
    800059dc:	00113c23          	sd	ra,24(sp)
    800059e0:	00813823          	sd	s0,16(sp)
    800059e4:	00913423          	sd	s1,8(sp)
    800059e8:	01213023          	sd	s2,0(sp)
    800059ec:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800059f0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800059f4:	00600493          	li	s1,6
    while (--i > 0) {
    800059f8:	fff4849b          	addiw	s1,s1,-1
    800059fc:	04905463          	blez	s1,80005a44 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a00:	00004517          	auipc	a0,0x4
    80005a04:	94050513          	addi	a0,a0,-1728 # 80009340 <CONSOLE_STATUS+0x330>
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	830080e7          	jalr	-2000(ra) # 80005238 <_Z11printStringPKc>
        printInt(sleep_time);
    80005a10:	00000613          	li	a2,0
    80005a14:	00a00593          	li	a1,10
    80005a18:	0009051b          	sext.w	a0,s2
    80005a1c:	00000097          	auipc	ra,0x0
    80005a20:	9cc080e7          	jalr	-1588(ra) # 800053e8 <_Z8printIntiii>
        printString(" !\n");
    80005a24:	00004517          	auipc	a0,0x4
    80005a28:	92450513          	addi	a0,a0,-1756 # 80009348 <CONSOLE_STATUS+0x338>
    80005a2c:	00000097          	auipc	ra,0x0
    80005a30:	80c080e7          	jalr	-2036(ra) # 80005238 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a34:	00090513          	mv	a0,s2
    80005a38:	ffffc097          	auipc	ra,0xffffc
    80005a3c:	a80080e7          	jalr	-1408(ra) # 800014b8 <_Z10time_sleepm>
    while (--i > 0) {
    80005a40:	fb9ff06f          	j	800059f8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a44:	00a00793          	li	a5,10
    80005a48:	02f95933          	divu	s2,s2,a5
    80005a4c:	fff90913          	addi	s2,s2,-1
    80005a50:	00006797          	auipc	a5,0x6
    80005a54:	e8878793          	addi	a5,a5,-376 # 8000b8d8 <_ZL8finished>
    80005a58:	01278933          	add	s2,a5,s2
    80005a5c:	00100793          	li	a5,1
    80005a60:	00f90023          	sb	a5,0(s2)
}
    80005a64:	01813083          	ld	ra,24(sp)
    80005a68:	01013403          	ld	s0,16(sp)
    80005a6c:	00813483          	ld	s1,8(sp)
    80005a70:	00013903          	ld	s2,0(sp)
    80005a74:	02010113          	addi	sp,sp,32
    80005a78:	00008067          	ret

0000000080005a7c <_Z12testSleepingv>:

void testSleeping() {
    80005a7c:	fc010113          	addi	sp,sp,-64
    80005a80:	02113c23          	sd	ra,56(sp)
    80005a84:	02813823          	sd	s0,48(sp)
    80005a88:	02913423          	sd	s1,40(sp)
    80005a8c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005a90:	00a00793          	li	a5,10
    80005a94:	fcf43823          	sd	a5,-48(s0)
    80005a98:	01400793          	li	a5,20
    80005a9c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005aa0:	00000493          	li	s1,0
    80005aa4:	02c0006f          	j	80005ad0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005aa8:	00349793          	slli	a5,s1,0x3
    80005aac:	fd040613          	addi	a2,s0,-48
    80005ab0:	00f60633          	add	a2,a2,a5
    80005ab4:	00000597          	auipc	a1,0x0
    80005ab8:	f2458593          	addi	a1,a1,-220 # 800059d8 <_ZL9sleepyRunPv>
    80005abc:	fc040513          	addi	a0,s0,-64
    80005ac0:	00f50533          	add	a0,a0,a5
    80005ac4:	ffffc097          	auipc	ra,0xffffc
    80005ac8:	83c080e7          	jalr	-1988(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005acc:	0014849b          	addiw	s1,s1,1
    80005ad0:	00100793          	li	a5,1
    80005ad4:	fc97dae3          	bge	a5,s1,80005aa8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005ad8:	00006797          	auipc	a5,0x6
    80005adc:	e007c783          	lbu	a5,-512(a5) # 8000b8d8 <_ZL8finished>
    80005ae0:	fe078ce3          	beqz	a5,80005ad8 <_Z12testSleepingv+0x5c>
    80005ae4:	00006797          	auipc	a5,0x6
    80005ae8:	df57c783          	lbu	a5,-523(a5) # 8000b8d9 <_ZL8finished+0x1>
    80005aec:	fe0786e3          	beqz	a5,80005ad8 <_Z12testSleepingv+0x5c>
}
    80005af0:	03813083          	ld	ra,56(sp)
    80005af4:	03013403          	ld	s0,48(sp)
    80005af8:	02813483          	ld	s1,40(sp)
    80005afc:	04010113          	addi	sp,sp,64
    80005b00:	00008067          	ret

0000000080005b04 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005b04:	fe010113          	addi	sp,sp,-32
    80005b08:	00113c23          	sd	ra,24(sp)
    80005b0c:	00813823          	sd	s0,16(sp)
    80005b10:	00913423          	sd	s1,8(sp)
    80005b14:	01213023          	sd	s2,0(sp)
    80005b18:	02010413          	addi	s0,sp,32
    80005b1c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b20:	00100793          	li	a5,1
    80005b24:	02a7f863          	bgeu	a5,a0,80005b54 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b28:	00a00793          	li	a5,10
    80005b2c:	02f577b3          	remu	a5,a0,a5
    80005b30:	02078e63          	beqz	a5,80005b6c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b34:	fff48513          	addi	a0,s1,-1
    80005b38:	00000097          	auipc	ra,0x0
    80005b3c:	fcc080e7          	jalr	-52(ra) # 80005b04 <_ZL9fibonaccim>
    80005b40:	00050913          	mv	s2,a0
    80005b44:	ffe48513          	addi	a0,s1,-2
    80005b48:	00000097          	auipc	ra,0x0
    80005b4c:	fbc080e7          	jalr	-68(ra) # 80005b04 <_ZL9fibonaccim>
    80005b50:	00a90533          	add	a0,s2,a0
}
    80005b54:	01813083          	ld	ra,24(sp)
    80005b58:	01013403          	ld	s0,16(sp)
    80005b5c:	00813483          	ld	s1,8(sp)
    80005b60:	00013903          	ld	s2,0(sp)
    80005b64:	02010113          	addi	sp,sp,32
    80005b68:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005b6c:	ffffc097          	auipc	ra,0xffffc
    80005b70:	868080e7          	jalr	-1944(ra) # 800013d4 <_Z15thread_dispatchv>
    80005b74:	fc1ff06f          	j	80005b34 <_ZL9fibonaccim+0x30>

0000000080005b78 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005b78:	fe010113          	addi	sp,sp,-32
    80005b7c:	00113c23          	sd	ra,24(sp)
    80005b80:	00813823          	sd	s0,16(sp)
    80005b84:	00913423          	sd	s1,8(sp)
    80005b88:	01213023          	sd	s2,0(sp)
    80005b8c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005b90:	00a00493          	li	s1,10
    80005b94:	0400006f          	j	80005bd4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b98:	00003517          	auipc	a0,0x3
    80005b9c:	62050513          	addi	a0,a0,1568 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005ba0:	fffff097          	auipc	ra,0xfffff
    80005ba4:	698080e7          	jalr	1688(ra) # 80005238 <_Z11printStringPKc>
    80005ba8:	00000613          	li	a2,0
    80005bac:	00a00593          	li	a1,10
    80005bb0:	00048513          	mv	a0,s1
    80005bb4:	00000097          	auipc	ra,0x0
    80005bb8:	834080e7          	jalr	-1996(ra) # 800053e8 <_Z8printIntiii>
    80005bbc:	00003517          	auipc	a0,0x3
    80005bc0:	4ec50513          	addi	a0,a0,1260 # 800090a8 <CONSOLE_STATUS+0x98>
    80005bc4:	fffff097          	auipc	ra,0xfffff
    80005bc8:	674080e7          	jalr	1652(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005bcc:	0014849b          	addiw	s1,s1,1
    80005bd0:	0ff4f493          	andi	s1,s1,255
    80005bd4:	00c00793          	li	a5,12
    80005bd8:	fc97f0e3          	bgeu	a5,s1,80005b98 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005bdc:	00003517          	auipc	a0,0x3
    80005be0:	5e450513          	addi	a0,a0,1508 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005be4:	fffff097          	auipc	ra,0xfffff
    80005be8:	654080e7          	jalr	1620(ra) # 80005238 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005bec:	00500313          	li	t1,5
    thread_dispatch();
    80005bf0:	ffffb097          	auipc	ra,0xffffb
    80005bf4:	7e4080e7          	jalr	2020(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005bf8:	01000513          	li	a0,16
    80005bfc:	00000097          	auipc	ra,0x0
    80005c00:	f08080e7          	jalr	-248(ra) # 80005b04 <_ZL9fibonaccim>
    80005c04:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c08:	00003517          	auipc	a0,0x3
    80005c0c:	5c850513          	addi	a0,a0,1480 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80005c10:	fffff097          	auipc	ra,0xfffff
    80005c14:	628080e7          	jalr	1576(ra) # 80005238 <_Z11printStringPKc>
    80005c18:	00000613          	li	a2,0
    80005c1c:	00a00593          	li	a1,10
    80005c20:	0009051b          	sext.w	a0,s2
    80005c24:	fffff097          	auipc	ra,0xfffff
    80005c28:	7c4080e7          	jalr	1988(ra) # 800053e8 <_Z8printIntiii>
    80005c2c:	00003517          	auipc	a0,0x3
    80005c30:	47c50513          	addi	a0,a0,1148 # 800090a8 <CONSOLE_STATUS+0x98>
    80005c34:	fffff097          	auipc	ra,0xfffff
    80005c38:	604080e7          	jalr	1540(ra) # 80005238 <_Z11printStringPKc>
    80005c3c:	0400006f          	j	80005c7c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c40:	00003517          	auipc	a0,0x3
    80005c44:	57850513          	addi	a0,a0,1400 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005c48:	fffff097          	auipc	ra,0xfffff
    80005c4c:	5f0080e7          	jalr	1520(ra) # 80005238 <_Z11printStringPKc>
    80005c50:	00000613          	li	a2,0
    80005c54:	00a00593          	li	a1,10
    80005c58:	00048513          	mv	a0,s1
    80005c5c:	fffff097          	auipc	ra,0xfffff
    80005c60:	78c080e7          	jalr	1932(ra) # 800053e8 <_Z8printIntiii>
    80005c64:	00003517          	auipc	a0,0x3
    80005c68:	44450513          	addi	a0,a0,1092 # 800090a8 <CONSOLE_STATUS+0x98>
    80005c6c:	fffff097          	auipc	ra,0xfffff
    80005c70:	5cc080e7          	jalr	1484(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005c74:	0014849b          	addiw	s1,s1,1
    80005c78:	0ff4f493          	andi	s1,s1,255
    80005c7c:	00f00793          	li	a5,15
    80005c80:	fc97f0e3          	bgeu	a5,s1,80005c40 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005c84:	00003517          	auipc	a0,0x3
    80005c88:	55c50513          	addi	a0,a0,1372 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80005c8c:	fffff097          	auipc	ra,0xfffff
    80005c90:	5ac080e7          	jalr	1452(ra) # 80005238 <_Z11printStringPKc>
    finishedD = true;
    80005c94:	00100793          	li	a5,1
    80005c98:	00006717          	auipc	a4,0x6
    80005c9c:	c4f70123          	sb	a5,-958(a4) # 8000b8da <_ZL9finishedD>
    thread_dispatch();
    80005ca0:	ffffb097          	auipc	ra,0xffffb
    80005ca4:	734080e7          	jalr	1844(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80005ca8:	01813083          	ld	ra,24(sp)
    80005cac:	01013403          	ld	s0,16(sp)
    80005cb0:	00813483          	ld	s1,8(sp)
    80005cb4:	00013903          	ld	s2,0(sp)
    80005cb8:	02010113          	addi	sp,sp,32
    80005cbc:	00008067          	ret

0000000080005cc0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005cc0:	fe010113          	addi	sp,sp,-32
    80005cc4:	00113c23          	sd	ra,24(sp)
    80005cc8:	00813823          	sd	s0,16(sp)
    80005ccc:	00913423          	sd	s1,8(sp)
    80005cd0:	01213023          	sd	s2,0(sp)
    80005cd4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005cd8:	00000493          	li	s1,0
    80005cdc:	0400006f          	j	80005d1c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005ce0:	00003517          	auipc	a0,0x3
    80005ce4:	4a850513          	addi	a0,a0,1192 # 80009188 <CONSOLE_STATUS+0x178>
    80005ce8:	fffff097          	auipc	ra,0xfffff
    80005cec:	550080e7          	jalr	1360(ra) # 80005238 <_Z11printStringPKc>
    80005cf0:	00000613          	li	a2,0
    80005cf4:	00a00593          	li	a1,10
    80005cf8:	00048513          	mv	a0,s1
    80005cfc:	fffff097          	auipc	ra,0xfffff
    80005d00:	6ec080e7          	jalr	1772(ra) # 800053e8 <_Z8printIntiii>
    80005d04:	00003517          	auipc	a0,0x3
    80005d08:	3a450513          	addi	a0,a0,932 # 800090a8 <CONSOLE_STATUS+0x98>
    80005d0c:	fffff097          	auipc	ra,0xfffff
    80005d10:	52c080e7          	jalr	1324(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005d14:	0014849b          	addiw	s1,s1,1
    80005d18:	0ff4f493          	andi	s1,s1,255
    80005d1c:	00200793          	li	a5,2
    80005d20:	fc97f0e3          	bgeu	a5,s1,80005ce0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d24:	00003517          	auipc	a0,0x3
    80005d28:	46c50513          	addi	a0,a0,1132 # 80009190 <CONSOLE_STATUS+0x180>
    80005d2c:	fffff097          	auipc	ra,0xfffff
    80005d30:	50c080e7          	jalr	1292(ra) # 80005238 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d34:	00700313          	li	t1,7
    thread_dispatch();
    80005d38:	ffffb097          	auipc	ra,0xffffb
    80005d3c:	69c080e7          	jalr	1692(ra) # 800013d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005d40:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005d44:	00003517          	auipc	a0,0x3
    80005d48:	45c50513          	addi	a0,a0,1116 # 800091a0 <CONSOLE_STATUS+0x190>
    80005d4c:	fffff097          	auipc	ra,0xfffff
    80005d50:	4ec080e7          	jalr	1260(ra) # 80005238 <_Z11printStringPKc>
    80005d54:	00000613          	li	a2,0
    80005d58:	00a00593          	li	a1,10
    80005d5c:	0009051b          	sext.w	a0,s2
    80005d60:	fffff097          	auipc	ra,0xfffff
    80005d64:	688080e7          	jalr	1672(ra) # 800053e8 <_Z8printIntiii>
    80005d68:	00003517          	auipc	a0,0x3
    80005d6c:	34050513          	addi	a0,a0,832 # 800090a8 <CONSOLE_STATUS+0x98>
    80005d70:	fffff097          	auipc	ra,0xfffff
    80005d74:	4c8080e7          	jalr	1224(ra) # 80005238 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005d78:	00c00513          	li	a0,12
    80005d7c:	00000097          	auipc	ra,0x0
    80005d80:	d88080e7          	jalr	-632(ra) # 80005b04 <_ZL9fibonaccim>
    80005d84:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005d88:	00003517          	auipc	a0,0x3
    80005d8c:	42050513          	addi	a0,a0,1056 # 800091a8 <CONSOLE_STATUS+0x198>
    80005d90:	fffff097          	auipc	ra,0xfffff
    80005d94:	4a8080e7          	jalr	1192(ra) # 80005238 <_Z11printStringPKc>
    80005d98:	00000613          	li	a2,0
    80005d9c:	00a00593          	li	a1,10
    80005da0:	0009051b          	sext.w	a0,s2
    80005da4:	fffff097          	auipc	ra,0xfffff
    80005da8:	644080e7          	jalr	1604(ra) # 800053e8 <_Z8printIntiii>
    80005dac:	00003517          	auipc	a0,0x3
    80005db0:	2fc50513          	addi	a0,a0,764 # 800090a8 <CONSOLE_STATUS+0x98>
    80005db4:	fffff097          	auipc	ra,0xfffff
    80005db8:	484080e7          	jalr	1156(ra) # 80005238 <_Z11printStringPKc>
    80005dbc:	0400006f          	j	80005dfc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005dc0:	00003517          	auipc	a0,0x3
    80005dc4:	3c850513          	addi	a0,a0,968 # 80009188 <CONSOLE_STATUS+0x178>
    80005dc8:	fffff097          	auipc	ra,0xfffff
    80005dcc:	470080e7          	jalr	1136(ra) # 80005238 <_Z11printStringPKc>
    80005dd0:	00000613          	li	a2,0
    80005dd4:	00a00593          	li	a1,10
    80005dd8:	00048513          	mv	a0,s1
    80005ddc:	fffff097          	auipc	ra,0xfffff
    80005de0:	60c080e7          	jalr	1548(ra) # 800053e8 <_Z8printIntiii>
    80005de4:	00003517          	auipc	a0,0x3
    80005de8:	2c450513          	addi	a0,a0,708 # 800090a8 <CONSOLE_STATUS+0x98>
    80005dec:	fffff097          	auipc	ra,0xfffff
    80005df0:	44c080e7          	jalr	1100(ra) # 80005238 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005df4:	0014849b          	addiw	s1,s1,1
    80005df8:	0ff4f493          	andi	s1,s1,255
    80005dfc:	00500793          	li	a5,5
    80005e00:	fc97f0e3          	bgeu	a5,s1,80005dc0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005e04:	00003517          	auipc	a0,0x3
    80005e08:	35c50513          	addi	a0,a0,860 # 80009160 <CONSOLE_STATUS+0x150>
    80005e0c:	fffff097          	auipc	ra,0xfffff
    80005e10:	42c080e7          	jalr	1068(ra) # 80005238 <_Z11printStringPKc>
    finishedC = true;
    80005e14:	00100793          	li	a5,1
    80005e18:	00006717          	auipc	a4,0x6
    80005e1c:	acf701a3          	sb	a5,-1341(a4) # 8000b8db <_ZL9finishedC>
    thread_dispatch();
    80005e20:	ffffb097          	auipc	ra,0xffffb
    80005e24:	5b4080e7          	jalr	1460(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80005e28:	01813083          	ld	ra,24(sp)
    80005e2c:	01013403          	ld	s0,16(sp)
    80005e30:	00813483          	ld	s1,8(sp)
    80005e34:	00013903          	ld	s2,0(sp)
    80005e38:	02010113          	addi	sp,sp,32
    80005e3c:	00008067          	ret

0000000080005e40 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005e40:	fe010113          	addi	sp,sp,-32
    80005e44:	00113c23          	sd	ra,24(sp)
    80005e48:	00813823          	sd	s0,16(sp)
    80005e4c:	00913423          	sd	s1,8(sp)
    80005e50:	01213023          	sd	s2,0(sp)
    80005e54:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005e58:	00000913          	li	s2,0
    80005e5c:	0400006f          	j	80005e9c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005e60:	ffffb097          	auipc	ra,0xffffb
    80005e64:	574080e7          	jalr	1396(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005e68:	00148493          	addi	s1,s1,1
    80005e6c:	000027b7          	lui	a5,0x2
    80005e70:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005e74:	0097ee63          	bltu	a5,s1,80005e90 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005e78:	00000713          	li	a4,0
    80005e7c:	000077b7          	lui	a5,0x7
    80005e80:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005e84:	fce7eee3          	bltu	a5,a4,80005e60 <_ZL11workerBodyBPv+0x20>
    80005e88:	00170713          	addi	a4,a4,1
    80005e8c:	ff1ff06f          	j	80005e7c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005e90:	00a00793          	li	a5,10
    80005e94:	04f90663          	beq	s2,a5,80005ee0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005e98:	00190913          	addi	s2,s2,1
    80005e9c:	00f00793          	li	a5,15
    80005ea0:	0527e463          	bltu	a5,s2,80005ee8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005ea4:	00003517          	auipc	a0,0x3
    80005ea8:	2cc50513          	addi	a0,a0,716 # 80009170 <CONSOLE_STATUS+0x160>
    80005eac:	fffff097          	auipc	ra,0xfffff
    80005eb0:	38c080e7          	jalr	908(ra) # 80005238 <_Z11printStringPKc>
    80005eb4:	00000613          	li	a2,0
    80005eb8:	00a00593          	li	a1,10
    80005ebc:	0009051b          	sext.w	a0,s2
    80005ec0:	fffff097          	auipc	ra,0xfffff
    80005ec4:	528080e7          	jalr	1320(ra) # 800053e8 <_Z8printIntiii>
    80005ec8:	00003517          	auipc	a0,0x3
    80005ecc:	1e050513          	addi	a0,a0,480 # 800090a8 <CONSOLE_STATUS+0x98>
    80005ed0:	fffff097          	auipc	ra,0xfffff
    80005ed4:	368080e7          	jalr	872(ra) # 80005238 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005ed8:	00000493          	li	s1,0
    80005edc:	f91ff06f          	j	80005e6c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005ee0:	14102ff3          	csrr	t6,sepc
    80005ee4:	fb5ff06f          	j	80005e98 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005ee8:	00003517          	auipc	a0,0x3
    80005eec:	29050513          	addi	a0,a0,656 # 80009178 <CONSOLE_STATUS+0x168>
    80005ef0:	fffff097          	auipc	ra,0xfffff
    80005ef4:	348080e7          	jalr	840(ra) # 80005238 <_Z11printStringPKc>
    finishedB = true;
    80005ef8:	00100793          	li	a5,1
    80005efc:	00006717          	auipc	a4,0x6
    80005f00:	9ef70023          	sb	a5,-1568(a4) # 8000b8dc <_ZL9finishedB>
    thread_dispatch();
    80005f04:	ffffb097          	auipc	ra,0xffffb
    80005f08:	4d0080e7          	jalr	1232(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80005f0c:	01813083          	ld	ra,24(sp)
    80005f10:	01013403          	ld	s0,16(sp)
    80005f14:	00813483          	ld	s1,8(sp)
    80005f18:	00013903          	ld	s2,0(sp)
    80005f1c:	02010113          	addi	sp,sp,32
    80005f20:	00008067          	ret

0000000080005f24 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f24:	fe010113          	addi	sp,sp,-32
    80005f28:	00113c23          	sd	ra,24(sp)
    80005f2c:	00813823          	sd	s0,16(sp)
    80005f30:	00913423          	sd	s1,8(sp)
    80005f34:	01213023          	sd	s2,0(sp)
    80005f38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f3c:	00000913          	li	s2,0
    80005f40:	0380006f          	j	80005f78 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005f44:	ffffb097          	auipc	ra,0xffffb
    80005f48:	490080e7          	jalr	1168(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f4c:	00148493          	addi	s1,s1,1
    80005f50:	000027b7          	lui	a5,0x2
    80005f54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f58:	0097ee63          	bltu	a5,s1,80005f74 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005f5c:	00000713          	li	a4,0
    80005f60:	000077b7          	lui	a5,0x7
    80005f64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005f68:	fce7eee3          	bltu	a5,a4,80005f44 <_ZL11workerBodyAPv+0x20>
    80005f6c:	00170713          	addi	a4,a4,1
    80005f70:	ff1ff06f          	j	80005f60 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005f74:	00190913          	addi	s2,s2,1
    80005f78:	00900793          	li	a5,9
    80005f7c:	0527e063          	bltu	a5,s2,80005fbc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005f80:	00003517          	auipc	a0,0x3
    80005f84:	1d850513          	addi	a0,a0,472 # 80009158 <CONSOLE_STATUS+0x148>
    80005f88:	fffff097          	auipc	ra,0xfffff
    80005f8c:	2b0080e7          	jalr	688(ra) # 80005238 <_Z11printStringPKc>
    80005f90:	00000613          	li	a2,0
    80005f94:	00a00593          	li	a1,10
    80005f98:	0009051b          	sext.w	a0,s2
    80005f9c:	fffff097          	auipc	ra,0xfffff
    80005fa0:	44c080e7          	jalr	1100(ra) # 800053e8 <_Z8printIntiii>
    80005fa4:	00003517          	auipc	a0,0x3
    80005fa8:	10450513          	addi	a0,a0,260 # 800090a8 <CONSOLE_STATUS+0x98>
    80005fac:	fffff097          	auipc	ra,0xfffff
    80005fb0:	28c080e7          	jalr	652(ra) # 80005238 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005fb4:	00000493          	li	s1,0
    80005fb8:	f99ff06f          	j	80005f50 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005fbc:	00003517          	auipc	a0,0x3
    80005fc0:	1a450513          	addi	a0,a0,420 # 80009160 <CONSOLE_STATUS+0x150>
    80005fc4:	fffff097          	auipc	ra,0xfffff
    80005fc8:	274080e7          	jalr	628(ra) # 80005238 <_Z11printStringPKc>
    finishedA = true;
    80005fcc:	00100793          	li	a5,1
    80005fd0:	00006717          	auipc	a4,0x6
    80005fd4:	90f706a3          	sb	a5,-1779(a4) # 8000b8dd <_ZL9finishedA>
}
    80005fd8:	01813083          	ld	ra,24(sp)
    80005fdc:	01013403          	ld	s0,16(sp)
    80005fe0:	00813483          	ld	s1,8(sp)
    80005fe4:	00013903          	ld	s2,0(sp)
    80005fe8:	02010113          	addi	sp,sp,32
    80005fec:	00008067          	ret

0000000080005ff0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005ff0:	fd010113          	addi	sp,sp,-48
    80005ff4:	02113423          	sd	ra,40(sp)
    80005ff8:	02813023          	sd	s0,32(sp)
    80005ffc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006000:	00000613          	li	a2,0
    80006004:	00000597          	auipc	a1,0x0
    80006008:	f2058593          	addi	a1,a1,-224 # 80005f24 <_ZL11workerBodyAPv>
    8000600c:	fd040513          	addi	a0,s0,-48
    80006010:	ffffb097          	auipc	ra,0xffffb
    80006014:	2f0080e7          	jalr	752(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006018:	00003517          	auipc	a0,0x3
    8000601c:	1d850513          	addi	a0,a0,472 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80006020:	fffff097          	auipc	ra,0xfffff
    80006024:	218080e7          	jalr	536(ra) # 80005238 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006028:	00000613          	li	a2,0
    8000602c:	00000597          	auipc	a1,0x0
    80006030:	e1458593          	addi	a1,a1,-492 # 80005e40 <_ZL11workerBodyBPv>
    80006034:	fd840513          	addi	a0,s0,-40
    80006038:	ffffb097          	auipc	ra,0xffffb
    8000603c:	2c8080e7          	jalr	712(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006040:	00003517          	auipc	a0,0x3
    80006044:	1c850513          	addi	a0,a0,456 # 80009208 <CONSOLE_STATUS+0x1f8>
    80006048:	fffff097          	auipc	ra,0xfffff
    8000604c:	1f0080e7          	jalr	496(ra) # 80005238 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006050:	00000613          	li	a2,0
    80006054:	00000597          	auipc	a1,0x0
    80006058:	c6c58593          	addi	a1,a1,-916 # 80005cc0 <_ZL11workerBodyCPv>
    8000605c:	fe040513          	addi	a0,s0,-32
    80006060:	ffffb097          	auipc	ra,0xffffb
    80006064:	2a0080e7          	jalr	672(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006068:	00003517          	auipc	a0,0x3
    8000606c:	1b850513          	addi	a0,a0,440 # 80009220 <CONSOLE_STATUS+0x210>
    80006070:	fffff097          	auipc	ra,0xfffff
    80006074:	1c8080e7          	jalr	456(ra) # 80005238 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006078:	00000613          	li	a2,0
    8000607c:	00000597          	auipc	a1,0x0
    80006080:	afc58593          	addi	a1,a1,-1284 # 80005b78 <_ZL11workerBodyDPv>
    80006084:	fe840513          	addi	a0,s0,-24
    80006088:	ffffb097          	auipc	ra,0xffffb
    8000608c:	278080e7          	jalr	632(ra) # 80001300 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006090:	00003517          	auipc	a0,0x3
    80006094:	1a850513          	addi	a0,a0,424 # 80009238 <CONSOLE_STATUS+0x228>
    80006098:	fffff097          	auipc	ra,0xfffff
    8000609c:	1a0080e7          	jalr	416(ra) # 80005238 <_Z11printStringPKc>
    800060a0:	00c0006f          	j	800060ac <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800060a4:	ffffb097          	auipc	ra,0xffffb
    800060a8:	330080e7          	jalr	816(ra) # 800013d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800060ac:	00006797          	auipc	a5,0x6
    800060b0:	8317c783          	lbu	a5,-1999(a5) # 8000b8dd <_ZL9finishedA>
    800060b4:	fe0788e3          	beqz	a5,800060a4 <_Z16System_Mode_testv+0xb4>
    800060b8:	00006797          	auipc	a5,0x6
    800060bc:	8247c783          	lbu	a5,-2012(a5) # 8000b8dc <_ZL9finishedB>
    800060c0:	fe0782e3          	beqz	a5,800060a4 <_Z16System_Mode_testv+0xb4>
    800060c4:	00006797          	auipc	a5,0x6
    800060c8:	8177c783          	lbu	a5,-2025(a5) # 8000b8db <_ZL9finishedC>
    800060cc:	fc078ce3          	beqz	a5,800060a4 <_Z16System_Mode_testv+0xb4>
    800060d0:	00006797          	auipc	a5,0x6
    800060d4:	80a7c783          	lbu	a5,-2038(a5) # 8000b8da <_ZL9finishedD>
    800060d8:	fc0786e3          	beqz	a5,800060a4 <_Z16System_Mode_testv+0xb4>
    }

}
    800060dc:	02813083          	ld	ra,40(sp)
    800060e0:	02013403          	ld	s0,32(sp)
    800060e4:	03010113          	addi	sp,sp,48
    800060e8:	00008067          	ret

00000000800060ec <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800060ec:	fe010113          	addi	sp,sp,-32
    800060f0:	00113c23          	sd	ra,24(sp)
    800060f4:	00813823          	sd	s0,16(sp)
    800060f8:	00913423          	sd	s1,8(sp)
    800060fc:	01213023          	sd	s2,0(sp)
    80006100:	02010413          	addi	s0,sp,32
    80006104:	00050493          	mv	s1,a0
    80006108:	00058913          	mv	s2,a1
    8000610c:	0015879b          	addiw	a5,a1,1
    80006110:	0007851b          	sext.w	a0,a5
    80006114:	00f4a023          	sw	a5,0(s1)
    80006118:	0004a823          	sw	zero,16(s1)
    8000611c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006120:	00251513          	slli	a0,a0,0x2
    80006124:	ffffb097          	auipc	ra,0xffffb
    80006128:	13c080e7          	jalr	316(ra) # 80001260 <_Z9mem_allocm>
    8000612c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006130:	00000593          	li	a1,0
    80006134:	02048513          	addi	a0,s1,32
    80006138:	ffffb097          	auipc	ra,0xffffb
    8000613c:	2d8080e7          	jalr	728(ra) # 80001410 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006140:	00090593          	mv	a1,s2
    80006144:	01848513          	addi	a0,s1,24
    80006148:	ffffb097          	auipc	ra,0xffffb
    8000614c:	2c8080e7          	jalr	712(ra) # 80001410 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006150:	00100593          	li	a1,1
    80006154:	02848513          	addi	a0,s1,40
    80006158:	ffffb097          	auipc	ra,0xffffb
    8000615c:	2b8080e7          	jalr	696(ra) # 80001410 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006160:	00100593          	li	a1,1
    80006164:	03048513          	addi	a0,s1,48
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	2a8080e7          	jalr	680(ra) # 80001410 <_Z8sem_openPP3Semj>
}
    80006170:	01813083          	ld	ra,24(sp)
    80006174:	01013403          	ld	s0,16(sp)
    80006178:	00813483          	ld	s1,8(sp)
    8000617c:	00013903          	ld	s2,0(sp)
    80006180:	02010113          	addi	sp,sp,32
    80006184:	00008067          	ret

0000000080006188 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006188:	fe010113          	addi	sp,sp,-32
    8000618c:	00113c23          	sd	ra,24(sp)
    80006190:	00813823          	sd	s0,16(sp)
    80006194:	00913423          	sd	s1,8(sp)
    80006198:	01213023          	sd	s2,0(sp)
    8000619c:	02010413          	addi	s0,sp,32
    800061a0:	00050493          	mv	s1,a0
    800061a4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800061a8:	01853503          	ld	a0,24(a0)
    800061ac:	ffffb097          	auipc	ra,0xffffb
    800061b0:	29c080e7          	jalr	668(ra) # 80001448 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    800061b4:	0304b503          	ld	a0,48(s1)
    800061b8:	ffffb097          	auipc	ra,0xffffb
    800061bc:	290080e7          	jalr	656(ra) # 80001448 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    800061c0:	0084b783          	ld	a5,8(s1)
    800061c4:	0144a703          	lw	a4,20(s1)
    800061c8:	00271713          	slli	a4,a4,0x2
    800061cc:	00e787b3          	add	a5,a5,a4
    800061d0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800061d4:	0144a783          	lw	a5,20(s1)
    800061d8:	0017879b          	addiw	a5,a5,1
    800061dc:	0004a703          	lw	a4,0(s1)
    800061e0:	02e7e7bb          	remw	a5,a5,a4
    800061e4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800061e8:	0304b503          	ld	a0,48(s1)
    800061ec:	ffffb097          	auipc	ra,0xffffb
    800061f0:	278080e7          	jalr	632(ra) # 80001464 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    800061f4:	0204b503          	ld	a0,32(s1)
    800061f8:	ffffb097          	auipc	ra,0xffffb
    800061fc:	26c080e7          	jalr	620(ra) # 80001464 <_Z10sem_signalP3Sem>

}
    80006200:	01813083          	ld	ra,24(sp)
    80006204:	01013403          	ld	s0,16(sp)
    80006208:	00813483          	ld	s1,8(sp)
    8000620c:	00013903          	ld	s2,0(sp)
    80006210:	02010113          	addi	sp,sp,32
    80006214:	00008067          	ret

0000000080006218 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006218:	fe010113          	addi	sp,sp,-32
    8000621c:	00113c23          	sd	ra,24(sp)
    80006220:	00813823          	sd	s0,16(sp)
    80006224:	00913423          	sd	s1,8(sp)
    80006228:	01213023          	sd	s2,0(sp)
    8000622c:	02010413          	addi	s0,sp,32
    80006230:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006234:	02053503          	ld	a0,32(a0)
    80006238:	ffffb097          	auipc	ra,0xffffb
    8000623c:	210080e7          	jalr	528(ra) # 80001448 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006240:	0284b503          	ld	a0,40(s1)
    80006244:	ffffb097          	auipc	ra,0xffffb
    80006248:	204080e7          	jalr	516(ra) # 80001448 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    8000624c:	0084b703          	ld	a4,8(s1)
    80006250:	0104a783          	lw	a5,16(s1)
    80006254:	00279693          	slli	a3,a5,0x2
    80006258:	00d70733          	add	a4,a4,a3
    8000625c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006260:	0017879b          	addiw	a5,a5,1
    80006264:	0004a703          	lw	a4,0(s1)
    80006268:	02e7e7bb          	remw	a5,a5,a4
    8000626c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006270:	0284b503          	ld	a0,40(s1)
    80006274:	ffffb097          	auipc	ra,0xffffb
    80006278:	1f0080e7          	jalr	496(ra) # 80001464 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    8000627c:	0184b503          	ld	a0,24(s1)
    80006280:	ffffb097          	auipc	ra,0xffffb
    80006284:	1e4080e7          	jalr	484(ra) # 80001464 <_Z10sem_signalP3Sem>

    return ret;
}
    80006288:	00090513          	mv	a0,s2
    8000628c:	01813083          	ld	ra,24(sp)
    80006290:	01013403          	ld	s0,16(sp)
    80006294:	00813483          	ld	s1,8(sp)
    80006298:	00013903          	ld	s2,0(sp)
    8000629c:	02010113          	addi	sp,sp,32
    800062a0:	00008067          	ret

00000000800062a4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800062a4:	fe010113          	addi	sp,sp,-32
    800062a8:	00113c23          	sd	ra,24(sp)
    800062ac:	00813823          	sd	s0,16(sp)
    800062b0:	00913423          	sd	s1,8(sp)
    800062b4:	01213023          	sd	s2,0(sp)
    800062b8:	02010413          	addi	s0,sp,32
    800062bc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800062c0:	02853503          	ld	a0,40(a0)
    800062c4:	ffffb097          	auipc	ra,0xffffb
    800062c8:	184080e7          	jalr	388(ra) # 80001448 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800062cc:	0304b503          	ld	a0,48(s1)
    800062d0:	ffffb097          	auipc	ra,0xffffb
    800062d4:	178080e7          	jalr	376(ra) # 80001448 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800062d8:	0144a783          	lw	a5,20(s1)
    800062dc:	0104a903          	lw	s2,16(s1)
    800062e0:	0327ce63          	blt	a5,s2,8000631c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800062e4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800062e8:	0304b503          	ld	a0,48(s1)
    800062ec:	ffffb097          	auipc	ra,0xffffb
    800062f0:	178080e7          	jalr	376(ra) # 80001464 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800062f4:	0284b503          	ld	a0,40(s1)
    800062f8:	ffffb097          	auipc	ra,0xffffb
    800062fc:	16c080e7          	jalr	364(ra) # 80001464 <_Z10sem_signalP3Sem>

    return ret;
}
    80006300:	00090513          	mv	a0,s2
    80006304:	01813083          	ld	ra,24(sp)
    80006308:	01013403          	ld	s0,16(sp)
    8000630c:	00813483          	ld	s1,8(sp)
    80006310:	00013903          	ld	s2,0(sp)
    80006314:	02010113          	addi	sp,sp,32
    80006318:	00008067          	ret
        ret = cap - head + tail;
    8000631c:	0004a703          	lw	a4,0(s1)
    80006320:	4127093b          	subw	s2,a4,s2
    80006324:	00f9093b          	addw	s2,s2,a5
    80006328:	fc1ff06f          	j	800062e8 <_ZN6Buffer6getCntEv+0x44>

000000008000632c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000632c:	fe010113          	addi	sp,sp,-32
    80006330:	00113c23          	sd	ra,24(sp)
    80006334:	00813823          	sd	s0,16(sp)
    80006338:	00913423          	sd	s1,8(sp)
    8000633c:	02010413          	addi	s0,sp,32
    80006340:	00050493          	mv	s1,a0
    putc('\n');
    80006344:	00a00513          	li	a0,10
    80006348:	ffffb097          	auipc	ra,0xffffb
    8000634c:	1d8080e7          	jalr	472(ra) # 80001520 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006350:	00003517          	auipc	a0,0x3
    80006354:	f0050513          	addi	a0,a0,-256 # 80009250 <CONSOLE_STATUS+0x240>
    80006358:	fffff097          	auipc	ra,0xfffff
    8000635c:	ee0080e7          	jalr	-288(ra) # 80005238 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006360:	00048513          	mv	a0,s1
    80006364:	00000097          	auipc	ra,0x0
    80006368:	f40080e7          	jalr	-192(ra) # 800062a4 <_ZN6Buffer6getCntEv>
    8000636c:	02a05c63          	blez	a0,800063a4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006370:	0084b783          	ld	a5,8(s1)
    80006374:	0104a703          	lw	a4,16(s1)
    80006378:	00271713          	slli	a4,a4,0x2
    8000637c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006380:	0007c503          	lbu	a0,0(a5)
    80006384:	ffffb097          	auipc	ra,0xffffb
    80006388:	19c080e7          	jalr	412(ra) # 80001520 <_Z4putcc>
        head = (head + 1) % cap;
    8000638c:	0104a783          	lw	a5,16(s1)
    80006390:	0017879b          	addiw	a5,a5,1
    80006394:	0004a703          	lw	a4,0(s1)
    80006398:	02e7e7bb          	remw	a5,a5,a4
    8000639c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800063a0:	fc1ff06f          	j	80006360 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800063a4:	02100513          	li	a0,33
    800063a8:	ffffb097          	auipc	ra,0xffffb
    800063ac:	178080e7          	jalr	376(ra) # 80001520 <_Z4putcc>
    putc('\n');
    800063b0:	00a00513          	li	a0,10
    800063b4:	ffffb097          	auipc	ra,0xffffb
    800063b8:	16c080e7          	jalr	364(ra) # 80001520 <_Z4putcc>
    mem_free(buffer);
    800063bc:	0084b503          	ld	a0,8(s1)
    800063c0:	ffffb097          	auipc	ra,0xffffb
    800063c4:	ef4080e7          	jalr	-268(ra) # 800012b4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800063c8:	0204b503          	ld	a0,32(s1)
    800063cc:	ffffb097          	auipc	ra,0xffffb
    800063d0:	060080e7          	jalr	96(ra) # 8000142c <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800063d4:	0184b503          	ld	a0,24(s1)
    800063d8:	ffffb097          	auipc	ra,0xffffb
    800063dc:	054080e7          	jalr	84(ra) # 8000142c <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800063e0:	0304b503          	ld	a0,48(s1)
    800063e4:	ffffb097          	auipc	ra,0xffffb
    800063e8:	048080e7          	jalr	72(ra) # 8000142c <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    800063ec:	0284b503          	ld	a0,40(s1)
    800063f0:	ffffb097          	auipc	ra,0xffffb
    800063f4:	03c080e7          	jalr	60(ra) # 8000142c <_Z9sem_closeP3Sem>
}
    800063f8:	01813083          	ld	ra,24(sp)
    800063fc:	01013403          	ld	s0,16(sp)
    80006400:	00813483          	ld	s1,8(sp)
    80006404:	02010113          	addi	sp,sp,32
    80006408:	00008067          	ret

000000008000640c <start>:
    8000640c:	ff010113          	addi	sp,sp,-16
    80006410:	00813423          	sd	s0,8(sp)
    80006414:	01010413          	addi	s0,sp,16
    80006418:	300027f3          	csrr	a5,mstatus
    8000641c:	ffffe737          	lui	a4,0xffffe
    80006420:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1cbf>
    80006424:	00e7f7b3          	and	a5,a5,a4
    80006428:	00001737          	lui	a4,0x1
    8000642c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006430:	00e7e7b3          	or	a5,a5,a4
    80006434:	30079073          	csrw	mstatus,a5
    80006438:	00000797          	auipc	a5,0x0
    8000643c:	16078793          	addi	a5,a5,352 # 80006598 <system_main>
    80006440:	34179073          	csrw	mepc,a5
    80006444:	00000793          	li	a5,0
    80006448:	18079073          	csrw	satp,a5
    8000644c:	000107b7          	lui	a5,0x10
    80006450:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006454:	30279073          	csrw	medeleg,a5
    80006458:	30379073          	csrw	mideleg,a5
    8000645c:	104027f3          	csrr	a5,sie
    80006460:	2227e793          	ori	a5,a5,546
    80006464:	10479073          	csrw	sie,a5
    80006468:	fff00793          	li	a5,-1
    8000646c:	00a7d793          	srli	a5,a5,0xa
    80006470:	3b079073          	csrw	pmpaddr0,a5
    80006474:	00f00793          	li	a5,15
    80006478:	3a079073          	csrw	pmpcfg0,a5
    8000647c:	f14027f3          	csrr	a5,mhartid
    80006480:	0200c737          	lui	a4,0x200c
    80006484:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006488:	0007869b          	sext.w	a3,a5
    8000648c:	00269713          	slli	a4,a3,0x2
    80006490:	000f4637          	lui	a2,0xf4
    80006494:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006498:	00d70733          	add	a4,a4,a3
    8000649c:	0037979b          	slliw	a5,a5,0x3
    800064a0:	020046b7          	lui	a3,0x2004
    800064a4:	00d787b3          	add	a5,a5,a3
    800064a8:	00c585b3          	add	a1,a1,a2
    800064ac:	00371693          	slli	a3,a4,0x3
    800064b0:	00005717          	auipc	a4,0x5
    800064b4:	43070713          	addi	a4,a4,1072 # 8000b8e0 <timer_scratch>
    800064b8:	00b7b023          	sd	a1,0(a5)
    800064bc:	00d70733          	add	a4,a4,a3
    800064c0:	00f73c23          	sd	a5,24(a4)
    800064c4:	02c73023          	sd	a2,32(a4)
    800064c8:	34071073          	csrw	mscratch,a4
    800064cc:	00000797          	auipc	a5,0x0
    800064d0:	6e478793          	addi	a5,a5,1764 # 80006bb0 <timervec>
    800064d4:	30579073          	csrw	mtvec,a5
    800064d8:	300027f3          	csrr	a5,mstatus
    800064dc:	0087e793          	ori	a5,a5,8
    800064e0:	30079073          	csrw	mstatus,a5
    800064e4:	304027f3          	csrr	a5,mie
    800064e8:	0807e793          	ori	a5,a5,128
    800064ec:	30479073          	csrw	mie,a5
    800064f0:	f14027f3          	csrr	a5,mhartid
    800064f4:	0007879b          	sext.w	a5,a5
    800064f8:	00078213          	mv	tp,a5
    800064fc:	30200073          	mret
    80006500:	00813403          	ld	s0,8(sp)
    80006504:	01010113          	addi	sp,sp,16
    80006508:	00008067          	ret

000000008000650c <timerinit>:
    8000650c:	ff010113          	addi	sp,sp,-16
    80006510:	00813423          	sd	s0,8(sp)
    80006514:	01010413          	addi	s0,sp,16
    80006518:	f14027f3          	csrr	a5,mhartid
    8000651c:	0200c737          	lui	a4,0x200c
    80006520:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006524:	0007869b          	sext.w	a3,a5
    80006528:	00269713          	slli	a4,a3,0x2
    8000652c:	000f4637          	lui	a2,0xf4
    80006530:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006534:	00d70733          	add	a4,a4,a3
    80006538:	0037979b          	slliw	a5,a5,0x3
    8000653c:	020046b7          	lui	a3,0x2004
    80006540:	00d787b3          	add	a5,a5,a3
    80006544:	00c585b3          	add	a1,a1,a2
    80006548:	00371693          	slli	a3,a4,0x3
    8000654c:	00005717          	auipc	a4,0x5
    80006550:	39470713          	addi	a4,a4,916 # 8000b8e0 <timer_scratch>
    80006554:	00b7b023          	sd	a1,0(a5)
    80006558:	00d70733          	add	a4,a4,a3
    8000655c:	00f73c23          	sd	a5,24(a4)
    80006560:	02c73023          	sd	a2,32(a4)
    80006564:	34071073          	csrw	mscratch,a4
    80006568:	00000797          	auipc	a5,0x0
    8000656c:	64878793          	addi	a5,a5,1608 # 80006bb0 <timervec>
    80006570:	30579073          	csrw	mtvec,a5
    80006574:	300027f3          	csrr	a5,mstatus
    80006578:	0087e793          	ori	a5,a5,8
    8000657c:	30079073          	csrw	mstatus,a5
    80006580:	304027f3          	csrr	a5,mie
    80006584:	0807e793          	ori	a5,a5,128
    80006588:	30479073          	csrw	mie,a5
    8000658c:	00813403          	ld	s0,8(sp)
    80006590:	01010113          	addi	sp,sp,16
    80006594:	00008067          	ret

0000000080006598 <system_main>:
    80006598:	fe010113          	addi	sp,sp,-32
    8000659c:	00813823          	sd	s0,16(sp)
    800065a0:	00913423          	sd	s1,8(sp)
    800065a4:	00113c23          	sd	ra,24(sp)
    800065a8:	02010413          	addi	s0,sp,32
    800065ac:	00000097          	auipc	ra,0x0
    800065b0:	0c4080e7          	jalr	196(ra) # 80006670 <cpuid>
    800065b4:	00005497          	auipc	s1,0x5
    800065b8:	24c48493          	addi	s1,s1,588 # 8000b800 <started>
    800065bc:	02050263          	beqz	a0,800065e0 <system_main+0x48>
    800065c0:	0004a783          	lw	a5,0(s1)
    800065c4:	0007879b          	sext.w	a5,a5
    800065c8:	fe078ce3          	beqz	a5,800065c0 <system_main+0x28>
    800065cc:	0ff0000f          	fence
    800065d0:	00003517          	auipc	a0,0x3
    800065d4:	db050513          	addi	a0,a0,-592 # 80009380 <CONSOLE_STATUS+0x370>
    800065d8:	00001097          	auipc	ra,0x1
    800065dc:	a74080e7          	jalr	-1420(ra) # 8000704c <panic>
    800065e0:	00001097          	auipc	ra,0x1
    800065e4:	9c8080e7          	jalr	-1592(ra) # 80006fa8 <consoleinit>
    800065e8:	00001097          	auipc	ra,0x1
    800065ec:	154080e7          	jalr	340(ra) # 8000773c <printfinit>
    800065f0:	00003517          	auipc	a0,0x3
    800065f4:	ab850513          	addi	a0,a0,-1352 # 800090a8 <CONSOLE_STATUS+0x98>
    800065f8:	00001097          	auipc	ra,0x1
    800065fc:	ab0080e7          	jalr	-1360(ra) # 800070a8 <__printf>
    80006600:	00003517          	auipc	a0,0x3
    80006604:	d5050513          	addi	a0,a0,-688 # 80009350 <CONSOLE_STATUS+0x340>
    80006608:	00001097          	auipc	ra,0x1
    8000660c:	aa0080e7          	jalr	-1376(ra) # 800070a8 <__printf>
    80006610:	00003517          	auipc	a0,0x3
    80006614:	a9850513          	addi	a0,a0,-1384 # 800090a8 <CONSOLE_STATUS+0x98>
    80006618:	00001097          	auipc	ra,0x1
    8000661c:	a90080e7          	jalr	-1392(ra) # 800070a8 <__printf>
    80006620:	00001097          	auipc	ra,0x1
    80006624:	4a8080e7          	jalr	1192(ra) # 80007ac8 <kinit>
    80006628:	00000097          	auipc	ra,0x0
    8000662c:	148080e7          	jalr	328(ra) # 80006770 <trapinit>
    80006630:	00000097          	auipc	ra,0x0
    80006634:	16c080e7          	jalr	364(ra) # 8000679c <trapinithart>
    80006638:	00000097          	auipc	ra,0x0
    8000663c:	5b8080e7          	jalr	1464(ra) # 80006bf0 <plicinit>
    80006640:	00000097          	auipc	ra,0x0
    80006644:	5d8080e7          	jalr	1496(ra) # 80006c18 <plicinithart>
    80006648:	00000097          	auipc	ra,0x0
    8000664c:	078080e7          	jalr	120(ra) # 800066c0 <userinit>
    80006650:	0ff0000f          	fence
    80006654:	00100793          	li	a5,1
    80006658:	00003517          	auipc	a0,0x3
    8000665c:	d1050513          	addi	a0,a0,-752 # 80009368 <CONSOLE_STATUS+0x358>
    80006660:	00f4a023          	sw	a5,0(s1)
    80006664:	00001097          	auipc	ra,0x1
    80006668:	a44080e7          	jalr	-1468(ra) # 800070a8 <__printf>
    8000666c:	0000006f          	j	8000666c <system_main+0xd4>

0000000080006670 <cpuid>:
    80006670:	ff010113          	addi	sp,sp,-16
    80006674:	00813423          	sd	s0,8(sp)
    80006678:	01010413          	addi	s0,sp,16
    8000667c:	00020513          	mv	a0,tp
    80006680:	00813403          	ld	s0,8(sp)
    80006684:	0005051b          	sext.w	a0,a0
    80006688:	01010113          	addi	sp,sp,16
    8000668c:	00008067          	ret

0000000080006690 <mycpu>:
    80006690:	ff010113          	addi	sp,sp,-16
    80006694:	00813423          	sd	s0,8(sp)
    80006698:	01010413          	addi	s0,sp,16
    8000669c:	00020793          	mv	a5,tp
    800066a0:	00813403          	ld	s0,8(sp)
    800066a4:	0007879b          	sext.w	a5,a5
    800066a8:	00779793          	slli	a5,a5,0x7
    800066ac:	00006517          	auipc	a0,0x6
    800066b0:	26450513          	addi	a0,a0,612 # 8000c910 <cpus>
    800066b4:	00f50533          	add	a0,a0,a5
    800066b8:	01010113          	addi	sp,sp,16
    800066bc:	00008067          	ret

00000000800066c0 <userinit>:
    800066c0:	ff010113          	addi	sp,sp,-16
    800066c4:	00813423          	sd	s0,8(sp)
    800066c8:	01010413          	addi	s0,sp,16
    800066cc:	00813403          	ld	s0,8(sp)
    800066d0:	01010113          	addi	sp,sp,16
    800066d4:	ffffb317          	auipc	t1,0xffffb
    800066d8:	46830067          	jr	1128(t1) # 80001b3c <main>

00000000800066dc <either_copyout>:
    800066dc:	ff010113          	addi	sp,sp,-16
    800066e0:	00813023          	sd	s0,0(sp)
    800066e4:	00113423          	sd	ra,8(sp)
    800066e8:	01010413          	addi	s0,sp,16
    800066ec:	02051663          	bnez	a0,80006718 <either_copyout+0x3c>
    800066f0:	00058513          	mv	a0,a1
    800066f4:	00060593          	mv	a1,a2
    800066f8:	0006861b          	sext.w	a2,a3
    800066fc:	00002097          	auipc	ra,0x2
    80006700:	c58080e7          	jalr	-936(ra) # 80008354 <__memmove>
    80006704:	00813083          	ld	ra,8(sp)
    80006708:	00013403          	ld	s0,0(sp)
    8000670c:	00000513          	li	a0,0
    80006710:	01010113          	addi	sp,sp,16
    80006714:	00008067          	ret
    80006718:	00003517          	auipc	a0,0x3
    8000671c:	c9050513          	addi	a0,a0,-880 # 800093a8 <CONSOLE_STATUS+0x398>
    80006720:	00001097          	auipc	ra,0x1
    80006724:	92c080e7          	jalr	-1748(ra) # 8000704c <panic>

0000000080006728 <either_copyin>:
    80006728:	ff010113          	addi	sp,sp,-16
    8000672c:	00813023          	sd	s0,0(sp)
    80006730:	00113423          	sd	ra,8(sp)
    80006734:	01010413          	addi	s0,sp,16
    80006738:	02059463          	bnez	a1,80006760 <either_copyin+0x38>
    8000673c:	00060593          	mv	a1,a2
    80006740:	0006861b          	sext.w	a2,a3
    80006744:	00002097          	auipc	ra,0x2
    80006748:	c10080e7          	jalr	-1008(ra) # 80008354 <__memmove>
    8000674c:	00813083          	ld	ra,8(sp)
    80006750:	00013403          	ld	s0,0(sp)
    80006754:	00000513          	li	a0,0
    80006758:	01010113          	addi	sp,sp,16
    8000675c:	00008067          	ret
    80006760:	00003517          	auipc	a0,0x3
    80006764:	c7050513          	addi	a0,a0,-912 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80006768:	00001097          	auipc	ra,0x1
    8000676c:	8e4080e7          	jalr	-1820(ra) # 8000704c <panic>

0000000080006770 <trapinit>:
    80006770:	ff010113          	addi	sp,sp,-16
    80006774:	00813423          	sd	s0,8(sp)
    80006778:	01010413          	addi	s0,sp,16
    8000677c:	00813403          	ld	s0,8(sp)
    80006780:	00003597          	auipc	a1,0x3
    80006784:	c7858593          	addi	a1,a1,-904 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80006788:	00006517          	auipc	a0,0x6
    8000678c:	20850513          	addi	a0,a0,520 # 8000c990 <tickslock>
    80006790:	01010113          	addi	sp,sp,16
    80006794:	00001317          	auipc	t1,0x1
    80006798:	5c430067          	jr	1476(t1) # 80007d58 <initlock>

000000008000679c <trapinithart>:
    8000679c:	ff010113          	addi	sp,sp,-16
    800067a0:	00813423          	sd	s0,8(sp)
    800067a4:	01010413          	addi	s0,sp,16
    800067a8:	00000797          	auipc	a5,0x0
    800067ac:	2f878793          	addi	a5,a5,760 # 80006aa0 <kernelvec>
    800067b0:	10579073          	csrw	stvec,a5
    800067b4:	00813403          	ld	s0,8(sp)
    800067b8:	01010113          	addi	sp,sp,16
    800067bc:	00008067          	ret

00000000800067c0 <usertrap>:
    800067c0:	ff010113          	addi	sp,sp,-16
    800067c4:	00813423          	sd	s0,8(sp)
    800067c8:	01010413          	addi	s0,sp,16
    800067cc:	00813403          	ld	s0,8(sp)
    800067d0:	01010113          	addi	sp,sp,16
    800067d4:	00008067          	ret

00000000800067d8 <usertrapret>:
    800067d8:	ff010113          	addi	sp,sp,-16
    800067dc:	00813423          	sd	s0,8(sp)
    800067e0:	01010413          	addi	s0,sp,16
    800067e4:	00813403          	ld	s0,8(sp)
    800067e8:	01010113          	addi	sp,sp,16
    800067ec:	00008067          	ret

00000000800067f0 <kerneltrap>:
    800067f0:	fe010113          	addi	sp,sp,-32
    800067f4:	00813823          	sd	s0,16(sp)
    800067f8:	00113c23          	sd	ra,24(sp)
    800067fc:	00913423          	sd	s1,8(sp)
    80006800:	02010413          	addi	s0,sp,32
    80006804:	142025f3          	csrr	a1,scause
    80006808:	100027f3          	csrr	a5,sstatus
    8000680c:	0027f793          	andi	a5,a5,2
    80006810:	10079c63          	bnez	a5,80006928 <kerneltrap+0x138>
    80006814:	142027f3          	csrr	a5,scause
    80006818:	0207ce63          	bltz	a5,80006854 <kerneltrap+0x64>
    8000681c:	00003517          	auipc	a0,0x3
    80006820:	c2450513          	addi	a0,a0,-988 # 80009440 <CONSOLE_STATUS+0x430>
    80006824:	00001097          	auipc	ra,0x1
    80006828:	884080e7          	jalr	-1916(ra) # 800070a8 <__printf>
    8000682c:	141025f3          	csrr	a1,sepc
    80006830:	14302673          	csrr	a2,stval
    80006834:	00003517          	auipc	a0,0x3
    80006838:	c1c50513          	addi	a0,a0,-996 # 80009450 <CONSOLE_STATUS+0x440>
    8000683c:	00001097          	auipc	ra,0x1
    80006840:	86c080e7          	jalr	-1940(ra) # 800070a8 <__printf>
    80006844:	00003517          	auipc	a0,0x3
    80006848:	c2450513          	addi	a0,a0,-988 # 80009468 <CONSOLE_STATUS+0x458>
    8000684c:	00001097          	auipc	ra,0x1
    80006850:	800080e7          	jalr	-2048(ra) # 8000704c <panic>
    80006854:	0ff7f713          	andi	a4,a5,255
    80006858:	00900693          	li	a3,9
    8000685c:	04d70063          	beq	a4,a3,8000689c <kerneltrap+0xac>
    80006860:	fff00713          	li	a4,-1
    80006864:	03f71713          	slli	a4,a4,0x3f
    80006868:	00170713          	addi	a4,a4,1
    8000686c:	fae798e3          	bne	a5,a4,8000681c <kerneltrap+0x2c>
    80006870:	00000097          	auipc	ra,0x0
    80006874:	e00080e7          	jalr	-512(ra) # 80006670 <cpuid>
    80006878:	06050663          	beqz	a0,800068e4 <kerneltrap+0xf4>
    8000687c:	144027f3          	csrr	a5,sip
    80006880:	ffd7f793          	andi	a5,a5,-3
    80006884:	14479073          	csrw	sip,a5
    80006888:	01813083          	ld	ra,24(sp)
    8000688c:	01013403          	ld	s0,16(sp)
    80006890:	00813483          	ld	s1,8(sp)
    80006894:	02010113          	addi	sp,sp,32
    80006898:	00008067          	ret
    8000689c:	00000097          	auipc	ra,0x0
    800068a0:	3c8080e7          	jalr	968(ra) # 80006c64 <plic_claim>
    800068a4:	00a00793          	li	a5,10
    800068a8:	00050493          	mv	s1,a0
    800068ac:	06f50863          	beq	a0,a5,8000691c <kerneltrap+0x12c>
    800068b0:	fc050ce3          	beqz	a0,80006888 <kerneltrap+0x98>
    800068b4:	00050593          	mv	a1,a0
    800068b8:	00003517          	auipc	a0,0x3
    800068bc:	b6850513          	addi	a0,a0,-1176 # 80009420 <CONSOLE_STATUS+0x410>
    800068c0:	00000097          	auipc	ra,0x0
    800068c4:	7e8080e7          	jalr	2024(ra) # 800070a8 <__printf>
    800068c8:	01013403          	ld	s0,16(sp)
    800068cc:	01813083          	ld	ra,24(sp)
    800068d0:	00048513          	mv	a0,s1
    800068d4:	00813483          	ld	s1,8(sp)
    800068d8:	02010113          	addi	sp,sp,32
    800068dc:	00000317          	auipc	t1,0x0
    800068e0:	3c030067          	jr	960(t1) # 80006c9c <plic_complete>
    800068e4:	00006517          	auipc	a0,0x6
    800068e8:	0ac50513          	addi	a0,a0,172 # 8000c990 <tickslock>
    800068ec:	00001097          	auipc	ra,0x1
    800068f0:	490080e7          	jalr	1168(ra) # 80007d7c <acquire>
    800068f4:	00005717          	auipc	a4,0x5
    800068f8:	f1070713          	addi	a4,a4,-240 # 8000b804 <ticks>
    800068fc:	00072783          	lw	a5,0(a4)
    80006900:	00006517          	auipc	a0,0x6
    80006904:	09050513          	addi	a0,a0,144 # 8000c990 <tickslock>
    80006908:	0017879b          	addiw	a5,a5,1
    8000690c:	00f72023          	sw	a5,0(a4)
    80006910:	00001097          	auipc	ra,0x1
    80006914:	538080e7          	jalr	1336(ra) # 80007e48 <release>
    80006918:	f65ff06f          	j	8000687c <kerneltrap+0x8c>
    8000691c:	00001097          	auipc	ra,0x1
    80006920:	094080e7          	jalr	148(ra) # 800079b0 <uartintr>
    80006924:	fa5ff06f          	j	800068c8 <kerneltrap+0xd8>
    80006928:	00003517          	auipc	a0,0x3
    8000692c:	ad850513          	addi	a0,a0,-1320 # 80009400 <CONSOLE_STATUS+0x3f0>
    80006930:	00000097          	auipc	ra,0x0
    80006934:	71c080e7          	jalr	1820(ra) # 8000704c <panic>

0000000080006938 <clockintr>:
    80006938:	fe010113          	addi	sp,sp,-32
    8000693c:	00813823          	sd	s0,16(sp)
    80006940:	00913423          	sd	s1,8(sp)
    80006944:	00113c23          	sd	ra,24(sp)
    80006948:	02010413          	addi	s0,sp,32
    8000694c:	00006497          	auipc	s1,0x6
    80006950:	04448493          	addi	s1,s1,68 # 8000c990 <tickslock>
    80006954:	00048513          	mv	a0,s1
    80006958:	00001097          	auipc	ra,0x1
    8000695c:	424080e7          	jalr	1060(ra) # 80007d7c <acquire>
    80006960:	00005717          	auipc	a4,0x5
    80006964:	ea470713          	addi	a4,a4,-348 # 8000b804 <ticks>
    80006968:	00072783          	lw	a5,0(a4)
    8000696c:	01013403          	ld	s0,16(sp)
    80006970:	01813083          	ld	ra,24(sp)
    80006974:	00048513          	mv	a0,s1
    80006978:	0017879b          	addiw	a5,a5,1
    8000697c:	00813483          	ld	s1,8(sp)
    80006980:	00f72023          	sw	a5,0(a4)
    80006984:	02010113          	addi	sp,sp,32
    80006988:	00001317          	auipc	t1,0x1
    8000698c:	4c030067          	jr	1216(t1) # 80007e48 <release>

0000000080006990 <devintr>:
    80006990:	142027f3          	csrr	a5,scause
    80006994:	00000513          	li	a0,0
    80006998:	0007c463          	bltz	a5,800069a0 <devintr+0x10>
    8000699c:	00008067          	ret
    800069a0:	fe010113          	addi	sp,sp,-32
    800069a4:	00813823          	sd	s0,16(sp)
    800069a8:	00113c23          	sd	ra,24(sp)
    800069ac:	00913423          	sd	s1,8(sp)
    800069b0:	02010413          	addi	s0,sp,32
    800069b4:	0ff7f713          	andi	a4,a5,255
    800069b8:	00900693          	li	a3,9
    800069bc:	04d70c63          	beq	a4,a3,80006a14 <devintr+0x84>
    800069c0:	fff00713          	li	a4,-1
    800069c4:	03f71713          	slli	a4,a4,0x3f
    800069c8:	00170713          	addi	a4,a4,1
    800069cc:	00e78c63          	beq	a5,a4,800069e4 <devintr+0x54>
    800069d0:	01813083          	ld	ra,24(sp)
    800069d4:	01013403          	ld	s0,16(sp)
    800069d8:	00813483          	ld	s1,8(sp)
    800069dc:	02010113          	addi	sp,sp,32
    800069e0:	00008067          	ret
    800069e4:	00000097          	auipc	ra,0x0
    800069e8:	c8c080e7          	jalr	-884(ra) # 80006670 <cpuid>
    800069ec:	06050663          	beqz	a0,80006a58 <devintr+0xc8>
    800069f0:	144027f3          	csrr	a5,sip
    800069f4:	ffd7f793          	andi	a5,a5,-3
    800069f8:	14479073          	csrw	sip,a5
    800069fc:	01813083          	ld	ra,24(sp)
    80006a00:	01013403          	ld	s0,16(sp)
    80006a04:	00813483          	ld	s1,8(sp)
    80006a08:	00200513          	li	a0,2
    80006a0c:	02010113          	addi	sp,sp,32
    80006a10:	00008067          	ret
    80006a14:	00000097          	auipc	ra,0x0
    80006a18:	250080e7          	jalr	592(ra) # 80006c64 <plic_claim>
    80006a1c:	00a00793          	li	a5,10
    80006a20:	00050493          	mv	s1,a0
    80006a24:	06f50663          	beq	a0,a5,80006a90 <devintr+0x100>
    80006a28:	00100513          	li	a0,1
    80006a2c:	fa0482e3          	beqz	s1,800069d0 <devintr+0x40>
    80006a30:	00048593          	mv	a1,s1
    80006a34:	00003517          	auipc	a0,0x3
    80006a38:	9ec50513          	addi	a0,a0,-1556 # 80009420 <CONSOLE_STATUS+0x410>
    80006a3c:	00000097          	auipc	ra,0x0
    80006a40:	66c080e7          	jalr	1644(ra) # 800070a8 <__printf>
    80006a44:	00048513          	mv	a0,s1
    80006a48:	00000097          	auipc	ra,0x0
    80006a4c:	254080e7          	jalr	596(ra) # 80006c9c <plic_complete>
    80006a50:	00100513          	li	a0,1
    80006a54:	f7dff06f          	j	800069d0 <devintr+0x40>
    80006a58:	00006517          	auipc	a0,0x6
    80006a5c:	f3850513          	addi	a0,a0,-200 # 8000c990 <tickslock>
    80006a60:	00001097          	auipc	ra,0x1
    80006a64:	31c080e7          	jalr	796(ra) # 80007d7c <acquire>
    80006a68:	00005717          	auipc	a4,0x5
    80006a6c:	d9c70713          	addi	a4,a4,-612 # 8000b804 <ticks>
    80006a70:	00072783          	lw	a5,0(a4)
    80006a74:	00006517          	auipc	a0,0x6
    80006a78:	f1c50513          	addi	a0,a0,-228 # 8000c990 <tickslock>
    80006a7c:	0017879b          	addiw	a5,a5,1
    80006a80:	00f72023          	sw	a5,0(a4)
    80006a84:	00001097          	auipc	ra,0x1
    80006a88:	3c4080e7          	jalr	964(ra) # 80007e48 <release>
    80006a8c:	f65ff06f          	j	800069f0 <devintr+0x60>
    80006a90:	00001097          	auipc	ra,0x1
    80006a94:	f20080e7          	jalr	-224(ra) # 800079b0 <uartintr>
    80006a98:	fadff06f          	j	80006a44 <devintr+0xb4>
    80006a9c:	0000                	unimp
	...

0000000080006aa0 <kernelvec>:
    80006aa0:	f0010113          	addi	sp,sp,-256
    80006aa4:	00113023          	sd	ra,0(sp)
    80006aa8:	00213423          	sd	sp,8(sp)
    80006aac:	00313823          	sd	gp,16(sp)
    80006ab0:	00413c23          	sd	tp,24(sp)
    80006ab4:	02513023          	sd	t0,32(sp)
    80006ab8:	02613423          	sd	t1,40(sp)
    80006abc:	02713823          	sd	t2,48(sp)
    80006ac0:	02813c23          	sd	s0,56(sp)
    80006ac4:	04913023          	sd	s1,64(sp)
    80006ac8:	04a13423          	sd	a0,72(sp)
    80006acc:	04b13823          	sd	a1,80(sp)
    80006ad0:	04c13c23          	sd	a2,88(sp)
    80006ad4:	06d13023          	sd	a3,96(sp)
    80006ad8:	06e13423          	sd	a4,104(sp)
    80006adc:	06f13823          	sd	a5,112(sp)
    80006ae0:	07013c23          	sd	a6,120(sp)
    80006ae4:	09113023          	sd	a7,128(sp)
    80006ae8:	09213423          	sd	s2,136(sp)
    80006aec:	09313823          	sd	s3,144(sp)
    80006af0:	09413c23          	sd	s4,152(sp)
    80006af4:	0b513023          	sd	s5,160(sp)
    80006af8:	0b613423          	sd	s6,168(sp)
    80006afc:	0b713823          	sd	s7,176(sp)
    80006b00:	0b813c23          	sd	s8,184(sp)
    80006b04:	0d913023          	sd	s9,192(sp)
    80006b08:	0da13423          	sd	s10,200(sp)
    80006b0c:	0db13823          	sd	s11,208(sp)
    80006b10:	0dc13c23          	sd	t3,216(sp)
    80006b14:	0fd13023          	sd	t4,224(sp)
    80006b18:	0fe13423          	sd	t5,232(sp)
    80006b1c:	0ff13823          	sd	t6,240(sp)
    80006b20:	cd1ff0ef          	jal	ra,800067f0 <kerneltrap>
    80006b24:	00013083          	ld	ra,0(sp)
    80006b28:	00813103          	ld	sp,8(sp)
    80006b2c:	01013183          	ld	gp,16(sp)
    80006b30:	02013283          	ld	t0,32(sp)
    80006b34:	02813303          	ld	t1,40(sp)
    80006b38:	03013383          	ld	t2,48(sp)
    80006b3c:	03813403          	ld	s0,56(sp)
    80006b40:	04013483          	ld	s1,64(sp)
    80006b44:	04813503          	ld	a0,72(sp)
    80006b48:	05013583          	ld	a1,80(sp)
    80006b4c:	05813603          	ld	a2,88(sp)
    80006b50:	06013683          	ld	a3,96(sp)
    80006b54:	06813703          	ld	a4,104(sp)
    80006b58:	07013783          	ld	a5,112(sp)
    80006b5c:	07813803          	ld	a6,120(sp)
    80006b60:	08013883          	ld	a7,128(sp)
    80006b64:	08813903          	ld	s2,136(sp)
    80006b68:	09013983          	ld	s3,144(sp)
    80006b6c:	09813a03          	ld	s4,152(sp)
    80006b70:	0a013a83          	ld	s5,160(sp)
    80006b74:	0a813b03          	ld	s6,168(sp)
    80006b78:	0b013b83          	ld	s7,176(sp)
    80006b7c:	0b813c03          	ld	s8,184(sp)
    80006b80:	0c013c83          	ld	s9,192(sp)
    80006b84:	0c813d03          	ld	s10,200(sp)
    80006b88:	0d013d83          	ld	s11,208(sp)
    80006b8c:	0d813e03          	ld	t3,216(sp)
    80006b90:	0e013e83          	ld	t4,224(sp)
    80006b94:	0e813f03          	ld	t5,232(sp)
    80006b98:	0f013f83          	ld	t6,240(sp)
    80006b9c:	10010113          	addi	sp,sp,256
    80006ba0:	10200073          	sret
    80006ba4:	00000013          	nop
    80006ba8:	00000013          	nop
    80006bac:	00000013          	nop

0000000080006bb0 <timervec>:
    80006bb0:	34051573          	csrrw	a0,mscratch,a0
    80006bb4:	00b53023          	sd	a1,0(a0)
    80006bb8:	00c53423          	sd	a2,8(a0)
    80006bbc:	00d53823          	sd	a3,16(a0)
    80006bc0:	01853583          	ld	a1,24(a0)
    80006bc4:	02053603          	ld	a2,32(a0)
    80006bc8:	0005b683          	ld	a3,0(a1)
    80006bcc:	00c686b3          	add	a3,a3,a2
    80006bd0:	00d5b023          	sd	a3,0(a1)
    80006bd4:	00200593          	li	a1,2
    80006bd8:	14459073          	csrw	sip,a1
    80006bdc:	01053683          	ld	a3,16(a0)
    80006be0:	00853603          	ld	a2,8(a0)
    80006be4:	00053583          	ld	a1,0(a0)
    80006be8:	34051573          	csrrw	a0,mscratch,a0
    80006bec:	30200073          	mret

0000000080006bf0 <plicinit>:
    80006bf0:	ff010113          	addi	sp,sp,-16
    80006bf4:	00813423          	sd	s0,8(sp)
    80006bf8:	01010413          	addi	s0,sp,16
    80006bfc:	00813403          	ld	s0,8(sp)
    80006c00:	0c0007b7          	lui	a5,0xc000
    80006c04:	00100713          	li	a4,1
    80006c08:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c0c:	00e7a223          	sw	a4,4(a5)
    80006c10:	01010113          	addi	sp,sp,16
    80006c14:	00008067          	ret

0000000080006c18 <plicinithart>:
    80006c18:	ff010113          	addi	sp,sp,-16
    80006c1c:	00813023          	sd	s0,0(sp)
    80006c20:	00113423          	sd	ra,8(sp)
    80006c24:	01010413          	addi	s0,sp,16
    80006c28:	00000097          	auipc	ra,0x0
    80006c2c:	a48080e7          	jalr	-1464(ra) # 80006670 <cpuid>
    80006c30:	0085171b          	slliw	a4,a0,0x8
    80006c34:	0c0027b7          	lui	a5,0xc002
    80006c38:	00e787b3          	add	a5,a5,a4
    80006c3c:	40200713          	li	a4,1026
    80006c40:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c44:	00813083          	ld	ra,8(sp)
    80006c48:	00013403          	ld	s0,0(sp)
    80006c4c:	00d5151b          	slliw	a0,a0,0xd
    80006c50:	0c2017b7          	lui	a5,0xc201
    80006c54:	00a78533          	add	a0,a5,a0
    80006c58:	00052023          	sw	zero,0(a0)
    80006c5c:	01010113          	addi	sp,sp,16
    80006c60:	00008067          	ret

0000000080006c64 <plic_claim>:
    80006c64:	ff010113          	addi	sp,sp,-16
    80006c68:	00813023          	sd	s0,0(sp)
    80006c6c:	00113423          	sd	ra,8(sp)
    80006c70:	01010413          	addi	s0,sp,16
    80006c74:	00000097          	auipc	ra,0x0
    80006c78:	9fc080e7          	jalr	-1540(ra) # 80006670 <cpuid>
    80006c7c:	00813083          	ld	ra,8(sp)
    80006c80:	00013403          	ld	s0,0(sp)
    80006c84:	00d5151b          	slliw	a0,a0,0xd
    80006c88:	0c2017b7          	lui	a5,0xc201
    80006c8c:	00a78533          	add	a0,a5,a0
    80006c90:	00452503          	lw	a0,4(a0)
    80006c94:	01010113          	addi	sp,sp,16
    80006c98:	00008067          	ret

0000000080006c9c <plic_complete>:
    80006c9c:	fe010113          	addi	sp,sp,-32
    80006ca0:	00813823          	sd	s0,16(sp)
    80006ca4:	00913423          	sd	s1,8(sp)
    80006ca8:	00113c23          	sd	ra,24(sp)
    80006cac:	02010413          	addi	s0,sp,32
    80006cb0:	00050493          	mv	s1,a0
    80006cb4:	00000097          	auipc	ra,0x0
    80006cb8:	9bc080e7          	jalr	-1604(ra) # 80006670 <cpuid>
    80006cbc:	01813083          	ld	ra,24(sp)
    80006cc0:	01013403          	ld	s0,16(sp)
    80006cc4:	00d5179b          	slliw	a5,a0,0xd
    80006cc8:	0c201737          	lui	a4,0xc201
    80006ccc:	00f707b3          	add	a5,a4,a5
    80006cd0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006cd4:	00813483          	ld	s1,8(sp)
    80006cd8:	02010113          	addi	sp,sp,32
    80006cdc:	00008067          	ret

0000000080006ce0 <consolewrite>:
    80006ce0:	fb010113          	addi	sp,sp,-80
    80006ce4:	04813023          	sd	s0,64(sp)
    80006ce8:	04113423          	sd	ra,72(sp)
    80006cec:	02913c23          	sd	s1,56(sp)
    80006cf0:	03213823          	sd	s2,48(sp)
    80006cf4:	03313423          	sd	s3,40(sp)
    80006cf8:	03413023          	sd	s4,32(sp)
    80006cfc:	01513c23          	sd	s5,24(sp)
    80006d00:	05010413          	addi	s0,sp,80
    80006d04:	06c05c63          	blez	a2,80006d7c <consolewrite+0x9c>
    80006d08:	00060993          	mv	s3,a2
    80006d0c:	00050a13          	mv	s4,a0
    80006d10:	00058493          	mv	s1,a1
    80006d14:	00000913          	li	s2,0
    80006d18:	fff00a93          	li	s5,-1
    80006d1c:	01c0006f          	j	80006d38 <consolewrite+0x58>
    80006d20:	fbf44503          	lbu	a0,-65(s0)
    80006d24:	0019091b          	addiw	s2,s2,1
    80006d28:	00148493          	addi	s1,s1,1
    80006d2c:	00001097          	auipc	ra,0x1
    80006d30:	a9c080e7          	jalr	-1380(ra) # 800077c8 <uartputc>
    80006d34:	03298063          	beq	s3,s2,80006d54 <consolewrite+0x74>
    80006d38:	00048613          	mv	a2,s1
    80006d3c:	00100693          	li	a3,1
    80006d40:	000a0593          	mv	a1,s4
    80006d44:	fbf40513          	addi	a0,s0,-65
    80006d48:	00000097          	auipc	ra,0x0
    80006d4c:	9e0080e7          	jalr	-1568(ra) # 80006728 <either_copyin>
    80006d50:	fd5518e3          	bne	a0,s5,80006d20 <consolewrite+0x40>
    80006d54:	04813083          	ld	ra,72(sp)
    80006d58:	04013403          	ld	s0,64(sp)
    80006d5c:	03813483          	ld	s1,56(sp)
    80006d60:	02813983          	ld	s3,40(sp)
    80006d64:	02013a03          	ld	s4,32(sp)
    80006d68:	01813a83          	ld	s5,24(sp)
    80006d6c:	00090513          	mv	a0,s2
    80006d70:	03013903          	ld	s2,48(sp)
    80006d74:	05010113          	addi	sp,sp,80
    80006d78:	00008067          	ret
    80006d7c:	00000913          	li	s2,0
    80006d80:	fd5ff06f          	j	80006d54 <consolewrite+0x74>

0000000080006d84 <consoleread>:
    80006d84:	f9010113          	addi	sp,sp,-112
    80006d88:	06813023          	sd	s0,96(sp)
    80006d8c:	04913c23          	sd	s1,88(sp)
    80006d90:	05213823          	sd	s2,80(sp)
    80006d94:	05313423          	sd	s3,72(sp)
    80006d98:	05413023          	sd	s4,64(sp)
    80006d9c:	03513c23          	sd	s5,56(sp)
    80006da0:	03613823          	sd	s6,48(sp)
    80006da4:	03713423          	sd	s7,40(sp)
    80006da8:	03813023          	sd	s8,32(sp)
    80006dac:	06113423          	sd	ra,104(sp)
    80006db0:	01913c23          	sd	s9,24(sp)
    80006db4:	07010413          	addi	s0,sp,112
    80006db8:	00060b93          	mv	s7,a2
    80006dbc:	00050913          	mv	s2,a0
    80006dc0:	00058c13          	mv	s8,a1
    80006dc4:	00060b1b          	sext.w	s6,a2
    80006dc8:	00006497          	auipc	s1,0x6
    80006dcc:	bf048493          	addi	s1,s1,-1040 # 8000c9b8 <cons>
    80006dd0:	00400993          	li	s3,4
    80006dd4:	fff00a13          	li	s4,-1
    80006dd8:	00a00a93          	li	s5,10
    80006ddc:	05705e63          	blez	s7,80006e38 <consoleread+0xb4>
    80006de0:	09c4a703          	lw	a4,156(s1)
    80006de4:	0984a783          	lw	a5,152(s1)
    80006de8:	0007071b          	sext.w	a4,a4
    80006dec:	08e78463          	beq	a5,a4,80006e74 <consoleread+0xf0>
    80006df0:	07f7f713          	andi	a4,a5,127
    80006df4:	00e48733          	add	a4,s1,a4
    80006df8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006dfc:	0017869b          	addiw	a3,a5,1
    80006e00:	08d4ac23          	sw	a3,152(s1)
    80006e04:	00070c9b          	sext.w	s9,a4
    80006e08:	0b370663          	beq	a4,s3,80006eb4 <consoleread+0x130>
    80006e0c:	00100693          	li	a3,1
    80006e10:	f9f40613          	addi	a2,s0,-97
    80006e14:	000c0593          	mv	a1,s8
    80006e18:	00090513          	mv	a0,s2
    80006e1c:	f8e40fa3          	sb	a4,-97(s0)
    80006e20:	00000097          	auipc	ra,0x0
    80006e24:	8bc080e7          	jalr	-1860(ra) # 800066dc <either_copyout>
    80006e28:	01450863          	beq	a0,s4,80006e38 <consoleread+0xb4>
    80006e2c:	001c0c13          	addi	s8,s8,1
    80006e30:	fffb8b9b          	addiw	s7,s7,-1
    80006e34:	fb5c94e3          	bne	s9,s5,80006ddc <consoleread+0x58>
    80006e38:	000b851b          	sext.w	a0,s7
    80006e3c:	06813083          	ld	ra,104(sp)
    80006e40:	06013403          	ld	s0,96(sp)
    80006e44:	05813483          	ld	s1,88(sp)
    80006e48:	05013903          	ld	s2,80(sp)
    80006e4c:	04813983          	ld	s3,72(sp)
    80006e50:	04013a03          	ld	s4,64(sp)
    80006e54:	03813a83          	ld	s5,56(sp)
    80006e58:	02813b83          	ld	s7,40(sp)
    80006e5c:	02013c03          	ld	s8,32(sp)
    80006e60:	01813c83          	ld	s9,24(sp)
    80006e64:	40ab053b          	subw	a0,s6,a0
    80006e68:	03013b03          	ld	s6,48(sp)
    80006e6c:	07010113          	addi	sp,sp,112
    80006e70:	00008067          	ret
    80006e74:	00001097          	auipc	ra,0x1
    80006e78:	1d8080e7          	jalr	472(ra) # 8000804c <push_on>
    80006e7c:	0984a703          	lw	a4,152(s1)
    80006e80:	09c4a783          	lw	a5,156(s1)
    80006e84:	0007879b          	sext.w	a5,a5
    80006e88:	fef70ce3          	beq	a4,a5,80006e80 <consoleread+0xfc>
    80006e8c:	00001097          	auipc	ra,0x1
    80006e90:	234080e7          	jalr	564(ra) # 800080c0 <pop_on>
    80006e94:	0984a783          	lw	a5,152(s1)
    80006e98:	07f7f713          	andi	a4,a5,127
    80006e9c:	00e48733          	add	a4,s1,a4
    80006ea0:	01874703          	lbu	a4,24(a4)
    80006ea4:	0017869b          	addiw	a3,a5,1
    80006ea8:	08d4ac23          	sw	a3,152(s1)
    80006eac:	00070c9b          	sext.w	s9,a4
    80006eb0:	f5371ee3          	bne	a4,s3,80006e0c <consoleread+0x88>
    80006eb4:	000b851b          	sext.w	a0,s7
    80006eb8:	f96bf2e3          	bgeu	s7,s6,80006e3c <consoleread+0xb8>
    80006ebc:	08f4ac23          	sw	a5,152(s1)
    80006ec0:	f7dff06f          	j	80006e3c <consoleread+0xb8>

0000000080006ec4 <consputc>:
    80006ec4:	10000793          	li	a5,256
    80006ec8:	00f50663          	beq	a0,a5,80006ed4 <consputc+0x10>
    80006ecc:	00001317          	auipc	t1,0x1
    80006ed0:	9f430067          	jr	-1548(t1) # 800078c0 <uartputc_sync>
    80006ed4:	ff010113          	addi	sp,sp,-16
    80006ed8:	00113423          	sd	ra,8(sp)
    80006edc:	00813023          	sd	s0,0(sp)
    80006ee0:	01010413          	addi	s0,sp,16
    80006ee4:	00800513          	li	a0,8
    80006ee8:	00001097          	auipc	ra,0x1
    80006eec:	9d8080e7          	jalr	-1576(ra) # 800078c0 <uartputc_sync>
    80006ef0:	02000513          	li	a0,32
    80006ef4:	00001097          	auipc	ra,0x1
    80006ef8:	9cc080e7          	jalr	-1588(ra) # 800078c0 <uartputc_sync>
    80006efc:	00013403          	ld	s0,0(sp)
    80006f00:	00813083          	ld	ra,8(sp)
    80006f04:	00800513          	li	a0,8
    80006f08:	01010113          	addi	sp,sp,16
    80006f0c:	00001317          	auipc	t1,0x1
    80006f10:	9b430067          	jr	-1612(t1) # 800078c0 <uartputc_sync>

0000000080006f14 <consoleintr>:
    80006f14:	fe010113          	addi	sp,sp,-32
    80006f18:	00813823          	sd	s0,16(sp)
    80006f1c:	00913423          	sd	s1,8(sp)
    80006f20:	01213023          	sd	s2,0(sp)
    80006f24:	00113c23          	sd	ra,24(sp)
    80006f28:	02010413          	addi	s0,sp,32
    80006f2c:	00006917          	auipc	s2,0x6
    80006f30:	a8c90913          	addi	s2,s2,-1396 # 8000c9b8 <cons>
    80006f34:	00050493          	mv	s1,a0
    80006f38:	00090513          	mv	a0,s2
    80006f3c:	00001097          	auipc	ra,0x1
    80006f40:	e40080e7          	jalr	-448(ra) # 80007d7c <acquire>
    80006f44:	02048c63          	beqz	s1,80006f7c <consoleintr+0x68>
    80006f48:	0a092783          	lw	a5,160(s2)
    80006f4c:	09892703          	lw	a4,152(s2)
    80006f50:	07f00693          	li	a3,127
    80006f54:	40e7873b          	subw	a4,a5,a4
    80006f58:	02e6e263          	bltu	a3,a4,80006f7c <consoleintr+0x68>
    80006f5c:	00d00713          	li	a4,13
    80006f60:	04e48063          	beq	s1,a4,80006fa0 <consoleintr+0x8c>
    80006f64:	07f7f713          	andi	a4,a5,127
    80006f68:	00e90733          	add	a4,s2,a4
    80006f6c:	0017879b          	addiw	a5,a5,1
    80006f70:	0af92023          	sw	a5,160(s2)
    80006f74:	00970c23          	sb	s1,24(a4)
    80006f78:	08f92e23          	sw	a5,156(s2)
    80006f7c:	01013403          	ld	s0,16(sp)
    80006f80:	01813083          	ld	ra,24(sp)
    80006f84:	00813483          	ld	s1,8(sp)
    80006f88:	00013903          	ld	s2,0(sp)
    80006f8c:	00006517          	auipc	a0,0x6
    80006f90:	a2c50513          	addi	a0,a0,-1492 # 8000c9b8 <cons>
    80006f94:	02010113          	addi	sp,sp,32
    80006f98:	00001317          	auipc	t1,0x1
    80006f9c:	eb030067          	jr	-336(t1) # 80007e48 <release>
    80006fa0:	00a00493          	li	s1,10
    80006fa4:	fc1ff06f          	j	80006f64 <consoleintr+0x50>

0000000080006fa8 <consoleinit>:
    80006fa8:	fe010113          	addi	sp,sp,-32
    80006fac:	00113c23          	sd	ra,24(sp)
    80006fb0:	00813823          	sd	s0,16(sp)
    80006fb4:	00913423          	sd	s1,8(sp)
    80006fb8:	02010413          	addi	s0,sp,32
    80006fbc:	00006497          	auipc	s1,0x6
    80006fc0:	9fc48493          	addi	s1,s1,-1540 # 8000c9b8 <cons>
    80006fc4:	00048513          	mv	a0,s1
    80006fc8:	00002597          	auipc	a1,0x2
    80006fcc:	4b058593          	addi	a1,a1,1200 # 80009478 <CONSOLE_STATUS+0x468>
    80006fd0:	00001097          	auipc	ra,0x1
    80006fd4:	d88080e7          	jalr	-632(ra) # 80007d58 <initlock>
    80006fd8:	00000097          	auipc	ra,0x0
    80006fdc:	7ac080e7          	jalr	1964(ra) # 80007784 <uartinit>
    80006fe0:	01813083          	ld	ra,24(sp)
    80006fe4:	01013403          	ld	s0,16(sp)
    80006fe8:	00000797          	auipc	a5,0x0
    80006fec:	d9c78793          	addi	a5,a5,-612 # 80006d84 <consoleread>
    80006ff0:	0af4bc23          	sd	a5,184(s1)
    80006ff4:	00000797          	auipc	a5,0x0
    80006ff8:	cec78793          	addi	a5,a5,-788 # 80006ce0 <consolewrite>
    80006ffc:	0cf4b023          	sd	a5,192(s1)
    80007000:	00813483          	ld	s1,8(sp)
    80007004:	02010113          	addi	sp,sp,32
    80007008:	00008067          	ret

000000008000700c <console_read>:
    8000700c:	ff010113          	addi	sp,sp,-16
    80007010:	00813423          	sd	s0,8(sp)
    80007014:	01010413          	addi	s0,sp,16
    80007018:	00813403          	ld	s0,8(sp)
    8000701c:	00006317          	auipc	t1,0x6
    80007020:	a5433303          	ld	t1,-1452(t1) # 8000ca70 <devsw+0x10>
    80007024:	01010113          	addi	sp,sp,16
    80007028:	00030067          	jr	t1

000000008000702c <console_write>:
    8000702c:	ff010113          	addi	sp,sp,-16
    80007030:	00813423          	sd	s0,8(sp)
    80007034:	01010413          	addi	s0,sp,16
    80007038:	00813403          	ld	s0,8(sp)
    8000703c:	00006317          	auipc	t1,0x6
    80007040:	a3c33303          	ld	t1,-1476(t1) # 8000ca78 <devsw+0x18>
    80007044:	01010113          	addi	sp,sp,16
    80007048:	00030067          	jr	t1

000000008000704c <panic>:
    8000704c:	fe010113          	addi	sp,sp,-32
    80007050:	00113c23          	sd	ra,24(sp)
    80007054:	00813823          	sd	s0,16(sp)
    80007058:	00913423          	sd	s1,8(sp)
    8000705c:	02010413          	addi	s0,sp,32
    80007060:	00050493          	mv	s1,a0
    80007064:	00002517          	auipc	a0,0x2
    80007068:	41c50513          	addi	a0,a0,1052 # 80009480 <CONSOLE_STATUS+0x470>
    8000706c:	00006797          	auipc	a5,0x6
    80007070:	aa07a623          	sw	zero,-1364(a5) # 8000cb18 <pr+0x18>
    80007074:	00000097          	auipc	ra,0x0
    80007078:	034080e7          	jalr	52(ra) # 800070a8 <__printf>
    8000707c:	00048513          	mv	a0,s1
    80007080:	00000097          	auipc	ra,0x0
    80007084:	028080e7          	jalr	40(ra) # 800070a8 <__printf>
    80007088:	00002517          	auipc	a0,0x2
    8000708c:	02050513          	addi	a0,a0,32 # 800090a8 <CONSOLE_STATUS+0x98>
    80007090:	00000097          	auipc	ra,0x0
    80007094:	018080e7          	jalr	24(ra) # 800070a8 <__printf>
    80007098:	00100793          	li	a5,1
    8000709c:	00004717          	auipc	a4,0x4
    800070a0:	76f72623          	sw	a5,1900(a4) # 8000b808 <panicked>
    800070a4:	0000006f          	j	800070a4 <panic+0x58>

00000000800070a8 <__printf>:
    800070a8:	f3010113          	addi	sp,sp,-208
    800070ac:	08813023          	sd	s0,128(sp)
    800070b0:	07313423          	sd	s3,104(sp)
    800070b4:	09010413          	addi	s0,sp,144
    800070b8:	05813023          	sd	s8,64(sp)
    800070bc:	08113423          	sd	ra,136(sp)
    800070c0:	06913c23          	sd	s1,120(sp)
    800070c4:	07213823          	sd	s2,112(sp)
    800070c8:	07413023          	sd	s4,96(sp)
    800070cc:	05513c23          	sd	s5,88(sp)
    800070d0:	05613823          	sd	s6,80(sp)
    800070d4:	05713423          	sd	s7,72(sp)
    800070d8:	03913c23          	sd	s9,56(sp)
    800070dc:	03a13823          	sd	s10,48(sp)
    800070e0:	03b13423          	sd	s11,40(sp)
    800070e4:	00006317          	auipc	t1,0x6
    800070e8:	a1c30313          	addi	t1,t1,-1508 # 8000cb00 <pr>
    800070ec:	01832c03          	lw	s8,24(t1)
    800070f0:	00b43423          	sd	a1,8(s0)
    800070f4:	00c43823          	sd	a2,16(s0)
    800070f8:	00d43c23          	sd	a3,24(s0)
    800070fc:	02e43023          	sd	a4,32(s0)
    80007100:	02f43423          	sd	a5,40(s0)
    80007104:	03043823          	sd	a6,48(s0)
    80007108:	03143c23          	sd	a7,56(s0)
    8000710c:	00050993          	mv	s3,a0
    80007110:	4a0c1663          	bnez	s8,800075bc <__printf+0x514>
    80007114:	60098c63          	beqz	s3,8000772c <__printf+0x684>
    80007118:	0009c503          	lbu	a0,0(s3)
    8000711c:	00840793          	addi	a5,s0,8
    80007120:	f6f43c23          	sd	a5,-136(s0)
    80007124:	00000493          	li	s1,0
    80007128:	22050063          	beqz	a0,80007348 <__printf+0x2a0>
    8000712c:	00002a37          	lui	s4,0x2
    80007130:	00018ab7          	lui	s5,0x18
    80007134:	000f4b37          	lui	s6,0xf4
    80007138:	00989bb7          	lui	s7,0x989
    8000713c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007140:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007144:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007148:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000714c:	00148c9b          	addiw	s9,s1,1
    80007150:	02500793          	li	a5,37
    80007154:	01998933          	add	s2,s3,s9
    80007158:	38f51263          	bne	a0,a5,800074dc <__printf+0x434>
    8000715c:	00094783          	lbu	a5,0(s2)
    80007160:	00078c9b          	sext.w	s9,a5
    80007164:	1e078263          	beqz	a5,80007348 <__printf+0x2a0>
    80007168:	0024849b          	addiw	s1,s1,2
    8000716c:	07000713          	li	a4,112
    80007170:	00998933          	add	s2,s3,s1
    80007174:	38e78a63          	beq	a5,a4,80007508 <__printf+0x460>
    80007178:	20f76863          	bltu	a4,a5,80007388 <__printf+0x2e0>
    8000717c:	42a78863          	beq	a5,a0,800075ac <__printf+0x504>
    80007180:	06400713          	li	a4,100
    80007184:	40e79663          	bne	a5,a4,80007590 <__printf+0x4e8>
    80007188:	f7843783          	ld	a5,-136(s0)
    8000718c:	0007a603          	lw	a2,0(a5)
    80007190:	00878793          	addi	a5,a5,8
    80007194:	f6f43c23          	sd	a5,-136(s0)
    80007198:	42064a63          	bltz	a2,800075cc <__printf+0x524>
    8000719c:	00a00713          	li	a4,10
    800071a0:	02e677bb          	remuw	a5,a2,a4
    800071a4:	00002d97          	auipc	s11,0x2
    800071a8:	304d8d93          	addi	s11,s11,772 # 800094a8 <digits>
    800071ac:	00900593          	li	a1,9
    800071b0:	0006051b          	sext.w	a0,a2
    800071b4:	00000c93          	li	s9,0
    800071b8:	02079793          	slli	a5,a5,0x20
    800071bc:	0207d793          	srli	a5,a5,0x20
    800071c0:	00fd87b3          	add	a5,s11,a5
    800071c4:	0007c783          	lbu	a5,0(a5)
    800071c8:	02e656bb          	divuw	a3,a2,a4
    800071cc:	f8f40023          	sb	a5,-128(s0)
    800071d0:	14c5d863          	bge	a1,a2,80007320 <__printf+0x278>
    800071d4:	06300593          	li	a1,99
    800071d8:	00100c93          	li	s9,1
    800071dc:	02e6f7bb          	remuw	a5,a3,a4
    800071e0:	02079793          	slli	a5,a5,0x20
    800071e4:	0207d793          	srli	a5,a5,0x20
    800071e8:	00fd87b3          	add	a5,s11,a5
    800071ec:	0007c783          	lbu	a5,0(a5)
    800071f0:	02e6d73b          	divuw	a4,a3,a4
    800071f4:	f8f400a3          	sb	a5,-127(s0)
    800071f8:	12a5f463          	bgeu	a1,a0,80007320 <__printf+0x278>
    800071fc:	00a00693          	li	a3,10
    80007200:	00900593          	li	a1,9
    80007204:	02d777bb          	remuw	a5,a4,a3
    80007208:	02079793          	slli	a5,a5,0x20
    8000720c:	0207d793          	srli	a5,a5,0x20
    80007210:	00fd87b3          	add	a5,s11,a5
    80007214:	0007c503          	lbu	a0,0(a5)
    80007218:	02d757bb          	divuw	a5,a4,a3
    8000721c:	f8a40123          	sb	a0,-126(s0)
    80007220:	48e5f263          	bgeu	a1,a4,800076a4 <__printf+0x5fc>
    80007224:	06300513          	li	a0,99
    80007228:	02d7f5bb          	remuw	a1,a5,a3
    8000722c:	02059593          	slli	a1,a1,0x20
    80007230:	0205d593          	srli	a1,a1,0x20
    80007234:	00bd85b3          	add	a1,s11,a1
    80007238:	0005c583          	lbu	a1,0(a1)
    8000723c:	02d7d7bb          	divuw	a5,a5,a3
    80007240:	f8b401a3          	sb	a1,-125(s0)
    80007244:	48e57263          	bgeu	a0,a4,800076c8 <__printf+0x620>
    80007248:	3e700513          	li	a0,999
    8000724c:	02d7f5bb          	remuw	a1,a5,a3
    80007250:	02059593          	slli	a1,a1,0x20
    80007254:	0205d593          	srli	a1,a1,0x20
    80007258:	00bd85b3          	add	a1,s11,a1
    8000725c:	0005c583          	lbu	a1,0(a1)
    80007260:	02d7d7bb          	divuw	a5,a5,a3
    80007264:	f8b40223          	sb	a1,-124(s0)
    80007268:	46e57663          	bgeu	a0,a4,800076d4 <__printf+0x62c>
    8000726c:	02d7f5bb          	remuw	a1,a5,a3
    80007270:	02059593          	slli	a1,a1,0x20
    80007274:	0205d593          	srli	a1,a1,0x20
    80007278:	00bd85b3          	add	a1,s11,a1
    8000727c:	0005c583          	lbu	a1,0(a1)
    80007280:	02d7d7bb          	divuw	a5,a5,a3
    80007284:	f8b402a3          	sb	a1,-123(s0)
    80007288:	46ea7863          	bgeu	s4,a4,800076f8 <__printf+0x650>
    8000728c:	02d7f5bb          	remuw	a1,a5,a3
    80007290:	02059593          	slli	a1,a1,0x20
    80007294:	0205d593          	srli	a1,a1,0x20
    80007298:	00bd85b3          	add	a1,s11,a1
    8000729c:	0005c583          	lbu	a1,0(a1)
    800072a0:	02d7d7bb          	divuw	a5,a5,a3
    800072a4:	f8b40323          	sb	a1,-122(s0)
    800072a8:	3eeaf863          	bgeu	s5,a4,80007698 <__printf+0x5f0>
    800072ac:	02d7f5bb          	remuw	a1,a5,a3
    800072b0:	02059593          	slli	a1,a1,0x20
    800072b4:	0205d593          	srli	a1,a1,0x20
    800072b8:	00bd85b3          	add	a1,s11,a1
    800072bc:	0005c583          	lbu	a1,0(a1)
    800072c0:	02d7d7bb          	divuw	a5,a5,a3
    800072c4:	f8b403a3          	sb	a1,-121(s0)
    800072c8:	42eb7e63          	bgeu	s6,a4,80007704 <__printf+0x65c>
    800072cc:	02d7f5bb          	remuw	a1,a5,a3
    800072d0:	02059593          	slli	a1,a1,0x20
    800072d4:	0205d593          	srli	a1,a1,0x20
    800072d8:	00bd85b3          	add	a1,s11,a1
    800072dc:	0005c583          	lbu	a1,0(a1)
    800072e0:	02d7d7bb          	divuw	a5,a5,a3
    800072e4:	f8b40423          	sb	a1,-120(s0)
    800072e8:	42ebfc63          	bgeu	s7,a4,80007720 <__printf+0x678>
    800072ec:	02079793          	slli	a5,a5,0x20
    800072f0:	0207d793          	srli	a5,a5,0x20
    800072f4:	00fd8db3          	add	s11,s11,a5
    800072f8:	000dc703          	lbu	a4,0(s11)
    800072fc:	00a00793          	li	a5,10
    80007300:	00900c93          	li	s9,9
    80007304:	f8e404a3          	sb	a4,-119(s0)
    80007308:	00065c63          	bgez	a2,80007320 <__printf+0x278>
    8000730c:	f9040713          	addi	a4,s0,-112
    80007310:	00f70733          	add	a4,a4,a5
    80007314:	02d00693          	li	a3,45
    80007318:	fed70823          	sb	a3,-16(a4)
    8000731c:	00078c93          	mv	s9,a5
    80007320:	f8040793          	addi	a5,s0,-128
    80007324:	01978cb3          	add	s9,a5,s9
    80007328:	f7f40d13          	addi	s10,s0,-129
    8000732c:	000cc503          	lbu	a0,0(s9)
    80007330:	fffc8c93          	addi	s9,s9,-1
    80007334:	00000097          	auipc	ra,0x0
    80007338:	b90080e7          	jalr	-1136(ra) # 80006ec4 <consputc>
    8000733c:	ffac98e3          	bne	s9,s10,8000732c <__printf+0x284>
    80007340:	00094503          	lbu	a0,0(s2)
    80007344:	e00514e3          	bnez	a0,8000714c <__printf+0xa4>
    80007348:	1a0c1663          	bnez	s8,800074f4 <__printf+0x44c>
    8000734c:	08813083          	ld	ra,136(sp)
    80007350:	08013403          	ld	s0,128(sp)
    80007354:	07813483          	ld	s1,120(sp)
    80007358:	07013903          	ld	s2,112(sp)
    8000735c:	06813983          	ld	s3,104(sp)
    80007360:	06013a03          	ld	s4,96(sp)
    80007364:	05813a83          	ld	s5,88(sp)
    80007368:	05013b03          	ld	s6,80(sp)
    8000736c:	04813b83          	ld	s7,72(sp)
    80007370:	04013c03          	ld	s8,64(sp)
    80007374:	03813c83          	ld	s9,56(sp)
    80007378:	03013d03          	ld	s10,48(sp)
    8000737c:	02813d83          	ld	s11,40(sp)
    80007380:	0d010113          	addi	sp,sp,208
    80007384:	00008067          	ret
    80007388:	07300713          	li	a4,115
    8000738c:	1ce78a63          	beq	a5,a4,80007560 <__printf+0x4b8>
    80007390:	07800713          	li	a4,120
    80007394:	1ee79e63          	bne	a5,a4,80007590 <__printf+0x4e8>
    80007398:	f7843783          	ld	a5,-136(s0)
    8000739c:	0007a703          	lw	a4,0(a5)
    800073a0:	00878793          	addi	a5,a5,8
    800073a4:	f6f43c23          	sd	a5,-136(s0)
    800073a8:	28074263          	bltz	a4,8000762c <__printf+0x584>
    800073ac:	00002d97          	auipc	s11,0x2
    800073b0:	0fcd8d93          	addi	s11,s11,252 # 800094a8 <digits>
    800073b4:	00f77793          	andi	a5,a4,15
    800073b8:	00fd87b3          	add	a5,s11,a5
    800073bc:	0007c683          	lbu	a3,0(a5)
    800073c0:	00f00613          	li	a2,15
    800073c4:	0007079b          	sext.w	a5,a4
    800073c8:	f8d40023          	sb	a3,-128(s0)
    800073cc:	0047559b          	srliw	a1,a4,0x4
    800073d0:	0047569b          	srliw	a3,a4,0x4
    800073d4:	00000c93          	li	s9,0
    800073d8:	0ee65063          	bge	a2,a4,800074b8 <__printf+0x410>
    800073dc:	00f6f693          	andi	a3,a3,15
    800073e0:	00dd86b3          	add	a3,s11,a3
    800073e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800073e8:	0087d79b          	srliw	a5,a5,0x8
    800073ec:	00100c93          	li	s9,1
    800073f0:	f8d400a3          	sb	a3,-127(s0)
    800073f4:	0cb67263          	bgeu	a2,a1,800074b8 <__printf+0x410>
    800073f8:	00f7f693          	andi	a3,a5,15
    800073fc:	00dd86b3          	add	a3,s11,a3
    80007400:	0006c583          	lbu	a1,0(a3)
    80007404:	00f00613          	li	a2,15
    80007408:	0047d69b          	srliw	a3,a5,0x4
    8000740c:	f8b40123          	sb	a1,-126(s0)
    80007410:	0047d593          	srli	a1,a5,0x4
    80007414:	28f67e63          	bgeu	a2,a5,800076b0 <__printf+0x608>
    80007418:	00f6f693          	andi	a3,a3,15
    8000741c:	00dd86b3          	add	a3,s11,a3
    80007420:	0006c503          	lbu	a0,0(a3)
    80007424:	0087d813          	srli	a6,a5,0x8
    80007428:	0087d69b          	srliw	a3,a5,0x8
    8000742c:	f8a401a3          	sb	a0,-125(s0)
    80007430:	28b67663          	bgeu	a2,a1,800076bc <__printf+0x614>
    80007434:	00f6f693          	andi	a3,a3,15
    80007438:	00dd86b3          	add	a3,s11,a3
    8000743c:	0006c583          	lbu	a1,0(a3)
    80007440:	00c7d513          	srli	a0,a5,0xc
    80007444:	00c7d69b          	srliw	a3,a5,0xc
    80007448:	f8b40223          	sb	a1,-124(s0)
    8000744c:	29067a63          	bgeu	a2,a6,800076e0 <__printf+0x638>
    80007450:	00f6f693          	andi	a3,a3,15
    80007454:	00dd86b3          	add	a3,s11,a3
    80007458:	0006c583          	lbu	a1,0(a3)
    8000745c:	0107d813          	srli	a6,a5,0x10
    80007460:	0107d69b          	srliw	a3,a5,0x10
    80007464:	f8b402a3          	sb	a1,-123(s0)
    80007468:	28a67263          	bgeu	a2,a0,800076ec <__printf+0x644>
    8000746c:	00f6f693          	andi	a3,a3,15
    80007470:	00dd86b3          	add	a3,s11,a3
    80007474:	0006c683          	lbu	a3,0(a3)
    80007478:	0147d79b          	srliw	a5,a5,0x14
    8000747c:	f8d40323          	sb	a3,-122(s0)
    80007480:	21067663          	bgeu	a2,a6,8000768c <__printf+0x5e4>
    80007484:	02079793          	slli	a5,a5,0x20
    80007488:	0207d793          	srli	a5,a5,0x20
    8000748c:	00fd8db3          	add	s11,s11,a5
    80007490:	000dc683          	lbu	a3,0(s11)
    80007494:	00800793          	li	a5,8
    80007498:	00700c93          	li	s9,7
    8000749c:	f8d403a3          	sb	a3,-121(s0)
    800074a0:	00075c63          	bgez	a4,800074b8 <__printf+0x410>
    800074a4:	f9040713          	addi	a4,s0,-112
    800074a8:	00f70733          	add	a4,a4,a5
    800074ac:	02d00693          	li	a3,45
    800074b0:	fed70823          	sb	a3,-16(a4)
    800074b4:	00078c93          	mv	s9,a5
    800074b8:	f8040793          	addi	a5,s0,-128
    800074bc:	01978cb3          	add	s9,a5,s9
    800074c0:	f7f40d13          	addi	s10,s0,-129
    800074c4:	000cc503          	lbu	a0,0(s9)
    800074c8:	fffc8c93          	addi	s9,s9,-1
    800074cc:	00000097          	auipc	ra,0x0
    800074d0:	9f8080e7          	jalr	-1544(ra) # 80006ec4 <consputc>
    800074d4:	ff9d18e3          	bne	s10,s9,800074c4 <__printf+0x41c>
    800074d8:	0100006f          	j	800074e8 <__printf+0x440>
    800074dc:	00000097          	auipc	ra,0x0
    800074e0:	9e8080e7          	jalr	-1560(ra) # 80006ec4 <consputc>
    800074e4:	000c8493          	mv	s1,s9
    800074e8:	00094503          	lbu	a0,0(s2)
    800074ec:	c60510e3          	bnez	a0,8000714c <__printf+0xa4>
    800074f0:	e40c0ee3          	beqz	s8,8000734c <__printf+0x2a4>
    800074f4:	00005517          	auipc	a0,0x5
    800074f8:	60c50513          	addi	a0,a0,1548 # 8000cb00 <pr>
    800074fc:	00001097          	auipc	ra,0x1
    80007500:	94c080e7          	jalr	-1716(ra) # 80007e48 <release>
    80007504:	e49ff06f          	j	8000734c <__printf+0x2a4>
    80007508:	f7843783          	ld	a5,-136(s0)
    8000750c:	03000513          	li	a0,48
    80007510:	01000d13          	li	s10,16
    80007514:	00878713          	addi	a4,a5,8
    80007518:	0007bc83          	ld	s9,0(a5)
    8000751c:	f6e43c23          	sd	a4,-136(s0)
    80007520:	00000097          	auipc	ra,0x0
    80007524:	9a4080e7          	jalr	-1628(ra) # 80006ec4 <consputc>
    80007528:	07800513          	li	a0,120
    8000752c:	00000097          	auipc	ra,0x0
    80007530:	998080e7          	jalr	-1640(ra) # 80006ec4 <consputc>
    80007534:	00002d97          	auipc	s11,0x2
    80007538:	f74d8d93          	addi	s11,s11,-140 # 800094a8 <digits>
    8000753c:	03ccd793          	srli	a5,s9,0x3c
    80007540:	00fd87b3          	add	a5,s11,a5
    80007544:	0007c503          	lbu	a0,0(a5)
    80007548:	fffd0d1b          	addiw	s10,s10,-1
    8000754c:	004c9c93          	slli	s9,s9,0x4
    80007550:	00000097          	auipc	ra,0x0
    80007554:	974080e7          	jalr	-1676(ra) # 80006ec4 <consputc>
    80007558:	fe0d12e3          	bnez	s10,8000753c <__printf+0x494>
    8000755c:	f8dff06f          	j	800074e8 <__printf+0x440>
    80007560:	f7843783          	ld	a5,-136(s0)
    80007564:	0007bc83          	ld	s9,0(a5)
    80007568:	00878793          	addi	a5,a5,8
    8000756c:	f6f43c23          	sd	a5,-136(s0)
    80007570:	000c9a63          	bnez	s9,80007584 <__printf+0x4dc>
    80007574:	1080006f          	j	8000767c <__printf+0x5d4>
    80007578:	001c8c93          	addi	s9,s9,1
    8000757c:	00000097          	auipc	ra,0x0
    80007580:	948080e7          	jalr	-1720(ra) # 80006ec4 <consputc>
    80007584:	000cc503          	lbu	a0,0(s9)
    80007588:	fe0518e3          	bnez	a0,80007578 <__printf+0x4d0>
    8000758c:	f5dff06f          	j	800074e8 <__printf+0x440>
    80007590:	02500513          	li	a0,37
    80007594:	00000097          	auipc	ra,0x0
    80007598:	930080e7          	jalr	-1744(ra) # 80006ec4 <consputc>
    8000759c:	000c8513          	mv	a0,s9
    800075a0:	00000097          	auipc	ra,0x0
    800075a4:	924080e7          	jalr	-1756(ra) # 80006ec4 <consputc>
    800075a8:	f41ff06f          	j	800074e8 <__printf+0x440>
    800075ac:	02500513          	li	a0,37
    800075b0:	00000097          	auipc	ra,0x0
    800075b4:	914080e7          	jalr	-1772(ra) # 80006ec4 <consputc>
    800075b8:	f31ff06f          	j	800074e8 <__printf+0x440>
    800075bc:	00030513          	mv	a0,t1
    800075c0:	00000097          	auipc	ra,0x0
    800075c4:	7bc080e7          	jalr	1980(ra) # 80007d7c <acquire>
    800075c8:	b4dff06f          	j	80007114 <__printf+0x6c>
    800075cc:	40c0053b          	negw	a0,a2
    800075d0:	00a00713          	li	a4,10
    800075d4:	02e576bb          	remuw	a3,a0,a4
    800075d8:	00002d97          	auipc	s11,0x2
    800075dc:	ed0d8d93          	addi	s11,s11,-304 # 800094a8 <digits>
    800075e0:	ff700593          	li	a1,-9
    800075e4:	02069693          	slli	a3,a3,0x20
    800075e8:	0206d693          	srli	a3,a3,0x20
    800075ec:	00dd86b3          	add	a3,s11,a3
    800075f0:	0006c683          	lbu	a3,0(a3)
    800075f4:	02e557bb          	divuw	a5,a0,a4
    800075f8:	f8d40023          	sb	a3,-128(s0)
    800075fc:	10b65e63          	bge	a2,a1,80007718 <__printf+0x670>
    80007600:	06300593          	li	a1,99
    80007604:	02e7f6bb          	remuw	a3,a5,a4
    80007608:	02069693          	slli	a3,a3,0x20
    8000760c:	0206d693          	srli	a3,a3,0x20
    80007610:	00dd86b3          	add	a3,s11,a3
    80007614:	0006c683          	lbu	a3,0(a3)
    80007618:	02e7d73b          	divuw	a4,a5,a4
    8000761c:	00200793          	li	a5,2
    80007620:	f8d400a3          	sb	a3,-127(s0)
    80007624:	bca5ece3          	bltu	a1,a0,800071fc <__printf+0x154>
    80007628:	ce5ff06f          	j	8000730c <__printf+0x264>
    8000762c:	40e007bb          	negw	a5,a4
    80007630:	00002d97          	auipc	s11,0x2
    80007634:	e78d8d93          	addi	s11,s11,-392 # 800094a8 <digits>
    80007638:	00f7f693          	andi	a3,a5,15
    8000763c:	00dd86b3          	add	a3,s11,a3
    80007640:	0006c583          	lbu	a1,0(a3)
    80007644:	ff100613          	li	a2,-15
    80007648:	0047d69b          	srliw	a3,a5,0x4
    8000764c:	f8b40023          	sb	a1,-128(s0)
    80007650:	0047d59b          	srliw	a1,a5,0x4
    80007654:	0ac75e63          	bge	a4,a2,80007710 <__printf+0x668>
    80007658:	00f6f693          	andi	a3,a3,15
    8000765c:	00dd86b3          	add	a3,s11,a3
    80007660:	0006c603          	lbu	a2,0(a3)
    80007664:	00f00693          	li	a3,15
    80007668:	0087d79b          	srliw	a5,a5,0x8
    8000766c:	f8c400a3          	sb	a2,-127(s0)
    80007670:	d8b6e4e3          	bltu	a3,a1,800073f8 <__printf+0x350>
    80007674:	00200793          	li	a5,2
    80007678:	e2dff06f          	j	800074a4 <__printf+0x3fc>
    8000767c:	00002c97          	auipc	s9,0x2
    80007680:	e0cc8c93          	addi	s9,s9,-500 # 80009488 <CONSOLE_STATUS+0x478>
    80007684:	02800513          	li	a0,40
    80007688:	ef1ff06f          	j	80007578 <__printf+0x4d0>
    8000768c:	00700793          	li	a5,7
    80007690:	00600c93          	li	s9,6
    80007694:	e0dff06f          	j	800074a0 <__printf+0x3f8>
    80007698:	00700793          	li	a5,7
    8000769c:	00600c93          	li	s9,6
    800076a0:	c69ff06f          	j	80007308 <__printf+0x260>
    800076a4:	00300793          	li	a5,3
    800076a8:	00200c93          	li	s9,2
    800076ac:	c5dff06f          	j	80007308 <__printf+0x260>
    800076b0:	00300793          	li	a5,3
    800076b4:	00200c93          	li	s9,2
    800076b8:	de9ff06f          	j	800074a0 <__printf+0x3f8>
    800076bc:	00400793          	li	a5,4
    800076c0:	00300c93          	li	s9,3
    800076c4:	dddff06f          	j	800074a0 <__printf+0x3f8>
    800076c8:	00400793          	li	a5,4
    800076cc:	00300c93          	li	s9,3
    800076d0:	c39ff06f          	j	80007308 <__printf+0x260>
    800076d4:	00500793          	li	a5,5
    800076d8:	00400c93          	li	s9,4
    800076dc:	c2dff06f          	j	80007308 <__printf+0x260>
    800076e0:	00500793          	li	a5,5
    800076e4:	00400c93          	li	s9,4
    800076e8:	db9ff06f          	j	800074a0 <__printf+0x3f8>
    800076ec:	00600793          	li	a5,6
    800076f0:	00500c93          	li	s9,5
    800076f4:	dadff06f          	j	800074a0 <__printf+0x3f8>
    800076f8:	00600793          	li	a5,6
    800076fc:	00500c93          	li	s9,5
    80007700:	c09ff06f          	j	80007308 <__printf+0x260>
    80007704:	00800793          	li	a5,8
    80007708:	00700c93          	li	s9,7
    8000770c:	bfdff06f          	j	80007308 <__printf+0x260>
    80007710:	00100793          	li	a5,1
    80007714:	d91ff06f          	j	800074a4 <__printf+0x3fc>
    80007718:	00100793          	li	a5,1
    8000771c:	bf1ff06f          	j	8000730c <__printf+0x264>
    80007720:	00900793          	li	a5,9
    80007724:	00800c93          	li	s9,8
    80007728:	be1ff06f          	j	80007308 <__printf+0x260>
    8000772c:	00002517          	auipc	a0,0x2
    80007730:	d6450513          	addi	a0,a0,-668 # 80009490 <CONSOLE_STATUS+0x480>
    80007734:	00000097          	auipc	ra,0x0
    80007738:	918080e7          	jalr	-1768(ra) # 8000704c <panic>

000000008000773c <printfinit>:
    8000773c:	fe010113          	addi	sp,sp,-32
    80007740:	00813823          	sd	s0,16(sp)
    80007744:	00913423          	sd	s1,8(sp)
    80007748:	00113c23          	sd	ra,24(sp)
    8000774c:	02010413          	addi	s0,sp,32
    80007750:	00005497          	auipc	s1,0x5
    80007754:	3b048493          	addi	s1,s1,944 # 8000cb00 <pr>
    80007758:	00048513          	mv	a0,s1
    8000775c:	00002597          	auipc	a1,0x2
    80007760:	d4458593          	addi	a1,a1,-700 # 800094a0 <CONSOLE_STATUS+0x490>
    80007764:	00000097          	auipc	ra,0x0
    80007768:	5f4080e7          	jalr	1524(ra) # 80007d58 <initlock>
    8000776c:	01813083          	ld	ra,24(sp)
    80007770:	01013403          	ld	s0,16(sp)
    80007774:	0004ac23          	sw	zero,24(s1)
    80007778:	00813483          	ld	s1,8(sp)
    8000777c:	02010113          	addi	sp,sp,32
    80007780:	00008067          	ret

0000000080007784 <uartinit>:
    80007784:	ff010113          	addi	sp,sp,-16
    80007788:	00813423          	sd	s0,8(sp)
    8000778c:	01010413          	addi	s0,sp,16
    80007790:	100007b7          	lui	a5,0x10000
    80007794:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007798:	f8000713          	li	a4,-128
    8000779c:	00e781a3          	sb	a4,3(a5)
    800077a0:	00300713          	li	a4,3
    800077a4:	00e78023          	sb	a4,0(a5)
    800077a8:	000780a3          	sb	zero,1(a5)
    800077ac:	00e781a3          	sb	a4,3(a5)
    800077b0:	00700693          	li	a3,7
    800077b4:	00d78123          	sb	a3,2(a5)
    800077b8:	00e780a3          	sb	a4,1(a5)
    800077bc:	00813403          	ld	s0,8(sp)
    800077c0:	01010113          	addi	sp,sp,16
    800077c4:	00008067          	ret

00000000800077c8 <uartputc>:
    800077c8:	00004797          	auipc	a5,0x4
    800077cc:	0407a783          	lw	a5,64(a5) # 8000b808 <panicked>
    800077d0:	00078463          	beqz	a5,800077d8 <uartputc+0x10>
    800077d4:	0000006f          	j	800077d4 <uartputc+0xc>
    800077d8:	fd010113          	addi	sp,sp,-48
    800077dc:	02813023          	sd	s0,32(sp)
    800077e0:	00913c23          	sd	s1,24(sp)
    800077e4:	01213823          	sd	s2,16(sp)
    800077e8:	01313423          	sd	s3,8(sp)
    800077ec:	02113423          	sd	ra,40(sp)
    800077f0:	03010413          	addi	s0,sp,48
    800077f4:	00004917          	auipc	s2,0x4
    800077f8:	01c90913          	addi	s2,s2,28 # 8000b810 <uart_tx_r>
    800077fc:	00093783          	ld	a5,0(s2)
    80007800:	00004497          	auipc	s1,0x4
    80007804:	01848493          	addi	s1,s1,24 # 8000b818 <uart_tx_w>
    80007808:	0004b703          	ld	a4,0(s1)
    8000780c:	02078693          	addi	a3,a5,32
    80007810:	00050993          	mv	s3,a0
    80007814:	02e69c63          	bne	a3,a4,8000784c <uartputc+0x84>
    80007818:	00001097          	auipc	ra,0x1
    8000781c:	834080e7          	jalr	-1996(ra) # 8000804c <push_on>
    80007820:	00093783          	ld	a5,0(s2)
    80007824:	0004b703          	ld	a4,0(s1)
    80007828:	02078793          	addi	a5,a5,32
    8000782c:	00e79463          	bne	a5,a4,80007834 <uartputc+0x6c>
    80007830:	0000006f          	j	80007830 <uartputc+0x68>
    80007834:	00001097          	auipc	ra,0x1
    80007838:	88c080e7          	jalr	-1908(ra) # 800080c0 <pop_on>
    8000783c:	00093783          	ld	a5,0(s2)
    80007840:	0004b703          	ld	a4,0(s1)
    80007844:	02078693          	addi	a3,a5,32
    80007848:	fce688e3          	beq	a3,a4,80007818 <uartputc+0x50>
    8000784c:	01f77693          	andi	a3,a4,31
    80007850:	00005597          	auipc	a1,0x5
    80007854:	2d058593          	addi	a1,a1,720 # 8000cb20 <uart_tx_buf>
    80007858:	00d586b3          	add	a3,a1,a3
    8000785c:	00170713          	addi	a4,a4,1
    80007860:	01368023          	sb	s3,0(a3)
    80007864:	00e4b023          	sd	a4,0(s1)
    80007868:	10000637          	lui	a2,0x10000
    8000786c:	02f71063          	bne	a4,a5,8000788c <uartputc+0xc4>
    80007870:	0340006f          	j	800078a4 <uartputc+0xdc>
    80007874:	00074703          	lbu	a4,0(a4)
    80007878:	00f93023          	sd	a5,0(s2)
    8000787c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007880:	00093783          	ld	a5,0(s2)
    80007884:	0004b703          	ld	a4,0(s1)
    80007888:	00f70e63          	beq	a4,a5,800078a4 <uartputc+0xdc>
    8000788c:	00564683          	lbu	a3,5(a2)
    80007890:	01f7f713          	andi	a4,a5,31
    80007894:	00e58733          	add	a4,a1,a4
    80007898:	0206f693          	andi	a3,a3,32
    8000789c:	00178793          	addi	a5,a5,1
    800078a0:	fc069ae3          	bnez	a3,80007874 <uartputc+0xac>
    800078a4:	02813083          	ld	ra,40(sp)
    800078a8:	02013403          	ld	s0,32(sp)
    800078ac:	01813483          	ld	s1,24(sp)
    800078b0:	01013903          	ld	s2,16(sp)
    800078b4:	00813983          	ld	s3,8(sp)
    800078b8:	03010113          	addi	sp,sp,48
    800078bc:	00008067          	ret

00000000800078c0 <uartputc_sync>:
    800078c0:	ff010113          	addi	sp,sp,-16
    800078c4:	00813423          	sd	s0,8(sp)
    800078c8:	01010413          	addi	s0,sp,16
    800078cc:	00004717          	auipc	a4,0x4
    800078d0:	f3c72703          	lw	a4,-196(a4) # 8000b808 <panicked>
    800078d4:	02071663          	bnez	a4,80007900 <uartputc_sync+0x40>
    800078d8:	00050793          	mv	a5,a0
    800078dc:	100006b7          	lui	a3,0x10000
    800078e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800078e4:	02077713          	andi	a4,a4,32
    800078e8:	fe070ce3          	beqz	a4,800078e0 <uartputc_sync+0x20>
    800078ec:	0ff7f793          	andi	a5,a5,255
    800078f0:	00f68023          	sb	a5,0(a3)
    800078f4:	00813403          	ld	s0,8(sp)
    800078f8:	01010113          	addi	sp,sp,16
    800078fc:	00008067          	ret
    80007900:	0000006f          	j	80007900 <uartputc_sync+0x40>

0000000080007904 <uartstart>:
    80007904:	ff010113          	addi	sp,sp,-16
    80007908:	00813423          	sd	s0,8(sp)
    8000790c:	01010413          	addi	s0,sp,16
    80007910:	00004617          	auipc	a2,0x4
    80007914:	f0060613          	addi	a2,a2,-256 # 8000b810 <uart_tx_r>
    80007918:	00004517          	auipc	a0,0x4
    8000791c:	f0050513          	addi	a0,a0,-256 # 8000b818 <uart_tx_w>
    80007920:	00063783          	ld	a5,0(a2)
    80007924:	00053703          	ld	a4,0(a0)
    80007928:	04f70263          	beq	a4,a5,8000796c <uartstart+0x68>
    8000792c:	100005b7          	lui	a1,0x10000
    80007930:	00005817          	auipc	a6,0x5
    80007934:	1f080813          	addi	a6,a6,496 # 8000cb20 <uart_tx_buf>
    80007938:	01c0006f          	j	80007954 <uartstart+0x50>
    8000793c:	0006c703          	lbu	a4,0(a3)
    80007940:	00f63023          	sd	a5,0(a2)
    80007944:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007948:	00063783          	ld	a5,0(a2)
    8000794c:	00053703          	ld	a4,0(a0)
    80007950:	00f70e63          	beq	a4,a5,8000796c <uartstart+0x68>
    80007954:	01f7f713          	andi	a4,a5,31
    80007958:	00e806b3          	add	a3,a6,a4
    8000795c:	0055c703          	lbu	a4,5(a1)
    80007960:	00178793          	addi	a5,a5,1
    80007964:	02077713          	andi	a4,a4,32
    80007968:	fc071ae3          	bnez	a4,8000793c <uartstart+0x38>
    8000796c:	00813403          	ld	s0,8(sp)
    80007970:	01010113          	addi	sp,sp,16
    80007974:	00008067          	ret

0000000080007978 <uartgetc>:
    80007978:	ff010113          	addi	sp,sp,-16
    8000797c:	00813423          	sd	s0,8(sp)
    80007980:	01010413          	addi	s0,sp,16
    80007984:	10000737          	lui	a4,0x10000
    80007988:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000798c:	0017f793          	andi	a5,a5,1
    80007990:	00078c63          	beqz	a5,800079a8 <uartgetc+0x30>
    80007994:	00074503          	lbu	a0,0(a4)
    80007998:	0ff57513          	andi	a0,a0,255
    8000799c:	00813403          	ld	s0,8(sp)
    800079a0:	01010113          	addi	sp,sp,16
    800079a4:	00008067          	ret
    800079a8:	fff00513          	li	a0,-1
    800079ac:	ff1ff06f          	j	8000799c <uartgetc+0x24>

00000000800079b0 <uartintr>:
    800079b0:	100007b7          	lui	a5,0x10000
    800079b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800079b8:	0017f793          	andi	a5,a5,1
    800079bc:	0a078463          	beqz	a5,80007a64 <uartintr+0xb4>
    800079c0:	fe010113          	addi	sp,sp,-32
    800079c4:	00813823          	sd	s0,16(sp)
    800079c8:	00913423          	sd	s1,8(sp)
    800079cc:	00113c23          	sd	ra,24(sp)
    800079d0:	02010413          	addi	s0,sp,32
    800079d4:	100004b7          	lui	s1,0x10000
    800079d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800079dc:	0ff57513          	andi	a0,a0,255
    800079e0:	fffff097          	auipc	ra,0xfffff
    800079e4:	534080e7          	jalr	1332(ra) # 80006f14 <consoleintr>
    800079e8:	0054c783          	lbu	a5,5(s1)
    800079ec:	0017f793          	andi	a5,a5,1
    800079f0:	fe0794e3          	bnez	a5,800079d8 <uartintr+0x28>
    800079f4:	00004617          	auipc	a2,0x4
    800079f8:	e1c60613          	addi	a2,a2,-484 # 8000b810 <uart_tx_r>
    800079fc:	00004517          	auipc	a0,0x4
    80007a00:	e1c50513          	addi	a0,a0,-484 # 8000b818 <uart_tx_w>
    80007a04:	00063783          	ld	a5,0(a2)
    80007a08:	00053703          	ld	a4,0(a0)
    80007a0c:	04f70263          	beq	a4,a5,80007a50 <uartintr+0xa0>
    80007a10:	100005b7          	lui	a1,0x10000
    80007a14:	00005817          	auipc	a6,0x5
    80007a18:	10c80813          	addi	a6,a6,268 # 8000cb20 <uart_tx_buf>
    80007a1c:	01c0006f          	j	80007a38 <uartintr+0x88>
    80007a20:	0006c703          	lbu	a4,0(a3)
    80007a24:	00f63023          	sd	a5,0(a2)
    80007a28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a2c:	00063783          	ld	a5,0(a2)
    80007a30:	00053703          	ld	a4,0(a0)
    80007a34:	00f70e63          	beq	a4,a5,80007a50 <uartintr+0xa0>
    80007a38:	01f7f713          	andi	a4,a5,31
    80007a3c:	00e806b3          	add	a3,a6,a4
    80007a40:	0055c703          	lbu	a4,5(a1)
    80007a44:	00178793          	addi	a5,a5,1
    80007a48:	02077713          	andi	a4,a4,32
    80007a4c:	fc071ae3          	bnez	a4,80007a20 <uartintr+0x70>
    80007a50:	01813083          	ld	ra,24(sp)
    80007a54:	01013403          	ld	s0,16(sp)
    80007a58:	00813483          	ld	s1,8(sp)
    80007a5c:	02010113          	addi	sp,sp,32
    80007a60:	00008067          	ret
    80007a64:	00004617          	auipc	a2,0x4
    80007a68:	dac60613          	addi	a2,a2,-596 # 8000b810 <uart_tx_r>
    80007a6c:	00004517          	auipc	a0,0x4
    80007a70:	dac50513          	addi	a0,a0,-596 # 8000b818 <uart_tx_w>
    80007a74:	00063783          	ld	a5,0(a2)
    80007a78:	00053703          	ld	a4,0(a0)
    80007a7c:	04f70263          	beq	a4,a5,80007ac0 <uartintr+0x110>
    80007a80:	100005b7          	lui	a1,0x10000
    80007a84:	00005817          	auipc	a6,0x5
    80007a88:	09c80813          	addi	a6,a6,156 # 8000cb20 <uart_tx_buf>
    80007a8c:	01c0006f          	j	80007aa8 <uartintr+0xf8>
    80007a90:	0006c703          	lbu	a4,0(a3)
    80007a94:	00f63023          	sd	a5,0(a2)
    80007a98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a9c:	00063783          	ld	a5,0(a2)
    80007aa0:	00053703          	ld	a4,0(a0)
    80007aa4:	02f70063          	beq	a4,a5,80007ac4 <uartintr+0x114>
    80007aa8:	01f7f713          	andi	a4,a5,31
    80007aac:	00e806b3          	add	a3,a6,a4
    80007ab0:	0055c703          	lbu	a4,5(a1)
    80007ab4:	00178793          	addi	a5,a5,1
    80007ab8:	02077713          	andi	a4,a4,32
    80007abc:	fc071ae3          	bnez	a4,80007a90 <uartintr+0xe0>
    80007ac0:	00008067          	ret
    80007ac4:	00008067          	ret

0000000080007ac8 <kinit>:
    80007ac8:	fc010113          	addi	sp,sp,-64
    80007acc:	02913423          	sd	s1,40(sp)
    80007ad0:	fffff7b7          	lui	a5,0xfffff
    80007ad4:	00006497          	auipc	s1,0x6
    80007ad8:	06b48493          	addi	s1,s1,107 # 8000db3f <end+0xfff>
    80007adc:	02813823          	sd	s0,48(sp)
    80007ae0:	01313c23          	sd	s3,24(sp)
    80007ae4:	00f4f4b3          	and	s1,s1,a5
    80007ae8:	02113c23          	sd	ra,56(sp)
    80007aec:	03213023          	sd	s2,32(sp)
    80007af0:	01413823          	sd	s4,16(sp)
    80007af4:	01513423          	sd	s5,8(sp)
    80007af8:	04010413          	addi	s0,sp,64
    80007afc:	000017b7          	lui	a5,0x1
    80007b00:	01100993          	li	s3,17
    80007b04:	00f487b3          	add	a5,s1,a5
    80007b08:	01b99993          	slli	s3,s3,0x1b
    80007b0c:	06f9e063          	bltu	s3,a5,80007b6c <kinit+0xa4>
    80007b10:	00005a97          	auipc	s5,0x5
    80007b14:	030a8a93          	addi	s5,s5,48 # 8000cb40 <end>
    80007b18:	0754ec63          	bltu	s1,s5,80007b90 <kinit+0xc8>
    80007b1c:	0734fa63          	bgeu	s1,s3,80007b90 <kinit+0xc8>
    80007b20:	00088a37          	lui	s4,0x88
    80007b24:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b28:	00004917          	auipc	s2,0x4
    80007b2c:	cf890913          	addi	s2,s2,-776 # 8000b820 <kmem>
    80007b30:	00ca1a13          	slli	s4,s4,0xc
    80007b34:	0140006f          	j	80007b48 <kinit+0x80>
    80007b38:	000017b7          	lui	a5,0x1
    80007b3c:	00f484b3          	add	s1,s1,a5
    80007b40:	0554e863          	bltu	s1,s5,80007b90 <kinit+0xc8>
    80007b44:	0534f663          	bgeu	s1,s3,80007b90 <kinit+0xc8>
    80007b48:	00001637          	lui	a2,0x1
    80007b4c:	00100593          	li	a1,1
    80007b50:	00048513          	mv	a0,s1
    80007b54:	00000097          	auipc	ra,0x0
    80007b58:	5e4080e7          	jalr	1508(ra) # 80008138 <__memset>
    80007b5c:	00093783          	ld	a5,0(s2)
    80007b60:	00f4b023          	sd	a5,0(s1)
    80007b64:	00993023          	sd	s1,0(s2)
    80007b68:	fd4498e3          	bne	s1,s4,80007b38 <kinit+0x70>
    80007b6c:	03813083          	ld	ra,56(sp)
    80007b70:	03013403          	ld	s0,48(sp)
    80007b74:	02813483          	ld	s1,40(sp)
    80007b78:	02013903          	ld	s2,32(sp)
    80007b7c:	01813983          	ld	s3,24(sp)
    80007b80:	01013a03          	ld	s4,16(sp)
    80007b84:	00813a83          	ld	s5,8(sp)
    80007b88:	04010113          	addi	sp,sp,64
    80007b8c:	00008067          	ret
    80007b90:	00002517          	auipc	a0,0x2
    80007b94:	93050513          	addi	a0,a0,-1744 # 800094c0 <digits+0x18>
    80007b98:	fffff097          	auipc	ra,0xfffff
    80007b9c:	4b4080e7          	jalr	1204(ra) # 8000704c <panic>

0000000080007ba0 <freerange>:
    80007ba0:	fc010113          	addi	sp,sp,-64
    80007ba4:	000017b7          	lui	a5,0x1
    80007ba8:	02913423          	sd	s1,40(sp)
    80007bac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007bb0:	009504b3          	add	s1,a0,s1
    80007bb4:	fffff537          	lui	a0,0xfffff
    80007bb8:	02813823          	sd	s0,48(sp)
    80007bbc:	02113c23          	sd	ra,56(sp)
    80007bc0:	03213023          	sd	s2,32(sp)
    80007bc4:	01313c23          	sd	s3,24(sp)
    80007bc8:	01413823          	sd	s4,16(sp)
    80007bcc:	01513423          	sd	s5,8(sp)
    80007bd0:	01613023          	sd	s6,0(sp)
    80007bd4:	04010413          	addi	s0,sp,64
    80007bd8:	00a4f4b3          	and	s1,s1,a0
    80007bdc:	00f487b3          	add	a5,s1,a5
    80007be0:	06f5e463          	bltu	a1,a5,80007c48 <freerange+0xa8>
    80007be4:	00005a97          	auipc	s5,0x5
    80007be8:	f5ca8a93          	addi	s5,s5,-164 # 8000cb40 <end>
    80007bec:	0954e263          	bltu	s1,s5,80007c70 <freerange+0xd0>
    80007bf0:	01100993          	li	s3,17
    80007bf4:	01b99993          	slli	s3,s3,0x1b
    80007bf8:	0734fc63          	bgeu	s1,s3,80007c70 <freerange+0xd0>
    80007bfc:	00058a13          	mv	s4,a1
    80007c00:	00004917          	auipc	s2,0x4
    80007c04:	c2090913          	addi	s2,s2,-992 # 8000b820 <kmem>
    80007c08:	00002b37          	lui	s6,0x2
    80007c0c:	0140006f          	j	80007c20 <freerange+0x80>
    80007c10:	000017b7          	lui	a5,0x1
    80007c14:	00f484b3          	add	s1,s1,a5
    80007c18:	0554ec63          	bltu	s1,s5,80007c70 <freerange+0xd0>
    80007c1c:	0534fa63          	bgeu	s1,s3,80007c70 <freerange+0xd0>
    80007c20:	00001637          	lui	a2,0x1
    80007c24:	00100593          	li	a1,1
    80007c28:	00048513          	mv	a0,s1
    80007c2c:	00000097          	auipc	ra,0x0
    80007c30:	50c080e7          	jalr	1292(ra) # 80008138 <__memset>
    80007c34:	00093703          	ld	a4,0(s2)
    80007c38:	016487b3          	add	a5,s1,s6
    80007c3c:	00e4b023          	sd	a4,0(s1)
    80007c40:	00993023          	sd	s1,0(s2)
    80007c44:	fcfa76e3          	bgeu	s4,a5,80007c10 <freerange+0x70>
    80007c48:	03813083          	ld	ra,56(sp)
    80007c4c:	03013403          	ld	s0,48(sp)
    80007c50:	02813483          	ld	s1,40(sp)
    80007c54:	02013903          	ld	s2,32(sp)
    80007c58:	01813983          	ld	s3,24(sp)
    80007c5c:	01013a03          	ld	s4,16(sp)
    80007c60:	00813a83          	ld	s5,8(sp)
    80007c64:	00013b03          	ld	s6,0(sp)
    80007c68:	04010113          	addi	sp,sp,64
    80007c6c:	00008067          	ret
    80007c70:	00002517          	auipc	a0,0x2
    80007c74:	85050513          	addi	a0,a0,-1968 # 800094c0 <digits+0x18>
    80007c78:	fffff097          	auipc	ra,0xfffff
    80007c7c:	3d4080e7          	jalr	980(ra) # 8000704c <panic>

0000000080007c80 <kfree>:
    80007c80:	fe010113          	addi	sp,sp,-32
    80007c84:	00813823          	sd	s0,16(sp)
    80007c88:	00113c23          	sd	ra,24(sp)
    80007c8c:	00913423          	sd	s1,8(sp)
    80007c90:	02010413          	addi	s0,sp,32
    80007c94:	03451793          	slli	a5,a0,0x34
    80007c98:	04079c63          	bnez	a5,80007cf0 <kfree+0x70>
    80007c9c:	00005797          	auipc	a5,0x5
    80007ca0:	ea478793          	addi	a5,a5,-348 # 8000cb40 <end>
    80007ca4:	00050493          	mv	s1,a0
    80007ca8:	04f56463          	bltu	a0,a5,80007cf0 <kfree+0x70>
    80007cac:	01100793          	li	a5,17
    80007cb0:	01b79793          	slli	a5,a5,0x1b
    80007cb4:	02f57e63          	bgeu	a0,a5,80007cf0 <kfree+0x70>
    80007cb8:	00001637          	lui	a2,0x1
    80007cbc:	00100593          	li	a1,1
    80007cc0:	00000097          	auipc	ra,0x0
    80007cc4:	478080e7          	jalr	1144(ra) # 80008138 <__memset>
    80007cc8:	00004797          	auipc	a5,0x4
    80007ccc:	b5878793          	addi	a5,a5,-1192 # 8000b820 <kmem>
    80007cd0:	0007b703          	ld	a4,0(a5)
    80007cd4:	01813083          	ld	ra,24(sp)
    80007cd8:	01013403          	ld	s0,16(sp)
    80007cdc:	00e4b023          	sd	a4,0(s1)
    80007ce0:	0097b023          	sd	s1,0(a5)
    80007ce4:	00813483          	ld	s1,8(sp)
    80007ce8:	02010113          	addi	sp,sp,32
    80007cec:	00008067          	ret
    80007cf0:	00001517          	auipc	a0,0x1
    80007cf4:	7d050513          	addi	a0,a0,2000 # 800094c0 <digits+0x18>
    80007cf8:	fffff097          	auipc	ra,0xfffff
    80007cfc:	354080e7          	jalr	852(ra) # 8000704c <panic>

0000000080007d00 <kalloc>:
    80007d00:	fe010113          	addi	sp,sp,-32
    80007d04:	00813823          	sd	s0,16(sp)
    80007d08:	00913423          	sd	s1,8(sp)
    80007d0c:	00113c23          	sd	ra,24(sp)
    80007d10:	02010413          	addi	s0,sp,32
    80007d14:	00004797          	auipc	a5,0x4
    80007d18:	b0c78793          	addi	a5,a5,-1268 # 8000b820 <kmem>
    80007d1c:	0007b483          	ld	s1,0(a5)
    80007d20:	02048063          	beqz	s1,80007d40 <kalloc+0x40>
    80007d24:	0004b703          	ld	a4,0(s1)
    80007d28:	00001637          	lui	a2,0x1
    80007d2c:	00500593          	li	a1,5
    80007d30:	00048513          	mv	a0,s1
    80007d34:	00e7b023          	sd	a4,0(a5)
    80007d38:	00000097          	auipc	ra,0x0
    80007d3c:	400080e7          	jalr	1024(ra) # 80008138 <__memset>
    80007d40:	01813083          	ld	ra,24(sp)
    80007d44:	01013403          	ld	s0,16(sp)
    80007d48:	00048513          	mv	a0,s1
    80007d4c:	00813483          	ld	s1,8(sp)
    80007d50:	02010113          	addi	sp,sp,32
    80007d54:	00008067          	ret

0000000080007d58 <initlock>:
    80007d58:	ff010113          	addi	sp,sp,-16
    80007d5c:	00813423          	sd	s0,8(sp)
    80007d60:	01010413          	addi	s0,sp,16
    80007d64:	00813403          	ld	s0,8(sp)
    80007d68:	00b53423          	sd	a1,8(a0)
    80007d6c:	00052023          	sw	zero,0(a0)
    80007d70:	00053823          	sd	zero,16(a0)
    80007d74:	01010113          	addi	sp,sp,16
    80007d78:	00008067          	ret

0000000080007d7c <acquire>:
    80007d7c:	fe010113          	addi	sp,sp,-32
    80007d80:	00813823          	sd	s0,16(sp)
    80007d84:	00913423          	sd	s1,8(sp)
    80007d88:	00113c23          	sd	ra,24(sp)
    80007d8c:	01213023          	sd	s2,0(sp)
    80007d90:	02010413          	addi	s0,sp,32
    80007d94:	00050493          	mv	s1,a0
    80007d98:	10002973          	csrr	s2,sstatus
    80007d9c:	100027f3          	csrr	a5,sstatus
    80007da0:	ffd7f793          	andi	a5,a5,-3
    80007da4:	10079073          	csrw	sstatus,a5
    80007da8:	fffff097          	auipc	ra,0xfffff
    80007dac:	8e8080e7          	jalr	-1816(ra) # 80006690 <mycpu>
    80007db0:	07852783          	lw	a5,120(a0)
    80007db4:	06078e63          	beqz	a5,80007e30 <acquire+0xb4>
    80007db8:	fffff097          	auipc	ra,0xfffff
    80007dbc:	8d8080e7          	jalr	-1832(ra) # 80006690 <mycpu>
    80007dc0:	07852783          	lw	a5,120(a0)
    80007dc4:	0004a703          	lw	a4,0(s1)
    80007dc8:	0017879b          	addiw	a5,a5,1
    80007dcc:	06f52c23          	sw	a5,120(a0)
    80007dd0:	04071063          	bnez	a4,80007e10 <acquire+0x94>
    80007dd4:	00100713          	li	a4,1
    80007dd8:	00070793          	mv	a5,a4
    80007ddc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007de0:	0007879b          	sext.w	a5,a5
    80007de4:	fe079ae3          	bnez	a5,80007dd8 <acquire+0x5c>
    80007de8:	0ff0000f          	fence
    80007dec:	fffff097          	auipc	ra,0xfffff
    80007df0:	8a4080e7          	jalr	-1884(ra) # 80006690 <mycpu>
    80007df4:	01813083          	ld	ra,24(sp)
    80007df8:	01013403          	ld	s0,16(sp)
    80007dfc:	00a4b823          	sd	a0,16(s1)
    80007e00:	00013903          	ld	s2,0(sp)
    80007e04:	00813483          	ld	s1,8(sp)
    80007e08:	02010113          	addi	sp,sp,32
    80007e0c:	00008067          	ret
    80007e10:	0104b903          	ld	s2,16(s1)
    80007e14:	fffff097          	auipc	ra,0xfffff
    80007e18:	87c080e7          	jalr	-1924(ra) # 80006690 <mycpu>
    80007e1c:	faa91ce3          	bne	s2,a0,80007dd4 <acquire+0x58>
    80007e20:	00001517          	auipc	a0,0x1
    80007e24:	6a850513          	addi	a0,a0,1704 # 800094c8 <digits+0x20>
    80007e28:	fffff097          	auipc	ra,0xfffff
    80007e2c:	224080e7          	jalr	548(ra) # 8000704c <panic>
    80007e30:	00195913          	srli	s2,s2,0x1
    80007e34:	fffff097          	auipc	ra,0xfffff
    80007e38:	85c080e7          	jalr	-1956(ra) # 80006690 <mycpu>
    80007e3c:	00197913          	andi	s2,s2,1
    80007e40:	07252e23          	sw	s2,124(a0)
    80007e44:	f75ff06f          	j	80007db8 <acquire+0x3c>

0000000080007e48 <release>:
    80007e48:	fe010113          	addi	sp,sp,-32
    80007e4c:	00813823          	sd	s0,16(sp)
    80007e50:	00113c23          	sd	ra,24(sp)
    80007e54:	00913423          	sd	s1,8(sp)
    80007e58:	01213023          	sd	s2,0(sp)
    80007e5c:	02010413          	addi	s0,sp,32
    80007e60:	00052783          	lw	a5,0(a0)
    80007e64:	00079a63          	bnez	a5,80007e78 <release+0x30>
    80007e68:	00001517          	auipc	a0,0x1
    80007e6c:	66850513          	addi	a0,a0,1640 # 800094d0 <digits+0x28>
    80007e70:	fffff097          	auipc	ra,0xfffff
    80007e74:	1dc080e7          	jalr	476(ra) # 8000704c <panic>
    80007e78:	01053903          	ld	s2,16(a0)
    80007e7c:	00050493          	mv	s1,a0
    80007e80:	fffff097          	auipc	ra,0xfffff
    80007e84:	810080e7          	jalr	-2032(ra) # 80006690 <mycpu>
    80007e88:	fea910e3          	bne	s2,a0,80007e68 <release+0x20>
    80007e8c:	0004b823          	sd	zero,16(s1)
    80007e90:	0ff0000f          	fence
    80007e94:	0f50000f          	fence	iorw,ow
    80007e98:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007e9c:	ffffe097          	auipc	ra,0xffffe
    80007ea0:	7f4080e7          	jalr	2036(ra) # 80006690 <mycpu>
    80007ea4:	100027f3          	csrr	a5,sstatus
    80007ea8:	0027f793          	andi	a5,a5,2
    80007eac:	04079a63          	bnez	a5,80007f00 <release+0xb8>
    80007eb0:	07852783          	lw	a5,120(a0)
    80007eb4:	02f05e63          	blez	a5,80007ef0 <release+0xa8>
    80007eb8:	fff7871b          	addiw	a4,a5,-1
    80007ebc:	06e52c23          	sw	a4,120(a0)
    80007ec0:	00071c63          	bnez	a4,80007ed8 <release+0x90>
    80007ec4:	07c52783          	lw	a5,124(a0)
    80007ec8:	00078863          	beqz	a5,80007ed8 <release+0x90>
    80007ecc:	100027f3          	csrr	a5,sstatus
    80007ed0:	0027e793          	ori	a5,a5,2
    80007ed4:	10079073          	csrw	sstatus,a5
    80007ed8:	01813083          	ld	ra,24(sp)
    80007edc:	01013403          	ld	s0,16(sp)
    80007ee0:	00813483          	ld	s1,8(sp)
    80007ee4:	00013903          	ld	s2,0(sp)
    80007ee8:	02010113          	addi	sp,sp,32
    80007eec:	00008067          	ret
    80007ef0:	00001517          	auipc	a0,0x1
    80007ef4:	60050513          	addi	a0,a0,1536 # 800094f0 <digits+0x48>
    80007ef8:	fffff097          	auipc	ra,0xfffff
    80007efc:	154080e7          	jalr	340(ra) # 8000704c <panic>
    80007f00:	00001517          	auipc	a0,0x1
    80007f04:	5d850513          	addi	a0,a0,1496 # 800094d8 <digits+0x30>
    80007f08:	fffff097          	auipc	ra,0xfffff
    80007f0c:	144080e7          	jalr	324(ra) # 8000704c <panic>

0000000080007f10 <holding>:
    80007f10:	00052783          	lw	a5,0(a0)
    80007f14:	00079663          	bnez	a5,80007f20 <holding+0x10>
    80007f18:	00000513          	li	a0,0
    80007f1c:	00008067          	ret
    80007f20:	fe010113          	addi	sp,sp,-32
    80007f24:	00813823          	sd	s0,16(sp)
    80007f28:	00913423          	sd	s1,8(sp)
    80007f2c:	00113c23          	sd	ra,24(sp)
    80007f30:	02010413          	addi	s0,sp,32
    80007f34:	01053483          	ld	s1,16(a0)
    80007f38:	ffffe097          	auipc	ra,0xffffe
    80007f3c:	758080e7          	jalr	1880(ra) # 80006690 <mycpu>
    80007f40:	01813083          	ld	ra,24(sp)
    80007f44:	01013403          	ld	s0,16(sp)
    80007f48:	40a48533          	sub	a0,s1,a0
    80007f4c:	00153513          	seqz	a0,a0
    80007f50:	00813483          	ld	s1,8(sp)
    80007f54:	02010113          	addi	sp,sp,32
    80007f58:	00008067          	ret

0000000080007f5c <push_off>:
    80007f5c:	fe010113          	addi	sp,sp,-32
    80007f60:	00813823          	sd	s0,16(sp)
    80007f64:	00113c23          	sd	ra,24(sp)
    80007f68:	00913423          	sd	s1,8(sp)
    80007f6c:	02010413          	addi	s0,sp,32
    80007f70:	100024f3          	csrr	s1,sstatus
    80007f74:	100027f3          	csrr	a5,sstatus
    80007f78:	ffd7f793          	andi	a5,a5,-3
    80007f7c:	10079073          	csrw	sstatus,a5
    80007f80:	ffffe097          	auipc	ra,0xffffe
    80007f84:	710080e7          	jalr	1808(ra) # 80006690 <mycpu>
    80007f88:	07852783          	lw	a5,120(a0)
    80007f8c:	02078663          	beqz	a5,80007fb8 <push_off+0x5c>
    80007f90:	ffffe097          	auipc	ra,0xffffe
    80007f94:	700080e7          	jalr	1792(ra) # 80006690 <mycpu>
    80007f98:	07852783          	lw	a5,120(a0)
    80007f9c:	01813083          	ld	ra,24(sp)
    80007fa0:	01013403          	ld	s0,16(sp)
    80007fa4:	0017879b          	addiw	a5,a5,1
    80007fa8:	06f52c23          	sw	a5,120(a0)
    80007fac:	00813483          	ld	s1,8(sp)
    80007fb0:	02010113          	addi	sp,sp,32
    80007fb4:	00008067          	ret
    80007fb8:	0014d493          	srli	s1,s1,0x1
    80007fbc:	ffffe097          	auipc	ra,0xffffe
    80007fc0:	6d4080e7          	jalr	1748(ra) # 80006690 <mycpu>
    80007fc4:	0014f493          	andi	s1,s1,1
    80007fc8:	06952e23          	sw	s1,124(a0)
    80007fcc:	fc5ff06f          	j	80007f90 <push_off+0x34>

0000000080007fd0 <pop_off>:
    80007fd0:	ff010113          	addi	sp,sp,-16
    80007fd4:	00813023          	sd	s0,0(sp)
    80007fd8:	00113423          	sd	ra,8(sp)
    80007fdc:	01010413          	addi	s0,sp,16
    80007fe0:	ffffe097          	auipc	ra,0xffffe
    80007fe4:	6b0080e7          	jalr	1712(ra) # 80006690 <mycpu>
    80007fe8:	100027f3          	csrr	a5,sstatus
    80007fec:	0027f793          	andi	a5,a5,2
    80007ff0:	04079663          	bnez	a5,8000803c <pop_off+0x6c>
    80007ff4:	07852783          	lw	a5,120(a0)
    80007ff8:	02f05a63          	blez	a5,8000802c <pop_off+0x5c>
    80007ffc:	fff7871b          	addiw	a4,a5,-1
    80008000:	06e52c23          	sw	a4,120(a0)
    80008004:	00071c63          	bnez	a4,8000801c <pop_off+0x4c>
    80008008:	07c52783          	lw	a5,124(a0)
    8000800c:	00078863          	beqz	a5,8000801c <pop_off+0x4c>
    80008010:	100027f3          	csrr	a5,sstatus
    80008014:	0027e793          	ori	a5,a5,2
    80008018:	10079073          	csrw	sstatus,a5
    8000801c:	00813083          	ld	ra,8(sp)
    80008020:	00013403          	ld	s0,0(sp)
    80008024:	01010113          	addi	sp,sp,16
    80008028:	00008067          	ret
    8000802c:	00001517          	auipc	a0,0x1
    80008030:	4c450513          	addi	a0,a0,1220 # 800094f0 <digits+0x48>
    80008034:	fffff097          	auipc	ra,0xfffff
    80008038:	018080e7          	jalr	24(ra) # 8000704c <panic>
    8000803c:	00001517          	auipc	a0,0x1
    80008040:	49c50513          	addi	a0,a0,1180 # 800094d8 <digits+0x30>
    80008044:	fffff097          	auipc	ra,0xfffff
    80008048:	008080e7          	jalr	8(ra) # 8000704c <panic>

000000008000804c <push_on>:
    8000804c:	fe010113          	addi	sp,sp,-32
    80008050:	00813823          	sd	s0,16(sp)
    80008054:	00113c23          	sd	ra,24(sp)
    80008058:	00913423          	sd	s1,8(sp)
    8000805c:	02010413          	addi	s0,sp,32
    80008060:	100024f3          	csrr	s1,sstatus
    80008064:	100027f3          	csrr	a5,sstatus
    80008068:	0027e793          	ori	a5,a5,2
    8000806c:	10079073          	csrw	sstatus,a5
    80008070:	ffffe097          	auipc	ra,0xffffe
    80008074:	620080e7          	jalr	1568(ra) # 80006690 <mycpu>
    80008078:	07852783          	lw	a5,120(a0)
    8000807c:	02078663          	beqz	a5,800080a8 <push_on+0x5c>
    80008080:	ffffe097          	auipc	ra,0xffffe
    80008084:	610080e7          	jalr	1552(ra) # 80006690 <mycpu>
    80008088:	07852783          	lw	a5,120(a0)
    8000808c:	01813083          	ld	ra,24(sp)
    80008090:	01013403          	ld	s0,16(sp)
    80008094:	0017879b          	addiw	a5,a5,1
    80008098:	06f52c23          	sw	a5,120(a0)
    8000809c:	00813483          	ld	s1,8(sp)
    800080a0:	02010113          	addi	sp,sp,32
    800080a4:	00008067          	ret
    800080a8:	0014d493          	srli	s1,s1,0x1
    800080ac:	ffffe097          	auipc	ra,0xffffe
    800080b0:	5e4080e7          	jalr	1508(ra) # 80006690 <mycpu>
    800080b4:	0014f493          	andi	s1,s1,1
    800080b8:	06952e23          	sw	s1,124(a0)
    800080bc:	fc5ff06f          	j	80008080 <push_on+0x34>

00000000800080c0 <pop_on>:
    800080c0:	ff010113          	addi	sp,sp,-16
    800080c4:	00813023          	sd	s0,0(sp)
    800080c8:	00113423          	sd	ra,8(sp)
    800080cc:	01010413          	addi	s0,sp,16
    800080d0:	ffffe097          	auipc	ra,0xffffe
    800080d4:	5c0080e7          	jalr	1472(ra) # 80006690 <mycpu>
    800080d8:	100027f3          	csrr	a5,sstatus
    800080dc:	0027f793          	andi	a5,a5,2
    800080e0:	04078463          	beqz	a5,80008128 <pop_on+0x68>
    800080e4:	07852783          	lw	a5,120(a0)
    800080e8:	02f05863          	blez	a5,80008118 <pop_on+0x58>
    800080ec:	fff7879b          	addiw	a5,a5,-1
    800080f0:	06f52c23          	sw	a5,120(a0)
    800080f4:	07853783          	ld	a5,120(a0)
    800080f8:	00079863          	bnez	a5,80008108 <pop_on+0x48>
    800080fc:	100027f3          	csrr	a5,sstatus
    80008100:	ffd7f793          	andi	a5,a5,-3
    80008104:	10079073          	csrw	sstatus,a5
    80008108:	00813083          	ld	ra,8(sp)
    8000810c:	00013403          	ld	s0,0(sp)
    80008110:	01010113          	addi	sp,sp,16
    80008114:	00008067          	ret
    80008118:	00001517          	auipc	a0,0x1
    8000811c:	40050513          	addi	a0,a0,1024 # 80009518 <digits+0x70>
    80008120:	fffff097          	auipc	ra,0xfffff
    80008124:	f2c080e7          	jalr	-212(ra) # 8000704c <panic>
    80008128:	00001517          	auipc	a0,0x1
    8000812c:	3d050513          	addi	a0,a0,976 # 800094f8 <digits+0x50>
    80008130:	fffff097          	auipc	ra,0xfffff
    80008134:	f1c080e7          	jalr	-228(ra) # 8000704c <panic>

0000000080008138 <__memset>:
    80008138:	ff010113          	addi	sp,sp,-16
    8000813c:	00813423          	sd	s0,8(sp)
    80008140:	01010413          	addi	s0,sp,16
    80008144:	1a060e63          	beqz	a2,80008300 <__memset+0x1c8>
    80008148:	40a007b3          	neg	a5,a0
    8000814c:	0077f793          	andi	a5,a5,7
    80008150:	00778693          	addi	a3,a5,7
    80008154:	00b00813          	li	a6,11
    80008158:	0ff5f593          	andi	a1,a1,255
    8000815c:	fff6071b          	addiw	a4,a2,-1
    80008160:	1b06e663          	bltu	a3,a6,8000830c <__memset+0x1d4>
    80008164:	1cd76463          	bltu	a4,a3,8000832c <__memset+0x1f4>
    80008168:	1a078e63          	beqz	a5,80008324 <__memset+0x1ec>
    8000816c:	00b50023          	sb	a1,0(a0)
    80008170:	00100713          	li	a4,1
    80008174:	1ae78463          	beq	a5,a4,8000831c <__memset+0x1e4>
    80008178:	00b500a3          	sb	a1,1(a0)
    8000817c:	00200713          	li	a4,2
    80008180:	1ae78a63          	beq	a5,a4,80008334 <__memset+0x1fc>
    80008184:	00b50123          	sb	a1,2(a0)
    80008188:	00300713          	li	a4,3
    8000818c:	18e78463          	beq	a5,a4,80008314 <__memset+0x1dc>
    80008190:	00b501a3          	sb	a1,3(a0)
    80008194:	00400713          	li	a4,4
    80008198:	1ae78263          	beq	a5,a4,8000833c <__memset+0x204>
    8000819c:	00b50223          	sb	a1,4(a0)
    800081a0:	00500713          	li	a4,5
    800081a4:	1ae78063          	beq	a5,a4,80008344 <__memset+0x20c>
    800081a8:	00b502a3          	sb	a1,5(a0)
    800081ac:	00700713          	li	a4,7
    800081b0:	18e79e63          	bne	a5,a4,8000834c <__memset+0x214>
    800081b4:	00b50323          	sb	a1,6(a0)
    800081b8:	00700e93          	li	t4,7
    800081bc:	00859713          	slli	a4,a1,0x8
    800081c0:	00e5e733          	or	a4,a1,a4
    800081c4:	01059e13          	slli	t3,a1,0x10
    800081c8:	01c76e33          	or	t3,a4,t3
    800081cc:	01859313          	slli	t1,a1,0x18
    800081d0:	006e6333          	or	t1,t3,t1
    800081d4:	02059893          	slli	a7,a1,0x20
    800081d8:	40f60e3b          	subw	t3,a2,a5
    800081dc:	011368b3          	or	a7,t1,a7
    800081e0:	02859813          	slli	a6,a1,0x28
    800081e4:	0108e833          	or	a6,a7,a6
    800081e8:	03059693          	slli	a3,a1,0x30
    800081ec:	003e589b          	srliw	a7,t3,0x3
    800081f0:	00d866b3          	or	a3,a6,a3
    800081f4:	03859713          	slli	a4,a1,0x38
    800081f8:	00389813          	slli	a6,a7,0x3
    800081fc:	00f507b3          	add	a5,a0,a5
    80008200:	00e6e733          	or	a4,a3,a4
    80008204:	000e089b          	sext.w	a7,t3
    80008208:	00f806b3          	add	a3,a6,a5
    8000820c:	00e7b023          	sd	a4,0(a5)
    80008210:	00878793          	addi	a5,a5,8
    80008214:	fed79ce3          	bne	a5,a3,8000820c <__memset+0xd4>
    80008218:	ff8e7793          	andi	a5,t3,-8
    8000821c:	0007871b          	sext.w	a4,a5
    80008220:	01d787bb          	addw	a5,a5,t4
    80008224:	0ce88e63          	beq	a7,a4,80008300 <__memset+0x1c8>
    80008228:	00f50733          	add	a4,a0,a5
    8000822c:	00b70023          	sb	a1,0(a4)
    80008230:	0017871b          	addiw	a4,a5,1
    80008234:	0cc77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008238:	00e50733          	add	a4,a0,a4
    8000823c:	00b70023          	sb	a1,0(a4)
    80008240:	0027871b          	addiw	a4,a5,2
    80008244:	0ac77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008248:	00e50733          	add	a4,a0,a4
    8000824c:	00b70023          	sb	a1,0(a4)
    80008250:	0037871b          	addiw	a4,a5,3
    80008254:	0ac77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008258:	00e50733          	add	a4,a0,a4
    8000825c:	00b70023          	sb	a1,0(a4)
    80008260:	0047871b          	addiw	a4,a5,4
    80008264:	08c77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008268:	00e50733          	add	a4,a0,a4
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	0057871b          	addiw	a4,a5,5
    80008274:	08c77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0067871b          	addiw	a4,a5,6
    80008284:	06c77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0077871b          	addiw	a4,a5,7
    80008294:	06c77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0087871b          	addiw	a4,a5,8
    800082a4:	04c77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0097871b          	addiw	a4,a5,9
    800082b4:	04c77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	00a7871b          	addiw	a4,a5,10
    800082c4:	02c77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	00b7871b          	addiw	a4,a5,11
    800082d4:	02c77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	00c7871b          	addiw	a4,a5,12
    800082e4:	00c77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	00d7879b          	addiw	a5,a5,13
    800082f4:	00c7f663          	bgeu	a5,a2,80008300 <__memset+0x1c8>
    800082f8:	00f507b3          	add	a5,a0,a5
    800082fc:	00b78023          	sb	a1,0(a5)
    80008300:	00813403          	ld	s0,8(sp)
    80008304:	01010113          	addi	sp,sp,16
    80008308:	00008067          	ret
    8000830c:	00b00693          	li	a3,11
    80008310:	e55ff06f          	j	80008164 <__memset+0x2c>
    80008314:	00300e93          	li	t4,3
    80008318:	ea5ff06f          	j	800081bc <__memset+0x84>
    8000831c:	00100e93          	li	t4,1
    80008320:	e9dff06f          	j	800081bc <__memset+0x84>
    80008324:	00000e93          	li	t4,0
    80008328:	e95ff06f          	j	800081bc <__memset+0x84>
    8000832c:	00000793          	li	a5,0
    80008330:	ef9ff06f          	j	80008228 <__memset+0xf0>
    80008334:	00200e93          	li	t4,2
    80008338:	e85ff06f          	j	800081bc <__memset+0x84>
    8000833c:	00400e93          	li	t4,4
    80008340:	e7dff06f          	j	800081bc <__memset+0x84>
    80008344:	00500e93          	li	t4,5
    80008348:	e75ff06f          	j	800081bc <__memset+0x84>
    8000834c:	00600e93          	li	t4,6
    80008350:	e6dff06f          	j	800081bc <__memset+0x84>

0000000080008354 <__memmove>:
    80008354:	ff010113          	addi	sp,sp,-16
    80008358:	00813423          	sd	s0,8(sp)
    8000835c:	01010413          	addi	s0,sp,16
    80008360:	0e060863          	beqz	a2,80008450 <__memmove+0xfc>
    80008364:	fff6069b          	addiw	a3,a2,-1
    80008368:	0006881b          	sext.w	a6,a3
    8000836c:	0ea5e863          	bltu	a1,a0,8000845c <__memmove+0x108>
    80008370:	00758713          	addi	a4,a1,7
    80008374:	00a5e7b3          	or	a5,a1,a0
    80008378:	40a70733          	sub	a4,a4,a0
    8000837c:	0077f793          	andi	a5,a5,7
    80008380:	00f73713          	sltiu	a4,a4,15
    80008384:	00174713          	xori	a4,a4,1
    80008388:	0017b793          	seqz	a5,a5
    8000838c:	00e7f7b3          	and	a5,a5,a4
    80008390:	10078863          	beqz	a5,800084a0 <__memmove+0x14c>
    80008394:	00900793          	li	a5,9
    80008398:	1107f463          	bgeu	a5,a6,800084a0 <__memmove+0x14c>
    8000839c:	0036581b          	srliw	a6,a2,0x3
    800083a0:	fff8081b          	addiw	a6,a6,-1
    800083a4:	02081813          	slli	a6,a6,0x20
    800083a8:	01d85893          	srli	a7,a6,0x1d
    800083ac:	00858813          	addi	a6,a1,8
    800083b0:	00058793          	mv	a5,a1
    800083b4:	00050713          	mv	a4,a0
    800083b8:	01088833          	add	a6,a7,a6
    800083bc:	0007b883          	ld	a7,0(a5)
    800083c0:	00878793          	addi	a5,a5,8
    800083c4:	00870713          	addi	a4,a4,8
    800083c8:	ff173c23          	sd	a7,-8(a4)
    800083cc:	ff0798e3          	bne	a5,a6,800083bc <__memmove+0x68>
    800083d0:	ff867713          	andi	a4,a2,-8
    800083d4:	02071793          	slli	a5,a4,0x20
    800083d8:	0207d793          	srli	a5,a5,0x20
    800083dc:	00f585b3          	add	a1,a1,a5
    800083e0:	40e686bb          	subw	a3,a3,a4
    800083e4:	00f507b3          	add	a5,a0,a5
    800083e8:	06e60463          	beq	a2,a4,80008450 <__memmove+0xfc>
    800083ec:	0005c703          	lbu	a4,0(a1)
    800083f0:	00e78023          	sb	a4,0(a5)
    800083f4:	04068e63          	beqz	a3,80008450 <__memmove+0xfc>
    800083f8:	0015c603          	lbu	a2,1(a1)
    800083fc:	00100713          	li	a4,1
    80008400:	00c780a3          	sb	a2,1(a5)
    80008404:	04e68663          	beq	a3,a4,80008450 <__memmove+0xfc>
    80008408:	0025c603          	lbu	a2,2(a1)
    8000840c:	00200713          	li	a4,2
    80008410:	00c78123          	sb	a2,2(a5)
    80008414:	02e68e63          	beq	a3,a4,80008450 <__memmove+0xfc>
    80008418:	0035c603          	lbu	a2,3(a1)
    8000841c:	00300713          	li	a4,3
    80008420:	00c781a3          	sb	a2,3(a5)
    80008424:	02e68663          	beq	a3,a4,80008450 <__memmove+0xfc>
    80008428:	0045c603          	lbu	a2,4(a1)
    8000842c:	00400713          	li	a4,4
    80008430:	00c78223          	sb	a2,4(a5)
    80008434:	00e68e63          	beq	a3,a4,80008450 <__memmove+0xfc>
    80008438:	0055c603          	lbu	a2,5(a1)
    8000843c:	00500713          	li	a4,5
    80008440:	00c782a3          	sb	a2,5(a5)
    80008444:	00e68663          	beq	a3,a4,80008450 <__memmove+0xfc>
    80008448:	0065c703          	lbu	a4,6(a1)
    8000844c:	00e78323          	sb	a4,6(a5)
    80008450:	00813403          	ld	s0,8(sp)
    80008454:	01010113          	addi	sp,sp,16
    80008458:	00008067          	ret
    8000845c:	02061713          	slli	a4,a2,0x20
    80008460:	02075713          	srli	a4,a4,0x20
    80008464:	00e587b3          	add	a5,a1,a4
    80008468:	f0f574e3          	bgeu	a0,a5,80008370 <__memmove+0x1c>
    8000846c:	02069613          	slli	a2,a3,0x20
    80008470:	02065613          	srli	a2,a2,0x20
    80008474:	fff64613          	not	a2,a2
    80008478:	00e50733          	add	a4,a0,a4
    8000847c:	00c78633          	add	a2,a5,a2
    80008480:	fff7c683          	lbu	a3,-1(a5)
    80008484:	fff78793          	addi	a5,a5,-1
    80008488:	fff70713          	addi	a4,a4,-1
    8000848c:	00d70023          	sb	a3,0(a4)
    80008490:	fec798e3          	bne	a5,a2,80008480 <__memmove+0x12c>
    80008494:	00813403          	ld	s0,8(sp)
    80008498:	01010113          	addi	sp,sp,16
    8000849c:	00008067          	ret
    800084a0:	02069713          	slli	a4,a3,0x20
    800084a4:	02075713          	srli	a4,a4,0x20
    800084a8:	00170713          	addi	a4,a4,1
    800084ac:	00e50733          	add	a4,a0,a4
    800084b0:	00050793          	mv	a5,a0
    800084b4:	0005c683          	lbu	a3,0(a1)
    800084b8:	00178793          	addi	a5,a5,1
    800084bc:	00158593          	addi	a1,a1,1
    800084c0:	fed78fa3          	sb	a3,-1(a5)
    800084c4:	fee798e3          	bne	a5,a4,800084b4 <__memmove+0x160>
    800084c8:	f89ff06f          	j	80008450 <__memmove+0xfc>

00000000800084cc <__putc>:
    800084cc:	fe010113          	addi	sp,sp,-32
    800084d0:	00813823          	sd	s0,16(sp)
    800084d4:	00113c23          	sd	ra,24(sp)
    800084d8:	02010413          	addi	s0,sp,32
    800084dc:	00050793          	mv	a5,a0
    800084e0:	fef40593          	addi	a1,s0,-17
    800084e4:	00100613          	li	a2,1
    800084e8:	00000513          	li	a0,0
    800084ec:	fef407a3          	sb	a5,-17(s0)
    800084f0:	fffff097          	auipc	ra,0xfffff
    800084f4:	b3c080e7          	jalr	-1220(ra) # 8000702c <console_write>
    800084f8:	01813083          	ld	ra,24(sp)
    800084fc:	01013403          	ld	s0,16(sp)
    80008500:	02010113          	addi	sp,sp,32
    80008504:	00008067          	ret

0000000080008508 <__getc>:
    80008508:	fe010113          	addi	sp,sp,-32
    8000850c:	00813823          	sd	s0,16(sp)
    80008510:	00113c23          	sd	ra,24(sp)
    80008514:	02010413          	addi	s0,sp,32
    80008518:	fe840593          	addi	a1,s0,-24
    8000851c:	00100613          	li	a2,1
    80008520:	00000513          	li	a0,0
    80008524:	fffff097          	auipc	ra,0xfffff
    80008528:	ae8080e7          	jalr	-1304(ra) # 8000700c <console_read>
    8000852c:	fe844503          	lbu	a0,-24(s0)
    80008530:	01813083          	ld	ra,24(sp)
    80008534:	01013403          	ld	s0,16(sp)
    80008538:	02010113          	addi	sp,sp,32
    8000853c:	00008067          	ret

0000000080008540 <console_handler>:
    80008540:	fe010113          	addi	sp,sp,-32
    80008544:	00813823          	sd	s0,16(sp)
    80008548:	00113c23          	sd	ra,24(sp)
    8000854c:	00913423          	sd	s1,8(sp)
    80008550:	02010413          	addi	s0,sp,32
    80008554:	14202773          	csrr	a4,scause
    80008558:	100027f3          	csrr	a5,sstatus
    8000855c:	0027f793          	andi	a5,a5,2
    80008560:	06079e63          	bnez	a5,800085dc <console_handler+0x9c>
    80008564:	00074c63          	bltz	a4,8000857c <console_handler+0x3c>
    80008568:	01813083          	ld	ra,24(sp)
    8000856c:	01013403          	ld	s0,16(sp)
    80008570:	00813483          	ld	s1,8(sp)
    80008574:	02010113          	addi	sp,sp,32
    80008578:	00008067          	ret
    8000857c:	0ff77713          	andi	a4,a4,255
    80008580:	00900793          	li	a5,9
    80008584:	fef712e3          	bne	a4,a5,80008568 <console_handler+0x28>
    80008588:	ffffe097          	auipc	ra,0xffffe
    8000858c:	6dc080e7          	jalr	1756(ra) # 80006c64 <plic_claim>
    80008590:	00a00793          	li	a5,10
    80008594:	00050493          	mv	s1,a0
    80008598:	02f50c63          	beq	a0,a5,800085d0 <console_handler+0x90>
    8000859c:	fc0506e3          	beqz	a0,80008568 <console_handler+0x28>
    800085a0:	00050593          	mv	a1,a0
    800085a4:	00001517          	auipc	a0,0x1
    800085a8:	e7c50513          	addi	a0,a0,-388 # 80009420 <CONSOLE_STATUS+0x410>
    800085ac:	fffff097          	auipc	ra,0xfffff
    800085b0:	afc080e7          	jalr	-1284(ra) # 800070a8 <__printf>
    800085b4:	01013403          	ld	s0,16(sp)
    800085b8:	01813083          	ld	ra,24(sp)
    800085bc:	00048513          	mv	a0,s1
    800085c0:	00813483          	ld	s1,8(sp)
    800085c4:	02010113          	addi	sp,sp,32
    800085c8:	ffffe317          	auipc	t1,0xffffe
    800085cc:	6d430067          	jr	1748(t1) # 80006c9c <plic_complete>
    800085d0:	fffff097          	auipc	ra,0xfffff
    800085d4:	3e0080e7          	jalr	992(ra) # 800079b0 <uartintr>
    800085d8:	fddff06f          	j	800085b4 <console_handler+0x74>
    800085dc:	00001517          	auipc	a0,0x1
    800085e0:	f4450513          	addi	a0,a0,-188 # 80009520 <digits+0x78>
    800085e4:	fffff097          	auipc	ra,0xfffff
    800085e8:	a68080e7          	jalr	-1432(ra) # 8000704c <panic>
	...
