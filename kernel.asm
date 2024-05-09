
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	9d813103          	ld	sp,-1576(sp) # 8000b9d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0b5060ef          	jal	ra,800068d0 <start>

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
    80001080:	5bd010ef          	jal	ra,80002e3c <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	8c8080e7          	jalr	-1848(ra) # 80002b34 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    syscall(PUTC, c);
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

void Sem::close() {
    closed = true;
}

Sem::~Sem() {
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00113423          	sd	ra,8(sp)
    800016b0:	00813023          	sd	s0,0(sp)
    800016b4:	01010413          	addi	s0,sp,16
    800016b8:	0000a797          	auipc	a5,0xa
    800016bc:	0c878793          	addi	a5,a5,200 # 8000b780 <_ZTV3Sem+0x10>
    800016c0:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    800016c4:	00850513          	addi	a0,a0,8
    800016c8:	00002097          	auipc	ra,0x2
    800016cc:	b70080e7          	jalr	-1168(ra) # 80003238 <_ZN10ThreadList4freeEv>
}
    800016d0:	00813083          	ld	ra,8(sp)
    800016d4:	00013403          	ld	s0,0(sp)
    800016d8:	01010113          	addi	sp,sp,16
    800016dc:	00008067          	ret

00000000800016e0 <_ZN3SemD0Ev>:
Sem::~Sem() {
    800016e0:	fe010113          	addi	sp,sp,-32
    800016e4:	00113c23          	sd	ra,24(sp)
    800016e8:	00813823          	sd	s0,16(sp)
    800016ec:	00913423          	sd	s1,8(sp)
    800016f0:	02010413          	addi	s0,sp,32
    800016f4:	00050493          	mv	s1,a0
}
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	fb0080e7          	jalr	-80(ra) # 800016a8 <_ZN3SemD1Ev>
    80001700:	00048513          	mv	a0,s1
    80001704:	00001097          	auipc	ra,0x1
    80001708:	c24080e7          	jalr	-988(ra) # 80002328 <_ZdlPv>
    8000170c:	01813083          	ld	ra,24(sp)
    80001710:	01013403          	ld	s0,16(sp)
    80001714:	00813483          	ld	s1,8(sp)
    80001718:	02010113          	addi	sp,sp,32
    8000171c:	00008067          	ret

0000000080001720 <_ZN3Sem4openEPPS_j>:
int Sem::open(Sem **handle, unsigned int init) {
    80001720:	fe010113          	addi	sp,sp,-32
    80001724:	00113c23          	sd	ra,24(sp)
    80001728:	00813823          	sd	s0,16(sp)
    8000172c:	00913423          	sd	s1,8(sp)
    80001730:	01213023          	sd	s2,0(sp)
    80001734:	02010413          	addi	s0,sp,32
    80001738:	00050493          	mv	s1,a0
    8000173c:	00058913          	mv	s2,a1
    *handle = new Sem(init);
    80001740:	02000513          	li	a0,32
    80001744:	00001097          	auipc	ra,0x1
    80001748:	bbc080e7          	jalr	-1092(ra) # 80002300 <_Znwm>
    int tryWait();
    void block();
    void unblock();

private:
    explicit Sem(unsigned init = 1) : value((int) init), closed(false) {}
    8000174c:	0000a797          	auipc	a5,0xa
    80001750:	03478793          	addi	a5,a5,52 # 8000b780 <_ZTV3Sem+0x10>
    80001754:	00f53023          	sd	a5,0(a0)
#ifndef thread_list
#define thread_list

#include "tcb.hpp"

class ThreadList {
    80001758:	00053423          	sd	zero,8(a0)
    8000175c:	00053823          	sd	zero,16(a0)
    80001760:	01252c23          	sw	s2,24(a0)
    80001764:	00050e23          	sb	zero,28(a0)
    80001768:	00a4b023          	sd	a0,0(s1)
    if (!(*handle)) return -1;
    8000176c:	02050063          	beqz	a0,8000178c <_ZN3Sem4openEPPS_j+0x6c>
    return 0;
    80001770:	00000513          	li	a0,0
}
    80001774:	01813083          	ld	ra,24(sp)
    80001778:	01013403          	ld	s0,16(sp)
    8000177c:	00813483          	ld	s1,8(sp)
    80001780:	00013903          	ld	s2,0(sp)
    80001784:	02010113          	addi	sp,sp,32
    80001788:	00008067          	ret
    if (!(*handle)) return -1;
    8000178c:	fff00513          	li	a0,-1
    80001790:	fe5ff06f          	j	80001774 <_ZN3Sem4openEPPS_j+0x54>

0000000080001794 <_ZN3Sem5closeEv>:
void Sem::close() {
    80001794:	ff010113          	addi	sp,sp,-16
    80001798:	00813423          	sd	s0,8(sp)
    8000179c:	01010413          	addi	s0,sp,16
    closed = true;
    800017a0:	00100793          	li	a5,1
    800017a4:	00f50e23          	sb	a5,28(a0)
}
    800017a8:	00813403          	ld	s0,8(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret

00000000800017b4 <_ZN3Sem5blockEv>:
    if (closed) return -1;
    if (++value <= 0) unblock();
    return 0;
}

void Sem::block() {
    800017b4:	fe010113          	addi	sp,sp,-32
    800017b8:	00113c23          	sd	ra,24(sp)
    800017bc:	00813823          	sd	s0,16(sp)
    800017c0:	00913423          	sd	s1,8(sp)
    800017c4:	01213023          	sd	s2,0(sp)
    800017c8:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    800017cc:	0000a917          	auipc	s2,0xa
    800017d0:	21c93903          	ld	s2,540(s2) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800017d4:	00093483          	ld	s1,0(s2)
    blocked_threads.push_back(old);
    800017d8:	00048593          	mv	a1,s1
    800017dc:	00850513          	addi	a0,a0,8
    800017e0:	00002097          	auipc	ra,0x2
    800017e4:	918080e7          	jalr	-1768(ra) # 800030f8 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	3cc080e7          	jalr	972(ra) # 80002bb4 <_ZN9Scheduler3getEv>
    800017f0:	00050593          	mv	a1,a0
    800017f4:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017f8:	00048513          	mv	a0,s1
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	6d4080e7          	jalr	1748(ra) # 80001ed0 <_ZN3TCB5yieldEPS_S0_>
}
    80001804:	01813083          	ld	ra,24(sp)
    80001808:	01013403          	ld	s0,16(sp)
    8000180c:	00813483          	ld	s1,8(sp)
    80001810:	00013903          	ld	s2,0(sp)
    80001814:	02010113          	addi	sp,sp,32
    80001818:	00008067          	ret

000000008000181c <_ZN3Sem4waitEv>:
    if (closed) return -1;
    8000181c:	01c54783          	lbu	a5,28(a0)
    80001820:	06079063          	bnez	a5,80001880 <_ZN3Sem4waitEv+0x64>
int Sem::wait() {
    80001824:	fe010113          	addi	sp,sp,-32
    80001828:	00113c23          	sd	ra,24(sp)
    8000182c:	00813823          	sd	s0,16(sp)
    80001830:	00913423          	sd	s1,8(sp)
    80001834:	02010413          	addi	s0,sp,32
    80001838:	00050493          	mv	s1,a0
    if (--value < 0) {
    8000183c:	01852783          	lw	a5,24(a0)
    80001840:	fff7879b          	addiw	a5,a5,-1
    80001844:	00f52c23          	sw	a5,24(a0)
    80001848:	02079713          	slli	a4,a5,0x20
    8000184c:	00074e63          	bltz	a4,80001868 <_ZN3Sem4waitEv+0x4c>
    return 0;
    80001850:	00000513          	li	a0,0
}
    80001854:	01813083          	ld	ra,24(sp)
    80001858:	01013403          	ld	s0,16(sp)
    8000185c:	00813483          	ld	s1,8(sp)
    80001860:	02010113          	addi	sp,sp,32
    80001864:	00008067          	ret
        block();
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	f4c080e7          	jalr	-180(ra) # 800017b4 <_ZN3Sem5blockEv>
        if (closed) return -2; /// thread released because Semaphore is closed
    80001870:	01c4c783          	lbu	a5,28(s1)
    80001874:	00079a63          	bnez	a5,80001888 <_ZN3Sem4waitEv+0x6c>
    return 0;
    80001878:	00000513          	li	a0,0
    8000187c:	fd9ff06f          	j	80001854 <_ZN3Sem4waitEv+0x38>
    if (closed) return -1;
    80001880:	fff00513          	li	a0,-1
}
    80001884:	00008067          	ret
        if (closed) return -2; /// thread released because Semaphore is closed
    80001888:	ffe00513          	li	a0,-2
    8000188c:	fc9ff06f          	j	80001854 <_ZN3Sem4waitEv+0x38>

0000000080001890 <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00113423          	sd	ra,8(sp)
    80001898:	00813023          	sd	s0,0(sp)
    8000189c:	01010413          	addi	s0,sp,16
    TCB* thread = blocked_threads.get_first();
    800018a0:	00850513          	addi	a0,a0,8
    800018a4:	00002097          	auipc	ra,0x2
    800018a8:	800080e7          	jalr	-2048(ra) # 800030a4 <_ZN10ThreadList9get_firstEv>
    Scheduler::put(thread);
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	2a8080e7          	jalr	680(ra) # 80002b54 <_ZN9Scheduler3putEP3TCB>
}
    800018b4:	00813083          	ld	ra,8(sp)
    800018b8:	00013403          	ld	s0,0(sp)
    800018bc:	01010113          	addi	sp,sp,16
    800018c0:	00008067          	ret

00000000800018c4 <_ZN3Sem6signalEv>:
    if (closed) return -1;
    800018c4:	01c54783          	lbu	a5,28(a0)
    800018c8:	04079663          	bnez	a5,80001914 <_ZN3Sem6signalEv+0x50>
    if (++value <= 0) unblock();
    800018cc:	01852783          	lw	a5,24(a0)
    800018d0:	0017879b          	addiw	a5,a5,1
    800018d4:	0007871b          	sext.w	a4,a5
    800018d8:	00f52c23          	sw	a5,24(a0)
    800018dc:	00e05663          	blez	a4,800018e8 <_ZN3Sem6signalEv+0x24>
    return 0;
    800018e0:	00000513          	li	a0,0
}
    800018e4:	00008067          	ret
int Sem::signal() {
    800018e8:	ff010113          	addi	sp,sp,-16
    800018ec:	00113423          	sd	ra,8(sp)
    800018f0:	00813023          	sd	s0,0(sp)
    800018f4:	01010413          	addi	s0,sp,16
    if (++value <= 0) unblock();
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	f98080e7          	jalr	-104(ra) # 80001890 <_ZN3Sem7unblockEv>
    return 0;
    80001900:	00000513          	li	a0,0
}
    80001904:	00813083          	ld	ra,8(sp)
    80001908:	00013403          	ld	s0,0(sp)
    8000190c:	01010113          	addi	sp,sp,16
    80001910:	00008067          	ret
    if (closed) return -1;
    80001914:	fff00513          	li	a0,-1
    80001918:	00008067          	ret

000000008000191c <_ZN3Sem9timedWaitEm>:

int Sem::timedWait(time_t time) {
    8000191c:	ff010113          	addi	sp,sp,-16
    80001920:	00813423          	sd	s0,8(sp)
    80001924:	01010413          	addi	s0,sp,16
    return 0;
}
    80001928:	00000513          	li	a0,0
    8000192c:	00813403          	ld	s0,8(sp)
    80001930:	01010113          	addi	sp,sp,16
    80001934:	00008067          	ret

0000000080001938 <_ZN3Sem7tryWaitEv>:

int Sem::tryWait() {
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00813423          	sd	s0,8(sp)
    80001940:	01010413          	addi	s0,sp,16
    return 0;
}
    80001944:	00000513          	li	a0,0
    80001948:	00813403          	ld	s0,8(sp)
    8000194c:	01010113          	addi	sp,sp,16
    80001950:	00008067          	ret

0000000080001954 <_Z13workerForeverPv>:
    void* address = mem_alloc(50);
    MemoryAllocator::print();
    mem_free(address);
    MemoryAllocator::print();
}
void workerForever(void *args) {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00813423          	sd	s0,8(sp)
    8000195c:	01010413          	addi	s0,sp,16
    while (1);
    80001960:	0000006f          	j	80001960 <_Z13workerForeverPv+0xc>

0000000080001964 <_Z7workerAPv>:
}
void workerA(void *args) {
    80001964:	ff010113          	addi	sp,sp,-16
    80001968:	00113423          	sd	ra,8(sp)
    8000196c:	00813023          	sd	s0,0(sp)
    80001970:	01010413          	addi	s0,sp,16
    while (1) {
        __putc('A');
    80001974:	04100513          	li	a0,65
    80001978:	00007097          	auipc	ra,0x7
    8000197c:	014080e7          	jalr	20(ra) # 8000898c <__putc>
        time_sleep(1);
    80001980:	00100513          	li	a0,1
    80001984:	00000097          	auipc	ra,0x0
    80001988:	c50080e7          	jalr	-944(ra) # 800015d4 <_Z10time_sleepm>
    while (1) {
    8000198c:	fe9ff06f          	j	80001974 <_Z7workerAPv+0x10>

0000000080001990 <_Z7workerBPv>:
    }
}
void workerB(void *args) {
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00113423          	sd	ra,8(sp)
    80001998:	00813023          	sd	s0,0(sp)
    8000199c:	01010413          	addi	s0,sp,16
    while (1) {
        __putc('B');
    800019a0:	04200513          	li	a0,66
    800019a4:	00007097          	auipc	ra,0x7
    800019a8:	fe8080e7          	jalr	-24(ra) # 8000898c <__putc>
        time_sleep(2);
    800019ac:	00200513          	li	a0,2
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	c24080e7          	jalr	-988(ra) # 800015d4 <_Z10time_sleepm>
    while (1) {
    800019b8:	fe9ff06f          	j	800019a0 <_Z7workerBPv+0x10>

00000000800019bc <printNumber>:
extern "C" void printNumber(uint64 num) {
    800019bc:	fd010113          	addi	sp,sp,-48
    800019c0:	02113423          	sd	ra,40(sp)
    800019c4:	02813023          	sd	s0,32(sp)
    800019c8:	00913c23          	sd	s1,24(sp)
    800019cc:	01213823          	sd	s2,16(sp)
    800019d0:	01313423          	sd	s3,8(sp)
    800019d4:	03010413          	addi	s0,sp,48
    800019d8:	00050913          	mv	s2,a0
    __putc('\n');
    800019dc:	00a00513          	li	a0,10
    800019e0:	00007097          	auipc	ra,0x7
    800019e4:	fac080e7          	jalr	-84(ra) # 8000898c <__putc>
    __putc('N');
    800019e8:	04e00513          	li	a0,78
    800019ec:	00007097          	auipc	ra,0x7
    800019f0:	fa0080e7          	jalr	-96(ra) # 8000898c <__putc>
    __putc(':');
    800019f4:	03a00513          	li	a0,58
    800019f8:	00007097          	auipc	ra,0x7
    800019fc:	f94080e7          	jalr	-108(ra) # 8000898c <__putc>
    __putc(' ');
    80001a00:	02000513          	li	a0,32
    80001a04:	00007097          	auipc	ra,0x7
    80001a08:	f88080e7          	jalr	-120(ra) # 8000898c <__putc>
    if (!num) __putc('0');
    80001a0c:	00090863          	beqz	s2,80001a1c <printNumber+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001a10:	00000993          	li	s3,0
    80001a14:	00000493          	li	s1,0
    80001a18:	01c0006f          	j	80001a34 <printNumber+0x78>
    if (!num) __putc('0');
    80001a1c:	03000513          	li	a0,48
    80001a20:	00007097          	auipc	ra,0x7
    80001a24:	f6c080e7          	jalr	-148(ra) # 8000898c <__putc>
    80001a28:	fe9ff06f          	j	80001a10 <printNumber+0x54>
        num /= 10;
    80001a2c:	00a00793          	li	a5,10
    80001a30:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001a34:	02090463          	beqz	s2,80001a5c <printNumber+0xa0>
        num2 *= 10;
    80001a38:	00249793          	slli	a5,s1,0x2
    80001a3c:	009784b3          	add	s1,a5,s1
    80001a40:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001a44:	00a00493          	li	s1,10
    80001a48:	029974b3          	remu	s1,s2,s1
    80001a4c:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001a50:	fc049ee3          	bnez	s1,80001a2c <printNumber+0x70>
    80001a54:	00198993          	addi	s3,s3,1
    80001a58:	fd5ff06f          	j	80001a2c <printNumber+0x70>
    while (num2) {
    80001a5c:	02048063          	beqz	s1,80001a7c <printNumber+0xc0>
        __putc(num2 % 10 + '0');
    80001a60:	00a00913          	li	s2,10
    80001a64:	0324f533          	remu	a0,s1,s2
    80001a68:	03050513          	addi	a0,a0,48
    80001a6c:	00007097          	auipc	ra,0x7
    80001a70:	f20080e7          	jalr	-224(ra) # 8000898c <__putc>
        num2 /= 10;
    80001a74:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001a78:	fe5ff06f          	j	80001a5c <printNumber+0xa0>
    while (zero_count--) __putc('0');
    80001a7c:	fff98493          	addi	s1,s3,-1
    80001a80:	00098c63          	beqz	s3,80001a98 <printNumber+0xdc>
    80001a84:	03000513          	li	a0,48
    80001a88:	00007097          	auipc	ra,0x7
    80001a8c:	f04080e7          	jalr	-252(ra) # 8000898c <__putc>
    80001a90:	00048993          	mv	s3,s1
    80001a94:	fe9ff06f          	j	80001a7c <printNumber+0xc0>
}
    80001a98:	02813083          	ld	ra,40(sp)
    80001a9c:	02013403          	ld	s0,32(sp)
    80001aa0:	01813483          	ld	s1,24(sp)
    80001aa4:	01013903          	ld	s2,16(sp)
    80001aa8:	00813983          	ld	s3,8(sp)
    80001aac:	03010113          	addi	sp,sp,48
    80001ab0:	00008067          	ret

0000000080001ab4 <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    80001ab4:	fe010113          	addi	sp,sp,-32
    80001ab8:	00113c23          	sd	ra,24(sp)
    80001abc:	00813823          	sd	s0,16(sp)
    80001ac0:	00913423          	sd	s1,8(sp)
    80001ac4:	01213023          	sd	s2,0(sp)
    80001ac8:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001acc:	00001097          	auipc	ra,0x1
    80001ad0:	fc4080e7          	jalr	-60(ra) # 80002a90 <_ZN15MemoryAllocator5printEv>
    void *address = MemoryAllocator::mem_alloc(1);
    80001ad4:	00100513          	li	a0,1
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	c60080e7          	jalr	-928(ra) # 80002738 <_ZN15MemoryAllocator9mem_allocEm>
    80001ae0:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	fac080e7          	jalr	-84(ra) # 80002a90 <_ZN15MemoryAllocator5printEv>
    int s1 = MemoryAllocator::mem_free(address);
    80001aec:	00048513          	mv	a0,s1
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	e34080e7          	jalr	-460(ra) # 80002924 <_ZN15MemoryAllocator8mem_freeEPv>
    80001af8:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	f94080e7          	jalr	-108(ra) # 80002a90 <_ZN15MemoryAllocator5printEv>
    int s2 = MemoryAllocator::mem_free(address);
    80001b04:	00048513          	mv	a0,s1
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	e1c080e7          	jalr	-484(ra) # 80002924 <_ZN15MemoryAllocator8mem_freeEPv>
    80001b10:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001b14:	00001097          	auipc	ra,0x1
    80001b18:	f7c080e7          	jalr	-132(ra) # 80002a90 <_ZN15MemoryAllocator5printEv>
    __putc('\n');
    80001b1c:	00a00513          	li	a0,10
    80001b20:	00007097          	auipc	ra,0x7
    80001b24:	e6c080e7          	jalr	-404(ra) # 8000898c <__putc>
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    80001b28:	02090263          	beqz	s2,80001b4c <_Z19testMemoryAllocatorv+0x98>
    if (s2 == -3) __putc('G'); /// same
    80001b2c:	ffd00793          	li	a5,-3
    80001b30:	02f48663          	beq	s1,a5,80001b5c <_Z19testMemoryAllocatorv+0xa8>
}
    80001b34:	01813083          	ld	ra,24(sp)
    80001b38:	01013403          	ld	s0,16(sp)
    80001b3c:	00813483          	ld	s1,8(sp)
    80001b40:	00013903          	ld	s2,0(sp)
    80001b44:	02010113          	addi	sp,sp,32
    80001b48:	00008067          	ret
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    80001b4c:	04700513          	li	a0,71
    80001b50:	00007097          	auipc	ra,0x7
    80001b54:	e3c080e7          	jalr	-452(ra) # 8000898c <__putc>
    80001b58:	fd5ff06f          	j	80001b2c <_Z19testMemoryAllocatorv+0x78>
    if (s2 == -3) __putc('G'); /// same
    80001b5c:	04700513          	li	a0,71
    80001b60:	00007097          	auipc	ra,0x7
    80001b64:	e2c080e7          	jalr	-468(ra) # 8000898c <__putc>
}
    80001b68:	fcdff06f          	j	80001b34 <_Z19testMemoryAllocatorv+0x80>

0000000080001b6c <_Z11testMemoryCv>:
void testMemoryC() {
    80001b6c:	fe010113          	addi	sp,sp,-32
    80001b70:	00113c23          	sd	ra,24(sp)
    80001b74:	00813823          	sd	s0,16(sp)
    80001b78:	00913423          	sd	s1,8(sp)
    80001b7c:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001b80:	00001097          	auipc	ra,0x1
    80001b84:	f10080e7          	jalr	-240(ra) # 80002a90 <_ZN15MemoryAllocator5printEv>
    void* address = mem_alloc(50);
    80001b88:	03200513          	li	a0,50
    80001b8c:	fffff097          	auipc	ra,0xfffff
    80001b90:	6cc080e7          	jalr	1740(ra) # 80001258 <_Z9mem_allocm>
    80001b94:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001b98:	00001097          	auipc	ra,0x1
    80001b9c:	ef8080e7          	jalr	-264(ra) # 80002a90 <_ZN15MemoryAllocator5printEv>
    mem_free(address);
    80001ba0:	00048513          	mv	a0,s1
    80001ba4:	fffff097          	auipc	ra,0xfffff
    80001ba8:	708080e7          	jalr	1800(ra) # 800012ac <_Z8mem_freePv>
    MemoryAllocator::print();
    80001bac:	00001097          	auipc	ra,0x1
    80001bb0:	ee4080e7          	jalr	-284(ra) # 80002a90 <_ZN15MemoryAllocator5printEv>
}
    80001bb4:	01813083          	ld	ra,24(sp)
    80001bb8:	01013403          	ld	s0,16(sp)
    80001bbc:	00813483          	ld	s1,8(sp)
    80001bc0:	02010113          	addi	sp,sp,32
    80001bc4:	00008067          	ret

0000000080001bc8 <_Z11testThreadsv>:
    }
}
void testThreads() {
    80001bc8:	fd010113          	addi	sp,sp,-48
    80001bcc:	02113423          	sd	ra,40(sp)
    80001bd0:	02813023          	sd	s0,32(sp)
    80001bd4:	03010413          	addi	s0,sp,48
    thread_t threads[3];

    thread_create(&threads[0], nullptr, nullptr);
    80001bd8:	00000613          	li	a2,0
    80001bdc:	00000593          	li	a1,0
    80001be0:	fd840513          	addi	a0,s0,-40
    80001be4:	fffff097          	auipc	ra,0xfffff
    80001be8:	714080e7          	jalr	1812(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001bec:	fd843703          	ld	a4,-40(s0)
    80001bf0:	0000a797          	auipc	a5,0xa
    80001bf4:	df87b783          	ld	a5,-520(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bf8:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], workerA, nullptr);
    80001bfc:	00000613          	li	a2,0
    80001c00:	00000597          	auipc	a1,0x0
    80001c04:	d6458593          	addi	a1,a1,-668 # 80001964 <_Z7workerAPv>
    80001c08:	fe040513          	addi	a0,s0,-32
    80001c0c:	fffff097          	auipc	ra,0xfffff
    80001c10:	6ec080e7          	jalr	1772(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], workerB, nullptr);
    80001c14:	00000613          	li	a2,0
    80001c18:	00000597          	auipc	a1,0x0
    80001c1c:	d7858593          	addi	a1,a1,-648 # 80001990 <_Z7workerBPv>
    80001c20:	fe840513          	addi	a0,s0,-24
    80001c24:	fffff097          	auipc	ra,0xfffff
    80001c28:	6d4080e7          	jalr	1748(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], workerForever, nullptr);
    80001c2c:	00000613          	li	a2,0
    80001c30:	00000597          	auipc	a1,0x0
    80001c34:	d2458593          	addi	a1,a1,-732 # 80001954 <_Z13workerForeverPv>
    80001c38:	ff040513          	addi	a0,s0,-16
    80001c3c:	fffff097          	auipc	ra,0xfffff
    80001c40:	6bc080e7          	jalr	1724(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001c44:	00200793          	li	a5,2
    80001c48:	1007a073          	csrs	sstatus,a5
}
    80001c4c:	00c0006f          	j	80001c58 <_Z11testThreadsv+0x90>

    /// Enable software interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    while (!threads[1] -> is_finished() || !threads[2] -> is_finished()) thread_dispatch();
    80001c50:	fffff097          	auipc	ra,0xfffff
    80001c54:	77c080e7          	jalr	1916(ra) # 800013cc <_Z15thread_dispatchv>
    80001c58:	fe043503          	ld	a0,-32(s0)
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	5e8080e7          	jalr	1512(ra) # 80002244 <_ZNK3TCB11is_finishedEv>
    80001c64:	fe0506e3          	beqz	a0,80001c50 <_Z11testThreadsv+0x88>
    80001c68:	fe843503          	ld	a0,-24(s0)
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	5d8080e7          	jalr	1496(ra) # 80002244 <_ZNK3TCB11is_finishedEv>
    80001c74:	fc050ee3          	beqz	a0,80001c50 <_Z11testThreadsv+0x88>
}
    80001c78:	02813083          	ld	ra,40(sp)
    80001c7c:	02013403          	ld	s0,32(sp)
    80001c80:	03010113          	addi	sp,sp,48
    80001c84:	00008067          	ret

0000000080001c88 <_Z13testSemaphorev>:
void testSemaphore() {
    80001c88:	fd010113          	addi	sp,sp,-48
    80001c8c:	02113423          	sd	ra,40(sp)
    80001c90:	02813023          	sd	s0,32(sp)
    80001c94:	03010413          	addi	s0,sp,48
    sem_t semaphore1;
    sem_open(&semaphore1, 1);
    80001c98:	00100593          	li	a1,1
    80001c9c:	fe840513          	addi	a0,s0,-24
    80001ca0:	fffff097          	auipc	ra,0xfffff
    80001ca4:	768080e7          	jalr	1896(ra) # 80001408 <_Z8sem_openPP3Semj>

    thread_t thread1, thread2, main;
    thread_create(&main, nullptr, nullptr);
    80001ca8:	00000613          	li	a2,0
    80001cac:	00000593          	li	a1,0
    80001cb0:	fd040513          	addi	a0,s0,-48
    80001cb4:	fffff097          	auipc	ra,0xfffff
    80001cb8:	644080e7          	jalr	1604(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    80001cbc:	0000a797          	auipc	a5,0xa
    80001cc0:	d2c7b783          	ld	a5,-724(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cc4:	fd043703          	ld	a4,-48(s0)
    80001cc8:	00e7b023          	sd	a4,0(a5)
    thread_create(&thread1, workerA, (void*) semaphore1);
    80001ccc:	fe843603          	ld	a2,-24(s0)
    80001cd0:	00000597          	auipc	a1,0x0
    80001cd4:	c9458593          	addi	a1,a1,-876 # 80001964 <_Z7workerAPv>
    80001cd8:	fe040513          	addi	a0,s0,-32
    80001cdc:	fffff097          	auipc	ra,0xfffff
    80001ce0:	61c080e7          	jalr	1564(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&thread2, workerB, (void*) semaphore1);
    80001ce4:	fe843603          	ld	a2,-24(s0)
    80001ce8:	00000597          	auipc	a1,0x0
    80001cec:	ca858593          	addi	a1,a1,-856 # 80001990 <_Z7workerBPv>
    80001cf0:	fd840513          	addi	a0,s0,-40
    80001cf4:	fffff097          	auipc	ra,0xfffff
    80001cf8:	604080e7          	jalr	1540(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    80001cfc:	00c0006f          	j	80001d08 <_Z13testSemaphorev+0x80>

    while (!thread1 -> is_finished() || !thread2 -> is_finished()) thread_dispatch();
    80001d00:	fffff097          	auipc	ra,0xfffff
    80001d04:	6cc080e7          	jalr	1740(ra) # 800013cc <_Z15thread_dispatchv>
    80001d08:	fe043503          	ld	a0,-32(s0)
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	538080e7          	jalr	1336(ra) # 80002244 <_ZNK3TCB11is_finishedEv>
    80001d14:	fe0506e3          	beqz	a0,80001d00 <_Z13testSemaphorev+0x78>
    80001d18:	fd843503          	ld	a0,-40(s0)
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	528080e7          	jalr	1320(ra) # 80002244 <_ZNK3TCB11is_finishedEv>
    80001d24:	fc050ee3          	beqz	a0,80001d00 <_Z13testSemaphorev+0x78>

    sem_close(semaphore1);
    80001d28:	fe843503          	ld	a0,-24(s0)
    80001d2c:	fffff097          	auipc	ra,0xfffff
    80001d30:	72c080e7          	jalr	1836(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001d34:	02813083          	ld	ra,40(sp)
    80001d38:	02013403          	ld	s0,32(sp)
    80001d3c:	03010113          	addi	sp,sp,48
    80001d40:	00008067          	ret

0000000080001d44 <_Z15userMainWrapperPv>:
void userMain();
void userMainWrapper(void *args) {
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00113423          	sd	ra,8(sp)
    80001d4c:	00813023          	sd	s0,0(sp)
    80001d50:	01010413          	addi	s0,sp,16
    userMain();
    80001d54:	00004097          	auipc	ra,0x4
    80001d58:	070080e7          	jalr	112(ra) # 80005dc4 <_Z8userMainv>
}
    80001d5c:	00813083          	ld	ra,8(sp)
    80001d60:	00013403          	ld	s0,0(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_Z10initializev>:
void initialize() {
    80001d6c:	ff010113          	addi	sp,sp,-16
    80001d70:	00113423          	sd	ra,8(sp)
    80001d74:	00813023          	sd	s0,0(sp)
    80001d78:	01010413          	addi	s0,sp,16
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001d7c:	0000a797          	auipc	a5,0xa
    80001d80:	c547b783          	ld	a5,-940(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001d84:	10579073          	csrw	stvec,a5
    /// Initialize Memory Allocator
    MemoryAllocator::initialize();
    80001d88:	00001097          	auipc	ra,0x1
    80001d8c:	acc080e7          	jalr	-1332(ra) # 80002854 <_ZN15MemoryAllocator10initializeEv>
}
    80001d90:	00813083          	ld	ra,8(sp)
    80001d94:	00013403          	ld	s0,0(sp)
    80001d98:	01010113          	addi	sp,sp,16
    80001d9c:	00008067          	ret

0000000080001da0 <_Z4testv>:
void test() {
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00113423          	sd	ra,8(sp)
    80001da8:	00813023          	sd	s0,0(sp)
    80001dac:	01010413          	addi	s0,sp,16
    /// Test Memory Allocation
//    testMemoryAllocator();
//    testMemoryC();
    /// Test Threads
    testThreads();
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	e18080e7          	jalr	-488(ra) # 80001bc8 <_Z11testThreadsv>
//    testSemaphore();
    /// Test Everything
//    static thread_t umain;
//    thread_create(&umain, userMainWrapper, nullptr);
//    while (!umain -> is_finished()) thread_dispatch();
}
    80001db8:	00813083          	ld	ra,8(sp)
    80001dbc:	00013403          	ld	s0,0(sp)
    80001dc0:	01010113          	addi	sp,sp,16
    80001dc4:	00008067          	ret

0000000080001dc8 <main>:


int main() {
    80001dc8:	ff010113          	addi	sp,sp,-16
    80001dcc:	00113423          	sd	ra,8(sp)
    80001dd0:	00813023          	sd	s0,0(sp)
    80001dd4:	01010413          	addi	s0,sp,16
    initialize();
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	f94080e7          	jalr	-108(ra) # 80001d6c <_Z10initializev>
    test();
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	fc0080e7          	jalr	-64(ra) # 80001da0 <_Z4testv>
    __putc('\n');
    80001de8:	00a00513          	li	a0,10
    80001dec:	00007097          	auipc	ra,0x7
    80001df0:	ba0080e7          	jalr	-1120(ra) # 8000898c <__putc>
    return 0;
    80001df4:	00000513          	li	a0,0
    80001df8:	00813083          	ld	ra,8(sp)
    80001dfc:	00013403          	ld	s0,0(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <_ZN3Con4putcEc>:
#include "../h/console.hpp"

void Con::putc(char c) {
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00813423          	sd	s0,8(sp)
    80001e10:	01010413          	addi	s0,sp,16

}
    80001e14:	00813403          	ld	s0,8(sp)
    80001e18:	01010113          	addi	sp,sp,16
    80001e1c:	00008067          	ret

0000000080001e20 <_ZN3Con4getcEv>:

char Con::getc() {
    80001e20:	ff010113          	addi	sp,sp,-16
    80001e24:	00813423          	sd	s0,8(sp)
    80001e28:	01010413          	addi	s0,sp,16
    return 0;
}
    80001e2c:	00000513          	li	a0,0
    80001e30:	00813403          	ld	s0,8(sp)
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret

0000000080001e3c <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80001e3c:	08068463          	beqz	a3,80001ec4 <_ZN3TCBC1EPFvPvES0_S0_+0x88>
    80001e40:	000017b7          	lui	a5,0x1
    80001e44:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001e48:	00f687b3          	add	a5,a3,a5
    context = {
    80001e4c:	00000717          	auipc	a4,0x0
    80001e50:	24c70713          	addi	a4,a4,588 # 80002098 <_ZN3TCB16wrapper_functionEv>
    80001e54:	00e53423          	sd	a4,8(a0)
    80001e58:	00f53823          	sd	a5,16(a0)
    };
    id = cnt++;
    80001e5c:	0000a717          	auipc	a4,0xa
    80001e60:	be470713          	addi	a4,a4,-1052 # 8000ba40 <_ZN3TCB3cntE>
    80001e64:	00072783          	lw	a5,0(a4)
    80001e68:	0017881b          	addiw	a6,a5,1
    80001e6c:	01072023          	sw	a6,0(a4)
    80001e70:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80001e74:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80001e78:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80001e7c:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80001e80:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80001e84:	00200793          	li	a5,2
    80001e88:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80001e8c:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80001e90:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80001e94:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80001e98:	02058a63          	beqz	a1,80001ecc <_ZN3TCBC1EPFvPvES0_S0_+0x90>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    80001e9c:	ff010113          	addi	sp,sp,-16
    80001ea0:	00113423          	sd	ra,8(sp)
    80001ea4:	00813023          	sd	s0,0(sp)
    80001ea8:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    80001eac:	00001097          	auipc	ra,0x1
    80001eb0:	ca8080e7          	jalr	-856(ra) # 80002b54 <_ZN9Scheduler3putEP3TCB>
}
    80001eb4:	00813083          	ld	ra,8(sp)
    80001eb8:	00013403          	ld	s0,0(sp)
    80001ebc:	01010113          	addi	sp,sp,16
    80001ec0:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80001ec4:	00000793          	li	a5,0
    80001ec8:	f85ff06f          	j	80001e4c <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    80001ecc:	00008067          	ret

0000000080001ed0 <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80001ed0:	fe010113          	addi	sp,sp,-32
    80001ed4:	00113c23          	sd	ra,24(sp)
    80001ed8:	00813823          	sd	s0,16(sp)
    80001edc:	00913423          	sd	s1,8(sp)
    80001ee0:	01213023          	sd	s2,0(sp)
    80001ee4:	02010413          	addi	s0,sp,32
    80001ee8:	00050493          	mv	s1,a0
    80001eec:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80001ef0:	fffff097          	auipc	ra,0xfffff
    80001ef4:	218080e7          	jalr	536(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80001ef8:	01248a63          	beq	s1,s2,80001f0c <_ZN3TCB5yieldEPS_S0_+0x3c>
    80001efc:	00890593          	addi	a1,s2,8
    80001f00:	00848513          	addi	a0,s1,8
    80001f04:	fffff097          	auipc	ra,0xfffff
    80001f08:	304080e7          	jalr	772(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80001f0c:	fffff097          	auipc	ra,0xfffff
    80001f10:	27c080e7          	jalr	636(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    80001f14:	01813083          	ld	ra,24(sp)
    80001f18:	01013403          	ld	s0,16(sp)
    80001f1c:	00813483          	ld	s1,8(sp)
    80001f20:	00013903          	ld	s2,0(sp)
    80001f24:	02010113          	addi	sp,sp,32
    80001f28:	00008067          	ret

0000000080001f2c <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001f2c:	fe010113          	addi	sp,sp,-32
    80001f30:	00113c23          	sd	ra,24(sp)
    80001f34:	00813823          	sd	s0,16(sp)
    80001f38:	00913423          	sd	s1,8(sp)
    80001f3c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001f40:	0000a497          	auipc	s1,0xa
    80001f44:	b084b483          	ld	s1,-1272(s1) # 8000ba48 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80001f48:	0184a783          	lw	a5,24(s1)
    80001f4c:	02078e63          	beqz	a5,80001f88 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	c64080e7          	jalr	-924(ra) # 80002bb4 <_ZN9Scheduler3getEv>
    80001f58:	00050593          	mv	a1,a0
    80001f5c:	0000a797          	auipc	a5,0xa
    80001f60:	aea7b623          	sd	a0,-1300(a5) # 8000ba48 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    80001f64:	00a48863          	beq	s1,a0,80001f74 <_ZN3TCB8dispatchEv+0x48>
    80001f68:	00048513          	mv	a0,s1
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	f64080e7          	jalr	-156(ra) # 80001ed0 <_ZN3TCB5yieldEPS_S0_>
}
    80001f74:	01813083          	ld	ra,24(sp)
    80001f78:	01013403          	ld	s0,16(sp)
    80001f7c:	00813483          	ld	s1,8(sp)
    80001f80:	02010113          	addi	sp,sp,32
    80001f84:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80001f88:	00048513          	mv	a0,s1
    80001f8c:	00001097          	auipc	ra,0x1
    80001f90:	bc8080e7          	jalr	-1080(ra) # 80002b54 <_ZN9Scheduler3putEP3TCB>
    80001f94:	fbdff06f          	j	80001f50 <_ZN3TCB8dispatchEv+0x24>

0000000080001f98 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00813423          	sd	s0,8(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80001fa4:	04053503          	ld	a0,64(a0)
    80001fa8:	00813403          	ld	s0,8(sp)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80001fb4:	ff010113          	addi	sp,sp,-16
    80001fb8:	00813423          	sd	s0,8(sp)
    80001fbc:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001fc0:	04b53023          	sd	a1,64(a0)
}
    80001fc4:	00813403          	ld	s0,8(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80001fdc:	04b53823          	sd	a1,80(a0)
}
    80001fe0:	00813403          	ld	s0,8(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00813423          	sd	s0,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80001ff8:	05053503          	ld	a0,80(a0)
    80001ffc:	00813403          	ld	s0,8(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret

0000000080002008 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00813423          	sd	s0,8(sp)
    80002010:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80002014:	04b53423          	sd	a1,72(a0)
}
    80002018:	00813403          	ld	s0,8(sp)
    8000201c:	01010113          	addi	sp,sp,16
    80002020:	00008067          	ret

0000000080002024 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80002024:	ff010113          	addi	sp,sp,-16
    80002028:	00813423          	sd	s0,8(sp)
    8000202c:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80002030:	04853503          	ld	a0,72(a0)
    80002034:	00813403          	ld	s0,8(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00813423          	sd	s0,8(sp)
    80002048:	01010413          	addi	s0,sp,16
    this -> status = stat;
    8000204c:	00b52c23          	sw	a1,24(a0)
}
    80002050:	00813403          	ld	s0,8(sp)
    80002054:	01010113          	addi	sp,sp,16
    80002058:	00008067          	ret

000000008000205c <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    8000205c:	ff010113          	addi	sp,sp,-16
    80002060:	00113423          	sd	ra,8(sp)
    80002064:	00813023          	sd	s0,0(sp)
    80002068:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    8000206c:	00400593          	li	a1,4
    80002070:	0000a517          	auipc	a0,0xa
    80002074:	9d853503          	ld	a0,-1576(a0) # 8000ba48 <_ZN3TCB7runningE>
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	fc8080e7          	jalr	-56(ra) # 80002040 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80002080:	00000097          	auipc	ra,0x0
    80002084:	eac080e7          	jalr	-340(ra) # 80001f2c <_ZN3TCB8dispatchEv>
}
    80002088:	00813083          	ld	ra,8(sp)
    8000208c:	00013403          	ld	s0,0(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret

0000000080002098 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80002098:	ff010113          	addi	sp,sp,-16
    8000209c:	00113423          	sd	ra,8(sp)
    800020a0:	00813023          	sd	s0,0(sp)
    800020a4:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    800020a8:	00001097          	auipc	ra,0x1
    800020ac:	d74080e7          	jalr	-652(ra) # 80002e1c <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    800020b0:	0000a717          	auipc	a4,0xa
    800020b4:	99873703          	ld	a4,-1640(a4) # 8000ba48 <_ZN3TCB7runningE>
    800020b8:	02073783          	ld	a5,32(a4)
    800020bc:	00078663          	beqz	a5,800020c8 <_ZN3TCB16wrapper_functionEv+0x30>
    800020c0:	02873503          	ld	a0,40(a4)
    800020c4:	000780e7          	jalr	a5
    thread_exit();
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	f94080e7          	jalr	-108(ra) # 8000205c <_ZN3TCB11thread_exitEv>
}
    800020d0:	00813083          	ld	ra,8(sp)
    800020d4:	00013403          	ld	s0,0(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <_ZN3TCB5startEv>:

void TCB::start() {
    800020e0:	fe010113          	addi	sp,sp,-32
    800020e4:	00113c23          	sd	ra,24(sp)
    800020e8:	00813823          	sd	s0,16(sp)
    800020ec:	00913423          	sd	s1,8(sp)
    800020f0:	02010413          	addi	s0,sp,32
    800020f4:	00050493          	mv	s1,a0
    Scheduler::put(this);
    800020f8:	00001097          	auipc	ra,0x1
    800020fc:	a5c080e7          	jalr	-1444(ra) # 80002b54 <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    80002100:	0000a797          	auipc	a5,0xa
    80002104:	9487b783          	ld	a5,-1720(a5) # 8000ba48 <_ZN3TCB7runningE>
    80002108:	00078c63          	beqz	a5,80002120 <_ZN3TCB5startEv+0x40>
}
    8000210c:	01813083          	ld	ra,24(sp)
    80002110:	01013403          	ld	s0,16(sp)
    80002114:	00813483          	ld	s1,8(sp)
    80002118:	02010113          	addi	sp,sp,32
    8000211c:	00008067          	ret
    if (!running) running = this;
    80002120:	0000a797          	auipc	a5,0xa
    80002124:	9297b423          	sd	s1,-1752(a5) # 8000ba48 <_ZN3TCB7runningE>
}
    80002128:	fe5ff06f          	j	8000210c <_ZN3TCB5startEv+0x2c>

000000008000212c <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00113423          	sd	ra,8(sp)
    80002134:	00813023          	sd	s0,0(sp)
    80002138:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	9f8080e7          	jalr	-1544(ra) # 80002b34 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002144:	00000097          	auipc	ra,0x0
    80002148:	5f4080e7          	jalr	1524(ra) # 80002738 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000214c:	00813083          	ld	ra,8(sp)
    80002150:	00013403          	ld	s0,0(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	7b8080e7          	jalr	1976(ra) # 80002924 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002174:	00813083          	ld	ra,8(sp)
    80002178:	00013403          	ld	s0,0(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80002184:	fc010113          	addi	sp,sp,-64
    80002188:	02113c23          	sd	ra,56(sp)
    8000218c:	02813823          	sd	s0,48(sp)
    80002190:	02913423          	sd	s1,40(sp)
    80002194:	03213023          	sd	s2,32(sp)
    80002198:	01313c23          	sd	s3,24(sp)
    8000219c:	01413823          	sd	s4,16(sp)
    800021a0:	01513423          	sd	s5,8(sp)
    800021a4:	04010413          	addi	s0,sp,64
    800021a8:	00050913          	mv	s2,a0
    800021ac:	00058993          	mv	s3,a1
    800021b0:	00060a13          	mv	s4,a2
    800021b4:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    800021b8:	05800513          	li	a0,88
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	f70080e7          	jalr	-144(ra) # 8000212c <_ZN3TCBnwEm>
    800021c4:	00050493          	mv	s1,a0
    800021c8:	000a8693          	mv	a3,s5
    800021cc:	000a0613          	mv	a2,s4
    800021d0:	00098593          	mv	a1,s3
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	c68080e7          	jalr	-920(ra) # 80001e3c <_ZN3TCBC1EPFvPvES0_S0_>
    800021dc:	0200006f          	j	800021fc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    800021e0:	00050913          	mv	s2,a0
    800021e4:	00048513          	mv	a0,s1
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	f74080e7          	jalr	-140(ra) # 8000215c <_ZN3TCBdlEPv>
    800021f0:	00090513          	mv	a0,s2
    800021f4:	0000b097          	auipc	ra,0xb
    800021f8:	9b4080e7          	jalr	-1612(ra) # 8000cba8 <_Unwind_Resume>
    800021fc:	00993023          	sd	s1,0(s2)
}
    80002200:	00000513          	li	a0,0
    80002204:	03813083          	ld	ra,56(sp)
    80002208:	03013403          	ld	s0,48(sp)
    8000220c:	02813483          	ld	s1,40(sp)
    80002210:	02013903          	ld	s2,32(sp)
    80002214:	01813983          	ld	s3,24(sp)
    80002218:	01013a03          	ld	s4,16(sp)
    8000221c:	00813a83          	ld	s5,8(sp)
    80002220:	04010113          	addi	sp,sp,64
    80002224:	00008067          	ret

0000000080002228 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    80002228:	ff010113          	addi	sp,sp,-16
    8000222c:	00813423          	sd	s0,8(sp)
    80002230:	01010413          	addi	s0,sp,16
    return time_slice;
}
    80002234:	03853503          	ld	a0,56(a0)
    80002238:	00813403          	ld	s0,8(sp)
    8000223c:	01010113          	addi	sp,sp,16
    80002240:	00008067          	ret

0000000080002244 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    80002244:	ff010113          	addi	sp,sp,-16
    80002248:	00813423          	sd	s0,8(sp)
    8000224c:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80002250:	01852503          	lw	a0,24(a0)
    80002254:	ffc50513          	addi	a0,a0,-4
}
    80002258:	00153513          	seqz	a0,a0
    8000225c:	00813403          	ld	s0,8(sp)
    80002260:	01010113          	addi	sp,sp,16
    80002264:	00008067          	ret

0000000080002268 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    80002268:	fe010113          	addi	sp,sp,-32
    8000226c:	00113c23          	sd	ra,24(sp)
    80002270:	00813823          	sd	s0,16(sp)
    80002274:	00913423          	sd	s1,8(sp)
    80002278:	02010413          	addi	s0,sp,32
    8000227c:	00050493          	mv	s1,a0
    80002280:	00009797          	auipc	a5,0x9
    80002284:	55878793          	addi	a5,a5,1368 # 8000b7d8 <_ZTV6Thread+0x10>
    80002288:	00f53023          	sd	a5,0(a0)
    myHandle -> set_status(TCB::FINISHED);
    8000228c:	00400593          	li	a1,4
    80002290:	00853503          	ld	a0,8(a0)
    80002294:	00000097          	auipc	ra,0x0
    80002298:	dac080e7          	jalr	-596(ra) # 80002040 <_ZN3TCB10set_statusENS_6StatusE>
    delete myHandle;
    8000229c:	0084b503          	ld	a0,8(s1)
    800022a0:	00050663          	beqz	a0,800022ac <_ZN6ThreadD1Ev+0x44>
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	eb8080e7          	jalr	-328(ra) # 8000215c <_ZN3TCBdlEPv>
}
    800022ac:	01813083          	ld	ra,24(sp)
    800022b0:	01013403          	ld	s0,16(sp)
    800022b4:	00813483          	ld	s1,8(sp)
    800022b8:	02010113          	addi	sp,sp,32
    800022bc:	00008067          	ret

00000000800022c0 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800022c0:	00009797          	auipc	a5,0x9
    800022c4:	54078793          	addi	a5,a5,1344 # 8000b800 <_ZTV9Semaphore+0x10>
    800022c8:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    800022cc:	00853503          	ld	a0,8(a0)
    800022d0:	02050663          	beqz	a0,800022fc <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00113423          	sd	ra,8(sp)
    800022dc:	00813023          	sd	s0,0(sp)
    800022e0:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    800022e4:	fffff097          	auipc	ra,0xfffff
    800022e8:	174080e7          	jalr	372(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    800022ec:	00813083          	ld	ra,8(sp)
    800022f0:	00013403          	ld	s0,0(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret
    800022fc:	00008067          	ret

0000000080002300 <_Znwm>:
void* operator new(size_t size){
    80002300:	ff010113          	addi	sp,sp,-16
    80002304:	00113423          	sd	ra,8(sp)
    80002308:	00813023          	sd	s0,0(sp)
    8000230c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	f48080e7          	jalr	-184(ra) # 80001258 <_Z9mem_allocm>
}
    80002318:	00813083          	ld	ra,8(sp)
    8000231c:	00013403          	ld	s0,0(sp)
    80002320:	01010113          	addi	sp,sp,16
    80002324:	00008067          	ret

0000000080002328 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00113423          	sd	ra,8(sp)
    80002330:	00813023          	sd	s0,0(sp)
    80002334:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002338:	fffff097          	auipc	ra,0xfffff
    8000233c:	f74080e7          	jalr	-140(ra) # 800012ac <_Z8mem_freePv>
}
    80002340:	00813083          	ld	ra,8(sp)
    80002344:	00013403          	ld	s0,0(sp)
    80002348:	01010113          	addi	sp,sp,16
    8000234c:	00008067          	ret

0000000080002350 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002350:	fe010113          	addi	sp,sp,-32
    80002354:	00113c23          	sd	ra,24(sp)
    80002358:	00813823          	sd	s0,16(sp)
    8000235c:	00913423          	sd	s1,8(sp)
    80002360:	02010413          	addi	s0,sp,32
    80002364:	00050493          	mv	s1,a0
}
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	f00080e7          	jalr	-256(ra) # 80002268 <_ZN6ThreadD1Ev>
    80002370:	00048513          	mv	a0,s1
    80002374:	00000097          	auipc	ra,0x0
    80002378:	fb4080e7          	jalr	-76(ra) # 80002328 <_ZdlPv>
    8000237c:	01813083          	ld	ra,24(sp)
    80002380:	01013403          	ld	s0,16(sp)
    80002384:	00813483          	ld	s1,8(sp)
    80002388:	02010113          	addi	sp,sp,32
    8000238c:	00008067          	ret

0000000080002390 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002390:	fe010113          	addi	sp,sp,-32
    80002394:	00113c23          	sd	ra,24(sp)
    80002398:	00813823          	sd	s0,16(sp)
    8000239c:	00913423          	sd	s1,8(sp)
    800023a0:	02010413          	addi	s0,sp,32
    800023a4:	00050493          	mv	s1,a0
}
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	f18080e7          	jalr	-232(ra) # 800022c0 <_ZN9SemaphoreD1Ev>
    800023b0:	00048513          	mv	a0,s1
    800023b4:	00000097          	auipc	ra,0x0
    800023b8:	f74080e7          	jalr	-140(ra) # 80002328 <_ZdlPv>
    800023bc:	01813083          	ld	ra,24(sp)
    800023c0:	01013403          	ld	s0,16(sp)
    800023c4:	00813483          	ld	s1,8(sp)
    800023c8:	02010113          	addi	sp,sp,32
    800023cc:	00008067          	ret

00000000800023d0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00113423          	sd	ra,8(sp)
    800023d8:	00813023          	sd	s0,0(sp)
    800023dc:	01010413          	addi	s0,sp,16
    800023e0:	00009797          	auipc	a5,0x9
    800023e4:	3f878793          	addi	a5,a5,1016 # 8000b7d8 <_ZTV6Thread+0x10>
    800023e8:	00f53023          	sd	a5,0(a0)
    800023ec:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    800023f0:	00850513          	addi	a0,a0,8
    800023f4:	fffff097          	auipc	ra,0xfffff
    800023f8:	f04080e7          	jalr	-252(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800023fc:	00813083          	ld	ra,8(sp)
    80002400:	00013403          	ld	s0,0(sp)
    80002404:	01010113          	addi	sp,sp,16
    80002408:	00008067          	ret

000000008000240c <_ZN6Thread5startEv>:
int Thread::start() {
    8000240c:	ff010113          	addi	sp,sp,-16
    80002410:	00113423          	sd	ra,8(sp)
    80002414:	00813023          	sd	s0,0(sp)
    80002418:	01010413          	addi	s0,sp,16
    myHandle -> start();
    8000241c:	00853503          	ld	a0,8(a0)
    80002420:	00000097          	auipc	ra,0x0
    80002424:	cc0080e7          	jalr	-832(ra) # 800020e0 <_ZN3TCB5startEv>
}
    80002428:	00000513          	li	a0,0
    8000242c:	00813083          	ld	ra,8(sp)
    80002430:	00013403          	ld	s0,0(sp)
    80002434:	01010113          	addi	sp,sp,16
    80002438:	00008067          	ret

000000008000243c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00113423          	sd	ra,8(sp)
    80002444:	00813023          	sd	s0,0(sp)
    80002448:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000244c:	fffff097          	auipc	ra,0xfffff
    80002450:	f80080e7          	jalr	-128(ra) # 800013cc <_Z15thread_dispatchv>
}
    80002454:	00813083          	ld	ra,8(sp)
    80002458:	00013403          	ld	s0,0(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00113423          	sd	ra,8(sp)
    8000246c:	00813023          	sd	s0,0(sp)
    80002470:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80002474:	fffff097          	auipc	ra,0xfffff
    80002478:	160080e7          	jalr	352(ra) # 800015d4 <_Z10time_sleepm>
}
    8000247c:	00000513          	li	a0,0
    80002480:	00813083          	ld	ra,8(sp)
    80002484:	00013403          	ld	s0,0(sp)
    80002488:	01010113          	addi	sp,sp,16
    8000248c:	00008067          	ret

0000000080002490 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr) {
    80002490:	ff010113          	addi	sp,sp,-16
    80002494:	00813423          	sd	s0,8(sp)
    80002498:	01010413          	addi	s0,sp,16
    8000249c:	00009797          	auipc	a5,0x9
    800024a0:	33c78793          	addi	a5,a5,828 # 8000b7d8 <_ZTV6Thread+0x10>
    800024a4:	00f53023          	sd	a5,0(a0)
    800024a8:	00053423          	sd	zero,8(a0)
}
    800024ac:	00813403          	ld	s0,8(sp)
    800024b0:	01010113          	addi	sp,sp,16
    800024b4:	00008067          	ret

00000000800024b8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    800024b8:	ff010113          	addi	sp,sp,-16
    800024bc:	00113423          	sd	ra,8(sp)
    800024c0:	00813023          	sd	s0,0(sp)
    800024c4:	01010413          	addi	s0,sp,16
    800024c8:	00009797          	auipc	a5,0x9
    800024cc:	33878793          	addi	a5,a5,824 # 8000b800 <_ZTV9Semaphore+0x10>
    800024d0:	00f53023          	sd	a5,0(a0)
    800024d4:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    800024d8:	00850513          	addi	a0,a0,8
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	f2c080e7          	jalr	-212(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    800024e4:	00813083          	ld	ra,8(sp)
    800024e8:	00013403          	ld	s0,0(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    800024f4:	00853503          	ld	a0,8(a0)
    800024f8:	02050663          	beqz	a0,80002524 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00113423          	sd	ra,8(sp)
    80002504:	00813023          	sd	s0,0(sp)
    80002508:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    8000250c:	fffff097          	auipc	ra,0xfffff
    80002510:	f98080e7          	jalr	-104(ra) # 800014a4 <_Z8sem_waitP3Sem>
    return -1;
}
    80002514:	00813083          	ld	ra,8(sp)
    80002518:	00013403          	ld	s0,0(sp)
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret
    return -1;
    80002524:	fff00513          	li	a0,-1
}
    80002528:	00008067          	ret

000000008000252c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    8000252c:	00853503          	ld	a0,8(a0)
    80002530:	02050663          	beqz	a0,8000255c <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00113423          	sd	ra,8(sp)
    8000253c:	00813023          	sd	s0,0(sp)
    80002540:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002544:	fffff097          	auipc	ra,0xfffff
    80002548:	fac080e7          	jalr	-84(ra) # 800014f0 <_Z10sem_signalP3Sem>
    return -1;
}
    8000254c:	00813083          	ld	ra,8(sp)
    80002550:	00013403          	ld	s0,0(sp)
    80002554:	01010113          	addi	sp,sp,16
    80002558:	00008067          	ret
    return -1;
    8000255c:	fff00513          	li	a0,-1
}
    80002560:	00008067          	ret

0000000080002564 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    80002564:	ff010113          	addi	sp,sp,-16
    80002568:	00813423          	sd	s0,8(sp)
    8000256c:	01010413          	addi	s0,sp,16
    return 0;
}
    80002570:	00000513          	li	a0,0
    80002574:	00813403          	ld	s0,8(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret

0000000080002580 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80002580:	ff010113          	addi	sp,sp,-16
    80002584:	00813423          	sd	s0,8(sp)
    80002588:	01010413          	addi	s0,sp,16
    return 0;
}
    8000258c:	00000513          	li	a0,0
    80002590:	00813403          	ld	s0,8(sp)
    80002594:	01010113          	addi	sp,sp,16
    80002598:	00008067          	ret

000000008000259c <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    8000259c:	ff010113          	addi	sp,sp,-16
    800025a0:	00813423          	sd	s0,8(sp)
    800025a4:	01010413          	addi	s0,sp,16

}
    800025a8:	00813403          	ld	s0,8(sp)
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00008067          	ret

00000000800025b4 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    800025b4:	fe010113          	addi	sp,sp,-32
    800025b8:	00113c23          	sd	ra,24(sp)
    800025bc:	00813823          	sd	s0,16(sp)
    800025c0:	00913423          	sd	s1,8(sp)
    800025c4:	02010413          	addi	s0,sp,32
    800025c8:	00050493          	mv	s1,a0
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	ec4080e7          	jalr	-316(ra) # 80002490 <_ZN6ThreadC1Ev>
    800025d4:	00009797          	auipc	a5,0x9
    800025d8:	1d478793          	addi	a5,a5,468 # 8000b7a8 <_ZTV14PeriodicThread+0x10>
    800025dc:	00f4b023          	sd	a5,0(s1)

}
    800025e0:	01813083          	ld	ra,24(sp)
    800025e4:	01013403          	ld	s0,16(sp)
    800025e8:	00813483          	ld	s1,8(sp)
    800025ec:	02010113          	addi	sp,sp,32
    800025f0:	00008067          	ret

00000000800025f4 <_ZN7Console4getcEv>:

char Console::getc() {
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00113423          	sd	ra,8(sp)
    800025fc:	00813023          	sd	s0,0(sp)
    80002600:	01010413          	addi	s0,sp,16
    return ::getc();
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	01c080e7          	jalr	28(ra) # 80001620 <_Z4getcv>
}
    8000260c:	00813083          	ld	ra,8(sp)
    80002610:	00013403          	ld	s0,0(sp)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret

000000008000261c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000261c:	ff010113          	addi	sp,sp,-16
    80002620:	00113423          	sd	ra,8(sp)
    80002624:	00813023          	sd	s0,0(sp)
    80002628:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	040080e7          	jalr	64(ra) # 8000166c <_Z4putcc>
}
    80002634:	00813083          	ld	ra,8(sp)
    80002638:	00013403          	ld	s0,0(sp)
    8000263c:	01010113          	addi	sp,sp,16
    80002640:	00008067          	ret

0000000080002644 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002644:	ff010113          	addi	sp,sp,-16
    80002648:	00813423          	sd	s0,8(sp)
    8000264c:	01010413          	addi	s0,sp,16
    80002650:	00813403          	ld	s0,8(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret

000000008000265c <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00813423          	sd	s0,8(sp)
    80002664:	01010413          	addi	s0,sp,16
    80002668:	00813403          	ld	s0,8(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret

0000000080002674 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00113423          	sd	ra,8(sp)
    8000267c:	00813023          	sd	s0,0(sp)
    80002680:	01010413          	addi	s0,sp,16
    80002684:	00009797          	auipc	a5,0x9
    80002688:	12478793          	addi	a5,a5,292 # 8000b7a8 <_ZTV14PeriodicThread+0x10>
    8000268c:	00f53023          	sd	a5,0(a0)
    80002690:	00000097          	auipc	ra,0x0
    80002694:	bd8080e7          	jalr	-1064(ra) # 80002268 <_ZN6ThreadD1Ev>
    80002698:	00813083          	ld	ra,8(sp)
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_ZN14PeriodicThreadD0Ev>:
    800026a8:	fe010113          	addi	sp,sp,-32
    800026ac:	00113c23          	sd	ra,24(sp)
    800026b0:	00813823          	sd	s0,16(sp)
    800026b4:	00913423          	sd	s1,8(sp)
    800026b8:	02010413          	addi	s0,sp,32
    800026bc:	00050493          	mv	s1,a0
    800026c0:	00009797          	auipc	a5,0x9
    800026c4:	0e878793          	addi	a5,a5,232 # 8000b7a8 <_ZTV14PeriodicThread+0x10>
    800026c8:	00f53023          	sd	a5,0(a0)
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	b9c080e7          	jalr	-1124(ra) # 80002268 <_ZN6ThreadD1Ev>
    800026d4:	00048513          	mv	a0,s1
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	c50080e7          	jalr	-944(ra) # 80002328 <_ZdlPv>
    800026e0:	01813083          	ld	ra,24(sp)
    800026e4:	01013403          	ld	s0,16(sp)
    800026e8:	00813483          	ld	s1,8(sp)
    800026ec:	02010113          	addi	sp,sp,32
    800026f0:	00008067          	ret

00000000800026f4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    800026f4:	ff010113          	addi	sp,sp,-16
    800026f8:	00813423          	sd	s0,8(sp)
    800026fc:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002700:	00853783          	ld	a5,8(a0)
    80002704:	02078463          	beqz	a5,8000272c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002708:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    8000270c:	01053783          	ld	a5,16(a0)
    80002710:	00078863          	beqz	a5,80002720 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80002714:	00060463          	beqz	a2,8000271c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002718:	00853583          	ld	a1,8(a0)
    8000271c:	00b7b423          	sd	a1,8(a5)
}
    80002720:	00813403          	ld	s0,8(sp)
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret
    else freeSegHead = nextSeg;
    8000272c:	00009797          	auipc	a5,0x9
    80002730:	32b7b623          	sd	a1,812(a5) # 8000ba58 <_ZN15MemoryAllocator11freeSegHeadE>
    80002734:	fd9ff06f          	j	8000270c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

0000000080002738 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002738:	fe010113          	addi	sp,sp,-32
    8000273c:	00113c23          	sd	ra,24(sp)
    80002740:	00813823          	sd	s0,16(sp)
    80002744:	00913423          	sd	s1,8(sp)
    80002748:	01213023          	sd	s2,0(sp)
    8000274c:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80002750:	0e050e63          	beqz	a0,8000284c <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    80002754:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    80002758:	00009497          	auipc	s1,0x9
    8000275c:	3004b483          	ld	s1,768(s1) # 8000ba58 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80002760:	0a048e63          	beqz	s1,8000281c <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    80002764:	0004b783          	ld	a5,0(s1)
    80002768:	0527e463          	bltu	a5,s2,800027b0 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    8000276c:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    80002770:	01700713          	li	a4,23
    80002774:	04f76263          	bltu	a4,a5,800027b8 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    80002778:	00000613          	li	a2,0
    8000277c:	0104b583          	ld	a1,16(s1)
    80002780:	00048513          	mv	a0,s1
    80002784:	00000097          	auipc	ra,0x0
    80002788:	f70080e7          	jalr	-144(ra) # 800026f4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    8000278c:	00009797          	auipc	a5,0x9
    80002790:	2d47b783          	ld	a5,724(a5) # 8000ba60 <_ZN15MemoryAllocator11usedSegHeadE>
    80002794:	04078863          	beqz	a5,800027e4 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80002798:	0497fa63          	bgeu	a5,s1,800027ec <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    8000279c:	00078713          	mv	a4,a5
    800027a0:	0107b783          	ld	a5,16(a5)
    800027a4:	04078663          	beqz	a5,800027f0 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    800027a8:	fe97eae3          	bltu	a5,s1,8000279c <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800027ac:	0440006f          	j	800027f0 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    800027b0:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    800027b4:	fadff06f          	j	80002760 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800027b8:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    800027bc:	0084b703          	ld	a4,8(s1)
    800027c0:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    800027c4:	0104b703          	ld	a4,16(s1)
    800027c8:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    800027cc:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    800027d0:	00100613          	li	a2,1
    800027d4:	00048513          	mv	a0,s1
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	f1c080e7          	jalr	-228(ra) # 800026f4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    800027e0:	fadff06f          	j	8000278c <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    800027e4:	00078713          	mv	a4,a5
    800027e8:	0080006f          	j	800027f0 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    800027ec:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    800027f0:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    800027f4:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800027f8:	04070063          	beqz	a4,80002838 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    800027fc:	01073783          	ld	a5,16(a4)
    80002800:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002804:	02070e63          	beqz	a4,80002840 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002808:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    8000280c:	0104b783          	ld	a5,16(s1)
    80002810:	00078463          	beqz	a5,80002818 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80002814:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002818:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    8000281c:	00048513          	mv	a0,s1
    80002820:	01813083          	ld	ra,24(sp)
    80002824:	01013403          	ld	s0,16(sp)
    80002828:	00813483          	ld	s1,8(sp)
    8000282c:	00013903          	ld	s2,0(sp)
    80002830:	02010113          	addi	sp,sp,32
    80002834:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002838:	00070793          	mv	a5,a4
    8000283c:	fc5ff06f          	j	80002800 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    80002840:	00009797          	auipc	a5,0x9
    80002844:	2297b023          	sd	s1,544(a5) # 8000ba60 <_ZN15MemoryAllocator11usedSegHeadE>
    80002848:	fc5ff06f          	j	8000280c <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    8000284c:	00000493          	li	s1,0
    80002850:	fcdff06f          	j	8000281c <_ZN15MemoryAllocator9mem_allocEm+0xe4>

0000000080002854 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    80002854:	00009797          	auipc	a5,0x9
    80002858:	2147b783          	ld	a5,532(a5) # 8000ba68 <_ZN15MemoryAllocator8instanceE>
    8000285c:	00078463          	beqz	a5,80002864 <_ZN15MemoryAllocator10initializeEv+0x10>
    80002860:	00008067          	ret
void MemoryAllocator::initialize() {
    80002864:	fe010113          	addi	sp,sp,-32
    80002868:	00113c23          	sd	ra,24(sp)
    8000286c:	00813823          	sd	s0,16(sp)
    80002870:	00913423          	sd	s1,8(sp)
    80002874:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80002878:	00009797          	auipc	a5,0x9
    8000287c:	1487b783          	ld	a5,328(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002880:	0007b783          	ld	a5,0(a5)
    80002884:	00009497          	auipc	s1,0x9
    80002888:	1d448493          	addi	s1,s1,468 # 8000ba58 <_ZN15MemoryAllocator11freeSegHeadE>
    8000288c:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80002890:	00009717          	auipc	a4,0x9
    80002894:	16073703          	ld	a4,352(a4) # 8000b9f0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002898:	00073703          	ld	a4,0(a4)
    8000289c:	40f70733          	sub	a4,a4,a5
    800028a0:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800028a4:	0004b783          	ld	a5,0(s1)
    800028a8:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800028ac:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    800028b0:	00100513          	li	a0,1
    800028b4:	00000097          	auipc	ra,0x0
    800028b8:	e84080e7          	jalr	-380(ra) # 80002738 <_ZN15MemoryAllocator9mem_allocEm>
    800028bc:	00a4b823          	sd	a0,16(s1)
}
    800028c0:	01813083          	ld	ra,24(sp)
    800028c4:	01013403          	ld	s0,16(sp)
    800028c8:	00813483          	ld	s1,8(sp)
    800028cc:	02010113          	addi	sp,sp,32
    800028d0:	00008067          	ret

00000000800028d4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    800028d4:	ff010113          	addi	sp,sp,-16
    800028d8:	00813423          	sd	s0,8(sp)
    800028dc:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    800028e0:	01053783          	ld	a5,16(a0)
    800028e4:	00078863          	beqz	a5,800028f4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800028e8:	00053703          	ld	a4,0(a0)
    800028ec:	00e506b3          	add	a3,a0,a4
    800028f0:	00d78863          	beq	a5,a3,80002900 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    800028f4:	00813403          	ld	s0,8(sp)
    800028f8:	01010113          	addi	sp,sp,16
    800028fc:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002900:	0007b683          	ld	a3,0(a5)
    80002904:	00d70733          	add	a4,a4,a3
    80002908:	01870713          	addi	a4,a4,24
    8000290c:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002910:	0107b783          	ld	a5,16(a5)
    80002914:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002918:	fc078ee3          	beqz	a5,800028f4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    8000291c:	00a7b423          	sd	a0,8(a5)
}
    80002920:	fd5ff06f          	j	800028f4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002924 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002924:	14050263          	beqz	a0,80002a68 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80002928:	fd010113          	addi	sp,sp,-48
    8000292c:	02113423          	sd	ra,40(sp)
    80002930:	02813023          	sd	s0,32(sp)
    80002934:	00913c23          	sd	s1,24(sp)
    80002938:	01213823          	sd	s2,16(sp)
    8000293c:	01313423          	sd	s3,8(sp)
    80002940:	03010413          	addi	s0,sp,48
    80002944:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002948:	00009797          	auipc	a5,0x9
    8000294c:	0787b783          	ld	a5,120(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002950:	0007b783          	ld	a5,0(a5)
    80002954:	10f56e63          	bltu	a0,a5,80002a70 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    80002958:	00009797          	auipc	a5,0x9
    8000295c:	0987b783          	ld	a5,152(a5) # 8000b9f0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002960:	0007b783          	ld	a5,0(a5)
    80002964:	10a7ea63          	bltu	a5,a0,80002a78 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    80002968:	00009797          	auipc	a5,0x9
    8000296c:	0f87b783          	ld	a5,248(a5) # 8000ba60 <_ZN15MemoryAllocator11usedSegHeadE>
    80002970:	10078863          	beqz	a5,80002a80 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80002974:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002978:	00078863          	beqz	a5,80002988 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    8000297c:	08978e63          	beq	a5,s1,80002a18 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002980:	0107b783          	ld	a5,16(a5)
    80002984:	ff5ff06f          	j	80002978 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80002988:	00000793          	li	a5,0
    if (!found) return -3;
    8000298c:	0e078e63          	beqz	a5,80002a88 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    80002990:	00000613          	li	a2,0
    80002994:	ff893583          	ld	a1,-8(s2)
    80002998:	00048513          	mv	a0,s1
    8000299c:	00000097          	auipc	ra,0x0
    800029a0:	d58080e7          	jalr	-680(ra) # 800026f4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    800029a4:	00009797          	auipc	a5,0x9
    800029a8:	0b47b783          	ld	a5,180(a5) # 8000ba58 <_ZN15MemoryAllocator11freeSegHeadE>
    800029ac:	06078a63          	beqz	a5,80002a20 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    800029b0:	08f4e463          	bltu	s1,a5,80002a38 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    800029b4:	00078993          	mv	s3,a5
    800029b8:	0107b783          	ld	a5,16(a5)
    800029bc:	00078463          	beqz	a5,800029c4 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    800029c0:	fe97eae3          	bltu	a5,s1,800029b4 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    800029c4:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    800029c8:	0109b783          	ld	a5,16(s3)
    800029cc:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    800029d0:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    800029d4:	ff893783          	ld	a5,-8(s2)
    800029d8:	00078463          	beqz	a5,800029e0 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    800029dc:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    800029e0:	00048513          	mv	a0,s1
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	ef0080e7          	jalr	-272(ra) # 800028d4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    800029ec:	00098513          	mv	a0,s3
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	ee4080e7          	jalr	-284(ra) # 800028d4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800029f8:	00000513          	li	a0,0
}
    800029fc:	02813083          	ld	ra,40(sp)
    80002a00:	02013403          	ld	s0,32(sp)
    80002a04:	01813483          	ld	s1,24(sp)
    80002a08:	01013903          	ld	s2,16(sp)
    80002a0c:	00813983          	ld	s3,8(sp)
    80002a10:	03010113          	addi	sp,sp,48
    80002a14:	00008067          	ret
            found = true;
    80002a18:	00100793          	li	a5,1
    80002a1c:	f71ff06f          	j	8000298c <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002a20:	00009797          	auipc	a5,0x9
    80002a24:	0297bc23          	sd	s1,56(a5) # 8000ba58 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002a28:	fe093c23          	sd	zero,-8(s2)
    80002a2c:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002a30:	00000513          	li	a0,0
    80002a34:	fc9ff06f          	j	800029fc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80002a38:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80002a3c:	00009797          	auipc	a5,0x9
    80002a40:	01c78793          	addi	a5,a5,28 # 8000ba58 <_ZN15MemoryAllocator11freeSegHeadE>
    80002a44:	0007b703          	ld	a4,0(a5)
    80002a48:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80002a4c:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80002a50:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80002a54:	00048513          	mv	a0,s1
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	e7c080e7          	jalr	-388(ra) # 800028d4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002a60:	00000513          	li	a0,0
    80002a64:	f99ff06f          	j	800029fc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002a68:	fff00513          	li	a0,-1
}
    80002a6c:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002a70:	fff00513          	li	a0,-1
    80002a74:	f89ff06f          	j	800029fc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80002a78:	fff00513          	li	a0,-1
    80002a7c:	f81ff06f          	j	800029fc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    80002a80:	ffe00513          	li	a0,-2
    80002a84:	f79ff06f          	j	800029fc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    80002a88:	ffd00513          	li	a0,-3
    80002a8c:	f71ff06f          	j	800029fc <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

0000000080002a90 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002a90:	fe010113          	addi	sp,sp,-32
    80002a94:	00113c23          	sd	ra,24(sp)
    80002a98:	00813823          	sd	s0,16(sp)
    80002a9c:	00913423          	sd	s1,8(sp)
    80002aa0:	02010413          	addi	s0,sp,32
    __putc('\n');
    80002aa4:	00a00513          	li	a0,10
    80002aa8:	00006097          	auipc	ra,0x6
    80002aac:	ee4080e7          	jalr	-284(ra) # 8000898c <__putc>
    __putc('M');
    80002ab0:	04d00513          	li	a0,77
    80002ab4:	00006097          	auipc	ra,0x6
    80002ab8:	ed8080e7          	jalr	-296(ra) # 8000898c <__putc>
    __putc(':');
    80002abc:	03a00513          	li	a0,58
    80002ac0:	00006097          	auipc	ra,0x6
    80002ac4:	ecc080e7          	jalr	-308(ra) # 8000898c <__putc>
    __putc(' ');
    80002ac8:	02000513          	li	a0,32
    80002acc:	00006097          	auipc	ra,0x6
    80002ad0:	ec0080e7          	jalr	-320(ra) # 8000898c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80002ad4:	00009497          	auipc	s1,0x9
    80002ad8:	f844b483          	ld	s1,-124(s1) # 8000ba58 <_ZN15MemoryAllocator11freeSegHeadE>
    80002adc:	00048c63          	beqz	s1,80002af4 <_ZN15MemoryAllocator5printEv+0x64>
    80002ae0:	06600513          	li	a0,102
    80002ae4:	00006097          	auipc	ra,0x6
    80002ae8:	ea8080e7          	jalr	-344(ra) # 8000898c <__putc>
    80002aec:	0104b483          	ld	s1,16(s1)
    80002af0:	fedff06f          	j	80002adc <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    80002af4:	00900513          	li	a0,9
    80002af8:	00006097          	auipc	ra,0x6
    80002afc:	e94080e7          	jalr	-364(ra) # 8000898c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80002b00:	00009497          	auipc	s1,0x9
    80002b04:	f604b483          	ld	s1,-160(s1) # 8000ba60 <_ZN15MemoryAllocator11usedSegHeadE>
    80002b08:	00048c63          	beqz	s1,80002b20 <_ZN15MemoryAllocator5printEv+0x90>
    80002b0c:	07500513          	li	a0,117
    80002b10:	00006097          	auipc	ra,0x6
    80002b14:	e7c080e7          	jalr	-388(ra) # 8000898c <__putc>
    80002b18:	0104b483          	ld	s1,16(s1)
    80002b1c:	fedff06f          	j	80002b08 <_ZN15MemoryAllocator5printEv+0x78>
}
    80002b20:	01813083          	ld	ra,24(sp)
    80002b24:	01013403          	ld	s0,16(sp)
    80002b28:	00813483          	ld	s1,8(sp)
    80002b2c:	02010113          	addi	sp,sp,32
    80002b30:	00008067          	ret

0000000080002b34 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002b34:	ff010113          	addi	sp,sp,-16
    80002b38:	00813423          	sd	s0,8(sp)
    80002b3c:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002b40:	05750513          	addi	a0,a0,87
}
    80002b44:	00655513          	srli	a0,a0,0x6
    80002b48:	00813403          	ld	s0,8(sp)
    80002b4c:	01010113          	addi	sp,sp,16
    80002b50:	00008067          	ret

0000000080002b54 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80002b54:	fe010113          	addi	sp,sp,-32
    80002b58:	00113c23          	sd	ra,24(sp)
    80002b5c:	00813823          	sd	s0,16(sp)
    80002b60:	00913423          	sd	s1,8(sp)
    80002b64:	02010413          	addi	s0,sp,32
    80002b68:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002b6c:	00009517          	auipc	a0,0x9
    80002b70:	f0453503          	ld	a0,-252(a0) # 8000ba70 <_ZN9Scheduler10tail_readyE>
    80002b74:	02051463          	bnez	a0,80002b9c <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    80002b78:	00009797          	auipc	a5,0x9
    80002b7c:	ef878793          	addi	a5,a5,-264 # 8000ba70 <_ZN9Scheduler10tail_readyE>
    80002b80:	0097b023          	sd	s1,0(a5)
    80002b84:	0097b423          	sd	s1,8(a5)
}
    80002b88:	01813083          	ld	ra,24(sp)
    80002b8c:	01013403          	ld	s0,16(sp)
    80002b90:	00813483          	ld	s1,8(sp)
    80002b94:	02010113          	addi	sp,sp,32
    80002b98:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    80002b9c:	00048593          	mv	a1,s1
    80002ba0:	fffff097          	auipc	ra,0xfffff
    80002ba4:	414080e7          	jalr	1044(ra) # 80001fb4 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002ba8:	00009797          	auipc	a5,0x9
    80002bac:	ec97b423          	sd	s1,-312(a5) # 8000ba70 <_ZN9Scheduler10tail_readyE>
        return;
    80002bb0:	fd9ff06f          	j	80002b88 <_ZN9Scheduler3putEP3TCB+0x34>

0000000080002bb4 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002bb4:	fe010113          	addi	sp,sp,-32
    80002bb8:	00113c23          	sd	ra,24(sp)
    80002bbc:	00813823          	sd	s0,16(sp)
    80002bc0:	00913423          	sd	s1,8(sp)
    80002bc4:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002bc8:	00009497          	auipc	s1,0x9
    80002bcc:	eb04b483          	ld	s1,-336(s1) # 8000ba78 <_ZN9Scheduler10head_readyE>
    80002bd0:	00048c63          	beqz	s1,80002be8 <_ZN9Scheduler3getEv+0x34>
    TCB *head = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002bd4:	00048513          	mv	a0,s1
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	3c0080e7          	jalr	960(ra) # 80001f98 <_ZNK3TCB14get_next_readyEv>
    80002be0:	00009797          	auipc	a5,0x9
    80002be4:	e8a7bc23          	sd	a0,-360(a5) # 8000ba78 <_ZN9Scheduler10head_readyE>
    return head;
}
    80002be8:	00048513          	mv	a0,s1
    80002bec:	01813083          	ld	ra,24(sp)
    80002bf0:	01013403          	ld	s0,16(sp)
    80002bf4:	00813483          	ld	s1,8(sp)
    80002bf8:	02010113          	addi	sp,sp,32
    80002bfc:	00008067          	ret

0000000080002c00 <_ZN9Scheduler13change_threadEv>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

void Scheduler::change_thread() {
    80002c00:	fe010113          	addi	sp,sp,-32
    80002c04:	00113c23          	sd	ra,24(sp)
    80002c08:	00813823          	sd	s0,16(sp)
    80002c0c:	00913423          	sd	s1,8(sp)
    80002c10:	01213023          	sd	s2,0(sp)
    80002c14:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002c18:	00009497          	auipc	s1,0x9
    80002c1c:	dd04b483          	ld	s1,-560(s1) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c20:	0004b903          	ld	s2,0(s1)
    TCB::running = Scheduler::get();
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	f90080e7          	jalr	-112(ra) # 80002bb4 <_ZN9Scheduler3getEv>
    80002c2c:	00a4b023          	sd	a0,0(s1)
    if (old != TCB::running) TCB::yield(old, TCB::running);
    80002c30:	00a90a63          	beq	s2,a0,80002c44 <_ZN9Scheduler13change_threadEv+0x44>
    80002c34:	00050593          	mv	a1,a0
    80002c38:	00090513          	mv	a0,s2
    80002c3c:	fffff097          	auipc	ra,0xfffff
    80002c40:	294080e7          	jalr	660(ra) # 80001ed0 <_ZN3TCB5yieldEPS_S0_>
}
    80002c44:	01813083          	ld	ra,24(sp)
    80002c48:	01013403          	ld	s0,16(sp)
    80002c4c:	00813483          	ld	s1,8(sp)
    80002c50:	00013903          	ld	s2,0(sp)
    80002c54:	02010113          	addi	sp,sp,32
    80002c58:	00008067          	ret

0000000080002c5c <_ZN9Scheduler12put_to_sleepEm>:
int Scheduler::put_to_sleep(time_t time) {
    80002c5c:	fc010113          	addi	sp,sp,-64
    80002c60:	02113c23          	sd	ra,56(sp)
    80002c64:	02813823          	sd	s0,48(sp)
    80002c68:	02913423          	sd	s1,40(sp)
    80002c6c:	03213023          	sd	s2,32(sp)
    80002c70:	01313c23          	sd	s3,24(sp)
    80002c74:	01413823          	sd	s4,16(sp)
    80002c78:	01513423          	sd	s5,8(sp)
    80002c7c:	04010413          	addi	s0,sp,64
    80002c80:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002c84:	00009797          	auipc	a5,0x9
    80002c88:	d647b783          	ld	a5,-668(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c8c:	0007ba83          	ld	s5,0(a5)
    thread -> set_status(TCB::Status::SLEEPING);
    80002c90:	00100593          	li	a1,1
    80002c94:	000a8513          	mv	a0,s5
    80002c98:	fffff097          	auipc	ra,0xfffff
    80002c9c:	3a8080e7          	jalr	936(ra) # 80002040 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    80002ca0:	00009497          	auipc	s1,0x9
    80002ca4:	de04b483          	ld	s1,-544(s1) # 8000ba80 <_ZN9Scheduler13head_sleepingE>
    80002ca8:	02048e63          	beqz	s1,80002ce4 <_ZN9Scheduler12put_to_sleepEm+0x88>
    time_t current_time = 0;
    80002cac:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002cb0:	00000a13          	li	s4,0
    while (tmp) {
    80002cb4:	10048463          	beqz	s1,80002dbc <_ZN9Scheduler12put_to_sleepEm+0x160>
        current_time += tmp -> get_time_to_sleep();
    80002cb8:	00048513          	mv	a0,s1
    80002cbc:	fffff097          	auipc	ra,0xfffff
    80002cc0:	368080e7          	jalr	872(ra) # 80002024 <_ZNK3TCB17get_time_to_sleepEv>
    80002cc4:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002cc8:	0529e863          	bltu	s3,s2,80002d18 <_ZN9Scheduler12put_to_sleepEm+0xbc>
        tmp = tmp -> get_next_sleeping();
    80002ccc:	00048513          	mv	a0,s1
    80002cd0:	fffff097          	auipc	ra,0xfffff
    80002cd4:	31c080e7          	jalr	796(ra) # 80001fec <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002cd8:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002cdc:	00050493          	mv	s1,a0
    while (tmp) {
    80002ce0:	fd5ff06f          	j	80002cb4 <_ZN9Scheduler12put_to_sleepEm+0x58>
        head_sleeping = thread;
    80002ce4:	00009797          	auipc	a5,0x9
    80002ce8:	d957be23          	sd	s5,-612(a5) # 8000ba80 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002cec:	00000593          	li	a1,0
    80002cf0:	000a8513          	mv	a0,s5
    80002cf4:	fffff097          	auipc	ra,0xfffff
    80002cf8:	2dc080e7          	jalr	732(ra) # 80001fd0 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002cfc:	00098593          	mv	a1,s3
    80002d00:	000a8513          	mv	a0,s5
    80002d04:	fffff097          	auipc	ra,0xfffff
    80002d08:	304080e7          	jalr	772(ra) # 80002008 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	ef4080e7          	jalr	-268(ra) # 80002c00 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002d14:	0e00006f          	j	80002df4 <_ZN9Scheduler12put_to_sleepEm+0x198>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002d18:	00048513          	mv	a0,s1
    80002d1c:	fffff097          	auipc	ra,0xfffff
    80002d20:	308080e7          	jalr	776(ra) # 80002024 <_ZNK3TCB17get_time_to_sleepEv>
    80002d24:	41250933          	sub	s2,a0,s2
    80002d28:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002d2c:	00098593          	mv	a1,s3
    80002d30:	000a8513          	mv	a0,s5
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	2d4080e7          	jalr	724(ra) # 80002008 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002d3c:	00048593          	mv	a1,s1
    80002d40:	000a8513          	mv	a0,s5
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	28c080e7          	jalr	652(ra) # 80001fd0 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002d4c:	040a0c63          	beqz	s4,80002da4 <_ZN9Scheduler12put_to_sleepEm+0x148>
    80002d50:	000a8593          	mv	a1,s5
    80002d54:	000a0513          	mv	a0,s4
    80002d58:	fffff097          	auipc	ra,0xfffff
    80002d5c:	278080e7          	jalr	632(ra) # 80001fd0 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002d60:	00048513          	mv	a0,s1
    80002d64:	fffff097          	auipc	ra,0xfffff
    80002d68:	288080e7          	jalr	648(ra) # 80001fec <_ZNK3TCB17get_next_sleepingEv>
    80002d6c:	00050493          	mv	s1,a0
    80002d70:	04048063          	beqz	s1,80002db0 <_ZN9Scheduler12put_to_sleepEm+0x154>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80002d74:	00048513          	mv	a0,s1
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	2ac080e7          	jalr	684(ra) # 80002024 <_ZNK3TCB17get_time_to_sleepEv>
    80002d80:	413505b3          	sub	a1,a0,s3
    80002d84:	00048513          	mv	a0,s1
    80002d88:	fffff097          	auipc	ra,0xfffff
    80002d8c:	280080e7          	jalr	640(ra) # 80002008 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002d90:	00048513          	mv	a0,s1
    80002d94:	fffff097          	auipc	ra,0xfffff
    80002d98:	258080e7          	jalr	600(ra) # 80001fec <_ZNK3TCB17get_next_sleepingEv>
    80002d9c:	00050493          	mv	s1,a0
    80002da0:	fd1ff06f          	j	80002d70 <_ZN9Scheduler12put_to_sleepEm+0x114>
            else head_sleeping = thread;
    80002da4:	00009797          	auipc	a5,0x9
    80002da8:	cd57be23          	sd	s5,-804(a5) # 8000ba80 <_ZN9Scheduler13head_sleepingE>
    80002dac:	fb5ff06f          	j	80002d60 <_ZN9Scheduler12put_to_sleepEm+0x104>
            change_thread();
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	e50080e7          	jalr	-432(ra) # 80002c00 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002db8:	03c0006f          	j	80002df4 <_ZN9Scheduler12put_to_sleepEm+0x198>
    thread -> set_time_to_sleep(time - current_time);
    80002dbc:	412985b3          	sub	a1,s3,s2
    80002dc0:	000a8513          	mv	a0,s5
    80002dc4:	fffff097          	auipc	ra,0xfffff
    80002dc8:	244080e7          	jalr	580(ra) # 80002008 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002dcc:	000a8593          	mv	a1,s5
    80002dd0:	000a0513          	mv	a0,s4
    80002dd4:	fffff097          	auipc	ra,0xfffff
    80002dd8:	1fc080e7          	jalr	508(ra) # 80001fd0 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002ddc:	00000593          	li	a1,0
    80002de0:	000a8513          	mv	a0,s5
    80002de4:	fffff097          	auipc	ra,0xfffff
    80002de8:	1ec080e7          	jalr	492(ra) # 80001fd0 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	e14080e7          	jalr	-492(ra) # 80002c00 <_ZN9Scheduler13change_threadEv>
}
    80002df4:	00000513          	li	a0,0
    80002df8:	03813083          	ld	ra,56(sp)
    80002dfc:	03013403          	ld	s0,48(sp)
    80002e00:	02813483          	ld	s1,40(sp)
    80002e04:	02013903          	ld	s2,32(sp)
    80002e08:	01813983          	ld	s3,24(sp)
    80002e0c:	01013a03          	ld	s4,16(sp)
    80002e10:	00813a83          	ld	s5,8(sp)
    80002e14:	04010113          	addi	sp,sp,64
    80002e18:	00008067          	ret

0000000080002e1c <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002e1c:	ff010113          	addi	sp,sp,-16
    80002e20:	00813423          	sd	s0,8(sp)
    80002e24:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002e28:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002e2c:	10200073          	sret
}
    80002e30:	00813403          	ld	s0,8(sp)
    80002e34:	01010113          	addi	sp,sp,16
    80002e38:	00008067          	ret

0000000080002e3c <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002e3c:	fb010113          	addi	sp,sp,-80
    80002e40:	04113423          	sd	ra,72(sp)
    80002e44:	04813023          	sd	s0,64(sp)
    80002e48:	02913c23          	sd	s1,56(sp)
    80002e4c:	03213823          	sd	s2,48(sp)
    80002e50:	05010413          	addi	s0,sp,80
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002e54:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002e58:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002e5c:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002e60:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002e64:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002e68:	142027f3          	csrr	a5,scause
    80002e6c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002e70:	fb843703          	ld	a4,-72(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002e74:	fff00793          	li	a5,-1
    80002e78:	03f79793          	slli	a5,a5,0x3f
    80002e7c:	00178793          	addi	a5,a5,1
    80002e80:	04f70063          	beq	a4,a5,80002ec0 <_ZN5RiscV22handle_supervisor_trapEv+0x84>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002e84:	fff00793          	li	a5,-1
    80002e88:	03f79793          	slli	a5,a5,0x3f
    80002e8c:	00978793          	addi	a5,a5,9
    80002e90:	10f70263          	beq	a4,a5,80002f94 <_ZN5RiscV22handle_supervisor_trapEv+0x158>
        console_handler();
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002e94:	00200793          	li	a5,2
    80002e98:	10f70463          	beq	a4,a5,80002fa0 <_ZN5RiscV22handle_supervisor_trapEv+0x164>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002e9c:	ff870713          	addi	a4,a4,-8
    80002ea0:	00100793          	li	a5,1
    80002ea4:	10e7f463          	bgeu	a5,a4,80002fac <_ZN5RiscV22handle_supervisor_trapEv+0x170>
        }

        write_sepc(sepc);
        write_sstatus(sstatus);
    }
    80002ea8:	04813083          	ld	ra,72(sp)
    80002eac:	04013403          	ld	s0,64(sp)
    80002eb0:	03813483          	ld	s1,56(sp)
    80002eb4:	03013903          	ld	s2,48(sp)
    80002eb8:	05010113          	addi	sp,sp,80
    80002ebc:	00008067          	ret
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002ec0:	00200793          	li	a5,2
    80002ec4:	1447b073          	csrc	sip,a5
        __putc('\n');
    80002ec8:	00a00513          	li	a0,10
    80002ecc:	00006097          	auipc	ra,0x6
    80002ed0:	ac0080e7          	jalr	-1344(ra) # 8000898c <__putc>
        __putc('t');
    80002ed4:	07400513          	li	a0,116
    80002ed8:	00006097          	auipc	ra,0x6
    80002edc:	ab4080e7          	jalr	-1356(ra) # 8000898c <__putc>
        TCB* first_waiting = Scheduler::head_sleeping;
    80002ee0:	00009797          	auipc	a5,0x9
    80002ee4:	ae87b783          	ld	a5,-1304(a5) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ee8:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80002eec:	04048463          	beqz	s1,80002f34 <_ZN5RiscV22handle_supervisor_trapEv+0xf8>
            --first_waiting -> time_to_sleep;
    80002ef0:	0484b783          	ld	a5,72(s1)
    80002ef4:	fff78793          	addi	a5,a5,-1
    80002ef8:	04f4b423          	sd	a5,72(s1)
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002efc:	02048c63          	beqz	s1,80002f34 <_ZN5RiscV22handle_supervisor_trapEv+0xf8>
    80002f00:	0484b783          	ld	a5,72(s1)
    80002f04:	02079863          	bnez	a5,80002f34 <_ZN5RiscV22handle_supervisor_trapEv+0xf8>
                Scheduler::put(first_waiting);
    80002f08:	00048513          	mv	a0,s1
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	c48080e7          	jalr	-952(ra) # 80002b54 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80002f14:	0004ac23          	sw	zero,24(s1)
                first_waiting = first_waiting -> next_sleeping;
    80002f18:	0504b783          	ld	a5,80(s1)
                Scheduler::head_sleeping = first_waiting;
    80002f1c:	00009717          	auipc	a4,0x9
    80002f20:	aac73703          	ld	a4,-1364(a4) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f24:	00f73023          	sd	a5,0(a4)
                tmp -> next_sleeping = nullptr;
    80002f28:	0404b823          	sd	zero,80(s1)
                first_waiting = first_waiting -> next_sleeping;
    80002f2c:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002f30:	fcdff06f          	j	80002efc <_ZN5RiscV22handle_supervisor_trapEv+0xc0>
        ++TCB::time_slice_counter;
    80002f34:	00009717          	auipc	a4,0x9
    80002f38:	aac73703          	ld	a4,-1364(a4) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f3c:	00073783          	ld	a5,0(a4)
    80002f40:	00178793          	addi	a5,a5,1
    80002f44:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80002f48:	00009717          	auipc	a4,0x9
    80002f4c:	aa073703          	ld	a4,-1376(a4) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f50:	00073703          	ld	a4,0(a4)
    80002f54:	03873703          	ld	a4,56(a4)
    80002f58:	f4e7e8e3          	bltu	a5,a4,80002ea8 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002f5c:	141027f3          	csrr	a5,sepc
    80002f60:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002f64:	fc843483          	ld	s1,-56(s0)
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002f68:	100027f3          	csrr	a5,sstatus
    80002f6c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002f70:	fc043903          	ld	s2,-64(s0)
            TCB::time_slice_counter = 0;
    80002f74:	00009797          	auipc	a5,0x9
    80002f78:	a6c7b783          	ld	a5,-1428(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f7c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002f80:	fffff097          	auipc	ra,0xfffff
    80002f84:	fac080e7          	jalr	-84(ra) # 80001f2c <_ZN3TCB8dispatchEv>
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002f88:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002f8c:	14149073          	csrw	sepc,s1
}
    80002f90:	f19ff06f          	j	80002ea8 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
        console_handler();
    80002f94:	00006097          	auipc	ra,0x6
    80002f98:	a6c080e7          	jalr	-1428(ra) # 80008a00 <console_handler>
    80002f9c:	f0dff06f          	j	80002ea8 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002fa0:	00100793          	li	a5,1
    80002fa4:	00078513          	mv	a0,a5
        return;
    80002fa8:	f01ff06f          	j	80002ea8 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002fac:	141027f3          	csrr	a5,sepc
    80002fb0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002fb4:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = read_sepc() + 4;
    80002fb8:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002fbc:	100027f3          	csrr	a5,sstatus
    80002fc0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002fc4:	fd043903          	ld	s2,-48(s0)
        switch(syscall_code) {
    80002fc8:	04200793          	li	a5,66
    80002fcc:	0307e463          	bltu	a5,a6,80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
    80002fd0:	00281813          	slli	a6,a6,0x2
    80002fd4:	00006717          	auipc	a4,0x6
    80002fd8:	04c70713          	addi	a4,a4,76 # 80009020 <CONSOLE_STATUS+0x10>
    80002fdc:	00e80833          	add	a6,a6,a4
    80002fe0:	00082783          	lw	a5,0(a6)
    80002fe4:	00e787b3          	add	a5,a5,a4
    80002fe8:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002fec:	fffff097          	auipc	ra,0xfffff
    80002ff0:	74c080e7          	jalr	1868(ra) # 80002738 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002ff4:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002ff8:	10091073          	csrw	sstatus,s2
}
    80002ffc:	eadff06f          	j	80002ea8 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
                MemoryAllocator::mem_free((void *) a1);
    80003000:	00000097          	auipc	ra,0x0
    80003004:	924080e7          	jalr	-1756(ra) # 80002924 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80003008:	fedff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    8000300c:	fffff097          	auipc	ra,0xfffff
    80003010:	178080e7          	jalr	376(ra) # 80002184 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80003014:	fe1ff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                TCB::thread_exit();
    80003018:	fffff097          	auipc	ra,0xfffff
    8000301c:	044080e7          	jalr	68(ra) # 8000205c <_ZN3TCB11thread_exitEv>
                break;
    80003020:	fd5ff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                TCB::dispatch();
    80003024:	fffff097          	auipc	ra,0xfffff
    80003028:	f08080e7          	jalr	-248(ra) # 80001f2c <_ZN3TCB8dispatchEv>
                break;
    8000302c:	fc9ff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                Sem::open((sem_t *) a1, a2);
    80003030:	0005859b          	sext.w	a1,a1
    80003034:	ffffe097          	auipc	ra,0xffffe
    80003038:	6ec080e7          	jalr	1772(ra) # 80001720 <_ZN3Sem4openEPPS_j>
                break;
    8000303c:	fb9ff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                ((sem_t) a1) -> close();
    80003040:	ffffe097          	auipc	ra,0xffffe
    80003044:	754080e7          	jalr	1876(ra) # 80001794 <_ZN3Sem5closeEv>
                break;
    80003048:	fadff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                ((sem_t) a1) -> wait();
    8000304c:	ffffe097          	auipc	ra,0xffffe
    80003050:	7d0080e7          	jalr	2000(ra) # 8000181c <_ZN3Sem4waitEv>
                break;
    80003054:	fa1ff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                ((sem_t) a1) -> signal();
    80003058:	fffff097          	auipc	ra,0xfffff
    8000305c:	86c080e7          	jalr	-1940(ra) # 800018c4 <_ZN3Sem6signalEv>
                break;
    80003060:	f95ff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                ((sem_t) a1) -> timedWait((time_t) a2);
    80003064:	fffff097          	auipc	ra,0xfffff
    80003068:	8b8080e7          	jalr	-1864(ra) # 8000191c <_ZN3Sem9timedWaitEm>
                break;
    8000306c:	f89ff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                ((sem_t) a1) -> tryWait();
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	8c8080e7          	jalr	-1848(ra) # 80001938 <_ZN3Sem7tryWaitEv>
                break;
    80003078:	f7dff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                Scheduler::put_to_sleep((time_t) a1);
    8000307c:	00000097          	auipc	ra,0x0
    80003080:	be0080e7          	jalr	-1056(ra) # 80002c5c <_ZN9Scheduler12put_to_sleepEm>
                break;
    80003084:	f71ff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                Con::getc();
    80003088:	fffff097          	auipc	ra,0xfffff
    8000308c:	d98080e7          	jalr	-616(ra) # 80001e20 <_ZN3Con4getcEv>
                break;
    80003090:	f65ff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>
                Con::putc(a1);
    80003094:	0ff57513          	andi	a0,a0,255
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	d70080e7          	jalr	-656(ra) # 80001e08 <_ZN3Con4putcEc>
                break;
    800030a0:	f55ff06f          	j	80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b8>

00000000800030a4 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    800030a4:	ff010113          	addi	sp,sp,-16
    800030a8:	00813423          	sd	s0,8(sp)
    800030ac:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    800030b0:	00053503          	ld	a0,0(a0)
    800030b4:	00050463          	beqz	a0,800030bc <_ZN10ThreadList9get_firstEv+0x18>
    800030b8:	00053503          	ld	a0,0(a0)
}
    800030bc:	00813403          	ld	s0,8(sp)
    800030c0:	01010113          	addi	sp,sp,16
    800030c4:	00008067          	ret

00000000800030c8 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    800030c8:	ff010113          	addi	sp,sp,-16
    800030cc:	00113423          	sd	ra,8(sp)
    800030d0:	00813023          	sd	s0,0(sp)
    800030d4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800030d8:	00000097          	auipc	ra,0x0
    800030dc:	a5c080e7          	jalr	-1444(ra) # 80002b34 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800030e0:	fffff097          	auipc	ra,0xfffff
    800030e4:	658080e7          	jalr	1624(ra) # 80002738 <_ZN15MemoryAllocator9mem_allocEm>
}
    800030e8:	00813083          	ld	ra,8(sp)
    800030ec:	00013403          	ld	s0,0(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret

00000000800030f8 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    800030f8:	fe010113          	addi	sp,sp,-32
    800030fc:	00113c23          	sd	ra,24(sp)
    80003100:	00813823          	sd	s0,16(sp)
    80003104:	00913423          	sd	s1,8(sp)
    80003108:	01213023          	sd	s2,0(sp)
    8000310c:	02010413          	addi	s0,sp,32
    80003110:	00050493          	mv	s1,a0
    80003114:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80003118:	01000513          	li	a0,16
    8000311c:	00000097          	auipc	ra,0x0
    80003120:	fac080e7          	jalr	-84(ra) # 800030c8 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80003124:	01253023          	sd	s2,0(a0)
    80003128:	00053423          	sd	zero,8(a0)
    8000312c:	0004b783          	ld	a5,0(s1)
    80003130:	02078263          	beqz	a5,80003154 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80003134:	00a4b023          	sd	a0,0(s1)
    80003138:	00a4b423          	sd	a0,8(s1)
}
    8000313c:	01813083          	ld	ra,24(sp)
    80003140:	01013403          	ld	s0,16(sp)
    80003144:	00813483          	ld	s1,8(sp)
    80003148:	00013903          	ld	s2,0(sp)
    8000314c:	02010113          	addi	sp,sp,32
    80003150:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80003154:	0084b783          	ld	a5,8(s1)
    80003158:	00a7b423          	sd	a0,8(a5)
    8000315c:	fddff06f          	j	80003138 <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080003160 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80003160:	fe010113          	addi	sp,sp,-32
    80003164:	00113c23          	sd	ra,24(sp)
    80003168:	00813823          	sd	s0,16(sp)
    8000316c:	00913423          	sd	s1,8(sp)
    80003170:	01213023          	sd	s2,0(sp)
    80003174:	02010413          	addi	s0,sp,32
    80003178:	00050493          	mv	s1,a0
    8000317c:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80003180:	01000513          	li	a0,16
    80003184:	00000097          	auipc	ra,0x0
    80003188:	f44080e7          	jalr	-188(ra) # 800030c8 <_ZN10ThreadList4NodenwEm>
    8000318c:	01253023          	sd	s2,0(a0)
    80003190:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80003194:	0004b783          	ld	a5,0(s1)
    80003198:	00f53423          	sd	a5,8(a0)
    head = node;
    8000319c:	00a4b023          	sd	a0,0(s1)
}
    800031a0:	01813083          	ld	ra,24(sp)
    800031a4:	01013403          	ld	s0,16(sp)
    800031a8:	00813483          	ld	s1,8(sp)
    800031ac:	00013903          	ld	s2,0(sp)
    800031b0:	02010113          	addi	sp,sp,32
    800031b4:	00008067          	ret

00000000800031b8 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    800031b8:	ff010113          	addi	sp,sp,-16
    800031bc:	00113423          	sd	ra,8(sp)
    800031c0:	00813023          	sd	s0,0(sp)
    800031c4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800031c8:	fffff097          	auipc	ra,0xfffff
    800031cc:	75c080e7          	jalr	1884(ra) # 80002924 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800031d0:	00813083          	ld	ra,8(sp)
    800031d4:	00013403          	ld	s0,0(sp)
    800031d8:	01010113          	addi	sp,sp,16
    800031dc:	00008067          	ret

00000000800031e0 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    800031e0:	fe010113          	addi	sp,sp,-32
    800031e4:	00113c23          	sd	ra,24(sp)
    800031e8:	00813823          	sd	s0,16(sp)
    800031ec:	00913423          	sd	s1,8(sp)
    800031f0:	02010413          	addi	s0,sp,32
    800031f4:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    800031f8:	00053503          	ld	a0,0(a0)
    800031fc:	02050a63          	beqz	a0,80003230 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80003200:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003204:	00853703          	ld	a4,8(a0)
    80003208:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    8000320c:	00073423          	sd	zero,8(a4)
    delete tmp;
    80003210:	00000097          	auipc	ra,0x0
    80003214:	fa8080e7          	jalr	-88(ra) # 800031b8 <_ZN10ThreadList4NodedlEPv>
}
    80003218:	00048513          	mv	a0,s1
    8000321c:	01813083          	ld	ra,24(sp)
    80003220:	01013403          	ld	s0,16(sp)
    80003224:	00813483          	ld	s1,8(sp)
    80003228:	02010113          	addi	sp,sp,32
    8000322c:	00008067          	ret
    if (!head) return nullptr;
    80003230:	00050493          	mv	s1,a0
    80003234:	fe5ff06f          	j	80003218 <_ZN10ThreadList12remove_firstEv+0x38>

0000000080003238 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80003238:	fe010113          	addi	sp,sp,-32
    8000323c:	00113c23          	sd	ra,24(sp)
    80003240:	00813823          	sd	s0,16(sp)
    80003244:	00913423          	sd	s1,8(sp)
    80003248:	02010413          	addi	s0,sp,32
    8000324c:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80003250:	00048513          	mv	a0,s1
    80003254:	00000097          	auipc	ra,0x0
    80003258:	e50080e7          	jalr	-432(ra) # 800030a4 <_ZN10ThreadList9get_firstEv>
    8000325c:	00050a63          	beqz	a0,80003270 <_ZN10ThreadList4freeEv+0x38>
    80003260:	00048513          	mv	a0,s1
    80003264:	00000097          	auipc	ra,0x0
    80003268:	f7c080e7          	jalr	-132(ra) # 800031e0 <_ZN10ThreadList12remove_firstEv>
    8000326c:	fe5ff06f          	j	80003250 <_ZN10ThreadList4freeEv+0x18>
}
    80003270:	01813083          	ld	ra,24(sp)
    80003274:	01013403          	ld	s0,16(sp)
    80003278:	00813483          	ld	s1,8(sp)
    8000327c:	02010113          	addi	sp,sp,32
    80003280:	00008067          	ret

0000000080003284 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003284:	fe010113          	addi	sp,sp,-32
    80003288:	00113c23          	sd	ra,24(sp)
    8000328c:	00813823          	sd	s0,16(sp)
    80003290:	00913423          	sd	s1,8(sp)
    80003294:	01213023          	sd	s2,0(sp)
    80003298:	02010413          	addi	s0,sp,32
    8000329c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800032a0:	00000913          	li	s2,0
    800032a4:	00c0006f          	j	800032b0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800032a8:	ffffe097          	auipc	ra,0xffffe
    800032ac:	124080e7          	jalr	292(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800032b0:	ffffe097          	auipc	ra,0xffffe
    800032b4:	370080e7          	jalr	880(ra) # 80001620 <_Z4getcv>
    800032b8:	0005059b          	sext.w	a1,a0
    800032bc:	01b00793          	li	a5,27
    800032c0:	02f58a63          	beq	a1,a5,800032f4 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800032c4:	0084b503          	ld	a0,8(s1)
    800032c8:	00003097          	auipc	ra,0x3
    800032cc:	384080e7          	jalr	900(ra) # 8000664c <_ZN6Buffer3putEi>
        i++;
    800032d0:	0019071b          	addiw	a4,s2,1
    800032d4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800032d8:	0004a683          	lw	a3,0(s1)
    800032dc:	0026979b          	slliw	a5,a3,0x2
    800032e0:	00d787bb          	addw	a5,a5,a3
    800032e4:	0017979b          	slliw	a5,a5,0x1
    800032e8:	02f767bb          	remw	a5,a4,a5
    800032ec:	fc0792e3          	bnez	a5,800032b0 <_ZL16producerKeyboardPv+0x2c>
    800032f0:	fb9ff06f          	j	800032a8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800032f4:	00100793          	li	a5,1
    800032f8:	00008717          	auipc	a4,0x8
    800032fc:	78f72823          	sw	a5,1936(a4) # 8000ba88 <_ZL9threadEnd>
    data->buffer->put('!');
    80003300:	02100593          	li	a1,33
    80003304:	0084b503          	ld	a0,8(s1)
    80003308:	00003097          	auipc	ra,0x3
    8000330c:	344080e7          	jalr	836(ra) # 8000664c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003310:	0104b503          	ld	a0,16(s1)
    80003314:	ffffe097          	auipc	ra,0xffffe
    80003318:	1dc080e7          	jalr	476(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000331c:	01813083          	ld	ra,24(sp)
    80003320:	01013403          	ld	s0,16(sp)
    80003324:	00813483          	ld	s1,8(sp)
    80003328:	00013903          	ld	s2,0(sp)
    8000332c:	02010113          	addi	sp,sp,32
    80003330:	00008067          	ret

0000000080003334 <_ZL8producerPv>:

static void producer(void *arg) {
    80003334:	fe010113          	addi	sp,sp,-32
    80003338:	00113c23          	sd	ra,24(sp)
    8000333c:	00813823          	sd	s0,16(sp)
    80003340:	00913423          	sd	s1,8(sp)
    80003344:	01213023          	sd	s2,0(sp)
    80003348:	02010413          	addi	s0,sp,32
    8000334c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003350:	00000913          	li	s2,0
    80003354:	00c0006f          	j	80003360 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003358:	ffffe097          	auipc	ra,0xffffe
    8000335c:	074080e7          	jalr	116(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003360:	00008797          	auipc	a5,0x8
    80003364:	7287a783          	lw	a5,1832(a5) # 8000ba88 <_ZL9threadEnd>
    80003368:	02079e63          	bnez	a5,800033a4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    8000336c:	0004a583          	lw	a1,0(s1)
    80003370:	0305859b          	addiw	a1,a1,48
    80003374:	0084b503          	ld	a0,8(s1)
    80003378:	00003097          	auipc	ra,0x3
    8000337c:	2d4080e7          	jalr	724(ra) # 8000664c <_ZN6Buffer3putEi>
        i++;
    80003380:	0019071b          	addiw	a4,s2,1
    80003384:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003388:	0004a683          	lw	a3,0(s1)
    8000338c:	0026979b          	slliw	a5,a3,0x2
    80003390:	00d787bb          	addw	a5,a5,a3
    80003394:	0017979b          	slliw	a5,a5,0x1
    80003398:	02f767bb          	remw	a5,a4,a5
    8000339c:	fc0792e3          	bnez	a5,80003360 <_ZL8producerPv+0x2c>
    800033a0:	fb9ff06f          	j	80003358 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800033a4:	0104b503          	ld	a0,16(s1)
    800033a8:	ffffe097          	auipc	ra,0xffffe
    800033ac:	148080e7          	jalr	328(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800033b0:	01813083          	ld	ra,24(sp)
    800033b4:	01013403          	ld	s0,16(sp)
    800033b8:	00813483          	ld	s1,8(sp)
    800033bc:	00013903          	ld	s2,0(sp)
    800033c0:	02010113          	addi	sp,sp,32
    800033c4:	00008067          	ret

00000000800033c8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800033c8:	fd010113          	addi	sp,sp,-48
    800033cc:	02113423          	sd	ra,40(sp)
    800033d0:	02813023          	sd	s0,32(sp)
    800033d4:	00913c23          	sd	s1,24(sp)
    800033d8:	01213823          	sd	s2,16(sp)
    800033dc:	01313423          	sd	s3,8(sp)
    800033e0:	03010413          	addi	s0,sp,48
    800033e4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800033e8:	00000993          	li	s3,0
    800033ec:	01c0006f          	j	80003408 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800033f0:	ffffe097          	auipc	ra,0xffffe
    800033f4:	fdc080e7          	jalr	-36(ra) # 800013cc <_Z15thread_dispatchv>
    800033f8:	0500006f          	j	80003448 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800033fc:	00a00513          	li	a0,10
    80003400:	ffffe097          	auipc	ra,0xffffe
    80003404:	26c080e7          	jalr	620(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003408:	00008797          	auipc	a5,0x8
    8000340c:	6807a783          	lw	a5,1664(a5) # 8000ba88 <_ZL9threadEnd>
    80003410:	06079063          	bnez	a5,80003470 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003414:	00893503          	ld	a0,8(s2)
    80003418:	00003097          	auipc	ra,0x3
    8000341c:	2c4080e7          	jalr	708(ra) # 800066dc <_ZN6Buffer3getEv>
        i++;
    80003420:	0019849b          	addiw	s1,s3,1
    80003424:	0004899b          	sext.w	s3,s1
        putc(key);
    80003428:	0ff57513          	andi	a0,a0,255
    8000342c:	ffffe097          	auipc	ra,0xffffe
    80003430:	240080e7          	jalr	576(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003434:	00092703          	lw	a4,0(s2)
    80003438:	0027179b          	slliw	a5,a4,0x2
    8000343c:	00e787bb          	addw	a5,a5,a4
    80003440:	02f4e7bb          	remw	a5,s1,a5
    80003444:	fa0786e3          	beqz	a5,800033f0 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003448:	05000793          	li	a5,80
    8000344c:	02f4e4bb          	remw	s1,s1,a5
    80003450:	fa049ce3          	bnez	s1,80003408 <_ZL8consumerPv+0x40>
    80003454:	fa9ff06f          	j	800033fc <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003458:	00893503          	ld	a0,8(s2)
    8000345c:	00003097          	auipc	ra,0x3
    80003460:	280080e7          	jalr	640(ra) # 800066dc <_ZN6Buffer3getEv>
        putc(key);
    80003464:	0ff57513          	andi	a0,a0,255
    80003468:	ffffe097          	auipc	ra,0xffffe
    8000346c:	204080e7          	jalr	516(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003470:	00893503          	ld	a0,8(s2)
    80003474:	00003097          	auipc	ra,0x3
    80003478:	2f4080e7          	jalr	756(ra) # 80006768 <_ZN6Buffer6getCntEv>
    8000347c:	fca04ee3          	bgtz	a0,80003458 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003480:	01093503          	ld	a0,16(s2)
    80003484:	ffffe097          	auipc	ra,0xffffe
    80003488:	06c080e7          	jalr	108(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000348c:	02813083          	ld	ra,40(sp)
    80003490:	02013403          	ld	s0,32(sp)
    80003494:	01813483          	ld	s1,24(sp)
    80003498:	01013903          	ld	s2,16(sp)
    8000349c:	00813983          	ld	s3,8(sp)
    800034a0:	03010113          	addi	sp,sp,48
    800034a4:	00008067          	ret

00000000800034a8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800034a8:	f9010113          	addi	sp,sp,-112
    800034ac:	06113423          	sd	ra,104(sp)
    800034b0:	06813023          	sd	s0,96(sp)
    800034b4:	04913c23          	sd	s1,88(sp)
    800034b8:	05213823          	sd	s2,80(sp)
    800034bc:	05313423          	sd	s3,72(sp)
    800034c0:	05413023          	sd	s4,64(sp)
    800034c4:	03513c23          	sd	s5,56(sp)
    800034c8:	03613823          	sd	s6,48(sp)
    800034cc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800034d0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800034d4:	00006517          	auipc	a0,0x6
    800034d8:	c5c50513          	addi	a0,a0,-932 # 80009130 <CONSOLE_STATUS+0x120>
    800034dc:	00002097          	auipc	ra,0x2
    800034e0:	220080e7          	jalr	544(ra) # 800056fc <_Z11printStringPKc>
    getString(input, 30);
    800034e4:	01e00593          	li	a1,30
    800034e8:	fa040493          	addi	s1,s0,-96
    800034ec:	00048513          	mv	a0,s1
    800034f0:	00002097          	auipc	ra,0x2
    800034f4:	294080e7          	jalr	660(ra) # 80005784 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800034f8:	00048513          	mv	a0,s1
    800034fc:	00002097          	auipc	ra,0x2
    80003500:	360080e7          	jalr	864(ra) # 8000585c <_Z11stringToIntPKc>
    80003504:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003508:	00006517          	auipc	a0,0x6
    8000350c:	c4850513          	addi	a0,a0,-952 # 80009150 <CONSOLE_STATUS+0x140>
    80003510:	00002097          	auipc	ra,0x2
    80003514:	1ec080e7          	jalr	492(ra) # 800056fc <_Z11printStringPKc>
    getString(input, 30);
    80003518:	01e00593          	li	a1,30
    8000351c:	00048513          	mv	a0,s1
    80003520:	00002097          	auipc	ra,0x2
    80003524:	264080e7          	jalr	612(ra) # 80005784 <_Z9getStringPci>
    n = stringToInt(input);
    80003528:	00048513          	mv	a0,s1
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	330080e7          	jalr	816(ra) # 8000585c <_Z11stringToIntPKc>
    80003534:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003538:	00006517          	auipc	a0,0x6
    8000353c:	c3850513          	addi	a0,a0,-968 # 80009170 <CONSOLE_STATUS+0x160>
    80003540:	00002097          	auipc	ra,0x2
    80003544:	1bc080e7          	jalr	444(ra) # 800056fc <_Z11printStringPKc>
    80003548:	00000613          	li	a2,0
    8000354c:	00a00593          	li	a1,10
    80003550:	00090513          	mv	a0,s2
    80003554:	00002097          	auipc	ra,0x2
    80003558:	358080e7          	jalr	856(ra) # 800058ac <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000355c:	00006517          	auipc	a0,0x6
    80003560:	c2c50513          	addi	a0,a0,-980 # 80009188 <CONSOLE_STATUS+0x178>
    80003564:	00002097          	auipc	ra,0x2
    80003568:	198080e7          	jalr	408(ra) # 800056fc <_Z11printStringPKc>
    8000356c:	00000613          	li	a2,0
    80003570:	00a00593          	li	a1,10
    80003574:	00048513          	mv	a0,s1
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	334080e7          	jalr	820(ra) # 800058ac <_Z8printIntiii>
    printString(".\n");
    80003580:	00006517          	auipc	a0,0x6
    80003584:	c2050513          	addi	a0,a0,-992 # 800091a0 <CONSOLE_STATUS+0x190>
    80003588:	00002097          	auipc	ra,0x2
    8000358c:	174080e7          	jalr	372(ra) # 800056fc <_Z11printStringPKc>
    if(threadNum > n) {
    80003590:	0324c463          	blt	s1,s2,800035b8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003594:	03205c63          	blez	s2,800035cc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003598:	03800513          	li	a0,56
    8000359c:	fffff097          	auipc	ra,0xfffff
    800035a0:	d64080e7          	jalr	-668(ra) # 80002300 <_Znwm>
    800035a4:	00050a13          	mv	s4,a0
    800035a8:	00048593          	mv	a1,s1
    800035ac:	00003097          	auipc	ra,0x3
    800035b0:	004080e7          	jalr	4(ra) # 800065b0 <_ZN6BufferC1Ei>
    800035b4:	0300006f          	j	800035e4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800035b8:	00006517          	auipc	a0,0x6
    800035bc:	bf050513          	addi	a0,a0,-1040 # 800091a8 <CONSOLE_STATUS+0x198>
    800035c0:	00002097          	auipc	ra,0x2
    800035c4:	13c080e7          	jalr	316(ra) # 800056fc <_Z11printStringPKc>
        return;
    800035c8:	0140006f          	j	800035dc <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800035cc:	00006517          	auipc	a0,0x6
    800035d0:	c1c50513          	addi	a0,a0,-996 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800035d4:	00002097          	auipc	ra,0x2
    800035d8:	128080e7          	jalr	296(ra) # 800056fc <_Z11printStringPKc>
        return;
    800035dc:	000b0113          	mv	sp,s6
    800035e0:	1500006f          	j	80003730 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800035e4:	00000593          	li	a1,0
    800035e8:	00008517          	auipc	a0,0x8
    800035ec:	4a850513          	addi	a0,a0,1192 # 8000ba90 <_ZL10waitForAll>
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	e18080e7          	jalr	-488(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    800035f8:	00391793          	slli	a5,s2,0x3
    800035fc:	00f78793          	addi	a5,a5,15
    80003600:	ff07f793          	andi	a5,a5,-16
    80003604:	40f10133          	sub	sp,sp,a5
    80003608:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000360c:	0019071b          	addiw	a4,s2,1
    80003610:	00171793          	slli	a5,a4,0x1
    80003614:	00e787b3          	add	a5,a5,a4
    80003618:	00379793          	slli	a5,a5,0x3
    8000361c:	00f78793          	addi	a5,a5,15
    80003620:	ff07f793          	andi	a5,a5,-16
    80003624:	40f10133          	sub	sp,sp,a5
    80003628:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000362c:	00191613          	slli	a2,s2,0x1
    80003630:	012607b3          	add	a5,a2,s2
    80003634:	00379793          	slli	a5,a5,0x3
    80003638:	00f987b3          	add	a5,s3,a5
    8000363c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003640:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003644:	00008717          	auipc	a4,0x8
    80003648:	44c73703          	ld	a4,1100(a4) # 8000ba90 <_ZL10waitForAll>
    8000364c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003650:	00078613          	mv	a2,a5
    80003654:	00000597          	auipc	a1,0x0
    80003658:	d7458593          	addi	a1,a1,-652 # 800033c8 <_ZL8consumerPv>
    8000365c:	f9840513          	addi	a0,s0,-104
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	c98080e7          	jalr	-872(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003668:	00000493          	li	s1,0
    8000366c:	0280006f          	j	80003694 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003670:	00000597          	auipc	a1,0x0
    80003674:	c1458593          	addi	a1,a1,-1004 # 80003284 <_ZL16producerKeyboardPv>
                      data + i);
    80003678:	00179613          	slli	a2,a5,0x1
    8000367c:	00f60633          	add	a2,a2,a5
    80003680:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003684:	00c98633          	add	a2,s3,a2
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	c70080e7          	jalr	-912(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003690:	0014849b          	addiw	s1,s1,1
    80003694:	0524d263          	bge	s1,s2,800036d8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003698:	00149793          	slli	a5,s1,0x1
    8000369c:	009787b3          	add	a5,a5,s1
    800036a0:	00379793          	slli	a5,a5,0x3
    800036a4:	00f987b3          	add	a5,s3,a5
    800036a8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800036ac:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800036b0:	00008717          	auipc	a4,0x8
    800036b4:	3e073703          	ld	a4,992(a4) # 8000ba90 <_ZL10waitForAll>
    800036b8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800036bc:	00048793          	mv	a5,s1
    800036c0:	00349513          	slli	a0,s1,0x3
    800036c4:	00aa8533          	add	a0,s5,a0
    800036c8:	fa9054e3          	blez	s1,80003670 <_Z22producerConsumer_C_APIv+0x1c8>
    800036cc:	00000597          	auipc	a1,0x0
    800036d0:	c6858593          	addi	a1,a1,-920 # 80003334 <_ZL8producerPv>
    800036d4:	fa5ff06f          	j	80003678 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800036d8:	ffffe097          	auipc	ra,0xffffe
    800036dc:	cf4080e7          	jalr	-780(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800036e0:	00000493          	li	s1,0
    800036e4:	00994e63          	blt	s2,s1,80003700 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800036e8:	00008517          	auipc	a0,0x8
    800036ec:	3a853503          	ld	a0,936(a0) # 8000ba90 <_ZL10waitForAll>
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	db4080e7          	jalr	-588(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    800036f8:	0014849b          	addiw	s1,s1,1
    800036fc:	fe9ff06f          	j	800036e4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003700:	00008517          	auipc	a0,0x8
    80003704:	39053503          	ld	a0,912(a0) # 8000ba90 <_ZL10waitForAll>
    80003708:	ffffe097          	auipc	ra,0xffffe
    8000370c:	d50080e7          	jalr	-688(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003710:	000a0e63          	beqz	s4,8000372c <_Z22producerConsumer_C_APIv+0x284>
    80003714:	000a0513          	mv	a0,s4
    80003718:	00003097          	auipc	ra,0x3
    8000371c:	0d8080e7          	jalr	216(ra) # 800067f0 <_ZN6BufferD1Ev>
    80003720:	000a0513          	mv	a0,s4
    80003724:	fffff097          	auipc	ra,0xfffff
    80003728:	c04080e7          	jalr	-1020(ra) # 80002328 <_ZdlPv>
    8000372c:	000b0113          	mv	sp,s6

}
    80003730:	f9040113          	addi	sp,s0,-112
    80003734:	06813083          	ld	ra,104(sp)
    80003738:	06013403          	ld	s0,96(sp)
    8000373c:	05813483          	ld	s1,88(sp)
    80003740:	05013903          	ld	s2,80(sp)
    80003744:	04813983          	ld	s3,72(sp)
    80003748:	04013a03          	ld	s4,64(sp)
    8000374c:	03813a83          	ld	s5,56(sp)
    80003750:	03013b03          	ld	s6,48(sp)
    80003754:	07010113          	addi	sp,sp,112
    80003758:	00008067          	ret
    8000375c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003760:	000a0513          	mv	a0,s4
    80003764:	fffff097          	auipc	ra,0xfffff
    80003768:	bc4080e7          	jalr	-1084(ra) # 80002328 <_ZdlPv>
    8000376c:	00048513          	mv	a0,s1
    80003770:	00009097          	auipc	ra,0x9
    80003774:	438080e7          	jalr	1080(ra) # 8000cba8 <_Unwind_Resume>

0000000080003778 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003778:	fe010113          	addi	sp,sp,-32
    8000377c:	00113c23          	sd	ra,24(sp)
    80003780:	00813823          	sd	s0,16(sp)
    80003784:	00913423          	sd	s1,8(sp)
    80003788:	01213023          	sd	s2,0(sp)
    8000378c:	02010413          	addi	s0,sp,32
    80003790:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003794:	00100793          	li	a5,1
    80003798:	02a7f863          	bgeu	a5,a0,800037c8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000379c:	00a00793          	li	a5,10
    800037a0:	02f577b3          	remu	a5,a0,a5
    800037a4:	02078e63          	beqz	a5,800037e0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800037a8:	fff48513          	addi	a0,s1,-1
    800037ac:	00000097          	auipc	ra,0x0
    800037b0:	fcc080e7          	jalr	-52(ra) # 80003778 <_ZL9fibonaccim>
    800037b4:	00050913          	mv	s2,a0
    800037b8:	ffe48513          	addi	a0,s1,-2
    800037bc:	00000097          	auipc	ra,0x0
    800037c0:	fbc080e7          	jalr	-68(ra) # 80003778 <_ZL9fibonaccim>
    800037c4:	00a90533          	add	a0,s2,a0
}
    800037c8:	01813083          	ld	ra,24(sp)
    800037cc:	01013403          	ld	s0,16(sp)
    800037d0:	00813483          	ld	s1,8(sp)
    800037d4:	00013903          	ld	s2,0(sp)
    800037d8:	02010113          	addi	sp,sp,32
    800037dc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	bec080e7          	jalr	-1044(ra) # 800013cc <_Z15thread_dispatchv>
    800037e8:	fc1ff06f          	j	800037a8 <_ZL9fibonaccim+0x30>

00000000800037ec <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800037ec:	fe010113          	addi	sp,sp,-32
    800037f0:	00113c23          	sd	ra,24(sp)
    800037f4:	00813823          	sd	s0,16(sp)
    800037f8:	00913423          	sd	s1,8(sp)
    800037fc:	01213023          	sd	s2,0(sp)
    80003800:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003804:	00000913          	li	s2,0
    80003808:	0380006f          	j	80003840 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	bc0080e7          	jalr	-1088(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003814:	00148493          	addi	s1,s1,1
    80003818:	000027b7          	lui	a5,0x2
    8000381c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003820:	0097ee63          	bltu	a5,s1,8000383c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003824:	00000713          	li	a4,0
    80003828:	000077b7          	lui	a5,0x7
    8000382c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003830:	fce7eee3          	bltu	a5,a4,8000380c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003834:	00170713          	addi	a4,a4,1
    80003838:	ff1ff06f          	j	80003828 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000383c:	00190913          	addi	s2,s2,1
    80003840:	00900793          	li	a5,9
    80003844:	0527e063          	bltu	a5,s2,80003884 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003848:	00006517          	auipc	a0,0x6
    8000384c:	9d050513          	addi	a0,a0,-1584 # 80009218 <CONSOLE_STATUS+0x208>
    80003850:	00002097          	auipc	ra,0x2
    80003854:	eac080e7          	jalr	-340(ra) # 800056fc <_Z11printStringPKc>
    80003858:	00000613          	li	a2,0
    8000385c:	00a00593          	li	a1,10
    80003860:	0009051b          	sext.w	a0,s2
    80003864:	00002097          	auipc	ra,0x2
    80003868:	048080e7          	jalr	72(ra) # 800058ac <_Z8printIntiii>
    8000386c:	00006517          	auipc	a0,0x6
    80003870:	8fc50513          	addi	a0,a0,-1796 # 80009168 <CONSOLE_STATUS+0x158>
    80003874:	00002097          	auipc	ra,0x2
    80003878:	e88080e7          	jalr	-376(ra) # 800056fc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000387c:	00000493          	li	s1,0
    80003880:	f99ff06f          	j	80003818 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003884:	00006517          	auipc	a0,0x6
    80003888:	99c50513          	addi	a0,a0,-1636 # 80009220 <CONSOLE_STATUS+0x210>
    8000388c:	00002097          	auipc	ra,0x2
    80003890:	e70080e7          	jalr	-400(ra) # 800056fc <_Z11printStringPKc>
    finishedA = true;
    80003894:	00100793          	li	a5,1
    80003898:	00008717          	auipc	a4,0x8
    8000389c:	20f70023          	sb	a5,512(a4) # 8000ba98 <_ZL9finishedA>
}
    800038a0:	01813083          	ld	ra,24(sp)
    800038a4:	01013403          	ld	s0,16(sp)
    800038a8:	00813483          	ld	s1,8(sp)
    800038ac:	00013903          	ld	s2,0(sp)
    800038b0:	02010113          	addi	sp,sp,32
    800038b4:	00008067          	ret

00000000800038b8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800038b8:	fe010113          	addi	sp,sp,-32
    800038bc:	00113c23          	sd	ra,24(sp)
    800038c0:	00813823          	sd	s0,16(sp)
    800038c4:	00913423          	sd	s1,8(sp)
    800038c8:	01213023          	sd	s2,0(sp)
    800038cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800038d0:	00000913          	li	s2,0
    800038d4:	0380006f          	j	8000390c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	af4080e7          	jalr	-1292(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800038e0:	00148493          	addi	s1,s1,1
    800038e4:	000027b7          	lui	a5,0x2
    800038e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800038ec:	0097ee63          	bltu	a5,s1,80003908 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800038f0:	00000713          	li	a4,0
    800038f4:	000077b7          	lui	a5,0x7
    800038f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800038fc:	fce7eee3          	bltu	a5,a4,800038d8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003900:	00170713          	addi	a4,a4,1
    80003904:	ff1ff06f          	j	800038f4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003908:	00190913          	addi	s2,s2,1
    8000390c:	00f00793          	li	a5,15
    80003910:	0527e063          	bltu	a5,s2,80003950 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003914:	00006517          	auipc	a0,0x6
    80003918:	91c50513          	addi	a0,a0,-1764 # 80009230 <CONSOLE_STATUS+0x220>
    8000391c:	00002097          	auipc	ra,0x2
    80003920:	de0080e7          	jalr	-544(ra) # 800056fc <_Z11printStringPKc>
    80003924:	00000613          	li	a2,0
    80003928:	00a00593          	li	a1,10
    8000392c:	0009051b          	sext.w	a0,s2
    80003930:	00002097          	auipc	ra,0x2
    80003934:	f7c080e7          	jalr	-132(ra) # 800058ac <_Z8printIntiii>
    80003938:	00006517          	auipc	a0,0x6
    8000393c:	83050513          	addi	a0,a0,-2000 # 80009168 <CONSOLE_STATUS+0x158>
    80003940:	00002097          	auipc	ra,0x2
    80003944:	dbc080e7          	jalr	-580(ra) # 800056fc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003948:	00000493          	li	s1,0
    8000394c:	f99ff06f          	j	800038e4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003950:	00006517          	auipc	a0,0x6
    80003954:	8e850513          	addi	a0,a0,-1816 # 80009238 <CONSOLE_STATUS+0x228>
    80003958:	00002097          	auipc	ra,0x2
    8000395c:	da4080e7          	jalr	-604(ra) # 800056fc <_Z11printStringPKc>
    finishedB = true;
    80003960:	00100793          	li	a5,1
    80003964:	00008717          	auipc	a4,0x8
    80003968:	12f70aa3          	sb	a5,309(a4) # 8000ba99 <_ZL9finishedB>
    thread_dispatch();
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	a60080e7          	jalr	-1440(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003974:	01813083          	ld	ra,24(sp)
    80003978:	01013403          	ld	s0,16(sp)
    8000397c:	00813483          	ld	s1,8(sp)
    80003980:	00013903          	ld	s2,0(sp)
    80003984:	02010113          	addi	sp,sp,32
    80003988:	00008067          	ret

000000008000398c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000398c:	fe010113          	addi	sp,sp,-32
    80003990:	00113c23          	sd	ra,24(sp)
    80003994:	00813823          	sd	s0,16(sp)
    80003998:	00913423          	sd	s1,8(sp)
    8000399c:	01213023          	sd	s2,0(sp)
    800039a0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800039a4:	00000493          	li	s1,0
    800039a8:	0400006f          	j	800039e8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800039ac:	00006517          	auipc	a0,0x6
    800039b0:	89c50513          	addi	a0,a0,-1892 # 80009248 <CONSOLE_STATUS+0x238>
    800039b4:	00002097          	auipc	ra,0x2
    800039b8:	d48080e7          	jalr	-696(ra) # 800056fc <_Z11printStringPKc>
    800039bc:	00000613          	li	a2,0
    800039c0:	00a00593          	li	a1,10
    800039c4:	00048513          	mv	a0,s1
    800039c8:	00002097          	auipc	ra,0x2
    800039cc:	ee4080e7          	jalr	-284(ra) # 800058ac <_Z8printIntiii>
    800039d0:	00005517          	auipc	a0,0x5
    800039d4:	79850513          	addi	a0,a0,1944 # 80009168 <CONSOLE_STATUS+0x158>
    800039d8:	00002097          	auipc	ra,0x2
    800039dc:	d24080e7          	jalr	-732(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 3; i++) {
    800039e0:	0014849b          	addiw	s1,s1,1
    800039e4:	0ff4f493          	andi	s1,s1,255
    800039e8:	00200793          	li	a5,2
    800039ec:	fc97f0e3          	bgeu	a5,s1,800039ac <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800039f0:	00006517          	auipc	a0,0x6
    800039f4:	86050513          	addi	a0,a0,-1952 # 80009250 <CONSOLE_STATUS+0x240>
    800039f8:	00002097          	auipc	ra,0x2
    800039fc:	d04080e7          	jalr	-764(ra) # 800056fc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003a00:	00700313          	li	t1,7
    thread_dispatch();
    80003a04:	ffffe097          	auipc	ra,0xffffe
    80003a08:	9c8080e7          	jalr	-1592(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003a0c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003a10:	00006517          	auipc	a0,0x6
    80003a14:	85050513          	addi	a0,a0,-1968 # 80009260 <CONSOLE_STATUS+0x250>
    80003a18:	00002097          	auipc	ra,0x2
    80003a1c:	ce4080e7          	jalr	-796(ra) # 800056fc <_Z11printStringPKc>
    80003a20:	00000613          	li	a2,0
    80003a24:	00a00593          	li	a1,10
    80003a28:	0009051b          	sext.w	a0,s2
    80003a2c:	00002097          	auipc	ra,0x2
    80003a30:	e80080e7          	jalr	-384(ra) # 800058ac <_Z8printIntiii>
    80003a34:	00005517          	auipc	a0,0x5
    80003a38:	73450513          	addi	a0,a0,1844 # 80009168 <CONSOLE_STATUS+0x158>
    80003a3c:	00002097          	auipc	ra,0x2
    80003a40:	cc0080e7          	jalr	-832(ra) # 800056fc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003a44:	00c00513          	li	a0,12
    80003a48:	00000097          	auipc	ra,0x0
    80003a4c:	d30080e7          	jalr	-720(ra) # 80003778 <_ZL9fibonaccim>
    80003a50:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003a54:	00006517          	auipc	a0,0x6
    80003a58:	81450513          	addi	a0,a0,-2028 # 80009268 <CONSOLE_STATUS+0x258>
    80003a5c:	00002097          	auipc	ra,0x2
    80003a60:	ca0080e7          	jalr	-864(ra) # 800056fc <_Z11printStringPKc>
    80003a64:	00000613          	li	a2,0
    80003a68:	00a00593          	li	a1,10
    80003a6c:	0009051b          	sext.w	a0,s2
    80003a70:	00002097          	auipc	ra,0x2
    80003a74:	e3c080e7          	jalr	-452(ra) # 800058ac <_Z8printIntiii>
    80003a78:	00005517          	auipc	a0,0x5
    80003a7c:	6f050513          	addi	a0,a0,1776 # 80009168 <CONSOLE_STATUS+0x158>
    80003a80:	00002097          	auipc	ra,0x2
    80003a84:	c7c080e7          	jalr	-900(ra) # 800056fc <_Z11printStringPKc>
    80003a88:	0400006f          	j	80003ac8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003a8c:	00005517          	auipc	a0,0x5
    80003a90:	7bc50513          	addi	a0,a0,1980 # 80009248 <CONSOLE_STATUS+0x238>
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	c68080e7          	jalr	-920(ra) # 800056fc <_Z11printStringPKc>
    80003a9c:	00000613          	li	a2,0
    80003aa0:	00a00593          	li	a1,10
    80003aa4:	00048513          	mv	a0,s1
    80003aa8:	00002097          	auipc	ra,0x2
    80003aac:	e04080e7          	jalr	-508(ra) # 800058ac <_Z8printIntiii>
    80003ab0:	00005517          	auipc	a0,0x5
    80003ab4:	6b850513          	addi	a0,a0,1720 # 80009168 <CONSOLE_STATUS+0x158>
    80003ab8:	00002097          	auipc	ra,0x2
    80003abc:	c44080e7          	jalr	-956(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003ac0:	0014849b          	addiw	s1,s1,1
    80003ac4:	0ff4f493          	andi	s1,s1,255
    80003ac8:	00500793          	li	a5,5
    80003acc:	fc97f0e3          	bgeu	a5,s1,80003a8c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003ad0:	00005517          	auipc	a0,0x5
    80003ad4:	75050513          	addi	a0,a0,1872 # 80009220 <CONSOLE_STATUS+0x210>
    80003ad8:	00002097          	auipc	ra,0x2
    80003adc:	c24080e7          	jalr	-988(ra) # 800056fc <_Z11printStringPKc>
    finishedC = true;
    80003ae0:	00100793          	li	a5,1
    80003ae4:	00008717          	auipc	a4,0x8
    80003ae8:	faf70b23          	sb	a5,-74(a4) # 8000ba9a <_ZL9finishedC>
    thread_dispatch();
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	8e0080e7          	jalr	-1824(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003af4:	01813083          	ld	ra,24(sp)
    80003af8:	01013403          	ld	s0,16(sp)
    80003afc:	00813483          	ld	s1,8(sp)
    80003b00:	00013903          	ld	s2,0(sp)
    80003b04:	02010113          	addi	sp,sp,32
    80003b08:	00008067          	ret

0000000080003b0c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003b0c:	fe010113          	addi	sp,sp,-32
    80003b10:	00113c23          	sd	ra,24(sp)
    80003b14:	00813823          	sd	s0,16(sp)
    80003b18:	00913423          	sd	s1,8(sp)
    80003b1c:	01213023          	sd	s2,0(sp)
    80003b20:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003b24:	00a00493          	li	s1,10
    80003b28:	0400006f          	j	80003b68 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b2c:	00005517          	auipc	a0,0x5
    80003b30:	74c50513          	addi	a0,a0,1868 # 80009278 <CONSOLE_STATUS+0x268>
    80003b34:	00002097          	auipc	ra,0x2
    80003b38:	bc8080e7          	jalr	-1080(ra) # 800056fc <_Z11printStringPKc>
    80003b3c:	00000613          	li	a2,0
    80003b40:	00a00593          	li	a1,10
    80003b44:	00048513          	mv	a0,s1
    80003b48:	00002097          	auipc	ra,0x2
    80003b4c:	d64080e7          	jalr	-668(ra) # 800058ac <_Z8printIntiii>
    80003b50:	00005517          	auipc	a0,0x5
    80003b54:	61850513          	addi	a0,a0,1560 # 80009168 <CONSOLE_STATUS+0x158>
    80003b58:	00002097          	auipc	ra,0x2
    80003b5c:	ba4080e7          	jalr	-1116(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003b60:	0014849b          	addiw	s1,s1,1
    80003b64:	0ff4f493          	andi	s1,s1,255
    80003b68:	00c00793          	li	a5,12
    80003b6c:	fc97f0e3          	bgeu	a5,s1,80003b2c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003b70:	00005517          	auipc	a0,0x5
    80003b74:	71050513          	addi	a0,a0,1808 # 80009280 <CONSOLE_STATUS+0x270>
    80003b78:	00002097          	auipc	ra,0x2
    80003b7c:	b84080e7          	jalr	-1148(ra) # 800056fc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003b80:	00500313          	li	t1,5
    thread_dispatch();
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	848080e7          	jalr	-1976(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003b8c:	01000513          	li	a0,16
    80003b90:	00000097          	auipc	ra,0x0
    80003b94:	be8080e7          	jalr	-1048(ra) # 80003778 <_ZL9fibonaccim>
    80003b98:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003b9c:	00005517          	auipc	a0,0x5
    80003ba0:	6f450513          	addi	a0,a0,1780 # 80009290 <CONSOLE_STATUS+0x280>
    80003ba4:	00002097          	auipc	ra,0x2
    80003ba8:	b58080e7          	jalr	-1192(ra) # 800056fc <_Z11printStringPKc>
    80003bac:	00000613          	li	a2,0
    80003bb0:	00a00593          	li	a1,10
    80003bb4:	0009051b          	sext.w	a0,s2
    80003bb8:	00002097          	auipc	ra,0x2
    80003bbc:	cf4080e7          	jalr	-780(ra) # 800058ac <_Z8printIntiii>
    80003bc0:	00005517          	auipc	a0,0x5
    80003bc4:	5a850513          	addi	a0,a0,1448 # 80009168 <CONSOLE_STATUS+0x158>
    80003bc8:	00002097          	auipc	ra,0x2
    80003bcc:	b34080e7          	jalr	-1228(ra) # 800056fc <_Z11printStringPKc>
    80003bd0:	0400006f          	j	80003c10 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003bd4:	00005517          	auipc	a0,0x5
    80003bd8:	6a450513          	addi	a0,a0,1700 # 80009278 <CONSOLE_STATUS+0x268>
    80003bdc:	00002097          	auipc	ra,0x2
    80003be0:	b20080e7          	jalr	-1248(ra) # 800056fc <_Z11printStringPKc>
    80003be4:	00000613          	li	a2,0
    80003be8:	00a00593          	li	a1,10
    80003bec:	00048513          	mv	a0,s1
    80003bf0:	00002097          	auipc	ra,0x2
    80003bf4:	cbc080e7          	jalr	-836(ra) # 800058ac <_Z8printIntiii>
    80003bf8:	00005517          	auipc	a0,0x5
    80003bfc:	57050513          	addi	a0,a0,1392 # 80009168 <CONSOLE_STATUS+0x158>
    80003c00:	00002097          	auipc	ra,0x2
    80003c04:	afc080e7          	jalr	-1284(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003c08:	0014849b          	addiw	s1,s1,1
    80003c0c:	0ff4f493          	andi	s1,s1,255
    80003c10:	00f00793          	li	a5,15
    80003c14:	fc97f0e3          	bgeu	a5,s1,80003bd4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003c18:	00005517          	auipc	a0,0x5
    80003c1c:	68850513          	addi	a0,a0,1672 # 800092a0 <CONSOLE_STATUS+0x290>
    80003c20:	00002097          	auipc	ra,0x2
    80003c24:	adc080e7          	jalr	-1316(ra) # 800056fc <_Z11printStringPKc>
    finishedD = true;
    80003c28:	00100793          	li	a5,1
    80003c2c:	00008717          	auipc	a4,0x8
    80003c30:	e6f707a3          	sb	a5,-401(a4) # 8000ba9b <_ZL9finishedD>
    thread_dispatch();
    80003c34:	ffffd097          	auipc	ra,0xffffd
    80003c38:	798080e7          	jalr	1944(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003c3c:	01813083          	ld	ra,24(sp)
    80003c40:	01013403          	ld	s0,16(sp)
    80003c44:	00813483          	ld	s1,8(sp)
    80003c48:	00013903          	ld	s2,0(sp)
    80003c4c:	02010113          	addi	sp,sp,32
    80003c50:	00008067          	ret

0000000080003c54 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003c54:	fc010113          	addi	sp,sp,-64
    80003c58:	02113c23          	sd	ra,56(sp)
    80003c5c:	02813823          	sd	s0,48(sp)
    80003c60:	02913423          	sd	s1,40(sp)
    80003c64:	03213023          	sd	s2,32(sp)
    80003c68:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003c6c:	02000513          	li	a0,32
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	690080e7          	jalr	1680(ra) # 80002300 <_Znwm>
    80003c78:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003c7c:	fffff097          	auipc	ra,0xfffff
    80003c80:	814080e7          	jalr	-2028(ra) # 80002490 <_ZN6ThreadC1Ev>
    80003c84:	00008797          	auipc	a5,0x8
    80003c88:	b9c78793          	addi	a5,a5,-1124 # 8000b820 <_ZTV7WorkerA+0x10>
    80003c8c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003c90:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003c94:	00005517          	auipc	a0,0x5
    80003c98:	61c50513          	addi	a0,a0,1564 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003c9c:	00002097          	auipc	ra,0x2
    80003ca0:	a60080e7          	jalr	-1440(ra) # 800056fc <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003ca4:	02000513          	li	a0,32
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	658080e7          	jalr	1624(ra) # 80002300 <_Znwm>
    80003cb0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003cb4:	ffffe097          	auipc	ra,0xffffe
    80003cb8:	7dc080e7          	jalr	2012(ra) # 80002490 <_ZN6ThreadC1Ev>
    80003cbc:	00008797          	auipc	a5,0x8
    80003cc0:	b8c78793          	addi	a5,a5,-1140 # 8000b848 <_ZTV7WorkerB+0x10>
    80003cc4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003cc8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003ccc:	00005517          	auipc	a0,0x5
    80003cd0:	5fc50513          	addi	a0,a0,1532 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003cd4:	00002097          	auipc	ra,0x2
    80003cd8:	a28080e7          	jalr	-1496(ra) # 800056fc <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003cdc:	02000513          	li	a0,32
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	620080e7          	jalr	1568(ra) # 80002300 <_Znwm>
    80003ce8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003cec:	ffffe097          	auipc	ra,0xffffe
    80003cf0:	7a4080e7          	jalr	1956(ra) # 80002490 <_ZN6ThreadC1Ev>
    80003cf4:	00008797          	auipc	a5,0x8
    80003cf8:	b7c78793          	addi	a5,a5,-1156 # 8000b870 <_ZTV7WorkerC+0x10>
    80003cfc:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003d00:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003d04:	00005517          	auipc	a0,0x5
    80003d08:	5dc50513          	addi	a0,a0,1500 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003d0c:	00002097          	auipc	ra,0x2
    80003d10:	9f0080e7          	jalr	-1552(ra) # 800056fc <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003d14:	02000513          	li	a0,32
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	5e8080e7          	jalr	1512(ra) # 80002300 <_Znwm>
    80003d20:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003d24:	ffffe097          	auipc	ra,0xffffe
    80003d28:	76c080e7          	jalr	1900(ra) # 80002490 <_ZN6ThreadC1Ev>
    80003d2c:	00008797          	auipc	a5,0x8
    80003d30:	b6c78793          	addi	a5,a5,-1172 # 8000b898 <_ZTV7WorkerD+0x10>
    80003d34:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003d38:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003d3c:	00005517          	auipc	a0,0x5
    80003d40:	5bc50513          	addi	a0,a0,1468 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003d44:	00002097          	auipc	ra,0x2
    80003d48:	9b8080e7          	jalr	-1608(ra) # 800056fc <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003d4c:	00000493          	li	s1,0
    80003d50:	00300793          	li	a5,3
    80003d54:	0297c663          	blt	a5,s1,80003d80 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003d58:	00349793          	slli	a5,s1,0x3
    80003d5c:	fe040713          	addi	a4,s0,-32
    80003d60:	00f707b3          	add	a5,a4,a5
    80003d64:	fe07b503          	ld	a0,-32(a5)
    80003d68:	ffffe097          	auipc	ra,0xffffe
    80003d6c:	6a4080e7          	jalr	1700(ra) # 8000240c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003d70:	0014849b          	addiw	s1,s1,1
    80003d74:	fddff06f          	j	80003d50 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003d78:	ffffe097          	auipc	ra,0xffffe
    80003d7c:	6c4080e7          	jalr	1732(ra) # 8000243c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003d80:	00008797          	auipc	a5,0x8
    80003d84:	d187c783          	lbu	a5,-744(a5) # 8000ba98 <_ZL9finishedA>
    80003d88:	fe0788e3          	beqz	a5,80003d78 <_Z20Threads_CPP_API_testv+0x124>
    80003d8c:	00008797          	auipc	a5,0x8
    80003d90:	d0d7c783          	lbu	a5,-755(a5) # 8000ba99 <_ZL9finishedB>
    80003d94:	fe0782e3          	beqz	a5,80003d78 <_Z20Threads_CPP_API_testv+0x124>
    80003d98:	00008797          	auipc	a5,0x8
    80003d9c:	d027c783          	lbu	a5,-766(a5) # 8000ba9a <_ZL9finishedC>
    80003da0:	fc078ce3          	beqz	a5,80003d78 <_Z20Threads_CPP_API_testv+0x124>
    80003da4:	00008797          	auipc	a5,0x8
    80003da8:	cf77c783          	lbu	a5,-777(a5) # 8000ba9b <_ZL9finishedD>
    80003dac:	fc0786e3          	beqz	a5,80003d78 <_Z20Threads_CPP_API_testv+0x124>
    80003db0:	fc040493          	addi	s1,s0,-64
    80003db4:	0080006f          	j	80003dbc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003db8:	00848493          	addi	s1,s1,8
    80003dbc:	fe040793          	addi	a5,s0,-32
    80003dc0:	08f48663          	beq	s1,a5,80003e4c <_Z20Threads_CPP_API_testv+0x1f8>
    80003dc4:	0004b503          	ld	a0,0(s1)
    80003dc8:	fe0508e3          	beqz	a0,80003db8 <_Z20Threads_CPP_API_testv+0x164>
    80003dcc:	00053783          	ld	a5,0(a0)
    80003dd0:	0087b783          	ld	a5,8(a5)
    80003dd4:	000780e7          	jalr	a5
    80003dd8:	fe1ff06f          	j	80003db8 <_Z20Threads_CPP_API_testv+0x164>
    80003ddc:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003de0:	00048513          	mv	a0,s1
    80003de4:	ffffe097          	auipc	ra,0xffffe
    80003de8:	544080e7          	jalr	1348(ra) # 80002328 <_ZdlPv>
    80003dec:	00090513          	mv	a0,s2
    80003df0:	00009097          	auipc	ra,0x9
    80003df4:	db8080e7          	jalr	-584(ra) # 8000cba8 <_Unwind_Resume>
    80003df8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003dfc:	00048513          	mv	a0,s1
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	528080e7          	jalr	1320(ra) # 80002328 <_ZdlPv>
    80003e08:	00090513          	mv	a0,s2
    80003e0c:	00009097          	auipc	ra,0x9
    80003e10:	d9c080e7          	jalr	-612(ra) # 8000cba8 <_Unwind_Resume>
    80003e14:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003e18:	00048513          	mv	a0,s1
    80003e1c:	ffffe097          	auipc	ra,0xffffe
    80003e20:	50c080e7          	jalr	1292(ra) # 80002328 <_ZdlPv>
    80003e24:	00090513          	mv	a0,s2
    80003e28:	00009097          	auipc	ra,0x9
    80003e2c:	d80080e7          	jalr	-640(ra) # 8000cba8 <_Unwind_Resume>
    80003e30:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003e34:	00048513          	mv	a0,s1
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	4f0080e7          	jalr	1264(ra) # 80002328 <_ZdlPv>
    80003e40:	00090513          	mv	a0,s2
    80003e44:	00009097          	auipc	ra,0x9
    80003e48:	d64080e7          	jalr	-668(ra) # 8000cba8 <_Unwind_Resume>
}
    80003e4c:	03813083          	ld	ra,56(sp)
    80003e50:	03013403          	ld	s0,48(sp)
    80003e54:	02813483          	ld	s1,40(sp)
    80003e58:	02013903          	ld	s2,32(sp)
    80003e5c:	04010113          	addi	sp,sp,64
    80003e60:	00008067          	ret

0000000080003e64 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003e64:	ff010113          	addi	sp,sp,-16
    80003e68:	00113423          	sd	ra,8(sp)
    80003e6c:	00813023          	sd	s0,0(sp)
    80003e70:	01010413          	addi	s0,sp,16
    80003e74:	00008797          	auipc	a5,0x8
    80003e78:	9ac78793          	addi	a5,a5,-1620 # 8000b820 <_ZTV7WorkerA+0x10>
    80003e7c:	00f53023          	sd	a5,0(a0)
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	3e8080e7          	jalr	1000(ra) # 80002268 <_ZN6ThreadD1Ev>
    80003e88:	00813083          	ld	ra,8(sp)
    80003e8c:	00013403          	ld	s0,0(sp)
    80003e90:	01010113          	addi	sp,sp,16
    80003e94:	00008067          	ret

0000000080003e98 <_ZN7WorkerAD0Ev>:
    80003e98:	fe010113          	addi	sp,sp,-32
    80003e9c:	00113c23          	sd	ra,24(sp)
    80003ea0:	00813823          	sd	s0,16(sp)
    80003ea4:	00913423          	sd	s1,8(sp)
    80003ea8:	02010413          	addi	s0,sp,32
    80003eac:	00050493          	mv	s1,a0
    80003eb0:	00008797          	auipc	a5,0x8
    80003eb4:	97078793          	addi	a5,a5,-1680 # 8000b820 <_ZTV7WorkerA+0x10>
    80003eb8:	00f53023          	sd	a5,0(a0)
    80003ebc:	ffffe097          	auipc	ra,0xffffe
    80003ec0:	3ac080e7          	jalr	940(ra) # 80002268 <_ZN6ThreadD1Ev>
    80003ec4:	00048513          	mv	a0,s1
    80003ec8:	ffffe097          	auipc	ra,0xffffe
    80003ecc:	460080e7          	jalr	1120(ra) # 80002328 <_ZdlPv>
    80003ed0:	01813083          	ld	ra,24(sp)
    80003ed4:	01013403          	ld	s0,16(sp)
    80003ed8:	00813483          	ld	s1,8(sp)
    80003edc:	02010113          	addi	sp,sp,32
    80003ee0:	00008067          	ret

0000000080003ee4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003ee4:	ff010113          	addi	sp,sp,-16
    80003ee8:	00113423          	sd	ra,8(sp)
    80003eec:	00813023          	sd	s0,0(sp)
    80003ef0:	01010413          	addi	s0,sp,16
    80003ef4:	00008797          	auipc	a5,0x8
    80003ef8:	95478793          	addi	a5,a5,-1708 # 8000b848 <_ZTV7WorkerB+0x10>
    80003efc:	00f53023          	sd	a5,0(a0)
    80003f00:	ffffe097          	auipc	ra,0xffffe
    80003f04:	368080e7          	jalr	872(ra) # 80002268 <_ZN6ThreadD1Ev>
    80003f08:	00813083          	ld	ra,8(sp)
    80003f0c:	00013403          	ld	s0,0(sp)
    80003f10:	01010113          	addi	sp,sp,16
    80003f14:	00008067          	ret

0000000080003f18 <_ZN7WorkerBD0Ev>:
    80003f18:	fe010113          	addi	sp,sp,-32
    80003f1c:	00113c23          	sd	ra,24(sp)
    80003f20:	00813823          	sd	s0,16(sp)
    80003f24:	00913423          	sd	s1,8(sp)
    80003f28:	02010413          	addi	s0,sp,32
    80003f2c:	00050493          	mv	s1,a0
    80003f30:	00008797          	auipc	a5,0x8
    80003f34:	91878793          	addi	a5,a5,-1768 # 8000b848 <_ZTV7WorkerB+0x10>
    80003f38:	00f53023          	sd	a5,0(a0)
    80003f3c:	ffffe097          	auipc	ra,0xffffe
    80003f40:	32c080e7          	jalr	812(ra) # 80002268 <_ZN6ThreadD1Ev>
    80003f44:	00048513          	mv	a0,s1
    80003f48:	ffffe097          	auipc	ra,0xffffe
    80003f4c:	3e0080e7          	jalr	992(ra) # 80002328 <_ZdlPv>
    80003f50:	01813083          	ld	ra,24(sp)
    80003f54:	01013403          	ld	s0,16(sp)
    80003f58:	00813483          	ld	s1,8(sp)
    80003f5c:	02010113          	addi	sp,sp,32
    80003f60:	00008067          	ret

0000000080003f64 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003f64:	ff010113          	addi	sp,sp,-16
    80003f68:	00113423          	sd	ra,8(sp)
    80003f6c:	00813023          	sd	s0,0(sp)
    80003f70:	01010413          	addi	s0,sp,16
    80003f74:	00008797          	auipc	a5,0x8
    80003f78:	8fc78793          	addi	a5,a5,-1796 # 8000b870 <_ZTV7WorkerC+0x10>
    80003f7c:	00f53023          	sd	a5,0(a0)
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	2e8080e7          	jalr	744(ra) # 80002268 <_ZN6ThreadD1Ev>
    80003f88:	00813083          	ld	ra,8(sp)
    80003f8c:	00013403          	ld	s0,0(sp)
    80003f90:	01010113          	addi	sp,sp,16
    80003f94:	00008067          	ret

0000000080003f98 <_ZN7WorkerCD0Ev>:
    80003f98:	fe010113          	addi	sp,sp,-32
    80003f9c:	00113c23          	sd	ra,24(sp)
    80003fa0:	00813823          	sd	s0,16(sp)
    80003fa4:	00913423          	sd	s1,8(sp)
    80003fa8:	02010413          	addi	s0,sp,32
    80003fac:	00050493          	mv	s1,a0
    80003fb0:	00008797          	auipc	a5,0x8
    80003fb4:	8c078793          	addi	a5,a5,-1856 # 8000b870 <_ZTV7WorkerC+0x10>
    80003fb8:	00f53023          	sd	a5,0(a0)
    80003fbc:	ffffe097          	auipc	ra,0xffffe
    80003fc0:	2ac080e7          	jalr	684(ra) # 80002268 <_ZN6ThreadD1Ev>
    80003fc4:	00048513          	mv	a0,s1
    80003fc8:	ffffe097          	auipc	ra,0xffffe
    80003fcc:	360080e7          	jalr	864(ra) # 80002328 <_ZdlPv>
    80003fd0:	01813083          	ld	ra,24(sp)
    80003fd4:	01013403          	ld	s0,16(sp)
    80003fd8:	00813483          	ld	s1,8(sp)
    80003fdc:	02010113          	addi	sp,sp,32
    80003fe0:	00008067          	ret

0000000080003fe4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003fe4:	ff010113          	addi	sp,sp,-16
    80003fe8:	00113423          	sd	ra,8(sp)
    80003fec:	00813023          	sd	s0,0(sp)
    80003ff0:	01010413          	addi	s0,sp,16
    80003ff4:	00008797          	auipc	a5,0x8
    80003ff8:	8a478793          	addi	a5,a5,-1884 # 8000b898 <_ZTV7WorkerD+0x10>
    80003ffc:	00f53023          	sd	a5,0(a0)
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	268080e7          	jalr	616(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004008:	00813083          	ld	ra,8(sp)
    8000400c:	00013403          	ld	s0,0(sp)
    80004010:	01010113          	addi	sp,sp,16
    80004014:	00008067          	ret

0000000080004018 <_ZN7WorkerDD0Ev>:
    80004018:	fe010113          	addi	sp,sp,-32
    8000401c:	00113c23          	sd	ra,24(sp)
    80004020:	00813823          	sd	s0,16(sp)
    80004024:	00913423          	sd	s1,8(sp)
    80004028:	02010413          	addi	s0,sp,32
    8000402c:	00050493          	mv	s1,a0
    80004030:	00008797          	auipc	a5,0x8
    80004034:	86878793          	addi	a5,a5,-1944 # 8000b898 <_ZTV7WorkerD+0x10>
    80004038:	00f53023          	sd	a5,0(a0)
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	22c080e7          	jalr	556(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004044:	00048513          	mv	a0,s1
    80004048:	ffffe097          	auipc	ra,0xffffe
    8000404c:	2e0080e7          	jalr	736(ra) # 80002328 <_ZdlPv>
    80004050:	01813083          	ld	ra,24(sp)
    80004054:	01013403          	ld	s0,16(sp)
    80004058:	00813483          	ld	s1,8(sp)
    8000405c:	02010113          	addi	sp,sp,32
    80004060:	00008067          	ret

0000000080004064 <_ZN7WorkerA3runEv>:
    void run() override {
    80004064:	ff010113          	addi	sp,sp,-16
    80004068:	00113423          	sd	ra,8(sp)
    8000406c:	00813023          	sd	s0,0(sp)
    80004070:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004074:	00000593          	li	a1,0
    80004078:	fffff097          	auipc	ra,0xfffff
    8000407c:	774080e7          	jalr	1908(ra) # 800037ec <_ZN7WorkerA11workerBodyAEPv>
    }
    80004080:	00813083          	ld	ra,8(sp)
    80004084:	00013403          	ld	s0,0(sp)
    80004088:	01010113          	addi	sp,sp,16
    8000408c:	00008067          	ret

0000000080004090 <_ZN7WorkerB3runEv>:
    void run() override {
    80004090:	ff010113          	addi	sp,sp,-16
    80004094:	00113423          	sd	ra,8(sp)
    80004098:	00813023          	sd	s0,0(sp)
    8000409c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800040a0:	00000593          	li	a1,0
    800040a4:	00000097          	auipc	ra,0x0
    800040a8:	814080e7          	jalr	-2028(ra) # 800038b8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800040ac:	00813083          	ld	ra,8(sp)
    800040b0:	00013403          	ld	s0,0(sp)
    800040b4:	01010113          	addi	sp,sp,16
    800040b8:	00008067          	ret

00000000800040bc <_ZN7WorkerC3runEv>:
    void run() override {
    800040bc:	ff010113          	addi	sp,sp,-16
    800040c0:	00113423          	sd	ra,8(sp)
    800040c4:	00813023          	sd	s0,0(sp)
    800040c8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800040cc:	00000593          	li	a1,0
    800040d0:	00000097          	auipc	ra,0x0
    800040d4:	8bc080e7          	jalr	-1860(ra) # 8000398c <_ZN7WorkerC11workerBodyCEPv>
    }
    800040d8:	00813083          	ld	ra,8(sp)
    800040dc:	00013403          	ld	s0,0(sp)
    800040e0:	01010113          	addi	sp,sp,16
    800040e4:	00008067          	ret

00000000800040e8 <_ZN7WorkerD3runEv>:
    void run() override {
    800040e8:	ff010113          	addi	sp,sp,-16
    800040ec:	00113423          	sd	ra,8(sp)
    800040f0:	00813023          	sd	s0,0(sp)
    800040f4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800040f8:	00000593          	li	a1,0
    800040fc:	00000097          	auipc	ra,0x0
    80004100:	a10080e7          	jalr	-1520(ra) # 80003b0c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004104:	00813083          	ld	ra,8(sp)
    80004108:	00013403          	ld	s0,0(sp)
    8000410c:	01010113          	addi	sp,sp,16
    80004110:	00008067          	ret

0000000080004114 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004114:	f8010113          	addi	sp,sp,-128
    80004118:	06113c23          	sd	ra,120(sp)
    8000411c:	06813823          	sd	s0,112(sp)
    80004120:	06913423          	sd	s1,104(sp)
    80004124:	07213023          	sd	s2,96(sp)
    80004128:	05313c23          	sd	s3,88(sp)
    8000412c:	05413823          	sd	s4,80(sp)
    80004130:	05513423          	sd	s5,72(sp)
    80004134:	05613023          	sd	s6,64(sp)
    80004138:	03713c23          	sd	s7,56(sp)
    8000413c:	03813823          	sd	s8,48(sp)
    80004140:	03913423          	sd	s9,40(sp)
    80004144:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004148:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000414c:	00005517          	auipc	a0,0x5
    80004150:	fe450513          	addi	a0,a0,-28 # 80009130 <CONSOLE_STATUS+0x120>
    80004154:	00001097          	auipc	ra,0x1
    80004158:	5a8080e7          	jalr	1448(ra) # 800056fc <_Z11printStringPKc>
    getString(input, 30);
    8000415c:	01e00593          	li	a1,30
    80004160:	f8040493          	addi	s1,s0,-128
    80004164:	00048513          	mv	a0,s1
    80004168:	00001097          	auipc	ra,0x1
    8000416c:	61c080e7          	jalr	1564(ra) # 80005784 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004170:	00048513          	mv	a0,s1
    80004174:	00001097          	auipc	ra,0x1
    80004178:	6e8080e7          	jalr	1768(ra) # 8000585c <_Z11stringToIntPKc>
    8000417c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004180:	00005517          	auipc	a0,0x5
    80004184:	fd050513          	addi	a0,a0,-48 # 80009150 <CONSOLE_STATUS+0x140>
    80004188:	00001097          	auipc	ra,0x1
    8000418c:	574080e7          	jalr	1396(ra) # 800056fc <_Z11printStringPKc>
    getString(input, 30);
    80004190:	01e00593          	li	a1,30
    80004194:	00048513          	mv	a0,s1
    80004198:	00001097          	auipc	ra,0x1
    8000419c:	5ec080e7          	jalr	1516(ra) # 80005784 <_Z9getStringPci>
    n = stringToInt(input);
    800041a0:	00048513          	mv	a0,s1
    800041a4:	00001097          	auipc	ra,0x1
    800041a8:	6b8080e7          	jalr	1720(ra) # 8000585c <_Z11stringToIntPKc>
    800041ac:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800041b0:	00005517          	auipc	a0,0x5
    800041b4:	fc050513          	addi	a0,a0,-64 # 80009170 <CONSOLE_STATUS+0x160>
    800041b8:	00001097          	auipc	ra,0x1
    800041bc:	544080e7          	jalr	1348(ra) # 800056fc <_Z11printStringPKc>
    printInt(threadNum);
    800041c0:	00000613          	li	a2,0
    800041c4:	00a00593          	li	a1,10
    800041c8:	00098513          	mv	a0,s3
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	6e0080e7          	jalr	1760(ra) # 800058ac <_Z8printIntiii>
    printString(" i velicina bafera ");
    800041d4:	00005517          	auipc	a0,0x5
    800041d8:	fb450513          	addi	a0,a0,-76 # 80009188 <CONSOLE_STATUS+0x178>
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	520080e7          	jalr	1312(ra) # 800056fc <_Z11printStringPKc>
    printInt(n);
    800041e4:	00000613          	li	a2,0
    800041e8:	00a00593          	li	a1,10
    800041ec:	00048513          	mv	a0,s1
    800041f0:	00001097          	auipc	ra,0x1
    800041f4:	6bc080e7          	jalr	1724(ra) # 800058ac <_Z8printIntiii>
    printString(".\n");
    800041f8:	00005517          	auipc	a0,0x5
    800041fc:	fa850513          	addi	a0,a0,-88 # 800091a0 <CONSOLE_STATUS+0x190>
    80004200:	00001097          	auipc	ra,0x1
    80004204:	4fc080e7          	jalr	1276(ra) # 800056fc <_Z11printStringPKc>
    if (threadNum > n) {
    80004208:	0334c463          	blt	s1,s3,80004230 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000420c:	03305c63          	blez	s3,80004244 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004210:	03800513          	li	a0,56
    80004214:	ffffe097          	auipc	ra,0xffffe
    80004218:	0ec080e7          	jalr	236(ra) # 80002300 <_Znwm>
    8000421c:	00050a93          	mv	s5,a0
    80004220:	00048593          	mv	a1,s1
    80004224:	00001097          	auipc	ra,0x1
    80004228:	7a8080e7          	jalr	1960(ra) # 800059cc <_ZN9BufferCPPC1Ei>
    8000422c:	0300006f          	j	8000425c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004230:	00005517          	auipc	a0,0x5
    80004234:	f7850513          	addi	a0,a0,-136 # 800091a8 <CONSOLE_STATUS+0x198>
    80004238:	00001097          	auipc	ra,0x1
    8000423c:	4c4080e7          	jalr	1220(ra) # 800056fc <_Z11printStringPKc>
        return;
    80004240:	0140006f          	j	80004254 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004244:	00005517          	auipc	a0,0x5
    80004248:	fa450513          	addi	a0,a0,-92 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000424c:	00001097          	auipc	ra,0x1
    80004250:	4b0080e7          	jalr	1200(ra) # 800056fc <_Z11printStringPKc>
        return;
    80004254:	000c0113          	mv	sp,s8
    80004258:	2140006f          	j	8000446c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000425c:	01000513          	li	a0,16
    80004260:	ffffe097          	auipc	ra,0xffffe
    80004264:	0a0080e7          	jalr	160(ra) # 80002300 <_Znwm>
    80004268:	00050913          	mv	s2,a0
    8000426c:	00000593          	li	a1,0
    80004270:	ffffe097          	auipc	ra,0xffffe
    80004274:	248080e7          	jalr	584(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    80004278:	00008797          	auipc	a5,0x8
    8000427c:	8327b823          	sd	s2,-2000(a5) # 8000baa8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004280:	00399793          	slli	a5,s3,0x3
    80004284:	00f78793          	addi	a5,a5,15
    80004288:	ff07f793          	andi	a5,a5,-16
    8000428c:	40f10133          	sub	sp,sp,a5
    80004290:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004294:	0019871b          	addiw	a4,s3,1
    80004298:	00171793          	slli	a5,a4,0x1
    8000429c:	00e787b3          	add	a5,a5,a4
    800042a0:	00379793          	slli	a5,a5,0x3
    800042a4:	00f78793          	addi	a5,a5,15
    800042a8:	ff07f793          	andi	a5,a5,-16
    800042ac:	40f10133          	sub	sp,sp,a5
    800042b0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800042b4:	00199493          	slli	s1,s3,0x1
    800042b8:	013484b3          	add	s1,s1,s3
    800042bc:	00349493          	slli	s1,s1,0x3
    800042c0:	009b04b3          	add	s1,s6,s1
    800042c4:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800042c8:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800042cc:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800042d0:	02800513          	li	a0,40
    800042d4:	ffffe097          	auipc	ra,0xffffe
    800042d8:	02c080e7          	jalr	44(ra) # 80002300 <_Znwm>
    800042dc:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800042e0:	ffffe097          	auipc	ra,0xffffe
    800042e4:	1b0080e7          	jalr	432(ra) # 80002490 <_ZN6ThreadC1Ev>
    800042e8:	00007797          	auipc	a5,0x7
    800042ec:	62878793          	addi	a5,a5,1576 # 8000b910 <_ZTV8Consumer+0x10>
    800042f0:	00fbb023          	sd	a5,0(s7)
    800042f4:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800042f8:	000b8513          	mv	a0,s7
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	110080e7          	jalr	272(ra) # 8000240c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004304:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004308:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000430c:	00007797          	auipc	a5,0x7
    80004310:	79c7b783          	ld	a5,1948(a5) # 8000baa8 <_ZL10waitForAll>
    80004314:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004318:	02800513          	li	a0,40
    8000431c:	ffffe097          	auipc	ra,0xffffe
    80004320:	fe4080e7          	jalr	-28(ra) # 80002300 <_Znwm>
    80004324:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004328:	ffffe097          	auipc	ra,0xffffe
    8000432c:	168080e7          	jalr	360(ra) # 80002490 <_ZN6ThreadC1Ev>
    80004330:	00007797          	auipc	a5,0x7
    80004334:	59078793          	addi	a5,a5,1424 # 8000b8c0 <_ZTV16ProducerKeyborad+0x10>
    80004338:	00f4b023          	sd	a5,0(s1)
    8000433c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004340:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004344:	00048513          	mv	a0,s1
    80004348:	ffffe097          	auipc	ra,0xffffe
    8000434c:	0c4080e7          	jalr	196(ra) # 8000240c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004350:	00100913          	li	s2,1
    80004354:	0300006f          	j	80004384 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004358:	00007797          	auipc	a5,0x7
    8000435c:	59078793          	addi	a5,a5,1424 # 8000b8e8 <_ZTV8Producer+0x10>
    80004360:	00fcb023          	sd	a5,0(s9)
    80004364:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004368:	00391793          	slli	a5,s2,0x3
    8000436c:	00fa07b3          	add	a5,s4,a5
    80004370:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004374:	000c8513          	mv	a0,s9
    80004378:	ffffe097          	auipc	ra,0xffffe
    8000437c:	094080e7          	jalr	148(ra) # 8000240c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004380:	0019091b          	addiw	s2,s2,1
    80004384:	05395263          	bge	s2,s3,800043c8 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004388:	00191493          	slli	s1,s2,0x1
    8000438c:	012484b3          	add	s1,s1,s2
    80004390:	00349493          	slli	s1,s1,0x3
    80004394:	009b04b3          	add	s1,s6,s1
    80004398:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    8000439c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800043a0:	00007797          	auipc	a5,0x7
    800043a4:	7087b783          	ld	a5,1800(a5) # 8000baa8 <_ZL10waitForAll>
    800043a8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800043ac:	02800513          	li	a0,40
    800043b0:	ffffe097          	auipc	ra,0xffffe
    800043b4:	f50080e7          	jalr	-176(ra) # 80002300 <_Znwm>
    800043b8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800043bc:	ffffe097          	auipc	ra,0xffffe
    800043c0:	0d4080e7          	jalr	212(ra) # 80002490 <_ZN6ThreadC1Ev>
    800043c4:	f95ff06f          	j	80004358 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800043c8:	ffffe097          	auipc	ra,0xffffe
    800043cc:	074080e7          	jalr	116(ra) # 8000243c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800043d0:	00000493          	li	s1,0
    800043d4:	0099ce63          	blt	s3,s1,800043f0 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800043d8:	00007517          	auipc	a0,0x7
    800043dc:	6d053503          	ld	a0,1744(a0) # 8000baa8 <_ZL10waitForAll>
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	114080e7          	jalr	276(ra) # 800024f4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800043e8:	0014849b          	addiw	s1,s1,1
    800043ec:	fe9ff06f          	j	800043d4 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800043f0:	00007517          	auipc	a0,0x7
    800043f4:	6b853503          	ld	a0,1720(a0) # 8000baa8 <_ZL10waitForAll>
    800043f8:	00050863          	beqz	a0,80004408 <_Z20testConsumerProducerv+0x2f4>
    800043fc:	00053783          	ld	a5,0(a0)
    80004400:	0087b783          	ld	a5,8(a5)
    80004404:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004408:	00000493          	li	s1,0
    8000440c:	0080006f          	j	80004414 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004410:	0014849b          	addiw	s1,s1,1
    80004414:	0334d263          	bge	s1,s3,80004438 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004418:	00349793          	slli	a5,s1,0x3
    8000441c:	00fa07b3          	add	a5,s4,a5
    80004420:	0007b503          	ld	a0,0(a5)
    80004424:	fe0506e3          	beqz	a0,80004410 <_Z20testConsumerProducerv+0x2fc>
    80004428:	00053783          	ld	a5,0(a0)
    8000442c:	0087b783          	ld	a5,8(a5)
    80004430:	000780e7          	jalr	a5
    80004434:	fddff06f          	j	80004410 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004438:	000b8a63          	beqz	s7,8000444c <_Z20testConsumerProducerv+0x338>
    8000443c:	000bb783          	ld	a5,0(s7)
    80004440:	0087b783          	ld	a5,8(a5)
    80004444:	000b8513          	mv	a0,s7
    80004448:	000780e7          	jalr	a5
    delete buffer;
    8000444c:	000a8e63          	beqz	s5,80004468 <_Z20testConsumerProducerv+0x354>
    80004450:	000a8513          	mv	a0,s5
    80004454:	00002097          	auipc	ra,0x2
    80004458:	870080e7          	jalr	-1936(ra) # 80005cc4 <_ZN9BufferCPPD1Ev>
    8000445c:	000a8513          	mv	a0,s5
    80004460:	ffffe097          	auipc	ra,0xffffe
    80004464:	ec8080e7          	jalr	-312(ra) # 80002328 <_ZdlPv>
    80004468:	000c0113          	mv	sp,s8
}
    8000446c:	f8040113          	addi	sp,s0,-128
    80004470:	07813083          	ld	ra,120(sp)
    80004474:	07013403          	ld	s0,112(sp)
    80004478:	06813483          	ld	s1,104(sp)
    8000447c:	06013903          	ld	s2,96(sp)
    80004480:	05813983          	ld	s3,88(sp)
    80004484:	05013a03          	ld	s4,80(sp)
    80004488:	04813a83          	ld	s5,72(sp)
    8000448c:	04013b03          	ld	s6,64(sp)
    80004490:	03813b83          	ld	s7,56(sp)
    80004494:	03013c03          	ld	s8,48(sp)
    80004498:	02813c83          	ld	s9,40(sp)
    8000449c:	08010113          	addi	sp,sp,128
    800044a0:	00008067          	ret
    800044a4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800044a8:	000a8513          	mv	a0,s5
    800044ac:	ffffe097          	auipc	ra,0xffffe
    800044b0:	e7c080e7          	jalr	-388(ra) # 80002328 <_ZdlPv>
    800044b4:	00048513          	mv	a0,s1
    800044b8:	00008097          	auipc	ra,0x8
    800044bc:	6f0080e7          	jalr	1776(ra) # 8000cba8 <_Unwind_Resume>
    800044c0:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800044c4:	00090513          	mv	a0,s2
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	e60080e7          	jalr	-416(ra) # 80002328 <_ZdlPv>
    800044d0:	00048513          	mv	a0,s1
    800044d4:	00008097          	auipc	ra,0x8
    800044d8:	6d4080e7          	jalr	1748(ra) # 8000cba8 <_Unwind_Resume>
    800044dc:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800044e0:	000b8513          	mv	a0,s7
    800044e4:	ffffe097          	auipc	ra,0xffffe
    800044e8:	e44080e7          	jalr	-444(ra) # 80002328 <_ZdlPv>
    800044ec:	00048513          	mv	a0,s1
    800044f0:	00008097          	auipc	ra,0x8
    800044f4:	6b8080e7          	jalr	1720(ra) # 8000cba8 <_Unwind_Resume>
    800044f8:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800044fc:	00048513          	mv	a0,s1
    80004500:	ffffe097          	auipc	ra,0xffffe
    80004504:	e28080e7          	jalr	-472(ra) # 80002328 <_ZdlPv>
    80004508:	00090513          	mv	a0,s2
    8000450c:	00008097          	auipc	ra,0x8
    80004510:	69c080e7          	jalr	1692(ra) # 8000cba8 <_Unwind_Resume>
    80004514:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004518:	000c8513          	mv	a0,s9
    8000451c:	ffffe097          	auipc	ra,0xffffe
    80004520:	e0c080e7          	jalr	-500(ra) # 80002328 <_ZdlPv>
    80004524:	00048513          	mv	a0,s1
    80004528:	00008097          	auipc	ra,0x8
    8000452c:	680080e7          	jalr	1664(ra) # 8000cba8 <_Unwind_Resume>

0000000080004530 <_ZN8Consumer3runEv>:
    void run() override {
    80004530:	fd010113          	addi	sp,sp,-48
    80004534:	02113423          	sd	ra,40(sp)
    80004538:	02813023          	sd	s0,32(sp)
    8000453c:	00913c23          	sd	s1,24(sp)
    80004540:	01213823          	sd	s2,16(sp)
    80004544:	01313423          	sd	s3,8(sp)
    80004548:	03010413          	addi	s0,sp,48
    8000454c:	00050913          	mv	s2,a0
        int i = 0;
    80004550:	00000993          	li	s3,0
    80004554:	0100006f          	j	80004564 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004558:	00a00513          	li	a0,10
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	0c0080e7          	jalr	192(ra) # 8000261c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004564:	00007797          	auipc	a5,0x7
    80004568:	53c7a783          	lw	a5,1340(a5) # 8000baa0 <_ZL9threadEnd>
    8000456c:	04079a63          	bnez	a5,800045c0 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004570:	02093783          	ld	a5,32(s2)
    80004574:	0087b503          	ld	a0,8(a5)
    80004578:	00001097          	auipc	ra,0x1
    8000457c:	638080e7          	jalr	1592(ra) # 80005bb0 <_ZN9BufferCPP3getEv>
            i++;
    80004580:	0019849b          	addiw	s1,s3,1
    80004584:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004588:	0ff57513          	andi	a0,a0,255
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	090080e7          	jalr	144(ra) # 8000261c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004594:	05000793          	li	a5,80
    80004598:	02f4e4bb          	remw	s1,s1,a5
    8000459c:	fc0494e3          	bnez	s1,80004564 <_ZN8Consumer3runEv+0x34>
    800045a0:	fb9ff06f          	j	80004558 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800045a4:	02093783          	ld	a5,32(s2)
    800045a8:	0087b503          	ld	a0,8(a5)
    800045ac:	00001097          	auipc	ra,0x1
    800045b0:	604080e7          	jalr	1540(ra) # 80005bb0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800045b4:	0ff57513          	andi	a0,a0,255
    800045b8:	ffffe097          	auipc	ra,0xffffe
    800045bc:	064080e7          	jalr	100(ra) # 8000261c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800045c0:	02093783          	ld	a5,32(s2)
    800045c4:	0087b503          	ld	a0,8(a5)
    800045c8:	00001097          	auipc	ra,0x1
    800045cc:	674080e7          	jalr	1652(ra) # 80005c3c <_ZN9BufferCPP6getCntEv>
    800045d0:	fca04ae3          	bgtz	a0,800045a4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800045d4:	02093783          	ld	a5,32(s2)
    800045d8:	0107b503          	ld	a0,16(a5)
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	f50080e7          	jalr	-176(ra) # 8000252c <_ZN9Semaphore6signalEv>
    }
    800045e4:	02813083          	ld	ra,40(sp)
    800045e8:	02013403          	ld	s0,32(sp)
    800045ec:	01813483          	ld	s1,24(sp)
    800045f0:	01013903          	ld	s2,16(sp)
    800045f4:	00813983          	ld	s3,8(sp)
    800045f8:	03010113          	addi	sp,sp,48
    800045fc:	00008067          	ret

0000000080004600 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004600:	ff010113          	addi	sp,sp,-16
    80004604:	00113423          	sd	ra,8(sp)
    80004608:	00813023          	sd	s0,0(sp)
    8000460c:	01010413          	addi	s0,sp,16
    80004610:	00007797          	auipc	a5,0x7
    80004614:	30078793          	addi	a5,a5,768 # 8000b910 <_ZTV8Consumer+0x10>
    80004618:	00f53023          	sd	a5,0(a0)
    8000461c:	ffffe097          	auipc	ra,0xffffe
    80004620:	c4c080e7          	jalr	-948(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004624:	00813083          	ld	ra,8(sp)
    80004628:	00013403          	ld	s0,0(sp)
    8000462c:	01010113          	addi	sp,sp,16
    80004630:	00008067          	ret

0000000080004634 <_ZN8ConsumerD0Ev>:
    80004634:	fe010113          	addi	sp,sp,-32
    80004638:	00113c23          	sd	ra,24(sp)
    8000463c:	00813823          	sd	s0,16(sp)
    80004640:	00913423          	sd	s1,8(sp)
    80004644:	02010413          	addi	s0,sp,32
    80004648:	00050493          	mv	s1,a0
    8000464c:	00007797          	auipc	a5,0x7
    80004650:	2c478793          	addi	a5,a5,708 # 8000b910 <_ZTV8Consumer+0x10>
    80004654:	00f53023          	sd	a5,0(a0)
    80004658:	ffffe097          	auipc	ra,0xffffe
    8000465c:	c10080e7          	jalr	-1008(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004660:	00048513          	mv	a0,s1
    80004664:	ffffe097          	auipc	ra,0xffffe
    80004668:	cc4080e7          	jalr	-828(ra) # 80002328 <_ZdlPv>
    8000466c:	01813083          	ld	ra,24(sp)
    80004670:	01013403          	ld	s0,16(sp)
    80004674:	00813483          	ld	s1,8(sp)
    80004678:	02010113          	addi	sp,sp,32
    8000467c:	00008067          	ret

0000000080004680 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004680:	ff010113          	addi	sp,sp,-16
    80004684:	00113423          	sd	ra,8(sp)
    80004688:	00813023          	sd	s0,0(sp)
    8000468c:	01010413          	addi	s0,sp,16
    80004690:	00007797          	auipc	a5,0x7
    80004694:	23078793          	addi	a5,a5,560 # 8000b8c0 <_ZTV16ProducerKeyborad+0x10>
    80004698:	00f53023          	sd	a5,0(a0)
    8000469c:	ffffe097          	auipc	ra,0xffffe
    800046a0:	bcc080e7          	jalr	-1076(ra) # 80002268 <_ZN6ThreadD1Ev>
    800046a4:	00813083          	ld	ra,8(sp)
    800046a8:	00013403          	ld	s0,0(sp)
    800046ac:	01010113          	addi	sp,sp,16
    800046b0:	00008067          	ret

00000000800046b4 <_ZN16ProducerKeyboradD0Ev>:
    800046b4:	fe010113          	addi	sp,sp,-32
    800046b8:	00113c23          	sd	ra,24(sp)
    800046bc:	00813823          	sd	s0,16(sp)
    800046c0:	00913423          	sd	s1,8(sp)
    800046c4:	02010413          	addi	s0,sp,32
    800046c8:	00050493          	mv	s1,a0
    800046cc:	00007797          	auipc	a5,0x7
    800046d0:	1f478793          	addi	a5,a5,500 # 8000b8c0 <_ZTV16ProducerKeyborad+0x10>
    800046d4:	00f53023          	sd	a5,0(a0)
    800046d8:	ffffe097          	auipc	ra,0xffffe
    800046dc:	b90080e7          	jalr	-1136(ra) # 80002268 <_ZN6ThreadD1Ev>
    800046e0:	00048513          	mv	a0,s1
    800046e4:	ffffe097          	auipc	ra,0xffffe
    800046e8:	c44080e7          	jalr	-956(ra) # 80002328 <_ZdlPv>
    800046ec:	01813083          	ld	ra,24(sp)
    800046f0:	01013403          	ld	s0,16(sp)
    800046f4:	00813483          	ld	s1,8(sp)
    800046f8:	02010113          	addi	sp,sp,32
    800046fc:	00008067          	ret

0000000080004700 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004700:	ff010113          	addi	sp,sp,-16
    80004704:	00113423          	sd	ra,8(sp)
    80004708:	00813023          	sd	s0,0(sp)
    8000470c:	01010413          	addi	s0,sp,16
    80004710:	00007797          	auipc	a5,0x7
    80004714:	1d878793          	addi	a5,a5,472 # 8000b8e8 <_ZTV8Producer+0x10>
    80004718:	00f53023          	sd	a5,0(a0)
    8000471c:	ffffe097          	auipc	ra,0xffffe
    80004720:	b4c080e7          	jalr	-1204(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004724:	00813083          	ld	ra,8(sp)
    80004728:	00013403          	ld	s0,0(sp)
    8000472c:	01010113          	addi	sp,sp,16
    80004730:	00008067          	ret

0000000080004734 <_ZN8ProducerD0Ev>:
    80004734:	fe010113          	addi	sp,sp,-32
    80004738:	00113c23          	sd	ra,24(sp)
    8000473c:	00813823          	sd	s0,16(sp)
    80004740:	00913423          	sd	s1,8(sp)
    80004744:	02010413          	addi	s0,sp,32
    80004748:	00050493          	mv	s1,a0
    8000474c:	00007797          	auipc	a5,0x7
    80004750:	19c78793          	addi	a5,a5,412 # 8000b8e8 <_ZTV8Producer+0x10>
    80004754:	00f53023          	sd	a5,0(a0)
    80004758:	ffffe097          	auipc	ra,0xffffe
    8000475c:	b10080e7          	jalr	-1264(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004760:	00048513          	mv	a0,s1
    80004764:	ffffe097          	auipc	ra,0xffffe
    80004768:	bc4080e7          	jalr	-1084(ra) # 80002328 <_ZdlPv>
    8000476c:	01813083          	ld	ra,24(sp)
    80004770:	01013403          	ld	s0,16(sp)
    80004774:	00813483          	ld	s1,8(sp)
    80004778:	02010113          	addi	sp,sp,32
    8000477c:	00008067          	ret

0000000080004780 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004780:	fe010113          	addi	sp,sp,-32
    80004784:	00113c23          	sd	ra,24(sp)
    80004788:	00813823          	sd	s0,16(sp)
    8000478c:	00913423          	sd	s1,8(sp)
    80004790:	02010413          	addi	s0,sp,32
    80004794:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004798:	ffffd097          	auipc	ra,0xffffd
    8000479c:	e88080e7          	jalr	-376(ra) # 80001620 <_Z4getcv>
    800047a0:	0005059b          	sext.w	a1,a0
    800047a4:	01b00793          	li	a5,27
    800047a8:	00f58c63          	beq	a1,a5,800047c0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800047ac:	0204b783          	ld	a5,32(s1)
    800047b0:	0087b503          	ld	a0,8(a5)
    800047b4:	00001097          	auipc	ra,0x1
    800047b8:	36c080e7          	jalr	876(ra) # 80005b20 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800047bc:	fddff06f          	j	80004798 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800047c0:	00100793          	li	a5,1
    800047c4:	00007717          	auipc	a4,0x7
    800047c8:	2cf72e23          	sw	a5,732(a4) # 8000baa0 <_ZL9threadEnd>
        td->buffer->put('!');
    800047cc:	0204b783          	ld	a5,32(s1)
    800047d0:	02100593          	li	a1,33
    800047d4:	0087b503          	ld	a0,8(a5)
    800047d8:	00001097          	auipc	ra,0x1
    800047dc:	348080e7          	jalr	840(ra) # 80005b20 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800047e0:	0204b783          	ld	a5,32(s1)
    800047e4:	0107b503          	ld	a0,16(a5)
    800047e8:	ffffe097          	auipc	ra,0xffffe
    800047ec:	d44080e7          	jalr	-700(ra) # 8000252c <_ZN9Semaphore6signalEv>
    }
    800047f0:	01813083          	ld	ra,24(sp)
    800047f4:	01013403          	ld	s0,16(sp)
    800047f8:	00813483          	ld	s1,8(sp)
    800047fc:	02010113          	addi	sp,sp,32
    80004800:	00008067          	ret

0000000080004804 <_ZN8Producer3runEv>:
    void run() override {
    80004804:	fe010113          	addi	sp,sp,-32
    80004808:	00113c23          	sd	ra,24(sp)
    8000480c:	00813823          	sd	s0,16(sp)
    80004810:	00913423          	sd	s1,8(sp)
    80004814:	01213023          	sd	s2,0(sp)
    80004818:	02010413          	addi	s0,sp,32
    8000481c:	00050493          	mv	s1,a0
        int i = 0;
    80004820:	00000913          	li	s2,0
        while (!threadEnd) {
    80004824:	00007797          	auipc	a5,0x7
    80004828:	27c7a783          	lw	a5,636(a5) # 8000baa0 <_ZL9threadEnd>
    8000482c:	04079263          	bnez	a5,80004870 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004830:	0204b783          	ld	a5,32(s1)
    80004834:	0007a583          	lw	a1,0(a5)
    80004838:	0305859b          	addiw	a1,a1,48
    8000483c:	0087b503          	ld	a0,8(a5)
    80004840:	00001097          	auipc	ra,0x1
    80004844:	2e0080e7          	jalr	736(ra) # 80005b20 <_ZN9BufferCPP3putEi>
            i++;
    80004848:	0019071b          	addiw	a4,s2,1
    8000484c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004850:	0204b783          	ld	a5,32(s1)
    80004854:	0007a783          	lw	a5,0(a5)
    80004858:	00e787bb          	addw	a5,a5,a4
    8000485c:	00500513          	li	a0,5
    80004860:	02a7e53b          	remw	a0,a5,a0
    80004864:	ffffe097          	auipc	ra,0xffffe
    80004868:	c00080e7          	jalr	-1024(ra) # 80002464 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    8000486c:	fb9ff06f          	j	80004824 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004870:	0204b783          	ld	a5,32(s1)
    80004874:	0107b503          	ld	a0,16(a5)
    80004878:	ffffe097          	auipc	ra,0xffffe
    8000487c:	cb4080e7          	jalr	-844(ra) # 8000252c <_ZN9Semaphore6signalEv>
    }
    80004880:	01813083          	ld	ra,24(sp)
    80004884:	01013403          	ld	s0,16(sp)
    80004888:	00813483          	ld	s1,8(sp)
    8000488c:	00013903          	ld	s2,0(sp)
    80004890:	02010113          	addi	sp,sp,32
    80004894:	00008067          	ret

0000000080004898 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004898:	fe010113          	addi	sp,sp,-32
    8000489c:	00113c23          	sd	ra,24(sp)
    800048a0:	00813823          	sd	s0,16(sp)
    800048a4:	00913423          	sd	s1,8(sp)
    800048a8:	01213023          	sd	s2,0(sp)
    800048ac:	02010413          	addi	s0,sp,32
    800048b0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800048b4:	00100793          	li	a5,1
    800048b8:	02a7f863          	bgeu	a5,a0,800048e8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800048bc:	00a00793          	li	a5,10
    800048c0:	02f577b3          	remu	a5,a0,a5
    800048c4:	02078e63          	beqz	a5,80004900 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800048c8:	fff48513          	addi	a0,s1,-1
    800048cc:	00000097          	auipc	ra,0x0
    800048d0:	fcc080e7          	jalr	-52(ra) # 80004898 <_ZL9fibonaccim>
    800048d4:	00050913          	mv	s2,a0
    800048d8:	ffe48513          	addi	a0,s1,-2
    800048dc:	00000097          	auipc	ra,0x0
    800048e0:	fbc080e7          	jalr	-68(ra) # 80004898 <_ZL9fibonaccim>
    800048e4:	00a90533          	add	a0,s2,a0
}
    800048e8:	01813083          	ld	ra,24(sp)
    800048ec:	01013403          	ld	s0,16(sp)
    800048f0:	00813483          	ld	s1,8(sp)
    800048f4:	00013903          	ld	s2,0(sp)
    800048f8:	02010113          	addi	sp,sp,32
    800048fc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004900:	ffffd097          	auipc	ra,0xffffd
    80004904:	acc080e7          	jalr	-1332(ra) # 800013cc <_Z15thread_dispatchv>
    80004908:	fc1ff06f          	j	800048c8 <_ZL9fibonaccim+0x30>

000000008000490c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000490c:	fe010113          	addi	sp,sp,-32
    80004910:	00113c23          	sd	ra,24(sp)
    80004914:	00813823          	sd	s0,16(sp)
    80004918:	00913423          	sd	s1,8(sp)
    8000491c:	01213023          	sd	s2,0(sp)
    80004920:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004924:	00a00493          	li	s1,10
    80004928:	0400006f          	j	80004968 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000492c:	00005517          	auipc	a0,0x5
    80004930:	94c50513          	addi	a0,a0,-1716 # 80009278 <CONSOLE_STATUS+0x268>
    80004934:	00001097          	auipc	ra,0x1
    80004938:	dc8080e7          	jalr	-568(ra) # 800056fc <_Z11printStringPKc>
    8000493c:	00000613          	li	a2,0
    80004940:	00a00593          	li	a1,10
    80004944:	00048513          	mv	a0,s1
    80004948:	00001097          	auipc	ra,0x1
    8000494c:	f64080e7          	jalr	-156(ra) # 800058ac <_Z8printIntiii>
    80004950:	00005517          	auipc	a0,0x5
    80004954:	81850513          	addi	a0,a0,-2024 # 80009168 <CONSOLE_STATUS+0x158>
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	da4080e7          	jalr	-604(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004960:	0014849b          	addiw	s1,s1,1
    80004964:	0ff4f493          	andi	s1,s1,255
    80004968:	00c00793          	li	a5,12
    8000496c:	fc97f0e3          	bgeu	a5,s1,8000492c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004970:	00005517          	auipc	a0,0x5
    80004974:	91050513          	addi	a0,a0,-1776 # 80009280 <CONSOLE_STATUS+0x270>
    80004978:	00001097          	auipc	ra,0x1
    8000497c:	d84080e7          	jalr	-636(ra) # 800056fc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004980:	00500313          	li	t1,5
    thread_dispatch();
    80004984:	ffffd097          	auipc	ra,0xffffd
    80004988:	a48080e7          	jalr	-1464(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000498c:	01000513          	li	a0,16
    80004990:	00000097          	auipc	ra,0x0
    80004994:	f08080e7          	jalr	-248(ra) # 80004898 <_ZL9fibonaccim>
    80004998:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000499c:	00005517          	auipc	a0,0x5
    800049a0:	8f450513          	addi	a0,a0,-1804 # 80009290 <CONSOLE_STATUS+0x280>
    800049a4:	00001097          	auipc	ra,0x1
    800049a8:	d58080e7          	jalr	-680(ra) # 800056fc <_Z11printStringPKc>
    800049ac:	00000613          	li	a2,0
    800049b0:	00a00593          	li	a1,10
    800049b4:	0009051b          	sext.w	a0,s2
    800049b8:	00001097          	auipc	ra,0x1
    800049bc:	ef4080e7          	jalr	-268(ra) # 800058ac <_Z8printIntiii>
    800049c0:	00004517          	auipc	a0,0x4
    800049c4:	7a850513          	addi	a0,a0,1960 # 80009168 <CONSOLE_STATUS+0x158>
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	d34080e7          	jalr	-716(ra) # 800056fc <_Z11printStringPKc>
    800049d0:	0400006f          	j	80004a10 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800049d4:	00005517          	auipc	a0,0x5
    800049d8:	8a450513          	addi	a0,a0,-1884 # 80009278 <CONSOLE_STATUS+0x268>
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	d20080e7          	jalr	-736(ra) # 800056fc <_Z11printStringPKc>
    800049e4:	00000613          	li	a2,0
    800049e8:	00a00593          	li	a1,10
    800049ec:	00048513          	mv	a0,s1
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	ebc080e7          	jalr	-324(ra) # 800058ac <_Z8printIntiii>
    800049f8:	00004517          	auipc	a0,0x4
    800049fc:	77050513          	addi	a0,a0,1904 # 80009168 <CONSOLE_STATUS+0x158>
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	cfc080e7          	jalr	-772(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004a08:	0014849b          	addiw	s1,s1,1
    80004a0c:	0ff4f493          	andi	s1,s1,255
    80004a10:	00f00793          	li	a5,15
    80004a14:	fc97f0e3          	bgeu	a5,s1,800049d4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004a18:	00005517          	auipc	a0,0x5
    80004a1c:	88850513          	addi	a0,a0,-1912 # 800092a0 <CONSOLE_STATUS+0x290>
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	cdc080e7          	jalr	-804(ra) # 800056fc <_Z11printStringPKc>
    finishedD = true;
    80004a28:	00100793          	li	a5,1
    80004a2c:	00007717          	auipc	a4,0x7
    80004a30:	08f70223          	sb	a5,132(a4) # 8000bab0 <_ZL9finishedD>
    thread_dispatch();
    80004a34:	ffffd097          	auipc	ra,0xffffd
    80004a38:	998080e7          	jalr	-1640(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004a3c:	01813083          	ld	ra,24(sp)
    80004a40:	01013403          	ld	s0,16(sp)
    80004a44:	00813483          	ld	s1,8(sp)
    80004a48:	00013903          	ld	s2,0(sp)
    80004a4c:	02010113          	addi	sp,sp,32
    80004a50:	00008067          	ret

0000000080004a54 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004a54:	fe010113          	addi	sp,sp,-32
    80004a58:	00113c23          	sd	ra,24(sp)
    80004a5c:	00813823          	sd	s0,16(sp)
    80004a60:	00913423          	sd	s1,8(sp)
    80004a64:	01213023          	sd	s2,0(sp)
    80004a68:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004a6c:	00000493          	li	s1,0
    80004a70:	0400006f          	j	80004ab0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004a74:	00004517          	auipc	a0,0x4
    80004a78:	7d450513          	addi	a0,a0,2004 # 80009248 <CONSOLE_STATUS+0x238>
    80004a7c:	00001097          	auipc	ra,0x1
    80004a80:	c80080e7          	jalr	-896(ra) # 800056fc <_Z11printStringPKc>
    80004a84:	00000613          	li	a2,0
    80004a88:	00a00593          	li	a1,10
    80004a8c:	00048513          	mv	a0,s1
    80004a90:	00001097          	auipc	ra,0x1
    80004a94:	e1c080e7          	jalr	-484(ra) # 800058ac <_Z8printIntiii>
    80004a98:	00004517          	auipc	a0,0x4
    80004a9c:	6d050513          	addi	a0,a0,1744 # 80009168 <CONSOLE_STATUS+0x158>
    80004aa0:	00001097          	auipc	ra,0x1
    80004aa4:	c5c080e7          	jalr	-932(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004aa8:	0014849b          	addiw	s1,s1,1
    80004aac:	0ff4f493          	andi	s1,s1,255
    80004ab0:	00200793          	li	a5,2
    80004ab4:	fc97f0e3          	bgeu	a5,s1,80004a74 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004ab8:	00004517          	auipc	a0,0x4
    80004abc:	79850513          	addi	a0,a0,1944 # 80009250 <CONSOLE_STATUS+0x240>
    80004ac0:	00001097          	auipc	ra,0x1
    80004ac4:	c3c080e7          	jalr	-964(ra) # 800056fc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004ac8:	00700313          	li	t1,7
    thread_dispatch();
    80004acc:	ffffd097          	auipc	ra,0xffffd
    80004ad0:	900080e7          	jalr	-1792(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004ad4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004ad8:	00004517          	auipc	a0,0x4
    80004adc:	78850513          	addi	a0,a0,1928 # 80009260 <CONSOLE_STATUS+0x250>
    80004ae0:	00001097          	auipc	ra,0x1
    80004ae4:	c1c080e7          	jalr	-996(ra) # 800056fc <_Z11printStringPKc>
    80004ae8:	00000613          	li	a2,0
    80004aec:	00a00593          	li	a1,10
    80004af0:	0009051b          	sext.w	a0,s2
    80004af4:	00001097          	auipc	ra,0x1
    80004af8:	db8080e7          	jalr	-584(ra) # 800058ac <_Z8printIntiii>
    80004afc:	00004517          	auipc	a0,0x4
    80004b00:	66c50513          	addi	a0,a0,1644 # 80009168 <CONSOLE_STATUS+0x158>
    80004b04:	00001097          	auipc	ra,0x1
    80004b08:	bf8080e7          	jalr	-1032(ra) # 800056fc <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004b0c:	00c00513          	li	a0,12
    80004b10:	00000097          	auipc	ra,0x0
    80004b14:	d88080e7          	jalr	-632(ra) # 80004898 <_ZL9fibonaccim>
    80004b18:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004b1c:	00004517          	auipc	a0,0x4
    80004b20:	74c50513          	addi	a0,a0,1868 # 80009268 <CONSOLE_STATUS+0x258>
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	bd8080e7          	jalr	-1064(ra) # 800056fc <_Z11printStringPKc>
    80004b2c:	00000613          	li	a2,0
    80004b30:	00a00593          	li	a1,10
    80004b34:	0009051b          	sext.w	a0,s2
    80004b38:	00001097          	auipc	ra,0x1
    80004b3c:	d74080e7          	jalr	-652(ra) # 800058ac <_Z8printIntiii>
    80004b40:	00004517          	auipc	a0,0x4
    80004b44:	62850513          	addi	a0,a0,1576 # 80009168 <CONSOLE_STATUS+0x158>
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	bb4080e7          	jalr	-1100(ra) # 800056fc <_Z11printStringPKc>
    80004b50:	0400006f          	j	80004b90 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004b54:	00004517          	auipc	a0,0x4
    80004b58:	6f450513          	addi	a0,a0,1780 # 80009248 <CONSOLE_STATUS+0x238>
    80004b5c:	00001097          	auipc	ra,0x1
    80004b60:	ba0080e7          	jalr	-1120(ra) # 800056fc <_Z11printStringPKc>
    80004b64:	00000613          	li	a2,0
    80004b68:	00a00593          	li	a1,10
    80004b6c:	00048513          	mv	a0,s1
    80004b70:	00001097          	auipc	ra,0x1
    80004b74:	d3c080e7          	jalr	-708(ra) # 800058ac <_Z8printIntiii>
    80004b78:	00004517          	auipc	a0,0x4
    80004b7c:	5f050513          	addi	a0,a0,1520 # 80009168 <CONSOLE_STATUS+0x158>
    80004b80:	00001097          	auipc	ra,0x1
    80004b84:	b7c080e7          	jalr	-1156(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004b88:	0014849b          	addiw	s1,s1,1
    80004b8c:	0ff4f493          	andi	s1,s1,255
    80004b90:	00500793          	li	a5,5
    80004b94:	fc97f0e3          	bgeu	a5,s1,80004b54 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004b98:	00004517          	auipc	a0,0x4
    80004b9c:	68850513          	addi	a0,a0,1672 # 80009220 <CONSOLE_STATUS+0x210>
    80004ba0:	00001097          	auipc	ra,0x1
    80004ba4:	b5c080e7          	jalr	-1188(ra) # 800056fc <_Z11printStringPKc>
    finishedC = true;
    80004ba8:	00100793          	li	a5,1
    80004bac:	00007717          	auipc	a4,0x7
    80004bb0:	f0f702a3          	sb	a5,-251(a4) # 8000bab1 <_ZL9finishedC>
    thread_dispatch();
    80004bb4:	ffffd097          	auipc	ra,0xffffd
    80004bb8:	818080e7          	jalr	-2024(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004bbc:	01813083          	ld	ra,24(sp)
    80004bc0:	01013403          	ld	s0,16(sp)
    80004bc4:	00813483          	ld	s1,8(sp)
    80004bc8:	00013903          	ld	s2,0(sp)
    80004bcc:	02010113          	addi	sp,sp,32
    80004bd0:	00008067          	ret

0000000080004bd4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004bd4:	fe010113          	addi	sp,sp,-32
    80004bd8:	00113c23          	sd	ra,24(sp)
    80004bdc:	00813823          	sd	s0,16(sp)
    80004be0:	00913423          	sd	s1,8(sp)
    80004be4:	01213023          	sd	s2,0(sp)
    80004be8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004bec:	00000913          	li	s2,0
    80004bf0:	0380006f          	j	80004c28 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004bf4:	ffffc097          	auipc	ra,0xffffc
    80004bf8:	7d8080e7          	jalr	2008(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004bfc:	00148493          	addi	s1,s1,1
    80004c00:	000027b7          	lui	a5,0x2
    80004c04:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c08:	0097ee63          	bltu	a5,s1,80004c24 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c0c:	00000713          	li	a4,0
    80004c10:	000077b7          	lui	a5,0x7
    80004c14:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c18:	fce7eee3          	bltu	a5,a4,80004bf4 <_ZL11workerBodyBPv+0x20>
    80004c1c:	00170713          	addi	a4,a4,1
    80004c20:	ff1ff06f          	j	80004c10 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004c24:	00190913          	addi	s2,s2,1
    80004c28:	00f00793          	li	a5,15
    80004c2c:	0527e063          	bltu	a5,s2,80004c6c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004c30:	00004517          	auipc	a0,0x4
    80004c34:	60050513          	addi	a0,a0,1536 # 80009230 <CONSOLE_STATUS+0x220>
    80004c38:	00001097          	auipc	ra,0x1
    80004c3c:	ac4080e7          	jalr	-1340(ra) # 800056fc <_Z11printStringPKc>
    80004c40:	00000613          	li	a2,0
    80004c44:	00a00593          	li	a1,10
    80004c48:	0009051b          	sext.w	a0,s2
    80004c4c:	00001097          	auipc	ra,0x1
    80004c50:	c60080e7          	jalr	-928(ra) # 800058ac <_Z8printIntiii>
    80004c54:	00004517          	auipc	a0,0x4
    80004c58:	51450513          	addi	a0,a0,1300 # 80009168 <CONSOLE_STATUS+0x158>
    80004c5c:	00001097          	auipc	ra,0x1
    80004c60:	aa0080e7          	jalr	-1376(ra) # 800056fc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004c64:	00000493          	li	s1,0
    80004c68:	f99ff06f          	j	80004c00 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004c6c:	00004517          	auipc	a0,0x4
    80004c70:	5cc50513          	addi	a0,a0,1484 # 80009238 <CONSOLE_STATUS+0x228>
    80004c74:	00001097          	auipc	ra,0x1
    80004c78:	a88080e7          	jalr	-1400(ra) # 800056fc <_Z11printStringPKc>
    finishedB = true;
    80004c7c:	00100793          	li	a5,1
    80004c80:	00007717          	auipc	a4,0x7
    80004c84:	e2f70923          	sb	a5,-462(a4) # 8000bab2 <_ZL9finishedB>
    thread_dispatch();
    80004c88:	ffffc097          	auipc	ra,0xffffc
    80004c8c:	744080e7          	jalr	1860(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004c90:	01813083          	ld	ra,24(sp)
    80004c94:	01013403          	ld	s0,16(sp)
    80004c98:	00813483          	ld	s1,8(sp)
    80004c9c:	00013903          	ld	s2,0(sp)
    80004ca0:	02010113          	addi	sp,sp,32
    80004ca4:	00008067          	ret

0000000080004ca8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004ca8:	fe010113          	addi	sp,sp,-32
    80004cac:	00113c23          	sd	ra,24(sp)
    80004cb0:	00813823          	sd	s0,16(sp)
    80004cb4:	00913423          	sd	s1,8(sp)
    80004cb8:	01213023          	sd	s2,0(sp)
    80004cbc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004cc0:	00000913          	li	s2,0
    80004cc4:	0380006f          	j	80004cfc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004cc8:	ffffc097          	auipc	ra,0xffffc
    80004ccc:	704080e7          	jalr	1796(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004cd0:	00148493          	addi	s1,s1,1
    80004cd4:	000027b7          	lui	a5,0x2
    80004cd8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004cdc:	0097ee63          	bltu	a5,s1,80004cf8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ce0:	00000713          	li	a4,0
    80004ce4:	000077b7          	lui	a5,0x7
    80004ce8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004cec:	fce7eee3          	bltu	a5,a4,80004cc8 <_ZL11workerBodyAPv+0x20>
    80004cf0:	00170713          	addi	a4,a4,1
    80004cf4:	ff1ff06f          	j	80004ce4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004cf8:	00190913          	addi	s2,s2,1
    80004cfc:	00900793          	li	a5,9
    80004d00:	0527e063          	bltu	a5,s2,80004d40 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d04:	00004517          	auipc	a0,0x4
    80004d08:	51450513          	addi	a0,a0,1300 # 80009218 <CONSOLE_STATUS+0x208>
    80004d0c:	00001097          	auipc	ra,0x1
    80004d10:	9f0080e7          	jalr	-1552(ra) # 800056fc <_Z11printStringPKc>
    80004d14:	00000613          	li	a2,0
    80004d18:	00a00593          	li	a1,10
    80004d1c:	0009051b          	sext.w	a0,s2
    80004d20:	00001097          	auipc	ra,0x1
    80004d24:	b8c080e7          	jalr	-1140(ra) # 800058ac <_Z8printIntiii>
    80004d28:	00004517          	auipc	a0,0x4
    80004d2c:	44050513          	addi	a0,a0,1088 # 80009168 <CONSOLE_STATUS+0x158>
    80004d30:	00001097          	auipc	ra,0x1
    80004d34:	9cc080e7          	jalr	-1588(ra) # 800056fc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d38:	00000493          	li	s1,0
    80004d3c:	f99ff06f          	j	80004cd4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004d40:	00004517          	auipc	a0,0x4
    80004d44:	4e050513          	addi	a0,a0,1248 # 80009220 <CONSOLE_STATUS+0x210>
    80004d48:	00001097          	auipc	ra,0x1
    80004d4c:	9b4080e7          	jalr	-1612(ra) # 800056fc <_Z11printStringPKc>
    finishedA = true;
    80004d50:	00100793          	li	a5,1
    80004d54:	00007717          	auipc	a4,0x7
    80004d58:	d4f70fa3          	sb	a5,-673(a4) # 8000bab3 <_ZL9finishedA>
}
    80004d5c:	01813083          	ld	ra,24(sp)
    80004d60:	01013403          	ld	s0,16(sp)
    80004d64:	00813483          	ld	s1,8(sp)
    80004d68:	00013903          	ld	s2,0(sp)
    80004d6c:	02010113          	addi	sp,sp,32
    80004d70:	00008067          	ret

0000000080004d74 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004d74:	fd010113          	addi	sp,sp,-48
    80004d78:	02113423          	sd	ra,40(sp)
    80004d7c:	02813023          	sd	s0,32(sp)
    80004d80:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004d84:	00000613          	li	a2,0
    80004d88:	00000597          	auipc	a1,0x0
    80004d8c:	f2058593          	addi	a1,a1,-224 # 80004ca8 <_ZL11workerBodyAPv>
    80004d90:	fd040513          	addi	a0,s0,-48
    80004d94:	ffffc097          	auipc	ra,0xffffc
    80004d98:	564080e7          	jalr	1380(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004d9c:	00004517          	auipc	a0,0x4
    80004da0:	51450513          	addi	a0,a0,1300 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004da4:	00001097          	auipc	ra,0x1
    80004da8:	958080e7          	jalr	-1704(ra) # 800056fc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004dac:	00000613          	li	a2,0
    80004db0:	00000597          	auipc	a1,0x0
    80004db4:	e2458593          	addi	a1,a1,-476 # 80004bd4 <_ZL11workerBodyBPv>
    80004db8:	fd840513          	addi	a0,s0,-40
    80004dbc:	ffffc097          	auipc	ra,0xffffc
    80004dc0:	53c080e7          	jalr	1340(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004dc4:	00004517          	auipc	a0,0x4
    80004dc8:	50450513          	addi	a0,a0,1284 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004dcc:	00001097          	auipc	ra,0x1
    80004dd0:	930080e7          	jalr	-1744(ra) # 800056fc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004dd4:	00000613          	li	a2,0
    80004dd8:	00000597          	auipc	a1,0x0
    80004ddc:	c7c58593          	addi	a1,a1,-900 # 80004a54 <_ZL11workerBodyCPv>
    80004de0:	fe040513          	addi	a0,s0,-32
    80004de4:	ffffc097          	auipc	ra,0xffffc
    80004de8:	514080e7          	jalr	1300(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004dec:	00004517          	auipc	a0,0x4
    80004df0:	4f450513          	addi	a0,a0,1268 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	908080e7          	jalr	-1784(ra) # 800056fc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004dfc:	00000613          	li	a2,0
    80004e00:	00000597          	auipc	a1,0x0
    80004e04:	b0c58593          	addi	a1,a1,-1268 # 8000490c <_ZL11workerBodyDPv>
    80004e08:	fe840513          	addi	a0,s0,-24
    80004e0c:	ffffc097          	auipc	ra,0xffffc
    80004e10:	4ec080e7          	jalr	1260(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004e14:	00004517          	auipc	a0,0x4
    80004e18:	4e450513          	addi	a0,a0,1252 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004e1c:	00001097          	auipc	ra,0x1
    80004e20:	8e0080e7          	jalr	-1824(ra) # 800056fc <_Z11printStringPKc>
    80004e24:	00c0006f          	j	80004e30 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004e28:	ffffc097          	auipc	ra,0xffffc
    80004e2c:	5a4080e7          	jalr	1444(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004e30:	00007797          	auipc	a5,0x7
    80004e34:	c837c783          	lbu	a5,-893(a5) # 8000bab3 <_ZL9finishedA>
    80004e38:	fe0788e3          	beqz	a5,80004e28 <_Z18Threads_C_API_testv+0xb4>
    80004e3c:	00007797          	auipc	a5,0x7
    80004e40:	c767c783          	lbu	a5,-906(a5) # 8000bab2 <_ZL9finishedB>
    80004e44:	fe0782e3          	beqz	a5,80004e28 <_Z18Threads_C_API_testv+0xb4>
    80004e48:	00007797          	auipc	a5,0x7
    80004e4c:	c697c783          	lbu	a5,-919(a5) # 8000bab1 <_ZL9finishedC>
    80004e50:	fc078ce3          	beqz	a5,80004e28 <_Z18Threads_C_API_testv+0xb4>
    80004e54:	00007797          	auipc	a5,0x7
    80004e58:	c5c7c783          	lbu	a5,-932(a5) # 8000bab0 <_ZL9finishedD>
    80004e5c:	fc0786e3          	beqz	a5,80004e28 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004e60:	02813083          	ld	ra,40(sp)
    80004e64:	02013403          	ld	s0,32(sp)
    80004e68:	03010113          	addi	sp,sp,48
    80004e6c:	00008067          	ret

0000000080004e70 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004e70:	fd010113          	addi	sp,sp,-48
    80004e74:	02113423          	sd	ra,40(sp)
    80004e78:	02813023          	sd	s0,32(sp)
    80004e7c:	00913c23          	sd	s1,24(sp)
    80004e80:	01213823          	sd	s2,16(sp)
    80004e84:	01313423          	sd	s3,8(sp)
    80004e88:	03010413          	addi	s0,sp,48
    80004e8c:	00050993          	mv	s3,a0
    80004e90:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004e94:	00000913          	li	s2,0
    80004e98:	00c0006f          	j	80004ea4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004e9c:	ffffd097          	auipc	ra,0xffffd
    80004ea0:	5a0080e7          	jalr	1440(ra) # 8000243c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004ea4:	ffffc097          	auipc	ra,0xffffc
    80004ea8:	77c080e7          	jalr	1916(ra) # 80001620 <_Z4getcv>
    80004eac:	0005059b          	sext.w	a1,a0
    80004eb0:	01b00793          	li	a5,27
    80004eb4:	02f58a63          	beq	a1,a5,80004ee8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004eb8:	0084b503          	ld	a0,8(s1)
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	c64080e7          	jalr	-924(ra) # 80005b20 <_ZN9BufferCPP3putEi>
        i++;
    80004ec4:	0019071b          	addiw	a4,s2,1
    80004ec8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ecc:	0004a683          	lw	a3,0(s1)
    80004ed0:	0026979b          	slliw	a5,a3,0x2
    80004ed4:	00d787bb          	addw	a5,a5,a3
    80004ed8:	0017979b          	slliw	a5,a5,0x1
    80004edc:	02f767bb          	remw	a5,a4,a5
    80004ee0:	fc0792e3          	bnez	a5,80004ea4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004ee4:	fb9ff06f          	j	80004e9c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004ee8:	00100793          	li	a5,1
    80004eec:	00007717          	auipc	a4,0x7
    80004ef0:	bcf72623          	sw	a5,-1076(a4) # 8000bab8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004ef4:	0209b783          	ld	a5,32(s3)
    80004ef8:	02100593          	li	a1,33
    80004efc:	0087b503          	ld	a0,8(a5)
    80004f00:	00001097          	auipc	ra,0x1
    80004f04:	c20080e7          	jalr	-992(ra) # 80005b20 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004f08:	0104b503          	ld	a0,16(s1)
    80004f0c:	ffffd097          	auipc	ra,0xffffd
    80004f10:	620080e7          	jalr	1568(ra) # 8000252c <_ZN9Semaphore6signalEv>
}
    80004f14:	02813083          	ld	ra,40(sp)
    80004f18:	02013403          	ld	s0,32(sp)
    80004f1c:	01813483          	ld	s1,24(sp)
    80004f20:	01013903          	ld	s2,16(sp)
    80004f24:	00813983          	ld	s3,8(sp)
    80004f28:	03010113          	addi	sp,sp,48
    80004f2c:	00008067          	ret

0000000080004f30 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004f30:	fe010113          	addi	sp,sp,-32
    80004f34:	00113c23          	sd	ra,24(sp)
    80004f38:	00813823          	sd	s0,16(sp)
    80004f3c:	00913423          	sd	s1,8(sp)
    80004f40:	01213023          	sd	s2,0(sp)
    80004f44:	02010413          	addi	s0,sp,32
    80004f48:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004f4c:	00000913          	li	s2,0
    80004f50:	00c0006f          	j	80004f5c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f54:	ffffd097          	auipc	ra,0xffffd
    80004f58:	4e8080e7          	jalr	1256(ra) # 8000243c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004f5c:	00007797          	auipc	a5,0x7
    80004f60:	b5c7a783          	lw	a5,-1188(a5) # 8000bab8 <_ZL9threadEnd>
    80004f64:	02079e63          	bnez	a5,80004fa0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004f68:	0004a583          	lw	a1,0(s1)
    80004f6c:	0305859b          	addiw	a1,a1,48
    80004f70:	0084b503          	ld	a0,8(s1)
    80004f74:	00001097          	auipc	ra,0x1
    80004f78:	bac080e7          	jalr	-1108(ra) # 80005b20 <_ZN9BufferCPP3putEi>
        i++;
    80004f7c:	0019071b          	addiw	a4,s2,1
    80004f80:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004f84:	0004a683          	lw	a3,0(s1)
    80004f88:	0026979b          	slliw	a5,a3,0x2
    80004f8c:	00d787bb          	addw	a5,a5,a3
    80004f90:	0017979b          	slliw	a5,a5,0x1
    80004f94:	02f767bb          	remw	a5,a4,a5
    80004f98:	fc0792e3          	bnez	a5,80004f5c <_ZN12ProducerSync8producerEPv+0x2c>
    80004f9c:	fb9ff06f          	j	80004f54 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004fa0:	0104b503          	ld	a0,16(s1)
    80004fa4:	ffffd097          	auipc	ra,0xffffd
    80004fa8:	588080e7          	jalr	1416(ra) # 8000252c <_ZN9Semaphore6signalEv>
}
    80004fac:	01813083          	ld	ra,24(sp)
    80004fb0:	01013403          	ld	s0,16(sp)
    80004fb4:	00813483          	ld	s1,8(sp)
    80004fb8:	00013903          	ld	s2,0(sp)
    80004fbc:	02010113          	addi	sp,sp,32
    80004fc0:	00008067          	ret

0000000080004fc4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004fc4:	fd010113          	addi	sp,sp,-48
    80004fc8:	02113423          	sd	ra,40(sp)
    80004fcc:	02813023          	sd	s0,32(sp)
    80004fd0:	00913c23          	sd	s1,24(sp)
    80004fd4:	01213823          	sd	s2,16(sp)
    80004fd8:	01313423          	sd	s3,8(sp)
    80004fdc:	01413023          	sd	s4,0(sp)
    80004fe0:	03010413          	addi	s0,sp,48
    80004fe4:	00050993          	mv	s3,a0
    80004fe8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004fec:	00000a13          	li	s4,0
    80004ff0:	01c0006f          	j	8000500c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004ff4:	ffffd097          	auipc	ra,0xffffd
    80004ff8:	448080e7          	jalr	1096(ra) # 8000243c <_ZN6Thread8dispatchEv>
    80004ffc:	0500006f          	j	8000504c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005000:	00a00513          	li	a0,10
    80005004:	ffffc097          	auipc	ra,0xffffc
    80005008:	668080e7          	jalr	1640(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    8000500c:	00007797          	auipc	a5,0x7
    80005010:	aac7a783          	lw	a5,-1364(a5) # 8000bab8 <_ZL9threadEnd>
    80005014:	06079263          	bnez	a5,80005078 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005018:	00893503          	ld	a0,8(s2)
    8000501c:	00001097          	auipc	ra,0x1
    80005020:	b94080e7          	jalr	-1132(ra) # 80005bb0 <_ZN9BufferCPP3getEv>
        i++;
    80005024:	001a049b          	addiw	s1,s4,1
    80005028:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000502c:	0ff57513          	andi	a0,a0,255
    80005030:	ffffc097          	auipc	ra,0xffffc
    80005034:	63c080e7          	jalr	1596(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005038:	00092703          	lw	a4,0(s2)
    8000503c:	0027179b          	slliw	a5,a4,0x2
    80005040:	00e787bb          	addw	a5,a5,a4
    80005044:	02f4e7bb          	remw	a5,s1,a5
    80005048:	fa0786e3          	beqz	a5,80004ff4 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000504c:	05000793          	li	a5,80
    80005050:	02f4e4bb          	remw	s1,s1,a5
    80005054:	fa049ce3          	bnez	s1,8000500c <_ZN12ConsumerSync8consumerEPv+0x48>
    80005058:	fa9ff06f          	j	80005000 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000505c:	0209b783          	ld	a5,32(s3)
    80005060:	0087b503          	ld	a0,8(a5)
    80005064:	00001097          	auipc	ra,0x1
    80005068:	b4c080e7          	jalr	-1204(ra) # 80005bb0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000506c:	0ff57513          	andi	a0,a0,255
    80005070:	ffffd097          	auipc	ra,0xffffd
    80005074:	5ac080e7          	jalr	1452(ra) # 8000261c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005078:	0209b783          	ld	a5,32(s3)
    8000507c:	0087b503          	ld	a0,8(a5)
    80005080:	00001097          	auipc	ra,0x1
    80005084:	bbc080e7          	jalr	-1092(ra) # 80005c3c <_ZN9BufferCPP6getCntEv>
    80005088:	fca04ae3          	bgtz	a0,8000505c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000508c:	01093503          	ld	a0,16(s2)
    80005090:	ffffd097          	auipc	ra,0xffffd
    80005094:	49c080e7          	jalr	1180(ra) # 8000252c <_ZN9Semaphore6signalEv>
}
    80005098:	02813083          	ld	ra,40(sp)
    8000509c:	02013403          	ld	s0,32(sp)
    800050a0:	01813483          	ld	s1,24(sp)
    800050a4:	01013903          	ld	s2,16(sp)
    800050a8:	00813983          	ld	s3,8(sp)
    800050ac:	00013a03          	ld	s4,0(sp)
    800050b0:	03010113          	addi	sp,sp,48
    800050b4:	00008067          	ret

00000000800050b8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800050b8:	f8010113          	addi	sp,sp,-128
    800050bc:	06113c23          	sd	ra,120(sp)
    800050c0:	06813823          	sd	s0,112(sp)
    800050c4:	06913423          	sd	s1,104(sp)
    800050c8:	07213023          	sd	s2,96(sp)
    800050cc:	05313c23          	sd	s3,88(sp)
    800050d0:	05413823          	sd	s4,80(sp)
    800050d4:	05513423          	sd	s5,72(sp)
    800050d8:	05613023          	sd	s6,64(sp)
    800050dc:	03713c23          	sd	s7,56(sp)
    800050e0:	03813823          	sd	s8,48(sp)
    800050e4:	03913423          	sd	s9,40(sp)
    800050e8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800050ec:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800050f0:	00004517          	auipc	a0,0x4
    800050f4:	04050513          	addi	a0,a0,64 # 80009130 <CONSOLE_STATUS+0x120>
    800050f8:	00000097          	auipc	ra,0x0
    800050fc:	604080e7          	jalr	1540(ra) # 800056fc <_Z11printStringPKc>
    getString(input, 30);
    80005100:	01e00593          	li	a1,30
    80005104:	f8040493          	addi	s1,s0,-128
    80005108:	00048513          	mv	a0,s1
    8000510c:	00000097          	auipc	ra,0x0
    80005110:	678080e7          	jalr	1656(ra) # 80005784 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005114:	00048513          	mv	a0,s1
    80005118:	00000097          	auipc	ra,0x0
    8000511c:	744080e7          	jalr	1860(ra) # 8000585c <_Z11stringToIntPKc>
    80005120:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005124:	00004517          	auipc	a0,0x4
    80005128:	02c50513          	addi	a0,a0,44 # 80009150 <CONSOLE_STATUS+0x140>
    8000512c:	00000097          	auipc	ra,0x0
    80005130:	5d0080e7          	jalr	1488(ra) # 800056fc <_Z11printStringPKc>
    getString(input, 30);
    80005134:	01e00593          	li	a1,30
    80005138:	00048513          	mv	a0,s1
    8000513c:	00000097          	auipc	ra,0x0
    80005140:	648080e7          	jalr	1608(ra) # 80005784 <_Z9getStringPci>
    n = stringToInt(input);
    80005144:	00048513          	mv	a0,s1
    80005148:	00000097          	auipc	ra,0x0
    8000514c:	714080e7          	jalr	1812(ra) # 8000585c <_Z11stringToIntPKc>
    80005150:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005154:	00004517          	auipc	a0,0x4
    80005158:	01c50513          	addi	a0,a0,28 # 80009170 <CONSOLE_STATUS+0x160>
    8000515c:	00000097          	auipc	ra,0x0
    80005160:	5a0080e7          	jalr	1440(ra) # 800056fc <_Z11printStringPKc>
    80005164:	00000613          	li	a2,0
    80005168:	00a00593          	li	a1,10
    8000516c:	00090513          	mv	a0,s2
    80005170:	00000097          	auipc	ra,0x0
    80005174:	73c080e7          	jalr	1852(ra) # 800058ac <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005178:	00004517          	auipc	a0,0x4
    8000517c:	01050513          	addi	a0,a0,16 # 80009188 <CONSOLE_STATUS+0x178>
    80005180:	00000097          	auipc	ra,0x0
    80005184:	57c080e7          	jalr	1404(ra) # 800056fc <_Z11printStringPKc>
    80005188:	00000613          	li	a2,0
    8000518c:	00a00593          	li	a1,10
    80005190:	00048513          	mv	a0,s1
    80005194:	00000097          	auipc	ra,0x0
    80005198:	718080e7          	jalr	1816(ra) # 800058ac <_Z8printIntiii>
    printString(".\n");
    8000519c:	00004517          	auipc	a0,0x4
    800051a0:	00450513          	addi	a0,a0,4 # 800091a0 <CONSOLE_STATUS+0x190>
    800051a4:	00000097          	auipc	ra,0x0
    800051a8:	558080e7          	jalr	1368(ra) # 800056fc <_Z11printStringPKc>
    if(threadNum > n) {
    800051ac:	0324c463          	blt	s1,s2,800051d4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800051b0:	03205c63          	blez	s2,800051e8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800051b4:	03800513          	li	a0,56
    800051b8:	ffffd097          	auipc	ra,0xffffd
    800051bc:	148080e7          	jalr	328(ra) # 80002300 <_Znwm>
    800051c0:	00050a93          	mv	s5,a0
    800051c4:	00048593          	mv	a1,s1
    800051c8:	00001097          	auipc	ra,0x1
    800051cc:	804080e7          	jalr	-2044(ra) # 800059cc <_ZN9BufferCPPC1Ei>
    800051d0:	0300006f          	j	80005200 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800051d4:	00004517          	auipc	a0,0x4
    800051d8:	fd450513          	addi	a0,a0,-44 # 800091a8 <CONSOLE_STATUS+0x198>
    800051dc:	00000097          	auipc	ra,0x0
    800051e0:	520080e7          	jalr	1312(ra) # 800056fc <_Z11printStringPKc>
        return;
    800051e4:	0140006f          	j	800051f8 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800051e8:	00004517          	auipc	a0,0x4
    800051ec:	00050513          	mv	a0,a0
    800051f0:	00000097          	auipc	ra,0x0
    800051f4:	50c080e7          	jalr	1292(ra) # 800056fc <_Z11printStringPKc>
        return;
    800051f8:	000b8113          	mv	sp,s7
    800051fc:	2380006f          	j	80005434 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005200:	01000513          	li	a0,16
    80005204:	ffffd097          	auipc	ra,0xffffd
    80005208:	0fc080e7          	jalr	252(ra) # 80002300 <_Znwm>
    8000520c:	00050493          	mv	s1,a0
    80005210:	00000593          	li	a1,0
    80005214:	ffffd097          	auipc	ra,0xffffd
    80005218:	2a4080e7          	jalr	676(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    8000521c:	00007797          	auipc	a5,0x7
    80005220:	8a97b223          	sd	s1,-1884(a5) # 8000bac0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005224:	00391793          	slli	a5,s2,0x3
    80005228:	00f78793          	addi	a5,a5,15
    8000522c:	ff07f793          	andi	a5,a5,-16
    80005230:	40f10133          	sub	sp,sp,a5
    80005234:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005238:	0019071b          	addiw	a4,s2,1
    8000523c:	00171793          	slli	a5,a4,0x1
    80005240:	00e787b3          	add	a5,a5,a4
    80005244:	00379793          	slli	a5,a5,0x3
    80005248:	00f78793          	addi	a5,a5,15
    8000524c:	ff07f793          	andi	a5,a5,-16
    80005250:	40f10133          	sub	sp,sp,a5
    80005254:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005258:	00191c13          	slli	s8,s2,0x1
    8000525c:	012c07b3          	add	a5,s8,s2
    80005260:	00379793          	slli	a5,a5,0x3
    80005264:	00fa07b3          	add	a5,s4,a5
    80005268:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000526c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005270:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005274:	02800513          	li	a0,40
    80005278:	ffffd097          	auipc	ra,0xffffd
    8000527c:	088080e7          	jalr	136(ra) # 80002300 <_Znwm>
    80005280:	00050b13          	mv	s6,a0
    80005284:	012c0c33          	add	s8,s8,s2
    80005288:	003c1c13          	slli	s8,s8,0x3
    8000528c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005290:	ffffd097          	auipc	ra,0xffffd
    80005294:	200080e7          	jalr	512(ra) # 80002490 <_ZN6ThreadC1Ev>
    80005298:	00006797          	auipc	a5,0x6
    8000529c:	6f078793          	addi	a5,a5,1776 # 8000b988 <_ZTV12ConsumerSync+0x10>
    800052a0:	00fb3023          	sd	a5,0(s6)
    800052a4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800052a8:	000b0513          	mv	a0,s6
    800052ac:	ffffd097          	auipc	ra,0xffffd
    800052b0:	160080e7          	jalr	352(ra) # 8000240c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800052b4:	00000493          	li	s1,0
    800052b8:	0380006f          	j	800052f0 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800052bc:	00006797          	auipc	a5,0x6
    800052c0:	6a478793          	addi	a5,a5,1700 # 8000b960 <_ZTV12ProducerSync+0x10>
    800052c4:	00fcb023          	sd	a5,0(s9)
    800052c8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800052cc:	00349793          	slli	a5,s1,0x3
    800052d0:	00f987b3          	add	a5,s3,a5
    800052d4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800052d8:	00349793          	slli	a5,s1,0x3
    800052dc:	00f987b3          	add	a5,s3,a5
    800052e0:	0007b503          	ld	a0,0(a5)
    800052e4:	ffffd097          	auipc	ra,0xffffd
    800052e8:	128080e7          	jalr	296(ra) # 8000240c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800052ec:	0014849b          	addiw	s1,s1,1
    800052f0:	0b24d063          	bge	s1,s2,80005390 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800052f4:	00149793          	slli	a5,s1,0x1
    800052f8:	009787b3          	add	a5,a5,s1
    800052fc:	00379793          	slli	a5,a5,0x3
    80005300:	00fa07b3          	add	a5,s4,a5
    80005304:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005308:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000530c:	00006717          	auipc	a4,0x6
    80005310:	7b473703          	ld	a4,1972(a4) # 8000bac0 <_ZL10waitForAll>
    80005314:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005318:	02905863          	blez	s1,80005348 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000531c:	02800513          	li	a0,40
    80005320:	ffffd097          	auipc	ra,0xffffd
    80005324:	fe0080e7          	jalr	-32(ra) # 80002300 <_Znwm>
    80005328:	00050c93          	mv	s9,a0
    8000532c:	00149c13          	slli	s8,s1,0x1
    80005330:	009c0c33          	add	s8,s8,s1
    80005334:	003c1c13          	slli	s8,s8,0x3
    80005338:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000533c:	ffffd097          	auipc	ra,0xffffd
    80005340:	154080e7          	jalr	340(ra) # 80002490 <_ZN6ThreadC1Ev>
    80005344:	f79ff06f          	j	800052bc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005348:	02800513          	li	a0,40
    8000534c:	ffffd097          	auipc	ra,0xffffd
    80005350:	fb4080e7          	jalr	-76(ra) # 80002300 <_Znwm>
    80005354:	00050c93          	mv	s9,a0
    80005358:	00149c13          	slli	s8,s1,0x1
    8000535c:	009c0c33          	add	s8,s8,s1
    80005360:	003c1c13          	slli	s8,s8,0x3
    80005364:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005368:	ffffd097          	auipc	ra,0xffffd
    8000536c:	128080e7          	jalr	296(ra) # 80002490 <_ZN6ThreadC1Ev>
    80005370:	00006797          	auipc	a5,0x6
    80005374:	5c878793          	addi	a5,a5,1480 # 8000b938 <_ZTV16ProducerKeyboard+0x10>
    80005378:	00fcb023          	sd	a5,0(s9)
    8000537c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005380:	00349793          	slli	a5,s1,0x3
    80005384:	00f987b3          	add	a5,s3,a5
    80005388:	0197b023          	sd	s9,0(a5)
    8000538c:	f4dff06f          	j	800052d8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005390:	ffffd097          	auipc	ra,0xffffd
    80005394:	0ac080e7          	jalr	172(ra) # 8000243c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005398:	00000493          	li	s1,0
    8000539c:	00994e63          	blt	s2,s1,800053b8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800053a0:	00006517          	auipc	a0,0x6
    800053a4:	72053503          	ld	a0,1824(a0) # 8000bac0 <_ZL10waitForAll>
    800053a8:	ffffd097          	auipc	ra,0xffffd
    800053ac:	14c080e7          	jalr	332(ra) # 800024f4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800053b0:	0014849b          	addiw	s1,s1,1
    800053b4:	fe9ff06f          	j	8000539c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800053b8:	00000493          	li	s1,0
    800053bc:	0080006f          	j	800053c4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800053c0:	0014849b          	addiw	s1,s1,1
    800053c4:	0324d263          	bge	s1,s2,800053e8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800053c8:	00349793          	slli	a5,s1,0x3
    800053cc:	00f987b3          	add	a5,s3,a5
    800053d0:	0007b503          	ld	a0,0(a5)
    800053d4:	fe0506e3          	beqz	a0,800053c0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800053d8:	00053783          	ld	a5,0(a0)
    800053dc:	0087b783          	ld	a5,8(a5)
    800053e0:	000780e7          	jalr	a5
    800053e4:	fddff06f          	j	800053c0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800053e8:	000b0a63          	beqz	s6,800053fc <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800053ec:	000b3783          	ld	a5,0(s6)
    800053f0:	0087b783          	ld	a5,8(a5)
    800053f4:	000b0513          	mv	a0,s6
    800053f8:	000780e7          	jalr	a5
    delete waitForAll;
    800053fc:	00006517          	auipc	a0,0x6
    80005400:	6c453503          	ld	a0,1732(a0) # 8000bac0 <_ZL10waitForAll>
    80005404:	00050863          	beqz	a0,80005414 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005408:	00053783          	ld	a5,0(a0)
    8000540c:	0087b783          	ld	a5,8(a5)
    80005410:	000780e7          	jalr	a5
    delete buffer;
    80005414:	000a8e63          	beqz	s5,80005430 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005418:	000a8513          	mv	a0,s5
    8000541c:	00001097          	auipc	ra,0x1
    80005420:	8a8080e7          	jalr	-1880(ra) # 80005cc4 <_ZN9BufferCPPD1Ev>
    80005424:	000a8513          	mv	a0,s5
    80005428:	ffffd097          	auipc	ra,0xffffd
    8000542c:	f00080e7          	jalr	-256(ra) # 80002328 <_ZdlPv>
    80005430:	000b8113          	mv	sp,s7

}
    80005434:	f8040113          	addi	sp,s0,-128
    80005438:	07813083          	ld	ra,120(sp)
    8000543c:	07013403          	ld	s0,112(sp)
    80005440:	06813483          	ld	s1,104(sp)
    80005444:	06013903          	ld	s2,96(sp)
    80005448:	05813983          	ld	s3,88(sp)
    8000544c:	05013a03          	ld	s4,80(sp)
    80005450:	04813a83          	ld	s5,72(sp)
    80005454:	04013b03          	ld	s6,64(sp)
    80005458:	03813b83          	ld	s7,56(sp)
    8000545c:	03013c03          	ld	s8,48(sp)
    80005460:	02813c83          	ld	s9,40(sp)
    80005464:	08010113          	addi	sp,sp,128
    80005468:	00008067          	ret
    8000546c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005470:	000a8513          	mv	a0,s5
    80005474:	ffffd097          	auipc	ra,0xffffd
    80005478:	eb4080e7          	jalr	-332(ra) # 80002328 <_ZdlPv>
    8000547c:	00048513          	mv	a0,s1
    80005480:	00007097          	auipc	ra,0x7
    80005484:	728080e7          	jalr	1832(ra) # 8000cba8 <_Unwind_Resume>
    80005488:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000548c:	00048513          	mv	a0,s1
    80005490:	ffffd097          	auipc	ra,0xffffd
    80005494:	e98080e7          	jalr	-360(ra) # 80002328 <_ZdlPv>
    80005498:	00090513          	mv	a0,s2
    8000549c:	00007097          	auipc	ra,0x7
    800054a0:	70c080e7          	jalr	1804(ra) # 8000cba8 <_Unwind_Resume>
    800054a4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800054a8:	000b0513          	mv	a0,s6
    800054ac:	ffffd097          	auipc	ra,0xffffd
    800054b0:	e7c080e7          	jalr	-388(ra) # 80002328 <_ZdlPv>
    800054b4:	00048513          	mv	a0,s1
    800054b8:	00007097          	auipc	ra,0x7
    800054bc:	6f0080e7          	jalr	1776(ra) # 8000cba8 <_Unwind_Resume>
    800054c0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800054c4:	000c8513          	mv	a0,s9
    800054c8:	ffffd097          	auipc	ra,0xffffd
    800054cc:	e60080e7          	jalr	-416(ra) # 80002328 <_ZdlPv>
    800054d0:	00048513          	mv	a0,s1
    800054d4:	00007097          	auipc	ra,0x7
    800054d8:	6d4080e7          	jalr	1748(ra) # 8000cba8 <_Unwind_Resume>
    800054dc:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800054e0:	000c8513          	mv	a0,s9
    800054e4:	ffffd097          	auipc	ra,0xffffd
    800054e8:	e44080e7          	jalr	-444(ra) # 80002328 <_ZdlPv>
    800054ec:	00048513          	mv	a0,s1
    800054f0:	00007097          	auipc	ra,0x7
    800054f4:	6b8080e7          	jalr	1720(ra) # 8000cba8 <_Unwind_Resume>

00000000800054f8 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800054f8:	ff010113          	addi	sp,sp,-16
    800054fc:	00113423          	sd	ra,8(sp)
    80005500:	00813023          	sd	s0,0(sp)
    80005504:	01010413          	addi	s0,sp,16
    80005508:	00006797          	auipc	a5,0x6
    8000550c:	48078793          	addi	a5,a5,1152 # 8000b988 <_ZTV12ConsumerSync+0x10>
    80005510:	00f53023          	sd	a5,0(a0)
    80005514:	ffffd097          	auipc	ra,0xffffd
    80005518:	d54080e7          	jalr	-684(ra) # 80002268 <_ZN6ThreadD1Ev>
    8000551c:	00813083          	ld	ra,8(sp)
    80005520:	00013403          	ld	s0,0(sp)
    80005524:	01010113          	addi	sp,sp,16
    80005528:	00008067          	ret

000000008000552c <_ZN12ConsumerSyncD0Ev>:
    8000552c:	fe010113          	addi	sp,sp,-32
    80005530:	00113c23          	sd	ra,24(sp)
    80005534:	00813823          	sd	s0,16(sp)
    80005538:	00913423          	sd	s1,8(sp)
    8000553c:	02010413          	addi	s0,sp,32
    80005540:	00050493          	mv	s1,a0
    80005544:	00006797          	auipc	a5,0x6
    80005548:	44478793          	addi	a5,a5,1092 # 8000b988 <_ZTV12ConsumerSync+0x10>
    8000554c:	00f53023          	sd	a5,0(a0)
    80005550:	ffffd097          	auipc	ra,0xffffd
    80005554:	d18080e7          	jalr	-744(ra) # 80002268 <_ZN6ThreadD1Ev>
    80005558:	00048513          	mv	a0,s1
    8000555c:	ffffd097          	auipc	ra,0xffffd
    80005560:	dcc080e7          	jalr	-564(ra) # 80002328 <_ZdlPv>
    80005564:	01813083          	ld	ra,24(sp)
    80005568:	01013403          	ld	s0,16(sp)
    8000556c:	00813483          	ld	s1,8(sp)
    80005570:	02010113          	addi	sp,sp,32
    80005574:	00008067          	ret

0000000080005578 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005578:	ff010113          	addi	sp,sp,-16
    8000557c:	00113423          	sd	ra,8(sp)
    80005580:	00813023          	sd	s0,0(sp)
    80005584:	01010413          	addi	s0,sp,16
    80005588:	00006797          	auipc	a5,0x6
    8000558c:	3d878793          	addi	a5,a5,984 # 8000b960 <_ZTV12ProducerSync+0x10>
    80005590:	00f53023          	sd	a5,0(a0)
    80005594:	ffffd097          	auipc	ra,0xffffd
    80005598:	cd4080e7          	jalr	-812(ra) # 80002268 <_ZN6ThreadD1Ev>
    8000559c:	00813083          	ld	ra,8(sp)
    800055a0:	00013403          	ld	s0,0(sp)
    800055a4:	01010113          	addi	sp,sp,16
    800055a8:	00008067          	ret

00000000800055ac <_ZN12ProducerSyncD0Ev>:
    800055ac:	fe010113          	addi	sp,sp,-32
    800055b0:	00113c23          	sd	ra,24(sp)
    800055b4:	00813823          	sd	s0,16(sp)
    800055b8:	00913423          	sd	s1,8(sp)
    800055bc:	02010413          	addi	s0,sp,32
    800055c0:	00050493          	mv	s1,a0
    800055c4:	00006797          	auipc	a5,0x6
    800055c8:	39c78793          	addi	a5,a5,924 # 8000b960 <_ZTV12ProducerSync+0x10>
    800055cc:	00f53023          	sd	a5,0(a0)
    800055d0:	ffffd097          	auipc	ra,0xffffd
    800055d4:	c98080e7          	jalr	-872(ra) # 80002268 <_ZN6ThreadD1Ev>
    800055d8:	00048513          	mv	a0,s1
    800055dc:	ffffd097          	auipc	ra,0xffffd
    800055e0:	d4c080e7          	jalr	-692(ra) # 80002328 <_ZdlPv>
    800055e4:	01813083          	ld	ra,24(sp)
    800055e8:	01013403          	ld	s0,16(sp)
    800055ec:	00813483          	ld	s1,8(sp)
    800055f0:	02010113          	addi	sp,sp,32
    800055f4:	00008067          	ret

00000000800055f8 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800055f8:	ff010113          	addi	sp,sp,-16
    800055fc:	00113423          	sd	ra,8(sp)
    80005600:	00813023          	sd	s0,0(sp)
    80005604:	01010413          	addi	s0,sp,16
    80005608:	00006797          	auipc	a5,0x6
    8000560c:	33078793          	addi	a5,a5,816 # 8000b938 <_ZTV16ProducerKeyboard+0x10>
    80005610:	00f53023          	sd	a5,0(a0)
    80005614:	ffffd097          	auipc	ra,0xffffd
    80005618:	c54080e7          	jalr	-940(ra) # 80002268 <_ZN6ThreadD1Ev>
    8000561c:	00813083          	ld	ra,8(sp)
    80005620:	00013403          	ld	s0,0(sp)
    80005624:	01010113          	addi	sp,sp,16
    80005628:	00008067          	ret

000000008000562c <_ZN16ProducerKeyboardD0Ev>:
    8000562c:	fe010113          	addi	sp,sp,-32
    80005630:	00113c23          	sd	ra,24(sp)
    80005634:	00813823          	sd	s0,16(sp)
    80005638:	00913423          	sd	s1,8(sp)
    8000563c:	02010413          	addi	s0,sp,32
    80005640:	00050493          	mv	s1,a0
    80005644:	00006797          	auipc	a5,0x6
    80005648:	2f478793          	addi	a5,a5,756 # 8000b938 <_ZTV16ProducerKeyboard+0x10>
    8000564c:	00f53023          	sd	a5,0(a0)
    80005650:	ffffd097          	auipc	ra,0xffffd
    80005654:	c18080e7          	jalr	-1000(ra) # 80002268 <_ZN6ThreadD1Ev>
    80005658:	00048513          	mv	a0,s1
    8000565c:	ffffd097          	auipc	ra,0xffffd
    80005660:	ccc080e7          	jalr	-820(ra) # 80002328 <_ZdlPv>
    80005664:	01813083          	ld	ra,24(sp)
    80005668:	01013403          	ld	s0,16(sp)
    8000566c:	00813483          	ld	s1,8(sp)
    80005670:	02010113          	addi	sp,sp,32
    80005674:	00008067          	ret

0000000080005678 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005678:	ff010113          	addi	sp,sp,-16
    8000567c:	00113423          	sd	ra,8(sp)
    80005680:	00813023          	sd	s0,0(sp)
    80005684:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005688:	02053583          	ld	a1,32(a0)
    8000568c:	fffff097          	auipc	ra,0xfffff
    80005690:	7e4080e7          	jalr	2020(ra) # 80004e70 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005694:	00813083          	ld	ra,8(sp)
    80005698:	00013403          	ld	s0,0(sp)
    8000569c:	01010113          	addi	sp,sp,16
    800056a0:	00008067          	ret

00000000800056a4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800056a4:	ff010113          	addi	sp,sp,-16
    800056a8:	00113423          	sd	ra,8(sp)
    800056ac:	00813023          	sd	s0,0(sp)
    800056b0:	01010413          	addi	s0,sp,16
        producer(td);
    800056b4:	02053583          	ld	a1,32(a0)
    800056b8:	00000097          	auipc	ra,0x0
    800056bc:	878080e7          	jalr	-1928(ra) # 80004f30 <_ZN12ProducerSync8producerEPv>
    }
    800056c0:	00813083          	ld	ra,8(sp)
    800056c4:	00013403          	ld	s0,0(sp)
    800056c8:	01010113          	addi	sp,sp,16
    800056cc:	00008067          	ret

00000000800056d0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800056d0:	ff010113          	addi	sp,sp,-16
    800056d4:	00113423          	sd	ra,8(sp)
    800056d8:	00813023          	sd	s0,0(sp)
    800056dc:	01010413          	addi	s0,sp,16
        consumer(td);
    800056e0:	02053583          	ld	a1,32(a0)
    800056e4:	00000097          	auipc	ra,0x0
    800056e8:	8e0080e7          	jalr	-1824(ra) # 80004fc4 <_ZN12ConsumerSync8consumerEPv>
    }
    800056ec:	00813083          	ld	ra,8(sp)
    800056f0:	00013403          	ld	s0,0(sp)
    800056f4:	01010113          	addi	sp,sp,16
    800056f8:	00008067          	ret

00000000800056fc <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800056fc:	fe010113          	addi	sp,sp,-32
    80005700:	00113c23          	sd	ra,24(sp)
    80005704:	00813823          	sd	s0,16(sp)
    80005708:	00913423          	sd	s1,8(sp)
    8000570c:	02010413          	addi	s0,sp,32
    80005710:	00050493          	mv	s1,a0
    LOCK();
    80005714:	00100613          	li	a2,1
    80005718:	00000593          	li	a1,0
    8000571c:	00006517          	auipc	a0,0x6
    80005720:	3ac50513          	addi	a0,a0,940 # 8000bac8 <lockPrint>
    80005724:	ffffc097          	auipc	ra,0xffffc
    80005728:	af8080e7          	jalr	-1288(ra) # 8000121c <copy_and_swap>
    8000572c:	00050863          	beqz	a0,8000573c <_Z11printStringPKc+0x40>
    80005730:	ffffc097          	auipc	ra,0xffffc
    80005734:	c9c080e7          	jalr	-868(ra) # 800013cc <_Z15thread_dispatchv>
    80005738:	fddff06f          	j	80005714 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000573c:	0004c503          	lbu	a0,0(s1)
    80005740:	00050a63          	beqz	a0,80005754 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005744:	ffffc097          	auipc	ra,0xffffc
    80005748:	f28080e7          	jalr	-216(ra) # 8000166c <_Z4putcc>
        string++;
    8000574c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005750:	fedff06f          	j	8000573c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005754:	00000613          	li	a2,0
    80005758:	00100593          	li	a1,1
    8000575c:	00006517          	auipc	a0,0x6
    80005760:	36c50513          	addi	a0,a0,876 # 8000bac8 <lockPrint>
    80005764:	ffffc097          	auipc	ra,0xffffc
    80005768:	ab8080e7          	jalr	-1352(ra) # 8000121c <copy_and_swap>
    8000576c:	fe0514e3          	bnez	a0,80005754 <_Z11printStringPKc+0x58>
}
    80005770:	01813083          	ld	ra,24(sp)
    80005774:	01013403          	ld	s0,16(sp)
    80005778:	00813483          	ld	s1,8(sp)
    8000577c:	02010113          	addi	sp,sp,32
    80005780:	00008067          	ret

0000000080005784 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005784:	fd010113          	addi	sp,sp,-48
    80005788:	02113423          	sd	ra,40(sp)
    8000578c:	02813023          	sd	s0,32(sp)
    80005790:	00913c23          	sd	s1,24(sp)
    80005794:	01213823          	sd	s2,16(sp)
    80005798:	01313423          	sd	s3,8(sp)
    8000579c:	01413023          	sd	s4,0(sp)
    800057a0:	03010413          	addi	s0,sp,48
    800057a4:	00050993          	mv	s3,a0
    800057a8:	00058a13          	mv	s4,a1
    LOCK();
    800057ac:	00100613          	li	a2,1
    800057b0:	00000593          	li	a1,0
    800057b4:	00006517          	auipc	a0,0x6
    800057b8:	31450513          	addi	a0,a0,788 # 8000bac8 <lockPrint>
    800057bc:	ffffc097          	auipc	ra,0xffffc
    800057c0:	a60080e7          	jalr	-1440(ra) # 8000121c <copy_and_swap>
    800057c4:	00050863          	beqz	a0,800057d4 <_Z9getStringPci+0x50>
    800057c8:	ffffc097          	auipc	ra,0xffffc
    800057cc:	c04080e7          	jalr	-1020(ra) # 800013cc <_Z15thread_dispatchv>
    800057d0:	fddff06f          	j	800057ac <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800057d4:	00000913          	li	s2,0
    800057d8:	00090493          	mv	s1,s2
    800057dc:	0019091b          	addiw	s2,s2,1
    800057e0:	03495a63          	bge	s2,s4,80005814 <_Z9getStringPci+0x90>
        cc = getc();
    800057e4:	ffffc097          	auipc	ra,0xffffc
    800057e8:	e3c080e7          	jalr	-452(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    800057ec:	02050463          	beqz	a0,80005814 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800057f0:	009984b3          	add	s1,s3,s1
    800057f4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800057f8:	00a00793          	li	a5,10
    800057fc:	00f50a63          	beq	a0,a5,80005810 <_Z9getStringPci+0x8c>
    80005800:	00d00793          	li	a5,13
    80005804:	fcf51ae3          	bne	a0,a5,800057d8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005808:	00090493          	mv	s1,s2
    8000580c:	0080006f          	j	80005814 <_Z9getStringPci+0x90>
    80005810:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005814:	009984b3          	add	s1,s3,s1
    80005818:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000581c:	00000613          	li	a2,0
    80005820:	00100593          	li	a1,1
    80005824:	00006517          	auipc	a0,0x6
    80005828:	2a450513          	addi	a0,a0,676 # 8000bac8 <lockPrint>
    8000582c:	ffffc097          	auipc	ra,0xffffc
    80005830:	9f0080e7          	jalr	-1552(ra) # 8000121c <copy_and_swap>
    80005834:	fe0514e3          	bnez	a0,8000581c <_Z9getStringPci+0x98>
    return buf;
}
    80005838:	00098513          	mv	a0,s3
    8000583c:	02813083          	ld	ra,40(sp)
    80005840:	02013403          	ld	s0,32(sp)
    80005844:	01813483          	ld	s1,24(sp)
    80005848:	01013903          	ld	s2,16(sp)
    8000584c:	00813983          	ld	s3,8(sp)
    80005850:	00013a03          	ld	s4,0(sp)
    80005854:	03010113          	addi	sp,sp,48
    80005858:	00008067          	ret

000000008000585c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000585c:	ff010113          	addi	sp,sp,-16
    80005860:	00813423          	sd	s0,8(sp)
    80005864:	01010413          	addi	s0,sp,16
    80005868:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000586c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005870:	0006c603          	lbu	a2,0(a3)
    80005874:	fd06071b          	addiw	a4,a2,-48
    80005878:	0ff77713          	andi	a4,a4,255
    8000587c:	00900793          	li	a5,9
    80005880:	02e7e063          	bltu	a5,a4,800058a0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005884:	0025179b          	slliw	a5,a0,0x2
    80005888:	00a787bb          	addw	a5,a5,a0
    8000588c:	0017979b          	slliw	a5,a5,0x1
    80005890:	00168693          	addi	a3,a3,1
    80005894:	00c787bb          	addw	a5,a5,a2
    80005898:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000589c:	fd5ff06f          	j	80005870 <_Z11stringToIntPKc+0x14>
    return n;
}
    800058a0:	00813403          	ld	s0,8(sp)
    800058a4:	01010113          	addi	sp,sp,16
    800058a8:	00008067          	ret

00000000800058ac <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800058ac:	fc010113          	addi	sp,sp,-64
    800058b0:	02113c23          	sd	ra,56(sp)
    800058b4:	02813823          	sd	s0,48(sp)
    800058b8:	02913423          	sd	s1,40(sp)
    800058bc:	03213023          	sd	s2,32(sp)
    800058c0:	01313c23          	sd	s3,24(sp)
    800058c4:	04010413          	addi	s0,sp,64
    800058c8:	00050493          	mv	s1,a0
    800058cc:	00058913          	mv	s2,a1
    800058d0:	00060993          	mv	s3,a2
    LOCK();
    800058d4:	00100613          	li	a2,1
    800058d8:	00000593          	li	a1,0
    800058dc:	00006517          	auipc	a0,0x6
    800058e0:	1ec50513          	addi	a0,a0,492 # 8000bac8 <lockPrint>
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	938080e7          	jalr	-1736(ra) # 8000121c <copy_and_swap>
    800058ec:	00050863          	beqz	a0,800058fc <_Z8printIntiii+0x50>
    800058f0:	ffffc097          	auipc	ra,0xffffc
    800058f4:	adc080e7          	jalr	-1316(ra) # 800013cc <_Z15thread_dispatchv>
    800058f8:	fddff06f          	j	800058d4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800058fc:	00098463          	beqz	s3,80005904 <_Z8printIntiii+0x58>
    80005900:	0804c463          	bltz	s1,80005988 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005904:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005908:	00000593          	li	a1,0
    }

    i = 0;
    8000590c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005910:	0009079b          	sext.w	a5,s2
    80005914:	0325773b          	remuw	a4,a0,s2
    80005918:	00048613          	mv	a2,s1
    8000591c:	0014849b          	addiw	s1,s1,1
    80005920:	02071693          	slli	a3,a4,0x20
    80005924:	0206d693          	srli	a3,a3,0x20
    80005928:	00006717          	auipc	a4,0x6
    8000592c:	07870713          	addi	a4,a4,120 # 8000b9a0 <digits>
    80005930:	00d70733          	add	a4,a4,a3
    80005934:	00074683          	lbu	a3,0(a4)
    80005938:	fd040713          	addi	a4,s0,-48
    8000593c:	00c70733          	add	a4,a4,a2
    80005940:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005944:	0005071b          	sext.w	a4,a0
    80005948:	0325553b          	divuw	a0,a0,s2
    8000594c:	fcf772e3          	bgeu	a4,a5,80005910 <_Z8printIntiii+0x64>
    if(neg)
    80005950:	00058c63          	beqz	a1,80005968 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005954:	fd040793          	addi	a5,s0,-48
    80005958:	009784b3          	add	s1,a5,s1
    8000595c:	02d00793          	li	a5,45
    80005960:	fef48823          	sb	a5,-16(s1)
    80005964:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005968:	fff4849b          	addiw	s1,s1,-1
    8000596c:	0204c463          	bltz	s1,80005994 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005970:	fd040793          	addi	a5,s0,-48
    80005974:	009787b3          	add	a5,a5,s1
    80005978:	ff07c503          	lbu	a0,-16(a5)
    8000597c:	ffffc097          	auipc	ra,0xffffc
    80005980:	cf0080e7          	jalr	-784(ra) # 8000166c <_Z4putcc>
    80005984:	fe5ff06f          	j	80005968 <_Z8printIntiii+0xbc>
        x = -xx;
    80005988:	4090053b          	negw	a0,s1
        neg = 1;
    8000598c:	00100593          	li	a1,1
        x = -xx;
    80005990:	f7dff06f          	j	8000590c <_Z8printIntiii+0x60>

    UNLOCK();
    80005994:	00000613          	li	a2,0
    80005998:	00100593          	li	a1,1
    8000599c:	00006517          	auipc	a0,0x6
    800059a0:	12c50513          	addi	a0,a0,300 # 8000bac8 <lockPrint>
    800059a4:	ffffc097          	auipc	ra,0xffffc
    800059a8:	878080e7          	jalr	-1928(ra) # 8000121c <copy_and_swap>
    800059ac:	fe0514e3          	bnez	a0,80005994 <_Z8printIntiii+0xe8>
    800059b0:	03813083          	ld	ra,56(sp)
    800059b4:	03013403          	ld	s0,48(sp)
    800059b8:	02813483          	ld	s1,40(sp)
    800059bc:	02013903          	ld	s2,32(sp)
    800059c0:	01813983          	ld	s3,24(sp)
    800059c4:	04010113          	addi	sp,sp,64
    800059c8:	00008067          	ret

00000000800059cc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800059cc:	fd010113          	addi	sp,sp,-48
    800059d0:	02113423          	sd	ra,40(sp)
    800059d4:	02813023          	sd	s0,32(sp)
    800059d8:	00913c23          	sd	s1,24(sp)
    800059dc:	01213823          	sd	s2,16(sp)
    800059e0:	01313423          	sd	s3,8(sp)
    800059e4:	03010413          	addi	s0,sp,48
    800059e8:	00050493          	mv	s1,a0
    800059ec:	00058913          	mv	s2,a1
    800059f0:	0015879b          	addiw	a5,a1,1
    800059f4:	0007851b          	sext.w	a0,a5
    800059f8:	00f4a023          	sw	a5,0(s1)
    800059fc:	0004a823          	sw	zero,16(s1)
    80005a00:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005a04:	00251513          	slli	a0,a0,0x2
    80005a08:	ffffc097          	auipc	ra,0xffffc
    80005a0c:	850080e7          	jalr	-1968(ra) # 80001258 <_Z9mem_allocm>
    80005a10:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005a14:	01000513          	li	a0,16
    80005a18:	ffffd097          	auipc	ra,0xffffd
    80005a1c:	8e8080e7          	jalr	-1816(ra) # 80002300 <_Znwm>
    80005a20:	00050993          	mv	s3,a0
    80005a24:	00000593          	li	a1,0
    80005a28:	ffffd097          	auipc	ra,0xffffd
    80005a2c:	a90080e7          	jalr	-1392(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    80005a30:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005a34:	01000513          	li	a0,16
    80005a38:	ffffd097          	auipc	ra,0xffffd
    80005a3c:	8c8080e7          	jalr	-1848(ra) # 80002300 <_Znwm>
    80005a40:	00050993          	mv	s3,a0
    80005a44:	00090593          	mv	a1,s2
    80005a48:	ffffd097          	auipc	ra,0xffffd
    80005a4c:	a70080e7          	jalr	-1424(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    80005a50:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005a54:	01000513          	li	a0,16
    80005a58:	ffffd097          	auipc	ra,0xffffd
    80005a5c:	8a8080e7          	jalr	-1880(ra) # 80002300 <_Znwm>
    80005a60:	00050913          	mv	s2,a0
    80005a64:	00100593          	li	a1,1
    80005a68:	ffffd097          	auipc	ra,0xffffd
    80005a6c:	a50080e7          	jalr	-1456(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    80005a70:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005a74:	01000513          	li	a0,16
    80005a78:	ffffd097          	auipc	ra,0xffffd
    80005a7c:	888080e7          	jalr	-1912(ra) # 80002300 <_Znwm>
    80005a80:	00050913          	mv	s2,a0
    80005a84:	00100593          	li	a1,1
    80005a88:	ffffd097          	auipc	ra,0xffffd
    80005a8c:	a30080e7          	jalr	-1488(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    80005a90:	0324b823          	sd	s2,48(s1)
}
    80005a94:	02813083          	ld	ra,40(sp)
    80005a98:	02013403          	ld	s0,32(sp)
    80005a9c:	01813483          	ld	s1,24(sp)
    80005aa0:	01013903          	ld	s2,16(sp)
    80005aa4:	00813983          	ld	s3,8(sp)
    80005aa8:	03010113          	addi	sp,sp,48
    80005aac:	00008067          	ret
    80005ab0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005ab4:	00098513          	mv	a0,s3
    80005ab8:	ffffd097          	auipc	ra,0xffffd
    80005abc:	870080e7          	jalr	-1936(ra) # 80002328 <_ZdlPv>
    80005ac0:	00048513          	mv	a0,s1
    80005ac4:	00007097          	auipc	ra,0x7
    80005ac8:	0e4080e7          	jalr	228(ra) # 8000cba8 <_Unwind_Resume>
    80005acc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005ad0:	00098513          	mv	a0,s3
    80005ad4:	ffffd097          	auipc	ra,0xffffd
    80005ad8:	854080e7          	jalr	-1964(ra) # 80002328 <_ZdlPv>
    80005adc:	00048513          	mv	a0,s1
    80005ae0:	00007097          	auipc	ra,0x7
    80005ae4:	0c8080e7          	jalr	200(ra) # 8000cba8 <_Unwind_Resume>
    80005ae8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005aec:	00090513          	mv	a0,s2
    80005af0:	ffffd097          	auipc	ra,0xffffd
    80005af4:	838080e7          	jalr	-1992(ra) # 80002328 <_ZdlPv>
    80005af8:	00048513          	mv	a0,s1
    80005afc:	00007097          	auipc	ra,0x7
    80005b00:	0ac080e7          	jalr	172(ra) # 8000cba8 <_Unwind_Resume>
    80005b04:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005b08:	00090513          	mv	a0,s2
    80005b0c:	ffffd097          	auipc	ra,0xffffd
    80005b10:	81c080e7          	jalr	-2020(ra) # 80002328 <_ZdlPv>
    80005b14:	00048513          	mv	a0,s1
    80005b18:	00007097          	auipc	ra,0x7
    80005b1c:	090080e7          	jalr	144(ra) # 8000cba8 <_Unwind_Resume>

0000000080005b20 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005b20:	fe010113          	addi	sp,sp,-32
    80005b24:	00113c23          	sd	ra,24(sp)
    80005b28:	00813823          	sd	s0,16(sp)
    80005b2c:	00913423          	sd	s1,8(sp)
    80005b30:	01213023          	sd	s2,0(sp)
    80005b34:	02010413          	addi	s0,sp,32
    80005b38:	00050493          	mv	s1,a0
    80005b3c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005b40:	01853503          	ld	a0,24(a0)
    80005b44:	ffffd097          	auipc	ra,0xffffd
    80005b48:	9b0080e7          	jalr	-1616(ra) # 800024f4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005b4c:	0304b503          	ld	a0,48(s1)
    80005b50:	ffffd097          	auipc	ra,0xffffd
    80005b54:	9a4080e7          	jalr	-1628(ra) # 800024f4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005b58:	0084b783          	ld	a5,8(s1)
    80005b5c:	0144a703          	lw	a4,20(s1)
    80005b60:	00271713          	slli	a4,a4,0x2
    80005b64:	00e787b3          	add	a5,a5,a4
    80005b68:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005b6c:	0144a783          	lw	a5,20(s1)
    80005b70:	0017879b          	addiw	a5,a5,1
    80005b74:	0004a703          	lw	a4,0(s1)
    80005b78:	02e7e7bb          	remw	a5,a5,a4
    80005b7c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005b80:	0304b503          	ld	a0,48(s1)
    80005b84:	ffffd097          	auipc	ra,0xffffd
    80005b88:	9a8080e7          	jalr	-1624(ra) # 8000252c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005b8c:	0204b503          	ld	a0,32(s1)
    80005b90:	ffffd097          	auipc	ra,0xffffd
    80005b94:	99c080e7          	jalr	-1636(ra) # 8000252c <_ZN9Semaphore6signalEv>

}
    80005b98:	01813083          	ld	ra,24(sp)
    80005b9c:	01013403          	ld	s0,16(sp)
    80005ba0:	00813483          	ld	s1,8(sp)
    80005ba4:	00013903          	ld	s2,0(sp)
    80005ba8:	02010113          	addi	sp,sp,32
    80005bac:	00008067          	ret

0000000080005bb0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005bb0:	fe010113          	addi	sp,sp,-32
    80005bb4:	00113c23          	sd	ra,24(sp)
    80005bb8:	00813823          	sd	s0,16(sp)
    80005bbc:	00913423          	sd	s1,8(sp)
    80005bc0:	01213023          	sd	s2,0(sp)
    80005bc4:	02010413          	addi	s0,sp,32
    80005bc8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005bcc:	02053503          	ld	a0,32(a0)
    80005bd0:	ffffd097          	auipc	ra,0xffffd
    80005bd4:	924080e7          	jalr	-1756(ra) # 800024f4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005bd8:	0284b503          	ld	a0,40(s1)
    80005bdc:	ffffd097          	auipc	ra,0xffffd
    80005be0:	918080e7          	jalr	-1768(ra) # 800024f4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005be4:	0084b703          	ld	a4,8(s1)
    80005be8:	0104a783          	lw	a5,16(s1)
    80005bec:	00279693          	slli	a3,a5,0x2
    80005bf0:	00d70733          	add	a4,a4,a3
    80005bf4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005bf8:	0017879b          	addiw	a5,a5,1
    80005bfc:	0004a703          	lw	a4,0(s1)
    80005c00:	02e7e7bb          	remw	a5,a5,a4
    80005c04:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005c08:	0284b503          	ld	a0,40(s1)
    80005c0c:	ffffd097          	auipc	ra,0xffffd
    80005c10:	920080e7          	jalr	-1760(ra) # 8000252c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005c14:	0184b503          	ld	a0,24(s1)
    80005c18:	ffffd097          	auipc	ra,0xffffd
    80005c1c:	914080e7          	jalr	-1772(ra) # 8000252c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c20:	00090513          	mv	a0,s2
    80005c24:	01813083          	ld	ra,24(sp)
    80005c28:	01013403          	ld	s0,16(sp)
    80005c2c:	00813483          	ld	s1,8(sp)
    80005c30:	00013903          	ld	s2,0(sp)
    80005c34:	02010113          	addi	sp,sp,32
    80005c38:	00008067          	ret

0000000080005c3c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005c3c:	fe010113          	addi	sp,sp,-32
    80005c40:	00113c23          	sd	ra,24(sp)
    80005c44:	00813823          	sd	s0,16(sp)
    80005c48:	00913423          	sd	s1,8(sp)
    80005c4c:	01213023          	sd	s2,0(sp)
    80005c50:	02010413          	addi	s0,sp,32
    80005c54:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005c58:	02853503          	ld	a0,40(a0)
    80005c5c:	ffffd097          	auipc	ra,0xffffd
    80005c60:	898080e7          	jalr	-1896(ra) # 800024f4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005c64:	0304b503          	ld	a0,48(s1)
    80005c68:	ffffd097          	auipc	ra,0xffffd
    80005c6c:	88c080e7          	jalr	-1908(ra) # 800024f4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005c70:	0144a783          	lw	a5,20(s1)
    80005c74:	0104a903          	lw	s2,16(s1)
    80005c78:	0327ce63          	blt	a5,s2,80005cb4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005c7c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005c80:	0304b503          	ld	a0,48(s1)
    80005c84:	ffffd097          	auipc	ra,0xffffd
    80005c88:	8a8080e7          	jalr	-1880(ra) # 8000252c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005c8c:	0284b503          	ld	a0,40(s1)
    80005c90:	ffffd097          	auipc	ra,0xffffd
    80005c94:	89c080e7          	jalr	-1892(ra) # 8000252c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c98:	00090513          	mv	a0,s2
    80005c9c:	01813083          	ld	ra,24(sp)
    80005ca0:	01013403          	ld	s0,16(sp)
    80005ca4:	00813483          	ld	s1,8(sp)
    80005ca8:	00013903          	ld	s2,0(sp)
    80005cac:	02010113          	addi	sp,sp,32
    80005cb0:	00008067          	ret
        ret = cap - head + tail;
    80005cb4:	0004a703          	lw	a4,0(s1)
    80005cb8:	4127093b          	subw	s2,a4,s2
    80005cbc:	00f9093b          	addw	s2,s2,a5
    80005cc0:	fc1ff06f          	j	80005c80 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005cc4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005cc4:	fe010113          	addi	sp,sp,-32
    80005cc8:	00113c23          	sd	ra,24(sp)
    80005ccc:	00813823          	sd	s0,16(sp)
    80005cd0:	00913423          	sd	s1,8(sp)
    80005cd4:	02010413          	addi	s0,sp,32
    80005cd8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005cdc:	00a00513          	li	a0,10
    80005ce0:	ffffd097          	auipc	ra,0xffffd
    80005ce4:	93c080e7          	jalr	-1732(ra) # 8000261c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005ce8:	00003517          	auipc	a0,0x3
    80005cec:	62850513          	addi	a0,a0,1576 # 80009310 <CONSOLE_STATUS+0x300>
    80005cf0:	00000097          	auipc	ra,0x0
    80005cf4:	a0c080e7          	jalr	-1524(ra) # 800056fc <_Z11printStringPKc>
    while (getCnt()) {
    80005cf8:	00048513          	mv	a0,s1
    80005cfc:	00000097          	auipc	ra,0x0
    80005d00:	f40080e7          	jalr	-192(ra) # 80005c3c <_ZN9BufferCPP6getCntEv>
    80005d04:	02050c63          	beqz	a0,80005d3c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005d08:	0084b783          	ld	a5,8(s1)
    80005d0c:	0104a703          	lw	a4,16(s1)
    80005d10:	00271713          	slli	a4,a4,0x2
    80005d14:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005d18:	0007c503          	lbu	a0,0(a5)
    80005d1c:	ffffd097          	auipc	ra,0xffffd
    80005d20:	900080e7          	jalr	-1792(ra) # 8000261c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005d24:	0104a783          	lw	a5,16(s1)
    80005d28:	0017879b          	addiw	a5,a5,1
    80005d2c:	0004a703          	lw	a4,0(s1)
    80005d30:	02e7e7bb          	remw	a5,a5,a4
    80005d34:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005d38:	fc1ff06f          	j	80005cf8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005d3c:	02100513          	li	a0,33
    80005d40:	ffffd097          	auipc	ra,0xffffd
    80005d44:	8dc080e7          	jalr	-1828(ra) # 8000261c <_ZN7Console4putcEc>
    Console::putc('\n');
    80005d48:	00a00513          	li	a0,10
    80005d4c:	ffffd097          	auipc	ra,0xffffd
    80005d50:	8d0080e7          	jalr	-1840(ra) # 8000261c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005d54:	0084b503          	ld	a0,8(s1)
    80005d58:	ffffb097          	auipc	ra,0xffffb
    80005d5c:	554080e7          	jalr	1364(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80005d60:	0204b503          	ld	a0,32(s1)
    80005d64:	00050863          	beqz	a0,80005d74 <_ZN9BufferCPPD1Ev+0xb0>
    80005d68:	00053783          	ld	a5,0(a0)
    80005d6c:	0087b783          	ld	a5,8(a5)
    80005d70:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005d74:	0184b503          	ld	a0,24(s1)
    80005d78:	00050863          	beqz	a0,80005d88 <_ZN9BufferCPPD1Ev+0xc4>
    80005d7c:	00053783          	ld	a5,0(a0)
    80005d80:	0087b783          	ld	a5,8(a5)
    80005d84:	000780e7          	jalr	a5
    delete mutexTail;
    80005d88:	0304b503          	ld	a0,48(s1)
    80005d8c:	00050863          	beqz	a0,80005d9c <_ZN9BufferCPPD1Ev+0xd8>
    80005d90:	00053783          	ld	a5,0(a0)
    80005d94:	0087b783          	ld	a5,8(a5)
    80005d98:	000780e7          	jalr	a5
    delete mutexHead;
    80005d9c:	0284b503          	ld	a0,40(s1)
    80005da0:	00050863          	beqz	a0,80005db0 <_ZN9BufferCPPD1Ev+0xec>
    80005da4:	00053783          	ld	a5,0(a0)
    80005da8:	0087b783          	ld	a5,8(a5)
    80005dac:	000780e7          	jalr	a5
}
    80005db0:	01813083          	ld	ra,24(sp)
    80005db4:	01013403          	ld	s0,16(sp)
    80005db8:	00813483          	ld	s1,8(sp)
    80005dbc:	02010113          	addi	sp,sp,32
    80005dc0:	00008067          	ret

0000000080005dc4 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005dc4:	fe010113          	addi	sp,sp,-32
    80005dc8:	00113c23          	sd	ra,24(sp)
    80005dcc:	00813823          	sd	s0,16(sp)
    80005dd0:	00913423          	sd	s1,8(sp)
    80005dd4:	01213023          	sd	s2,0(sp)
    80005dd8:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005ddc:	00003517          	auipc	a0,0x3
    80005de0:	54c50513          	addi	a0,a0,1356 # 80009328 <CONSOLE_STATUS+0x318>
    80005de4:	00000097          	auipc	ra,0x0
    80005de8:	918080e7          	jalr	-1768(ra) # 800056fc <_Z11printStringPKc>
    int test = getc() - '0';
    80005dec:	ffffc097          	auipc	ra,0xffffc
    80005df0:	834080e7          	jalr	-1996(ra) # 80001620 <_Z4getcv>
    80005df4:	0005091b          	sext.w	s2,a0
    80005df8:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005dfc:	ffffc097          	auipc	ra,0xffffc
    80005e00:	824080e7          	jalr	-2012(ra) # 80001620 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    80005e04:	fcf9071b          	addiw	a4,s2,-49
    80005e08:	00100793          	li	a5,1
    80005e0c:	04e7f063          	bgeu	a5,a4,80005e4c <_Z8userMainv+0x88>
    80005e10:	00700793          	li	a5,7
    80005e14:	02f48c63          	beq	s1,a5,80005e4c <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80005e18:	fcd9079b          	addiw	a5,s2,-51
    80005e1c:	00100693          	li	a3,1
    80005e20:	04f6fa63          	bgeu	a3,a5,80005e74 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005e24:	fcb9091b          	addiw	s2,s2,-53
    80005e28:	00100793          	li	a5,1
    80005e2c:	0527fe63          	bgeu	a5,s2,80005e88 <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005e30:	00600793          	li	a5,6
    80005e34:	02e7f463          	bgeu	a5,a4,80005e5c <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    80005e38:	00003517          	auipc	a0,0x3
    80005e3c:	5a050513          	addi	a0,a0,1440 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005e40:	00000097          	auipc	ra,0x0
    80005e44:	8bc080e7          	jalr	-1860(ra) # 800056fc <_Z11printStringPKc>
    80005e48:	0140006f          	j	80005e5c <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    80005e4c:	00003517          	auipc	a0,0x3
    80005e50:	4fc50513          	addi	a0,a0,1276 # 80009348 <CONSOLE_STATUS+0x338>
    80005e54:	00000097          	auipc	ra,0x0
    80005e58:	8a8080e7          	jalr	-1880(ra) # 800056fc <_Z11printStringPKc>
    }
    80005e5c:	01813083          	ld	ra,24(sp)
    80005e60:	01013403          	ld	s0,16(sp)
    80005e64:	00813483          	ld	s1,8(sp)
    80005e68:	00013903          	ld	s2,0(sp)
    80005e6c:	02010113          	addi	sp,sp,32
    80005e70:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80005e74:	00003517          	auipc	a0,0x3
    80005e78:	50450513          	addi	a0,a0,1284 # 80009378 <CONSOLE_STATUS+0x368>
    80005e7c:	00000097          	auipc	ra,0x0
    80005e80:	880080e7          	jalr	-1920(ra) # 800056fc <_Z11printStringPKc>
            return;
    80005e84:	fd9ff06f          	j	80005e5c <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005e88:	00003517          	auipc	a0,0x3
    80005e8c:	52050513          	addi	a0,a0,1312 # 800093a8 <CONSOLE_STATUS+0x398>
    80005e90:	00000097          	auipc	ra,0x0
    80005e94:	86c080e7          	jalr	-1940(ra) # 800056fc <_Z11printStringPKc>
            return;
    80005e98:	fc5ff06f          	j	80005e5c <_Z8userMainv+0x98>

0000000080005e9c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005e9c:	fe010113          	addi	sp,sp,-32
    80005ea0:	00113c23          	sd	ra,24(sp)
    80005ea4:	00813823          	sd	s0,16(sp)
    80005ea8:	00913423          	sd	s1,8(sp)
    80005eac:	01213023          	sd	s2,0(sp)
    80005eb0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005eb4:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005eb8:	00600493          	li	s1,6
    while (--i > 0) {
    80005ebc:	fff4849b          	addiw	s1,s1,-1
    80005ec0:	04905463          	blez	s1,80005f08 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005ec4:	00003517          	auipc	a0,0x3
    80005ec8:	53c50513          	addi	a0,a0,1340 # 80009400 <CONSOLE_STATUS+0x3f0>
    80005ecc:	00000097          	auipc	ra,0x0
    80005ed0:	830080e7          	jalr	-2000(ra) # 800056fc <_Z11printStringPKc>
        printInt(sleep_time);
    80005ed4:	00000613          	li	a2,0
    80005ed8:	00a00593          	li	a1,10
    80005edc:	0009051b          	sext.w	a0,s2
    80005ee0:	00000097          	auipc	ra,0x0
    80005ee4:	9cc080e7          	jalr	-1588(ra) # 800058ac <_Z8printIntiii>
        printString(" !\n");
    80005ee8:	00003517          	auipc	a0,0x3
    80005eec:	52050513          	addi	a0,a0,1312 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005ef0:	00000097          	auipc	ra,0x0
    80005ef4:	80c080e7          	jalr	-2036(ra) # 800056fc <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005ef8:	00090513          	mv	a0,s2
    80005efc:	ffffb097          	auipc	ra,0xffffb
    80005f00:	6d8080e7          	jalr	1752(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80005f04:	fb9ff06f          	j	80005ebc <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005f08:	00a00793          	li	a5,10
    80005f0c:	02f95933          	divu	s2,s2,a5
    80005f10:	fff90913          	addi	s2,s2,-1
    80005f14:	00006797          	auipc	a5,0x6
    80005f18:	bbc78793          	addi	a5,a5,-1092 # 8000bad0 <_ZL8finished>
    80005f1c:	01278933          	add	s2,a5,s2
    80005f20:	00100793          	li	a5,1
    80005f24:	00f90023          	sb	a5,0(s2)
}
    80005f28:	01813083          	ld	ra,24(sp)
    80005f2c:	01013403          	ld	s0,16(sp)
    80005f30:	00813483          	ld	s1,8(sp)
    80005f34:	00013903          	ld	s2,0(sp)
    80005f38:	02010113          	addi	sp,sp,32
    80005f3c:	00008067          	ret

0000000080005f40 <_Z12testSleepingv>:

void testSleeping() {
    80005f40:	fc010113          	addi	sp,sp,-64
    80005f44:	02113c23          	sd	ra,56(sp)
    80005f48:	02813823          	sd	s0,48(sp)
    80005f4c:	02913423          	sd	s1,40(sp)
    80005f50:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005f54:	00a00793          	li	a5,10
    80005f58:	fcf43823          	sd	a5,-48(s0)
    80005f5c:	01400793          	li	a5,20
    80005f60:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f64:	00000493          	li	s1,0
    80005f68:	02c0006f          	j	80005f94 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005f6c:	00349793          	slli	a5,s1,0x3
    80005f70:	fd040613          	addi	a2,s0,-48
    80005f74:	00f60633          	add	a2,a2,a5
    80005f78:	00000597          	auipc	a1,0x0
    80005f7c:	f2458593          	addi	a1,a1,-220 # 80005e9c <_ZL9sleepyRunPv>
    80005f80:	fc040513          	addi	a0,s0,-64
    80005f84:	00f50533          	add	a0,a0,a5
    80005f88:	ffffb097          	auipc	ra,0xffffb
    80005f8c:	370080e7          	jalr	880(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f90:	0014849b          	addiw	s1,s1,1
    80005f94:	00100793          	li	a5,1
    80005f98:	fc97dae3          	bge	a5,s1,80005f6c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005f9c:	00006797          	auipc	a5,0x6
    80005fa0:	b347c783          	lbu	a5,-1228(a5) # 8000bad0 <_ZL8finished>
    80005fa4:	fe078ce3          	beqz	a5,80005f9c <_Z12testSleepingv+0x5c>
    80005fa8:	00006797          	auipc	a5,0x6
    80005fac:	b297c783          	lbu	a5,-1239(a5) # 8000bad1 <_ZL8finished+0x1>
    80005fb0:	fe0786e3          	beqz	a5,80005f9c <_Z12testSleepingv+0x5c>
}
    80005fb4:	03813083          	ld	ra,56(sp)
    80005fb8:	03013403          	ld	s0,48(sp)
    80005fbc:	02813483          	ld	s1,40(sp)
    80005fc0:	04010113          	addi	sp,sp,64
    80005fc4:	00008067          	ret

0000000080005fc8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005fc8:	fe010113          	addi	sp,sp,-32
    80005fcc:	00113c23          	sd	ra,24(sp)
    80005fd0:	00813823          	sd	s0,16(sp)
    80005fd4:	00913423          	sd	s1,8(sp)
    80005fd8:	01213023          	sd	s2,0(sp)
    80005fdc:	02010413          	addi	s0,sp,32
    80005fe0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005fe4:	00100793          	li	a5,1
    80005fe8:	02a7f863          	bgeu	a5,a0,80006018 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005fec:	00a00793          	li	a5,10
    80005ff0:	02f577b3          	remu	a5,a0,a5
    80005ff4:	02078e63          	beqz	a5,80006030 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005ff8:	fff48513          	addi	a0,s1,-1
    80005ffc:	00000097          	auipc	ra,0x0
    80006000:	fcc080e7          	jalr	-52(ra) # 80005fc8 <_ZL9fibonaccim>
    80006004:	00050913          	mv	s2,a0
    80006008:	ffe48513          	addi	a0,s1,-2
    8000600c:	00000097          	auipc	ra,0x0
    80006010:	fbc080e7          	jalr	-68(ra) # 80005fc8 <_ZL9fibonaccim>
    80006014:	00a90533          	add	a0,s2,a0
}
    80006018:	01813083          	ld	ra,24(sp)
    8000601c:	01013403          	ld	s0,16(sp)
    80006020:	00813483          	ld	s1,8(sp)
    80006024:	00013903          	ld	s2,0(sp)
    80006028:	02010113          	addi	sp,sp,32
    8000602c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006030:	ffffb097          	auipc	ra,0xffffb
    80006034:	39c080e7          	jalr	924(ra) # 800013cc <_Z15thread_dispatchv>
    80006038:	fc1ff06f          	j	80005ff8 <_ZL9fibonaccim+0x30>

000000008000603c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000603c:	fe010113          	addi	sp,sp,-32
    80006040:	00113c23          	sd	ra,24(sp)
    80006044:	00813823          	sd	s0,16(sp)
    80006048:	00913423          	sd	s1,8(sp)
    8000604c:	01213023          	sd	s2,0(sp)
    80006050:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006054:	00a00493          	li	s1,10
    80006058:	0400006f          	j	80006098 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000605c:	00003517          	auipc	a0,0x3
    80006060:	21c50513          	addi	a0,a0,540 # 80009278 <CONSOLE_STATUS+0x268>
    80006064:	fffff097          	auipc	ra,0xfffff
    80006068:	698080e7          	jalr	1688(ra) # 800056fc <_Z11printStringPKc>
    8000606c:	00000613          	li	a2,0
    80006070:	00a00593          	li	a1,10
    80006074:	00048513          	mv	a0,s1
    80006078:	00000097          	auipc	ra,0x0
    8000607c:	834080e7          	jalr	-1996(ra) # 800058ac <_Z8printIntiii>
    80006080:	00003517          	auipc	a0,0x3
    80006084:	0e850513          	addi	a0,a0,232 # 80009168 <CONSOLE_STATUS+0x158>
    80006088:	fffff097          	auipc	ra,0xfffff
    8000608c:	674080e7          	jalr	1652(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006090:	0014849b          	addiw	s1,s1,1
    80006094:	0ff4f493          	andi	s1,s1,255
    80006098:	00c00793          	li	a5,12
    8000609c:	fc97f0e3          	bgeu	a5,s1,8000605c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800060a0:	00003517          	auipc	a0,0x3
    800060a4:	1e050513          	addi	a0,a0,480 # 80009280 <CONSOLE_STATUS+0x270>
    800060a8:	fffff097          	auipc	ra,0xfffff
    800060ac:	654080e7          	jalr	1620(ra) # 800056fc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800060b0:	00500313          	li	t1,5
    thread_dispatch();
    800060b4:	ffffb097          	auipc	ra,0xffffb
    800060b8:	318080e7          	jalr	792(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800060bc:	01000513          	li	a0,16
    800060c0:	00000097          	auipc	ra,0x0
    800060c4:	f08080e7          	jalr	-248(ra) # 80005fc8 <_ZL9fibonaccim>
    800060c8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800060cc:	00003517          	auipc	a0,0x3
    800060d0:	1c450513          	addi	a0,a0,452 # 80009290 <CONSOLE_STATUS+0x280>
    800060d4:	fffff097          	auipc	ra,0xfffff
    800060d8:	628080e7          	jalr	1576(ra) # 800056fc <_Z11printStringPKc>
    800060dc:	00000613          	li	a2,0
    800060e0:	00a00593          	li	a1,10
    800060e4:	0009051b          	sext.w	a0,s2
    800060e8:	fffff097          	auipc	ra,0xfffff
    800060ec:	7c4080e7          	jalr	1988(ra) # 800058ac <_Z8printIntiii>
    800060f0:	00003517          	auipc	a0,0x3
    800060f4:	07850513          	addi	a0,a0,120 # 80009168 <CONSOLE_STATUS+0x158>
    800060f8:	fffff097          	auipc	ra,0xfffff
    800060fc:	604080e7          	jalr	1540(ra) # 800056fc <_Z11printStringPKc>
    80006100:	0400006f          	j	80006140 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006104:	00003517          	auipc	a0,0x3
    80006108:	17450513          	addi	a0,a0,372 # 80009278 <CONSOLE_STATUS+0x268>
    8000610c:	fffff097          	auipc	ra,0xfffff
    80006110:	5f0080e7          	jalr	1520(ra) # 800056fc <_Z11printStringPKc>
    80006114:	00000613          	li	a2,0
    80006118:	00a00593          	li	a1,10
    8000611c:	00048513          	mv	a0,s1
    80006120:	fffff097          	auipc	ra,0xfffff
    80006124:	78c080e7          	jalr	1932(ra) # 800058ac <_Z8printIntiii>
    80006128:	00003517          	auipc	a0,0x3
    8000612c:	04050513          	addi	a0,a0,64 # 80009168 <CONSOLE_STATUS+0x158>
    80006130:	fffff097          	auipc	ra,0xfffff
    80006134:	5cc080e7          	jalr	1484(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006138:	0014849b          	addiw	s1,s1,1
    8000613c:	0ff4f493          	andi	s1,s1,255
    80006140:	00f00793          	li	a5,15
    80006144:	fc97f0e3          	bgeu	a5,s1,80006104 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006148:	00003517          	auipc	a0,0x3
    8000614c:	15850513          	addi	a0,a0,344 # 800092a0 <CONSOLE_STATUS+0x290>
    80006150:	fffff097          	auipc	ra,0xfffff
    80006154:	5ac080e7          	jalr	1452(ra) # 800056fc <_Z11printStringPKc>
    finishedD = true;
    80006158:	00100793          	li	a5,1
    8000615c:	00006717          	auipc	a4,0x6
    80006160:	96f70b23          	sb	a5,-1674(a4) # 8000bad2 <_ZL9finishedD>
    thread_dispatch();
    80006164:	ffffb097          	auipc	ra,0xffffb
    80006168:	268080e7          	jalr	616(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000616c:	01813083          	ld	ra,24(sp)
    80006170:	01013403          	ld	s0,16(sp)
    80006174:	00813483          	ld	s1,8(sp)
    80006178:	00013903          	ld	s2,0(sp)
    8000617c:	02010113          	addi	sp,sp,32
    80006180:	00008067          	ret

0000000080006184 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006184:	fe010113          	addi	sp,sp,-32
    80006188:	00113c23          	sd	ra,24(sp)
    8000618c:	00813823          	sd	s0,16(sp)
    80006190:	00913423          	sd	s1,8(sp)
    80006194:	01213023          	sd	s2,0(sp)
    80006198:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000619c:	00000493          	li	s1,0
    800061a0:	0400006f          	j	800061e0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800061a4:	00003517          	auipc	a0,0x3
    800061a8:	0a450513          	addi	a0,a0,164 # 80009248 <CONSOLE_STATUS+0x238>
    800061ac:	fffff097          	auipc	ra,0xfffff
    800061b0:	550080e7          	jalr	1360(ra) # 800056fc <_Z11printStringPKc>
    800061b4:	00000613          	li	a2,0
    800061b8:	00a00593          	li	a1,10
    800061bc:	00048513          	mv	a0,s1
    800061c0:	fffff097          	auipc	ra,0xfffff
    800061c4:	6ec080e7          	jalr	1772(ra) # 800058ac <_Z8printIntiii>
    800061c8:	00003517          	auipc	a0,0x3
    800061cc:	fa050513          	addi	a0,a0,-96 # 80009168 <CONSOLE_STATUS+0x158>
    800061d0:	fffff097          	auipc	ra,0xfffff
    800061d4:	52c080e7          	jalr	1324(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 3; i++) {
    800061d8:	0014849b          	addiw	s1,s1,1
    800061dc:	0ff4f493          	andi	s1,s1,255
    800061e0:	00200793          	li	a5,2
    800061e4:	fc97f0e3          	bgeu	a5,s1,800061a4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800061e8:	00003517          	auipc	a0,0x3
    800061ec:	06850513          	addi	a0,a0,104 # 80009250 <CONSOLE_STATUS+0x240>
    800061f0:	fffff097          	auipc	ra,0xfffff
    800061f4:	50c080e7          	jalr	1292(ra) # 800056fc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800061f8:	00700313          	li	t1,7
    thread_dispatch();
    800061fc:	ffffb097          	auipc	ra,0xffffb
    80006200:	1d0080e7          	jalr	464(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006204:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006208:	00003517          	auipc	a0,0x3
    8000620c:	05850513          	addi	a0,a0,88 # 80009260 <CONSOLE_STATUS+0x250>
    80006210:	fffff097          	auipc	ra,0xfffff
    80006214:	4ec080e7          	jalr	1260(ra) # 800056fc <_Z11printStringPKc>
    80006218:	00000613          	li	a2,0
    8000621c:	00a00593          	li	a1,10
    80006220:	0009051b          	sext.w	a0,s2
    80006224:	fffff097          	auipc	ra,0xfffff
    80006228:	688080e7          	jalr	1672(ra) # 800058ac <_Z8printIntiii>
    8000622c:	00003517          	auipc	a0,0x3
    80006230:	f3c50513          	addi	a0,a0,-196 # 80009168 <CONSOLE_STATUS+0x158>
    80006234:	fffff097          	auipc	ra,0xfffff
    80006238:	4c8080e7          	jalr	1224(ra) # 800056fc <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000623c:	00c00513          	li	a0,12
    80006240:	00000097          	auipc	ra,0x0
    80006244:	d88080e7          	jalr	-632(ra) # 80005fc8 <_ZL9fibonaccim>
    80006248:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000624c:	00003517          	auipc	a0,0x3
    80006250:	01c50513          	addi	a0,a0,28 # 80009268 <CONSOLE_STATUS+0x258>
    80006254:	fffff097          	auipc	ra,0xfffff
    80006258:	4a8080e7          	jalr	1192(ra) # 800056fc <_Z11printStringPKc>
    8000625c:	00000613          	li	a2,0
    80006260:	00a00593          	li	a1,10
    80006264:	0009051b          	sext.w	a0,s2
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	644080e7          	jalr	1604(ra) # 800058ac <_Z8printIntiii>
    80006270:	00003517          	auipc	a0,0x3
    80006274:	ef850513          	addi	a0,a0,-264 # 80009168 <CONSOLE_STATUS+0x158>
    80006278:	fffff097          	auipc	ra,0xfffff
    8000627c:	484080e7          	jalr	1156(ra) # 800056fc <_Z11printStringPKc>
    80006280:	0400006f          	j	800062c0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006284:	00003517          	auipc	a0,0x3
    80006288:	fc450513          	addi	a0,a0,-60 # 80009248 <CONSOLE_STATUS+0x238>
    8000628c:	fffff097          	auipc	ra,0xfffff
    80006290:	470080e7          	jalr	1136(ra) # 800056fc <_Z11printStringPKc>
    80006294:	00000613          	li	a2,0
    80006298:	00a00593          	li	a1,10
    8000629c:	00048513          	mv	a0,s1
    800062a0:	fffff097          	auipc	ra,0xfffff
    800062a4:	60c080e7          	jalr	1548(ra) # 800058ac <_Z8printIntiii>
    800062a8:	00003517          	auipc	a0,0x3
    800062ac:	ec050513          	addi	a0,a0,-320 # 80009168 <CONSOLE_STATUS+0x158>
    800062b0:	fffff097          	auipc	ra,0xfffff
    800062b4:	44c080e7          	jalr	1100(ra) # 800056fc <_Z11printStringPKc>
    for (; i < 6; i++) {
    800062b8:	0014849b          	addiw	s1,s1,1
    800062bc:	0ff4f493          	andi	s1,s1,255
    800062c0:	00500793          	li	a5,5
    800062c4:	fc97f0e3          	bgeu	a5,s1,80006284 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800062c8:	00003517          	auipc	a0,0x3
    800062cc:	f5850513          	addi	a0,a0,-168 # 80009220 <CONSOLE_STATUS+0x210>
    800062d0:	fffff097          	auipc	ra,0xfffff
    800062d4:	42c080e7          	jalr	1068(ra) # 800056fc <_Z11printStringPKc>
    finishedC = true;
    800062d8:	00100793          	li	a5,1
    800062dc:	00005717          	auipc	a4,0x5
    800062e0:	7ef70ba3          	sb	a5,2039(a4) # 8000bad3 <_ZL9finishedC>
    thread_dispatch();
    800062e4:	ffffb097          	auipc	ra,0xffffb
    800062e8:	0e8080e7          	jalr	232(ra) # 800013cc <_Z15thread_dispatchv>
}
    800062ec:	01813083          	ld	ra,24(sp)
    800062f0:	01013403          	ld	s0,16(sp)
    800062f4:	00813483          	ld	s1,8(sp)
    800062f8:	00013903          	ld	s2,0(sp)
    800062fc:	02010113          	addi	sp,sp,32
    80006300:	00008067          	ret

0000000080006304 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006304:	fe010113          	addi	sp,sp,-32
    80006308:	00113c23          	sd	ra,24(sp)
    8000630c:	00813823          	sd	s0,16(sp)
    80006310:	00913423          	sd	s1,8(sp)
    80006314:	01213023          	sd	s2,0(sp)
    80006318:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000631c:	00000913          	li	s2,0
    80006320:	0400006f          	j	80006360 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006324:	ffffb097          	auipc	ra,0xffffb
    80006328:	0a8080e7          	jalr	168(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000632c:	00148493          	addi	s1,s1,1
    80006330:	000027b7          	lui	a5,0x2
    80006334:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006338:	0097ee63          	bltu	a5,s1,80006354 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000633c:	00000713          	li	a4,0
    80006340:	000077b7          	lui	a5,0x7
    80006344:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006348:	fce7eee3          	bltu	a5,a4,80006324 <_ZL11workerBodyBPv+0x20>
    8000634c:	00170713          	addi	a4,a4,1
    80006350:	ff1ff06f          	j	80006340 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006354:	00a00793          	li	a5,10
    80006358:	04f90663          	beq	s2,a5,800063a4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000635c:	00190913          	addi	s2,s2,1
    80006360:	00f00793          	li	a5,15
    80006364:	0527e463          	bltu	a5,s2,800063ac <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006368:	00003517          	auipc	a0,0x3
    8000636c:	ec850513          	addi	a0,a0,-312 # 80009230 <CONSOLE_STATUS+0x220>
    80006370:	fffff097          	auipc	ra,0xfffff
    80006374:	38c080e7          	jalr	908(ra) # 800056fc <_Z11printStringPKc>
    80006378:	00000613          	li	a2,0
    8000637c:	00a00593          	li	a1,10
    80006380:	0009051b          	sext.w	a0,s2
    80006384:	fffff097          	auipc	ra,0xfffff
    80006388:	528080e7          	jalr	1320(ra) # 800058ac <_Z8printIntiii>
    8000638c:	00003517          	auipc	a0,0x3
    80006390:	ddc50513          	addi	a0,a0,-548 # 80009168 <CONSOLE_STATUS+0x158>
    80006394:	fffff097          	auipc	ra,0xfffff
    80006398:	368080e7          	jalr	872(ra) # 800056fc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000639c:	00000493          	li	s1,0
    800063a0:	f91ff06f          	j	80006330 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800063a4:	14102ff3          	csrr	t6,sepc
    800063a8:	fb5ff06f          	j	8000635c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800063ac:	00003517          	auipc	a0,0x3
    800063b0:	e8c50513          	addi	a0,a0,-372 # 80009238 <CONSOLE_STATUS+0x228>
    800063b4:	fffff097          	auipc	ra,0xfffff
    800063b8:	348080e7          	jalr	840(ra) # 800056fc <_Z11printStringPKc>
    finishedB = true;
    800063bc:	00100793          	li	a5,1
    800063c0:	00005717          	auipc	a4,0x5
    800063c4:	70f70a23          	sb	a5,1812(a4) # 8000bad4 <_ZL9finishedB>
    thread_dispatch();
    800063c8:	ffffb097          	auipc	ra,0xffffb
    800063cc:	004080e7          	jalr	4(ra) # 800013cc <_Z15thread_dispatchv>
}
    800063d0:	01813083          	ld	ra,24(sp)
    800063d4:	01013403          	ld	s0,16(sp)
    800063d8:	00813483          	ld	s1,8(sp)
    800063dc:	00013903          	ld	s2,0(sp)
    800063e0:	02010113          	addi	sp,sp,32
    800063e4:	00008067          	ret

00000000800063e8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800063e8:	fe010113          	addi	sp,sp,-32
    800063ec:	00113c23          	sd	ra,24(sp)
    800063f0:	00813823          	sd	s0,16(sp)
    800063f4:	00913423          	sd	s1,8(sp)
    800063f8:	01213023          	sd	s2,0(sp)
    800063fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006400:	00000913          	li	s2,0
    80006404:	0380006f          	j	8000643c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006408:	ffffb097          	auipc	ra,0xffffb
    8000640c:	fc4080e7          	jalr	-60(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006410:	00148493          	addi	s1,s1,1
    80006414:	000027b7          	lui	a5,0x2
    80006418:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000641c:	0097ee63          	bltu	a5,s1,80006438 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006420:	00000713          	li	a4,0
    80006424:	000077b7          	lui	a5,0x7
    80006428:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000642c:	fce7eee3          	bltu	a5,a4,80006408 <_ZL11workerBodyAPv+0x20>
    80006430:	00170713          	addi	a4,a4,1
    80006434:	ff1ff06f          	j	80006424 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006438:	00190913          	addi	s2,s2,1
    8000643c:	00900793          	li	a5,9
    80006440:	0527e063          	bltu	a5,s2,80006480 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006444:	00003517          	auipc	a0,0x3
    80006448:	dd450513          	addi	a0,a0,-556 # 80009218 <CONSOLE_STATUS+0x208>
    8000644c:	fffff097          	auipc	ra,0xfffff
    80006450:	2b0080e7          	jalr	688(ra) # 800056fc <_Z11printStringPKc>
    80006454:	00000613          	li	a2,0
    80006458:	00a00593          	li	a1,10
    8000645c:	0009051b          	sext.w	a0,s2
    80006460:	fffff097          	auipc	ra,0xfffff
    80006464:	44c080e7          	jalr	1100(ra) # 800058ac <_Z8printIntiii>
    80006468:	00003517          	auipc	a0,0x3
    8000646c:	d0050513          	addi	a0,a0,-768 # 80009168 <CONSOLE_STATUS+0x158>
    80006470:	fffff097          	auipc	ra,0xfffff
    80006474:	28c080e7          	jalr	652(ra) # 800056fc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006478:	00000493          	li	s1,0
    8000647c:	f99ff06f          	j	80006414 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006480:	00003517          	auipc	a0,0x3
    80006484:	da050513          	addi	a0,a0,-608 # 80009220 <CONSOLE_STATUS+0x210>
    80006488:	fffff097          	auipc	ra,0xfffff
    8000648c:	274080e7          	jalr	628(ra) # 800056fc <_Z11printStringPKc>
    finishedA = true;
    80006490:	00100793          	li	a5,1
    80006494:	00005717          	auipc	a4,0x5
    80006498:	64f700a3          	sb	a5,1601(a4) # 8000bad5 <_ZL9finishedA>
}
    8000649c:	01813083          	ld	ra,24(sp)
    800064a0:	01013403          	ld	s0,16(sp)
    800064a4:	00813483          	ld	s1,8(sp)
    800064a8:	00013903          	ld	s2,0(sp)
    800064ac:	02010113          	addi	sp,sp,32
    800064b0:	00008067          	ret

00000000800064b4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800064b4:	fd010113          	addi	sp,sp,-48
    800064b8:	02113423          	sd	ra,40(sp)
    800064bc:	02813023          	sd	s0,32(sp)
    800064c0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800064c4:	00000613          	li	a2,0
    800064c8:	00000597          	auipc	a1,0x0
    800064cc:	f2058593          	addi	a1,a1,-224 # 800063e8 <_ZL11workerBodyAPv>
    800064d0:	fd040513          	addi	a0,s0,-48
    800064d4:	ffffb097          	auipc	ra,0xffffb
    800064d8:	e24080e7          	jalr	-476(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800064dc:	00003517          	auipc	a0,0x3
    800064e0:	dd450513          	addi	a0,a0,-556 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800064e4:	fffff097          	auipc	ra,0xfffff
    800064e8:	218080e7          	jalr	536(ra) # 800056fc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800064ec:	00000613          	li	a2,0
    800064f0:	00000597          	auipc	a1,0x0
    800064f4:	e1458593          	addi	a1,a1,-492 # 80006304 <_ZL11workerBodyBPv>
    800064f8:	fd840513          	addi	a0,s0,-40
    800064fc:	ffffb097          	auipc	ra,0xffffb
    80006500:	dfc080e7          	jalr	-516(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006504:	00003517          	auipc	a0,0x3
    80006508:	dc450513          	addi	a0,a0,-572 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000650c:	fffff097          	auipc	ra,0xfffff
    80006510:	1f0080e7          	jalr	496(ra) # 800056fc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006514:	00000613          	li	a2,0
    80006518:	00000597          	auipc	a1,0x0
    8000651c:	c6c58593          	addi	a1,a1,-916 # 80006184 <_ZL11workerBodyCPv>
    80006520:	fe040513          	addi	a0,s0,-32
    80006524:	ffffb097          	auipc	ra,0xffffb
    80006528:	dd4080e7          	jalr	-556(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000652c:	00003517          	auipc	a0,0x3
    80006530:	db450513          	addi	a0,a0,-588 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006534:	fffff097          	auipc	ra,0xfffff
    80006538:	1c8080e7          	jalr	456(ra) # 800056fc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000653c:	00000613          	li	a2,0
    80006540:	00000597          	auipc	a1,0x0
    80006544:	afc58593          	addi	a1,a1,-1284 # 8000603c <_ZL11workerBodyDPv>
    80006548:	fe840513          	addi	a0,s0,-24
    8000654c:	ffffb097          	auipc	ra,0xffffb
    80006550:	dac080e7          	jalr	-596(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006554:	00003517          	auipc	a0,0x3
    80006558:	da450513          	addi	a0,a0,-604 # 800092f8 <CONSOLE_STATUS+0x2e8>
    8000655c:	fffff097          	auipc	ra,0xfffff
    80006560:	1a0080e7          	jalr	416(ra) # 800056fc <_Z11printStringPKc>
    80006564:	00c0006f          	j	80006570 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006568:	ffffb097          	auipc	ra,0xffffb
    8000656c:	e64080e7          	jalr	-412(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006570:	00005797          	auipc	a5,0x5
    80006574:	5657c783          	lbu	a5,1381(a5) # 8000bad5 <_ZL9finishedA>
    80006578:	fe0788e3          	beqz	a5,80006568 <_Z16System_Mode_testv+0xb4>
    8000657c:	00005797          	auipc	a5,0x5
    80006580:	5587c783          	lbu	a5,1368(a5) # 8000bad4 <_ZL9finishedB>
    80006584:	fe0782e3          	beqz	a5,80006568 <_Z16System_Mode_testv+0xb4>
    80006588:	00005797          	auipc	a5,0x5
    8000658c:	54b7c783          	lbu	a5,1355(a5) # 8000bad3 <_ZL9finishedC>
    80006590:	fc078ce3          	beqz	a5,80006568 <_Z16System_Mode_testv+0xb4>
    80006594:	00005797          	auipc	a5,0x5
    80006598:	53e7c783          	lbu	a5,1342(a5) # 8000bad2 <_ZL9finishedD>
    8000659c:	fc0786e3          	beqz	a5,80006568 <_Z16System_Mode_testv+0xb4>
    }

}
    800065a0:	02813083          	ld	ra,40(sp)
    800065a4:	02013403          	ld	s0,32(sp)
    800065a8:	03010113          	addi	sp,sp,48
    800065ac:	00008067          	ret

00000000800065b0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800065b0:	fe010113          	addi	sp,sp,-32
    800065b4:	00113c23          	sd	ra,24(sp)
    800065b8:	00813823          	sd	s0,16(sp)
    800065bc:	00913423          	sd	s1,8(sp)
    800065c0:	01213023          	sd	s2,0(sp)
    800065c4:	02010413          	addi	s0,sp,32
    800065c8:	00050493          	mv	s1,a0
    800065cc:	00058913          	mv	s2,a1
    800065d0:	0015879b          	addiw	a5,a1,1
    800065d4:	0007851b          	sext.w	a0,a5
    800065d8:	00f4a023          	sw	a5,0(s1)
    800065dc:	0004a823          	sw	zero,16(s1)
    800065e0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800065e4:	00251513          	slli	a0,a0,0x2
    800065e8:	ffffb097          	auipc	ra,0xffffb
    800065ec:	c70080e7          	jalr	-912(ra) # 80001258 <_Z9mem_allocm>
    800065f0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800065f4:	00000593          	li	a1,0
    800065f8:	02048513          	addi	a0,s1,32
    800065fc:	ffffb097          	auipc	ra,0xffffb
    80006600:	e0c080e7          	jalr	-500(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006604:	00090593          	mv	a1,s2
    80006608:	01848513          	addi	a0,s1,24
    8000660c:	ffffb097          	auipc	ra,0xffffb
    80006610:	dfc080e7          	jalr	-516(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006614:	00100593          	li	a1,1
    80006618:	02848513          	addi	a0,s1,40
    8000661c:	ffffb097          	auipc	ra,0xffffb
    80006620:	dec080e7          	jalr	-532(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006624:	00100593          	li	a1,1
    80006628:	03048513          	addi	a0,s1,48
    8000662c:	ffffb097          	auipc	ra,0xffffb
    80006630:	ddc080e7          	jalr	-548(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80006634:	01813083          	ld	ra,24(sp)
    80006638:	01013403          	ld	s0,16(sp)
    8000663c:	00813483          	ld	s1,8(sp)
    80006640:	00013903          	ld	s2,0(sp)
    80006644:	02010113          	addi	sp,sp,32
    80006648:	00008067          	ret

000000008000664c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000664c:	fe010113          	addi	sp,sp,-32
    80006650:	00113c23          	sd	ra,24(sp)
    80006654:	00813823          	sd	s0,16(sp)
    80006658:	00913423          	sd	s1,8(sp)
    8000665c:	01213023          	sd	s2,0(sp)
    80006660:	02010413          	addi	s0,sp,32
    80006664:	00050493          	mv	s1,a0
    80006668:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000666c:	01853503          	ld	a0,24(a0)
    80006670:	ffffb097          	auipc	ra,0xffffb
    80006674:	e34080e7          	jalr	-460(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80006678:	0304b503          	ld	a0,48(s1)
    8000667c:	ffffb097          	auipc	ra,0xffffb
    80006680:	e28080e7          	jalr	-472(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80006684:	0084b783          	ld	a5,8(s1)
    80006688:	0144a703          	lw	a4,20(s1)
    8000668c:	00271713          	slli	a4,a4,0x2
    80006690:	00e787b3          	add	a5,a5,a4
    80006694:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006698:	0144a783          	lw	a5,20(s1)
    8000669c:	0017879b          	addiw	a5,a5,1
    800066a0:	0004a703          	lw	a4,0(s1)
    800066a4:	02e7e7bb          	remw	a5,a5,a4
    800066a8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800066ac:	0304b503          	ld	a0,48(s1)
    800066b0:	ffffb097          	auipc	ra,0xffffb
    800066b4:	e40080e7          	jalr	-448(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    800066b8:	0204b503          	ld	a0,32(s1)
    800066bc:	ffffb097          	auipc	ra,0xffffb
    800066c0:	e34080e7          	jalr	-460(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    800066c4:	01813083          	ld	ra,24(sp)
    800066c8:	01013403          	ld	s0,16(sp)
    800066cc:	00813483          	ld	s1,8(sp)
    800066d0:	00013903          	ld	s2,0(sp)
    800066d4:	02010113          	addi	sp,sp,32
    800066d8:	00008067          	ret

00000000800066dc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800066dc:	fe010113          	addi	sp,sp,-32
    800066e0:	00113c23          	sd	ra,24(sp)
    800066e4:	00813823          	sd	s0,16(sp)
    800066e8:	00913423          	sd	s1,8(sp)
    800066ec:	01213023          	sd	s2,0(sp)
    800066f0:	02010413          	addi	s0,sp,32
    800066f4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800066f8:	02053503          	ld	a0,32(a0)
    800066fc:	ffffb097          	auipc	ra,0xffffb
    80006700:	da8080e7          	jalr	-600(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006704:	0284b503          	ld	a0,40(s1)
    80006708:	ffffb097          	auipc	ra,0xffffb
    8000670c:	d9c080e7          	jalr	-612(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006710:	0084b703          	ld	a4,8(s1)
    80006714:	0104a783          	lw	a5,16(s1)
    80006718:	00279693          	slli	a3,a5,0x2
    8000671c:	00d70733          	add	a4,a4,a3
    80006720:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006724:	0017879b          	addiw	a5,a5,1
    80006728:	0004a703          	lw	a4,0(s1)
    8000672c:	02e7e7bb          	remw	a5,a5,a4
    80006730:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006734:	0284b503          	ld	a0,40(s1)
    80006738:	ffffb097          	auipc	ra,0xffffb
    8000673c:	db8080e7          	jalr	-584(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80006740:	0184b503          	ld	a0,24(s1)
    80006744:	ffffb097          	auipc	ra,0xffffb
    80006748:	dac080e7          	jalr	-596(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    8000674c:	00090513          	mv	a0,s2
    80006750:	01813083          	ld	ra,24(sp)
    80006754:	01013403          	ld	s0,16(sp)
    80006758:	00813483          	ld	s1,8(sp)
    8000675c:	00013903          	ld	s2,0(sp)
    80006760:	02010113          	addi	sp,sp,32
    80006764:	00008067          	ret

0000000080006768 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006768:	fe010113          	addi	sp,sp,-32
    8000676c:	00113c23          	sd	ra,24(sp)
    80006770:	00813823          	sd	s0,16(sp)
    80006774:	00913423          	sd	s1,8(sp)
    80006778:	01213023          	sd	s2,0(sp)
    8000677c:	02010413          	addi	s0,sp,32
    80006780:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006784:	02853503          	ld	a0,40(a0)
    80006788:	ffffb097          	auipc	ra,0xffffb
    8000678c:	d1c080e7          	jalr	-740(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80006790:	0304b503          	ld	a0,48(s1)
    80006794:	ffffb097          	auipc	ra,0xffffb
    80006798:	d10080e7          	jalr	-752(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    8000679c:	0144a783          	lw	a5,20(s1)
    800067a0:	0104a903          	lw	s2,16(s1)
    800067a4:	0327ce63          	blt	a5,s2,800067e0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800067a8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800067ac:	0304b503          	ld	a0,48(s1)
    800067b0:	ffffb097          	auipc	ra,0xffffb
    800067b4:	d40080e7          	jalr	-704(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800067b8:	0284b503          	ld	a0,40(s1)
    800067bc:	ffffb097          	auipc	ra,0xffffb
    800067c0:	d34080e7          	jalr	-716(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    800067c4:	00090513          	mv	a0,s2
    800067c8:	01813083          	ld	ra,24(sp)
    800067cc:	01013403          	ld	s0,16(sp)
    800067d0:	00813483          	ld	s1,8(sp)
    800067d4:	00013903          	ld	s2,0(sp)
    800067d8:	02010113          	addi	sp,sp,32
    800067dc:	00008067          	ret
        ret = cap - head + tail;
    800067e0:	0004a703          	lw	a4,0(s1)
    800067e4:	4127093b          	subw	s2,a4,s2
    800067e8:	00f9093b          	addw	s2,s2,a5
    800067ec:	fc1ff06f          	j	800067ac <_ZN6Buffer6getCntEv+0x44>

00000000800067f0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800067f0:	fe010113          	addi	sp,sp,-32
    800067f4:	00113c23          	sd	ra,24(sp)
    800067f8:	00813823          	sd	s0,16(sp)
    800067fc:	00913423          	sd	s1,8(sp)
    80006800:	02010413          	addi	s0,sp,32
    80006804:	00050493          	mv	s1,a0
    putc('\n');
    80006808:	00a00513          	li	a0,10
    8000680c:	ffffb097          	auipc	ra,0xffffb
    80006810:	e60080e7          	jalr	-416(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006814:	00003517          	auipc	a0,0x3
    80006818:	afc50513          	addi	a0,a0,-1284 # 80009310 <CONSOLE_STATUS+0x300>
    8000681c:	fffff097          	auipc	ra,0xfffff
    80006820:	ee0080e7          	jalr	-288(ra) # 800056fc <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006824:	00048513          	mv	a0,s1
    80006828:	00000097          	auipc	ra,0x0
    8000682c:	f40080e7          	jalr	-192(ra) # 80006768 <_ZN6Buffer6getCntEv>
    80006830:	02a05c63          	blez	a0,80006868 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006834:	0084b783          	ld	a5,8(s1)
    80006838:	0104a703          	lw	a4,16(s1)
    8000683c:	00271713          	slli	a4,a4,0x2
    80006840:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006844:	0007c503          	lbu	a0,0(a5)
    80006848:	ffffb097          	auipc	ra,0xffffb
    8000684c:	e24080e7          	jalr	-476(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80006850:	0104a783          	lw	a5,16(s1)
    80006854:	0017879b          	addiw	a5,a5,1
    80006858:	0004a703          	lw	a4,0(s1)
    8000685c:	02e7e7bb          	remw	a5,a5,a4
    80006860:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006864:	fc1ff06f          	j	80006824 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006868:	02100513          	li	a0,33
    8000686c:	ffffb097          	auipc	ra,0xffffb
    80006870:	e00080e7          	jalr	-512(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80006874:	00a00513          	li	a0,10
    80006878:	ffffb097          	auipc	ra,0xffffb
    8000687c:	df4080e7          	jalr	-524(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80006880:	0084b503          	ld	a0,8(s1)
    80006884:	ffffb097          	auipc	ra,0xffffb
    80006888:	a28080e7          	jalr	-1496(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000688c:	0204b503          	ld	a0,32(s1)
    80006890:	ffffb097          	auipc	ra,0xffffb
    80006894:	bc8080e7          	jalr	-1080(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80006898:	0184b503          	ld	a0,24(s1)
    8000689c:	ffffb097          	auipc	ra,0xffffb
    800068a0:	bbc080e7          	jalr	-1092(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800068a4:	0304b503          	ld	a0,48(s1)
    800068a8:	ffffb097          	auipc	ra,0xffffb
    800068ac:	bb0080e7          	jalr	-1104(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    800068b0:	0284b503          	ld	a0,40(s1)
    800068b4:	ffffb097          	auipc	ra,0xffffb
    800068b8:	ba4080e7          	jalr	-1116(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    800068bc:	01813083          	ld	ra,24(sp)
    800068c0:	01013403          	ld	s0,16(sp)
    800068c4:	00813483          	ld	s1,8(sp)
    800068c8:	02010113          	addi	sp,sp,32
    800068cc:	00008067          	ret

00000000800068d0 <start>:
    800068d0:	ff010113          	addi	sp,sp,-16
    800068d4:	00813423          	sd	s0,8(sp)
    800068d8:	01010413          	addi	s0,sp,16
    800068dc:	300027f3          	csrr	a5,mstatus
    800068e0:	ffffe737          	lui	a4,0xffffe
    800068e4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1abf>
    800068e8:	00e7f7b3          	and	a5,a5,a4
    800068ec:	00001737          	lui	a4,0x1
    800068f0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800068f4:	00e7e7b3          	or	a5,a5,a4
    800068f8:	30079073          	csrw	mstatus,a5
    800068fc:	00000797          	auipc	a5,0x0
    80006900:	16078793          	addi	a5,a5,352 # 80006a5c <system_main>
    80006904:	34179073          	csrw	mepc,a5
    80006908:	00000793          	li	a5,0
    8000690c:	18079073          	csrw	satp,a5
    80006910:	000107b7          	lui	a5,0x10
    80006914:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006918:	30279073          	csrw	medeleg,a5
    8000691c:	30379073          	csrw	mideleg,a5
    80006920:	104027f3          	csrr	a5,sie
    80006924:	2227e793          	ori	a5,a5,546
    80006928:	10479073          	csrw	sie,a5
    8000692c:	fff00793          	li	a5,-1
    80006930:	00a7d793          	srli	a5,a5,0xa
    80006934:	3b079073          	csrw	pmpaddr0,a5
    80006938:	00f00793          	li	a5,15
    8000693c:	3a079073          	csrw	pmpcfg0,a5
    80006940:	f14027f3          	csrr	a5,mhartid
    80006944:	0200c737          	lui	a4,0x200c
    80006948:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000694c:	0007869b          	sext.w	a3,a5
    80006950:	00269713          	slli	a4,a3,0x2
    80006954:	000f4637          	lui	a2,0xf4
    80006958:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000695c:	00d70733          	add	a4,a4,a3
    80006960:	0037979b          	slliw	a5,a5,0x3
    80006964:	020046b7          	lui	a3,0x2004
    80006968:	00d787b3          	add	a5,a5,a3
    8000696c:	00c585b3          	add	a1,a1,a2
    80006970:	00371693          	slli	a3,a4,0x3
    80006974:	00005717          	auipc	a4,0x5
    80006978:	16c70713          	addi	a4,a4,364 # 8000bae0 <timer_scratch>
    8000697c:	00b7b023          	sd	a1,0(a5)
    80006980:	00d70733          	add	a4,a4,a3
    80006984:	00f73c23          	sd	a5,24(a4)
    80006988:	02c73023          	sd	a2,32(a4)
    8000698c:	34071073          	csrw	mscratch,a4
    80006990:	00000797          	auipc	a5,0x0
    80006994:	6e078793          	addi	a5,a5,1760 # 80007070 <timervec>
    80006998:	30579073          	csrw	mtvec,a5
    8000699c:	300027f3          	csrr	a5,mstatus
    800069a0:	0087e793          	ori	a5,a5,8
    800069a4:	30079073          	csrw	mstatus,a5
    800069a8:	304027f3          	csrr	a5,mie
    800069ac:	0807e793          	ori	a5,a5,128
    800069b0:	30479073          	csrw	mie,a5
    800069b4:	f14027f3          	csrr	a5,mhartid
    800069b8:	0007879b          	sext.w	a5,a5
    800069bc:	00078213          	mv	tp,a5
    800069c0:	30200073          	mret
    800069c4:	00813403          	ld	s0,8(sp)
    800069c8:	01010113          	addi	sp,sp,16
    800069cc:	00008067          	ret

00000000800069d0 <timerinit>:
    800069d0:	ff010113          	addi	sp,sp,-16
    800069d4:	00813423          	sd	s0,8(sp)
    800069d8:	01010413          	addi	s0,sp,16
    800069dc:	f14027f3          	csrr	a5,mhartid
    800069e0:	0200c737          	lui	a4,0x200c
    800069e4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800069e8:	0007869b          	sext.w	a3,a5
    800069ec:	00269713          	slli	a4,a3,0x2
    800069f0:	000f4637          	lui	a2,0xf4
    800069f4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800069f8:	00d70733          	add	a4,a4,a3
    800069fc:	0037979b          	slliw	a5,a5,0x3
    80006a00:	020046b7          	lui	a3,0x2004
    80006a04:	00d787b3          	add	a5,a5,a3
    80006a08:	00c585b3          	add	a1,a1,a2
    80006a0c:	00371693          	slli	a3,a4,0x3
    80006a10:	00005717          	auipc	a4,0x5
    80006a14:	0d070713          	addi	a4,a4,208 # 8000bae0 <timer_scratch>
    80006a18:	00b7b023          	sd	a1,0(a5)
    80006a1c:	00d70733          	add	a4,a4,a3
    80006a20:	00f73c23          	sd	a5,24(a4)
    80006a24:	02c73023          	sd	a2,32(a4)
    80006a28:	34071073          	csrw	mscratch,a4
    80006a2c:	00000797          	auipc	a5,0x0
    80006a30:	64478793          	addi	a5,a5,1604 # 80007070 <timervec>
    80006a34:	30579073          	csrw	mtvec,a5
    80006a38:	300027f3          	csrr	a5,mstatus
    80006a3c:	0087e793          	ori	a5,a5,8
    80006a40:	30079073          	csrw	mstatus,a5
    80006a44:	304027f3          	csrr	a5,mie
    80006a48:	0807e793          	ori	a5,a5,128
    80006a4c:	30479073          	csrw	mie,a5
    80006a50:	00813403          	ld	s0,8(sp)
    80006a54:	01010113          	addi	sp,sp,16
    80006a58:	00008067          	ret

0000000080006a5c <system_main>:
    80006a5c:	fe010113          	addi	sp,sp,-32
    80006a60:	00813823          	sd	s0,16(sp)
    80006a64:	00913423          	sd	s1,8(sp)
    80006a68:	00113c23          	sd	ra,24(sp)
    80006a6c:	02010413          	addi	s0,sp,32
    80006a70:	00000097          	auipc	ra,0x0
    80006a74:	0c4080e7          	jalr	196(ra) # 80006b34 <cpuid>
    80006a78:	00005497          	auipc	s1,0x5
    80006a7c:	f9848493          	addi	s1,s1,-104 # 8000ba10 <started>
    80006a80:	02050263          	beqz	a0,80006aa4 <system_main+0x48>
    80006a84:	0004a783          	lw	a5,0(s1)
    80006a88:	0007879b          	sext.w	a5,a5
    80006a8c:	fe078ce3          	beqz	a5,80006a84 <system_main+0x28>
    80006a90:	0ff0000f          	fence
    80006a94:	00003517          	auipc	a0,0x3
    80006a98:	9ac50513          	addi	a0,a0,-1620 # 80009440 <CONSOLE_STATUS+0x430>
    80006a9c:	00001097          	auipc	ra,0x1
    80006aa0:	a70080e7          	jalr	-1424(ra) # 8000750c <panic>
    80006aa4:	00001097          	auipc	ra,0x1
    80006aa8:	9c4080e7          	jalr	-1596(ra) # 80007468 <consoleinit>
    80006aac:	00001097          	auipc	ra,0x1
    80006ab0:	150080e7          	jalr	336(ra) # 80007bfc <printfinit>
    80006ab4:	00002517          	auipc	a0,0x2
    80006ab8:	6b450513          	addi	a0,a0,1716 # 80009168 <CONSOLE_STATUS+0x158>
    80006abc:	00001097          	auipc	ra,0x1
    80006ac0:	aac080e7          	jalr	-1364(ra) # 80007568 <__printf>
    80006ac4:	00003517          	auipc	a0,0x3
    80006ac8:	94c50513          	addi	a0,a0,-1716 # 80009410 <CONSOLE_STATUS+0x400>
    80006acc:	00001097          	auipc	ra,0x1
    80006ad0:	a9c080e7          	jalr	-1380(ra) # 80007568 <__printf>
    80006ad4:	00002517          	auipc	a0,0x2
    80006ad8:	69450513          	addi	a0,a0,1684 # 80009168 <CONSOLE_STATUS+0x158>
    80006adc:	00001097          	auipc	ra,0x1
    80006ae0:	a8c080e7          	jalr	-1396(ra) # 80007568 <__printf>
    80006ae4:	00001097          	auipc	ra,0x1
    80006ae8:	4a4080e7          	jalr	1188(ra) # 80007f88 <kinit>
    80006aec:	00000097          	auipc	ra,0x0
    80006af0:	148080e7          	jalr	328(ra) # 80006c34 <trapinit>
    80006af4:	00000097          	auipc	ra,0x0
    80006af8:	16c080e7          	jalr	364(ra) # 80006c60 <trapinithart>
    80006afc:	00000097          	auipc	ra,0x0
    80006b00:	5b4080e7          	jalr	1460(ra) # 800070b0 <plicinit>
    80006b04:	00000097          	auipc	ra,0x0
    80006b08:	5d4080e7          	jalr	1492(ra) # 800070d8 <plicinithart>
    80006b0c:	00000097          	auipc	ra,0x0
    80006b10:	078080e7          	jalr	120(ra) # 80006b84 <userinit>
    80006b14:	0ff0000f          	fence
    80006b18:	00100793          	li	a5,1
    80006b1c:	00003517          	auipc	a0,0x3
    80006b20:	90c50513          	addi	a0,a0,-1780 # 80009428 <CONSOLE_STATUS+0x418>
    80006b24:	00f4a023          	sw	a5,0(s1)
    80006b28:	00001097          	auipc	ra,0x1
    80006b2c:	a40080e7          	jalr	-1472(ra) # 80007568 <__printf>
    80006b30:	0000006f          	j	80006b30 <system_main+0xd4>

0000000080006b34 <cpuid>:
    80006b34:	ff010113          	addi	sp,sp,-16
    80006b38:	00813423          	sd	s0,8(sp)
    80006b3c:	01010413          	addi	s0,sp,16
    80006b40:	00020513          	mv	a0,tp
    80006b44:	00813403          	ld	s0,8(sp)
    80006b48:	0005051b          	sext.w	a0,a0
    80006b4c:	01010113          	addi	sp,sp,16
    80006b50:	00008067          	ret

0000000080006b54 <mycpu>:
    80006b54:	ff010113          	addi	sp,sp,-16
    80006b58:	00813423          	sd	s0,8(sp)
    80006b5c:	01010413          	addi	s0,sp,16
    80006b60:	00020793          	mv	a5,tp
    80006b64:	00813403          	ld	s0,8(sp)
    80006b68:	0007879b          	sext.w	a5,a5
    80006b6c:	00779793          	slli	a5,a5,0x7
    80006b70:	00006517          	auipc	a0,0x6
    80006b74:	fa050513          	addi	a0,a0,-96 # 8000cb10 <cpus>
    80006b78:	00f50533          	add	a0,a0,a5
    80006b7c:	01010113          	addi	sp,sp,16
    80006b80:	00008067          	ret

0000000080006b84 <userinit>:
    80006b84:	ff010113          	addi	sp,sp,-16
    80006b88:	00813423          	sd	s0,8(sp)
    80006b8c:	01010413          	addi	s0,sp,16
    80006b90:	00813403          	ld	s0,8(sp)
    80006b94:	01010113          	addi	sp,sp,16
    80006b98:	ffffb317          	auipc	t1,0xffffb
    80006b9c:	23030067          	jr	560(t1) # 80001dc8 <main>

0000000080006ba0 <either_copyout>:
    80006ba0:	ff010113          	addi	sp,sp,-16
    80006ba4:	00813023          	sd	s0,0(sp)
    80006ba8:	00113423          	sd	ra,8(sp)
    80006bac:	01010413          	addi	s0,sp,16
    80006bb0:	02051663          	bnez	a0,80006bdc <either_copyout+0x3c>
    80006bb4:	00058513          	mv	a0,a1
    80006bb8:	00060593          	mv	a1,a2
    80006bbc:	0006861b          	sext.w	a2,a3
    80006bc0:	00002097          	auipc	ra,0x2
    80006bc4:	c54080e7          	jalr	-940(ra) # 80008814 <__memmove>
    80006bc8:	00813083          	ld	ra,8(sp)
    80006bcc:	00013403          	ld	s0,0(sp)
    80006bd0:	00000513          	li	a0,0
    80006bd4:	01010113          	addi	sp,sp,16
    80006bd8:	00008067          	ret
    80006bdc:	00003517          	auipc	a0,0x3
    80006be0:	88c50513          	addi	a0,a0,-1908 # 80009468 <CONSOLE_STATUS+0x458>
    80006be4:	00001097          	auipc	ra,0x1
    80006be8:	928080e7          	jalr	-1752(ra) # 8000750c <panic>

0000000080006bec <either_copyin>:
    80006bec:	ff010113          	addi	sp,sp,-16
    80006bf0:	00813023          	sd	s0,0(sp)
    80006bf4:	00113423          	sd	ra,8(sp)
    80006bf8:	01010413          	addi	s0,sp,16
    80006bfc:	02059463          	bnez	a1,80006c24 <either_copyin+0x38>
    80006c00:	00060593          	mv	a1,a2
    80006c04:	0006861b          	sext.w	a2,a3
    80006c08:	00002097          	auipc	ra,0x2
    80006c0c:	c0c080e7          	jalr	-1012(ra) # 80008814 <__memmove>
    80006c10:	00813083          	ld	ra,8(sp)
    80006c14:	00013403          	ld	s0,0(sp)
    80006c18:	00000513          	li	a0,0
    80006c1c:	01010113          	addi	sp,sp,16
    80006c20:	00008067          	ret
    80006c24:	00003517          	auipc	a0,0x3
    80006c28:	86c50513          	addi	a0,a0,-1940 # 80009490 <CONSOLE_STATUS+0x480>
    80006c2c:	00001097          	auipc	ra,0x1
    80006c30:	8e0080e7          	jalr	-1824(ra) # 8000750c <panic>

0000000080006c34 <trapinit>:
    80006c34:	ff010113          	addi	sp,sp,-16
    80006c38:	00813423          	sd	s0,8(sp)
    80006c3c:	01010413          	addi	s0,sp,16
    80006c40:	00813403          	ld	s0,8(sp)
    80006c44:	00003597          	auipc	a1,0x3
    80006c48:	87458593          	addi	a1,a1,-1932 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80006c4c:	00006517          	auipc	a0,0x6
    80006c50:	f4450513          	addi	a0,a0,-188 # 8000cb90 <tickslock>
    80006c54:	01010113          	addi	sp,sp,16
    80006c58:	00001317          	auipc	t1,0x1
    80006c5c:	5c030067          	jr	1472(t1) # 80008218 <initlock>

0000000080006c60 <trapinithart>:
    80006c60:	ff010113          	addi	sp,sp,-16
    80006c64:	00813423          	sd	s0,8(sp)
    80006c68:	01010413          	addi	s0,sp,16
    80006c6c:	00000797          	auipc	a5,0x0
    80006c70:	2f478793          	addi	a5,a5,756 # 80006f60 <kernelvec>
    80006c74:	10579073          	csrw	stvec,a5
    80006c78:	00813403          	ld	s0,8(sp)
    80006c7c:	01010113          	addi	sp,sp,16
    80006c80:	00008067          	ret

0000000080006c84 <usertrap>:
    80006c84:	ff010113          	addi	sp,sp,-16
    80006c88:	00813423          	sd	s0,8(sp)
    80006c8c:	01010413          	addi	s0,sp,16
    80006c90:	00813403          	ld	s0,8(sp)
    80006c94:	01010113          	addi	sp,sp,16
    80006c98:	00008067          	ret

0000000080006c9c <usertrapret>:
    80006c9c:	ff010113          	addi	sp,sp,-16
    80006ca0:	00813423          	sd	s0,8(sp)
    80006ca4:	01010413          	addi	s0,sp,16
    80006ca8:	00813403          	ld	s0,8(sp)
    80006cac:	01010113          	addi	sp,sp,16
    80006cb0:	00008067          	ret

0000000080006cb4 <kerneltrap>:
    80006cb4:	fe010113          	addi	sp,sp,-32
    80006cb8:	00813823          	sd	s0,16(sp)
    80006cbc:	00113c23          	sd	ra,24(sp)
    80006cc0:	00913423          	sd	s1,8(sp)
    80006cc4:	02010413          	addi	s0,sp,32
    80006cc8:	142025f3          	csrr	a1,scause
    80006ccc:	100027f3          	csrr	a5,sstatus
    80006cd0:	0027f793          	andi	a5,a5,2
    80006cd4:	10079c63          	bnez	a5,80006dec <kerneltrap+0x138>
    80006cd8:	142027f3          	csrr	a5,scause
    80006cdc:	0207ce63          	bltz	a5,80006d18 <kerneltrap+0x64>
    80006ce0:	00003517          	auipc	a0,0x3
    80006ce4:	82050513          	addi	a0,a0,-2016 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006ce8:	00001097          	auipc	ra,0x1
    80006cec:	880080e7          	jalr	-1920(ra) # 80007568 <__printf>
    80006cf0:	141025f3          	csrr	a1,sepc
    80006cf4:	14302673          	csrr	a2,stval
    80006cf8:	00003517          	auipc	a0,0x3
    80006cfc:	81850513          	addi	a0,a0,-2024 # 80009510 <CONSOLE_STATUS+0x500>
    80006d00:	00001097          	auipc	ra,0x1
    80006d04:	868080e7          	jalr	-1944(ra) # 80007568 <__printf>
    80006d08:	00003517          	auipc	a0,0x3
    80006d0c:	82050513          	addi	a0,a0,-2016 # 80009528 <CONSOLE_STATUS+0x518>
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	7fc080e7          	jalr	2044(ra) # 8000750c <panic>
    80006d18:	0ff7f713          	andi	a4,a5,255
    80006d1c:	00900693          	li	a3,9
    80006d20:	04d70063          	beq	a4,a3,80006d60 <kerneltrap+0xac>
    80006d24:	fff00713          	li	a4,-1
    80006d28:	03f71713          	slli	a4,a4,0x3f
    80006d2c:	00170713          	addi	a4,a4,1
    80006d30:	fae798e3          	bne	a5,a4,80006ce0 <kerneltrap+0x2c>
    80006d34:	00000097          	auipc	ra,0x0
    80006d38:	e00080e7          	jalr	-512(ra) # 80006b34 <cpuid>
    80006d3c:	06050663          	beqz	a0,80006da8 <kerneltrap+0xf4>
    80006d40:	144027f3          	csrr	a5,sip
    80006d44:	ffd7f793          	andi	a5,a5,-3
    80006d48:	14479073          	csrw	sip,a5
    80006d4c:	01813083          	ld	ra,24(sp)
    80006d50:	01013403          	ld	s0,16(sp)
    80006d54:	00813483          	ld	s1,8(sp)
    80006d58:	02010113          	addi	sp,sp,32
    80006d5c:	00008067          	ret
    80006d60:	00000097          	auipc	ra,0x0
    80006d64:	3c4080e7          	jalr	964(ra) # 80007124 <plic_claim>
    80006d68:	00a00793          	li	a5,10
    80006d6c:	00050493          	mv	s1,a0
    80006d70:	06f50863          	beq	a0,a5,80006de0 <kerneltrap+0x12c>
    80006d74:	fc050ce3          	beqz	a0,80006d4c <kerneltrap+0x98>
    80006d78:	00050593          	mv	a1,a0
    80006d7c:	00002517          	auipc	a0,0x2
    80006d80:	76450513          	addi	a0,a0,1892 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006d84:	00000097          	auipc	ra,0x0
    80006d88:	7e4080e7          	jalr	2020(ra) # 80007568 <__printf>
    80006d8c:	01013403          	ld	s0,16(sp)
    80006d90:	01813083          	ld	ra,24(sp)
    80006d94:	00048513          	mv	a0,s1
    80006d98:	00813483          	ld	s1,8(sp)
    80006d9c:	02010113          	addi	sp,sp,32
    80006da0:	00000317          	auipc	t1,0x0
    80006da4:	3bc30067          	jr	956(t1) # 8000715c <plic_complete>
    80006da8:	00006517          	auipc	a0,0x6
    80006dac:	de850513          	addi	a0,a0,-536 # 8000cb90 <tickslock>
    80006db0:	00001097          	auipc	ra,0x1
    80006db4:	48c080e7          	jalr	1164(ra) # 8000823c <acquire>
    80006db8:	00005717          	auipc	a4,0x5
    80006dbc:	c5c70713          	addi	a4,a4,-932 # 8000ba14 <ticks>
    80006dc0:	00072783          	lw	a5,0(a4)
    80006dc4:	00006517          	auipc	a0,0x6
    80006dc8:	dcc50513          	addi	a0,a0,-564 # 8000cb90 <tickslock>
    80006dcc:	0017879b          	addiw	a5,a5,1
    80006dd0:	00f72023          	sw	a5,0(a4)
    80006dd4:	00001097          	auipc	ra,0x1
    80006dd8:	534080e7          	jalr	1332(ra) # 80008308 <release>
    80006ddc:	f65ff06f          	j	80006d40 <kerneltrap+0x8c>
    80006de0:	00001097          	auipc	ra,0x1
    80006de4:	090080e7          	jalr	144(ra) # 80007e70 <uartintr>
    80006de8:	fa5ff06f          	j	80006d8c <kerneltrap+0xd8>
    80006dec:	00002517          	auipc	a0,0x2
    80006df0:	6d450513          	addi	a0,a0,1748 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006df4:	00000097          	auipc	ra,0x0
    80006df8:	718080e7          	jalr	1816(ra) # 8000750c <panic>

0000000080006dfc <clockintr>:
    80006dfc:	fe010113          	addi	sp,sp,-32
    80006e00:	00813823          	sd	s0,16(sp)
    80006e04:	00913423          	sd	s1,8(sp)
    80006e08:	00113c23          	sd	ra,24(sp)
    80006e0c:	02010413          	addi	s0,sp,32
    80006e10:	00006497          	auipc	s1,0x6
    80006e14:	d8048493          	addi	s1,s1,-640 # 8000cb90 <tickslock>
    80006e18:	00048513          	mv	a0,s1
    80006e1c:	00001097          	auipc	ra,0x1
    80006e20:	420080e7          	jalr	1056(ra) # 8000823c <acquire>
    80006e24:	00005717          	auipc	a4,0x5
    80006e28:	bf070713          	addi	a4,a4,-1040 # 8000ba14 <ticks>
    80006e2c:	00072783          	lw	a5,0(a4)
    80006e30:	01013403          	ld	s0,16(sp)
    80006e34:	01813083          	ld	ra,24(sp)
    80006e38:	00048513          	mv	a0,s1
    80006e3c:	0017879b          	addiw	a5,a5,1
    80006e40:	00813483          	ld	s1,8(sp)
    80006e44:	00f72023          	sw	a5,0(a4)
    80006e48:	02010113          	addi	sp,sp,32
    80006e4c:	00001317          	auipc	t1,0x1
    80006e50:	4bc30067          	jr	1212(t1) # 80008308 <release>

0000000080006e54 <devintr>:
    80006e54:	142027f3          	csrr	a5,scause
    80006e58:	00000513          	li	a0,0
    80006e5c:	0007c463          	bltz	a5,80006e64 <devintr+0x10>
    80006e60:	00008067          	ret
    80006e64:	fe010113          	addi	sp,sp,-32
    80006e68:	00813823          	sd	s0,16(sp)
    80006e6c:	00113c23          	sd	ra,24(sp)
    80006e70:	00913423          	sd	s1,8(sp)
    80006e74:	02010413          	addi	s0,sp,32
    80006e78:	0ff7f713          	andi	a4,a5,255
    80006e7c:	00900693          	li	a3,9
    80006e80:	04d70c63          	beq	a4,a3,80006ed8 <devintr+0x84>
    80006e84:	fff00713          	li	a4,-1
    80006e88:	03f71713          	slli	a4,a4,0x3f
    80006e8c:	00170713          	addi	a4,a4,1
    80006e90:	00e78c63          	beq	a5,a4,80006ea8 <devintr+0x54>
    80006e94:	01813083          	ld	ra,24(sp)
    80006e98:	01013403          	ld	s0,16(sp)
    80006e9c:	00813483          	ld	s1,8(sp)
    80006ea0:	02010113          	addi	sp,sp,32
    80006ea4:	00008067          	ret
    80006ea8:	00000097          	auipc	ra,0x0
    80006eac:	c8c080e7          	jalr	-884(ra) # 80006b34 <cpuid>
    80006eb0:	06050663          	beqz	a0,80006f1c <devintr+0xc8>
    80006eb4:	144027f3          	csrr	a5,sip
    80006eb8:	ffd7f793          	andi	a5,a5,-3
    80006ebc:	14479073          	csrw	sip,a5
    80006ec0:	01813083          	ld	ra,24(sp)
    80006ec4:	01013403          	ld	s0,16(sp)
    80006ec8:	00813483          	ld	s1,8(sp)
    80006ecc:	00200513          	li	a0,2
    80006ed0:	02010113          	addi	sp,sp,32
    80006ed4:	00008067          	ret
    80006ed8:	00000097          	auipc	ra,0x0
    80006edc:	24c080e7          	jalr	588(ra) # 80007124 <plic_claim>
    80006ee0:	00a00793          	li	a5,10
    80006ee4:	00050493          	mv	s1,a0
    80006ee8:	06f50663          	beq	a0,a5,80006f54 <devintr+0x100>
    80006eec:	00100513          	li	a0,1
    80006ef0:	fa0482e3          	beqz	s1,80006e94 <devintr+0x40>
    80006ef4:	00048593          	mv	a1,s1
    80006ef8:	00002517          	auipc	a0,0x2
    80006efc:	5e850513          	addi	a0,a0,1512 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	668080e7          	jalr	1640(ra) # 80007568 <__printf>
    80006f08:	00048513          	mv	a0,s1
    80006f0c:	00000097          	auipc	ra,0x0
    80006f10:	250080e7          	jalr	592(ra) # 8000715c <plic_complete>
    80006f14:	00100513          	li	a0,1
    80006f18:	f7dff06f          	j	80006e94 <devintr+0x40>
    80006f1c:	00006517          	auipc	a0,0x6
    80006f20:	c7450513          	addi	a0,a0,-908 # 8000cb90 <tickslock>
    80006f24:	00001097          	auipc	ra,0x1
    80006f28:	318080e7          	jalr	792(ra) # 8000823c <acquire>
    80006f2c:	00005717          	auipc	a4,0x5
    80006f30:	ae870713          	addi	a4,a4,-1304 # 8000ba14 <ticks>
    80006f34:	00072783          	lw	a5,0(a4)
    80006f38:	00006517          	auipc	a0,0x6
    80006f3c:	c5850513          	addi	a0,a0,-936 # 8000cb90 <tickslock>
    80006f40:	0017879b          	addiw	a5,a5,1
    80006f44:	00f72023          	sw	a5,0(a4)
    80006f48:	00001097          	auipc	ra,0x1
    80006f4c:	3c0080e7          	jalr	960(ra) # 80008308 <release>
    80006f50:	f65ff06f          	j	80006eb4 <devintr+0x60>
    80006f54:	00001097          	auipc	ra,0x1
    80006f58:	f1c080e7          	jalr	-228(ra) # 80007e70 <uartintr>
    80006f5c:	fadff06f          	j	80006f08 <devintr+0xb4>

0000000080006f60 <kernelvec>:
    80006f60:	f0010113          	addi	sp,sp,-256
    80006f64:	00113023          	sd	ra,0(sp)
    80006f68:	00213423          	sd	sp,8(sp)
    80006f6c:	00313823          	sd	gp,16(sp)
    80006f70:	00413c23          	sd	tp,24(sp)
    80006f74:	02513023          	sd	t0,32(sp)
    80006f78:	02613423          	sd	t1,40(sp)
    80006f7c:	02713823          	sd	t2,48(sp)
    80006f80:	02813c23          	sd	s0,56(sp)
    80006f84:	04913023          	sd	s1,64(sp)
    80006f88:	04a13423          	sd	a0,72(sp)
    80006f8c:	04b13823          	sd	a1,80(sp)
    80006f90:	04c13c23          	sd	a2,88(sp)
    80006f94:	06d13023          	sd	a3,96(sp)
    80006f98:	06e13423          	sd	a4,104(sp)
    80006f9c:	06f13823          	sd	a5,112(sp)
    80006fa0:	07013c23          	sd	a6,120(sp)
    80006fa4:	09113023          	sd	a7,128(sp)
    80006fa8:	09213423          	sd	s2,136(sp)
    80006fac:	09313823          	sd	s3,144(sp)
    80006fb0:	09413c23          	sd	s4,152(sp)
    80006fb4:	0b513023          	sd	s5,160(sp)
    80006fb8:	0b613423          	sd	s6,168(sp)
    80006fbc:	0b713823          	sd	s7,176(sp)
    80006fc0:	0b813c23          	sd	s8,184(sp)
    80006fc4:	0d913023          	sd	s9,192(sp)
    80006fc8:	0da13423          	sd	s10,200(sp)
    80006fcc:	0db13823          	sd	s11,208(sp)
    80006fd0:	0dc13c23          	sd	t3,216(sp)
    80006fd4:	0fd13023          	sd	t4,224(sp)
    80006fd8:	0fe13423          	sd	t5,232(sp)
    80006fdc:	0ff13823          	sd	t6,240(sp)
    80006fe0:	cd5ff0ef          	jal	ra,80006cb4 <kerneltrap>
    80006fe4:	00013083          	ld	ra,0(sp)
    80006fe8:	00813103          	ld	sp,8(sp)
    80006fec:	01013183          	ld	gp,16(sp)
    80006ff0:	02013283          	ld	t0,32(sp)
    80006ff4:	02813303          	ld	t1,40(sp)
    80006ff8:	03013383          	ld	t2,48(sp)
    80006ffc:	03813403          	ld	s0,56(sp)
    80007000:	04013483          	ld	s1,64(sp)
    80007004:	04813503          	ld	a0,72(sp)
    80007008:	05013583          	ld	a1,80(sp)
    8000700c:	05813603          	ld	a2,88(sp)
    80007010:	06013683          	ld	a3,96(sp)
    80007014:	06813703          	ld	a4,104(sp)
    80007018:	07013783          	ld	a5,112(sp)
    8000701c:	07813803          	ld	a6,120(sp)
    80007020:	08013883          	ld	a7,128(sp)
    80007024:	08813903          	ld	s2,136(sp)
    80007028:	09013983          	ld	s3,144(sp)
    8000702c:	09813a03          	ld	s4,152(sp)
    80007030:	0a013a83          	ld	s5,160(sp)
    80007034:	0a813b03          	ld	s6,168(sp)
    80007038:	0b013b83          	ld	s7,176(sp)
    8000703c:	0b813c03          	ld	s8,184(sp)
    80007040:	0c013c83          	ld	s9,192(sp)
    80007044:	0c813d03          	ld	s10,200(sp)
    80007048:	0d013d83          	ld	s11,208(sp)
    8000704c:	0d813e03          	ld	t3,216(sp)
    80007050:	0e013e83          	ld	t4,224(sp)
    80007054:	0e813f03          	ld	t5,232(sp)
    80007058:	0f013f83          	ld	t6,240(sp)
    8000705c:	10010113          	addi	sp,sp,256
    80007060:	10200073          	sret
    80007064:	00000013          	nop
    80007068:	00000013          	nop
    8000706c:	00000013          	nop

0000000080007070 <timervec>:
    80007070:	34051573          	csrrw	a0,mscratch,a0
    80007074:	00b53023          	sd	a1,0(a0)
    80007078:	00c53423          	sd	a2,8(a0)
    8000707c:	00d53823          	sd	a3,16(a0)
    80007080:	01853583          	ld	a1,24(a0)
    80007084:	02053603          	ld	a2,32(a0)
    80007088:	0005b683          	ld	a3,0(a1)
    8000708c:	00c686b3          	add	a3,a3,a2
    80007090:	00d5b023          	sd	a3,0(a1)
    80007094:	00200593          	li	a1,2
    80007098:	14459073          	csrw	sip,a1
    8000709c:	01053683          	ld	a3,16(a0)
    800070a0:	00853603          	ld	a2,8(a0)
    800070a4:	00053583          	ld	a1,0(a0)
    800070a8:	34051573          	csrrw	a0,mscratch,a0
    800070ac:	30200073          	mret

00000000800070b0 <plicinit>:
    800070b0:	ff010113          	addi	sp,sp,-16
    800070b4:	00813423          	sd	s0,8(sp)
    800070b8:	01010413          	addi	s0,sp,16
    800070bc:	00813403          	ld	s0,8(sp)
    800070c0:	0c0007b7          	lui	a5,0xc000
    800070c4:	00100713          	li	a4,1
    800070c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800070cc:	00e7a223          	sw	a4,4(a5)
    800070d0:	01010113          	addi	sp,sp,16
    800070d4:	00008067          	ret

00000000800070d8 <plicinithart>:
    800070d8:	ff010113          	addi	sp,sp,-16
    800070dc:	00813023          	sd	s0,0(sp)
    800070e0:	00113423          	sd	ra,8(sp)
    800070e4:	01010413          	addi	s0,sp,16
    800070e8:	00000097          	auipc	ra,0x0
    800070ec:	a4c080e7          	jalr	-1460(ra) # 80006b34 <cpuid>
    800070f0:	0085171b          	slliw	a4,a0,0x8
    800070f4:	0c0027b7          	lui	a5,0xc002
    800070f8:	00e787b3          	add	a5,a5,a4
    800070fc:	40200713          	li	a4,1026
    80007100:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007104:	00813083          	ld	ra,8(sp)
    80007108:	00013403          	ld	s0,0(sp)
    8000710c:	00d5151b          	slliw	a0,a0,0xd
    80007110:	0c2017b7          	lui	a5,0xc201
    80007114:	00a78533          	add	a0,a5,a0
    80007118:	00052023          	sw	zero,0(a0)
    8000711c:	01010113          	addi	sp,sp,16
    80007120:	00008067          	ret

0000000080007124 <plic_claim>:
    80007124:	ff010113          	addi	sp,sp,-16
    80007128:	00813023          	sd	s0,0(sp)
    8000712c:	00113423          	sd	ra,8(sp)
    80007130:	01010413          	addi	s0,sp,16
    80007134:	00000097          	auipc	ra,0x0
    80007138:	a00080e7          	jalr	-1536(ra) # 80006b34 <cpuid>
    8000713c:	00813083          	ld	ra,8(sp)
    80007140:	00013403          	ld	s0,0(sp)
    80007144:	00d5151b          	slliw	a0,a0,0xd
    80007148:	0c2017b7          	lui	a5,0xc201
    8000714c:	00a78533          	add	a0,a5,a0
    80007150:	00452503          	lw	a0,4(a0)
    80007154:	01010113          	addi	sp,sp,16
    80007158:	00008067          	ret

000000008000715c <plic_complete>:
    8000715c:	fe010113          	addi	sp,sp,-32
    80007160:	00813823          	sd	s0,16(sp)
    80007164:	00913423          	sd	s1,8(sp)
    80007168:	00113c23          	sd	ra,24(sp)
    8000716c:	02010413          	addi	s0,sp,32
    80007170:	00050493          	mv	s1,a0
    80007174:	00000097          	auipc	ra,0x0
    80007178:	9c0080e7          	jalr	-1600(ra) # 80006b34 <cpuid>
    8000717c:	01813083          	ld	ra,24(sp)
    80007180:	01013403          	ld	s0,16(sp)
    80007184:	00d5179b          	slliw	a5,a0,0xd
    80007188:	0c201737          	lui	a4,0xc201
    8000718c:	00f707b3          	add	a5,a4,a5
    80007190:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007194:	00813483          	ld	s1,8(sp)
    80007198:	02010113          	addi	sp,sp,32
    8000719c:	00008067          	ret

00000000800071a0 <consolewrite>:
    800071a0:	fb010113          	addi	sp,sp,-80
    800071a4:	04813023          	sd	s0,64(sp)
    800071a8:	04113423          	sd	ra,72(sp)
    800071ac:	02913c23          	sd	s1,56(sp)
    800071b0:	03213823          	sd	s2,48(sp)
    800071b4:	03313423          	sd	s3,40(sp)
    800071b8:	03413023          	sd	s4,32(sp)
    800071bc:	01513c23          	sd	s5,24(sp)
    800071c0:	05010413          	addi	s0,sp,80
    800071c4:	06c05c63          	blez	a2,8000723c <consolewrite+0x9c>
    800071c8:	00060993          	mv	s3,a2
    800071cc:	00050a13          	mv	s4,a0
    800071d0:	00058493          	mv	s1,a1
    800071d4:	00000913          	li	s2,0
    800071d8:	fff00a93          	li	s5,-1
    800071dc:	01c0006f          	j	800071f8 <consolewrite+0x58>
    800071e0:	fbf44503          	lbu	a0,-65(s0)
    800071e4:	0019091b          	addiw	s2,s2,1
    800071e8:	00148493          	addi	s1,s1,1
    800071ec:	00001097          	auipc	ra,0x1
    800071f0:	a9c080e7          	jalr	-1380(ra) # 80007c88 <uartputc>
    800071f4:	03298063          	beq	s3,s2,80007214 <consolewrite+0x74>
    800071f8:	00048613          	mv	a2,s1
    800071fc:	00100693          	li	a3,1
    80007200:	000a0593          	mv	a1,s4
    80007204:	fbf40513          	addi	a0,s0,-65
    80007208:	00000097          	auipc	ra,0x0
    8000720c:	9e4080e7          	jalr	-1564(ra) # 80006bec <either_copyin>
    80007210:	fd5518e3          	bne	a0,s5,800071e0 <consolewrite+0x40>
    80007214:	04813083          	ld	ra,72(sp)
    80007218:	04013403          	ld	s0,64(sp)
    8000721c:	03813483          	ld	s1,56(sp)
    80007220:	02813983          	ld	s3,40(sp)
    80007224:	02013a03          	ld	s4,32(sp)
    80007228:	01813a83          	ld	s5,24(sp)
    8000722c:	00090513          	mv	a0,s2
    80007230:	03013903          	ld	s2,48(sp)
    80007234:	05010113          	addi	sp,sp,80
    80007238:	00008067          	ret
    8000723c:	00000913          	li	s2,0
    80007240:	fd5ff06f          	j	80007214 <consolewrite+0x74>

0000000080007244 <consoleread>:
    80007244:	f9010113          	addi	sp,sp,-112
    80007248:	06813023          	sd	s0,96(sp)
    8000724c:	04913c23          	sd	s1,88(sp)
    80007250:	05213823          	sd	s2,80(sp)
    80007254:	05313423          	sd	s3,72(sp)
    80007258:	05413023          	sd	s4,64(sp)
    8000725c:	03513c23          	sd	s5,56(sp)
    80007260:	03613823          	sd	s6,48(sp)
    80007264:	03713423          	sd	s7,40(sp)
    80007268:	03813023          	sd	s8,32(sp)
    8000726c:	06113423          	sd	ra,104(sp)
    80007270:	01913c23          	sd	s9,24(sp)
    80007274:	07010413          	addi	s0,sp,112
    80007278:	00060b93          	mv	s7,a2
    8000727c:	00050913          	mv	s2,a0
    80007280:	00058c13          	mv	s8,a1
    80007284:	00060b1b          	sext.w	s6,a2
    80007288:	00006497          	auipc	s1,0x6
    8000728c:	93048493          	addi	s1,s1,-1744 # 8000cbb8 <cons>
    80007290:	00400993          	li	s3,4
    80007294:	fff00a13          	li	s4,-1
    80007298:	00a00a93          	li	s5,10
    8000729c:	05705e63          	blez	s7,800072f8 <consoleread+0xb4>
    800072a0:	09c4a703          	lw	a4,156(s1)
    800072a4:	0984a783          	lw	a5,152(s1)
    800072a8:	0007071b          	sext.w	a4,a4
    800072ac:	08e78463          	beq	a5,a4,80007334 <consoleread+0xf0>
    800072b0:	07f7f713          	andi	a4,a5,127
    800072b4:	00e48733          	add	a4,s1,a4
    800072b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800072bc:	0017869b          	addiw	a3,a5,1
    800072c0:	08d4ac23          	sw	a3,152(s1)
    800072c4:	00070c9b          	sext.w	s9,a4
    800072c8:	0b370663          	beq	a4,s3,80007374 <consoleread+0x130>
    800072cc:	00100693          	li	a3,1
    800072d0:	f9f40613          	addi	a2,s0,-97
    800072d4:	000c0593          	mv	a1,s8
    800072d8:	00090513          	mv	a0,s2
    800072dc:	f8e40fa3          	sb	a4,-97(s0)
    800072e0:	00000097          	auipc	ra,0x0
    800072e4:	8c0080e7          	jalr	-1856(ra) # 80006ba0 <either_copyout>
    800072e8:	01450863          	beq	a0,s4,800072f8 <consoleread+0xb4>
    800072ec:	001c0c13          	addi	s8,s8,1
    800072f0:	fffb8b9b          	addiw	s7,s7,-1
    800072f4:	fb5c94e3          	bne	s9,s5,8000729c <consoleread+0x58>
    800072f8:	000b851b          	sext.w	a0,s7
    800072fc:	06813083          	ld	ra,104(sp)
    80007300:	06013403          	ld	s0,96(sp)
    80007304:	05813483          	ld	s1,88(sp)
    80007308:	05013903          	ld	s2,80(sp)
    8000730c:	04813983          	ld	s3,72(sp)
    80007310:	04013a03          	ld	s4,64(sp)
    80007314:	03813a83          	ld	s5,56(sp)
    80007318:	02813b83          	ld	s7,40(sp)
    8000731c:	02013c03          	ld	s8,32(sp)
    80007320:	01813c83          	ld	s9,24(sp)
    80007324:	40ab053b          	subw	a0,s6,a0
    80007328:	03013b03          	ld	s6,48(sp)
    8000732c:	07010113          	addi	sp,sp,112
    80007330:	00008067          	ret
    80007334:	00001097          	auipc	ra,0x1
    80007338:	1d8080e7          	jalr	472(ra) # 8000850c <push_on>
    8000733c:	0984a703          	lw	a4,152(s1)
    80007340:	09c4a783          	lw	a5,156(s1)
    80007344:	0007879b          	sext.w	a5,a5
    80007348:	fef70ce3          	beq	a4,a5,80007340 <consoleread+0xfc>
    8000734c:	00001097          	auipc	ra,0x1
    80007350:	234080e7          	jalr	564(ra) # 80008580 <pop_on>
    80007354:	0984a783          	lw	a5,152(s1)
    80007358:	07f7f713          	andi	a4,a5,127
    8000735c:	00e48733          	add	a4,s1,a4
    80007360:	01874703          	lbu	a4,24(a4)
    80007364:	0017869b          	addiw	a3,a5,1
    80007368:	08d4ac23          	sw	a3,152(s1)
    8000736c:	00070c9b          	sext.w	s9,a4
    80007370:	f5371ee3          	bne	a4,s3,800072cc <consoleread+0x88>
    80007374:	000b851b          	sext.w	a0,s7
    80007378:	f96bf2e3          	bgeu	s7,s6,800072fc <consoleread+0xb8>
    8000737c:	08f4ac23          	sw	a5,152(s1)
    80007380:	f7dff06f          	j	800072fc <consoleread+0xb8>

0000000080007384 <consputc>:
    80007384:	10000793          	li	a5,256
    80007388:	00f50663          	beq	a0,a5,80007394 <consputc+0x10>
    8000738c:	00001317          	auipc	t1,0x1
    80007390:	9f430067          	jr	-1548(t1) # 80007d80 <uartputc_sync>
    80007394:	ff010113          	addi	sp,sp,-16
    80007398:	00113423          	sd	ra,8(sp)
    8000739c:	00813023          	sd	s0,0(sp)
    800073a0:	01010413          	addi	s0,sp,16
    800073a4:	00800513          	li	a0,8
    800073a8:	00001097          	auipc	ra,0x1
    800073ac:	9d8080e7          	jalr	-1576(ra) # 80007d80 <uartputc_sync>
    800073b0:	02000513          	li	a0,32
    800073b4:	00001097          	auipc	ra,0x1
    800073b8:	9cc080e7          	jalr	-1588(ra) # 80007d80 <uartputc_sync>
    800073bc:	00013403          	ld	s0,0(sp)
    800073c0:	00813083          	ld	ra,8(sp)
    800073c4:	00800513          	li	a0,8
    800073c8:	01010113          	addi	sp,sp,16
    800073cc:	00001317          	auipc	t1,0x1
    800073d0:	9b430067          	jr	-1612(t1) # 80007d80 <uartputc_sync>

00000000800073d4 <consoleintr>:
    800073d4:	fe010113          	addi	sp,sp,-32
    800073d8:	00813823          	sd	s0,16(sp)
    800073dc:	00913423          	sd	s1,8(sp)
    800073e0:	01213023          	sd	s2,0(sp)
    800073e4:	00113c23          	sd	ra,24(sp)
    800073e8:	02010413          	addi	s0,sp,32
    800073ec:	00005917          	auipc	s2,0x5
    800073f0:	7cc90913          	addi	s2,s2,1996 # 8000cbb8 <cons>
    800073f4:	00050493          	mv	s1,a0
    800073f8:	00090513          	mv	a0,s2
    800073fc:	00001097          	auipc	ra,0x1
    80007400:	e40080e7          	jalr	-448(ra) # 8000823c <acquire>
    80007404:	02048c63          	beqz	s1,8000743c <consoleintr+0x68>
    80007408:	0a092783          	lw	a5,160(s2)
    8000740c:	09892703          	lw	a4,152(s2)
    80007410:	07f00693          	li	a3,127
    80007414:	40e7873b          	subw	a4,a5,a4
    80007418:	02e6e263          	bltu	a3,a4,8000743c <consoleintr+0x68>
    8000741c:	00d00713          	li	a4,13
    80007420:	04e48063          	beq	s1,a4,80007460 <consoleintr+0x8c>
    80007424:	07f7f713          	andi	a4,a5,127
    80007428:	00e90733          	add	a4,s2,a4
    8000742c:	0017879b          	addiw	a5,a5,1
    80007430:	0af92023          	sw	a5,160(s2)
    80007434:	00970c23          	sb	s1,24(a4)
    80007438:	08f92e23          	sw	a5,156(s2)
    8000743c:	01013403          	ld	s0,16(sp)
    80007440:	01813083          	ld	ra,24(sp)
    80007444:	00813483          	ld	s1,8(sp)
    80007448:	00013903          	ld	s2,0(sp)
    8000744c:	00005517          	auipc	a0,0x5
    80007450:	76c50513          	addi	a0,a0,1900 # 8000cbb8 <cons>
    80007454:	02010113          	addi	sp,sp,32
    80007458:	00001317          	auipc	t1,0x1
    8000745c:	eb030067          	jr	-336(t1) # 80008308 <release>
    80007460:	00a00493          	li	s1,10
    80007464:	fc1ff06f          	j	80007424 <consoleintr+0x50>

0000000080007468 <consoleinit>:
    80007468:	fe010113          	addi	sp,sp,-32
    8000746c:	00113c23          	sd	ra,24(sp)
    80007470:	00813823          	sd	s0,16(sp)
    80007474:	00913423          	sd	s1,8(sp)
    80007478:	02010413          	addi	s0,sp,32
    8000747c:	00005497          	auipc	s1,0x5
    80007480:	73c48493          	addi	s1,s1,1852 # 8000cbb8 <cons>
    80007484:	00048513          	mv	a0,s1
    80007488:	00002597          	auipc	a1,0x2
    8000748c:	0b058593          	addi	a1,a1,176 # 80009538 <CONSOLE_STATUS+0x528>
    80007490:	00001097          	auipc	ra,0x1
    80007494:	d88080e7          	jalr	-632(ra) # 80008218 <initlock>
    80007498:	00000097          	auipc	ra,0x0
    8000749c:	7ac080e7          	jalr	1964(ra) # 80007c44 <uartinit>
    800074a0:	01813083          	ld	ra,24(sp)
    800074a4:	01013403          	ld	s0,16(sp)
    800074a8:	00000797          	auipc	a5,0x0
    800074ac:	d9c78793          	addi	a5,a5,-612 # 80007244 <consoleread>
    800074b0:	0af4bc23          	sd	a5,184(s1)
    800074b4:	00000797          	auipc	a5,0x0
    800074b8:	cec78793          	addi	a5,a5,-788 # 800071a0 <consolewrite>
    800074bc:	0cf4b023          	sd	a5,192(s1)
    800074c0:	00813483          	ld	s1,8(sp)
    800074c4:	02010113          	addi	sp,sp,32
    800074c8:	00008067          	ret

00000000800074cc <console_read>:
    800074cc:	ff010113          	addi	sp,sp,-16
    800074d0:	00813423          	sd	s0,8(sp)
    800074d4:	01010413          	addi	s0,sp,16
    800074d8:	00813403          	ld	s0,8(sp)
    800074dc:	00005317          	auipc	t1,0x5
    800074e0:	79433303          	ld	t1,1940(t1) # 8000cc70 <devsw+0x10>
    800074e4:	01010113          	addi	sp,sp,16
    800074e8:	00030067          	jr	t1

00000000800074ec <console_write>:
    800074ec:	ff010113          	addi	sp,sp,-16
    800074f0:	00813423          	sd	s0,8(sp)
    800074f4:	01010413          	addi	s0,sp,16
    800074f8:	00813403          	ld	s0,8(sp)
    800074fc:	00005317          	auipc	t1,0x5
    80007500:	77c33303          	ld	t1,1916(t1) # 8000cc78 <devsw+0x18>
    80007504:	01010113          	addi	sp,sp,16
    80007508:	00030067          	jr	t1

000000008000750c <panic>:
    8000750c:	fe010113          	addi	sp,sp,-32
    80007510:	00113c23          	sd	ra,24(sp)
    80007514:	00813823          	sd	s0,16(sp)
    80007518:	00913423          	sd	s1,8(sp)
    8000751c:	02010413          	addi	s0,sp,32
    80007520:	00050493          	mv	s1,a0
    80007524:	00002517          	auipc	a0,0x2
    80007528:	01c50513          	addi	a0,a0,28 # 80009540 <CONSOLE_STATUS+0x530>
    8000752c:	00005797          	auipc	a5,0x5
    80007530:	7e07a623          	sw	zero,2028(a5) # 8000cd18 <pr+0x18>
    80007534:	00000097          	auipc	ra,0x0
    80007538:	034080e7          	jalr	52(ra) # 80007568 <__printf>
    8000753c:	00048513          	mv	a0,s1
    80007540:	00000097          	auipc	ra,0x0
    80007544:	028080e7          	jalr	40(ra) # 80007568 <__printf>
    80007548:	00002517          	auipc	a0,0x2
    8000754c:	c2050513          	addi	a0,a0,-992 # 80009168 <CONSOLE_STATUS+0x158>
    80007550:	00000097          	auipc	ra,0x0
    80007554:	018080e7          	jalr	24(ra) # 80007568 <__printf>
    80007558:	00100793          	li	a5,1
    8000755c:	00004717          	auipc	a4,0x4
    80007560:	4af72e23          	sw	a5,1212(a4) # 8000ba18 <panicked>
    80007564:	0000006f          	j	80007564 <panic+0x58>

0000000080007568 <__printf>:
    80007568:	f3010113          	addi	sp,sp,-208
    8000756c:	08813023          	sd	s0,128(sp)
    80007570:	07313423          	sd	s3,104(sp)
    80007574:	09010413          	addi	s0,sp,144
    80007578:	05813023          	sd	s8,64(sp)
    8000757c:	08113423          	sd	ra,136(sp)
    80007580:	06913c23          	sd	s1,120(sp)
    80007584:	07213823          	sd	s2,112(sp)
    80007588:	07413023          	sd	s4,96(sp)
    8000758c:	05513c23          	sd	s5,88(sp)
    80007590:	05613823          	sd	s6,80(sp)
    80007594:	05713423          	sd	s7,72(sp)
    80007598:	03913c23          	sd	s9,56(sp)
    8000759c:	03a13823          	sd	s10,48(sp)
    800075a0:	03b13423          	sd	s11,40(sp)
    800075a4:	00005317          	auipc	t1,0x5
    800075a8:	75c30313          	addi	t1,t1,1884 # 8000cd00 <pr>
    800075ac:	01832c03          	lw	s8,24(t1)
    800075b0:	00b43423          	sd	a1,8(s0)
    800075b4:	00c43823          	sd	a2,16(s0)
    800075b8:	00d43c23          	sd	a3,24(s0)
    800075bc:	02e43023          	sd	a4,32(s0)
    800075c0:	02f43423          	sd	a5,40(s0)
    800075c4:	03043823          	sd	a6,48(s0)
    800075c8:	03143c23          	sd	a7,56(s0)
    800075cc:	00050993          	mv	s3,a0
    800075d0:	4a0c1663          	bnez	s8,80007a7c <__printf+0x514>
    800075d4:	60098c63          	beqz	s3,80007bec <__printf+0x684>
    800075d8:	0009c503          	lbu	a0,0(s3)
    800075dc:	00840793          	addi	a5,s0,8
    800075e0:	f6f43c23          	sd	a5,-136(s0)
    800075e4:	00000493          	li	s1,0
    800075e8:	22050063          	beqz	a0,80007808 <__printf+0x2a0>
    800075ec:	00002a37          	lui	s4,0x2
    800075f0:	00018ab7          	lui	s5,0x18
    800075f4:	000f4b37          	lui	s6,0xf4
    800075f8:	00989bb7          	lui	s7,0x989
    800075fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007600:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007604:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007608:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000760c:	00148c9b          	addiw	s9,s1,1
    80007610:	02500793          	li	a5,37
    80007614:	01998933          	add	s2,s3,s9
    80007618:	38f51263          	bne	a0,a5,8000799c <__printf+0x434>
    8000761c:	00094783          	lbu	a5,0(s2)
    80007620:	00078c9b          	sext.w	s9,a5
    80007624:	1e078263          	beqz	a5,80007808 <__printf+0x2a0>
    80007628:	0024849b          	addiw	s1,s1,2
    8000762c:	07000713          	li	a4,112
    80007630:	00998933          	add	s2,s3,s1
    80007634:	38e78a63          	beq	a5,a4,800079c8 <__printf+0x460>
    80007638:	20f76863          	bltu	a4,a5,80007848 <__printf+0x2e0>
    8000763c:	42a78863          	beq	a5,a0,80007a6c <__printf+0x504>
    80007640:	06400713          	li	a4,100
    80007644:	40e79663          	bne	a5,a4,80007a50 <__printf+0x4e8>
    80007648:	f7843783          	ld	a5,-136(s0)
    8000764c:	0007a603          	lw	a2,0(a5)
    80007650:	00878793          	addi	a5,a5,8
    80007654:	f6f43c23          	sd	a5,-136(s0)
    80007658:	42064a63          	bltz	a2,80007a8c <__printf+0x524>
    8000765c:	00a00713          	li	a4,10
    80007660:	02e677bb          	remuw	a5,a2,a4
    80007664:	00002d97          	auipc	s11,0x2
    80007668:	f04d8d93          	addi	s11,s11,-252 # 80009568 <digits>
    8000766c:	00900593          	li	a1,9
    80007670:	0006051b          	sext.w	a0,a2
    80007674:	00000c93          	li	s9,0
    80007678:	02079793          	slli	a5,a5,0x20
    8000767c:	0207d793          	srli	a5,a5,0x20
    80007680:	00fd87b3          	add	a5,s11,a5
    80007684:	0007c783          	lbu	a5,0(a5)
    80007688:	02e656bb          	divuw	a3,a2,a4
    8000768c:	f8f40023          	sb	a5,-128(s0)
    80007690:	14c5d863          	bge	a1,a2,800077e0 <__printf+0x278>
    80007694:	06300593          	li	a1,99
    80007698:	00100c93          	li	s9,1
    8000769c:	02e6f7bb          	remuw	a5,a3,a4
    800076a0:	02079793          	slli	a5,a5,0x20
    800076a4:	0207d793          	srli	a5,a5,0x20
    800076a8:	00fd87b3          	add	a5,s11,a5
    800076ac:	0007c783          	lbu	a5,0(a5)
    800076b0:	02e6d73b          	divuw	a4,a3,a4
    800076b4:	f8f400a3          	sb	a5,-127(s0)
    800076b8:	12a5f463          	bgeu	a1,a0,800077e0 <__printf+0x278>
    800076bc:	00a00693          	li	a3,10
    800076c0:	00900593          	li	a1,9
    800076c4:	02d777bb          	remuw	a5,a4,a3
    800076c8:	02079793          	slli	a5,a5,0x20
    800076cc:	0207d793          	srli	a5,a5,0x20
    800076d0:	00fd87b3          	add	a5,s11,a5
    800076d4:	0007c503          	lbu	a0,0(a5)
    800076d8:	02d757bb          	divuw	a5,a4,a3
    800076dc:	f8a40123          	sb	a0,-126(s0)
    800076e0:	48e5f263          	bgeu	a1,a4,80007b64 <__printf+0x5fc>
    800076e4:	06300513          	li	a0,99
    800076e8:	02d7f5bb          	remuw	a1,a5,a3
    800076ec:	02059593          	slli	a1,a1,0x20
    800076f0:	0205d593          	srli	a1,a1,0x20
    800076f4:	00bd85b3          	add	a1,s11,a1
    800076f8:	0005c583          	lbu	a1,0(a1)
    800076fc:	02d7d7bb          	divuw	a5,a5,a3
    80007700:	f8b401a3          	sb	a1,-125(s0)
    80007704:	48e57263          	bgeu	a0,a4,80007b88 <__printf+0x620>
    80007708:	3e700513          	li	a0,999
    8000770c:	02d7f5bb          	remuw	a1,a5,a3
    80007710:	02059593          	slli	a1,a1,0x20
    80007714:	0205d593          	srli	a1,a1,0x20
    80007718:	00bd85b3          	add	a1,s11,a1
    8000771c:	0005c583          	lbu	a1,0(a1)
    80007720:	02d7d7bb          	divuw	a5,a5,a3
    80007724:	f8b40223          	sb	a1,-124(s0)
    80007728:	46e57663          	bgeu	a0,a4,80007b94 <__printf+0x62c>
    8000772c:	02d7f5bb          	remuw	a1,a5,a3
    80007730:	02059593          	slli	a1,a1,0x20
    80007734:	0205d593          	srli	a1,a1,0x20
    80007738:	00bd85b3          	add	a1,s11,a1
    8000773c:	0005c583          	lbu	a1,0(a1)
    80007740:	02d7d7bb          	divuw	a5,a5,a3
    80007744:	f8b402a3          	sb	a1,-123(s0)
    80007748:	46ea7863          	bgeu	s4,a4,80007bb8 <__printf+0x650>
    8000774c:	02d7f5bb          	remuw	a1,a5,a3
    80007750:	02059593          	slli	a1,a1,0x20
    80007754:	0205d593          	srli	a1,a1,0x20
    80007758:	00bd85b3          	add	a1,s11,a1
    8000775c:	0005c583          	lbu	a1,0(a1)
    80007760:	02d7d7bb          	divuw	a5,a5,a3
    80007764:	f8b40323          	sb	a1,-122(s0)
    80007768:	3eeaf863          	bgeu	s5,a4,80007b58 <__printf+0x5f0>
    8000776c:	02d7f5bb          	remuw	a1,a5,a3
    80007770:	02059593          	slli	a1,a1,0x20
    80007774:	0205d593          	srli	a1,a1,0x20
    80007778:	00bd85b3          	add	a1,s11,a1
    8000777c:	0005c583          	lbu	a1,0(a1)
    80007780:	02d7d7bb          	divuw	a5,a5,a3
    80007784:	f8b403a3          	sb	a1,-121(s0)
    80007788:	42eb7e63          	bgeu	s6,a4,80007bc4 <__printf+0x65c>
    8000778c:	02d7f5bb          	remuw	a1,a5,a3
    80007790:	02059593          	slli	a1,a1,0x20
    80007794:	0205d593          	srli	a1,a1,0x20
    80007798:	00bd85b3          	add	a1,s11,a1
    8000779c:	0005c583          	lbu	a1,0(a1)
    800077a0:	02d7d7bb          	divuw	a5,a5,a3
    800077a4:	f8b40423          	sb	a1,-120(s0)
    800077a8:	42ebfc63          	bgeu	s7,a4,80007be0 <__printf+0x678>
    800077ac:	02079793          	slli	a5,a5,0x20
    800077b0:	0207d793          	srli	a5,a5,0x20
    800077b4:	00fd8db3          	add	s11,s11,a5
    800077b8:	000dc703          	lbu	a4,0(s11)
    800077bc:	00a00793          	li	a5,10
    800077c0:	00900c93          	li	s9,9
    800077c4:	f8e404a3          	sb	a4,-119(s0)
    800077c8:	00065c63          	bgez	a2,800077e0 <__printf+0x278>
    800077cc:	f9040713          	addi	a4,s0,-112
    800077d0:	00f70733          	add	a4,a4,a5
    800077d4:	02d00693          	li	a3,45
    800077d8:	fed70823          	sb	a3,-16(a4)
    800077dc:	00078c93          	mv	s9,a5
    800077e0:	f8040793          	addi	a5,s0,-128
    800077e4:	01978cb3          	add	s9,a5,s9
    800077e8:	f7f40d13          	addi	s10,s0,-129
    800077ec:	000cc503          	lbu	a0,0(s9)
    800077f0:	fffc8c93          	addi	s9,s9,-1
    800077f4:	00000097          	auipc	ra,0x0
    800077f8:	b90080e7          	jalr	-1136(ra) # 80007384 <consputc>
    800077fc:	ffac98e3          	bne	s9,s10,800077ec <__printf+0x284>
    80007800:	00094503          	lbu	a0,0(s2)
    80007804:	e00514e3          	bnez	a0,8000760c <__printf+0xa4>
    80007808:	1a0c1663          	bnez	s8,800079b4 <__printf+0x44c>
    8000780c:	08813083          	ld	ra,136(sp)
    80007810:	08013403          	ld	s0,128(sp)
    80007814:	07813483          	ld	s1,120(sp)
    80007818:	07013903          	ld	s2,112(sp)
    8000781c:	06813983          	ld	s3,104(sp)
    80007820:	06013a03          	ld	s4,96(sp)
    80007824:	05813a83          	ld	s5,88(sp)
    80007828:	05013b03          	ld	s6,80(sp)
    8000782c:	04813b83          	ld	s7,72(sp)
    80007830:	04013c03          	ld	s8,64(sp)
    80007834:	03813c83          	ld	s9,56(sp)
    80007838:	03013d03          	ld	s10,48(sp)
    8000783c:	02813d83          	ld	s11,40(sp)
    80007840:	0d010113          	addi	sp,sp,208
    80007844:	00008067          	ret
    80007848:	07300713          	li	a4,115
    8000784c:	1ce78a63          	beq	a5,a4,80007a20 <__printf+0x4b8>
    80007850:	07800713          	li	a4,120
    80007854:	1ee79e63          	bne	a5,a4,80007a50 <__printf+0x4e8>
    80007858:	f7843783          	ld	a5,-136(s0)
    8000785c:	0007a703          	lw	a4,0(a5)
    80007860:	00878793          	addi	a5,a5,8
    80007864:	f6f43c23          	sd	a5,-136(s0)
    80007868:	28074263          	bltz	a4,80007aec <__printf+0x584>
    8000786c:	00002d97          	auipc	s11,0x2
    80007870:	cfcd8d93          	addi	s11,s11,-772 # 80009568 <digits>
    80007874:	00f77793          	andi	a5,a4,15
    80007878:	00fd87b3          	add	a5,s11,a5
    8000787c:	0007c683          	lbu	a3,0(a5)
    80007880:	00f00613          	li	a2,15
    80007884:	0007079b          	sext.w	a5,a4
    80007888:	f8d40023          	sb	a3,-128(s0)
    8000788c:	0047559b          	srliw	a1,a4,0x4
    80007890:	0047569b          	srliw	a3,a4,0x4
    80007894:	00000c93          	li	s9,0
    80007898:	0ee65063          	bge	a2,a4,80007978 <__printf+0x410>
    8000789c:	00f6f693          	andi	a3,a3,15
    800078a0:	00dd86b3          	add	a3,s11,a3
    800078a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800078a8:	0087d79b          	srliw	a5,a5,0x8
    800078ac:	00100c93          	li	s9,1
    800078b0:	f8d400a3          	sb	a3,-127(s0)
    800078b4:	0cb67263          	bgeu	a2,a1,80007978 <__printf+0x410>
    800078b8:	00f7f693          	andi	a3,a5,15
    800078bc:	00dd86b3          	add	a3,s11,a3
    800078c0:	0006c583          	lbu	a1,0(a3)
    800078c4:	00f00613          	li	a2,15
    800078c8:	0047d69b          	srliw	a3,a5,0x4
    800078cc:	f8b40123          	sb	a1,-126(s0)
    800078d0:	0047d593          	srli	a1,a5,0x4
    800078d4:	28f67e63          	bgeu	a2,a5,80007b70 <__printf+0x608>
    800078d8:	00f6f693          	andi	a3,a3,15
    800078dc:	00dd86b3          	add	a3,s11,a3
    800078e0:	0006c503          	lbu	a0,0(a3)
    800078e4:	0087d813          	srli	a6,a5,0x8
    800078e8:	0087d69b          	srliw	a3,a5,0x8
    800078ec:	f8a401a3          	sb	a0,-125(s0)
    800078f0:	28b67663          	bgeu	a2,a1,80007b7c <__printf+0x614>
    800078f4:	00f6f693          	andi	a3,a3,15
    800078f8:	00dd86b3          	add	a3,s11,a3
    800078fc:	0006c583          	lbu	a1,0(a3)
    80007900:	00c7d513          	srli	a0,a5,0xc
    80007904:	00c7d69b          	srliw	a3,a5,0xc
    80007908:	f8b40223          	sb	a1,-124(s0)
    8000790c:	29067a63          	bgeu	a2,a6,80007ba0 <__printf+0x638>
    80007910:	00f6f693          	andi	a3,a3,15
    80007914:	00dd86b3          	add	a3,s11,a3
    80007918:	0006c583          	lbu	a1,0(a3)
    8000791c:	0107d813          	srli	a6,a5,0x10
    80007920:	0107d69b          	srliw	a3,a5,0x10
    80007924:	f8b402a3          	sb	a1,-123(s0)
    80007928:	28a67263          	bgeu	a2,a0,80007bac <__printf+0x644>
    8000792c:	00f6f693          	andi	a3,a3,15
    80007930:	00dd86b3          	add	a3,s11,a3
    80007934:	0006c683          	lbu	a3,0(a3)
    80007938:	0147d79b          	srliw	a5,a5,0x14
    8000793c:	f8d40323          	sb	a3,-122(s0)
    80007940:	21067663          	bgeu	a2,a6,80007b4c <__printf+0x5e4>
    80007944:	02079793          	slli	a5,a5,0x20
    80007948:	0207d793          	srli	a5,a5,0x20
    8000794c:	00fd8db3          	add	s11,s11,a5
    80007950:	000dc683          	lbu	a3,0(s11)
    80007954:	00800793          	li	a5,8
    80007958:	00700c93          	li	s9,7
    8000795c:	f8d403a3          	sb	a3,-121(s0)
    80007960:	00075c63          	bgez	a4,80007978 <__printf+0x410>
    80007964:	f9040713          	addi	a4,s0,-112
    80007968:	00f70733          	add	a4,a4,a5
    8000796c:	02d00693          	li	a3,45
    80007970:	fed70823          	sb	a3,-16(a4)
    80007974:	00078c93          	mv	s9,a5
    80007978:	f8040793          	addi	a5,s0,-128
    8000797c:	01978cb3          	add	s9,a5,s9
    80007980:	f7f40d13          	addi	s10,s0,-129
    80007984:	000cc503          	lbu	a0,0(s9)
    80007988:	fffc8c93          	addi	s9,s9,-1
    8000798c:	00000097          	auipc	ra,0x0
    80007990:	9f8080e7          	jalr	-1544(ra) # 80007384 <consputc>
    80007994:	ff9d18e3          	bne	s10,s9,80007984 <__printf+0x41c>
    80007998:	0100006f          	j	800079a8 <__printf+0x440>
    8000799c:	00000097          	auipc	ra,0x0
    800079a0:	9e8080e7          	jalr	-1560(ra) # 80007384 <consputc>
    800079a4:	000c8493          	mv	s1,s9
    800079a8:	00094503          	lbu	a0,0(s2)
    800079ac:	c60510e3          	bnez	a0,8000760c <__printf+0xa4>
    800079b0:	e40c0ee3          	beqz	s8,8000780c <__printf+0x2a4>
    800079b4:	00005517          	auipc	a0,0x5
    800079b8:	34c50513          	addi	a0,a0,844 # 8000cd00 <pr>
    800079bc:	00001097          	auipc	ra,0x1
    800079c0:	94c080e7          	jalr	-1716(ra) # 80008308 <release>
    800079c4:	e49ff06f          	j	8000780c <__printf+0x2a4>
    800079c8:	f7843783          	ld	a5,-136(s0)
    800079cc:	03000513          	li	a0,48
    800079d0:	01000d13          	li	s10,16
    800079d4:	00878713          	addi	a4,a5,8
    800079d8:	0007bc83          	ld	s9,0(a5)
    800079dc:	f6e43c23          	sd	a4,-136(s0)
    800079e0:	00000097          	auipc	ra,0x0
    800079e4:	9a4080e7          	jalr	-1628(ra) # 80007384 <consputc>
    800079e8:	07800513          	li	a0,120
    800079ec:	00000097          	auipc	ra,0x0
    800079f0:	998080e7          	jalr	-1640(ra) # 80007384 <consputc>
    800079f4:	00002d97          	auipc	s11,0x2
    800079f8:	b74d8d93          	addi	s11,s11,-1164 # 80009568 <digits>
    800079fc:	03ccd793          	srli	a5,s9,0x3c
    80007a00:	00fd87b3          	add	a5,s11,a5
    80007a04:	0007c503          	lbu	a0,0(a5)
    80007a08:	fffd0d1b          	addiw	s10,s10,-1
    80007a0c:	004c9c93          	slli	s9,s9,0x4
    80007a10:	00000097          	auipc	ra,0x0
    80007a14:	974080e7          	jalr	-1676(ra) # 80007384 <consputc>
    80007a18:	fe0d12e3          	bnez	s10,800079fc <__printf+0x494>
    80007a1c:	f8dff06f          	j	800079a8 <__printf+0x440>
    80007a20:	f7843783          	ld	a5,-136(s0)
    80007a24:	0007bc83          	ld	s9,0(a5)
    80007a28:	00878793          	addi	a5,a5,8
    80007a2c:	f6f43c23          	sd	a5,-136(s0)
    80007a30:	000c9a63          	bnez	s9,80007a44 <__printf+0x4dc>
    80007a34:	1080006f          	j	80007b3c <__printf+0x5d4>
    80007a38:	001c8c93          	addi	s9,s9,1
    80007a3c:	00000097          	auipc	ra,0x0
    80007a40:	948080e7          	jalr	-1720(ra) # 80007384 <consputc>
    80007a44:	000cc503          	lbu	a0,0(s9)
    80007a48:	fe0518e3          	bnez	a0,80007a38 <__printf+0x4d0>
    80007a4c:	f5dff06f          	j	800079a8 <__printf+0x440>
    80007a50:	02500513          	li	a0,37
    80007a54:	00000097          	auipc	ra,0x0
    80007a58:	930080e7          	jalr	-1744(ra) # 80007384 <consputc>
    80007a5c:	000c8513          	mv	a0,s9
    80007a60:	00000097          	auipc	ra,0x0
    80007a64:	924080e7          	jalr	-1756(ra) # 80007384 <consputc>
    80007a68:	f41ff06f          	j	800079a8 <__printf+0x440>
    80007a6c:	02500513          	li	a0,37
    80007a70:	00000097          	auipc	ra,0x0
    80007a74:	914080e7          	jalr	-1772(ra) # 80007384 <consputc>
    80007a78:	f31ff06f          	j	800079a8 <__printf+0x440>
    80007a7c:	00030513          	mv	a0,t1
    80007a80:	00000097          	auipc	ra,0x0
    80007a84:	7bc080e7          	jalr	1980(ra) # 8000823c <acquire>
    80007a88:	b4dff06f          	j	800075d4 <__printf+0x6c>
    80007a8c:	40c0053b          	negw	a0,a2
    80007a90:	00a00713          	li	a4,10
    80007a94:	02e576bb          	remuw	a3,a0,a4
    80007a98:	00002d97          	auipc	s11,0x2
    80007a9c:	ad0d8d93          	addi	s11,s11,-1328 # 80009568 <digits>
    80007aa0:	ff700593          	li	a1,-9
    80007aa4:	02069693          	slli	a3,a3,0x20
    80007aa8:	0206d693          	srli	a3,a3,0x20
    80007aac:	00dd86b3          	add	a3,s11,a3
    80007ab0:	0006c683          	lbu	a3,0(a3)
    80007ab4:	02e557bb          	divuw	a5,a0,a4
    80007ab8:	f8d40023          	sb	a3,-128(s0)
    80007abc:	10b65e63          	bge	a2,a1,80007bd8 <__printf+0x670>
    80007ac0:	06300593          	li	a1,99
    80007ac4:	02e7f6bb          	remuw	a3,a5,a4
    80007ac8:	02069693          	slli	a3,a3,0x20
    80007acc:	0206d693          	srli	a3,a3,0x20
    80007ad0:	00dd86b3          	add	a3,s11,a3
    80007ad4:	0006c683          	lbu	a3,0(a3)
    80007ad8:	02e7d73b          	divuw	a4,a5,a4
    80007adc:	00200793          	li	a5,2
    80007ae0:	f8d400a3          	sb	a3,-127(s0)
    80007ae4:	bca5ece3          	bltu	a1,a0,800076bc <__printf+0x154>
    80007ae8:	ce5ff06f          	j	800077cc <__printf+0x264>
    80007aec:	40e007bb          	negw	a5,a4
    80007af0:	00002d97          	auipc	s11,0x2
    80007af4:	a78d8d93          	addi	s11,s11,-1416 # 80009568 <digits>
    80007af8:	00f7f693          	andi	a3,a5,15
    80007afc:	00dd86b3          	add	a3,s11,a3
    80007b00:	0006c583          	lbu	a1,0(a3)
    80007b04:	ff100613          	li	a2,-15
    80007b08:	0047d69b          	srliw	a3,a5,0x4
    80007b0c:	f8b40023          	sb	a1,-128(s0)
    80007b10:	0047d59b          	srliw	a1,a5,0x4
    80007b14:	0ac75e63          	bge	a4,a2,80007bd0 <__printf+0x668>
    80007b18:	00f6f693          	andi	a3,a3,15
    80007b1c:	00dd86b3          	add	a3,s11,a3
    80007b20:	0006c603          	lbu	a2,0(a3)
    80007b24:	00f00693          	li	a3,15
    80007b28:	0087d79b          	srliw	a5,a5,0x8
    80007b2c:	f8c400a3          	sb	a2,-127(s0)
    80007b30:	d8b6e4e3          	bltu	a3,a1,800078b8 <__printf+0x350>
    80007b34:	00200793          	li	a5,2
    80007b38:	e2dff06f          	j	80007964 <__printf+0x3fc>
    80007b3c:	00002c97          	auipc	s9,0x2
    80007b40:	a0cc8c93          	addi	s9,s9,-1524 # 80009548 <CONSOLE_STATUS+0x538>
    80007b44:	02800513          	li	a0,40
    80007b48:	ef1ff06f          	j	80007a38 <__printf+0x4d0>
    80007b4c:	00700793          	li	a5,7
    80007b50:	00600c93          	li	s9,6
    80007b54:	e0dff06f          	j	80007960 <__printf+0x3f8>
    80007b58:	00700793          	li	a5,7
    80007b5c:	00600c93          	li	s9,6
    80007b60:	c69ff06f          	j	800077c8 <__printf+0x260>
    80007b64:	00300793          	li	a5,3
    80007b68:	00200c93          	li	s9,2
    80007b6c:	c5dff06f          	j	800077c8 <__printf+0x260>
    80007b70:	00300793          	li	a5,3
    80007b74:	00200c93          	li	s9,2
    80007b78:	de9ff06f          	j	80007960 <__printf+0x3f8>
    80007b7c:	00400793          	li	a5,4
    80007b80:	00300c93          	li	s9,3
    80007b84:	dddff06f          	j	80007960 <__printf+0x3f8>
    80007b88:	00400793          	li	a5,4
    80007b8c:	00300c93          	li	s9,3
    80007b90:	c39ff06f          	j	800077c8 <__printf+0x260>
    80007b94:	00500793          	li	a5,5
    80007b98:	00400c93          	li	s9,4
    80007b9c:	c2dff06f          	j	800077c8 <__printf+0x260>
    80007ba0:	00500793          	li	a5,5
    80007ba4:	00400c93          	li	s9,4
    80007ba8:	db9ff06f          	j	80007960 <__printf+0x3f8>
    80007bac:	00600793          	li	a5,6
    80007bb0:	00500c93          	li	s9,5
    80007bb4:	dadff06f          	j	80007960 <__printf+0x3f8>
    80007bb8:	00600793          	li	a5,6
    80007bbc:	00500c93          	li	s9,5
    80007bc0:	c09ff06f          	j	800077c8 <__printf+0x260>
    80007bc4:	00800793          	li	a5,8
    80007bc8:	00700c93          	li	s9,7
    80007bcc:	bfdff06f          	j	800077c8 <__printf+0x260>
    80007bd0:	00100793          	li	a5,1
    80007bd4:	d91ff06f          	j	80007964 <__printf+0x3fc>
    80007bd8:	00100793          	li	a5,1
    80007bdc:	bf1ff06f          	j	800077cc <__printf+0x264>
    80007be0:	00900793          	li	a5,9
    80007be4:	00800c93          	li	s9,8
    80007be8:	be1ff06f          	j	800077c8 <__printf+0x260>
    80007bec:	00002517          	auipc	a0,0x2
    80007bf0:	96450513          	addi	a0,a0,-1692 # 80009550 <CONSOLE_STATUS+0x540>
    80007bf4:	00000097          	auipc	ra,0x0
    80007bf8:	918080e7          	jalr	-1768(ra) # 8000750c <panic>

0000000080007bfc <printfinit>:
    80007bfc:	fe010113          	addi	sp,sp,-32
    80007c00:	00813823          	sd	s0,16(sp)
    80007c04:	00913423          	sd	s1,8(sp)
    80007c08:	00113c23          	sd	ra,24(sp)
    80007c0c:	02010413          	addi	s0,sp,32
    80007c10:	00005497          	auipc	s1,0x5
    80007c14:	0f048493          	addi	s1,s1,240 # 8000cd00 <pr>
    80007c18:	00048513          	mv	a0,s1
    80007c1c:	00002597          	auipc	a1,0x2
    80007c20:	94458593          	addi	a1,a1,-1724 # 80009560 <CONSOLE_STATUS+0x550>
    80007c24:	00000097          	auipc	ra,0x0
    80007c28:	5f4080e7          	jalr	1524(ra) # 80008218 <initlock>
    80007c2c:	01813083          	ld	ra,24(sp)
    80007c30:	01013403          	ld	s0,16(sp)
    80007c34:	0004ac23          	sw	zero,24(s1)
    80007c38:	00813483          	ld	s1,8(sp)
    80007c3c:	02010113          	addi	sp,sp,32
    80007c40:	00008067          	ret

0000000080007c44 <uartinit>:
    80007c44:	ff010113          	addi	sp,sp,-16
    80007c48:	00813423          	sd	s0,8(sp)
    80007c4c:	01010413          	addi	s0,sp,16
    80007c50:	100007b7          	lui	a5,0x10000
    80007c54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007c58:	f8000713          	li	a4,-128
    80007c5c:	00e781a3          	sb	a4,3(a5)
    80007c60:	00300713          	li	a4,3
    80007c64:	00e78023          	sb	a4,0(a5)
    80007c68:	000780a3          	sb	zero,1(a5)
    80007c6c:	00e781a3          	sb	a4,3(a5)
    80007c70:	00700693          	li	a3,7
    80007c74:	00d78123          	sb	a3,2(a5)
    80007c78:	00e780a3          	sb	a4,1(a5)
    80007c7c:	00813403          	ld	s0,8(sp)
    80007c80:	01010113          	addi	sp,sp,16
    80007c84:	00008067          	ret

0000000080007c88 <uartputc>:
    80007c88:	00004797          	auipc	a5,0x4
    80007c8c:	d907a783          	lw	a5,-624(a5) # 8000ba18 <panicked>
    80007c90:	00078463          	beqz	a5,80007c98 <uartputc+0x10>
    80007c94:	0000006f          	j	80007c94 <uartputc+0xc>
    80007c98:	fd010113          	addi	sp,sp,-48
    80007c9c:	02813023          	sd	s0,32(sp)
    80007ca0:	00913c23          	sd	s1,24(sp)
    80007ca4:	01213823          	sd	s2,16(sp)
    80007ca8:	01313423          	sd	s3,8(sp)
    80007cac:	02113423          	sd	ra,40(sp)
    80007cb0:	03010413          	addi	s0,sp,48
    80007cb4:	00004917          	auipc	s2,0x4
    80007cb8:	d6c90913          	addi	s2,s2,-660 # 8000ba20 <uart_tx_r>
    80007cbc:	00093783          	ld	a5,0(s2)
    80007cc0:	00004497          	auipc	s1,0x4
    80007cc4:	d6848493          	addi	s1,s1,-664 # 8000ba28 <uart_tx_w>
    80007cc8:	0004b703          	ld	a4,0(s1)
    80007ccc:	02078693          	addi	a3,a5,32
    80007cd0:	00050993          	mv	s3,a0
    80007cd4:	02e69c63          	bne	a3,a4,80007d0c <uartputc+0x84>
    80007cd8:	00001097          	auipc	ra,0x1
    80007cdc:	834080e7          	jalr	-1996(ra) # 8000850c <push_on>
    80007ce0:	00093783          	ld	a5,0(s2)
    80007ce4:	0004b703          	ld	a4,0(s1)
    80007ce8:	02078793          	addi	a5,a5,32
    80007cec:	00e79463          	bne	a5,a4,80007cf4 <uartputc+0x6c>
    80007cf0:	0000006f          	j	80007cf0 <uartputc+0x68>
    80007cf4:	00001097          	auipc	ra,0x1
    80007cf8:	88c080e7          	jalr	-1908(ra) # 80008580 <pop_on>
    80007cfc:	00093783          	ld	a5,0(s2)
    80007d00:	0004b703          	ld	a4,0(s1)
    80007d04:	02078693          	addi	a3,a5,32
    80007d08:	fce688e3          	beq	a3,a4,80007cd8 <uartputc+0x50>
    80007d0c:	01f77693          	andi	a3,a4,31
    80007d10:	00005597          	auipc	a1,0x5
    80007d14:	01058593          	addi	a1,a1,16 # 8000cd20 <uart_tx_buf>
    80007d18:	00d586b3          	add	a3,a1,a3
    80007d1c:	00170713          	addi	a4,a4,1
    80007d20:	01368023          	sb	s3,0(a3)
    80007d24:	00e4b023          	sd	a4,0(s1)
    80007d28:	10000637          	lui	a2,0x10000
    80007d2c:	02f71063          	bne	a4,a5,80007d4c <uartputc+0xc4>
    80007d30:	0340006f          	j	80007d64 <uartputc+0xdc>
    80007d34:	00074703          	lbu	a4,0(a4)
    80007d38:	00f93023          	sd	a5,0(s2)
    80007d3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007d40:	00093783          	ld	a5,0(s2)
    80007d44:	0004b703          	ld	a4,0(s1)
    80007d48:	00f70e63          	beq	a4,a5,80007d64 <uartputc+0xdc>
    80007d4c:	00564683          	lbu	a3,5(a2)
    80007d50:	01f7f713          	andi	a4,a5,31
    80007d54:	00e58733          	add	a4,a1,a4
    80007d58:	0206f693          	andi	a3,a3,32
    80007d5c:	00178793          	addi	a5,a5,1
    80007d60:	fc069ae3          	bnez	a3,80007d34 <uartputc+0xac>
    80007d64:	02813083          	ld	ra,40(sp)
    80007d68:	02013403          	ld	s0,32(sp)
    80007d6c:	01813483          	ld	s1,24(sp)
    80007d70:	01013903          	ld	s2,16(sp)
    80007d74:	00813983          	ld	s3,8(sp)
    80007d78:	03010113          	addi	sp,sp,48
    80007d7c:	00008067          	ret

0000000080007d80 <uartputc_sync>:
    80007d80:	ff010113          	addi	sp,sp,-16
    80007d84:	00813423          	sd	s0,8(sp)
    80007d88:	01010413          	addi	s0,sp,16
    80007d8c:	00004717          	auipc	a4,0x4
    80007d90:	c8c72703          	lw	a4,-884(a4) # 8000ba18 <panicked>
    80007d94:	02071663          	bnez	a4,80007dc0 <uartputc_sync+0x40>
    80007d98:	00050793          	mv	a5,a0
    80007d9c:	100006b7          	lui	a3,0x10000
    80007da0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007da4:	02077713          	andi	a4,a4,32
    80007da8:	fe070ce3          	beqz	a4,80007da0 <uartputc_sync+0x20>
    80007dac:	0ff7f793          	andi	a5,a5,255
    80007db0:	00f68023          	sb	a5,0(a3)
    80007db4:	00813403          	ld	s0,8(sp)
    80007db8:	01010113          	addi	sp,sp,16
    80007dbc:	00008067          	ret
    80007dc0:	0000006f          	j	80007dc0 <uartputc_sync+0x40>

0000000080007dc4 <uartstart>:
    80007dc4:	ff010113          	addi	sp,sp,-16
    80007dc8:	00813423          	sd	s0,8(sp)
    80007dcc:	01010413          	addi	s0,sp,16
    80007dd0:	00004617          	auipc	a2,0x4
    80007dd4:	c5060613          	addi	a2,a2,-944 # 8000ba20 <uart_tx_r>
    80007dd8:	00004517          	auipc	a0,0x4
    80007ddc:	c5050513          	addi	a0,a0,-944 # 8000ba28 <uart_tx_w>
    80007de0:	00063783          	ld	a5,0(a2)
    80007de4:	00053703          	ld	a4,0(a0)
    80007de8:	04f70263          	beq	a4,a5,80007e2c <uartstart+0x68>
    80007dec:	100005b7          	lui	a1,0x10000
    80007df0:	00005817          	auipc	a6,0x5
    80007df4:	f3080813          	addi	a6,a6,-208 # 8000cd20 <uart_tx_buf>
    80007df8:	01c0006f          	j	80007e14 <uartstart+0x50>
    80007dfc:	0006c703          	lbu	a4,0(a3)
    80007e00:	00f63023          	sd	a5,0(a2)
    80007e04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e08:	00063783          	ld	a5,0(a2)
    80007e0c:	00053703          	ld	a4,0(a0)
    80007e10:	00f70e63          	beq	a4,a5,80007e2c <uartstart+0x68>
    80007e14:	01f7f713          	andi	a4,a5,31
    80007e18:	00e806b3          	add	a3,a6,a4
    80007e1c:	0055c703          	lbu	a4,5(a1)
    80007e20:	00178793          	addi	a5,a5,1
    80007e24:	02077713          	andi	a4,a4,32
    80007e28:	fc071ae3          	bnez	a4,80007dfc <uartstart+0x38>
    80007e2c:	00813403          	ld	s0,8(sp)
    80007e30:	01010113          	addi	sp,sp,16
    80007e34:	00008067          	ret

0000000080007e38 <uartgetc>:
    80007e38:	ff010113          	addi	sp,sp,-16
    80007e3c:	00813423          	sd	s0,8(sp)
    80007e40:	01010413          	addi	s0,sp,16
    80007e44:	10000737          	lui	a4,0x10000
    80007e48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007e4c:	0017f793          	andi	a5,a5,1
    80007e50:	00078c63          	beqz	a5,80007e68 <uartgetc+0x30>
    80007e54:	00074503          	lbu	a0,0(a4)
    80007e58:	0ff57513          	andi	a0,a0,255
    80007e5c:	00813403          	ld	s0,8(sp)
    80007e60:	01010113          	addi	sp,sp,16
    80007e64:	00008067          	ret
    80007e68:	fff00513          	li	a0,-1
    80007e6c:	ff1ff06f          	j	80007e5c <uartgetc+0x24>

0000000080007e70 <uartintr>:
    80007e70:	100007b7          	lui	a5,0x10000
    80007e74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007e78:	0017f793          	andi	a5,a5,1
    80007e7c:	0a078463          	beqz	a5,80007f24 <uartintr+0xb4>
    80007e80:	fe010113          	addi	sp,sp,-32
    80007e84:	00813823          	sd	s0,16(sp)
    80007e88:	00913423          	sd	s1,8(sp)
    80007e8c:	00113c23          	sd	ra,24(sp)
    80007e90:	02010413          	addi	s0,sp,32
    80007e94:	100004b7          	lui	s1,0x10000
    80007e98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007e9c:	0ff57513          	andi	a0,a0,255
    80007ea0:	fffff097          	auipc	ra,0xfffff
    80007ea4:	534080e7          	jalr	1332(ra) # 800073d4 <consoleintr>
    80007ea8:	0054c783          	lbu	a5,5(s1)
    80007eac:	0017f793          	andi	a5,a5,1
    80007eb0:	fe0794e3          	bnez	a5,80007e98 <uartintr+0x28>
    80007eb4:	00004617          	auipc	a2,0x4
    80007eb8:	b6c60613          	addi	a2,a2,-1172 # 8000ba20 <uart_tx_r>
    80007ebc:	00004517          	auipc	a0,0x4
    80007ec0:	b6c50513          	addi	a0,a0,-1172 # 8000ba28 <uart_tx_w>
    80007ec4:	00063783          	ld	a5,0(a2)
    80007ec8:	00053703          	ld	a4,0(a0)
    80007ecc:	04f70263          	beq	a4,a5,80007f10 <uartintr+0xa0>
    80007ed0:	100005b7          	lui	a1,0x10000
    80007ed4:	00005817          	auipc	a6,0x5
    80007ed8:	e4c80813          	addi	a6,a6,-436 # 8000cd20 <uart_tx_buf>
    80007edc:	01c0006f          	j	80007ef8 <uartintr+0x88>
    80007ee0:	0006c703          	lbu	a4,0(a3)
    80007ee4:	00f63023          	sd	a5,0(a2)
    80007ee8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007eec:	00063783          	ld	a5,0(a2)
    80007ef0:	00053703          	ld	a4,0(a0)
    80007ef4:	00f70e63          	beq	a4,a5,80007f10 <uartintr+0xa0>
    80007ef8:	01f7f713          	andi	a4,a5,31
    80007efc:	00e806b3          	add	a3,a6,a4
    80007f00:	0055c703          	lbu	a4,5(a1)
    80007f04:	00178793          	addi	a5,a5,1
    80007f08:	02077713          	andi	a4,a4,32
    80007f0c:	fc071ae3          	bnez	a4,80007ee0 <uartintr+0x70>
    80007f10:	01813083          	ld	ra,24(sp)
    80007f14:	01013403          	ld	s0,16(sp)
    80007f18:	00813483          	ld	s1,8(sp)
    80007f1c:	02010113          	addi	sp,sp,32
    80007f20:	00008067          	ret
    80007f24:	00004617          	auipc	a2,0x4
    80007f28:	afc60613          	addi	a2,a2,-1284 # 8000ba20 <uart_tx_r>
    80007f2c:	00004517          	auipc	a0,0x4
    80007f30:	afc50513          	addi	a0,a0,-1284 # 8000ba28 <uart_tx_w>
    80007f34:	00063783          	ld	a5,0(a2)
    80007f38:	00053703          	ld	a4,0(a0)
    80007f3c:	04f70263          	beq	a4,a5,80007f80 <uartintr+0x110>
    80007f40:	100005b7          	lui	a1,0x10000
    80007f44:	00005817          	auipc	a6,0x5
    80007f48:	ddc80813          	addi	a6,a6,-548 # 8000cd20 <uart_tx_buf>
    80007f4c:	01c0006f          	j	80007f68 <uartintr+0xf8>
    80007f50:	0006c703          	lbu	a4,0(a3)
    80007f54:	00f63023          	sd	a5,0(a2)
    80007f58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f5c:	00063783          	ld	a5,0(a2)
    80007f60:	00053703          	ld	a4,0(a0)
    80007f64:	02f70063          	beq	a4,a5,80007f84 <uartintr+0x114>
    80007f68:	01f7f713          	andi	a4,a5,31
    80007f6c:	00e806b3          	add	a3,a6,a4
    80007f70:	0055c703          	lbu	a4,5(a1)
    80007f74:	00178793          	addi	a5,a5,1
    80007f78:	02077713          	andi	a4,a4,32
    80007f7c:	fc071ae3          	bnez	a4,80007f50 <uartintr+0xe0>
    80007f80:	00008067          	ret
    80007f84:	00008067          	ret

0000000080007f88 <kinit>:
    80007f88:	fc010113          	addi	sp,sp,-64
    80007f8c:	02913423          	sd	s1,40(sp)
    80007f90:	fffff7b7          	lui	a5,0xfffff
    80007f94:	00006497          	auipc	s1,0x6
    80007f98:	dab48493          	addi	s1,s1,-597 # 8000dd3f <end+0xfff>
    80007f9c:	02813823          	sd	s0,48(sp)
    80007fa0:	01313c23          	sd	s3,24(sp)
    80007fa4:	00f4f4b3          	and	s1,s1,a5
    80007fa8:	02113c23          	sd	ra,56(sp)
    80007fac:	03213023          	sd	s2,32(sp)
    80007fb0:	01413823          	sd	s4,16(sp)
    80007fb4:	01513423          	sd	s5,8(sp)
    80007fb8:	04010413          	addi	s0,sp,64
    80007fbc:	000017b7          	lui	a5,0x1
    80007fc0:	01100993          	li	s3,17
    80007fc4:	00f487b3          	add	a5,s1,a5
    80007fc8:	01b99993          	slli	s3,s3,0x1b
    80007fcc:	06f9e063          	bltu	s3,a5,8000802c <kinit+0xa4>
    80007fd0:	00005a97          	auipc	s5,0x5
    80007fd4:	d70a8a93          	addi	s5,s5,-656 # 8000cd40 <end>
    80007fd8:	0754ec63          	bltu	s1,s5,80008050 <kinit+0xc8>
    80007fdc:	0734fa63          	bgeu	s1,s3,80008050 <kinit+0xc8>
    80007fe0:	00088a37          	lui	s4,0x88
    80007fe4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007fe8:	00004917          	auipc	s2,0x4
    80007fec:	a4890913          	addi	s2,s2,-1464 # 8000ba30 <kmem>
    80007ff0:	00ca1a13          	slli	s4,s4,0xc
    80007ff4:	0140006f          	j	80008008 <kinit+0x80>
    80007ff8:	000017b7          	lui	a5,0x1
    80007ffc:	00f484b3          	add	s1,s1,a5
    80008000:	0554e863          	bltu	s1,s5,80008050 <kinit+0xc8>
    80008004:	0534f663          	bgeu	s1,s3,80008050 <kinit+0xc8>
    80008008:	00001637          	lui	a2,0x1
    8000800c:	00100593          	li	a1,1
    80008010:	00048513          	mv	a0,s1
    80008014:	00000097          	auipc	ra,0x0
    80008018:	5e4080e7          	jalr	1508(ra) # 800085f8 <__memset>
    8000801c:	00093783          	ld	a5,0(s2)
    80008020:	00f4b023          	sd	a5,0(s1)
    80008024:	00993023          	sd	s1,0(s2)
    80008028:	fd4498e3          	bne	s1,s4,80007ff8 <kinit+0x70>
    8000802c:	03813083          	ld	ra,56(sp)
    80008030:	03013403          	ld	s0,48(sp)
    80008034:	02813483          	ld	s1,40(sp)
    80008038:	02013903          	ld	s2,32(sp)
    8000803c:	01813983          	ld	s3,24(sp)
    80008040:	01013a03          	ld	s4,16(sp)
    80008044:	00813a83          	ld	s5,8(sp)
    80008048:	04010113          	addi	sp,sp,64
    8000804c:	00008067          	ret
    80008050:	00001517          	auipc	a0,0x1
    80008054:	53050513          	addi	a0,a0,1328 # 80009580 <digits+0x18>
    80008058:	fffff097          	auipc	ra,0xfffff
    8000805c:	4b4080e7          	jalr	1204(ra) # 8000750c <panic>

0000000080008060 <freerange>:
    80008060:	fc010113          	addi	sp,sp,-64
    80008064:	000017b7          	lui	a5,0x1
    80008068:	02913423          	sd	s1,40(sp)
    8000806c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008070:	009504b3          	add	s1,a0,s1
    80008074:	fffff537          	lui	a0,0xfffff
    80008078:	02813823          	sd	s0,48(sp)
    8000807c:	02113c23          	sd	ra,56(sp)
    80008080:	03213023          	sd	s2,32(sp)
    80008084:	01313c23          	sd	s3,24(sp)
    80008088:	01413823          	sd	s4,16(sp)
    8000808c:	01513423          	sd	s5,8(sp)
    80008090:	01613023          	sd	s6,0(sp)
    80008094:	04010413          	addi	s0,sp,64
    80008098:	00a4f4b3          	and	s1,s1,a0
    8000809c:	00f487b3          	add	a5,s1,a5
    800080a0:	06f5e463          	bltu	a1,a5,80008108 <freerange+0xa8>
    800080a4:	00005a97          	auipc	s5,0x5
    800080a8:	c9ca8a93          	addi	s5,s5,-868 # 8000cd40 <end>
    800080ac:	0954e263          	bltu	s1,s5,80008130 <freerange+0xd0>
    800080b0:	01100993          	li	s3,17
    800080b4:	01b99993          	slli	s3,s3,0x1b
    800080b8:	0734fc63          	bgeu	s1,s3,80008130 <freerange+0xd0>
    800080bc:	00058a13          	mv	s4,a1
    800080c0:	00004917          	auipc	s2,0x4
    800080c4:	97090913          	addi	s2,s2,-1680 # 8000ba30 <kmem>
    800080c8:	00002b37          	lui	s6,0x2
    800080cc:	0140006f          	j	800080e0 <freerange+0x80>
    800080d0:	000017b7          	lui	a5,0x1
    800080d4:	00f484b3          	add	s1,s1,a5
    800080d8:	0554ec63          	bltu	s1,s5,80008130 <freerange+0xd0>
    800080dc:	0534fa63          	bgeu	s1,s3,80008130 <freerange+0xd0>
    800080e0:	00001637          	lui	a2,0x1
    800080e4:	00100593          	li	a1,1
    800080e8:	00048513          	mv	a0,s1
    800080ec:	00000097          	auipc	ra,0x0
    800080f0:	50c080e7          	jalr	1292(ra) # 800085f8 <__memset>
    800080f4:	00093703          	ld	a4,0(s2)
    800080f8:	016487b3          	add	a5,s1,s6
    800080fc:	00e4b023          	sd	a4,0(s1)
    80008100:	00993023          	sd	s1,0(s2)
    80008104:	fcfa76e3          	bgeu	s4,a5,800080d0 <freerange+0x70>
    80008108:	03813083          	ld	ra,56(sp)
    8000810c:	03013403          	ld	s0,48(sp)
    80008110:	02813483          	ld	s1,40(sp)
    80008114:	02013903          	ld	s2,32(sp)
    80008118:	01813983          	ld	s3,24(sp)
    8000811c:	01013a03          	ld	s4,16(sp)
    80008120:	00813a83          	ld	s5,8(sp)
    80008124:	00013b03          	ld	s6,0(sp)
    80008128:	04010113          	addi	sp,sp,64
    8000812c:	00008067          	ret
    80008130:	00001517          	auipc	a0,0x1
    80008134:	45050513          	addi	a0,a0,1104 # 80009580 <digits+0x18>
    80008138:	fffff097          	auipc	ra,0xfffff
    8000813c:	3d4080e7          	jalr	980(ra) # 8000750c <panic>

0000000080008140 <kfree>:
    80008140:	fe010113          	addi	sp,sp,-32
    80008144:	00813823          	sd	s0,16(sp)
    80008148:	00113c23          	sd	ra,24(sp)
    8000814c:	00913423          	sd	s1,8(sp)
    80008150:	02010413          	addi	s0,sp,32
    80008154:	03451793          	slli	a5,a0,0x34
    80008158:	04079c63          	bnez	a5,800081b0 <kfree+0x70>
    8000815c:	00005797          	auipc	a5,0x5
    80008160:	be478793          	addi	a5,a5,-1052 # 8000cd40 <end>
    80008164:	00050493          	mv	s1,a0
    80008168:	04f56463          	bltu	a0,a5,800081b0 <kfree+0x70>
    8000816c:	01100793          	li	a5,17
    80008170:	01b79793          	slli	a5,a5,0x1b
    80008174:	02f57e63          	bgeu	a0,a5,800081b0 <kfree+0x70>
    80008178:	00001637          	lui	a2,0x1
    8000817c:	00100593          	li	a1,1
    80008180:	00000097          	auipc	ra,0x0
    80008184:	478080e7          	jalr	1144(ra) # 800085f8 <__memset>
    80008188:	00004797          	auipc	a5,0x4
    8000818c:	8a878793          	addi	a5,a5,-1880 # 8000ba30 <kmem>
    80008190:	0007b703          	ld	a4,0(a5)
    80008194:	01813083          	ld	ra,24(sp)
    80008198:	01013403          	ld	s0,16(sp)
    8000819c:	00e4b023          	sd	a4,0(s1)
    800081a0:	0097b023          	sd	s1,0(a5)
    800081a4:	00813483          	ld	s1,8(sp)
    800081a8:	02010113          	addi	sp,sp,32
    800081ac:	00008067          	ret
    800081b0:	00001517          	auipc	a0,0x1
    800081b4:	3d050513          	addi	a0,a0,976 # 80009580 <digits+0x18>
    800081b8:	fffff097          	auipc	ra,0xfffff
    800081bc:	354080e7          	jalr	852(ra) # 8000750c <panic>

00000000800081c0 <kalloc>:
    800081c0:	fe010113          	addi	sp,sp,-32
    800081c4:	00813823          	sd	s0,16(sp)
    800081c8:	00913423          	sd	s1,8(sp)
    800081cc:	00113c23          	sd	ra,24(sp)
    800081d0:	02010413          	addi	s0,sp,32
    800081d4:	00004797          	auipc	a5,0x4
    800081d8:	85c78793          	addi	a5,a5,-1956 # 8000ba30 <kmem>
    800081dc:	0007b483          	ld	s1,0(a5)
    800081e0:	02048063          	beqz	s1,80008200 <kalloc+0x40>
    800081e4:	0004b703          	ld	a4,0(s1)
    800081e8:	00001637          	lui	a2,0x1
    800081ec:	00500593          	li	a1,5
    800081f0:	00048513          	mv	a0,s1
    800081f4:	00e7b023          	sd	a4,0(a5)
    800081f8:	00000097          	auipc	ra,0x0
    800081fc:	400080e7          	jalr	1024(ra) # 800085f8 <__memset>
    80008200:	01813083          	ld	ra,24(sp)
    80008204:	01013403          	ld	s0,16(sp)
    80008208:	00048513          	mv	a0,s1
    8000820c:	00813483          	ld	s1,8(sp)
    80008210:	02010113          	addi	sp,sp,32
    80008214:	00008067          	ret

0000000080008218 <initlock>:
    80008218:	ff010113          	addi	sp,sp,-16
    8000821c:	00813423          	sd	s0,8(sp)
    80008220:	01010413          	addi	s0,sp,16
    80008224:	00813403          	ld	s0,8(sp)
    80008228:	00b53423          	sd	a1,8(a0)
    8000822c:	00052023          	sw	zero,0(a0)
    80008230:	00053823          	sd	zero,16(a0)
    80008234:	01010113          	addi	sp,sp,16
    80008238:	00008067          	ret

000000008000823c <acquire>:
    8000823c:	fe010113          	addi	sp,sp,-32
    80008240:	00813823          	sd	s0,16(sp)
    80008244:	00913423          	sd	s1,8(sp)
    80008248:	00113c23          	sd	ra,24(sp)
    8000824c:	01213023          	sd	s2,0(sp)
    80008250:	02010413          	addi	s0,sp,32
    80008254:	00050493          	mv	s1,a0
    80008258:	10002973          	csrr	s2,sstatus
    8000825c:	100027f3          	csrr	a5,sstatus
    80008260:	ffd7f793          	andi	a5,a5,-3
    80008264:	10079073          	csrw	sstatus,a5
    80008268:	fffff097          	auipc	ra,0xfffff
    8000826c:	8ec080e7          	jalr	-1812(ra) # 80006b54 <mycpu>
    80008270:	07852783          	lw	a5,120(a0)
    80008274:	06078e63          	beqz	a5,800082f0 <acquire+0xb4>
    80008278:	fffff097          	auipc	ra,0xfffff
    8000827c:	8dc080e7          	jalr	-1828(ra) # 80006b54 <mycpu>
    80008280:	07852783          	lw	a5,120(a0)
    80008284:	0004a703          	lw	a4,0(s1)
    80008288:	0017879b          	addiw	a5,a5,1
    8000828c:	06f52c23          	sw	a5,120(a0)
    80008290:	04071063          	bnez	a4,800082d0 <acquire+0x94>
    80008294:	00100713          	li	a4,1
    80008298:	00070793          	mv	a5,a4
    8000829c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800082a0:	0007879b          	sext.w	a5,a5
    800082a4:	fe079ae3          	bnez	a5,80008298 <acquire+0x5c>
    800082a8:	0ff0000f          	fence
    800082ac:	fffff097          	auipc	ra,0xfffff
    800082b0:	8a8080e7          	jalr	-1880(ra) # 80006b54 <mycpu>
    800082b4:	01813083          	ld	ra,24(sp)
    800082b8:	01013403          	ld	s0,16(sp)
    800082bc:	00a4b823          	sd	a0,16(s1)
    800082c0:	00013903          	ld	s2,0(sp)
    800082c4:	00813483          	ld	s1,8(sp)
    800082c8:	02010113          	addi	sp,sp,32
    800082cc:	00008067          	ret
    800082d0:	0104b903          	ld	s2,16(s1)
    800082d4:	fffff097          	auipc	ra,0xfffff
    800082d8:	880080e7          	jalr	-1920(ra) # 80006b54 <mycpu>
    800082dc:	faa91ce3          	bne	s2,a0,80008294 <acquire+0x58>
    800082e0:	00001517          	auipc	a0,0x1
    800082e4:	2a850513          	addi	a0,a0,680 # 80009588 <digits+0x20>
    800082e8:	fffff097          	auipc	ra,0xfffff
    800082ec:	224080e7          	jalr	548(ra) # 8000750c <panic>
    800082f0:	00195913          	srli	s2,s2,0x1
    800082f4:	fffff097          	auipc	ra,0xfffff
    800082f8:	860080e7          	jalr	-1952(ra) # 80006b54 <mycpu>
    800082fc:	00197913          	andi	s2,s2,1
    80008300:	07252e23          	sw	s2,124(a0)
    80008304:	f75ff06f          	j	80008278 <acquire+0x3c>

0000000080008308 <release>:
    80008308:	fe010113          	addi	sp,sp,-32
    8000830c:	00813823          	sd	s0,16(sp)
    80008310:	00113c23          	sd	ra,24(sp)
    80008314:	00913423          	sd	s1,8(sp)
    80008318:	01213023          	sd	s2,0(sp)
    8000831c:	02010413          	addi	s0,sp,32
    80008320:	00052783          	lw	a5,0(a0)
    80008324:	00079a63          	bnez	a5,80008338 <release+0x30>
    80008328:	00001517          	auipc	a0,0x1
    8000832c:	26850513          	addi	a0,a0,616 # 80009590 <digits+0x28>
    80008330:	fffff097          	auipc	ra,0xfffff
    80008334:	1dc080e7          	jalr	476(ra) # 8000750c <panic>
    80008338:	01053903          	ld	s2,16(a0)
    8000833c:	00050493          	mv	s1,a0
    80008340:	fffff097          	auipc	ra,0xfffff
    80008344:	814080e7          	jalr	-2028(ra) # 80006b54 <mycpu>
    80008348:	fea910e3          	bne	s2,a0,80008328 <release+0x20>
    8000834c:	0004b823          	sd	zero,16(s1)
    80008350:	0ff0000f          	fence
    80008354:	0f50000f          	fence	iorw,ow
    80008358:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000835c:	ffffe097          	auipc	ra,0xffffe
    80008360:	7f8080e7          	jalr	2040(ra) # 80006b54 <mycpu>
    80008364:	100027f3          	csrr	a5,sstatus
    80008368:	0027f793          	andi	a5,a5,2
    8000836c:	04079a63          	bnez	a5,800083c0 <release+0xb8>
    80008370:	07852783          	lw	a5,120(a0)
    80008374:	02f05e63          	blez	a5,800083b0 <release+0xa8>
    80008378:	fff7871b          	addiw	a4,a5,-1
    8000837c:	06e52c23          	sw	a4,120(a0)
    80008380:	00071c63          	bnez	a4,80008398 <release+0x90>
    80008384:	07c52783          	lw	a5,124(a0)
    80008388:	00078863          	beqz	a5,80008398 <release+0x90>
    8000838c:	100027f3          	csrr	a5,sstatus
    80008390:	0027e793          	ori	a5,a5,2
    80008394:	10079073          	csrw	sstatus,a5
    80008398:	01813083          	ld	ra,24(sp)
    8000839c:	01013403          	ld	s0,16(sp)
    800083a0:	00813483          	ld	s1,8(sp)
    800083a4:	00013903          	ld	s2,0(sp)
    800083a8:	02010113          	addi	sp,sp,32
    800083ac:	00008067          	ret
    800083b0:	00001517          	auipc	a0,0x1
    800083b4:	20050513          	addi	a0,a0,512 # 800095b0 <digits+0x48>
    800083b8:	fffff097          	auipc	ra,0xfffff
    800083bc:	154080e7          	jalr	340(ra) # 8000750c <panic>
    800083c0:	00001517          	auipc	a0,0x1
    800083c4:	1d850513          	addi	a0,a0,472 # 80009598 <digits+0x30>
    800083c8:	fffff097          	auipc	ra,0xfffff
    800083cc:	144080e7          	jalr	324(ra) # 8000750c <panic>

00000000800083d0 <holding>:
    800083d0:	00052783          	lw	a5,0(a0)
    800083d4:	00079663          	bnez	a5,800083e0 <holding+0x10>
    800083d8:	00000513          	li	a0,0
    800083dc:	00008067          	ret
    800083e0:	fe010113          	addi	sp,sp,-32
    800083e4:	00813823          	sd	s0,16(sp)
    800083e8:	00913423          	sd	s1,8(sp)
    800083ec:	00113c23          	sd	ra,24(sp)
    800083f0:	02010413          	addi	s0,sp,32
    800083f4:	01053483          	ld	s1,16(a0)
    800083f8:	ffffe097          	auipc	ra,0xffffe
    800083fc:	75c080e7          	jalr	1884(ra) # 80006b54 <mycpu>
    80008400:	01813083          	ld	ra,24(sp)
    80008404:	01013403          	ld	s0,16(sp)
    80008408:	40a48533          	sub	a0,s1,a0
    8000840c:	00153513          	seqz	a0,a0
    80008410:	00813483          	ld	s1,8(sp)
    80008414:	02010113          	addi	sp,sp,32
    80008418:	00008067          	ret

000000008000841c <push_off>:
    8000841c:	fe010113          	addi	sp,sp,-32
    80008420:	00813823          	sd	s0,16(sp)
    80008424:	00113c23          	sd	ra,24(sp)
    80008428:	00913423          	sd	s1,8(sp)
    8000842c:	02010413          	addi	s0,sp,32
    80008430:	100024f3          	csrr	s1,sstatus
    80008434:	100027f3          	csrr	a5,sstatus
    80008438:	ffd7f793          	andi	a5,a5,-3
    8000843c:	10079073          	csrw	sstatus,a5
    80008440:	ffffe097          	auipc	ra,0xffffe
    80008444:	714080e7          	jalr	1812(ra) # 80006b54 <mycpu>
    80008448:	07852783          	lw	a5,120(a0)
    8000844c:	02078663          	beqz	a5,80008478 <push_off+0x5c>
    80008450:	ffffe097          	auipc	ra,0xffffe
    80008454:	704080e7          	jalr	1796(ra) # 80006b54 <mycpu>
    80008458:	07852783          	lw	a5,120(a0)
    8000845c:	01813083          	ld	ra,24(sp)
    80008460:	01013403          	ld	s0,16(sp)
    80008464:	0017879b          	addiw	a5,a5,1
    80008468:	06f52c23          	sw	a5,120(a0)
    8000846c:	00813483          	ld	s1,8(sp)
    80008470:	02010113          	addi	sp,sp,32
    80008474:	00008067          	ret
    80008478:	0014d493          	srli	s1,s1,0x1
    8000847c:	ffffe097          	auipc	ra,0xffffe
    80008480:	6d8080e7          	jalr	1752(ra) # 80006b54 <mycpu>
    80008484:	0014f493          	andi	s1,s1,1
    80008488:	06952e23          	sw	s1,124(a0)
    8000848c:	fc5ff06f          	j	80008450 <push_off+0x34>

0000000080008490 <pop_off>:
    80008490:	ff010113          	addi	sp,sp,-16
    80008494:	00813023          	sd	s0,0(sp)
    80008498:	00113423          	sd	ra,8(sp)
    8000849c:	01010413          	addi	s0,sp,16
    800084a0:	ffffe097          	auipc	ra,0xffffe
    800084a4:	6b4080e7          	jalr	1716(ra) # 80006b54 <mycpu>
    800084a8:	100027f3          	csrr	a5,sstatus
    800084ac:	0027f793          	andi	a5,a5,2
    800084b0:	04079663          	bnez	a5,800084fc <pop_off+0x6c>
    800084b4:	07852783          	lw	a5,120(a0)
    800084b8:	02f05a63          	blez	a5,800084ec <pop_off+0x5c>
    800084bc:	fff7871b          	addiw	a4,a5,-1
    800084c0:	06e52c23          	sw	a4,120(a0)
    800084c4:	00071c63          	bnez	a4,800084dc <pop_off+0x4c>
    800084c8:	07c52783          	lw	a5,124(a0)
    800084cc:	00078863          	beqz	a5,800084dc <pop_off+0x4c>
    800084d0:	100027f3          	csrr	a5,sstatus
    800084d4:	0027e793          	ori	a5,a5,2
    800084d8:	10079073          	csrw	sstatus,a5
    800084dc:	00813083          	ld	ra,8(sp)
    800084e0:	00013403          	ld	s0,0(sp)
    800084e4:	01010113          	addi	sp,sp,16
    800084e8:	00008067          	ret
    800084ec:	00001517          	auipc	a0,0x1
    800084f0:	0c450513          	addi	a0,a0,196 # 800095b0 <digits+0x48>
    800084f4:	fffff097          	auipc	ra,0xfffff
    800084f8:	018080e7          	jalr	24(ra) # 8000750c <panic>
    800084fc:	00001517          	auipc	a0,0x1
    80008500:	09c50513          	addi	a0,a0,156 # 80009598 <digits+0x30>
    80008504:	fffff097          	auipc	ra,0xfffff
    80008508:	008080e7          	jalr	8(ra) # 8000750c <panic>

000000008000850c <push_on>:
    8000850c:	fe010113          	addi	sp,sp,-32
    80008510:	00813823          	sd	s0,16(sp)
    80008514:	00113c23          	sd	ra,24(sp)
    80008518:	00913423          	sd	s1,8(sp)
    8000851c:	02010413          	addi	s0,sp,32
    80008520:	100024f3          	csrr	s1,sstatus
    80008524:	100027f3          	csrr	a5,sstatus
    80008528:	0027e793          	ori	a5,a5,2
    8000852c:	10079073          	csrw	sstatus,a5
    80008530:	ffffe097          	auipc	ra,0xffffe
    80008534:	624080e7          	jalr	1572(ra) # 80006b54 <mycpu>
    80008538:	07852783          	lw	a5,120(a0)
    8000853c:	02078663          	beqz	a5,80008568 <push_on+0x5c>
    80008540:	ffffe097          	auipc	ra,0xffffe
    80008544:	614080e7          	jalr	1556(ra) # 80006b54 <mycpu>
    80008548:	07852783          	lw	a5,120(a0)
    8000854c:	01813083          	ld	ra,24(sp)
    80008550:	01013403          	ld	s0,16(sp)
    80008554:	0017879b          	addiw	a5,a5,1
    80008558:	06f52c23          	sw	a5,120(a0)
    8000855c:	00813483          	ld	s1,8(sp)
    80008560:	02010113          	addi	sp,sp,32
    80008564:	00008067          	ret
    80008568:	0014d493          	srli	s1,s1,0x1
    8000856c:	ffffe097          	auipc	ra,0xffffe
    80008570:	5e8080e7          	jalr	1512(ra) # 80006b54 <mycpu>
    80008574:	0014f493          	andi	s1,s1,1
    80008578:	06952e23          	sw	s1,124(a0)
    8000857c:	fc5ff06f          	j	80008540 <push_on+0x34>

0000000080008580 <pop_on>:
    80008580:	ff010113          	addi	sp,sp,-16
    80008584:	00813023          	sd	s0,0(sp)
    80008588:	00113423          	sd	ra,8(sp)
    8000858c:	01010413          	addi	s0,sp,16
    80008590:	ffffe097          	auipc	ra,0xffffe
    80008594:	5c4080e7          	jalr	1476(ra) # 80006b54 <mycpu>
    80008598:	100027f3          	csrr	a5,sstatus
    8000859c:	0027f793          	andi	a5,a5,2
    800085a0:	04078463          	beqz	a5,800085e8 <pop_on+0x68>
    800085a4:	07852783          	lw	a5,120(a0)
    800085a8:	02f05863          	blez	a5,800085d8 <pop_on+0x58>
    800085ac:	fff7879b          	addiw	a5,a5,-1
    800085b0:	06f52c23          	sw	a5,120(a0)
    800085b4:	07853783          	ld	a5,120(a0)
    800085b8:	00079863          	bnez	a5,800085c8 <pop_on+0x48>
    800085bc:	100027f3          	csrr	a5,sstatus
    800085c0:	ffd7f793          	andi	a5,a5,-3
    800085c4:	10079073          	csrw	sstatus,a5
    800085c8:	00813083          	ld	ra,8(sp)
    800085cc:	00013403          	ld	s0,0(sp)
    800085d0:	01010113          	addi	sp,sp,16
    800085d4:	00008067          	ret
    800085d8:	00001517          	auipc	a0,0x1
    800085dc:	00050513          	mv	a0,a0
    800085e0:	fffff097          	auipc	ra,0xfffff
    800085e4:	f2c080e7          	jalr	-212(ra) # 8000750c <panic>
    800085e8:	00001517          	auipc	a0,0x1
    800085ec:	fd050513          	addi	a0,a0,-48 # 800095b8 <digits+0x50>
    800085f0:	fffff097          	auipc	ra,0xfffff
    800085f4:	f1c080e7          	jalr	-228(ra) # 8000750c <panic>

00000000800085f8 <__memset>:
    800085f8:	ff010113          	addi	sp,sp,-16
    800085fc:	00813423          	sd	s0,8(sp)
    80008600:	01010413          	addi	s0,sp,16
    80008604:	1a060e63          	beqz	a2,800087c0 <__memset+0x1c8>
    80008608:	40a007b3          	neg	a5,a0
    8000860c:	0077f793          	andi	a5,a5,7
    80008610:	00778693          	addi	a3,a5,7
    80008614:	00b00813          	li	a6,11
    80008618:	0ff5f593          	andi	a1,a1,255
    8000861c:	fff6071b          	addiw	a4,a2,-1
    80008620:	1b06e663          	bltu	a3,a6,800087cc <__memset+0x1d4>
    80008624:	1cd76463          	bltu	a4,a3,800087ec <__memset+0x1f4>
    80008628:	1a078e63          	beqz	a5,800087e4 <__memset+0x1ec>
    8000862c:	00b50023          	sb	a1,0(a0)
    80008630:	00100713          	li	a4,1
    80008634:	1ae78463          	beq	a5,a4,800087dc <__memset+0x1e4>
    80008638:	00b500a3          	sb	a1,1(a0)
    8000863c:	00200713          	li	a4,2
    80008640:	1ae78a63          	beq	a5,a4,800087f4 <__memset+0x1fc>
    80008644:	00b50123          	sb	a1,2(a0)
    80008648:	00300713          	li	a4,3
    8000864c:	18e78463          	beq	a5,a4,800087d4 <__memset+0x1dc>
    80008650:	00b501a3          	sb	a1,3(a0)
    80008654:	00400713          	li	a4,4
    80008658:	1ae78263          	beq	a5,a4,800087fc <__memset+0x204>
    8000865c:	00b50223          	sb	a1,4(a0)
    80008660:	00500713          	li	a4,5
    80008664:	1ae78063          	beq	a5,a4,80008804 <__memset+0x20c>
    80008668:	00b502a3          	sb	a1,5(a0)
    8000866c:	00700713          	li	a4,7
    80008670:	18e79e63          	bne	a5,a4,8000880c <__memset+0x214>
    80008674:	00b50323          	sb	a1,6(a0)
    80008678:	00700e93          	li	t4,7
    8000867c:	00859713          	slli	a4,a1,0x8
    80008680:	00e5e733          	or	a4,a1,a4
    80008684:	01059e13          	slli	t3,a1,0x10
    80008688:	01c76e33          	or	t3,a4,t3
    8000868c:	01859313          	slli	t1,a1,0x18
    80008690:	006e6333          	or	t1,t3,t1
    80008694:	02059893          	slli	a7,a1,0x20
    80008698:	40f60e3b          	subw	t3,a2,a5
    8000869c:	011368b3          	or	a7,t1,a7
    800086a0:	02859813          	slli	a6,a1,0x28
    800086a4:	0108e833          	or	a6,a7,a6
    800086a8:	03059693          	slli	a3,a1,0x30
    800086ac:	003e589b          	srliw	a7,t3,0x3
    800086b0:	00d866b3          	or	a3,a6,a3
    800086b4:	03859713          	slli	a4,a1,0x38
    800086b8:	00389813          	slli	a6,a7,0x3
    800086bc:	00f507b3          	add	a5,a0,a5
    800086c0:	00e6e733          	or	a4,a3,a4
    800086c4:	000e089b          	sext.w	a7,t3
    800086c8:	00f806b3          	add	a3,a6,a5
    800086cc:	00e7b023          	sd	a4,0(a5)
    800086d0:	00878793          	addi	a5,a5,8
    800086d4:	fed79ce3          	bne	a5,a3,800086cc <__memset+0xd4>
    800086d8:	ff8e7793          	andi	a5,t3,-8
    800086dc:	0007871b          	sext.w	a4,a5
    800086e0:	01d787bb          	addw	a5,a5,t4
    800086e4:	0ce88e63          	beq	a7,a4,800087c0 <__memset+0x1c8>
    800086e8:	00f50733          	add	a4,a0,a5
    800086ec:	00b70023          	sb	a1,0(a4)
    800086f0:	0017871b          	addiw	a4,a5,1
    800086f4:	0cc77663          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    800086f8:	00e50733          	add	a4,a0,a4
    800086fc:	00b70023          	sb	a1,0(a4)
    80008700:	0027871b          	addiw	a4,a5,2
    80008704:	0ac77e63          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    80008708:	00e50733          	add	a4,a0,a4
    8000870c:	00b70023          	sb	a1,0(a4)
    80008710:	0037871b          	addiw	a4,a5,3
    80008714:	0ac77663          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    80008718:	00e50733          	add	a4,a0,a4
    8000871c:	00b70023          	sb	a1,0(a4)
    80008720:	0047871b          	addiw	a4,a5,4
    80008724:	08c77e63          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    80008728:	00e50733          	add	a4,a0,a4
    8000872c:	00b70023          	sb	a1,0(a4)
    80008730:	0057871b          	addiw	a4,a5,5
    80008734:	08c77663          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    80008738:	00e50733          	add	a4,a0,a4
    8000873c:	00b70023          	sb	a1,0(a4)
    80008740:	0067871b          	addiw	a4,a5,6
    80008744:	06c77e63          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    80008748:	00e50733          	add	a4,a0,a4
    8000874c:	00b70023          	sb	a1,0(a4)
    80008750:	0077871b          	addiw	a4,a5,7
    80008754:	06c77663          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    80008758:	00e50733          	add	a4,a0,a4
    8000875c:	00b70023          	sb	a1,0(a4)
    80008760:	0087871b          	addiw	a4,a5,8
    80008764:	04c77e63          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    80008768:	00e50733          	add	a4,a0,a4
    8000876c:	00b70023          	sb	a1,0(a4)
    80008770:	0097871b          	addiw	a4,a5,9
    80008774:	04c77663          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    80008778:	00e50733          	add	a4,a0,a4
    8000877c:	00b70023          	sb	a1,0(a4)
    80008780:	00a7871b          	addiw	a4,a5,10
    80008784:	02c77e63          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    80008788:	00e50733          	add	a4,a0,a4
    8000878c:	00b70023          	sb	a1,0(a4)
    80008790:	00b7871b          	addiw	a4,a5,11
    80008794:	02c77663          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    80008798:	00e50733          	add	a4,a0,a4
    8000879c:	00b70023          	sb	a1,0(a4)
    800087a0:	00c7871b          	addiw	a4,a5,12
    800087a4:	00c77e63          	bgeu	a4,a2,800087c0 <__memset+0x1c8>
    800087a8:	00e50733          	add	a4,a0,a4
    800087ac:	00b70023          	sb	a1,0(a4)
    800087b0:	00d7879b          	addiw	a5,a5,13
    800087b4:	00c7f663          	bgeu	a5,a2,800087c0 <__memset+0x1c8>
    800087b8:	00f507b3          	add	a5,a0,a5
    800087bc:	00b78023          	sb	a1,0(a5)
    800087c0:	00813403          	ld	s0,8(sp)
    800087c4:	01010113          	addi	sp,sp,16
    800087c8:	00008067          	ret
    800087cc:	00b00693          	li	a3,11
    800087d0:	e55ff06f          	j	80008624 <__memset+0x2c>
    800087d4:	00300e93          	li	t4,3
    800087d8:	ea5ff06f          	j	8000867c <__memset+0x84>
    800087dc:	00100e93          	li	t4,1
    800087e0:	e9dff06f          	j	8000867c <__memset+0x84>
    800087e4:	00000e93          	li	t4,0
    800087e8:	e95ff06f          	j	8000867c <__memset+0x84>
    800087ec:	00000793          	li	a5,0
    800087f0:	ef9ff06f          	j	800086e8 <__memset+0xf0>
    800087f4:	00200e93          	li	t4,2
    800087f8:	e85ff06f          	j	8000867c <__memset+0x84>
    800087fc:	00400e93          	li	t4,4
    80008800:	e7dff06f          	j	8000867c <__memset+0x84>
    80008804:	00500e93          	li	t4,5
    80008808:	e75ff06f          	j	8000867c <__memset+0x84>
    8000880c:	00600e93          	li	t4,6
    80008810:	e6dff06f          	j	8000867c <__memset+0x84>

0000000080008814 <__memmove>:
    80008814:	ff010113          	addi	sp,sp,-16
    80008818:	00813423          	sd	s0,8(sp)
    8000881c:	01010413          	addi	s0,sp,16
    80008820:	0e060863          	beqz	a2,80008910 <__memmove+0xfc>
    80008824:	fff6069b          	addiw	a3,a2,-1
    80008828:	0006881b          	sext.w	a6,a3
    8000882c:	0ea5e863          	bltu	a1,a0,8000891c <__memmove+0x108>
    80008830:	00758713          	addi	a4,a1,7
    80008834:	00a5e7b3          	or	a5,a1,a0
    80008838:	40a70733          	sub	a4,a4,a0
    8000883c:	0077f793          	andi	a5,a5,7
    80008840:	00f73713          	sltiu	a4,a4,15
    80008844:	00174713          	xori	a4,a4,1
    80008848:	0017b793          	seqz	a5,a5
    8000884c:	00e7f7b3          	and	a5,a5,a4
    80008850:	10078863          	beqz	a5,80008960 <__memmove+0x14c>
    80008854:	00900793          	li	a5,9
    80008858:	1107f463          	bgeu	a5,a6,80008960 <__memmove+0x14c>
    8000885c:	0036581b          	srliw	a6,a2,0x3
    80008860:	fff8081b          	addiw	a6,a6,-1
    80008864:	02081813          	slli	a6,a6,0x20
    80008868:	01d85893          	srli	a7,a6,0x1d
    8000886c:	00858813          	addi	a6,a1,8
    80008870:	00058793          	mv	a5,a1
    80008874:	00050713          	mv	a4,a0
    80008878:	01088833          	add	a6,a7,a6
    8000887c:	0007b883          	ld	a7,0(a5)
    80008880:	00878793          	addi	a5,a5,8
    80008884:	00870713          	addi	a4,a4,8
    80008888:	ff173c23          	sd	a7,-8(a4)
    8000888c:	ff0798e3          	bne	a5,a6,8000887c <__memmove+0x68>
    80008890:	ff867713          	andi	a4,a2,-8
    80008894:	02071793          	slli	a5,a4,0x20
    80008898:	0207d793          	srli	a5,a5,0x20
    8000889c:	00f585b3          	add	a1,a1,a5
    800088a0:	40e686bb          	subw	a3,a3,a4
    800088a4:	00f507b3          	add	a5,a0,a5
    800088a8:	06e60463          	beq	a2,a4,80008910 <__memmove+0xfc>
    800088ac:	0005c703          	lbu	a4,0(a1)
    800088b0:	00e78023          	sb	a4,0(a5)
    800088b4:	04068e63          	beqz	a3,80008910 <__memmove+0xfc>
    800088b8:	0015c603          	lbu	a2,1(a1)
    800088bc:	00100713          	li	a4,1
    800088c0:	00c780a3          	sb	a2,1(a5)
    800088c4:	04e68663          	beq	a3,a4,80008910 <__memmove+0xfc>
    800088c8:	0025c603          	lbu	a2,2(a1)
    800088cc:	00200713          	li	a4,2
    800088d0:	00c78123          	sb	a2,2(a5)
    800088d4:	02e68e63          	beq	a3,a4,80008910 <__memmove+0xfc>
    800088d8:	0035c603          	lbu	a2,3(a1)
    800088dc:	00300713          	li	a4,3
    800088e0:	00c781a3          	sb	a2,3(a5)
    800088e4:	02e68663          	beq	a3,a4,80008910 <__memmove+0xfc>
    800088e8:	0045c603          	lbu	a2,4(a1)
    800088ec:	00400713          	li	a4,4
    800088f0:	00c78223          	sb	a2,4(a5)
    800088f4:	00e68e63          	beq	a3,a4,80008910 <__memmove+0xfc>
    800088f8:	0055c603          	lbu	a2,5(a1)
    800088fc:	00500713          	li	a4,5
    80008900:	00c782a3          	sb	a2,5(a5)
    80008904:	00e68663          	beq	a3,a4,80008910 <__memmove+0xfc>
    80008908:	0065c703          	lbu	a4,6(a1)
    8000890c:	00e78323          	sb	a4,6(a5)
    80008910:	00813403          	ld	s0,8(sp)
    80008914:	01010113          	addi	sp,sp,16
    80008918:	00008067          	ret
    8000891c:	02061713          	slli	a4,a2,0x20
    80008920:	02075713          	srli	a4,a4,0x20
    80008924:	00e587b3          	add	a5,a1,a4
    80008928:	f0f574e3          	bgeu	a0,a5,80008830 <__memmove+0x1c>
    8000892c:	02069613          	slli	a2,a3,0x20
    80008930:	02065613          	srli	a2,a2,0x20
    80008934:	fff64613          	not	a2,a2
    80008938:	00e50733          	add	a4,a0,a4
    8000893c:	00c78633          	add	a2,a5,a2
    80008940:	fff7c683          	lbu	a3,-1(a5)
    80008944:	fff78793          	addi	a5,a5,-1
    80008948:	fff70713          	addi	a4,a4,-1
    8000894c:	00d70023          	sb	a3,0(a4)
    80008950:	fec798e3          	bne	a5,a2,80008940 <__memmove+0x12c>
    80008954:	00813403          	ld	s0,8(sp)
    80008958:	01010113          	addi	sp,sp,16
    8000895c:	00008067          	ret
    80008960:	02069713          	slli	a4,a3,0x20
    80008964:	02075713          	srli	a4,a4,0x20
    80008968:	00170713          	addi	a4,a4,1
    8000896c:	00e50733          	add	a4,a0,a4
    80008970:	00050793          	mv	a5,a0
    80008974:	0005c683          	lbu	a3,0(a1)
    80008978:	00178793          	addi	a5,a5,1
    8000897c:	00158593          	addi	a1,a1,1
    80008980:	fed78fa3          	sb	a3,-1(a5)
    80008984:	fee798e3          	bne	a5,a4,80008974 <__memmove+0x160>
    80008988:	f89ff06f          	j	80008910 <__memmove+0xfc>

000000008000898c <__putc>:
    8000898c:	fe010113          	addi	sp,sp,-32
    80008990:	00813823          	sd	s0,16(sp)
    80008994:	00113c23          	sd	ra,24(sp)
    80008998:	02010413          	addi	s0,sp,32
    8000899c:	00050793          	mv	a5,a0
    800089a0:	fef40593          	addi	a1,s0,-17
    800089a4:	00100613          	li	a2,1
    800089a8:	00000513          	li	a0,0
    800089ac:	fef407a3          	sb	a5,-17(s0)
    800089b0:	fffff097          	auipc	ra,0xfffff
    800089b4:	b3c080e7          	jalr	-1220(ra) # 800074ec <console_write>
    800089b8:	01813083          	ld	ra,24(sp)
    800089bc:	01013403          	ld	s0,16(sp)
    800089c0:	02010113          	addi	sp,sp,32
    800089c4:	00008067          	ret

00000000800089c8 <__getc>:
    800089c8:	fe010113          	addi	sp,sp,-32
    800089cc:	00813823          	sd	s0,16(sp)
    800089d0:	00113c23          	sd	ra,24(sp)
    800089d4:	02010413          	addi	s0,sp,32
    800089d8:	fe840593          	addi	a1,s0,-24
    800089dc:	00100613          	li	a2,1
    800089e0:	00000513          	li	a0,0
    800089e4:	fffff097          	auipc	ra,0xfffff
    800089e8:	ae8080e7          	jalr	-1304(ra) # 800074cc <console_read>
    800089ec:	fe844503          	lbu	a0,-24(s0)
    800089f0:	01813083          	ld	ra,24(sp)
    800089f4:	01013403          	ld	s0,16(sp)
    800089f8:	02010113          	addi	sp,sp,32
    800089fc:	00008067          	ret

0000000080008a00 <console_handler>:
    80008a00:	fe010113          	addi	sp,sp,-32
    80008a04:	00813823          	sd	s0,16(sp)
    80008a08:	00113c23          	sd	ra,24(sp)
    80008a0c:	00913423          	sd	s1,8(sp)
    80008a10:	02010413          	addi	s0,sp,32
    80008a14:	14202773          	csrr	a4,scause
    80008a18:	100027f3          	csrr	a5,sstatus
    80008a1c:	0027f793          	andi	a5,a5,2
    80008a20:	06079e63          	bnez	a5,80008a9c <console_handler+0x9c>
    80008a24:	00074c63          	bltz	a4,80008a3c <console_handler+0x3c>
    80008a28:	01813083          	ld	ra,24(sp)
    80008a2c:	01013403          	ld	s0,16(sp)
    80008a30:	00813483          	ld	s1,8(sp)
    80008a34:	02010113          	addi	sp,sp,32
    80008a38:	00008067          	ret
    80008a3c:	0ff77713          	andi	a4,a4,255
    80008a40:	00900793          	li	a5,9
    80008a44:	fef712e3          	bne	a4,a5,80008a28 <console_handler+0x28>
    80008a48:	ffffe097          	auipc	ra,0xffffe
    80008a4c:	6dc080e7          	jalr	1756(ra) # 80007124 <plic_claim>
    80008a50:	00a00793          	li	a5,10
    80008a54:	00050493          	mv	s1,a0
    80008a58:	02f50c63          	beq	a0,a5,80008a90 <console_handler+0x90>
    80008a5c:	fc0506e3          	beqz	a0,80008a28 <console_handler+0x28>
    80008a60:	00050593          	mv	a1,a0
    80008a64:	00001517          	auipc	a0,0x1
    80008a68:	a7c50513          	addi	a0,a0,-1412 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80008a6c:	fffff097          	auipc	ra,0xfffff
    80008a70:	afc080e7          	jalr	-1284(ra) # 80007568 <__printf>
    80008a74:	01013403          	ld	s0,16(sp)
    80008a78:	01813083          	ld	ra,24(sp)
    80008a7c:	00048513          	mv	a0,s1
    80008a80:	00813483          	ld	s1,8(sp)
    80008a84:	02010113          	addi	sp,sp,32
    80008a88:	ffffe317          	auipc	t1,0xffffe
    80008a8c:	6d430067          	jr	1748(t1) # 8000715c <plic_complete>
    80008a90:	fffff097          	auipc	ra,0xfffff
    80008a94:	3e0080e7          	jalr	992(ra) # 80007e70 <uartintr>
    80008a98:	fddff06f          	j	80008a74 <console_handler+0x74>
    80008a9c:	00001517          	auipc	a0,0x1
    80008aa0:	b4450513          	addi	a0,a0,-1212 # 800095e0 <digits+0x78>
    80008aa4:	fffff097          	auipc	ra,0xfffff
    80008aa8:	a68080e7          	jalr	-1432(ra) # 8000750c <panic>
	...
