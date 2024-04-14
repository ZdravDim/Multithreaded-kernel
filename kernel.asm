
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	99813103          	ld	sp,-1640(sp) # 80005998 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6f9010ef          	jal	ra,80001f14 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5RiscV14push_registersEv>:
.global _ZN5RiscV14push_registersEv
.type _ZN5RiscV14push_registersEv, @function
_ZN5RiscV14push_registersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
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
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)
    ret
    80001084:	00008067          	ret

0000000080001088 <_ZN5RiscV13pop_registersEv>:
.global _ZN5RiscV13pop_registersEv
.type _ZN5RiscV13pop_registersEv, @function
_ZN5RiscV13pop_registersEv:
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256
    8000110c:	00008067          	ret

0000000080001110 <_ZN3TCB14context_switchEv>:
.global _ZN3TCB14context_switchEv
.type _ZN3TCB14context_switchEv, @function
_ZN3TCB14context_switchEv:
	sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
	sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

	ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <_Z7syscallmmmmm>:
#include "../h/syscall_c.hpp"
#include "../h/memory_allocator.hpp"
#include "../lib/hw.h"

void syscall(uint64 syscall_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    80001124:	ff010113          	addi	sp,sp,-16
    80001128:	00813423          	sd	s0,8(sp)
    8000112c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001130:	00000073          	ecall
}
    80001134:	00813403          	ld	s0,8(sp)
    80001138:	01010113          	addi	sp,sp,16
    8000113c:	00008067          	ret

0000000080001140 <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size == 0) return nullptr;
    80001140:	04050463          	beqz	a0,80001188 <_Z9mem_allocm+0x48>
void* mem_alloc (size_t size) {
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00113423          	sd	ra,8(sp)
    8000114c:	00813023          	sd	s0,0(sp)
    80001150:	01010413          	addi	s0,sp,16
    size = (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80001154:	05750513          	addi	a0,a0,87
    void volatile *addr;
    syscall(MEM_ALLOC, size);
    80001158:	00000713          	li	a4,0
    8000115c:	00000693          	li	a3,0
    80001160:	00000613          	li	a2,0
    80001164:	fc057593          	andi	a1,a0,-64
    80001168:	00100513          	li	a0,1
    8000116c:	00000097          	auipc	ra,0x0
    80001170:	fb8080e7          	jalr	-72(ra) # 80001124 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(addr));
    80001174:	00050513          	mv	a0,a0
    return (void*) addr;
}
    80001178:	00813083          	ld	ra,8(sp)
    8000117c:	00013403          	ld	s0,0(sp)
    80001180:	01010113          	addi	sp,sp,16
    80001184:	00008067          	ret
    if (size == 0) return nullptr;
    80001188:	00000513          	li	a0,0
}
    8000118c:	00008067          	ret

0000000080001190 <_Z8mem_freePv>:

int mem_free (void* addr) {
    80001190:	fe010113          	addi	sp,sp,-32
    80001194:	00113c23          	sd	ra,24(sp)
    80001198:	00813823          	sd	s0,16(sp)
    8000119c:	02010413          	addi	s0,sp,32
    800011a0:	00050593          	mv	a1,a0
    int volatile success;
    syscall(MEM_FREE, (uint64) addr);
    800011a4:	00000713          	li	a4,0
    800011a8:	00000693          	li	a3,0
    800011ac:	00000613          	li	a2,0
    800011b0:	00200513          	li	a0,2
    800011b4:	00000097          	auipc	ra,0x0
    800011b8:	f70080e7          	jalr	-144(ra) # 80001124 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(success));
    800011bc:	00050793          	mv	a5,a0
    800011c0:	fef42623          	sw	a5,-20(s0)
    return success;
    800011c4:	fec42503          	lw	a0,-20(s0)
}
    800011c8:	0005051b          	sext.w	a0,a0
    800011cc:	01813083          	ld	ra,24(sp)
    800011d0:	01013403          	ld	s0,16(sp)
    800011d4:	02010113          	addi	sp,sp,32
    800011d8:	00008067          	ret

00000000800011dc <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    800011dc:	fc010113          	addi	sp,sp,-64
    800011e0:	02113c23          	sd	ra,56(sp)
    800011e4:	02813823          	sd	s0,48(sp)
    800011e8:	02913423          	sd	s1,40(sp)
    800011ec:	03213023          	sd	s2,32(sp)
    800011f0:	01313c23          	sd	s3,24(sp)
    800011f4:	04010413          	addi	s0,sp,64
    800011f8:	00050913          	mv	s2,a0
    800011fc:	00058493          	mv	s1,a1
    80001200:	00060993          	mv	s3,a2
    void* stack_space = nullptr;
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001204:	04058c63          	beqz	a1,8000125c <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    80001208:	00001537          	lui	a0,0x1
    8000120c:	00000097          	auipc	ra,0x0
    80001210:	f34080e7          	jalr	-204(ra) # 80001140 <_Z9mem_allocm>
    80001214:	00050713          	mv	a4,a0
    int volatile status;
    syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
    80001218:	00098693          	mv	a3,s3
    8000121c:	00048613          	mv	a2,s1
    80001220:	00090593          	mv	a1,s2
    80001224:	01100513          	li	a0,17
    80001228:	00000097          	auipc	ra,0x0
    8000122c:	efc080e7          	jalr	-260(ra) # 80001124 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    80001230:	00050793          	mv	a5,a0
    80001234:	fcf42623          	sw	a5,-52(s0)
    return status;
    80001238:	fcc42503          	lw	a0,-52(s0)
}
    8000123c:	0005051b          	sext.w	a0,a0
    80001240:	03813083          	ld	ra,56(sp)
    80001244:	03013403          	ld	s0,48(sp)
    80001248:	02813483          	ld	s1,40(sp)
    8000124c:	02013903          	ld	s2,32(sp)
    80001250:	01813983          	ld	s3,24(sp)
    80001254:	04010113          	addi	sp,sp,64
    80001258:	00008067          	ret
    void* stack_space = nullptr;
    8000125c:	00000713          	li	a4,0
    80001260:	fb9ff06f          	j	80001218 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

0000000080001264 <_Z11thread_exitv>:

int thread_exit () {
    80001264:	fe010113          	addi	sp,sp,-32
    80001268:	00113c23          	sd	ra,24(sp)
    8000126c:	00813823          	sd	s0,16(sp)
    80001270:	02010413          	addi	s0,sp,32
    int volatile status;
    syscall(THREAD_EXIT);
    80001274:	00000713          	li	a4,0
    80001278:	00000693          	li	a3,0
    8000127c:	00000613          	li	a2,0
    80001280:	00000593          	li	a1,0
    80001284:	01200513          	li	a0,18
    80001288:	00000097          	auipc	ra,0x0
    8000128c:	e9c080e7          	jalr	-356(ra) # 80001124 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    80001290:	00050793          	mv	a5,a0
    80001294:	fef42623          	sw	a5,-20(s0)
    return status;
    80001298:	fec42503          	lw	a0,-20(s0)
    8000129c:	0005051b          	sext.w	a0,a0
    800012a0:	01813083          	ld	ra,24(sp)
    800012a4:	01013403          	ld	s0,16(sp)
    800012a8:	02010113          	addi	sp,sp,32
    800012ac:	00008067          	ret

00000000800012b0 <main>:
#include "../lib/console.h"
#include "../h/memory_allocator.hpp"

int main() {
    800012b0:	ff010113          	addi	sp,sp,-16
    800012b4:	00113423          	sd	ra,8(sp)
    800012b8:	00813023          	sd	s0,0(sp)
    800012bc:	01010413          	addi	s0,sp,16
    __putc('?');
    800012c0:	03f00513          	li	a0,63
    800012c4:	00003097          	auipc	ra,0x3
    800012c8:	d18080e7          	jalr	-744(ra) # 80003fdc <__putc>
    __putc('\n');
    800012cc:	00a00513          	li	a0,10
    800012d0:	00003097          	auipc	ra,0x3
    800012d4:	d0c080e7          	jalr	-756(ra) # 80003fdc <__putc>
    MemoryAllocator::getInstance();
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	520080e7          	jalr	1312(ra) # 800017f8 <_ZN15MemoryAllocator11getInstanceEv>
    MemoryAllocator::mem_alloc(1);
    800012e0:	00100513          	li	a0,1
    800012e4:	00000097          	auipc	ra,0x0
    800012e8:	3f8080e7          	jalr	1016(ra) # 800016dc <_ZN15MemoryAllocator9mem_allocEm>
    MemoryAllocator::print();
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	748080e7          	jalr	1864(ra) # 80001a34 <_ZN15MemoryAllocator5printEv>
    MemoryAllocator::mem_free((void*)(1 * MEM_BLOCK_SIZE + sizeof(MemoryAllocator::MemSeg) + (char*)HEAP_START_ADDR));
    800012f4:	00004797          	auipc	a5,0x4
    800012f8:	69c7b783          	ld	a5,1692(a5) # 80005990 <_GLOBAL_OFFSET_TABLE_+0x8>
    800012fc:	0007b503          	ld	a0,0(a5)
    80001300:	05850513          	addi	a0,a0,88 # 1058 <_entry-0x7fffefa8>
    80001304:	00000097          	auipc	ra,0x0
    80001308:	5c4080e7          	jalr	1476(ra) # 800018c8 <_ZN15MemoryAllocator8mem_freeEPv>
    MemoryAllocator::print();
    8000130c:	00000097          	auipc	ra,0x0
    80001310:	728080e7          	jalr	1832(ra) # 80001a34 <_ZN15MemoryAllocator5printEv>
    return 0;
    80001314:	00000513          	li	a0,0
    80001318:	00813083          	ld	ra,8(sp)
    8000131c:	00013403          	ld	s0,0(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <_ZN3TCB16wrapper_functionEv>:
    running -> set_status(Status::FINISHED);
    //...
    dispatch();
}

void TCB::wrapper_function() {
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00813423          	sd	s0,8(sp)
    80001330:	01010413          	addi	s0,sp,16
    //...
}
    80001334:	00813403          	ld	s0,8(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_ZN3TCBC1EPFvPvES0_S0_7Context>:
TCB::TCB(void (*function_body)(void *), void *arg, void *stack_space, Context context) {
    80001340:	fd010113          	addi	sp,sp,-48
    80001344:	02113423          	sd	ra,40(sp)
    80001348:	02813023          	sd	s0,32(sp)
    8000134c:	00913c23          	sd	s1,24(sp)
    80001350:	03010413          	addi	s0,sp,48
    80001354:	00050493          	mv	s1,a0
    id = cnt++;
    80001358:	00004517          	auipc	a0,0x4
    8000135c:	69850513          	addi	a0,a0,1688 # 800059f0 <_ZN3TCB3cntE>
    80001360:	00052683          	lw	a3,0(a0)
    80001364:	0016881b          	addiw	a6,a3,1
    80001368:	01052023          	sw	a6,0(a0)
    8000136c:	00d4a023          	sw	a3,0(s1)
    status = RUNNABLE;
    80001370:	0004ac23          	sw	zero,24(s1)
    this -> context = context;
    80001374:	00e4b423          	sd	a4,8(s1)
    80001378:	00f4b823          	sd	a5,16(s1)
    this -> function_body = function_body;
    8000137c:	02b4b023          	sd	a1,32(s1)
    this -> arg = arg;
    80001380:	02c4b423          	sd	a2,40(s1)
    stack = MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    80001384:	00001537          	lui	a0,0x1
    80001388:	00000097          	auipc	ra,0x0
    8000138c:	354080e7          	jalr	852(ra) # 800016dc <_ZN15MemoryAllocator9mem_allocEm>
    80001390:	02a4b823          	sd	a0,48(s1)
    time_slice = DEFAULT_TIME_SLICE;
    80001394:	00200793          	li	a5,2
    80001398:	02f4bc23          	sd	a5,56(s1)
    next_ready = nullptr;
    8000139c:	0404b023          	sd	zero,64(s1)
    time_to_sleep = 0;
    800013a0:	0404b423          	sd	zero,72(s1)
    next_sleeping = nullptr;
    800013a4:	0404b823          	sd	zero,80(s1)
}
    800013a8:	02813083          	ld	ra,40(sp)
    800013ac:	02013403          	ld	s0,32(sp)
    800013b0:	01813483          	ld	s1,24(sp)
    800013b4:	03010113          	addi	sp,sp,48
    800013b8:	00008067          	ret

00000000800013bc <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB *old_running, TCB *new_running) {
    800013bc:	ff010113          	addi	sp,sp,-16
    800013c0:	00113423          	sd	ra,8(sp)
    800013c4:	00813023          	sd	s0,0(sp)
    800013c8:	01010413          	addi	s0,sp,16
    RiscV::push_registers();
    800013cc:	00000097          	auipc	ra,0x0
    800013d0:	c34080e7          	jalr	-972(ra) # 80001000 <_ZN5RiscV14push_registersEv>
    //...
    RiscV::pop_registers();
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	cb4080e7          	jalr	-844(ra) # 80001088 <_ZN5RiscV13pop_registersEv>
}
    800013dc:	00813083          	ld	ra,8(sp)
    800013e0:	00013403          	ld	s0,0(sp)
    800013e4:	01010113          	addi	sp,sp,16
    800013e8:	00008067          	ret

00000000800013ec <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800013ec:	ff010113          	addi	sp,sp,-16
    800013f0:	00813423          	sd	s0,8(sp)
    800013f4:	01010413          	addi	s0,sp,16
    //...
}
    800013f8:	00813403          	ld	s0,8(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00813423          	sd	s0,8(sp)
    8000140c:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001410:	04b53023          	sd	a1,64(a0) # 1040 <_entry-0x7fffefc0>
}
    80001414:	00813403          	ld	s0,8(sp)
    80001418:	01010113          	addi	sp,sp,16
    8000141c:	00008067          	ret

0000000080001420 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00813423          	sd	s0,8(sp)
    80001428:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    8000142c:	04b53823          	sd	a1,80(a0)
}
    80001430:	00813403          	ld	s0,8(sp)
    80001434:	01010113          	addi	sp,sp,16
    80001438:	00008067          	ret

000000008000143c <_ZN3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() {
    8000143c:	ff010113          	addi	sp,sp,-16
    80001440:	00813423          	sd	s0,8(sp)
    80001444:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80001448:	05053503          	ld	a0,80(a0)
    8000144c:	00813403          	ld	s0,8(sp)
    80001450:	01010113          	addi	sp,sp,16
    80001454:	00008067          	ret

0000000080001458 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80001458:	ff010113          	addi	sp,sp,-16
    8000145c:	00813423          	sd	s0,8(sp)
    80001460:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80001464:	04b53423          	sd	a1,72(a0)
}
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_ZN3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() {
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80001480:	04853503          	ld	a0,72(a0)
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status status) {
    80001490:	ff010113          	addi	sp,sp,-16
    80001494:	00813423          	sd	s0,8(sp)
    80001498:	01010413          	addi	s0,sp,16
    this -> status = status;
    8000149c:	00b52c23          	sw	a1,24(a0)
}
    800014a0:	00813403          	ld	s0,8(sp)
    800014a4:	01010113          	addi	sp,sp,16
    800014a8:	00008067          	ret

00000000800014ac <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00113423          	sd	ra,8(sp)
    800014b4:	00813023          	sd	s0,0(sp)
    800014b8:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    800014bc:	00400593          	li	a1,4
    800014c0:	00004517          	auipc	a0,0x4
    800014c4:	53853503          	ld	a0,1336(a0) # 800059f8 <_ZN3TCB7runningE>
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	fc8080e7          	jalr	-56(ra) # 80001490 <_ZN3TCB10set_statusENS_6StatusE>
}
    800014d0:	00813083          	ld	ra,8(sp)
    800014d4:	00013403          	ld	s0,0(sp)
    800014d8:	01010113          	addi	sp,sp,16
    800014dc:	00008067          	ret

00000000800014e0 <_ZN3TCB5startEv>:

void TCB::start() {
    800014e0:	fe010113          	addi	sp,sp,-32
    800014e4:	00113c23          	sd	ra,24(sp)
    800014e8:	00813823          	sd	s0,16(sp)
    800014ec:	00913423          	sd	s1,8(sp)
    800014f0:	02010413          	addi	s0,sp,32
    800014f4:	00050493          	mv	s1,a0
    Scheduler::put(this);
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	5bc080e7          	jalr	1468(ra) # 80001ab4 <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    80001500:	00004797          	auipc	a5,0x4
    80001504:	4f87b783          	ld	a5,1272(a5) # 800059f8 <_ZN3TCB7runningE>
    80001508:	00078c63          	beqz	a5,80001520 <_ZN3TCB5startEv+0x40>
}
    8000150c:	01813083          	ld	ra,24(sp)
    80001510:	01013403          	ld	s0,16(sp)
    80001514:	00813483          	ld	s1,8(sp)
    80001518:	02010113          	addi	sp,sp,32
    8000151c:	00008067          	ret
    if (!running) running = this;
    80001520:	00004797          	auipc	a5,0x4
    80001524:	4c97bc23          	sd	s1,1240(a5) # 800059f8 <_ZN3TCB7runningE>
}
    80001528:	fe5ff06f          	j	8000150c <_ZN3TCB5startEv+0x2c>

000000008000152c <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    8000152c:	ff010113          	addi	sp,sp,-16
    80001530:	00113423          	sd	ra,8(sp)
    80001534:	00813023          	sd	s0,0(sp)
    80001538:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	1a0080e7          	jalr	416(ra) # 800016dc <_ZN15MemoryAllocator9mem_allocEm>
}
    80001544:	00813083          	ld	ra,8(sp)
    80001548:	00013403          	ld	s0,0(sp)
    8000154c:	01010113          	addi	sp,sp,16
    80001550:	00008067          	ret

0000000080001554 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00113423          	sd	ra,8(sp)
    8000155c:	00813023          	sd	s0,0(sp)
    80001560:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001564:	00000097          	auipc	ra,0x0
    80001568:	364080e7          	jalr	868(ra) # 800018c8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000156c:	00813083          	ld	ra,8(sp)
    80001570:	00013403          	ld	s0,0(sp)
    80001574:	01010113          	addi	sp,sp,16
    80001578:	00008067          	ret

000000008000157c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_space) {
    8000157c:	fa010113          	addi	sp,sp,-96
    80001580:	04113c23          	sd	ra,88(sp)
    80001584:	04813823          	sd	s0,80(sp)
    80001588:	04913423          	sd	s1,72(sp)
    8000158c:	05213023          	sd	s2,64(sp)
    80001590:	03313c23          	sd	s3,56(sp)
    80001594:	03413823          	sd	s4,48(sp)
    80001598:	03513423          	sd	s5,40(sp)
    8000159c:	06010413          	addi	s0,sp,96
    800015a0:	00050993          	mv	s3,a0
    800015a4:	00058a13          	mv	s4,a1
    800015a8:	00060a93          	mv	s5,a2
    800015ac:	00068913          	mv	s2,a3
    Context context = {
    800015b0:	00000717          	auipc	a4,0x0
    800015b4:	d7870713          	addi	a4,a4,-648 # 80001328 <_ZN3TCB16wrapper_functionEv>
    800015b8:	fae43023          	sd	a4,-96(s0)
            (uint64) stack_space + DEFAULT_STACK_SIZE - 1
    800015bc:	000017b7          	lui	a5,0x1
    800015c0:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800015c4:	00f687b3          	add	a5,a3,a5
    };
    800015c8:	faf43423          	sd	a5,-88(s0)
    *handle = new TCB(start_routine, arg, stack_space, context);
    800015cc:	fae43823          	sd	a4,-80(s0)
    800015d0:	faf43c23          	sd	a5,-72(s0)
    800015d4:	05800513          	li	a0,88
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	f54080e7          	jalr	-172(ra) # 8000152c <_ZN3TCBnwEm>
    800015e0:	00050493          	mv	s1,a0
    800015e4:	fb043703          	ld	a4,-80(s0)
    800015e8:	fb843783          	ld	a5,-72(s0)
    800015ec:	00090693          	mv	a3,s2
    800015f0:	000a8613          	mv	a2,s5
    800015f4:	000a0593          	mv	a1,s4
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	d48080e7          	jalr	-696(ra) # 80001340 <_ZN3TCBC1EPFvPvES0_S0_7Context>
    80001600:	0099b023          	sd	s1,0(s3)
    return (*handle) -> id;
    80001604:	0004a503          	lw	a0,0(s1)
}
    80001608:	05813083          	ld	ra,88(sp)
    8000160c:	05013403          	ld	s0,80(sp)
    80001610:	04813483          	ld	s1,72(sp)
    80001614:	04013903          	ld	s2,64(sp)
    80001618:	03813983          	ld	s3,56(sp)
    8000161c:	03013a03          	ld	s4,48(sp)
    80001620:	02813a83          	ld	s5,40(sp)
    80001624:	06010113          	addi	sp,sp,96
    80001628:	00008067          	ret
    8000162c:	00050913          	mv	s2,a0
    *handle = new TCB(start_routine, arg, stack_space, context);
    80001630:	00048513          	mv	a0,s1
    80001634:	00000097          	auipc	ra,0x0
    80001638:	f20080e7          	jalr	-224(ra) # 80001554 <_ZN3TCBdlEPv>
    8000163c:	00090513          	mv	a0,s2
    80001640:	00005097          	auipc	ra,0x5
    80001644:	4b8080e7          	jalr	1208(ra) # 80006af8 <_Unwind_Resume>

0000000080001648 <_Znwm>:
#include "../h/syscall_cpp.hpp"

void* operator new(size_t size){
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00113423          	sd	ra,8(sp)
    80001650:	00813023          	sd	s0,0(sp)
    80001654:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	ae8080e7          	jalr	-1304(ra) # 80001140 <_Z9mem_allocm>
}
    80001660:	00813083          	ld	ra,8(sp)
    80001664:	00013403          	ld	s0,0(sp)
    80001668:	01010113          	addi	sp,sp,16
    8000166c:	00008067          	ret

0000000080001670 <_ZdlPv>:

void operator delete(void* p){
    80001670:	ff010113          	addi	sp,sp,-16
    80001674:	00113423          	sd	ra,8(sp)
    80001678:	00813023          	sd	s0,0(sp)
    8000167c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001680:	00000097          	auipc	ra,0x0
    80001684:	b10080e7          	jalr	-1264(ra) # 80001190 <_Z8mem_freePv>
    80001688:	00813083          	ld	ra,8(sp)
    8000168c:	00013403          	ld	s0,0(sp)
    80001690:	01010113          	addi	sp,sp,16
    80001694:	00008067          	ret

0000000080001698 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
    }
    return instance;
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80001698:	ff010113          	addi	sp,sp,-16
    8000169c:	00813423          	sd	s0,8(sp)
    800016a0:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    800016a4:	00853783          	ld	a5,8(a0)
    800016a8:	02078463          	beqz	a5,800016d0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    800016ac:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    800016b0:	01053783          	ld	a5,16(a0)
    800016b4:	00078863          	beqz	a5,800016c4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    800016b8:	00060463          	beqz	a2,800016c0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    800016bc:	00853583          	ld	a1,8(a0)
    800016c0:	00b7b423          	sd	a1,8(a5)
}
    800016c4:	00813403          	ld	s0,8(sp)
    800016c8:	01010113          	addi	sp,sp,16
    800016cc:	00008067          	ret
    else freeSegHead = nextSeg;
    800016d0:	00004797          	auipc	a5,0x4
    800016d4:	32b7b823          	sd	a1,816(a5) # 80005a00 <_ZN15MemoryAllocator11freeSegHeadE>
    800016d8:	fd9ff06f          	j	800016b0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

00000000800016dc <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` bytes, rounded up to MEM_BLOCK_SIZE
void *MemoryAllocator::mem_alloc(size_t size) {
    800016dc:	fe010113          	addi	sp,sp,-32
    800016e0:	00113c23          	sd	ra,24(sp)
    800016e4:	00813823          	sd	s0,16(sp)
    800016e8:	00913423          	sd	s1,8(sp)
    800016ec:	01213023          	sd	s2,0(sp)
    800016f0:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800016f4:	0e050e63          	beqz	a0,800017f0 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    800016f8:	00050913          	mv	s2,a0
//    size_t bytesToAllocate = (size + sizeof(MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    size_t bytesToAllocate = size;
    MemSeg *tmp = freeSegHead;
    800016fc:	00004497          	auipc	s1,0x4
    80001700:	3044b483          	ld	s1,772(s1) # 80005a00 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80001704:	0a048e63          	beqz	s1,800017c0 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    80001708:	0004b783          	ld	a5,0(s1)
    8000170c:	0527e463          	bltu	a5,s2,80001754 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80001710:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    80001714:	01700713          	li	a4,23
    80001718:	04f76263          	bltu	a4,a5,8000175c <_ZN15MemoryAllocator9mem_allocEm+0x80>
    8000171c:	00000613          	li	a2,0
    80001720:	0104b583          	ld	a1,16(s1)
    80001724:	00048513          	mv	a0,s1
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	f70080e7          	jalr	-144(ra) # 80001698 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    80001730:	00004797          	auipc	a5,0x4
    80001734:	2d87b783          	ld	a5,728(a5) # 80005a08 <_ZN15MemoryAllocator11usedSegHeadE>
    80001738:	04078863          	beqz	a5,80001788 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    8000173c:	0497fa63          	bgeu	a5,s1,80001790 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80001740:	00078713          	mv	a4,a5
    80001744:	0107b783          	ld	a5,16(a5)
    80001748:	04078663          	beqz	a5,80001794 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    8000174c:	fe97eae3          	bltu	a5,s1,80001740 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80001750:	0440006f          	j	80001794 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80001754:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80001758:	fadff06f          	j	80001704 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    8000175c:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80001760:	0084b703          	ld	a4,8(s1)
    80001764:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80001768:	0104b703          	ld	a4,16(s1)
    8000176c:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80001770:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80001774:	00100613          	li	a2,1
    80001778:	00048513          	mv	a0,s1
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	f1c080e7          	jalr	-228(ra) # 80001698 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80001784:	fadff06f          	j	80001730 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    80001788:	00078713          	mv	a4,a5
    8000178c:	0080006f          	j	80001794 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80001790:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80001794:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80001798:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    8000179c:	04070063          	beqz	a4,800017dc <_ZN15MemoryAllocator9mem_allocEm+0x100>
    800017a0:	01073783          	ld	a5,16(a4)
    800017a4:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    800017a8:	02070e63          	beqz	a4,800017e4 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    800017ac:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    800017b0:	0104b783          	ld	a5,16(s1)
    800017b4:	00078463          	beqz	a5,800017bc <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    800017b8:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    800017bc:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    800017c0:	00048513          	mv	a0,s1
    800017c4:	01813083          	ld	ra,24(sp)
    800017c8:	01013403          	ld	s0,16(sp)
    800017cc:	00813483          	ld	s1,8(sp)
    800017d0:	00013903          	ld	s2,0(sp)
    800017d4:	02010113          	addi	sp,sp,32
    800017d8:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800017dc:	00070793          	mv	a5,a4
    800017e0:	fc5ff06f          	j	800017a4 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    800017e4:	00004797          	auipc	a5,0x4
    800017e8:	2297b223          	sd	s1,548(a5) # 80005a08 <_ZN15MemoryAllocator11usedSegHeadE>
    800017ec:	fc5ff06f          	j	800017b0 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800017f0:	00000493          	li	s1,0
    800017f4:	fcdff06f          	j	800017c0 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800017f8 <_ZN15MemoryAllocator11getInstanceEv>:
    if (!instance) {
    800017f8:	00004517          	auipc	a0,0x4
    800017fc:	21853503          	ld	a0,536(a0) # 80005a10 <_ZN15MemoryAllocator8instanceE>
    80001800:	00050463          	beqz	a0,80001808 <_ZN15MemoryAllocator11getInstanceEv+0x10>
}
    80001804:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    80001808:	fe010113          	addi	sp,sp,-32
    8000180c:	00113c23          	sd	ra,24(sp)
    80001810:	00813823          	sd	s0,16(sp)
    80001814:	00913423          	sd	s1,8(sp)
    80001818:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    8000181c:	00004797          	auipc	a5,0x4
    80001820:	1747b783          	ld	a5,372(a5) # 80005990 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001824:	0007b783          	ld	a5,0(a5)
    80001828:	00004497          	auipc	s1,0x4
    8000182c:	1d848493          	addi	s1,s1,472 # 80005a00 <_ZN15MemoryAllocator11freeSegHeadE>
    80001830:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80001834:	00004717          	auipc	a4,0x4
    80001838:	16c73703          	ld	a4,364(a4) # 800059a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000183c:	00073703          	ld	a4,0(a4)
    80001840:	40f70733          	sub	a4,a4,a5
    80001844:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80001848:	0004b783          	ld	a5,0(s1)
    8000184c:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80001850:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80001854:	00100513          	li	a0,1
    80001858:	00000097          	auipc	ra,0x0
    8000185c:	e84080e7          	jalr	-380(ra) # 800016dc <_ZN15MemoryAllocator9mem_allocEm>
    80001860:	00a4b823          	sd	a0,16(s1)
}
    80001864:	01813083          	ld	ra,24(sp)
    80001868:	01013403          	ld	s0,16(sp)
    8000186c:	00813483          	ld	s1,8(sp)
    80001870:	02010113          	addi	sp,sp,32
    80001874:	00008067          	ret

0000000080001878 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80001878:	ff010113          	addi	sp,sp,-16
    8000187c:	00813423          	sd	s0,8(sp)
    80001880:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80001884:	01053783          	ld	a5,16(a0)
    80001888:	00078863          	beqz	a5,80001898 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    8000188c:	00053703          	ld	a4,0(a0)
    80001890:	00e506b3          	add	a3,a0,a4
    80001894:	00d78863          	beq	a5,a3,800018a4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80001898:	00813403          	ld	s0,8(sp)
    8000189c:	01010113          	addi	sp,sp,16
    800018a0:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    800018a4:	0007b683          	ld	a3,0(a5)
    800018a8:	00d70733          	add	a4,a4,a3
    800018ac:	01870713          	addi	a4,a4,24
    800018b0:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    800018b4:	0107b783          	ld	a5,16(a5)
    800018b8:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    800018bc:	fc078ee3          	beqz	a5,80001898 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800018c0:	00a7b423          	sd	a0,8(a5)
}
    800018c4:	fd5ff06f          	j	80001898 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

00000000800018c8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800018c8:	14050263          	beqz	a0,80001a0c <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    800018cc:	fd010113          	addi	sp,sp,-48
    800018d0:	02113423          	sd	ra,40(sp)
    800018d4:	02813023          	sd	s0,32(sp)
    800018d8:	00913c23          	sd	s1,24(sp)
    800018dc:	01213823          	sd	s2,16(sp)
    800018e0:	01313423          	sd	s3,8(sp)
    800018e4:	03010413          	addi	s0,sp,48
    800018e8:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800018ec:	00004797          	auipc	a5,0x4
    800018f0:	0a47b783          	ld	a5,164(a5) # 80005990 <_GLOBAL_OFFSET_TABLE_+0x8>
    800018f4:	0007b783          	ld	a5,0(a5)
    800018f8:	10f56e63          	bltu	a0,a5,80001a14 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    800018fc:	00004797          	auipc	a5,0x4
    80001900:	0a47b783          	ld	a5,164(a5) # 800059a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001904:	0007b783          	ld	a5,0(a5)
    80001908:	10a7ea63          	bltu	a5,a0,80001a1c <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    8000190c:	00004797          	auipc	a5,0x4
    80001910:	0fc7b783          	ld	a5,252(a5) # 80005a08 <_ZN15MemoryAllocator11usedSegHeadE>
    80001914:	10078863          	beqz	a5,80001a24 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80001918:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    8000191c:	00078863          	beqz	a5,8000192c <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80001920:	08978e63          	beq	a5,s1,800019bc <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001924:	0107b783          	ld	a5,16(a5)
    80001928:	ff5ff06f          	j	8000191c <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    8000192c:	00000793          	li	a5,0
    if (!found) return -3;
    80001930:	0e078e63          	beqz	a5,80001a2c <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    80001934:	00000613          	li	a2,0
    80001938:	ff893583          	ld	a1,-8(s2)
    8000193c:	00048513          	mv	a0,s1
    80001940:	00000097          	auipc	ra,0x0
    80001944:	d58080e7          	jalr	-680(ra) # 80001698 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    80001948:	00004797          	auipc	a5,0x4
    8000194c:	0b87b783          	ld	a5,184(a5) # 80005a00 <_ZN15MemoryAllocator11freeSegHeadE>
    80001950:	06078a63          	beqz	a5,800019c4 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80001954:	08f4e463          	bltu	s1,a5,800019dc <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80001958:	00078993          	mv	s3,a5
    8000195c:	0107b783          	ld	a5,16(a5)
    80001960:	00078463          	beqz	a5,80001968 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80001964:	fe97eae3          	bltu	a5,s1,80001958 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80001968:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    8000196c:	0109b783          	ld	a5,16(s3)
    80001970:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80001974:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80001978:	ff893783          	ld	a5,-8(s2)
    8000197c:	00078463          	beqz	a5,80001984 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80001980:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80001984:	00048513          	mv	a0,s1
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	ef0080e7          	jalr	-272(ra) # 80001878 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80001990:	00098513          	mv	a0,s3
    80001994:	00000097          	auipc	ra,0x0
    80001998:	ee4080e7          	jalr	-284(ra) # 80001878 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    8000199c:	00000513          	li	a0,0
}
    800019a0:	02813083          	ld	ra,40(sp)
    800019a4:	02013403          	ld	s0,32(sp)
    800019a8:	01813483          	ld	s1,24(sp)
    800019ac:	01013903          	ld	s2,16(sp)
    800019b0:	00813983          	ld	s3,8(sp)
    800019b4:	03010113          	addi	sp,sp,48
    800019b8:	00008067          	ret
            found = true;
    800019bc:	00100793          	li	a5,1
    800019c0:	f71ff06f          	j	80001930 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    800019c4:	00004797          	auipc	a5,0x4
    800019c8:	0297be23          	sd	s1,60(a5) # 80005a00 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    800019cc:	fe093c23          	sd	zero,-8(s2)
    800019d0:	fe093823          	sd	zero,-16(s2)
    return 0;
    800019d4:	00000513          	li	a0,0
    800019d8:	fc9ff06f          	j	800019a0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    800019dc:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    800019e0:	00004797          	auipc	a5,0x4
    800019e4:	02078793          	addi	a5,a5,32 # 80005a00 <_ZN15MemoryAllocator11freeSegHeadE>
    800019e8:	0007b703          	ld	a4,0(a5)
    800019ec:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800019f0:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800019f4:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800019f8:	00048513          	mv	a0,s1
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	e7c080e7          	jalr	-388(ra) # 80001878 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001a04:	00000513          	li	a0,0
    80001a08:	f99ff06f          	j	800019a0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001a0c:	fff00513          	li	a0,-1
}
    80001a10:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001a14:	fff00513          	li	a0,-1
    80001a18:	f89ff06f          	j	800019a0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80001a1c:	fff00513          	li	a0,-1
    80001a20:	f81ff06f          	j	800019a0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    80001a24:	ffe00513          	li	a0,-2
    80001a28:	f79ff06f          	j	800019a0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    80001a2c:	ffd00513          	li	a0,-3
    80001a30:	f71ff06f          	j	800019a0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

0000000080001a34 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80001a34:	fe010113          	addi	sp,sp,-32
    80001a38:	00113c23          	sd	ra,24(sp)
    80001a3c:	00813823          	sd	s0,16(sp)
    80001a40:	00913423          	sd	s1,8(sp)
    80001a44:	02010413          	addi	s0,sp,32
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80001a48:	00004497          	auipc	s1,0x4
    80001a4c:	fb84b483          	ld	s1,-72(s1) # 80005a00 <_ZN15MemoryAllocator11freeSegHeadE>
    80001a50:	00048c63          	beqz	s1,80001a68 <_ZN15MemoryAllocator5printEv+0x34>
    80001a54:	06600513          	li	a0,102
    80001a58:	00002097          	auipc	ra,0x2
    80001a5c:	584080e7          	jalr	1412(ra) # 80003fdc <__putc>
    80001a60:	0104b483          	ld	s1,16(s1)
    80001a64:	fedff06f          	j	80001a50 <_ZN15MemoryAllocator5printEv+0x1c>
    __putc('\n');
    80001a68:	00a00513          	li	a0,10
    80001a6c:	00002097          	auipc	ra,0x2
    80001a70:	570080e7          	jalr	1392(ra) # 80003fdc <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80001a74:	00004497          	auipc	s1,0x4
    80001a78:	f944b483          	ld	s1,-108(s1) # 80005a08 <_ZN15MemoryAllocator11usedSegHeadE>
    80001a7c:	00048c63          	beqz	s1,80001a94 <_ZN15MemoryAllocator5printEv+0x60>
    80001a80:	07500513          	li	a0,117
    80001a84:	00002097          	auipc	ra,0x2
    80001a88:	558080e7          	jalr	1368(ra) # 80003fdc <__putc>
    80001a8c:	0104b483          	ld	s1,16(s1)
    80001a90:	fedff06f          	j	80001a7c <_ZN15MemoryAllocator5printEv+0x48>
    __putc('\n');
    80001a94:	00a00513          	li	a0,10
    80001a98:	00002097          	auipc	ra,0x2
    80001a9c:	544080e7          	jalr	1348(ra) # 80003fdc <__putc>
}
    80001aa0:	01813083          	ld	ra,24(sp)
    80001aa4:	01013403          	ld	s0,16(sp)
    80001aa8:	00813483          	ld	s1,8(sp)
    80001aac:	02010113          	addi	sp,sp,32
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80001ab4:	fe010113          	addi	sp,sp,-32
    80001ab8:	00113c23          	sd	ra,24(sp)
    80001abc:	00813823          	sd	s0,16(sp)
    80001ac0:	00913423          	sd	s1,8(sp)
    80001ac4:	02010413          	addi	s0,sp,32
    80001ac8:	00050493          	mv	s1,a0
    if (tail_ready) {
    80001acc:	00004517          	auipc	a0,0x4
    80001ad0:	f4c53503          	ld	a0,-180(a0) # 80005a18 <_ZN9Scheduler10tail_readyE>
    80001ad4:	02051463          	bnez	a0,80001afc <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready->set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    80001ad8:	00004797          	auipc	a5,0x4
    80001adc:	f4078793          	addi	a5,a5,-192 # 80005a18 <_ZN9Scheduler10tail_readyE>
    80001ae0:	0097b023          	sd	s1,0(a5)
    80001ae4:	0097b423          	sd	s1,8(a5)
}
    80001ae8:	01813083          	ld	ra,24(sp)
    80001aec:	01013403          	ld	s0,16(sp)
    80001af0:	00813483          	ld	s1,8(sp)
    80001af4:	02010113          	addi	sp,sp,32
    80001af8:	00008067          	ret
        tail_ready->set_next_ready(thread);
    80001afc:	00048593          	mv	a1,s1
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	904080e7          	jalr	-1788(ra) # 80001404 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80001b08:	00004797          	auipc	a5,0x4
    80001b0c:	f097b823          	sd	s1,-240(a5) # 80005a18 <_ZN9Scheduler10tail_readyE>
        return;
    80001b10:	fd9ff06f          	j	80001ae8 <_ZN9Scheduler3putEP3TCB+0x34>

0000000080001b14 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80001b14:	ff010113          	addi	sp,sp,-16
    80001b18:	00813423          	sd	s0,8(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    return head_ready;
}
    80001b20:	00004517          	auipc	a0,0x4
    80001b24:	f0053503          	ld	a0,-256(a0) # 80005a20 <_ZN9Scheduler10head_readyE>
    80001b28:	00813403          	ld	s0,8(sp)
    80001b2c:	01010113          	addi	sp,sp,16
    80001b30:	00008067          	ret

0000000080001b34 <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    80001b34:	ff010113          	addi	sp,sp,-16
    80001b38:	00113423          	sd	ra,8(sp)
    80001b3c:	00813023          	sd	s0,0(sp)
    80001b40:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	b98080e7          	jalr	-1128(ra) # 800016dc <_ZN15MemoryAllocator9mem_allocEm>
}
    80001b4c:	00813083          	ld	ra,8(sp)
    80001b50:	00013403          	ld	s0,0(sp)
    80001b54:	01010113          	addi	sp,sp,16
    80001b58:	00008067          	ret

0000000080001b5c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *addr) {
    80001b5c:	ff010113          	addi	sp,sp,-16
    80001b60:	00113423          	sd	ra,8(sp)
    80001b64:	00813023          	sd	s0,0(sp)
    80001b68:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	d5c080e7          	jalr	-676(ra) # 800018c8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001b74:	00813083          	ld	ra,8(sp)
    80001b78:	00013403          	ld	s0,0(sp)
    80001b7c:	01010113          	addi	sp,sp,16
    80001b80:	00008067          	ret

0000000080001b84 <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    80001b84:	fc010113          	addi	sp,sp,-64
    80001b88:	02113c23          	sd	ra,56(sp)
    80001b8c:	02813823          	sd	s0,48(sp)
    80001b90:	02913423          	sd	s1,40(sp)
    80001b94:	03213023          	sd	s2,32(sp)
    80001b98:	01313c23          	sd	s3,24(sp)
    80001b9c:	01413823          	sd	s4,16(sp)
    80001ba0:	01513423          	sd	s5,8(sp)
    80001ba4:	04010413          	addi	s0,sp,64
    80001ba8:	00050a93          	mv	s5,a0
    80001bac:	00058993          	mv	s3,a1
    thread -> set_status(TCB::Status::SLEEPING);
    80001bb0:	00100593          	li	a1,1
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	8dc080e7          	jalr	-1828(ra) # 80001490 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    80001bbc:	00004497          	auipc	s1,0x4
    80001bc0:	e6c4b483          	ld	s1,-404(s1) # 80005a28 <_ZN9Scheduler13head_sleepingE>
    80001bc4:	02048e63          	beqz	s1,80001c00 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x7c>
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    80001bc8:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80001bcc:	00000a13          	li	s4,0
    while (tmp) {
    80001bd0:	04048c63          	beqz	s1,80001c28 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
        current_time += tmp -> get_time_to_sleep();
    80001bd4:	00048513          	mv	a0,s1
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	89c080e7          	jalr	-1892(ra) # 80001474 <_ZN3TCB17get_time_to_sleepEv>
    80001be0:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80001be4:	0729e463          	bltu	s3,s2,80001c4c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xc8>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    80001be8:	00048513          	mv	a0,s1
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	850080e7          	jalr	-1968(ra) # 8000143c <_ZN3TCB17get_next_sleepingEv>
        prev = tmp;
    80001bf4:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80001bf8:	00050493          	mv	s1,a0
    while (tmp) {
    80001bfc:	fd5ff06f          	j	80001bd0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x4c>
        head_sleeping = thread;
    80001c00:	00004797          	auipc	a5,0x4
    80001c04:	e357b423          	sd	s5,-472(a5) # 80005a28 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80001c08:	00000593          	li	a1,0
    80001c0c:	000a8513          	mv	a0,s5
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	810080e7          	jalr	-2032(ra) # 80001420 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80001c18:	00098593          	mv	a1,s3
    80001c1c:	000a8513          	mv	a0,s5
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	838080e7          	jalr	-1992(ra) # 80001458 <_ZN3TCB17set_time_to_sleepEm>
    }
}
    80001c28:	03813083          	ld	ra,56(sp)
    80001c2c:	03013403          	ld	s0,48(sp)
    80001c30:	02813483          	ld	s1,40(sp)
    80001c34:	02013903          	ld	s2,32(sp)
    80001c38:	01813983          	ld	s3,24(sp)
    80001c3c:	01013a03          	ld	s4,16(sp)
    80001c40:	00813a83          	ld	s5,8(sp)
    80001c44:	04010113          	addi	sp,sp,64
    80001c48:	00008067          	ret
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
    80001c4c:	000a0a63          	beqz	s4,80001c60 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xdc>
    80001c50:	000a0513          	mv	a0,s4
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	820080e7          	jalr	-2016(ra) # 80001474 <_ZN3TCB17get_time_to_sleepEv>
    80001c5c:	40a989b3          	sub	s3,s3,a0
            thread -> set_time_to_sleep(new_time);
    80001c60:	00098593          	mv	a1,s3
    80001c64:	000a8513          	mv	a0,s5
    80001c68:	fffff097          	auipc	ra,0xfffff
    80001c6c:	7f0080e7          	jalr	2032(ra) # 80001458 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80001c70:	00048593          	mv	a1,s1
    80001c74:	000a8513          	mv	a0,s5
    80001c78:	fffff097          	auipc	ra,0xfffff
    80001c7c:	7a8080e7          	jalr	1960(ra) # 80001420 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80001c80:	040a0c63          	beqz	s4,80001cd8 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x154>
    80001c84:	000a8593          	mv	a1,s5
    80001c88:	000a0513          	mv	a0,s4
    80001c8c:	fffff097          	auipc	ra,0xfffff
    80001c90:	794080e7          	jalr	1940(ra) # 80001420 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80001c94:	00048513          	mv	a0,s1
    80001c98:	fffff097          	auipc	ra,0xfffff
    80001c9c:	7a4080e7          	jalr	1956(ra) # 8000143c <_ZN3TCB17get_next_sleepingEv>
    80001ca0:	00050493          	mv	s1,a0
    80001ca4:	f80482e3          	beqz	s1,80001c28 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80001ca8:	00048513          	mv	a0,s1
    80001cac:	fffff097          	auipc	ra,0xfffff
    80001cb0:	7c8080e7          	jalr	1992(ra) # 80001474 <_ZN3TCB17get_time_to_sleepEv>
    80001cb4:	413505b3          	sub	a1,a0,s3
    80001cb8:	00048513          	mv	a0,s1
    80001cbc:	fffff097          	auipc	ra,0xfffff
    80001cc0:	79c080e7          	jalr	1948(ra) # 80001458 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80001cc4:	00048513          	mv	a0,s1
    80001cc8:	fffff097          	auipc	ra,0xfffff
    80001ccc:	774080e7          	jalr	1908(ra) # 8000143c <_ZN3TCB17get_next_sleepingEv>
    80001cd0:	00050493          	mv	s1,a0
    80001cd4:	fd1ff06f          	j	80001ca4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x120>
            else head_sleeping = thread;
    80001cd8:	00004797          	auipc	a5,0x4
    80001cdc:	d557b823          	sd	s5,-688(a5) # 80005a28 <_ZN9Scheduler13head_sleepingE>
    80001ce0:	fb5ff06f          	j	80001c94 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x110>

0000000080001ce4 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    80001ce4:	ff010113          	addi	sp,sp,-16
    80001ce8:	00813423          	sd	s0,8(sp)
    80001cec:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80001cf0:	00053503          	ld	a0,0(a0)
    80001cf4:	00050463          	beqz	a0,80001cfc <_ZN10ThreadList9get_firstEv+0x18>
    80001cf8:	00053503          	ld	a0,0(a0)
}
    80001cfc:	00813403          	ld	s0,8(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret

0000000080001d08 <_ZN10ThreadList4NodenwEm>:
    head -> next = nullptr;
    delete tmp;
    return thread;
}

void *ThreadList::Node::operator new(size_t size) {
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00113423          	sd	ra,8(sp)
    80001d10:	00813023          	sd	s0,0(sp)
    80001d14:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	9c4080e7          	jalr	-1596(ra) # 800016dc <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d20:	00813083          	ld	ra,8(sp)
    80001d24:	00013403          	ld	s0,0(sp)
    80001d28:	01010113          	addi	sp,sp,16
    80001d2c:	00008067          	ret

0000000080001d30 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80001d30:	fe010113          	addi	sp,sp,-32
    80001d34:	00113c23          	sd	ra,24(sp)
    80001d38:	00813823          	sd	s0,16(sp)
    80001d3c:	00913423          	sd	s1,8(sp)
    80001d40:	01213023          	sd	s2,0(sp)
    80001d44:	02010413          	addi	s0,sp,32
    80001d48:	00050493          	mv	s1,a0
    80001d4c:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80001d50:	01000513          	li	a0,16
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	fb4080e7          	jalr	-76(ra) # 80001d08 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        Node(TCB* data) : data(data), next(nullptr) {}
    80001d5c:	01253023          	sd	s2,0(a0)
    80001d60:	00053423          	sd	zero,8(a0)
    80001d64:	0004b783          	ld	a5,0(s1)
    80001d68:	02078263          	beqz	a5,80001d8c <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80001d6c:	00a4b023          	sd	a0,0(s1)
    80001d70:	00a4b423          	sd	a0,8(s1)
}
    80001d74:	01813083          	ld	ra,24(sp)
    80001d78:	01013403          	ld	s0,16(sp)
    80001d7c:	00813483          	ld	s1,8(sp)
    80001d80:	00013903          	ld	s2,0(sp)
    80001d84:	02010113          	addi	sp,sp,32
    80001d88:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80001d8c:	0084b783          	ld	a5,8(s1)
    80001d90:	00a7b423          	sd	a0,8(a5)
    80001d94:	fddff06f          	j	80001d70 <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080001d98 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80001d98:	fe010113          	addi	sp,sp,-32
    80001d9c:	00113c23          	sd	ra,24(sp)
    80001da0:	00813823          	sd	s0,16(sp)
    80001da4:	00913423          	sd	s1,8(sp)
    80001da8:	01213023          	sd	s2,0(sp)
    80001dac:	02010413          	addi	s0,sp,32
    80001db0:	00050493          	mv	s1,a0
    80001db4:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80001db8:	01000513          	li	a0,16
    80001dbc:	00000097          	auipc	ra,0x0
    80001dc0:	f4c080e7          	jalr	-180(ra) # 80001d08 <_ZN10ThreadList4NodenwEm>
    80001dc4:	01253023          	sd	s2,0(a0)
    80001dc8:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80001dcc:	0004b783          	ld	a5,0(s1)
    80001dd0:	00f53423          	sd	a5,8(a0)
    head = node;
    80001dd4:	00a4b023          	sd	a0,0(s1)
}
    80001dd8:	01813083          	ld	ra,24(sp)
    80001ddc:	01013403          	ld	s0,16(sp)
    80001de0:	00813483          	ld	s1,8(sp)
    80001de4:	00013903          	ld	s2,0(sp)
    80001de8:	02010113          	addi	sp,sp,32
    80001dec:	00008067          	ret

0000000080001df0 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00113423          	sd	ra,8(sp)
    80001df8:	00813023          	sd	s0,0(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	ac8080e7          	jalr	-1336(ra) # 800018c8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e08:	00813083          	ld	ra,8(sp)
    80001e0c:	00013403          	ld	s0,0(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80001e18:	fe010113          	addi	sp,sp,-32
    80001e1c:	00113c23          	sd	ra,24(sp)
    80001e20:	00813823          	sd	s0,16(sp)
    80001e24:	00913423          	sd	s1,8(sp)
    80001e28:	02010413          	addi	s0,sp,32
    80001e2c:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80001e30:	00053503          	ld	a0,0(a0)
    80001e34:	02050a63          	beqz	a0,80001e68 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80001e38:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80001e3c:	00853703          	ld	a4,8(a0)
    80001e40:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    80001e44:	00073423          	sd	zero,8(a4)
    delete tmp;
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	fa8080e7          	jalr	-88(ra) # 80001df0 <_ZN10ThreadList4NodedlEPv>
}
    80001e50:	00048513          	mv	a0,s1
    80001e54:	01813083          	ld	ra,24(sp)
    80001e58:	01013403          	ld	s0,16(sp)
    80001e5c:	00813483          	ld	s1,8(sp)
    80001e60:	02010113          	addi	sp,sp,32
    80001e64:	00008067          	ret
    if (!head) return nullptr;
    80001e68:	00050493          	mv	s1,a0
    80001e6c:	fe5ff06f          	j	80001e50 <_ZN10ThreadList12remove_firstEv+0x38>

0000000080001e70 <interruptRoutine>:
#include "../lib/hw.h"
#include "../h/syscall_c.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/risc-v.hpp"

extern "C" void interruptRoutine() {
    80001e70:	fe010113          	addi	sp,sp,-32
    80001e74:	00113c23          	sd	ra,24(sp)
    80001e78:	00813823          	sd	s0,16(sp)
    80001e7c:	02010413          	addi	s0,sp,32
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80001e80:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80001e84:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80001e88:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80001e8c:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80001e90:	00070693          	mv	a3,a4

};

inline uint64 RiscV::read_scause() {
    uint64 volatile scause;
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80001e94:	14202773          	csrr	a4,scause
    80001e98:	fee43423          	sd	a4,-24(s0)
    return scause;
    80001e9c:	fe843803          	ld	a6,-24(s0)

    /// illegal instruction
    if (RiscV::read_scause() == (uint64) 2) {
    80001ea0:	00200713          	li	a4,2
    80001ea4:	02e80663          	beq	a6,a4,80001ed0 <interruptRoutine+0x60>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    switch(syscall_code) {
    80001ea8:	01100713          	li	a4,17
    80001eac:	04e78e63          	beq	a5,a4,80001f08 <interruptRoutine+0x98>
    80001eb0:	02f76c63          	bltu	a4,a5,80001ee8 <interruptRoutine+0x78>
    80001eb4:	00100713          	li	a4,1
    80001eb8:	04e78263          	beq	a5,a4,80001efc <interruptRoutine+0x8c>
    80001ebc:	00200713          	li	a4,2
    80001ec0:	00e79c63          	bne	a5,a4,80001ed8 <interruptRoutine+0x68>
        case MEM_ALLOC:
            MemoryAllocator::mem_alloc((size_t) a1);
            break;
        case MEM_FREE:
            MemoryAllocator::mem_free((void *) a1);
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	a04080e7          	jalr	-1532(ra) # 800018c8 <_ZN15MemoryAllocator8mem_freeEPv>
            break;
    80001ecc:	00c0006f          	j	80001ed8 <interruptRoutine+0x68>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80001ed0:	00100793          	li	a5,1
    80001ed4:	00078513          	mv	a0,a5
//            IO::_putc((char) arg1);
            break;
        default:
            break;
    }
    80001ed8:	01813083          	ld	ra,24(sp)
    80001edc:	01013403          	ld	s0,16(sp)
    80001ee0:	02010113          	addi	sp,sp,32
    80001ee4:	00008067          	ret
    switch(syscall_code) {
    80001ee8:	01200713          	li	a4,18
    80001eec:	fee796e3          	bne	a5,a4,80001ed8 <interruptRoutine+0x68>
            TCB::thread_exit();
    80001ef0:	fffff097          	auipc	ra,0xfffff
    80001ef4:	5bc080e7          	jalr	1468(ra) # 800014ac <_ZN3TCB11thread_exitEv>
            break;
    80001ef8:	fe1ff06f          	j	80001ed8 <interruptRoutine+0x68>
            MemoryAllocator::mem_alloc((size_t) a1);
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	7e0080e7          	jalr	2016(ra) # 800016dc <_ZN15MemoryAllocator9mem_allocEm>
            break;
    80001f04:	fd5ff06f          	j	80001ed8 <interruptRoutine+0x68>
            TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80001f08:	fffff097          	auipc	ra,0xfffff
    80001f0c:	674080e7          	jalr	1652(ra) # 8000157c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
            break;
    80001f10:	fc9ff06f          	j	80001ed8 <interruptRoutine+0x68>

0000000080001f14 <start>:
    80001f14:	ff010113          	addi	sp,sp,-16
    80001f18:	00813423          	sd	s0,8(sp)
    80001f1c:	01010413          	addi	s0,sp,16
    80001f20:	300027f3          	csrr	a5,mstatus
    80001f24:	ffffe737          	lui	a4,0xffffe
    80001f28:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b6f>
    80001f2c:	00e7f7b3          	and	a5,a5,a4
    80001f30:	00001737          	lui	a4,0x1
    80001f34:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001f38:	00e7e7b3          	or	a5,a5,a4
    80001f3c:	30079073          	csrw	mstatus,a5
    80001f40:	00000797          	auipc	a5,0x0
    80001f44:	16078793          	addi	a5,a5,352 # 800020a0 <system_main>
    80001f48:	34179073          	csrw	mepc,a5
    80001f4c:	00000793          	li	a5,0
    80001f50:	18079073          	csrw	satp,a5
    80001f54:	000107b7          	lui	a5,0x10
    80001f58:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f5c:	30279073          	csrw	medeleg,a5
    80001f60:	30379073          	csrw	mideleg,a5
    80001f64:	104027f3          	csrr	a5,sie
    80001f68:	2227e793          	ori	a5,a5,546
    80001f6c:	10479073          	csrw	sie,a5
    80001f70:	fff00793          	li	a5,-1
    80001f74:	00a7d793          	srli	a5,a5,0xa
    80001f78:	3b079073          	csrw	pmpaddr0,a5
    80001f7c:	00f00793          	li	a5,15
    80001f80:	3a079073          	csrw	pmpcfg0,a5
    80001f84:	f14027f3          	csrr	a5,mhartid
    80001f88:	0200c737          	lui	a4,0x200c
    80001f8c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f90:	0007869b          	sext.w	a3,a5
    80001f94:	00269713          	slli	a4,a3,0x2
    80001f98:	000f4637          	lui	a2,0xf4
    80001f9c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001fa0:	00d70733          	add	a4,a4,a3
    80001fa4:	0037979b          	slliw	a5,a5,0x3
    80001fa8:	020046b7          	lui	a3,0x2004
    80001fac:	00d787b3          	add	a5,a5,a3
    80001fb0:	00c585b3          	add	a1,a1,a2
    80001fb4:	00371693          	slli	a3,a4,0x3
    80001fb8:	00004717          	auipc	a4,0x4
    80001fbc:	a7870713          	addi	a4,a4,-1416 # 80005a30 <timer_scratch>
    80001fc0:	00b7b023          	sd	a1,0(a5)
    80001fc4:	00d70733          	add	a4,a4,a3
    80001fc8:	00f73c23          	sd	a5,24(a4)
    80001fcc:	02c73023          	sd	a2,32(a4)
    80001fd0:	34071073          	csrw	mscratch,a4
    80001fd4:	00000797          	auipc	a5,0x0
    80001fd8:	6ec78793          	addi	a5,a5,1772 # 800026c0 <timervec>
    80001fdc:	30579073          	csrw	mtvec,a5
    80001fe0:	300027f3          	csrr	a5,mstatus
    80001fe4:	0087e793          	ori	a5,a5,8
    80001fe8:	30079073          	csrw	mstatus,a5
    80001fec:	304027f3          	csrr	a5,mie
    80001ff0:	0807e793          	ori	a5,a5,128
    80001ff4:	30479073          	csrw	mie,a5
    80001ff8:	f14027f3          	csrr	a5,mhartid
    80001ffc:	0007879b          	sext.w	a5,a5
    80002000:	00078213          	mv	tp,a5
    80002004:	30200073          	mret
    80002008:	00813403          	ld	s0,8(sp)
    8000200c:	01010113          	addi	sp,sp,16
    80002010:	00008067          	ret

0000000080002014 <timerinit>:
    80002014:	ff010113          	addi	sp,sp,-16
    80002018:	00813423          	sd	s0,8(sp)
    8000201c:	01010413          	addi	s0,sp,16
    80002020:	f14027f3          	csrr	a5,mhartid
    80002024:	0200c737          	lui	a4,0x200c
    80002028:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000202c:	0007869b          	sext.w	a3,a5
    80002030:	00269713          	slli	a4,a3,0x2
    80002034:	000f4637          	lui	a2,0xf4
    80002038:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000203c:	00d70733          	add	a4,a4,a3
    80002040:	0037979b          	slliw	a5,a5,0x3
    80002044:	020046b7          	lui	a3,0x2004
    80002048:	00d787b3          	add	a5,a5,a3
    8000204c:	00c585b3          	add	a1,a1,a2
    80002050:	00371693          	slli	a3,a4,0x3
    80002054:	00004717          	auipc	a4,0x4
    80002058:	9dc70713          	addi	a4,a4,-1572 # 80005a30 <timer_scratch>
    8000205c:	00b7b023          	sd	a1,0(a5)
    80002060:	00d70733          	add	a4,a4,a3
    80002064:	00f73c23          	sd	a5,24(a4)
    80002068:	02c73023          	sd	a2,32(a4)
    8000206c:	34071073          	csrw	mscratch,a4
    80002070:	00000797          	auipc	a5,0x0
    80002074:	65078793          	addi	a5,a5,1616 # 800026c0 <timervec>
    80002078:	30579073          	csrw	mtvec,a5
    8000207c:	300027f3          	csrr	a5,mstatus
    80002080:	0087e793          	ori	a5,a5,8
    80002084:	30079073          	csrw	mstatus,a5
    80002088:	304027f3          	csrr	a5,mie
    8000208c:	0807e793          	ori	a5,a5,128
    80002090:	30479073          	csrw	mie,a5
    80002094:	00813403          	ld	s0,8(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret

00000000800020a0 <system_main>:
    800020a0:	fe010113          	addi	sp,sp,-32
    800020a4:	00813823          	sd	s0,16(sp)
    800020a8:	00913423          	sd	s1,8(sp)
    800020ac:	00113c23          	sd	ra,24(sp)
    800020b0:	02010413          	addi	s0,sp,32
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	0c4080e7          	jalr	196(ra) # 80002178 <cpuid>
    800020bc:	00004497          	auipc	s1,0x4
    800020c0:	90448493          	addi	s1,s1,-1788 # 800059c0 <started>
    800020c4:	02050263          	beqz	a0,800020e8 <system_main+0x48>
    800020c8:	0004a783          	lw	a5,0(s1)
    800020cc:	0007879b          	sext.w	a5,a5
    800020d0:	fe078ce3          	beqz	a5,800020c8 <system_main+0x28>
    800020d4:	0ff0000f          	fence
    800020d8:	00003517          	auipc	a0,0x3
    800020dc:	f7850513          	addi	a0,a0,-136 # 80005050 <CONSOLE_STATUS+0x40>
    800020e0:	00001097          	auipc	ra,0x1
    800020e4:	a7c080e7          	jalr	-1412(ra) # 80002b5c <panic>
    800020e8:	00001097          	auipc	ra,0x1
    800020ec:	9d0080e7          	jalr	-1584(ra) # 80002ab8 <consoleinit>
    800020f0:	00001097          	auipc	ra,0x1
    800020f4:	15c080e7          	jalr	348(ra) # 8000324c <printfinit>
    800020f8:	00003517          	auipc	a0,0x3
    800020fc:	03850513          	addi	a0,a0,56 # 80005130 <CONSOLE_STATUS+0x120>
    80002100:	00001097          	auipc	ra,0x1
    80002104:	ab8080e7          	jalr	-1352(ra) # 80002bb8 <__printf>
    80002108:	00003517          	auipc	a0,0x3
    8000210c:	f1850513          	addi	a0,a0,-232 # 80005020 <CONSOLE_STATUS+0x10>
    80002110:	00001097          	auipc	ra,0x1
    80002114:	aa8080e7          	jalr	-1368(ra) # 80002bb8 <__printf>
    80002118:	00003517          	auipc	a0,0x3
    8000211c:	01850513          	addi	a0,a0,24 # 80005130 <CONSOLE_STATUS+0x120>
    80002120:	00001097          	auipc	ra,0x1
    80002124:	a98080e7          	jalr	-1384(ra) # 80002bb8 <__printf>
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	4b0080e7          	jalr	1200(ra) # 800035d8 <kinit>
    80002130:	00000097          	auipc	ra,0x0
    80002134:	148080e7          	jalr	328(ra) # 80002278 <trapinit>
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	16c080e7          	jalr	364(ra) # 800022a4 <trapinithart>
    80002140:	00000097          	auipc	ra,0x0
    80002144:	5c0080e7          	jalr	1472(ra) # 80002700 <plicinit>
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	5e0080e7          	jalr	1504(ra) # 80002728 <plicinithart>
    80002150:	00000097          	auipc	ra,0x0
    80002154:	078080e7          	jalr	120(ra) # 800021c8 <userinit>
    80002158:	0ff0000f          	fence
    8000215c:	00100793          	li	a5,1
    80002160:	00003517          	auipc	a0,0x3
    80002164:	ed850513          	addi	a0,a0,-296 # 80005038 <CONSOLE_STATUS+0x28>
    80002168:	00f4a023          	sw	a5,0(s1)
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	a4c080e7          	jalr	-1460(ra) # 80002bb8 <__printf>
    80002174:	0000006f          	j	80002174 <system_main+0xd4>

0000000080002178 <cpuid>:
    80002178:	ff010113          	addi	sp,sp,-16
    8000217c:	00813423          	sd	s0,8(sp)
    80002180:	01010413          	addi	s0,sp,16
    80002184:	00020513          	mv	a0,tp
    80002188:	00813403          	ld	s0,8(sp)
    8000218c:	0005051b          	sext.w	a0,a0
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <mycpu>:
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00813423          	sd	s0,8(sp)
    800021a0:	01010413          	addi	s0,sp,16
    800021a4:	00020793          	mv	a5,tp
    800021a8:	00813403          	ld	s0,8(sp)
    800021ac:	0007879b          	sext.w	a5,a5
    800021b0:	00779793          	slli	a5,a5,0x7
    800021b4:	00005517          	auipc	a0,0x5
    800021b8:	8ac50513          	addi	a0,a0,-1876 # 80006a60 <cpus>
    800021bc:	00f50533          	add	a0,a0,a5
    800021c0:	01010113          	addi	sp,sp,16
    800021c4:	00008067          	ret

00000000800021c8 <userinit>:
    800021c8:	ff010113          	addi	sp,sp,-16
    800021cc:	00813423          	sd	s0,8(sp)
    800021d0:	01010413          	addi	s0,sp,16
    800021d4:	00813403          	ld	s0,8(sp)
    800021d8:	01010113          	addi	sp,sp,16
    800021dc:	fffff317          	auipc	t1,0xfffff
    800021e0:	0d430067          	jr	212(t1) # 800012b0 <main>

00000000800021e4 <either_copyout>:
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00813023          	sd	s0,0(sp)
    800021ec:	00113423          	sd	ra,8(sp)
    800021f0:	01010413          	addi	s0,sp,16
    800021f4:	02051663          	bnez	a0,80002220 <either_copyout+0x3c>
    800021f8:	00058513          	mv	a0,a1
    800021fc:	00060593          	mv	a1,a2
    80002200:	0006861b          	sext.w	a2,a3
    80002204:	00002097          	auipc	ra,0x2
    80002208:	c60080e7          	jalr	-928(ra) # 80003e64 <__memmove>
    8000220c:	00813083          	ld	ra,8(sp)
    80002210:	00013403          	ld	s0,0(sp)
    80002214:	00000513          	li	a0,0
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00008067          	ret
    80002220:	00003517          	auipc	a0,0x3
    80002224:	e5850513          	addi	a0,a0,-424 # 80005078 <CONSOLE_STATUS+0x68>
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	934080e7          	jalr	-1740(ra) # 80002b5c <panic>

0000000080002230 <either_copyin>:
    80002230:	ff010113          	addi	sp,sp,-16
    80002234:	00813023          	sd	s0,0(sp)
    80002238:	00113423          	sd	ra,8(sp)
    8000223c:	01010413          	addi	s0,sp,16
    80002240:	02059463          	bnez	a1,80002268 <either_copyin+0x38>
    80002244:	00060593          	mv	a1,a2
    80002248:	0006861b          	sext.w	a2,a3
    8000224c:	00002097          	auipc	ra,0x2
    80002250:	c18080e7          	jalr	-1000(ra) # 80003e64 <__memmove>
    80002254:	00813083          	ld	ra,8(sp)
    80002258:	00013403          	ld	s0,0(sp)
    8000225c:	00000513          	li	a0,0
    80002260:	01010113          	addi	sp,sp,16
    80002264:	00008067          	ret
    80002268:	00003517          	auipc	a0,0x3
    8000226c:	e3850513          	addi	a0,a0,-456 # 800050a0 <CONSOLE_STATUS+0x90>
    80002270:	00001097          	auipc	ra,0x1
    80002274:	8ec080e7          	jalr	-1812(ra) # 80002b5c <panic>

0000000080002278 <trapinit>:
    80002278:	ff010113          	addi	sp,sp,-16
    8000227c:	00813423          	sd	s0,8(sp)
    80002280:	01010413          	addi	s0,sp,16
    80002284:	00813403          	ld	s0,8(sp)
    80002288:	00003597          	auipc	a1,0x3
    8000228c:	e4058593          	addi	a1,a1,-448 # 800050c8 <CONSOLE_STATUS+0xb8>
    80002290:	00005517          	auipc	a0,0x5
    80002294:	85050513          	addi	a0,a0,-1968 # 80006ae0 <tickslock>
    80002298:	01010113          	addi	sp,sp,16
    8000229c:	00001317          	auipc	t1,0x1
    800022a0:	5cc30067          	jr	1484(t1) # 80003868 <initlock>

00000000800022a4 <trapinithart>:
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00813423          	sd	s0,8(sp)
    800022ac:	01010413          	addi	s0,sp,16
    800022b0:	00000797          	auipc	a5,0x0
    800022b4:	30078793          	addi	a5,a5,768 # 800025b0 <kernelvec>
    800022b8:	10579073          	csrw	stvec,a5
    800022bc:	00813403          	ld	s0,8(sp)
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret

00000000800022c8 <usertrap>:
    800022c8:	ff010113          	addi	sp,sp,-16
    800022cc:	00813423          	sd	s0,8(sp)
    800022d0:	01010413          	addi	s0,sp,16
    800022d4:	00813403          	ld	s0,8(sp)
    800022d8:	01010113          	addi	sp,sp,16
    800022dc:	00008067          	ret

00000000800022e0 <usertrapret>:
    800022e0:	ff010113          	addi	sp,sp,-16
    800022e4:	00813423          	sd	s0,8(sp)
    800022e8:	01010413          	addi	s0,sp,16
    800022ec:	00813403          	ld	s0,8(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret

00000000800022f8 <kerneltrap>:
    800022f8:	fe010113          	addi	sp,sp,-32
    800022fc:	00813823          	sd	s0,16(sp)
    80002300:	00113c23          	sd	ra,24(sp)
    80002304:	00913423          	sd	s1,8(sp)
    80002308:	02010413          	addi	s0,sp,32
    8000230c:	142025f3          	csrr	a1,scause
    80002310:	100027f3          	csrr	a5,sstatus
    80002314:	0027f793          	andi	a5,a5,2
    80002318:	10079c63          	bnez	a5,80002430 <kerneltrap+0x138>
    8000231c:	142027f3          	csrr	a5,scause
    80002320:	0207ce63          	bltz	a5,8000235c <kerneltrap+0x64>
    80002324:	00003517          	auipc	a0,0x3
    80002328:	dec50513          	addi	a0,a0,-532 # 80005110 <CONSOLE_STATUS+0x100>
    8000232c:	00001097          	auipc	ra,0x1
    80002330:	88c080e7          	jalr	-1908(ra) # 80002bb8 <__printf>
    80002334:	141025f3          	csrr	a1,sepc
    80002338:	14302673          	csrr	a2,stval
    8000233c:	00003517          	auipc	a0,0x3
    80002340:	de450513          	addi	a0,a0,-540 # 80005120 <CONSOLE_STATUS+0x110>
    80002344:	00001097          	auipc	ra,0x1
    80002348:	874080e7          	jalr	-1932(ra) # 80002bb8 <__printf>
    8000234c:	00003517          	auipc	a0,0x3
    80002350:	dec50513          	addi	a0,a0,-532 # 80005138 <CONSOLE_STATUS+0x128>
    80002354:	00001097          	auipc	ra,0x1
    80002358:	808080e7          	jalr	-2040(ra) # 80002b5c <panic>
    8000235c:	0ff7f713          	andi	a4,a5,255
    80002360:	00900693          	li	a3,9
    80002364:	04d70063          	beq	a4,a3,800023a4 <kerneltrap+0xac>
    80002368:	fff00713          	li	a4,-1
    8000236c:	03f71713          	slli	a4,a4,0x3f
    80002370:	00170713          	addi	a4,a4,1
    80002374:	fae798e3          	bne	a5,a4,80002324 <kerneltrap+0x2c>
    80002378:	00000097          	auipc	ra,0x0
    8000237c:	e00080e7          	jalr	-512(ra) # 80002178 <cpuid>
    80002380:	06050663          	beqz	a0,800023ec <kerneltrap+0xf4>
    80002384:	144027f3          	csrr	a5,sip
    80002388:	ffd7f793          	andi	a5,a5,-3
    8000238c:	14479073          	csrw	sip,a5
    80002390:	01813083          	ld	ra,24(sp)
    80002394:	01013403          	ld	s0,16(sp)
    80002398:	00813483          	ld	s1,8(sp)
    8000239c:	02010113          	addi	sp,sp,32
    800023a0:	00008067          	ret
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	3d0080e7          	jalr	976(ra) # 80002774 <plic_claim>
    800023ac:	00a00793          	li	a5,10
    800023b0:	00050493          	mv	s1,a0
    800023b4:	06f50863          	beq	a0,a5,80002424 <kerneltrap+0x12c>
    800023b8:	fc050ce3          	beqz	a0,80002390 <kerneltrap+0x98>
    800023bc:	00050593          	mv	a1,a0
    800023c0:	00003517          	auipc	a0,0x3
    800023c4:	d3050513          	addi	a0,a0,-720 # 800050f0 <CONSOLE_STATUS+0xe0>
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	7f0080e7          	jalr	2032(ra) # 80002bb8 <__printf>
    800023d0:	01013403          	ld	s0,16(sp)
    800023d4:	01813083          	ld	ra,24(sp)
    800023d8:	00048513          	mv	a0,s1
    800023dc:	00813483          	ld	s1,8(sp)
    800023e0:	02010113          	addi	sp,sp,32
    800023e4:	00000317          	auipc	t1,0x0
    800023e8:	3c830067          	jr	968(t1) # 800027ac <plic_complete>
    800023ec:	00004517          	auipc	a0,0x4
    800023f0:	6f450513          	addi	a0,a0,1780 # 80006ae0 <tickslock>
    800023f4:	00001097          	auipc	ra,0x1
    800023f8:	498080e7          	jalr	1176(ra) # 8000388c <acquire>
    800023fc:	00003717          	auipc	a4,0x3
    80002400:	5c870713          	addi	a4,a4,1480 # 800059c4 <ticks>
    80002404:	00072783          	lw	a5,0(a4)
    80002408:	00004517          	auipc	a0,0x4
    8000240c:	6d850513          	addi	a0,a0,1752 # 80006ae0 <tickslock>
    80002410:	0017879b          	addiw	a5,a5,1
    80002414:	00f72023          	sw	a5,0(a4)
    80002418:	00001097          	auipc	ra,0x1
    8000241c:	540080e7          	jalr	1344(ra) # 80003958 <release>
    80002420:	f65ff06f          	j	80002384 <kerneltrap+0x8c>
    80002424:	00001097          	auipc	ra,0x1
    80002428:	09c080e7          	jalr	156(ra) # 800034c0 <uartintr>
    8000242c:	fa5ff06f          	j	800023d0 <kerneltrap+0xd8>
    80002430:	00003517          	auipc	a0,0x3
    80002434:	ca050513          	addi	a0,a0,-864 # 800050d0 <CONSOLE_STATUS+0xc0>
    80002438:	00000097          	auipc	ra,0x0
    8000243c:	724080e7          	jalr	1828(ra) # 80002b5c <panic>

0000000080002440 <clockintr>:
    80002440:	fe010113          	addi	sp,sp,-32
    80002444:	00813823          	sd	s0,16(sp)
    80002448:	00913423          	sd	s1,8(sp)
    8000244c:	00113c23          	sd	ra,24(sp)
    80002450:	02010413          	addi	s0,sp,32
    80002454:	00004497          	auipc	s1,0x4
    80002458:	68c48493          	addi	s1,s1,1676 # 80006ae0 <tickslock>
    8000245c:	00048513          	mv	a0,s1
    80002460:	00001097          	auipc	ra,0x1
    80002464:	42c080e7          	jalr	1068(ra) # 8000388c <acquire>
    80002468:	00003717          	auipc	a4,0x3
    8000246c:	55c70713          	addi	a4,a4,1372 # 800059c4 <ticks>
    80002470:	00072783          	lw	a5,0(a4)
    80002474:	01013403          	ld	s0,16(sp)
    80002478:	01813083          	ld	ra,24(sp)
    8000247c:	00048513          	mv	a0,s1
    80002480:	0017879b          	addiw	a5,a5,1
    80002484:	00813483          	ld	s1,8(sp)
    80002488:	00f72023          	sw	a5,0(a4)
    8000248c:	02010113          	addi	sp,sp,32
    80002490:	00001317          	auipc	t1,0x1
    80002494:	4c830067          	jr	1224(t1) # 80003958 <release>

0000000080002498 <devintr>:
    80002498:	142027f3          	csrr	a5,scause
    8000249c:	00000513          	li	a0,0
    800024a0:	0007c463          	bltz	a5,800024a8 <devintr+0x10>
    800024a4:	00008067          	ret
    800024a8:	fe010113          	addi	sp,sp,-32
    800024ac:	00813823          	sd	s0,16(sp)
    800024b0:	00113c23          	sd	ra,24(sp)
    800024b4:	00913423          	sd	s1,8(sp)
    800024b8:	02010413          	addi	s0,sp,32
    800024bc:	0ff7f713          	andi	a4,a5,255
    800024c0:	00900693          	li	a3,9
    800024c4:	04d70c63          	beq	a4,a3,8000251c <devintr+0x84>
    800024c8:	fff00713          	li	a4,-1
    800024cc:	03f71713          	slli	a4,a4,0x3f
    800024d0:	00170713          	addi	a4,a4,1
    800024d4:	00e78c63          	beq	a5,a4,800024ec <devintr+0x54>
    800024d8:	01813083          	ld	ra,24(sp)
    800024dc:	01013403          	ld	s0,16(sp)
    800024e0:	00813483          	ld	s1,8(sp)
    800024e4:	02010113          	addi	sp,sp,32
    800024e8:	00008067          	ret
    800024ec:	00000097          	auipc	ra,0x0
    800024f0:	c8c080e7          	jalr	-884(ra) # 80002178 <cpuid>
    800024f4:	06050663          	beqz	a0,80002560 <devintr+0xc8>
    800024f8:	144027f3          	csrr	a5,sip
    800024fc:	ffd7f793          	andi	a5,a5,-3
    80002500:	14479073          	csrw	sip,a5
    80002504:	01813083          	ld	ra,24(sp)
    80002508:	01013403          	ld	s0,16(sp)
    8000250c:	00813483          	ld	s1,8(sp)
    80002510:	00200513          	li	a0,2
    80002514:	02010113          	addi	sp,sp,32
    80002518:	00008067          	ret
    8000251c:	00000097          	auipc	ra,0x0
    80002520:	258080e7          	jalr	600(ra) # 80002774 <plic_claim>
    80002524:	00a00793          	li	a5,10
    80002528:	00050493          	mv	s1,a0
    8000252c:	06f50663          	beq	a0,a5,80002598 <devintr+0x100>
    80002530:	00100513          	li	a0,1
    80002534:	fa0482e3          	beqz	s1,800024d8 <devintr+0x40>
    80002538:	00048593          	mv	a1,s1
    8000253c:	00003517          	auipc	a0,0x3
    80002540:	bb450513          	addi	a0,a0,-1100 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002544:	00000097          	auipc	ra,0x0
    80002548:	674080e7          	jalr	1652(ra) # 80002bb8 <__printf>
    8000254c:	00048513          	mv	a0,s1
    80002550:	00000097          	auipc	ra,0x0
    80002554:	25c080e7          	jalr	604(ra) # 800027ac <plic_complete>
    80002558:	00100513          	li	a0,1
    8000255c:	f7dff06f          	j	800024d8 <devintr+0x40>
    80002560:	00004517          	auipc	a0,0x4
    80002564:	58050513          	addi	a0,a0,1408 # 80006ae0 <tickslock>
    80002568:	00001097          	auipc	ra,0x1
    8000256c:	324080e7          	jalr	804(ra) # 8000388c <acquire>
    80002570:	00003717          	auipc	a4,0x3
    80002574:	45470713          	addi	a4,a4,1108 # 800059c4 <ticks>
    80002578:	00072783          	lw	a5,0(a4)
    8000257c:	00004517          	auipc	a0,0x4
    80002580:	56450513          	addi	a0,a0,1380 # 80006ae0 <tickslock>
    80002584:	0017879b          	addiw	a5,a5,1
    80002588:	00f72023          	sw	a5,0(a4)
    8000258c:	00001097          	auipc	ra,0x1
    80002590:	3cc080e7          	jalr	972(ra) # 80003958 <release>
    80002594:	f65ff06f          	j	800024f8 <devintr+0x60>
    80002598:	00001097          	auipc	ra,0x1
    8000259c:	f28080e7          	jalr	-216(ra) # 800034c0 <uartintr>
    800025a0:	fadff06f          	j	8000254c <devintr+0xb4>
	...

00000000800025b0 <kernelvec>:
    800025b0:	f0010113          	addi	sp,sp,-256
    800025b4:	00113023          	sd	ra,0(sp)
    800025b8:	00213423          	sd	sp,8(sp)
    800025bc:	00313823          	sd	gp,16(sp)
    800025c0:	00413c23          	sd	tp,24(sp)
    800025c4:	02513023          	sd	t0,32(sp)
    800025c8:	02613423          	sd	t1,40(sp)
    800025cc:	02713823          	sd	t2,48(sp)
    800025d0:	02813c23          	sd	s0,56(sp)
    800025d4:	04913023          	sd	s1,64(sp)
    800025d8:	04a13423          	sd	a0,72(sp)
    800025dc:	04b13823          	sd	a1,80(sp)
    800025e0:	04c13c23          	sd	a2,88(sp)
    800025e4:	06d13023          	sd	a3,96(sp)
    800025e8:	06e13423          	sd	a4,104(sp)
    800025ec:	06f13823          	sd	a5,112(sp)
    800025f0:	07013c23          	sd	a6,120(sp)
    800025f4:	09113023          	sd	a7,128(sp)
    800025f8:	09213423          	sd	s2,136(sp)
    800025fc:	09313823          	sd	s3,144(sp)
    80002600:	09413c23          	sd	s4,152(sp)
    80002604:	0b513023          	sd	s5,160(sp)
    80002608:	0b613423          	sd	s6,168(sp)
    8000260c:	0b713823          	sd	s7,176(sp)
    80002610:	0b813c23          	sd	s8,184(sp)
    80002614:	0d913023          	sd	s9,192(sp)
    80002618:	0da13423          	sd	s10,200(sp)
    8000261c:	0db13823          	sd	s11,208(sp)
    80002620:	0dc13c23          	sd	t3,216(sp)
    80002624:	0fd13023          	sd	t4,224(sp)
    80002628:	0fe13423          	sd	t5,232(sp)
    8000262c:	0ff13823          	sd	t6,240(sp)
    80002630:	cc9ff0ef          	jal	ra,800022f8 <kerneltrap>
    80002634:	00013083          	ld	ra,0(sp)
    80002638:	00813103          	ld	sp,8(sp)
    8000263c:	01013183          	ld	gp,16(sp)
    80002640:	02013283          	ld	t0,32(sp)
    80002644:	02813303          	ld	t1,40(sp)
    80002648:	03013383          	ld	t2,48(sp)
    8000264c:	03813403          	ld	s0,56(sp)
    80002650:	04013483          	ld	s1,64(sp)
    80002654:	04813503          	ld	a0,72(sp)
    80002658:	05013583          	ld	a1,80(sp)
    8000265c:	05813603          	ld	a2,88(sp)
    80002660:	06013683          	ld	a3,96(sp)
    80002664:	06813703          	ld	a4,104(sp)
    80002668:	07013783          	ld	a5,112(sp)
    8000266c:	07813803          	ld	a6,120(sp)
    80002670:	08013883          	ld	a7,128(sp)
    80002674:	08813903          	ld	s2,136(sp)
    80002678:	09013983          	ld	s3,144(sp)
    8000267c:	09813a03          	ld	s4,152(sp)
    80002680:	0a013a83          	ld	s5,160(sp)
    80002684:	0a813b03          	ld	s6,168(sp)
    80002688:	0b013b83          	ld	s7,176(sp)
    8000268c:	0b813c03          	ld	s8,184(sp)
    80002690:	0c013c83          	ld	s9,192(sp)
    80002694:	0c813d03          	ld	s10,200(sp)
    80002698:	0d013d83          	ld	s11,208(sp)
    8000269c:	0d813e03          	ld	t3,216(sp)
    800026a0:	0e013e83          	ld	t4,224(sp)
    800026a4:	0e813f03          	ld	t5,232(sp)
    800026a8:	0f013f83          	ld	t6,240(sp)
    800026ac:	10010113          	addi	sp,sp,256
    800026b0:	10200073          	sret
    800026b4:	00000013          	nop
    800026b8:	00000013          	nop
    800026bc:	00000013          	nop

00000000800026c0 <timervec>:
    800026c0:	34051573          	csrrw	a0,mscratch,a0
    800026c4:	00b53023          	sd	a1,0(a0)
    800026c8:	00c53423          	sd	a2,8(a0)
    800026cc:	00d53823          	sd	a3,16(a0)
    800026d0:	01853583          	ld	a1,24(a0)
    800026d4:	02053603          	ld	a2,32(a0)
    800026d8:	0005b683          	ld	a3,0(a1)
    800026dc:	00c686b3          	add	a3,a3,a2
    800026e0:	00d5b023          	sd	a3,0(a1)
    800026e4:	00200593          	li	a1,2
    800026e8:	14459073          	csrw	sip,a1
    800026ec:	01053683          	ld	a3,16(a0)
    800026f0:	00853603          	ld	a2,8(a0)
    800026f4:	00053583          	ld	a1,0(a0)
    800026f8:	34051573          	csrrw	a0,mscratch,a0
    800026fc:	30200073          	mret

0000000080002700 <plicinit>:
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00813423          	sd	s0,8(sp)
    80002708:	01010413          	addi	s0,sp,16
    8000270c:	00813403          	ld	s0,8(sp)
    80002710:	0c0007b7          	lui	a5,0xc000
    80002714:	00100713          	li	a4,1
    80002718:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000271c:	00e7a223          	sw	a4,4(a5)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret

0000000080002728 <plicinithart>:
    80002728:	ff010113          	addi	sp,sp,-16
    8000272c:	00813023          	sd	s0,0(sp)
    80002730:	00113423          	sd	ra,8(sp)
    80002734:	01010413          	addi	s0,sp,16
    80002738:	00000097          	auipc	ra,0x0
    8000273c:	a40080e7          	jalr	-1472(ra) # 80002178 <cpuid>
    80002740:	0085171b          	slliw	a4,a0,0x8
    80002744:	0c0027b7          	lui	a5,0xc002
    80002748:	00e787b3          	add	a5,a5,a4
    8000274c:	40200713          	li	a4,1026
    80002750:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002754:	00813083          	ld	ra,8(sp)
    80002758:	00013403          	ld	s0,0(sp)
    8000275c:	00d5151b          	slliw	a0,a0,0xd
    80002760:	0c2017b7          	lui	a5,0xc201
    80002764:	00a78533          	add	a0,a5,a0
    80002768:	00052023          	sw	zero,0(a0)
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret

0000000080002774 <plic_claim>:
    80002774:	ff010113          	addi	sp,sp,-16
    80002778:	00813023          	sd	s0,0(sp)
    8000277c:	00113423          	sd	ra,8(sp)
    80002780:	01010413          	addi	s0,sp,16
    80002784:	00000097          	auipc	ra,0x0
    80002788:	9f4080e7          	jalr	-1548(ra) # 80002178 <cpuid>
    8000278c:	00813083          	ld	ra,8(sp)
    80002790:	00013403          	ld	s0,0(sp)
    80002794:	00d5151b          	slliw	a0,a0,0xd
    80002798:	0c2017b7          	lui	a5,0xc201
    8000279c:	00a78533          	add	a0,a5,a0
    800027a0:	00452503          	lw	a0,4(a0)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <plic_complete>:
    800027ac:	fe010113          	addi	sp,sp,-32
    800027b0:	00813823          	sd	s0,16(sp)
    800027b4:	00913423          	sd	s1,8(sp)
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	02010413          	addi	s0,sp,32
    800027c0:	00050493          	mv	s1,a0
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	9b4080e7          	jalr	-1612(ra) # 80002178 <cpuid>
    800027cc:	01813083          	ld	ra,24(sp)
    800027d0:	01013403          	ld	s0,16(sp)
    800027d4:	00d5179b          	slliw	a5,a0,0xd
    800027d8:	0c201737          	lui	a4,0xc201
    800027dc:	00f707b3          	add	a5,a4,a5
    800027e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800027e4:	00813483          	ld	s1,8(sp)
    800027e8:	02010113          	addi	sp,sp,32
    800027ec:	00008067          	ret

00000000800027f0 <consolewrite>:
    800027f0:	fb010113          	addi	sp,sp,-80
    800027f4:	04813023          	sd	s0,64(sp)
    800027f8:	04113423          	sd	ra,72(sp)
    800027fc:	02913c23          	sd	s1,56(sp)
    80002800:	03213823          	sd	s2,48(sp)
    80002804:	03313423          	sd	s3,40(sp)
    80002808:	03413023          	sd	s4,32(sp)
    8000280c:	01513c23          	sd	s5,24(sp)
    80002810:	05010413          	addi	s0,sp,80
    80002814:	06c05c63          	blez	a2,8000288c <consolewrite+0x9c>
    80002818:	00060993          	mv	s3,a2
    8000281c:	00050a13          	mv	s4,a0
    80002820:	00058493          	mv	s1,a1
    80002824:	00000913          	li	s2,0
    80002828:	fff00a93          	li	s5,-1
    8000282c:	01c0006f          	j	80002848 <consolewrite+0x58>
    80002830:	fbf44503          	lbu	a0,-65(s0)
    80002834:	0019091b          	addiw	s2,s2,1
    80002838:	00148493          	addi	s1,s1,1
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	a9c080e7          	jalr	-1380(ra) # 800032d8 <uartputc>
    80002844:	03298063          	beq	s3,s2,80002864 <consolewrite+0x74>
    80002848:	00048613          	mv	a2,s1
    8000284c:	00100693          	li	a3,1
    80002850:	000a0593          	mv	a1,s4
    80002854:	fbf40513          	addi	a0,s0,-65
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	9d8080e7          	jalr	-1576(ra) # 80002230 <either_copyin>
    80002860:	fd5518e3          	bne	a0,s5,80002830 <consolewrite+0x40>
    80002864:	04813083          	ld	ra,72(sp)
    80002868:	04013403          	ld	s0,64(sp)
    8000286c:	03813483          	ld	s1,56(sp)
    80002870:	02813983          	ld	s3,40(sp)
    80002874:	02013a03          	ld	s4,32(sp)
    80002878:	01813a83          	ld	s5,24(sp)
    8000287c:	00090513          	mv	a0,s2
    80002880:	03013903          	ld	s2,48(sp)
    80002884:	05010113          	addi	sp,sp,80
    80002888:	00008067          	ret
    8000288c:	00000913          	li	s2,0
    80002890:	fd5ff06f          	j	80002864 <consolewrite+0x74>

0000000080002894 <consoleread>:
    80002894:	f9010113          	addi	sp,sp,-112
    80002898:	06813023          	sd	s0,96(sp)
    8000289c:	04913c23          	sd	s1,88(sp)
    800028a0:	05213823          	sd	s2,80(sp)
    800028a4:	05313423          	sd	s3,72(sp)
    800028a8:	05413023          	sd	s4,64(sp)
    800028ac:	03513c23          	sd	s5,56(sp)
    800028b0:	03613823          	sd	s6,48(sp)
    800028b4:	03713423          	sd	s7,40(sp)
    800028b8:	03813023          	sd	s8,32(sp)
    800028bc:	06113423          	sd	ra,104(sp)
    800028c0:	01913c23          	sd	s9,24(sp)
    800028c4:	07010413          	addi	s0,sp,112
    800028c8:	00060b93          	mv	s7,a2
    800028cc:	00050913          	mv	s2,a0
    800028d0:	00058c13          	mv	s8,a1
    800028d4:	00060b1b          	sext.w	s6,a2
    800028d8:	00004497          	auipc	s1,0x4
    800028dc:	23048493          	addi	s1,s1,560 # 80006b08 <cons>
    800028e0:	00400993          	li	s3,4
    800028e4:	fff00a13          	li	s4,-1
    800028e8:	00a00a93          	li	s5,10
    800028ec:	05705e63          	blez	s7,80002948 <consoleread+0xb4>
    800028f0:	09c4a703          	lw	a4,156(s1)
    800028f4:	0984a783          	lw	a5,152(s1)
    800028f8:	0007071b          	sext.w	a4,a4
    800028fc:	08e78463          	beq	a5,a4,80002984 <consoleread+0xf0>
    80002900:	07f7f713          	andi	a4,a5,127
    80002904:	00e48733          	add	a4,s1,a4
    80002908:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000290c:	0017869b          	addiw	a3,a5,1
    80002910:	08d4ac23          	sw	a3,152(s1)
    80002914:	00070c9b          	sext.w	s9,a4
    80002918:	0b370663          	beq	a4,s3,800029c4 <consoleread+0x130>
    8000291c:	00100693          	li	a3,1
    80002920:	f9f40613          	addi	a2,s0,-97
    80002924:	000c0593          	mv	a1,s8
    80002928:	00090513          	mv	a0,s2
    8000292c:	f8e40fa3          	sb	a4,-97(s0)
    80002930:	00000097          	auipc	ra,0x0
    80002934:	8b4080e7          	jalr	-1868(ra) # 800021e4 <either_copyout>
    80002938:	01450863          	beq	a0,s4,80002948 <consoleread+0xb4>
    8000293c:	001c0c13          	addi	s8,s8,1
    80002940:	fffb8b9b          	addiw	s7,s7,-1
    80002944:	fb5c94e3          	bne	s9,s5,800028ec <consoleread+0x58>
    80002948:	000b851b          	sext.w	a0,s7
    8000294c:	06813083          	ld	ra,104(sp)
    80002950:	06013403          	ld	s0,96(sp)
    80002954:	05813483          	ld	s1,88(sp)
    80002958:	05013903          	ld	s2,80(sp)
    8000295c:	04813983          	ld	s3,72(sp)
    80002960:	04013a03          	ld	s4,64(sp)
    80002964:	03813a83          	ld	s5,56(sp)
    80002968:	02813b83          	ld	s7,40(sp)
    8000296c:	02013c03          	ld	s8,32(sp)
    80002970:	01813c83          	ld	s9,24(sp)
    80002974:	40ab053b          	subw	a0,s6,a0
    80002978:	03013b03          	ld	s6,48(sp)
    8000297c:	07010113          	addi	sp,sp,112
    80002980:	00008067          	ret
    80002984:	00001097          	auipc	ra,0x1
    80002988:	1d8080e7          	jalr	472(ra) # 80003b5c <push_on>
    8000298c:	0984a703          	lw	a4,152(s1)
    80002990:	09c4a783          	lw	a5,156(s1)
    80002994:	0007879b          	sext.w	a5,a5
    80002998:	fef70ce3          	beq	a4,a5,80002990 <consoleread+0xfc>
    8000299c:	00001097          	auipc	ra,0x1
    800029a0:	234080e7          	jalr	564(ra) # 80003bd0 <pop_on>
    800029a4:	0984a783          	lw	a5,152(s1)
    800029a8:	07f7f713          	andi	a4,a5,127
    800029ac:	00e48733          	add	a4,s1,a4
    800029b0:	01874703          	lbu	a4,24(a4)
    800029b4:	0017869b          	addiw	a3,a5,1
    800029b8:	08d4ac23          	sw	a3,152(s1)
    800029bc:	00070c9b          	sext.w	s9,a4
    800029c0:	f5371ee3          	bne	a4,s3,8000291c <consoleread+0x88>
    800029c4:	000b851b          	sext.w	a0,s7
    800029c8:	f96bf2e3          	bgeu	s7,s6,8000294c <consoleread+0xb8>
    800029cc:	08f4ac23          	sw	a5,152(s1)
    800029d0:	f7dff06f          	j	8000294c <consoleread+0xb8>

00000000800029d4 <consputc>:
    800029d4:	10000793          	li	a5,256
    800029d8:	00f50663          	beq	a0,a5,800029e4 <consputc+0x10>
    800029dc:	00001317          	auipc	t1,0x1
    800029e0:	9f430067          	jr	-1548(t1) # 800033d0 <uartputc_sync>
    800029e4:	ff010113          	addi	sp,sp,-16
    800029e8:	00113423          	sd	ra,8(sp)
    800029ec:	00813023          	sd	s0,0(sp)
    800029f0:	01010413          	addi	s0,sp,16
    800029f4:	00800513          	li	a0,8
    800029f8:	00001097          	auipc	ra,0x1
    800029fc:	9d8080e7          	jalr	-1576(ra) # 800033d0 <uartputc_sync>
    80002a00:	02000513          	li	a0,32
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	9cc080e7          	jalr	-1588(ra) # 800033d0 <uartputc_sync>
    80002a0c:	00013403          	ld	s0,0(sp)
    80002a10:	00813083          	ld	ra,8(sp)
    80002a14:	00800513          	li	a0,8
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00001317          	auipc	t1,0x1
    80002a20:	9b430067          	jr	-1612(t1) # 800033d0 <uartputc_sync>

0000000080002a24 <consoleintr>:
    80002a24:	fe010113          	addi	sp,sp,-32
    80002a28:	00813823          	sd	s0,16(sp)
    80002a2c:	00913423          	sd	s1,8(sp)
    80002a30:	01213023          	sd	s2,0(sp)
    80002a34:	00113c23          	sd	ra,24(sp)
    80002a38:	02010413          	addi	s0,sp,32
    80002a3c:	00004917          	auipc	s2,0x4
    80002a40:	0cc90913          	addi	s2,s2,204 # 80006b08 <cons>
    80002a44:	00050493          	mv	s1,a0
    80002a48:	00090513          	mv	a0,s2
    80002a4c:	00001097          	auipc	ra,0x1
    80002a50:	e40080e7          	jalr	-448(ra) # 8000388c <acquire>
    80002a54:	02048c63          	beqz	s1,80002a8c <consoleintr+0x68>
    80002a58:	0a092783          	lw	a5,160(s2)
    80002a5c:	09892703          	lw	a4,152(s2)
    80002a60:	07f00693          	li	a3,127
    80002a64:	40e7873b          	subw	a4,a5,a4
    80002a68:	02e6e263          	bltu	a3,a4,80002a8c <consoleintr+0x68>
    80002a6c:	00d00713          	li	a4,13
    80002a70:	04e48063          	beq	s1,a4,80002ab0 <consoleintr+0x8c>
    80002a74:	07f7f713          	andi	a4,a5,127
    80002a78:	00e90733          	add	a4,s2,a4
    80002a7c:	0017879b          	addiw	a5,a5,1
    80002a80:	0af92023          	sw	a5,160(s2)
    80002a84:	00970c23          	sb	s1,24(a4)
    80002a88:	08f92e23          	sw	a5,156(s2)
    80002a8c:	01013403          	ld	s0,16(sp)
    80002a90:	01813083          	ld	ra,24(sp)
    80002a94:	00813483          	ld	s1,8(sp)
    80002a98:	00013903          	ld	s2,0(sp)
    80002a9c:	00004517          	auipc	a0,0x4
    80002aa0:	06c50513          	addi	a0,a0,108 # 80006b08 <cons>
    80002aa4:	02010113          	addi	sp,sp,32
    80002aa8:	00001317          	auipc	t1,0x1
    80002aac:	eb030067          	jr	-336(t1) # 80003958 <release>
    80002ab0:	00a00493          	li	s1,10
    80002ab4:	fc1ff06f          	j	80002a74 <consoleintr+0x50>

0000000080002ab8 <consoleinit>:
    80002ab8:	fe010113          	addi	sp,sp,-32
    80002abc:	00113c23          	sd	ra,24(sp)
    80002ac0:	00813823          	sd	s0,16(sp)
    80002ac4:	00913423          	sd	s1,8(sp)
    80002ac8:	02010413          	addi	s0,sp,32
    80002acc:	00004497          	auipc	s1,0x4
    80002ad0:	03c48493          	addi	s1,s1,60 # 80006b08 <cons>
    80002ad4:	00048513          	mv	a0,s1
    80002ad8:	00002597          	auipc	a1,0x2
    80002adc:	67058593          	addi	a1,a1,1648 # 80005148 <CONSOLE_STATUS+0x138>
    80002ae0:	00001097          	auipc	ra,0x1
    80002ae4:	d88080e7          	jalr	-632(ra) # 80003868 <initlock>
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	7ac080e7          	jalr	1964(ra) # 80003294 <uartinit>
    80002af0:	01813083          	ld	ra,24(sp)
    80002af4:	01013403          	ld	s0,16(sp)
    80002af8:	00000797          	auipc	a5,0x0
    80002afc:	d9c78793          	addi	a5,a5,-612 # 80002894 <consoleread>
    80002b00:	0af4bc23          	sd	a5,184(s1)
    80002b04:	00000797          	auipc	a5,0x0
    80002b08:	cec78793          	addi	a5,a5,-788 # 800027f0 <consolewrite>
    80002b0c:	0cf4b023          	sd	a5,192(s1)
    80002b10:	00813483          	ld	s1,8(sp)
    80002b14:	02010113          	addi	sp,sp,32
    80002b18:	00008067          	ret

0000000080002b1c <console_read>:
    80002b1c:	ff010113          	addi	sp,sp,-16
    80002b20:	00813423          	sd	s0,8(sp)
    80002b24:	01010413          	addi	s0,sp,16
    80002b28:	00813403          	ld	s0,8(sp)
    80002b2c:	00004317          	auipc	t1,0x4
    80002b30:	09433303          	ld	t1,148(t1) # 80006bc0 <devsw+0x10>
    80002b34:	01010113          	addi	sp,sp,16
    80002b38:	00030067          	jr	t1

0000000080002b3c <console_write>:
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00813423          	sd	s0,8(sp)
    80002b44:	01010413          	addi	s0,sp,16
    80002b48:	00813403          	ld	s0,8(sp)
    80002b4c:	00004317          	auipc	t1,0x4
    80002b50:	07c33303          	ld	t1,124(t1) # 80006bc8 <devsw+0x18>
    80002b54:	01010113          	addi	sp,sp,16
    80002b58:	00030067          	jr	t1

0000000080002b5c <panic>:
    80002b5c:	fe010113          	addi	sp,sp,-32
    80002b60:	00113c23          	sd	ra,24(sp)
    80002b64:	00813823          	sd	s0,16(sp)
    80002b68:	00913423          	sd	s1,8(sp)
    80002b6c:	02010413          	addi	s0,sp,32
    80002b70:	00050493          	mv	s1,a0
    80002b74:	00002517          	auipc	a0,0x2
    80002b78:	5dc50513          	addi	a0,a0,1500 # 80005150 <CONSOLE_STATUS+0x140>
    80002b7c:	00004797          	auipc	a5,0x4
    80002b80:	0e07a623          	sw	zero,236(a5) # 80006c68 <pr+0x18>
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	034080e7          	jalr	52(ra) # 80002bb8 <__printf>
    80002b8c:	00048513          	mv	a0,s1
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	028080e7          	jalr	40(ra) # 80002bb8 <__printf>
    80002b98:	00002517          	auipc	a0,0x2
    80002b9c:	59850513          	addi	a0,a0,1432 # 80005130 <CONSOLE_STATUS+0x120>
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	018080e7          	jalr	24(ra) # 80002bb8 <__printf>
    80002ba8:	00100793          	li	a5,1
    80002bac:	00003717          	auipc	a4,0x3
    80002bb0:	e0f72e23          	sw	a5,-484(a4) # 800059c8 <panicked>
    80002bb4:	0000006f          	j	80002bb4 <panic+0x58>

0000000080002bb8 <__printf>:
    80002bb8:	f3010113          	addi	sp,sp,-208
    80002bbc:	08813023          	sd	s0,128(sp)
    80002bc0:	07313423          	sd	s3,104(sp)
    80002bc4:	09010413          	addi	s0,sp,144
    80002bc8:	05813023          	sd	s8,64(sp)
    80002bcc:	08113423          	sd	ra,136(sp)
    80002bd0:	06913c23          	sd	s1,120(sp)
    80002bd4:	07213823          	sd	s2,112(sp)
    80002bd8:	07413023          	sd	s4,96(sp)
    80002bdc:	05513c23          	sd	s5,88(sp)
    80002be0:	05613823          	sd	s6,80(sp)
    80002be4:	05713423          	sd	s7,72(sp)
    80002be8:	03913c23          	sd	s9,56(sp)
    80002bec:	03a13823          	sd	s10,48(sp)
    80002bf0:	03b13423          	sd	s11,40(sp)
    80002bf4:	00004317          	auipc	t1,0x4
    80002bf8:	05c30313          	addi	t1,t1,92 # 80006c50 <pr>
    80002bfc:	01832c03          	lw	s8,24(t1)
    80002c00:	00b43423          	sd	a1,8(s0)
    80002c04:	00c43823          	sd	a2,16(s0)
    80002c08:	00d43c23          	sd	a3,24(s0)
    80002c0c:	02e43023          	sd	a4,32(s0)
    80002c10:	02f43423          	sd	a5,40(s0)
    80002c14:	03043823          	sd	a6,48(s0)
    80002c18:	03143c23          	sd	a7,56(s0)
    80002c1c:	00050993          	mv	s3,a0
    80002c20:	4a0c1663          	bnez	s8,800030cc <__printf+0x514>
    80002c24:	60098c63          	beqz	s3,8000323c <__printf+0x684>
    80002c28:	0009c503          	lbu	a0,0(s3)
    80002c2c:	00840793          	addi	a5,s0,8
    80002c30:	f6f43c23          	sd	a5,-136(s0)
    80002c34:	00000493          	li	s1,0
    80002c38:	22050063          	beqz	a0,80002e58 <__printf+0x2a0>
    80002c3c:	00002a37          	lui	s4,0x2
    80002c40:	00018ab7          	lui	s5,0x18
    80002c44:	000f4b37          	lui	s6,0xf4
    80002c48:	00989bb7          	lui	s7,0x989
    80002c4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002c50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002c54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002c58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002c5c:	00148c9b          	addiw	s9,s1,1
    80002c60:	02500793          	li	a5,37
    80002c64:	01998933          	add	s2,s3,s9
    80002c68:	38f51263          	bne	a0,a5,80002fec <__printf+0x434>
    80002c6c:	00094783          	lbu	a5,0(s2)
    80002c70:	00078c9b          	sext.w	s9,a5
    80002c74:	1e078263          	beqz	a5,80002e58 <__printf+0x2a0>
    80002c78:	0024849b          	addiw	s1,s1,2
    80002c7c:	07000713          	li	a4,112
    80002c80:	00998933          	add	s2,s3,s1
    80002c84:	38e78a63          	beq	a5,a4,80003018 <__printf+0x460>
    80002c88:	20f76863          	bltu	a4,a5,80002e98 <__printf+0x2e0>
    80002c8c:	42a78863          	beq	a5,a0,800030bc <__printf+0x504>
    80002c90:	06400713          	li	a4,100
    80002c94:	40e79663          	bne	a5,a4,800030a0 <__printf+0x4e8>
    80002c98:	f7843783          	ld	a5,-136(s0)
    80002c9c:	0007a603          	lw	a2,0(a5)
    80002ca0:	00878793          	addi	a5,a5,8
    80002ca4:	f6f43c23          	sd	a5,-136(s0)
    80002ca8:	42064a63          	bltz	a2,800030dc <__printf+0x524>
    80002cac:	00a00713          	li	a4,10
    80002cb0:	02e677bb          	remuw	a5,a2,a4
    80002cb4:	00002d97          	auipc	s11,0x2
    80002cb8:	4c4d8d93          	addi	s11,s11,1220 # 80005178 <digits>
    80002cbc:	00900593          	li	a1,9
    80002cc0:	0006051b          	sext.w	a0,a2
    80002cc4:	00000c93          	li	s9,0
    80002cc8:	02079793          	slli	a5,a5,0x20
    80002ccc:	0207d793          	srli	a5,a5,0x20
    80002cd0:	00fd87b3          	add	a5,s11,a5
    80002cd4:	0007c783          	lbu	a5,0(a5)
    80002cd8:	02e656bb          	divuw	a3,a2,a4
    80002cdc:	f8f40023          	sb	a5,-128(s0)
    80002ce0:	14c5d863          	bge	a1,a2,80002e30 <__printf+0x278>
    80002ce4:	06300593          	li	a1,99
    80002ce8:	00100c93          	li	s9,1
    80002cec:	02e6f7bb          	remuw	a5,a3,a4
    80002cf0:	02079793          	slli	a5,a5,0x20
    80002cf4:	0207d793          	srli	a5,a5,0x20
    80002cf8:	00fd87b3          	add	a5,s11,a5
    80002cfc:	0007c783          	lbu	a5,0(a5)
    80002d00:	02e6d73b          	divuw	a4,a3,a4
    80002d04:	f8f400a3          	sb	a5,-127(s0)
    80002d08:	12a5f463          	bgeu	a1,a0,80002e30 <__printf+0x278>
    80002d0c:	00a00693          	li	a3,10
    80002d10:	00900593          	li	a1,9
    80002d14:	02d777bb          	remuw	a5,a4,a3
    80002d18:	02079793          	slli	a5,a5,0x20
    80002d1c:	0207d793          	srli	a5,a5,0x20
    80002d20:	00fd87b3          	add	a5,s11,a5
    80002d24:	0007c503          	lbu	a0,0(a5)
    80002d28:	02d757bb          	divuw	a5,a4,a3
    80002d2c:	f8a40123          	sb	a0,-126(s0)
    80002d30:	48e5f263          	bgeu	a1,a4,800031b4 <__printf+0x5fc>
    80002d34:	06300513          	li	a0,99
    80002d38:	02d7f5bb          	remuw	a1,a5,a3
    80002d3c:	02059593          	slli	a1,a1,0x20
    80002d40:	0205d593          	srli	a1,a1,0x20
    80002d44:	00bd85b3          	add	a1,s11,a1
    80002d48:	0005c583          	lbu	a1,0(a1)
    80002d4c:	02d7d7bb          	divuw	a5,a5,a3
    80002d50:	f8b401a3          	sb	a1,-125(s0)
    80002d54:	48e57263          	bgeu	a0,a4,800031d8 <__printf+0x620>
    80002d58:	3e700513          	li	a0,999
    80002d5c:	02d7f5bb          	remuw	a1,a5,a3
    80002d60:	02059593          	slli	a1,a1,0x20
    80002d64:	0205d593          	srli	a1,a1,0x20
    80002d68:	00bd85b3          	add	a1,s11,a1
    80002d6c:	0005c583          	lbu	a1,0(a1)
    80002d70:	02d7d7bb          	divuw	a5,a5,a3
    80002d74:	f8b40223          	sb	a1,-124(s0)
    80002d78:	46e57663          	bgeu	a0,a4,800031e4 <__printf+0x62c>
    80002d7c:	02d7f5bb          	remuw	a1,a5,a3
    80002d80:	02059593          	slli	a1,a1,0x20
    80002d84:	0205d593          	srli	a1,a1,0x20
    80002d88:	00bd85b3          	add	a1,s11,a1
    80002d8c:	0005c583          	lbu	a1,0(a1)
    80002d90:	02d7d7bb          	divuw	a5,a5,a3
    80002d94:	f8b402a3          	sb	a1,-123(s0)
    80002d98:	46ea7863          	bgeu	s4,a4,80003208 <__printf+0x650>
    80002d9c:	02d7f5bb          	remuw	a1,a5,a3
    80002da0:	02059593          	slli	a1,a1,0x20
    80002da4:	0205d593          	srli	a1,a1,0x20
    80002da8:	00bd85b3          	add	a1,s11,a1
    80002dac:	0005c583          	lbu	a1,0(a1)
    80002db0:	02d7d7bb          	divuw	a5,a5,a3
    80002db4:	f8b40323          	sb	a1,-122(s0)
    80002db8:	3eeaf863          	bgeu	s5,a4,800031a8 <__printf+0x5f0>
    80002dbc:	02d7f5bb          	remuw	a1,a5,a3
    80002dc0:	02059593          	slli	a1,a1,0x20
    80002dc4:	0205d593          	srli	a1,a1,0x20
    80002dc8:	00bd85b3          	add	a1,s11,a1
    80002dcc:	0005c583          	lbu	a1,0(a1)
    80002dd0:	02d7d7bb          	divuw	a5,a5,a3
    80002dd4:	f8b403a3          	sb	a1,-121(s0)
    80002dd8:	42eb7e63          	bgeu	s6,a4,80003214 <__printf+0x65c>
    80002ddc:	02d7f5bb          	remuw	a1,a5,a3
    80002de0:	02059593          	slli	a1,a1,0x20
    80002de4:	0205d593          	srli	a1,a1,0x20
    80002de8:	00bd85b3          	add	a1,s11,a1
    80002dec:	0005c583          	lbu	a1,0(a1)
    80002df0:	02d7d7bb          	divuw	a5,a5,a3
    80002df4:	f8b40423          	sb	a1,-120(s0)
    80002df8:	42ebfc63          	bgeu	s7,a4,80003230 <__printf+0x678>
    80002dfc:	02079793          	slli	a5,a5,0x20
    80002e00:	0207d793          	srli	a5,a5,0x20
    80002e04:	00fd8db3          	add	s11,s11,a5
    80002e08:	000dc703          	lbu	a4,0(s11)
    80002e0c:	00a00793          	li	a5,10
    80002e10:	00900c93          	li	s9,9
    80002e14:	f8e404a3          	sb	a4,-119(s0)
    80002e18:	00065c63          	bgez	a2,80002e30 <__printf+0x278>
    80002e1c:	f9040713          	addi	a4,s0,-112
    80002e20:	00f70733          	add	a4,a4,a5
    80002e24:	02d00693          	li	a3,45
    80002e28:	fed70823          	sb	a3,-16(a4)
    80002e2c:	00078c93          	mv	s9,a5
    80002e30:	f8040793          	addi	a5,s0,-128
    80002e34:	01978cb3          	add	s9,a5,s9
    80002e38:	f7f40d13          	addi	s10,s0,-129
    80002e3c:	000cc503          	lbu	a0,0(s9)
    80002e40:	fffc8c93          	addi	s9,s9,-1
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	b90080e7          	jalr	-1136(ra) # 800029d4 <consputc>
    80002e4c:	ffac98e3          	bne	s9,s10,80002e3c <__printf+0x284>
    80002e50:	00094503          	lbu	a0,0(s2)
    80002e54:	e00514e3          	bnez	a0,80002c5c <__printf+0xa4>
    80002e58:	1a0c1663          	bnez	s8,80003004 <__printf+0x44c>
    80002e5c:	08813083          	ld	ra,136(sp)
    80002e60:	08013403          	ld	s0,128(sp)
    80002e64:	07813483          	ld	s1,120(sp)
    80002e68:	07013903          	ld	s2,112(sp)
    80002e6c:	06813983          	ld	s3,104(sp)
    80002e70:	06013a03          	ld	s4,96(sp)
    80002e74:	05813a83          	ld	s5,88(sp)
    80002e78:	05013b03          	ld	s6,80(sp)
    80002e7c:	04813b83          	ld	s7,72(sp)
    80002e80:	04013c03          	ld	s8,64(sp)
    80002e84:	03813c83          	ld	s9,56(sp)
    80002e88:	03013d03          	ld	s10,48(sp)
    80002e8c:	02813d83          	ld	s11,40(sp)
    80002e90:	0d010113          	addi	sp,sp,208
    80002e94:	00008067          	ret
    80002e98:	07300713          	li	a4,115
    80002e9c:	1ce78a63          	beq	a5,a4,80003070 <__printf+0x4b8>
    80002ea0:	07800713          	li	a4,120
    80002ea4:	1ee79e63          	bne	a5,a4,800030a0 <__printf+0x4e8>
    80002ea8:	f7843783          	ld	a5,-136(s0)
    80002eac:	0007a703          	lw	a4,0(a5)
    80002eb0:	00878793          	addi	a5,a5,8
    80002eb4:	f6f43c23          	sd	a5,-136(s0)
    80002eb8:	28074263          	bltz	a4,8000313c <__printf+0x584>
    80002ebc:	00002d97          	auipc	s11,0x2
    80002ec0:	2bcd8d93          	addi	s11,s11,700 # 80005178 <digits>
    80002ec4:	00f77793          	andi	a5,a4,15
    80002ec8:	00fd87b3          	add	a5,s11,a5
    80002ecc:	0007c683          	lbu	a3,0(a5)
    80002ed0:	00f00613          	li	a2,15
    80002ed4:	0007079b          	sext.w	a5,a4
    80002ed8:	f8d40023          	sb	a3,-128(s0)
    80002edc:	0047559b          	srliw	a1,a4,0x4
    80002ee0:	0047569b          	srliw	a3,a4,0x4
    80002ee4:	00000c93          	li	s9,0
    80002ee8:	0ee65063          	bge	a2,a4,80002fc8 <__printf+0x410>
    80002eec:	00f6f693          	andi	a3,a3,15
    80002ef0:	00dd86b3          	add	a3,s11,a3
    80002ef4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002ef8:	0087d79b          	srliw	a5,a5,0x8
    80002efc:	00100c93          	li	s9,1
    80002f00:	f8d400a3          	sb	a3,-127(s0)
    80002f04:	0cb67263          	bgeu	a2,a1,80002fc8 <__printf+0x410>
    80002f08:	00f7f693          	andi	a3,a5,15
    80002f0c:	00dd86b3          	add	a3,s11,a3
    80002f10:	0006c583          	lbu	a1,0(a3)
    80002f14:	00f00613          	li	a2,15
    80002f18:	0047d69b          	srliw	a3,a5,0x4
    80002f1c:	f8b40123          	sb	a1,-126(s0)
    80002f20:	0047d593          	srli	a1,a5,0x4
    80002f24:	28f67e63          	bgeu	a2,a5,800031c0 <__printf+0x608>
    80002f28:	00f6f693          	andi	a3,a3,15
    80002f2c:	00dd86b3          	add	a3,s11,a3
    80002f30:	0006c503          	lbu	a0,0(a3)
    80002f34:	0087d813          	srli	a6,a5,0x8
    80002f38:	0087d69b          	srliw	a3,a5,0x8
    80002f3c:	f8a401a3          	sb	a0,-125(s0)
    80002f40:	28b67663          	bgeu	a2,a1,800031cc <__printf+0x614>
    80002f44:	00f6f693          	andi	a3,a3,15
    80002f48:	00dd86b3          	add	a3,s11,a3
    80002f4c:	0006c583          	lbu	a1,0(a3)
    80002f50:	00c7d513          	srli	a0,a5,0xc
    80002f54:	00c7d69b          	srliw	a3,a5,0xc
    80002f58:	f8b40223          	sb	a1,-124(s0)
    80002f5c:	29067a63          	bgeu	a2,a6,800031f0 <__printf+0x638>
    80002f60:	00f6f693          	andi	a3,a3,15
    80002f64:	00dd86b3          	add	a3,s11,a3
    80002f68:	0006c583          	lbu	a1,0(a3)
    80002f6c:	0107d813          	srli	a6,a5,0x10
    80002f70:	0107d69b          	srliw	a3,a5,0x10
    80002f74:	f8b402a3          	sb	a1,-123(s0)
    80002f78:	28a67263          	bgeu	a2,a0,800031fc <__printf+0x644>
    80002f7c:	00f6f693          	andi	a3,a3,15
    80002f80:	00dd86b3          	add	a3,s11,a3
    80002f84:	0006c683          	lbu	a3,0(a3)
    80002f88:	0147d79b          	srliw	a5,a5,0x14
    80002f8c:	f8d40323          	sb	a3,-122(s0)
    80002f90:	21067663          	bgeu	a2,a6,8000319c <__printf+0x5e4>
    80002f94:	02079793          	slli	a5,a5,0x20
    80002f98:	0207d793          	srli	a5,a5,0x20
    80002f9c:	00fd8db3          	add	s11,s11,a5
    80002fa0:	000dc683          	lbu	a3,0(s11)
    80002fa4:	00800793          	li	a5,8
    80002fa8:	00700c93          	li	s9,7
    80002fac:	f8d403a3          	sb	a3,-121(s0)
    80002fb0:	00075c63          	bgez	a4,80002fc8 <__printf+0x410>
    80002fb4:	f9040713          	addi	a4,s0,-112
    80002fb8:	00f70733          	add	a4,a4,a5
    80002fbc:	02d00693          	li	a3,45
    80002fc0:	fed70823          	sb	a3,-16(a4)
    80002fc4:	00078c93          	mv	s9,a5
    80002fc8:	f8040793          	addi	a5,s0,-128
    80002fcc:	01978cb3          	add	s9,a5,s9
    80002fd0:	f7f40d13          	addi	s10,s0,-129
    80002fd4:	000cc503          	lbu	a0,0(s9)
    80002fd8:	fffc8c93          	addi	s9,s9,-1
    80002fdc:	00000097          	auipc	ra,0x0
    80002fe0:	9f8080e7          	jalr	-1544(ra) # 800029d4 <consputc>
    80002fe4:	ff9d18e3          	bne	s10,s9,80002fd4 <__printf+0x41c>
    80002fe8:	0100006f          	j	80002ff8 <__printf+0x440>
    80002fec:	00000097          	auipc	ra,0x0
    80002ff0:	9e8080e7          	jalr	-1560(ra) # 800029d4 <consputc>
    80002ff4:	000c8493          	mv	s1,s9
    80002ff8:	00094503          	lbu	a0,0(s2)
    80002ffc:	c60510e3          	bnez	a0,80002c5c <__printf+0xa4>
    80003000:	e40c0ee3          	beqz	s8,80002e5c <__printf+0x2a4>
    80003004:	00004517          	auipc	a0,0x4
    80003008:	c4c50513          	addi	a0,a0,-948 # 80006c50 <pr>
    8000300c:	00001097          	auipc	ra,0x1
    80003010:	94c080e7          	jalr	-1716(ra) # 80003958 <release>
    80003014:	e49ff06f          	j	80002e5c <__printf+0x2a4>
    80003018:	f7843783          	ld	a5,-136(s0)
    8000301c:	03000513          	li	a0,48
    80003020:	01000d13          	li	s10,16
    80003024:	00878713          	addi	a4,a5,8
    80003028:	0007bc83          	ld	s9,0(a5)
    8000302c:	f6e43c23          	sd	a4,-136(s0)
    80003030:	00000097          	auipc	ra,0x0
    80003034:	9a4080e7          	jalr	-1628(ra) # 800029d4 <consputc>
    80003038:	07800513          	li	a0,120
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	998080e7          	jalr	-1640(ra) # 800029d4 <consputc>
    80003044:	00002d97          	auipc	s11,0x2
    80003048:	134d8d93          	addi	s11,s11,308 # 80005178 <digits>
    8000304c:	03ccd793          	srli	a5,s9,0x3c
    80003050:	00fd87b3          	add	a5,s11,a5
    80003054:	0007c503          	lbu	a0,0(a5)
    80003058:	fffd0d1b          	addiw	s10,s10,-1
    8000305c:	004c9c93          	slli	s9,s9,0x4
    80003060:	00000097          	auipc	ra,0x0
    80003064:	974080e7          	jalr	-1676(ra) # 800029d4 <consputc>
    80003068:	fe0d12e3          	bnez	s10,8000304c <__printf+0x494>
    8000306c:	f8dff06f          	j	80002ff8 <__printf+0x440>
    80003070:	f7843783          	ld	a5,-136(s0)
    80003074:	0007bc83          	ld	s9,0(a5)
    80003078:	00878793          	addi	a5,a5,8
    8000307c:	f6f43c23          	sd	a5,-136(s0)
    80003080:	000c9a63          	bnez	s9,80003094 <__printf+0x4dc>
    80003084:	1080006f          	j	8000318c <__printf+0x5d4>
    80003088:	001c8c93          	addi	s9,s9,1
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	948080e7          	jalr	-1720(ra) # 800029d4 <consputc>
    80003094:	000cc503          	lbu	a0,0(s9)
    80003098:	fe0518e3          	bnez	a0,80003088 <__printf+0x4d0>
    8000309c:	f5dff06f          	j	80002ff8 <__printf+0x440>
    800030a0:	02500513          	li	a0,37
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	930080e7          	jalr	-1744(ra) # 800029d4 <consputc>
    800030ac:	000c8513          	mv	a0,s9
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	924080e7          	jalr	-1756(ra) # 800029d4 <consputc>
    800030b8:	f41ff06f          	j	80002ff8 <__printf+0x440>
    800030bc:	02500513          	li	a0,37
    800030c0:	00000097          	auipc	ra,0x0
    800030c4:	914080e7          	jalr	-1772(ra) # 800029d4 <consputc>
    800030c8:	f31ff06f          	j	80002ff8 <__printf+0x440>
    800030cc:	00030513          	mv	a0,t1
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	7bc080e7          	jalr	1980(ra) # 8000388c <acquire>
    800030d8:	b4dff06f          	j	80002c24 <__printf+0x6c>
    800030dc:	40c0053b          	negw	a0,a2
    800030e0:	00a00713          	li	a4,10
    800030e4:	02e576bb          	remuw	a3,a0,a4
    800030e8:	00002d97          	auipc	s11,0x2
    800030ec:	090d8d93          	addi	s11,s11,144 # 80005178 <digits>
    800030f0:	ff700593          	li	a1,-9
    800030f4:	02069693          	slli	a3,a3,0x20
    800030f8:	0206d693          	srli	a3,a3,0x20
    800030fc:	00dd86b3          	add	a3,s11,a3
    80003100:	0006c683          	lbu	a3,0(a3)
    80003104:	02e557bb          	divuw	a5,a0,a4
    80003108:	f8d40023          	sb	a3,-128(s0)
    8000310c:	10b65e63          	bge	a2,a1,80003228 <__printf+0x670>
    80003110:	06300593          	li	a1,99
    80003114:	02e7f6bb          	remuw	a3,a5,a4
    80003118:	02069693          	slli	a3,a3,0x20
    8000311c:	0206d693          	srli	a3,a3,0x20
    80003120:	00dd86b3          	add	a3,s11,a3
    80003124:	0006c683          	lbu	a3,0(a3)
    80003128:	02e7d73b          	divuw	a4,a5,a4
    8000312c:	00200793          	li	a5,2
    80003130:	f8d400a3          	sb	a3,-127(s0)
    80003134:	bca5ece3          	bltu	a1,a0,80002d0c <__printf+0x154>
    80003138:	ce5ff06f          	j	80002e1c <__printf+0x264>
    8000313c:	40e007bb          	negw	a5,a4
    80003140:	00002d97          	auipc	s11,0x2
    80003144:	038d8d93          	addi	s11,s11,56 # 80005178 <digits>
    80003148:	00f7f693          	andi	a3,a5,15
    8000314c:	00dd86b3          	add	a3,s11,a3
    80003150:	0006c583          	lbu	a1,0(a3)
    80003154:	ff100613          	li	a2,-15
    80003158:	0047d69b          	srliw	a3,a5,0x4
    8000315c:	f8b40023          	sb	a1,-128(s0)
    80003160:	0047d59b          	srliw	a1,a5,0x4
    80003164:	0ac75e63          	bge	a4,a2,80003220 <__printf+0x668>
    80003168:	00f6f693          	andi	a3,a3,15
    8000316c:	00dd86b3          	add	a3,s11,a3
    80003170:	0006c603          	lbu	a2,0(a3)
    80003174:	00f00693          	li	a3,15
    80003178:	0087d79b          	srliw	a5,a5,0x8
    8000317c:	f8c400a3          	sb	a2,-127(s0)
    80003180:	d8b6e4e3          	bltu	a3,a1,80002f08 <__printf+0x350>
    80003184:	00200793          	li	a5,2
    80003188:	e2dff06f          	j	80002fb4 <__printf+0x3fc>
    8000318c:	00002c97          	auipc	s9,0x2
    80003190:	fccc8c93          	addi	s9,s9,-52 # 80005158 <CONSOLE_STATUS+0x148>
    80003194:	02800513          	li	a0,40
    80003198:	ef1ff06f          	j	80003088 <__printf+0x4d0>
    8000319c:	00700793          	li	a5,7
    800031a0:	00600c93          	li	s9,6
    800031a4:	e0dff06f          	j	80002fb0 <__printf+0x3f8>
    800031a8:	00700793          	li	a5,7
    800031ac:	00600c93          	li	s9,6
    800031b0:	c69ff06f          	j	80002e18 <__printf+0x260>
    800031b4:	00300793          	li	a5,3
    800031b8:	00200c93          	li	s9,2
    800031bc:	c5dff06f          	j	80002e18 <__printf+0x260>
    800031c0:	00300793          	li	a5,3
    800031c4:	00200c93          	li	s9,2
    800031c8:	de9ff06f          	j	80002fb0 <__printf+0x3f8>
    800031cc:	00400793          	li	a5,4
    800031d0:	00300c93          	li	s9,3
    800031d4:	dddff06f          	j	80002fb0 <__printf+0x3f8>
    800031d8:	00400793          	li	a5,4
    800031dc:	00300c93          	li	s9,3
    800031e0:	c39ff06f          	j	80002e18 <__printf+0x260>
    800031e4:	00500793          	li	a5,5
    800031e8:	00400c93          	li	s9,4
    800031ec:	c2dff06f          	j	80002e18 <__printf+0x260>
    800031f0:	00500793          	li	a5,5
    800031f4:	00400c93          	li	s9,4
    800031f8:	db9ff06f          	j	80002fb0 <__printf+0x3f8>
    800031fc:	00600793          	li	a5,6
    80003200:	00500c93          	li	s9,5
    80003204:	dadff06f          	j	80002fb0 <__printf+0x3f8>
    80003208:	00600793          	li	a5,6
    8000320c:	00500c93          	li	s9,5
    80003210:	c09ff06f          	j	80002e18 <__printf+0x260>
    80003214:	00800793          	li	a5,8
    80003218:	00700c93          	li	s9,7
    8000321c:	bfdff06f          	j	80002e18 <__printf+0x260>
    80003220:	00100793          	li	a5,1
    80003224:	d91ff06f          	j	80002fb4 <__printf+0x3fc>
    80003228:	00100793          	li	a5,1
    8000322c:	bf1ff06f          	j	80002e1c <__printf+0x264>
    80003230:	00900793          	li	a5,9
    80003234:	00800c93          	li	s9,8
    80003238:	be1ff06f          	j	80002e18 <__printf+0x260>
    8000323c:	00002517          	auipc	a0,0x2
    80003240:	f2450513          	addi	a0,a0,-220 # 80005160 <CONSOLE_STATUS+0x150>
    80003244:	00000097          	auipc	ra,0x0
    80003248:	918080e7          	jalr	-1768(ra) # 80002b5c <panic>

000000008000324c <printfinit>:
    8000324c:	fe010113          	addi	sp,sp,-32
    80003250:	00813823          	sd	s0,16(sp)
    80003254:	00913423          	sd	s1,8(sp)
    80003258:	00113c23          	sd	ra,24(sp)
    8000325c:	02010413          	addi	s0,sp,32
    80003260:	00004497          	auipc	s1,0x4
    80003264:	9f048493          	addi	s1,s1,-1552 # 80006c50 <pr>
    80003268:	00048513          	mv	a0,s1
    8000326c:	00002597          	auipc	a1,0x2
    80003270:	f0458593          	addi	a1,a1,-252 # 80005170 <CONSOLE_STATUS+0x160>
    80003274:	00000097          	auipc	ra,0x0
    80003278:	5f4080e7          	jalr	1524(ra) # 80003868 <initlock>
    8000327c:	01813083          	ld	ra,24(sp)
    80003280:	01013403          	ld	s0,16(sp)
    80003284:	0004ac23          	sw	zero,24(s1)
    80003288:	00813483          	ld	s1,8(sp)
    8000328c:	02010113          	addi	sp,sp,32
    80003290:	00008067          	ret

0000000080003294 <uartinit>:
    80003294:	ff010113          	addi	sp,sp,-16
    80003298:	00813423          	sd	s0,8(sp)
    8000329c:	01010413          	addi	s0,sp,16
    800032a0:	100007b7          	lui	a5,0x10000
    800032a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800032a8:	f8000713          	li	a4,-128
    800032ac:	00e781a3          	sb	a4,3(a5)
    800032b0:	00300713          	li	a4,3
    800032b4:	00e78023          	sb	a4,0(a5)
    800032b8:	000780a3          	sb	zero,1(a5)
    800032bc:	00e781a3          	sb	a4,3(a5)
    800032c0:	00700693          	li	a3,7
    800032c4:	00d78123          	sb	a3,2(a5)
    800032c8:	00e780a3          	sb	a4,1(a5)
    800032cc:	00813403          	ld	s0,8(sp)
    800032d0:	01010113          	addi	sp,sp,16
    800032d4:	00008067          	ret

00000000800032d8 <uartputc>:
    800032d8:	00002797          	auipc	a5,0x2
    800032dc:	6f07a783          	lw	a5,1776(a5) # 800059c8 <panicked>
    800032e0:	00078463          	beqz	a5,800032e8 <uartputc+0x10>
    800032e4:	0000006f          	j	800032e4 <uartputc+0xc>
    800032e8:	fd010113          	addi	sp,sp,-48
    800032ec:	02813023          	sd	s0,32(sp)
    800032f0:	00913c23          	sd	s1,24(sp)
    800032f4:	01213823          	sd	s2,16(sp)
    800032f8:	01313423          	sd	s3,8(sp)
    800032fc:	02113423          	sd	ra,40(sp)
    80003300:	03010413          	addi	s0,sp,48
    80003304:	00002917          	auipc	s2,0x2
    80003308:	6cc90913          	addi	s2,s2,1740 # 800059d0 <uart_tx_r>
    8000330c:	00093783          	ld	a5,0(s2)
    80003310:	00002497          	auipc	s1,0x2
    80003314:	6c848493          	addi	s1,s1,1736 # 800059d8 <uart_tx_w>
    80003318:	0004b703          	ld	a4,0(s1)
    8000331c:	02078693          	addi	a3,a5,32
    80003320:	00050993          	mv	s3,a0
    80003324:	02e69c63          	bne	a3,a4,8000335c <uartputc+0x84>
    80003328:	00001097          	auipc	ra,0x1
    8000332c:	834080e7          	jalr	-1996(ra) # 80003b5c <push_on>
    80003330:	00093783          	ld	a5,0(s2)
    80003334:	0004b703          	ld	a4,0(s1)
    80003338:	02078793          	addi	a5,a5,32
    8000333c:	00e79463          	bne	a5,a4,80003344 <uartputc+0x6c>
    80003340:	0000006f          	j	80003340 <uartputc+0x68>
    80003344:	00001097          	auipc	ra,0x1
    80003348:	88c080e7          	jalr	-1908(ra) # 80003bd0 <pop_on>
    8000334c:	00093783          	ld	a5,0(s2)
    80003350:	0004b703          	ld	a4,0(s1)
    80003354:	02078693          	addi	a3,a5,32
    80003358:	fce688e3          	beq	a3,a4,80003328 <uartputc+0x50>
    8000335c:	01f77693          	andi	a3,a4,31
    80003360:	00004597          	auipc	a1,0x4
    80003364:	91058593          	addi	a1,a1,-1776 # 80006c70 <uart_tx_buf>
    80003368:	00d586b3          	add	a3,a1,a3
    8000336c:	00170713          	addi	a4,a4,1
    80003370:	01368023          	sb	s3,0(a3)
    80003374:	00e4b023          	sd	a4,0(s1)
    80003378:	10000637          	lui	a2,0x10000
    8000337c:	02f71063          	bne	a4,a5,8000339c <uartputc+0xc4>
    80003380:	0340006f          	j	800033b4 <uartputc+0xdc>
    80003384:	00074703          	lbu	a4,0(a4)
    80003388:	00f93023          	sd	a5,0(s2)
    8000338c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003390:	00093783          	ld	a5,0(s2)
    80003394:	0004b703          	ld	a4,0(s1)
    80003398:	00f70e63          	beq	a4,a5,800033b4 <uartputc+0xdc>
    8000339c:	00564683          	lbu	a3,5(a2)
    800033a0:	01f7f713          	andi	a4,a5,31
    800033a4:	00e58733          	add	a4,a1,a4
    800033a8:	0206f693          	andi	a3,a3,32
    800033ac:	00178793          	addi	a5,a5,1
    800033b0:	fc069ae3          	bnez	a3,80003384 <uartputc+0xac>
    800033b4:	02813083          	ld	ra,40(sp)
    800033b8:	02013403          	ld	s0,32(sp)
    800033bc:	01813483          	ld	s1,24(sp)
    800033c0:	01013903          	ld	s2,16(sp)
    800033c4:	00813983          	ld	s3,8(sp)
    800033c8:	03010113          	addi	sp,sp,48
    800033cc:	00008067          	ret

00000000800033d0 <uartputc_sync>:
    800033d0:	ff010113          	addi	sp,sp,-16
    800033d4:	00813423          	sd	s0,8(sp)
    800033d8:	01010413          	addi	s0,sp,16
    800033dc:	00002717          	auipc	a4,0x2
    800033e0:	5ec72703          	lw	a4,1516(a4) # 800059c8 <panicked>
    800033e4:	02071663          	bnez	a4,80003410 <uartputc_sync+0x40>
    800033e8:	00050793          	mv	a5,a0
    800033ec:	100006b7          	lui	a3,0x10000
    800033f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800033f4:	02077713          	andi	a4,a4,32
    800033f8:	fe070ce3          	beqz	a4,800033f0 <uartputc_sync+0x20>
    800033fc:	0ff7f793          	andi	a5,a5,255
    80003400:	00f68023          	sb	a5,0(a3)
    80003404:	00813403          	ld	s0,8(sp)
    80003408:	01010113          	addi	sp,sp,16
    8000340c:	00008067          	ret
    80003410:	0000006f          	j	80003410 <uartputc_sync+0x40>

0000000080003414 <uartstart>:
    80003414:	ff010113          	addi	sp,sp,-16
    80003418:	00813423          	sd	s0,8(sp)
    8000341c:	01010413          	addi	s0,sp,16
    80003420:	00002617          	auipc	a2,0x2
    80003424:	5b060613          	addi	a2,a2,1456 # 800059d0 <uart_tx_r>
    80003428:	00002517          	auipc	a0,0x2
    8000342c:	5b050513          	addi	a0,a0,1456 # 800059d8 <uart_tx_w>
    80003430:	00063783          	ld	a5,0(a2)
    80003434:	00053703          	ld	a4,0(a0)
    80003438:	04f70263          	beq	a4,a5,8000347c <uartstart+0x68>
    8000343c:	100005b7          	lui	a1,0x10000
    80003440:	00004817          	auipc	a6,0x4
    80003444:	83080813          	addi	a6,a6,-2000 # 80006c70 <uart_tx_buf>
    80003448:	01c0006f          	j	80003464 <uartstart+0x50>
    8000344c:	0006c703          	lbu	a4,0(a3)
    80003450:	00f63023          	sd	a5,0(a2)
    80003454:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003458:	00063783          	ld	a5,0(a2)
    8000345c:	00053703          	ld	a4,0(a0)
    80003460:	00f70e63          	beq	a4,a5,8000347c <uartstart+0x68>
    80003464:	01f7f713          	andi	a4,a5,31
    80003468:	00e806b3          	add	a3,a6,a4
    8000346c:	0055c703          	lbu	a4,5(a1)
    80003470:	00178793          	addi	a5,a5,1
    80003474:	02077713          	andi	a4,a4,32
    80003478:	fc071ae3          	bnez	a4,8000344c <uartstart+0x38>
    8000347c:	00813403          	ld	s0,8(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret

0000000080003488 <uartgetc>:
    80003488:	ff010113          	addi	sp,sp,-16
    8000348c:	00813423          	sd	s0,8(sp)
    80003490:	01010413          	addi	s0,sp,16
    80003494:	10000737          	lui	a4,0x10000
    80003498:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000349c:	0017f793          	andi	a5,a5,1
    800034a0:	00078c63          	beqz	a5,800034b8 <uartgetc+0x30>
    800034a4:	00074503          	lbu	a0,0(a4)
    800034a8:	0ff57513          	andi	a0,a0,255
    800034ac:	00813403          	ld	s0,8(sp)
    800034b0:	01010113          	addi	sp,sp,16
    800034b4:	00008067          	ret
    800034b8:	fff00513          	li	a0,-1
    800034bc:	ff1ff06f          	j	800034ac <uartgetc+0x24>

00000000800034c0 <uartintr>:
    800034c0:	100007b7          	lui	a5,0x10000
    800034c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800034c8:	0017f793          	andi	a5,a5,1
    800034cc:	0a078463          	beqz	a5,80003574 <uartintr+0xb4>
    800034d0:	fe010113          	addi	sp,sp,-32
    800034d4:	00813823          	sd	s0,16(sp)
    800034d8:	00913423          	sd	s1,8(sp)
    800034dc:	00113c23          	sd	ra,24(sp)
    800034e0:	02010413          	addi	s0,sp,32
    800034e4:	100004b7          	lui	s1,0x10000
    800034e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800034ec:	0ff57513          	andi	a0,a0,255
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	534080e7          	jalr	1332(ra) # 80002a24 <consoleintr>
    800034f8:	0054c783          	lbu	a5,5(s1)
    800034fc:	0017f793          	andi	a5,a5,1
    80003500:	fe0794e3          	bnez	a5,800034e8 <uartintr+0x28>
    80003504:	00002617          	auipc	a2,0x2
    80003508:	4cc60613          	addi	a2,a2,1228 # 800059d0 <uart_tx_r>
    8000350c:	00002517          	auipc	a0,0x2
    80003510:	4cc50513          	addi	a0,a0,1228 # 800059d8 <uart_tx_w>
    80003514:	00063783          	ld	a5,0(a2)
    80003518:	00053703          	ld	a4,0(a0)
    8000351c:	04f70263          	beq	a4,a5,80003560 <uartintr+0xa0>
    80003520:	100005b7          	lui	a1,0x10000
    80003524:	00003817          	auipc	a6,0x3
    80003528:	74c80813          	addi	a6,a6,1868 # 80006c70 <uart_tx_buf>
    8000352c:	01c0006f          	j	80003548 <uartintr+0x88>
    80003530:	0006c703          	lbu	a4,0(a3)
    80003534:	00f63023          	sd	a5,0(a2)
    80003538:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000353c:	00063783          	ld	a5,0(a2)
    80003540:	00053703          	ld	a4,0(a0)
    80003544:	00f70e63          	beq	a4,a5,80003560 <uartintr+0xa0>
    80003548:	01f7f713          	andi	a4,a5,31
    8000354c:	00e806b3          	add	a3,a6,a4
    80003550:	0055c703          	lbu	a4,5(a1)
    80003554:	00178793          	addi	a5,a5,1
    80003558:	02077713          	andi	a4,a4,32
    8000355c:	fc071ae3          	bnez	a4,80003530 <uartintr+0x70>
    80003560:	01813083          	ld	ra,24(sp)
    80003564:	01013403          	ld	s0,16(sp)
    80003568:	00813483          	ld	s1,8(sp)
    8000356c:	02010113          	addi	sp,sp,32
    80003570:	00008067          	ret
    80003574:	00002617          	auipc	a2,0x2
    80003578:	45c60613          	addi	a2,a2,1116 # 800059d0 <uart_tx_r>
    8000357c:	00002517          	auipc	a0,0x2
    80003580:	45c50513          	addi	a0,a0,1116 # 800059d8 <uart_tx_w>
    80003584:	00063783          	ld	a5,0(a2)
    80003588:	00053703          	ld	a4,0(a0)
    8000358c:	04f70263          	beq	a4,a5,800035d0 <uartintr+0x110>
    80003590:	100005b7          	lui	a1,0x10000
    80003594:	00003817          	auipc	a6,0x3
    80003598:	6dc80813          	addi	a6,a6,1756 # 80006c70 <uart_tx_buf>
    8000359c:	01c0006f          	j	800035b8 <uartintr+0xf8>
    800035a0:	0006c703          	lbu	a4,0(a3)
    800035a4:	00f63023          	sd	a5,0(a2)
    800035a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035ac:	00063783          	ld	a5,0(a2)
    800035b0:	00053703          	ld	a4,0(a0)
    800035b4:	02f70063          	beq	a4,a5,800035d4 <uartintr+0x114>
    800035b8:	01f7f713          	andi	a4,a5,31
    800035bc:	00e806b3          	add	a3,a6,a4
    800035c0:	0055c703          	lbu	a4,5(a1)
    800035c4:	00178793          	addi	a5,a5,1
    800035c8:	02077713          	andi	a4,a4,32
    800035cc:	fc071ae3          	bnez	a4,800035a0 <uartintr+0xe0>
    800035d0:	00008067          	ret
    800035d4:	00008067          	ret

00000000800035d8 <kinit>:
    800035d8:	fc010113          	addi	sp,sp,-64
    800035dc:	02913423          	sd	s1,40(sp)
    800035e0:	fffff7b7          	lui	a5,0xfffff
    800035e4:	00004497          	auipc	s1,0x4
    800035e8:	6ab48493          	addi	s1,s1,1707 # 80007c8f <end+0xfff>
    800035ec:	02813823          	sd	s0,48(sp)
    800035f0:	01313c23          	sd	s3,24(sp)
    800035f4:	00f4f4b3          	and	s1,s1,a5
    800035f8:	02113c23          	sd	ra,56(sp)
    800035fc:	03213023          	sd	s2,32(sp)
    80003600:	01413823          	sd	s4,16(sp)
    80003604:	01513423          	sd	s5,8(sp)
    80003608:	04010413          	addi	s0,sp,64
    8000360c:	000017b7          	lui	a5,0x1
    80003610:	01100993          	li	s3,17
    80003614:	00f487b3          	add	a5,s1,a5
    80003618:	01b99993          	slli	s3,s3,0x1b
    8000361c:	06f9e063          	bltu	s3,a5,8000367c <kinit+0xa4>
    80003620:	00003a97          	auipc	s5,0x3
    80003624:	670a8a93          	addi	s5,s5,1648 # 80006c90 <end>
    80003628:	0754ec63          	bltu	s1,s5,800036a0 <kinit+0xc8>
    8000362c:	0734fa63          	bgeu	s1,s3,800036a0 <kinit+0xc8>
    80003630:	00088a37          	lui	s4,0x88
    80003634:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003638:	00002917          	auipc	s2,0x2
    8000363c:	3a890913          	addi	s2,s2,936 # 800059e0 <kmem>
    80003640:	00ca1a13          	slli	s4,s4,0xc
    80003644:	0140006f          	j	80003658 <kinit+0x80>
    80003648:	000017b7          	lui	a5,0x1
    8000364c:	00f484b3          	add	s1,s1,a5
    80003650:	0554e863          	bltu	s1,s5,800036a0 <kinit+0xc8>
    80003654:	0534f663          	bgeu	s1,s3,800036a0 <kinit+0xc8>
    80003658:	00001637          	lui	a2,0x1
    8000365c:	00100593          	li	a1,1
    80003660:	00048513          	mv	a0,s1
    80003664:	00000097          	auipc	ra,0x0
    80003668:	5e4080e7          	jalr	1508(ra) # 80003c48 <__memset>
    8000366c:	00093783          	ld	a5,0(s2)
    80003670:	00f4b023          	sd	a5,0(s1)
    80003674:	00993023          	sd	s1,0(s2)
    80003678:	fd4498e3          	bne	s1,s4,80003648 <kinit+0x70>
    8000367c:	03813083          	ld	ra,56(sp)
    80003680:	03013403          	ld	s0,48(sp)
    80003684:	02813483          	ld	s1,40(sp)
    80003688:	02013903          	ld	s2,32(sp)
    8000368c:	01813983          	ld	s3,24(sp)
    80003690:	01013a03          	ld	s4,16(sp)
    80003694:	00813a83          	ld	s5,8(sp)
    80003698:	04010113          	addi	sp,sp,64
    8000369c:	00008067          	ret
    800036a0:	00002517          	auipc	a0,0x2
    800036a4:	af050513          	addi	a0,a0,-1296 # 80005190 <digits+0x18>
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	4b4080e7          	jalr	1204(ra) # 80002b5c <panic>

00000000800036b0 <freerange>:
    800036b0:	fc010113          	addi	sp,sp,-64
    800036b4:	000017b7          	lui	a5,0x1
    800036b8:	02913423          	sd	s1,40(sp)
    800036bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800036c0:	009504b3          	add	s1,a0,s1
    800036c4:	fffff537          	lui	a0,0xfffff
    800036c8:	02813823          	sd	s0,48(sp)
    800036cc:	02113c23          	sd	ra,56(sp)
    800036d0:	03213023          	sd	s2,32(sp)
    800036d4:	01313c23          	sd	s3,24(sp)
    800036d8:	01413823          	sd	s4,16(sp)
    800036dc:	01513423          	sd	s5,8(sp)
    800036e0:	01613023          	sd	s6,0(sp)
    800036e4:	04010413          	addi	s0,sp,64
    800036e8:	00a4f4b3          	and	s1,s1,a0
    800036ec:	00f487b3          	add	a5,s1,a5
    800036f0:	06f5e463          	bltu	a1,a5,80003758 <freerange+0xa8>
    800036f4:	00003a97          	auipc	s5,0x3
    800036f8:	59ca8a93          	addi	s5,s5,1436 # 80006c90 <end>
    800036fc:	0954e263          	bltu	s1,s5,80003780 <freerange+0xd0>
    80003700:	01100993          	li	s3,17
    80003704:	01b99993          	slli	s3,s3,0x1b
    80003708:	0734fc63          	bgeu	s1,s3,80003780 <freerange+0xd0>
    8000370c:	00058a13          	mv	s4,a1
    80003710:	00002917          	auipc	s2,0x2
    80003714:	2d090913          	addi	s2,s2,720 # 800059e0 <kmem>
    80003718:	00002b37          	lui	s6,0x2
    8000371c:	0140006f          	j	80003730 <freerange+0x80>
    80003720:	000017b7          	lui	a5,0x1
    80003724:	00f484b3          	add	s1,s1,a5
    80003728:	0554ec63          	bltu	s1,s5,80003780 <freerange+0xd0>
    8000372c:	0534fa63          	bgeu	s1,s3,80003780 <freerange+0xd0>
    80003730:	00001637          	lui	a2,0x1
    80003734:	00100593          	li	a1,1
    80003738:	00048513          	mv	a0,s1
    8000373c:	00000097          	auipc	ra,0x0
    80003740:	50c080e7          	jalr	1292(ra) # 80003c48 <__memset>
    80003744:	00093703          	ld	a4,0(s2)
    80003748:	016487b3          	add	a5,s1,s6
    8000374c:	00e4b023          	sd	a4,0(s1)
    80003750:	00993023          	sd	s1,0(s2)
    80003754:	fcfa76e3          	bgeu	s4,a5,80003720 <freerange+0x70>
    80003758:	03813083          	ld	ra,56(sp)
    8000375c:	03013403          	ld	s0,48(sp)
    80003760:	02813483          	ld	s1,40(sp)
    80003764:	02013903          	ld	s2,32(sp)
    80003768:	01813983          	ld	s3,24(sp)
    8000376c:	01013a03          	ld	s4,16(sp)
    80003770:	00813a83          	ld	s5,8(sp)
    80003774:	00013b03          	ld	s6,0(sp)
    80003778:	04010113          	addi	sp,sp,64
    8000377c:	00008067          	ret
    80003780:	00002517          	auipc	a0,0x2
    80003784:	a1050513          	addi	a0,a0,-1520 # 80005190 <digits+0x18>
    80003788:	fffff097          	auipc	ra,0xfffff
    8000378c:	3d4080e7          	jalr	980(ra) # 80002b5c <panic>

0000000080003790 <kfree>:
    80003790:	fe010113          	addi	sp,sp,-32
    80003794:	00813823          	sd	s0,16(sp)
    80003798:	00113c23          	sd	ra,24(sp)
    8000379c:	00913423          	sd	s1,8(sp)
    800037a0:	02010413          	addi	s0,sp,32
    800037a4:	03451793          	slli	a5,a0,0x34
    800037a8:	04079c63          	bnez	a5,80003800 <kfree+0x70>
    800037ac:	00003797          	auipc	a5,0x3
    800037b0:	4e478793          	addi	a5,a5,1252 # 80006c90 <end>
    800037b4:	00050493          	mv	s1,a0
    800037b8:	04f56463          	bltu	a0,a5,80003800 <kfree+0x70>
    800037bc:	01100793          	li	a5,17
    800037c0:	01b79793          	slli	a5,a5,0x1b
    800037c4:	02f57e63          	bgeu	a0,a5,80003800 <kfree+0x70>
    800037c8:	00001637          	lui	a2,0x1
    800037cc:	00100593          	li	a1,1
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	478080e7          	jalr	1144(ra) # 80003c48 <__memset>
    800037d8:	00002797          	auipc	a5,0x2
    800037dc:	20878793          	addi	a5,a5,520 # 800059e0 <kmem>
    800037e0:	0007b703          	ld	a4,0(a5)
    800037e4:	01813083          	ld	ra,24(sp)
    800037e8:	01013403          	ld	s0,16(sp)
    800037ec:	00e4b023          	sd	a4,0(s1)
    800037f0:	0097b023          	sd	s1,0(a5)
    800037f4:	00813483          	ld	s1,8(sp)
    800037f8:	02010113          	addi	sp,sp,32
    800037fc:	00008067          	ret
    80003800:	00002517          	auipc	a0,0x2
    80003804:	99050513          	addi	a0,a0,-1648 # 80005190 <digits+0x18>
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	354080e7          	jalr	852(ra) # 80002b5c <panic>

0000000080003810 <kalloc>:
    80003810:	fe010113          	addi	sp,sp,-32
    80003814:	00813823          	sd	s0,16(sp)
    80003818:	00913423          	sd	s1,8(sp)
    8000381c:	00113c23          	sd	ra,24(sp)
    80003820:	02010413          	addi	s0,sp,32
    80003824:	00002797          	auipc	a5,0x2
    80003828:	1bc78793          	addi	a5,a5,444 # 800059e0 <kmem>
    8000382c:	0007b483          	ld	s1,0(a5)
    80003830:	02048063          	beqz	s1,80003850 <kalloc+0x40>
    80003834:	0004b703          	ld	a4,0(s1)
    80003838:	00001637          	lui	a2,0x1
    8000383c:	00500593          	li	a1,5
    80003840:	00048513          	mv	a0,s1
    80003844:	00e7b023          	sd	a4,0(a5)
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	400080e7          	jalr	1024(ra) # 80003c48 <__memset>
    80003850:	01813083          	ld	ra,24(sp)
    80003854:	01013403          	ld	s0,16(sp)
    80003858:	00048513          	mv	a0,s1
    8000385c:	00813483          	ld	s1,8(sp)
    80003860:	02010113          	addi	sp,sp,32
    80003864:	00008067          	ret

0000000080003868 <initlock>:
    80003868:	ff010113          	addi	sp,sp,-16
    8000386c:	00813423          	sd	s0,8(sp)
    80003870:	01010413          	addi	s0,sp,16
    80003874:	00813403          	ld	s0,8(sp)
    80003878:	00b53423          	sd	a1,8(a0)
    8000387c:	00052023          	sw	zero,0(a0)
    80003880:	00053823          	sd	zero,16(a0)
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00008067          	ret

000000008000388c <acquire>:
    8000388c:	fe010113          	addi	sp,sp,-32
    80003890:	00813823          	sd	s0,16(sp)
    80003894:	00913423          	sd	s1,8(sp)
    80003898:	00113c23          	sd	ra,24(sp)
    8000389c:	01213023          	sd	s2,0(sp)
    800038a0:	02010413          	addi	s0,sp,32
    800038a4:	00050493          	mv	s1,a0
    800038a8:	10002973          	csrr	s2,sstatus
    800038ac:	100027f3          	csrr	a5,sstatus
    800038b0:	ffd7f793          	andi	a5,a5,-3
    800038b4:	10079073          	csrw	sstatus,a5
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	8e0080e7          	jalr	-1824(ra) # 80002198 <mycpu>
    800038c0:	07852783          	lw	a5,120(a0)
    800038c4:	06078e63          	beqz	a5,80003940 <acquire+0xb4>
    800038c8:	fffff097          	auipc	ra,0xfffff
    800038cc:	8d0080e7          	jalr	-1840(ra) # 80002198 <mycpu>
    800038d0:	07852783          	lw	a5,120(a0)
    800038d4:	0004a703          	lw	a4,0(s1)
    800038d8:	0017879b          	addiw	a5,a5,1
    800038dc:	06f52c23          	sw	a5,120(a0)
    800038e0:	04071063          	bnez	a4,80003920 <acquire+0x94>
    800038e4:	00100713          	li	a4,1
    800038e8:	00070793          	mv	a5,a4
    800038ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800038f0:	0007879b          	sext.w	a5,a5
    800038f4:	fe079ae3          	bnez	a5,800038e8 <acquire+0x5c>
    800038f8:	0ff0000f          	fence
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	89c080e7          	jalr	-1892(ra) # 80002198 <mycpu>
    80003904:	01813083          	ld	ra,24(sp)
    80003908:	01013403          	ld	s0,16(sp)
    8000390c:	00a4b823          	sd	a0,16(s1)
    80003910:	00013903          	ld	s2,0(sp)
    80003914:	00813483          	ld	s1,8(sp)
    80003918:	02010113          	addi	sp,sp,32
    8000391c:	00008067          	ret
    80003920:	0104b903          	ld	s2,16(s1)
    80003924:	fffff097          	auipc	ra,0xfffff
    80003928:	874080e7          	jalr	-1932(ra) # 80002198 <mycpu>
    8000392c:	faa91ce3          	bne	s2,a0,800038e4 <acquire+0x58>
    80003930:	00002517          	auipc	a0,0x2
    80003934:	86850513          	addi	a0,a0,-1944 # 80005198 <digits+0x20>
    80003938:	fffff097          	auipc	ra,0xfffff
    8000393c:	224080e7          	jalr	548(ra) # 80002b5c <panic>
    80003940:	00195913          	srli	s2,s2,0x1
    80003944:	fffff097          	auipc	ra,0xfffff
    80003948:	854080e7          	jalr	-1964(ra) # 80002198 <mycpu>
    8000394c:	00197913          	andi	s2,s2,1
    80003950:	07252e23          	sw	s2,124(a0)
    80003954:	f75ff06f          	j	800038c8 <acquire+0x3c>

0000000080003958 <release>:
    80003958:	fe010113          	addi	sp,sp,-32
    8000395c:	00813823          	sd	s0,16(sp)
    80003960:	00113c23          	sd	ra,24(sp)
    80003964:	00913423          	sd	s1,8(sp)
    80003968:	01213023          	sd	s2,0(sp)
    8000396c:	02010413          	addi	s0,sp,32
    80003970:	00052783          	lw	a5,0(a0)
    80003974:	00079a63          	bnez	a5,80003988 <release+0x30>
    80003978:	00002517          	auipc	a0,0x2
    8000397c:	82850513          	addi	a0,a0,-2008 # 800051a0 <digits+0x28>
    80003980:	fffff097          	auipc	ra,0xfffff
    80003984:	1dc080e7          	jalr	476(ra) # 80002b5c <panic>
    80003988:	01053903          	ld	s2,16(a0)
    8000398c:	00050493          	mv	s1,a0
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	808080e7          	jalr	-2040(ra) # 80002198 <mycpu>
    80003998:	fea910e3          	bne	s2,a0,80003978 <release+0x20>
    8000399c:	0004b823          	sd	zero,16(s1)
    800039a0:	0ff0000f          	fence
    800039a4:	0f50000f          	fence	iorw,ow
    800039a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	7ec080e7          	jalr	2028(ra) # 80002198 <mycpu>
    800039b4:	100027f3          	csrr	a5,sstatus
    800039b8:	0027f793          	andi	a5,a5,2
    800039bc:	04079a63          	bnez	a5,80003a10 <release+0xb8>
    800039c0:	07852783          	lw	a5,120(a0)
    800039c4:	02f05e63          	blez	a5,80003a00 <release+0xa8>
    800039c8:	fff7871b          	addiw	a4,a5,-1
    800039cc:	06e52c23          	sw	a4,120(a0)
    800039d0:	00071c63          	bnez	a4,800039e8 <release+0x90>
    800039d4:	07c52783          	lw	a5,124(a0)
    800039d8:	00078863          	beqz	a5,800039e8 <release+0x90>
    800039dc:	100027f3          	csrr	a5,sstatus
    800039e0:	0027e793          	ori	a5,a5,2
    800039e4:	10079073          	csrw	sstatus,a5
    800039e8:	01813083          	ld	ra,24(sp)
    800039ec:	01013403          	ld	s0,16(sp)
    800039f0:	00813483          	ld	s1,8(sp)
    800039f4:	00013903          	ld	s2,0(sp)
    800039f8:	02010113          	addi	sp,sp,32
    800039fc:	00008067          	ret
    80003a00:	00001517          	auipc	a0,0x1
    80003a04:	7c050513          	addi	a0,a0,1984 # 800051c0 <digits+0x48>
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	154080e7          	jalr	340(ra) # 80002b5c <panic>
    80003a10:	00001517          	auipc	a0,0x1
    80003a14:	79850513          	addi	a0,a0,1944 # 800051a8 <digits+0x30>
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	144080e7          	jalr	324(ra) # 80002b5c <panic>

0000000080003a20 <holding>:
    80003a20:	00052783          	lw	a5,0(a0)
    80003a24:	00079663          	bnez	a5,80003a30 <holding+0x10>
    80003a28:	00000513          	li	a0,0
    80003a2c:	00008067          	ret
    80003a30:	fe010113          	addi	sp,sp,-32
    80003a34:	00813823          	sd	s0,16(sp)
    80003a38:	00913423          	sd	s1,8(sp)
    80003a3c:	00113c23          	sd	ra,24(sp)
    80003a40:	02010413          	addi	s0,sp,32
    80003a44:	01053483          	ld	s1,16(a0)
    80003a48:	ffffe097          	auipc	ra,0xffffe
    80003a4c:	750080e7          	jalr	1872(ra) # 80002198 <mycpu>
    80003a50:	01813083          	ld	ra,24(sp)
    80003a54:	01013403          	ld	s0,16(sp)
    80003a58:	40a48533          	sub	a0,s1,a0
    80003a5c:	00153513          	seqz	a0,a0
    80003a60:	00813483          	ld	s1,8(sp)
    80003a64:	02010113          	addi	sp,sp,32
    80003a68:	00008067          	ret

0000000080003a6c <push_off>:
    80003a6c:	fe010113          	addi	sp,sp,-32
    80003a70:	00813823          	sd	s0,16(sp)
    80003a74:	00113c23          	sd	ra,24(sp)
    80003a78:	00913423          	sd	s1,8(sp)
    80003a7c:	02010413          	addi	s0,sp,32
    80003a80:	100024f3          	csrr	s1,sstatus
    80003a84:	100027f3          	csrr	a5,sstatus
    80003a88:	ffd7f793          	andi	a5,a5,-3
    80003a8c:	10079073          	csrw	sstatus,a5
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	708080e7          	jalr	1800(ra) # 80002198 <mycpu>
    80003a98:	07852783          	lw	a5,120(a0)
    80003a9c:	02078663          	beqz	a5,80003ac8 <push_off+0x5c>
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	6f8080e7          	jalr	1784(ra) # 80002198 <mycpu>
    80003aa8:	07852783          	lw	a5,120(a0)
    80003aac:	01813083          	ld	ra,24(sp)
    80003ab0:	01013403          	ld	s0,16(sp)
    80003ab4:	0017879b          	addiw	a5,a5,1
    80003ab8:	06f52c23          	sw	a5,120(a0)
    80003abc:	00813483          	ld	s1,8(sp)
    80003ac0:	02010113          	addi	sp,sp,32
    80003ac4:	00008067          	ret
    80003ac8:	0014d493          	srli	s1,s1,0x1
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	6cc080e7          	jalr	1740(ra) # 80002198 <mycpu>
    80003ad4:	0014f493          	andi	s1,s1,1
    80003ad8:	06952e23          	sw	s1,124(a0)
    80003adc:	fc5ff06f          	j	80003aa0 <push_off+0x34>

0000000080003ae0 <pop_off>:
    80003ae0:	ff010113          	addi	sp,sp,-16
    80003ae4:	00813023          	sd	s0,0(sp)
    80003ae8:	00113423          	sd	ra,8(sp)
    80003aec:	01010413          	addi	s0,sp,16
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	6a8080e7          	jalr	1704(ra) # 80002198 <mycpu>
    80003af8:	100027f3          	csrr	a5,sstatus
    80003afc:	0027f793          	andi	a5,a5,2
    80003b00:	04079663          	bnez	a5,80003b4c <pop_off+0x6c>
    80003b04:	07852783          	lw	a5,120(a0)
    80003b08:	02f05a63          	blez	a5,80003b3c <pop_off+0x5c>
    80003b0c:	fff7871b          	addiw	a4,a5,-1
    80003b10:	06e52c23          	sw	a4,120(a0)
    80003b14:	00071c63          	bnez	a4,80003b2c <pop_off+0x4c>
    80003b18:	07c52783          	lw	a5,124(a0)
    80003b1c:	00078863          	beqz	a5,80003b2c <pop_off+0x4c>
    80003b20:	100027f3          	csrr	a5,sstatus
    80003b24:	0027e793          	ori	a5,a5,2
    80003b28:	10079073          	csrw	sstatus,a5
    80003b2c:	00813083          	ld	ra,8(sp)
    80003b30:	00013403          	ld	s0,0(sp)
    80003b34:	01010113          	addi	sp,sp,16
    80003b38:	00008067          	ret
    80003b3c:	00001517          	auipc	a0,0x1
    80003b40:	68450513          	addi	a0,a0,1668 # 800051c0 <digits+0x48>
    80003b44:	fffff097          	auipc	ra,0xfffff
    80003b48:	018080e7          	jalr	24(ra) # 80002b5c <panic>
    80003b4c:	00001517          	auipc	a0,0x1
    80003b50:	65c50513          	addi	a0,a0,1628 # 800051a8 <digits+0x30>
    80003b54:	fffff097          	auipc	ra,0xfffff
    80003b58:	008080e7          	jalr	8(ra) # 80002b5c <panic>

0000000080003b5c <push_on>:
    80003b5c:	fe010113          	addi	sp,sp,-32
    80003b60:	00813823          	sd	s0,16(sp)
    80003b64:	00113c23          	sd	ra,24(sp)
    80003b68:	00913423          	sd	s1,8(sp)
    80003b6c:	02010413          	addi	s0,sp,32
    80003b70:	100024f3          	csrr	s1,sstatus
    80003b74:	100027f3          	csrr	a5,sstatus
    80003b78:	0027e793          	ori	a5,a5,2
    80003b7c:	10079073          	csrw	sstatus,a5
    80003b80:	ffffe097          	auipc	ra,0xffffe
    80003b84:	618080e7          	jalr	1560(ra) # 80002198 <mycpu>
    80003b88:	07852783          	lw	a5,120(a0)
    80003b8c:	02078663          	beqz	a5,80003bb8 <push_on+0x5c>
    80003b90:	ffffe097          	auipc	ra,0xffffe
    80003b94:	608080e7          	jalr	1544(ra) # 80002198 <mycpu>
    80003b98:	07852783          	lw	a5,120(a0)
    80003b9c:	01813083          	ld	ra,24(sp)
    80003ba0:	01013403          	ld	s0,16(sp)
    80003ba4:	0017879b          	addiw	a5,a5,1
    80003ba8:	06f52c23          	sw	a5,120(a0)
    80003bac:	00813483          	ld	s1,8(sp)
    80003bb0:	02010113          	addi	sp,sp,32
    80003bb4:	00008067          	ret
    80003bb8:	0014d493          	srli	s1,s1,0x1
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	5dc080e7          	jalr	1500(ra) # 80002198 <mycpu>
    80003bc4:	0014f493          	andi	s1,s1,1
    80003bc8:	06952e23          	sw	s1,124(a0)
    80003bcc:	fc5ff06f          	j	80003b90 <push_on+0x34>

0000000080003bd0 <pop_on>:
    80003bd0:	ff010113          	addi	sp,sp,-16
    80003bd4:	00813023          	sd	s0,0(sp)
    80003bd8:	00113423          	sd	ra,8(sp)
    80003bdc:	01010413          	addi	s0,sp,16
    80003be0:	ffffe097          	auipc	ra,0xffffe
    80003be4:	5b8080e7          	jalr	1464(ra) # 80002198 <mycpu>
    80003be8:	100027f3          	csrr	a5,sstatus
    80003bec:	0027f793          	andi	a5,a5,2
    80003bf0:	04078463          	beqz	a5,80003c38 <pop_on+0x68>
    80003bf4:	07852783          	lw	a5,120(a0)
    80003bf8:	02f05863          	blez	a5,80003c28 <pop_on+0x58>
    80003bfc:	fff7879b          	addiw	a5,a5,-1
    80003c00:	06f52c23          	sw	a5,120(a0)
    80003c04:	07853783          	ld	a5,120(a0)
    80003c08:	00079863          	bnez	a5,80003c18 <pop_on+0x48>
    80003c0c:	100027f3          	csrr	a5,sstatus
    80003c10:	ffd7f793          	andi	a5,a5,-3
    80003c14:	10079073          	csrw	sstatus,a5
    80003c18:	00813083          	ld	ra,8(sp)
    80003c1c:	00013403          	ld	s0,0(sp)
    80003c20:	01010113          	addi	sp,sp,16
    80003c24:	00008067          	ret
    80003c28:	00001517          	auipc	a0,0x1
    80003c2c:	5c050513          	addi	a0,a0,1472 # 800051e8 <digits+0x70>
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	f2c080e7          	jalr	-212(ra) # 80002b5c <panic>
    80003c38:	00001517          	auipc	a0,0x1
    80003c3c:	59050513          	addi	a0,a0,1424 # 800051c8 <digits+0x50>
    80003c40:	fffff097          	auipc	ra,0xfffff
    80003c44:	f1c080e7          	jalr	-228(ra) # 80002b5c <panic>

0000000080003c48 <__memset>:
    80003c48:	ff010113          	addi	sp,sp,-16
    80003c4c:	00813423          	sd	s0,8(sp)
    80003c50:	01010413          	addi	s0,sp,16
    80003c54:	1a060e63          	beqz	a2,80003e10 <__memset+0x1c8>
    80003c58:	40a007b3          	neg	a5,a0
    80003c5c:	0077f793          	andi	a5,a5,7
    80003c60:	00778693          	addi	a3,a5,7
    80003c64:	00b00813          	li	a6,11
    80003c68:	0ff5f593          	andi	a1,a1,255
    80003c6c:	fff6071b          	addiw	a4,a2,-1
    80003c70:	1b06e663          	bltu	a3,a6,80003e1c <__memset+0x1d4>
    80003c74:	1cd76463          	bltu	a4,a3,80003e3c <__memset+0x1f4>
    80003c78:	1a078e63          	beqz	a5,80003e34 <__memset+0x1ec>
    80003c7c:	00b50023          	sb	a1,0(a0)
    80003c80:	00100713          	li	a4,1
    80003c84:	1ae78463          	beq	a5,a4,80003e2c <__memset+0x1e4>
    80003c88:	00b500a3          	sb	a1,1(a0)
    80003c8c:	00200713          	li	a4,2
    80003c90:	1ae78a63          	beq	a5,a4,80003e44 <__memset+0x1fc>
    80003c94:	00b50123          	sb	a1,2(a0)
    80003c98:	00300713          	li	a4,3
    80003c9c:	18e78463          	beq	a5,a4,80003e24 <__memset+0x1dc>
    80003ca0:	00b501a3          	sb	a1,3(a0)
    80003ca4:	00400713          	li	a4,4
    80003ca8:	1ae78263          	beq	a5,a4,80003e4c <__memset+0x204>
    80003cac:	00b50223          	sb	a1,4(a0)
    80003cb0:	00500713          	li	a4,5
    80003cb4:	1ae78063          	beq	a5,a4,80003e54 <__memset+0x20c>
    80003cb8:	00b502a3          	sb	a1,5(a0)
    80003cbc:	00700713          	li	a4,7
    80003cc0:	18e79e63          	bne	a5,a4,80003e5c <__memset+0x214>
    80003cc4:	00b50323          	sb	a1,6(a0)
    80003cc8:	00700e93          	li	t4,7
    80003ccc:	00859713          	slli	a4,a1,0x8
    80003cd0:	00e5e733          	or	a4,a1,a4
    80003cd4:	01059e13          	slli	t3,a1,0x10
    80003cd8:	01c76e33          	or	t3,a4,t3
    80003cdc:	01859313          	slli	t1,a1,0x18
    80003ce0:	006e6333          	or	t1,t3,t1
    80003ce4:	02059893          	slli	a7,a1,0x20
    80003ce8:	40f60e3b          	subw	t3,a2,a5
    80003cec:	011368b3          	or	a7,t1,a7
    80003cf0:	02859813          	slli	a6,a1,0x28
    80003cf4:	0108e833          	or	a6,a7,a6
    80003cf8:	03059693          	slli	a3,a1,0x30
    80003cfc:	003e589b          	srliw	a7,t3,0x3
    80003d00:	00d866b3          	or	a3,a6,a3
    80003d04:	03859713          	slli	a4,a1,0x38
    80003d08:	00389813          	slli	a6,a7,0x3
    80003d0c:	00f507b3          	add	a5,a0,a5
    80003d10:	00e6e733          	or	a4,a3,a4
    80003d14:	000e089b          	sext.w	a7,t3
    80003d18:	00f806b3          	add	a3,a6,a5
    80003d1c:	00e7b023          	sd	a4,0(a5)
    80003d20:	00878793          	addi	a5,a5,8
    80003d24:	fed79ce3          	bne	a5,a3,80003d1c <__memset+0xd4>
    80003d28:	ff8e7793          	andi	a5,t3,-8
    80003d2c:	0007871b          	sext.w	a4,a5
    80003d30:	01d787bb          	addw	a5,a5,t4
    80003d34:	0ce88e63          	beq	a7,a4,80003e10 <__memset+0x1c8>
    80003d38:	00f50733          	add	a4,a0,a5
    80003d3c:	00b70023          	sb	a1,0(a4)
    80003d40:	0017871b          	addiw	a4,a5,1
    80003d44:	0cc77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d48:	00e50733          	add	a4,a0,a4
    80003d4c:	00b70023          	sb	a1,0(a4)
    80003d50:	0027871b          	addiw	a4,a5,2
    80003d54:	0ac77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d58:	00e50733          	add	a4,a0,a4
    80003d5c:	00b70023          	sb	a1,0(a4)
    80003d60:	0037871b          	addiw	a4,a5,3
    80003d64:	0ac77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d68:	00e50733          	add	a4,a0,a4
    80003d6c:	00b70023          	sb	a1,0(a4)
    80003d70:	0047871b          	addiw	a4,a5,4
    80003d74:	08c77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d78:	00e50733          	add	a4,a0,a4
    80003d7c:	00b70023          	sb	a1,0(a4)
    80003d80:	0057871b          	addiw	a4,a5,5
    80003d84:	08c77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d88:	00e50733          	add	a4,a0,a4
    80003d8c:	00b70023          	sb	a1,0(a4)
    80003d90:	0067871b          	addiw	a4,a5,6
    80003d94:	06c77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003d98:	00e50733          	add	a4,a0,a4
    80003d9c:	00b70023          	sb	a1,0(a4)
    80003da0:	0077871b          	addiw	a4,a5,7
    80003da4:	06c77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003da8:	00e50733          	add	a4,a0,a4
    80003dac:	00b70023          	sb	a1,0(a4)
    80003db0:	0087871b          	addiw	a4,a5,8
    80003db4:	04c77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003db8:	00e50733          	add	a4,a0,a4
    80003dbc:	00b70023          	sb	a1,0(a4)
    80003dc0:	0097871b          	addiw	a4,a5,9
    80003dc4:	04c77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003dc8:	00e50733          	add	a4,a0,a4
    80003dcc:	00b70023          	sb	a1,0(a4)
    80003dd0:	00a7871b          	addiw	a4,a5,10
    80003dd4:	02c77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003dd8:	00e50733          	add	a4,a0,a4
    80003ddc:	00b70023          	sb	a1,0(a4)
    80003de0:	00b7871b          	addiw	a4,a5,11
    80003de4:	02c77663          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003de8:	00e50733          	add	a4,a0,a4
    80003dec:	00b70023          	sb	a1,0(a4)
    80003df0:	00c7871b          	addiw	a4,a5,12
    80003df4:	00c77e63          	bgeu	a4,a2,80003e10 <__memset+0x1c8>
    80003df8:	00e50733          	add	a4,a0,a4
    80003dfc:	00b70023          	sb	a1,0(a4)
    80003e00:	00d7879b          	addiw	a5,a5,13
    80003e04:	00c7f663          	bgeu	a5,a2,80003e10 <__memset+0x1c8>
    80003e08:	00f507b3          	add	a5,a0,a5
    80003e0c:	00b78023          	sb	a1,0(a5)
    80003e10:	00813403          	ld	s0,8(sp)
    80003e14:	01010113          	addi	sp,sp,16
    80003e18:	00008067          	ret
    80003e1c:	00b00693          	li	a3,11
    80003e20:	e55ff06f          	j	80003c74 <__memset+0x2c>
    80003e24:	00300e93          	li	t4,3
    80003e28:	ea5ff06f          	j	80003ccc <__memset+0x84>
    80003e2c:	00100e93          	li	t4,1
    80003e30:	e9dff06f          	j	80003ccc <__memset+0x84>
    80003e34:	00000e93          	li	t4,0
    80003e38:	e95ff06f          	j	80003ccc <__memset+0x84>
    80003e3c:	00000793          	li	a5,0
    80003e40:	ef9ff06f          	j	80003d38 <__memset+0xf0>
    80003e44:	00200e93          	li	t4,2
    80003e48:	e85ff06f          	j	80003ccc <__memset+0x84>
    80003e4c:	00400e93          	li	t4,4
    80003e50:	e7dff06f          	j	80003ccc <__memset+0x84>
    80003e54:	00500e93          	li	t4,5
    80003e58:	e75ff06f          	j	80003ccc <__memset+0x84>
    80003e5c:	00600e93          	li	t4,6
    80003e60:	e6dff06f          	j	80003ccc <__memset+0x84>

0000000080003e64 <__memmove>:
    80003e64:	ff010113          	addi	sp,sp,-16
    80003e68:	00813423          	sd	s0,8(sp)
    80003e6c:	01010413          	addi	s0,sp,16
    80003e70:	0e060863          	beqz	a2,80003f60 <__memmove+0xfc>
    80003e74:	fff6069b          	addiw	a3,a2,-1
    80003e78:	0006881b          	sext.w	a6,a3
    80003e7c:	0ea5e863          	bltu	a1,a0,80003f6c <__memmove+0x108>
    80003e80:	00758713          	addi	a4,a1,7
    80003e84:	00a5e7b3          	or	a5,a1,a0
    80003e88:	40a70733          	sub	a4,a4,a0
    80003e8c:	0077f793          	andi	a5,a5,7
    80003e90:	00f73713          	sltiu	a4,a4,15
    80003e94:	00174713          	xori	a4,a4,1
    80003e98:	0017b793          	seqz	a5,a5
    80003e9c:	00e7f7b3          	and	a5,a5,a4
    80003ea0:	10078863          	beqz	a5,80003fb0 <__memmove+0x14c>
    80003ea4:	00900793          	li	a5,9
    80003ea8:	1107f463          	bgeu	a5,a6,80003fb0 <__memmove+0x14c>
    80003eac:	0036581b          	srliw	a6,a2,0x3
    80003eb0:	fff8081b          	addiw	a6,a6,-1
    80003eb4:	02081813          	slli	a6,a6,0x20
    80003eb8:	01d85893          	srli	a7,a6,0x1d
    80003ebc:	00858813          	addi	a6,a1,8
    80003ec0:	00058793          	mv	a5,a1
    80003ec4:	00050713          	mv	a4,a0
    80003ec8:	01088833          	add	a6,a7,a6
    80003ecc:	0007b883          	ld	a7,0(a5)
    80003ed0:	00878793          	addi	a5,a5,8
    80003ed4:	00870713          	addi	a4,a4,8
    80003ed8:	ff173c23          	sd	a7,-8(a4)
    80003edc:	ff0798e3          	bne	a5,a6,80003ecc <__memmove+0x68>
    80003ee0:	ff867713          	andi	a4,a2,-8
    80003ee4:	02071793          	slli	a5,a4,0x20
    80003ee8:	0207d793          	srli	a5,a5,0x20
    80003eec:	00f585b3          	add	a1,a1,a5
    80003ef0:	40e686bb          	subw	a3,a3,a4
    80003ef4:	00f507b3          	add	a5,a0,a5
    80003ef8:	06e60463          	beq	a2,a4,80003f60 <__memmove+0xfc>
    80003efc:	0005c703          	lbu	a4,0(a1)
    80003f00:	00e78023          	sb	a4,0(a5)
    80003f04:	04068e63          	beqz	a3,80003f60 <__memmove+0xfc>
    80003f08:	0015c603          	lbu	a2,1(a1)
    80003f0c:	00100713          	li	a4,1
    80003f10:	00c780a3          	sb	a2,1(a5)
    80003f14:	04e68663          	beq	a3,a4,80003f60 <__memmove+0xfc>
    80003f18:	0025c603          	lbu	a2,2(a1)
    80003f1c:	00200713          	li	a4,2
    80003f20:	00c78123          	sb	a2,2(a5)
    80003f24:	02e68e63          	beq	a3,a4,80003f60 <__memmove+0xfc>
    80003f28:	0035c603          	lbu	a2,3(a1)
    80003f2c:	00300713          	li	a4,3
    80003f30:	00c781a3          	sb	a2,3(a5)
    80003f34:	02e68663          	beq	a3,a4,80003f60 <__memmove+0xfc>
    80003f38:	0045c603          	lbu	a2,4(a1)
    80003f3c:	00400713          	li	a4,4
    80003f40:	00c78223          	sb	a2,4(a5)
    80003f44:	00e68e63          	beq	a3,a4,80003f60 <__memmove+0xfc>
    80003f48:	0055c603          	lbu	a2,5(a1)
    80003f4c:	00500713          	li	a4,5
    80003f50:	00c782a3          	sb	a2,5(a5)
    80003f54:	00e68663          	beq	a3,a4,80003f60 <__memmove+0xfc>
    80003f58:	0065c703          	lbu	a4,6(a1)
    80003f5c:	00e78323          	sb	a4,6(a5)
    80003f60:	00813403          	ld	s0,8(sp)
    80003f64:	01010113          	addi	sp,sp,16
    80003f68:	00008067          	ret
    80003f6c:	02061713          	slli	a4,a2,0x20
    80003f70:	02075713          	srli	a4,a4,0x20
    80003f74:	00e587b3          	add	a5,a1,a4
    80003f78:	f0f574e3          	bgeu	a0,a5,80003e80 <__memmove+0x1c>
    80003f7c:	02069613          	slli	a2,a3,0x20
    80003f80:	02065613          	srli	a2,a2,0x20
    80003f84:	fff64613          	not	a2,a2
    80003f88:	00e50733          	add	a4,a0,a4
    80003f8c:	00c78633          	add	a2,a5,a2
    80003f90:	fff7c683          	lbu	a3,-1(a5)
    80003f94:	fff78793          	addi	a5,a5,-1
    80003f98:	fff70713          	addi	a4,a4,-1
    80003f9c:	00d70023          	sb	a3,0(a4)
    80003fa0:	fec798e3          	bne	a5,a2,80003f90 <__memmove+0x12c>
    80003fa4:	00813403          	ld	s0,8(sp)
    80003fa8:	01010113          	addi	sp,sp,16
    80003fac:	00008067          	ret
    80003fb0:	02069713          	slli	a4,a3,0x20
    80003fb4:	02075713          	srli	a4,a4,0x20
    80003fb8:	00170713          	addi	a4,a4,1
    80003fbc:	00e50733          	add	a4,a0,a4
    80003fc0:	00050793          	mv	a5,a0
    80003fc4:	0005c683          	lbu	a3,0(a1)
    80003fc8:	00178793          	addi	a5,a5,1
    80003fcc:	00158593          	addi	a1,a1,1
    80003fd0:	fed78fa3          	sb	a3,-1(a5)
    80003fd4:	fee798e3          	bne	a5,a4,80003fc4 <__memmove+0x160>
    80003fd8:	f89ff06f          	j	80003f60 <__memmove+0xfc>

0000000080003fdc <__putc>:
    80003fdc:	fe010113          	addi	sp,sp,-32
    80003fe0:	00813823          	sd	s0,16(sp)
    80003fe4:	00113c23          	sd	ra,24(sp)
    80003fe8:	02010413          	addi	s0,sp,32
    80003fec:	00050793          	mv	a5,a0
    80003ff0:	fef40593          	addi	a1,s0,-17
    80003ff4:	00100613          	li	a2,1
    80003ff8:	00000513          	li	a0,0
    80003ffc:	fef407a3          	sb	a5,-17(s0)
    80004000:	fffff097          	auipc	ra,0xfffff
    80004004:	b3c080e7          	jalr	-1220(ra) # 80002b3c <console_write>
    80004008:	01813083          	ld	ra,24(sp)
    8000400c:	01013403          	ld	s0,16(sp)
    80004010:	02010113          	addi	sp,sp,32
    80004014:	00008067          	ret

0000000080004018 <__getc>:
    80004018:	fe010113          	addi	sp,sp,-32
    8000401c:	00813823          	sd	s0,16(sp)
    80004020:	00113c23          	sd	ra,24(sp)
    80004024:	02010413          	addi	s0,sp,32
    80004028:	fe840593          	addi	a1,s0,-24
    8000402c:	00100613          	li	a2,1
    80004030:	00000513          	li	a0,0
    80004034:	fffff097          	auipc	ra,0xfffff
    80004038:	ae8080e7          	jalr	-1304(ra) # 80002b1c <console_read>
    8000403c:	fe844503          	lbu	a0,-24(s0)
    80004040:	01813083          	ld	ra,24(sp)
    80004044:	01013403          	ld	s0,16(sp)
    80004048:	02010113          	addi	sp,sp,32
    8000404c:	00008067          	ret

0000000080004050 <console_handler>:
    80004050:	fe010113          	addi	sp,sp,-32
    80004054:	00813823          	sd	s0,16(sp)
    80004058:	00113c23          	sd	ra,24(sp)
    8000405c:	00913423          	sd	s1,8(sp)
    80004060:	02010413          	addi	s0,sp,32
    80004064:	14202773          	csrr	a4,scause
    80004068:	100027f3          	csrr	a5,sstatus
    8000406c:	0027f793          	andi	a5,a5,2
    80004070:	06079e63          	bnez	a5,800040ec <console_handler+0x9c>
    80004074:	00074c63          	bltz	a4,8000408c <console_handler+0x3c>
    80004078:	01813083          	ld	ra,24(sp)
    8000407c:	01013403          	ld	s0,16(sp)
    80004080:	00813483          	ld	s1,8(sp)
    80004084:	02010113          	addi	sp,sp,32
    80004088:	00008067          	ret
    8000408c:	0ff77713          	andi	a4,a4,255
    80004090:	00900793          	li	a5,9
    80004094:	fef712e3          	bne	a4,a5,80004078 <console_handler+0x28>
    80004098:	ffffe097          	auipc	ra,0xffffe
    8000409c:	6dc080e7          	jalr	1756(ra) # 80002774 <plic_claim>
    800040a0:	00a00793          	li	a5,10
    800040a4:	00050493          	mv	s1,a0
    800040a8:	02f50c63          	beq	a0,a5,800040e0 <console_handler+0x90>
    800040ac:	fc0506e3          	beqz	a0,80004078 <console_handler+0x28>
    800040b0:	00050593          	mv	a1,a0
    800040b4:	00001517          	auipc	a0,0x1
    800040b8:	03c50513          	addi	a0,a0,60 # 800050f0 <CONSOLE_STATUS+0xe0>
    800040bc:	fffff097          	auipc	ra,0xfffff
    800040c0:	afc080e7          	jalr	-1284(ra) # 80002bb8 <__printf>
    800040c4:	01013403          	ld	s0,16(sp)
    800040c8:	01813083          	ld	ra,24(sp)
    800040cc:	00048513          	mv	a0,s1
    800040d0:	00813483          	ld	s1,8(sp)
    800040d4:	02010113          	addi	sp,sp,32
    800040d8:	ffffe317          	auipc	t1,0xffffe
    800040dc:	6d430067          	jr	1748(t1) # 800027ac <plic_complete>
    800040e0:	fffff097          	auipc	ra,0xfffff
    800040e4:	3e0080e7          	jalr	992(ra) # 800034c0 <uartintr>
    800040e8:	fddff06f          	j	800040c4 <console_handler+0x74>
    800040ec:	00001517          	auipc	a0,0x1
    800040f0:	10450513          	addi	a0,a0,260 # 800051f0 <digits+0x78>
    800040f4:	fffff097          	auipc	ra,0xfffff
    800040f8:	a68080e7          	jalr	-1432(ra) # 80002b5c <panic>
	...
