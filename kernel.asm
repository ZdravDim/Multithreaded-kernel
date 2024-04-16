
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	9d013103          	ld	sp,-1584(sp) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7c5010ef          	jal	ra,80001fe0 <start>

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

0000000080001110 <_ZN3TCB14context_switchEPNS_7ContextES1_>:
.global _ZN3TCB14context_switchEPNS_7ContextES1_
.type _ZN3TCB14context_switchEPNS_7ContextES1_, @function
_ZN3TCB14context_switchEPNS_7ContextES1_:

    #store old -> context
	sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
	sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    #load running -> context
	ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <_Z7syscallmmmmm>:
#include "../h/syscall_c.hpp"
#include "../h/memory_allocator.hpp"

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

extern "C" void interrupt_routine();

int main() {
    800012b0:	ff010113          	addi	sp,sp,-16
    800012b4:	00113423          	sd	ra,8(sp)
    800012b8:	00813023          	sd	s0,0(sp)
    800012bc:	01010413          	addi	s0,sp,16
    /// set interrupt routine handler
    __asm__ volatile("csrw stvec, %0": : "r"(&interrupt_routine));
    800012c0:	00004797          	auipc	a5,0x4
    800012c4:	7087b783          	ld	a5,1800(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800012c8:	10579073          	csrw	stvec,a5

    __putc('?');
    800012cc:	03f00513          	li	a0,63
    800012d0:	00003097          	auipc	ra,0x3
    800012d4:	dcc080e7          	jalr	-564(ra) # 8000409c <__putc>
    __putc('\n');
    800012d8:	00a00513          	li	a0,10
    800012dc:	00003097          	auipc	ra,0x3
    800012e0:	dc0080e7          	jalr	-576(ra) # 8000409c <__putc>
    MemoryAllocator::getInstance();
    800012e4:	00000097          	auipc	ra,0x0
    800012e8:	5b4080e7          	jalr	1460(ra) # 80001898 <_ZN15MemoryAllocator11getInstanceEv>
    MemoryAllocator::mem_alloc(1);
    800012ec:	00100513          	li	a0,1
    800012f0:	00000097          	auipc	ra,0x0
    800012f4:	48c080e7          	jalr	1164(ra) # 8000177c <_ZN15MemoryAllocator9mem_allocEm>
    MemoryAllocator::print();
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	7dc080e7          	jalr	2012(ra) # 80001ad4 <_ZN15MemoryAllocator5printEv>
    MemoryAllocator::mem_free((void*)(1 * MEM_BLOCK_SIZE + sizeof(MemoryAllocator::MemSeg) + (char*)HEAP_START_ADDR));
    80001300:	00004797          	auipc	a5,0x4
    80001304:	6c07b783          	ld	a5,1728(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001308:	0007b503          	ld	a0,0(a5)
    8000130c:	05850513          	addi	a0,a0,88 # 1058 <_entry-0x7fffefa8>
    80001310:	00000097          	auipc	ra,0x0
    80001314:	658080e7          	jalr	1624(ra) # 80001968 <_ZN15MemoryAllocator8mem_freeEPv>
    MemoryAllocator::print();
    80001318:	00000097          	auipc	ra,0x0
    8000131c:	7bc080e7          	jalr	1980(ra) # 80001ad4 <_ZN15MemoryAllocator5printEv>
    return 0;
    80001320:	00000513          	li	a0,0
    80001324:	00813083          	ld	ra,8(sp)
    80001328:	00013403          	ld	s0,0(sp)
    8000132c:	01010113          	addi	sp,sp,16
    80001330:	00008067          	ret

0000000080001334 <_ZN3TCBC1EPFvPvES0_S0_7Context>:
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    return (*handle) -> id; /// return 0?
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) {
    id = cnt++;
    80001334:	00004897          	auipc	a7,0x4
    80001338:	6ec88893          	addi	a7,a7,1772 # 80005a20 <_ZN3TCB3cntE>
    8000133c:	0008a803          	lw	a6,0(a7)
    80001340:	0018031b          	addiw	t1,a6,1
    80001344:	0068a023          	sw	t1,0(a7)
    80001348:	01052023          	sw	a6,0(a0)
    status = RUNNABLE;
    8000134c:	00052c23          	sw	zero,24(a0)
    this -> context = context;
    80001350:	00e53423          	sd	a4,8(a0)
    80001354:	00f53823          	sd	a5,16(a0)
    this -> function_body = function_body;
    80001358:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    8000135c:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80001360:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80001364:	00200793          	li	a5,2
    80001368:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    8000136c:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80001370:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80001374:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80001378:	02058663          	beqz	a1,800013a4 <_ZN3TCBC1EPFvPvES0_S0_7Context+0x70>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) {
    8000137c:	fe010113          	addi	sp,sp,-32
    80001380:	00113c23          	sd	ra,24(sp)
    80001384:	00813823          	sd	s0,16(sp)
    80001388:	02010413          	addi	s0,sp,32
    if (function_body) Scheduler::put(this);
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	7c8080e7          	jalr	1992(ra) # 80001b54 <_ZN9Scheduler3putEP3TCB>
}
    80001394:	01813083          	ld	ra,24(sp)
    80001398:	01013403          	ld	s0,16(sp)
    8000139c:	02010113          	addi	sp,sp,32
    800013a0:	00008067          	ret
    800013a4:	00008067          	ret

00000000800013a8 <_ZN3TCB5yieldEPS_S0_>:
void TCB::wrapper_function() {
    running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00113423          	sd	ra,8(sp)
    800013b0:	00813023          	sd	s0,0(sp)
    800013b4:	01010413          	addi	s0,sp,16
    RiscV::push_registers();
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	c48080e7          	jalr	-952(ra) # 80001000 <_ZN5RiscV14push_registersEv>
//    context_switch(&old_running -> context, &new_running -> context);
    RiscV::pop_registers();
    800013c0:	00000097          	auipc	ra,0x0
    800013c4:	cc8080e7          	jalr	-824(ra) # 80001088 <_ZN5RiscV13pop_registersEv>
}
    800013c8:	00813083          	ld	ra,8(sp)
    800013cc:	00013403          	ld	s0,0(sp)
    800013d0:	01010113          	addi	sp,sp,16
    800013d4:	00008067          	ret

00000000800013d8 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00113423          	sd	ra,8(sp)
    800013e0:	00813023          	sd	s0,0(sp)
    800013e4:	01010413          	addi	s0,sp,16
    TCB* old = running;
    800013e8:	00004517          	auipc	a0,0x4
    800013ec:	64053503          	ld	a0,1600(a0) # 80005a28 <_ZN3TCB7runningE>
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    800013f0:	01852783          	lw	a5,24(a0)
    800013f4:	00400713          	li	a4,4
    800013f8:	00e78663          	beq	a5,a4,80001404 <_ZN3TCB8dispatchEv+0x2c>
    800013fc:	00200713          	li	a4,2
    80001400:	02e79263          	bne	a5,a4,80001424 <_ZN3TCB8dispatchEv+0x4c>
    running = Scheduler::get();
    80001404:	00000097          	auipc	ra,0x0
    80001408:	7b0080e7          	jalr	1968(ra) # 80001bb4 <_ZN9Scheduler3getEv>
    8000140c:	00004797          	auipc	a5,0x4
    80001410:	60a7be23          	sd	a0,1564(a5) # 80005a28 <_ZN3TCB7runningE>
//    context_switch(&old -> context, &running -> context);
}
    80001414:	00813083          	ld	ra,8(sp)
    80001418:	00013403          	ld	s0,0(sp)
    8000141c:	01010113          	addi	sp,sp,16
    80001420:	00008067          	ret
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001424:	00000097          	auipc	ra,0x0
    80001428:	730080e7          	jalr	1840(ra) # 80001b54 <_ZN9Scheduler3putEP3TCB>
    8000142c:	fd9ff06f          	j	80001404 <_ZN3TCB8dispatchEv+0x2c>

0000000080001430 <_ZN3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() {
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00813423          	sd	s0,8(sp)
    80001438:	01010413          	addi	s0,sp,16
    return next_ready;
}
    8000143c:	04053503          	ld	a0,64(a0)
    80001440:	00813403          	ld	s0,8(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00813423          	sd	s0,8(sp)
    80001454:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001458:	04b53023          	sd	a1,64(a0)
}
    8000145c:	00813403          	ld	s0,8(sp)
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00008067          	ret

0000000080001468 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001468:	ff010113          	addi	sp,sp,-16
    8000146c:	00813423          	sd	s0,8(sp)
    80001470:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80001474:	04b53823          	sd	a1,80(a0)
}
    80001478:	00813403          	ld	s0,8(sp)
    8000147c:	01010113          	addi	sp,sp,16
    80001480:	00008067          	ret

0000000080001484 <_ZN3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() {
    80001484:	ff010113          	addi	sp,sp,-16
    80001488:	00813423          	sd	s0,8(sp)
    8000148c:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80001490:	05053503          	ld	a0,80(a0)
    80001494:	00813403          	ld	s0,8(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret

00000000800014a0 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    800014a0:	ff010113          	addi	sp,sp,-16
    800014a4:	00813423          	sd	s0,8(sp)
    800014a8:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800014ac:	04b53423          	sd	a1,72(a0)
}
    800014b0:	00813403          	ld	s0,8(sp)
    800014b4:	01010113          	addi	sp,sp,16
    800014b8:	00008067          	ret

00000000800014bc <_ZN3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() {
    800014bc:	ff010113          	addi	sp,sp,-16
    800014c0:	00813423          	sd	s0,8(sp)
    800014c4:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    800014c8:	04853503          	ld	a0,72(a0)
    800014cc:	00813403          	ld	s0,8(sp)
    800014d0:	01010113          	addi	sp,sp,16
    800014d4:	00008067          	ret

00000000800014d8 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status status) {
    800014d8:	ff010113          	addi	sp,sp,-16
    800014dc:	00813423          	sd	s0,8(sp)
    800014e0:	01010413          	addi	s0,sp,16
    this -> status = status;
    800014e4:	00b52c23          	sw	a1,24(a0)
}
    800014e8:	00813403          	ld	s0,8(sp)
    800014ec:	01010113          	addi	sp,sp,16
    800014f0:	00008067          	ret

00000000800014f4 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    800014f4:	ff010113          	addi	sp,sp,-16
    800014f8:	00113423          	sd	ra,8(sp)
    800014fc:	00813023          	sd	s0,0(sp)
    80001500:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80001504:	00400593          	li	a1,4
    80001508:	00004517          	auipc	a0,0x4
    8000150c:	52053503          	ld	a0,1312(a0) # 80005a28 <_ZN3TCB7runningE>
    80001510:	00000097          	auipc	ra,0x0
    80001514:	fc8080e7          	jalr	-56(ra) # 800014d8 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	ec0080e7          	jalr	-320(ra) # 800013d8 <_ZN3TCB8dispatchEv>
}
    80001520:	00813083          	ld	ra,8(sp)
    80001524:	00013403          	ld	s0,0(sp)
    80001528:	01010113          	addi	sp,sp,16
    8000152c:	00008067          	ret

0000000080001530 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80001530:	ff010113          	addi	sp,sp,-16
    80001534:	00113423          	sd	ra,8(sp)
    80001538:	00813023          	sd	s0,0(sp)
    8000153c:	01010413          	addi	s0,sp,16
    running -> function_body(running -> arg);
    80001540:	00004797          	auipc	a5,0x4
    80001544:	4e87b783          	ld	a5,1256(a5) # 80005a28 <_ZN3TCB7runningE>
    80001548:	0207b703          	ld	a4,32(a5)
    8000154c:	0287b503          	ld	a0,40(a5)
    80001550:	000700e7          	jalr	a4
    thread_exit();
    80001554:	00000097          	auipc	ra,0x0
    80001558:	fa0080e7          	jalr	-96(ra) # 800014f4 <_ZN3TCB11thread_exitEv>
}
    8000155c:	00813083          	ld	ra,8(sp)
    80001560:	00013403          	ld	s0,0(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <_ZN3TCB5startEv>:

void TCB::start() {
    8000156c:	fe010113          	addi	sp,sp,-32
    80001570:	00113c23          	sd	ra,24(sp)
    80001574:	00813823          	sd	s0,16(sp)
    80001578:	00913423          	sd	s1,8(sp)
    8000157c:	02010413          	addi	s0,sp,32
    80001580:	00050493          	mv	s1,a0
    Scheduler::put(this);
    80001584:	00000097          	auipc	ra,0x0
    80001588:	5d0080e7          	jalr	1488(ra) # 80001b54 <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    8000158c:	00004797          	auipc	a5,0x4
    80001590:	49c7b783          	ld	a5,1180(a5) # 80005a28 <_ZN3TCB7runningE>
    80001594:	00078c63          	beqz	a5,800015ac <_ZN3TCB5startEv+0x40>
}
    80001598:	01813083          	ld	ra,24(sp)
    8000159c:	01013403          	ld	s0,16(sp)
    800015a0:	00813483          	ld	s1,8(sp)
    800015a4:	02010113          	addi	sp,sp,32
    800015a8:	00008067          	ret
    if (!running) running = this;
    800015ac:	00004797          	auipc	a5,0x4
    800015b0:	4697be23          	sd	s1,1148(a5) # 80005a28 <_ZN3TCB7runningE>
}
    800015b4:	fe5ff06f          	j	80001598 <_ZN3TCB5startEv+0x2c>

00000000800015b8 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800015b8:	ff010113          	addi	sp,sp,-16
    800015bc:	00113423          	sd	ra,8(sp)
    800015c0:	00813023          	sd	s0,0(sp)
    800015c4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	1b4080e7          	jalr	436(ra) # 8000177c <_ZN15MemoryAllocator9mem_allocEm>
}
    800015d0:	00813083          	ld	ra,8(sp)
    800015d4:	00013403          	ld	s0,0(sp)
    800015d8:	01010113          	addi	sp,sp,16
    800015dc:	00008067          	ret

00000000800015e0 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    800015e0:	ff010113          	addi	sp,sp,-16
    800015e4:	00113423          	sd	ra,8(sp)
    800015e8:	00813023          	sd	s0,0(sp)
    800015ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	378080e7          	jalr	888(ra) # 80001968 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800015f8:	00813083          	ld	ra,8(sp)
    800015fc:	00013403          	ld	s0,0(sp)
    80001600:	01010113          	addi	sp,sp,16
    80001604:	00008067          	ret

0000000080001608 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80001608:	fa010113          	addi	sp,sp,-96
    8000160c:	04113c23          	sd	ra,88(sp)
    80001610:	04813823          	sd	s0,80(sp)
    80001614:	04913423          	sd	s1,72(sp)
    80001618:	05213023          	sd	s2,64(sp)
    8000161c:	03313c23          	sd	s3,56(sp)
    80001620:	03413823          	sd	s4,48(sp)
    80001624:	03513423          	sd	s5,40(sp)
    80001628:	06010413          	addi	s0,sp,96
    8000162c:	00050993          	mv	s3,a0
    80001630:	00058a13          	mv	s4,a1
    80001634:	00060a93          	mv	s5,a2
    80001638:	00068493          	mv	s1,a3
    Context context = {
    8000163c:	00000797          	auipc	a5,0x0
    80001640:	ef478793          	addi	a5,a5,-268 # 80001530 <_ZN3TCB16wrapper_functionEv>
    80001644:	faf43023          	sd	a5,-96(s0)
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0) /// stack rises to lower locations
    80001648:	04068863          	beqz	a3,80001698 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x90>
    8000164c:	000017b7          	lui	a5,0x1
    80001650:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001654:	00f687b3          	add	a5,a3,a5
    };
    80001658:	faf43423          	sd	a5,-88(s0)
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    8000165c:	fa043703          	ld	a4,-96(s0)
    80001660:	fae43823          	sd	a4,-80(s0)
    80001664:	faf43c23          	sd	a5,-72(s0)
    80001668:	05800513          	li	a0,88
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	f4c080e7          	jalr	-180(ra) # 800015b8 <_ZN3TCBnwEm>
    80001674:	00050913          	mv	s2,a0
    80001678:	fb043703          	ld	a4,-80(s0)
    8000167c:	fb843783          	ld	a5,-72(s0)
    80001680:	00048693          	mv	a3,s1
    80001684:	000a8613          	mv	a2,s5
    80001688:	000a0593          	mv	a1,s4
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	ca8080e7          	jalr	-856(ra) # 80001334 <_ZN3TCBC1EPFvPvES0_S0_7Context>
    80001694:	00c0006f          	j	800016a0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x98>
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0) /// stack rises to lower locations
    80001698:	00000793          	li	a5,0
    8000169c:	fbdff06f          	j	80001658 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x50>
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    800016a0:	0129b023          	sd	s2,0(s3)
    return (*handle) -> id; /// return 0?
    800016a4:	00092503          	lw	a0,0(s2)
}
    800016a8:	05813083          	ld	ra,88(sp)
    800016ac:	05013403          	ld	s0,80(sp)
    800016b0:	04813483          	ld	s1,72(sp)
    800016b4:	04013903          	ld	s2,64(sp)
    800016b8:	03813983          	ld	s3,56(sp)
    800016bc:	03013a03          	ld	s4,48(sp)
    800016c0:	02813a83          	ld	s5,40(sp)
    800016c4:	06010113          	addi	sp,sp,96
    800016c8:	00008067          	ret
    800016cc:	00050493          	mv	s1,a0
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    800016d0:	00090513          	mv	a0,s2
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	f0c080e7          	jalr	-244(ra) # 800015e0 <_ZN3TCBdlEPv>
    800016dc:	00048513          	mv	a0,s1
    800016e0:	00005097          	auipc	ra,0x5
    800016e4:	448080e7          	jalr	1096(ra) # 80006b28 <_Unwind_Resume>

00000000800016e8 <_Znwm>:
#include "../h/syscall_cpp.hpp"

void* operator new(size_t size){
    800016e8:	ff010113          	addi	sp,sp,-16
    800016ec:	00113423          	sd	ra,8(sp)
    800016f0:	00813023          	sd	s0,0(sp)
    800016f4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	a48080e7          	jalr	-1464(ra) # 80001140 <_Z9mem_allocm>
}
    80001700:	00813083          	ld	ra,8(sp)
    80001704:	00013403          	ld	s0,0(sp)
    80001708:	01010113          	addi	sp,sp,16
    8000170c:	00008067          	ret

0000000080001710 <_ZdlPv>:

void operator delete(void* p){
    80001710:	ff010113          	addi	sp,sp,-16
    80001714:	00113423          	sd	ra,8(sp)
    80001718:	00813023          	sd	s0,0(sp)
    8000171c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001720:	00000097          	auipc	ra,0x0
    80001724:	a70080e7          	jalr	-1424(ra) # 80001190 <_Z8mem_freePv>
    80001728:	00813083          	ld	ra,8(sp)
    8000172c:	00013403          	ld	s0,0(sp)
    80001730:	01010113          	addi	sp,sp,16
    80001734:	00008067          	ret

0000000080001738 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
    }
    return instance;
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80001738:	ff010113          	addi	sp,sp,-16
    8000173c:	00813423          	sd	s0,8(sp)
    80001740:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80001744:	00853783          	ld	a5,8(a0)
    80001748:	02078463          	beqz	a5,80001770 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    8000174c:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80001750:	01053783          	ld	a5,16(a0)
    80001754:	00078863          	beqz	a5,80001764 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80001758:	00060463          	beqz	a2,80001760 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    8000175c:	00853583          	ld	a1,8(a0)
    80001760:	00b7b423          	sd	a1,8(a5)
}
    80001764:	00813403          	ld	s0,8(sp)
    80001768:	01010113          	addi	sp,sp,16
    8000176c:	00008067          	ret
    else freeSegHead = nextSeg;
    80001770:	00004797          	auipc	a5,0x4
    80001774:	2cb7b023          	sd	a1,704(a5) # 80005a30 <_ZN15MemoryAllocator11freeSegHeadE>
    80001778:	fd9ff06f          	j	80001750 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

000000008000177c <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` bytes, rounded up to MEM_BLOCK_SIZE
void *MemoryAllocator::mem_alloc(size_t size) {
    8000177c:	fe010113          	addi	sp,sp,-32
    80001780:	00113c23          	sd	ra,24(sp)
    80001784:	00813823          	sd	s0,16(sp)
    80001788:	00913423          	sd	s1,8(sp)
    8000178c:	01213023          	sd	s2,0(sp)
    80001790:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80001794:	0e050e63          	beqz	a0,80001890 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80001798:	00050913          	mv	s2,a0
//    size_t bytesToAllocate = (size + sizeof(MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    size_t bytesToAllocate = size;
    MemSeg *tmp = freeSegHead;
    8000179c:	00004497          	auipc	s1,0x4
    800017a0:	2944b483          	ld	s1,660(s1) # 80005a30 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800017a4:	0a048e63          	beqz	s1,80001860 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800017a8:	0004b783          	ld	a5,0(s1)
    800017ac:	0527e463          	bltu	a5,s2,800017f4 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800017b0:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800017b4:	01700713          	li	a4,23
    800017b8:	04f76263          	bltu	a4,a5,800017fc <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800017bc:	00000613          	li	a2,0
    800017c0:	0104b583          	ld	a1,16(s1)
    800017c4:	00048513          	mv	a0,s1
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	f70080e7          	jalr	-144(ra) # 80001738 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800017d0:	00004797          	auipc	a5,0x4
    800017d4:	2687b783          	ld	a5,616(a5) # 80005a38 <_ZN15MemoryAllocator11usedSegHeadE>
    800017d8:	04078863          	beqz	a5,80001828 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800017dc:	0497fa63          	bgeu	a5,s1,80001830 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800017e0:	00078713          	mv	a4,a5
    800017e4:	0107b783          	ld	a5,16(a5)
    800017e8:	04078663          	beqz	a5,80001834 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    800017ec:	fe97eae3          	bltu	a5,s1,800017e0 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800017f0:	0440006f          	j	80001834 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    800017f4:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    800017f8:	fadff06f          	j	800017a4 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800017fc:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80001800:	0084b703          	ld	a4,8(s1)
    80001804:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80001808:	0104b703          	ld	a4,16(s1)
    8000180c:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80001810:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80001814:	00100613          	li	a2,1
    80001818:	00048513          	mv	a0,s1
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	f1c080e7          	jalr	-228(ra) # 80001738 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80001824:	fadff06f          	j	800017d0 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    80001828:	00078713          	mv	a4,a5
    8000182c:	0080006f          	j	80001834 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80001830:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80001834:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80001838:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    8000183c:	04070063          	beqz	a4,8000187c <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80001840:	01073783          	ld	a5,16(a4)
    80001844:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80001848:	02070e63          	beqz	a4,80001884 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    8000184c:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80001850:	0104b783          	ld	a5,16(s1)
    80001854:	00078463          	beqz	a5,8000185c <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80001858:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    8000185c:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80001860:	00048513          	mv	a0,s1
    80001864:	01813083          	ld	ra,24(sp)
    80001868:	01013403          	ld	s0,16(sp)
    8000186c:	00813483          	ld	s1,8(sp)
    80001870:	00013903          	ld	s2,0(sp)
    80001874:	02010113          	addi	sp,sp,32
    80001878:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    8000187c:	00070793          	mv	a5,a4
    80001880:	fc5ff06f          	j	80001844 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    80001884:	00004797          	auipc	a5,0x4
    80001888:	1a97ba23          	sd	s1,436(a5) # 80005a38 <_ZN15MemoryAllocator11usedSegHeadE>
    8000188c:	fc5ff06f          	j	80001850 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    80001890:	00000493          	li	s1,0
    80001894:	fcdff06f          	j	80001860 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

0000000080001898 <_ZN15MemoryAllocator11getInstanceEv>:
    if (!instance) {
    80001898:	00004517          	auipc	a0,0x4
    8000189c:	1a853503          	ld	a0,424(a0) # 80005a40 <_ZN15MemoryAllocator8instanceE>
    800018a0:	00050463          	beqz	a0,800018a8 <_ZN15MemoryAllocator11getInstanceEv+0x10>
}
    800018a4:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    800018a8:	fe010113          	addi	sp,sp,-32
    800018ac:	00113c23          	sd	ra,24(sp)
    800018b0:	00813823          	sd	s0,16(sp)
    800018b4:	00913423          	sd	s1,8(sp)
    800018b8:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800018bc:	00004797          	auipc	a5,0x4
    800018c0:	1047b783          	ld	a5,260(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800018c4:	0007b783          	ld	a5,0(a5)
    800018c8:	00004497          	auipc	s1,0x4
    800018cc:	16848493          	addi	s1,s1,360 # 80005a30 <_ZN15MemoryAllocator11freeSegHeadE>
    800018d0:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800018d4:	00004717          	auipc	a4,0x4
    800018d8:	10473703          	ld	a4,260(a4) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018dc:	00073703          	ld	a4,0(a4)
    800018e0:	40f70733          	sub	a4,a4,a5
    800018e4:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800018e8:	0004b783          	ld	a5,0(s1)
    800018ec:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800018f0:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    800018f4:	00100513          	li	a0,1
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	e84080e7          	jalr	-380(ra) # 8000177c <_ZN15MemoryAllocator9mem_allocEm>
    80001900:	00a4b823          	sd	a0,16(s1)
}
    80001904:	01813083          	ld	ra,24(sp)
    80001908:	01013403          	ld	s0,16(sp)
    8000190c:	00813483          	ld	s1,8(sp)
    80001910:	02010113          	addi	sp,sp,32
    80001914:	00008067          	ret

0000000080001918 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80001918:	ff010113          	addi	sp,sp,-16
    8000191c:	00813423          	sd	s0,8(sp)
    80001920:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80001924:	01053783          	ld	a5,16(a0)
    80001928:	00078863          	beqz	a5,80001938 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    8000192c:	00053703          	ld	a4,0(a0)
    80001930:	00e506b3          	add	a3,a0,a4
    80001934:	00d78863          	beq	a5,a3,80001944 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80001938:	00813403          	ld	s0,8(sp)
    8000193c:	01010113          	addi	sp,sp,16
    80001940:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80001944:	0007b683          	ld	a3,0(a5)
    80001948:	00d70733          	add	a4,a4,a3
    8000194c:	01870713          	addi	a4,a4,24
    80001950:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80001954:	0107b783          	ld	a5,16(a5)
    80001958:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    8000195c:	fc078ee3          	beqz	a5,80001938 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80001960:	00a7b423          	sd	a0,8(a5)
}
    80001964:	fd5ff06f          	j	80001938 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080001968 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001968:	14050263          	beqz	a0,80001aac <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    8000196c:	fd010113          	addi	sp,sp,-48
    80001970:	02113423          	sd	ra,40(sp)
    80001974:	02813023          	sd	s0,32(sp)
    80001978:	00913c23          	sd	s1,24(sp)
    8000197c:	01213823          	sd	s2,16(sp)
    80001980:	01313423          	sd	s3,8(sp)
    80001984:	03010413          	addi	s0,sp,48
    80001988:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000198c:	00004797          	auipc	a5,0x4
    80001990:	0347b783          	ld	a5,52(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001994:	0007b783          	ld	a5,0(a5)
    80001998:	10f56e63          	bltu	a0,a5,80001ab4 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    8000199c:	00004797          	auipc	a5,0x4
    800019a0:	03c7b783          	ld	a5,60(a5) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019a4:	0007b783          	ld	a5,0(a5)
    800019a8:	10a7ea63          	bltu	a5,a0,80001abc <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    800019ac:	00004797          	auipc	a5,0x4
    800019b0:	08c7b783          	ld	a5,140(a5) # 80005a38 <_ZN15MemoryAllocator11usedSegHeadE>
    800019b4:	10078863          	beqz	a5,80001ac4 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800019b8:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800019bc:	00078863          	beqz	a5,800019cc <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800019c0:	08978e63          	beq	a5,s1,80001a5c <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800019c4:	0107b783          	ld	a5,16(a5)
    800019c8:	ff5ff06f          	j	800019bc <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800019cc:	00000793          	li	a5,0
    if (!found) return -3;
    800019d0:	0e078e63          	beqz	a5,80001acc <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    800019d4:	00000613          	li	a2,0
    800019d8:	ff893583          	ld	a1,-8(s2)
    800019dc:	00048513          	mv	a0,s1
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	d58080e7          	jalr	-680(ra) # 80001738 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    800019e8:	00004797          	auipc	a5,0x4
    800019ec:	0487b783          	ld	a5,72(a5) # 80005a30 <_ZN15MemoryAllocator11freeSegHeadE>
    800019f0:	06078a63          	beqz	a5,80001a64 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    800019f4:	08f4e463          	bltu	s1,a5,80001a7c <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    800019f8:	00078993          	mv	s3,a5
    800019fc:	0107b783          	ld	a5,16(a5)
    80001a00:	00078463          	beqz	a5,80001a08 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80001a04:	fe97eae3          	bltu	a5,s1,800019f8 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80001a08:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80001a0c:	0109b783          	ld	a5,16(s3)
    80001a10:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80001a14:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80001a18:	ff893783          	ld	a5,-8(s2)
    80001a1c:	00078463          	beqz	a5,80001a24 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80001a20:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80001a24:	00048513          	mv	a0,s1
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	ef0080e7          	jalr	-272(ra) # 80001918 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80001a30:	00098513          	mv	a0,s3
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	ee4080e7          	jalr	-284(ra) # 80001918 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001a3c:	00000513          	li	a0,0
}
    80001a40:	02813083          	ld	ra,40(sp)
    80001a44:	02013403          	ld	s0,32(sp)
    80001a48:	01813483          	ld	s1,24(sp)
    80001a4c:	01013903          	ld	s2,16(sp)
    80001a50:	00813983          	ld	s3,8(sp)
    80001a54:	03010113          	addi	sp,sp,48
    80001a58:	00008067          	ret
            found = true;
    80001a5c:	00100793          	li	a5,1
    80001a60:	f71ff06f          	j	800019d0 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80001a64:	00004797          	auipc	a5,0x4
    80001a68:	fc97b623          	sd	s1,-52(a5) # 80005a30 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80001a6c:	fe093c23          	sd	zero,-8(s2)
    80001a70:	fe093823          	sd	zero,-16(s2)
    return 0;
    80001a74:	00000513          	li	a0,0
    80001a78:	fc9ff06f          	j	80001a40 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80001a7c:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80001a80:	00004797          	auipc	a5,0x4
    80001a84:	fb078793          	addi	a5,a5,-80 # 80005a30 <_ZN15MemoryAllocator11freeSegHeadE>
    80001a88:	0007b703          	ld	a4,0(a5)
    80001a8c:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80001a90:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80001a94:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80001a98:	00048513          	mv	a0,s1
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	e7c080e7          	jalr	-388(ra) # 80001918 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001aa4:	00000513          	li	a0,0
    80001aa8:	f99ff06f          	j	80001a40 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001aac:	fff00513          	li	a0,-1
}
    80001ab0:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001ab4:	fff00513          	li	a0,-1
    80001ab8:	f89ff06f          	j	80001a40 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80001abc:	fff00513          	li	a0,-1
    80001ac0:	f81ff06f          	j	80001a40 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    80001ac4:	ffe00513          	li	a0,-2
    80001ac8:	f79ff06f          	j	80001a40 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    80001acc:	ffd00513          	li	a0,-3
    80001ad0:	f71ff06f          	j	80001a40 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

0000000080001ad4 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80001ad4:	fe010113          	addi	sp,sp,-32
    80001ad8:	00113c23          	sd	ra,24(sp)
    80001adc:	00813823          	sd	s0,16(sp)
    80001ae0:	00913423          	sd	s1,8(sp)
    80001ae4:	02010413          	addi	s0,sp,32
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80001ae8:	00004497          	auipc	s1,0x4
    80001aec:	f484b483          	ld	s1,-184(s1) # 80005a30 <_ZN15MemoryAllocator11freeSegHeadE>
    80001af0:	00048c63          	beqz	s1,80001b08 <_ZN15MemoryAllocator5printEv+0x34>
    80001af4:	06600513          	li	a0,102
    80001af8:	00002097          	auipc	ra,0x2
    80001afc:	5a4080e7          	jalr	1444(ra) # 8000409c <__putc>
    80001b00:	0104b483          	ld	s1,16(s1)
    80001b04:	fedff06f          	j	80001af0 <_ZN15MemoryAllocator5printEv+0x1c>
    __putc('\n');
    80001b08:	00a00513          	li	a0,10
    80001b0c:	00002097          	auipc	ra,0x2
    80001b10:	590080e7          	jalr	1424(ra) # 8000409c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80001b14:	00004497          	auipc	s1,0x4
    80001b18:	f244b483          	ld	s1,-220(s1) # 80005a38 <_ZN15MemoryAllocator11usedSegHeadE>
    80001b1c:	00048c63          	beqz	s1,80001b34 <_ZN15MemoryAllocator5printEv+0x60>
    80001b20:	07500513          	li	a0,117
    80001b24:	00002097          	auipc	ra,0x2
    80001b28:	578080e7          	jalr	1400(ra) # 8000409c <__putc>
    80001b2c:	0104b483          	ld	s1,16(s1)
    80001b30:	fedff06f          	j	80001b1c <_ZN15MemoryAllocator5printEv+0x48>
    __putc('\n');
    80001b34:	00a00513          	li	a0,10
    80001b38:	00002097          	auipc	ra,0x2
    80001b3c:	564080e7          	jalr	1380(ra) # 8000409c <__putc>
}
    80001b40:	01813083          	ld	ra,24(sp)
    80001b44:	01013403          	ld	s0,16(sp)
    80001b48:	00813483          	ld	s1,8(sp)
    80001b4c:	02010113          	addi	sp,sp,32
    80001b50:	00008067          	ret

0000000080001b54 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80001b54:	fe010113          	addi	sp,sp,-32
    80001b58:	00113c23          	sd	ra,24(sp)
    80001b5c:	00813823          	sd	s0,16(sp)
    80001b60:	00913423          	sd	s1,8(sp)
    80001b64:	02010413          	addi	s0,sp,32
    80001b68:	00050493          	mv	s1,a0
    if (tail_ready) {
    80001b6c:	00004517          	auipc	a0,0x4
    80001b70:	edc53503          	ld	a0,-292(a0) # 80005a48 <_ZN9Scheduler10tail_readyE>
    80001b74:	02051463          	bnez	a0,80001b9c <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    80001b78:	00004797          	auipc	a5,0x4
    80001b7c:	ed078793          	addi	a5,a5,-304 # 80005a48 <_ZN9Scheduler10tail_readyE>
    80001b80:	0097b023          	sd	s1,0(a5)
    80001b84:	0097b423          	sd	s1,8(a5)
}
    80001b88:	01813083          	ld	ra,24(sp)
    80001b8c:	01013403          	ld	s0,16(sp)
    80001b90:	00813483          	ld	s1,8(sp)
    80001b94:	02010113          	addi	sp,sp,32
    80001b98:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    80001b9c:	00048593          	mv	a1,s1
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	8ac080e7          	jalr	-1876(ra) # 8000144c <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80001ba8:	00004797          	auipc	a5,0x4
    80001bac:	ea97b023          	sd	s1,-352(a5) # 80005a48 <_ZN9Scheduler10tail_readyE>
        return;
    80001bb0:	fd9ff06f          	j	80001b88 <_ZN9Scheduler3putEP3TCB+0x34>

0000000080001bb4 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80001bb4:	fe010113          	addi	sp,sp,-32
    80001bb8:	00113c23          	sd	ra,24(sp)
    80001bbc:	00813823          	sd	s0,16(sp)
    80001bc0:	00913423          	sd	s1,8(sp)
    80001bc4:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80001bc8:	00004497          	auipc	s1,0x4
    80001bcc:	e884b483          	ld	s1,-376(s1) # 80005a50 <_ZN9Scheduler10head_readyE>
    80001bd0:	00048c63          	beqz	s1,80001be8 <_ZN9Scheduler3getEv+0x34>
    TCB *head = head_ready;
    head_ready = head_ready -> get_next_ready();
    80001bd4:	00048513          	mv	a0,s1
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	858080e7          	jalr	-1960(ra) # 80001430 <_ZN3TCB14get_next_readyEv>
    80001be0:	00004797          	auipc	a5,0x4
    80001be4:	e6a7b823          	sd	a0,-400(a5) # 80005a50 <_ZN9Scheduler10head_readyE>
    return head;
}
    80001be8:	00048513          	mv	a0,s1
    80001bec:	01813083          	ld	ra,24(sp)
    80001bf0:	01013403          	ld	s0,16(sp)
    80001bf4:	00813483          	ld	s1,8(sp)
    80001bf8:	02010113          	addi	sp,sp,32
    80001bfc:	00008067          	ret

0000000080001c00 <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    80001c00:	ff010113          	addi	sp,sp,-16
    80001c04:	00113423          	sd	ra,8(sp)
    80001c08:	00813023          	sd	s0,0(sp)
    80001c0c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	b6c080e7          	jalr	-1172(ra) # 8000177c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001c18:	00813083          	ld	ra,8(sp)
    80001c1c:	00013403          	ld	s0,0(sp)
    80001c20:	01010113          	addi	sp,sp,16
    80001c24:	00008067          	ret

0000000080001c28 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *addr) {
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00113423          	sd	ra,8(sp)
    80001c30:	00813023          	sd	s0,0(sp)
    80001c34:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	d30080e7          	jalr	-720(ra) # 80001968 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001c40:	00813083          	ld	ra,8(sp)
    80001c44:	00013403          	ld	s0,0(sp)
    80001c48:	01010113          	addi	sp,sp,16
    80001c4c:	00008067          	ret

0000000080001c50 <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    80001c50:	fc010113          	addi	sp,sp,-64
    80001c54:	02113c23          	sd	ra,56(sp)
    80001c58:	02813823          	sd	s0,48(sp)
    80001c5c:	02913423          	sd	s1,40(sp)
    80001c60:	03213023          	sd	s2,32(sp)
    80001c64:	01313c23          	sd	s3,24(sp)
    80001c68:	01413823          	sd	s4,16(sp)
    80001c6c:	01513423          	sd	s5,8(sp)
    80001c70:	04010413          	addi	s0,sp,64
    80001c74:	00050a93          	mv	s5,a0
    80001c78:	00058993          	mv	s3,a1
    thread -> set_status(TCB::Status::SLEEPING);
    80001c7c:	00100593          	li	a1,1
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	858080e7          	jalr	-1960(ra) # 800014d8 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    80001c88:	00004497          	auipc	s1,0x4
    80001c8c:	dd04b483          	ld	s1,-560(s1) # 80005a58 <_ZN9Scheduler13head_sleepingE>
    80001c90:	02048e63          	beqz	s1,80001ccc <_ZN9Scheduler12put_to_sleepEP3TCBm+0x7c>
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    80001c94:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80001c98:	00000a13          	li	s4,0
    while (tmp) {
    80001c9c:	04048c63          	beqz	s1,80001cf4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
        current_time += tmp -> get_time_to_sleep();
    80001ca0:	00048513          	mv	a0,s1
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	818080e7          	jalr	-2024(ra) # 800014bc <_ZN3TCB17get_time_to_sleepEv>
    80001cac:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80001cb0:	0729e463          	bltu	s3,s2,80001d18 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xc8>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    80001cb4:	00048513          	mv	a0,s1
    80001cb8:	fffff097          	auipc	ra,0xfffff
    80001cbc:	7cc080e7          	jalr	1996(ra) # 80001484 <_ZN3TCB17get_next_sleepingEv>
        prev = tmp;
    80001cc0:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80001cc4:	00050493          	mv	s1,a0
    while (tmp) {
    80001cc8:	fd5ff06f          	j	80001c9c <_ZN9Scheduler12put_to_sleepEP3TCBm+0x4c>
        head_sleeping = thread;
    80001ccc:	00004797          	auipc	a5,0x4
    80001cd0:	d957b623          	sd	s5,-628(a5) # 80005a58 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80001cd4:	00000593          	li	a1,0
    80001cd8:	000a8513          	mv	a0,s5
    80001cdc:	fffff097          	auipc	ra,0xfffff
    80001ce0:	78c080e7          	jalr	1932(ra) # 80001468 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80001ce4:	00098593          	mv	a1,s3
    80001ce8:	000a8513          	mv	a0,s5
    80001cec:	fffff097          	auipc	ra,0xfffff
    80001cf0:	7b4080e7          	jalr	1972(ra) # 800014a0 <_ZN3TCB17set_time_to_sleepEm>
    }
}
    80001cf4:	03813083          	ld	ra,56(sp)
    80001cf8:	03013403          	ld	s0,48(sp)
    80001cfc:	02813483          	ld	s1,40(sp)
    80001d00:	02013903          	ld	s2,32(sp)
    80001d04:	01813983          	ld	s3,24(sp)
    80001d08:	01013a03          	ld	s4,16(sp)
    80001d0c:	00813a83          	ld	s5,8(sp)
    80001d10:	04010113          	addi	sp,sp,64
    80001d14:	00008067          	ret
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
    80001d18:	000a0a63          	beqz	s4,80001d2c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xdc>
    80001d1c:	000a0513          	mv	a0,s4
    80001d20:	fffff097          	auipc	ra,0xfffff
    80001d24:	79c080e7          	jalr	1948(ra) # 800014bc <_ZN3TCB17get_time_to_sleepEv>
    80001d28:	40a989b3          	sub	s3,s3,a0
            thread -> set_time_to_sleep(new_time);
    80001d2c:	00098593          	mv	a1,s3
    80001d30:	000a8513          	mv	a0,s5
    80001d34:	fffff097          	auipc	ra,0xfffff
    80001d38:	76c080e7          	jalr	1900(ra) # 800014a0 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80001d3c:	00048593          	mv	a1,s1
    80001d40:	000a8513          	mv	a0,s5
    80001d44:	fffff097          	auipc	ra,0xfffff
    80001d48:	724080e7          	jalr	1828(ra) # 80001468 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80001d4c:	040a0c63          	beqz	s4,80001da4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x154>
    80001d50:	000a8593          	mv	a1,s5
    80001d54:	000a0513          	mv	a0,s4
    80001d58:	fffff097          	auipc	ra,0xfffff
    80001d5c:	710080e7          	jalr	1808(ra) # 80001468 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80001d60:	00048513          	mv	a0,s1
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	720080e7          	jalr	1824(ra) # 80001484 <_ZN3TCB17get_next_sleepingEv>
    80001d6c:	00050493          	mv	s1,a0
    80001d70:	f80482e3          	beqz	s1,80001cf4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80001d74:	00048513          	mv	a0,s1
    80001d78:	fffff097          	auipc	ra,0xfffff
    80001d7c:	744080e7          	jalr	1860(ra) # 800014bc <_ZN3TCB17get_time_to_sleepEv>
    80001d80:	413505b3          	sub	a1,a0,s3
    80001d84:	00048513          	mv	a0,s1
    80001d88:	fffff097          	auipc	ra,0xfffff
    80001d8c:	718080e7          	jalr	1816(ra) # 800014a0 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80001d90:	00048513          	mv	a0,s1
    80001d94:	fffff097          	auipc	ra,0xfffff
    80001d98:	6f0080e7          	jalr	1776(ra) # 80001484 <_ZN3TCB17get_next_sleepingEv>
    80001d9c:	00050493          	mv	s1,a0
    80001da0:	fd1ff06f          	j	80001d70 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x120>
            else head_sleeping = thread;
    80001da4:	00004797          	auipc	a5,0x4
    80001da8:	cb57ba23          	sd	s5,-844(a5) # 80005a58 <_ZN9Scheduler13head_sleepingE>
    80001dac:	fb5ff06f          	j	80001d60 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x110>

0000000080001db0 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00813423          	sd	s0,8(sp)
    80001db8:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80001dbc:	00053503          	ld	a0,0(a0)
    80001dc0:	00050463          	beqz	a0,80001dc8 <_ZN10ThreadList9get_firstEv+0x18>
    80001dc4:	00053503          	ld	a0,0(a0)
}
    80001dc8:	00813403          	ld	s0,8(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret

0000000080001dd4 <_ZN10ThreadList4NodenwEm>:
    head -> next = nullptr;
    delete tmp;
    return thread;
}

void *ThreadList::Node::operator new(size_t size) {
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00113423          	sd	ra,8(sp)
    80001ddc:	00813023          	sd	s0,0(sp)
    80001de0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	998080e7          	jalr	-1640(ra) # 8000177c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001dec:	00813083          	ld	ra,8(sp)
    80001df0:	00013403          	ld	s0,0(sp)
    80001df4:	01010113          	addi	sp,sp,16
    80001df8:	00008067          	ret

0000000080001dfc <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80001dfc:	fe010113          	addi	sp,sp,-32
    80001e00:	00113c23          	sd	ra,24(sp)
    80001e04:	00813823          	sd	s0,16(sp)
    80001e08:	00913423          	sd	s1,8(sp)
    80001e0c:	01213023          	sd	s2,0(sp)
    80001e10:	02010413          	addi	s0,sp,32
    80001e14:	00050493          	mv	s1,a0
    80001e18:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80001e1c:	01000513          	li	a0,16
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	fb4080e7          	jalr	-76(ra) # 80001dd4 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        Node(TCB* data) : data(data), next(nullptr) {}
    80001e28:	01253023          	sd	s2,0(a0)
    80001e2c:	00053423          	sd	zero,8(a0)
    80001e30:	0004b783          	ld	a5,0(s1)
    80001e34:	02078263          	beqz	a5,80001e58 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80001e38:	00a4b023          	sd	a0,0(s1)
    80001e3c:	00a4b423          	sd	a0,8(s1)
}
    80001e40:	01813083          	ld	ra,24(sp)
    80001e44:	01013403          	ld	s0,16(sp)
    80001e48:	00813483          	ld	s1,8(sp)
    80001e4c:	00013903          	ld	s2,0(sp)
    80001e50:	02010113          	addi	sp,sp,32
    80001e54:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80001e58:	0084b783          	ld	a5,8(s1)
    80001e5c:	00a7b423          	sd	a0,8(a5)
    80001e60:	fddff06f          	j	80001e3c <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080001e64 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80001e64:	fe010113          	addi	sp,sp,-32
    80001e68:	00113c23          	sd	ra,24(sp)
    80001e6c:	00813823          	sd	s0,16(sp)
    80001e70:	00913423          	sd	s1,8(sp)
    80001e74:	01213023          	sd	s2,0(sp)
    80001e78:	02010413          	addi	s0,sp,32
    80001e7c:	00050493          	mv	s1,a0
    80001e80:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80001e84:	01000513          	li	a0,16
    80001e88:	00000097          	auipc	ra,0x0
    80001e8c:	f4c080e7          	jalr	-180(ra) # 80001dd4 <_ZN10ThreadList4NodenwEm>
    80001e90:	01253023          	sd	s2,0(a0)
    80001e94:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80001e98:	0004b783          	ld	a5,0(s1)
    80001e9c:	00f53423          	sd	a5,8(a0)
    head = node;
    80001ea0:	00a4b023          	sd	a0,0(s1)
}
    80001ea4:	01813083          	ld	ra,24(sp)
    80001ea8:	01013403          	ld	s0,16(sp)
    80001eac:	00813483          	ld	s1,8(sp)
    80001eb0:	00013903          	ld	s2,0(sp)
    80001eb4:	02010113          	addi	sp,sp,32
    80001eb8:	00008067          	ret

0000000080001ebc <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80001ebc:	ff010113          	addi	sp,sp,-16
    80001ec0:	00113423          	sd	ra,8(sp)
    80001ec4:	00813023          	sd	s0,0(sp)
    80001ec8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	a9c080e7          	jalr	-1380(ra) # 80001968 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001ed4:	00813083          	ld	ra,8(sp)
    80001ed8:	00013403          	ld	s0,0(sp)
    80001edc:	01010113          	addi	sp,sp,16
    80001ee0:	00008067          	ret

0000000080001ee4 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80001ee4:	fe010113          	addi	sp,sp,-32
    80001ee8:	00113c23          	sd	ra,24(sp)
    80001eec:	00813823          	sd	s0,16(sp)
    80001ef0:	00913423          	sd	s1,8(sp)
    80001ef4:	02010413          	addi	s0,sp,32
    80001ef8:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80001efc:	00053503          	ld	a0,0(a0)
    80001f00:	02050a63          	beqz	a0,80001f34 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80001f04:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80001f08:	00853703          	ld	a4,8(a0)
    80001f0c:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    80001f10:	00073423          	sd	zero,8(a4)
    delete tmp;
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	fa8080e7          	jalr	-88(ra) # 80001ebc <_ZN10ThreadList4NodedlEPv>
}
    80001f1c:	00048513          	mv	a0,s1
    80001f20:	01813083          	ld	ra,24(sp)
    80001f24:	01013403          	ld	s0,16(sp)
    80001f28:	00813483          	ld	s1,8(sp)
    80001f2c:	02010113          	addi	sp,sp,32
    80001f30:	00008067          	ret
    if (!head) return nullptr;
    80001f34:	00050493          	mv	s1,a0
    80001f38:	fe5ff06f          	j	80001f1c <_ZN10ThreadList12remove_firstEv+0x38>

0000000080001f3c <interrupt_routine>:
#include "../lib/hw.h"
#include "../h/syscall_c.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/risc-v.hpp"

extern "C" void interrupt_routine() {
    80001f3c:	fe010113          	addi	sp,sp,-32
    80001f40:	00113c23          	sd	ra,24(sp)
    80001f44:	00813823          	sd	s0,16(sp)
    80001f48:	02010413          	addi	s0,sp,32
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80001f4c:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80001f50:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80001f54:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80001f58:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80001f5c:	00070693          	mv	a3,a4

};

inline uint64 RiscV::read_scause() {
    uint64 volatile scause;
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80001f60:	14202773          	csrr	a4,scause
    80001f64:	fee43423          	sd	a4,-24(s0)
    return scause;
    80001f68:	fe843803          	ld	a6,-24(s0)

    /// illegal instruction
    if (RiscV::read_scause() == (uint64) 2) {
    80001f6c:	00200713          	li	a4,2
    80001f70:	02e80663          	beq	a6,a4,80001f9c <interrupt_routine+0x60>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    switch(syscall_code) {
    80001f74:	01100713          	li	a4,17
    80001f78:	04e78e63          	beq	a5,a4,80001fd4 <interrupt_routine+0x98>
    80001f7c:	02f76c63          	bltu	a4,a5,80001fb4 <interrupt_routine+0x78>
    80001f80:	00100713          	li	a4,1
    80001f84:	04e78263          	beq	a5,a4,80001fc8 <interrupt_routine+0x8c>
    80001f88:	00200713          	li	a4,2
    80001f8c:	00e79c63          	bne	a5,a4,80001fa4 <interrupt_routine+0x68>
        case MEM_ALLOC:
            MemoryAllocator::mem_alloc((size_t) a1);
            break;
        case MEM_FREE:
            MemoryAllocator::mem_free((void *) a1);
    80001f90:	00000097          	auipc	ra,0x0
    80001f94:	9d8080e7          	jalr	-1576(ra) # 80001968 <_ZN15MemoryAllocator8mem_freeEPv>
            break;
    80001f98:	00c0006f          	j	80001fa4 <interrupt_routine+0x68>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80001f9c:	00100793          	li	a5,1
    80001fa0:	00078513          	mv	a0,a5
//            IO::_putc((char) arg1);
            break;
        default:
            break;
    }
    80001fa4:	01813083          	ld	ra,24(sp)
    80001fa8:	01013403          	ld	s0,16(sp)
    80001fac:	02010113          	addi	sp,sp,32
    80001fb0:	00008067          	ret
    switch(syscall_code) {
    80001fb4:	01200713          	li	a4,18
    80001fb8:	fee796e3          	bne	a5,a4,80001fa4 <interrupt_routine+0x68>
            TCB::thread_exit();
    80001fbc:	fffff097          	auipc	ra,0xfffff
    80001fc0:	538080e7          	jalr	1336(ra) # 800014f4 <_ZN3TCB11thread_exitEv>
            break;
    80001fc4:	fe1ff06f          	j	80001fa4 <interrupt_routine+0x68>
            MemoryAllocator::mem_alloc((size_t) a1);
    80001fc8:	fffff097          	auipc	ra,0xfffff
    80001fcc:	7b4080e7          	jalr	1972(ra) # 8000177c <_ZN15MemoryAllocator9mem_allocEm>
            break;
    80001fd0:	fd5ff06f          	j	80001fa4 <interrupt_routine+0x68>
            TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80001fd4:	fffff097          	auipc	ra,0xfffff
    80001fd8:	634080e7          	jalr	1588(ra) # 80001608 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
            break;
    80001fdc:	fc9ff06f          	j	80001fa4 <interrupt_routine+0x68>

0000000080001fe0 <start>:
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00813423          	sd	s0,8(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    80001fec:	300027f3          	csrr	a5,mstatus
    80001ff0:	ffffe737          	lui	a4,0xffffe
    80001ff4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b3f>
    80001ff8:	00e7f7b3          	and	a5,a5,a4
    80001ffc:	00001737          	lui	a4,0x1
    80002000:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002004:	00e7e7b3          	or	a5,a5,a4
    80002008:	30079073          	csrw	mstatus,a5
    8000200c:	00000797          	auipc	a5,0x0
    80002010:	16078793          	addi	a5,a5,352 # 8000216c <system_main>
    80002014:	34179073          	csrw	mepc,a5
    80002018:	00000793          	li	a5,0
    8000201c:	18079073          	csrw	satp,a5
    80002020:	000107b7          	lui	a5,0x10
    80002024:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002028:	30279073          	csrw	medeleg,a5
    8000202c:	30379073          	csrw	mideleg,a5
    80002030:	104027f3          	csrr	a5,sie
    80002034:	2227e793          	ori	a5,a5,546
    80002038:	10479073          	csrw	sie,a5
    8000203c:	fff00793          	li	a5,-1
    80002040:	00a7d793          	srli	a5,a5,0xa
    80002044:	3b079073          	csrw	pmpaddr0,a5
    80002048:	00f00793          	li	a5,15
    8000204c:	3a079073          	csrw	pmpcfg0,a5
    80002050:	f14027f3          	csrr	a5,mhartid
    80002054:	0200c737          	lui	a4,0x200c
    80002058:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000205c:	0007869b          	sext.w	a3,a5
    80002060:	00269713          	slli	a4,a3,0x2
    80002064:	000f4637          	lui	a2,0xf4
    80002068:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000206c:	00d70733          	add	a4,a4,a3
    80002070:	0037979b          	slliw	a5,a5,0x3
    80002074:	020046b7          	lui	a3,0x2004
    80002078:	00d787b3          	add	a5,a5,a3
    8000207c:	00c585b3          	add	a1,a1,a2
    80002080:	00371693          	slli	a3,a4,0x3
    80002084:	00004717          	auipc	a4,0x4
    80002088:	9dc70713          	addi	a4,a4,-1572 # 80005a60 <timer_scratch>
    8000208c:	00b7b023          	sd	a1,0(a5)
    80002090:	00d70733          	add	a4,a4,a3
    80002094:	00f73c23          	sd	a5,24(a4)
    80002098:	02c73023          	sd	a2,32(a4)
    8000209c:	34071073          	csrw	mscratch,a4
    800020a0:	00000797          	auipc	a5,0x0
    800020a4:	6e078793          	addi	a5,a5,1760 # 80002780 <timervec>
    800020a8:	30579073          	csrw	mtvec,a5
    800020ac:	300027f3          	csrr	a5,mstatus
    800020b0:	0087e793          	ori	a5,a5,8
    800020b4:	30079073          	csrw	mstatus,a5
    800020b8:	304027f3          	csrr	a5,mie
    800020bc:	0807e793          	ori	a5,a5,128
    800020c0:	30479073          	csrw	mie,a5
    800020c4:	f14027f3          	csrr	a5,mhartid
    800020c8:	0007879b          	sext.w	a5,a5
    800020cc:	00078213          	mv	tp,a5
    800020d0:	30200073          	mret
    800020d4:	00813403          	ld	s0,8(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <timerinit>:
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00813423          	sd	s0,8(sp)
    800020e8:	01010413          	addi	s0,sp,16
    800020ec:	f14027f3          	csrr	a5,mhartid
    800020f0:	0200c737          	lui	a4,0x200c
    800020f4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020f8:	0007869b          	sext.w	a3,a5
    800020fc:	00269713          	slli	a4,a3,0x2
    80002100:	000f4637          	lui	a2,0xf4
    80002104:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002108:	00d70733          	add	a4,a4,a3
    8000210c:	0037979b          	slliw	a5,a5,0x3
    80002110:	020046b7          	lui	a3,0x2004
    80002114:	00d787b3          	add	a5,a5,a3
    80002118:	00c585b3          	add	a1,a1,a2
    8000211c:	00371693          	slli	a3,a4,0x3
    80002120:	00004717          	auipc	a4,0x4
    80002124:	94070713          	addi	a4,a4,-1728 # 80005a60 <timer_scratch>
    80002128:	00b7b023          	sd	a1,0(a5)
    8000212c:	00d70733          	add	a4,a4,a3
    80002130:	00f73c23          	sd	a5,24(a4)
    80002134:	02c73023          	sd	a2,32(a4)
    80002138:	34071073          	csrw	mscratch,a4
    8000213c:	00000797          	auipc	a5,0x0
    80002140:	64478793          	addi	a5,a5,1604 # 80002780 <timervec>
    80002144:	30579073          	csrw	mtvec,a5
    80002148:	300027f3          	csrr	a5,mstatus
    8000214c:	0087e793          	ori	a5,a5,8
    80002150:	30079073          	csrw	mstatus,a5
    80002154:	304027f3          	csrr	a5,mie
    80002158:	0807e793          	ori	a5,a5,128
    8000215c:	30479073          	csrw	mie,a5
    80002160:	00813403          	ld	s0,8(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <system_main>:
    8000216c:	fe010113          	addi	sp,sp,-32
    80002170:	00813823          	sd	s0,16(sp)
    80002174:	00913423          	sd	s1,8(sp)
    80002178:	00113c23          	sd	ra,24(sp)
    8000217c:	02010413          	addi	s0,sp,32
    80002180:	00000097          	auipc	ra,0x0
    80002184:	0c4080e7          	jalr	196(ra) # 80002244 <cpuid>
    80002188:	00004497          	auipc	s1,0x4
    8000218c:	86848493          	addi	s1,s1,-1944 # 800059f0 <started>
    80002190:	02050263          	beqz	a0,800021b4 <system_main+0x48>
    80002194:	0004a783          	lw	a5,0(s1)
    80002198:	0007879b          	sext.w	a5,a5
    8000219c:	fe078ce3          	beqz	a5,80002194 <system_main+0x28>
    800021a0:	0ff0000f          	fence
    800021a4:	00003517          	auipc	a0,0x3
    800021a8:	eac50513          	addi	a0,a0,-340 # 80005050 <CONSOLE_STATUS+0x40>
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	a70080e7          	jalr	-1424(ra) # 80002c1c <panic>
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	9c4080e7          	jalr	-1596(ra) # 80002b78 <consoleinit>
    800021bc:	00001097          	auipc	ra,0x1
    800021c0:	150080e7          	jalr	336(ra) # 8000330c <printfinit>
    800021c4:	00003517          	auipc	a0,0x3
    800021c8:	f6c50513          	addi	a0,a0,-148 # 80005130 <CONSOLE_STATUS+0x120>
    800021cc:	00001097          	auipc	ra,0x1
    800021d0:	aac080e7          	jalr	-1364(ra) # 80002c78 <__printf>
    800021d4:	00003517          	auipc	a0,0x3
    800021d8:	e4c50513          	addi	a0,a0,-436 # 80005020 <CONSOLE_STATUS+0x10>
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	a9c080e7          	jalr	-1380(ra) # 80002c78 <__printf>
    800021e4:	00003517          	auipc	a0,0x3
    800021e8:	f4c50513          	addi	a0,a0,-180 # 80005130 <CONSOLE_STATUS+0x120>
    800021ec:	00001097          	auipc	ra,0x1
    800021f0:	a8c080e7          	jalr	-1396(ra) # 80002c78 <__printf>
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	4a4080e7          	jalr	1188(ra) # 80003698 <kinit>
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	148080e7          	jalr	328(ra) # 80002344 <trapinit>
    80002204:	00000097          	auipc	ra,0x0
    80002208:	16c080e7          	jalr	364(ra) # 80002370 <trapinithart>
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	5b4080e7          	jalr	1460(ra) # 800027c0 <plicinit>
    80002214:	00000097          	auipc	ra,0x0
    80002218:	5d4080e7          	jalr	1492(ra) # 800027e8 <plicinithart>
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	078080e7          	jalr	120(ra) # 80002294 <userinit>
    80002224:	0ff0000f          	fence
    80002228:	00100793          	li	a5,1
    8000222c:	00003517          	auipc	a0,0x3
    80002230:	e0c50513          	addi	a0,a0,-500 # 80005038 <CONSOLE_STATUS+0x28>
    80002234:	00f4a023          	sw	a5,0(s1)
    80002238:	00001097          	auipc	ra,0x1
    8000223c:	a40080e7          	jalr	-1472(ra) # 80002c78 <__printf>
    80002240:	0000006f          	j	80002240 <system_main+0xd4>

0000000080002244 <cpuid>:
    80002244:	ff010113          	addi	sp,sp,-16
    80002248:	00813423          	sd	s0,8(sp)
    8000224c:	01010413          	addi	s0,sp,16
    80002250:	00020513          	mv	a0,tp
    80002254:	00813403          	ld	s0,8(sp)
    80002258:	0005051b          	sext.w	a0,a0
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret

0000000080002264 <mycpu>:
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00813423          	sd	s0,8(sp)
    8000226c:	01010413          	addi	s0,sp,16
    80002270:	00020793          	mv	a5,tp
    80002274:	00813403          	ld	s0,8(sp)
    80002278:	0007879b          	sext.w	a5,a5
    8000227c:	00779793          	slli	a5,a5,0x7
    80002280:	00005517          	auipc	a0,0x5
    80002284:	81050513          	addi	a0,a0,-2032 # 80006a90 <cpus>
    80002288:	00f50533          	add	a0,a0,a5
    8000228c:	01010113          	addi	sp,sp,16
    80002290:	00008067          	ret

0000000080002294 <userinit>:
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00813423          	sd	s0,8(sp)
    8000229c:	01010413          	addi	s0,sp,16
    800022a0:	00813403          	ld	s0,8(sp)
    800022a4:	01010113          	addi	sp,sp,16
    800022a8:	fffff317          	auipc	t1,0xfffff
    800022ac:	00830067          	jr	8(t1) # 800012b0 <main>

00000000800022b0 <either_copyout>:
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00813023          	sd	s0,0(sp)
    800022b8:	00113423          	sd	ra,8(sp)
    800022bc:	01010413          	addi	s0,sp,16
    800022c0:	02051663          	bnez	a0,800022ec <either_copyout+0x3c>
    800022c4:	00058513          	mv	a0,a1
    800022c8:	00060593          	mv	a1,a2
    800022cc:	0006861b          	sext.w	a2,a3
    800022d0:	00002097          	auipc	ra,0x2
    800022d4:	c54080e7          	jalr	-940(ra) # 80003f24 <__memmove>
    800022d8:	00813083          	ld	ra,8(sp)
    800022dc:	00013403          	ld	s0,0(sp)
    800022e0:	00000513          	li	a0,0
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00008067          	ret
    800022ec:	00003517          	auipc	a0,0x3
    800022f0:	d8c50513          	addi	a0,a0,-628 # 80005078 <CONSOLE_STATUS+0x68>
    800022f4:	00001097          	auipc	ra,0x1
    800022f8:	928080e7          	jalr	-1752(ra) # 80002c1c <panic>

00000000800022fc <either_copyin>:
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00813023          	sd	s0,0(sp)
    80002304:	00113423          	sd	ra,8(sp)
    80002308:	01010413          	addi	s0,sp,16
    8000230c:	02059463          	bnez	a1,80002334 <either_copyin+0x38>
    80002310:	00060593          	mv	a1,a2
    80002314:	0006861b          	sext.w	a2,a3
    80002318:	00002097          	auipc	ra,0x2
    8000231c:	c0c080e7          	jalr	-1012(ra) # 80003f24 <__memmove>
    80002320:	00813083          	ld	ra,8(sp)
    80002324:	00013403          	ld	s0,0(sp)
    80002328:	00000513          	li	a0,0
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret
    80002334:	00003517          	auipc	a0,0x3
    80002338:	d6c50513          	addi	a0,a0,-660 # 800050a0 <CONSOLE_STATUS+0x90>
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	8e0080e7          	jalr	-1824(ra) # 80002c1c <panic>

0000000080002344 <trapinit>:
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00813423          	sd	s0,8(sp)
    8000234c:	01010413          	addi	s0,sp,16
    80002350:	00813403          	ld	s0,8(sp)
    80002354:	00003597          	auipc	a1,0x3
    80002358:	d7458593          	addi	a1,a1,-652 # 800050c8 <CONSOLE_STATUS+0xb8>
    8000235c:	00004517          	auipc	a0,0x4
    80002360:	7b450513          	addi	a0,a0,1972 # 80006b10 <tickslock>
    80002364:	01010113          	addi	sp,sp,16
    80002368:	00001317          	auipc	t1,0x1
    8000236c:	5c030067          	jr	1472(t1) # 80003928 <initlock>

0000000080002370 <trapinithart>:
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00813423          	sd	s0,8(sp)
    80002378:	01010413          	addi	s0,sp,16
    8000237c:	00000797          	auipc	a5,0x0
    80002380:	2f478793          	addi	a5,a5,756 # 80002670 <kernelvec>
    80002384:	10579073          	csrw	stvec,a5
    80002388:	00813403          	ld	s0,8(sp)
    8000238c:	01010113          	addi	sp,sp,16
    80002390:	00008067          	ret

0000000080002394 <usertrap>:
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00813423          	sd	s0,8(sp)
    8000239c:	01010413          	addi	s0,sp,16
    800023a0:	00813403          	ld	s0,8(sp)
    800023a4:	01010113          	addi	sp,sp,16
    800023a8:	00008067          	ret

00000000800023ac <usertrapret>:
    800023ac:	ff010113          	addi	sp,sp,-16
    800023b0:	00813423          	sd	s0,8(sp)
    800023b4:	01010413          	addi	s0,sp,16
    800023b8:	00813403          	ld	s0,8(sp)
    800023bc:	01010113          	addi	sp,sp,16
    800023c0:	00008067          	ret

00000000800023c4 <kerneltrap>:
    800023c4:	fe010113          	addi	sp,sp,-32
    800023c8:	00813823          	sd	s0,16(sp)
    800023cc:	00113c23          	sd	ra,24(sp)
    800023d0:	00913423          	sd	s1,8(sp)
    800023d4:	02010413          	addi	s0,sp,32
    800023d8:	142025f3          	csrr	a1,scause
    800023dc:	100027f3          	csrr	a5,sstatus
    800023e0:	0027f793          	andi	a5,a5,2
    800023e4:	10079c63          	bnez	a5,800024fc <kerneltrap+0x138>
    800023e8:	142027f3          	csrr	a5,scause
    800023ec:	0207ce63          	bltz	a5,80002428 <kerneltrap+0x64>
    800023f0:	00003517          	auipc	a0,0x3
    800023f4:	d2050513          	addi	a0,a0,-736 # 80005110 <CONSOLE_STATUS+0x100>
    800023f8:	00001097          	auipc	ra,0x1
    800023fc:	880080e7          	jalr	-1920(ra) # 80002c78 <__printf>
    80002400:	141025f3          	csrr	a1,sepc
    80002404:	14302673          	csrr	a2,stval
    80002408:	00003517          	auipc	a0,0x3
    8000240c:	d1850513          	addi	a0,a0,-744 # 80005120 <CONSOLE_STATUS+0x110>
    80002410:	00001097          	auipc	ra,0x1
    80002414:	868080e7          	jalr	-1944(ra) # 80002c78 <__printf>
    80002418:	00003517          	auipc	a0,0x3
    8000241c:	d2050513          	addi	a0,a0,-736 # 80005138 <CONSOLE_STATUS+0x128>
    80002420:	00000097          	auipc	ra,0x0
    80002424:	7fc080e7          	jalr	2044(ra) # 80002c1c <panic>
    80002428:	0ff7f713          	andi	a4,a5,255
    8000242c:	00900693          	li	a3,9
    80002430:	04d70063          	beq	a4,a3,80002470 <kerneltrap+0xac>
    80002434:	fff00713          	li	a4,-1
    80002438:	03f71713          	slli	a4,a4,0x3f
    8000243c:	00170713          	addi	a4,a4,1
    80002440:	fae798e3          	bne	a5,a4,800023f0 <kerneltrap+0x2c>
    80002444:	00000097          	auipc	ra,0x0
    80002448:	e00080e7          	jalr	-512(ra) # 80002244 <cpuid>
    8000244c:	06050663          	beqz	a0,800024b8 <kerneltrap+0xf4>
    80002450:	144027f3          	csrr	a5,sip
    80002454:	ffd7f793          	andi	a5,a5,-3
    80002458:	14479073          	csrw	sip,a5
    8000245c:	01813083          	ld	ra,24(sp)
    80002460:	01013403          	ld	s0,16(sp)
    80002464:	00813483          	ld	s1,8(sp)
    80002468:	02010113          	addi	sp,sp,32
    8000246c:	00008067          	ret
    80002470:	00000097          	auipc	ra,0x0
    80002474:	3c4080e7          	jalr	964(ra) # 80002834 <plic_claim>
    80002478:	00a00793          	li	a5,10
    8000247c:	00050493          	mv	s1,a0
    80002480:	06f50863          	beq	a0,a5,800024f0 <kerneltrap+0x12c>
    80002484:	fc050ce3          	beqz	a0,8000245c <kerneltrap+0x98>
    80002488:	00050593          	mv	a1,a0
    8000248c:	00003517          	auipc	a0,0x3
    80002490:	c6450513          	addi	a0,a0,-924 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002494:	00000097          	auipc	ra,0x0
    80002498:	7e4080e7          	jalr	2020(ra) # 80002c78 <__printf>
    8000249c:	01013403          	ld	s0,16(sp)
    800024a0:	01813083          	ld	ra,24(sp)
    800024a4:	00048513          	mv	a0,s1
    800024a8:	00813483          	ld	s1,8(sp)
    800024ac:	02010113          	addi	sp,sp,32
    800024b0:	00000317          	auipc	t1,0x0
    800024b4:	3bc30067          	jr	956(t1) # 8000286c <plic_complete>
    800024b8:	00004517          	auipc	a0,0x4
    800024bc:	65850513          	addi	a0,a0,1624 # 80006b10 <tickslock>
    800024c0:	00001097          	auipc	ra,0x1
    800024c4:	48c080e7          	jalr	1164(ra) # 8000394c <acquire>
    800024c8:	00003717          	auipc	a4,0x3
    800024cc:	52c70713          	addi	a4,a4,1324 # 800059f4 <ticks>
    800024d0:	00072783          	lw	a5,0(a4)
    800024d4:	00004517          	auipc	a0,0x4
    800024d8:	63c50513          	addi	a0,a0,1596 # 80006b10 <tickslock>
    800024dc:	0017879b          	addiw	a5,a5,1
    800024e0:	00f72023          	sw	a5,0(a4)
    800024e4:	00001097          	auipc	ra,0x1
    800024e8:	534080e7          	jalr	1332(ra) # 80003a18 <release>
    800024ec:	f65ff06f          	j	80002450 <kerneltrap+0x8c>
    800024f0:	00001097          	auipc	ra,0x1
    800024f4:	090080e7          	jalr	144(ra) # 80003580 <uartintr>
    800024f8:	fa5ff06f          	j	8000249c <kerneltrap+0xd8>
    800024fc:	00003517          	auipc	a0,0x3
    80002500:	bd450513          	addi	a0,a0,-1068 # 800050d0 <CONSOLE_STATUS+0xc0>
    80002504:	00000097          	auipc	ra,0x0
    80002508:	718080e7          	jalr	1816(ra) # 80002c1c <panic>

000000008000250c <clockintr>:
    8000250c:	fe010113          	addi	sp,sp,-32
    80002510:	00813823          	sd	s0,16(sp)
    80002514:	00913423          	sd	s1,8(sp)
    80002518:	00113c23          	sd	ra,24(sp)
    8000251c:	02010413          	addi	s0,sp,32
    80002520:	00004497          	auipc	s1,0x4
    80002524:	5f048493          	addi	s1,s1,1520 # 80006b10 <tickslock>
    80002528:	00048513          	mv	a0,s1
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	420080e7          	jalr	1056(ra) # 8000394c <acquire>
    80002534:	00003717          	auipc	a4,0x3
    80002538:	4c070713          	addi	a4,a4,1216 # 800059f4 <ticks>
    8000253c:	00072783          	lw	a5,0(a4)
    80002540:	01013403          	ld	s0,16(sp)
    80002544:	01813083          	ld	ra,24(sp)
    80002548:	00048513          	mv	a0,s1
    8000254c:	0017879b          	addiw	a5,a5,1
    80002550:	00813483          	ld	s1,8(sp)
    80002554:	00f72023          	sw	a5,0(a4)
    80002558:	02010113          	addi	sp,sp,32
    8000255c:	00001317          	auipc	t1,0x1
    80002560:	4bc30067          	jr	1212(t1) # 80003a18 <release>

0000000080002564 <devintr>:
    80002564:	142027f3          	csrr	a5,scause
    80002568:	00000513          	li	a0,0
    8000256c:	0007c463          	bltz	a5,80002574 <devintr+0x10>
    80002570:	00008067          	ret
    80002574:	fe010113          	addi	sp,sp,-32
    80002578:	00813823          	sd	s0,16(sp)
    8000257c:	00113c23          	sd	ra,24(sp)
    80002580:	00913423          	sd	s1,8(sp)
    80002584:	02010413          	addi	s0,sp,32
    80002588:	0ff7f713          	andi	a4,a5,255
    8000258c:	00900693          	li	a3,9
    80002590:	04d70c63          	beq	a4,a3,800025e8 <devintr+0x84>
    80002594:	fff00713          	li	a4,-1
    80002598:	03f71713          	slli	a4,a4,0x3f
    8000259c:	00170713          	addi	a4,a4,1
    800025a0:	00e78c63          	beq	a5,a4,800025b8 <devintr+0x54>
    800025a4:	01813083          	ld	ra,24(sp)
    800025a8:	01013403          	ld	s0,16(sp)
    800025ac:	00813483          	ld	s1,8(sp)
    800025b0:	02010113          	addi	sp,sp,32
    800025b4:	00008067          	ret
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	c8c080e7          	jalr	-884(ra) # 80002244 <cpuid>
    800025c0:	06050663          	beqz	a0,8000262c <devintr+0xc8>
    800025c4:	144027f3          	csrr	a5,sip
    800025c8:	ffd7f793          	andi	a5,a5,-3
    800025cc:	14479073          	csrw	sip,a5
    800025d0:	01813083          	ld	ra,24(sp)
    800025d4:	01013403          	ld	s0,16(sp)
    800025d8:	00813483          	ld	s1,8(sp)
    800025dc:	00200513          	li	a0,2
    800025e0:	02010113          	addi	sp,sp,32
    800025e4:	00008067          	ret
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	24c080e7          	jalr	588(ra) # 80002834 <plic_claim>
    800025f0:	00a00793          	li	a5,10
    800025f4:	00050493          	mv	s1,a0
    800025f8:	06f50663          	beq	a0,a5,80002664 <devintr+0x100>
    800025fc:	00100513          	li	a0,1
    80002600:	fa0482e3          	beqz	s1,800025a4 <devintr+0x40>
    80002604:	00048593          	mv	a1,s1
    80002608:	00003517          	auipc	a0,0x3
    8000260c:	ae850513          	addi	a0,a0,-1304 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002610:	00000097          	auipc	ra,0x0
    80002614:	668080e7          	jalr	1640(ra) # 80002c78 <__printf>
    80002618:	00048513          	mv	a0,s1
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	250080e7          	jalr	592(ra) # 8000286c <plic_complete>
    80002624:	00100513          	li	a0,1
    80002628:	f7dff06f          	j	800025a4 <devintr+0x40>
    8000262c:	00004517          	auipc	a0,0x4
    80002630:	4e450513          	addi	a0,a0,1252 # 80006b10 <tickslock>
    80002634:	00001097          	auipc	ra,0x1
    80002638:	318080e7          	jalr	792(ra) # 8000394c <acquire>
    8000263c:	00003717          	auipc	a4,0x3
    80002640:	3b870713          	addi	a4,a4,952 # 800059f4 <ticks>
    80002644:	00072783          	lw	a5,0(a4)
    80002648:	00004517          	auipc	a0,0x4
    8000264c:	4c850513          	addi	a0,a0,1224 # 80006b10 <tickslock>
    80002650:	0017879b          	addiw	a5,a5,1
    80002654:	00f72023          	sw	a5,0(a4)
    80002658:	00001097          	auipc	ra,0x1
    8000265c:	3c0080e7          	jalr	960(ra) # 80003a18 <release>
    80002660:	f65ff06f          	j	800025c4 <devintr+0x60>
    80002664:	00001097          	auipc	ra,0x1
    80002668:	f1c080e7          	jalr	-228(ra) # 80003580 <uartintr>
    8000266c:	fadff06f          	j	80002618 <devintr+0xb4>

0000000080002670 <kernelvec>:
    80002670:	f0010113          	addi	sp,sp,-256
    80002674:	00113023          	sd	ra,0(sp)
    80002678:	00213423          	sd	sp,8(sp)
    8000267c:	00313823          	sd	gp,16(sp)
    80002680:	00413c23          	sd	tp,24(sp)
    80002684:	02513023          	sd	t0,32(sp)
    80002688:	02613423          	sd	t1,40(sp)
    8000268c:	02713823          	sd	t2,48(sp)
    80002690:	02813c23          	sd	s0,56(sp)
    80002694:	04913023          	sd	s1,64(sp)
    80002698:	04a13423          	sd	a0,72(sp)
    8000269c:	04b13823          	sd	a1,80(sp)
    800026a0:	04c13c23          	sd	a2,88(sp)
    800026a4:	06d13023          	sd	a3,96(sp)
    800026a8:	06e13423          	sd	a4,104(sp)
    800026ac:	06f13823          	sd	a5,112(sp)
    800026b0:	07013c23          	sd	a6,120(sp)
    800026b4:	09113023          	sd	a7,128(sp)
    800026b8:	09213423          	sd	s2,136(sp)
    800026bc:	09313823          	sd	s3,144(sp)
    800026c0:	09413c23          	sd	s4,152(sp)
    800026c4:	0b513023          	sd	s5,160(sp)
    800026c8:	0b613423          	sd	s6,168(sp)
    800026cc:	0b713823          	sd	s7,176(sp)
    800026d0:	0b813c23          	sd	s8,184(sp)
    800026d4:	0d913023          	sd	s9,192(sp)
    800026d8:	0da13423          	sd	s10,200(sp)
    800026dc:	0db13823          	sd	s11,208(sp)
    800026e0:	0dc13c23          	sd	t3,216(sp)
    800026e4:	0fd13023          	sd	t4,224(sp)
    800026e8:	0fe13423          	sd	t5,232(sp)
    800026ec:	0ff13823          	sd	t6,240(sp)
    800026f0:	cd5ff0ef          	jal	ra,800023c4 <kerneltrap>
    800026f4:	00013083          	ld	ra,0(sp)
    800026f8:	00813103          	ld	sp,8(sp)
    800026fc:	01013183          	ld	gp,16(sp)
    80002700:	02013283          	ld	t0,32(sp)
    80002704:	02813303          	ld	t1,40(sp)
    80002708:	03013383          	ld	t2,48(sp)
    8000270c:	03813403          	ld	s0,56(sp)
    80002710:	04013483          	ld	s1,64(sp)
    80002714:	04813503          	ld	a0,72(sp)
    80002718:	05013583          	ld	a1,80(sp)
    8000271c:	05813603          	ld	a2,88(sp)
    80002720:	06013683          	ld	a3,96(sp)
    80002724:	06813703          	ld	a4,104(sp)
    80002728:	07013783          	ld	a5,112(sp)
    8000272c:	07813803          	ld	a6,120(sp)
    80002730:	08013883          	ld	a7,128(sp)
    80002734:	08813903          	ld	s2,136(sp)
    80002738:	09013983          	ld	s3,144(sp)
    8000273c:	09813a03          	ld	s4,152(sp)
    80002740:	0a013a83          	ld	s5,160(sp)
    80002744:	0a813b03          	ld	s6,168(sp)
    80002748:	0b013b83          	ld	s7,176(sp)
    8000274c:	0b813c03          	ld	s8,184(sp)
    80002750:	0c013c83          	ld	s9,192(sp)
    80002754:	0c813d03          	ld	s10,200(sp)
    80002758:	0d013d83          	ld	s11,208(sp)
    8000275c:	0d813e03          	ld	t3,216(sp)
    80002760:	0e013e83          	ld	t4,224(sp)
    80002764:	0e813f03          	ld	t5,232(sp)
    80002768:	0f013f83          	ld	t6,240(sp)
    8000276c:	10010113          	addi	sp,sp,256
    80002770:	10200073          	sret
    80002774:	00000013          	nop
    80002778:	00000013          	nop
    8000277c:	00000013          	nop

0000000080002780 <timervec>:
    80002780:	34051573          	csrrw	a0,mscratch,a0
    80002784:	00b53023          	sd	a1,0(a0)
    80002788:	00c53423          	sd	a2,8(a0)
    8000278c:	00d53823          	sd	a3,16(a0)
    80002790:	01853583          	ld	a1,24(a0)
    80002794:	02053603          	ld	a2,32(a0)
    80002798:	0005b683          	ld	a3,0(a1)
    8000279c:	00c686b3          	add	a3,a3,a2
    800027a0:	00d5b023          	sd	a3,0(a1)
    800027a4:	00200593          	li	a1,2
    800027a8:	14459073          	csrw	sip,a1
    800027ac:	01053683          	ld	a3,16(a0)
    800027b0:	00853603          	ld	a2,8(a0)
    800027b4:	00053583          	ld	a1,0(a0)
    800027b8:	34051573          	csrrw	a0,mscratch,a0
    800027bc:	30200073          	mret

00000000800027c0 <plicinit>:
    800027c0:	ff010113          	addi	sp,sp,-16
    800027c4:	00813423          	sd	s0,8(sp)
    800027c8:	01010413          	addi	s0,sp,16
    800027cc:	00813403          	ld	s0,8(sp)
    800027d0:	0c0007b7          	lui	a5,0xc000
    800027d4:	00100713          	li	a4,1
    800027d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800027dc:	00e7a223          	sw	a4,4(a5)
    800027e0:	01010113          	addi	sp,sp,16
    800027e4:	00008067          	ret

00000000800027e8 <plicinithart>:
    800027e8:	ff010113          	addi	sp,sp,-16
    800027ec:	00813023          	sd	s0,0(sp)
    800027f0:	00113423          	sd	ra,8(sp)
    800027f4:	01010413          	addi	s0,sp,16
    800027f8:	00000097          	auipc	ra,0x0
    800027fc:	a4c080e7          	jalr	-1460(ra) # 80002244 <cpuid>
    80002800:	0085171b          	slliw	a4,a0,0x8
    80002804:	0c0027b7          	lui	a5,0xc002
    80002808:	00e787b3          	add	a5,a5,a4
    8000280c:	40200713          	li	a4,1026
    80002810:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002814:	00813083          	ld	ra,8(sp)
    80002818:	00013403          	ld	s0,0(sp)
    8000281c:	00d5151b          	slliw	a0,a0,0xd
    80002820:	0c2017b7          	lui	a5,0xc201
    80002824:	00a78533          	add	a0,a5,a0
    80002828:	00052023          	sw	zero,0(a0)
    8000282c:	01010113          	addi	sp,sp,16
    80002830:	00008067          	ret

0000000080002834 <plic_claim>:
    80002834:	ff010113          	addi	sp,sp,-16
    80002838:	00813023          	sd	s0,0(sp)
    8000283c:	00113423          	sd	ra,8(sp)
    80002840:	01010413          	addi	s0,sp,16
    80002844:	00000097          	auipc	ra,0x0
    80002848:	a00080e7          	jalr	-1536(ra) # 80002244 <cpuid>
    8000284c:	00813083          	ld	ra,8(sp)
    80002850:	00013403          	ld	s0,0(sp)
    80002854:	00d5151b          	slliw	a0,a0,0xd
    80002858:	0c2017b7          	lui	a5,0xc201
    8000285c:	00a78533          	add	a0,a5,a0
    80002860:	00452503          	lw	a0,4(a0)
    80002864:	01010113          	addi	sp,sp,16
    80002868:	00008067          	ret

000000008000286c <plic_complete>:
    8000286c:	fe010113          	addi	sp,sp,-32
    80002870:	00813823          	sd	s0,16(sp)
    80002874:	00913423          	sd	s1,8(sp)
    80002878:	00113c23          	sd	ra,24(sp)
    8000287c:	02010413          	addi	s0,sp,32
    80002880:	00050493          	mv	s1,a0
    80002884:	00000097          	auipc	ra,0x0
    80002888:	9c0080e7          	jalr	-1600(ra) # 80002244 <cpuid>
    8000288c:	01813083          	ld	ra,24(sp)
    80002890:	01013403          	ld	s0,16(sp)
    80002894:	00d5179b          	slliw	a5,a0,0xd
    80002898:	0c201737          	lui	a4,0xc201
    8000289c:	00f707b3          	add	a5,a4,a5
    800028a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800028a4:	00813483          	ld	s1,8(sp)
    800028a8:	02010113          	addi	sp,sp,32
    800028ac:	00008067          	ret

00000000800028b0 <consolewrite>:
    800028b0:	fb010113          	addi	sp,sp,-80
    800028b4:	04813023          	sd	s0,64(sp)
    800028b8:	04113423          	sd	ra,72(sp)
    800028bc:	02913c23          	sd	s1,56(sp)
    800028c0:	03213823          	sd	s2,48(sp)
    800028c4:	03313423          	sd	s3,40(sp)
    800028c8:	03413023          	sd	s4,32(sp)
    800028cc:	01513c23          	sd	s5,24(sp)
    800028d0:	05010413          	addi	s0,sp,80
    800028d4:	06c05c63          	blez	a2,8000294c <consolewrite+0x9c>
    800028d8:	00060993          	mv	s3,a2
    800028dc:	00050a13          	mv	s4,a0
    800028e0:	00058493          	mv	s1,a1
    800028e4:	00000913          	li	s2,0
    800028e8:	fff00a93          	li	s5,-1
    800028ec:	01c0006f          	j	80002908 <consolewrite+0x58>
    800028f0:	fbf44503          	lbu	a0,-65(s0)
    800028f4:	0019091b          	addiw	s2,s2,1
    800028f8:	00148493          	addi	s1,s1,1
    800028fc:	00001097          	auipc	ra,0x1
    80002900:	a9c080e7          	jalr	-1380(ra) # 80003398 <uartputc>
    80002904:	03298063          	beq	s3,s2,80002924 <consolewrite+0x74>
    80002908:	00048613          	mv	a2,s1
    8000290c:	00100693          	li	a3,1
    80002910:	000a0593          	mv	a1,s4
    80002914:	fbf40513          	addi	a0,s0,-65
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	9e4080e7          	jalr	-1564(ra) # 800022fc <either_copyin>
    80002920:	fd5518e3          	bne	a0,s5,800028f0 <consolewrite+0x40>
    80002924:	04813083          	ld	ra,72(sp)
    80002928:	04013403          	ld	s0,64(sp)
    8000292c:	03813483          	ld	s1,56(sp)
    80002930:	02813983          	ld	s3,40(sp)
    80002934:	02013a03          	ld	s4,32(sp)
    80002938:	01813a83          	ld	s5,24(sp)
    8000293c:	00090513          	mv	a0,s2
    80002940:	03013903          	ld	s2,48(sp)
    80002944:	05010113          	addi	sp,sp,80
    80002948:	00008067          	ret
    8000294c:	00000913          	li	s2,0
    80002950:	fd5ff06f          	j	80002924 <consolewrite+0x74>

0000000080002954 <consoleread>:
    80002954:	f9010113          	addi	sp,sp,-112
    80002958:	06813023          	sd	s0,96(sp)
    8000295c:	04913c23          	sd	s1,88(sp)
    80002960:	05213823          	sd	s2,80(sp)
    80002964:	05313423          	sd	s3,72(sp)
    80002968:	05413023          	sd	s4,64(sp)
    8000296c:	03513c23          	sd	s5,56(sp)
    80002970:	03613823          	sd	s6,48(sp)
    80002974:	03713423          	sd	s7,40(sp)
    80002978:	03813023          	sd	s8,32(sp)
    8000297c:	06113423          	sd	ra,104(sp)
    80002980:	01913c23          	sd	s9,24(sp)
    80002984:	07010413          	addi	s0,sp,112
    80002988:	00060b93          	mv	s7,a2
    8000298c:	00050913          	mv	s2,a0
    80002990:	00058c13          	mv	s8,a1
    80002994:	00060b1b          	sext.w	s6,a2
    80002998:	00004497          	auipc	s1,0x4
    8000299c:	1a048493          	addi	s1,s1,416 # 80006b38 <cons>
    800029a0:	00400993          	li	s3,4
    800029a4:	fff00a13          	li	s4,-1
    800029a8:	00a00a93          	li	s5,10
    800029ac:	05705e63          	blez	s7,80002a08 <consoleread+0xb4>
    800029b0:	09c4a703          	lw	a4,156(s1)
    800029b4:	0984a783          	lw	a5,152(s1)
    800029b8:	0007071b          	sext.w	a4,a4
    800029bc:	08e78463          	beq	a5,a4,80002a44 <consoleread+0xf0>
    800029c0:	07f7f713          	andi	a4,a5,127
    800029c4:	00e48733          	add	a4,s1,a4
    800029c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800029cc:	0017869b          	addiw	a3,a5,1
    800029d0:	08d4ac23          	sw	a3,152(s1)
    800029d4:	00070c9b          	sext.w	s9,a4
    800029d8:	0b370663          	beq	a4,s3,80002a84 <consoleread+0x130>
    800029dc:	00100693          	li	a3,1
    800029e0:	f9f40613          	addi	a2,s0,-97
    800029e4:	000c0593          	mv	a1,s8
    800029e8:	00090513          	mv	a0,s2
    800029ec:	f8e40fa3          	sb	a4,-97(s0)
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	8c0080e7          	jalr	-1856(ra) # 800022b0 <either_copyout>
    800029f8:	01450863          	beq	a0,s4,80002a08 <consoleread+0xb4>
    800029fc:	001c0c13          	addi	s8,s8,1
    80002a00:	fffb8b9b          	addiw	s7,s7,-1
    80002a04:	fb5c94e3          	bne	s9,s5,800029ac <consoleread+0x58>
    80002a08:	000b851b          	sext.w	a0,s7
    80002a0c:	06813083          	ld	ra,104(sp)
    80002a10:	06013403          	ld	s0,96(sp)
    80002a14:	05813483          	ld	s1,88(sp)
    80002a18:	05013903          	ld	s2,80(sp)
    80002a1c:	04813983          	ld	s3,72(sp)
    80002a20:	04013a03          	ld	s4,64(sp)
    80002a24:	03813a83          	ld	s5,56(sp)
    80002a28:	02813b83          	ld	s7,40(sp)
    80002a2c:	02013c03          	ld	s8,32(sp)
    80002a30:	01813c83          	ld	s9,24(sp)
    80002a34:	40ab053b          	subw	a0,s6,a0
    80002a38:	03013b03          	ld	s6,48(sp)
    80002a3c:	07010113          	addi	sp,sp,112
    80002a40:	00008067          	ret
    80002a44:	00001097          	auipc	ra,0x1
    80002a48:	1d8080e7          	jalr	472(ra) # 80003c1c <push_on>
    80002a4c:	0984a703          	lw	a4,152(s1)
    80002a50:	09c4a783          	lw	a5,156(s1)
    80002a54:	0007879b          	sext.w	a5,a5
    80002a58:	fef70ce3          	beq	a4,a5,80002a50 <consoleread+0xfc>
    80002a5c:	00001097          	auipc	ra,0x1
    80002a60:	234080e7          	jalr	564(ra) # 80003c90 <pop_on>
    80002a64:	0984a783          	lw	a5,152(s1)
    80002a68:	07f7f713          	andi	a4,a5,127
    80002a6c:	00e48733          	add	a4,s1,a4
    80002a70:	01874703          	lbu	a4,24(a4)
    80002a74:	0017869b          	addiw	a3,a5,1
    80002a78:	08d4ac23          	sw	a3,152(s1)
    80002a7c:	00070c9b          	sext.w	s9,a4
    80002a80:	f5371ee3          	bne	a4,s3,800029dc <consoleread+0x88>
    80002a84:	000b851b          	sext.w	a0,s7
    80002a88:	f96bf2e3          	bgeu	s7,s6,80002a0c <consoleread+0xb8>
    80002a8c:	08f4ac23          	sw	a5,152(s1)
    80002a90:	f7dff06f          	j	80002a0c <consoleread+0xb8>

0000000080002a94 <consputc>:
    80002a94:	10000793          	li	a5,256
    80002a98:	00f50663          	beq	a0,a5,80002aa4 <consputc+0x10>
    80002a9c:	00001317          	auipc	t1,0x1
    80002aa0:	9f430067          	jr	-1548(t1) # 80003490 <uartputc_sync>
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00113423          	sd	ra,8(sp)
    80002aac:	00813023          	sd	s0,0(sp)
    80002ab0:	01010413          	addi	s0,sp,16
    80002ab4:	00800513          	li	a0,8
    80002ab8:	00001097          	auipc	ra,0x1
    80002abc:	9d8080e7          	jalr	-1576(ra) # 80003490 <uartputc_sync>
    80002ac0:	02000513          	li	a0,32
    80002ac4:	00001097          	auipc	ra,0x1
    80002ac8:	9cc080e7          	jalr	-1588(ra) # 80003490 <uartputc_sync>
    80002acc:	00013403          	ld	s0,0(sp)
    80002ad0:	00813083          	ld	ra,8(sp)
    80002ad4:	00800513          	li	a0,8
    80002ad8:	01010113          	addi	sp,sp,16
    80002adc:	00001317          	auipc	t1,0x1
    80002ae0:	9b430067          	jr	-1612(t1) # 80003490 <uartputc_sync>

0000000080002ae4 <consoleintr>:
    80002ae4:	fe010113          	addi	sp,sp,-32
    80002ae8:	00813823          	sd	s0,16(sp)
    80002aec:	00913423          	sd	s1,8(sp)
    80002af0:	01213023          	sd	s2,0(sp)
    80002af4:	00113c23          	sd	ra,24(sp)
    80002af8:	02010413          	addi	s0,sp,32
    80002afc:	00004917          	auipc	s2,0x4
    80002b00:	03c90913          	addi	s2,s2,60 # 80006b38 <cons>
    80002b04:	00050493          	mv	s1,a0
    80002b08:	00090513          	mv	a0,s2
    80002b0c:	00001097          	auipc	ra,0x1
    80002b10:	e40080e7          	jalr	-448(ra) # 8000394c <acquire>
    80002b14:	02048c63          	beqz	s1,80002b4c <consoleintr+0x68>
    80002b18:	0a092783          	lw	a5,160(s2)
    80002b1c:	09892703          	lw	a4,152(s2)
    80002b20:	07f00693          	li	a3,127
    80002b24:	40e7873b          	subw	a4,a5,a4
    80002b28:	02e6e263          	bltu	a3,a4,80002b4c <consoleintr+0x68>
    80002b2c:	00d00713          	li	a4,13
    80002b30:	04e48063          	beq	s1,a4,80002b70 <consoleintr+0x8c>
    80002b34:	07f7f713          	andi	a4,a5,127
    80002b38:	00e90733          	add	a4,s2,a4
    80002b3c:	0017879b          	addiw	a5,a5,1
    80002b40:	0af92023          	sw	a5,160(s2)
    80002b44:	00970c23          	sb	s1,24(a4)
    80002b48:	08f92e23          	sw	a5,156(s2)
    80002b4c:	01013403          	ld	s0,16(sp)
    80002b50:	01813083          	ld	ra,24(sp)
    80002b54:	00813483          	ld	s1,8(sp)
    80002b58:	00013903          	ld	s2,0(sp)
    80002b5c:	00004517          	auipc	a0,0x4
    80002b60:	fdc50513          	addi	a0,a0,-36 # 80006b38 <cons>
    80002b64:	02010113          	addi	sp,sp,32
    80002b68:	00001317          	auipc	t1,0x1
    80002b6c:	eb030067          	jr	-336(t1) # 80003a18 <release>
    80002b70:	00a00493          	li	s1,10
    80002b74:	fc1ff06f          	j	80002b34 <consoleintr+0x50>

0000000080002b78 <consoleinit>:
    80002b78:	fe010113          	addi	sp,sp,-32
    80002b7c:	00113c23          	sd	ra,24(sp)
    80002b80:	00813823          	sd	s0,16(sp)
    80002b84:	00913423          	sd	s1,8(sp)
    80002b88:	02010413          	addi	s0,sp,32
    80002b8c:	00004497          	auipc	s1,0x4
    80002b90:	fac48493          	addi	s1,s1,-84 # 80006b38 <cons>
    80002b94:	00048513          	mv	a0,s1
    80002b98:	00002597          	auipc	a1,0x2
    80002b9c:	5b058593          	addi	a1,a1,1456 # 80005148 <CONSOLE_STATUS+0x138>
    80002ba0:	00001097          	auipc	ra,0x1
    80002ba4:	d88080e7          	jalr	-632(ra) # 80003928 <initlock>
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	7ac080e7          	jalr	1964(ra) # 80003354 <uartinit>
    80002bb0:	01813083          	ld	ra,24(sp)
    80002bb4:	01013403          	ld	s0,16(sp)
    80002bb8:	00000797          	auipc	a5,0x0
    80002bbc:	d9c78793          	addi	a5,a5,-612 # 80002954 <consoleread>
    80002bc0:	0af4bc23          	sd	a5,184(s1)
    80002bc4:	00000797          	auipc	a5,0x0
    80002bc8:	cec78793          	addi	a5,a5,-788 # 800028b0 <consolewrite>
    80002bcc:	0cf4b023          	sd	a5,192(s1)
    80002bd0:	00813483          	ld	s1,8(sp)
    80002bd4:	02010113          	addi	sp,sp,32
    80002bd8:	00008067          	ret

0000000080002bdc <console_read>:
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00813423          	sd	s0,8(sp)
    80002be4:	01010413          	addi	s0,sp,16
    80002be8:	00813403          	ld	s0,8(sp)
    80002bec:	00004317          	auipc	t1,0x4
    80002bf0:	00433303          	ld	t1,4(t1) # 80006bf0 <devsw+0x10>
    80002bf4:	01010113          	addi	sp,sp,16
    80002bf8:	00030067          	jr	t1

0000000080002bfc <console_write>:
    80002bfc:	ff010113          	addi	sp,sp,-16
    80002c00:	00813423          	sd	s0,8(sp)
    80002c04:	01010413          	addi	s0,sp,16
    80002c08:	00813403          	ld	s0,8(sp)
    80002c0c:	00004317          	auipc	t1,0x4
    80002c10:	fec33303          	ld	t1,-20(t1) # 80006bf8 <devsw+0x18>
    80002c14:	01010113          	addi	sp,sp,16
    80002c18:	00030067          	jr	t1

0000000080002c1c <panic>:
    80002c1c:	fe010113          	addi	sp,sp,-32
    80002c20:	00113c23          	sd	ra,24(sp)
    80002c24:	00813823          	sd	s0,16(sp)
    80002c28:	00913423          	sd	s1,8(sp)
    80002c2c:	02010413          	addi	s0,sp,32
    80002c30:	00050493          	mv	s1,a0
    80002c34:	00002517          	auipc	a0,0x2
    80002c38:	51c50513          	addi	a0,a0,1308 # 80005150 <CONSOLE_STATUS+0x140>
    80002c3c:	00004797          	auipc	a5,0x4
    80002c40:	0407ae23          	sw	zero,92(a5) # 80006c98 <pr+0x18>
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	034080e7          	jalr	52(ra) # 80002c78 <__printf>
    80002c4c:	00048513          	mv	a0,s1
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	028080e7          	jalr	40(ra) # 80002c78 <__printf>
    80002c58:	00002517          	auipc	a0,0x2
    80002c5c:	4d850513          	addi	a0,a0,1240 # 80005130 <CONSOLE_STATUS+0x120>
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	018080e7          	jalr	24(ra) # 80002c78 <__printf>
    80002c68:	00100793          	li	a5,1
    80002c6c:	00003717          	auipc	a4,0x3
    80002c70:	d8f72623          	sw	a5,-628(a4) # 800059f8 <panicked>
    80002c74:	0000006f          	j	80002c74 <panic+0x58>

0000000080002c78 <__printf>:
    80002c78:	f3010113          	addi	sp,sp,-208
    80002c7c:	08813023          	sd	s0,128(sp)
    80002c80:	07313423          	sd	s3,104(sp)
    80002c84:	09010413          	addi	s0,sp,144
    80002c88:	05813023          	sd	s8,64(sp)
    80002c8c:	08113423          	sd	ra,136(sp)
    80002c90:	06913c23          	sd	s1,120(sp)
    80002c94:	07213823          	sd	s2,112(sp)
    80002c98:	07413023          	sd	s4,96(sp)
    80002c9c:	05513c23          	sd	s5,88(sp)
    80002ca0:	05613823          	sd	s6,80(sp)
    80002ca4:	05713423          	sd	s7,72(sp)
    80002ca8:	03913c23          	sd	s9,56(sp)
    80002cac:	03a13823          	sd	s10,48(sp)
    80002cb0:	03b13423          	sd	s11,40(sp)
    80002cb4:	00004317          	auipc	t1,0x4
    80002cb8:	fcc30313          	addi	t1,t1,-52 # 80006c80 <pr>
    80002cbc:	01832c03          	lw	s8,24(t1)
    80002cc0:	00b43423          	sd	a1,8(s0)
    80002cc4:	00c43823          	sd	a2,16(s0)
    80002cc8:	00d43c23          	sd	a3,24(s0)
    80002ccc:	02e43023          	sd	a4,32(s0)
    80002cd0:	02f43423          	sd	a5,40(s0)
    80002cd4:	03043823          	sd	a6,48(s0)
    80002cd8:	03143c23          	sd	a7,56(s0)
    80002cdc:	00050993          	mv	s3,a0
    80002ce0:	4a0c1663          	bnez	s8,8000318c <__printf+0x514>
    80002ce4:	60098c63          	beqz	s3,800032fc <__printf+0x684>
    80002ce8:	0009c503          	lbu	a0,0(s3)
    80002cec:	00840793          	addi	a5,s0,8
    80002cf0:	f6f43c23          	sd	a5,-136(s0)
    80002cf4:	00000493          	li	s1,0
    80002cf8:	22050063          	beqz	a0,80002f18 <__printf+0x2a0>
    80002cfc:	00002a37          	lui	s4,0x2
    80002d00:	00018ab7          	lui	s5,0x18
    80002d04:	000f4b37          	lui	s6,0xf4
    80002d08:	00989bb7          	lui	s7,0x989
    80002d0c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002d10:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002d14:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002d18:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002d1c:	00148c9b          	addiw	s9,s1,1
    80002d20:	02500793          	li	a5,37
    80002d24:	01998933          	add	s2,s3,s9
    80002d28:	38f51263          	bne	a0,a5,800030ac <__printf+0x434>
    80002d2c:	00094783          	lbu	a5,0(s2)
    80002d30:	00078c9b          	sext.w	s9,a5
    80002d34:	1e078263          	beqz	a5,80002f18 <__printf+0x2a0>
    80002d38:	0024849b          	addiw	s1,s1,2
    80002d3c:	07000713          	li	a4,112
    80002d40:	00998933          	add	s2,s3,s1
    80002d44:	38e78a63          	beq	a5,a4,800030d8 <__printf+0x460>
    80002d48:	20f76863          	bltu	a4,a5,80002f58 <__printf+0x2e0>
    80002d4c:	42a78863          	beq	a5,a0,8000317c <__printf+0x504>
    80002d50:	06400713          	li	a4,100
    80002d54:	40e79663          	bne	a5,a4,80003160 <__printf+0x4e8>
    80002d58:	f7843783          	ld	a5,-136(s0)
    80002d5c:	0007a603          	lw	a2,0(a5)
    80002d60:	00878793          	addi	a5,a5,8
    80002d64:	f6f43c23          	sd	a5,-136(s0)
    80002d68:	42064a63          	bltz	a2,8000319c <__printf+0x524>
    80002d6c:	00a00713          	li	a4,10
    80002d70:	02e677bb          	remuw	a5,a2,a4
    80002d74:	00002d97          	auipc	s11,0x2
    80002d78:	404d8d93          	addi	s11,s11,1028 # 80005178 <digits>
    80002d7c:	00900593          	li	a1,9
    80002d80:	0006051b          	sext.w	a0,a2
    80002d84:	00000c93          	li	s9,0
    80002d88:	02079793          	slli	a5,a5,0x20
    80002d8c:	0207d793          	srli	a5,a5,0x20
    80002d90:	00fd87b3          	add	a5,s11,a5
    80002d94:	0007c783          	lbu	a5,0(a5)
    80002d98:	02e656bb          	divuw	a3,a2,a4
    80002d9c:	f8f40023          	sb	a5,-128(s0)
    80002da0:	14c5d863          	bge	a1,a2,80002ef0 <__printf+0x278>
    80002da4:	06300593          	li	a1,99
    80002da8:	00100c93          	li	s9,1
    80002dac:	02e6f7bb          	remuw	a5,a3,a4
    80002db0:	02079793          	slli	a5,a5,0x20
    80002db4:	0207d793          	srli	a5,a5,0x20
    80002db8:	00fd87b3          	add	a5,s11,a5
    80002dbc:	0007c783          	lbu	a5,0(a5)
    80002dc0:	02e6d73b          	divuw	a4,a3,a4
    80002dc4:	f8f400a3          	sb	a5,-127(s0)
    80002dc8:	12a5f463          	bgeu	a1,a0,80002ef0 <__printf+0x278>
    80002dcc:	00a00693          	li	a3,10
    80002dd0:	00900593          	li	a1,9
    80002dd4:	02d777bb          	remuw	a5,a4,a3
    80002dd8:	02079793          	slli	a5,a5,0x20
    80002ddc:	0207d793          	srli	a5,a5,0x20
    80002de0:	00fd87b3          	add	a5,s11,a5
    80002de4:	0007c503          	lbu	a0,0(a5)
    80002de8:	02d757bb          	divuw	a5,a4,a3
    80002dec:	f8a40123          	sb	a0,-126(s0)
    80002df0:	48e5f263          	bgeu	a1,a4,80003274 <__printf+0x5fc>
    80002df4:	06300513          	li	a0,99
    80002df8:	02d7f5bb          	remuw	a1,a5,a3
    80002dfc:	02059593          	slli	a1,a1,0x20
    80002e00:	0205d593          	srli	a1,a1,0x20
    80002e04:	00bd85b3          	add	a1,s11,a1
    80002e08:	0005c583          	lbu	a1,0(a1)
    80002e0c:	02d7d7bb          	divuw	a5,a5,a3
    80002e10:	f8b401a3          	sb	a1,-125(s0)
    80002e14:	48e57263          	bgeu	a0,a4,80003298 <__printf+0x620>
    80002e18:	3e700513          	li	a0,999
    80002e1c:	02d7f5bb          	remuw	a1,a5,a3
    80002e20:	02059593          	slli	a1,a1,0x20
    80002e24:	0205d593          	srli	a1,a1,0x20
    80002e28:	00bd85b3          	add	a1,s11,a1
    80002e2c:	0005c583          	lbu	a1,0(a1)
    80002e30:	02d7d7bb          	divuw	a5,a5,a3
    80002e34:	f8b40223          	sb	a1,-124(s0)
    80002e38:	46e57663          	bgeu	a0,a4,800032a4 <__printf+0x62c>
    80002e3c:	02d7f5bb          	remuw	a1,a5,a3
    80002e40:	02059593          	slli	a1,a1,0x20
    80002e44:	0205d593          	srli	a1,a1,0x20
    80002e48:	00bd85b3          	add	a1,s11,a1
    80002e4c:	0005c583          	lbu	a1,0(a1)
    80002e50:	02d7d7bb          	divuw	a5,a5,a3
    80002e54:	f8b402a3          	sb	a1,-123(s0)
    80002e58:	46ea7863          	bgeu	s4,a4,800032c8 <__printf+0x650>
    80002e5c:	02d7f5bb          	remuw	a1,a5,a3
    80002e60:	02059593          	slli	a1,a1,0x20
    80002e64:	0205d593          	srli	a1,a1,0x20
    80002e68:	00bd85b3          	add	a1,s11,a1
    80002e6c:	0005c583          	lbu	a1,0(a1)
    80002e70:	02d7d7bb          	divuw	a5,a5,a3
    80002e74:	f8b40323          	sb	a1,-122(s0)
    80002e78:	3eeaf863          	bgeu	s5,a4,80003268 <__printf+0x5f0>
    80002e7c:	02d7f5bb          	remuw	a1,a5,a3
    80002e80:	02059593          	slli	a1,a1,0x20
    80002e84:	0205d593          	srli	a1,a1,0x20
    80002e88:	00bd85b3          	add	a1,s11,a1
    80002e8c:	0005c583          	lbu	a1,0(a1)
    80002e90:	02d7d7bb          	divuw	a5,a5,a3
    80002e94:	f8b403a3          	sb	a1,-121(s0)
    80002e98:	42eb7e63          	bgeu	s6,a4,800032d4 <__printf+0x65c>
    80002e9c:	02d7f5bb          	remuw	a1,a5,a3
    80002ea0:	02059593          	slli	a1,a1,0x20
    80002ea4:	0205d593          	srli	a1,a1,0x20
    80002ea8:	00bd85b3          	add	a1,s11,a1
    80002eac:	0005c583          	lbu	a1,0(a1)
    80002eb0:	02d7d7bb          	divuw	a5,a5,a3
    80002eb4:	f8b40423          	sb	a1,-120(s0)
    80002eb8:	42ebfc63          	bgeu	s7,a4,800032f0 <__printf+0x678>
    80002ebc:	02079793          	slli	a5,a5,0x20
    80002ec0:	0207d793          	srli	a5,a5,0x20
    80002ec4:	00fd8db3          	add	s11,s11,a5
    80002ec8:	000dc703          	lbu	a4,0(s11)
    80002ecc:	00a00793          	li	a5,10
    80002ed0:	00900c93          	li	s9,9
    80002ed4:	f8e404a3          	sb	a4,-119(s0)
    80002ed8:	00065c63          	bgez	a2,80002ef0 <__printf+0x278>
    80002edc:	f9040713          	addi	a4,s0,-112
    80002ee0:	00f70733          	add	a4,a4,a5
    80002ee4:	02d00693          	li	a3,45
    80002ee8:	fed70823          	sb	a3,-16(a4)
    80002eec:	00078c93          	mv	s9,a5
    80002ef0:	f8040793          	addi	a5,s0,-128
    80002ef4:	01978cb3          	add	s9,a5,s9
    80002ef8:	f7f40d13          	addi	s10,s0,-129
    80002efc:	000cc503          	lbu	a0,0(s9)
    80002f00:	fffc8c93          	addi	s9,s9,-1
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	b90080e7          	jalr	-1136(ra) # 80002a94 <consputc>
    80002f0c:	ffac98e3          	bne	s9,s10,80002efc <__printf+0x284>
    80002f10:	00094503          	lbu	a0,0(s2)
    80002f14:	e00514e3          	bnez	a0,80002d1c <__printf+0xa4>
    80002f18:	1a0c1663          	bnez	s8,800030c4 <__printf+0x44c>
    80002f1c:	08813083          	ld	ra,136(sp)
    80002f20:	08013403          	ld	s0,128(sp)
    80002f24:	07813483          	ld	s1,120(sp)
    80002f28:	07013903          	ld	s2,112(sp)
    80002f2c:	06813983          	ld	s3,104(sp)
    80002f30:	06013a03          	ld	s4,96(sp)
    80002f34:	05813a83          	ld	s5,88(sp)
    80002f38:	05013b03          	ld	s6,80(sp)
    80002f3c:	04813b83          	ld	s7,72(sp)
    80002f40:	04013c03          	ld	s8,64(sp)
    80002f44:	03813c83          	ld	s9,56(sp)
    80002f48:	03013d03          	ld	s10,48(sp)
    80002f4c:	02813d83          	ld	s11,40(sp)
    80002f50:	0d010113          	addi	sp,sp,208
    80002f54:	00008067          	ret
    80002f58:	07300713          	li	a4,115
    80002f5c:	1ce78a63          	beq	a5,a4,80003130 <__printf+0x4b8>
    80002f60:	07800713          	li	a4,120
    80002f64:	1ee79e63          	bne	a5,a4,80003160 <__printf+0x4e8>
    80002f68:	f7843783          	ld	a5,-136(s0)
    80002f6c:	0007a703          	lw	a4,0(a5)
    80002f70:	00878793          	addi	a5,a5,8
    80002f74:	f6f43c23          	sd	a5,-136(s0)
    80002f78:	28074263          	bltz	a4,800031fc <__printf+0x584>
    80002f7c:	00002d97          	auipc	s11,0x2
    80002f80:	1fcd8d93          	addi	s11,s11,508 # 80005178 <digits>
    80002f84:	00f77793          	andi	a5,a4,15
    80002f88:	00fd87b3          	add	a5,s11,a5
    80002f8c:	0007c683          	lbu	a3,0(a5)
    80002f90:	00f00613          	li	a2,15
    80002f94:	0007079b          	sext.w	a5,a4
    80002f98:	f8d40023          	sb	a3,-128(s0)
    80002f9c:	0047559b          	srliw	a1,a4,0x4
    80002fa0:	0047569b          	srliw	a3,a4,0x4
    80002fa4:	00000c93          	li	s9,0
    80002fa8:	0ee65063          	bge	a2,a4,80003088 <__printf+0x410>
    80002fac:	00f6f693          	andi	a3,a3,15
    80002fb0:	00dd86b3          	add	a3,s11,a3
    80002fb4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002fb8:	0087d79b          	srliw	a5,a5,0x8
    80002fbc:	00100c93          	li	s9,1
    80002fc0:	f8d400a3          	sb	a3,-127(s0)
    80002fc4:	0cb67263          	bgeu	a2,a1,80003088 <__printf+0x410>
    80002fc8:	00f7f693          	andi	a3,a5,15
    80002fcc:	00dd86b3          	add	a3,s11,a3
    80002fd0:	0006c583          	lbu	a1,0(a3)
    80002fd4:	00f00613          	li	a2,15
    80002fd8:	0047d69b          	srliw	a3,a5,0x4
    80002fdc:	f8b40123          	sb	a1,-126(s0)
    80002fe0:	0047d593          	srli	a1,a5,0x4
    80002fe4:	28f67e63          	bgeu	a2,a5,80003280 <__printf+0x608>
    80002fe8:	00f6f693          	andi	a3,a3,15
    80002fec:	00dd86b3          	add	a3,s11,a3
    80002ff0:	0006c503          	lbu	a0,0(a3)
    80002ff4:	0087d813          	srli	a6,a5,0x8
    80002ff8:	0087d69b          	srliw	a3,a5,0x8
    80002ffc:	f8a401a3          	sb	a0,-125(s0)
    80003000:	28b67663          	bgeu	a2,a1,8000328c <__printf+0x614>
    80003004:	00f6f693          	andi	a3,a3,15
    80003008:	00dd86b3          	add	a3,s11,a3
    8000300c:	0006c583          	lbu	a1,0(a3)
    80003010:	00c7d513          	srli	a0,a5,0xc
    80003014:	00c7d69b          	srliw	a3,a5,0xc
    80003018:	f8b40223          	sb	a1,-124(s0)
    8000301c:	29067a63          	bgeu	a2,a6,800032b0 <__printf+0x638>
    80003020:	00f6f693          	andi	a3,a3,15
    80003024:	00dd86b3          	add	a3,s11,a3
    80003028:	0006c583          	lbu	a1,0(a3)
    8000302c:	0107d813          	srli	a6,a5,0x10
    80003030:	0107d69b          	srliw	a3,a5,0x10
    80003034:	f8b402a3          	sb	a1,-123(s0)
    80003038:	28a67263          	bgeu	a2,a0,800032bc <__printf+0x644>
    8000303c:	00f6f693          	andi	a3,a3,15
    80003040:	00dd86b3          	add	a3,s11,a3
    80003044:	0006c683          	lbu	a3,0(a3)
    80003048:	0147d79b          	srliw	a5,a5,0x14
    8000304c:	f8d40323          	sb	a3,-122(s0)
    80003050:	21067663          	bgeu	a2,a6,8000325c <__printf+0x5e4>
    80003054:	02079793          	slli	a5,a5,0x20
    80003058:	0207d793          	srli	a5,a5,0x20
    8000305c:	00fd8db3          	add	s11,s11,a5
    80003060:	000dc683          	lbu	a3,0(s11)
    80003064:	00800793          	li	a5,8
    80003068:	00700c93          	li	s9,7
    8000306c:	f8d403a3          	sb	a3,-121(s0)
    80003070:	00075c63          	bgez	a4,80003088 <__printf+0x410>
    80003074:	f9040713          	addi	a4,s0,-112
    80003078:	00f70733          	add	a4,a4,a5
    8000307c:	02d00693          	li	a3,45
    80003080:	fed70823          	sb	a3,-16(a4)
    80003084:	00078c93          	mv	s9,a5
    80003088:	f8040793          	addi	a5,s0,-128
    8000308c:	01978cb3          	add	s9,a5,s9
    80003090:	f7f40d13          	addi	s10,s0,-129
    80003094:	000cc503          	lbu	a0,0(s9)
    80003098:	fffc8c93          	addi	s9,s9,-1
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	9f8080e7          	jalr	-1544(ra) # 80002a94 <consputc>
    800030a4:	ff9d18e3          	bne	s10,s9,80003094 <__printf+0x41c>
    800030a8:	0100006f          	j	800030b8 <__printf+0x440>
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	9e8080e7          	jalr	-1560(ra) # 80002a94 <consputc>
    800030b4:	000c8493          	mv	s1,s9
    800030b8:	00094503          	lbu	a0,0(s2)
    800030bc:	c60510e3          	bnez	a0,80002d1c <__printf+0xa4>
    800030c0:	e40c0ee3          	beqz	s8,80002f1c <__printf+0x2a4>
    800030c4:	00004517          	auipc	a0,0x4
    800030c8:	bbc50513          	addi	a0,a0,-1092 # 80006c80 <pr>
    800030cc:	00001097          	auipc	ra,0x1
    800030d0:	94c080e7          	jalr	-1716(ra) # 80003a18 <release>
    800030d4:	e49ff06f          	j	80002f1c <__printf+0x2a4>
    800030d8:	f7843783          	ld	a5,-136(s0)
    800030dc:	03000513          	li	a0,48
    800030e0:	01000d13          	li	s10,16
    800030e4:	00878713          	addi	a4,a5,8
    800030e8:	0007bc83          	ld	s9,0(a5)
    800030ec:	f6e43c23          	sd	a4,-136(s0)
    800030f0:	00000097          	auipc	ra,0x0
    800030f4:	9a4080e7          	jalr	-1628(ra) # 80002a94 <consputc>
    800030f8:	07800513          	li	a0,120
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	998080e7          	jalr	-1640(ra) # 80002a94 <consputc>
    80003104:	00002d97          	auipc	s11,0x2
    80003108:	074d8d93          	addi	s11,s11,116 # 80005178 <digits>
    8000310c:	03ccd793          	srli	a5,s9,0x3c
    80003110:	00fd87b3          	add	a5,s11,a5
    80003114:	0007c503          	lbu	a0,0(a5)
    80003118:	fffd0d1b          	addiw	s10,s10,-1
    8000311c:	004c9c93          	slli	s9,s9,0x4
    80003120:	00000097          	auipc	ra,0x0
    80003124:	974080e7          	jalr	-1676(ra) # 80002a94 <consputc>
    80003128:	fe0d12e3          	bnez	s10,8000310c <__printf+0x494>
    8000312c:	f8dff06f          	j	800030b8 <__printf+0x440>
    80003130:	f7843783          	ld	a5,-136(s0)
    80003134:	0007bc83          	ld	s9,0(a5)
    80003138:	00878793          	addi	a5,a5,8
    8000313c:	f6f43c23          	sd	a5,-136(s0)
    80003140:	000c9a63          	bnez	s9,80003154 <__printf+0x4dc>
    80003144:	1080006f          	j	8000324c <__printf+0x5d4>
    80003148:	001c8c93          	addi	s9,s9,1
    8000314c:	00000097          	auipc	ra,0x0
    80003150:	948080e7          	jalr	-1720(ra) # 80002a94 <consputc>
    80003154:	000cc503          	lbu	a0,0(s9)
    80003158:	fe0518e3          	bnez	a0,80003148 <__printf+0x4d0>
    8000315c:	f5dff06f          	j	800030b8 <__printf+0x440>
    80003160:	02500513          	li	a0,37
    80003164:	00000097          	auipc	ra,0x0
    80003168:	930080e7          	jalr	-1744(ra) # 80002a94 <consputc>
    8000316c:	000c8513          	mv	a0,s9
    80003170:	00000097          	auipc	ra,0x0
    80003174:	924080e7          	jalr	-1756(ra) # 80002a94 <consputc>
    80003178:	f41ff06f          	j	800030b8 <__printf+0x440>
    8000317c:	02500513          	li	a0,37
    80003180:	00000097          	auipc	ra,0x0
    80003184:	914080e7          	jalr	-1772(ra) # 80002a94 <consputc>
    80003188:	f31ff06f          	j	800030b8 <__printf+0x440>
    8000318c:	00030513          	mv	a0,t1
    80003190:	00000097          	auipc	ra,0x0
    80003194:	7bc080e7          	jalr	1980(ra) # 8000394c <acquire>
    80003198:	b4dff06f          	j	80002ce4 <__printf+0x6c>
    8000319c:	40c0053b          	negw	a0,a2
    800031a0:	00a00713          	li	a4,10
    800031a4:	02e576bb          	remuw	a3,a0,a4
    800031a8:	00002d97          	auipc	s11,0x2
    800031ac:	fd0d8d93          	addi	s11,s11,-48 # 80005178 <digits>
    800031b0:	ff700593          	li	a1,-9
    800031b4:	02069693          	slli	a3,a3,0x20
    800031b8:	0206d693          	srli	a3,a3,0x20
    800031bc:	00dd86b3          	add	a3,s11,a3
    800031c0:	0006c683          	lbu	a3,0(a3)
    800031c4:	02e557bb          	divuw	a5,a0,a4
    800031c8:	f8d40023          	sb	a3,-128(s0)
    800031cc:	10b65e63          	bge	a2,a1,800032e8 <__printf+0x670>
    800031d0:	06300593          	li	a1,99
    800031d4:	02e7f6bb          	remuw	a3,a5,a4
    800031d8:	02069693          	slli	a3,a3,0x20
    800031dc:	0206d693          	srli	a3,a3,0x20
    800031e0:	00dd86b3          	add	a3,s11,a3
    800031e4:	0006c683          	lbu	a3,0(a3)
    800031e8:	02e7d73b          	divuw	a4,a5,a4
    800031ec:	00200793          	li	a5,2
    800031f0:	f8d400a3          	sb	a3,-127(s0)
    800031f4:	bca5ece3          	bltu	a1,a0,80002dcc <__printf+0x154>
    800031f8:	ce5ff06f          	j	80002edc <__printf+0x264>
    800031fc:	40e007bb          	negw	a5,a4
    80003200:	00002d97          	auipc	s11,0x2
    80003204:	f78d8d93          	addi	s11,s11,-136 # 80005178 <digits>
    80003208:	00f7f693          	andi	a3,a5,15
    8000320c:	00dd86b3          	add	a3,s11,a3
    80003210:	0006c583          	lbu	a1,0(a3)
    80003214:	ff100613          	li	a2,-15
    80003218:	0047d69b          	srliw	a3,a5,0x4
    8000321c:	f8b40023          	sb	a1,-128(s0)
    80003220:	0047d59b          	srliw	a1,a5,0x4
    80003224:	0ac75e63          	bge	a4,a2,800032e0 <__printf+0x668>
    80003228:	00f6f693          	andi	a3,a3,15
    8000322c:	00dd86b3          	add	a3,s11,a3
    80003230:	0006c603          	lbu	a2,0(a3)
    80003234:	00f00693          	li	a3,15
    80003238:	0087d79b          	srliw	a5,a5,0x8
    8000323c:	f8c400a3          	sb	a2,-127(s0)
    80003240:	d8b6e4e3          	bltu	a3,a1,80002fc8 <__printf+0x350>
    80003244:	00200793          	li	a5,2
    80003248:	e2dff06f          	j	80003074 <__printf+0x3fc>
    8000324c:	00002c97          	auipc	s9,0x2
    80003250:	f0cc8c93          	addi	s9,s9,-244 # 80005158 <CONSOLE_STATUS+0x148>
    80003254:	02800513          	li	a0,40
    80003258:	ef1ff06f          	j	80003148 <__printf+0x4d0>
    8000325c:	00700793          	li	a5,7
    80003260:	00600c93          	li	s9,6
    80003264:	e0dff06f          	j	80003070 <__printf+0x3f8>
    80003268:	00700793          	li	a5,7
    8000326c:	00600c93          	li	s9,6
    80003270:	c69ff06f          	j	80002ed8 <__printf+0x260>
    80003274:	00300793          	li	a5,3
    80003278:	00200c93          	li	s9,2
    8000327c:	c5dff06f          	j	80002ed8 <__printf+0x260>
    80003280:	00300793          	li	a5,3
    80003284:	00200c93          	li	s9,2
    80003288:	de9ff06f          	j	80003070 <__printf+0x3f8>
    8000328c:	00400793          	li	a5,4
    80003290:	00300c93          	li	s9,3
    80003294:	dddff06f          	j	80003070 <__printf+0x3f8>
    80003298:	00400793          	li	a5,4
    8000329c:	00300c93          	li	s9,3
    800032a0:	c39ff06f          	j	80002ed8 <__printf+0x260>
    800032a4:	00500793          	li	a5,5
    800032a8:	00400c93          	li	s9,4
    800032ac:	c2dff06f          	j	80002ed8 <__printf+0x260>
    800032b0:	00500793          	li	a5,5
    800032b4:	00400c93          	li	s9,4
    800032b8:	db9ff06f          	j	80003070 <__printf+0x3f8>
    800032bc:	00600793          	li	a5,6
    800032c0:	00500c93          	li	s9,5
    800032c4:	dadff06f          	j	80003070 <__printf+0x3f8>
    800032c8:	00600793          	li	a5,6
    800032cc:	00500c93          	li	s9,5
    800032d0:	c09ff06f          	j	80002ed8 <__printf+0x260>
    800032d4:	00800793          	li	a5,8
    800032d8:	00700c93          	li	s9,7
    800032dc:	bfdff06f          	j	80002ed8 <__printf+0x260>
    800032e0:	00100793          	li	a5,1
    800032e4:	d91ff06f          	j	80003074 <__printf+0x3fc>
    800032e8:	00100793          	li	a5,1
    800032ec:	bf1ff06f          	j	80002edc <__printf+0x264>
    800032f0:	00900793          	li	a5,9
    800032f4:	00800c93          	li	s9,8
    800032f8:	be1ff06f          	j	80002ed8 <__printf+0x260>
    800032fc:	00002517          	auipc	a0,0x2
    80003300:	e6450513          	addi	a0,a0,-412 # 80005160 <CONSOLE_STATUS+0x150>
    80003304:	00000097          	auipc	ra,0x0
    80003308:	918080e7          	jalr	-1768(ra) # 80002c1c <panic>

000000008000330c <printfinit>:
    8000330c:	fe010113          	addi	sp,sp,-32
    80003310:	00813823          	sd	s0,16(sp)
    80003314:	00913423          	sd	s1,8(sp)
    80003318:	00113c23          	sd	ra,24(sp)
    8000331c:	02010413          	addi	s0,sp,32
    80003320:	00004497          	auipc	s1,0x4
    80003324:	96048493          	addi	s1,s1,-1696 # 80006c80 <pr>
    80003328:	00048513          	mv	a0,s1
    8000332c:	00002597          	auipc	a1,0x2
    80003330:	e4458593          	addi	a1,a1,-444 # 80005170 <CONSOLE_STATUS+0x160>
    80003334:	00000097          	auipc	ra,0x0
    80003338:	5f4080e7          	jalr	1524(ra) # 80003928 <initlock>
    8000333c:	01813083          	ld	ra,24(sp)
    80003340:	01013403          	ld	s0,16(sp)
    80003344:	0004ac23          	sw	zero,24(s1)
    80003348:	00813483          	ld	s1,8(sp)
    8000334c:	02010113          	addi	sp,sp,32
    80003350:	00008067          	ret

0000000080003354 <uartinit>:
    80003354:	ff010113          	addi	sp,sp,-16
    80003358:	00813423          	sd	s0,8(sp)
    8000335c:	01010413          	addi	s0,sp,16
    80003360:	100007b7          	lui	a5,0x10000
    80003364:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003368:	f8000713          	li	a4,-128
    8000336c:	00e781a3          	sb	a4,3(a5)
    80003370:	00300713          	li	a4,3
    80003374:	00e78023          	sb	a4,0(a5)
    80003378:	000780a3          	sb	zero,1(a5)
    8000337c:	00e781a3          	sb	a4,3(a5)
    80003380:	00700693          	li	a3,7
    80003384:	00d78123          	sb	a3,2(a5)
    80003388:	00e780a3          	sb	a4,1(a5)
    8000338c:	00813403          	ld	s0,8(sp)
    80003390:	01010113          	addi	sp,sp,16
    80003394:	00008067          	ret

0000000080003398 <uartputc>:
    80003398:	00002797          	auipc	a5,0x2
    8000339c:	6607a783          	lw	a5,1632(a5) # 800059f8 <panicked>
    800033a0:	00078463          	beqz	a5,800033a8 <uartputc+0x10>
    800033a4:	0000006f          	j	800033a4 <uartputc+0xc>
    800033a8:	fd010113          	addi	sp,sp,-48
    800033ac:	02813023          	sd	s0,32(sp)
    800033b0:	00913c23          	sd	s1,24(sp)
    800033b4:	01213823          	sd	s2,16(sp)
    800033b8:	01313423          	sd	s3,8(sp)
    800033bc:	02113423          	sd	ra,40(sp)
    800033c0:	03010413          	addi	s0,sp,48
    800033c4:	00002917          	auipc	s2,0x2
    800033c8:	63c90913          	addi	s2,s2,1596 # 80005a00 <uart_tx_r>
    800033cc:	00093783          	ld	a5,0(s2)
    800033d0:	00002497          	auipc	s1,0x2
    800033d4:	63848493          	addi	s1,s1,1592 # 80005a08 <uart_tx_w>
    800033d8:	0004b703          	ld	a4,0(s1)
    800033dc:	02078693          	addi	a3,a5,32
    800033e0:	00050993          	mv	s3,a0
    800033e4:	02e69c63          	bne	a3,a4,8000341c <uartputc+0x84>
    800033e8:	00001097          	auipc	ra,0x1
    800033ec:	834080e7          	jalr	-1996(ra) # 80003c1c <push_on>
    800033f0:	00093783          	ld	a5,0(s2)
    800033f4:	0004b703          	ld	a4,0(s1)
    800033f8:	02078793          	addi	a5,a5,32
    800033fc:	00e79463          	bne	a5,a4,80003404 <uartputc+0x6c>
    80003400:	0000006f          	j	80003400 <uartputc+0x68>
    80003404:	00001097          	auipc	ra,0x1
    80003408:	88c080e7          	jalr	-1908(ra) # 80003c90 <pop_on>
    8000340c:	00093783          	ld	a5,0(s2)
    80003410:	0004b703          	ld	a4,0(s1)
    80003414:	02078693          	addi	a3,a5,32
    80003418:	fce688e3          	beq	a3,a4,800033e8 <uartputc+0x50>
    8000341c:	01f77693          	andi	a3,a4,31
    80003420:	00004597          	auipc	a1,0x4
    80003424:	88058593          	addi	a1,a1,-1920 # 80006ca0 <uart_tx_buf>
    80003428:	00d586b3          	add	a3,a1,a3
    8000342c:	00170713          	addi	a4,a4,1
    80003430:	01368023          	sb	s3,0(a3)
    80003434:	00e4b023          	sd	a4,0(s1)
    80003438:	10000637          	lui	a2,0x10000
    8000343c:	02f71063          	bne	a4,a5,8000345c <uartputc+0xc4>
    80003440:	0340006f          	j	80003474 <uartputc+0xdc>
    80003444:	00074703          	lbu	a4,0(a4)
    80003448:	00f93023          	sd	a5,0(s2)
    8000344c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003450:	00093783          	ld	a5,0(s2)
    80003454:	0004b703          	ld	a4,0(s1)
    80003458:	00f70e63          	beq	a4,a5,80003474 <uartputc+0xdc>
    8000345c:	00564683          	lbu	a3,5(a2)
    80003460:	01f7f713          	andi	a4,a5,31
    80003464:	00e58733          	add	a4,a1,a4
    80003468:	0206f693          	andi	a3,a3,32
    8000346c:	00178793          	addi	a5,a5,1
    80003470:	fc069ae3          	bnez	a3,80003444 <uartputc+0xac>
    80003474:	02813083          	ld	ra,40(sp)
    80003478:	02013403          	ld	s0,32(sp)
    8000347c:	01813483          	ld	s1,24(sp)
    80003480:	01013903          	ld	s2,16(sp)
    80003484:	00813983          	ld	s3,8(sp)
    80003488:	03010113          	addi	sp,sp,48
    8000348c:	00008067          	ret

0000000080003490 <uartputc_sync>:
    80003490:	ff010113          	addi	sp,sp,-16
    80003494:	00813423          	sd	s0,8(sp)
    80003498:	01010413          	addi	s0,sp,16
    8000349c:	00002717          	auipc	a4,0x2
    800034a0:	55c72703          	lw	a4,1372(a4) # 800059f8 <panicked>
    800034a4:	02071663          	bnez	a4,800034d0 <uartputc_sync+0x40>
    800034a8:	00050793          	mv	a5,a0
    800034ac:	100006b7          	lui	a3,0x10000
    800034b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800034b4:	02077713          	andi	a4,a4,32
    800034b8:	fe070ce3          	beqz	a4,800034b0 <uartputc_sync+0x20>
    800034bc:	0ff7f793          	andi	a5,a5,255
    800034c0:	00f68023          	sb	a5,0(a3)
    800034c4:	00813403          	ld	s0,8(sp)
    800034c8:	01010113          	addi	sp,sp,16
    800034cc:	00008067          	ret
    800034d0:	0000006f          	j	800034d0 <uartputc_sync+0x40>

00000000800034d4 <uartstart>:
    800034d4:	ff010113          	addi	sp,sp,-16
    800034d8:	00813423          	sd	s0,8(sp)
    800034dc:	01010413          	addi	s0,sp,16
    800034e0:	00002617          	auipc	a2,0x2
    800034e4:	52060613          	addi	a2,a2,1312 # 80005a00 <uart_tx_r>
    800034e8:	00002517          	auipc	a0,0x2
    800034ec:	52050513          	addi	a0,a0,1312 # 80005a08 <uart_tx_w>
    800034f0:	00063783          	ld	a5,0(a2)
    800034f4:	00053703          	ld	a4,0(a0)
    800034f8:	04f70263          	beq	a4,a5,8000353c <uartstart+0x68>
    800034fc:	100005b7          	lui	a1,0x10000
    80003500:	00003817          	auipc	a6,0x3
    80003504:	7a080813          	addi	a6,a6,1952 # 80006ca0 <uart_tx_buf>
    80003508:	01c0006f          	j	80003524 <uartstart+0x50>
    8000350c:	0006c703          	lbu	a4,0(a3)
    80003510:	00f63023          	sd	a5,0(a2)
    80003514:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003518:	00063783          	ld	a5,0(a2)
    8000351c:	00053703          	ld	a4,0(a0)
    80003520:	00f70e63          	beq	a4,a5,8000353c <uartstart+0x68>
    80003524:	01f7f713          	andi	a4,a5,31
    80003528:	00e806b3          	add	a3,a6,a4
    8000352c:	0055c703          	lbu	a4,5(a1)
    80003530:	00178793          	addi	a5,a5,1
    80003534:	02077713          	andi	a4,a4,32
    80003538:	fc071ae3          	bnez	a4,8000350c <uartstart+0x38>
    8000353c:	00813403          	ld	s0,8(sp)
    80003540:	01010113          	addi	sp,sp,16
    80003544:	00008067          	ret

0000000080003548 <uartgetc>:
    80003548:	ff010113          	addi	sp,sp,-16
    8000354c:	00813423          	sd	s0,8(sp)
    80003550:	01010413          	addi	s0,sp,16
    80003554:	10000737          	lui	a4,0x10000
    80003558:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000355c:	0017f793          	andi	a5,a5,1
    80003560:	00078c63          	beqz	a5,80003578 <uartgetc+0x30>
    80003564:	00074503          	lbu	a0,0(a4)
    80003568:	0ff57513          	andi	a0,a0,255
    8000356c:	00813403          	ld	s0,8(sp)
    80003570:	01010113          	addi	sp,sp,16
    80003574:	00008067          	ret
    80003578:	fff00513          	li	a0,-1
    8000357c:	ff1ff06f          	j	8000356c <uartgetc+0x24>

0000000080003580 <uartintr>:
    80003580:	100007b7          	lui	a5,0x10000
    80003584:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003588:	0017f793          	andi	a5,a5,1
    8000358c:	0a078463          	beqz	a5,80003634 <uartintr+0xb4>
    80003590:	fe010113          	addi	sp,sp,-32
    80003594:	00813823          	sd	s0,16(sp)
    80003598:	00913423          	sd	s1,8(sp)
    8000359c:	00113c23          	sd	ra,24(sp)
    800035a0:	02010413          	addi	s0,sp,32
    800035a4:	100004b7          	lui	s1,0x10000
    800035a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800035ac:	0ff57513          	andi	a0,a0,255
    800035b0:	fffff097          	auipc	ra,0xfffff
    800035b4:	534080e7          	jalr	1332(ra) # 80002ae4 <consoleintr>
    800035b8:	0054c783          	lbu	a5,5(s1)
    800035bc:	0017f793          	andi	a5,a5,1
    800035c0:	fe0794e3          	bnez	a5,800035a8 <uartintr+0x28>
    800035c4:	00002617          	auipc	a2,0x2
    800035c8:	43c60613          	addi	a2,a2,1084 # 80005a00 <uart_tx_r>
    800035cc:	00002517          	auipc	a0,0x2
    800035d0:	43c50513          	addi	a0,a0,1084 # 80005a08 <uart_tx_w>
    800035d4:	00063783          	ld	a5,0(a2)
    800035d8:	00053703          	ld	a4,0(a0)
    800035dc:	04f70263          	beq	a4,a5,80003620 <uartintr+0xa0>
    800035e0:	100005b7          	lui	a1,0x10000
    800035e4:	00003817          	auipc	a6,0x3
    800035e8:	6bc80813          	addi	a6,a6,1724 # 80006ca0 <uart_tx_buf>
    800035ec:	01c0006f          	j	80003608 <uartintr+0x88>
    800035f0:	0006c703          	lbu	a4,0(a3)
    800035f4:	00f63023          	sd	a5,0(a2)
    800035f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035fc:	00063783          	ld	a5,0(a2)
    80003600:	00053703          	ld	a4,0(a0)
    80003604:	00f70e63          	beq	a4,a5,80003620 <uartintr+0xa0>
    80003608:	01f7f713          	andi	a4,a5,31
    8000360c:	00e806b3          	add	a3,a6,a4
    80003610:	0055c703          	lbu	a4,5(a1)
    80003614:	00178793          	addi	a5,a5,1
    80003618:	02077713          	andi	a4,a4,32
    8000361c:	fc071ae3          	bnez	a4,800035f0 <uartintr+0x70>
    80003620:	01813083          	ld	ra,24(sp)
    80003624:	01013403          	ld	s0,16(sp)
    80003628:	00813483          	ld	s1,8(sp)
    8000362c:	02010113          	addi	sp,sp,32
    80003630:	00008067          	ret
    80003634:	00002617          	auipc	a2,0x2
    80003638:	3cc60613          	addi	a2,a2,972 # 80005a00 <uart_tx_r>
    8000363c:	00002517          	auipc	a0,0x2
    80003640:	3cc50513          	addi	a0,a0,972 # 80005a08 <uart_tx_w>
    80003644:	00063783          	ld	a5,0(a2)
    80003648:	00053703          	ld	a4,0(a0)
    8000364c:	04f70263          	beq	a4,a5,80003690 <uartintr+0x110>
    80003650:	100005b7          	lui	a1,0x10000
    80003654:	00003817          	auipc	a6,0x3
    80003658:	64c80813          	addi	a6,a6,1612 # 80006ca0 <uart_tx_buf>
    8000365c:	01c0006f          	j	80003678 <uartintr+0xf8>
    80003660:	0006c703          	lbu	a4,0(a3)
    80003664:	00f63023          	sd	a5,0(a2)
    80003668:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000366c:	00063783          	ld	a5,0(a2)
    80003670:	00053703          	ld	a4,0(a0)
    80003674:	02f70063          	beq	a4,a5,80003694 <uartintr+0x114>
    80003678:	01f7f713          	andi	a4,a5,31
    8000367c:	00e806b3          	add	a3,a6,a4
    80003680:	0055c703          	lbu	a4,5(a1)
    80003684:	00178793          	addi	a5,a5,1
    80003688:	02077713          	andi	a4,a4,32
    8000368c:	fc071ae3          	bnez	a4,80003660 <uartintr+0xe0>
    80003690:	00008067          	ret
    80003694:	00008067          	ret

0000000080003698 <kinit>:
    80003698:	fc010113          	addi	sp,sp,-64
    8000369c:	02913423          	sd	s1,40(sp)
    800036a0:	fffff7b7          	lui	a5,0xfffff
    800036a4:	00004497          	auipc	s1,0x4
    800036a8:	61b48493          	addi	s1,s1,1563 # 80007cbf <end+0xfff>
    800036ac:	02813823          	sd	s0,48(sp)
    800036b0:	01313c23          	sd	s3,24(sp)
    800036b4:	00f4f4b3          	and	s1,s1,a5
    800036b8:	02113c23          	sd	ra,56(sp)
    800036bc:	03213023          	sd	s2,32(sp)
    800036c0:	01413823          	sd	s4,16(sp)
    800036c4:	01513423          	sd	s5,8(sp)
    800036c8:	04010413          	addi	s0,sp,64
    800036cc:	000017b7          	lui	a5,0x1
    800036d0:	01100993          	li	s3,17
    800036d4:	00f487b3          	add	a5,s1,a5
    800036d8:	01b99993          	slli	s3,s3,0x1b
    800036dc:	06f9e063          	bltu	s3,a5,8000373c <kinit+0xa4>
    800036e0:	00003a97          	auipc	s5,0x3
    800036e4:	5e0a8a93          	addi	s5,s5,1504 # 80006cc0 <end>
    800036e8:	0754ec63          	bltu	s1,s5,80003760 <kinit+0xc8>
    800036ec:	0734fa63          	bgeu	s1,s3,80003760 <kinit+0xc8>
    800036f0:	00088a37          	lui	s4,0x88
    800036f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800036f8:	00002917          	auipc	s2,0x2
    800036fc:	31890913          	addi	s2,s2,792 # 80005a10 <kmem>
    80003700:	00ca1a13          	slli	s4,s4,0xc
    80003704:	0140006f          	j	80003718 <kinit+0x80>
    80003708:	000017b7          	lui	a5,0x1
    8000370c:	00f484b3          	add	s1,s1,a5
    80003710:	0554e863          	bltu	s1,s5,80003760 <kinit+0xc8>
    80003714:	0534f663          	bgeu	s1,s3,80003760 <kinit+0xc8>
    80003718:	00001637          	lui	a2,0x1
    8000371c:	00100593          	li	a1,1
    80003720:	00048513          	mv	a0,s1
    80003724:	00000097          	auipc	ra,0x0
    80003728:	5e4080e7          	jalr	1508(ra) # 80003d08 <__memset>
    8000372c:	00093783          	ld	a5,0(s2)
    80003730:	00f4b023          	sd	a5,0(s1)
    80003734:	00993023          	sd	s1,0(s2)
    80003738:	fd4498e3          	bne	s1,s4,80003708 <kinit+0x70>
    8000373c:	03813083          	ld	ra,56(sp)
    80003740:	03013403          	ld	s0,48(sp)
    80003744:	02813483          	ld	s1,40(sp)
    80003748:	02013903          	ld	s2,32(sp)
    8000374c:	01813983          	ld	s3,24(sp)
    80003750:	01013a03          	ld	s4,16(sp)
    80003754:	00813a83          	ld	s5,8(sp)
    80003758:	04010113          	addi	sp,sp,64
    8000375c:	00008067          	ret
    80003760:	00002517          	auipc	a0,0x2
    80003764:	a3050513          	addi	a0,a0,-1488 # 80005190 <digits+0x18>
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	4b4080e7          	jalr	1204(ra) # 80002c1c <panic>

0000000080003770 <freerange>:
    80003770:	fc010113          	addi	sp,sp,-64
    80003774:	000017b7          	lui	a5,0x1
    80003778:	02913423          	sd	s1,40(sp)
    8000377c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003780:	009504b3          	add	s1,a0,s1
    80003784:	fffff537          	lui	a0,0xfffff
    80003788:	02813823          	sd	s0,48(sp)
    8000378c:	02113c23          	sd	ra,56(sp)
    80003790:	03213023          	sd	s2,32(sp)
    80003794:	01313c23          	sd	s3,24(sp)
    80003798:	01413823          	sd	s4,16(sp)
    8000379c:	01513423          	sd	s5,8(sp)
    800037a0:	01613023          	sd	s6,0(sp)
    800037a4:	04010413          	addi	s0,sp,64
    800037a8:	00a4f4b3          	and	s1,s1,a0
    800037ac:	00f487b3          	add	a5,s1,a5
    800037b0:	06f5e463          	bltu	a1,a5,80003818 <freerange+0xa8>
    800037b4:	00003a97          	auipc	s5,0x3
    800037b8:	50ca8a93          	addi	s5,s5,1292 # 80006cc0 <end>
    800037bc:	0954e263          	bltu	s1,s5,80003840 <freerange+0xd0>
    800037c0:	01100993          	li	s3,17
    800037c4:	01b99993          	slli	s3,s3,0x1b
    800037c8:	0734fc63          	bgeu	s1,s3,80003840 <freerange+0xd0>
    800037cc:	00058a13          	mv	s4,a1
    800037d0:	00002917          	auipc	s2,0x2
    800037d4:	24090913          	addi	s2,s2,576 # 80005a10 <kmem>
    800037d8:	00002b37          	lui	s6,0x2
    800037dc:	0140006f          	j	800037f0 <freerange+0x80>
    800037e0:	000017b7          	lui	a5,0x1
    800037e4:	00f484b3          	add	s1,s1,a5
    800037e8:	0554ec63          	bltu	s1,s5,80003840 <freerange+0xd0>
    800037ec:	0534fa63          	bgeu	s1,s3,80003840 <freerange+0xd0>
    800037f0:	00001637          	lui	a2,0x1
    800037f4:	00100593          	li	a1,1
    800037f8:	00048513          	mv	a0,s1
    800037fc:	00000097          	auipc	ra,0x0
    80003800:	50c080e7          	jalr	1292(ra) # 80003d08 <__memset>
    80003804:	00093703          	ld	a4,0(s2)
    80003808:	016487b3          	add	a5,s1,s6
    8000380c:	00e4b023          	sd	a4,0(s1)
    80003810:	00993023          	sd	s1,0(s2)
    80003814:	fcfa76e3          	bgeu	s4,a5,800037e0 <freerange+0x70>
    80003818:	03813083          	ld	ra,56(sp)
    8000381c:	03013403          	ld	s0,48(sp)
    80003820:	02813483          	ld	s1,40(sp)
    80003824:	02013903          	ld	s2,32(sp)
    80003828:	01813983          	ld	s3,24(sp)
    8000382c:	01013a03          	ld	s4,16(sp)
    80003830:	00813a83          	ld	s5,8(sp)
    80003834:	00013b03          	ld	s6,0(sp)
    80003838:	04010113          	addi	sp,sp,64
    8000383c:	00008067          	ret
    80003840:	00002517          	auipc	a0,0x2
    80003844:	95050513          	addi	a0,a0,-1712 # 80005190 <digits+0x18>
    80003848:	fffff097          	auipc	ra,0xfffff
    8000384c:	3d4080e7          	jalr	980(ra) # 80002c1c <panic>

0000000080003850 <kfree>:
    80003850:	fe010113          	addi	sp,sp,-32
    80003854:	00813823          	sd	s0,16(sp)
    80003858:	00113c23          	sd	ra,24(sp)
    8000385c:	00913423          	sd	s1,8(sp)
    80003860:	02010413          	addi	s0,sp,32
    80003864:	03451793          	slli	a5,a0,0x34
    80003868:	04079c63          	bnez	a5,800038c0 <kfree+0x70>
    8000386c:	00003797          	auipc	a5,0x3
    80003870:	45478793          	addi	a5,a5,1108 # 80006cc0 <end>
    80003874:	00050493          	mv	s1,a0
    80003878:	04f56463          	bltu	a0,a5,800038c0 <kfree+0x70>
    8000387c:	01100793          	li	a5,17
    80003880:	01b79793          	slli	a5,a5,0x1b
    80003884:	02f57e63          	bgeu	a0,a5,800038c0 <kfree+0x70>
    80003888:	00001637          	lui	a2,0x1
    8000388c:	00100593          	li	a1,1
    80003890:	00000097          	auipc	ra,0x0
    80003894:	478080e7          	jalr	1144(ra) # 80003d08 <__memset>
    80003898:	00002797          	auipc	a5,0x2
    8000389c:	17878793          	addi	a5,a5,376 # 80005a10 <kmem>
    800038a0:	0007b703          	ld	a4,0(a5)
    800038a4:	01813083          	ld	ra,24(sp)
    800038a8:	01013403          	ld	s0,16(sp)
    800038ac:	00e4b023          	sd	a4,0(s1)
    800038b0:	0097b023          	sd	s1,0(a5)
    800038b4:	00813483          	ld	s1,8(sp)
    800038b8:	02010113          	addi	sp,sp,32
    800038bc:	00008067          	ret
    800038c0:	00002517          	auipc	a0,0x2
    800038c4:	8d050513          	addi	a0,a0,-1840 # 80005190 <digits+0x18>
    800038c8:	fffff097          	auipc	ra,0xfffff
    800038cc:	354080e7          	jalr	852(ra) # 80002c1c <panic>

00000000800038d0 <kalloc>:
    800038d0:	fe010113          	addi	sp,sp,-32
    800038d4:	00813823          	sd	s0,16(sp)
    800038d8:	00913423          	sd	s1,8(sp)
    800038dc:	00113c23          	sd	ra,24(sp)
    800038e0:	02010413          	addi	s0,sp,32
    800038e4:	00002797          	auipc	a5,0x2
    800038e8:	12c78793          	addi	a5,a5,300 # 80005a10 <kmem>
    800038ec:	0007b483          	ld	s1,0(a5)
    800038f0:	02048063          	beqz	s1,80003910 <kalloc+0x40>
    800038f4:	0004b703          	ld	a4,0(s1)
    800038f8:	00001637          	lui	a2,0x1
    800038fc:	00500593          	li	a1,5
    80003900:	00048513          	mv	a0,s1
    80003904:	00e7b023          	sd	a4,0(a5)
    80003908:	00000097          	auipc	ra,0x0
    8000390c:	400080e7          	jalr	1024(ra) # 80003d08 <__memset>
    80003910:	01813083          	ld	ra,24(sp)
    80003914:	01013403          	ld	s0,16(sp)
    80003918:	00048513          	mv	a0,s1
    8000391c:	00813483          	ld	s1,8(sp)
    80003920:	02010113          	addi	sp,sp,32
    80003924:	00008067          	ret

0000000080003928 <initlock>:
    80003928:	ff010113          	addi	sp,sp,-16
    8000392c:	00813423          	sd	s0,8(sp)
    80003930:	01010413          	addi	s0,sp,16
    80003934:	00813403          	ld	s0,8(sp)
    80003938:	00b53423          	sd	a1,8(a0)
    8000393c:	00052023          	sw	zero,0(a0)
    80003940:	00053823          	sd	zero,16(a0)
    80003944:	01010113          	addi	sp,sp,16
    80003948:	00008067          	ret

000000008000394c <acquire>:
    8000394c:	fe010113          	addi	sp,sp,-32
    80003950:	00813823          	sd	s0,16(sp)
    80003954:	00913423          	sd	s1,8(sp)
    80003958:	00113c23          	sd	ra,24(sp)
    8000395c:	01213023          	sd	s2,0(sp)
    80003960:	02010413          	addi	s0,sp,32
    80003964:	00050493          	mv	s1,a0
    80003968:	10002973          	csrr	s2,sstatus
    8000396c:	100027f3          	csrr	a5,sstatus
    80003970:	ffd7f793          	andi	a5,a5,-3
    80003974:	10079073          	csrw	sstatus,a5
    80003978:	fffff097          	auipc	ra,0xfffff
    8000397c:	8ec080e7          	jalr	-1812(ra) # 80002264 <mycpu>
    80003980:	07852783          	lw	a5,120(a0)
    80003984:	06078e63          	beqz	a5,80003a00 <acquire+0xb4>
    80003988:	fffff097          	auipc	ra,0xfffff
    8000398c:	8dc080e7          	jalr	-1828(ra) # 80002264 <mycpu>
    80003990:	07852783          	lw	a5,120(a0)
    80003994:	0004a703          	lw	a4,0(s1)
    80003998:	0017879b          	addiw	a5,a5,1
    8000399c:	06f52c23          	sw	a5,120(a0)
    800039a0:	04071063          	bnez	a4,800039e0 <acquire+0x94>
    800039a4:	00100713          	li	a4,1
    800039a8:	00070793          	mv	a5,a4
    800039ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800039b0:	0007879b          	sext.w	a5,a5
    800039b4:	fe079ae3          	bnez	a5,800039a8 <acquire+0x5c>
    800039b8:	0ff0000f          	fence
    800039bc:	fffff097          	auipc	ra,0xfffff
    800039c0:	8a8080e7          	jalr	-1880(ra) # 80002264 <mycpu>
    800039c4:	01813083          	ld	ra,24(sp)
    800039c8:	01013403          	ld	s0,16(sp)
    800039cc:	00a4b823          	sd	a0,16(s1)
    800039d0:	00013903          	ld	s2,0(sp)
    800039d4:	00813483          	ld	s1,8(sp)
    800039d8:	02010113          	addi	sp,sp,32
    800039dc:	00008067          	ret
    800039e0:	0104b903          	ld	s2,16(s1)
    800039e4:	fffff097          	auipc	ra,0xfffff
    800039e8:	880080e7          	jalr	-1920(ra) # 80002264 <mycpu>
    800039ec:	faa91ce3          	bne	s2,a0,800039a4 <acquire+0x58>
    800039f0:	00001517          	auipc	a0,0x1
    800039f4:	7a850513          	addi	a0,a0,1960 # 80005198 <digits+0x20>
    800039f8:	fffff097          	auipc	ra,0xfffff
    800039fc:	224080e7          	jalr	548(ra) # 80002c1c <panic>
    80003a00:	00195913          	srli	s2,s2,0x1
    80003a04:	fffff097          	auipc	ra,0xfffff
    80003a08:	860080e7          	jalr	-1952(ra) # 80002264 <mycpu>
    80003a0c:	00197913          	andi	s2,s2,1
    80003a10:	07252e23          	sw	s2,124(a0)
    80003a14:	f75ff06f          	j	80003988 <acquire+0x3c>

0000000080003a18 <release>:
    80003a18:	fe010113          	addi	sp,sp,-32
    80003a1c:	00813823          	sd	s0,16(sp)
    80003a20:	00113c23          	sd	ra,24(sp)
    80003a24:	00913423          	sd	s1,8(sp)
    80003a28:	01213023          	sd	s2,0(sp)
    80003a2c:	02010413          	addi	s0,sp,32
    80003a30:	00052783          	lw	a5,0(a0)
    80003a34:	00079a63          	bnez	a5,80003a48 <release+0x30>
    80003a38:	00001517          	auipc	a0,0x1
    80003a3c:	76850513          	addi	a0,a0,1896 # 800051a0 <digits+0x28>
    80003a40:	fffff097          	auipc	ra,0xfffff
    80003a44:	1dc080e7          	jalr	476(ra) # 80002c1c <panic>
    80003a48:	01053903          	ld	s2,16(a0)
    80003a4c:	00050493          	mv	s1,a0
    80003a50:	fffff097          	auipc	ra,0xfffff
    80003a54:	814080e7          	jalr	-2028(ra) # 80002264 <mycpu>
    80003a58:	fea910e3          	bne	s2,a0,80003a38 <release+0x20>
    80003a5c:	0004b823          	sd	zero,16(s1)
    80003a60:	0ff0000f          	fence
    80003a64:	0f50000f          	fence	iorw,ow
    80003a68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	7f8080e7          	jalr	2040(ra) # 80002264 <mycpu>
    80003a74:	100027f3          	csrr	a5,sstatus
    80003a78:	0027f793          	andi	a5,a5,2
    80003a7c:	04079a63          	bnez	a5,80003ad0 <release+0xb8>
    80003a80:	07852783          	lw	a5,120(a0)
    80003a84:	02f05e63          	blez	a5,80003ac0 <release+0xa8>
    80003a88:	fff7871b          	addiw	a4,a5,-1
    80003a8c:	06e52c23          	sw	a4,120(a0)
    80003a90:	00071c63          	bnez	a4,80003aa8 <release+0x90>
    80003a94:	07c52783          	lw	a5,124(a0)
    80003a98:	00078863          	beqz	a5,80003aa8 <release+0x90>
    80003a9c:	100027f3          	csrr	a5,sstatus
    80003aa0:	0027e793          	ori	a5,a5,2
    80003aa4:	10079073          	csrw	sstatus,a5
    80003aa8:	01813083          	ld	ra,24(sp)
    80003aac:	01013403          	ld	s0,16(sp)
    80003ab0:	00813483          	ld	s1,8(sp)
    80003ab4:	00013903          	ld	s2,0(sp)
    80003ab8:	02010113          	addi	sp,sp,32
    80003abc:	00008067          	ret
    80003ac0:	00001517          	auipc	a0,0x1
    80003ac4:	70050513          	addi	a0,a0,1792 # 800051c0 <digits+0x48>
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	154080e7          	jalr	340(ra) # 80002c1c <panic>
    80003ad0:	00001517          	auipc	a0,0x1
    80003ad4:	6d850513          	addi	a0,a0,1752 # 800051a8 <digits+0x30>
    80003ad8:	fffff097          	auipc	ra,0xfffff
    80003adc:	144080e7          	jalr	324(ra) # 80002c1c <panic>

0000000080003ae0 <holding>:
    80003ae0:	00052783          	lw	a5,0(a0)
    80003ae4:	00079663          	bnez	a5,80003af0 <holding+0x10>
    80003ae8:	00000513          	li	a0,0
    80003aec:	00008067          	ret
    80003af0:	fe010113          	addi	sp,sp,-32
    80003af4:	00813823          	sd	s0,16(sp)
    80003af8:	00913423          	sd	s1,8(sp)
    80003afc:	00113c23          	sd	ra,24(sp)
    80003b00:	02010413          	addi	s0,sp,32
    80003b04:	01053483          	ld	s1,16(a0)
    80003b08:	ffffe097          	auipc	ra,0xffffe
    80003b0c:	75c080e7          	jalr	1884(ra) # 80002264 <mycpu>
    80003b10:	01813083          	ld	ra,24(sp)
    80003b14:	01013403          	ld	s0,16(sp)
    80003b18:	40a48533          	sub	a0,s1,a0
    80003b1c:	00153513          	seqz	a0,a0
    80003b20:	00813483          	ld	s1,8(sp)
    80003b24:	02010113          	addi	sp,sp,32
    80003b28:	00008067          	ret

0000000080003b2c <push_off>:
    80003b2c:	fe010113          	addi	sp,sp,-32
    80003b30:	00813823          	sd	s0,16(sp)
    80003b34:	00113c23          	sd	ra,24(sp)
    80003b38:	00913423          	sd	s1,8(sp)
    80003b3c:	02010413          	addi	s0,sp,32
    80003b40:	100024f3          	csrr	s1,sstatus
    80003b44:	100027f3          	csrr	a5,sstatus
    80003b48:	ffd7f793          	andi	a5,a5,-3
    80003b4c:	10079073          	csrw	sstatus,a5
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	714080e7          	jalr	1812(ra) # 80002264 <mycpu>
    80003b58:	07852783          	lw	a5,120(a0)
    80003b5c:	02078663          	beqz	a5,80003b88 <push_off+0x5c>
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	704080e7          	jalr	1796(ra) # 80002264 <mycpu>
    80003b68:	07852783          	lw	a5,120(a0)
    80003b6c:	01813083          	ld	ra,24(sp)
    80003b70:	01013403          	ld	s0,16(sp)
    80003b74:	0017879b          	addiw	a5,a5,1
    80003b78:	06f52c23          	sw	a5,120(a0)
    80003b7c:	00813483          	ld	s1,8(sp)
    80003b80:	02010113          	addi	sp,sp,32
    80003b84:	00008067          	ret
    80003b88:	0014d493          	srli	s1,s1,0x1
    80003b8c:	ffffe097          	auipc	ra,0xffffe
    80003b90:	6d8080e7          	jalr	1752(ra) # 80002264 <mycpu>
    80003b94:	0014f493          	andi	s1,s1,1
    80003b98:	06952e23          	sw	s1,124(a0)
    80003b9c:	fc5ff06f          	j	80003b60 <push_off+0x34>

0000000080003ba0 <pop_off>:
    80003ba0:	ff010113          	addi	sp,sp,-16
    80003ba4:	00813023          	sd	s0,0(sp)
    80003ba8:	00113423          	sd	ra,8(sp)
    80003bac:	01010413          	addi	s0,sp,16
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	6b4080e7          	jalr	1716(ra) # 80002264 <mycpu>
    80003bb8:	100027f3          	csrr	a5,sstatus
    80003bbc:	0027f793          	andi	a5,a5,2
    80003bc0:	04079663          	bnez	a5,80003c0c <pop_off+0x6c>
    80003bc4:	07852783          	lw	a5,120(a0)
    80003bc8:	02f05a63          	blez	a5,80003bfc <pop_off+0x5c>
    80003bcc:	fff7871b          	addiw	a4,a5,-1
    80003bd0:	06e52c23          	sw	a4,120(a0)
    80003bd4:	00071c63          	bnez	a4,80003bec <pop_off+0x4c>
    80003bd8:	07c52783          	lw	a5,124(a0)
    80003bdc:	00078863          	beqz	a5,80003bec <pop_off+0x4c>
    80003be0:	100027f3          	csrr	a5,sstatus
    80003be4:	0027e793          	ori	a5,a5,2
    80003be8:	10079073          	csrw	sstatus,a5
    80003bec:	00813083          	ld	ra,8(sp)
    80003bf0:	00013403          	ld	s0,0(sp)
    80003bf4:	01010113          	addi	sp,sp,16
    80003bf8:	00008067          	ret
    80003bfc:	00001517          	auipc	a0,0x1
    80003c00:	5c450513          	addi	a0,a0,1476 # 800051c0 <digits+0x48>
    80003c04:	fffff097          	auipc	ra,0xfffff
    80003c08:	018080e7          	jalr	24(ra) # 80002c1c <panic>
    80003c0c:	00001517          	auipc	a0,0x1
    80003c10:	59c50513          	addi	a0,a0,1436 # 800051a8 <digits+0x30>
    80003c14:	fffff097          	auipc	ra,0xfffff
    80003c18:	008080e7          	jalr	8(ra) # 80002c1c <panic>

0000000080003c1c <push_on>:
    80003c1c:	fe010113          	addi	sp,sp,-32
    80003c20:	00813823          	sd	s0,16(sp)
    80003c24:	00113c23          	sd	ra,24(sp)
    80003c28:	00913423          	sd	s1,8(sp)
    80003c2c:	02010413          	addi	s0,sp,32
    80003c30:	100024f3          	csrr	s1,sstatus
    80003c34:	100027f3          	csrr	a5,sstatus
    80003c38:	0027e793          	ori	a5,a5,2
    80003c3c:	10079073          	csrw	sstatus,a5
    80003c40:	ffffe097          	auipc	ra,0xffffe
    80003c44:	624080e7          	jalr	1572(ra) # 80002264 <mycpu>
    80003c48:	07852783          	lw	a5,120(a0)
    80003c4c:	02078663          	beqz	a5,80003c78 <push_on+0x5c>
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	614080e7          	jalr	1556(ra) # 80002264 <mycpu>
    80003c58:	07852783          	lw	a5,120(a0)
    80003c5c:	01813083          	ld	ra,24(sp)
    80003c60:	01013403          	ld	s0,16(sp)
    80003c64:	0017879b          	addiw	a5,a5,1
    80003c68:	06f52c23          	sw	a5,120(a0)
    80003c6c:	00813483          	ld	s1,8(sp)
    80003c70:	02010113          	addi	sp,sp,32
    80003c74:	00008067          	ret
    80003c78:	0014d493          	srli	s1,s1,0x1
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	5e8080e7          	jalr	1512(ra) # 80002264 <mycpu>
    80003c84:	0014f493          	andi	s1,s1,1
    80003c88:	06952e23          	sw	s1,124(a0)
    80003c8c:	fc5ff06f          	j	80003c50 <push_on+0x34>

0000000080003c90 <pop_on>:
    80003c90:	ff010113          	addi	sp,sp,-16
    80003c94:	00813023          	sd	s0,0(sp)
    80003c98:	00113423          	sd	ra,8(sp)
    80003c9c:	01010413          	addi	s0,sp,16
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	5c4080e7          	jalr	1476(ra) # 80002264 <mycpu>
    80003ca8:	100027f3          	csrr	a5,sstatus
    80003cac:	0027f793          	andi	a5,a5,2
    80003cb0:	04078463          	beqz	a5,80003cf8 <pop_on+0x68>
    80003cb4:	07852783          	lw	a5,120(a0)
    80003cb8:	02f05863          	blez	a5,80003ce8 <pop_on+0x58>
    80003cbc:	fff7879b          	addiw	a5,a5,-1
    80003cc0:	06f52c23          	sw	a5,120(a0)
    80003cc4:	07853783          	ld	a5,120(a0)
    80003cc8:	00079863          	bnez	a5,80003cd8 <pop_on+0x48>
    80003ccc:	100027f3          	csrr	a5,sstatus
    80003cd0:	ffd7f793          	andi	a5,a5,-3
    80003cd4:	10079073          	csrw	sstatus,a5
    80003cd8:	00813083          	ld	ra,8(sp)
    80003cdc:	00013403          	ld	s0,0(sp)
    80003ce0:	01010113          	addi	sp,sp,16
    80003ce4:	00008067          	ret
    80003ce8:	00001517          	auipc	a0,0x1
    80003cec:	50050513          	addi	a0,a0,1280 # 800051e8 <digits+0x70>
    80003cf0:	fffff097          	auipc	ra,0xfffff
    80003cf4:	f2c080e7          	jalr	-212(ra) # 80002c1c <panic>
    80003cf8:	00001517          	auipc	a0,0x1
    80003cfc:	4d050513          	addi	a0,a0,1232 # 800051c8 <digits+0x50>
    80003d00:	fffff097          	auipc	ra,0xfffff
    80003d04:	f1c080e7          	jalr	-228(ra) # 80002c1c <panic>

0000000080003d08 <__memset>:
    80003d08:	ff010113          	addi	sp,sp,-16
    80003d0c:	00813423          	sd	s0,8(sp)
    80003d10:	01010413          	addi	s0,sp,16
    80003d14:	1a060e63          	beqz	a2,80003ed0 <__memset+0x1c8>
    80003d18:	40a007b3          	neg	a5,a0
    80003d1c:	0077f793          	andi	a5,a5,7
    80003d20:	00778693          	addi	a3,a5,7
    80003d24:	00b00813          	li	a6,11
    80003d28:	0ff5f593          	andi	a1,a1,255
    80003d2c:	fff6071b          	addiw	a4,a2,-1
    80003d30:	1b06e663          	bltu	a3,a6,80003edc <__memset+0x1d4>
    80003d34:	1cd76463          	bltu	a4,a3,80003efc <__memset+0x1f4>
    80003d38:	1a078e63          	beqz	a5,80003ef4 <__memset+0x1ec>
    80003d3c:	00b50023          	sb	a1,0(a0)
    80003d40:	00100713          	li	a4,1
    80003d44:	1ae78463          	beq	a5,a4,80003eec <__memset+0x1e4>
    80003d48:	00b500a3          	sb	a1,1(a0)
    80003d4c:	00200713          	li	a4,2
    80003d50:	1ae78a63          	beq	a5,a4,80003f04 <__memset+0x1fc>
    80003d54:	00b50123          	sb	a1,2(a0)
    80003d58:	00300713          	li	a4,3
    80003d5c:	18e78463          	beq	a5,a4,80003ee4 <__memset+0x1dc>
    80003d60:	00b501a3          	sb	a1,3(a0)
    80003d64:	00400713          	li	a4,4
    80003d68:	1ae78263          	beq	a5,a4,80003f0c <__memset+0x204>
    80003d6c:	00b50223          	sb	a1,4(a0)
    80003d70:	00500713          	li	a4,5
    80003d74:	1ae78063          	beq	a5,a4,80003f14 <__memset+0x20c>
    80003d78:	00b502a3          	sb	a1,5(a0)
    80003d7c:	00700713          	li	a4,7
    80003d80:	18e79e63          	bne	a5,a4,80003f1c <__memset+0x214>
    80003d84:	00b50323          	sb	a1,6(a0)
    80003d88:	00700e93          	li	t4,7
    80003d8c:	00859713          	slli	a4,a1,0x8
    80003d90:	00e5e733          	or	a4,a1,a4
    80003d94:	01059e13          	slli	t3,a1,0x10
    80003d98:	01c76e33          	or	t3,a4,t3
    80003d9c:	01859313          	slli	t1,a1,0x18
    80003da0:	006e6333          	or	t1,t3,t1
    80003da4:	02059893          	slli	a7,a1,0x20
    80003da8:	40f60e3b          	subw	t3,a2,a5
    80003dac:	011368b3          	or	a7,t1,a7
    80003db0:	02859813          	slli	a6,a1,0x28
    80003db4:	0108e833          	or	a6,a7,a6
    80003db8:	03059693          	slli	a3,a1,0x30
    80003dbc:	003e589b          	srliw	a7,t3,0x3
    80003dc0:	00d866b3          	or	a3,a6,a3
    80003dc4:	03859713          	slli	a4,a1,0x38
    80003dc8:	00389813          	slli	a6,a7,0x3
    80003dcc:	00f507b3          	add	a5,a0,a5
    80003dd0:	00e6e733          	or	a4,a3,a4
    80003dd4:	000e089b          	sext.w	a7,t3
    80003dd8:	00f806b3          	add	a3,a6,a5
    80003ddc:	00e7b023          	sd	a4,0(a5)
    80003de0:	00878793          	addi	a5,a5,8
    80003de4:	fed79ce3          	bne	a5,a3,80003ddc <__memset+0xd4>
    80003de8:	ff8e7793          	andi	a5,t3,-8
    80003dec:	0007871b          	sext.w	a4,a5
    80003df0:	01d787bb          	addw	a5,a5,t4
    80003df4:	0ce88e63          	beq	a7,a4,80003ed0 <__memset+0x1c8>
    80003df8:	00f50733          	add	a4,a0,a5
    80003dfc:	00b70023          	sb	a1,0(a4)
    80003e00:	0017871b          	addiw	a4,a5,1
    80003e04:	0cc77663          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003e08:	00e50733          	add	a4,a0,a4
    80003e0c:	00b70023          	sb	a1,0(a4)
    80003e10:	0027871b          	addiw	a4,a5,2
    80003e14:	0ac77e63          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003e18:	00e50733          	add	a4,a0,a4
    80003e1c:	00b70023          	sb	a1,0(a4)
    80003e20:	0037871b          	addiw	a4,a5,3
    80003e24:	0ac77663          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003e28:	00e50733          	add	a4,a0,a4
    80003e2c:	00b70023          	sb	a1,0(a4)
    80003e30:	0047871b          	addiw	a4,a5,4
    80003e34:	08c77e63          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003e38:	00e50733          	add	a4,a0,a4
    80003e3c:	00b70023          	sb	a1,0(a4)
    80003e40:	0057871b          	addiw	a4,a5,5
    80003e44:	08c77663          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003e48:	00e50733          	add	a4,a0,a4
    80003e4c:	00b70023          	sb	a1,0(a4)
    80003e50:	0067871b          	addiw	a4,a5,6
    80003e54:	06c77e63          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003e58:	00e50733          	add	a4,a0,a4
    80003e5c:	00b70023          	sb	a1,0(a4)
    80003e60:	0077871b          	addiw	a4,a5,7
    80003e64:	06c77663          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003e68:	00e50733          	add	a4,a0,a4
    80003e6c:	00b70023          	sb	a1,0(a4)
    80003e70:	0087871b          	addiw	a4,a5,8
    80003e74:	04c77e63          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003e78:	00e50733          	add	a4,a0,a4
    80003e7c:	00b70023          	sb	a1,0(a4)
    80003e80:	0097871b          	addiw	a4,a5,9
    80003e84:	04c77663          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003e88:	00e50733          	add	a4,a0,a4
    80003e8c:	00b70023          	sb	a1,0(a4)
    80003e90:	00a7871b          	addiw	a4,a5,10
    80003e94:	02c77e63          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003e98:	00e50733          	add	a4,a0,a4
    80003e9c:	00b70023          	sb	a1,0(a4)
    80003ea0:	00b7871b          	addiw	a4,a5,11
    80003ea4:	02c77663          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00b70023          	sb	a1,0(a4)
    80003eb0:	00c7871b          	addiw	a4,a5,12
    80003eb4:	00c77e63          	bgeu	a4,a2,80003ed0 <__memset+0x1c8>
    80003eb8:	00e50733          	add	a4,a0,a4
    80003ebc:	00b70023          	sb	a1,0(a4)
    80003ec0:	00d7879b          	addiw	a5,a5,13
    80003ec4:	00c7f663          	bgeu	a5,a2,80003ed0 <__memset+0x1c8>
    80003ec8:	00f507b3          	add	a5,a0,a5
    80003ecc:	00b78023          	sb	a1,0(a5)
    80003ed0:	00813403          	ld	s0,8(sp)
    80003ed4:	01010113          	addi	sp,sp,16
    80003ed8:	00008067          	ret
    80003edc:	00b00693          	li	a3,11
    80003ee0:	e55ff06f          	j	80003d34 <__memset+0x2c>
    80003ee4:	00300e93          	li	t4,3
    80003ee8:	ea5ff06f          	j	80003d8c <__memset+0x84>
    80003eec:	00100e93          	li	t4,1
    80003ef0:	e9dff06f          	j	80003d8c <__memset+0x84>
    80003ef4:	00000e93          	li	t4,0
    80003ef8:	e95ff06f          	j	80003d8c <__memset+0x84>
    80003efc:	00000793          	li	a5,0
    80003f00:	ef9ff06f          	j	80003df8 <__memset+0xf0>
    80003f04:	00200e93          	li	t4,2
    80003f08:	e85ff06f          	j	80003d8c <__memset+0x84>
    80003f0c:	00400e93          	li	t4,4
    80003f10:	e7dff06f          	j	80003d8c <__memset+0x84>
    80003f14:	00500e93          	li	t4,5
    80003f18:	e75ff06f          	j	80003d8c <__memset+0x84>
    80003f1c:	00600e93          	li	t4,6
    80003f20:	e6dff06f          	j	80003d8c <__memset+0x84>

0000000080003f24 <__memmove>:
    80003f24:	ff010113          	addi	sp,sp,-16
    80003f28:	00813423          	sd	s0,8(sp)
    80003f2c:	01010413          	addi	s0,sp,16
    80003f30:	0e060863          	beqz	a2,80004020 <__memmove+0xfc>
    80003f34:	fff6069b          	addiw	a3,a2,-1
    80003f38:	0006881b          	sext.w	a6,a3
    80003f3c:	0ea5e863          	bltu	a1,a0,8000402c <__memmove+0x108>
    80003f40:	00758713          	addi	a4,a1,7
    80003f44:	00a5e7b3          	or	a5,a1,a0
    80003f48:	40a70733          	sub	a4,a4,a0
    80003f4c:	0077f793          	andi	a5,a5,7
    80003f50:	00f73713          	sltiu	a4,a4,15
    80003f54:	00174713          	xori	a4,a4,1
    80003f58:	0017b793          	seqz	a5,a5
    80003f5c:	00e7f7b3          	and	a5,a5,a4
    80003f60:	10078863          	beqz	a5,80004070 <__memmove+0x14c>
    80003f64:	00900793          	li	a5,9
    80003f68:	1107f463          	bgeu	a5,a6,80004070 <__memmove+0x14c>
    80003f6c:	0036581b          	srliw	a6,a2,0x3
    80003f70:	fff8081b          	addiw	a6,a6,-1
    80003f74:	02081813          	slli	a6,a6,0x20
    80003f78:	01d85893          	srli	a7,a6,0x1d
    80003f7c:	00858813          	addi	a6,a1,8
    80003f80:	00058793          	mv	a5,a1
    80003f84:	00050713          	mv	a4,a0
    80003f88:	01088833          	add	a6,a7,a6
    80003f8c:	0007b883          	ld	a7,0(a5)
    80003f90:	00878793          	addi	a5,a5,8
    80003f94:	00870713          	addi	a4,a4,8
    80003f98:	ff173c23          	sd	a7,-8(a4)
    80003f9c:	ff0798e3          	bne	a5,a6,80003f8c <__memmove+0x68>
    80003fa0:	ff867713          	andi	a4,a2,-8
    80003fa4:	02071793          	slli	a5,a4,0x20
    80003fa8:	0207d793          	srli	a5,a5,0x20
    80003fac:	00f585b3          	add	a1,a1,a5
    80003fb0:	40e686bb          	subw	a3,a3,a4
    80003fb4:	00f507b3          	add	a5,a0,a5
    80003fb8:	06e60463          	beq	a2,a4,80004020 <__memmove+0xfc>
    80003fbc:	0005c703          	lbu	a4,0(a1)
    80003fc0:	00e78023          	sb	a4,0(a5)
    80003fc4:	04068e63          	beqz	a3,80004020 <__memmove+0xfc>
    80003fc8:	0015c603          	lbu	a2,1(a1)
    80003fcc:	00100713          	li	a4,1
    80003fd0:	00c780a3          	sb	a2,1(a5)
    80003fd4:	04e68663          	beq	a3,a4,80004020 <__memmove+0xfc>
    80003fd8:	0025c603          	lbu	a2,2(a1)
    80003fdc:	00200713          	li	a4,2
    80003fe0:	00c78123          	sb	a2,2(a5)
    80003fe4:	02e68e63          	beq	a3,a4,80004020 <__memmove+0xfc>
    80003fe8:	0035c603          	lbu	a2,3(a1)
    80003fec:	00300713          	li	a4,3
    80003ff0:	00c781a3          	sb	a2,3(a5)
    80003ff4:	02e68663          	beq	a3,a4,80004020 <__memmove+0xfc>
    80003ff8:	0045c603          	lbu	a2,4(a1)
    80003ffc:	00400713          	li	a4,4
    80004000:	00c78223          	sb	a2,4(a5)
    80004004:	00e68e63          	beq	a3,a4,80004020 <__memmove+0xfc>
    80004008:	0055c603          	lbu	a2,5(a1)
    8000400c:	00500713          	li	a4,5
    80004010:	00c782a3          	sb	a2,5(a5)
    80004014:	00e68663          	beq	a3,a4,80004020 <__memmove+0xfc>
    80004018:	0065c703          	lbu	a4,6(a1)
    8000401c:	00e78323          	sb	a4,6(a5)
    80004020:	00813403          	ld	s0,8(sp)
    80004024:	01010113          	addi	sp,sp,16
    80004028:	00008067          	ret
    8000402c:	02061713          	slli	a4,a2,0x20
    80004030:	02075713          	srli	a4,a4,0x20
    80004034:	00e587b3          	add	a5,a1,a4
    80004038:	f0f574e3          	bgeu	a0,a5,80003f40 <__memmove+0x1c>
    8000403c:	02069613          	slli	a2,a3,0x20
    80004040:	02065613          	srli	a2,a2,0x20
    80004044:	fff64613          	not	a2,a2
    80004048:	00e50733          	add	a4,a0,a4
    8000404c:	00c78633          	add	a2,a5,a2
    80004050:	fff7c683          	lbu	a3,-1(a5)
    80004054:	fff78793          	addi	a5,a5,-1
    80004058:	fff70713          	addi	a4,a4,-1
    8000405c:	00d70023          	sb	a3,0(a4)
    80004060:	fec798e3          	bne	a5,a2,80004050 <__memmove+0x12c>
    80004064:	00813403          	ld	s0,8(sp)
    80004068:	01010113          	addi	sp,sp,16
    8000406c:	00008067          	ret
    80004070:	02069713          	slli	a4,a3,0x20
    80004074:	02075713          	srli	a4,a4,0x20
    80004078:	00170713          	addi	a4,a4,1
    8000407c:	00e50733          	add	a4,a0,a4
    80004080:	00050793          	mv	a5,a0
    80004084:	0005c683          	lbu	a3,0(a1)
    80004088:	00178793          	addi	a5,a5,1
    8000408c:	00158593          	addi	a1,a1,1
    80004090:	fed78fa3          	sb	a3,-1(a5)
    80004094:	fee798e3          	bne	a5,a4,80004084 <__memmove+0x160>
    80004098:	f89ff06f          	j	80004020 <__memmove+0xfc>

000000008000409c <__putc>:
    8000409c:	fe010113          	addi	sp,sp,-32
    800040a0:	00813823          	sd	s0,16(sp)
    800040a4:	00113c23          	sd	ra,24(sp)
    800040a8:	02010413          	addi	s0,sp,32
    800040ac:	00050793          	mv	a5,a0
    800040b0:	fef40593          	addi	a1,s0,-17
    800040b4:	00100613          	li	a2,1
    800040b8:	00000513          	li	a0,0
    800040bc:	fef407a3          	sb	a5,-17(s0)
    800040c0:	fffff097          	auipc	ra,0xfffff
    800040c4:	b3c080e7          	jalr	-1220(ra) # 80002bfc <console_write>
    800040c8:	01813083          	ld	ra,24(sp)
    800040cc:	01013403          	ld	s0,16(sp)
    800040d0:	02010113          	addi	sp,sp,32
    800040d4:	00008067          	ret

00000000800040d8 <__getc>:
    800040d8:	fe010113          	addi	sp,sp,-32
    800040dc:	00813823          	sd	s0,16(sp)
    800040e0:	00113c23          	sd	ra,24(sp)
    800040e4:	02010413          	addi	s0,sp,32
    800040e8:	fe840593          	addi	a1,s0,-24
    800040ec:	00100613          	li	a2,1
    800040f0:	00000513          	li	a0,0
    800040f4:	fffff097          	auipc	ra,0xfffff
    800040f8:	ae8080e7          	jalr	-1304(ra) # 80002bdc <console_read>
    800040fc:	fe844503          	lbu	a0,-24(s0)
    80004100:	01813083          	ld	ra,24(sp)
    80004104:	01013403          	ld	s0,16(sp)
    80004108:	02010113          	addi	sp,sp,32
    8000410c:	00008067          	ret

0000000080004110 <console_handler>:
    80004110:	fe010113          	addi	sp,sp,-32
    80004114:	00813823          	sd	s0,16(sp)
    80004118:	00113c23          	sd	ra,24(sp)
    8000411c:	00913423          	sd	s1,8(sp)
    80004120:	02010413          	addi	s0,sp,32
    80004124:	14202773          	csrr	a4,scause
    80004128:	100027f3          	csrr	a5,sstatus
    8000412c:	0027f793          	andi	a5,a5,2
    80004130:	06079e63          	bnez	a5,800041ac <console_handler+0x9c>
    80004134:	00074c63          	bltz	a4,8000414c <console_handler+0x3c>
    80004138:	01813083          	ld	ra,24(sp)
    8000413c:	01013403          	ld	s0,16(sp)
    80004140:	00813483          	ld	s1,8(sp)
    80004144:	02010113          	addi	sp,sp,32
    80004148:	00008067          	ret
    8000414c:	0ff77713          	andi	a4,a4,255
    80004150:	00900793          	li	a5,9
    80004154:	fef712e3          	bne	a4,a5,80004138 <console_handler+0x28>
    80004158:	ffffe097          	auipc	ra,0xffffe
    8000415c:	6dc080e7          	jalr	1756(ra) # 80002834 <plic_claim>
    80004160:	00a00793          	li	a5,10
    80004164:	00050493          	mv	s1,a0
    80004168:	02f50c63          	beq	a0,a5,800041a0 <console_handler+0x90>
    8000416c:	fc0506e3          	beqz	a0,80004138 <console_handler+0x28>
    80004170:	00050593          	mv	a1,a0
    80004174:	00001517          	auipc	a0,0x1
    80004178:	f7c50513          	addi	a0,a0,-132 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000417c:	fffff097          	auipc	ra,0xfffff
    80004180:	afc080e7          	jalr	-1284(ra) # 80002c78 <__printf>
    80004184:	01013403          	ld	s0,16(sp)
    80004188:	01813083          	ld	ra,24(sp)
    8000418c:	00048513          	mv	a0,s1
    80004190:	00813483          	ld	s1,8(sp)
    80004194:	02010113          	addi	sp,sp,32
    80004198:	ffffe317          	auipc	t1,0xffffe
    8000419c:	6d430067          	jr	1748(t1) # 8000286c <plic_complete>
    800041a0:	fffff097          	auipc	ra,0xfffff
    800041a4:	3e0080e7          	jalr	992(ra) # 80003580 <uartintr>
    800041a8:	fddff06f          	j	80004184 <console_handler+0x74>
    800041ac:	00001517          	auipc	a0,0x1
    800041b0:	04450513          	addi	a0,a0,68 # 800051f0 <digits+0x78>
    800041b4:	fffff097          	auipc	ra,0xfffff
    800041b8:	a68080e7          	jalr	-1432(ra) # 80002c1c <panic>
	...
