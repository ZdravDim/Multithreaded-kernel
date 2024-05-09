
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	9f813103          	ld	sp,-1544(sp) # 8000b9f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	105060ef          	jal	ra,80006920 <start>

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
    80001080:	625010ef          	jal	ra,80002ea4 <_ZN5RiscV22handle_supervisor_trapEv>

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
    800016bc:	0e878793          	addi	a5,a5,232 # 8000b7a0 <_ZTV3Sem+0x10>
    800016c0:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    800016c4:	00850513          	addi	a0,a0,8
    800016c8:	00002097          	auipc	ra,0x2
    800016cc:	bc0080e7          	jalr	-1088(ra) # 80003288 <_ZN10ThreadList4freeEv>
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
    80001750:	05478793          	addi	a5,a5,84 # 8000b7a0 <_ZTV3Sem+0x10>
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
    800017d0:	23c93903          	ld	s2,572(s2) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x30>
    800017d4:	00093483          	ld	s1,0(s2)
    blocked_threads.push_back(old);
    800017d8:	00048593          	mv	a1,s1
    800017dc:	00850513          	addi	a0,a0,8
    800017e0:	00002097          	auipc	ra,0x2
    800017e4:	968080e7          	jalr	-1688(ra) # 80003148 <_ZN10ThreadList9push_backEP3TCB>
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
    800018a8:	850080e7          	jalr	-1968(ra) # 800030f4 <_ZN10ThreadList9get_firstEv>
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
        time_sleep(1);
    80001974:	00100513          	li	a0,1
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	c5c080e7          	jalr	-932(ra) # 800015d4 <_Z10time_sleepm>
        __putc('A');
    80001980:	04100513          	li	a0,65
    80001984:	00007097          	auipc	ra,0x7
    80001988:	058080e7          	jalr	88(ra) # 800089dc <__putc>
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
        time_sleep(2);
    800019a0:	00200513          	li	a0,2
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	c30080e7          	jalr	-976(ra) # 800015d4 <_Z10time_sleepm>
        __putc('B');
    800019ac:	04200513          	li	a0,66
    800019b0:	00007097          	auipc	ra,0x7
    800019b4:	02c080e7          	jalr	44(ra) # 800089dc <__putc>
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
    800019e4:	ffc080e7          	jalr	-4(ra) # 800089dc <__putc>
    __putc('N');
    800019e8:	04e00513          	li	a0,78
    800019ec:	00007097          	auipc	ra,0x7
    800019f0:	ff0080e7          	jalr	-16(ra) # 800089dc <__putc>
    __putc(':');
    800019f4:	03a00513          	li	a0,58
    800019f8:	00007097          	auipc	ra,0x7
    800019fc:	fe4080e7          	jalr	-28(ra) # 800089dc <__putc>
    __putc(' ');
    80001a00:	02000513          	li	a0,32
    80001a04:	00007097          	auipc	ra,0x7
    80001a08:	fd8080e7          	jalr	-40(ra) # 800089dc <__putc>
    if (!num) __putc('0');
    80001a0c:	00090863          	beqz	s2,80001a1c <printNumber+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001a10:	00000993          	li	s3,0
    80001a14:	00000493          	li	s1,0
    80001a18:	01c0006f          	j	80001a34 <printNumber+0x78>
    if (!num) __putc('0');
    80001a1c:	03000513          	li	a0,48
    80001a20:	00007097          	auipc	ra,0x7
    80001a24:	fbc080e7          	jalr	-68(ra) # 800089dc <__putc>
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
    80001a70:	f70080e7          	jalr	-144(ra) # 800089dc <__putc>
        num2 /= 10;
    80001a74:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001a78:	fe5ff06f          	j	80001a5c <printNumber+0xa0>
    while (zero_count--) __putc('0');
    80001a7c:	fff98493          	addi	s1,s3,-1
    80001a80:	00098c63          	beqz	s3,80001a98 <printNumber+0xdc>
    80001a84:	03000513          	li	a0,48
    80001a88:	00007097          	auipc	ra,0x7
    80001a8c:	f54080e7          	jalr	-172(ra) # 800089dc <__putc>
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
    80001b24:	ebc080e7          	jalr	-324(ra) # 800089dc <__putc>
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
    80001b54:	e8c080e7          	jalr	-372(ra) # 800089dc <__putc>
    80001b58:	fd5ff06f          	j	80001b2c <_Z19testMemoryAllocatorv+0x78>
    if (s2 == -3) __putc('G'); /// same
    80001b5c:	04700513          	li	a0,71
    80001b60:	00007097          	auipc	ra,0x7
    80001b64:	e7c080e7          	jalr	-388(ra) # 800089dc <__putc>
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
    80001bf4:	e187b783          	ld	a5,-488(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bf8:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001bfc:	00200793          	li	a5,2
    80001c00:	1007a073          	csrs	sstatus,a5

    /// Enable software interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    thread_create(&threads[1], workerA, nullptr);
    80001c04:	00000613          	li	a2,0
    80001c08:	00000597          	auipc	a1,0x0
    80001c0c:	d5c58593          	addi	a1,a1,-676 # 80001964 <_Z7workerAPv>
    80001c10:	fe040513          	addi	a0,s0,-32
    80001c14:	fffff097          	auipc	ra,0xfffff
    80001c18:	6e4080e7          	jalr	1764(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], workerB, nullptr);
    80001c1c:	00000613          	li	a2,0
    80001c20:	00000597          	auipc	a1,0x0
    80001c24:	d7058593          	addi	a1,a1,-656 # 80001990 <_Z7workerBPv>
    80001c28:	fe840513          	addi	a0,s0,-24
    80001c2c:	fffff097          	auipc	ra,0xfffff
    80001c30:	6cc080e7          	jalr	1740(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], workerForever, nullptr);
    80001c34:	00000613          	li	a2,0
    80001c38:	00000597          	auipc	a1,0x0
    80001c3c:	d1c58593          	addi	a1,a1,-740 # 80001954 <_Z13workerForeverPv>
    80001c40:	ff040513          	addi	a0,s0,-16
    80001c44:	fffff097          	auipc	ra,0xfffff
    80001c48:	6b4080e7          	jalr	1716(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    80001c4c:	00c0006f          	j	80001c58 <_Z11testThreadsv+0x90>

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
    80001cc0:	d4c7b783          	ld	a5,-692(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001d58:	0c0080e7          	jalr	192(ra) # 80005e14 <_Z8userMainv>
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
    80001d80:	c747b783          	ld	a5,-908(a5) # 8000b9f0 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001df0:	bf0080e7          	jalr	-1040(ra) # 800089dc <__putc>
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
    80001e60:	c0470713          	addi	a4,a4,-1020 # 8000ba60 <_ZN3TCB3cntE>
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
    80001f44:	b284b483          	ld	s1,-1240(s1) # 8000ba68 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80001f48:	0184a783          	lw	a5,24(s1)
    80001f4c:	02078e63          	beqz	a5,80001f88 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	c64080e7          	jalr	-924(ra) # 80002bb4 <_ZN9Scheduler3getEv>
    80001f58:	00050593          	mv	a1,a0
    80001f5c:	0000a797          	auipc	a5,0xa
    80001f60:	b0a7b623          	sd	a0,-1268(a5) # 8000ba68 <_ZN3TCB7runningE>
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
    80002074:	9f853503          	ld	a0,-1544(a0) # 8000ba68 <_ZN3TCB7runningE>
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
    800020ac:	ddc080e7          	jalr	-548(ra) # 80002e84 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    800020b0:	0000a717          	auipc	a4,0xa
    800020b4:	9b873703          	ld	a4,-1608(a4) # 8000ba68 <_ZN3TCB7runningE>
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
    80002104:	9687b783          	ld	a5,-1688(a5) # 8000ba68 <_ZN3TCB7runningE>
    80002108:	00078c63          	beqz	a5,80002120 <_ZN3TCB5startEv+0x40>
}
    8000210c:	01813083          	ld	ra,24(sp)
    80002110:	01013403          	ld	s0,16(sp)
    80002114:	00813483          	ld	s1,8(sp)
    80002118:	02010113          	addi	sp,sp,32
    8000211c:	00008067          	ret
    if (!running) running = this;
    80002120:	0000a797          	auipc	a5,0xa
    80002124:	9497b423          	sd	s1,-1720(a5) # 8000ba68 <_ZN3TCB7runningE>
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
    800021f8:	9d4080e7          	jalr	-1580(ra) # 8000cbc8 <_Unwind_Resume>
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
    80002284:	57878793          	addi	a5,a5,1400 # 8000b7f8 <_ZTV6Thread+0x10>
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
    800022c4:	56078793          	addi	a5,a5,1376 # 8000b820 <_ZTV9Semaphore+0x10>
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
    800023e4:	41878793          	addi	a5,a5,1048 # 8000b7f8 <_ZTV6Thread+0x10>
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
    800024a0:	35c78793          	addi	a5,a5,860 # 8000b7f8 <_ZTV6Thread+0x10>
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
    800024cc:	35878793          	addi	a5,a5,856 # 8000b820 <_ZTV9Semaphore+0x10>
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
    800025d8:	1f478793          	addi	a5,a5,500 # 8000b7c8 <_ZTV14PeriodicThread+0x10>
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
    80002688:	14478793          	addi	a5,a5,324 # 8000b7c8 <_ZTV14PeriodicThread+0x10>
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
    800026c4:	10878793          	addi	a5,a5,264 # 8000b7c8 <_ZTV14PeriodicThread+0x10>
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
    80002730:	34b7b623          	sd	a1,844(a5) # 8000ba78 <_ZN15MemoryAllocator11freeSegHeadE>
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
    8000275c:	3204b483          	ld	s1,800(s1) # 8000ba78 <_ZN15MemoryAllocator11freeSegHeadE>
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
    80002790:	2f47b783          	ld	a5,756(a5) # 8000ba80 <_ZN15MemoryAllocator11usedSegHeadE>
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
    80002844:	2497b023          	sd	s1,576(a5) # 8000ba80 <_ZN15MemoryAllocator11usedSegHeadE>
    80002848:	fc5ff06f          	j	8000280c <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    8000284c:	00000493          	li	s1,0
    80002850:	fcdff06f          	j	8000281c <_ZN15MemoryAllocator9mem_allocEm+0xe4>

0000000080002854 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    80002854:	00009797          	auipc	a5,0x9
    80002858:	2347b783          	ld	a5,564(a5) # 8000ba88 <_ZN15MemoryAllocator8instanceE>
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
    8000287c:	1687b783          	ld	a5,360(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002880:	0007b783          	ld	a5,0(a5)
    80002884:	00009497          	auipc	s1,0x9
    80002888:	1f448493          	addi	s1,s1,500 # 8000ba78 <_ZN15MemoryAllocator11freeSegHeadE>
    8000288c:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80002890:	00009717          	auipc	a4,0x9
    80002894:	18073703          	ld	a4,384(a4) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x38>
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
    8000294c:	0987b783          	ld	a5,152(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002950:	0007b783          	ld	a5,0(a5)
    80002954:	10f56e63          	bltu	a0,a5,80002a70 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    80002958:	00009797          	auipc	a5,0x9
    8000295c:	0b87b783          	ld	a5,184(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002960:	0007b783          	ld	a5,0(a5)
    80002964:	10a7ea63          	bltu	a5,a0,80002a78 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    80002968:	00009797          	auipc	a5,0x9
    8000296c:	1187b783          	ld	a5,280(a5) # 8000ba80 <_ZN15MemoryAllocator11usedSegHeadE>
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
    800029a8:	0d47b783          	ld	a5,212(a5) # 8000ba78 <_ZN15MemoryAllocator11freeSegHeadE>
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
    80002a24:	0497bc23          	sd	s1,88(a5) # 8000ba78 <_ZN15MemoryAllocator11freeSegHeadE>
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
    80002a40:	03c78793          	addi	a5,a5,60 # 8000ba78 <_ZN15MemoryAllocator11freeSegHeadE>
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
    80002aac:	f34080e7          	jalr	-204(ra) # 800089dc <__putc>
    __putc('M');
    80002ab0:	04d00513          	li	a0,77
    80002ab4:	00006097          	auipc	ra,0x6
    80002ab8:	f28080e7          	jalr	-216(ra) # 800089dc <__putc>
    __putc(':');
    80002abc:	03a00513          	li	a0,58
    80002ac0:	00006097          	auipc	ra,0x6
    80002ac4:	f1c080e7          	jalr	-228(ra) # 800089dc <__putc>
    __putc(' ');
    80002ac8:	02000513          	li	a0,32
    80002acc:	00006097          	auipc	ra,0x6
    80002ad0:	f10080e7          	jalr	-240(ra) # 800089dc <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80002ad4:	00009497          	auipc	s1,0x9
    80002ad8:	fa44b483          	ld	s1,-92(s1) # 8000ba78 <_ZN15MemoryAllocator11freeSegHeadE>
    80002adc:	00048c63          	beqz	s1,80002af4 <_ZN15MemoryAllocator5printEv+0x64>
    80002ae0:	06600513          	li	a0,102
    80002ae4:	00006097          	auipc	ra,0x6
    80002ae8:	ef8080e7          	jalr	-264(ra) # 800089dc <__putc>
    80002aec:	0104b483          	ld	s1,16(s1)
    80002af0:	fedff06f          	j	80002adc <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    80002af4:	00900513          	li	a0,9
    80002af8:	00006097          	auipc	ra,0x6
    80002afc:	ee4080e7          	jalr	-284(ra) # 800089dc <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80002b00:	00009497          	auipc	s1,0x9
    80002b04:	f804b483          	ld	s1,-128(s1) # 8000ba80 <_ZN15MemoryAllocator11usedSegHeadE>
    80002b08:	00048c63          	beqz	s1,80002b20 <_ZN15MemoryAllocator5printEv+0x90>
    80002b0c:	07500513          	li	a0,117
    80002b10:	00006097          	auipc	ra,0x6
    80002b14:	ecc080e7          	jalr	-308(ra) # 800089dc <__putc>
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
    80002b70:	f2453503          	ld	a0,-220(a0) # 8000ba90 <_ZN9Scheduler10tail_readyE>
    80002b74:	02051463          	bnez	a0,80002b9c <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    80002b78:	00009797          	auipc	a5,0x9
    80002b7c:	f1878793          	addi	a5,a5,-232 # 8000ba90 <_ZN9Scheduler10tail_readyE>
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
    80002bac:	ee97b423          	sd	s1,-280(a5) # 8000ba90 <_ZN9Scheduler10tail_readyE>
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
    80002bcc:	ed04b483          	ld	s1,-304(s1) # 8000ba98 <_ZN9Scheduler10head_readyE>
    80002bd0:	02048463          	beqz	s1,80002bf8 <_ZN9Scheduler3getEv+0x44>
    TCB *head = head_ready;
    TCB *tmp = head;
    head_ready = head_ready -> get_next_ready();
    80002bd4:	00048513          	mv	a0,s1
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	3c0080e7          	jalr	960(ra) # 80001f98 <_ZNK3TCB14get_next_readyEv>
    80002be0:	00009797          	auipc	a5,0x9
    80002be4:	eaa7bc23          	sd	a0,-328(a5) # 8000ba98 <_ZN9Scheduler10head_readyE>
    tmp -> set_next_ready(nullptr);
    80002be8:	00000593          	li	a1,0
    80002bec:	00048513          	mv	a0,s1
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	3c4080e7          	jalr	964(ra) # 80001fb4 <_ZN3TCB14set_next_readyEPS_>
    return head;
}
    80002bf8:	00048513          	mv	a0,s1
    80002bfc:	01813083          	ld	ra,24(sp)
    80002c00:	01013403          	ld	s0,16(sp)
    80002c04:	00813483          	ld	s1,8(sp)
    80002c08:	02010113          	addi	sp,sp,32
    80002c0c:	00008067          	ret

0000000080002c10 <_ZN9Scheduler13change_threadEv>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

void Scheduler::change_thread() {
    80002c10:	fe010113          	addi	sp,sp,-32
    80002c14:	00113c23          	sd	ra,24(sp)
    80002c18:	00813823          	sd	s0,16(sp)
    80002c1c:	00913423          	sd	s1,8(sp)
    80002c20:	01213023          	sd	s2,0(sp)
    80002c24:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002c28:	00009497          	auipc	s1,0x9
    80002c2c:	de04b483          	ld	s1,-544(s1) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c30:	0004b903          	ld	s2,0(s1)
    TCB::running = Scheduler::get();
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	f80080e7          	jalr	-128(ra) # 80002bb4 <_ZN9Scheduler3getEv>
    80002c3c:	00a4b023          	sd	a0,0(s1)
    if (old != TCB::running) TCB::yield(old, TCB::running);
    80002c40:	00a90a63          	beq	s2,a0,80002c54 <_ZN9Scheduler13change_threadEv+0x44>
    80002c44:	00050593          	mv	a1,a0
    80002c48:	00090513          	mv	a0,s2
    80002c4c:	fffff097          	auipc	ra,0xfffff
    80002c50:	284080e7          	jalr	644(ra) # 80001ed0 <_ZN3TCB5yieldEPS_S0_>
}
    80002c54:	01813083          	ld	ra,24(sp)
    80002c58:	01013403          	ld	s0,16(sp)
    80002c5c:	00813483          	ld	s1,8(sp)
    80002c60:	00013903          	ld	s2,0(sp)
    80002c64:	02010113          	addi	sp,sp,32
    80002c68:	00008067          	ret

0000000080002c6c <_ZN9Scheduler12put_to_sleepEm>:
int Scheduler::put_to_sleep(time_t time) {
    80002c6c:	fc010113          	addi	sp,sp,-64
    80002c70:	02113c23          	sd	ra,56(sp)
    80002c74:	02813823          	sd	s0,48(sp)
    80002c78:	02913423          	sd	s1,40(sp)
    80002c7c:	03213023          	sd	s2,32(sp)
    80002c80:	01313c23          	sd	s3,24(sp)
    80002c84:	01413823          	sd	s4,16(sp)
    80002c88:	01513423          	sd	s5,8(sp)
    80002c8c:	04010413          	addi	s0,sp,64
    80002c90:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002c94:	00009797          	auipc	a5,0x9
    80002c98:	d747b783          	ld	a5,-652(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c9c:	0007ba83          	ld	s5,0(a5)
    thread -> set_status(TCB::Status::SLEEPING);
    80002ca0:	00100593          	li	a1,1
    80002ca4:	000a8513          	mv	a0,s5
    80002ca8:	fffff097          	auipc	ra,0xfffff
    80002cac:	398080e7          	jalr	920(ra) # 80002040 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    80002cb0:	00009497          	auipc	s1,0x9
    80002cb4:	df04b483          	ld	s1,-528(s1) # 8000baa0 <_ZN9Scheduler13head_sleepingE>
    80002cb8:	02048e63          	beqz	s1,80002cf4 <_ZN9Scheduler12put_to_sleepEm+0x88>
    time_t current_time = 0;
    80002cbc:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002cc0:	00000a13          	li	s4,0
    while (tmp) {
    80002cc4:	0e048c63          	beqz	s1,80002dbc <_ZN9Scheduler12put_to_sleepEm+0x150>
        current_time += tmp -> get_time_to_sleep();
    80002cc8:	00048513          	mv	a0,s1
    80002ccc:	fffff097          	auipc	ra,0xfffff
    80002cd0:	358080e7          	jalr	856(ra) # 80002024 <_ZNK3TCB17get_time_to_sleepEv>
    80002cd4:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002cd8:	0529e863          	bltu	s3,s2,80002d28 <_ZN9Scheduler12put_to_sleepEm+0xbc>
        tmp = tmp -> get_next_sleeping();
    80002cdc:	00048513          	mv	a0,s1
    80002ce0:	fffff097          	auipc	ra,0xfffff
    80002ce4:	30c080e7          	jalr	780(ra) # 80001fec <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002ce8:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002cec:	00050493          	mv	s1,a0
    while (tmp) {
    80002cf0:	fd5ff06f          	j	80002cc4 <_ZN9Scheduler12put_to_sleepEm+0x58>
        head_sleeping = thread;
    80002cf4:	00009797          	auipc	a5,0x9
    80002cf8:	db57b623          	sd	s5,-596(a5) # 8000baa0 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002cfc:	00000593          	li	a1,0
    80002d00:	000a8513          	mv	a0,s5
    80002d04:	fffff097          	auipc	ra,0xfffff
    80002d08:	2cc080e7          	jalr	716(ra) # 80001fd0 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002d0c:	00098593          	mv	a1,s3
    80002d10:	000a8513          	mv	a0,s5
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	2f4080e7          	jalr	756(ra) # 80002008 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	ef4080e7          	jalr	-268(ra) # 80002c10 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002d24:	0d00006f          	j	80002df4 <_ZN9Scheduler12put_to_sleepEm+0x188>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002d28:	00048513          	mv	a0,s1
    80002d2c:	fffff097          	auipc	ra,0xfffff
    80002d30:	2f8080e7          	jalr	760(ra) # 80002024 <_ZNK3TCB17get_time_to_sleepEv>
    80002d34:	41250933          	sub	s2,a0,s2
    80002d38:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002d3c:	00098593          	mv	a1,s3
    80002d40:	000a8513          	mv	a0,s5
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	2c4080e7          	jalr	708(ra) # 80002008 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002d4c:	00048593          	mv	a1,s1
    80002d50:	000a8513          	mv	a0,s5
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	27c080e7          	jalr	636(ra) # 80001fd0 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002d5c:	040a0463          	beqz	s4,80002da4 <_ZN9Scheduler12put_to_sleepEm+0x138>
    80002d60:	000a8593          	mv	a1,s5
    80002d64:	000a0513          	mv	a0,s4
    80002d68:	fffff097          	auipc	ra,0xfffff
    80002d6c:	268080e7          	jalr	616(ra) # 80001fd0 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp; curr; curr = curr -> get_next_sleeping())
    80002d70:	04048063          	beqz	s1,80002db0 <_ZN9Scheduler12put_to_sleepEm+0x144>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80002d74:	00048513          	mv	a0,s1
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	2ac080e7          	jalr	684(ra) # 80002024 <_ZNK3TCB17get_time_to_sleepEv>
    80002d80:	413505b3          	sub	a1,a0,s3
    80002d84:	00048513          	mv	a0,s1
    80002d88:	fffff097          	auipc	ra,0xfffff
    80002d8c:	280080e7          	jalr	640(ra) # 80002008 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp; curr; curr = curr -> get_next_sleeping())
    80002d90:	00048513          	mv	a0,s1
    80002d94:	fffff097          	auipc	ra,0xfffff
    80002d98:	258080e7          	jalr	600(ra) # 80001fec <_ZNK3TCB17get_next_sleepingEv>
    80002d9c:	00050493          	mv	s1,a0
    80002da0:	fd1ff06f          	j	80002d70 <_ZN9Scheduler12put_to_sleepEm+0x104>
            else head_sleeping = thread;
    80002da4:	00009797          	auipc	a5,0x9
    80002da8:	cf57be23          	sd	s5,-772(a5) # 8000baa0 <_ZN9Scheduler13head_sleepingE>
    80002dac:	fc5ff06f          	j	80002d70 <_ZN9Scheduler12put_to_sleepEm+0x104>
            change_thread();
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	e60080e7          	jalr	-416(ra) # 80002c10 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002db8:	03c0006f          	j	80002df4 <_ZN9Scheduler12put_to_sleepEm+0x188>
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
    80002df0:	e24080e7          	jalr	-476(ra) # 80002c10 <_ZN9Scheduler13change_threadEv>
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

0000000080002e1c <_ZN9Scheduler14print_sleepingEv>:

void Scheduler::print_sleeping() {
    80002e1c:	fe010113          	addi	sp,sp,-32
    80002e20:	00113c23          	sd	ra,24(sp)
    80002e24:	00813823          	sd	s0,16(sp)
    80002e28:	00913423          	sd	s1,8(sp)
    80002e2c:	02010413          	addi	s0,sp,32
    for (TCB* tmp = head_sleeping; tmp; tmp = tmp -> get_next_sleeping()) printNumber(tmp -> get_time_to_sleep());
    80002e30:	00009497          	auipc	s1,0x9
    80002e34:	c704b483          	ld	s1,-912(s1) # 8000baa0 <_ZN9Scheduler13head_sleepingE>
    80002e38:	02048663          	beqz	s1,80002e64 <_ZN9Scheduler14print_sleepingEv+0x48>
    80002e3c:	00048513          	mv	a0,s1
    80002e40:	fffff097          	auipc	ra,0xfffff
    80002e44:	1e4080e7          	jalr	484(ra) # 80002024 <_ZNK3TCB17get_time_to_sleepEv>
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	b74080e7          	jalr	-1164(ra) # 800019bc <printNumber>
    80002e50:	00048513          	mv	a0,s1
    80002e54:	fffff097          	auipc	ra,0xfffff
    80002e58:	198080e7          	jalr	408(ra) # 80001fec <_ZNK3TCB17get_next_sleepingEv>
    80002e5c:	00050493          	mv	s1,a0
    80002e60:	fd9ff06f          	j	80002e38 <_ZN9Scheduler14print_sleepingEv+0x1c>
    __putc('\n');
    80002e64:	00a00513          	li	a0,10
    80002e68:	00006097          	auipc	ra,0x6
    80002e6c:	b74080e7          	jalr	-1164(ra) # 800089dc <__putc>
}
    80002e70:	01813083          	ld	ra,24(sp)
    80002e74:	01013403          	ld	s0,16(sp)
    80002e78:	00813483          	ld	s1,8(sp)
    80002e7c:	02010113          	addi	sp,sp,32
    80002e80:	00008067          	ret

0000000080002e84 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002e84:	ff010113          	addi	sp,sp,-16
    80002e88:	00813423          	sd	s0,8(sp)
    80002e8c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002e90:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002e94:	10200073          	sret
}
    80002e98:	00813403          	ld	s0,8(sp)
    80002e9c:	01010113          	addi	sp,sp,16
    80002ea0:	00008067          	ret

0000000080002ea4 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002ea4:	fb010113          	addi	sp,sp,-80
    80002ea8:	04113423          	sd	ra,72(sp)
    80002eac:	04813023          	sd	s0,64(sp)
    80002eb0:	02913c23          	sd	s1,56(sp)
    80002eb4:	03213823          	sd	s2,48(sp)
    80002eb8:	05010413          	addi	s0,sp,80
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002ebc:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002ec0:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002ec4:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002ec8:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002ecc:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002ed0:	142027f3          	csrr	a5,scause
    80002ed4:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002ed8:	fb843703          	ld	a4,-72(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002edc:	fff00793          	li	a5,-1
    80002ee0:	03f79793          	slli	a5,a5,0x3f
    80002ee4:	00178793          	addi	a5,a5,1
    80002ee8:	04f70063          	beq	a4,a5,80002f28 <_ZN5RiscV22handle_supervisor_trapEv+0x84>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002eec:	fff00793          	li	a5,-1
    80002ef0:	03f79793          	slli	a5,a5,0x3f
    80002ef4:	00978793          	addi	a5,a5,9
    80002ef8:	0ef70663          	beq	a4,a5,80002fe4 <_ZN5RiscV22handle_supervisor_trapEv+0x140>
        console_handler();
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002efc:	00200793          	li	a5,2
    80002f00:	0ef70863          	beq	a4,a5,80002ff0 <_ZN5RiscV22handle_supervisor_trapEv+0x14c>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002f04:	ff870713          	addi	a4,a4,-8
    80002f08:	00100793          	li	a5,1
    80002f0c:	0ee7f863          	bgeu	a5,a4,80002ffc <_ZN5RiscV22handle_supervisor_trapEv+0x158>
        }

        write_sepc(sepc);
        write_sstatus(sstatus);
    }
    80002f10:	04813083          	ld	ra,72(sp)
    80002f14:	04013403          	ld	s0,64(sp)
    80002f18:	03813483          	ld	s1,56(sp)
    80002f1c:	03013903          	ld	s2,48(sp)
    80002f20:	05010113          	addi	sp,sp,80
    80002f24:	00008067          	ret
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002f28:	00200793          	li	a5,2
    80002f2c:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80002f30:	00009797          	auipc	a5,0x9
    80002f34:	ab87b783          	ld	a5,-1352(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f38:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80002f3c:	04048463          	beqz	s1,80002f84 <_ZN5RiscV22handle_supervisor_trapEv+0xe0>
            --first_waiting -> time_to_sleep;
    80002f40:	0484b783          	ld	a5,72(s1)
    80002f44:	fff78793          	addi	a5,a5,-1
    80002f48:	04f4b423          	sd	a5,72(s1)
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002f4c:	02048c63          	beqz	s1,80002f84 <_ZN5RiscV22handle_supervisor_trapEv+0xe0>
    80002f50:	0484b783          	ld	a5,72(s1)
    80002f54:	02079863          	bnez	a5,80002f84 <_ZN5RiscV22handle_supervisor_trapEv+0xe0>
                Scheduler::put(first_waiting);
    80002f58:	00048513          	mv	a0,s1
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	bf8080e7          	jalr	-1032(ra) # 80002b54 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80002f64:	0004ac23          	sw	zero,24(s1)
                first_waiting = first_waiting -> next_sleeping;
    80002f68:	0504b783          	ld	a5,80(s1)
                tmp -> next_sleeping = nullptr;
    80002f6c:	0404b823          	sd	zero,80(s1)
                Scheduler::head_sleeping = first_waiting;
    80002f70:	00009717          	auipc	a4,0x9
    80002f74:	a7873703          	ld	a4,-1416(a4) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f78:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80002f7c:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002f80:	fcdff06f          	j	80002f4c <_ZN5RiscV22handle_supervisor_trapEv+0xa8>
        ++TCB::time_slice_counter;
    80002f84:	00009717          	auipc	a4,0x9
    80002f88:	a7c73703          	ld	a4,-1412(a4) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f8c:	00073783          	ld	a5,0(a4)
    80002f90:	00178793          	addi	a5,a5,1
    80002f94:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80002f98:	00009717          	auipc	a4,0x9
    80002f9c:	a7073703          	ld	a4,-1424(a4) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002fa0:	00073703          	ld	a4,0(a4)
    80002fa4:	03873703          	ld	a4,56(a4)
    80002fa8:	f6e7e4e3          	bltu	a5,a4,80002f10 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002fac:	141027f3          	csrr	a5,sepc
    80002fb0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002fb4:	fc843483          	ld	s1,-56(s0)
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002fb8:	100027f3          	csrr	a5,sstatus
    80002fbc:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002fc0:	fc043903          	ld	s2,-64(s0)
            TCB::time_slice_counter = 0;
    80002fc4:	00009797          	auipc	a5,0x9
    80002fc8:	a3c7b783          	ld	a5,-1476(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002fcc:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002fd0:	fffff097          	auipc	ra,0xfffff
    80002fd4:	f5c080e7          	jalr	-164(ra) # 80001f2c <_ZN3TCB8dispatchEv>
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002fd8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002fdc:	14149073          	csrw	sepc,s1
}
    80002fe0:	f31ff06f          	j	80002f10 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
        console_handler();
    80002fe4:	00006097          	auipc	ra,0x6
    80002fe8:	a6c080e7          	jalr	-1428(ra) # 80008a50 <console_handler>
    80002fec:	f25ff06f          	j	80002f10 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002ff0:	00100793          	li	a5,1
    80002ff4:	00078513          	mv	a0,a5
        return;
    80002ff8:	f19ff06f          	j	80002f10 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002ffc:	141027f3          	csrr	a5,sepc
    80003000:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80003004:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = read_sepc() + 4;
    80003008:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    8000300c:	100027f3          	csrr	a5,sstatus
    80003010:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80003014:	fd043903          	ld	s2,-48(s0)
        switch(syscall_code) {
    80003018:	04200793          	li	a5,66
    8000301c:	0307e463          	bltu	a5,a6,80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
    80003020:	00281813          	slli	a6,a6,0x2
    80003024:	00006717          	auipc	a4,0x6
    80003028:	ffc70713          	addi	a4,a4,-4 # 80009020 <CONSOLE_STATUS+0x10>
    8000302c:	00e80833          	add	a6,a6,a4
    80003030:	00082783          	lw	a5,0(a6)
    80003034:	00e787b3          	add	a5,a5,a4
    80003038:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    8000303c:	fffff097          	auipc	ra,0xfffff
    80003040:	6fc080e7          	jalr	1788(ra) # 80002738 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003044:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003048:	10091073          	csrw	sstatus,s2
}
    8000304c:	ec5ff06f          	j	80002f10 <_ZN5RiscV22handle_supervisor_trapEv+0x6c>
                MemoryAllocator::mem_free((void *) a1);
    80003050:	00000097          	auipc	ra,0x0
    80003054:	8d4080e7          	jalr	-1836(ra) # 80002924 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80003058:	fedff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    8000305c:	fffff097          	auipc	ra,0xfffff
    80003060:	128080e7          	jalr	296(ra) # 80002184 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80003064:	fe1ff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                TCB::thread_exit();
    80003068:	fffff097          	auipc	ra,0xfffff
    8000306c:	ff4080e7          	jalr	-12(ra) # 8000205c <_ZN3TCB11thread_exitEv>
                break;
    80003070:	fd5ff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                TCB::dispatch();
    80003074:	fffff097          	auipc	ra,0xfffff
    80003078:	eb8080e7          	jalr	-328(ra) # 80001f2c <_ZN3TCB8dispatchEv>
                break;
    8000307c:	fc9ff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                Sem::open((sem_t *) a1, a2);
    80003080:	0005859b          	sext.w	a1,a1
    80003084:	ffffe097          	auipc	ra,0xffffe
    80003088:	69c080e7          	jalr	1692(ra) # 80001720 <_ZN3Sem4openEPPS_j>
                break;
    8000308c:	fb9ff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                ((sem_t) a1) -> close();
    80003090:	ffffe097          	auipc	ra,0xffffe
    80003094:	704080e7          	jalr	1796(ra) # 80001794 <_ZN3Sem5closeEv>
                break;
    80003098:	fadff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                ((sem_t) a1) -> wait();
    8000309c:	ffffe097          	auipc	ra,0xffffe
    800030a0:	780080e7          	jalr	1920(ra) # 8000181c <_ZN3Sem4waitEv>
                break;
    800030a4:	fa1ff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                ((sem_t) a1) -> signal();
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	81c080e7          	jalr	-2020(ra) # 800018c4 <_ZN3Sem6signalEv>
                break;
    800030b0:	f95ff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                ((sem_t) a1) -> timedWait((time_t) a2);
    800030b4:	fffff097          	auipc	ra,0xfffff
    800030b8:	868080e7          	jalr	-1944(ra) # 8000191c <_ZN3Sem9timedWaitEm>
                break;
    800030bc:	f89ff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                ((sem_t) a1) -> tryWait();
    800030c0:	fffff097          	auipc	ra,0xfffff
    800030c4:	878080e7          	jalr	-1928(ra) # 80001938 <_ZN3Sem7tryWaitEv>
                break;
    800030c8:	f7dff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                Scheduler::put_to_sleep((time_t) a1);
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	ba0080e7          	jalr	-1120(ra) # 80002c6c <_ZN9Scheduler12put_to_sleepEm>
                break;
    800030d4:	f71ff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                Con::getc();
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	d48080e7          	jalr	-696(ra) # 80001e20 <_ZN3Con4getcEv>
                break;
    800030e0:	f65ff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>
                Con::putc(a1);
    800030e4:	0ff57513          	andi	a0,a0,255
    800030e8:	fffff097          	auipc	ra,0xfffff
    800030ec:	d20080e7          	jalr	-736(ra) # 80001e08 <_ZN3Con4putcEc>
                break;
    800030f0:	f55ff06f          	j	80003044 <_ZN5RiscV22handle_supervisor_trapEv+0x1a0>

00000000800030f4 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    800030f4:	ff010113          	addi	sp,sp,-16
    800030f8:	00813423          	sd	s0,8(sp)
    800030fc:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80003100:	00053503          	ld	a0,0(a0)
    80003104:	00050463          	beqz	a0,8000310c <_ZN10ThreadList9get_firstEv+0x18>
    80003108:	00053503          	ld	a0,0(a0)
}
    8000310c:	00813403          	ld	s0,8(sp)
    80003110:	01010113          	addi	sp,sp,16
    80003114:	00008067          	ret

0000000080003118 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80003118:	ff010113          	addi	sp,sp,-16
    8000311c:	00113423          	sd	ra,8(sp)
    80003120:	00813023          	sd	s0,0(sp)
    80003124:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	a0c080e7          	jalr	-1524(ra) # 80002b34 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003130:	fffff097          	auipc	ra,0xfffff
    80003134:	608080e7          	jalr	1544(ra) # 80002738 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003138:	00813083          	ld	ra,8(sp)
    8000313c:	00013403          	ld	s0,0(sp)
    80003140:	01010113          	addi	sp,sp,16
    80003144:	00008067          	ret

0000000080003148 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80003148:	fe010113          	addi	sp,sp,-32
    8000314c:	00113c23          	sd	ra,24(sp)
    80003150:	00813823          	sd	s0,16(sp)
    80003154:	00913423          	sd	s1,8(sp)
    80003158:	01213023          	sd	s2,0(sp)
    8000315c:	02010413          	addi	s0,sp,32
    80003160:	00050493          	mv	s1,a0
    80003164:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80003168:	01000513          	li	a0,16
    8000316c:	00000097          	auipc	ra,0x0
    80003170:	fac080e7          	jalr	-84(ra) # 80003118 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80003174:	01253023          	sd	s2,0(a0)
    80003178:	00053423          	sd	zero,8(a0)
    8000317c:	0004b783          	ld	a5,0(s1)
    80003180:	02078263          	beqz	a5,800031a4 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80003184:	00a4b023          	sd	a0,0(s1)
    80003188:	00a4b423          	sd	a0,8(s1)
}
    8000318c:	01813083          	ld	ra,24(sp)
    80003190:	01013403          	ld	s0,16(sp)
    80003194:	00813483          	ld	s1,8(sp)
    80003198:	00013903          	ld	s2,0(sp)
    8000319c:	02010113          	addi	sp,sp,32
    800031a0:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    800031a4:	0084b783          	ld	a5,8(s1)
    800031a8:	00a7b423          	sd	a0,8(a5)
    800031ac:	fddff06f          	j	80003188 <_ZN10ThreadList9push_backEP3TCB+0x40>

00000000800031b0 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    800031b0:	fe010113          	addi	sp,sp,-32
    800031b4:	00113c23          	sd	ra,24(sp)
    800031b8:	00813823          	sd	s0,16(sp)
    800031bc:	00913423          	sd	s1,8(sp)
    800031c0:	01213023          	sd	s2,0(sp)
    800031c4:	02010413          	addi	s0,sp,32
    800031c8:	00050493          	mv	s1,a0
    800031cc:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    800031d0:	01000513          	li	a0,16
    800031d4:	00000097          	auipc	ra,0x0
    800031d8:	f44080e7          	jalr	-188(ra) # 80003118 <_ZN10ThreadList4NodenwEm>
    800031dc:	01253023          	sd	s2,0(a0)
    800031e0:	00053423          	sd	zero,8(a0)
    node -> next = head;
    800031e4:	0004b783          	ld	a5,0(s1)
    800031e8:	00f53423          	sd	a5,8(a0)
    head = node;
    800031ec:	00a4b023          	sd	a0,0(s1)
}
    800031f0:	01813083          	ld	ra,24(sp)
    800031f4:	01013403          	ld	s0,16(sp)
    800031f8:	00813483          	ld	s1,8(sp)
    800031fc:	00013903          	ld	s2,0(sp)
    80003200:	02010113          	addi	sp,sp,32
    80003204:	00008067          	ret

0000000080003208 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80003208:	ff010113          	addi	sp,sp,-16
    8000320c:	00113423          	sd	ra,8(sp)
    80003210:	00813023          	sd	s0,0(sp)
    80003214:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003218:	fffff097          	auipc	ra,0xfffff
    8000321c:	70c080e7          	jalr	1804(ra) # 80002924 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003220:	00813083          	ld	ra,8(sp)
    80003224:	00013403          	ld	s0,0(sp)
    80003228:	01010113          	addi	sp,sp,16
    8000322c:	00008067          	ret

0000000080003230 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003230:	fe010113          	addi	sp,sp,-32
    80003234:	00113c23          	sd	ra,24(sp)
    80003238:	00813823          	sd	s0,16(sp)
    8000323c:	00913423          	sd	s1,8(sp)
    80003240:	02010413          	addi	s0,sp,32
    80003244:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80003248:	00053503          	ld	a0,0(a0)
    8000324c:	02050a63          	beqz	a0,80003280 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80003250:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003254:	00853703          	ld	a4,8(a0)
    80003258:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    8000325c:	00073423          	sd	zero,8(a4)
    delete tmp;
    80003260:	00000097          	auipc	ra,0x0
    80003264:	fa8080e7          	jalr	-88(ra) # 80003208 <_ZN10ThreadList4NodedlEPv>
}
    80003268:	00048513          	mv	a0,s1
    8000326c:	01813083          	ld	ra,24(sp)
    80003270:	01013403          	ld	s0,16(sp)
    80003274:	00813483          	ld	s1,8(sp)
    80003278:	02010113          	addi	sp,sp,32
    8000327c:	00008067          	ret
    if (!head) return nullptr;
    80003280:	00050493          	mv	s1,a0
    80003284:	fe5ff06f          	j	80003268 <_ZN10ThreadList12remove_firstEv+0x38>

0000000080003288 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80003288:	fe010113          	addi	sp,sp,-32
    8000328c:	00113c23          	sd	ra,24(sp)
    80003290:	00813823          	sd	s0,16(sp)
    80003294:	00913423          	sd	s1,8(sp)
    80003298:	02010413          	addi	s0,sp,32
    8000329c:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    800032a0:	00048513          	mv	a0,s1
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	e50080e7          	jalr	-432(ra) # 800030f4 <_ZN10ThreadList9get_firstEv>
    800032ac:	00050a63          	beqz	a0,800032c0 <_ZN10ThreadList4freeEv+0x38>
    800032b0:	00048513          	mv	a0,s1
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	f7c080e7          	jalr	-132(ra) # 80003230 <_ZN10ThreadList12remove_firstEv>
    800032bc:	fe5ff06f          	j	800032a0 <_ZN10ThreadList4freeEv+0x18>
}
    800032c0:	01813083          	ld	ra,24(sp)
    800032c4:	01013403          	ld	s0,16(sp)
    800032c8:	00813483          	ld	s1,8(sp)
    800032cc:	02010113          	addi	sp,sp,32
    800032d0:	00008067          	ret

00000000800032d4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800032d4:	fe010113          	addi	sp,sp,-32
    800032d8:	00113c23          	sd	ra,24(sp)
    800032dc:	00813823          	sd	s0,16(sp)
    800032e0:	00913423          	sd	s1,8(sp)
    800032e4:	01213023          	sd	s2,0(sp)
    800032e8:	02010413          	addi	s0,sp,32
    800032ec:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800032f0:	00000913          	li	s2,0
    800032f4:	00c0006f          	j	80003300 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800032f8:	ffffe097          	auipc	ra,0xffffe
    800032fc:	0d4080e7          	jalr	212(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003300:	ffffe097          	auipc	ra,0xffffe
    80003304:	320080e7          	jalr	800(ra) # 80001620 <_Z4getcv>
    80003308:	0005059b          	sext.w	a1,a0
    8000330c:	01b00793          	li	a5,27
    80003310:	02f58a63          	beq	a1,a5,80003344 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003314:	0084b503          	ld	a0,8(s1)
    80003318:	00003097          	auipc	ra,0x3
    8000331c:	384080e7          	jalr	900(ra) # 8000669c <_ZN6Buffer3putEi>
        i++;
    80003320:	0019071b          	addiw	a4,s2,1
    80003324:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003328:	0004a683          	lw	a3,0(s1)
    8000332c:	0026979b          	slliw	a5,a3,0x2
    80003330:	00d787bb          	addw	a5,a5,a3
    80003334:	0017979b          	slliw	a5,a5,0x1
    80003338:	02f767bb          	remw	a5,a4,a5
    8000333c:	fc0792e3          	bnez	a5,80003300 <_ZL16producerKeyboardPv+0x2c>
    80003340:	fb9ff06f          	j	800032f8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003344:	00100793          	li	a5,1
    80003348:	00008717          	auipc	a4,0x8
    8000334c:	76f72023          	sw	a5,1888(a4) # 8000baa8 <_ZL9threadEnd>
    data->buffer->put('!');
    80003350:	02100593          	li	a1,33
    80003354:	0084b503          	ld	a0,8(s1)
    80003358:	00003097          	auipc	ra,0x3
    8000335c:	344080e7          	jalr	836(ra) # 8000669c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003360:	0104b503          	ld	a0,16(s1)
    80003364:	ffffe097          	auipc	ra,0xffffe
    80003368:	18c080e7          	jalr	396(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000336c:	01813083          	ld	ra,24(sp)
    80003370:	01013403          	ld	s0,16(sp)
    80003374:	00813483          	ld	s1,8(sp)
    80003378:	00013903          	ld	s2,0(sp)
    8000337c:	02010113          	addi	sp,sp,32
    80003380:	00008067          	ret

0000000080003384 <_ZL8producerPv>:

static void producer(void *arg) {
    80003384:	fe010113          	addi	sp,sp,-32
    80003388:	00113c23          	sd	ra,24(sp)
    8000338c:	00813823          	sd	s0,16(sp)
    80003390:	00913423          	sd	s1,8(sp)
    80003394:	01213023          	sd	s2,0(sp)
    80003398:	02010413          	addi	s0,sp,32
    8000339c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800033a0:	00000913          	li	s2,0
    800033a4:	00c0006f          	j	800033b0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800033a8:	ffffe097          	auipc	ra,0xffffe
    800033ac:	024080e7          	jalr	36(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800033b0:	00008797          	auipc	a5,0x8
    800033b4:	6f87a783          	lw	a5,1784(a5) # 8000baa8 <_ZL9threadEnd>
    800033b8:	02079e63          	bnez	a5,800033f4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800033bc:	0004a583          	lw	a1,0(s1)
    800033c0:	0305859b          	addiw	a1,a1,48
    800033c4:	0084b503          	ld	a0,8(s1)
    800033c8:	00003097          	auipc	ra,0x3
    800033cc:	2d4080e7          	jalr	724(ra) # 8000669c <_ZN6Buffer3putEi>
        i++;
    800033d0:	0019071b          	addiw	a4,s2,1
    800033d4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800033d8:	0004a683          	lw	a3,0(s1)
    800033dc:	0026979b          	slliw	a5,a3,0x2
    800033e0:	00d787bb          	addw	a5,a5,a3
    800033e4:	0017979b          	slliw	a5,a5,0x1
    800033e8:	02f767bb          	remw	a5,a4,a5
    800033ec:	fc0792e3          	bnez	a5,800033b0 <_ZL8producerPv+0x2c>
    800033f0:	fb9ff06f          	j	800033a8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800033f4:	0104b503          	ld	a0,16(s1)
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	0f8080e7          	jalr	248(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003400:	01813083          	ld	ra,24(sp)
    80003404:	01013403          	ld	s0,16(sp)
    80003408:	00813483          	ld	s1,8(sp)
    8000340c:	00013903          	ld	s2,0(sp)
    80003410:	02010113          	addi	sp,sp,32
    80003414:	00008067          	ret

0000000080003418 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003418:	fd010113          	addi	sp,sp,-48
    8000341c:	02113423          	sd	ra,40(sp)
    80003420:	02813023          	sd	s0,32(sp)
    80003424:	00913c23          	sd	s1,24(sp)
    80003428:	01213823          	sd	s2,16(sp)
    8000342c:	01313423          	sd	s3,8(sp)
    80003430:	03010413          	addi	s0,sp,48
    80003434:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003438:	00000993          	li	s3,0
    8000343c:	01c0006f          	j	80003458 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	f8c080e7          	jalr	-116(ra) # 800013cc <_Z15thread_dispatchv>
    80003448:	0500006f          	j	80003498 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000344c:	00a00513          	li	a0,10
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	21c080e7          	jalr	540(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003458:	00008797          	auipc	a5,0x8
    8000345c:	6507a783          	lw	a5,1616(a5) # 8000baa8 <_ZL9threadEnd>
    80003460:	06079063          	bnez	a5,800034c0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003464:	00893503          	ld	a0,8(s2)
    80003468:	00003097          	auipc	ra,0x3
    8000346c:	2c4080e7          	jalr	708(ra) # 8000672c <_ZN6Buffer3getEv>
        i++;
    80003470:	0019849b          	addiw	s1,s3,1
    80003474:	0004899b          	sext.w	s3,s1
        putc(key);
    80003478:	0ff57513          	andi	a0,a0,255
    8000347c:	ffffe097          	auipc	ra,0xffffe
    80003480:	1f0080e7          	jalr	496(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003484:	00092703          	lw	a4,0(s2)
    80003488:	0027179b          	slliw	a5,a4,0x2
    8000348c:	00e787bb          	addw	a5,a5,a4
    80003490:	02f4e7bb          	remw	a5,s1,a5
    80003494:	fa0786e3          	beqz	a5,80003440 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003498:	05000793          	li	a5,80
    8000349c:	02f4e4bb          	remw	s1,s1,a5
    800034a0:	fa049ce3          	bnez	s1,80003458 <_ZL8consumerPv+0x40>
    800034a4:	fa9ff06f          	j	8000344c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800034a8:	00893503          	ld	a0,8(s2)
    800034ac:	00003097          	auipc	ra,0x3
    800034b0:	280080e7          	jalr	640(ra) # 8000672c <_ZN6Buffer3getEv>
        putc(key);
    800034b4:	0ff57513          	andi	a0,a0,255
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	1b4080e7          	jalr	436(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800034c0:	00893503          	ld	a0,8(s2)
    800034c4:	00003097          	auipc	ra,0x3
    800034c8:	2f4080e7          	jalr	756(ra) # 800067b8 <_ZN6Buffer6getCntEv>
    800034cc:	fca04ee3          	bgtz	a0,800034a8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800034d0:	01093503          	ld	a0,16(s2)
    800034d4:	ffffe097          	auipc	ra,0xffffe
    800034d8:	01c080e7          	jalr	28(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800034dc:	02813083          	ld	ra,40(sp)
    800034e0:	02013403          	ld	s0,32(sp)
    800034e4:	01813483          	ld	s1,24(sp)
    800034e8:	01013903          	ld	s2,16(sp)
    800034ec:	00813983          	ld	s3,8(sp)
    800034f0:	03010113          	addi	sp,sp,48
    800034f4:	00008067          	ret

00000000800034f8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800034f8:	f9010113          	addi	sp,sp,-112
    800034fc:	06113423          	sd	ra,104(sp)
    80003500:	06813023          	sd	s0,96(sp)
    80003504:	04913c23          	sd	s1,88(sp)
    80003508:	05213823          	sd	s2,80(sp)
    8000350c:	05313423          	sd	s3,72(sp)
    80003510:	05413023          	sd	s4,64(sp)
    80003514:	03513c23          	sd	s5,56(sp)
    80003518:	03613823          	sd	s6,48(sp)
    8000351c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003520:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003524:	00006517          	auipc	a0,0x6
    80003528:	c0c50513          	addi	a0,a0,-1012 # 80009130 <CONSOLE_STATUS+0x120>
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	220080e7          	jalr	544(ra) # 8000574c <_Z11printStringPKc>
    getString(input, 30);
    80003534:	01e00593          	li	a1,30
    80003538:	fa040493          	addi	s1,s0,-96
    8000353c:	00048513          	mv	a0,s1
    80003540:	00002097          	auipc	ra,0x2
    80003544:	294080e7          	jalr	660(ra) # 800057d4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003548:	00048513          	mv	a0,s1
    8000354c:	00002097          	auipc	ra,0x2
    80003550:	360080e7          	jalr	864(ra) # 800058ac <_Z11stringToIntPKc>
    80003554:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003558:	00006517          	auipc	a0,0x6
    8000355c:	bf850513          	addi	a0,a0,-1032 # 80009150 <CONSOLE_STATUS+0x140>
    80003560:	00002097          	auipc	ra,0x2
    80003564:	1ec080e7          	jalr	492(ra) # 8000574c <_Z11printStringPKc>
    getString(input, 30);
    80003568:	01e00593          	li	a1,30
    8000356c:	00048513          	mv	a0,s1
    80003570:	00002097          	auipc	ra,0x2
    80003574:	264080e7          	jalr	612(ra) # 800057d4 <_Z9getStringPci>
    n = stringToInt(input);
    80003578:	00048513          	mv	a0,s1
    8000357c:	00002097          	auipc	ra,0x2
    80003580:	330080e7          	jalr	816(ra) # 800058ac <_Z11stringToIntPKc>
    80003584:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003588:	00006517          	auipc	a0,0x6
    8000358c:	be850513          	addi	a0,a0,-1048 # 80009170 <CONSOLE_STATUS+0x160>
    80003590:	00002097          	auipc	ra,0x2
    80003594:	1bc080e7          	jalr	444(ra) # 8000574c <_Z11printStringPKc>
    80003598:	00000613          	li	a2,0
    8000359c:	00a00593          	li	a1,10
    800035a0:	00090513          	mv	a0,s2
    800035a4:	00002097          	auipc	ra,0x2
    800035a8:	358080e7          	jalr	856(ra) # 800058fc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800035ac:	00006517          	auipc	a0,0x6
    800035b0:	bdc50513          	addi	a0,a0,-1060 # 80009188 <CONSOLE_STATUS+0x178>
    800035b4:	00002097          	auipc	ra,0x2
    800035b8:	198080e7          	jalr	408(ra) # 8000574c <_Z11printStringPKc>
    800035bc:	00000613          	li	a2,0
    800035c0:	00a00593          	li	a1,10
    800035c4:	00048513          	mv	a0,s1
    800035c8:	00002097          	auipc	ra,0x2
    800035cc:	334080e7          	jalr	820(ra) # 800058fc <_Z8printIntiii>
    printString(".\n");
    800035d0:	00006517          	auipc	a0,0x6
    800035d4:	bd050513          	addi	a0,a0,-1072 # 800091a0 <CONSOLE_STATUS+0x190>
    800035d8:	00002097          	auipc	ra,0x2
    800035dc:	174080e7          	jalr	372(ra) # 8000574c <_Z11printStringPKc>
    if(threadNum > n) {
    800035e0:	0324c463          	blt	s1,s2,80003608 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800035e4:	03205c63          	blez	s2,8000361c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800035e8:	03800513          	li	a0,56
    800035ec:	fffff097          	auipc	ra,0xfffff
    800035f0:	d14080e7          	jalr	-748(ra) # 80002300 <_Znwm>
    800035f4:	00050a13          	mv	s4,a0
    800035f8:	00048593          	mv	a1,s1
    800035fc:	00003097          	auipc	ra,0x3
    80003600:	004080e7          	jalr	4(ra) # 80006600 <_ZN6BufferC1Ei>
    80003604:	0300006f          	j	80003634 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003608:	00006517          	auipc	a0,0x6
    8000360c:	ba050513          	addi	a0,a0,-1120 # 800091a8 <CONSOLE_STATUS+0x198>
    80003610:	00002097          	auipc	ra,0x2
    80003614:	13c080e7          	jalr	316(ra) # 8000574c <_Z11printStringPKc>
        return;
    80003618:	0140006f          	j	8000362c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000361c:	00006517          	auipc	a0,0x6
    80003620:	bcc50513          	addi	a0,a0,-1076 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003624:	00002097          	auipc	ra,0x2
    80003628:	128080e7          	jalr	296(ra) # 8000574c <_Z11printStringPKc>
        return;
    8000362c:	000b0113          	mv	sp,s6
    80003630:	1500006f          	j	80003780 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003634:	00000593          	li	a1,0
    80003638:	00008517          	auipc	a0,0x8
    8000363c:	47850513          	addi	a0,a0,1144 # 8000bab0 <_ZL10waitForAll>
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	dc8080e7          	jalr	-568(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003648:	00391793          	slli	a5,s2,0x3
    8000364c:	00f78793          	addi	a5,a5,15
    80003650:	ff07f793          	andi	a5,a5,-16
    80003654:	40f10133          	sub	sp,sp,a5
    80003658:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000365c:	0019071b          	addiw	a4,s2,1
    80003660:	00171793          	slli	a5,a4,0x1
    80003664:	00e787b3          	add	a5,a5,a4
    80003668:	00379793          	slli	a5,a5,0x3
    8000366c:	00f78793          	addi	a5,a5,15
    80003670:	ff07f793          	andi	a5,a5,-16
    80003674:	40f10133          	sub	sp,sp,a5
    80003678:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000367c:	00191613          	slli	a2,s2,0x1
    80003680:	012607b3          	add	a5,a2,s2
    80003684:	00379793          	slli	a5,a5,0x3
    80003688:	00f987b3          	add	a5,s3,a5
    8000368c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003690:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003694:	00008717          	auipc	a4,0x8
    80003698:	41c73703          	ld	a4,1052(a4) # 8000bab0 <_ZL10waitForAll>
    8000369c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800036a0:	00078613          	mv	a2,a5
    800036a4:	00000597          	auipc	a1,0x0
    800036a8:	d7458593          	addi	a1,a1,-652 # 80003418 <_ZL8consumerPv>
    800036ac:	f9840513          	addi	a0,s0,-104
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	c48080e7          	jalr	-952(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800036b8:	00000493          	li	s1,0
    800036bc:	0280006f          	j	800036e4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800036c0:	00000597          	auipc	a1,0x0
    800036c4:	c1458593          	addi	a1,a1,-1004 # 800032d4 <_ZL16producerKeyboardPv>
                      data + i);
    800036c8:	00179613          	slli	a2,a5,0x1
    800036cc:	00f60633          	add	a2,a2,a5
    800036d0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800036d4:	00c98633          	add	a2,s3,a2
    800036d8:	ffffe097          	auipc	ra,0xffffe
    800036dc:	c20080e7          	jalr	-992(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800036e0:	0014849b          	addiw	s1,s1,1
    800036e4:	0524d263          	bge	s1,s2,80003728 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800036e8:	00149793          	slli	a5,s1,0x1
    800036ec:	009787b3          	add	a5,a5,s1
    800036f0:	00379793          	slli	a5,a5,0x3
    800036f4:	00f987b3          	add	a5,s3,a5
    800036f8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800036fc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003700:	00008717          	auipc	a4,0x8
    80003704:	3b073703          	ld	a4,944(a4) # 8000bab0 <_ZL10waitForAll>
    80003708:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000370c:	00048793          	mv	a5,s1
    80003710:	00349513          	slli	a0,s1,0x3
    80003714:	00aa8533          	add	a0,s5,a0
    80003718:	fa9054e3          	blez	s1,800036c0 <_Z22producerConsumer_C_APIv+0x1c8>
    8000371c:	00000597          	auipc	a1,0x0
    80003720:	c6858593          	addi	a1,a1,-920 # 80003384 <_ZL8producerPv>
    80003724:	fa5ff06f          	j	800036c8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	ca4080e7          	jalr	-860(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003730:	00000493          	li	s1,0
    80003734:	00994e63          	blt	s2,s1,80003750 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003738:	00008517          	auipc	a0,0x8
    8000373c:	37853503          	ld	a0,888(a0) # 8000bab0 <_ZL10waitForAll>
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	d64080e7          	jalr	-668(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003748:	0014849b          	addiw	s1,s1,1
    8000374c:	fe9ff06f          	j	80003734 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003750:	00008517          	auipc	a0,0x8
    80003754:	36053503          	ld	a0,864(a0) # 8000bab0 <_ZL10waitForAll>
    80003758:	ffffe097          	auipc	ra,0xffffe
    8000375c:	d00080e7          	jalr	-768(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003760:	000a0e63          	beqz	s4,8000377c <_Z22producerConsumer_C_APIv+0x284>
    80003764:	000a0513          	mv	a0,s4
    80003768:	00003097          	auipc	ra,0x3
    8000376c:	0d8080e7          	jalr	216(ra) # 80006840 <_ZN6BufferD1Ev>
    80003770:	000a0513          	mv	a0,s4
    80003774:	fffff097          	auipc	ra,0xfffff
    80003778:	bb4080e7          	jalr	-1100(ra) # 80002328 <_ZdlPv>
    8000377c:	000b0113          	mv	sp,s6

}
    80003780:	f9040113          	addi	sp,s0,-112
    80003784:	06813083          	ld	ra,104(sp)
    80003788:	06013403          	ld	s0,96(sp)
    8000378c:	05813483          	ld	s1,88(sp)
    80003790:	05013903          	ld	s2,80(sp)
    80003794:	04813983          	ld	s3,72(sp)
    80003798:	04013a03          	ld	s4,64(sp)
    8000379c:	03813a83          	ld	s5,56(sp)
    800037a0:	03013b03          	ld	s6,48(sp)
    800037a4:	07010113          	addi	sp,sp,112
    800037a8:	00008067          	ret
    800037ac:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800037b0:	000a0513          	mv	a0,s4
    800037b4:	fffff097          	auipc	ra,0xfffff
    800037b8:	b74080e7          	jalr	-1164(ra) # 80002328 <_ZdlPv>
    800037bc:	00048513          	mv	a0,s1
    800037c0:	00009097          	auipc	ra,0x9
    800037c4:	408080e7          	jalr	1032(ra) # 8000cbc8 <_Unwind_Resume>

00000000800037c8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800037c8:	fe010113          	addi	sp,sp,-32
    800037cc:	00113c23          	sd	ra,24(sp)
    800037d0:	00813823          	sd	s0,16(sp)
    800037d4:	00913423          	sd	s1,8(sp)
    800037d8:	01213023          	sd	s2,0(sp)
    800037dc:	02010413          	addi	s0,sp,32
    800037e0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800037e4:	00100793          	li	a5,1
    800037e8:	02a7f863          	bgeu	a5,a0,80003818 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800037ec:	00a00793          	li	a5,10
    800037f0:	02f577b3          	remu	a5,a0,a5
    800037f4:	02078e63          	beqz	a5,80003830 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800037f8:	fff48513          	addi	a0,s1,-1
    800037fc:	00000097          	auipc	ra,0x0
    80003800:	fcc080e7          	jalr	-52(ra) # 800037c8 <_ZL9fibonaccim>
    80003804:	00050913          	mv	s2,a0
    80003808:	ffe48513          	addi	a0,s1,-2
    8000380c:	00000097          	auipc	ra,0x0
    80003810:	fbc080e7          	jalr	-68(ra) # 800037c8 <_ZL9fibonaccim>
    80003814:	00a90533          	add	a0,s2,a0
}
    80003818:	01813083          	ld	ra,24(sp)
    8000381c:	01013403          	ld	s0,16(sp)
    80003820:	00813483          	ld	s1,8(sp)
    80003824:	00013903          	ld	s2,0(sp)
    80003828:	02010113          	addi	sp,sp,32
    8000382c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	b9c080e7          	jalr	-1124(ra) # 800013cc <_Z15thread_dispatchv>
    80003838:	fc1ff06f          	j	800037f8 <_ZL9fibonaccim+0x30>

000000008000383c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000383c:	fe010113          	addi	sp,sp,-32
    80003840:	00113c23          	sd	ra,24(sp)
    80003844:	00813823          	sd	s0,16(sp)
    80003848:	00913423          	sd	s1,8(sp)
    8000384c:	01213023          	sd	s2,0(sp)
    80003850:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003854:	00000913          	li	s2,0
    80003858:	0380006f          	j	80003890 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	b70080e7          	jalr	-1168(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003864:	00148493          	addi	s1,s1,1
    80003868:	000027b7          	lui	a5,0x2
    8000386c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003870:	0097ee63          	bltu	a5,s1,8000388c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003874:	00000713          	li	a4,0
    80003878:	000077b7          	lui	a5,0x7
    8000387c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003880:	fce7eee3          	bltu	a5,a4,8000385c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003884:	00170713          	addi	a4,a4,1
    80003888:	ff1ff06f          	j	80003878 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000388c:	00190913          	addi	s2,s2,1
    80003890:	00900793          	li	a5,9
    80003894:	0527e063          	bltu	a5,s2,800038d4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003898:	00006517          	auipc	a0,0x6
    8000389c:	98050513          	addi	a0,a0,-1664 # 80009218 <CONSOLE_STATUS+0x208>
    800038a0:	00002097          	auipc	ra,0x2
    800038a4:	eac080e7          	jalr	-340(ra) # 8000574c <_Z11printStringPKc>
    800038a8:	00000613          	li	a2,0
    800038ac:	00a00593          	li	a1,10
    800038b0:	0009051b          	sext.w	a0,s2
    800038b4:	00002097          	auipc	ra,0x2
    800038b8:	048080e7          	jalr	72(ra) # 800058fc <_Z8printIntiii>
    800038bc:	00006517          	auipc	a0,0x6
    800038c0:	8ac50513          	addi	a0,a0,-1876 # 80009168 <CONSOLE_STATUS+0x158>
    800038c4:	00002097          	auipc	ra,0x2
    800038c8:	e88080e7          	jalr	-376(ra) # 8000574c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800038cc:	00000493          	li	s1,0
    800038d0:	f99ff06f          	j	80003868 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800038d4:	00006517          	auipc	a0,0x6
    800038d8:	94c50513          	addi	a0,a0,-1716 # 80009220 <CONSOLE_STATUS+0x210>
    800038dc:	00002097          	auipc	ra,0x2
    800038e0:	e70080e7          	jalr	-400(ra) # 8000574c <_Z11printStringPKc>
    finishedA = true;
    800038e4:	00100793          	li	a5,1
    800038e8:	00008717          	auipc	a4,0x8
    800038ec:	1cf70823          	sb	a5,464(a4) # 8000bab8 <_ZL9finishedA>
}
    800038f0:	01813083          	ld	ra,24(sp)
    800038f4:	01013403          	ld	s0,16(sp)
    800038f8:	00813483          	ld	s1,8(sp)
    800038fc:	00013903          	ld	s2,0(sp)
    80003900:	02010113          	addi	sp,sp,32
    80003904:	00008067          	ret

0000000080003908 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003908:	fe010113          	addi	sp,sp,-32
    8000390c:	00113c23          	sd	ra,24(sp)
    80003910:	00813823          	sd	s0,16(sp)
    80003914:	00913423          	sd	s1,8(sp)
    80003918:	01213023          	sd	s2,0(sp)
    8000391c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003920:	00000913          	li	s2,0
    80003924:	0380006f          	j	8000395c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003928:	ffffe097          	auipc	ra,0xffffe
    8000392c:	aa4080e7          	jalr	-1372(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003930:	00148493          	addi	s1,s1,1
    80003934:	000027b7          	lui	a5,0x2
    80003938:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000393c:	0097ee63          	bltu	a5,s1,80003958 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003940:	00000713          	li	a4,0
    80003944:	000077b7          	lui	a5,0x7
    80003948:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000394c:	fce7eee3          	bltu	a5,a4,80003928 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003950:	00170713          	addi	a4,a4,1
    80003954:	ff1ff06f          	j	80003944 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003958:	00190913          	addi	s2,s2,1
    8000395c:	00f00793          	li	a5,15
    80003960:	0527e063          	bltu	a5,s2,800039a0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003964:	00006517          	auipc	a0,0x6
    80003968:	8cc50513          	addi	a0,a0,-1844 # 80009230 <CONSOLE_STATUS+0x220>
    8000396c:	00002097          	auipc	ra,0x2
    80003970:	de0080e7          	jalr	-544(ra) # 8000574c <_Z11printStringPKc>
    80003974:	00000613          	li	a2,0
    80003978:	00a00593          	li	a1,10
    8000397c:	0009051b          	sext.w	a0,s2
    80003980:	00002097          	auipc	ra,0x2
    80003984:	f7c080e7          	jalr	-132(ra) # 800058fc <_Z8printIntiii>
    80003988:	00005517          	auipc	a0,0x5
    8000398c:	7e050513          	addi	a0,a0,2016 # 80009168 <CONSOLE_STATUS+0x158>
    80003990:	00002097          	auipc	ra,0x2
    80003994:	dbc080e7          	jalr	-580(ra) # 8000574c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003998:	00000493          	li	s1,0
    8000399c:	f99ff06f          	j	80003934 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800039a0:	00006517          	auipc	a0,0x6
    800039a4:	89850513          	addi	a0,a0,-1896 # 80009238 <CONSOLE_STATUS+0x228>
    800039a8:	00002097          	auipc	ra,0x2
    800039ac:	da4080e7          	jalr	-604(ra) # 8000574c <_Z11printStringPKc>
    finishedB = true;
    800039b0:	00100793          	li	a5,1
    800039b4:	00008717          	auipc	a4,0x8
    800039b8:	10f702a3          	sb	a5,261(a4) # 8000bab9 <_ZL9finishedB>
    thread_dispatch();
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	a10080e7          	jalr	-1520(ra) # 800013cc <_Z15thread_dispatchv>
}
    800039c4:	01813083          	ld	ra,24(sp)
    800039c8:	01013403          	ld	s0,16(sp)
    800039cc:	00813483          	ld	s1,8(sp)
    800039d0:	00013903          	ld	s2,0(sp)
    800039d4:	02010113          	addi	sp,sp,32
    800039d8:	00008067          	ret

00000000800039dc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800039dc:	fe010113          	addi	sp,sp,-32
    800039e0:	00113c23          	sd	ra,24(sp)
    800039e4:	00813823          	sd	s0,16(sp)
    800039e8:	00913423          	sd	s1,8(sp)
    800039ec:	01213023          	sd	s2,0(sp)
    800039f0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800039f4:	00000493          	li	s1,0
    800039f8:	0400006f          	j	80003a38 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800039fc:	00006517          	auipc	a0,0x6
    80003a00:	84c50513          	addi	a0,a0,-1972 # 80009248 <CONSOLE_STATUS+0x238>
    80003a04:	00002097          	auipc	ra,0x2
    80003a08:	d48080e7          	jalr	-696(ra) # 8000574c <_Z11printStringPKc>
    80003a0c:	00000613          	li	a2,0
    80003a10:	00a00593          	li	a1,10
    80003a14:	00048513          	mv	a0,s1
    80003a18:	00002097          	auipc	ra,0x2
    80003a1c:	ee4080e7          	jalr	-284(ra) # 800058fc <_Z8printIntiii>
    80003a20:	00005517          	auipc	a0,0x5
    80003a24:	74850513          	addi	a0,a0,1864 # 80009168 <CONSOLE_STATUS+0x158>
    80003a28:	00002097          	auipc	ra,0x2
    80003a2c:	d24080e7          	jalr	-732(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003a30:	0014849b          	addiw	s1,s1,1
    80003a34:	0ff4f493          	andi	s1,s1,255
    80003a38:	00200793          	li	a5,2
    80003a3c:	fc97f0e3          	bgeu	a5,s1,800039fc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003a40:	00006517          	auipc	a0,0x6
    80003a44:	81050513          	addi	a0,a0,-2032 # 80009250 <CONSOLE_STATUS+0x240>
    80003a48:	00002097          	auipc	ra,0x2
    80003a4c:	d04080e7          	jalr	-764(ra) # 8000574c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003a50:	00700313          	li	t1,7
    thread_dispatch();
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	978080e7          	jalr	-1672(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003a5c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003a60:	00006517          	auipc	a0,0x6
    80003a64:	80050513          	addi	a0,a0,-2048 # 80009260 <CONSOLE_STATUS+0x250>
    80003a68:	00002097          	auipc	ra,0x2
    80003a6c:	ce4080e7          	jalr	-796(ra) # 8000574c <_Z11printStringPKc>
    80003a70:	00000613          	li	a2,0
    80003a74:	00a00593          	li	a1,10
    80003a78:	0009051b          	sext.w	a0,s2
    80003a7c:	00002097          	auipc	ra,0x2
    80003a80:	e80080e7          	jalr	-384(ra) # 800058fc <_Z8printIntiii>
    80003a84:	00005517          	auipc	a0,0x5
    80003a88:	6e450513          	addi	a0,a0,1764 # 80009168 <CONSOLE_STATUS+0x158>
    80003a8c:	00002097          	auipc	ra,0x2
    80003a90:	cc0080e7          	jalr	-832(ra) # 8000574c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003a94:	00c00513          	li	a0,12
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	d30080e7          	jalr	-720(ra) # 800037c8 <_ZL9fibonaccim>
    80003aa0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003aa4:	00005517          	auipc	a0,0x5
    80003aa8:	7c450513          	addi	a0,a0,1988 # 80009268 <CONSOLE_STATUS+0x258>
    80003aac:	00002097          	auipc	ra,0x2
    80003ab0:	ca0080e7          	jalr	-864(ra) # 8000574c <_Z11printStringPKc>
    80003ab4:	00000613          	li	a2,0
    80003ab8:	00a00593          	li	a1,10
    80003abc:	0009051b          	sext.w	a0,s2
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	e3c080e7          	jalr	-452(ra) # 800058fc <_Z8printIntiii>
    80003ac8:	00005517          	auipc	a0,0x5
    80003acc:	6a050513          	addi	a0,a0,1696 # 80009168 <CONSOLE_STATUS+0x158>
    80003ad0:	00002097          	auipc	ra,0x2
    80003ad4:	c7c080e7          	jalr	-900(ra) # 8000574c <_Z11printStringPKc>
    80003ad8:	0400006f          	j	80003b18 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003adc:	00005517          	auipc	a0,0x5
    80003ae0:	76c50513          	addi	a0,a0,1900 # 80009248 <CONSOLE_STATUS+0x238>
    80003ae4:	00002097          	auipc	ra,0x2
    80003ae8:	c68080e7          	jalr	-920(ra) # 8000574c <_Z11printStringPKc>
    80003aec:	00000613          	li	a2,0
    80003af0:	00a00593          	li	a1,10
    80003af4:	00048513          	mv	a0,s1
    80003af8:	00002097          	auipc	ra,0x2
    80003afc:	e04080e7          	jalr	-508(ra) # 800058fc <_Z8printIntiii>
    80003b00:	00005517          	auipc	a0,0x5
    80003b04:	66850513          	addi	a0,a0,1640 # 80009168 <CONSOLE_STATUS+0x158>
    80003b08:	00002097          	auipc	ra,0x2
    80003b0c:	c44080e7          	jalr	-956(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003b10:	0014849b          	addiw	s1,s1,1
    80003b14:	0ff4f493          	andi	s1,s1,255
    80003b18:	00500793          	li	a5,5
    80003b1c:	fc97f0e3          	bgeu	a5,s1,80003adc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003b20:	00005517          	auipc	a0,0x5
    80003b24:	70050513          	addi	a0,a0,1792 # 80009220 <CONSOLE_STATUS+0x210>
    80003b28:	00002097          	auipc	ra,0x2
    80003b2c:	c24080e7          	jalr	-988(ra) # 8000574c <_Z11printStringPKc>
    finishedC = true;
    80003b30:	00100793          	li	a5,1
    80003b34:	00008717          	auipc	a4,0x8
    80003b38:	f8f70323          	sb	a5,-122(a4) # 8000baba <_ZL9finishedC>
    thread_dispatch();
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	890080e7          	jalr	-1904(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003b44:	01813083          	ld	ra,24(sp)
    80003b48:	01013403          	ld	s0,16(sp)
    80003b4c:	00813483          	ld	s1,8(sp)
    80003b50:	00013903          	ld	s2,0(sp)
    80003b54:	02010113          	addi	sp,sp,32
    80003b58:	00008067          	ret

0000000080003b5c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003b5c:	fe010113          	addi	sp,sp,-32
    80003b60:	00113c23          	sd	ra,24(sp)
    80003b64:	00813823          	sd	s0,16(sp)
    80003b68:	00913423          	sd	s1,8(sp)
    80003b6c:	01213023          	sd	s2,0(sp)
    80003b70:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003b74:	00a00493          	li	s1,10
    80003b78:	0400006f          	j	80003bb8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b7c:	00005517          	auipc	a0,0x5
    80003b80:	6fc50513          	addi	a0,a0,1788 # 80009278 <CONSOLE_STATUS+0x268>
    80003b84:	00002097          	auipc	ra,0x2
    80003b88:	bc8080e7          	jalr	-1080(ra) # 8000574c <_Z11printStringPKc>
    80003b8c:	00000613          	li	a2,0
    80003b90:	00a00593          	li	a1,10
    80003b94:	00048513          	mv	a0,s1
    80003b98:	00002097          	auipc	ra,0x2
    80003b9c:	d64080e7          	jalr	-668(ra) # 800058fc <_Z8printIntiii>
    80003ba0:	00005517          	auipc	a0,0x5
    80003ba4:	5c850513          	addi	a0,a0,1480 # 80009168 <CONSOLE_STATUS+0x158>
    80003ba8:	00002097          	auipc	ra,0x2
    80003bac:	ba4080e7          	jalr	-1116(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003bb0:	0014849b          	addiw	s1,s1,1
    80003bb4:	0ff4f493          	andi	s1,s1,255
    80003bb8:	00c00793          	li	a5,12
    80003bbc:	fc97f0e3          	bgeu	a5,s1,80003b7c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003bc0:	00005517          	auipc	a0,0x5
    80003bc4:	6c050513          	addi	a0,a0,1728 # 80009280 <CONSOLE_STATUS+0x270>
    80003bc8:	00002097          	auipc	ra,0x2
    80003bcc:	b84080e7          	jalr	-1148(ra) # 8000574c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003bd0:	00500313          	li	t1,5
    thread_dispatch();
    80003bd4:	ffffd097          	auipc	ra,0xffffd
    80003bd8:	7f8080e7          	jalr	2040(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003bdc:	01000513          	li	a0,16
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	be8080e7          	jalr	-1048(ra) # 800037c8 <_ZL9fibonaccim>
    80003be8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003bec:	00005517          	auipc	a0,0x5
    80003bf0:	6a450513          	addi	a0,a0,1700 # 80009290 <CONSOLE_STATUS+0x280>
    80003bf4:	00002097          	auipc	ra,0x2
    80003bf8:	b58080e7          	jalr	-1192(ra) # 8000574c <_Z11printStringPKc>
    80003bfc:	00000613          	li	a2,0
    80003c00:	00a00593          	li	a1,10
    80003c04:	0009051b          	sext.w	a0,s2
    80003c08:	00002097          	auipc	ra,0x2
    80003c0c:	cf4080e7          	jalr	-780(ra) # 800058fc <_Z8printIntiii>
    80003c10:	00005517          	auipc	a0,0x5
    80003c14:	55850513          	addi	a0,a0,1368 # 80009168 <CONSOLE_STATUS+0x158>
    80003c18:	00002097          	auipc	ra,0x2
    80003c1c:	b34080e7          	jalr	-1228(ra) # 8000574c <_Z11printStringPKc>
    80003c20:	0400006f          	j	80003c60 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c24:	00005517          	auipc	a0,0x5
    80003c28:	65450513          	addi	a0,a0,1620 # 80009278 <CONSOLE_STATUS+0x268>
    80003c2c:	00002097          	auipc	ra,0x2
    80003c30:	b20080e7          	jalr	-1248(ra) # 8000574c <_Z11printStringPKc>
    80003c34:	00000613          	li	a2,0
    80003c38:	00a00593          	li	a1,10
    80003c3c:	00048513          	mv	a0,s1
    80003c40:	00002097          	auipc	ra,0x2
    80003c44:	cbc080e7          	jalr	-836(ra) # 800058fc <_Z8printIntiii>
    80003c48:	00005517          	auipc	a0,0x5
    80003c4c:	52050513          	addi	a0,a0,1312 # 80009168 <CONSOLE_STATUS+0x158>
    80003c50:	00002097          	auipc	ra,0x2
    80003c54:	afc080e7          	jalr	-1284(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003c58:	0014849b          	addiw	s1,s1,1
    80003c5c:	0ff4f493          	andi	s1,s1,255
    80003c60:	00f00793          	li	a5,15
    80003c64:	fc97f0e3          	bgeu	a5,s1,80003c24 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003c68:	00005517          	auipc	a0,0x5
    80003c6c:	63850513          	addi	a0,a0,1592 # 800092a0 <CONSOLE_STATUS+0x290>
    80003c70:	00002097          	auipc	ra,0x2
    80003c74:	adc080e7          	jalr	-1316(ra) # 8000574c <_Z11printStringPKc>
    finishedD = true;
    80003c78:	00100793          	li	a5,1
    80003c7c:	00008717          	auipc	a4,0x8
    80003c80:	e2f70fa3          	sb	a5,-449(a4) # 8000babb <_ZL9finishedD>
    thread_dispatch();
    80003c84:	ffffd097          	auipc	ra,0xffffd
    80003c88:	748080e7          	jalr	1864(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003c8c:	01813083          	ld	ra,24(sp)
    80003c90:	01013403          	ld	s0,16(sp)
    80003c94:	00813483          	ld	s1,8(sp)
    80003c98:	00013903          	ld	s2,0(sp)
    80003c9c:	02010113          	addi	sp,sp,32
    80003ca0:	00008067          	ret

0000000080003ca4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003ca4:	fc010113          	addi	sp,sp,-64
    80003ca8:	02113c23          	sd	ra,56(sp)
    80003cac:	02813823          	sd	s0,48(sp)
    80003cb0:	02913423          	sd	s1,40(sp)
    80003cb4:	03213023          	sd	s2,32(sp)
    80003cb8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003cbc:	02000513          	li	a0,32
    80003cc0:	ffffe097          	auipc	ra,0xffffe
    80003cc4:	640080e7          	jalr	1600(ra) # 80002300 <_Znwm>
    80003cc8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	7c4080e7          	jalr	1988(ra) # 80002490 <_ZN6ThreadC1Ev>
    80003cd4:	00008797          	auipc	a5,0x8
    80003cd8:	b6c78793          	addi	a5,a5,-1172 # 8000b840 <_ZTV7WorkerA+0x10>
    80003cdc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003ce0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003ce4:	00005517          	auipc	a0,0x5
    80003ce8:	5cc50513          	addi	a0,a0,1484 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003cec:	00002097          	auipc	ra,0x2
    80003cf0:	a60080e7          	jalr	-1440(ra) # 8000574c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003cf4:	02000513          	li	a0,32
    80003cf8:	ffffe097          	auipc	ra,0xffffe
    80003cfc:	608080e7          	jalr	1544(ra) # 80002300 <_Znwm>
    80003d00:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003d04:	ffffe097          	auipc	ra,0xffffe
    80003d08:	78c080e7          	jalr	1932(ra) # 80002490 <_ZN6ThreadC1Ev>
    80003d0c:	00008797          	auipc	a5,0x8
    80003d10:	b5c78793          	addi	a5,a5,-1188 # 8000b868 <_ZTV7WorkerB+0x10>
    80003d14:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003d18:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003d1c:	00005517          	auipc	a0,0x5
    80003d20:	5ac50513          	addi	a0,a0,1452 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003d24:	00002097          	auipc	ra,0x2
    80003d28:	a28080e7          	jalr	-1496(ra) # 8000574c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003d2c:	02000513          	li	a0,32
    80003d30:	ffffe097          	auipc	ra,0xffffe
    80003d34:	5d0080e7          	jalr	1488(ra) # 80002300 <_Znwm>
    80003d38:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003d3c:	ffffe097          	auipc	ra,0xffffe
    80003d40:	754080e7          	jalr	1876(ra) # 80002490 <_ZN6ThreadC1Ev>
    80003d44:	00008797          	auipc	a5,0x8
    80003d48:	b4c78793          	addi	a5,a5,-1204 # 8000b890 <_ZTV7WorkerC+0x10>
    80003d4c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003d50:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003d54:	00005517          	auipc	a0,0x5
    80003d58:	58c50513          	addi	a0,a0,1420 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003d5c:	00002097          	auipc	ra,0x2
    80003d60:	9f0080e7          	jalr	-1552(ra) # 8000574c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003d64:	02000513          	li	a0,32
    80003d68:	ffffe097          	auipc	ra,0xffffe
    80003d6c:	598080e7          	jalr	1432(ra) # 80002300 <_Znwm>
    80003d70:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	71c080e7          	jalr	1820(ra) # 80002490 <_ZN6ThreadC1Ev>
    80003d7c:	00008797          	auipc	a5,0x8
    80003d80:	b3c78793          	addi	a5,a5,-1220 # 8000b8b8 <_ZTV7WorkerD+0x10>
    80003d84:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003d88:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003d8c:	00005517          	auipc	a0,0x5
    80003d90:	56c50513          	addi	a0,a0,1388 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003d94:	00002097          	auipc	ra,0x2
    80003d98:	9b8080e7          	jalr	-1608(ra) # 8000574c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003d9c:	00000493          	li	s1,0
    80003da0:	00300793          	li	a5,3
    80003da4:	0297c663          	blt	a5,s1,80003dd0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003da8:	00349793          	slli	a5,s1,0x3
    80003dac:	fe040713          	addi	a4,s0,-32
    80003db0:	00f707b3          	add	a5,a4,a5
    80003db4:	fe07b503          	ld	a0,-32(a5)
    80003db8:	ffffe097          	auipc	ra,0xffffe
    80003dbc:	654080e7          	jalr	1620(ra) # 8000240c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003dc0:	0014849b          	addiw	s1,s1,1
    80003dc4:	fddff06f          	j	80003da0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003dc8:	ffffe097          	auipc	ra,0xffffe
    80003dcc:	674080e7          	jalr	1652(ra) # 8000243c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003dd0:	00008797          	auipc	a5,0x8
    80003dd4:	ce87c783          	lbu	a5,-792(a5) # 8000bab8 <_ZL9finishedA>
    80003dd8:	fe0788e3          	beqz	a5,80003dc8 <_Z20Threads_CPP_API_testv+0x124>
    80003ddc:	00008797          	auipc	a5,0x8
    80003de0:	cdd7c783          	lbu	a5,-803(a5) # 8000bab9 <_ZL9finishedB>
    80003de4:	fe0782e3          	beqz	a5,80003dc8 <_Z20Threads_CPP_API_testv+0x124>
    80003de8:	00008797          	auipc	a5,0x8
    80003dec:	cd27c783          	lbu	a5,-814(a5) # 8000baba <_ZL9finishedC>
    80003df0:	fc078ce3          	beqz	a5,80003dc8 <_Z20Threads_CPP_API_testv+0x124>
    80003df4:	00008797          	auipc	a5,0x8
    80003df8:	cc77c783          	lbu	a5,-825(a5) # 8000babb <_ZL9finishedD>
    80003dfc:	fc0786e3          	beqz	a5,80003dc8 <_Z20Threads_CPP_API_testv+0x124>
    80003e00:	fc040493          	addi	s1,s0,-64
    80003e04:	0080006f          	j	80003e0c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003e08:	00848493          	addi	s1,s1,8
    80003e0c:	fe040793          	addi	a5,s0,-32
    80003e10:	08f48663          	beq	s1,a5,80003e9c <_Z20Threads_CPP_API_testv+0x1f8>
    80003e14:	0004b503          	ld	a0,0(s1)
    80003e18:	fe0508e3          	beqz	a0,80003e08 <_Z20Threads_CPP_API_testv+0x164>
    80003e1c:	00053783          	ld	a5,0(a0)
    80003e20:	0087b783          	ld	a5,8(a5)
    80003e24:	000780e7          	jalr	a5
    80003e28:	fe1ff06f          	j	80003e08 <_Z20Threads_CPP_API_testv+0x164>
    80003e2c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003e30:	00048513          	mv	a0,s1
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	4f4080e7          	jalr	1268(ra) # 80002328 <_ZdlPv>
    80003e3c:	00090513          	mv	a0,s2
    80003e40:	00009097          	auipc	ra,0x9
    80003e44:	d88080e7          	jalr	-632(ra) # 8000cbc8 <_Unwind_Resume>
    80003e48:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003e4c:	00048513          	mv	a0,s1
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	4d8080e7          	jalr	1240(ra) # 80002328 <_ZdlPv>
    80003e58:	00090513          	mv	a0,s2
    80003e5c:	00009097          	auipc	ra,0x9
    80003e60:	d6c080e7          	jalr	-660(ra) # 8000cbc8 <_Unwind_Resume>
    80003e64:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003e68:	00048513          	mv	a0,s1
    80003e6c:	ffffe097          	auipc	ra,0xffffe
    80003e70:	4bc080e7          	jalr	1212(ra) # 80002328 <_ZdlPv>
    80003e74:	00090513          	mv	a0,s2
    80003e78:	00009097          	auipc	ra,0x9
    80003e7c:	d50080e7          	jalr	-688(ra) # 8000cbc8 <_Unwind_Resume>
    80003e80:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003e84:	00048513          	mv	a0,s1
    80003e88:	ffffe097          	auipc	ra,0xffffe
    80003e8c:	4a0080e7          	jalr	1184(ra) # 80002328 <_ZdlPv>
    80003e90:	00090513          	mv	a0,s2
    80003e94:	00009097          	auipc	ra,0x9
    80003e98:	d34080e7          	jalr	-716(ra) # 8000cbc8 <_Unwind_Resume>
}
    80003e9c:	03813083          	ld	ra,56(sp)
    80003ea0:	03013403          	ld	s0,48(sp)
    80003ea4:	02813483          	ld	s1,40(sp)
    80003ea8:	02013903          	ld	s2,32(sp)
    80003eac:	04010113          	addi	sp,sp,64
    80003eb0:	00008067          	ret

0000000080003eb4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00113423          	sd	ra,8(sp)
    80003ebc:	00813023          	sd	s0,0(sp)
    80003ec0:	01010413          	addi	s0,sp,16
    80003ec4:	00008797          	auipc	a5,0x8
    80003ec8:	97c78793          	addi	a5,a5,-1668 # 8000b840 <_ZTV7WorkerA+0x10>
    80003ecc:	00f53023          	sd	a5,0(a0)
    80003ed0:	ffffe097          	auipc	ra,0xffffe
    80003ed4:	398080e7          	jalr	920(ra) # 80002268 <_ZN6ThreadD1Ev>
    80003ed8:	00813083          	ld	ra,8(sp)
    80003edc:	00013403          	ld	s0,0(sp)
    80003ee0:	01010113          	addi	sp,sp,16
    80003ee4:	00008067          	ret

0000000080003ee8 <_ZN7WorkerAD0Ev>:
    80003ee8:	fe010113          	addi	sp,sp,-32
    80003eec:	00113c23          	sd	ra,24(sp)
    80003ef0:	00813823          	sd	s0,16(sp)
    80003ef4:	00913423          	sd	s1,8(sp)
    80003ef8:	02010413          	addi	s0,sp,32
    80003efc:	00050493          	mv	s1,a0
    80003f00:	00008797          	auipc	a5,0x8
    80003f04:	94078793          	addi	a5,a5,-1728 # 8000b840 <_ZTV7WorkerA+0x10>
    80003f08:	00f53023          	sd	a5,0(a0)
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	35c080e7          	jalr	860(ra) # 80002268 <_ZN6ThreadD1Ev>
    80003f14:	00048513          	mv	a0,s1
    80003f18:	ffffe097          	auipc	ra,0xffffe
    80003f1c:	410080e7          	jalr	1040(ra) # 80002328 <_ZdlPv>
    80003f20:	01813083          	ld	ra,24(sp)
    80003f24:	01013403          	ld	s0,16(sp)
    80003f28:	00813483          	ld	s1,8(sp)
    80003f2c:	02010113          	addi	sp,sp,32
    80003f30:	00008067          	ret

0000000080003f34 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003f34:	ff010113          	addi	sp,sp,-16
    80003f38:	00113423          	sd	ra,8(sp)
    80003f3c:	00813023          	sd	s0,0(sp)
    80003f40:	01010413          	addi	s0,sp,16
    80003f44:	00008797          	auipc	a5,0x8
    80003f48:	92478793          	addi	a5,a5,-1756 # 8000b868 <_ZTV7WorkerB+0x10>
    80003f4c:	00f53023          	sd	a5,0(a0)
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	318080e7          	jalr	792(ra) # 80002268 <_ZN6ThreadD1Ev>
    80003f58:	00813083          	ld	ra,8(sp)
    80003f5c:	00013403          	ld	s0,0(sp)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret

0000000080003f68 <_ZN7WorkerBD0Ev>:
    80003f68:	fe010113          	addi	sp,sp,-32
    80003f6c:	00113c23          	sd	ra,24(sp)
    80003f70:	00813823          	sd	s0,16(sp)
    80003f74:	00913423          	sd	s1,8(sp)
    80003f78:	02010413          	addi	s0,sp,32
    80003f7c:	00050493          	mv	s1,a0
    80003f80:	00008797          	auipc	a5,0x8
    80003f84:	8e878793          	addi	a5,a5,-1816 # 8000b868 <_ZTV7WorkerB+0x10>
    80003f88:	00f53023          	sd	a5,0(a0)
    80003f8c:	ffffe097          	auipc	ra,0xffffe
    80003f90:	2dc080e7          	jalr	732(ra) # 80002268 <_ZN6ThreadD1Ev>
    80003f94:	00048513          	mv	a0,s1
    80003f98:	ffffe097          	auipc	ra,0xffffe
    80003f9c:	390080e7          	jalr	912(ra) # 80002328 <_ZdlPv>
    80003fa0:	01813083          	ld	ra,24(sp)
    80003fa4:	01013403          	ld	s0,16(sp)
    80003fa8:	00813483          	ld	s1,8(sp)
    80003fac:	02010113          	addi	sp,sp,32
    80003fb0:	00008067          	ret

0000000080003fb4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003fb4:	ff010113          	addi	sp,sp,-16
    80003fb8:	00113423          	sd	ra,8(sp)
    80003fbc:	00813023          	sd	s0,0(sp)
    80003fc0:	01010413          	addi	s0,sp,16
    80003fc4:	00008797          	auipc	a5,0x8
    80003fc8:	8cc78793          	addi	a5,a5,-1844 # 8000b890 <_ZTV7WorkerC+0x10>
    80003fcc:	00f53023          	sd	a5,0(a0)
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	298080e7          	jalr	664(ra) # 80002268 <_ZN6ThreadD1Ev>
    80003fd8:	00813083          	ld	ra,8(sp)
    80003fdc:	00013403          	ld	s0,0(sp)
    80003fe0:	01010113          	addi	sp,sp,16
    80003fe4:	00008067          	ret

0000000080003fe8 <_ZN7WorkerCD0Ev>:
    80003fe8:	fe010113          	addi	sp,sp,-32
    80003fec:	00113c23          	sd	ra,24(sp)
    80003ff0:	00813823          	sd	s0,16(sp)
    80003ff4:	00913423          	sd	s1,8(sp)
    80003ff8:	02010413          	addi	s0,sp,32
    80003ffc:	00050493          	mv	s1,a0
    80004000:	00008797          	auipc	a5,0x8
    80004004:	89078793          	addi	a5,a5,-1904 # 8000b890 <_ZTV7WorkerC+0x10>
    80004008:	00f53023          	sd	a5,0(a0)
    8000400c:	ffffe097          	auipc	ra,0xffffe
    80004010:	25c080e7          	jalr	604(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004014:	00048513          	mv	a0,s1
    80004018:	ffffe097          	auipc	ra,0xffffe
    8000401c:	310080e7          	jalr	784(ra) # 80002328 <_ZdlPv>
    80004020:	01813083          	ld	ra,24(sp)
    80004024:	01013403          	ld	s0,16(sp)
    80004028:	00813483          	ld	s1,8(sp)
    8000402c:	02010113          	addi	sp,sp,32
    80004030:	00008067          	ret

0000000080004034 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004034:	ff010113          	addi	sp,sp,-16
    80004038:	00113423          	sd	ra,8(sp)
    8000403c:	00813023          	sd	s0,0(sp)
    80004040:	01010413          	addi	s0,sp,16
    80004044:	00008797          	auipc	a5,0x8
    80004048:	87478793          	addi	a5,a5,-1932 # 8000b8b8 <_ZTV7WorkerD+0x10>
    8000404c:	00f53023          	sd	a5,0(a0)
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	218080e7          	jalr	536(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004058:	00813083          	ld	ra,8(sp)
    8000405c:	00013403          	ld	s0,0(sp)
    80004060:	01010113          	addi	sp,sp,16
    80004064:	00008067          	ret

0000000080004068 <_ZN7WorkerDD0Ev>:
    80004068:	fe010113          	addi	sp,sp,-32
    8000406c:	00113c23          	sd	ra,24(sp)
    80004070:	00813823          	sd	s0,16(sp)
    80004074:	00913423          	sd	s1,8(sp)
    80004078:	02010413          	addi	s0,sp,32
    8000407c:	00050493          	mv	s1,a0
    80004080:	00008797          	auipc	a5,0x8
    80004084:	83878793          	addi	a5,a5,-1992 # 8000b8b8 <_ZTV7WorkerD+0x10>
    80004088:	00f53023          	sd	a5,0(a0)
    8000408c:	ffffe097          	auipc	ra,0xffffe
    80004090:	1dc080e7          	jalr	476(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004094:	00048513          	mv	a0,s1
    80004098:	ffffe097          	auipc	ra,0xffffe
    8000409c:	290080e7          	jalr	656(ra) # 80002328 <_ZdlPv>
    800040a0:	01813083          	ld	ra,24(sp)
    800040a4:	01013403          	ld	s0,16(sp)
    800040a8:	00813483          	ld	s1,8(sp)
    800040ac:	02010113          	addi	sp,sp,32
    800040b0:	00008067          	ret

00000000800040b4 <_ZN7WorkerA3runEv>:
    void run() override {
    800040b4:	ff010113          	addi	sp,sp,-16
    800040b8:	00113423          	sd	ra,8(sp)
    800040bc:	00813023          	sd	s0,0(sp)
    800040c0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800040c4:	00000593          	li	a1,0
    800040c8:	fffff097          	auipc	ra,0xfffff
    800040cc:	774080e7          	jalr	1908(ra) # 8000383c <_ZN7WorkerA11workerBodyAEPv>
    }
    800040d0:	00813083          	ld	ra,8(sp)
    800040d4:	00013403          	ld	s0,0(sp)
    800040d8:	01010113          	addi	sp,sp,16
    800040dc:	00008067          	ret

00000000800040e0 <_ZN7WorkerB3runEv>:
    void run() override {
    800040e0:	ff010113          	addi	sp,sp,-16
    800040e4:	00113423          	sd	ra,8(sp)
    800040e8:	00813023          	sd	s0,0(sp)
    800040ec:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800040f0:	00000593          	li	a1,0
    800040f4:	00000097          	auipc	ra,0x0
    800040f8:	814080e7          	jalr	-2028(ra) # 80003908 <_ZN7WorkerB11workerBodyBEPv>
    }
    800040fc:	00813083          	ld	ra,8(sp)
    80004100:	00013403          	ld	s0,0(sp)
    80004104:	01010113          	addi	sp,sp,16
    80004108:	00008067          	ret

000000008000410c <_ZN7WorkerC3runEv>:
    void run() override {
    8000410c:	ff010113          	addi	sp,sp,-16
    80004110:	00113423          	sd	ra,8(sp)
    80004114:	00813023          	sd	s0,0(sp)
    80004118:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000411c:	00000593          	li	a1,0
    80004120:	00000097          	auipc	ra,0x0
    80004124:	8bc080e7          	jalr	-1860(ra) # 800039dc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004128:	00813083          	ld	ra,8(sp)
    8000412c:	00013403          	ld	s0,0(sp)
    80004130:	01010113          	addi	sp,sp,16
    80004134:	00008067          	ret

0000000080004138 <_ZN7WorkerD3runEv>:
    void run() override {
    80004138:	ff010113          	addi	sp,sp,-16
    8000413c:	00113423          	sd	ra,8(sp)
    80004140:	00813023          	sd	s0,0(sp)
    80004144:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004148:	00000593          	li	a1,0
    8000414c:	00000097          	auipc	ra,0x0
    80004150:	a10080e7          	jalr	-1520(ra) # 80003b5c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004154:	00813083          	ld	ra,8(sp)
    80004158:	00013403          	ld	s0,0(sp)
    8000415c:	01010113          	addi	sp,sp,16
    80004160:	00008067          	ret

0000000080004164 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004164:	f8010113          	addi	sp,sp,-128
    80004168:	06113c23          	sd	ra,120(sp)
    8000416c:	06813823          	sd	s0,112(sp)
    80004170:	06913423          	sd	s1,104(sp)
    80004174:	07213023          	sd	s2,96(sp)
    80004178:	05313c23          	sd	s3,88(sp)
    8000417c:	05413823          	sd	s4,80(sp)
    80004180:	05513423          	sd	s5,72(sp)
    80004184:	05613023          	sd	s6,64(sp)
    80004188:	03713c23          	sd	s7,56(sp)
    8000418c:	03813823          	sd	s8,48(sp)
    80004190:	03913423          	sd	s9,40(sp)
    80004194:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004198:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000419c:	00005517          	auipc	a0,0x5
    800041a0:	f9450513          	addi	a0,a0,-108 # 80009130 <CONSOLE_STATUS+0x120>
    800041a4:	00001097          	auipc	ra,0x1
    800041a8:	5a8080e7          	jalr	1448(ra) # 8000574c <_Z11printStringPKc>
    getString(input, 30);
    800041ac:	01e00593          	li	a1,30
    800041b0:	f8040493          	addi	s1,s0,-128
    800041b4:	00048513          	mv	a0,s1
    800041b8:	00001097          	auipc	ra,0x1
    800041bc:	61c080e7          	jalr	1564(ra) # 800057d4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800041c0:	00048513          	mv	a0,s1
    800041c4:	00001097          	auipc	ra,0x1
    800041c8:	6e8080e7          	jalr	1768(ra) # 800058ac <_Z11stringToIntPKc>
    800041cc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800041d0:	00005517          	auipc	a0,0x5
    800041d4:	f8050513          	addi	a0,a0,-128 # 80009150 <CONSOLE_STATUS+0x140>
    800041d8:	00001097          	auipc	ra,0x1
    800041dc:	574080e7          	jalr	1396(ra) # 8000574c <_Z11printStringPKc>
    getString(input, 30);
    800041e0:	01e00593          	li	a1,30
    800041e4:	00048513          	mv	a0,s1
    800041e8:	00001097          	auipc	ra,0x1
    800041ec:	5ec080e7          	jalr	1516(ra) # 800057d4 <_Z9getStringPci>
    n = stringToInt(input);
    800041f0:	00048513          	mv	a0,s1
    800041f4:	00001097          	auipc	ra,0x1
    800041f8:	6b8080e7          	jalr	1720(ra) # 800058ac <_Z11stringToIntPKc>
    800041fc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004200:	00005517          	auipc	a0,0x5
    80004204:	f7050513          	addi	a0,a0,-144 # 80009170 <CONSOLE_STATUS+0x160>
    80004208:	00001097          	auipc	ra,0x1
    8000420c:	544080e7          	jalr	1348(ra) # 8000574c <_Z11printStringPKc>
    printInt(threadNum);
    80004210:	00000613          	li	a2,0
    80004214:	00a00593          	li	a1,10
    80004218:	00098513          	mv	a0,s3
    8000421c:	00001097          	auipc	ra,0x1
    80004220:	6e0080e7          	jalr	1760(ra) # 800058fc <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004224:	00005517          	auipc	a0,0x5
    80004228:	f6450513          	addi	a0,a0,-156 # 80009188 <CONSOLE_STATUS+0x178>
    8000422c:	00001097          	auipc	ra,0x1
    80004230:	520080e7          	jalr	1312(ra) # 8000574c <_Z11printStringPKc>
    printInt(n);
    80004234:	00000613          	li	a2,0
    80004238:	00a00593          	li	a1,10
    8000423c:	00048513          	mv	a0,s1
    80004240:	00001097          	auipc	ra,0x1
    80004244:	6bc080e7          	jalr	1724(ra) # 800058fc <_Z8printIntiii>
    printString(".\n");
    80004248:	00005517          	auipc	a0,0x5
    8000424c:	f5850513          	addi	a0,a0,-168 # 800091a0 <CONSOLE_STATUS+0x190>
    80004250:	00001097          	auipc	ra,0x1
    80004254:	4fc080e7          	jalr	1276(ra) # 8000574c <_Z11printStringPKc>
    if (threadNum > n) {
    80004258:	0334c463          	blt	s1,s3,80004280 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000425c:	03305c63          	blez	s3,80004294 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004260:	03800513          	li	a0,56
    80004264:	ffffe097          	auipc	ra,0xffffe
    80004268:	09c080e7          	jalr	156(ra) # 80002300 <_Znwm>
    8000426c:	00050a93          	mv	s5,a0
    80004270:	00048593          	mv	a1,s1
    80004274:	00001097          	auipc	ra,0x1
    80004278:	7a8080e7          	jalr	1960(ra) # 80005a1c <_ZN9BufferCPPC1Ei>
    8000427c:	0300006f          	j	800042ac <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004280:	00005517          	auipc	a0,0x5
    80004284:	f2850513          	addi	a0,a0,-216 # 800091a8 <CONSOLE_STATUS+0x198>
    80004288:	00001097          	auipc	ra,0x1
    8000428c:	4c4080e7          	jalr	1220(ra) # 8000574c <_Z11printStringPKc>
        return;
    80004290:	0140006f          	j	800042a4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004294:	00005517          	auipc	a0,0x5
    80004298:	f5450513          	addi	a0,a0,-172 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000429c:	00001097          	auipc	ra,0x1
    800042a0:	4b0080e7          	jalr	1200(ra) # 8000574c <_Z11printStringPKc>
        return;
    800042a4:	000c0113          	mv	sp,s8
    800042a8:	2140006f          	j	800044bc <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800042ac:	01000513          	li	a0,16
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	050080e7          	jalr	80(ra) # 80002300 <_Znwm>
    800042b8:	00050913          	mv	s2,a0
    800042bc:	00000593          	li	a1,0
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	1f8080e7          	jalr	504(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    800042c8:	00008797          	auipc	a5,0x8
    800042cc:	8127b023          	sd	s2,-2048(a5) # 8000bac8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800042d0:	00399793          	slli	a5,s3,0x3
    800042d4:	00f78793          	addi	a5,a5,15
    800042d8:	ff07f793          	andi	a5,a5,-16
    800042dc:	40f10133          	sub	sp,sp,a5
    800042e0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800042e4:	0019871b          	addiw	a4,s3,1
    800042e8:	00171793          	slli	a5,a4,0x1
    800042ec:	00e787b3          	add	a5,a5,a4
    800042f0:	00379793          	slli	a5,a5,0x3
    800042f4:	00f78793          	addi	a5,a5,15
    800042f8:	ff07f793          	andi	a5,a5,-16
    800042fc:	40f10133          	sub	sp,sp,a5
    80004300:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004304:	00199493          	slli	s1,s3,0x1
    80004308:	013484b3          	add	s1,s1,s3
    8000430c:	00349493          	slli	s1,s1,0x3
    80004310:	009b04b3          	add	s1,s6,s1
    80004314:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004318:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000431c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004320:	02800513          	li	a0,40
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	fdc080e7          	jalr	-36(ra) # 80002300 <_Znwm>
    8000432c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	160080e7          	jalr	352(ra) # 80002490 <_ZN6ThreadC1Ev>
    80004338:	00007797          	auipc	a5,0x7
    8000433c:	5f878793          	addi	a5,a5,1528 # 8000b930 <_ZTV8Consumer+0x10>
    80004340:	00fbb023          	sd	a5,0(s7)
    80004344:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004348:	000b8513          	mv	a0,s7
    8000434c:	ffffe097          	auipc	ra,0xffffe
    80004350:	0c0080e7          	jalr	192(ra) # 8000240c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004354:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004358:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000435c:	00007797          	auipc	a5,0x7
    80004360:	76c7b783          	ld	a5,1900(a5) # 8000bac8 <_ZL10waitForAll>
    80004364:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004368:	02800513          	li	a0,40
    8000436c:	ffffe097          	auipc	ra,0xffffe
    80004370:	f94080e7          	jalr	-108(ra) # 80002300 <_Znwm>
    80004374:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004378:	ffffe097          	auipc	ra,0xffffe
    8000437c:	118080e7          	jalr	280(ra) # 80002490 <_ZN6ThreadC1Ev>
    80004380:	00007797          	auipc	a5,0x7
    80004384:	56078793          	addi	a5,a5,1376 # 8000b8e0 <_ZTV16ProducerKeyborad+0x10>
    80004388:	00f4b023          	sd	a5,0(s1)
    8000438c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004390:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004394:	00048513          	mv	a0,s1
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	074080e7          	jalr	116(ra) # 8000240c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800043a0:	00100913          	li	s2,1
    800043a4:	0300006f          	j	800043d4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800043a8:	00007797          	auipc	a5,0x7
    800043ac:	56078793          	addi	a5,a5,1376 # 8000b908 <_ZTV8Producer+0x10>
    800043b0:	00fcb023          	sd	a5,0(s9)
    800043b4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800043b8:	00391793          	slli	a5,s2,0x3
    800043bc:	00fa07b3          	add	a5,s4,a5
    800043c0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800043c4:	000c8513          	mv	a0,s9
    800043c8:	ffffe097          	auipc	ra,0xffffe
    800043cc:	044080e7          	jalr	68(ra) # 8000240c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800043d0:	0019091b          	addiw	s2,s2,1
    800043d4:	05395263          	bge	s2,s3,80004418 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800043d8:	00191493          	slli	s1,s2,0x1
    800043dc:	012484b3          	add	s1,s1,s2
    800043e0:	00349493          	slli	s1,s1,0x3
    800043e4:	009b04b3          	add	s1,s6,s1
    800043e8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800043ec:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800043f0:	00007797          	auipc	a5,0x7
    800043f4:	6d87b783          	ld	a5,1752(a5) # 8000bac8 <_ZL10waitForAll>
    800043f8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800043fc:	02800513          	li	a0,40
    80004400:	ffffe097          	auipc	ra,0xffffe
    80004404:	f00080e7          	jalr	-256(ra) # 80002300 <_Znwm>
    80004408:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	084080e7          	jalr	132(ra) # 80002490 <_ZN6ThreadC1Ev>
    80004414:	f95ff06f          	j	800043a8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	024080e7          	jalr	36(ra) # 8000243c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004420:	00000493          	li	s1,0
    80004424:	0099ce63          	blt	s3,s1,80004440 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004428:	00007517          	auipc	a0,0x7
    8000442c:	6a053503          	ld	a0,1696(a0) # 8000bac8 <_ZL10waitForAll>
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	0c4080e7          	jalr	196(ra) # 800024f4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004438:	0014849b          	addiw	s1,s1,1
    8000443c:	fe9ff06f          	j	80004424 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004440:	00007517          	auipc	a0,0x7
    80004444:	68853503          	ld	a0,1672(a0) # 8000bac8 <_ZL10waitForAll>
    80004448:	00050863          	beqz	a0,80004458 <_Z20testConsumerProducerv+0x2f4>
    8000444c:	00053783          	ld	a5,0(a0)
    80004450:	0087b783          	ld	a5,8(a5)
    80004454:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004458:	00000493          	li	s1,0
    8000445c:	0080006f          	j	80004464 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004460:	0014849b          	addiw	s1,s1,1
    80004464:	0334d263          	bge	s1,s3,80004488 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004468:	00349793          	slli	a5,s1,0x3
    8000446c:	00fa07b3          	add	a5,s4,a5
    80004470:	0007b503          	ld	a0,0(a5)
    80004474:	fe0506e3          	beqz	a0,80004460 <_Z20testConsumerProducerv+0x2fc>
    80004478:	00053783          	ld	a5,0(a0)
    8000447c:	0087b783          	ld	a5,8(a5)
    80004480:	000780e7          	jalr	a5
    80004484:	fddff06f          	j	80004460 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004488:	000b8a63          	beqz	s7,8000449c <_Z20testConsumerProducerv+0x338>
    8000448c:	000bb783          	ld	a5,0(s7)
    80004490:	0087b783          	ld	a5,8(a5)
    80004494:	000b8513          	mv	a0,s7
    80004498:	000780e7          	jalr	a5
    delete buffer;
    8000449c:	000a8e63          	beqz	s5,800044b8 <_Z20testConsumerProducerv+0x354>
    800044a0:	000a8513          	mv	a0,s5
    800044a4:	00002097          	auipc	ra,0x2
    800044a8:	870080e7          	jalr	-1936(ra) # 80005d14 <_ZN9BufferCPPD1Ev>
    800044ac:	000a8513          	mv	a0,s5
    800044b0:	ffffe097          	auipc	ra,0xffffe
    800044b4:	e78080e7          	jalr	-392(ra) # 80002328 <_ZdlPv>
    800044b8:	000c0113          	mv	sp,s8
}
    800044bc:	f8040113          	addi	sp,s0,-128
    800044c0:	07813083          	ld	ra,120(sp)
    800044c4:	07013403          	ld	s0,112(sp)
    800044c8:	06813483          	ld	s1,104(sp)
    800044cc:	06013903          	ld	s2,96(sp)
    800044d0:	05813983          	ld	s3,88(sp)
    800044d4:	05013a03          	ld	s4,80(sp)
    800044d8:	04813a83          	ld	s5,72(sp)
    800044dc:	04013b03          	ld	s6,64(sp)
    800044e0:	03813b83          	ld	s7,56(sp)
    800044e4:	03013c03          	ld	s8,48(sp)
    800044e8:	02813c83          	ld	s9,40(sp)
    800044ec:	08010113          	addi	sp,sp,128
    800044f0:	00008067          	ret
    800044f4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800044f8:	000a8513          	mv	a0,s5
    800044fc:	ffffe097          	auipc	ra,0xffffe
    80004500:	e2c080e7          	jalr	-468(ra) # 80002328 <_ZdlPv>
    80004504:	00048513          	mv	a0,s1
    80004508:	00008097          	auipc	ra,0x8
    8000450c:	6c0080e7          	jalr	1728(ra) # 8000cbc8 <_Unwind_Resume>
    80004510:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004514:	00090513          	mv	a0,s2
    80004518:	ffffe097          	auipc	ra,0xffffe
    8000451c:	e10080e7          	jalr	-496(ra) # 80002328 <_ZdlPv>
    80004520:	00048513          	mv	a0,s1
    80004524:	00008097          	auipc	ra,0x8
    80004528:	6a4080e7          	jalr	1700(ra) # 8000cbc8 <_Unwind_Resume>
    8000452c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004530:	000b8513          	mv	a0,s7
    80004534:	ffffe097          	auipc	ra,0xffffe
    80004538:	df4080e7          	jalr	-524(ra) # 80002328 <_ZdlPv>
    8000453c:	00048513          	mv	a0,s1
    80004540:	00008097          	auipc	ra,0x8
    80004544:	688080e7          	jalr	1672(ra) # 8000cbc8 <_Unwind_Resume>
    80004548:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000454c:	00048513          	mv	a0,s1
    80004550:	ffffe097          	auipc	ra,0xffffe
    80004554:	dd8080e7          	jalr	-552(ra) # 80002328 <_ZdlPv>
    80004558:	00090513          	mv	a0,s2
    8000455c:	00008097          	auipc	ra,0x8
    80004560:	66c080e7          	jalr	1644(ra) # 8000cbc8 <_Unwind_Resume>
    80004564:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004568:	000c8513          	mv	a0,s9
    8000456c:	ffffe097          	auipc	ra,0xffffe
    80004570:	dbc080e7          	jalr	-580(ra) # 80002328 <_ZdlPv>
    80004574:	00048513          	mv	a0,s1
    80004578:	00008097          	auipc	ra,0x8
    8000457c:	650080e7          	jalr	1616(ra) # 8000cbc8 <_Unwind_Resume>

0000000080004580 <_ZN8Consumer3runEv>:
    void run() override {
    80004580:	fd010113          	addi	sp,sp,-48
    80004584:	02113423          	sd	ra,40(sp)
    80004588:	02813023          	sd	s0,32(sp)
    8000458c:	00913c23          	sd	s1,24(sp)
    80004590:	01213823          	sd	s2,16(sp)
    80004594:	01313423          	sd	s3,8(sp)
    80004598:	03010413          	addi	s0,sp,48
    8000459c:	00050913          	mv	s2,a0
        int i = 0;
    800045a0:	00000993          	li	s3,0
    800045a4:	0100006f          	j	800045b4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800045a8:	00a00513          	li	a0,10
    800045ac:	ffffe097          	auipc	ra,0xffffe
    800045b0:	070080e7          	jalr	112(ra) # 8000261c <_ZN7Console4putcEc>
        while (!threadEnd) {
    800045b4:	00007797          	auipc	a5,0x7
    800045b8:	50c7a783          	lw	a5,1292(a5) # 8000bac0 <_ZL9threadEnd>
    800045bc:	04079a63          	bnez	a5,80004610 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800045c0:	02093783          	ld	a5,32(s2)
    800045c4:	0087b503          	ld	a0,8(a5)
    800045c8:	00001097          	auipc	ra,0x1
    800045cc:	638080e7          	jalr	1592(ra) # 80005c00 <_ZN9BufferCPP3getEv>
            i++;
    800045d0:	0019849b          	addiw	s1,s3,1
    800045d4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800045d8:	0ff57513          	andi	a0,a0,255
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	040080e7          	jalr	64(ra) # 8000261c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800045e4:	05000793          	li	a5,80
    800045e8:	02f4e4bb          	remw	s1,s1,a5
    800045ec:	fc0494e3          	bnez	s1,800045b4 <_ZN8Consumer3runEv+0x34>
    800045f0:	fb9ff06f          	j	800045a8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800045f4:	02093783          	ld	a5,32(s2)
    800045f8:	0087b503          	ld	a0,8(a5)
    800045fc:	00001097          	auipc	ra,0x1
    80004600:	604080e7          	jalr	1540(ra) # 80005c00 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004604:	0ff57513          	andi	a0,a0,255
    80004608:	ffffe097          	auipc	ra,0xffffe
    8000460c:	014080e7          	jalr	20(ra) # 8000261c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004610:	02093783          	ld	a5,32(s2)
    80004614:	0087b503          	ld	a0,8(a5)
    80004618:	00001097          	auipc	ra,0x1
    8000461c:	674080e7          	jalr	1652(ra) # 80005c8c <_ZN9BufferCPP6getCntEv>
    80004620:	fca04ae3          	bgtz	a0,800045f4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004624:	02093783          	ld	a5,32(s2)
    80004628:	0107b503          	ld	a0,16(a5)
    8000462c:	ffffe097          	auipc	ra,0xffffe
    80004630:	f00080e7          	jalr	-256(ra) # 8000252c <_ZN9Semaphore6signalEv>
    }
    80004634:	02813083          	ld	ra,40(sp)
    80004638:	02013403          	ld	s0,32(sp)
    8000463c:	01813483          	ld	s1,24(sp)
    80004640:	01013903          	ld	s2,16(sp)
    80004644:	00813983          	ld	s3,8(sp)
    80004648:	03010113          	addi	sp,sp,48
    8000464c:	00008067          	ret

0000000080004650 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004650:	ff010113          	addi	sp,sp,-16
    80004654:	00113423          	sd	ra,8(sp)
    80004658:	00813023          	sd	s0,0(sp)
    8000465c:	01010413          	addi	s0,sp,16
    80004660:	00007797          	auipc	a5,0x7
    80004664:	2d078793          	addi	a5,a5,720 # 8000b930 <_ZTV8Consumer+0x10>
    80004668:	00f53023          	sd	a5,0(a0)
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	bfc080e7          	jalr	-1028(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004674:	00813083          	ld	ra,8(sp)
    80004678:	00013403          	ld	s0,0(sp)
    8000467c:	01010113          	addi	sp,sp,16
    80004680:	00008067          	ret

0000000080004684 <_ZN8ConsumerD0Ev>:
    80004684:	fe010113          	addi	sp,sp,-32
    80004688:	00113c23          	sd	ra,24(sp)
    8000468c:	00813823          	sd	s0,16(sp)
    80004690:	00913423          	sd	s1,8(sp)
    80004694:	02010413          	addi	s0,sp,32
    80004698:	00050493          	mv	s1,a0
    8000469c:	00007797          	auipc	a5,0x7
    800046a0:	29478793          	addi	a5,a5,660 # 8000b930 <_ZTV8Consumer+0x10>
    800046a4:	00f53023          	sd	a5,0(a0)
    800046a8:	ffffe097          	auipc	ra,0xffffe
    800046ac:	bc0080e7          	jalr	-1088(ra) # 80002268 <_ZN6ThreadD1Ev>
    800046b0:	00048513          	mv	a0,s1
    800046b4:	ffffe097          	auipc	ra,0xffffe
    800046b8:	c74080e7          	jalr	-908(ra) # 80002328 <_ZdlPv>
    800046bc:	01813083          	ld	ra,24(sp)
    800046c0:	01013403          	ld	s0,16(sp)
    800046c4:	00813483          	ld	s1,8(sp)
    800046c8:	02010113          	addi	sp,sp,32
    800046cc:	00008067          	ret

00000000800046d0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800046d0:	ff010113          	addi	sp,sp,-16
    800046d4:	00113423          	sd	ra,8(sp)
    800046d8:	00813023          	sd	s0,0(sp)
    800046dc:	01010413          	addi	s0,sp,16
    800046e0:	00007797          	auipc	a5,0x7
    800046e4:	20078793          	addi	a5,a5,512 # 8000b8e0 <_ZTV16ProducerKeyborad+0x10>
    800046e8:	00f53023          	sd	a5,0(a0)
    800046ec:	ffffe097          	auipc	ra,0xffffe
    800046f0:	b7c080e7          	jalr	-1156(ra) # 80002268 <_ZN6ThreadD1Ev>
    800046f4:	00813083          	ld	ra,8(sp)
    800046f8:	00013403          	ld	s0,0(sp)
    800046fc:	01010113          	addi	sp,sp,16
    80004700:	00008067          	ret

0000000080004704 <_ZN16ProducerKeyboradD0Ev>:
    80004704:	fe010113          	addi	sp,sp,-32
    80004708:	00113c23          	sd	ra,24(sp)
    8000470c:	00813823          	sd	s0,16(sp)
    80004710:	00913423          	sd	s1,8(sp)
    80004714:	02010413          	addi	s0,sp,32
    80004718:	00050493          	mv	s1,a0
    8000471c:	00007797          	auipc	a5,0x7
    80004720:	1c478793          	addi	a5,a5,452 # 8000b8e0 <_ZTV16ProducerKeyborad+0x10>
    80004724:	00f53023          	sd	a5,0(a0)
    80004728:	ffffe097          	auipc	ra,0xffffe
    8000472c:	b40080e7          	jalr	-1216(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004730:	00048513          	mv	a0,s1
    80004734:	ffffe097          	auipc	ra,0xffffe
    80004738:	bf4080e7          	jalr	-1036(ra) # 80002328 <_ZdlPv>
    8000473c:	01813083          	ld	ra,24(sp)
    80004740:	01013403          	ld	s0,16(sp)
    80004744:	00813483          	ld	s1,8(sp)
    80004748:	02010113          	addi	sp,sp,32
    8000474c:	00008067          	ret

0000000080004750 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004750:	ff010113          	addi	sp,sp,-16
    80004754:	00113423          	sd	ra,8(sp)
    80004758:	00813023          	sd	s0,0(sp)
    8000475c:	01010413          	addi	s0,sp,16
    80004760:	00007797          	auipc	a5,0x7
    80004764:	1a878793          	addi	a5,a5,424 # 8000b908 <_ZTV8Producer+0x10>
    80004768:	00f53023          	sd	a5,0(a0)
    8000476c:	ffffe097          	auipc	ra,0xffffe
    80004770:	afc080e7          	jalr	-1284(ra) # 80002268 <_ZN6ThreadD1Ev>
    80004774:	00813083          	ld	ra,8(sp)
    80004778:	00013403          	ld	s0,0(sp)
    8000477c:	01010113          	addi	sp,sp,16
    80004780:	00008067          	ret

0000000080004784 <_ZN8ProducerD0Ev>:
    80004784:	fe010113          	addi	sp,sp,-32
    80004788:	00113c23          	sd	ra,24(sp)
    8000478c:	00813823          	sd	s0,16(sp)
    80004790:	00913423          	sd	s1,8(sp)
    80004794:	02010413          	addi	s0,sp,32
    80004798:	00050493          	mv	s1,a0
    8000479c:	00007797          	auipc	a5,0x7
    800047a0:	16c78793          	addi	a5,a5,364 # 8000b908 <_ZTV8Producer+0x10>
    800047a4:	00f53023          	sd	a5,0(a0)
    800047a8:	ffffe097          	auipc	ra,0xffffe
    800047ac:	ac0080e7          	jalr	-1344(ra) # 80002268 <_ZN6ThreadD1Ev>
    800047b0:	00048513          	mv	a0,s1
    800047b4:	ffffe097          	auipc	ra,0xffffe
    800047b8:	b74080e7          	jalr	-1164(ra) # 80002328 <_ZdlPv>
    800047bc:	01813083          	ld	ra,24(sp)
    800047c0:	01013403          	ld	s0,16(sp)
    800047c4:	00813483          	ld	s1,8(sp)
    800047c8:	02010113          	addi	sp,sp,32
    800047cc:	00008067          	ret

00000000800047d0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800047d0:	fe010113          	addi	sp,sp,-32
    800047d4:	00113c23          	sd	ra,24(sp)
    800047d8:	00813823          	sd	s0,16(sp)
    800047dc:	00913423          	sd	s1,8(sp)
    800047e0:	02010413          	addi	s0,sp,32
    800047e4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800047e8:	ffffd097          	auipc	ra,0xffffd
    800047ec:	e38080e7          	jalr	-456(ra) # 80001620 <_Z4getcv>
    800047f0:	0005059b          	sext.w	a1,a0
    800047f4:	01b00793          	li	a5,27
    800047f8:	00f58c63          	beq	a1,a5,80004810 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800047fc:	0204b783          	ld	a5,32(s1)
    80004800:	0087b503          	ld	a0,8(a5)
    80004804:	00001097          	auipc	ra,0x1
    80004808:	36c080e7          	jalr	876(ra) # 80005b70 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000480c:	fddff06f          	j	800047e8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004810:	00100793          	li	a5,1
    80004814:	00007717          	auipc	a4,0x7
    80004818:	2af72623          	sw	a5,684(a4) # 8000bac0 <_ZL9threadEnd>
        td->buffer->put('!');
    8000481c:	0204b783          	ld	a5,32(s1)
    80004820:	02100593          	li	a1,33
    80004824:	0087b503          	ld	a0,8(a5)
    80004828:	00001097          	auipc	ra,0x1
    8000482c:	348080e7          	jalr	840(ra) # 80005b70 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004830:	0204b783          	ld	a5,32(s1)
    80004834:	0107b503          	ld	a0,16(a5)
    80004838:	ffffe097          	auipc	ra,0xffffe
    8000483c:	cf4080e7          	jalr	-780(ra) # 8000252c <_ZN9Semaphore6signalEv>
    }
    80004840:	01813083          	ld	ra,24(sp)
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	00813483          	ld	s1,8(sp)
    8000484c:	02010113          	addi	sp,sp,32
    80004850:	00008067          	ret

0000000080004854 <_ZN8Producer3runEv>:
    void run() override {
    80004854:	fe010113          	addi	sp,sp,-32
    80004858:	00113c23          	sd	ra,24(sp)
    8000485c:	00813823          	sd	s0,16(sp)
    80004860:	00913423          	sd	s1,8(sp)
    80004864:	01213023          	sd	s2,0(sp)
    80004868:	02010413          	addi	s0,sp,32
    8000486c:	00050493          	mv	s1,a0
        int i = 0;
    80004870:	00000913          	li	s2,0
        while (!threadEnd) {
    80004874:	00007797          	auipc	a5,0x7
    80004878:	24c7a783          	lw	a5,588(a5) # 8000bac0 <_ZL9threadEnd>
    8000487c:	04079263          	bnez	a5,800048c0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004880:	0204b783          	ld	a5,32(s1)
    80004884:	0007a583          	lw	a1,0(a5)
    80004888:	0305859b          	addiw	a1,a1,48
    8000488c:	0087b503          	ld	a0,8(a5)
    80004890:	00001097          	auipc	ra,0x1
    80004894:	2e0080e7          	jalr	736(ra) # 80005b70 <_ZN9BufferCPP3putEi>
            i++;
    80004898:	0019071b          	addiw	a4,s2,1
    8000489c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800048a0:	0204b783          	ld	a5,32(s1)
    800048a4:	0007a783          	lw	a5,0(a5)
    800048a8:	00e787bb          	addw	a5,a5,a4
    800048ac:	00500513          	li	a0,5
    800048b0:	02a7e53b          	remw	a0,a5,a0
    800048b4:	ffffe097          	auipc	ra,0xffffe
    800048b8:	bb0080e7          	jalr	-1104(ra) # 80002464 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800048bc:	fb9ff06f          	j	80004874 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800048c0:	0204b783          	ld	a5,32(s1)
    800048c4:	0107b503          	ld	a0,16(a5)
    800048c8:	ffffe097          	auipc	ra,0xffffe
    800048cc:	c64080e7          	jalr	-924(ra) # 8000252c <_ZN9Semaphore6signalEv>
    }
    800048d0:	01813083          	ld	ra,24(sp)
    800048d4:	01013403          	ld	s0,16(sp)
    800048d8:	00813483          	ld	s1,8(sp)
    800048dc:	00013903          	ld	s2,0(sp)
    800048e0:	02010113          	addi	sp,sp,32
    800048e4:	00008067          	ret

00000000800048e8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800048e8:	fe010113          	addi	sp,sp,-32
    800048ec:	00113c23          	sd	ra,24(sp)
    800048f0:	00813823          	sd	s0,16(sp)
    800048f4:	00913423          	sd	s1,8(sp)
    800048f8:	01213023          	sd	s2,0(sp)
    800048fc:	02010413          	addi	s0,sp,32
    80004900:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004904:	00100793          	li	a5,1
    80004908:	02a7f863          	bgeu	a5,a0,80004938 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000490c:	00a00793          	li	a5,10
    80004910:	02f577b3          	remu	a5,a0,a5
    80004914:	02078e63          	beqz	a5,80004950 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004918:	fff48513          	addi	a0,s1,-1
    8000491c:	00000097          	auipc	ra,0x0
    80004920:	fcc080e7          	jalr	-52(ra) # 800048e8 <_ZL9fibonaccim>
    80004924:	00050913          	mv	s2,a0
    80004928:	ffe48513          	addi	a0,s1,-2
    8000492c:	00000097          	auipc	ra,0x0
    80004930:	fbc080e7          	jalr	-68(ra) # 800048e8 <_ZL9fibonaccim>
    80004934:	00a90533          	add	a0,s2,a0
}
    80004938:	01813083          	ld	ra,24(sp)
    8000493c:	01013403          	ld	s0,16(sp)
    80004940:	00813483          	ld	s1,8(sp)
    80004944:	00013903          	ld	s2,0(sp)
    80004948:	02010113          	addi	sp,sp,32
    8000494c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004950:	ffffd097          	auipc	ra,0xffffd
    80004954:	a7c080e7          	jalr	-1412(ra) # 800013cc <_Z15thread_dispatchv>
    80004958:	fc1ff06f          	j	80004918 <_ZL9fibonaccim+0x30>

000000008000495c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000495c:	fe010113          	addi	sp,sp,-32
    80004960:	00113c23          	sd	ra,24(sp)
    80004964:	00813823          	sd	s0,16(sp)
    80004968:	00913423          	sd	s1,8(sp)
    8000496c:	01213023          	sd	s2,0(sp)
    80004970:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004974:	00a00493          	li	s1,10
    80004978:	0400006f          	j	800049b8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000497c:	00005517          	auipc	a0,0x5
    80004980:	8fc50513          	addi	a0,a0,-1796 # 80009278 <CONSOLE_STATUS+0x268>
    80004984:	00001097          	auipc	ra,0x1
    80004988:	dc8080e7          	jalr	-568(ra) # 8000574c <_Z11printStringPKc>
    8000498c:	00000613          	li	a2,0
    80004990:	00a00593          	li	a1,10
    80004994:	00048513          	mv	a0,s1
    80004998:	00001097          	auipc	ra,0x1
    8000499c:	f64080e7          	jalr	-156(ra) # 800058fc <_Z8printIntiii>
    800049a0:	00004517          	auipc	a0,0x4
    800049a4:	7c850513          	addi	a0,a0,1992 # 80009168 <CONSOLE_STATUS+0x158>
    800049a8:	00001097          	auipc	ra,0x1
    800049ac:	da4080e7          	jalr	-604(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800049b0:	0014849b          	addiw	s1,s1,1
    800049b4:	0ff4f493          	andi	s1,s1,255
    800049b8:	00c00793          	li	a5,12
    800049bc:	fc97f0e3          	bgeu	a5,s1,8000497c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800049c0:	00005517          	auipc	a0,0x5
    800049c4:	8c050513          	addi	a0,a0,-1856 # 80009280 <CONSOLE_STATUS+0x270>
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	d84080e7          	jalr	-636(ra) # 8000574c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800049d0:	00500313          	li	t1,5
    thread_dispatch();
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	9f8080e7          	jalr	-1544(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800049dc:	01000513          	li	a0,16
    800049e0:	00000097          	auipc	ra,0x0
    800049e4:	f08080e7          	jalr	-248(ra) # 800048e8 <_ZL9fibonaccim>
    800049e8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800049ec:	00005517          	auipc	a0,0x5
    800049f0:	8a450513          	addi	a0,a0,-1884 # 80009290 <CONSOLE_STATUS+0x280>
    800049f4:	00001097          	auipc	ra,0x1
    800049f8:	d58080e7          	jalr	-680(ra) # 8000574c <_Z11printStringPKc>
    800049fc:	00000613          	li	a2,0
    80004a00:	00a00593          	li	a1,10
    80004a04:	0009051b          	sext.w	a0,s2
    80004a08:	00001097          	auipc	ra,0x1
    80004a0c:	ef4080e7          	jalr	-268(ra) # 800058fc <_Z8printIntiii>
    80004a10:	00004517          	auipc	a0,0x4
    80004a14:	75850513          	addi	a0,a0,1880 # 80009168 <CONSOLE_STATUS+0x158>
    80004a18:	00001097          	auipc	ra,0x1
    80004a1c:	d34080e7          	jalr	-716(ra) # 8000574c <_Z11printStringPKc>
    80004a20:	0400006f          	j	80004a60 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a24:	00005517          	auipc	a0,0x5
    80004a28:	85450513          	addi	a0,a0,-1964 # 80009278 <CONSOLE_STATUS+0x268>
    80004a2c:	00001097          	auipc	ra,0x1
    80004a30:	d20080e7          	jalr	-736(ra) # 8000574c <_Z11printStringPKc>
    80004a34:	00000613          	li	a2,0
    80004a38:	00a00593          	li	a1,10
    80004a3c:	00048513          	mv	a0,s1
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	ebc080e7          	jalr	-324(ra) # 800058fc <_Z8printIntiii>
    80004a48:	00004517          	auipc	a0,0x4
    80004a4c:	72050513          	addi	a0,a0,1824 # 80009168 <CONSOLE_STATUS+0x158>
    80004a50:	00001097          	auipc	ra,0x1
    80004a54:	cfc080e7          	jalr	-772(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004a58:	0014849b          	addiw	s1,s1,1
    80004a5c:	0ff4f493          	andi	s1,s1,255
    80004a60:	00f00793          	li	a5,15
    80004a64:	fc97f0e3          	bgeu	a5,s1,80004a24 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004a68:	00005517          	auipc	a0,0x5
    80004a6c:	83850513          	addi	a0,a0,-1992 # 800092a0 <CONSOLE_STATUS+0x290>
    80004a70:	00001097          	auipc	ra,0x1
    80004a74:	cdc080e7          	jalr	-804(ra) # 8000574c <_Z11printStringPKc>
    finishedD = true;
    80004a78:	00100793          	li	a5,1
    80004a7c:	00007717          	auipc	a4,0x7
    80004a80:	04f70a23          	sb	a5,84(a4) # 8000bad0 <_ZL9finishedD>
    thread_dispatch();
    80004a84:	ffffd097          	auipc	ra,0xffffd
    80004a88:	948080e7          	jalr	-1720(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004a8c:	01813083          	ld	ra,24(sp)
    80004a90:	01013403          	ld	s0,16(sp)
    80004a94:	00813483          	ld	s1,8(sp)
    80004a98:	00013903          	ld	s2,0(sp)
    80004a9c:	02010113          	addi	sp,sp,32
    80004aa0:	00008067          	ret

0000000080004aa4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004aa4:	fe010113          	addi	sp,sp,-32
    80004aa8:	00113c23          	sd	ra,24(sp)
    80004aac:	00813823          	sd	s0,16(sp)
    80004ab0:	00913423          	sd	s1,8(sp)
    80004ab4:	01213023          	sd	s2,0(sp)
    80004ab8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004abc:	00000493          	li	s1,0
    80004ac0:	0400006f          	j	80004b00 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004ac4:	00004517          	auipc	a0,0x4
    80004ac8:	78450513          	addi	a0,a0,1924 # 80009248 <CONSOLE_STATUS+0x238>
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	c80080e7          	jalr	-896(ra) # 8000574c <_Z11printStringPKc>
    80004ad4:	00000613          	li	a2,0
    80004ad8:	00a00593          	li	a1,10
    80004adc:	00048513          	mv	a0,s1
    80004ae0:	00001097          	auipc	ra,0x1
    80004ae4:	e1c080e7          	jalr	-484(ra) # 800058fc <_Z8printIntiii>
    80004ae8:	00004517          	auipc	a0,0x4
    80004aec:	68050513          	addi	a0,a0,1664 # 80009168 <CONSOLE_STATUS+0x158>
    80004af0:	00001097          	auipc	ra,0x1
    80004af4:	c5c080e7          	jalr	-932(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004af8:	0014849b          	addiw	s1,s1,1
    80004afc:	0ff4f493          	andi	s1,s1,255
    80004b00:	00200793          	li	a5,2
    80004b04:	fc97f0e3          	bgeu	a5,s1,80004ac4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004b08:	00004517          	auipc	a0,0x4
    80004b0c:	74850513          	addi	a0,a0,1864 # 80009250 <CONSOLE_STATUS+0x240>
    80004b10:	00001097          	auipc	ra,0x1
    80004b14:	c3c080e7          	jalr	-964(ra) # 8000574c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b18:	00700313          	li	t1,7
    thread_dispatch();
    80004b1c:	ffffd097          	auipc	ra,0xffffd
    80004b20:	8b0080e7          	jalr	-1872(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b24:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004b28:	00004517          	auipc	a0,0x4
    80004b2c:	73850513          	addi	a0,a0,1848 # 80009260 <CONSOLE_STATUS+0x250>
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	c1c080e7          	jalr	-996(ra) # 8000574c <_Z11printStringPKc>
    80004b38:	00000613          	li	a2,0
    80004b3c:	00a00593          	li	a1,10
    80004b40:	0009051b          	sext.w	a0,s2
    80004b44:	00001097          	auipc	ra,0x1
    80004b48:	db8080e7          	jalr	-584(ra) # 800058fc <_Z8printIntiii>
    80004b4c:	00004517          	auipc	a0,0x4
    80004b50:	61c50513          	addi	a0,a0,1564 # 80009168 <CONSOLE_STATUS+0x158>
    80004b54:	00001097          	auipc	ra,0x1
    80004b58:	bf8080e7          	jalr	-1032(ra) # 8000574c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004b5c:	00c00513          	li	a0,12
    80004b60:	00000097          	auipc	ra,0x0
    80004b64:	d88080e7          	jalr	-632(ra) # 800048e8 <_ZL9fibonaccim>
    80004b68:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004b6c:	00004517          	auipc	a0,0x4
    80004b70:	6fc50513          	addi	a0,a0,1788 # 80009268 <CONSOLE_STATUS+0x258>
    80004b74:	00001097          	auipc	ra,0x1
    80004b78:	bd8080e7          	jalr	-1064(ra) # 8000574c <_Z11printStringPKc>
    80004b7c:	00000613          	li	a2,0
    80004b80:	00a00593          	li	a1,10
    80004b84:	0009051b          	sext.w	a0,s2
    80004b88:	00001097          	auipc	ra,0x1
    80004b8c:	d74080e7          	jalr	-652(ra) # 800058fc <_Z8printIntiii>
    80004b90:	00004517          	auipc	a0,0x4
    80004b94:	5d850513          	addi	a0,a0,1496 # 80009168 <CONSOLE_STATUS+0x158>
    80004b98:	00001097          	auipc	ra,0x1
    80004b9c:	bb4080e7          	jalr	-1100(ra) # 8000574c <_Z11printStringPKc>
    80004ba0:	0400006f          	j	80004be0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004ba4:	00004517          	auipc	a0,0x4
    80004ba8:	6a450513          	addi	a0,a0,1700 # 80009248 <CONSOLE_STATUS+0x238>
    80004bac:	00001097          	auipc	ra,0x1
    80004bb0:	ba0080e7          	jalr	-1120(ra) # 8000574c <_Z11printStringPKc>
    80004bb4:	00000613          	li	a2,0
    80004bb8:	00a00593          	li	a1,10
    80004bbc:	00048513          	mv	a0,s1
    80004bc0:	00001097          	auipc	ra,0x1
    80004bc4:	d3c080e7          	jalr	-708(ra) # 800058fc <_Z8printIntiii>
    80004bc8:	00004517          	auipc	a0,0x4
    80004bcc:	5a050513          	addi	a0,a0,1440 # 80009168 <CONSOLE_STATUS+0x158>
    80004bd0:	00001097          	auipc	ra,0x1
    80004bd4:	b7c080e7          	jalr	-1156(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004bd8:	0014849b          	addiw	s1,s1,1
    80004bdc:	0ff4f493          	andi	s1,s1,255
    80004be0:	00500793          	li	a5,5
    80004be4:	fc97f0e3          	bgeu	a5,s1,80004ba4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004be8:	00004517          	auipc	a0,0x4
    80004bec:	63850513          	addi	a0,a0,1592 # 80009220 <CONSOLE_STATUS+0x210>
    80004bf0:	00001097          	auipc	ra,0x1
    80004bf4:	b5c080e7          	jalr	-1188(ra) # 8000574c <_Z11printStringPKc>
    finishedC = true;
    80004bf8:	00100793          	li	a5,1
    80004bfc:	00007717          	auipc	a4,0x7
    80004c00:	ecf70aa3          	sb	a5,-299(a4) # 8000bad1 <_ZL9finishedC>
    thread_dispatch();
    80004c04:	ffffc097          	auipc	ra,0xffffc
    80004c08:	7c8080e7          	jalr	1992(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004c0c:	01813083          	ld	ra,24(sp)
    80004c10:	01013403          	ld	s0,16(sp)
    80004c14:	00813483          	ld	s1,8(sp)
    80004c18:	00013903          	ld	s2,0(sp)
    80004c1c:	02010113          	addi	sp,sp,32
    80004c20:	00008067          	ret

0000000080004c24 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004c24:	fe010113          	addi	sp,sp,-32
    80004c28:	00113c23          	sd	ra,24(sp)
    80004c2c:	00813823          	sd	s0,16(sp)
    80004c30:	00913423          	sd	s1,8(sp)
    80004c34:	01213023          	sd	s2,0(sp)
    80004c38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004c3c:	00000913          	li	s2,0
    80004c40:	0380006f          	j	80004c78 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004c44:	ffffc097          	auipc	ra,0xffffc
    80004c48:	788080e7          	jalr	1928(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004c4c:	00148493          	addi	s1,s1,1
    80004c50:	000027b7          	lui	a5,0x2
    80004c54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c58:	0097ee63          	bltu	a5,s1,80004c74 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c5c:	00000713          	li	a4,0
    80004c60:	000077b7          	lui	a5,0x7
    80004c64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c68:	fce7eee3          	bltu	a5,a4,80004c44 <_ZL11workerBodyBPv+0x20>
    80004c6c:	00170713          	addi	a4,a4,1
    80004c70:	ff1ff06f          	j	80004c60 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004c74:	00190913          	addi	s2,s2,1
    80004c78:	00f00793          	li	a5,15
    80004c7c:	0527e063          	bltu	a5,s2,80004cbc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004c80:	00004517          	auipc	a0,0x4
    80004c84:	5b050513          	addi	a0,a0,1456 # 80009230 <CONSOLE_STATUS+0x220>
    80004c88:	00001097          	auipc	ra,0x1
    80004c8c:	ac4080e7          	jalr	-1340(ra) # 8000574c <_Z11printStringPKc>
    80004c90:	00000613          	li	a2,0
    80004c94:	00a00593          	li	a1,10
    80004c98:	0009051b          	sext.w	a0,s2
    80004c9c:	00001097          	auipc	ra,0x1
    80004ca0:	c60080e7          	jalr	-928(ra) # 800058fc <_Z8printIntiii>
    80004ca4:	00004517          	auipc	a0,0x4
    80004ca8:	4c450513          	addi	a0,a0,1220 # 80009168 <CONSOLE_STATUS+0x158>
    80004cac:	00001097          	auipc	ra,0x1
    80004cb0:	aa0080e7          	jalr	-1376(ra) # 8000574c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004cb4:	00000493          	li	s1,0
    80004cb8:	f99ff06f          	j	80004c50 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004cbc:	00004517          	auipc	a0,0x4
    80004cc0:	57c50513          	addi	a0,a0,1404 # 80009238 <CONSOLE_STATUS+0x228>
    80004cc4:	00001097          	auipc	ra,0x1
    80004cc8:	a88080e7          	jalr	-1400(ra) # 8000574c <_Z11printStringPKc>
    finishedB = true;
    80004ccc:	00100793          	li	a5,1
    80004cd0:	00007717          	auipc	a4,0x7
    80004cd4:	e0f70123          	sb	a5,-510(a4) # 8000bad2 <_ZL9finishedB>
    thread_dispatch();
    80004cd8:	ffffc097          	auipc	ra,0xffffc
    80004cdc:	6f4080e7          	jalr	1780(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004ce0:	01813083          	ld	ra,24(sp)
    80004ce4:	01013403          	ld	s0,16(sp)
    80004ce8:	00813483          	ld	s1,8(sp)
    80004cec:	00013903          	ld	s2,0(sp)
    80004cf0:	02010113          	addi	sp,sp,32
    80004cf4:	00008067          	ret

0000000080004cf8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004cf8:	fe010113          	addi	sp,sp,-32
    80004cfc:	00113c23          	sd	ra,24(sp)
    80004d00:	00813823          	sd	s0,16(sp)
    80004d04:	00913423          	sd	s1,8(sp)
    80004d08:	01213023          	sd	s2,0(sp)
    80004d0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d10:	00000913          	li	s2,0
    80004d14:	0380006f          	j	80004d4c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004d18:	ffffc097          	auipc	ra,0xffffc
    80004d1c:	6b4080e7          	jalr	1716(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004d20:	00148493          	addi	s1,s1,1
    80004d24:	000027b7          	lui	a5,0x2
    80004d28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d2c:	0097ee63          	bltu	a5,s1,80004d48 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d30:	00000713          	li	a4,0
    80004d34:	000077b7          	lui	a5,0x7
    80004d38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d3c:	fce7eee3          	bltu	a5,a4,80004d18 <_ZL11workerBodyAPv+0x20>
    80004d40:	00170713          	addi	a4,a4,1
    80004d44:	ff1ff06f          	j	80004d34 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d48:	00190913          	addi	s2,s2,1
    80004d4c:	00900793          	li	a5,9
    80004d50:	0527e063          	bltu	a5,s2,80004d90 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d54:	00004517          	auipc	a0,0x4
    80004d58:	4c450513          	addi	a0,a0,1220 # 80009218 <CONSOLE_STATUS+0x208>
    80004d5c:	00001097          	auipc	ra,0x1
    80004d60:	9f0080e7          	jalr	-1552(ra) # 8000574c <_Z11printStringPKc>
    80004d64:	00000613          	li	a2,0
    80004d68:	00a00593          	li	a1,10
    80004d6c:	0009051b          	sext.w	a0,s2
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	b8c080e7          	jalr	-1140(ra) # 800058fc <_Z8printIntiii>
    80004d78:	00004517          	auipc	a0,0x4
    80004d7c:	3f050513          	addi	a0,a0,1008 # 80009168 <CONSOLE_STATUS+0x158>
    80004d80:	00001097          	auipc	ra,0x1
    80004d84:	9cc080e7          	jalr	-1588(ra) # 8000574c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d88:	00000493          	li	s1,0
    80004d8c:	f99ff06f          	j	80004d24 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004d90:	00004517          	auipc	a0,0x4
    80004d94:	49050513          	addi	a0,a0,1168 # 80009220 <CONSOLE_STATUS+0x210>
    80004d98:	00001097          	auipc	ra,0x1
    80004d9c:	9b4080e7          	jalr	-1612(ra) # 8000574c <_Z11printStringPKc>
    finishedA = true;
    80004da0:	00100793          	li	a5,1
    80004da4:	00007717          	auipc	a4,0x7
    80004da8:	d2f707a3          	sb	a5,-721(a4) # 8000bad3 <_ZL9finishedA>
}
    80004dac:	01813083          	ld	ra,24(sp)
    80004db0:	01013403          	ld	s0,16(sp)
    80004db4:	00813483          	ld	s1,8(sp)
    80004db8:	00013903          	ld	s2,0(sp)
    80004dbc:	02010113          	addi	sp,sp,32
    80004dc0:	00008067          	ret

0000000080004dc4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004dc4:	fd010113          	addi	sp,sp,-48
    80004dc8:	02113423          	sd	ra,40(sp)
    80004dcc:	02813023          	sd	s0,32(sp)
    80004dd0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004dd4:	00000613          	li	a2,0
    80004dd8:	00000597          	auipc	a1,0x0
    80004ddc:	f2058593          	addi	a1,a1,-224 # 80004cf8 <_ZL11workerBodyAPv>
    80004de0:	fd040513          	addi	a0,s0,-48
    80004de4:	ffffc097          	auipc	ra,0xffffc
    80004de8:	514080e7          	jalr	1300(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004dec:	00004517          	auipc	a0,0x4
    80004df0:	4c450513          	addi	a0,a0,1220 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	958080e7          	jalr	-1704(ra) # 8000574c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004dfc:	00000613          	li	a2,0
    80004e00:	00000597          	auipc	a1,0x0
    80004e04:	e2458593          	addi	a1,a1,-476 # 80004c24 <_ZL11workerBodyBPv>
    80004e08:	fd840513          	addi	a0,s0,-40
    80004e0c:	ffffc097          	auipc	ra,0xffffc
    80004e10:	4ec080e7          	jalr	1260(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004e14:	00004517          	auipc	a0,0x4
    80004e18:	4b450513          	addi	a0,a0,1204 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004e1c:	00001097          	auipc	ra,0x1
    80004e20:	930080e7          	jalr	-1744(ra) # 8000574c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004e24:	00000613          	li	a2,0
    80004e28:	00000597          	auipc	a1,0x0
    80004e2c:	c7c58593          	addi	a1,a1,-900 # 80004aa4 <_ZL11workerBodyCPv>
    80004e30:	fe040513          	addi	a0,s0,-32
    80004e34:	ffffc097          	auipc	ra,0xffffc
    80004e38:	4c4080e7          	jalr	1220(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004e3c:	00004517          	auipc	a0,0x4
    80004e40:	4a450513          	addi	a0,a0,1188 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004e44:	00001097          	auipc	ra,0x1
    80004e48:	908080e7          	jalr	-1784(ra) # 8000574c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004e4c:	00000613          	li	a2,0
    80004e50:	00000597          	auipc	a1,0x0
    80004e54:	b0c58593          	addi	a1,a1,-1268 # 8000495c <_ZL11workerBodyDPv>
    80004e58:	fe840513          	addi	a0,s0,-24
    80004e5c:	ffffc097          	auipc	ra,0xffffc
    80004e60:	49c080e7          	jalr	1180(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004e64:	00004517          	auipc	a0,0x4
    80004e68:	49450513          	addi	a0,a0,1172 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004e6c:	00001097          	auipc	ra,0x1
    80004e70:	8e0080e7          	jalr	-1824(ra) # 8000574c <_Z11printStringPKc>
    80004e74:	00c0006f          	j	80004e80 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004e78:	ffffc097          	auipc	ra,0xffffc
    80004e7c:	554080e7          	jalr	1364(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004e80:	00007797          	auipc	a5,0x7
    80004e84:	c537c783          	lbu	a5,-941(a5) # 8000bad3 <_ZL9finishedA>
    80004e88:	fe0788e3          	beqz	a5,80004e78 <_Z18Threads_C_API_testv+0xb4>
    80004e8c:	00007797          	auipc	a5,0x7
    80004e90:	c467c783          	lbu	a5,-954(a5) # 8000bad2 <_ZL9finishedB>
    80004e94:	fe0782e3          	beqz	a5,80004e78 <_Z18Threads_C_API_testv+0xb4>
    80004e98:	00007797          	auipc	a5,0x7
    80004e9c:	c397c783          	lbu	a5,-967(a5) # 8000bad1 <_ZL9finishedC>
    80004ea0:	fc078ce3          	beqz	a5,80004e78 <_Z18Threads_C_API_testv+0xb4>
    80004ea4:	00007797          	auipc	a5,0x7
    80004ea8:	c2c7c783          	lbu	a5,-980(a5) # 8000bad0 <_ZL9finishedD>
    80004eac:	fc0786e3          	beqz	a5,80004e78 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004eb0:	02813083          	ld	ra,40(sp)
    80004eb4:	02013403          	ld	s0,32(sp)
    80004eb8:	03010113          	addi	sp,sp,48
    80004ebc:	00008067          	ret

0000000080004ec0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004ec0:	fd010113          	addi	sp,sp,-48
    80004ec4:	02113423          	sd	ra,40(sp)
    80004ec8:	02813023          	sd	s0,32(sp)
    80004ecc:	00913c23          	sd	s1,24(sp)
    80004ed0:	01213823          	sd	s2,16(sp)
    80004ed4:	01313423          	sd	s3,8(sp)
    80004ed8:	03010413          	addi	s0,sp,48
    80004edc:	00050993          	mv	s3,a0
    80004ee0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004ee4:	00000913          	li	s2,0
    80004ee8:	00c0006f          	j	80004ef4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004eec:	ffffd097          	auipc	ra,0xffffd
    80004ef0:	550080e7          	jalr	1360(ra) # 8000243c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004ef4:	ffffc097          	auipc	ra,0xffffc
    80004ef8:	72c080e7          	jalr	1836(ra) # 80001620 <_Z4getcv>
    80004efc:	0005059b          	sext.w	a1,a0
    80004f00:	01b00793          	li	a5,27
    80004f04:	02f58a63          	beq	a1,a5,80004f38 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004f08:	0084b503          	ld	a0,8(s1)
    80004f0c:	00001097          	auipc	ra,0x1
    80004f10:	c64080e7          	jalr	-924(ra) # 80005b70 <_ZN9BufferCPP3putEi>
        i++;
    80004f14:	0019071b          	addiw	a4,s2,1
    80004f18:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004f1c:	0004a683          	lw	a3,0(s1)
    80004f20:	0026979b          	slliw	a5,a3,0x2
    80004f24:	00d787bb          	addw	a5,a5,a3
    80004f28:	0017979b          	slliw	a5,a5,0x1
    80004f2c:	02f767bb          	remw	a5,a4,a5
    80004f30:	fc0792e3          	bnez	a5,80004ef4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004f34:	fb9ff06f          	j	80004eec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004f38:	00100793          	li	a5,1
    80004f3c:	00007717          	auipc	a4,0x7
    80004f40:	b8f72e23          	sw	a5,-1124(a4) # 8000bad8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004f44:	0209b783          	ld	a5,32(s3)
    80004f48:	02100593          	li	a1,33
    80004f4c:	0087b503          	ld	a0,8(a5)
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	c20080e7          	jalr	-992(ra) # 80005b70 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004f58:	0104b503          	ld	a0,16(s1)
    80004f5c:	ffffd097          	auipc	ra,0xffffd
    80004f60:	5d0080e7          	jalr	1488(ra) # 8000252c <_ZN9Semaphore6signalEv>
}
    80004f64:	02813083          	ld	ra,40(sp)
    80004f68:	02013403          	ld	s0,32(sp)
    80004f6c:	01813483          	ld	s1,24(sp)
    80004f70:	01013903          	ld	s2,16(sp)
    80004f74:	00813983          	ld	s3,8(sp)
    80004f78:	03010113          	addi	sp,sp,48
    80004f7c:	00008067          	ret

0000000080004f80 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004f80:	fe010113          	addi	sp,sp,-32
    80004f84:	00113c23          	sd	ra,24(sp)
    80004f88:	00813823          	sd	s0,16(sp)
    80004f8c:	00913423          	sd	s1,8(sp)
    80004f90:	01213023          	sd	s2,0(sp)
    80004f94:	02010413          	addi	s0,sp,32
    80004f98:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004f9c:	00000913          	li	s2,0
    80004fa0:	00c0006f          	j	80004fac <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004fa4:	ffffd097          	auipc	ra,0xffffd
    80004fa8:	498080e7          	jalr	1176(ra) # 8000243c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004fac:	00007797          	auipc	a5,0x7
    80004fb0:	b2c7a783          	lw	a5,-1236(a5) # 8000bad8 <_ZL9threadEnd>
    80004fb4:	02079e63          	bnez	a5,80004ff0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004fb8:	0004a583          	lw	a1,0(s1)
    80004fbc:	0305859b          	addiw	a1,a1,48
    80004fc0:	0084b503          	ld	a0,8(s1)
    80004fc4:	00001097          	auipc	ra,0x1
    80004fc8:	bac080e7          	jalr	-1108(ra) # 80005b70 <_ZN9BufferCPP3putEi>
        i++;
    80004fcc:	0019071b          	addiw	a4,s2,1
    80004fd0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004fd4:	0004a683          	lw	a3,0(s1)
    80004fd8:	0026979b          	slliw	a5,a3,0x2
    80004fdc:	00d787bb          	addw	a5,a5,a3
    80004fe0:	0017979b          	slliw	a5,a5,0x1
    80004fe4:	02f767bb          	remw	a5,a4,a5
    80004fe8:	fc0792e3          	bnez	a5,80004fac <_ZN12ProducerSync8producerEPv+0x2c>
    80004fec:	fb9ff06f          	j	80004fa4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004ff0:	0104b503          	ld	a0,16(s1)
    80004ff4:	ffffd097          	auipc	ra,0xffffd
    80004ff8:	538080e7          	jalr	1336(ra) # 8000252c <_ZN9Semaphore6signalEv>
}
    80004ffc:	01813083          	ld	ra,24(sp)
    80005000:	01013403          	ld	s0,16(sp)
    80005004:	00813483          	ld	s1,8(sp)
    80005008:	00013903          	ld	s2,0(sp)
    8000500c:	02010113          	addi	sp,sp,32
    80005010:	00008067          	ret

0000000080005014 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005014:	fd010113          	addi	sp,sp,-48
    80005018:	02113423          	sd	ra,40(sp)
    8000501c:	02813023          	sd	s0,32(sp)
    80005020:	00913c23          	sd	s1,24(sp)
    80005024:	01213823          	sd	s2,16(sp)
    80005028:	01313423          	sd	s3,8(sp)
    8000502c:	01413023          	sd	s4,0(sp)
    80005030:	03010413          	addi	s0,sp,48
    80005034:	00050993          	mv	s3,a0
    80005038:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000503c:	00000a13          	li	s4,0
    80005040:	01c0006f          	j	8000505c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005044:	ffffd097          	auipc	ra,0xffffd
    80005048:	3f8080e7          	jalr	1016(ra) # 8000243c <_ZN6Thread8dispatchEv>
    8000504c:	0500006f          	j	8000509c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005050:	00a00513          	li	a0,10
    80005054:	ffffc097          	auipc	ra,0xffffc
    80005058:	618080e7          	jalr	1560(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    8000505c:	00007797          	auipc	a5,0x7
    80005060:	a7c7a783          	lw	a5,-1412(a5) # 8000bad8 <_ZL9threadEnd>
    80005064:	06079263          	bnez	a5,800050c8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005068:	00893503          	ld	a0,8(s2)
    8000506c:	00001097          	auipc	ra,0x1
    80005070:	b94080e7          	jalr	-1132(ra) # 80005c00 <_ZN9BufferCPP3getEv>
        i++;
    80005074:	001a049b          	addiw	s1,s4,1
    80005078:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000507c:	0ff57513          	andi	a0,a0,255
    80005080:	ffffc097          	auipc	ra,0xffffc
    80005084:	5ec080e7          	jalr	1516(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005088:	00092703          	lw	a4,0(s2)
    8000508c:	0027179b          	slliw	a5,a4,0x2
    80005090:	00e787bb          	addw	a5,a5,a4
    80005094:	02f4e7bb          	remw	a5,s1,a5
    80005098:	fa0786e3          	beqz	a5,80005044 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000509c:	05000793          	li	a5,80
    800050a0:	02f4e4bb          	remw	s1,s1,a5
    800050a4:	fa049ce3          	bnez	s1,8000505c <_ZN12ConsumerSync8consumerEPv+0x48>
    800050a8:	fa9ff06f          	j	80005050 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800050ac:	0209b783          	ld	a5,32(s3)
    800050b0:	0087b503          	ld	a0,8(a5)
    800050b4:	00001097          	auipc	ra,0x1
    800050b8:	b4c080e7          	jalr	-1204(ra) # 80005c00 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800050bc:	0ff57513          	andi	a0,a0,255
    800050c0:	ffffd097          	auipc	ra,0xffffd
    800050c4:	55c080e7          	jalr	1372(ra) # 8000261c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800050c8:	0209b783          	ld	a5,32(s3)
    800050cc:	0087b503          	ld	a0,8(a5)
    800050d0:	00001097          	auipc	ra,0x1
    800050d4:	bbc080e7          	jalr	-1092(ra) # 80005c8c <_ZN9BufferCPP6getCntEv>
    800050d8:	fca04ae3          	bgtz	a0,800050ac <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800050dc:	01093503          	ld	a0,16(s2)
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	44c080e7          	jalr	1100(ra) # 8000252c <_ZN9Semaphore6signalEv>
}
    800050e8:	02813083          	ld	ra,40(sp)
    800050ec:	02013403          	ld	s0,32(sp)
    800050f0:	01813483          	ld	s1,24(sp)
    800050f4:	01013903          	ld	s2,16(sp)
    800050f8:	00813983          	ld	s3,8(sp)
    800050fc:	00013a03          	ld	s4,0(sp)
    80005100:	03010113          	addi	sp,sp,48
    80005104:	00008067          	ret

0000000080005108 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005108:	f8010113          	addi	sp,sp,-128
    8000510c:	06113c23          	sd	ra,120(sp)
    80005110:	06813823          	sd	s0,112(sp)
    80005114:	06913423          	sd	s1,104(sp)
    80005118:	07213023          	sd	s2,96(sp)
    8000511c:	05313c23          	sd	s3,88(sp)
    80005120:	05413823          	sd	s4,80(sp)
    80005124:	05513423          	sd	s5,72(sp)
    80005128:	05613023          	sd	s6,64(sp)
    8000512c:	03713c23          	sd	s7,56(sp)
    80005130:	03813823          	sd	s8,48(sp)
    80005134:	03913423          	sd	s9,40(sp)
    80005138:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000513c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005140:	00004517          	auipc	a0,0x4
    80005144:	ff050513          	addi	a0,a0,-16 # 80009130 <CONSOLE_STATUS+0x120>
    80005148:	00000097          	auipc	ra,0x0
    8000514c:	604080e7          	jalr	1540(ra) # 8000574c <_Z11printStringPKc>
    getString(input, 30);
    80005150:	01e00593          	li	a1,30
    80005154:	f8040493          	addi	s1,s0,-128
    80005158:	00048513          	mv	a0,s1
    8000515c:	00000097          	auipc	ra,0x0
    80005160:	678080e7          	jalr	1656(ra) # 800057d4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005164:	00048513          	mv	a0,s1
    80005168:	00000097          	auipc	ra,0x0
    8000516c:	744080e7          	jalr	1860(ra) # 800058ac <_Z11stringToIntPKc>
    80005170:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005174:	00004517          	auipc	a0,0x4
    80005178:	fdc50513          	addi	a0,a0,-36 # 80009150 <CONSOLE_STATUS+0x140>
    8000517c:	00000097          	auipc	ra,0x0
    80005180:	5d0080e7          	jalr	1488(ra) # 8000574c <_Z11printStringPKc>
    getString(input, 30);
    80005184:	01e00593          	li	a1,30
    80005188:	00048513          	mv	a0,s1
    8000518c:	00000097          	auipc	ra,0x0
    80005190:	648080e7          	jalr	1608(ra) # 800057d4 <_Z9getStringPci>
    n = stringToInt(input);
    80005194:	00048513          	mv	a0,s1
    80005198:	00000097          	auipc	ra,0x0
    8000519c:	714080e7          	jalr	1812(ra) # 800058ac <_Z11stringToIntPKc>
    800051a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800051a4:	00004517          	auipc	a0,0x4
    800051a8:	fcc50513          	addi	a0,a0,-52 # 80009170 <CONSOLE_STATUS+0x160>
    800051ac:	00000097          	auipc	ra,0x0
    800051b0:	5a0080e7          	jalr	1440(ra) # 8000574c <_Z11printStringPKc>
    800051b4:	00000613          	li	a2,0
    800051b8:	00a00593          	li	a1,10
    800051bc:	00090513          	mv	a0,s2
    800051c0:	00000097          	auipc	ra,0x0
    800051c4:	73c080e7          	jalr	1852(ra) # 800058fc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800051c8:	00004517          	auipc	a0,0x4
    800051cc:	fc050513          	addi	a0,a0,-64 # 80009188 <CONSOLE_STATUS+0x178>
    800051d0:	00000097          	auipc	ra,0x0
    800051d4:	57c080e7          	jalr	1404(ra) # 8000574c <_Z11printStringPKc>
    800051d8:	00000613          	li	a2,0
    800051dc:	00a00593          	li	a1,10
    800051e0:	00048513          	mv	a0,s1
    800051e4:	00000097          	auipc	ra,0x0
    800051e8:	718080e7          	jalr	1816(ra) # 800058fc <_Z8printIntiii>
    printString(".\n");
    800051ec:	00004517          	auipc	a0,0x4
    800051f0:	fb450513          	addi	a0,a0,-76 # 800091a0 <CONSOLE_STATUS+0x190>
    800051f4:	00000097          	auipc	ra,0x0
    800051f8:	558080e7          	jalr	1368(ra) # 8000574c <_Z11printStringPKc>
    if(threadNum > n) {
    800051fc:	0324c463          	blt	s1,s2,80005224 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005200:	03205c63          	blez	s2,80005238 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005204:	03800513          	li	a0,56
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	0f8080e7          	jalr	248(ra) # 80002300 <_Znwm>
    80005210:	00050a93          	mv	s5,a0
    80005214:	00048593          	mv	a1,s1
    80005218:	00001097          	auipc	ra,0x1
    8000521c:	804080e7          	jalr	-2044(ra) # 80005a1c <_ZN9BufferCPPC1Ei>
    80005220:	0300006f          	j	80005250 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005224:	00004517          	auipc	a0,0x4
    80005228:	f8450513          	addi	a0,a0,-124 # 800091a8 <CONSOLE_STATUS+0x198>
    8000522c:	00000097          	auipc	ra,0x0
    80005230:	520080e7          	jalr	1312(ra) # 8000574c <_Z11printStringPKc>
        return;
    80005234:	0140006f          	j	80005248 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005238:	00004517          	auipc	a0,0x4
    8000523c:	fb050513          	addi	a0,a0,-80 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80005240:	00000097          	auipc	ra,0x0
    80005244:	50c080e7          	jalr	1292(ra) # 8000574c <_Z11printStringPKc>
        return;
    80005248:	000b8113          	mv	sp,s7
    8000524c:	2380006f          	j	80005484 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005250:	01000513          	li	a0,16
    80005254:	ffffd097          	auipc	ra,0xffffd
    80005258:	0ac080e7          	jalr	172(ra) # 80002300 <_Znwm>
    8000525c:	00050493          	mv	s1,a0
    80005260:	00000593          	li	a1,0
    80005264:	ffffd097          	auipc	ra,0xffffd
    80005268:	254080e7          	jalr	596(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    8000526c:	00007797          	auipc	a5,0x7
    80005270:	8697ba23          	sd	s1,-1932(a5) # 8000bae0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005274:	00391793          	slli	a5,s2,0x3
    80005278:	00f78793          	addi	a5,a5,15
    8000527c:	ff07f793          	andi	a5,a5,-16
    80005280:	40f10133          	sub	sp,sp,a5
    80005284:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005288:	0019071b          	addiw	a4,s2,1
    8000528c:	00171793          	slli	a5,a4,0x1
    80005290:	00e787b3          	add	a5,a5,a4
    80005294:	00379793          	slli	a5,a5,0x3
    80005298:	00f78793          	addi	a5,a5,15
    8000529c:	ff07f793          	andi	a5,a5,-16
    800052a0:	40f10133          	sub	sp,sp,a5
    800052a4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800052a8:	00191c13          	slli	s8,s2,0x1
    800052ac:	012c07b3          	add	a5,s8,s2
    800052b0:	00379793          	slli	a5,a5,0x3
    800052b4:	00fa07b3          	add	a5,s4,a5
    800052b8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800052bc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800052c0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800052c4:	02800513          	li	a0,40
    800052c8:	ffffd097          	auipc	ra,0xffffd
    800052cc:	038080e7          	jalr	56(ra) # 80002300 <_Znwm>
    800052d0:	00050b13          	mv	s6,a0
    800052d4:	012c0c33          	add	s8,s8,s2
    800052d8:	003c1c13          	slli	s8,s8,0x3
    800052dc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800052e0:	ffffd097          	auipc	ra,0xffffd
    800052e4:	1b0080e7          	jalr	432(ra) # 80002490 <_ZN6ThreadC1Ev>
    800052e8:	00006797          	auipc	a5,0x6
    800052ec:	6c078793          	addi	a5,a5,1728 # 8000b9a8 <_ZTV12ConsumerSync+0x10>
    800052f0:	00fb3023          	sd	a5,0(s6)
    800052f4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800052f8:	000b0513          	mv	a0,s6
    800052fc:	ffffd097          	auipc	ra,0xffffd
    80005300:	110080e7          	jalr	272(ra) # 8000240c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005304:	00000493          	li	s1,0
    80005308:	0380006f          	j	80005340 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000530c:	00006797          	auipc	a5,0x6
    80005310:	67478793          	addi	a5,a5,1652 # 8000b980 <_ZTV12ProducerSync+0x10>
    80005314:	00fcb023          	sd	a5,0(s9)
    80005318:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000531c:	00349793          	slli	a5,s1,0x3
    80005320:	00f987b3          	add	a5,s3,a5
    80005324:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005328:	00349793          	slli	a5,s1,0x3
    8000532c:	00f987b3          	add	a5,s3,a5
    80005330:	0007b503          	ld	a0,0(a5)
    80005334:	ffffd097          	auipc	ra,0xffffd
    80005338:	0d8080e7          	jalr	216(ra) # 8000240c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000533c:	0014849b          	addiw	s1,s1,1
    80005340:	0b24d063          	bge	s1,s2,800053e0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005344:	00149793          	slli	a5,s1,0x1
    80005348:	009787b3          	add	a5,a5,s1
    8000534c:	00379793          	slli	a5,a5,0x3
    80005350:	00fa07b3          	add	a5,s4,a5
    80005354:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005358:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000535c:	00006717          	auipc	a4,0x6
    80005360:	78473703          	ld	a4,1924(a4) # 8000bae0 <_ZL10waitForAll>
    80005364:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005368:	02905863          	blez	s1,80005398 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000536c:	02800513          	li	a0,40
    80005370:	ffffd097          	auipc	ra,0xffffd
    80005374:	f90080e7          	jalr	-112(ra) # 80002300 <_Znwm>
    80005378:	00050c93          	mv	s9,a0
    8000537c:	00149c13          	slli	s8,s1,0x1
    80005380:	009c0c33          	add	s8,s8,s1
    80005384:	003c1c13          	slli	s8,s8,0x3
    80005388:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000538c:	ffffd097          	auipc	ra,0xffffd
    80005390:	104080e7          	jalr	260(ra) # 80002490 <_ZN6ThreadC1Ev>
    80005394:	f79ff06f          	j	8000530c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005398:	02800513          	li	a0,40
    8000539c:	ffffd097          	auipc	ra,0xffffd
    800053a0:	f64080e7          	jalr	-156(ra) # 80002300 <_Znwm>
    800053a4:	00050c93          	mv	s9,a0
    800053a8:	00149c13          	slli	s8,s1,0x1
    800053ac:	009c0c33          	add	s8,s8,s1
    800053b0:	003c1c13          	slli	s8,s8,0x3
    800053b4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800053b8:	ffffd097          	auipc	ra,0xffffd
    800053bc:	0d8080e7          	jalr	216(ra) # 80002490 <_ZN6ThreadC1Ev>
    800053c0:	00006797          	auipc	a5,0x6
    800053c4:	59878793          	addi	a5,a5,1432 # 8000b958 <_ZTV16ProducerKeyboard+0x10>
    800053c8:	00fcb023          	sd	a5,0(s9)
    800053cc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800053d0:	00349793          	slli	a5,s1,0x3
    800053d4:	00f987b3          	add	a5,s3,a5
    800053d8:	0197b023          	sd	s9,0(a5)
    800053dc:	f4dff06f          	j	80005328 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800053e0:	ffffd097          	auipc	ra,0xffffd
    800053e4:	05c080e7          	jalr	92(ra) # 8000243c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800053e8:	00000493          	li	s1,0
    800053ec:	00994e63          	blt	s2,s1,80005408 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800053f0:	00006517          	auipc	a0,0x6
    800053f4:	6f053503          	ld	a0,1776(a0) # 8000bae0 <_ZL10waitForAll>
    800053f8:	ffffd097          	auipc	ra,0xffffd
    800053fc:	0fc080e7          	jalr	252(ra) # 800024f4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005400:	0014849b          	addiw	s1,s1,1
    80005404:	fe9ff06f          	j	800053ec <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005408:	00000493          	li	s1,0
    8000540c:	0080006f          	j	80005414 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005410:	0014849b          	addiw	s1,s1,1
    80005414:	0324d263          	bge	s1,s2,80005438 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005418:	00349793          	slli	a5,s1,0x3
    8000541c:	00f987b3          	add	a5,s3,a5
    80005420:	0007b503          	ld	a0,0(a5)
    80005424:	fe0506e3          	beqz	a0,80005410 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005428:	00053783          	ld	a5,0(a0)
    8000542c:	0087b783          	ld	a5,8(a5)
    80005430:	000780e7          	jalr	a5
    80005434:	fddff06f          	j	80005410 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005438:	000b0a63          	beqz	s6,8000544c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000543c:	000b3783          	ld	a5,0(s6)
    80005440:	0087b783          	ld	a5,8(a5)
    80005444:	000b0513          	mv	a0,s6
    80005448:	000780e7          	jalr	a5
    delete waitForAll;
    8000544c:	00006517          	auipc	a0,0x6
    80005450:	69453503          	ld	a0,1684(a0) # 8000bae0 <_ZL10waitForAll>
    80005454:	00050863          	beqz	a0,80005464 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005458:	00053783          	ld	a5,0(a0)
    8000545c:	0087b783          	ld	a5,8(a5)
    80005460:	000780e7          	jalr	a5
    delete buffer;
    80005464:	000a8e63          	beqz	s5,80005480 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005468:	000a8513          	mv	a0,s5
    8000546c:	00001097          	auipc	ra,0x1
    80005470:	8a8080e7          	jalr	-1880(ra) # 80005d14 <_ZN9BufferCPPD1Ev>
    80005474:	000a8513          	mv	a0,s5
    80005478:	ffffd097          	auipc	ra,0xffffd
    8000547c:	eb0080e7          	jalr	-336(ra) # 80002328 <_ZdlPv>
    80005480:	000b8113          	mv	sp,s7

}
    80005484:	f8040113          	addi	sp,s0,-128
    80005488:	07813083          	ld	ra,120(sp)
    8000548c:	07013403          	ld	s0,112(sp)
    80005490:	06813483          	ld	s1,104(sp)
    80005494:	06013903          	ld	s2,96(sp)
    80005498:	05813983          	ld	s3,88(sp)
    8000549c:	05013a03          	ld	s4,80(sp)
    800054a0:	04813a83          	ld	s5,72(sp)
    800054a4:	04013b03          	ld	s6,64(sp)
    800054a8:	03813b83          	ld	s7,56(sp)
    800054ac:	03013c03          	ld	s8,48(sp)
    800054b0:	02813c83          	ld	s9,40(sp)
    800054b4:	08010113          	addi	sp,sp,128
    800054b8:	00008067          	ret
    800054bc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800054c0:	000a8513          	mv	a0,s5
    800054c4:	ffffd097          	auipc	ra,0xffffd
    800054c8:	e64080e7          	jalr	-412(ra) # 80002328 <_ZdlPv>
    800054cc:	00048513          	mv	a0,s1
    800054d0:	00007097          	auipc	ra,0x7
    800054d4:	6f8080e7          	jalr	1784(ra) # 8000cbc8 <_Unwind_Resume>
    800054d8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800054dc:	00048513          	mv	a0,s1
    800054e0:	ffffd097          	auipc	ra,0xffffd
    800054e4:	e48080e7          	jalr	-440(ra) # 80002328 <_ZdlPv>
    800054e8:	00090513          	mv	a0,s2
    800054ec:	00007097          	auipc	ra,0x7
    800054f0:	6dc080e7          	jalr	1756(ra) # 8000cbc8 <_Unwind_Resume>
    800054f4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800054f8:	000b0513          	mv	a0,s6
    800054fc:	ffffd097          	auipc	ra,0xffffd
    80005500:	e2c080e7          	jalr	-468(ra) # 80002328 <_ZdlPv>
    80005504:	00048513          	mv	a0,s1
    80005508:	00007097          	auipc	ra,0x7
    8000550c:	6c0080e7          	jalr	1728(ra) # 8000cbc8 <_Unwind_Resume>
    80005510:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005514:	000c8513          	mv	a0,s9
    80005518:	ffffd097          	auipc	ra,0xffffd
    8000551c:	e10080e7          	jalr	-496(ra) # 80002328 <_ZdlPv>
    80005520:	00048513          	mv	a0,s1
    80005524:	00007097          	auipc	ra,0x7
    80005528:	6a4080e7          	jalr	1700(ra) # 8000cbc8 <_Unwind_Resume>
    8000552c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005530:	000c8513          	mv	a0,s9
    80005534:	ffffd097          	auipc	ra,0xffffd
    80005538:	df4080e7          	jalr	-524(ra) # 80002328 <_ZdlPv>
    8000553c:	00048513          	mv	a0,s1
    80005540:	00007097          	auipc	ra,0x7
    80005544:	688080e7          	jalr	1672(ra) # 8000cbc8 <_Unwind_Resume>

0000000080005548 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005548:	ff010113          	addi	sp,sp,-16
    8000554c:	00113423          	sd	ra,8(sp)
    80005550:	00813023          	sd	s0,0(sp)
    80005554:	01010413          	addi	s0,sp,16
    80005558:	00006797          	auipc	a5,0x6
    8000555c:	45078793          	addi	a5,a5,1104 # 8000b9a8 <_ZTV12ConsumerSync+0x10>
    80005560:	00f53023          	sd	a5,0(a0)
    80005564:	ffffd097          	auipc	ra,0xffffd
    80005568:	d04080e7          	jalr	-764(ra) # 80002268 <_ZN6ThreadD1Ev>
    8000556c:	00813083          	ld	ra,8(sp)
    80005570:	00013403          	ld	s0,0(sp)
    80005574:	01010113          	addi	sp,sp,16
    80005578:	00008067          	ret

000000008000557c <_ZN12ConsumerSyncD0Ev>:
    8000557c:	fe010113          	addi	sp,sp,-32
    80005580:	00113c23          	sd	ra,24(sp)
    80005584:	00813823          	sd	s0,16(sp)
    80005588:	00913423          	sd	s1,8(sp)
    8000558c:	02010413          	addi	s0,sp,32
    80005590:	00050493          	mv	s1,a0
    80005594:	00006797          	auipc	a5,0x6
    80005598:	41478793          	addi	a5,a5,1044 # 8000b9a8 <_ZTV12ConsumerSync+0x10>
    8000559c:	00f53023          	sd	a5,0(a0)
    800055a0:	ffffd097          	auipc	ra,0xffffd
    800055a4:	cc8080e7          	jalr	-824(ra) # 80002268 <_ZN6ThreadD1Ev>
    800055a8:	00048513          	mv	a0,s1
    800055ac:	ffffd097          	auipc	ra,0xffffd
    800055b0:	d7c080e7          	jalr	-644(ra) # 80002328 <_ZdlPv>
    800055b4:	01813083          	ld	ra,24(sp)
    800055b8:	01013403          	ld	s0,16(sp)
    800055bc:	00813483          	ld	s1,8(sp)
    800055c0:	02010113          	addi	sp,sp,32
    800055c4:	00008067          	ret

00000000800055c8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800055c8:	ff010113          	addi	sp,sp,-16
    800055cc:	00113423          	sd	ra,8(sp)
    800055d0:	00813023          	sd	s0,0(sp)
    800055d4:	01010413          	addi	s0,sp,16
    800055d8:	00006797          	auipc	a5,0x6
    800055dc:	3a878793          	addi	a5,a5,936 # 8000b980 <_ZTV12ProducerSync+0x10>
    800055e0:	00f53023          	sd	a5,0(a0)
    800055e4:	ffffd097          	auipc	ra,0xffffd
    800055e8:	c84080e7          	jalr	-892(ra) # 80002268 <_ZN6ThreadD1Ev>
    800055ec:	00813083          	ld	ra,8(sp)
    800055f0:	00013403          	ld	s0,0(sp)
    800055f4:	01010113          	addi	sp,sp,16
    800055f8:	00008067          	ret

00000000800055fc <_ZN12ProducerSyncD0Ev>:
    800055fc:	fe010113          	addi	sp,sp,-32
    80005600:	00113c23          	sd	ra,24(sp)
    80005604:	00813823          	sd	s0,16(sp)
    80005608:	00913423          	sd	s1,8(sp)
    8000560c:	02010413          	addi	s0,sp,32
    80005610:	00050493          	mv	s1,a0
    80005614:	00006797          	auipc	a5,0x6
    80005618:	36c78793          	addi	a5,a5,876 # 8000b980 <_ZTV12ProducerSync+0x10>
    8000561c:	00f53023          	sd	a5,0(a0)
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	c48080e7          	jalr	-952(ra) # 80002268 <_ZN6ThreadD1Ev>
    80005628:	00048513          	mv	a0,s1
    8000562c:	ffffd097          	auipc	ra,0xffffd
    80005630:	cfc080e7          	jalr	-772(ra) # 80002328 <_ZdlPv>
    80005634:	01813083          	ld	ra,24(sp)
    80005638:	01013403          	ld	s0,16(sp)
    8000563c:	00813483          	ld	s1,8(sp)
    80005640:	02010113          	addi	sp,sp,32
    80005644:	00008067          	ret

0000000080005648 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005648:	ff010113          	addi	sp,sp,-16
    8000564c:	00113423          	sd	ra,8(sp)
    80005650:	00813023          	sd	s0,0(sp)
    80005654:	01010413          	addi	s0,sp,16
    80005658:	00006797          	auipc	a5,0x6
    8000565c:	30078793          	addi	a5,a5,768 # 8000b958 <_ZTV16ProducerKeyboard+0x10>
    80005660:	00f53023          	sd	a5,0(a0)
    80005664:	ffffd097          	auipc	ra,0xffffd
    80005668:	c04080e7          	jalr	-1020(ra) # 80002268 <_ZN6ThreadD1Ev>
    8000566c:	00813083          	ld	ra,8(sp)
    80005670:	00013403          	ld	s0,0(sp)
    80005674:	01010113          	addi	sp,sp,16
    80005678:	00008067          	ret

000000008000567c <_ZN16ProducerKeyboardD0Ev>:
    8000567c:	fe010113          	addi	sp,sp,-32
    80005680:	00113c23          	sd	ra,24(sp)
    80005684:	00813823          	sd	s0,16(sp)
    80005688:	00913423          	sd	s1,8(sp)
    8000568c:	02010413          	addi	s0,sp,32
    80005690:	00050493          	mv	s1,a0
    80005694:	00006797          	auipc	a5,0x6
    80005698:	2c478793          	addi	a5,a5,708 # 8000b958 <_ZTV16ProducerKeyboard+0x10>
    8000569c:	00f53023          	sd	a5,0(a0)
    800056a0:	ffffd097          	auipc	ra,0xffffd
    800056a4:	bc8080e7          	jalr	-1080(ra) # 80002268 <_ZN6ThreadD1Ev>
    800056a8:	00048513          	mv	a0,s1
    800056ac:	ffffd097          	auipc	ra,0xffffd
    800056b0:	c7c080e7          	jalr	-900(ra) # 80002328 <_ZdlPv>
    800056b4:	01813083          	ld	ra,24(sp)
    800056b8:	01013403          	ld	s0,16(sp)
    800056bc:	00813483          	ld	s1,8(sp)
    800056c0:	02010113          	addi	sp,sp,32
    800056c4:	00008067          	ret

00000000800056c8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800056c8:	ff010113          	addi	sp,sp,-16
    800056cc:	00113423          	sd	ra,8(sp)
    800056d0:	00813023          	sd	s0,0(sp)
    800056d4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800056d8:	02053583          	ld	a1,32(a0)
    800056dc:	fffff097          	auipc	ra,0xfffff
    800056e0:	7e4080e7          	jalr	2020(ra) # 80004ec0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800056e4:	00813083          	ld	ra,8(sp)
    800056e8:	00013403          	ld	s0,0(sp)
    800056ec:	01010113          	addi	sp,sp,16
    800056f0:	00008067          	ret

00000000800056f4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800056f4:	ff010113          	addi	sp,sp,-16
    800056f8:	00113423          	sd	ra,8(sp)
    800056fc:	00813023          	sd	s0,0(sp)
    80005700:	01010413          	addi	s0,sp,16
        producer(td);
    80005704:	02053583          	ld	a1,32(a0)
    80005708:	00000097          	auipc	ra,0x0
    8000570c:	878080e7          	jalr	-1928(ra) # 80004f80 <_ZN12ProducerSync8producerEPv>
    }
    80005710:	00813083          	ld	ra,8(sp)
    80005714:	00013403          	ld	s0,0(sp)
    80005718:	01010113          	addi	sp,sp,16
    8000571c:	00008067          	ret

0000000080005720 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005720:	ff010113          	addi	sp,sp,-16
    80005724:	00113423          	sd	ra,8(sp)
    80005728:	00813023          	sd	s0,0(sp)
    8000572c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005730:	02053583          	ld	a1,32(a0)
    80005734:	00000097          	auipc	ra,0x0
    80005738:	8e0080e7          	jalr	-1824(ra) # 80005014 <_ZN12ConsumerSync8consumerEPv>
    }
    8000573c:	00813083          	ld	ra,8(sp)
    80005740:	00013403          	ld	s0,0(sp)
    80005744:	01010113          	addi	sp,sp,16
    80005748:	00008067          	ret

000000008000574c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000574c:	fe010113          	addi	sp,sp,-32
    80005750:	00113c23          	sd	ra,24(sp)
    80005754:	00813823          	sd	s0,16(sp)
    80005758:	00913423          	sd	s1,8(sp)
    8000575c:	02010413          	addi	s0,sp,32
    80005760:	00050493          	mv	s1,a0
    LOCK();
    80005764:	00100613          	li	a2,1
    80005768:	00000593          	li	a1,0
    8000576c:	00006517          	auipc	a0,0x6
    80005770:	37c50513          	addi	a0,a0,892 # 8000bae8 <lockPrint>
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	aa8080e7          	jalr	-1368(ra) # 8000121c <copy_and_swap>
    8000577c:	00050863          	beqz	a0,8000578c <_Z11printStringPKc+0x40>
    80005780:	ffffc097          	auipc	ra,0xffffc
    80005784:	c4c080e7          	jalr	-948(ra) # 800013cc <_Z15thread_dispatchv>
    80005788:	fddff06f          	j	80005764 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000578c:	0004c503          	lbu	a0,0(s1)
    80005790:	00050a63          	beqz	a0,800057a4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005794:	ffffc097          	auipc	ra,0xffffc
    80005798:	ed8080e7          	jalr	-296(ra) # 8000166c <_Z4putcc>
        string++;
    8000579c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800057a0:	fedff06f          	j	8000578c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800057a4:	00000613          	li	a2,0
    800057a8:	00100593          	li	a1,1
    800057ac:	00006517          	auipc	a0,0x6
    800057b0:	33c50513          	addi	a0,a0,828 # 8000bae8 <lockPrint>
    800057b4:	ffffc097          	auipc	ra,0xffffc
    800057b8:	a68080e7          	jalr	-1432(ra) # 8000121c <copy_and_swap>
    800057bc:	fe0514e3          	bnez	a0,800057a4 <_Z11printStringPKc+0x58>
}
    800057c0:	01813083          	ld	ra,24(sp)
    800057c4:	01013403          	ld	s0,16(sp)
    800057c8:	00813483          	ld	s1,8(sp)
    800057cc:	02010113          	addi	sp,sp,32
    800057d0:	00008067          	ret

00000000800057d4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800057d4:	fd010113          	addi	sp,sp,-48
    800057d8:	02113423          	sd	ra,40(sp)
    800057dc:	02813023          	sd	s0,32(sp)
    800057e0:	00913c23          	sd	s1,24(sp)
    800057e4:	01213823          	sd	s2,16(sp)
    800057e8:	01313423          	sd	s3,8(sp)
    800057ec:	01413023          	sd	s4,0(sp)
    800057f0:	03010413          	addi	s0,sp,48
    800057f4:	00050993          	mv	s3,a0
    800057f8:	00058a13          	mv	s4,a1
    LOCK();
    800057fc:	00100613          	li	a2,1
    80005800:	00000593          	li	a1,0
    80005804:	00006517          	auipc	a0,0x6
    80005808:	2e450513          	addi	a0,a0,740 # 8000bae8 <lockPrint>
    8000580c:	ffffc097          	auipc	ra,0xffffc
    80005810:	a10080e7          	jalr	-1520(ra) # 8000121c <copy_and_swap>
    80005814:	00050863          	beqz	a0,80005824 <_Z9getStringPci+0x50>
    80005818:	ffffc097          	auipc	ra,0xffffc
    8000581c:	bb4080e7          	jalr	-1100(ra) # 800013cc <_Z15thread_dispatchv>
    80005820:	fddff06f          	j	800057fc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005824:	00000913          	li	s2,0
    80005828:	00090493          	mv	s1,s2
    8000582c:	0019091b          	addiw	s2,s2,1
    80005830:	03495a63          	bge	s2,s4,80005864 <_Z9getStringPci+0x90>
        cc = getc();
    80005834:	ffffc097          	auipc	ra,0xffffc
    80005838:	dec080e7          	jalr	-532(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    8000583c:	02050463          	beqz	a0,80005864 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005840:	009984b3          	add	s1,s3,s1
    80005844:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005848:	00a00793          	li	a5,10
    8000584c:	00f50a63          	beq	a0,a5,80005860 <_Z9getStringPci+0x8c>
    80005850:	00d00793          	li	a5,13
    80005854:	fcf51ae3          	bne	a0,a5,80005828 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005858:	00090493          	mv	s1,s2
    8000585c:	0080006f          	j	80005864 <_Z9getStringPci+0x90>
    80005860:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005864:	009984b3          	add	s1,s3,s1
    80005868:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000586c:	00000613          	li	a2,0
    80005870:	00100593          	li	a1,1
    80005874:	00006517          	auipc	a0,0x6
    80005878:	27450513          	addi	a0,a0,628 # 8000bae8 <lockPrint>
    8000587c:	ffffc097          	auipc	ra,0xffffc
    80005880:	9a0080e7          	jalr	-1632(ra) # 8000121c <copy_and_swap>
    80005884:	fe0514e3          	bnez	a0,8000586c <_Z9getStringPci+0x98>
    return buf;
}
    80005888:	00098513          	mv	a0,s3
    8000588c:	02813083          	ld	ra,40(sp)
    80005890:	02013403          	ld	s0,32(sp)
    80005894:	01813483          	ld	s1,24(sp)
    80005898:	01013903          	ld	s2,16(sp)
    8000589c:	00813983          	ld	s3,8(sp)
    800058a0:	00013a03          	ld	s4,0(sp)
    800058a4:	03010113          	addi	sp,sp,48
    800058a8:	00008067          	ret

00000000800058ac <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800058ac:	ff010113          	addi	sp,sp,-16
    800058b0:	00813423          	sd	s0,8(sp)
    800058b4:	01010413          	addi	s0,sp,16
    800058b8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800058bc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800058c0:	0006c603          	lbu	a2,0(a3)
    800058c4:	fd06071b          	addiw	a4,a2,-48
    800058c8:	0ff77713          	andi	a4,a4,255
    800058cc:	00900793          	li	a5,9
    800058d0:	02e7e063          	bltu	a5,a4,800058f0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800058d4:	0025179b          	slliw	a5,a0,0x2
    800058d8:	00a787bb          	addw	a5,a5,a0
    800058dc:	0017979b          	slliw	a5,a5,0x1
    800058e0:	00168693          	addi	a3,a3,1
    800058e4:	00c787bb          	addw	a5,a5,a2
    800058e8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800058ec:	fd5ff06f          	j	800058c0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800058f0:	00813403          	ld	s0,8(sp)
    800058f4:	01010113          	addi	sp,sp,16
    800058f8:	00008067          	ret

00000000800058fc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800058fc:	fc010113          	addi	sp,sp,-64
    80005900:	02113c23          	sd	ra,56(sp)
    80005904:	02813823          	sd	s0,48(sp)
    80005908:	02913423          	sd	s1,40(sp)
    8000590c:	03213023          	sd	s2,32(sp)
    80005910:	01313c23          	sd	s3,24(sp)
    80005914:	04010413          	addi	s0,sp,64
    80005918:	00050493          	mv	s1,a0
    8000591c:	00058913          	mv	s2,a1
    80005920:	00060993          	mv	s3,a2
    LOCK();
    80005924:	00100613          	li	a2,1
    80005928:	00000593          	li	a1,0
    8000592c:	00006517          	auipc	a0,0x6
    80005930:	1bc50513          	addi	a0,a0,444 # 8000bae8 <lockPrint>
    80005934:	ffffc097          	auipc	ra,0xffffc
    80005938:	8e8080e7          	jalr	-1816(ra) # 8000121c <copy_and_swap>
    8000593c:	00050863          	beqz	a0,8000594c <_Z8printIntiii+0x50>
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	a8c080e7          	jalr	-1396(ra) # 800013cc <_Z15thread_dispatchv>
    80005948:	fddff06f          	j	80005924 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000594c:	00098463          	beqz	s3,80005954 <_Z8printIntiii+0x58>
    80005950:	0804c463          	bltz	s1,800059d8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005954:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005958:	00000593          	li	a1,0
    }

    i = 0;
    8000595c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005960:	0009079b          	sext.w	a5,s2
    80005964:	0325773b          	remuw	a4,a0,s2
    80005968:	00048613          	mv	a2,s1
    8000596c:	0014849b          	addiw	s1,s1,1
    80005970:	02071693          	slli	a3,a4,0x20
    80005974:	0206d693          	srli	a3,a3,0x20
    80005978:	00006717          	auipc	a4,0x6
    8000597c:	04870713          	addi	a4,a4,72 # 8000b9c0 <digits>
    80005980:	00d70733          	add	a4,a4,a3
    80005984:	00074683          	lbu	a3,0(a4)
    80005988:	fd040713          	addi	a4,s0,-48
    8000598c:	00c70733          	add	a4,a4,a2
    80005990:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005994:	0005071b          	sext.w	a4,a0
    80005998:	0325553b          	divuw	a0,a0,s2
    8000599c:	fcf772e3          	bgeu	a4,a5,80005960 <_Z8printIntiii+0x64>
    if(neg)
    800059a0:	00058c63          	beqz	a1,800059b8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800059a4:	fd040793          	addi	a5,s0,-48
    800059a8:	009784b3          	add	s1,a5,s1
    800059ac:	02d00793          	li	a5,45
    800059b0:	fef48823          	sb	a5,-16(s1)
    800059b4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800059b8:	fff4849b          	addiw	s1,s1,-1
    800059bc:	0204c463          	bltz	s1,800059e4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800059c0:	fd040793          	addi	a5,s0,-48
    800059c4:	009787b3          	add	a5,a5,s1
    800059c8:	ff07c503          	lbu	a0,-16(a5)
    800059cc:	ffffc097          	auipc	ra,0xffffc
    800059d0:	ca0080e7          	jalr	-864(ra) # 8000166c <_Z4putcc>
    800059d4:	fe5ff06f          	j	800059b8 <_Z8printIntiii+0xbc>
        x = -xx;
    800059d8:	4090053b          	negw	a0,s1
        neg = 1;
    800059dc:	00100593          	li	a1,1
        x = -xx;
    800059e0:	f7dff06f          	j	8000595c <_Z8printIntiii+0x60>

    UNLOCK();
    800059e4:	00000613          	li	a2,0
    800059e8:	00100593          	li	a1,1
    800059ec:	00006517          	auipc	a0,0x6
    800059f0:	0fc50513          	addi	a0,a0,252 # 8000bae8 <lockPrint>
    800059f4:	ffffc097          	auipc	ra,0xffffc
    800059f8:	828080e7          	jalr	-2008(ra) # 8000121c <copy_and_swap>
    800059fc:	fe0514e3          	bnez	a0,800059e4 <_Z8printIntiii+0xe8>
    80005a00:	03813083          	ld	ra,56(sp)
    80005a04:	03013403          	ld	s0,48(sp)
    80005a08:	02813483          	ld	s1,40(sp)
    80005a0c:	02013903          	ld	s2,32(sp)
    80005a10:	01813983          	ld	s3,24(sp)
    80005a14:	04010113          	addi	sp,sp,64
    80005a18:	00008067          	ret

0000000080005a1c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005a1c:	fd010113          	addi	sp,sp,-48
    80005a20:	02113423          	sd	ra,40(sp)
    80005a24:	02813023          	sd	s0,32(sp)
    80005a28:	00913c23          	sd	s1,24(sp)
    80005a2c:	01213823          	sd	s2,16(sp)
    80005a30:	01313423          	sd	s3,8(sp)
    80005a34:	03010413          	addi	s0,sp,48
    80005a38:	00050493          	mv	s1,a0
    80005a3c:	00058913          	mv	s2,a1
    80005a40:	0015879b          	addiw	a5,a1,1
    80005a44:	0007851b          	sext.w	a0,a5
    80005a48:	00f4a023          	sw	a5,0(s1)
    80005a4c:	0004a823          	sw	zero,16(s1)
    80005a50:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005a54:	00251513          	slli	a0,a0,0x2
    80005a58:	ffffc097          	auipc	ra,0xffffc
    80005a5c:	800080e7          	jalr	-2048(ra) # 80001258 <_Z9mem_allocm>
    80005a60:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005a64:	01000513          	li	a0,16
    80005a68:	ffffd097          	auipc	ra,0xffffd
    80005a6c:	898080e7          	jalr	-1896(ra) # 80002300 <_Znwm>
    80005a70:	00050993          	mv	s3,a0
    80005a74:	00000593          	li	a1,0
    80005a78:	ffffd097          	auipc	ra,0xffffd
    80005a7c:	a40080e7          	jalr	-1472(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    80005a80:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005a84:	01000513          	li	a0,16
    80005a88:	ffffd097          	auipc	ra,0xffffd
    80005a8c:	878080e7          	jalr	-1928(ra) # 80002300 <_Znwm>
    80005a90:	00050993          	mv	s3,a0
    80005a94:	00090593          	mv	a1,s2
    80005a98:	ffffd097          	auipc	ra,0xffffd
    80005a9c:	a20080e7          	jalr	-1504(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    80005aa0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005aa4:	01000513          	li	a0,16
    80005aa8:	ffffd097          	auipc	ra,0xffffd
    80005aac:	858080e7          	jalr	-1960(ra) # 80002300 <_Znwm>
    80005ab0:	00050913          	mv	s2,a0
    80005ab4:	00100593          	li	a1,1
    80005ab8:	ffffd097          	auipc	ra,0xffffd
    80005abc:	a00080e7          	jalr	-1536(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    80005ac0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005ac4:	01000513          	li	a0,16
    80005ac8:	ffffd097          	auipc	ra,0xffffd
    80005acc:	838080e7          	jalr	-1992(ra) # 80002300 <_Znwm>
    80005ad0:	00050913          	mv	s2,a0
    80005ad4:	00100593          	li	a1,1
    80005ad8:	ffffd097          	auipc	ra,0xffffd
    80005adc:	9e0080e7          	jalr	-1568(ra) # 800024b8 <_ZN9SemaphoreC1Ej>
    80005ae0:	0324b823          	sd	s2,48(s1)
}
    80005ae4:	02813083          	ld	ra,40(sp)
    80005ae8:	02013403          	ld	s0,32(sp)
    80005aec:	01813483          	ld	s1,24(sp)
    80005af0:	01013903          	ld	s2,16(sp)
    80005af4:	00813983          	ld	s3,8(sp)
    80005af8:	03010113          	addi	sp,sp,48
    80005afc:	00008067          	ret
    80005b00:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005b04:	00098513          	mv	a0,s3
    80005b08:	ffffd097          	auipc	ra,0xffffd
    80005b0c:	820080e7          	jalr	-2016(ra) # 80002328 <_ZdlPv>
    80005b10:	00048513          	mv	a0,s1
    80005b14:	00007097          	auipc	ra,0x7
    80005b18:	0b4080e7          	jalr	180(ra) # 8000cbc8 <_Unwind_Resume>
    80005b1c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005b20:	00098513          	mv	a0,s3
    80005b24:	ffffd097          	auipc	ra,0xffffd
    80005b28:	804080e7          	jalr	-2044(ra) # 80002328 <_ZdlPv>
    80005b2c:	00048513          	mv	a0,s1
    80005b30:	00007097          	auipc	ra,0x7
    80005b34:	098080e7          	jalr	152(ra) # 8000cbc8 <_Unwind_Resume>
    80005b38:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005b3c:	00090513          	mv	a0,s2
    80005b40:	ffffc097          	auipc	ra,0xffffc
    80005b44:	7e8080e7          	jalr	2024(ra) # 80002328 <_ZdlPv>
    80005b48:	00048513          	mv	a0,s1
    80005b4c:	00007097          	auipc	ra,0x7
    80005b50:	07c080e7          	jalr	124(ra) # 8000cbc8 <_Unwind_Resume>
    80005b54:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005b58:	00090513          	mv	a0,s2
    80005b5c:	ffffc097          	auipc	ra,0xffffc
    80005b60:	7cc080e7          	jalr	1996(ra) # 80002328 <_ZdlPv>
    80005b64:	00048513          	mv	a0,s1
    80005b68:	00007097          	auipc	ra,0x7
    80005b6c:	060080e7          	jalr	96(ra) # 8000cbc8 <_Unwind_Resume>

0000000080005b70 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005b70:	fe010113          	addi	sp,sp,-32
    80005b74:	00113c23          	sd	ra,24(sp)
    80005b78:	00813823          	sd	s0,16(sp)
    80005b7c:	00913423          	sd	s1,8(sp)
    80005b80:	01213023          	sd	s2,0(sp)
    80005b84:	02010413          	addi	s0,sp,32
    80005b88:	00050493          	mv	s1,a0
    80005b8c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005b90:	01853503          	ld	a0,24(a0)
    80005b94:	ffffd097          	auipc	ra,0xffffd
    80005b98:	960080e7          	jalr	-1696(ra) # 800024f4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005b9c:	0304b503          	ld	a0,48(s1)
    80005ba0:	ffffd097          	auipc	ra,0xffffd
    80005ba4:	954080e7          	jalr	-1708(ra) # 800024f4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005ba8:	0084b783          	ld	a5,8(s1)
    80005bac:	0144a703          	lw	a4,20(s1)
    80005bb0:	00271713          	slli	a4,a4,0x2
    80005bb4:	00e787b3          	add	a5,a5,a4
    80005bb8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005bbc:	0144a783          	lw	a5,20(s1)
    80005bc0:	0017879b          	addiw	a5,a5,1
    80005bc4:	0004a703          	lw	a4,0(s1)
    80005bc8:	02e7e7bb          	remw	a5,a5,a4
    80005bcc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005bd0:	0304b503          	ld	a0,48(s1)
    80005bd4:	ffffd097          	auipc	ra,0xffffd
    80005bd8:	958080e7          	jalr	-1704(ra) # 8000252c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005bdc:	0204b503          	ld	a0,32(s1)
    80005be0:	ffffd097          	auipc	ra,0xffffd
    80005be4:	94c080e7          	jalr	-1716(ra) # 8000252c <_ZN9Semaphore6signalEv>

}
    80005be8:	01813083          	ld	ra,24(sp)
    80005bec:	01013403          	ld	s0,16(sp)
    80005bf0:	00813483          	ld	s1,8(sp)
    80005bf4:	00013903          	ld	s2,0(sp)
    80005bf8:	02010113          	addi	sp,sp,32
    80005bfc:	00008067          	ret

0000000080005c00 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005c00:	fe010113          	addi	sp,sp,-32
    80005c04:	00113c23          	sd	ra,24(sp)
    80005c08:	00813823          	sd	s0,16(sp)
    80005c0c:	00913423          	sd	s1,8(sp)
    80005c10:	01213023          	sd	s2,0(sp)
    80005c14:	02010413          	addi	s0,sp,32
    80005c18:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005c1c:	02053503          	ld	a0,32(a0)
    80005c20:	ffffd097          	auipc	ra,0xffffd
    80005c24:	8d4080e7          	jalr	-1836(ra) # 800024f4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005c28:	0284b503          	ld	a0,40(s1)
    80005c2c:	ffffd097          	auipc	ra,0xffffd
    80005c30:	8c8080e7          	jalr	-1848(ra) # 800024f4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005c34:	0084b703          	ld	a4,8(s1)
    80005c38:	0104a783          	lw	a5,16(s1)
    80005c3c:	00279693          	slli	a3,a5,0x2
    80005c40:	00d70733          	add	a4,a4,a3
    80005c44:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c48:	0017879b          	addiw	a5,a5,1
    80005c4c:	0004a703          	lw	a4,0(s1)
    80005c50:	02e7e7bb          	remw	a5,a5,a4
    80005c54:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005c58:	0284b503          	ld	a0,40(s1)
    80005c5c:	ffffd097          	auipc	ra,0xffffd
    80005c60:	8d0080e7          	jalr	-1840(ra) # 8000252c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005c64:	0184b503          	ld	a0,24(s1)
    80005c68:	ffffd097          	auipc	ra,0xffffd
    80005c6c:	8c4080e7          	jalr	-1852(ra) # 8000252c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c70:	00090513          	mv	a0,s2
    80005c74:	01813083          	ld	ra,24(sp)
    80005c78:	01013403          	ld	s0,16(sp)
    80005c7c:	00813483          	ld	s1,8(sp)
    80005c80:	00013903          	ld	s2,0(sp)
    80005c84:	02010113          	addi	sp,sp,32
    80005c88:	00008067          	ret

0000000080005c8c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005c8c:	fe010113          	addi	sp,sp,-32
    80005c90:	00113c23          	sd	ra,24(sp)
    80005c94:	00813823          	sd	s0,16(sp)
    80005c98:	00913423          	sd	s1,8(sp)
    80005c9c:	01213023          	sd	s2,0(sp)
    80005ca0:	02010413          	addi	s0,sp,32
    80005ca4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005ca8:	02853503          	ld	a0,40(a0)
    80005cac:	ffffd097          	auipc	ra,0xffffd
    80005cb0:	848080e7          	jalr	-1976(ra) # 800024f4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005cb4:	0304b503          	ld	a0,48(s1)
    80005cb8:	ffffd097          	auipc	ra,0xffffd
    80005cbc:	83c080e7          	jalr	-1988(ra) # 800024f4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005cc0:	0144a783          	lw	a5,20(s1)
    80005cc4:	0104a903          	lw	s2,16(s1)
    80005cc8:	0327ce63          	blt	a5,s2,80005d04 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005ccc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005cd0:	0304b503          	ld	a0,48(s1)
    80005cd4:	ffffd097          	auipc	ra,0xffffd
    80005cd8:	858080e7          	jalr	-1960(ra) # 8000252c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005cdc:	0284b503          	ld	a0,40(s1)
    80005ce0:	ffffd097          	auipc	ra,0xffffd
    80005ce4:	84c080e7          	jalr	-1972(ra) # 8000252c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005ce8:	00090513          	mv	a0,s2
    80005cec:	01813083          	ld	ra,24(sp)
    80005cf0:	01013403          	ld	s0,16(sp)
    80005cf4:	00813483          	ld	s1,8(sp)
    80005cf8:	00013903          	ld	s2,0(sp)
    80005cfc:	02010113          	addi	sp,sp,32
    80005d00:	00008067          	ret
        ret = cap - head + tail;
    80005d04:	0004a703          	lw	a4,0(s1)
    80005d08:	4127093b          	subw	s2,a4,s2
    80005d0c:	00f9093b          	addw	s2,s2,a5
    80005d10:	fc1ff06f          	j	80005cd0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005d14 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005d14:	fe010113          	addi	sp,sp,-32
    80005d18:	00113c23          	sd	ra,24(sp)
    80005d1c:	00813823          	sd	s0,16(sp)
    80005d20:	00913423          	sd	s1,8(sp)
    80005d24:	02010413          	addi	s0,sp,32
    80005d28:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005d2c:	00a00513          	li	a0,10
    80005d30:	ffffd097          	auipc	ra,0xffffd
    80005d34:	8ec080e7          	jalr	-1812(ra) # 8000261c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005d38:	00003517          	auipc	a0,0x3
    80005d3c:	5d850513          	addi	a0,a0,1496 # 80009310 <CONSOLE_STATUS+0x300>
    80005d40:	00000097          	auipc	ra,0x0
    80005d44:	a0c080e7          	jalr	-1524(ra) # 8000574c <_Z11printStringPKc>
    while (getCnt()) {
    80005d48:	00048513          	mv	a0,s1
    80005d4c:	00000097          	auipc	ra,0x0
    80005d50:	f40080e7          	jalr	-192(ra) # 80005c8c <_ZN9BufferCPP6getCntEv>
    80005d54:	02050c63          	beqz	a0,80005d8c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005d58:	0084b783          	ld	a5,8(s1)
    80005d5c:	0104a703          	lw	a4,16(s1)
    80005d60:	00271713          	slli	a4,a4,0x2
    80005d64:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005d68:	0007c503          	lbu	a0,0(a5)
    80005d6c:	ffffd097          	auipc	ra,0xffffd
    80005d70:	8b0080e7          	jalr	-1872(ra) # 8000261c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005d74:	0104a783          	lw	a5,16(s1)
    80005d78:	0017879b          	addiw	a5,a5,1
    80005d7c:	0004a703          	lw	a4,0(s1)
    80005d80:	02e7e7bb          	remw	a5,a5,a4
    80005d84:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005d88:	fc1ff06f          	j	80005d48 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005d8c:	02100513          	li	a0,33
    80005d90:	ffffd097          	auipc	ra,0xffffd
    80005d94:	88c080e7          	jalr	-1908(ra) # 8000261c <_ZN7Console4putcEc>
    Console::putc('\n');
    80005d98:	00a00513          	li	a0,10
    80005d9c:	ffffd097          	auipc	ra,0xffffd
    80005da0:	880080e7          	jalr	-1920(ra) # 8000261c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005da4:	0084b503          	ld	a0,8(s1)
    80005da8:	ffffb097          	auipc	ra,0xffffb
    80005dac:	504080e7          	jalr	1284(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80005db0:	0204b503          	ld	a0,32(s1)
    80005db4:	00050863          	beqz	a0,80005dc4 <_ZN9BufferCPPD1Ev+0xb0>
    80005db8:	00053783          	ld	a5,0(a0)
    80005dbc:	0087b783          	ld	a5,8(a5)
    80005dc0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005dc4:	0184b503          	ld	a0,24(s1)
    80005dc8:	00050863          	beqz	a0,80005dd8 <_ZN9BufferCPPD1Ev+0xc4>
    80005dcc:	00053783          	ld	a5,0(a0)
    80005dd0:	0087b783          	ld	a5,8(a5)
    80005dd4:	000780e7          	jalr	a5
    delete mutexTail;
    80005dd8:	0304b503          	ld	a0,48(s1)
    80005ddc:	00050863          	beqz	a0,80005dec <_ZN9BufferCPPD1Ev+0xd8>
    80005de0:	00053783          	ld	a5,0(a0)
    80005de4:	0087b783          	ld	a5,8(a5)
    80005de8:	000780e7          	jalr	a5
    delete mutexHead;
    80005dec:	0284b503          	ld	a0,40(s1)
    80005df0:	00050863          	beqz	a0,80005e00 <_ZN9BufferCPPD1Ev+0xec>
    80005df4:	00053783          	ld	a5,0(a0)
    80005df8:	0087b783          	ld	a5,8(a5)
    80005dfc:	000780e7          	jalr	a5
}
    80005e00:	01813083          	ld	ra,24(sp)
    80005e04:	01013403          	ld	s0,16(sp)
    80005e08:	00813483          	ld	s1,8(sp)
    80005e0c:	02010113          	addi	sp,sp,32
    80005e10:	00008067          	ret

0000000080005e14 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005e14:	fe010113          	addi	sp,sp,-32
    80005e18:	00113c23          	sd	ra,24(sp)
    80005e1c:	00813823          	sd	s0,16(sp)
    80005e20:	00913423          	sd	s1,8(sp)
    80005e24:	01213023          	sd	s2,0(sp)
    80005e28:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005e2c:	00003517          	auipc	a0,0x3
    80005e30:	4fc50513          	addi	a0,a0,1276 # 80009328 <CONSOLE_STATUS+0x318>
    80005e34:	00000097          	auipc	ra,0x0
    80005e38:	918080e7          	jalr	-1768(ra) # 8000574c <_Z11printStringPKc>
    int test = getc() - '0';
    80005e3c:	ffffb097          	auipc	ra,0xffffb
    80005e40:	7e4080e7          	jalr	2020(ra) # 80001620 <_Z4getcv>
    80005e44:	0005091b          	sext.w	s2,a0
    80005e48:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005e4c:	ffffb097          	auipc	ra,0xffffb
    80005e50:	7d4080e7          	jalr	2004(ra) # 80001620 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    80005e54:	fcf9071b          	addiw	a4,s2,-49
    80005e58:	00100793          	li	a5,1
    80005e5c:	04e7f063          	bgeu	a5,a4,80005e9c <_Z8userMainv+0x88>
    80005e60:	00700793          	li	a5,7
    80005e64:	02f48c63          	beq	s1,a5,80005e9c <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80005e68:	fcd9079b          	addiw	a5,s2,-51
    80005e6c:	00100693          	li	a3,1
    80005e70:	04f6fa63          	bgeu	a3,a5,80005ec4 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005e74:	fcb9091b          	addiw	s2,s2,-53
    80005e78:	00100793          	li	a5,1
    80005e7c:	0527fe63          	bgeu	a5,s2,80005ed8 <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005e80:	00600793          	li	a5,6
    80005e84:	02e7f463          	bgeu	a5,a4,80005eac <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    80005e88:	00003517          	auipc	a0,0x3
    80005e8c:	55050513          	addi	a0,a0,1360 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005e90:	00000097          	auipc	ra,0x0
    80005e94:	8bc080e7          	jalr	-1860(ra) # 8000574c <_Z11printStringPKc>
    80005e98:	0140006f          	j	80005eac <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    80005e9c:	00003517          	auipc	a0,0x3
    80005ea0:	4ac50513          	addi	a0,a0,1196 # 80009348 <CONSOLE_STATUS+0x338>
    80005ea4:	00000097          	auipc	ra,0x0
    80005ea8:	8a8080e7          	jalr	-1880(ra) # 8000574c <_Z11printStringPKc>
    }
    80005eac:	01813083          	ld	ra,24(sp)
    80005eb0:	01013403          	ld	s0,16(sp)
    80005eb4:	00813483          	ld	s1,8(sp)
    80005eb8:	00013903          	ld	s2,0(sp)
    80005ebc:	02010113          	addi	sp,sp,32
    80005ec0:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80005ec4:	00003517          	auipc	a0,0x3
    80005ec8:	4b450513          	addi	a0,a0,1204 # 80009378 <CONSOLE_STATUS+0x368>
    80005ecc:	00000097          	auipc	ra,0x0
    80005ed0:	880080e7          	jalr	-1920(ra) # 8000574c <_Z11printStringPKc>
            return;
    80005ed4:	fd9ff06f          	j	80005eac <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005ed8:	00003517          	auipc	a0,0x3
    80005edc:	4d050513          	addi	a0,a0,1232 # 800093a8 <CONSOLE_STATUS+0x398>
    80005ee0:	00000097          	auipc	ra,0x0
    80005ee4:	86c080e7          	jalr	-1940(ra) # 8000574c <_Z11printStringPKc>
            return;
    80005ee8:	fc5ff06f          	j	80005eac <_Z8userMainv+0x98>

0000000080005eec <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005eec:	fe010113          	addi	sp,sp,-32
    80005ef0:	00113c23          	sd	ra,24(sp)
    80005ef4:	00813823          	sd	s0,16(sp)
    80005ef8:	00913423          	sd	s1,8(sp)
    80005efc:	01213023          	sd	s2,0(sp)
    80005f00:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005f04:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005f08:	00600493          	li	s1,6
    while (--i > 0) {
    80005f0c:	fff4849b          	addiw	s1,s1,-1
    80005f10:	04905463          	blez	s1,80005f58 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005f14:	00003517          	auipc	a0,0x3
    80005f18:	4ec50513          	addi	a0,a0,1260 # 80009400 <CONSOLE_STATUS+0x3f0>
    80005f1c:	00000097          	auipc	ra,0x0
    80005f20:	830080e7          	jalr	-2000(ra) # 8000574c <_Z11printStringPKc>
        printInt(sleep_time);
    80005f24:	00000613          	li	a2,0
    80005f28:	00a00593          	li	a1,10
    80005f2c:	0009051b          	sext.w	a0,s2
    80005f30:	00000097          	auipc	ra,0x0
    80005f34:	9cc080e7          	jalr	-1588(ra) # 800058fc <_Z8printIntiii>
        printString(" !\n");
    80005f38:	00003517          	auipc	a0,0x3
    80005f3c:	4d050513          	addi	a0,a0,1232 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005f40:	00000097          	auipc	ra,0x0
    80005f44:	80c080e7          	jalr	-2036(ra) # 8000574c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005f48:	00090513          	mv	a0,s2
    80005f4c:	ffffb097          	auipc	ra,0xffffb
    80005f50:	688080e7          	jalr	1672(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80005f54:	fb9ff06f          	j	80005f0c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005f58:	00a00793          	li	a5,10
    80005f5c:	02f95933          	divu	s2,s2,a5
    80005f60:	fff90913          	addi	s2,s2,-1
    80005f64:	00006797          	auipc	a5,0x6
    80005f68:	b8c78793          	addi	a5,a5,-1140 # 8000baf0 <_ZL8finished>
    80005f6c:	01278933          	add	s2,a5,s2
    80005f70:	00100793          	li	a5,1
    80005f74:	00f90023          	sb	a5,0(s2)
}
    80005f78:	01813083          	ld	ra,24(sp)
    80005f7c:	01013403          	ld	s0,16(sp)
    80005f80:	00813483          	ld	s1,8(sp)
    80005f84:	00013903          	ld	s2,0(sp)
    80005f88:	02010113          	addi	sp,sp,32
    80005f8c:	00008067          	ret

0000000080005f90 <_Z12testSleepingv>:

void testSleeping() {
    80005f90:	fc010113          	addi	sp,sp,-64
    80005f94:	02113c23          	sd	ra,56(sp)
    80005f98:	02813823          	sd	s0,48(sp)
    80005f9c:	02913423          	sd	s1,40(sp)
    80005fa0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005fa4:	00a00793          	li	a5,10
    80005fa8:	fcf43823          	sd	a5,-48(s0)
    80005fac:	01400793          	li	a5,20
    80005fb0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005fb4:	00000493          	li	s1,0
    80005fb8:	02c0006f          	j	80005fe4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005fbc:	00349793          	slli	a5,s1,0x3
    80005fc0:	fd040613          	addi	a2,s0,-48
    80005fc4:	00f60633          	add	a2,a2,a5
    80005fc8:	00000597          	auipc	a1,0x0
    80005fcc:	f2458593          	addi	a1,a1,-220 # 80005eec <_ZL9sleepyRunPv>
    80005fd0:	fc040513          	addi	a0,s0,-64
    80005fd4:	00f50533          	add	a0,a0,a5
    80005fd8:	ffffb097          	auipc	ra,0xffffb
    80005fdc:	320080e7          	jalr	800(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005fe0:	0014849b          	addiw	s1,s1,1
    80005fe4:	00100793          	li	a5,1
    80005fe8:	fc97dae3          	bge	a5,s1,80005fbc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005fec:	00006797          	auipc	a5,0x6
    80005ff0:	b047c783          	lbu	a5,-1276(a5) # 8000baf0 <_ZL8finished>
    80005ff4:	fe078ce3          	beqz	a5,80005fec <_Z12testSleepingv+0x5c>
    80005ff8:	00006797          	auipc	a5,0x6
    80005ffc:	af97c783          	lbu	a5,-1287(a5) # 8000baf1 <_ZL8finished+0x1>
    80006000:	fe0786e3          	beqz	a5,80005fec <_Z12testSleepingv+0x5c>
}
    80006004:	03813083          	ld	ra,56(sp)
    80006008:	03013403          	ld	s0,48(sp)
    8000600c:	02813483          	ld	s1,40(sp)
    80006010:	04010113          	addi	sp,sp,64
    80006014:	00008067          	ret

0000000080006018 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006018:	fe010113          	addi	sp,sp,-32
    8000601c:	00113c23          	sd	ra,24(sp)
    80006020:	00813823          	sd	s0,16(sp)
    80006024:	00913423          	sd	s1,8(sp)
    80006028:	01213023          	sd	s2,0(sp)
    8000602c:	02010413          	addi	s0,sp,32
    80006030:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006034:	00100793          	li	a5,1
    80006038:	02a7f863          	bgeu	a5,a0,80006068 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000603c:	00a00793          	li	a5,10
    80006040:	02f577b3          	remu	a5,a0,a5
    80006044:	02078e63          	beqz	a5,80006080 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006048:	fff48513          	addi	a0,s1,-1
    8000604c:	00000097          	auipc	ra,0x0
    80006050:	fcc080e7          	jalr	-52(ra) # 80006018 <_ZL9fibonaccim>
    80006054:	00050913          	mv	s2,a0
    80006058:	ffe48513          	addi	a0,s1,-2
    8000605c:	00000097          	auipc	ra,0x0
    80006060:	fbc080e7          	jalr	-68(ra) # 80006018 <_ZL9fibonaccim>
    80006064:	00a90533          	add	a0,s2,a0
}
    80006068:	01813083          	ld	ra,24(sp)
    8000606c:	01013403          	ld	s0,16(sp)
    80006070:	00813483          	ld	s1,8(sp)
    80006074:	00013903          	ld	s2,0(sp)
    80006078:	02010113          	addi	sp,sp,32
    8000607c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006080:	ffffb097          	auipc	ra,0xffffb
    80006084:	34c080e7          	jalr	844(ra) # 800013cc <_Z15thread_dispatchv>
    80006088:	fc1ff06f          	j	80006048 <_ZL9fibonaccim+0x30>

000000008000608c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000608c:	fe010113          	addi	sp,sp,-32
    80006090:	00113c23          	sd	ra,24(sp)
    80006094:	00813823          	sd	s0,16(sp)
    80006098:	00913423          	sd	s1,8(sp)
    8000609c:	01213023          	sd	s2,0(sp)
    800060a0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800060a4:	00a00493          	li	s1,10
    800060a8:	0400006f          	j	800060e8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800060ac:	00003517          	auipc	a0,0x3
    800060b0:	1cc50513          	addi	a0,a0,460 # 80009278 <CONSOLE_STATUS+0x268>
    800060b4:	fffff097          	auipc	ra,0xfffff
    800060b8:	698080e7          	jalr	1688(ra) # 8000574c <_Z11printStringPKc>
    800060bc:	00000613          	li	a2,0
    800060c0:	00a00593          	li	a1,10
    800060c4:	00048513          	mv	a0,s1
    800060c8:	00000097          	auipc	ra,0x0
    800060cc:	834080e7          	jalr	-1996(ra) # 800058fc <_Z8printIntiii>
    800060d0:	00003517          	auipc	a0,0x3
    800060d4:	09850513          	addi	a0,a0,152 # 80009168 <CONSOLE_STATUS+0x158>
    800060d8:	fffff097          	auipc	ra,0xfffff
    800060dc:	674080e7          	jalr	1652(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800060e0:	0014849b          	addiw	s1,s1,1
    800060e4:	0ff4f493          	andi	s1,s1,255
    800060e8:	00c00793          	li	a5,12
    800060ec:	fc97f0e3          	bgeu	a5,s1,800060ac <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800060f0:	00003517          	auipc	a0,0x3
    800060f4:	19050513          	addi	a0,a0,400 # 80009280 <CONSOLE_STATUS+0x270>
    800060f8:	fffff097          	auipc	ra,0xfffff
    800060fc:	654080e7          	jalr	1620(ra) # 8000574c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006100:	00500313          	li	t1,5
    thread_dispatch();
    80006104:	ffffb097          	auipc	ra,0xffffb
    80006108:	2c8080e7          	jalr	712(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000610c:	01000513          	li	a0,16
    80006110:	00000097          	auipc	ra,0x0
    80006114:	f08080e7          	jalr	-248(ra) # 80006018 <_ZL9fibonaccim>
    80006118:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000611c:	00003517          	auipc	a0,0x3
    80006120:	17450513          	addi	a0,a0,372 # 80009290 <CONSOLE_STATUS+0x280>
    80006124:	fffff097          	auipc	ra,0xfffff
    80006128:	628080e7          	jalr	1576(ra) # 8000574c <_Z11printStringPKc>
    8000612c:	00000613          	li	a2,0
    80006130:	00a00593          	li	a1,10
    80006134:	0009051b          	sext.w	a0,s2
    80006138:	fffff097          	auipc	ra,0xfffff
    8000613c:	7c4080e7          	jalr	1988(ra) # 800058fc <_Z8printIntiii>
    80006140:	00003517          	auipc	a0,0x3
    80006144:	02850513          	addi	a0,a0,40 # 80009168 <CONSOLE_STATUS+0x158>
    80006148:	fffff097          	auipc	ra,0xfffff
    8000614c:	604080e7          	jalr	1540(ra) # 8000574c <_Z11printStringPKc>
    80006150:	0400006f          	j	80006190 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006154:	00003517          	auipc	a0,0x3
    80006158:	12450513          	addi	a0,a0,292 # 80009278 <CONSOLE_STATUS+0x268>
    8000615c:	fffff097          	auipc	ra,0xfffff
    80006160:	5f0080e7          	jalr	1520(ra) # 8000574c <_Z11printStringPKc>
    80006164:	00000613          	li	a2,0
    80006168:	00a00593          	li	a1,10
    8000616c:	00048513          	mv	a0,s1
    80006170:	fffff097          	auipc	ra,0xfffff
    80006174:	78c080e7          	jalr	1932(ra) # 800058fc <_Z8printIntiii>
    80006178:	00003517          	auipc	a0,0x3
    8000617c:	ff050513          	addi	a0,a0,-16 # 80009168 <CONSOLE_STATUS+0x158>
    80006180:	fffff097          	auipc	ra,0xfffff
    80006184:	5cc080e7          	jalr	1484(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006188:	0014849b          	addiw	s1,s1,1
    8000618c:	0ff4f493          	andi	s1,s1,255
    80006190:	00f00793          	li	a5,15
    80006194:	fc97f0e3          	bgeu	a5,s1,80006154 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006198:	00003517          	auipc	a0,0x3
    8000619c:	10850513          	addi	a0,a0,264 # 800092a0 <CONSOLE_STATUS+0x290>
    800061a0:	fffff097          	auipc	ra,0xfffff
    800061a4:	5ac080e7          	jalr	1452(ra) # 8000574c <_Z11printStringPKc>
    finishedD = true;
    800061a8:	00100793          	li	a5,1
    800061ac:	00006717          	auipc	a4,0x6
    800061b0:	94f70323          	sb	a5,-1722(a4) # 8000baf2 <_ZL9finishedD>
    thread_dispatch();
    800061b4:	ffffb097          	auipc	ra,0xffffb
    800061b8:	218080e7          	jalr	536(ra) # 800013cc <_Z15thread_dispatchv>
}
    800061bc:	01813083          	ld	ra,24(sp)
    800061c0:	01013403          	ld	s0,16(sp)
    800061c4:	00813483          	ld	s1,8(sp)
    800061c8:	00013903          	ld	s2,0(sp)
    800061cc:	02010113          	addi	sp,sp,32
    800061d0:	00008067          	ret

00000000800061d4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800061d4:	fe010113          	addi	sp,sp,-32
    800061d8:	00113c23          	sd	ra,24(sp)
    800061dc:	00813823          	sd	s0,16(sp)
    800061e0:	00913423          	sd	s1,8(sp)
    800061e4:	01213023          	sd	s2,0(sp)
    800061e8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800061ec:	00000493          	li	s1,0
    800061f0:	0400006f          	j	80006230 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800061f4:	00003517          	auipc	a0,0x3
    800061f8:	05450513          	addi	a0,a0,84 # 80009248 <CONSOLE_STATUS+0x238>
    800061fc:	fffff097          	auipc	ra,0xfffff
    80006200:	550080e7          	jalr	1360(ra) # 8000574c <_Z11printStringPKc>
    80006204:	00000613          	li	a2,0
    80006208:	00a00593          	li	a1,10
    8000620c:	00048513          	mv	a0,s1
    80006210:	fffff097          	auipc	ra,0xfffff
    80006214:	6ec080e7          	jalr	1772(ra) # 800058fc <_Z8printIntiii>
    80006218:	00003517          	auipc	a0,0x3
    8000621c:	f5050513          	addi	a0,a0,-176 # 80009168 <CONSOLE_STATUS+0x158>
    80006220:	fffff097          	auipc	ra,0xfffff
    80006224:	52c080e7          	jalr	1324(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006228:	0014849b          	addiw	s1,s1,1
    8000622c:	0ff4f493          	andi	s1,s1,255
    80006230:	00200793          	li	a5,2
    80006234:	fc97f0e3          	bgeu	a5,s1,800061f4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006238:	00003517          	auipc	a0,0x3
    8000623c:	01850513          	addi	a0,a0,24 # 80009250 <CONSOLE_STATUS+0x240>
    80006240:	fffff097          	auipc	ra,0xfffff
    80006244:	50c080e7          	jalr	1292(ra) # 8000574c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006248:	00700313          	li	t1,7
    thread_dispatch();
    8000624c:	ffffb097          	auipc	ra,0xffffb
    80006250:	180080e7          	jalr	384(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006254:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006258:	00003517          	auipc	a0,0x3
    8000625c:	00850513          	addi	a0,a0,8 # 80009260 <CONSOLE_STATUS+0x250>
    80006260:	fffff097          	auipc	ra,0xfffff
    80006264:	4ec080e7          	jalr	1260(ra) # 8000574c <_Z11printStringPKc>
    80006268:	00000613          	li	a2,0
    8000626c:	00a00593          	li	a1,10
    80006270:	0009051b          	sext.w	a0,s2
    80006274:	fffff097          	auipc	ra,0xfffff
    80006278:	688080e7          	jalr	1672(ra) # 800058fc <_Z8printIntiii>
    8000627c:	00003517          	auipc	a0,0x3
    80006280:	eec50513          	addi	a0,a0,-276 # 80009168 <CONSOLE_STATUS+0x158>
    80006284:	fffff097          	auipc	ra,0xfffff
    80006288:	4c8080e7          	jalr	1224(ra) # 8000574c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000628c:	00c00513          	li	a0,12
    80006290:	00000097          	auipc	ra,0x0
    80006294:	d88080e7          	jalr	-632(ra) # 80006018 <_ZL9fibonaccim>
    80006298:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000629c:	00003517          	auipc	a0,0x3
    800062a0:	fcc50513          	addi	a0,a0,-52 # 80009268 <CONSOLE_STATUS+0x258>
    800062a4:	fffff097          	auipc	ra,0xfffff
    800062a8:	4a8080e7          	jalr	1192(ra) # 8000574c <_Z11printStringPKc>
    800062ac:	00000613          	li	a2,0
    800062b0:	00a00593          	li	a1,10
    800062b4:	0009051b          	sext.w	a0,s2
    800062b8:	fffff097          	auipc	ra,0xfffff
    800062bc:	644080e7          	jalr	1604(ra) # 800058fc <_Z8printIntiii>
    800062c0:	00003517          	auipc	a0,0x3
    800062c4:	ea850513          	addi	a0,a0,-344 # 80009168 <CONSOLE_STATUS+0x158>
    800062c8:	fffff097          	auipc	ra,0xfffff
    800062cc:	484080e7          	jalr	1156(ra) # 8000574c <_Z11printStringPKc>
    800062d0:	0400006f          	j	80006310 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800062d4:	00003517          	auipc	a0,0x3
    800062d8:	f7450513          	addi	a0,a0,-140 # 80009248 <CONSOLE_STATUS+0x238>
    800062dc:	fffff097          	auipc	ra,0xfffff
    800062e0:	470080e7          	jalr	1136(ra) # 8000574c <_Z11printStringPKc>
    800062e4:	00000613          	li	a2,0
    800062e8:	00a00593          	li	a1,10
    800062ec:	00048513          	mv	a0,s1
    800062f0:	fffff097          	auipc	ra,0xfffff
    800062f4:	60c080e7          	jalr	1548(ra) # 800058fc <_Z8printIntiii>
    800062f8:	00003517          	auipc	a0,0x3
    800062fc:	e7050513          	addi	a0,a0,-400 # 80009168 <CONSOLE_STATUS+0x158>
    80006300:	fffff097          	auipc	ra,0xfffff
    80006304:	44c080e7          	jalr	1100(ra) # 8000574c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006308:	0014849b          	addiw	s1,s1,1
    8000630c:	0ff4f493          	andi	s1,s1,255
    80006310:	00500793          	li	a5,5
    80006314:	fc97f0e3          	bgeu	a5,s1,800062d4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006318:	00003517          	auipc	a0,0x3
    8000631c:	f0850513          	addi	a0,a0,-248 # 80009220 <CONSOLE_STATUS+0x210>
    80006320:	fffff097          	auipc	ra,0xfffff
    80006324:	42c080e7          	jalr	1068(ra) # 8000574c <_Z11printStringPKc>
    finishedC = true;
    80006328:	00100793          	li	a5,1
    8000632c:	00005717          	auipc	a4,0x5
    80006330:	7cf703a3          	sb	a5,1991(a4) # 8000baf3 <_ZL9finishedC>
    thread_dispatch();
    80006334:	ffffb097          	auipc	ra,0xffffb
    80006338:	098080e7          	jalr	152(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000633c:	01813083          	ld	ra,24(sp)
    80006340:	01013403          	ld	s0,16(sp)
    80006344:	00813483          	ld	s1,8(sp)
    80006348:	00013903          	ld	s2,0(sp)
    8000634c:	02010113          	addi	sp,sp,32
    80006350:	00008067          	ret

0000000080006354 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006354:	fe010113          	addi	sp,sp,-32
    80006358:	00113c23          	sd	ra,24(sp)
    8000635c:	00813823          	sd	s0,16(sp)
    80006360:	00913423          	sd	s1,8(sp)
    80006364:	01213023          	sd	s2,0(sp)
    80006368:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000636c:	00000913          	li	s2,0
    80006370:	0400006f          	j	800063b0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006374:	ffffb097          	auipc	ra,0xffffb
    80006378:	058080e7          	jalr	88(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000637c:	00148493          	addi	s1,s1,1
    80006380:	000027b7          	lui	a5,0x2
    80006384:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006388:	0097ee63          	bltu	a5,s1,800063a4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000638c:	00000713          	li	a4,0
    80006390:	000077b7          	lui	a5,0x7
    80006394:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006398:	fce7eee3          	bltu	a5,a4,80006374 <_ZL11workerBodyBPv+0x20>
    8000639c:	00170713          	addi	a4,a4,1
    800063a0:	ff1ff06f          	j	80006390 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800063a4:	00a00793          	li	a5,10
    800063a8:	04f90663          	beq	s2,a5,800063f4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800063ac:	00190913          	addi	s2,s2,1
    800063b0:	00f00793          	li	a5,15
    800063b4:	0527e463          	bltu	a5,s2,800063fc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800063b8:	00003517          	auipc	a0,0x3
    800063bc:	e7850513          	addi	a0,a0,-392 # 80009230 <CONSOLE_STATUS+0x220>
    800063c0:	fffff097          	auipc	ra,0xfffff
    800063c4:	38c080e7          	jalr	908(ra) # 8000574c <_Z11printStringPKc>
    800063c8:	00000613          	li	a2,0
    800063cc:	00a00593          	li	a1,10
    800063d0:	0009051b          	sext.w	a0,s2
    800063d4:	fffff097          	auipc	ra,0xfffff
    800063d8:	528080e7          	jalr	1320(ra) # 800058fc <_Z8printIntiii>
    800063dc:	00003517          	auipc	a0,0x3
    800063e0:	d8c50513          	addi	a0,a0,-628 # 80009168 <CONSOLE_STATUS+0x158>
    800063e4:	fffff097          	auipc	ra,0xfffff
    800063e8:	368080e7          	jalr	872(ra) # 8000574c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800063ec:	00000493          	li	s1,0
    800063f0:	f91ff06f          	j	80006380 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800063f4:	14102ff3          	csrr	t6,sepc
    800063f8:	fb5ff06f          	j	800063ac <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800063fc:	00003517          	auipc	a0,0x3
    80006400:	e3c50513          	addi	a0,a0,-452 # 80009238 <CONSOLE_STATUS+0x228>
    80006404:	fffff097          	auipc	ra,0xfffff
    80006408:	348080e7          	jalr	840(ra) # 8000574c <_Z11printStringPKc>
    finishedB = true;
    8000640c:	00100793          	li	a5,1
    80006410:	00005717          	auipc	a4,0x5
    80006414:	6ef70223          	sb	a5,1764(a4) # 8000baf4 <_ZL9finishedB>
    thread_dispatch();
    80006418:	ffffb097          	auipc	ra,0xffffb
    8000641c:	fb4080e7          	jalr	-76(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006420:	01813083          	ld	ra,24(sp)
    80006424:	01013403          	ld	s0,16(sp)
    80006428:	00813483          	ld	s1,8(sp)
    8000642c:	00013903          	ld	s2,0(sp)
    80006430:	02010113          	addi	sp,sp,32
    80006434:	00008067          	ret

0000000080006438 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006438:	fe010113          	addi	sp,sp,-32
    8000643c:	00113c23          	sd	ra,24(sp)
    80006440:	00813823          	sd	s0,16(sp)
    80006444:	00913423          	sd	s1,8(sp)
    80006448:	01213023          	sd	s2,0(sp)
    8000644c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006450:	00000913          	li	s2,0
    80006454:	0380006f          	j	8000648c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006458:	ffffb097          	auipc	ra,0xffffb
    8000645c:	f74080e7          	jalr	-140(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006460:	00148493          	addi	s1,s1,1
    80006464:	000027b7          	lui	a5,0x2
    80006468:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000646c:	0097ee63          	bltu	a5,s1,80006488 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006470:	00000713          	li	a4,0
    80006474:	000077b7          	lui	a5,0x7
    80006478:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000647c:	fce7eee3          	bltu	a5,a4,80006458 <_ZL11workerBodyAPv+0x20>
    80006480:	00170713          	addi	a4,a4,1
    80006484:	ff1ff06f          	j	80006474 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006488:	00190913          	addi	s2,s2,1
    8000648c:	00900793          	li	a5,9
    80006490:	0527e063          	bltu	a5,s2,800064d0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006494:	00003517          	auipc	a0,0x3
    80006498:	d8450513          	addi	a0,a0,-636 # 80009218 <CONSOLE_STATUS+0x208>
    8000649c:	fffff097          	auipc	ra,0xfffff
    800064a0:	2b0080e7          	jalr	688(ra) # 8000574c <_Z11printStringPKc>
    800064a4:	00000613          	li	a2,0
    800064a8:	00a00593          	li	a1,10
    800064ac:	0009051b          	sext.w	a0,s2
    800064b0:	fffff097          	auipc	ra,0xfffff
    800064b4:	44c080e7          	jalr	1100(ra) # 800058fc <_Z8printIntiii>
    800064b8:	00003517          	auipc	a0,0x3
    800064bc:	cb050513          	addi	a0,a0,-848 # 80009168 <CONSOLE_STATUS+0x158>
    800064c0:	fffff097          	auipc	ra,0xfffff
    800064c4:	28c080e7          	jalr	652(ra) # 8000574c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800064c8:	00000493          	li	s1,0
    800064cc:	f99ff06f          	j	80006464 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800064d0:	00003517          	auipc	a0,0x3
    800064d4:	d5050513          	addi	a0,a0,-688 # 80009220 <CONSOLE_STATUS+0x210>
    800064d8:	fffff097          	auipc	ra,0xfffff
    800064dc:	274080e7          	jalr	628(ra) # 8000574c <_Z11printStringPKc>
    finishedA = true;
    800064e0:	00100793          	li	a5,1
    800064e4:	00005717          	auipc	a4,0x5
    800064e8:	60f708a3          	sb	a5,1553(a4) # 8000baf5 <_ZL9finishedA>
}
    800064ec:	01813083          	ld	ra,24(sp)
    800064f0:	01013403          	ld	s0,16(sp)
    800064f4:	00813483          	ld	s1,8(sp)
    800064f8:	00013903          	ld	s2,0(sp)
    800064fc:	02010113          	addi	sp,sp,32
    80006500:	00008067          	ret

0000000080006504 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006504:	fd010113          	addi	sp,sp,-48
    80006508:	02113423          	sd	ra,40(sp)
    8000650c:	02813023          	sd	s0,32(sp)
    80006510:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006514:	00000613          	li	a2,0
    80006518:	00000597          	auipc	a1,0x0
    8000651c:	f2058593          	addi	a1,a1,-224 # 80006438 <_ZL11workerBodyAPv>
    80006520:	fd040513          	addi	a0,s0,-48
    80006524:	ffffb097          	auipc	ra,0xffffb
    80006528:	dd4080e7          	jalr	-556(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000652c:	00003517          	auipc	a0,0x3
    80006530:	d8450513          	addi	a0,a0,-636 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006534:	fffff097          	auipc	ra,0xfffff
    80006538:	218080e7          	jalr	536(ra) # 8000574c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000653c:	00000613          	li	a2,0
    80006540:	00000597          	auipc	a1,0x0
    80006544:	e1458593          	addi	a1,a1,-492 # 80006354 <_ZL11workerBodyBPv>
    80006548:	fd840513          	addi	a0,s0,-40
    8000654c:	ffffb097          	auipc	ra,0xffffb
    80006550:	dac080e7          	jalr	-596(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006554:	00003517          	auipc	a0,0x3
    80006558:	d7450513          	addi	a0,a0,-652 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000655c:	fffff097          	auipc	ra,0xfffff
    80006560:	1f0080e7          	jalr	496(ra) # 8000574c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006564:	00000613          	li	a2,0
    80006568:	00000597          	auipc	a1,0x0
    8000656c:	c6c58593          	addi	a1,a1,-916 # 800061d4 <_ZL11workerBodyCPv>
    80006570:	fe040513          	addi	a0,s0,-32
    80006574:	ffffb097          	auipc	ra,0xffffb
    80006578:	d84080e7          	jalr	-636(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000657c:	00003517          	auipc	a0,0x3
    80006580:	d6450513          	addi	a0,a0,-668 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006584:	fffff097          	auipc	ra,0xfffff
    80006588:	1c8080e7          	jalr	456(ra) # 8000574c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000658c:	00000613          	li	a2,0
    80006590:	00000597          	auipc	a1,0x0
    80006594:	afc58593          	addi	a1,a1,-1284 # 8000608c <_ZL11workerBodyDPv>
    80006598:	fe840513          	addi	a0,s0,-24
    8000659c:	ffffb097          	auipc	ra,0xffffb
    800065a0:	d5c080e7          	jalr	-676(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800065a4:	00003517          	auipc	a0,0x3
    800065a8:	d5450513          	addi	a0,a0,-684 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800065ac:	fffff097          	auipc	ra,0xfffff
    800065b0:	1a0080e7          	jalr	416(ra) # 8000574c <_Z11printStringPKc>
    800065b4:	00c0006f          	j	800065c0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800065b8:	ffffb097          	auipc	ra,0xffffb
    800065bc:	e14080e7          	jalr	-492(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800065c0:	00005797          	auipc	a5,0x5
    800065c4:	5357c783          	lbu	a5,1333(a5) # 8000baf5 <_ZL9finishedA>
    800065c8:	fe0788e3          	beqz	a5,800065b8 <_Z16System_Mode_testv+0xb4>
    800065cc:	00005797          	auipc	a5,0x5
    800065d0:	5287c783          	lbu	a5,1320(a5) # 8000baf4 <_ZL9finishedB>
    800065d4:	fe0782e3          	beqz	a5,800065b8 <_Z16System_Mode_testv+0xb4>
    800065d8:	00005797          	auipc	a5,0x5
    800065dc:	51b7c783          	lbu	a5,1307(a5) # 8000baf3 <_ZL9finishedC>
    800065e0:	fc078ce3          	beqz	a5,800065b8 <_Z16System_Mode_testv+0xb4>
    800065e4:	00005797          	auipc	a5,0x5
    800065e8:	50e7c783          	lbu	a5,1294(a5) # 8000baf2 <_ZL9finishedD>
    800065ec:	fc0786e3          	beqz	a5,800065b8 <_Z16System_Mode_testv+0xb4>
    }

}
    800065f0:	02813083          	ld	ra,40(sp)
    800065f4:	02013403          	ld	s0,32(sp)
    800065f8:	03010113          	addi	sp,sp,48
    800065fc:	00008067          	ret

0000000080006600 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006600:	fe010113          	addi	sp,sp,-32
    80006604:	00113c23          	sd	ra,24(sp)
    80006608:	00813823          	sd	s0,16(sp)
    8000660c:	00913423          	sd	s1,8(sp)
    80006610:	01213023          	sd	s2,0(sp)
    80006614:	02010413          	addi	s0,sp,32
    80006618:	00050493          	mv	s1,a0
    8000661c:	00058913          	mv	s2,a1
    80006620:	0015879b          	addiw	a5,a1,1
    80006624:	0007851b          	sext.w	a0,a5
    80006628:	00f4a023          	sw	a5,0(s1)
    8000662c:	0004a823          	sw	zero,16(s1)
    80006630:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006634:	00251513          	slli	a0,a0,0x2
    80006638:	ffffb097          	auipc	ra,0xffffb
    8000663c:	c20080e7          	jalr	-992(ra) # 80001258 <_Z9mem_allocm>
    80006640:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006644:	00000593          	li	a1,0
    80006648:	02048513          	addi	a0,s1,32
    8000664c:	ffffb097          	auipc	ra,0xffffb
    80006650:	dbc080e7          	jalr	-580(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006654:	00090593          	mv	a1,s2
    80006658:	01848513          	addi	a0,s1,24
    8000665c:	ffffb097          	auipc	ra,0xffffb
    80006660:	dac080e7          	jalr	-596(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006664:	00100593          	li	a1,1
    80006668:	02848513          	addi	a0,s1,40
    8000666c:	ffffb097          	auipc	ra,0xffffb
    80006670:	d9c080e7          	jalr	-612(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006674:	00100593          	li	a1,1
    80006678:	03048513          	addi	a0,s1,48
    8000667c:	ffffb097          	auipc	ra,0xffffb
    80006680:	d8c080e7          	jalr	-628(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80006684:	01813083          	ld	ra,24(sp)
    80006688:	01013403          	ld	s0,16(sp)
    8000668c:	00813483          	ld	s1,8(sp)
    80006690:	00013903          	ld	s2,0(sp)
    80006694:	02010113          	addi	sp,sp,32
    80006698:	00008067          	ret

000000008000669c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000669c:	fe010113          	addi	sp,sp,-32
    800066a0:	00113c23          	sd	ra,24(sp)
    800066a4:	00813823          	sd	s0,16(sp)
    800066a8:	00913423          	sd	s1,8(sp)
    800066ac:	01213023          	sd	s2,0(sp)
    800066b0:	02010413          	addi	s0,sp,32
    800066b4:	00050493          	mv	s1,a0
    800066b8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800066bc:	01853503          	ld	a0,24(a0)
    800066c0:	ffffb097          	auipc	ra,0xffffb
    800066c4:	de4080e7          	jalr	-540(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    800066c8:	0304b503          	ld	a0,48(s1)
    800066cc:	ffffb097          	auipc	ra,0xffffb
    800066d0:	dd8080e7          	jalr	-552(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    800066d4:	0084b783          	ld	a5,8(s1)
    800066d8:	0144a703          	lw	a4,20(s1)
    800066dc:	00271713          	slli	a4,a4,0x2
    800066e0:	00e787b3          	add	a5,a5,a4
    800066e4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800066e8:	0144a783          	lw	a5,20(s1)
    800066ec:	0017879b          	addiw	a5,a5,1
    800066f0:	0004a703          	lw	a4,0(s1)
    800066f4:	02e7e7bb          	remw	a5,a5,a4
    800066f8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800066fc:	0304b503          	ld	a0,48(s1)
    80006700:	ffffb097          	auipc	ra,0xffffb
    80006704:	df0080e7          	jalr	-528(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80006708:	0204b503          	ld	a0,32(s1)
    8000670c:	ffffb097          	auipc	ra,0xffffb
    80006710:	de4080e7          	jalr	-540(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80006714:	01813083          	ld	ra,24(sp)
    80006718:	01013403          	ld	s0,16(sp)
    8000671c:	00813483          	ld	s1,8(sp)
    80006720:	00013903          	ld	s2,0(sp)
    80006724:	02010113          	addi	sp,sp,32
    80006728:	00008067          	ret

000000008000672c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000672c:	fe010113          	addi	sp,sp,-32
    80006730:	00113c23          	sd	ra,24(sp)
    80006734:	00813823          	sd	s0,16(sp)
    80006738:	00913423          	sd	s1,8(sp)
    8000673c:	01213023          	sd	s2,0(sp)
    80006740:	02010413          	addi	s0,sp,32
    80006744:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006748:	02053503          	ld	a0,32(a0)
    8000674c:	ffffb097          	auipc	ra,0xffffb
    80006750:	d58080e7          	jalr	-680(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006754:	0284b503          	ld	a0,40(s1)
    80006758:	ffffb097          	auipc	ra,0xffffb
    8000675c:	d4c080e7          	jalr	-692(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006760:	0084b703          	ld	a4,8(s1)
    80006764:	0104a783          	lw	a5,16(s1)
    80006768:	00279693          	slli	a3,a5,0x2
    8000676c:	00d70733          	add	a4,a4,a3
    80006770:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006774:	0017879b          	addiw	a5,a5,1
    80006778:	0004a703          	lw	a4,0(s1)
    8000677c:	02e7e7bb          	remw	a5,a5,a4
    80006780:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006784:	0284b503          	ld	a0,40(s1)
    80006788:	ffffb097          	auipc	ra,0xffffb
    8000678c:	d68080e7          	jalr	-664(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80006790:	0184b503          	ld	a0,24(s1)
    80006794:	ffffb097          	auipc	ra,0xffffb
    80006798:	d5c080e7          	jalr	-676(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    8000679c:	00090513          	mv	a0,s2
    800067a0:	01813083          	ld	ra,24(sp)
    800067a4:	01013403          	ld	s0,16(sp)
    800067a8:	00813483          	ld	s1,8(sp)
    800067ac:	00013903          	ld	s2,0(sp)
    800067b0:	02010113          	addi	sp,sp,32
    800067b4:	00008067          	ret

00000000800067b8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800067b8:	fe010113          	addi	sp,sp,-32
    800067bc:	00113c23          	sd	ra,24(sp)
    800067c0:	00813823          	sd	s0,16(sp)
    800067c4:	00913423          	sd	s1,8(sp)
    800067c8:	01213023          	sd	s2,0(sp)
    800067cc:	02010413          	addi	s0,sp,32
    800067d0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800067d4:	02853503          	ld	a0,40(a0)
    800067d8:	ffffb097          	auipc	ra,0xffffb
    800067dc:	ccc080e7          	jalr	-820(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800067e0:	0304b503          	ld	a0,48(s1)
    800067e4:	ffffb097          	auipc	ra,0xffffb
    800067e8:	cc0080e7          	jalr	-832(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800067ec:	0144a783          	lw	a5,20(s1)
    800067f0:	0104a903          	lw	s2,16(s1)
    800067f4:	0327ce63          	blt	a5,s2,80006830 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800067f8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800067fc:	0304b503          	ld	a0,48(s1)
    80006800:	ffffb097          	auipc	ra,0xffffb
    80006804:	cf0080e7          	jalr	-784(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80006808:	0284b503          	ld	a0,40(s1)
    8000680c:	ffffb097          	auipc	ra,0xffffb
    80006810:	ce4080e7          	jalr	-796(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80006814:	00090513          	mv	a0,s2
    80006818:	01813083          	ld	ra,24(sp)
    8000681c:	01013403          	ld	s0,16(sp)
    80006820:	00813483          	ld	s1,8(sp)
    80006824:	00013903          	ld	s2,0(sp)
    80006828:	02010113          	addi	sp,sp,32
    8000682c:	00008067          	ret
        ret = cap - head + tail;
    80006830:	0004a703          	lw	a4,0(s1)
    80006834:	4127093b          	subw	s2,a4,s2
    80006838:	00f9093b          	addw	s2,s2,a5
    8000683c:	fc1ff06f          	j	800067fc <_ZN6Buffer6getCntEv+0x44>

0000000080006840 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006840:	fe010113          	addi	sp,sp,-32
    80006844:	00113c23          	sd	ra,24(sp)
    80006848:	00813823          	sd	s0,16(sp)
    8000684c:	00913423          	sd	s1,8(sp)
    80006850:	02010413          	addi	s0,sp,32
    80006854:	00050493          	mv	s1,a0
    putc('\n');
    80006858:	00a00513          	li	a0,10
    8000685c:	ffffb097          	auipc	ra,0xffffb
    80006860:	e10080e7          	jalr	-496(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006864:	00003517          	auipc	a0,0x3
    80006868:	aac50513          	addi	a0,a0,-1364 # 80009310 <CONSOLE_STATUS+0x300>
    8000686c:	fffff097          	auipc	ra,0xfffff
    80006870:	ee0080e7          	jalr	-288(ra) # 8000574c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006874:	00048513          	mv	a0,s1
    80006878:	00000097          	auipc	ra,0x0
    8000687c:	f40080e7          	jalr	-192(ra) # 800067b8 <_ZN6Buffer6getCntEv>
    80006880:	02a05c63          	blez	a0,800068b8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006884:	0084b783          	ld	a5,8(s1)
    80006888:	0104a703          	lw	a4,16(s1)
    8000688c:	00271713          	slli	a4,a4,0x2
    80006890:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006894:	0007c503          	lbu	a0,0(a5)
    80006898:	ffffb097          	auipc	ra,0xffffb
    8000689c:	dd4080e7          	jalr	-556(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    800068a0:	0104a783          	lw	a5,16(s1)
    800068a4:	0017879b          	addiw	a5,a5,1
    800068a8:	0004a703          	lw	a4,0(s1)
    800068ac:	02e7e7bb          	remw	a5,a5,a4
    800068b0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800068b4:	fc1ff06f          	j	80006874 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800068b8:	02100513          	li	a0,33
    800068bc:	ffffb097          	auipc	ra,0xffffb
    800068c0:	db0080e7          	jalr	-592(ra) # 8000166c <_Z4putcc>
    putc('\n');
    800068c4:	00a00513          	li	a0,10
    800068c8:	ffffb097          	auipc	ra,0xffffb
    800068cc:	da4080e7          	jalr	-604(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    800068d0:	0084b503          	ld	a0,8(s1)
    800068d4:	ffffb097          	auipc	ra,0xffffb
    800068d8:	9d8080e7          	jalr	-1576(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    800068dc:	0204b503          	ld	a0,32(s1)
    800068e0:	ffffb097          	auipc	ra,0xffffb
    800068e4:	b78080e7          	jalr	-1160(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800068e8:	0184b503          	ld	a0,24(s1)
    800068ec:	ffffb097          	auipc	ra,0xffffb
    800068f0:	b6c080e7          	jalr	-1172(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800068f4:	0304b503          	ld	a0,48(s1)
    800068f8:	ffffb097          	auipc	ra,0xffffb
    800068fc:	b60080e7          	jalr	-1184(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80006900:	0284b503          	ld	a0,40(s1)
    80006904:	ffffb097          	auipc	ra,0xffffb
    80006908:	b54080e7          	jalr	-1196(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    8000690c:	01813083          	ld	ra,24(sp)
    80006910:	01013403          	ld	s0,16(sp)
    80006914:	00813483          	ld	s1,8(sp)
    80006918:	02010113          	addi	sp,sp,32
    8000691c:	00008067          	ret

0000000080006920 <start>:
    80006920:	ff010113          	addi	sp,sp,-16
    80006924:	00813423          	sd	s0,8(sp)
    80006928:	01010413          	addi	s0,sp,16
    8000692c:	300027f3          	csrr	a5,mstatus
    80006930:	ffffe737          	lui	a4,0xffffe
    80006934:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1a9f>
    80006938:	00e7f7b3          	and	a5,a5,a4
    8000693c:	00001737          	lui	a4,0x1
    80006940:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006944:	00e7e7b3          	or	a5,a5,a4
    80006948:	30079073          	csrw	mstatus,a5
    8000694c:	00000797          	auipc	a5,0x0
    80006950:	16078793          	addi	a5,a5,352 # 80006aac <system_main>
    80006954:	34179073          	csrw	mepc,a5
    80006958:	00000793          	li	a5,0
    8000695c:	18079073          	csrw	satp,a5
    80006960:	000107b7          	lui	a5,0x10
    80006964:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006968:	30279073          	csrw	medeleg,a5
    8000696c:	30379073          	csrw	mideleg,a5
    80006970:	104027f3          	csrr	a5,sie
    80006974:	2227e793          	ori	a5,a5,546
    80006978:	10479073          	csrw	sie,a5
    8000697c:	fff00793          	li	a5,-1
    80006980:	00a7d793          	srli	a5,a5,0xa
    80006984:	3b079073          	csrw	pmpaddr0,a5
    80006988:	00f00793          	li	a5,15
    8000698c:	3a079073          	csrw	pmpcfg0,a5
    80006990:	f14027f3          	csrr	a5,mhartid
    80006994:	0200c737          	lui	a4,0x200c
    80006998:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000699c:	0007869b          	sext.w	a3,a5
    800069a0:	00269713          	slli	a4,a3,0x2
    800069a4:	000f4637          	lui	a2,0xf4
    800069a8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800069ac:	00d70733          	add	a4,a4,a3
    800069b0:	0037979b          	slliw	a5,a5,0x3
    800069b4:	020046b7          	lui	a3,0x2004
    800069b8:	00d787b3          	add	a5,a5,a3
    800069bc:	00c585b3          	add	a1,a1,a2
    800069c0:	00371693          	slli	a3,a4,0x3
    800069c4:	00005717          	auipc	a4,0x5
    800069c8:	13c70713          	addi	a4,a4,316 # 8000bb00 <timer_scratch>
    800069cc:	00b7b023          	sd	a1,0(a5)
    800069d0:	00d70733          	add	a4,a4,a3
    800069d4:	00f73c23          	sd	a5,24(a4)
    800069d8:	02c73023          	sd	a2,32(a4)
    800069dc:	34071073          	csrw	mscratch,a4
    800069e0:	00000797          	auipc	a5,0x0
    800069e4:	6e078793          	addi	a5,a5,1760 # 800070c0 <timervec>
    800069e8:	30579073          	csrw	mtvec,a5
    800069ec:	300027f3          	csrr	a5,mstatus
    800069f0:	0087e793          	ori	a5,a5,8
    800069f4:	30079073          	csrw	mstatus,a5
    800069f8:	304027f3          	csrr	a5,mie
    800069fc:	0807e793          	ori	a5,a5,128
    80006a00:	30479073          	csrw	mie,a5
    80006a04:	f14027f3          	csrr	a5,mhartid
    80006a08:	0007879b          	sext.w	a5,a5
    80006a0c:	00078213          	mv	tp,a5
    80006a10:	30200073          	mret
    80006a14:	00813403          	ld	s0,8(sp)
    80006a18:	01010113          	addi	sp,sp,16
    80006a1c:	00008067          	ret

0000000080006a20 <timerinit>:
    80006a20:	ff010113          	addi	sp,sp,-16
    80006a24:	00813423          	sd	s0,8(sp)
    80006a28:	01010413          	addi	s0,sp,16
    80006a2c:	f14027f3          	csrr	a5,mhartid
    80006a30:	0200c737          	lui	a4,0x200c
    80006a34:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006a38:	0007869b          	sext.w	a3,a5
    80006a3c:	00269713          	slli	a4,a3,0x2
    80006a40:	000f4637          	lui	a2,0xf4
    80006a44:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006a48:	00d70733          	add	a4,a4,a3
    80006a4c:	0037979b          	slliw	a5,a5,0x3
    80006a50:	020046b7          	lui	a3,0x2004
    80006a54:	00d787b3          	add	a5,a5,a3
    80006a58:	00c585b3          	add	a1,a1,a2
    80006a5c:	00371693          	slli	a3,a4,0x3
    80006a60:	00005717          	auipc	a4,0x5
    80006a64:	0a070713          	addi	a4,a4,160 # 8000bb00 <timer_scratch>
    80006a68:	00b7b023          	sd	a1,0(a5)
    80006a6c:	00d70733          	add	a4,a4,a3
    80006a70:	00f73c23          	sd	a5,24(a4)
    80006a74:	02c73023          	sd	a2,32(a4)
    80006a78:	34071073          	csrw	mscratch,a4
    80006a7c:	00000797          	auipc	a5,0x0
    80006a80:	64478793          	addi	a5,a5,1604 # 800070c0 <timervec>
    80006a84:	30579073          	csrw	mtvec,a5
    80006a88:	300027f3          	csrr	a5,mstatus
    80006a8c:	0087e793          	ori	a5,a5,8
    80006a90:	30079073          	csrw	mstatus,a5
    80006a94:	304027f3          	csrr	a5,mie
    80006a98:	0807e793          	ori	a5,a5,128
    80006a9c:	30479073          	csrw	mie,a5
    80006aa0:	00813403          	ld	s0,8(sp)
    80006aa4:	01010113          	addi	sp,sp,16
    80006aa8:	00008067          	ret

0000000080006aac <system_main>:
    80006aac:	fe010113          	addi	sp,sp,-32
    80006ab0:	00813823          	sd	s0,16(sp)
    80006ab4:	00913423          	sd	s1,8(sp)
    80006ab8:	00113c23          	sd	ra,24(sp)
    80006abc:	02010413          	addi	s0,sp,32
    80006ac0:	00000097          	auipc	ra,0x0
    80006ac4:	0c4080e7          	jalr	196(ra) # 80006b84 <cpuid>
    80006ac8:	00005497          	auipc	s1,0x5
    80006acc:	f6848493          	addi	s1,s1,-152 # 8000ba30 <started>
    80006ad0:	02050263          	beqz	a0,80006af4 <system_main+0x48>
    80006ad4:	0004a783          	lw	a5,0(s1)
    80006ad8:	0007879b          	sext.w	a5,a5
    80006adc:	fe078ce3          	beqz	a5,80006ad4 <system_main+0x28>
    80006ae0:	0ff0000f          	fence
    80006ae4:	00003517          	auipc	a0,0x3
    80006ae8:	95c50513          	addi	a0,a0,-1700 # 80009440 <CONSOLE_STATUS+0x430>
    80006aec:	00001097          	auipc	ra,0x1
    80006af0:	a70080e7          	jalr	-1424(ra) # 8000755c <panic>
    80006af4:	00001097          	auipc	ra,0x1
    80006af8:	9c4080e7          	jalr	-1596(ra) # 800074b8 <consoleinit>
    80006afc:	00001097          	auipc	ra,0x1
    80006b00:	150080e7          	jalr	336(ra) # 80007c4c <printfinit>
    80006b04:	00002517          	auipc	a0,0x2
    80006b08:	66450513          	addi	a0,a0,1636 # 80009168 <CONSOLE_STATUS+0x158>
    80006b0c:	00001097          	auipc	ra,0x1
    80006b10:	aac080e7          	jalr	-1364(ra) # 800075b8 <__printf>
    80006b14:	00003517          	auipc	a0,0x3
    80006b18:	8fc50513          	addi	a0,a0,-1796 # 80009410 <CONSOLE_STATUS+0x400>
    80006b1c:	00001097          	auipc	ra,0x1
    80006b20:	a9c080e7          	jalr	-1380(ra) # 800075b8 <__printf>
    80006b24:	00002517          	auipc	a0,0x2
    80006b28:	64450513          	addi	a0,a0,1604 # 80009168 <CONSOLE_STATUS+0x158>
    80006b2c:	00001097          	auipc	ra,0x1
    80006b30:	a8c080e7          	jalr	-1396(ra) # 800075b8 <__printf>
    80006b34:	00001097          	auipc	ra,0x1
    80006b38:	4a4080e7          	jalr	1188(ra) # 80007fd8 <kinit>
    80006b3c:	00000097          	auipc	ra,0x0
    80006b40:	148080e7          	jalr	328(ra) # 80006c84 <trapinit>
    80006b44:	00000097          	auipc	ra,0x0
    80006b48:	16c080e7          	jalr	364(ra) # 80006cb0 <trapinithart>
    80006b4c:	00000097          	auipc	ra,0x0
    80006b50:	5b4080e7          	jalr	1460(ra) # 80007100 <plicinit>
    80006b54:	00000097          	auipc	ra,0x0
    80006b58:	5d4080e7          	jalr	1492(ra) # 80007128 <plicinithart>
    80006b5c:	00000097          	auipc	ra,0x0
    80006b60:	078080e7          	jalr	120(ra) # 80006bd4 <userinit>
    80006b64:	0ff0000f          	fence
    80006b68:	00100793          	li	a5,1
    80006b6c:	00003517          	auipc	a0,0x3
    80006b70:	8bc50513          	addi	a0,a0,-1860 # 80009428 <CONSOLE_STATUS+0x418>
    80006b74:	00f4a023          	sw	a5,0(s1)
    80006b78:	00001097          	auipc	ra,0x1
    80006b7c:	a40080e7          	jalr	-1472(ra) # 800075b8 <__printf>
    80006b80:	0000006f          	j	80006b80 <system_main+0xd4>

0000000080006b84 <cpuid>:
    80006b84:	ff010113          	addi	sp,sp,-16
    80006b88:	00813423          	sd	s0,8(sp)
    80006b8c:	01010413          	addi	s0,sp,16
    80006b90:	00020513          	mv	a0,tp
    80006b94:	00813403          	ld	s0,8(sp)
    80006b98:	0005051b          	sext.w	a0,a0
    80006b9c:	01010113          	addi	sp,sp,16
    80006ba0:	00008067          	ret

0000000080006ba4 <mycpu>:
    80006ba4:	ff010113          	addi	sp,sp,-16
    80006ba8:	00813423          	sd	s0,8(sp)
    80006bac:	01010413          	addi	s0,sp,16
    80006bb0:	00020793          	mv	a5,tp
    80006bb4:	00813403          	ld	s0,8(sp)
    80006bb8:	0007879b          	sext.w	a5,a5
    80006bbc:	00779793          	slli	a5,a5,0x7
    80006bc0:	00006517          	auipc	a0,0x6
    80006bc4:	f7050513          	addi	a0,a0,-144 # 8000cb30 <cpus>
    80006bc8:	00f50533          	add	a0,a0,a5
    80006bcc:	01010113          	addi	sp,sp,16
    80006bd0:	00008067          	ret

0000000080006bd4 <userinit>:
    80006bd4:	ff010113          	addi	sp,sp,-16
    80006bd8:	00813423          	sd	s0,8(sp)
    80006bdc:	01010413          	addi	s0,sp,16
    80006be0:	00813403          	ld	s0,8(sp)
    80006be4:	01010113          	addi	sp,sp,16
    80006be8:	ffffb317          	auipc	t1,0xffffb
    80006bec:	1e030067          	jr	480(t1) # 80001dc8 <main>

0000000080006bf0 <either_copyout>:
    80006bf0:	ff010113          	addi	sp,sp,-16
    80006bf4:	00813023          	sd	s0,0(sp)
    80006bf8:	00113423          	sd	ra,8(sp)
    80006bfc:	01010413          	addi	s0,sp,16
    80006c00:	02051663          	bnez	a0,80006c2c <either_copyout+0x3c>
    80006c04:	00058513          	mv	a0,a1
    80006c08:	00060593          	mv	a1,a2
    80006c0c:	0006861b          	sext.w	a2,a3
    80006c10:	00002097          	auipc	ra,0x2
    80006c14:	c54080e7          	jalr	-940(ra) # 80008864 <__memmove>
    80006c18:	00813083          	ld	ra,8(sp)
    80006c1c:	00013403          	ld	s0,0(sp)
    80006c20:	00000513          	li	a0,0
    80006c24:	01010113          	addi	sp,sp,16
    80006c28:	00008067          	ret
    80006c2c:	00003517          	auipc	a0,0x3
    80006c30:	83c50513          	addi	a0,a0,-1988 # 80009468 <CONSOLE_STATUS+0x458>
    80006c34:	00001097          	auipc	ra,0x1
    80006c38:	928080e7          	jalr	-1752(ra) # 8000755c <panic>

0000000080006c3c <either_copyin>:
    80006c3c:	ff010113          	addi	sp,sp,-16
    80006c40:	00813023          	sd	s0,0(sp)
    80006c44:	00113423          	sd	ra,8(sp)
    80006c48:	01010413          	addi	s0,sp,16
    80006c4c:	02059463          	bnez	a1,80006c74 <either_copyin+0x38>
    80006c50:	00060593          	mv	a1,a2
    80006c54:	0006861b          	sext.w	a2,a3
    80006c58:	00002097          	auipc	ra,0x2
    80006c5c:	c0c080e7          	jalr	-1012(ra) # 80008864 <__memmove>
    80006c60:	00813083          	ld	ra,8(sp)
    80006c64:	00013403          	ld	s0,0(sp)
    80006c68:	00000513          	li	a0,0
    80006c6c:	01010113          	addi	sp,sp,16
    80006c70:	00008067          	ret
    80006c74:	00003517          	auipc	a0,0x3
    80006c78:	81c50513          	addi	a0,a0,-2020 # 80009490 <CONSOLE_STATUS+0x480>
    80006c7c:	00001097          	auipc	ra,0x1
    80006c80:	8e0080e7          	jalr	-1824(ra) # 8000755c <panic>

0000000080006c84 <trapinit>:
    80006c84:	ff010113          	addi	sp,sp,-16
    80006c88:	00813423          	sd	s0,8(sp)
    80006c8c:	01010413          	addi	s0,sp,16
    80006c90:	00813403          	ld	s0,8(sp)
    80006c94:	00003597          	auipc	a1,0x3
    80006c98:	82458593          	addi	a1,a1,-2012 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80006c9c:	00006517          	auipc	a0,0x6
    80006ca0:	f1450513          	addi	a0,a0,-236 # 8000cbb0 <tickslock>
    80006ca4:	01010113          	addi	sp,sp,16
    80006ca8:	00001317          	auipc	t1,0x1
    80006cac:	5c030067          	jr	1472(t1) # 80008268 <initlock>

0000000080006cb0 <trapinithart>:
    80006cb0:	ff010113          	addi	sp,sp,-16
    80006cb4:	00813423          	sd	s0,8(sp)
    80006cb8:	01010413          	addi	s0,sp,16
    80006cbc:	00000797          	auipc	a5,0x0
    80006cc0:	2f478793          	addi	a5,a5,756 # 80006fb0 <kernelvec>
    80006cc4:	10579073          	csrw	stvec,a5
    80006cc8:	00813403          	ld	s0,8(sp)
    80006ccc:	01010113          	addi	sp,sp,16
    80006cd0:	00008067          	ret

0000000080006cd4 <usertrap>:
    80006cd4:	ff010113          	addi	sp,sp,-16
    80006cd8:	00813423          	sd	s0,8(sp)
    80006cdc:	01010413          	addi	s0,sp,16
    80006ce0:	00813403          	ld	s0,8(sp)
    80006ce4:	01010113          	addi	sp,sp,16
    80006ce8:	00008067          	ret

0000000080006cec <usertrapret>:
    80006cec:	ff010113          	addi	sp,sp,-16
    80006cf0:	00813423          	sd	s0,8(sp)
    80006cf4:	01010413          	addi	s0,sp,16
    80006cf8:	00813403          	ld	s0,8(sp)
    80006cfc:	01010113          	addi	sp,sp,16
    80006d00:	00008067          	ret

0000000080006d04 <kerneltrap>:
    80006d04:	fe010113          	addi	sp,sp,-32
    80006d08:	00813823          	sd	s0,16(sp)
    80006d0c:	00113c23          	sd	ra,24(sp)
    80006d10:	00913423          	sd	s1,8(sp)
    80006d14:	02010413          	addi	s0,sp,32
    80006d18:	142025f3          	csrr	a1,scause
    80006d1c:	100027f3          	csrr	a5,sstatus
    80006d20:	0027f793          	andi	a5,a5,2
    80006d24:	10079c63          	bnez	a5,80006e3c <kerneltrap+0x138>
    80006d28:	142027f3          	csrr	a5,scause
    80006d2c:	0207ce63          	bltz	a5,80006d68 <kerneltrap+0x64>
    80006d30:	00002517          	auipc	a0,0x2
    80006d34:	7d050513          	addi	a0,a0,2000 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006d38:	00001097          	auipc	ra,0x1
    80006d3c:	880080e7          	jalr	-1920(ra) # 800075b8 <__printf>
    80006d40:	141025f3          	csrr	a1,sepc
    80006d44:	14302673          	csrr	a2,stval
    80006d48:	00002517          	auipc	a0,0x2
    80006d4c:	7c850513          	addi	a0,a0,1992 # 80009510 <CONSOLE_STATUS+0x500>
    80006d50:	00001097          	auipc	ra,0x1
    80006d54:	868080e7          	jalr	-1944(ra) # 800075b8 <__printf>
    80006d58:	00002517          	auipc	a0,0x2
    80006d5c:	7d050513          	addi	a0,a0,2000 # 80009528 <CONSOLE_STATUS+0x518>
    80006d60:	00000097          	auipc	ra,0x0
    80006d64:	7fc080e7          	jalr	2044(ra) # 8000755c <panic>
    80006d68:	0ff7f713          	andi	a4,a5,255
    80006d6c:	00900693          	li	a3,9
    80006d70:	04d70063          	beq	a4,a3,80006db0 <kerneltrap+0xac>
    80006d74:	fff00713          	li	a4,-1
    80006d78:	03f71713          	slli	a4,a4,0x3f
    80006d7c:	00170713          	addi	a4,a4,1
    80006d80:	fae798e3          	bne	a5,a4,80006d30 <kerneltrap+0x2c>
    80006d84:	00000097          	auipc	ra,0x0
    80006d88:	e00080e7          	jalr	-512(ra) # 80006b84 <cpuid>
    80006d8c:	06050663          	beqz	a0,80006df8 <kerneltrap+0xf4>
    80006d90:	144027f3          	csrr	a5,sip
    80006d94:	ffd7f793          	andi	a5,a5,-3
    80006d98:	14479073          	csrw	sip,a5
    80006d9c:	01813083          	ld	ra,24(sp)
    80006da0:	01013403          	ld	s0,16(sp)
    80006da4:	00813483          	ld	s1,8(sp)
    80006da8:	02010113          	addi	sp,sp,32
    80006dac:	00008067          	ret
    80006db0:	00000097          	auipc	ra,0x0
    80006db4:	3c4080e7          	jalr	964(ra) # 80007174 <plic_claim>
    80006db8:	00a00793          	li	a5,10
    80006dbc:	00050493          	mv	s1,a0
    80006dc0:	06f50863          	beq	a0,a5,80006e30 <kerneltrap+0x12c>
    80006dc4:	fc050ce3          	beqz	a0,80006d9c <kerneltrap+0x98>
    80006dc8:	00050593          	mv	a1,a0
    80006dcc:	00002517          	auipc	a0,0x2
    80006dd0:	71450513          	addi	a0,a0,1812 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006dd4:	00000097          	auipc	ra,0x0
    80006dd8:	7e4080e7          	jalr	2020(ra) # 800075b8 <__printf>
    80006ddc:	01013403          	ld	s0,16(sp)
    80006de0:	01813083          	ld	ra,24(sp)
    80006de4:	00048513          	mv	a0,s1
    80006de8:	00813483          	ld	s1,8(sp)
    80006dec:	02010113          	addi	sp,sp,32
    80006df0:	00000317          	auipc	t1,0x0
    80006df4:	3bc30067          	jr	956(t1) # 800071ac <plic_complete>
    80006df8:	00006517          	auipc	a0,0x6
    80006dfc:	db850513          	addi	a0,a0,-584 # 8000cbb0 <tickslock>
    80006e00:	00001097          	auipc	ra,0x1
    80006e04:	48c080e7          	jalr	1164(ra) # 8000828c <acquire>
    80006e08:	00005717          	auipc	a4,0x5
    80006e0c:	c2c70713          	addi	a4,a4,-980 # 8000ba34 <ticks>
    80006e10:	00072783          	lw	a5,0(a4)
    80006e14:	00006517          	auipc	a0,0x6
    80006e18:	d9c50513          	addi	a0,a0,-612 # 8000cbb0 <tickslock>
    80006e1c:	0017879b          	addiw	a5,a5,1
    80006e20:	00f72023          	sw	a5,0(a4)
    80006e24:	00001097          	auipc	ra,0x1
    80006e28:	534080e7          	jalr	1332(ra) # 80008358 <release>
    80006e2c:	f65ff06f          	j	80006d90 <kerneltrap+0x8c>
    80006e30:	00001097          	auipc	ra,0x1
    80006e34:	090080e7          	jalr	144(ra) # 80007ec0 <uartintr>
    80006e38:	fa5ff06f          	j	80006ddc <kerneltrap+0xd8>
    80006e3c:	00002517          	auipc	a0,0x2
    80006e40:	68450513          	addi	a0,a0,1668 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006e44:	00000097          	auipc	ra,0x0
    80006e48:	718080e7          	jalr	1816(ra) # 8000755c <panic>

0000000080006e4c <clockintr>:
    80006e4c:	fe010113          	addi	sp,sp,-32
    80006e50:	00813823          	sd	s0,16(sp)
    80006e54:	00913423          	sd	s1,8(sp)
    80006e58:	00113c23          	sd	ra,24(sp)
    80006e5c:	02010413          	addi	s0,sp,32
    80006e60:	00006497          	auipc	s1,0x6
    80006e64:	d5048493          	addi	s1,s1,-688 # 8000cbb0 <tickslock>
    80006e68:	00048513          	mv	a0,s1
    80006e6c:	00001097          	auipc	ra,0x1
    80006e70:	420080e7          	jalr	1056(ra) # 8000828c <acquire>
    80006e74:	00005717          	auipc	a4,0x5
    80006e78:	bc070713          	addi	a4,a4,-1088 # 8000ba34 <ticks>
    80006e7c:	00072783          	lw	a5,0(a4)
    80006e80:	01013403          	ld	s0,16(sp)
    80006e84:	01813083          	ld	ra,24(sp)
    80006e88:	00048513          	mv	a0,s1
    80006e8c:	0017879b          	addiw	a5,a5,1
    80006e90:	00813483          	ld	s1,8(sp)
    80006e94:	00f72023          	sw	a5,0(a4)
    80006e98:	02010113          	addi	sp,sp,32
    80006e9c:	00001317          	auipc	t1,0x1
    80006ea0:	4bc30067          	jr	1212(t1) # 80008358 <release>

0000000080006ea4 <devintr>:
    80006ea4:	142027f3          	csrr	a5,scause
    80006ea8:	00000513          	li	a0,0
    80006eac:	0007c463          	bltz	a5,80006eb4 <devintr+0x10>
    80006eb0:	00008067          	ret
    80006eb4:	fe010113          	addi	sp,sp,-32
    80006eb8:	00813823          	sd	s0,16(sp)
    80006ebc:	00113c23          	sd	ra,24(sp)
    80006ec0:	00913423          	sd	s1,8(sp)
    80006ec4:	02010413          	addi	s0,sp,32
    80006ec8:	0ff7f713          	andi	a4,a5,255
    80006ecc:	00900693          	li	a3,9
    80006ed0:	04d70c63          	beq	a4,a3,80006f28 <devintr+0x84>
    80006ed4:	fff00713          	li	a4,-1
    80006ed8:	03f71713          	slli	a4,a4,0x3f
    80006edc:	00170713          	addi	a4,a4,1
    80006ee0:	00e78c63          	beq	a5,a4,80006ef8 <devintr+0x54>
    80006ee4:	01813083          	ld	ra,24(sp)
    80006ee8:	01013403          	ld	s0,16(sp)
    80006eec:	00813483          	ld	s1,8(sp)
    80006ef0:	02010113          	addi	sp,sp,32
    80006ef4:	00008067          	ret
    80006ef8:	00000097          	auipc	ra,0x0
    80006efc:	c8c080e7          	jalr	-884(ra) # 80006b84 <cpuid>
    80006f00:	06050663          	beqz	a0,80006f6c <devintr+0xc8>
    80006f04:	144027f3          	csrr	a5,sip
    80006f08:	ffd7f793          	andi	a5,a5,-3
    80006f0c:	14479073          	csrw	sip,a5
    80006f10:	01813083          	ld	ra,24(sp)
    80006f14:	01013403          	ld	s0,16(sp)
    80006f18:	00813483          	ld	s1,8(sp)
    80006f1c:	00200513          	li	a0,2
    80006f20:	02010113          	addi	sp,sp,32
    80006f24:	00008067          	ret
    80006f28:	00000097          	auipc	ra,0x0
    80006f2c:	24c080e7          	jalr	588(ra) # 80007174 <plic_claim>
    80006f30:	00a00793          	li	a5,10
    80006f34:	00050493          	mv	s1,a0
    80006f38:	06f50663          	beq	a0,a5,80006fa4 <devintr+0x100>
    80006f3c:	00100513          	li	a0,1
    80006f40:	fa0482e3          	beqz	s1,80006ee4 <devintr+0x40>
    80006f44:	00048593          	mv	a1,s1
    80006f48:	00002517          	auipc	a0,0x2
    80006f4c:	59850513          	addi	a0,a0,1432 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006f50:	00000097          	auipc	ra,0x0
    80006f54:	668080e7          	jalr	1640(ra) # 800075b8 <__printf>
    80006f58:	00048513          	mv	a0,s1
    80006f5c:	00000097          	auipc	ra,0x0
    80006f60:	250080e7          	jalr	592(ra) # 800071ac <plic_complete>
    80006f64:	00100513          	li	a0,1
    80006f68:	f7dff06f          	j	80006ee4 <devintr+0x40>
    80006f6c:	00006517          	auipc	a0,0x6
    80006f70:	c4450513          	addi	a0,a0,-956 # 8000cbb0 <tickslock>
    80006f74:	00001097          	auipc	ra,0x1
    80006f78:	318080e7          	jalr	792(ra) # 8000828c <acquire>
    80006f7c:	00005717          	auipc	a4,0x5
    80006f80:	ab870713          	addi	a4,a4,-1352 # 8000ba34 <ticks>
    80006f84:	00072783          	lw	a5,0(a4)
    80006f88:	00006517          	auipc	a0,0x6
    80006f8c:	c2850513          	addi	a0,a0,-984 # 8000cbb0 <tickslock>
    80006f90:	0017879b          	addiw	a5,a5,1
    80006f94:	00f72023          	sw	a5,0(a4)
    80006f98:	00001097          	auipc	ra,0x1
    80006f9c:	3c0080e7          	jalr	960(ra) # 80008358 <release>
    80006fa0:	f65ff06f          	j	80006f04 <devintr+0x60>
    80006fa4:	00001097          	auipc	ra,0x1
    80006fa8:	f1c080e7          	jalr	-228(ra) # 80007ec0 <uartintr>
    80006fac:	fadff06f          	j	80006f58 <devintr+0xb4>

0000000080006fb0 <kernelvec>:
    80006fb0:	f0010113          	addi	sp,sp,-256
    80006fb4:	00113023          	sd	ra,0(sp)
    80006fb8:	00213423          	sd	sp,8(sp)
    80006fbc:	00313823          	sd	gp,16(sp)
    80006fc0:	00413c23          	sd	tp,24(sp)
    80006fc4:	02513023          	sd	t0,32(sp)
    80006fc8:	02613423          	sd	t1,40(sp)
    80006fcc:	02713823          	sd	t2,48(sp)
    80006fd0:	02813c23          	sd	s0,56(sp)
    80006fd4:	04913023          	sd	s1,64(sp)
    80006fd8:	04a13423          	sd	a0,72(sp)
    80006fdc:	04b13823          	sd	a1,80(sp)
    80006fe0:	04c13c23          	sd	a2,88(sp)
    80006fe4:	06d13023          	sd	a3,96(sp)
    80006fe8:	06e13423          	sd	a4,104(sp)
    80006fec:	06f13823          	sd	a5,112(sp)
    80006ff0:	07013c23          	sd	a6,120(sp)
    80006ff4:	09113023          	sd	a7,128(sp)
    80006ff8:	09213423          	sd	s2,136(sp)
    80006ffc:	09313823          	sd	s3,144(sp)
    80007000:	09413c23          	sd	s4,152(sp)
    80007004:	0b513023          	sd	s5,160(sp)
    80007008:	0b613423          	sd	s6,168(sp)
    8000700c:	0b713823          	sd	s7,176(sp)
    80007010:	0b813c23          	sd	s8,184(sp)
    80007014:	0d913023          	sd	s9,192(sp)
    80007018:	0da13423          	sd	s10,200(sp)
    8000701c:	0db13823          	sd	s11,208(sp)
    80007020:	0dc13c23          	sd	t3,216(sp)
    80007024:	0fd13023          	sd	t4,224(sp)
    80007028:	0fe13423          	sd	t5,232(sp)
    8000702c:	0ff13823          	sd	t6,240(sp)
    80007030:	cd5ff0ef          	jal	ra,80006d04 <kerneltrap>
    80007034:	00013083          	ld	ra,0(sp)
    80007038:	00813103          	ld	sp,8(sp)
    8000703c:	01013183          	ld	gp,16(sp)
    80007040:	02013283          	ld	t0,32(sp)
    80007044:	02813303          	ld	t1,40(sp)
    80007048:	03013383          	ld	t2,48(sp)
    8000704c:	03813403          	ld	s0,56(sp)
    80007050:	04013483          	ld	s1,64(sp)
    80007054:	04813503          	ld	a0,72(sp)
    80007058:	05013583          	ld	a1,80(sp)
    8000705c:	05813603          	ld	a2,88(sp)
    80007060:	06013683          	ld	a3,96(sp)
    80007064:	06813703          	ld	a4,104(sp)
    80007068:	07013783          	ld	a5,112(sp)
    8000706c:	07813803          	ld	a6,120(sp)
    80007070:	08013883          	ld	a7,128(sp)
    80007074:	08813903          	ld	s2,136(sp)
    80007078:	09013983          	ld	s3,144(sp)
    8000707c:	09813a03          	ld	s4,152(sp)
    80007080:	0a013a83          	ld	s5,160(sp)
    80007084:	0a813b03          	ld	s6,168(sp)
    80007088:	0b013b83          	ld	s7,176(sp)
    8000708c:	0b813c03          	ld	s8,184(sp)
    80007090:	0c013c83          	ld	s9,192(sp)
    80007094:	0c813d03          	ld	s10,200(sp)
    80007098:	0d013d83          	ld	s11,208(sp)
    8000709c:	0d813e03          	ld	t3,216(sp)
    800070a0:	0e013e83          	ld	t4,224(sp)
    800070a4:	0e813f03          	ld	t5,232(sp)
    800070a8:	0f013f83          	ld	t6,240(sp)
    800070ac:	10010113          	addi	sp,sp,256
    800070b0:	10200073          	sret
    800070b4:	00000013          	nop
    800070b8:	00000013          	nop
    800070bc:	00000013          	nop

00000000800070c0 <timervec>:
    800070c0:	34051573          	csrrw	a0,mscratch,a0
    800070c4:	00b53023          	sd	a1,0(a0)
    800070c8:	00c53423          	sd	a2,8(a0)
    800070cc:	00d53823          	sd	a3,16(a0)
    800070d0:	01853583          	ld	a1,24(a0)
    800070d4:	02053603          	ld	a2,32(a0)
    800070d8:	0005b683          	ld	a3,0(a1)
    800070dc:	00c686b3          	add	a3,a3,a2
    800070e0:	00d5b023          	sd	a3,0(a1)
    800070e4:	00200593          	li	a1,2
    800070e8:	14459073          	csrw	sip,a1
    800070ec:	01053683          	ld	a3,16(a0)
    800070f0:	00853603          	ld	a2,8(a0)
    800070f4:	00053583          	ld	a1,0(a0)
    800070f8:	34051573          	csrrw	a0,mscratch,a0
    800070fc:	30200073          	mret

0000000080007100 <plicinit>:
    80007100:	ff010113          	addi	sp,sp,-16
    80007104:	00813423          	sd	s0,8(sp)
    80007108:	01010413          	addi	s0,sp,16
    8000710c:	00813403          	ld	s0,8(sp)
    80007110:	0c0007b7          	lui	a5,0xc000
    80007114:	00100713          	li	a4,1
    80007118:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000711c:	00e7a223          	sw	a4,4(a5)
    80007120:	01010113          	addi	sp,sp,16
    80007124:	00008067          	ret

0000000080007128 <plicinithart>:
    80007128:	ff010113          	addi	sp,sp,-16
    8000712c:	00813023          	sd	s0,0(sp)
    80007130:	00113423          	sd	ra,8(sp)
    80007134:	01010413          	addi	s0,sp,16
    80007138:	00000097          	auipc	ra,0x0
    8000713c:	a4c080e7          	jalr	-1460(ra) # 80006b84 <cpuid>
    80007140:	0085171b          	slliw	a4,a0,0x8
    80007144:	0c0027b7          	lui	a5,0xc002
    80007148:	00e787b3          	add	a5,a5,a4
    8000714c:	40200713          	li	a4,1026
    80007150:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007154:	00813083          	ld	ra,8(sp)
    80007158:	00013403          	ld	s0,0(sp)
    8000715c:	00d5151b          	slliw	a0,a0,0xd
    80007160:	0c2017b7          	lui	a5,0xc201
    80007164:	00a78533          	add	a0,a5,a0
    80007168:	00052023          	sw	zero,0(a0)
    8000716c:	01010113          	addi	sp,sp,16
    80007170:	00008067          	ret

0000000080007174 <plic_claim>:
    80007174:	ff010113          	addi	sp,sp,-16
    80007178:	00813023          	sd	s0,0(sp)
    8000717c:	00113423          	sd	ra,8(sp)
    80007180:	01010413          	addi	s0,sp,16
    80007184:	00000097          	auipc	ra,0x0
    80007188:	a00080e7          	jalr	-1536(ra) # 80006b84 <cpuid>
    8000718c:	00813083          	ld	ra,8(sp)
    80007190:	00013403          	ld	s0,0(sp)
    80007194:	00d5151b          	slliw	a0,a0,0xd
    80007198:	0c2017b7          	lui	a5,0xc201
    8000719c:	00a78533          	add	a0,a5,a0
    800071a0:	00452503          	lw	a0,4(a0)
    800071a4:	01010113          	addi	sp,sp,16
    800071a8:	00008067          	ret

00000000800071ac <plic_complete>:
    800071ac:	fe010113          	addi	sp,sp,-32
    800071b0:	00813823          	sd	s0,16(sp)
    800071b4:	00913423          	sd	s1,8(sp)
    800071b8:	00113c23          	sd	ra,24(sp)
    800071bc:	02010413          	addi	s0,sp,32
    800071c0:	00050493          	mv	s1,a0
    800071c4:	00000097          	auipc	ra,0x0
    800071c8:	9c0080e7          	jalr	-1600(ra) # 80006b84 <cpuid>
    800071cc:	01813083          	ld	ra,24(sp)
    800071d0:	01013403          	ld	s0,16(sp)
    800071d4:	00d5179b          	slliw	a5,a0,0xd
    800071d8:	0c201737          	lui	a4,0xc201
    800071dc:	00f707b3          	add	a5,a4,a5
    800071e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800071e4:	00813483          	ld	s1,8(sp)
    800071e8:	02010113          	addi	sp,sp,32
    800071ec:	00008067          	ret

00000000800071f0 <consolewrite>:
    800071f0:	fb010113          	addi	sp,sp,-80
    800071f4:	04813023          	sd	s0,64(sp)
    800071f8:	04113423          	sd	ra,72(sp)
    800071fc:	02913c23          	sd	s1,56(sp)
    80007200:	03213823          	sd	s2,48(sp)
    80007204:	03313423          	sd	s3,40(sp)
    80007208:	03413023          	sd	s4,32(sp)
    8000720c:	01513c23          	sd	s5,24(sp)
    80007210:	05010413          	addi	s0,sp,80
    80007214:	06c05c63          	blez	a2,8000728c <consolewrite+0x9c>
    80007218:	00060993          	mv	s3,a2
    8000721c:	00050a13          	mv	s4,a0
    80007220:	00058493          	mv	s1,a1
    80007224:	00000913          	li	s2,0
    80007228:	fff00a93          	li	s5,-1
    8000722c:	01c0006f          	j	80007248 <consolewrite+0x58>
    80007230:	fbf44503          	lbu	a0,-65(s0)
    80007234:	0019091b          	addiw	s2,s2,1
    80007238:	00148493          	addi	s1,s1,1
    8000723c:	00001097          	auipc	ra,0x1
    80007240:	a9c080e7          	jalr	-1380(ra) # 80007cd8 <uartputc>
    80007244:	03298063          	beq	s3,s2,80007264 <consolewrite+0x74>
    80007248:	00048613          	mv	a2,s1
    8000724c:	00100693          	li	a3,1
    80007250:	000a0593          	mv	a1,s4
    80007254:	fbf40513          	addi	a0,s0,-65
    80007258:	00000097          	auipc	ra,0x0
    8000725c:	9e4080e7          	jalr	-1564(ra) # 80006c3c <either_copyin>
    80007260:	fd5518e3          	bne	a0,s5,80007230 <consolewrite+0x40>
    80007264:	04813083          	ld	ra,72(sp)
    80007268:	04013403          	ld	s0,64(sp)
    8000726c:	03813483          	ld	s1,56(sp)
    80007270:	02813983          	ld	s3,40(sp)
    80007274:	02013a03          	ld	s4,32(sp)
    80007278:	01813a83          	ld	s5,24(sp)
    8000727c:	00090513          	mv	a0,s2
    80007280:	03013903          	ld	s2,48(sp)
    80007284:	05010113          	addi	sp,sp,80
    80007288:	00008067          	ret
    8000728c:	00000913          	li	s2,0
    80007290:	fd5ff06f          	j	80007264 <consolewrite+0x74>

0000000080007294 <consoleread>:
    80007294:	f9010113          	addi	sp,sp,-112
    80007298:	06813023          	sd	s0,96(sp)
    8000729c:	04913c23          	sd	s1,88(sp)
    800072a0:	05213823          	sd	s2,80(sp)
    800072a4:	05313423          	sd	s3,72(sp)
    800072a8:	05413023          	sd	s4,64(sp)
    800072ac:	03513c23          	sd	s5,56(sp)
    800072b0:	03613823          	sd	s6,48(sp)
    800072b4:	03713423          	sd	s7,40(sp)
    800072b8:	03813023          	sd	s8,32(sp)
    800072bc:	06113423          	sd	ra,104(sp)
    800072c0:	01913c23          	sd	s9,24(sp)
    800072c4:	07010413          	addi	s0,sp,112
    800072c8:	00060b93          	mv	s7,a2
    800072cc:	00050913          	mv	s2,a0
    800072d0:	00058c13          	mv	s8,a1
    800072d4:	00060b1b          	sext.w	s6,a2
    800072d8:	00006497          	auipc	s1,0x6
    800072dc:	90048493          	addi	s1,s1,-1792 # 8000cbd8 <cons>
    800072e0:	00400993          	li	s3,4
    800072e4:	fff00a13          	li	s4,-1
    800072e8:	00a00a93          	li	s5,10
    800072ec:	05705e63          	blez	s7,80007348 <consoleread+0xb4>
    800072f0:	09c4a703          	lw	a4,156(s1)
    800072f4:	0984a783          	lw	a5,152(s1)
    800072f8:	0007071b          	sext.w	a4,a4
    800072fc:	08e78463          	beq	a5,a4,80007384 <consoleread+0xf0>
    80007300:	07f7f713          	andi	a4,a5,127
    80007304:	00e48733          	add	a4,s1,a4
    80007308:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000730c:	0017869b          	addiw	a3,a5,1
    80007310:	08d4ac23          	sw	a3,152(s1)
    80007314:	00070c9b          	sext.w	s9,a4
    80007318:	0b370663          	beq	a4,s3,800073c4 <consoleread+0x130>
    8000731c:	00100693          	li	a3,1
    80007320:	f9f40613          	addi	a2,s0,-97
    80007324:	000c0593          	mv	a1,s8
    80007328:	00090513          	mv	a0,s2
    8000732c:	f8e40fa3          	sb	a4,-97(s0)
    80007330:	00000097          	auipc	ra,0x0
    80007334:	8c0080e7          	jalr	-1856(ra) # 80006bf0 <either_copyout>
    80007338:	01450863          	beq	a0,s4,80007348 <consoleread+0xb4>
    8000733c:	001c0c13          	addi	s8,s8,1
    80007340:	fffb8b9b          	addiw	s7,s7,-1
    80007344:	fb5c94e3          	bne	s9,s5,800072ec <consoleread+0x58>
    80007348:	000b851b          	sext.w	a0,s7
    8000734c:	06813083          	ld	ra,104(sp)
    80007350:	06013403          	ld	s0,96(sp)
    80007354:	05813483          	ld	s1,88(sp)
    80007358:	05013903          	ld	s2,80(sp)
    8000735c:	04813983          	ld	s3,72(sp)
    80007360:	04013a03          	ld	s4,64(sp)
    80007364:	03813a83          	ld	s5,56(sp)
    80007368:	02813b83          	ld	s7,40(sp)
    8000736c:	02013c03          	ld	s8,32(sp)
    80007370:	01813c83          	ld	s9,24(sp)
    80007374:	40ab053b          	subw	a0,s6,a0
    80007378:	03013b03          	ld	s6,48(sp)
    8000737c:	07010113          	addi	sp,sp,112
    80007380:	00008067          	ret
    80007384:	00001097          	auipc	ra,0x1
    80007388:	1d8080e7          	jalr	472(ra) # 8000855c <push_on>
    8000738c:	0984a703          	lw	a4,152(s1)
    80007390:	09c4a783          	lw	a5,156(s1)
    80007394:	0007879b          	sext.w	a5,a5
    80007398:	fef70ce3          	beq	a4,a5,80007390 <consoleread+0xfc>
    8000739c:	00001097          	auipc	ra,0x1
    800073a0:	234080e7          	jalr	564(ra) # 800085d0 <pop_on>
    800073a4:	0984a783          	lw	a5,152(s1)
    800073a8:	07f7f713          	andi	a4,a5,127
    800073ac:	00e48733          	add	a4,s1,a4
    800073b0:	01874703          	lbu	a4,24(a4)
    800073b4:	0017869b          	addiw	a3,a5,1
    800073b8:	08d4ac23          	sw	a3,152(s1)
    800073bc:	00070c9b          	sext.w	s9,a4
    800073c0:	f5371ee3          	bne	a4,s3,8000731c <consoleread+0x88>
    800073c4:	000b851b          	sext.w	a0,s7
    800073c8:	f96bf2e3          	bgeu	s7,s6,8000734c <consoleread+0xb8>
    800073cc:	08f4ac23          	sw	a5,152(s1)
    800073d0:	f7dff06f          	j	8000734c <consoleread+0xb8>

00000000800073d4 <consputc>:
    800073d4:	10000793          	li	a5,256
    800073d8:	00f50663          	beq	a0,a5,800073e4 <consputc+0x10>
    800073dc:	00001317          	auipc	t1,0x1
    800073e0:	9f430067          	jr	-1548(t1) # 80007dd0 <uartputc_sync>
    800073e4:	ff010113          	addi	sp,sp,-16
    800073e8:	00113423          	sd	ra,8(sp)
    800073ec:	00813023          	sd	s0,0(sp)
    800073f0:	01010413          	addi	s0,sp,16
    800073f4:	00800513          	li	a0,8
    800073f8:	00001097          	auipc	ra,0x1
    800073fc:	9d8080e7          	jalr	-1576(ra) # 80007dd0 <uartputc_sync>
    80007400:	02000513          	li	a0,32
    80007404:	00001097          	auipc	ra,0x1
    80007408:	9cc080e7          	jalr	-1588(ra) # 80007dd0 <uartputc_sync>
    8000740c:	00013403          	ld	s0,0(sp)
    80007410:	00813083          	ld	ra,8(sp)
    80007414:	00800513          	li	a0,8
    80007418:	01010113          	addi	sp,sp,16
    8000741c:	00001317          	auipc	t1,0x1
    80007420:	9b430067          	jr	-1612(t1) # 80007dd0 <uartputc_sync>

0000000080007424 <consoleintr>:
    80007424:	fe010113          	addi	sp,sp,-32
    80007428:	00813823          	sd	s0,16(sp)
    8000742c:	00913423          	sd	s1,8(sp)
    80007430:	01213023          	sd	s2,0(sp)
    80007434:	00113c23          	sd	ra,24(sp)
    80007438:	02010413          	addi	s0,sp,32
    8000743c:	00005917          	auipc	s2,0x5
    80007440:	79c90913          	addi	s2,s2,1948 # 8000cbd8 <cons>
    80007444:	00050493          	mv	s1,a0
    80007448:	00090513          	mv	a0,s2
    8000744c:	00001097          	auipc	ra,0x1
    80007450:	e40080e7          	jalr	-448(ra) # 8000828c <acquire>
    80007454:	02048c63          	beqz	s1,8000748c <consoleintr+0x68>
    80007458:	0a092783          	lw	a5,160(s2)
    8000745c:	09892703          	lw	a4,152(s2)
    80007460:	07f00693          	li	a3,127
    80007464:	40e7873b          	subw	a4,a5,a4
    80007468:	02e6e263          	bltu	a3,a4,8000748c <consoleintr+0x68>
    8000746c:	00d00713          	li	a4,13
    80007470:	04e48063          	beq	s1,a4,800074b0 <consoleintr+0x8c>
    80007474:	07f7f713          	andi	a4,a5,127
    80007478:	00e90733          	add	a4,s2,a4
    8000747c:	0017879b          	addiw	a5,a5,1
    80007480:	0af92023          	sw	a5,160(s2)
    80007484:	00970c23          	sb	s1,24(a4)
    80007488:	08f92e23          	sw	a5,156(s2)
    8000748c:	01013403          	ld	s0,16(sp)
    80007490:	01813083          	ld	ra,24(sp)
    80007494:	00813483          	ld	s1,8(sp)
    80007498:	00013903          	ld	s2,0(sp)
    8000749c:	00005517          	auipc	a0,0x5
    800074a0:	73c50513          	addi	a0,a0,1852 # 8000cbd8 <cons>
    800074a4:	02010113          	addi	sp,sp,32
    800074a8:	00001317          	auipc	t1,0x1
    800074ac:	eb030067          	jr	-336(t1) # 80008358 <release>
    800074b0:	00a00493          	li	s1,10
    800074b4:	fc1ff06f          	j	80007474 <consoleintr+0x50>

00000000800074b8 <consoleinit>:
    800074b8:	fe010113          	addi	sp,sp,-32
    800074bc:	00113c23          	sd	ra,24(sp)
    800074c0:	00813823          	sd	s0,16(sp)
    800074c4:	00913423          	sd	s1,8(sp)
    800074c8:	02010413          	addi	s0,sp,32
    800074cc:	00005497          	auipc	s1,0x5
    800074d0:	70c48493          	addi	s1,s1,1804 # 8000cbd8 <cons>
    800074d4:	00048513          	mv	a0,s1
    800074d8:	00002597          	auipc	a1,0x2
    800074dc:	06058593          	addi	a1,a1,96 # 80009538 <CONSOLE_STATUS+0x528>
    800074e0:	00001097          	auipc	ra,0x1
    800074e4:	d88080e7          	jalr	-632(ra) # 80008268 <initlock>
    800074e8:	00000097          	auipc	ra,0x0
    800074ec:	7ac080e7          	jalr	1964(ra) # 80007c94 <uartinit>
    800074f0:	01813083          	ld	ra,24(sp)
    800074f4:	01013403          	ld	s0,16(sp)
    800074f8:	00000797          	auipc	a5,0x0
    800074fc:	d9c78793          	addi	a5,a5,-612 # 80007294 <consoleread>
    80007500:	0af4bc23          	sd	a5,184(s1)
    80007504:	00000797          	auipc	a5,0x0
    80007508:	cec78793          	addi	a5,a5,-788 # 800071f0 <consolewrite>
    8000750c:	0cf4b023          	sd	a5,192(s1)
    80007510:	00813483          	ld	s1,8(sp)
    80007514:	02010113          	addi	sp,sp,32
    80007518:	00008067          	ret

000000008000751c <console_read>:
    8000751c:	ff010113          	addi	sp,sp,-16
    80007520:	00813423          	sd	s0,8(sp)
    80007524:	01010413          	addi	s0,sp,16
    80007528:	00813403          	ld	s0,8(sp)
    8000752c:	00005317          	auipc	t1,0x5
    80007530:	76433303          	ld	t1,1892(t1) # 8000cc90 <devsw+0x10>
    80007534:	01010113          	addi	sp,sp,16
    80007538:	00030067          	jr	t1

000000008000753c <console_write>:
    8000753c:	ff010113          	addi	sp,sp,-16
    80007540:	00813423          	sd	s0,8(sp)
    80007544:	01010413          	addi	s0,sp,16
    80007548:	00813403          	ld	s0,8(sp)
    8000754c:	00005317          	auipc	t1,0x5
    80007550:	74c33303          	ld	t1,1868(t1) # 8000cc98 <devsw+0x18>
    80007554:	01010113          	addi	sp,sp,16
    80007558:	00030067          	jr	t1

000000008000755c <panic>:
    8000755c:	fe010113          	addi	sp,sp,-32
    80007560:	00113c23          	sd	ra,24(sp)
    80007564:	00813823          	sd	s0,16(sp)
    80007568:	00913423          	sd	s1,8(sp)
    8000756c:	02010413          	addi	s0,sp,32
    80007570:	00050493          	mv	s1,a0
    80007574:	00002517          	auipc	a0,0x2
    80007578:	fcc50513          	addi	a0,a0,-52 # 80009540 <CONSOLE_STATUS+0x530>
    8000757c:	00005797          	auipc	a5,0x5
    80007580:	7a07ae23          	sw	zero,1980(a5) # 8000cd38 <pr+0x18>
    80007584:	00000097          	auipc	ra,0x0
    80007588:	034080e7          	jalr	52(ra) # 800075b8 <__printf>
    8000758c:	00048513          	mv	a0,s1
    80007590:	00000097          	auipc	ra,0x0
    80007594:	028080e7          	jalr	40(ra) # 800075b8 <__printf>
    80007598:	00002517          	auipc	a0,0x2
    8000759c:	bd050513          	addi	a0,a0,-1072 # 80009168 <CONSOLE_STATUS+0x158>
    800075a0:	00000097          	auipc	ra,0x0
    800075a4:	018080e7          	jalr	24(ra) # 800075b8 <__printf>
    800075a8:	00100793          	li	a5,1
    800075ac:	00004717          	auipc	a4,0x4
    800075b0:	48f72623          	sw	a5,1164(a4) # 8000ba38 <panicked>
    800075b4:	0000006f          	j	800075b4 <panic+0x58>

00000000800075b8 <__printf>:
    800075b8:	f3010113          	addi	sp,sp,-208
    800075bc:	08813023          	sd	s0,128(sp)
    800075c0:	07313423          	sd	s3,104(sp)
    800075c4:	09010413          	addi	s0,sp,144
    800075c8:	05813023          	sd	s8,64(sp)
    800075cc:	08113423          	sd	ra,136(sp)
    800075d0:	06913c23          	sd	s1,120(sp)
    800075d4:	07213823          	sd	s2,112(sp)
    800075d8:	07413023          	sd	s4,96(sp)
    800075dc:	05513c23          	sd	s5,88(sp)
    800075e0:	05613823          	sd	s6,80(sp)
    800075e4:	05713423          	sd	s7,72(sp)
    800075e8:	03913c23          	sd	s9,56(sp)
    800075ec:	03a13823          	sd	s10,48(sp)
    800075f0:	03b13423          	sd	s11,40(sp)
    800075f4:	00005317          	auipc	t1,0x5
    800075f8:	72c30313          	addi	t1,t1,1836 # 8000cd20 <pr>
    800075fc:	01832c03          	lw	s8,24(t1)
    80007600:	00b43423          	sd	a1,8(s0)
    80007604:	00c43823          	sd	a2,16(s0)
    80007608:	00d43c23          	sd	a3,24(s0)
    8000760c:	02e43023          	sd	a4,32(s0)
    80007610:	02f43423          	sd	a5,40(s0)
    80007614:	03043823          	sd	a6,48(s0)
    80007618:	03143c23          	sd	a7,56(s0)
    8000761c:	00050993          	mv	s3,a0
    80007620:	4a0c1663          	bnez	s8,80007acc <__printf+0x514>
    80007624:	60098c63          	beqz	s3,80007c3c <__printf+0x684>
    80007628:	0009c503          	lbu	a0,0(s3)
    8000762c:	00840793          	addi	a5,s0,8
    80007630:	f6f43c23          	sd	a5,-136(s0)
    80007634:	00000493          	li	s1,0
    80007638:	22050063          	beqz	a0,80007858 <__printf+0x2a0>
    8000763c:	00002a37          	lui	s4,0x2
    80007640:	00018ab7          	lui	s5,0x18
    80007644:	000f4b37          	lui	s6,0xf4
    80007648:	00989bb7          	lui	s7,0x989
    8000764c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007650:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007654:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007658:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000765c:	00148c9b          	addiw	s9,s1,1
    80007660:	02500793          	li	a5,37
    80007664:	01998933          	add	s2,s3,s9
    80007668:	38f51263          	bne	a0,a5,800079ec <__printf+0x434>
    8000766c:	00094783          	lbu	a5,0(s2)
    80007670:	00078c9b          	sext.w	s9,a5
    80007674:	1e078263          	beqz	a5,80007858 <__printf+0x2a0>
    80007678:	0024849b          	addiw	s1,s1,2
    8000767c:	07000713          	li	a4,112
    80007680:	00998933          	add	s2,s3,s1
    80007684:	38e78a63          	beq	a5,a4,80007a18 <__printf+0x460>
    80007688:	20f76863          	bltu	a4,a5,80007898 <__printf+0x2e0>
    8000768c:	42a78863          	beq	a5,a0,80007abc <__printf+0x504>
    80007690:	06400713          	li	a4,100
    80007694:	40e79663          	bne	a5,a4,80007aa0 <__printf+0x4e8>
    80007698:	f7843783          	ld	a5,-136(s0)
    8000769c:	0007a603          	lw	a2,0(a5)
    800076a0:	00878793          	addi	a5,a5,8
    800076a4:	f6f43c23          	sd	a5,-136(s0)
    800076a8:	42064a63          	bltz	a2,80007adc <__printf+0x524>
    800076ac:	00a00713          	li	a4,10
    800076b0:	02e677bb          	remuw	a5,a2,a4
    800076b4:	00002d97          	auipc	s11,0x2
    800076b8:	eb4d8d93          	addi	s11,s11,-332 # 80009568 <digits>
    800076bc:	00900593          	li	a1,9
    800076c0:	0006051b          	sext.w	a0,a2
    800076c4:	00000c93          	li	s9,0
    800076c8:	02079793          	slli	a5,a5,0x20
    800076cc:	0207d793          	srli	a5,a5,0x20
    800076d0:	00fd87b3          	add	a5,s11,a5
    800076d4:	0007c783          	lbu	a5,0(a5)
    800076d8:	02e656bb          	divuw	a3,a2,a4
    800076dc:	f8f40023          	sb	a5,-128(s0)
    800076e0:	14c5d863          	bge	a1,a2,80007830 <__printf+0x278>
    800076e4:	06300593          	li	a1,99
    800076e8:	00100c93          	li	s9,1
    800076ec:	02e6f7bb          	remuw	a5,a3,a4
    800076f0:	02079793          	slli	a5,a5,0x20
    800076f4:	0207d793          	srli	a5,a5,0x20
    800076f8:	00fd87b3          	add	a5,s11,a5
    800076fc:	0007c783          	lbu	a5,0(a5)
    80007700:	02e6d73b          	divuw	a4,a3,a4
    80007704:	f8f400a3          	sb	a5,-127(s0)
    80007708:	12a5f463          	bgeu	a1,a0,80007830 <__printf+0x278>
    8000770c:	00a00693          	li	a3,10
    80007710:	00900593          	li	a1,9
    80007714:	02d777bb          	remuw	a5,a4,a3
    80007718:	02079793          	slli	a5,a5,0x20
    8000771c:	0207d793          	srli	a5,a5,0x20
    80007720:	00fd87b3          	add	a5,s11,a5
    80007724:	0007c503          	lbu	a0,0(a5)
    80007728:	02d757bb          	divuw	a5,a4,a3
    8000772c:	f8a40123          	sb	a0,-126(s0)
    80007730:	48e5f263          	bgeu	a1,a4,80007bb4 <__printf+0x5fc>
    80007734:	06300513          	li	a0,99
    80007738:	02d7f5bb          	remuw	a1,a5,a3
    8000773c:	02059593          	slli	a1,a1,0x20
    80007740:	0205d593          	srli	a1,a1,0x20
    80007744:	00bd85b3          	add	a1,s11,a1
    80007748:	0005c583          	lbu	a1,0(a1)
    8000774c:	02d7d7bb          	divuw	a5,a5,a3
    80007750:	f8b401a3          	sb	a1,-125(s0)
    80007754:	48e57263          	bgeu	a0,a4,80007bd8 <__printf+0x620>
    80007758:	3e700513          	li	a0,999
    8000775c:	02d7f5bb          	remuw	a1,a5,a3
    80007760:	02059593          	slli	a1,a1,0x20
    80007764:	0205d593          	srli	a1,a1,0x20
    80007768:	00bd85b3          	add	a1,s11,a1
    8000776c:	0005c583          	lbu	a1,0(a1)
    80007770:	02d7d7bb          	divuw	a5,a5,a3
    80007774:	f8b40223          	sb	a1,-124(s0)
    80007778:	46e57663          	bgeu	a0,a4,80007be4 <__printf+0x62c>
    8000777c:	02d7f5bb          	remuw	a1,a5,a3
    80007780:	02059593          	slli	a1,a1,0x20
    80007784:	0205d593          	srli	a1,a1,0x20
    80007788:	00bd85b3          	add	a1,s11,a1
    8000778c:	0005c583          	lbu	a1,0(a1)
    80007790:	02d7d7bb          	divuw	a5,a5,a3
    80007794:	f8b402a3          	sb	a1,-123(s0)
    80007798:	46ea7863          	bgeu	s4,a4,80007c08 <__printf+0x650>
    8000779c:	02d7f5bb          	remuw	a1,a5,a3
    800077a0:	02059593          	slli	a1,a1,0x20
    800077a4:	0205d593          	srli	a1,a1,0x20
    800077a8:	00bd85b3          	add	a1,s11,a1
    800077ac:	0005c583          	lbu	a1,0(a1)
    800077b0:	02d7d7bb          	divuw	a5,a5,a3
    800077b4:	f8b40323          	sb	a1,-122(s0)
    800077b8:	3eeaf863          	bgeu	s5,a4,80007ba8 <__printf+0x5f0>
    800077bc:	02d7f5bb          	remuw	a1,a5,a3
    800077c0:	02059593          	slli	a1,a1,0x20
    800077c4:	0205d593          	srli	a1,a1,0x20
    800077c8:	00bd85b3          	add	a1,s11,a1
    800077cc:	0005c583          	lbu	a1,0(a1)
    800077d0:	02d7d7bb          	divuw	a5,a5,a3
    800077d4:	f8b403a3          	sb	a1,-121(s0)
    800077d8:	42eb7e63          	bgeu	s6,a4,80007c14 <__printf+0x65c>
    800077dc:	02d7f5bb          	remuw	a1,a5,a3
    800077e0:	02059593          	slli	a1,a1,0x20
    800077e4:	0205d593          	srli	a1,a1,0x20
    800077e8:	00bd85b3          	add	a1,s11,a1
    800077ec:	0005c583          	lbu	a1,0(a1)
    800077f0:	02d7d7bb          	divuw	a5,a5,a3
    800077f4:	f8b40423          	sb	a1,-120(s0)
    800077f8:	42ebfc63          	bgeu	s7,a4,80007c30 <__printf+0x678>
    800077fc:	02079793          	slli	a5,a5,0x20
    80007800:	0207d793          	srli	a5,a5,0x20
    80007804:	00fd8db3          	add	s11,s11,a5
    80007808:	000dc703          	lbu	a4,0(s11)
    8000780c:	00a00793          	li	a5,10
    80007810:	00900c93          	li	s9,9
    80007814:	f8e404a3          	sb	a4,-119(s0)
    80007818:	00065c63          	bgez	a2,80007830 <__printf+0x278>
    8000781c:	f9040713          	addi	a4,s0,-112
    80007820:	00f70733          	add	a4,a4,a5
    80007824:	02d00693          	li	a3,45
    80007828:	fed70823          	sb	a3,-16(a4)
    8000782c:	00078c93          	mv	s9,a5
    80007830:	f8040793          	addi	a5,s0,-128
    80007834:	01978cb3          	add	s9,a5,s9
    80007838:	f7f40d13          	addi	s10,s0,-129
    8000783c:	000cc503          	lbu	a0,0(s9)
    80007840:	fffc8c93          	addi	s9,s9,-1
    80007844:	00000097          	auipc	ra,0x0
    80007848:	b90080e7          	jalr	-1136(ra) # 800073d4 <consputc>
    8000784c:	ffac98e3          	bne	s9,s10,8000783c <__printf+0x284>
    80007850:	00094503          	lbu	a0,0(s2)
    80007854:	e00514e3          	bnez	a0,8000765c <__printf+0xa4>
    80007858:	1a0c1663          	bnez	s8,80007a04 <__printf+0x44c>
    8000785c:	08813083          	ld	ra,136(sp)
    80007860:	08013403          	ld	s0,128(sp)
    80007864:	07813483          	ld	s1,120(sp)
    80007868:	07013903          	ld	s2,112(sp)
    8000786c:	06813983          	ld	s3,104(sp)
    80007870:	06013a03          	ld	s4,96(sp)
    80007874:	05813a83          	ld	s5,88(sp)
    80007878:	05013b03          	ld	s6,80(sp)
    8000787c:	04813b83          	ld	s7,72(sp)
    80007880:	04013c03          	ld	s8,64(sp)
    80007884:	03813c83          	ld	s9,56(sp)
    80007888:	03013d03          	ld	s10,48(sp)
    8000788c:	02813d83          	ld	s11,40(sp)
    80007890:	0d010113          	addi	sp,sp,208
    80007894:	00008067          	ret
    80007898:	07300713          	li	a4,115
    8000789c:	1ce78a63          	beq	a5,a4,80007a70 <__printf+0x4b8>
    800078a0:	07800713          	li	a4,120
    800078a4:	1ee79e63          	bne	a5,a4,80007aa0 <__printf+0x4e8>
    800078a8:	f7843783          	ld	a5,-136(s0)
    800078ac:	0007a703          	lw	a4,0(a5)
    800078b0:	00878793          	addi	a5,a5,8
    800078b4:	f6f43c23          	sd	a5,-136(s0)
    800078b8:	28074263          	bltz	a4,80007b3c <__printf+0x584>
    800078bc:	00002d97          	auipc	s11,0x2
    800078c0:	cacd8d93          	addi	s11,s11,-852 # 80009568 <digits>
    800078c4:	00f77793          	andi	a5,a4,15
    800078c8:	00fd87b3          	add	a5,s11,a5
    800078cc:	0007c683          	lbu	a3,0(a5)
    800078d0:	00f00613          	li	a2,15
    800078d4:	0007079b          	sext.w	a5,a4
    800078d8:	f8d40023          	sb	a3,-128(s0)
    800078dc:	0047559b          	srliw	a1,a4,0x4
    800078e0:	0047569b          	srliw	a3,a4,0x4
    800078e4:	00000c93          	li	s9,0
    800078e8:	0ee65063          	bge	a2,a4,800079c8 <__printf+0x410>
    800078ec:	00f6f693          	andi	a3,a3,15
    800078f0:	00dd86b3          	add	a3,s11,a3
    800078f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800078f8:	0087d79b          	srliw	a5,a5,0x8
    800078fc:	00100c93          	li	s9,1
    80007900:	f8d400a3          	sb	a3,-127(s0)
    80007904:	0cb67263          	bgeu	a2,a1,800079c8 <__printf+0x410>
    80007908:	00f7f693          	andi	a3,a5,15
    8000790c:	00dd86b3          	add	a3,s11,a3
    80007910:	0006c583          	lbu	a1,0(a3)
    80007914:	00f00613          	li	a2,15
    80007918:	0047d69b          	srliw	a3,a5,0x4
    8000791c:	f8b40123          	sb	a1,-126(s0)
    80007920:	0047d593          	srli	a1,a5,0x4
    80007924:	28f67e63          	bgeu	a2,a5,80007bc0 <__printf+0x608>
    80007928:	00f6f693          	andi	a3,a3,15
    8000792c:	00dd86b3          	add	a3,s11,a3
    80007930:	0006c503          	lbu	a0,0(a3)
    80007934:	0087d813          	srli	a6,a5,0x8
    80007938:	0087d69b          	srliw	a3,a5,0x8
    8000793c:	f8a401a3          	sb	a0,-125(s0)
    80007940:	28b67663          	bgeu	a2,a1,80007bcc <__printf+0x614>
    80007944:	00f6f693          	andi	a3,a3,15
    80007948:	00dd86b3          	add	a3,s11,a3
    8000794c:	0006c583          	lbu	a1,0(a3)
    80007950:	00c7d513          	srli	a0,a5,0xc
    80007954:	00c7d69b          	srliw	a3,a5,0xc
    80007958:	f8b40223          	sb	a1,-124(s0)
    8000795c:	29067a63          	bgeu	a2,a6,80007bf0 <__printf+0x638>
    80007960:	00f6f693          	andi	a3,a3,15
    80007964:	00dd86b3          	add	a3,s11,a3
    80007968:	0006c583          	lbu	a1,0(a3)
    8000796c:	0107d813          	srli	a6,a5,0x10
    80007970:	0107d69b          	srliw	a3,a5,0x10
    80007974:	f8b402a3          	sb	a1,-123(s0)
    80007978:	28a67263          	bgeu	a2,a0,80007bfc <__printf+0x644>
    8000797c:	00f6f693          	andi	a3,a3,15
    80007980:	00dd86b3          	add	a3,s11,a3
    80007984:	0006c683          	lbu	a3,0(a3)
    80007988:	0147d79b          	srliw	a5,a5,0x14
    8000798c:	f8d40323          	sb	a3,-122(s0)
    80007990:	21067663          	bgeu	a2,a6,80007b9c <__printf+0x5e4>
    80007994:	02079793          	slli	a5,a5,0x20
    80007998:	0207d793          	srli	a5,a5,0x20
    8000799c:	00fd8db3          	add	s11,s11,a5
    800079a0:	000dc683          	lbu	a3,0(s11)
    800079a4:	00800793          	li	a5,8
    800079a8:	00700c93          	li	s9,7
    800079ac:	f8d403a3          	sb	a3,-121(s0)
    800079b0:	00075c63          	bgez	a4,800079c8 <__printf+0x410>
    800079b4:	f9040713          	addi	a4,s0,-112
    800079b8:	00f70733          	add	a4,a4,a5
    800079bc:	02d00693          	li	a3,45
    800079c0:	fed70823          	sb	a3,-16(a4)
    800079c4:	00078c93          	mv	s9,a5
    800079c8:	f8040793          	addi	a5,s0,-128
    800079cc:	01978cb3          	add	s9,a5,s9
    800079d0:	f7f40d13          	addi	s10,s0,-129
    800079d4:	000cc503          	lbu	a0,0(s9)
    800079d8:	fffc8c93          	addi	s9,s9,-1
    800079dc:	00000097          	auipc	ra,0x0
    800079e0:	9f8080e7          	jalr	-1544(ra) # 800073d4 <consputc>
    800079e4:	ff9d18e3          	bne	s10,s9,800079d4 <__printf+0x41c>
    800079e8:	0100006f          	j	800079f8 <__printf+0x440>
    800079ec:	00000097          	auipc	ra,0x0
    800079f0:	9e8080e7          	jalr	-1560(ra) # 800073d4 <consputc>
    800079f4:	000c8493          	mv	s1,s9
    800079f8:	00094503          	lbu	a0,0(s2)
    800079fc:	c60510e3          	bnez	a0,8000765c <__printf+0xa4>
    80007a00:	e40c0ee3          	beqz	s8,8000785c <__printf+0x2a4>
    80007a04:	00005517          	auipc	a0,0x5
    80007a08:	31c50513          	addi	a0,a0,796 # 8000cd20 <pr>
    80007a0c:	00001097          	auipc	ra,0x1
    80007a10:	94c080e7          	jalr	-1716(ra) # 80008358 <release>
    80007a14:	e49ff06f          	j	8000785c <__printf+0x2a4>
    80007a18:	f7843783          	ld	a5,-136(s0)
    80007a1c:	03000513          	li	a0,48
    80007a20:	01000d13          	li	s10,16
    80007a24:	00878713          	addi	a4,a5,8
    80007a28:	0007bc83          	ld	s9,0(a5)
    80007a2c:	f6e43c23          	sd	a4,-136(s0)
    80007a30:	00000097          	auipc	ra,0x0
    80007a34:	9a4080e7          	jalr	-1628(ra) # 800073d4 <consputc>
    80007a38:	07800513          	li	a0,120
    80007a3c:	00000097          	auipc	ra,0x0
    80007a40:	998080e7          	jalr	-1640(ra) # 800073d4 <consputc>
    80007a44:	00002d97          	auipc	s11,0x2
    80007a48:	b24d8d93          	addi	s11,s11,-1244 # 80009568 <digits>
    80007a4c:	03ccd793          	srli	a5,s9,0x3c
    80007a50:	00fd87b3          	add	a5,s11,a5
    80007a54:	0007c503          	lbu	a0,0(a5)
    80007a58:	fffd0d1b          	addiw	s10,s10,-1
    80007a5c:	004c9c93          	slli	s9,s9,0x4
    80007a60:	00000097          	auipc	ra,0x0
    80007a64:	974080e7          	jalr	-1676(ra) # 800073d4 <consputc>
    80007a68:	fe0d12e3          	bnez	s10,80007a4c <__printf+0x494>
    80007a6c:	f8dff06f          	j	800079f8 <__printf+0x440>
    80007a70:	f7843783          	ld	a5,-136(s0)
    80007a74:	0007bc83          	ld	s9,0(a5)
    80007a78:	00878793          	addi	a5,a5,8
    80007a7c:	f6f43c23          	sd	a5,-136(s0)
    80007a80:	000c9a63          	bnez	s9,80007a94 <__printf+0x4dc>
    80007a84:	1080006f          	j	80007b8c <__printf+0x5d4>
    80007a88:	001c8c93          	addi	s9,s9,1
    80007a8c:	00000097          	auipc	ra,0x0
    80007a90:	948080e7          	jalr	-1720(ra) # 800073d4 <consputc>
    80007a94:	000cc503          	lbu	a0,0(s9)
    80007a98:	fe0518e3          	bnez	a0,80007a88 <__printf+0x4d0>
    80007a9c:	f5dff06f          	j	800079f8 <__printf+0x440>
    80007aa0:	02500513          	li	a0,37
    80007aa4:	00000097          	auipc	ra,0x0
    80007aa8:	930080e7          	jalr	-1744(ra) # 800073d4 <consputc>
    80007aac:	000c8513          	mv	a0,s9
    80007ab0:	00000097          	auipc	ra,0x0
    80007ab4:	924080e7          	jalr	-1756(ra) # 800073d4 <consputc>
    80007ab8:	f41ff06f          	j	800079f8 <__printf+0x440>
    80007abc:	02500513          	li	a0,37
    80007ac0:	00000097          	auipc	ra,0x0
    80007ac4:	914080e7          	jalr	-1772(ra) # 800073d4 <consputc>
    80007ac8:	f31ff06f          	j	800079f8 <__printf+0x440>
    80007acc:	00030513          	mv	a0,t1
    80007ad0:	00000097          	auipc	ra,0x0
    80007ad4:	7bc080e7          	jalr	1980(ra) # 8000828c <acquire>
    80007ad8:	b4dff06f          	j	80007624 <__printf+0x6c>
    80007adc:	40c0053b          	negw	a0,a2
    80007ae0:	00a00713          	li	a4,10
    80007ae4:	02e576bb          	remuw	a3,a0,a4
    80007ae8:	00002d97          	auipc	s11,0x2
    80007aec:	a80d8d93          	addi	s11,s11,-1408 # 80009568 <digits>
    80007af0:	ff700593          	li	a1,-9
    80007af4:	02069693          	slli	a3,a3,0x20
    80007af8:	0206d693          	srli	a3,a3,0x20
    80007afc:	00dd86b3          	add	a3,s11,a3
    80007b00:	0006c683          	lbu	a3,0(a3)
    80007b04:	02e557bb          	divuw	a5,a0,a4
    80007b08:	f8d40023          	sb	a3,-128(s0)
    80007b0c:	10b65e63          	bge	a2,a1,80007c28 <__printf+0x670>
    80007b10:	06300593          	li	a1,99
    80007b14:	02e7f6bb          	remuw	a3,a5,a4
    80007b18:	02069693          	slli	a3,a3,0x20
    80007b1c:	0206d693          	srli	a3,a3,0x20
    80007b20:	00dd86b3          	add	a3,s11,a3
    80007b24:	0006c683          	lbu	a3,0(a3)
    80007b28:	02e7d73b          	divuw	a4,a5,a4
    80007b2c:	00200793          	li	a5,2
    80007b30:	f8d400a3          	sb	a3,-127(s0)
    80007b34:	bca5ece3          	bltu	a1,a0,8000770c <__printf+0x154>
    80007b38:	ce5ff06f          	j	8000781c <__printf+0x264>
    80007b3c:	40e007bb          	negw	a5,a4
    80007b40:	00002d97          	auipc	s11,0x2
    80007b44:	a28d8d93          	addi	s11,s11,-1496 # 80009568 <digits>
    80007b48:	00f7f693          	andi	a3,a5,15
    80007b4c:	00dd86b3          	add	a3,s11,a3
    80007b50:	0006c583          	lbu	a1,0(a3)
    80007b54:	ff100613          	li	a2,-15
    80007b58:	0047d69b          	srliw	a3,a5,0x4
    80007b5c:	f8b40023          	sb	a1,-128(s0)
    80007b60:	0047d59b          	srliw	a1,a5,0x4
    80007b64:	0ac75e63          	bge	a4,a2,80007c20 <__printf+0x668>
    80007b68:	00f6f693          	andi	a3,a3,15
    80007b6c:	00dd86b3          	add	a3,s11,a3
    80007b70:	0006c603          	lbu	a2,0(a3)
    80007b74:	00f00693          	li	a3,15
    80007b78:	0087d79b          	srliw	a5,a5,0x8
    80007b7c:	f8c400a3          	sb	a2,-127(s0)
    80007b80:	d8b6e4e3          	bltu	a3,a1,80007908 <__printf+0x350>
    80007b84:	00200793          	li	a5,2
    80007b88:	e2dff06f          	j	800079b4 <__printf+0x3fc>
    80007b8c:	00002c97          	auipc	s9,0x2
    80007b90:	9bcc8c93          	addi	s9,s9,-1604 # 80009548 <CONSOLE_STATUS+0x538>
    80007b94:	02800513          	li	a0,40
    80007b98:	ef1ff06f          	j	80007a88 <__printf+0x4d0>
    80007b9c:	00700793          	li	a5,7
    80007ba0:	00600c93          	li	s9,6
    80007ba4:	e0dff06f          	j	800079b0 <__printf+0x3f8>
    80007ba8:	00700793          	li	a5,7
    80007bac:	00600c93          	li	s9,6
    80007bb0:	c69ff06f          	j	80007818 <__printf+0x260>
    80007bb4:	00300793          	li	a5,3
    80007bb8:	00200c93          	li	s9,2
    80007bbc:	c5dff06f          	j	80007818 <__printf+0x260>
    80007bc0:	00300793          	li	a5,3
    80007bc4:	00200c93          	li	s9,2
    80007bc8:	de9ff06f          	j	800079b0 <__printf+0x3f8>
    80007bcc:	00400793          	li	a5,4
    80007bd0:	00300c93          	li	s9,3
    80007bd4:	dddff06f          	j	800079b0 <__printf+0x3f8>
    80007bd8:	00400793          	li	a5,4
    80007bdc:	00300c93          	li	s9,3
    80007be0:	c39ff06f          	j	80007818 <__printf+0x260>
    80007be4:	00500793          	li	a5,5
    80007be8:	00400c93          	li	s9,4
    80007bec:	c2dff06f          	j	80007818 <__printf+0x260>
    80007bf0:	00500793          	li	a5,5
    80007bf4:	00400c93          	li	s9,4
    80007bf8:	db9ff06f          	j	800079b0 <__printf+0x3f8>
    80007bfc:	00600793          	li	a5,6
    80007c00:	00500c93          	li	s9,5
    80007c04:	dadff06f          	j	800079b0 <__printf+0x3f8>
    80007c08:	00600793          	li	a5,6
    80007c0c:	00500c93          	li	s9,5
    80007c10:	c09ff06f          	j	80007818 <__printf+0x260>
    80007c14:	00800793          	li	a5,8
    80007c18:	00700c93          	li	s9,7
    80007c1c:	bfdff06f          	j	80007818 <__printf+0x260>
    80007c20:	00100793          	li	a5,1
    80007c24:	d91ff06f          	j	800079b4 <__printf+0x3fc>
    80007c28:	00100793          	li	a5,1
    80007c2c:	bf1ff06f          	j	8000781c <__printf+0x264>
    80007c30:	00900793          	li	a5,9
    80007c34:	00800c93          	li	s9,8
    80007c38:	be1ff06f          	j	80007818 <__printf+0x260>
    80007c3c:	00002517          	auipc	a0,0x2
    80007c40:	91450513          	addi	a0,a0,-1772 # 80009550 <CONSOLE_STATUS+0x540>
    80007c44:	00000097          	auipc	ra,0x0
    80007c48:	918080e7          	jalr	-1768(ra) # 8000755c <panic>

0000000080007c4c <printfinit>:
    80007c4c:	fe010113          	addi	sp,sp,-32
    80007c50:	00813823          	sd	s0,16(sp)
    80007c54:	00913423          	sd	s1,8(sp)
    80007c58:	00113c23          	sd	ra,24(sp)
    80007c5c:	02010413          	addi	s0,sp,32
    80007c60:	00005497          	auipc	s1,0x5
    80007c64:	0c048493          	addi	s1,s1,192 # 8000cd20 <pr>
    80007c68:	00048513          	mv	a0,s1
    80007c6c:	00002597          	auipc	a1,0x2
    80007c70:	8f458593          	addi	a1,a1,-1804 # 80009560 <CONSOLE_STATUS+0x550>
    80007c74:	00000097          	auipc	ra,0x0
    80007c78:	5f4080e7          	jalr	1524(ra) # 80008268 <initlock>
    80007c7c:	01813083          	ld	ra,24(sp)
    80007c80:	01013403          	ld	s0,16(sp)
    80007c84:	0004ac23          	sw	zero,24(s1)
    80007c88:	00813483          	ld	s1,8(sp)
    80007c8c:	02010113          	addi	sp,sp,32
    80007c90:	00008067          	ret

0000000080007c94 <uartinit>:
    80007c94:	ff010113          	addi	sp,sp,-16
    80007c98:	00813423          	sd	s0,8(sp)
    80007c9c:	01010413          	addi	s0,sp,16
    80007ca0:	100007b7          	lui	a5,0x10000
    80007ca4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007ca8:	f8000713          	li	a4,-128
    80007cac:	00e781a3          	sb	a4,3(a5)
    80007cb0:	00300713          	li	a4,3
    80007cb4:	00e78023          	sb	a4,0(a5)
    80007cb8:	000780a3          	sb	zero,1(a5)
    80007cbc:	00e781a3          	sb	a4,3(a5)
    80007cc0:	00700693          	li	a3,7
    80007cc4:	00d78123          	sb	a3,2(a5)
    80007cc8:	00e780a3          	sb	a4,1(a5)
    80007ccc:	00813403          	ld	s0,8(sp)
    80007cd0:	01010113          	addi	sp,sp,16
    80007cd4:	00008067          	ret

0000000080007cd8 <uartputc>:
    80007cd8:	00004797          	auipc	a5,0x4
    80007cdc:	d607a783          	lw	a5,-672(a5) # 8000ba38 <panicked>
    80007ce0:	00078463          	beqz	a5,80007ce8 <uartputc+0x10>
    80007ce4:	0000006f          	j	80007ce4 <uartputc+0xc>
    80007ce8:	fd010113          	addi	sp,sp,-48
    80007cec:	02813023          	sd	s0,32(sp)
    80007cf0:	00913c23          	sd	s1,24(sp)
    80007cf4:	01213823          	sd	s2,16(sp)
    80007cf8:	01313423          	sd	s3,8(sp)
    80007cfc:	02113423          	sd	ra,40(sp)
    80007d00:	03010413          	addi	s0,sp,48
    80007d04:	00004917          	auipc	s2,0x4
    80007d08:	d3c90913          	addi	s2,s2,-708 # 8000ba40 <uart_tx_r>
    80007d0c:	00093783          	ld	a5,0(s2)
    80007d10:	00004497          	auipc	s1,0x4
    80007d14:	d3848493          	addi	s1,s1,-712 # 8000ba48 <uart_tx_w>
    80007d18:	0004b703          	ld	a4,0(s1)
    80007d1c:	02078693          	addi	a3,a5,32
    80007d20:	00050993          	mv	s3,a0
    80007d24:	02e69c63          	bne	a3,a4,80007d5c <uartputc+0x84>
    80007d28:	00001097          	auipc	ra,0x1
    80007d2c:	834080e7          	jalr	-1996(ra) # 8000855c <push_on>
    80007d30:	00093783          	ld	a5,0(s2)
    80007d34:	0004b703          	ld	a4,0(s1)
    80007d38:	02078793          	addi	a5,a5,32
    80007d3c:	00e79463          	bne	a5,a4,80007d44 <uartputc+0x6c>
    80007d40:	0000006f          	j	80007d40 <uartputc+0x68>
    80007d44:	00001097          	auipc	ra,0x1
    80007d48:	88c080e7          	jalr	-1908(ra) # 800085d0 <pop_on>
    80007d4c:	00093783          	ld	a5,0(s2)
    80007d50:	0004b703          	ld	a4,0(s1)
    80007d54:	02078693          	addi	a3,a5,32
    80007d58:	fce688e3          	beq	a3,a4,80007d28 <uartputc+0x50>
    80007d5c:	01f77693          	andi	a3,a4,31
    80007d60:	00005597          	auipc	a1,0x5
    80007d64:	fe058593          	addi	a1,a1,-32 # 8000cd40 <uart_tx_buf>
    80007d68:	00d586b3          	add	a3,a1,a3
    80007d6c:	00170713          	addi	a4,a4,1
    80007d70:	01368023          	sb	s3,0(a3)
    80007d74:	00e4b023          	sd	a4,0(s1)
    80007d78:	10000637          	lui	a2,0x10000
    80007d7c:	02f71063          	bne	a4,a5,80007d9c <uartputc+0xc4>
    80007d80:	0340006f          	j	80007db4 <uartputc+0xdc>
    80007d84:	00074703          	lbu	a4,0(a4)
    80007d88:	00f93023          	sd	a5,0(s2)
    80007d8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007d90:	00093783          	ld	a5,0(s2)
    80007d94:	0004b703          	ld	a4,0(s1)
    80007d98:	00f70e63          	beq	a4,a5,80007db4 <uartputc+0xdc>
    80007d9c:	00564683          	lbu	a3,5(a2)
    80007da0:	01f7f713          	andi	a4,a5,31
    80007da4:	00e58733          	add	a4,a1,a4
    80007da8:	0206f693          	andi	a3,a3,32
    80007dac:	00178793          	addi	a5,a5,1
    80007db0:	fc069ae3          	bnez	a3,80007d84 <uartputc+0xac>
    80007db4:	02813083          	ld	ra,40(sp)
    80007db8:	02013403          	ld	s0,32(sp)
    80007dbc:	01813483          	ld	s1,24(sp)
    80007dc0:	01013903          	ld	s2,16(sp)
    80007dc4:	00813983          	ld	s3,8(sp)
    80007dc8:	03010113          	addi	sp,sp,48
    80007dcc:	00008067          	ret

0000000080007dd0 <uartputc_sync>:
    80007dd0:	ff010113          	addi	sp,sp,-16
    80007dd4:	00813423          	sd	s0,8(sp)
    80007dd8:	01010413          	addi	s0,sp,16
    80007ddc:	00004717          	auipc	a4,0x4
    80007de0:	c5c72703          	lw	a4,-932(a4) # 8000ba38 <panicked>
    80007de4:	02071663          	bnez	a4,80007e10 <uartputc_sync+0x40>
    80007de8:	00050793          	mv	a5,a0
    80007dec:	100006b7          	lui	a3,0x10000
    80007df0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007df4:	02077713          	andi	a4,a4,32
    80007df8:	fe070ce3          	beqz	a4,80007df0 <uartputc_sync+0x20>
    80007dfc:	0ff7f793          	andi	a5,a5,255
    80007e00:	00f68023          	sb	a5,0(a3)
    80007e04:	00813403          	ld	s0,8(sp)
    80007e08:	01010113          	addi	sp,sp,16
    80007e0c:	00008067          	ret
    80007e10:	0000006f          	j	80007e10 <uartputc_sync+0x40>

0000000080007e14 <uartstart>:
    80007e14:	ff010113          	addi	sp,sp,-16
    80007e18:	00813423          	sd	s0,8(sp)
    80007e1c:	01010413          	addi	s0,sp,16
    80007e20:	00004617          	auipc	a2,0x4
    80007e24:	c2060613          	addi	a2,a2,-992 # 8000ba40 <uart_tx_r>
    80007e28:	00004517          	auipc	a0,0x4
    80007e2c:	c2050513          	addi	a0,a0,-992 # 8000ba48 <uart_tx_w>
    80007e30:	00063783          	ld	a5,0(a2)
    80007e34:	00053703          	ld	a4,0(a0)
    80007e38:	04f70263          	beq	a4,a5,80007e7c <uartstart+0x68>
    80007e3c:	100005b7          	lui	a1,0x10000
    80007e40:	00005817          	auipc	a6,0x5
    80007e44:	f0080813          	addi	a6,a6,-256 # 8000cd40 <uart_tx_buf>
    80007e48:	01c0006f          	j	80007e64 <uartstart+0x50>
    80007e4c:	0006c703          	lbu	a4,0(a3)
    80007e50:	00f63023          	sd	a5,0(a2)
    80007e54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e58:	00063783          	ld	a5,0(a2)
    80007e5c:	00053703          	ld	a4,0(a0)
    80007e60:	00f70e63          	beq	a4,a5,80007e7c <uartstart+0x68>
    80007e64:	01f7f713          	andi	a4,a5,31
    80007e68:	00e806b3          	add	a3,a6,a4
    80007e6c:	0055c703          	lbu	a4,5(a1)
    80007e70:	00178793          	addi	a5,a5,1
    80007e74:	02077713          	andi	a4,a4,32
    80007e78:	fc071ae3          	bnez	a4,80007e4c <uartstart+0x38>
    80007e7c:	00813403          	ld	s0,8(sp)
    80007e80:	01010113          	addi	sp,sp,16
    80007e84:	00008067          	ret

0000000080007e88 <uartgetc>:
    80007e88:	ff010113          	addi	sp,sp,-16
    80007e8c:	00813423          	sd	s0,8(sp)
    80007e90:	01010413          	addi	s0,sp,16
    80007e94:	10000737          	lui	a4,0x10000
    80007e98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007e9c:	0017f793          	andi	a5,a5,1
    80007ea0:	00078c63          	beqz	a5,80007eb8 <uartgetc+0x30>
    80007ea4:	00074503          	lbu	a0,0(a4)
    80007ea8:	0ff57513          	andi	a0,a0,255
    80007eac:	00813403          	ld	s0,8(sp)
    80007eb0:	01010113          	addi	sp,sp,16
    80007eb4:	00008067          	ret
    80007eb8:	fff00513          	li	a0,-1
    80007ebc:	ff1ff06f          	j	80007eac <uartgetc+0x24>

0000000080007ec0 <uartintr>:
    80007ec0:	100007b7          	lui	a5,0x10000
    80007ec4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007ec8:	0017f793          	andi	a5,a5,1
    80007ecc:	0a078463          	beqz	a5,80007f74 <uartintr+0xb4>
    80007ed0:	fe010113          	addi	sp,sp,-32
    80007ed4:	00813823          	sd	s0,16(sp)
    80007ed8:	00913423          	sd	s1,8(sp)
    80007edc:	00113c23          	sd	ra,24(sp)
    80007ee0:	02010413          	addi	s0,sp,32
    80007ee4:	100004b7          	lui	s1,0x10000
    80007ee8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007eec:	0ff57513          	andi	a0,a0,255
    80007ef0:	fffff097          	auipc	ra,0xfffff
    80007ef4:	534080e7          	jalr	1332(ra) # 80007424 <consoleintr>
    80007ef8:	0054c783          	lbu	a5,5(s1)
    80007efc:	0017f793          	andi	a5,a5,1
    80007f00:	fe0794e3          	bnez	a5,80007ee8 <uartintr+0x28>
    80007f04:	00004617          	auipc	a2,0x4
    80007f08:	b3c60613          	addi	a2,a2,-1220 # 8000ba40 <uart_tx_r>
    80007f0c:	00004517          	auipc	a0,0x4
    80007f10:	b3c50513          	addi	a0,a0,-1220 # 8000ba48 <uart_tx_w>
    80007f14:	00063783          	ld	a5,0(a2)
    80007f18:	00053703          	ld	a4,0(a0)
    80007f1c:	04f70263          	beq	a4,a5,80007f60 <uartintr+0xa0>
    80007f20:	100005b7          	lui	a1,0x10000
    80007f24:	00005817          	auipc	a6,0x5
    80007f28:	e1c80813          	addi	a6,a6,-484 # 8000cd40 <uart_tx_buf>
    80007f2c:	01c0006f          	j	80007f48 <uartintr+0x88>
    80007f30:	0006c703          	lbu	a4,0(a3)
    80007f34:	00f63023          	sd	a5,0(a2)
    80007f38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f3c:	00063783          	ld	a5,0(a2)
    80007f40:	00053703          	ld	a4,0(a0)
    80007f44:	00f70e63          	beq	a4,a5,80007f60 <uartintr+0xa0>
    80007f48:	01f7f713          	andi	a4,a5,31
    80007f4c:	00e806b3          	add	a3,a6,a4
    80007f50:	0055c703          	lbu	a4,5(a1)
    80007f54:	00178793          	addi	a5,a5,1
    80007f58:	02077713          	andi	a4,a4,32
    80007f5c:	fc071ae3          	bnez	a4,80007f30 <uartintr+0x70>
    80007f60:	01813083          	ld	ra,24(sp)
    80007f64:	01013403          	ld	s0,16(sp)
    80007f68:	00813483          	ld	s1,8(sp)
    80007f6c:	02010113          	addi	sp,sp,32
    80007f70:	00008067          	ret
    80007f74:	00004617          	auipc	a2,0x4
    80007f78:	acc60613          	addi	a2,a2,-1332 # 8000ba40 <uart_tx_r>
    80007f7c:	00004517          	auipc	a0,0x4
    80007f80:	acc50513          	addi	a0,a0,-1332 # 8000ba48 <uart_tx_w>
    80007f84:	00063783          	ld	a5,0(a2)
    80007f88:	00053703          	ld	a4,0(a0)
    80007f8c:	04f70263          	beq	a4,a5,80007fd0 <uartintr+0x110>
    80007f90:	100005b7          	lui	a1,0x10000
    80007f94:	00005817          	auipc	a6,0x5
    80007f98:	dac80813          	addi	a6,a6,-596 # 8000cd40 <uart_tx_buf>
    80007f9c:	01c0006f          	j	80007fb8 <uartintr+0xf8>
    80007fa0:	0006c703          	lbu	a4,0(a3)
    80007fa4:	00f63023          	sd	a5,0(a2)
    80007fa8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007fac:	00063783          	ld	a5,0(a2)
    80007fb0:	00053703          	ld	a4,0(a0)
    80007fb4:	02f70063          	beq	a4,a5,80007fd4 <uartintr+0x114>
    80007fb8:	01f7f713          	andi	a4,a5,31
    80007fbc:	00e806b3          	add	a3,a6,a4
    80007fc0:	0055c703          	lbu	a4,5(a1)
    80007fc4:	00178793          	addi	a5,a5,1
    80007fc8:	02077713          	andi	a4,a4,32
    80007fcc:	fc071ae3          	bnez	a4,80007fa0 <uartintr+0xe0>
    80007fd0:	00008067          	ret
    80007fd4:	00008067          	ret

0000000080007fd8 <kinit>:
    80007fd8:	fc010113          	addi	sp,sp,-64
    80007fdc:	02913423          	sd	s1,40(sp)
    80007fe0:	fffff7b7          	lui	a5,0xfffff
    80007fe4:	00006497          	auipc	s1,0x6
    80007fe8:	d7b48493          	addi	s1,s1,-645 # 8000dd5f <end+0xfff>
    80007fec:	02813823          	sd	s0,48(sp)
    80007ff0:	01313c23          	sd	s3,24(sp)
    80007ff4:	00f4f4b3          	and	s1,s1,a5
    80007ff8:	02113c23          	sd	ra,56(sp)
    80007ffc:	03213023          	sd	s2,32(sp)
    80008000:	01413823          	sd	s4,16(sp)
    80008004:	01513423          	sd	s5,8(sp)
    80008008:	04010413          	addi	s0,sp,64
    8000800c:	000017b7          	lui	a5,0x1
    80008010:	01100993          	li	s3,17
    80008014:	00f487b3          	add	a5,s1,a5
    80008018:	01b99993          	slli	s3,s3,0x1b
    8000801c:	06f9e063          	bltu	s3,a5,8000807c <kinit+0xa4>
    80008020:	00005a97          	auipc	s5,0x5
    80008024:	d40a8a93          	addi	s5,s5,-704 # 8000cd60 <end>
    80008028:	0754ec63          	bltu	s1,s5,800080a0 <kinit+0xc8>
    8000802c:	0734fa63          	bgeu	s1,s3,800080a0 <kinit+0xc8>
    80008030:	00088a37          	lui	s4,0x88
    80008034:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008038:	00004917          	auipc	s2,0x4
    8000803c:	a1890913          	addi	s2,s2,-1512 # 8000ba50 <kmem>
    80008040:	00ca1a13          	slli	s4,s4,0xc
    80008044:	0140006f          	j	80008058 <kinit+0x80>
    80008048:	000017b7          	lui	a5,0x1
    8000804c:	00f484b3          	add	s1,s1,a5
    80008050:	0554e863          	bltu	s1,s5,800080a0 <kinit+0xc8>
    80008054:	0534f663          	bgeu	s1,s3,800080a0 <kinit+0xc8>
    80008058:	00001637          	lui	a2,0x1
    8000805c:	00100593          	li	a1,1
    80008060:	00048513          	mv	a0,s1
    80008064:	00000097          	auipc	ra,0x0
    80008068:	5e4080e7          	jalr	1508(ra) # 80008648 <__memset>
    8000806c:	00093783          	ld	a5,0(s2)
    80008070:	00f4b023          	sd	a5,0(s1)
    80008074:	00993023          	sd	s1,0(s2)
    80008078:	fd4498e3          	bne	s1,s4,80008048 <kinit+0x70>
    8000807c:	03813083          	ld	ra,56(sp)
    80008080:	03013403          	ld	s0,48(sp)
    80008084:	02813483          	ld	s1,40(sp)
    80008088:	02013903          	ld	s2,32(sp)
    8000808c:	01813983          	ld	s3,24(sp)
    80008090:	01013a03          	ld	s4,16(sp)
    80008094:	00813a83          	ld	s5,8(sp)
    80008098:	04010113          	addi	sp,sp,64
    8000809c:	00008067          	ret
    800080a0:	00001517          	auipc	a0,0x1
    800080a4:	4e050513          	addi	a0,a0,1248 # 80009580 <digits+0x18>
    800080a8:	fffff097          	auipc	ra,0xfffff
    800080ac:	4b4080e7          	jalr	1204(ra) # 8000755c <panic>

00000000800080b0 <freerange>:
    800080b0:	fc010113          	addi	sp,sp,-64
    800080b4:	000017b7          	lui	a5,0x1
    800080b8:	02913423          	sd	s1,40(sp)
    800080bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800080c0:	009504b3          	add	s1,a0,s1
    800080c4:	fffff537          	lui	a0,0xfffff
    800080c8:	02813823          	sd	s0,48(sp)
    800080cc:	02113c23          	sd	ra,56(sp)
    800080d0:	03213023          	sd	s2,32(sp)
    800080d4:	01313c23          	sd	s3,24(sp)
    800080d8:	01413823          	sd	s4,16(sp)
    800080dc:	01513423          	sd	s5,8(sp)
    800080e0:	01613023          	sd	s6,0(sp)
    800080e4:	04010413          	addi	s0,sp,64
    800080e8:	00a4f4b3          	and	s1,s1,a0
    800080ec:	00f487b3          	add	a5,s1,a5
    800080f0:	06f5e463          	bltu	a1,a5,80008158 <freerange+0xa8>
    800080f4:	00005a97          	auipc	s5,0x5
    800080f8:	c6ca8a93          	addi	s5,s5,-916 # 8000cd60 <end>
    800080fc:	0954e263          	bltu	s1,s5,80008180 <freerange+0xd0>
    80008100:	01100993          	li	s3,17
    80008104:	01b99993          	slli	s3,s3,0x1b
    80008108:	0734fc63          	bgeu	s1,s3,80008180 <freerange+0xd0>
    8000810c:	00058a13          	mv	s4,a1
    80008110:	00004917          	auipc	s2,0x4
    80008114:	94090913          	addi	s2,s2,-1728 # 8000ba50 <kmem>
    80008118:	00002b37          	lui	s6,0x2
    8000811c:	0140006f          	j	80008130 <freerange+0x80>
    80008120:	000017b7          	lui	a5,0x1
    80008124:	00f484b3          	add	s1,s1,a5
    80008128:	0554ec63          	bltu	s1,s5,80008180 <freerange+0xd0>
    8000812c:	0534fa63          	bgeu	s1,s3,80008180 <freerange+0xd0>
    80008130:	00001637          	lui	a2,0x1
    80008134:	00100593          	li	a1,1
    80008138:	00048513          	mv	a0,s1
    8000813c:	00000097          	auipc	ra,0x0
    80008140:	50c080e7          	jalr	1292(ra) # 80008648 <__memset>
    80008144:	00093703          	ld	a4,0(s2)
    80008148:	016487b3          	add	a5,s1,s6
    8000814c:	00e4b023          	sd	a4,0(s1)
    80008150:	00993023          	sd	s1,0(s2)
    80008154:	fcfa76e3          	bgeu	s4,a5,80008120 <freerange+0x70>
    80008158:	03813083          	ld	ra,56(sp)
    8000815c:	03013403          	ld	s0,48(sp)
    80008160:	02813483          	ld	s1,40(sp)
    80008164:	02013903          	ld	s2,32(sp)
    80008168:	01813983          	ld	s3,24(sp)
    8000816c:	01013a03          	ld	s4,16(sp)
    80008170:	00813a83          	ld	s5,8(sp)
    80008174:	00013b03          	ld	s6,0(sp)
    80008178:	04010113          	addi	sp,sp,64
    8000817c:	00008067          	ret
    80008180:	00001517          	auipc	a0,0x1
    80008184:	40050513          	addi	a0,a0,1024 # 80009580 <digits+0x18>
    80008188:	fffff097          	auipc	ra,0xfffff
    8000818c:	3d4080e7          	jalr	980(ra) # 8000755c <panic>

0000000080008190 <kfree>:
    80008190:	fe010113          	addi	sp,sp,-32
    80008194:	00813823          	sd	s0,16(sp)
    80008198:	00113c23          	sd	ra,24(sp)
    8000819c:	00913423          	sd	s1,8(sp)
    800081a0:	02010413          	addi	s0,sp,32
    800081a4:	03451793          	slli	a5,a0,0x34
    800081a8:	04079c63          	bnez	a5,80008200 <kfree+0x70>
    800081ac:	00005797          	auipc	a5,0x5
    800081b0:	bb478793          	addi	a5,a5,-1100 # 8000cd60 <end>
    800081b4:	00050493          	mv	s1,a0
    800081b8:	04f56463          	bltu	a0,a5,80008200 <kfree+0x70>
    800081bc:	01100793          	li	a5,17
    800081c0:	01b79793          	slli	a5,a5,0x1b
    800081c4:	02f57e63          	bgeu	a0,a5,80008200 <kfree+0x70>
    800081c8:	00001637          	lui	a2,0x1
    800081cc:	00100593          	li	a1,1
    800081d0:	00000097          	auipc	ra,0x0
    800081d4:	478080e7          	jalr	1144(ra) # 80008648 <__memset>
    800081d8:	00004797          	auipc	a5,0x4
    800081dc:	87878793          	addi	a5,a5,-1928 # 8000ba50 <kmem>
    800081e0:	0007b703          	ld	a4,0(a5)
    800081e4:	01813083          	ld	ra,24(sp)
    800081e8:	01013403          	ld	s0,16(sp)
    800081ec:	00e4b023          	sd	a4,0(s1)
    800081f0:	0097b023          	sd	s1,0(a5)
    800081f4:	00813483          	ld	s1,8(sp)
    800081f8:	02010113          	addi	sp,sp,32
    800081fc:	00008067          	ret
    80008200:	00001517          	auipc	a0,0x1
    80008204:	38050513          	addi	a0,a0,896 # 80009580 <digits+0x18>
    80008208:	fffff097          	auipc	ra,0xfffff
    8000820c:	354080e7          	jalr	852(ra) # 8000755c <panic>

0000000080008210 <kalloc>:
    80008210:	fe010113          	addi	sp,sp,-32
    80008214:	00813823          	sd	s0,16(sp)
    80008218:	00913423          	sd	s1,8(sp)
    8000821c:	00113c23          	sd	ra,24(sp)
    80008220:	02010413          	addi	s0,sp,32
    80008224:	00004797          	auipc	a5,0x4
    80008228:	82c78793          	addi	a5,a5,-2004 # 8000ba50 <kmem>
    8000822c:	0007b483          	ld	s1,0(a5)
    80008230:	02048063          	beqz	s1,80008250 <kalloc+0x40>
    80008234:	0004b703          	ld	a4,0(s1)
    80008238:	00001637          	lui	a2,0x1
    8000823c:	00500593          	li	a1,5
    80008240:	00048513          	mv	a0,s1
    80008244:	00e7b023          	sd	a4,0(a5)
    80008248:	00000097          	auipc	ra,0x0
    8000824c:	400080e7          	jalr	1024(ra) # 80008648 <__memset>
    80008250:	01813083          	ld	ra,24(sp)
    80008254:	01013403          	ld	s0,16(sp)
    80008258:	00048513          	mv	a0,s1
    8000825c:	00813483          	ld	s1,8(sp)
    80008260:	02010113          	addi	sp,sp,32
    80008264:	00008067          	ret

0000000080008268 <initlock>:
    80008268:	ff010113          	addi	sp,sp,-16
    8000826c:	00813423          	sd	s0,8(sp)
    80008270:	01010413          	addi	s0,sp,16
    80008274:	00813403          	ld	s0,8(sp)
    80008278:	00b53423          	sd	a1,8(a0)
    8000827c:	00052023          	sw	zero,0(a0)
    80008280:	00053823          	sd	zero,16(a0)
    80008284:	01010113          	addi	sp,sp,16
    80008288:	00008067          	ret

000000008000828c <acquire>:
    8000828c:	fe010113          	addi	sp,sp,-32
    80008290:	00813823          	sd	s0,16(sp)
    80008294:	00913423          	sd	s1,8(sp)
    80008298:	00113c23          	sd	ra,24(sp)
    8000829c:	01213023          	sd	s2,0(sp)
    800082a0:	02010413          	addi	s0,sp,32
    800082a4:	00050493          	mv	s1,a0
    800082a8:	10002973          	csrr	s2,sstatus
    800082ac:	100027f3          	csrr	a5,sstatus
    800082b0:	ffd7f793          	andi	a5,a5,-3
    800082b4:	10079073          	csrw	sstatus,a5
    800082b8:	fffff097          	auipc	ra,0xfffff
    800082bc:	8ec080e7          	jalr	-1812(ra) # 80006ba4 <mycpu>
    800082c0:	07852783          	lw	a5,120(a0)
    800082c4:	06078e63          	beqz	a5,80008340 <acquire+0xb4>
    800082c8:	fffff097          	auipc	ra,0xfffff
    800082cc:	8dc080e7          	jalr	-1828(ra) # 80006ba4 <mycpu>
    800082d0:	07852783          	lw	a5,120(a0)
    800082d4:	0004a703          	lw	a4,0(s1)
    800082d8:	0017879b          	addiw	a5,a5,1
    800082dc:	06f52c23          	sw	a5,120(a0)
    800082e0:	04071063          	bnez	a4,80008320 <acquire+0x94>
    800082e4:	00100713          	li	a4,1
    800082e8:	00070793          	mv	a5,a4
    800082ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800082f0:	0007879b          	sext.w	a5,a5
    800082f4:	fe079ae3          	bnez	a5,800082e8 <acquire+0x5c>
    800082f8:	0ff0000f          	fence
    800082fc:	fffff097          	auipc	ra,0xfffff
    80008300:	8a8080e7          	jalr	-1880(ra) # 80006ba4 <mycpu>
    80008304:	01813083          	ld	ra,24(sp)
    80008308:	01013403          	ld	s0,16(sp)
    8000830c:	00a4b823          	sd	a0,16(s1)
    80008310:	00013903          	ld	s2,0(sp)
    80008314:	00813483          	ld	s1,8(sp)
    80008318:	02010113          	addi	sp,sp,32
    8000831c:	00008067          	ret
    80008320:	0104b903          	ld	s2,16(s1)
    80008324:	fffff097          	auipc	ra,0xfffff
    80008328:	880080e7          	jalr	-1920(ra) # 80006ba4 <mycpu>
    8000832c:	faa91ce3          	bne	s2,a0,800082e4 <acquire+0x58>
    80008330:	00001517          	auipc	a0,0x1
    80008334:	25850513          	addi	a0,a0,600 # 80009588 <digits+0x20>
    80008338:	fffff097          	auipc	ra,0xfffff
    8000833c:	224080e7          	jalr	548(ra) # 8000755c <panic>
    80008340:	00195913          	srli	s2,s2,0x1
    80008344:	fffff097          	auipc	ra,0xfffff
    80008348:	860080e7          	jalr	-1952(ra) # 80006ba4 <mycpu>
    8000834c:	00197913          	andi	s2,s2,1
    80008350:	07252e23          	sw	s2,124(a0)
    80008354:	f75ff06f          	j	800082c8 <acquire+0x3c>

0000000080008358 <release>:
    80008358:	fe010113          	addi	sp,sp,-32
    8000835c:	00813823          	sd	s0,16(sp)
    80008360:	00113c23          	sd	ra,24(sp)
    80008364:	00913423          	sd	s1,8(sp)
    80008368:	01213023          	sd	s2,0(sp)
    8000836c:	02010413          	addi	s0,sp,32
    80008370:	00052783          	lw	a5,0(a0)
    80008374:	00079a63          	bnez	a5,80008388 <release+0x30>
    80008378:	00001517          	auipc	a0,0x1
    8000837c:	21850513          	addi	a0,a0,536 # 80009590 <digits+0x28>
    80008380:	fffff097          	auipc	ra,0xfffff
    80008384:	1dc080e7          	jalr	476(ra) # 8000755c <panic>
    80008388:	01053903          	ld	s2,16(a0)
    8000838c:	00050493          	mv	s1,a0
    80008390:	fffff097          	auipc	ra,0xfffff
    80008394:	814080e7          	jalr	-2028(ra) # 80006ba4 <mycpu>
    80008398:	fea910e3          	bne	s2,a0,80008378 <release+0x20>
    8000839c:	0004b823          	sd	zero,16(s1)
    800083a0:	0ff0000f          	fence
    800083a4:	0f50000f          	fence	iorw,ow
    800083a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800083ac:	ffffe097          	auipc	ra,0xffffe
    800083b0:	7f8080e7          	jalr	2040(ra) # 80006ba4 <mycpu>
    800083b4:	100027f3          	csrr	a5,sstatus
    800083b8:	0027f793          	andi	a5,a5,2
    800083bc:	04079a63          	bnez	a5,80008410 <release+0xb8>
    800083c0:	07852783          	lw	a5,120(a0)
    800083c4:	02f05e63          	blez	a5,80008400 <release+0xa8>
    800083c8:	fff7871b          	addiw	a4,a5,-1
    800083cc:	06e52c23          	sw	a4,120(a0)
    800083d0:	00071c63          	bnez	a4,800083e8 <release+0x90>
    800083d4:	07c52783          	lw	a5,124(a0)
    800083d8:	00078863          	beqz	a5,800083e8 <release+0x90>
    800083dc:	100027f3          	csrr	a5,sstatus
    800083e0:	0027e793          	ori	a5,a5,2
    800083e4:	10079073          	csrw	sstatus,a5
    800083e8:	01813083          	ld	ra,24(sp)
    800083ec:	01013403          	ld	s0,16(sp)
    800083f0:	00813483          	ld	s1,8(sp)
    800083f4:	00013903          	ld	s2,0(sp)
    800083f8:	02010113          	addi	sp,sp,32
    800083fc:	00008067          	ret
    80008400:	00001517          	auipc	a0,0x1
    80008404:	1b050513          	addi	a0,a0,432 # 800095b0 <digits+0x48>
    80008408:	fffff097          	auipc	ra,0xfffff
    8000840c:	154080e7          	jalr	340(ra) # 8000755c <panic>
    80008410:	00001517          	auipc	a0,0x1
    80008414:	18850513          	addi	a0,a0,392 # 80009598 <digits+0x30>
    80008418:	fffff097          	auipc	ra,0xfffff
    8000841c:	144080e7          	jalr	324(ra) # 8000755c <panic>

0000000080008420 <holding>:
    80008420:	00052783          	lw	a5,0(a0)
    80008424:	00079663          	bnez	a5,80008430 <holding+0x10>
    80008428:	00000513          	li	a0,0
    8000842c:	00008067          	ret
    80008430:	fe010113          	addi	sp,sp,-32
    80008434:	00813823          	sd	s0,16(sp)
    80008438:	00913423          	sd	s1,8(sp)
    8000843c:	00113c23          	sd	ra,24(sp)
    80008440:	02010413          	addi	s0,sp,32
    80008444:	01053483          	ld	s1,16(a0)
    80008448:	ffffe097          	auipc	ra,0xffffe
    8000844c:	75c080e7          	jalr	1884(ra) # 80006ba4 <mycpu>
    80008450:	01813083          	ld	ra,24(sp)
    80008454:	01013403          	ld	s0,16(sp)
    80008458:	40a48533          	sub	a0,s1,a0
    8000845c:	00153513          	seqz	a0,a0
    80008460:	00813483          	ld	s1,8(sp)
    80008464:	02010113          	addi	sp,sp,32
    80008468:	00008067          	ret

000000008000846c <push_off>:
    8000846c:	fe010113          	addi	sp,sp,-32
    80008470:	00813823          	sd	s0,16(sp)
    80008474:	00113c23          	sd	ra,24(sp)
    80008478:	00913423          	sd	s1,8(sp)
    8000847c:	02010413          	addi	s0,sp,32
    80008480:	100024f3          	csrr	s1,sstatus
    80008484:	100027f3          	csrr	a5,sstatus
    80008488:	ffd7f793          	andi	a5,a5,-3
    8000848c:	10079073          	csrw	sstatus,a5
    80008490:	ffffe097          	auipc	ra,0xffffe
    80008494:	714080e7          	jalr	1812(ra) # 80006ba4 <mycpu>
    80008498:	07852783          	lw	a5,120(a0)
    8000849c:	02078663          	beqz	a5,800084c8 <push_off+0x5c>
    800084a0:	ffffe097          	auipc	ra,0xffffe
    800084a4:	704080e7          	jalr	1796(ra) # 80006ba4 <mycpu>
    800084a8:	07852783          	lw	a5,120(a0)
    800084ac:	01813083          	ld	ra,24(sp)
    800084b0:	01013403          	ld	s0,16(sp)
    800084b4:	0017879b          	addiw	a5,a5,1
    800084b8:	06f52c23          	sw	a5,120(a0)
    800084bc:	00813483          	ld	s1,8(sp)
    800084c0:	02010113          	addi	sp,sp,32
    800084c4:	00008067          	ret
    800084c8:	0014d493          	srli	s1,s1,0x1
    800084cc:	ffffe097          	auipc	ra,0xffffe
    800084d0:	6d8080e7          	jalr	1752(ra) # 80006ba4 <mycpu>
    800084d4:	0014f493          	andi	s1,s1,1
    800084d8:	06952e23          	sw	s1,124(a0)
    800084dc:	fc5ff06f          	j	800084a0 <push_off+0x34>

00000000800084e0 <pop_off>:
    800084e0:	ff010113          	addi	sp,sp,-16
    800084e4:	00813023          	sd	s0,0(sp)
    800084e8:	00113423          	sd	ra,8(sp)
    800084ec:	01010413          	addi	s0,sp,16
    800084f0:	ffffe097          	auipc	ra,0xffffe
    800084f4:	6b4080e7          	jalr	1716(ra) # 80006ba4 <mycpu>
    800084f8:	100027f3          	csrr	a5,sstatus
    800084fc:	0027f793          	andi	a5,a5,2
    80008500:	04079663          	bnez	a5,8000854c <pop_off+0x6c>
    80008504:	07852783          	lw	a5,120(a0)
    80008508:	02f05a63          	blez	a5,8000853c <pop_off+0x5c>
    8000850c:	fff7871b          	addiw	a4,a5,-1
    80008510:	06e52c23          	sw	a4,120(a0)
    80008514:	00071c63          	bnez	a4,8000852c <pop_off+0x4c>
    80008518:	07c52783          	lw	a5,124(a0)
    8000851c:	00078863          	beqz	a5,8000852c <pop_off+0x4c>
    80008520:	100027f3          	csrr	a5,sstatus
    80008524:	0027e793          	ori	a5,a5,2
    80008528:	10079073          	csrw	sstatus,a5
    8000852c:	00813083          	ld	ra,8(sp)
    80008530:	00013403          	ld	s0,0(sp)
    80008534:	01010113          	addi	sp,sp,16
    80008538:	00008067          	ret
    8000853c:	00001517          	auipc	a0,0x1
    80008540:	07450513          	addi	a0,a0,116 # 800095b0 <digits+0x48>
    80008544:	fffff097          	auipc	ra,0xfffff
    80008548:	018080e7          	jalr	24(ra) # 8000755c <panic>
    8000854c:	00001517          	auipc	a0,0x1
    80008550:	04c50513          	addi	a0,a0,76 # 80009598 <digits+0x30>
    80008554:	fffff097          	auipc	ra,0xfffff
    80008558:	008080e7          	jalr	8(ra) # 8000755c <panic>

000000008000855c <push_on>:
    8000855c:	fe010113          	addi	sp,sp,-32
    80008560:	00813823          	sd	s0,16(sp)
    80008564:	00113c23          	sd	ra,24(sp)
    80008568:	00913423          	sd	s1,8(sp)
    8000856c:	02010413          	addi	s0,sp,32
    80008570:	100024f3          	csrr	s1,sstatus
    80008574:	100027f3          	csrr	a5,sstatus
    80008578:	0027e793          	ori	a5,a5,2
    8000857c:	10079073          	csrw	sstatus,a5
    80008580:	ffffe097          	auipc	ra,0xffffe
    80008584:	624080e7          	jalr	1572(ra) # 80006ba4 <mycpu>
    80008588:	07852783          	lw	a5,120(a0)
    8000858c:	02078663          	beqz	a5,800085b8 <push_on+0x5c>
    80008590:	ffffe097          	auipc	ra,0xffffe
    80008594:	614080e7          	jalr	1556(ra) # 80006ba4 <mycpu>
    80008598:	07852783          	lw	a5,120(a0)
    8000859c:	01813083          	ld	ra,24(sp)
    800085a0:	01013403          	ld	s0,16(sp)
    800085a4:	0017879b          	addiw	a5,a5,1
    800085a8:	06f52c23          	sw	a5,120(a0)
    800085ac:	00813483          	ld	s1,8(sp)
    800085b0:	02010113          	addi	sp,sp,32
    800085b4:	00008067          	ret
    800085b8:	0014d493          	srli	s1,s1,0x1
    800085bc:	ffffe097          	auipc	ra,0xffffe
    800085c0:	5e8080e7          	jalr	1512(ra) # 80006ba4 <mycpu>
    800085c4:	0014f493          	andi	s1,s1,1
    800085c8:	06952e23          	sw	s1,124(a0)
    800085cc:	fc5ff06f          	j	80008590 <push_on+0x34>

00000000800085d0 <pop_on>:
    800085d0:	ff010113          	addi	sp,sp,-16
    800085d4:	00813023          	sd	s0,0(sp)
    800085d8:	00113423          	sd	ra,8(sp)
    800085dc:	01010413          	addi	s0,sp,16
    800085e0:	ffffe097          	auipc	ra,0xffffe
    800085e4:	5c4080e7          	jalr	1476(ra) # 80006ba4 <mycpu>
    800085e8:	100027f3          	csrr	a5,sstatus
    800085ec:	0027f793          	andi	a5,a5,2
    800085f0:	04078463          	beqz	a5,80008638 <pop_on+0x68>
    800085f4:	07852783          	lw	a5,120(a0)
    800085f8:	02f05863          	blez	a5,80008628 <pop_on+0x58>
    800085fc:	fff7879b          	addiw	a5,a5,-1
    80008600:	06f52c23          	sw	a5,120(a0)
    80008604:	07853783          	ld	a5,120(a0)
    80008608:	00079863          	bnez	a5,80008618 <pop_on+0x48>
    8000860c:	100027f3          	csrr	a5,sstatus
    80008610:	ffd7f793          	andi	a5,a5,-3
    80008614:	10079073          	csrw	sstatus,a5
    80008618:	00813083          	ld	ra,8(sp)
    8000861c:	00013403          	ld	s0,0(sp)
    80008620:	01010113          	addi	sp,sp,16
    80008624:	00008067          	ret
    80008628:	00001517          	auipc	a0,0x1
    8000862c:	fb050513          	addi	a0,a0,-80 # 800095d8 <digits+0x70>
    80008630:	fffff097          	auipc	ra,0xfffff
    80008634:	f2c080e7          	jalr	-212(ra) # 8000755c <panic>
    80008638:	00001517          	auipc	a0,0x1
    8000863c:	f8050513          	addi	a0,a0,-128 # 800095b8 <digits+0x50>
    80008640:	fffff097          	auipc	ra,0xfffff
    80008644:	f1c080e7          	jalr	-228(ra) # 8000755c <panic>

0000000080008648 <__memset>:
    80008648:	ff010113          	addi	sp,sp,-16
    8000864c:	00813423          	sd	s0,8(sp)
    80008650:	01010413          	addi	s0,sp,16
    80008654:	1a060e63          	beqz	a2,80008810 <__memset+0x1c8>
    80008658:	40a007b3          	neg	a5,a0
    8000865c:	0077f793          	andi	a5,a5,7
    80008660:	00778693          	addi	a3,a5,7
    80008664:	00b00813          	li	a6,11
    80008668:	0ff5f593          	andi	a1,a1,255
    8000866c:	fff6071b          	addiw	a4,a2,-1
    80008670:	1b06e663          	bltu	a3,a6,8000881c <__memset+0x1d4>
    80008674:	1cd76463          	bltu	a4,a3,8000883c <__memset+0x1f4>
    80008678:	1a078e63          	beqz	a5,80008834 <__memset+0x1ec>
    8000867c:	00b50023          	sb	a1,0(a0)
    80008680:	00100713          	li	a4,1
    80008684:	1ae78463          	beq	a5,a4,8000882c <__memset+0x1e4>
    80008688:	00b500a3          	sb	a1,1(a0)
    8000868c:	00200713          	li	a4,2
    80008690:	1ae78a63          	beq	a5,a4,80008844 <__memset+0x1fc>
    80008694:	00b50123          	sb	a1,2(a0)
    80008698:	00300713          	li	a4,3
    8000869c:	18e78463          	beq	a5,a4,80008824 <__memset+0x1dc>
    800086a0:	00b501a3          	sb	a1,3(a0)
    800086a4:	00400713          	li	a4,4
    800086a8:	1ae78263          	beq	a5,a4,8000884c <__memset+0x204>
    800086ac:	00b50223          	sb	a1,4(a0)
    800086b0:	00500713          	li	a4,5
    800086b4:	1ae78063          	beq	a5,a4,80008854 <__memset+0x20c>
    800086b8:	00b502a3          	sb	a1,5(a0)
    800086bc:	00700713          	li	a4,7
    800086c0:	18e79e63          	bne	a5,a4,8000885c <__memset+0x214>
    800086c4:	00b50323          	sb	a1,6(a0)
    800086c8:	00700e93          	li	t4,7
    800086cc:	00859713          	slli	a4,a1,0x8
    800086d0:	00e5e733          	or	a4,a1,a4
    800086d4:	01059e13          	slli	t3,a1,0x10
    800086d8:	01c76e33          	or	t3,a4,t3
    800086dc:	01859313          	slli	t1,a1,0x18
    800086e0:	006e6333          	or	t1,t3,t1
    800086e4:	02059893          	slli	a7,a1,0x20
    800086e8:	40f60e3b          	subw	t3,a2,a5
    800086ec:	011368b3          	or	a7,t1,a7
    800086f0:	02859813          	slli	a6,a1,0x28
    800086f4:	0108e833          	or	a6,a7,a6
    800086f8:	03059693          	slli	a3,a1,0x30
    800086fc:	003e589b          	srliw	a7,t3,0x3
    80008700:	00d866b3          	or	a3,a6,a3
    80008704:	03859713          	slli	a4,a1,0x38
    80008708:	00389813          	slli	a6,a7,0x3
    8000870c:	00f507b3          	add	a5,a0,a5
    80008710:	00e6e733          	or	a4,a3,a4
    80008714:	000e089b          	sext.w	a7,t3
    80008718:	00f806b3          	add	a3,a6,a5
    8000871c:	00e7b023          	sd	a4,0(a5)
    80008720:	00878793          	addi	a5,a5,8
    80008724:	fed79ce3          	bne	a5,a3,8000871c <__memset+0xd4>
    80008728:	ff8e7793          	andi	a5,t3,-8
    8000872c:	0007871b          	sext.w	a4,a5
    80008730:	01d787bb          	addw	a5,a5,t4
    80008734:	0ce88e63          	beq	a7,a4,80008810 <__memset+0x1c8>
    80008738:	00f50733          	add	a4,a0,a5
    8000873c:	00b70023          	sb	a1,0(a4)
    80008740:	0017871b          	addiw	a4,a5,1
    80008744:	0cc77663          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    80008748:	00e50733          	add	a4,a0,a4
    8000874c:	00b70023          	sb	a1,0(a4)
    80008750:	0027871b          	addiw	a4,a5,2
    80008754:	0ac77e63          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    80008758:	00e50733          	add	a4,a0,a4
    8000875c:	00b70023          	sb	a1,0(a4)
    80008760:	0037871b          	addiw	a4,a5,3
    80008764:	0ac77663          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    80008768:	00e50733          	add	a4,a0,a4
    8000876c:	00b70023          	sb	a1,0(a4)
    80008770:	0047871b          	addiw	a4,a5,4
    80008774:	08c77e63          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    80008778:	00e50733          	add	a4,a0,a4
    8000877c:	00b70023          	sb	a1,0(a4)
    80008780:	0057871b          	addiw	a4,a5,5
    80008784:	08c77663          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    80008788:	00e50733          	add	a4,a0,a4
    8000878c:	00b70023          	sb	a1,0(a4)
    80008790:	0067871b          	addiw	a4,a5,6
    80008794:	06c77e63          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    80008798:	00e50733          	add	a4,a0,a4
    8000879c:	00b70023          	sb	a1,0(a4)
    800087a0:	0077871b          	addiw	a4,a5,7
    800087a4:	06c77663          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    800087a8:	00e50733          	add	a4,a0,a4
    800087ac:	00b70023          	sb	a1,0(a4)
    800087b0:	0087871b          	addiw	a4,a5,8
    800087b4:	04c77e63          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    800087b8:	00e50733          	add	a4,a0,a4
    800087bc:	00b70023          	sb	a1,0(a4)
    800087c0:	0097871b          	addiw	a4,a5,9
    800087c4:	04c77663          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    800087c8:	00e50733          	add	a4,a0,a4
    800087cc:	00b70023          	sb	a1,0(a4)
    800087d0:	00a7871b          	addiw	a4,a5,10
    800087d4:	02c77e63          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    800087d8:	00e50733          	add	a4,a0,a4
    800087dc:	00b70023          	sb	a1,0(a4)
    800087e0:	00b7871b          	addiw	a4,a5,11
    800087e4:	02c77663          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    800087e8:	00e50733          	add	a4,a0,a4
    800087ec:	00b70023          	sb	a1,0(a4)
    800087f0:	00c7871b          	addiw	a4,a5,12
    800087f4:	00c77e63          	bgeu	a4,a2,80008810 <__memset+0x1c8>
    800087f8:	00e50733          	add	a4,a0,a4
    800087fc:	00b70023          	sb	a1,0(a4)
    80008800:	00d7879b          	addiw	a5,a5,13
    80008804:	00c7f663          	bgeu	a5,a2,80008810 <__memset+0x1c8>
    80008808:	00f507b3          	add	a5,a0,a5
    8000880c:	00b78023          	sb	a1,0(a5)
    80008810:	00813403          	ld	s0,8(sp)
    80008814:	01010113          	addi	sp,sp,16
    80008818:	00008067          	ret
    8000881c:	00b00693          	li	a3,11
    80008820:	e55ff06f          	j	80008674 <__memset+0x2c>
    80008824:	00300e93          	li	t4,3
    80008828:	ea5ff06f          	j	800086cc <__memset+0x84>
    8000882c:	00100e93          	li	t4,1
    80008830:	e9dff06f          	j	800086cc <__memset+0x84>
    80008834:	00000e93          	li	t4,0
    80008838:	e95ff06f          	j	800086cc <__memset+0x84>
    8000883c:	00000793          	li	a5,0
    80008840:	ef9ff06f          	j	80008738 <__memset+0xf0>
    80008844:	00200e93          	li	t4,2
    80008848:	e85ff06f          	j	800086cc <__memset+0x84>
    8000884c:	00400e93          	li	t4,4
    80008850:	e7dff06f          	j	800086cc <__memset+0x84>
    80008854:	00500e93          	li	t4,5
    80008858:	e75ff06f          	j	800086cc <__memset+0x84>
    8000885c:	00600e93          	li	t4,6
    80008860:	e6dff06f          	j	800086cc <__memset+0x84>

0000000080008864 <__memmove>:
    80008864:	ff010113          	addi	sp,sp,-16
    80008868:	00813423          	sd	s0,8(sp)
    8000886c:	01010413          	addi	s0,sp,16
    80008870:	0e060863          	beqz	a2,80008960 <__memmove+0xfc>
    80008874:	fff6069b          	addiw	a3,a2,-1
    80008878:	0006881b          	sext.w	a6,a3
    8000887c:	0ea5e863          	bltu	a1,a0,8000896c <__memmove+0x108>
    80008880:	00758713          	addi	a4,a1,7
    80008884:	00a5e7b3          	or	a5,a1,a0
    80008888:	40a70733          	sub	a4,a4,a0
    8000888c:	0077f793          	andi	a5,a5,7
    80008890:	00f73713          	sltiu	a4,a4,15
    80008894:	00174713          	xori	a4,a4,1
    80008898:	0017b793          	seqz	a5,a5
    8000889c:	00e7f7b3          	and	a5,a5,a4
    800088a0:	10078863          	beqz	a5,800089b0 <__memmove+0x14c>
    800088a4:	00900793          	li	a5,9
    800088a8:	1107f463          	bgeu	a5,a6,800089b0 <__memmove+0x14c>
    800088ac:	0036581b          	srliw	a6,a2,0x3
    800088b0:	fff8081b          	addiw	a6,a6,-1
    800088b4:	02081813          	slli	a6,a6,0x20
    800088b8:	01d85893          	srli	a7,a6,0x1d
    800088bc:	00858813          	addi	a6,a1,8
    800088c0:	00058793          	mv	a5,a1
    800088c4:	00050713          	mv	a4,a0
    800088c8:	01088833          	add	a6,a7,a6
    800088cc:	0007b883          	ld	a7,0(a5)
    800088d0:	00878793          	addi	a5,a5,8
    800088d4:	00870713          	addi	a4,a4,8
    800088d8:	ff173c23          	sd	a7,-8(a4)
    800088dc:	ff0798e3          	bne	a5,a6,800088cc <__memmove+0x68>
    800088e0:	ff867713          	andi	a4,a2,-8
    800088e4:	02071793          	slli	a5,a4,0x20
    800088e8:	0207d793          	srli	a5,a5,0x20
    800088ec:	00f585b3          	add	a1,a1,a5
    800088f0:	40e686bb          	subw	a3,a3,a4
    800088f4:	00f507b3          	add	a5,a0,a5
    800088f8:	06e60463          	beq	a2,a4,80008960 <__memmove+0xfc>
    800088fc:	0005c703          	lbu	a4,0(a1)
    80008900:	00e78023          	sb	a4,0(a5)
    80008904:	04068e63          	beqz	a3,80008960 <__memmove+0xfc>
    80008908:	0015c603          	lbu	a2,1(a1)
    8000890c:	00100713          	li	a4,1
    80008910:	00c780a3          	sb	a2,1(a5)
    80008914:	04e68663          	beq	a3,a4,80008960 <__memmove+0xfc>
    80008918:	0025c603          	lbu	a2,2(a1)
    8000891c:	00200713          	li	a4,2
    80008920:	00c78123          	sb	a2,2(a5)
    80008924:	02e68e63          	beq	a3,a4,80008960 <__memmove+0xfc>
    80008928:	0035c603          	lbu	a2,3(a1)
    8000892c:	00300713          	li	a4,3
    80008930:	00c781a3          	sb	a2,3(a5)
    80008934:	02e68663          	beq	a3,a4,80008960 <__memmove+0xfc>
    80008938:	0045c603          	lbu	a2,4(a1)
    8000893c:	00400713          	li	a4,4
    80008940:	00c78223          	sb	a2,4(a5)
    80008944:	00e68e63          	beq	a3,a4,80008960 <__memmove+0xfc>
    80008948:	0055c603          	lbu	a2,5(a1)
    8000894c:	00500713          	li	a4,5
    80008950:	00c782a3          	sb	a2,5(a5)
    80008954:	00e68663          	beq	a3,a4,80008960 <__memmove+0xfc>
    80008958:	0065c703          	lbu	a4,6(a1)
    8000895c:	00e78323          	sb	a4,6(a5)
    80008960:	00813403          	ld	s0,8(sp)
    80008964:	01010113          	addi	sp,sp,16
    80008968:	00008067          	ret
    8000896c:	02061713          	slli	a4,a2,0x20
    80008970:	02075713          	srli	a4,a4,0x20
    80008974:	00e587b3          	add	a5,a1,a4
    80008978:	f0f574e3          	bgeu	a0,a5,80008880 <__memmove+0x1c>
    8000897c:	02069613          	slli	a2,a3,0x20
    80008980:	02065613          	srli	a2,a2,0x20
    80008984:	fff64613          	not	a2,a2
    80008988:	00e50733          	add	a4,a0,a4
    8000898c:	00c78633          	add	a2,a5,a2
    80008990:	fff7c683          	lbu	a3,-1(a5)
    80008994:	fff78793          	addi	a5,a5,-1
    80008998:	fff70713          	addi	a4,a4,-1
    8000899c:	00d70023          	sb	a3,0(a4)
    800089a0:	fec798e3          	bne	a5,a2,80008990 <__memmove+0x12c>
    800089a4:	00813403          	ld	s0,8(sp)
    800089a8:	01010113          	addi	sp,sp,16
    800089ac:	00008067          	ret
    800089b0:	02069713          	slli	a4,a3,0x20
    800089b4:	02075713          	srli	a4,a4,0x20
    800089b8:	00170713          	addi	a4,a4,1
    800089bc:	00e50733          	add	a4,a0,a4
    800089c0:	00050793          	mv	a5,a0
    800089c4:	0005c683          	lbu	a3,0(a1)
    800089c8:	00178793          	addi	a5,a5,1
    800089cc:	00158593          	addi	a1,a1,1
    800089d0:	fed78fa3          	sb	a3,-1(a5)
    800089d4:	fee798e3          	bne	a5,a4,800089c4 <__memmove+0x160>
    800089d8:	f89ff06f          	j	80008960 <__memmove+0xfc>

00000000800089dc <__putc>:
    800089dc:	fe010113          	addi	sp,sp,-32
    800089e0:	00813823          	sd	s0,16(sp)
    800089e4:	00113c23          	sd	ra,24(sp)
    800089e8:	02010413          	addi	s0,sp,32
    800089ec:	00050793          	mv	a5,a0
    800089f0:	fef40593          	addi	a1,s0,-17
    800089f4:	00100613          	li	a2,1
    800089f8:	00000513          	li	a0,0
    800089fc:	fef407a3          	sb	a5,-17(s0)
    80008a00:	fffff097          	auipc	ra,0xfffff
    80008a04:	b3c080e7          	jalr	-1220(ra) # 8000753c <console_write>
    80008a08:	01813083          	ld	ra,24(sp)
    80008a0c:	01013403          	ld	s0,16(sp)
    80008a10:	02010113          	addi	sp,sp,32
    80008a14:	00008067          	ret

0000000080008a18 <__getc>:
    80008a18:	fe010113          	addi	sp,sp,-32
    80008a1c:	00813823          	sd	s0,16(sp)
    80008a20:	00113c23          	sd	ra,24(sp)
    80008a24:	02010413          	addi	s0,sp,32
    80008a28:	fe840593          	addi	a1,s0,-24
    80008a2c:	00100613          	li	a2,1
    80008a30:	00000513          	li	a0,0
    80008a34:	fffff097          	auipc	ra,0xfffff
    80008a38:	ae8080e7          	jalr	-1304(ra) # 8000751c <console_read>
    80008a3c:	fe844503          	lbu	a0,-24(s0)
    80008a40:	01813083          	ld	ra,24(sp)
    80008a44:	01013403          	ld	s0,16(sp)
    80008a48:	02010113          	addi	sp,sp,32
    80008a4c:	00008067          	ret

0000000080008a50 <console_handler>:
    80008a50:	fe010113          	addi	sp,sp,-32
    80008a54:	00813823          	sd	s0,16(sp)
    80008a58:	00113c23          	sd	ra,24(sp)
    80008a5c:	00913423          	sd	s1,8(sp)
    80008a60:	02010413          	addi	s0,sp,32
    80008a64:	14202773          	csrr	a4,scause
    80008a68:	100027f3          	csrr	a5,sstatus
    80008a6c:	0027f793          	andi	a5,a5,2
    80008a70:	06079e63          	bnez	a5,80008aec <console_handler+0x9c>
    80008a74:	00074c63          	bltz	a4,80008a8c <console_handler+0x3c>
    80008a78:	01813083          	ld	ra,24(sp)
    80008a7c:	01013403          	ld	s0,16(sp)
    80008a80:	00813483          	ld	s1,8(sp)
    80008a84:	02010113          	addi	sp,sp,32
    80008a88:	00008067          	ret
    80008a8c:	0ff77713          	andi	a4,a4,255
    80008a90:	00900793          	li	a5,9
    80008a94:	fef712e3          	bne	a4,a5,80008a78 <console_handler+0x28>
    80008a98:	ffffe097          	auipc	ra,0xffffe
    80008a9c:	6dc080e7          	jalr	1756(ra) # 80007174 <plic_claim>
    80008aa0:	00a00793          	li	a5,10
    80008aa4:	00050493          	mv	s1,a0
    80008aa8:	02f50c63          	beq	a0,a5,80008ae0 <console_handler+0x90>
    80008aac:	fc0506e3          	beqz	a0,80008a78 <console_handler+0x28>
    80008ab0:	00050593          	mv	a1,a0
    80008ab4:	00001517          	auipc	a0,0x1
    80008ab8:	a2c50513          	addi	a0,a0,-1492 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80008abc:	fffff097          	auipc	ra,0xfffff
    80008ac0:	afc080e7          	jalr	-1284(ra) # 800075b8 <__printf>
    80008ac4:	01013403          	ld	s0,16(sp)
    80008ac8:	01813083          	ld	ra,24(sp)
    80008acc:	00048513          	mv	a0,s1
    80008ad0:	00813483          	ld	s1,8(sp)
    80008ad4:	02010113          	addi	sp,sp,32
    80008ad8:	ffffe317          	auipc	t1,0xffffe
    80008adc:	6d430067          	jr	1748(t1) # 800071ac <plic_complete>
    80008ae0:	fffff097          	auipc	ra,0xfffff
    80008ae4:	3e0080e7          	jalr	992(ra) # 80007ec0 <uartintr>
    80008ae8:	fddff06f          	j	80008ac4 <console_handler+0x74>
    80008aec:	00001517          	auipc	a0,0x1
    80008af0:	af450513          	addi	a0,a0,-1292 # 800095e0 <digits+0x78>
    80008af4:	fffff097          	auipc	ra,0xfffff
    80008af8:	a68080e7          	jalr	-1432(ra) # 8000755c <panic>
	...
