
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	60813103          	ld	sp,1544(sp) # 80004608 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	181010ef          	jal	ra,8000199c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <interruptHandler>:
.extern interruptRoutine
.align 4
.global interruptHandler

interruptHandler:
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

    call interruptRoutine
    80001084:	075000ef          	jal	ra,800018f8 <interruptRoutine>

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

    8000110c:	10200073          	sret

0000000080001110 <ContextSwitchFunction>:
.global ContextSwitchFunction
.type ContextSwitchFunction, @function
ContextSwitchFunction:
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
    80001140:	04050263          	beqz	a0,80001184 <_Z9mem_allocm+0x44>
void* mem_alloc (size_t size) {
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00113423          	sd	ra,8(sp)
    8000114c:	00813023          	sd	s0,0(sp)
    80001150:	01010413          	addi	s0,sp,16
    80001154:	00050593          	mv	a1,a0
    void volatile *addr;
    syscall(MEM_ALLOC, size);
    80001158:	00000713          	li	a4,0
    8000115c:	00000693          	li	a3,0
    80001160:	00000613          	li	a2,0
    80001164:	00100513          	li	a0,1
    80001168:	00000097          	auipc	ra,0x0
    8000116c:	fbc080e7          	jalr	-68(ra) # 80001124 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(addr));
    80001170:	00050513          	mv	a0,a0
    return (void*) addr;
}
    80001174:	00813083          	ld	ra,8(sp)
    80001178:	00013403          	ld	s0,0(sp)
    8000117c:	01010113          	addi	sp,sp,16
    80001180:	00008067          	ret
    if (size == 0) return nullptr;
    80001184:	00000513          	li	a0,0
}
    80001188:	00008067          	ret

000000008000118c <_Z8mem_freePv>:

int mem_free (void* addr) {
    8000118c:	fe010113          	addi	sp,sp,-32
    80001190:	00113c23          	sd	ra,24(sp)
    80001194:	00813823          	sd	s0,16(sp)
    80001198:	02010413          	addi	s0,sp,32
    8000119c:	00050593          	mv	a1,a0
    int volatile success;
    syscall(MEM_FREE, (uint64) addr);
    800011a0:	00000713          	li	a4,0
    800011a4:	00000693          	li	a3,0
    800011a8:	00000613          	li	a2,0
    800011ac:	00200513          	li	a0,2
    800011b0:	00000097          	auipc	ra,0x0
    800011b4:	f74080e7          	jalr	-140(ra) # 80001124 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(success));
    800011b8:	00050793          	mv	a5,a0
    800011bc:	fef42623          	sw	a5,-20(s0)
    return success;
    800011c0:	fec42503          	lw	a0,-20(s0)
}
    800011c4:	0005051b          	sext.w	a0,a0
    800011c8:	01813083          	ld	ra,24(sp)
    800011cc:	01013403          	ld	s0,16(sp)
    800011d0:	02010113          	addi	sp,sp,32
    800011d4:	00008067          	ret

00000000800011d8 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    800011d8:	fc010113          	addi	sp,sp,-64
    800011dc:	02113c23          	sd	ra,56(sp)
    800011e0:	02813823          	sd	s0,48(sp)
    800011e4:	02913423          	sd	s1,40(sp)
    800011e8:	03213023          	sd	s2,32(sp)
    800011ec:	01313c23          	sd	s3,24(sp)
    800011f0:	04010413          	addi	s0,sp,64
    800011f4:	00050913          	mv	s2,a0
    800011f8:	00058493          	mv	s1,a1
    800011fc:	00060993          	mv	s3,a2
    void* stack_space = nullptr;
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001200:	04058c63          	beqz	a1,80001258 <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    80001204:	00001537          	lui	a0,0x1
    80001208:	00000097          	auipc	ra,0x0
    8000120c:	f38080e7          	jalr	-200(ra) # 80001140 <_Z9mem_allocm>
    80001210:	00050713          	mv	a4,a0
    int volatile status;
    syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
    80001214:	00098693          	mv	a3,s3
    80001218:	00048613          	mv	a2,s1
    8000121c:	00090593          	mv	a1,s2
    80001220:	01100513          	li	a0,17
    80001224:	00000097          	auipc	ra,0x0
    80001228:	f00080e7          	jalr	-256(ra) # 80001124 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    8000122c:	00050793          	mv	a5,a0
    80001230:	fcf42623          	sw	a5,-52(s0)
    return status;
    80001234:	fcc42503          	lw	a0,-52(s0)
}
    80001238:	0005051b          	sext.w	a0,a0
    8000123c:	03813083          	ld	ra,56(sp)
    80001240:	03013403          	ld	s0,48(sp)
    80001244:	02813483          	ld	s1,40(sp)
    80001248:	02013903          	ld	s2,32(sp)
    8000124c:	01813983          	ld	s3,24(sp)
    80001250:	04010113          	addi	sp,sp,64
    80001254:	00008067          	ret
    void* stack_space = nullptr;
    80001258:	00000713          	li	a4,0
    8000125c:	fb9ff06f          	j	80001214 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

0000000080001260 <_Z11thread_exitv>:

int thread_exit () {
    80001260:	fe010113          	addi	sp,sp,-32
    80001264:	00113c23          	sd	ra,24(sp)
    80001268:	00813823          	sd	s0,16(sp)
    8000126c:	02010413          	addi	s0,sp,32
    int volatile status;
    syscall(THREAD_EXIT);
    80001270:	00000713          	li	a4,0
    80001274:	00000693          	li	a3,0
    80001278:	00000613          	li	a2,0
    8000127c:	00000593          	li	a1,0
    80001280:	01200513          	li	a0,18
    80001284:	00000097          	auipc	ra,0x0
    80001288:	ea0080e7          	jalr	-352(ra) # 80001124 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    8000128c:	00050793          	mv	a5,a0
    80001290:	fef42623          	sw	a5,-20(s0)
    return status;
    80001294:	fec42503          	lw	a0,-20(s0)
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	01813083          	ld	ra,24(sp)
    800012a0:	01013403          	ld	s0,16(sp)
    800012a4:	02010113          	addi	sp,sp,32
    800012a8:	00008067          	ret

00000000800012ac <main>:
#include "../lib/console.h"
#include "../h/memory_allocator.hpp"

int main() {
    800012ac:	ff010113          	addi	sp,sp,-16
    800012b0:	00113423          	sd	ra,8(sp)
    800012b4:	00813023          	sd	s0,0(sp)
    800012b8:	01010413          	addi	s0,sp,16
    __putc('?');
    800012bc:	03f00513          	li	a0,63
    800012c0:	00002097          	auipc	ra,0x2
    800012c4:	79c080e7          	jalr	1948(ra) # 80003a5c <__putc>
    __putc('\n');
    800012c8:	00a00513          	li	a0,10
    800012cc:	00002097          	auipc	ra,0x2
    800012d0:	790080e7          	jalr	1936(ra) # 80003a5c <__putc>
    MemoryAllocator::getInstance();
    800012d4:	00000097          	auipc	ra,0x0
    800012d8:	368080e7          	jalr	872(ra) # 8000163c <_ZN15MemoryAllocator11getInstanceEv>
    MemoryAllocator::mem_alloc(1);
    800012dc:	00100513          	li	a0,1
    800012e0:	00000097          	auipc	ra,0x0
    800012e4:	23c080e7          	jalr	572(ra) # 8000151c <_ZN15MemoryAllocator9mem_allocEm>
    MemoryAllocator::print();
    800012e8:	00000097          	auipc	ra,0x0
    800012ec:	590080e7          	jalr	1424(ra) # 80001878 <_ZN15MemoryAllocator5printEv>
    MemoryAllocator::mem_free((void*)(1 * MEM_BLOCK_SIZE + sizeof(MemoryAllocator::MemSeg) + (char*)HEAP_START_ADDR));
    800012f0:	00003797          	auipc	a5,0x3
    800012f4:	3107b783          	ld	a5,784(a5) # 80004600 <_GLOBAL_OFFSET_TABLE_+0x8>
    800012f8:	0007b503          	ld	a0,0(a5)
    800012fc:	05850513          	addi	a0,a0,88 # 1058 <_entry-0x7fffefa8>
    80001300:	00000097          	auipc	ra,0x0
    80001304:	40c080e7          	jalr	1036(ra) # 8000170c <_ZN15MemoryAllocator8mem_freeEPv>
    MemoryAllocator::print();
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	570080e7          	jalr	1392(ra) # 80001878 <_ZN15MemoryAllocator5printEv>
    return 0;
    80001310:	00000513          	li	a0,0
    80001314:	00813083          	ld	ra,8(sp)
    80001318:	00013403          	ld	s0,0(sp)
    8000131c:	01010113          	addi	sp,sp,16
    80001320:	00008067          	ret

0000000080001324 <_ZN3TCB16wrapper_functionEv>:

void TCB::thread_exit() {
    //...
}

void TCB::wrapper_function() {
    80001324:	ff010113          	addi	sp,sp,-16
    80001328:	00813423          	sd	s0,8(sp)
    8000132c:	01010413          	addi	s0,sp,16
    //...
}
    80001330:	00813403          	ld	s0,8(sp)
    80001334:	01010113          	addi	sp,sp,16
    80001338:	00008067          	ret

000000008000133c <_ZN3TCBC1EPFvPvES0_S0_7Context>:
TCB::TCB(void (*function_body)(void *), void *arg, void *stack_space, Context context) {
    8000133c:	fd010113          	addi	sp,sp,-48
    80001340:	02113423          	sd	ra,40(sp)
    80001344:	02813023          	sd	s0,32(sp)
    80001348:	00913c23          	sd	s1,24(sp)
    8000134c:	03010413          	addi	s0,sp,48
    80001350:	00050493          	mv	s1,a0
    id = cnt++;
    80001354:	00003517          	auipc	a0,0x3
    80001358:	30c50513          	addi	a0,a0,780 # 80004660 <_ZN3TCB3cntE>
    8000135c:	00052683          	lw	a3,0(a0)
    80001360:	0016881b          	addiw	a6,a3,1
    80001364:	01052023          	sw	a6,0(a0)
    80001368:	00d4a023          	sw	a3,0(s1)
    status = RUNNABLE;
    8000136c:	0004ac23          	sw	zero,24(s1)
    this -> context = context;
    80001370:	00e4b423          	sd	a4,8(s1)
    80001374:	00f4b823          	sd	a5,16(s1)
    this -> function_body = function_body;
    80001378:	02b4b023          	sd	a1,32(s1)
    this -> arg = arg;
    8000137c:	02c4b423          	sd	a2,40(s1)
    stack = MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    80001380:	00001537          	lui	a0,0x1
    80001384:	00000097          	auipc	ra,0x0
    80001388:	198080e7          	jalr	408(ra) # 8000151c <_ZN15MemoryAllocator9mem_allocEm>
    8000138c:	02a4b823          	sd	a0,48(s1)
    time_slice = DEFAULT_TIME_SLICE;
    80001390:	00200793          	li	a5,2
    80001394:	02f4bc23          	sd	a5,56(s1)
}
    80001398:	02813083          	ld	ra,40(sp)
    8000139c:	02013403          	ld	s0,32(sp)
    800013a0:	01813483          	ld	s1,24(sp)
    800013a4:	03010113          	addi	sp,sp,48
    800013a8:	00008067          	ret

00000000800013ac <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_space) {
    800013ac:	fa010113          	addi	sp,sp,-96
    800013b0:	04113c23          	sd	ra,88(sp)
    800013b4:	04813823          	sd	s0,80(sp)
    800013b8:	04913423          	sd	s1,72(sp)
    800013bc:	05213023          	sd	s2,64(sp)
    800013c0:	03313c23          	sd	s3,56(sp)
    800013c4:	03413823          	sd	s4,48(sp)
    800013c8:	03513423          	sd	s5,40(sp)
    800013cc:	06010413          	addi	s0,sp,96
    800013d0:	00050993          	mv	s3,a0
    800013d4:	00058a13          	mv	s4,a1
    800013d8:	00060a93          	mv	s5,a2
    800013dc:	00068913          	mv	s2,a3
            (uint64) stack_space + DEFAULT_STACK_SIZE - 1
    800013e0:	000017b7          	lui	a5,0x1
    800013e4:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800013e8:	00f687b3          	add	a5,a3,a5
    *handle = new TCB(start_routine, arg, stack_space, context);
    800013ec:	00000717          	auipc	a4,0x0
    800013f0:	f3870713          	addi	a4,a4,-200 # 80001324 <_ZN3TCB16wrapper_functionEv>
    800013f4:	fae43823          	sd	a4,-80(s0)
    800013f8:	faf43c23          	sd	a5,-72(s0)
    800013fc:	04000513          	li	a0,64
    80001400:	00000097          	auipc	ra,0x0
    80001404:	088080e7          	jalr	136(ra) # 80001488 <_Znwm>
    80001408:	00050493          	mv	s1,a0
    8000140c:	fb043703          	ld	a4,-80(s0)
    80001410:	fb843783          	ld	a5,-72(s0)
    80001414:	00090693          	mv	a3,s2
    80001418:	000a8613          	mv	a2,s5
    8000141c:	000a0593          	mv	a1,s4
    80001420:	00000097          	auipc	ra,0x0
    80001424:	f1c080e7          	jalr	-228(ra) # 8000133c <_ZN3TCBC1EPFvPvES0_S0_7Context>
    80001428:	0099b023          	sd	s1,0(s3)
    return (*handle) -> id;
    8000142c:	0004a503          	lw	a0,0(s1)
}
    80001430:	05813083          	ld	ra,88(sp)
    80001434:	05013403          	ld	s0,80(sp)
    80001438:	04813483          	ld	s1,72(sp)
    8000143c:	04013903          	ld	s2,64(sp)
    80001440:	03813983          	ld	s3,56(sp)
    80001444:	03013a03          	ld	s4,48(sp)
    80001448:	02813a83          	ld	s5,40(sp)
    8000144c:	06010113          	addi	sp,sp,96
    80001450:	00008067          	ret
    80001454:	00050913          	mv	s2,a0
    *handle = new TCB(start_routine, arg, stack_space, context);
    80001458:	00048513          	mv	a0,s1
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	054080e7          	jalr	84(ra) # 800014b0 <_ZdlPv>
    80001464:	00090513          	mv	a0,s2
    80001468:	00004097          	auipc	ra,0x4
    8000146c:	2e0080e7          	jalr	736(ra) # 80005748 <_Unwind_Resume>

0000000080001470 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16
}
    8000147c:	00813403          	ld	s0,8(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_Znwm>:
#include "../h/syscall_cpp.hpp"

void* operator new(size_t size){
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00113423          	sd	ra,8(sp)
    80001490:	00813023          	sd	s0,0(sp)
    80001494:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001498:	00000097          	auipc	ra,0x0
    8000149c:	ca8080e7          	jalr	-856(ra) # 80001140 <_Z9mem_allocm>
}
    800014a0:	00813083          	ld	ra,8(sp)
    800014a4:	00013403          	ld	s0,0(sp)
    800014a8:	01010113          	addi	sp,sp,16
    800014ac:	00008067          	ret

00000000800014b0 <_ZdlPv>:

void operator delete(void* p){
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00113423          	sd	ra,8(sp)
    800014b8:	00813023          	sd	s0,0(sp)
    800014bc:	01010413          	addi	s0,sp,16
    mem_free(p);
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	ccc080e7          	jalr	-820(ra) # 8000118c <_Z8mem_freePv>
    800014c8:	00813083          	ld	ra,8(sp)
    800014cc:	00013403          	ld	s0,0(sp)
    800014d0:	01010113          	addi	sp,sp,16
    800014d4:	00008067          	ret

00000000800014d8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
    }
    return instance;
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    800014d8:	ff010113          	addi	sp,sp,-16
    800014dc:	00813423          	sd	s0,8(sp)
    800014e0:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    800014e4:	00853783          	ld	a5,8(a0) # 1008 <_entry-0x7fffeff8>
    800014e8:	02078463          	beqz	a5,80001510 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    800014ec:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    800014f0:	01053783          	ld	a5,16(a0)
    800014f4:	00078863          	beqz	a5,80001504 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    800014f8:	00060463          	beqz	a2,80001500 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    800014fc:	00853583          	ld	a1,8(a0)
    80001500:	00b7b423          	sd	a1,8(a5)
}
    80001504:	00813403          	ld	s0,8(sp)
    80001508:	01010113          	addi	sp,sp,16
    8000150c:	00008067          	ret
    else freeSegHead = nextSeg;
    80001510:	00003797          	auipc	a5,0x3
    80001514:	14b7bc23          	sd	a1,344(a5) # 80004668 <_ZN15MemoryAllocator11freeSegHeadE>
    80001518:	fd9ff06f          	j	800014f0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

000000008000151c <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` bytes, but round up to MEM_BLOCK_SIZE
void *MemoryAllocator::mem_alloc(size_t size) {
    8000151c:	fe010113          	addi	sp,sp,-32
    80001520:	00113c23          	sd	ra,24(sp)
    80001524:	00813823          	sd	s0,16(sp)
    80001528:	00913423          	sd	s1,8(sp)
    8000152c:	01213023          	sd	s2,0(sp)
    80001530:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80001534:	10050063          	beqz	a0,80001634 <_ZN15MemoryAllocator9mem_allocEm+0x118>
    size_t bytesToAllocate = (size + sizeof(MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80001538:	05750513          	addi	a0,a0,87
    8000153c:	fc057913          	andi	s2,a0,-64
    MemSeg *tmp = freeSegHead;
    80001540:	00003497          	auipc	s1,0x3
    80001544:	1284b483          	ld	s1,296(s1) # 80004668 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80001548:	0a048e63          	beqz	s1,80001604 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
        if (tmp -> size < bytesToAllocate) {
    8000154c:	0004b783          	ld	a5,0(s1)
    80001550:	0527e463          	bltu	a5,s2,80001598 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80001554:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    80001558:	01700713          	li	a4,23
    8000155c:	04f76263          	bltu	a4,a5,800015a0 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80001560:	00000613          	li	a2,0
    80001564:	0104b583          	ld	a1,16(s1)
    80001568:	00048513          	mv	a0,s1
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	f6c080e7          	jalr	-148(ra) # 800014d8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    80001574:	00003797          	auipc	a5,0x3
    80001578:	0fc7b783          	ld	a5,252(a5) # 80004670 <_ZN15MemoryAllocator11usedSegHeadE>
    8000157c:	04078863          	beqz	a5,800015cc <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    80001580:	0497fa63          	bgeu	a5,s1,800015d4 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80001584:	00078713          	mv	a4,a5
    80001588:	0107b783          	ld	a5,16(a5)
    8000158c:	04078663          	beqz	a5,800015d8 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    80001590:	fe97eae3          	bltu	a5,s1,80001584 <_ZN15MemoryAllocator9mem_allocEm+0x68>
    80001594:	0440006f          	j	800015d8 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            tmp = tmp -> next;
    80001598:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    8000159c:	fadff06f          	j	80001548 <_ZN15MemoryAllocator9mem_allocEm+0x2c>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800015a0:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    800015a4:	0084b703          	ld	a4,8(s1)
    800015a8:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    800015ac:	0104b703          	ld	a4,16(s1)
    800015b0:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    800015b4:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    800015b8:	00100613          	li	a2,1
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00000097          	auipc	ra,0x0
    800015c4:	f18080e7          	jalr	-232(ra) # 800014d8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    800015c8:	fadff06f          	j	80001574 <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = 0;
    800015cc:	00078713          	mv	a4,a5
    800015d0:	0080006f          	j	800015d8 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    800015d4:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    800015d8:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    800015dc:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800015e0:	04070063          	beqz	a4,80001620 <_ZN15MemoryAllocator9mem_allocEm+0x104>
    800015e4:	01073783          	ld	a5,16(a4)
    800015e8:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    800015ec:	02070e63          	beqz	a4,80001628 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    800015f0:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    800015f4:	0104b783          	ld	a5,16(s1)
    800015f8:	00078463          	beqz	a5,80001600 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
    800015fc:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80001600:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80001604:	00048513          	mv	a0,s1
    80001608:	01813083          	ld	ra,24(sp)
    8000160c:	01013403          	ld	s0,16(sp)
    80001610:	00813483          	ld	s1,8(sp)
    80001614:	00013903          	ld	s2,0(sp)
    80001618:	02010113          	addi	sp,sp,32
    8000161c:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80001620:	00070793          	mv	a5,a4
    80001624:	fc5ff06f          	j	800015e8 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
        else usedSegHead = newUsed;
    80001628:	00003797          	auipc	a5,0x3
    8000162c:	0497b423          	sd	s1,72(a5) # 80004670 <_ZN15MemoryAllocator11usedSegHeadE>
    80001630:	fc5ff06f          	j	800015f4 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
    if (size <= 0) return nullptr;
    80001634:	00000493          	li	s1,0
    80001638:	fcdff06f          	j	80001604 <_ZN15MemoryAllocator9mem_allocEm+0xe8>

000000008000163c <_ZN15MemoryAllocator11getInstanceEv>:
    if (!instance) {
    8000163c:	00003517          	auipc	a0,0x3
    80001640:	03c53503          	ld	a0,60(a0) # 80004678 <_ZN15MemoryAllocator8instanceE>
    80001644:	00050463          	beqz	a0,8000164c <_ZN15MemoryAllocator11getInstanceEv+0x10>
}
    80001648:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    8000164c:	fe010113          	addi	sp,sp,-32
    80001650:	00113c23          	sd	ra,24(sp)
    80001654:	00813823          	sd	s0,16(sp)
    80001658:	00913423          	sd	s1,8(sp)
    8000165c:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80001660:	00003797          	auipc	a5,0x3
    80001664:	fa07b783          	ld	a5,-96(a5) # 80004600 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001668:	0007b783          	ld	a5,0(a5)
    8000166c:	00003497          	auipc	s1,0x3
    80001670:	ffc48493          	addi	s1,s1,-4 # 80004668 <_ZN15MemoryAllocator11freeSegHeadE>
    80001674:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80001678:	00003717          	auipc	a4,0x3
    8000167c:	f9873703          	ld	a4,-104(a4) # 80004610 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001680:	00073703          	ld	a4,0(a4)
    80001684:	40f70733          	sub	a4,a4,a5
    80001688:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    8000168c:	0004b783          	ld	a5,0(s1)
    80001690:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80001694:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80001698:	00100513          	li	a0,1
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	e80080e7          	jalr	-384(ra) # 8000151c <_ZN15MemoryAllocator9mem_allocEm>
    800016a4:	00a4b823          	sd	a0,16(s1)
}
    800016a8:	01813083          	ld	ra,24(sp)
    800016ac:	01013403          	ld	s0,16(sp)
    800016b0:	00813483          	ld	s1,8(sp)
    800016b4:	02010113          	addi	sp,sp,32
    800016b8:	00008067          	ret

00000000800016bc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00813423          	sd	s0,8(sp)
    800016c4:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    800016c8:	01053783          	ld	a5,16(a0)
    800016cc:	00078863          	beqz	a5,800016dc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800016d0:	00053703          	ld	a4,0(a0)
    800016d4:	00e506b3          	add	a3,a0,a4
    800016d8:	00d78863          	beq	a5,a3,800016e8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    800016dc:	00813403          	ld	s0,8(sp)
    800016e0:	01010113          	addi	sp,sp,16
    800016e4:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    800016e8:	0007b683          	ld	a3,0(a5)
    800016ec:	00d70733          	add	a4,a4,a3
    800016f0:	01870713          	addi	a4,a4,24
    800016f4:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    800016f8:	0107b783          	ld	a5,16(a5)
    800016fc:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80001700:	fc078ee3          	beqz	a5,800016dc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80001704:	00a7b423          	sd	a0,8(a5)
}
    80001708:	fd5ff06f          	j	800016dc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

000000008000170c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000170c:	14050263          	beqz	a0,80001850 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80001710:	fd010113          	addi	sp,sp,-48
    80001714:	02113423          	sd	ra,40(sp)
    80001718:	02813023          	sd	s0,32(sp)
    8000171c:	00913c23          	sd	s1,24(sp)
    80001720:	01213823          	sd	s2,16(sp)
    80001724:	01313423          	sd	s3,8(sp)
    80001728:	03010413          	addi	s0,sp,48
    8000172c:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001730:	00003797          	auipc	a5,0x3
    80001734:	ed07b783          	ld	a5,-304(a5) # 80004600 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001738:	0007b783          	ld	a5,0(a5)
    8000173c:	10f56e63          	bltu	a0,a5,80001858 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    80001740:	00003797          	auipc	a5,0x3
    80001744:	ed07b783          	ld	a5,-304(a5) # 80004610 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001748:	0007b783          	ld	a5,0(a5)
    8000174c:	10a7ea63          	bltu	a5,a0,80001860 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    80001750:	00003797          	auipc	a5,0x3
    80001754:	f207b783          	ld	a5,-224(a5) # 80004670 <_ZN15MemoryAllocator11usedSegHeadE>
    80001758:	10078863          	beqz	a5,80001868 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    8000175c:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001760:	00078863          	beqz	a5,80001770 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80001764:	08978e63          	beq	a5,s1,80001800 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001768:	0107b783          	ld	a5,16(a5)
    8000176c:	ff5ff06f          	j	80001760 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80001770:	00000793          	li	a5,0
    if (!found) return -3;
    80001774:	0e078e63          	beqz	a5,80001870 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    80001778:	00000613          	li	a2,0
    8000177c:	ff893583          	ld	a1,-8(s2)
    80001780:	00048513          	mv	a0,s1
    80001784:	00000097          	auipc	ra,0x0
    80001788:	d54080e7          	jalr	-684(ra) # 800014d8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    8000178c:	00003797          	auipc	a5,0x3
    80001790:	edc7b783          	ld	a5,-292(a5) # 80004668 <_ZN15MemoryAllocator11freeSegHeadE>
    80001794:	06078a63          	beqz	a5,80001808 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80001798:	08f4e463          	bltu	s1,a5,80001820 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    8000179c:	00078993          	mv	s3,a5
    800017a0:	0107b783          	ld	a5,16(a5)
    800017a4:	00078463          	beqz	a5,800017ac <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    800017a8:	fe97eae3          	bltu	a5,s1,8000179c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    800017ac:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    800017b0:	0109b783          	ld	a5,16(s3)
    800017b4:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    800017b8:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    800017bc:	ff893783          	ld	a5,-8(s2)
    800017c0:	00078463          	beqz	a5,800017c8 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    800017c4:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    800017c8:	00048513          	mv	a0,s1
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	ef0080e7          	jalr	-272(ra) # 800016bc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    800017d4:	00098513          	mv	a0,s3
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	ee4080e7          	jalr	-284(ra) # 800016bc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800017e0:	00000513          	li	a0,0
}
    800017e4:	02813083          	ld	ra,40(sp)
    800017e8:	02013403          	ld	s0,32(sp)
    800017ec:	01813483          	ld	s1,24(sp)
    800017f0:	01013903          	ld	s2,16(sp)
    800017f4:	00813983          	ld	s3,8(sp)
    800017f8:	03010113          	addi	sp,sp,48
    800017fc:	00008067          	ret
            found = true;
    80001800:	00100793          	li	a5,1
    80001804:	f71ff06f          	j	80001774 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80001808:	00003797          	auipc	a5,0x3
    8000180c:	e697b023          	sd	s1,-416(a5) # 80004668 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80001810:	fe093c23          	sd	zero,-8(s2)
    80001814:	fe093823          	sd	zero,-16(s2)
    return 0;
    80001818:	00000513          	li	a0,0
    8000181c:	fc9ff06f          	j	800017e4 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80001820:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80001824:	00003797          	auipc	a5,0x3
    80001828:	e4478793          	addi	a5,a5,-444 # 80004668 <_ZN15MemoryAllocator11freeSegHeadE>
    8000182c:	0007b703          	ld	a4,0(a5)
    80001830:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80001834:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80001838:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    8000183c:	00048513          	mv	a0,s1
    80001840:	00000097          	auipc	ra,0x0
    80001844:	e7c080e7          	jalr	-388(ra) # 800016bc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001848:	00000513          	li	a0,0
    8000184c:	f99ff06f          	j	800017e4 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001850:	fff00513          	li	a0,-1
}
    80001854:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001858:	fff00513          	li	a0,-1
    8000185c:	f89ff06f          	j	800017e4 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80001860:	fff00513          	li	a0,-1
    80001864:	f81ff06f          	j	800017e4 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    80001868:	ffe00513          	li	a0,-2
    8000186c:	f79ff06f          	j	800017e4 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    80001870:	ffd00513          	li	a0,-3
    80001874:	f71ff06f          	j	800017e4 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

0000000080001878 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80001878:	fe010113          	addi	sp,sp,-32
    8000187c:	00113c23          	sd	ra,24(sp)
    80001880:	00813823          	sd	s0,16(sp)
    80001884:	00913423          	sd	s1,8(sp)
    80001888:	02010413          	addi	s0,sp,32
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    8000188c:	00003497          	auipc	s1,0x3
    80001890:	ddc4b483          	ld	s1,-548(s1) # 80004668 <_ZN15MemoryAllocator11freeSegHeadE>
    80001894:	00048c63          	beqz	s1,800018ac <_ZN15MemoryAllocator5printEv+0x34>
    80001898:	06600513          	li	a0,102
    8000189c:	00002097          	auipc	ra,0x2
    800018a0:	1c0080e7          	jalr	448(ra) # 80003a5c <__putc>
    800018a4:	0104b483          	ld	s1,16(s1)
    800018a8:	fedff06f          	j	80001894 <_ZN15MemoryAllocator5printEv+0x1c>
    __putc('\n');
    800018ac:	00a00513          	li	a0,10
    800018b0:	00002097          	auipc	ra,0x2
    800018b4:	1ac080e7          	jalr	428(ra) # 80003a5c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    800018b8:	00003497          	auipc	s1,0x3
    800018bc:	db84b483          	ld	s1,-584(s1) # 80004670 <_ZN15MemoryAllocator11usedSegHeadE>
    800018c0:	00048c63          	beqz	s1,800018d8 <_ZN15MemoryAllocator5printEv+0x60>
    800018c4:	07500513          	li	a0,117
    800018c8:	00002097          	auipc	ra,0x2
    800018cc:	194080e7          	jalr	404(ra) # 80003a5c <__putc>
    800018d0:	0104b483          	ld	s1,16(s1)
    800018d4:	fedff06f          	j	800018c0 <_ZN15MemoryAllocator5printEv+0x48>
    __putc('\n');
    800018d8:	00a00513          	li	a0,10
    800018dc:	00002097          	auipc	ra,0x2
    800018e0:	180080e7          	jalr	384(ra) # 80003a5c <__putc>
}
    800018e4:	01813083          	ld	ra,24(sp)
    800018e8:	01013403          	ld	s0,16(sp)
    800018ec:	00813483          	ld	s1,8(sp)
    800018f0:	02010113          	addi	sp,sp,32
    800018f4:	00008067          	ret

00000000800018f8 <interruptRoutine>:
#include "../lib/hw.h"
#include "../h/syscall_c.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/risc-v.hpp"

extern "C" void interruptRoutine() {
    800018f8:	fe010113          	addi	sp,sp,-32
    800018fc:	00113c23          	sd	ra,24(sp)
    80001900:	00813823          	sd	s0,16(sp)
    80001904:	02010413          	addi	s0,sp,32
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80001908:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    8000190c:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80001910:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80001914:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80001918:	00070693          	mv	a3,a4

};

inline uint64 RiscV::read_scause() {
    uint64 volatile scause;
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    8000191c:	14202773          	csrr	a4,scause
    80001920:	fee43423          	sd	a4,-24(s0)
    return scause;
    80001924:	fe843803          	ld	a6,-24(s0)

    /// illegal instruction
    if (RiscV::read_scause() == (uint64) 2) {
    80001928:	00200713          	li	a4,2
    8000192c:	02e80663          	beq	a6,a4,80001958 <interruptRoutine+0x60>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    switch(syscall_code) {
    80001930:	01100713          	li	a4,17
    80001934:	04e78e63          	beq	a5,a4,80001990 <interruptRoutine+0x98>
    80001938:	02f76c63          	bltu	a4,a5,80001970 <interruptRoutine+0x78>
    8000193c:	00100713          	li	a4,1
    80001940:	04e78263          	beq	a5,a4,80001984 <interruptRoutine+0x8c>
    80001944:	00200713          	li	a4,2
    80001948:	00e79c63          	bne	a5,a4,80001960 <interruptRoutine+0x68>
        case MEM_ALLOC:
            MemoryAllocator::mem_alloc((size_t) a1);
            break;
        case MEM_FREE:
            MemoryAllocator::mem_free((void *) a1);
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	dc0080e7          	jalr	-576(ra) # 8000170c <_ZN15MemoryAllocator8mem_freeEPv>
            break;
    80001954:	00c0006f          	j	80001960 <interruptRoutine+0x68>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80001958:	00100793          	li	a5,1
    8000195c:	00078513          	mv	a0,a5
//            IO::_putc((char) arg1);
            break;
        default:
            break;
    }
    80001960:	01813083          	ld	ra,24(sp)
    80001964:	01013403          	ld	s0,16(sp)
    80001968:	02010113          	addi	sp,sp,32
    8000196c:	00008067          	ret
    switch(syscall_code) {
    80001970:	01200713          	li	a4,18
    80001974:	fee796e3          	bne	a5,a4,80001960 <interruptRoutine+0x68>
            TCB::thread_exit();
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	af8080e7          	jalr	-1288(ra) # 80001470 <_ZN3TCB11thread_exitEv>
            break;
    80001980:	fe1ff06f          	j	80001960 <interruptRoutine+0x68>
            MemoryAllocator::mem_alloc((size_t) a1);
    80001984:	00000097          	auipc	ra,0x0
    80001988:	b98080e7          	jalr	-1128(ra) # 8000151c <_ZN15MemoryAllocator9mem_allocEm>
            break;
    8000198c:	fd5ff06f          	j	80001960 <interruptRoutine+0x68>
            TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80001990:	00000097          	auipc	ra,0x0
    80001994:	a1c080e7          	jalr	-1508(ra) # 800013ac <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
            break;
    80001998:	fc9ff06f          	j	80001960 <interruptRoutine+0x68>

000000008000199c <start>:
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00813423          	sd	s0,8(sp)
    800019a4:	01010413          	addi	s0,sp,16
    800019a8:	300027f3          	csrr	a5,mstatus
    800019ac:	ffffe737          	lui	a4,0xffffe
    800019b0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8f1f>
    800019b4:	00e7f7b3          	and	a5,a5,a4
    800019b8:	00001737          	lui	a4,0x1
    800019bc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800019c0:	00e7e7b3          	or	a5,a5,a4
    800019c4:	30079073          	csrw	mstatus,a5
    800019c8:	00000797          	auipc	a5,0x0
    800019cc:	16078793          	addi	a5,a5,352 # 80001b28 <system_main>
    800019d0:	34179073          	csrw	mepc,a5
    800019d4:	00000793          	li	a5,0
    800019d8:	18079073          	csrw	satp,a5
    800019dc:	000107b7          	lui	a5,0x10
    800019e0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800019e4:	30279073          	csrw	medeleg,a5
    800019e8:	30379073          	csrw	mideleg,a5
    800019ec:	104027f3          	csrr	a5,sie
    800019f0:	2227e793          	ori	a5,a5,546
    800019f4:	10479073          	csrw	sie,a5
    800019f8:	fff00793          	li	a5,-1
    800019fc:	00a7d793          	srli	a5,a5,0xa
    80001a00:	3b079073          	csrw	pmpaddr0,a5
    80001a04:	00f00793          	li	a5,15
    80001a08:	3a079073          	csrw	pmpcfg0,a5
    80001a0c:	f14027f3          	csrr	a5,mhartid
    80001a10:	0200c737          	lui	a4,0x200c
    80001a14:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001a18:	0007869b          	sext.w	a3,a5
    80001a1c:	00269713          	slli	a4,a3,0x2
    80001a20:	000f4637          	lui	a2,0xf4
    80001a24:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001a28:	00d70733          	add	a4,a4,a3
    80001a2c:	0037979b          	slliw	a5,a5,0x3
    80001a30:	020046b7          	lui	a3,0x2004
    80001a34:	00d787b3          	add	a5,a5,a3
    80001a38:	00c585b3          	add	a1,a1,a2
    80001a3c:	00371693          	slli	a3,a4,0x3
    80001a40:	00003717          	auipc	a4,0x3
    80001a44:	c4070713          	addi	a4,a4,-960 # 80004680 <timer_scratch>
    80001a48:	00b7b023          	sd	a1,0(a5)
    80001a4c:	00d70733          	add	a4,a4,a3
    80001a50:	00f73c23          	sd	a5,24(a4)
    80001a54:	02c73023          	sd	a2,32(a4)
    80001a58:	34071073          	csrw	mscratch,a4
    80001a5c:	00000797          	auipc	a5,0x0
    80001a60:	6e478793          	addi	a5,a5,1764 # 80002140 <timervec>
    80001a64:	30579073          	csrw	mtvec,a5
    80001a68:	300027f3          	csrr	a5,mstatus
    80001a6c:	0087e793          	ori	a5,a5,8
    80001a70:	30079073          	csrw	mstatus,a5
    80001a74:	304027f3          	csrr	a5,mie
    80001a78:	0807e793          	ori	a5,a5,128
    80001a7c:	30479073          	csrw	mie,a5
    80001a80:	f14027f3          	csrr	a5,mhartid
    80001a84:	0007879b          	sext.w	a5,a5
    80001a88:	00078213          	mv	tp,a5
    80001a8c:	30200073          	mret
    80001a90:	00813403          	ld	s0,8(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <timerinit>:
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00813423          	sd	s0,8(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    80001aa8:	f14027f3          	csrr	a5,mhartid
    80001aac:	0200c737          	lui	a4,0x200c
    80001ab0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ab4:	0007869b          	sext.w	a3,a5
    80001ab8:	00269713          	slli	a4,a3,0x2
    80001abc:	000f4637          	lui	a2,0xf4
    80001ac0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ac4:	00d70733          	add	a4,a4,a3
    80001ac8:	0037979b          	slliw	a5,a5,0x3
    80001acc:	020046b7          	lui	a3,0x2004
    80001ad0:	00d787b3          	add	a5,a5,a3
    80001ad4:	00c585b3          	add	a1,a1,a2
    80001ad8:	00371693          	slli	a3,a4,0x3
    80001adc:	00003717          	auipc	a4,0x3
    80001ae0:	ba470713          	addi	a4,a4,-1116 # 80004680 <timer_scratch>
    80001ae4:	00b7b023          	sd	a1,0(a5)
    80001ae8:	00d70733          	add	a4,a4,a3
    80001aec:	00f73c23          	sd	a5,24(a4)
    80001af0:	02c73023          	sd	a2,32(a4)
    80001af4:	34071073          	csrw	mscratch,a4
    80001af8:	00000797          	auipc	a5,0x0
    80001afc:	64878793          	addi	a5,a5,1608 # 80002140 <timervec>
    80001b00:	30579073          	csrw	mtvec,a5
    80001b04:	300027f3          	csrr	a5,mstatus
    80001b08:	0087e793          	ori	a5,a5,8
    80001b0c:	30079073          	csrw	mstatus,a5
    80001b10:	304027f3          	csrr	a5,mie
    80001b14:	0807e793          	ori	a5,a5,128
    80001b18:	30479073          	csrw	mie,a5
    80001b1c:	00813403          	ld	s0,8(sp)
    80001b20:	01010113          	addi	sp,sp,16
    80001b24:	00008067          	ret

0000000080001b28 <system_main>:
    80001b28:	fe010113          	addi	sp,sp,-32
    80001b2c:	00813823          	sd	s0,16(sp)
    80001b30:	00913423          	sd	s1,8(sp)
    80001b34:	00113c23          	sd	ra,24(sp)
    80001b38:	02010413          	addi	s0,sp,32
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	0c4080e7          	jalr	196(ra) # 80001c00 <cpuid>
    80001b44:	00003497          	auipc	s1,0x3
    80001b48:	aec48493          	addi	s1,s1,-1300 # 80004630 <started>
    80001b4c:	02050263          	beqz	a0,80001b70 <system_main+0x48>
    80001b50:	0004a783          	lw	a5,0(s1)
    80001b54:	0007879b          	sext.w	a5,a5
    80001b58:	fe078ce3          	beqz	a5,80001b50 <system_main+0x28>
    80001b5c:	0ff0000f          	fence
    80001b60:	00002517          	auipc	a0,0x2
    80001b64:	4f050513          	addi	a0,a0,1264 # 80004050 <CONSOLE_STATUS+0x40>
    80001b68:	00001097          	auipc	ra,0x1
    80001b6c:	a74080e7          	jalr	-1420(ra) # 800025dc <panic>
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	9c8080e7          	jalr	-1592(ra) # 80002538 <consoleinit>
    80001b78:	00001097          	auipc	ra,0x1
    80001b7c:	154080e7          	jalr	340(ra) # 80002ccc <printfinit>
    80001b80:	00002517          	auipc	a0,0x2
    80001b84:	5b050513          	addi	a0,a0,1456 # 80004130 <CONSOLE_STATUS+0x120>
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	ab0080e7          	jalr	-1360(ra) # 80002638 <__printf>
    80001b90:	00002517          	auipc	a0,0x2
    80001b94:	49050513          	addi	a0,a0,1168 # 80004020 <CONSOLE_STATUS+0x10>
    80001b98:	00001097          	auipc	ra,0x1
    80001b9c:	aa0080e7          	jalr	-1376(ra) # 80002638 <__printf>
    80001ba0:	00002517          	auipc	a0,0x2
    80001ba4:	59050513          	addi	a0,a0,1424 # 80004130 <CONSOLE_STATUS+0x120>
    80001ba8:	00001097          	auipc	ra,0x1
    80001bac:	a90080e7          	jalr	-1392(ra) # 80002638 <__printf>
    80001bb0:	00001097          	auipc	ra,0x1
    80001bb4:	4a8080e7          	jalr	1192(ra) # 80003058 <kinit>
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	148080e7          	jalr	328(ra) # 80001d00 <trapinit>
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	16c080e7          	jalr	364(ra) # 80001d2c <trapinithart>
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	5b8080e7          	jalr	1464(ra) # 80002180 <plicinit>
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	5d8080e7          	jalr	1496(ra) # 800021a8 <plicinithart>
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	078080e7          	jalr	120(ra) # 80001c50 <userinit>
    80001be0:	0ff0000f          	fence
    80001be4:	00100793          	li	a5,1
    80001be8:	00002517          	auipc	a0,0x2
    80001bec:	45050513          	addi	a0,a0,1104 # 80004038 <CONSOLE_STATUS+0x28>
    80001bf0:	00f4a023          	sw	a5,0(s1)
    80001bf4:	00001097          	auipc	ra,0x1
    80001bf8:	a44080e7          	jalr	-1468(ra) # 80002638 <__printf>
    80001bfc:	0000006f          	j	80001bfc <system_main+0xd4>

0000000080001c00 <cpuid>:
    80001c00:	ff010113          	addi	sp,sp,-16
    80001c04:	00813423          	sd	s0,8(sp)
    80001c08:	01010413          	addi	s0,sp,16
    80001c0c:	00020513          	mv	a0,tp
    80001c10:	00813403          	ld	s0,8(sp)
    80001c14:	0005051b          	sext.w	a0,a0
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <mycpu>:
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00813423          	sd	s0,8(sp)
    80001c28:	01010413          	addi	s0,sp,16
    80001c2c:	00020793          	mv	a5,tp
    80001c30:	00813403          	ld	s0,8(sp)
    80001c34:	0007879b          	sext.w	a5,a5
    80001c38:	00779793          	slli	a5,a5,0x7
    80001c3c:	00004517          	auipc	a0,0x4
    80001c40:	a7450513          	addi	a0,a0,-1420 # 800056b0 <cpus>
    80001c44:	00f50533          	add	a0,a0,a5
    80001c48:	01010113          	addi	sp,sp,16
    80001c4c:	00008067          	ret

0000000080001c50 <userinit>:
    80001c50:	ff010113          	addi	sp,sp,-16
    80001c54:	00813423          	sd	s0,8(sp)
    80001c58:	01010413          	addi	s0,sp,16
    80001c5c:	00813403          	ld	s0,8(sp)
    80001c60:	01010113          	addi	sp,sp,16
    80001c64:	fffff317          	auipc	t1,0xfffff
    80001c68:	64830067          	jr	1608(t1) # 800012ac <main>

0000000080001c6c <either_copyout>:
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00813023          	sd	s0,0(sp)
    80001c74:	00113423          	sd	ra,8(sp)
    80001c78:	01010413          	addi	s0,sp,16
    80001c7c:	02051663          	bnez	a0,80001ca8 <either_copyout+0x3c>
    80001c80:	00058513          	mv	a0,a1
    80001c84:	00060593          	mv	a1,a2
    80001c88:	0006861b          	sext.w	a2,a3
    80001c8c:	00002097          	auipc	ra,0x2
    80001c90:	c58080e7          	jalr	-936(ra) # 800038e4 <__memmove>
    80001c94:	00813083          	ld	ra,8(sp)
    80001c98:	00013403          	ld	s0,0(sp)
    80001c9c:	00000513          	li	a0,0
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret
    80001ca8:	00002517          	auipc	a0,0x2
    80001cac:	3d050513          	addi	a0,a0,976 # 80004078 <CONSOLE_STATUS+0x68>
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	92c080e7          	jalr	-1748(ra) # 800025dc <panic>

0000000080001cb8 <either_copyin>:
    80001cb8:	ff010113          	addi	sp,sp,-16
    80001cbc:	00813023          	sd	s0,0(sp)
    80001cc0:	00113423          	sd	ra,8(sp)
    80001cc4:	01010413          	addi	s0,sp,16
    80001cc8:	02059463          	bnez	a1,80001cf0 <either_copyin+0x38>
    80001ccc:	00060593          	mv	a1,a2
    80001cd0:	0006861b          	sext.w	a2,a3
    80001cd4:	00002097          	auipc	ra,0x2
    80001cd8:	c10080e7          	jalr	-1008(ra) # 800038e4 <__memmove>
    80001cdc:	00813083          	ld	ra,8(sp)
    80001ce0:	00013403          	ld	s0,0(sp)
    80001ce4:	00000513          	li	a0,0
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret
    80001cf0:	00002517          	auipc	a0,0x2
    80001cf4:	3b050513          	addi	a0,a0,944 # 800040a0 <CONSOLE_STATUS+0x90>
    80001cf8:	00001097          	auipc	ra,0x1
    80001cfc:	8e4080e7          	jalr	-1820(ra) # 800025dc <panic>

0000000080001d00 <trapinit>:
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00813423          	sd	s0,8(sp)
    80001d08:	01010413          	addi	s0,sp,16
    80001d0c:	00813403          	ld	s0,8(sp)
    80001d10:	00002597          	auipc	a1,0x2
    80001d14:	3b858593          	addi	a1,a1,952 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001d18:	00004517          	auipc	a0,0x4
    80001d1c:	a1850513          	addi	a0,a0,-1512 # 80005730 <tickslock>
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00001317          	auipc	t1,0x1
    80001d28:	5c430067          	jr	1476(t1) # 800032e8 <initlock>

0000000080001d2c <trapinithart>:
    80001d2c:	ff010113          	addi	sp,sp,-16
    80001d30:	00813423          	sd	s0,8(sp)
    80001d34:	01010413          	addi	s0,sp,16
    80001d38:	00000797          	auipc	a5,0x0
    80001d3c:	2f878793          	addi	a5,a5,760 # 80002030 <kernelvec>
    80001d40:	10579073          	csrw	stvec,a5
    80001d44:	00813403          	ld	s0,8(sp)
    80001d48:	01010113          	addi	sp,sp,16
    80001d4c:	00008067          	ret

0000000080001d50 <usertrap>:
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00813423          	sd	s0,8(sp)
    80001d58:	01010413          	addi	s0,sp,16
    80001d5c:	00813403          	ld	s0,8(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <usertrapret>:
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00813423          	sd	s0,8(sp)
    80001d70:	01010413          	addi	s0,sp,16
    80001d74:	00813403          	ld	s0,8(sp)
    80001d78:	01010113          	addi	sp,sp,16
    80001d7c:	00008067          	ret

0000000080001d80 <kerneltrap>:
    80001d80:	fe010113          	addi	sp,sp,-32
    80001d84:	00813823          	sd	s0,16(sp)
    80001d88:	00113c23          	sd	ra,24(sp)
    80001d8c:	00913423          	sd	s1,8(sp)
    80001d90:	02010413          	addi	s0,sp,32
    80001d94:	142025f3          	csrr	a1,scause
    80001d98:	100027f3          	csrr	a5,sstatus
    80001d9c:	0027f793          	andi	a5,a5,2
    80001da0:	10079c63          	bnez	a5,80001eb8 <kerneltrap+0x138>
    80001da4:	142027f3          	csrr	a5,scause
    80001da8:	0207ce63          	bltz	a5,80001de4 <kerneltrap+0x64>
    80001dac:	00002517          	auipc	a0,0x2
    80001db0:	36450513          	addi	a0,a0,868 # 80004110 <CONSOLE_STATUS+0x100>
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	884080e7          	jalr	-1916(ra) # 80002638 <__printf>
    80001dbc:	141025f3          	csrr	a1,sepc
    80001dc0:	14302673          	csrr	a2,stval
    80001dc4:	00002517          	auipc	a0,0x2
    80001dc8:	35c50513          	addi	a0,a0,860 # 80004120 <CONSOLE_STATUS+0x110>
    80001dcc:	00001097          	auipc	ra,0x1
    80001dd0:	86c080e7          	jalr	-1940(ra) # 80002638 <__printf>
    80001dd4:	00002517          	auipc	a0,0x2
    80001dd8:	36450513          	addi	a0,a0,868 # 80004138 <CONSOLE_STATUS+0x128>
    80001ddc:	00001097          	auipc	ra,0x1
    80001de0:	800080e7          	jalr	-2048(ra) # 800025dc <panic>
    80001de4:	0ff7f713          	andi	a4,a5,255
    80001de8:	00900693          	li	a3,9
    80001dec:	04d70063          	beq	a4,a3,80001e2c <kerneltrap+0xac>
    80001df0:	fff00713          	li	a4,-1
    80001df4:	03f71713          	slli	a4,a4,0x3f
    80001df8:	00170713          	addi	a4,a4,1
    80001dfc:	fae798e3          	bne	a5,a4,80001dac <kerneltrap+0x2c>
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	e00080e7          	jalr	-512(ra) # 80001c00 <cpuid>
    80001e08:	06050663          	beqz	a0,80001e74 <kerneltrap+0xf4>
    80001e0c:	144027f3          	csrr	a5,sip
    80001e10:	ffd7f793          	andi	a5,a5,-3
    80001e14:	14479073          	csrw	sip,a5
    80001e18:	01813083          	ld	ra,24(sp)
    80001e1c:	01013403          	ld	s0,16(sp)
    80001e20:	00813483          	ld	s1,8(sp)
    80001e24:	02010113          	addi	sp,sp,32
    80001e28:	00008067          	ret
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	3c8080e7          	jalr	968(ra) # 800021f4 <plic_claim>
    80001e34:	00a00793          	li	a5,10
    80001e38:	00050493          	mv	s1,a0
    80001e3c:	06f50863          	beq	a0,a5,80001eac <kerneltrap+0x12c>
    80001e40:	fc050ce3          	beqz	a0,80001e18 <kerneltrap+0x98>
    80001e44:	00050593          	mv	a1,a0
    80001e48:	00002517          	auipc	a0,0x2
    80001e4c:	2a850513          	addi	a0,a0,680 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	7e8080e7          	jalr	2024(ra) # 80002638 <__printf>
    80001e58:	01013403          	ld	s0,16(sp)
    80001e5c:	01813083          	ld	ra,24(sp)
    80001e60:	00048513          	mv	a0,s1
    80001e64:	00813483          	ld	s1,8(sp)
    80001e68:	02010113          	addi	sp,sp,32
    80001e6c:	00000317          	auipc	t1,0x0
    80001e70:	3c030067          	jr	960(t1) # 8000222c <plic_complete>
    80001e74:	00004517          	auipc	a0,0x4
    80001e78:	8bc50513          	addi	a0,a0,-1860 # 80005730 <tickslock>
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	490080e7          	jalr	1168(ra) # 8000330c <acquire>
    80001e84:	00002717          	auipc	a4,0x2
    80001e88:	7b070713          	addi	a4,a4,1968 # 80004634 <ticks>
    80001e8c:	00072783          	lw	a5,0(a4)
    80001e90:	00004517          	auipc	a0,0x4
    80001e94:	8a050513          	addi	a0,a0,-1888 # 80005730 <tickslock>
    80001e98:	0017879b          	addiw	a5,a5,1
    80001e9c:	00f72023          	sw	a5,0(a4)
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	538080e7          	jalr	1336(ra) # 800033d8 <release>
    80001ea8:	f65ff06f          	j	80001e0c <kerneltrap+0x8c>
    80001eac:	00001097          	auipc	ra,0x1
    80001eb0:	094080e7          	jalr	148(ra) # 80002f40 <uartintr>
    80001eb4:	fa5ff06f          	j	80001e58 <kerneltrap+0xd8>
    80001eb8:	00002517          	auipc	a0,0x2
    80001ebc:	21850513          	addi	a0,a0,536 # 800040d0 <CONSOLE_STATUS+0xc0>
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	71c080e7          	jalr	1820(ra) # 800025dc <panic>

0000000080001ec8 <clockintr>:
    80001ec8:	fe010113          	addi	sp,sp,-32
    80001ecc:	00813823          	sd	s0,16(sp)
    80001ed0:	00913423          	sd	s1,8(sp)
    80001ed4:	00113c23          	sd	ra,24(sp)
    80001ed8:	02010413          	addi	s0,sp,32
    80001edc:	00004497          	auipc	s1,0x4
    80001ee0:	85448493          	addi	s1,s1,-1964 # 80005730 <tickslock>
    80001ee4:	00048513          	mv	a0,s1
    80001ee8:	00001097          	auipc	ra,0x1
    80001eec:	424080e7          	jalr	1060(ra) # 8000330c <acquire>
    80001ef0:	00002717          	auipc	a4,0x2
    80001ef4:	74470713          	addi	a4,a4,1860 # 80004634 <ticks>
    80001ef8:	00072783          	lw	a5,0(a4)
    80001efc:	01013403          	ld	s0,16(sp)
    80001f00:	01813083          	ld	ra,24(sp)
    80001f04:	00048513          	mv	a0,s1
    80001f08:	0017879b          	addiw	a5,a5,1
    80001f0c:	00813483          	ld	s1,8(sp)
    80001f10:	00f72023          	sw	a5,0(a4)
    80001f14:	02010113          	addi	sp,sp,32
    80001f18:	00001317          	auipc	t1,0x1
    80001f1c:	4c030067          	jr	1216(t1) # 800033d8 <release>

0000000080001f20 <devintr>:
    80001f20:	142027f3          	csrr	a5,scause
    80001f24:	00000513          	li	a0,0
    80001f28:	0007c463          	bltz	a5,80001f30 <devintr+0x10>
    80001f2c:	00008067          	ret
    80001f30:	fe010113          	addi	sp,sp,-32
    80001f34:	00813823          	sd	s0,16(sp)
    80001f38:	00113c23          	sd	ra,24(sp)
    80001f3c:	00913423          	sd	s1,8(sp)
    80001f40:	02010413          	addi	s0,sp,32
    80001f44:	0ff7f713          	andi	a4,a5,255
    80001f48:	00900693          	li	a3,9
    80001f4c:	04d70c63          	beq	a4,a3,80001fa4 <devintr+0x84>
    80001f50:	fff00713          	li	a4,-1
    80001f54:	03f71713          	slli	a4,a4,0x3f
    80001f58:	00170713          	addi	a4,a4,1
    80001f5c:	00e78c63          	beq	a5,a4,80001f74 <devintr+0x54>
    80001f60:	01813083          	ld	ra,24(sp)
    80001f64:	01013403          	ld	s0,16(sp)
    80001f68:	00813483          	ld	s1,8(sp)
    80001f6c:	02010113          	addi	sp,sp,32
    80001f70:	00008067          	ret
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	c8c080e7          	jalr	-884(ra) # 80001c00 <cpuid>
    80001f7c:	06050663          	beqz	a0,80001fe8 <devintr+0xc8>
    80001f80:	144027f3          	csrr	a5,sip
    80001f84:	ffd7f793          	andi	a5,a5,-3
    80001f88:	14479073          	csrw	sip,a5
    80001f8c:	01813083          	ld	ra,24(sp)
    80001f90:	01013403          	ld	s0,16(sp)
    80001f94:	00813483          	ld	s1,8(sp)
    80001f98:	00200513          	li	a0,2
    80001f9c:	02010113          	addi	sp,sp,32
    80001fa0:	00008067          	ret
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	250080e7          	jalr	592(ra) # 800021f4 <plic_claim>
    80001fac:	00a00793          	li	a5,10
    80001fb0:	00050493          	mv	s1,a0
    80001fb4:	06f50663          	beq	a0,a5,80002020 <devintr+0x100>
    80001fb8:	00100513          	li	a0,1
    80001fbc:	fa0482e3          	beqz	s1,80001f60 <devintr+0x40>
    80001fc0:	00048593          	mv	a1,s1
    80001fc4:	00002517          	auipc	a0,0x2
    80001fc8:	12c50513          	addi	a0,a0,300 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	66c080e7          	jalr	1644(ra) # 80002638 <__printf>
    80001fd4:	00048513          	mv	a0,s1
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	254080e7          	jalr	596(ra) # 8000222c <plic_complete>
    80001fe0:	00100513          	li	a0,1
    80001fe4:	f7dff06f          	j	80001f60 <devintr+0x40>
    80001fe8:	00003517          	auipc	a0,0x3
    80001fec:	74850513          	addi	a0,a0,1864 # 80005730 <tickslock>
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	31c080e7          	jalr	796(ra) # 8000330c <acquire>
    80001ff8:	00002717          	auipc	a4,0x2
    80001ffc:	63c70713          	addi	a4,a4,1596 # 80004634 <ticks>
    80002000:	00072783          	lw	a5,0(a4)
    80002004:	00003517          	auipc	a0,0x3
    80002008:	72c50513          	addi	a0,a0,1836 # 80005730 <tickslock>
    8000200c:	0017879b          	addiw	a5,a5,1
    80002010:	00f72023          	sw	a5,0(a4)
    80002014:	00001097          	auipc	ra,0x1
    80002018:	3c4080e7          	jalr	964(ra) # 800033d8 <release>
    8000201c:	f65ff06f          	j	80001f80 <devintr+0x60>
    80002020:	00001097          	auipc	ra,0x1
    80002024:	f20080e7          	jalr	-224(ra) # 80002f40 <uartintr>
    80002028:	fadff06f          	j	80001fd4 <devintr+0xb4>
    8000202c:	0000                	unimp
	...

0000000080002030 <kernelvec>:
    80002030:	f0010113          	addi	sp,sp,-256
    80002034:	00113023          	sd	ra,0(sp)
    80002038:	00213423          	sd	sp,8(sp)
    8000203c:	00313823          	sd	gp,16(sp)
    80002040:	00413c23          	sd	tp,24(sp)
    80002044:	02513023          	sd	t0,32(sp)
    80002048:	02613423          	sd	t1,40(sp)
    8000204c:	02713823          	sd	t2,48(sp)
    80002050:	02813c23          	sd	s0,56(sp)
    80002054:	04913023          	sd	s1,64(sp)
    80002058:	04a13423          	sd	a0,72(sp)
    8000205c:	04b13823          	sd	a1,80(sp)
    80002060:	04c13c23          	sd	a2,88(sp)
    80002064:	06d13023          	sd	a3,96(sp)
    80002068:	06e13423          	sd	a4,104(sp)
    8000206c:	06f13823          	sd	a5,112(sp)
    80002070:	07013c23          	sd	a6,120(sp)
    80002074:	09113023          	sd	a7,128(sp)
    80002078:	09213423          	sd	s2,136(sp)
    8000207c:	09313823          	sd	s3,144(sp)
    80002080:	09413c23          	sd	s4,152(sp)
    80002084:	0b513023          	sd	s5,160(sp)
    80002088:	0b613423          	sd	s6,168(sp)
    8000208c:	0b713823          	sd	s7,176(sp)
    80002090:	0b813c23          	sd	s8,184(sp)
    80002094:	0d913023          	sd	s9,192(sp)
    80002098:	0da13423          	sd	s10,200(sp)
    8000209c:	0db13823          	sd	s11,208(sp)
    800020a0:	0dc13c23          	sd	t3,216(sp)
    800020a4:	0fd13023          	sd	t4,224(sp)
    800020a8:	0fe13423          	sd	t5,232(sp)
    800020ac:	0ff13823          	sd	t6,240(sp)
    800020b0:	cd1ff0ef          	jal	ra,80001d80 <kerneltrap>
    800020b4:	00013083          	ld	ra,0(sp)
    800020b8:	00813103          	ld	sp,8(sp)
    800020bc:	01013183          	ld	gp,16(sp)
    800020c0:	02013283          	ld	t0,32(sp)
    800020c4:	02813303          	ld	t1,40(sp)
    800020c8:	03013383          	ld	t2,48(sp)
    800020cc:	03813403          	ld	s0,56(sp)
    800020d0:	04013483          	ld	s1,64(sp)
    800020d4:	04813503          	ld	a0,72(sp)
    800020d8:	05013583          	ld	a1,80(sp)
    800020dc:	05813603          	ld	a2,88(sp)
    800020e0:	06013683          	ld	a3,96(sp)
    800020e4:	06813703          	ld	a4,104(sp)
    800020e8:	07013783          	ld	a5,112(sp)
    800020ec:	07813803          	ld	a6,120(sp)
    800020f0:	08013883          	ld	a7,128(sp)
    800020f4:	08813903          	ld	s2,136(sp)
    800020f8:	09013983          	ld	s3,144(sp)
    800020fc:	09813a03          	ld	s4,152(sp)
    80002100:	0a013a83          	ld	s5,160(sp)
    80002104:	0a813b03          	ld	s6,168(sp)
    80002108:	0b013b83          	ld	s7,176(sp)
    8000210c:	0b813c03          	ld	s8,184(sp)
    80002110:	0c013c83          	ld	s9,192(sp)
    80002114:	0c813d03          	ld	s10,200(sp)
    80002118:	0d013d83          	ld	s11,208(sp)
    8000211c:	0d813e03          	ld	t3,216(sp)
    80002120:	0e013e83          	ld	t4,224(sp)
    80002124:	0e813f03          	ld	t5,232(sp)
    80002128:	0f013f83          	ld	t6,240(sp)
    8000212c:	10010113          	addi	sp,sp,256
    80002130:	10200073          	sret
    80002134:	00000013          	nop
    80002138:	00000013          	nop
    8000213c:	00000013          	nop

0000000080002140 <timervec>:
    80002140:	34051573          	csrrw	a0,mscratch,a0
    80002144:	00b53023          	sd	a1,0(a0)
    80002148:	00c53423          	sd	a2,8(a0)
    8000214c:	00d53823          	sd	a3,16(a0)
    80002150:	01853583          	ld	a1,24(a0)
    80002154:	02053603          	ld	a2,32(a0)
    80002158:	0005b683          	ld	a3,0(a1)
    8000215c:	00c686b3          	add	a3,a3,a2
    80002160:	00d5b023          	sd	a3,0(a1)
    80002164:	00200593          	li	a1,2
    80002168:	14459073          	csrw	sip,a1
    8000216c:	01053683          	ld	a3,16(a0)
    80002170:	00853603          	ld	a2,8(a0)
    80002174:	00053583          	ld	a1,0(a0)
    80002178:	34051573          	csrrw	a0,mscratch,a0
    8000217c:	30200073          	mret

0000000080002180 <plicinit>:
    80002180:	ff010113          	addi	sp,sp,-16
    80002184:	00813423          	sd	s0,8(sp)
    80002188:	01010413          	addi	s0,sp,16
    8000218c:	00813403          	ld	s0,8(sp)
    80002190:	0c0007b7          	lui	a5,0xc000
    80002194:	00100713          	li	a4,1
    80002198:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000219c:	00e7a223          	sw	a4,4(a5)
    800021a0:	01010113          	addi	sp,sp,16
    800021a4:	00008067          	ret

00000000800021a8 <plicinithart>:
    800021a8:	ff010113          	addi	sp,sp,-16
    800021ac:	00813023          	sd	s0,0(sp)
    800021b0:	00113423          	sd	ra,8(sp)
    800021b4:	01010413          	addi	s0,sp,16
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	a48080e7          	jalr	-1464(ra) # 80001c00 <cpuid>
    800021c0:	0085171b          	slliw	a4,a0,0x8
    800021c4:	0c0027b7          	lui	a5,0xc002
    800021c8:	00e787b3          	add	a5,a5,a4
    800021cc:	40200713          	li	a4,1026
    800021d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800021d4:	00813083          	ld	ra,8(sp)
    800021d8:	00013403          	ld	s0,0(sp)
    800021dc:	00d5151b          	slliw	a0,a0,0xd
    800021e0:	0c2017b7          	lui	a5,0xc201
    800021e4:	00a78533          	add	a0,a5,a0
    800021e8:	00052023          	sw	zero,0(a0)
    800021ec:	01010113          	addi	sp,sp,16
    800021f0:	00008067          	ret

00000000800021f4 <plic_claim>:
    800021f4:	ff010113          	addi	sp,sp,-16
    800021f8:	00813023          	sd	s0,0(sp)
    800021fc:	00113423          	sd	ra,8(sp)
    80002200:	01010413          	addi	s0,sp,16
    80002204:	00000097          	auipc	ra,0x0
    80002208:	9fc080e7          	jalr	-1540(ra) # 80001c00 <cpuid>
    8000220c:	00813083          	ld	ra,8(sp)
    80002210:	00013403          	ld	s0,0(sp)
    80002214:	00d5151b          	slliw	a0,a0,0xd
    80002218:	0c2017b7          	lui	a5,0xc201
    8000221c:	00a78533          	add	a0,a5,a0
    80002220:	00452503          	lw	a0,4(a0)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret

000000008000222c <plic_complete>:
    8000222c:	fe010113          	addi	sp,sp,-32
    80002230:	00813823          	sd	s0,16(sp)
    80002234:	00913423          	sd	s1,8(sp)
    80002238:	00113c23          	sd	ra,24(sp)
    8000223c:	02010413          	addi	s0,sp,32
    80002240:	00050493          	mv	s1,a0
    80002244:	00000097          	auipc	ra,0x0
    80002248:	9bc080e7          	jalr	-1604(ra) # 80001c00 <cpuid>
    8000224c:	01813083          	ld	ra,24(sp)
    80002250:	01013403          	ld	s0,16(sp)
    80002254:	00d5179b          	slliw	a5,a0,0xd
    80002258:	0c201737          	lui	a4,0xc201
    8000225c:	00f707b3          	add	a5,a4,a5
    80002260:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002264:	00813483          	ld	s1,8(sp)
    80002268:	02010113          	addi	sp,sp,32
    8000226c:	00008067          	ret

0000000080002270 <consolewrite>:
    80002270:	fb010113          	addi	sp,sp,-80
    80002274:	04813023          	sd	s0,64(sp)
    80002278:	04113423          	sd	ra,72(sp)
    8000227c:	02913c23          	sd	s1,56(sp)
    80002280:	03213823          	sd	s2,48(sp)
    80002284:	03313423          	sd	s3,40(sp)
    80002288:	03413023          	sd	s4,32(sp)
    8000228c:	01513c23          	sd	s5,24(sp)
    80002290:	05010413          	addi	s0,sp,80
    80002294:	06c05c63          	blez	a2,8000230c <consolewrite+0x9c>
    80002298:	00060993          	mv	s3,a2
    8000229c:	00050a13          	mv	s4,a0
    800022a0:	00058493          	mv	s1,a1
    800022a4:	00000913          	li	s2,0
    800022a8:	fff00a93          	li	s5,-1
    800022ac:	01c0006f          	j	800022c8 <consolewrite+0x58>
    800022b0:	fbf44503          	lbu	a0,-65(s0)
    800022b4:	0019091b          	addiw	s2,s2,1
    800022b8:	00148493          	addi	s1,s1,1
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	a9c080e7          	jalr	-1380(ra) # 80002d58 <uartputc>
    800022c4:	03298063          	beq	s3,s2,800022e4 <consolewrite+0x74>
    800022c8:	00048613          	mv	a2,s1
    800022cc:	00100693          	li	a3,1
    800022d0:	000a0593          	mv	a1,s4
    800022d4:	fbf40513          	addi	a0,s0,-65
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	9e0080e7          	jalr	-1568(ra) # 80001cb8 <either_copyin>
    800022e0:	fd5518e3          	bne	a0,s5,800022b0 <consolewrite+0x40>
    800022e4:	04813083          	ld	ra,72(sp)
    800022e8:	04013403          	ld	s0,64(sp)
    800022ec:	03813483          	ld	s1,56(sp)
    800022f0:	02813983          	ld	s3,40(sp)
    800022f4:	02013a03          	ld	s4,32(sp)
    800022f8:	01813a83          	ld	s5,24(sp)
    800022fc:	00090513          	mv	a0,s2
    80002300:	03013903          	ld	s2,48(sp)
    80002304:	05010113          	addi	sp,sp,80
    80002308:	00008067          	ret
    8000230c:	00000913          	li	s2,0
    80002310:	fd5ff06f          	j	800022e4 <consolewrite+0x74>

0000000080002314 <consoleread>:
    80002314:	f9010113          	addi	sp,sp,-112
    80002318:	06813023          	sd	s0,96(sp)
    8000231c:	04913c23          	sd	s1,88(sp)
    80002320:	05213823          	sd	s2,80(sp)
    80002324:	05313423          	sd	s3,72(sp)
    80002328:	05413023          	sd	s4,64(sp)
    8000232c:	03513c23          	sd	s5,56(sp)
    80002330:	03613823          	sd	s6,48(sp)
    80002334:	03713423          	sd	s7,40(sp)
    80002338:	03813023          	sd	s8,32(sp)
    8000233c:	06113423          	sd	ra,104(sp)
    80002340:	01913c23          	sd	s9,24(sp)
    80002344:	07010413          	addi	s0,sp,112
    80002348:	00060b93          	mv	s7,a2
    8000234c:	00050913          	mv	s2,a0
    80002350:	00058c13          	mv	s8,a1
    80002354:	00060b1b          	sext.w	s6,a2
    80002358:	00003497          	auipc	s1,0x3
    8000235c:	40048493          	addi	s1,s1,1024 # 80005758 <cons>
    80002360:	00400993          	li	s3,4
    80002364:	fff00a13          	li	s4,-1
    80002368:	00a00a93          	li	s5,10
    8000236c:	05705e63          	blez	s7,800023c8 <consoleread+0xb4>
    80002370:	09c4a703          	lw	a4,156(s1)
    80002374:	0984a783          	lw	a5,152(s1)
    80002378:	0007071b          	sext.w	a4,a4
    8000237c:	08e78463          	beq	a5,a4,80002404 <consoleread+0xf0>
    80002380:	07f7f713          	andi	a4,a5,127
    80002384:	00e48733          	add	a4,s1,a4
    80002388:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000238c:	0017869b          	addiw	a3,a5,1
    80002390:	08d4ac23          	sw	a3,152(s1)
    80002394:	00070c9b          	sext.w	s9,a4
    80002398:	0b370663          	beq	a4,s3,80002444 <consoleread+0x130>
    8000239c:	00100693          	li	a3,1
    800023a0:	f9f40613          	addi	a2,s0,-97
    800023a4:	000c0593          	mv	a1,s8
    800023a8:	00090513          	mv	a0,s2
    800023ac:	f8e40fa3          	sb	a4,-97(s0)
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	8bc080e7          	jalr	-1860(ra) # 80001c6c <either_copyout>
    800023b8:	01450863          	beq	a0,s4,800023c8 <consoleread+0xb4>
    800023bc:	001c0c13          	addi	s8,s8,1
    800023c0:	fffb8b9b          	addiw	s7,s7,-1
    800023c4:	fb5c94e3          	bne	s9,s5,8000236c <consoleread+0x58>
    800023c8:	000b851b          	sext.w	a0,s7
    800023cc:	06813083          	ld	ra,104(sp)
    800023d0:	06013403          	ld	s0,96(sp)
    800023d4:	05813483          	ld	s1,88(sp)
    800023d8:	05013903          	ld	s2,80(sp)
    800023dc:	04813983          	ld	s3,72(sp)
    800023e0:	04013a03          	ld	s4,64(sp)
    800023e4:	03813a83          	ld	s5,56(sp)
    800023e8:	02813b83          	ld	s7,40(sp)
    800023ec:	02013c03          	ld	s8,32(sp)
    800023f0:	01813c83          	ld	s9,24(sp)
    800023f4:	40ab053b          	subw	a0,s6,a0
    800023f8:	03013b03          	ld	s6,48(sp)
    800023fc:	07010113          	addi	sp,sp,112
    80002400:	00008067          	ret
    80002404:	00001097          	auipc	ra,0x1
    80002408:	1d8080e7          	jalr	472(ra) # 800035dc <push_on>
    8000240c:	0984a703          	lw	a4,152(s1)
    80002410:	09c4a783          	lw	a5,156(s1)
    80002414:	0007879b          	sext.w	a5,a5
    80002418:	fef70ce3          	beq	a4,a5,80002410 <consoleread+0xfc>
    8000241c:	00001097          	auipc	ra,0x1
    80002420:	234080e7          	jalr	564(ra) # 80003650 <pop_on>
    80002424:	0984a783          	lw	a5,152(s1)
    80002428:	07f7f713          	andi	a4,a5,127
    8000242c:	00e48733          	add	a4,s1,a4
    80002430:	01874703          	lbu	a4,24(a4)
    80002434:	0017869b          	addiw	a3,a5,1
    80002438:	08d4ac23          	sw	a3,152(s1)
    8000243c:	00070c9b          	sext.w	s9,a4
    80002440:	f5371ee3          	bne	a4,s3,8000239c <consoleread+0x88>
    80002444:	000b851b          	sext.w	a0,s7
    80002448:	f96bf2e3          	bgeu	s7,s6,800023cc <consoleread+0xb8>
    8000244c:	08f4ac23          	sw	a5,152(s1)
    80002450:	f7dff06f          	j	800023cc <consoleread+0xb8>

0000000080002454 <consputc>:
    80002454:	10000793          	li	a5,256
    80002458:	00f50663          	beq	a0,a5,80002464 <consputc+0x10>
    8000245c:	00001317          	auipc	t1,0x1
    80002460:	9f430067          	jr	-1548(t1) # 80002e50 <uartputc_sync>
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00113423          	sd	ra,8(sp)
    8000246c:	00813023          	sd	s0,0(sp)
    80002470:	01010413          	addi	s0,sp,16
    80002474:	00800513          	li	a0,8
    80002478:	00001097          	auipc	ra,0x1
    8000247c:	9d8080e7          	jalr	-1576(ra) # 80002e50 <uartputc_sync>
    80002480:	02000513          	li	a0,32
    80002484:	00001097          	auipc	ra,0x1
    80002488:	9cc080e7          	jalr	-1588(ra) # 80002e50 <uartputc_sync>
    8000248c:	00013403          	ld	s0,0(sp)
    80002490:	00813083          	ld	ra,8(sp)
    80002494:	00800513          	li	a0,8
    80002498:	01010113          	addi	sp,sp,16
    8000249c:	00001317          	auipc	t1,0x1
    800024a0:	9b430067          	jr	-1612(t1) # 80002e50 <uartputc_sync>

00000000800024a4 <consoleintr>:
    800024a4:	fe010113          	addi	sp,sp,-32
    800024a8:	00813823          	sd	s0,16(sp)
    800024ac:	00913423          	sd	s1,8(sp)
    800024b0:	01213023          	sd	s2,0(sp)
    800024b4:	00113c23          	sd	ra,24(sp)
    800024b8:	02010413          	addi	s0,sp,32
    800024bc:	00003917          	auipc	s2,0x3
    800024c0:	29c90913          	addi	s2,s2,668 # 80005758 <cons>
    800024c4:	00050493          	mv	s1,a0
    800024c8:	00090513          	mv	a0,s2
    800024cc:	00001097          	auipc	ra,0x1
    800024d0:	e40080e7          	jalr	-448(ra) # 8000330c <acquire>
    800024d4:	02048c63          	beqz	s1,8000250c <consoleintr+0x68>
    800024d8:	0a092783          	lw	a5,160(s2)
    800024dc:	09892703          	lw	a4,152(s2)
    800024e0:	07f00693          	li	a3,127
    800024e4:	40e7873b          	subw	a4,a5,a4
    800024e8:	02e6e263          	bltu	a3,a4,8000250c <consoleintr+0x68>
    800024ec:	00d00713          	li	a4,13
    800024f0:	04e48063          	beq	s1,a4,80002530 <consoleintr+0x8c>
    800024f4:	07f7f713          	andi	a4,a5,127
    800024f8:	00e90733          	add	a4,s2,a4
    800024fc:	0017879b          	addiw	a5,a5,1
    80002500:	0af92023          	sw	a5,160(s2)
    80002504:	00970c23          	sb	s1,24(a4)
    80002508:	08f92e23          	sw	a5,156(s2)
    8000250c:	01013403          	ld	s0,16(sp)
    80002510:	01813083          	ld	ra,24(sp)
    80002514:	00813483          	ld	s1,8(sp)
    80002518:	00013903          	ld	s2,0(sp)
    8000251c:	00003517          	auipc	a0,0x3
    80002520:	23c50513          	addi	a0,a0,572 # 80005758 <cons>
    80002524:	02010113          	addi	sp,sp,32
    80002528:	00001317          	auipc	t1,0x1
    8000252c:	eb030067          	jr	-336(t1) # 800033d8 <release>
    80002530:	00a00493          	li	s1,10
    80002534:	fc1ff06f          	j	800024f4 <consoleintr+0x50>

0000000080002538 <consoleinit>:
    80002538:	fe010113          	addi	sp,sp,-32
    8000253c:	00113c23          	sd	ra,24(sp)
    80002540:	00813823          	sd	s0,16(sp)
    80002544:	00913423          	sd	s1,8(sp)
    80002548:	02010413          	addi	s0,sp,32
    8000254c:	00003497          	auipc	s1,0x3
    80002550:	20c48493          	addi	s1,s1,524 # 80005758 <cons>
    80002554:	00048513          	mv	a0,s1
    80002558:	00002597          	auipc	a1,0x2
    8000255c:	bf058593          	addi	a1,a1,-1040 # 80004148 <CONSOLE_STATUS+0x138>
    80002560:	00001097          	auipc	ra,0x1
    80002564:	d88080e7          	jalr	-632(ra) # 800032e8 <initlock>
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	7ac080e7          	jalr	1964(ra) # 80002d14 <uartinit>
    80002570:	01813083          	ld	ra,24(sp)
    80002574:	01013403          	ld	s0,16(sp)
    80002578:	00000797          	auipc	a5,0x0
    8000257c:	d9c78793          	addi	a5,a5,-612 # 80002314 <consoleread>
    80002580:	0af4bc23          	sd	a5,184(s1)
    80002584:	00000797          	auipc	a5,0x0
    80002588:	cec78793          	addi	a5,a5,-788 # 80002270 <consolewrite>
    8000258c:	0cf4b023          	sd	a5,192(s1)
    80002590:	00813483          	ld	s1,8(sp)
    80002594:	02010113          	addi	sp,sp,32
    80002598:	00008067          	ret

000000008000259c <console_read>:
    8000259c:	ff010113          	addi	sp,sp,-16
    800025a0:	00813423          	sd	s0,8(sp)
    800025a4:	01010413          	addi	s0,sp,16
    800025a8:	00813403          	ld	s0,8(sp)
    800025ac:	00003317          	auipc	t1,0x3
    800025b0:	26433303          	ld	t1,612(t1) # 80005810 <devsw+0x10>
    800025b4:	01010113          	addi	sp,sp,16
    800025b8:	00030067          	jr	t1

00000000800025bc <console_write>:
    800025bc:	ff010113          	addi	sp,sp,-16
    800025c0:	00813423          	sd	s0,8(sp)
    800025c4:	01010413          	addi	s0,sp,16
    800025c8:	00813403          	ld	s0,8(sp)
    800025cc:	00003317          	auipc	t1,0x3
    800025d0:	24c33303          	ld	t1,588(t1) # 80005818 <devsw+0x18>
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00030067          	jr	t1

00000000800025dc <panic>:
    800025dc:	fe010113          	addi	sp,sp,-32
    800025e0:	00113c23          	sd	ra,24(sp)
    800025e4:	00813823          	sd	s0,16(sp)
    800025e8:	00913423          	sd	s1,8(sp)
    800025ec:	02010413          	addi	s0,sp,32
    800025f0:	00050493          	mv	s1,a0
    800025f4:	00002517          	auipc	a0,0x2
    800025f8:	b5c50513          	addi	a0,a0,-1188 # 80004150 <CONSOLE_STATUS+0x140>
    800025fc:	00003797          	auipc	a5,0x3
    80002600:	2a07ae23          	sw	zero,700(a5) # 800058b8 <pr+0x18>
    80002604:	00000097          	auipc	ra,0x0
    80002608:	034080e7          	jalr	52(ra) # 80002638 <__printf>
    8000260c:	00048513          	mv	a0,s1
    80002610:	00000097          	auipc	ra,0x0
    80002614:	028080e7          	jalr	40(ra) # 80002638 <__printf>
    80002618:	00002517          	auipc	a0,0x2
    8000261c:	b1850513          	addi	a0,a0,-1256 # 80004130 <CONSOLE_STATUS+0x120>
    80002620:	00000097          	auipc	ra,0x0
    80002624:	018080e7          	jalr	24(ra) # 80002638 <__printf>
    80002628:	00100793          	li	a5,1
    8000262c:	00002717          	auipc	a4,0x2
    80002630:	00f72623          	sw	a5,12(a4) # 80004638 <panicked>
    80002634:	0000006f          	j	80002634 <panic+0x58>

0000000080002638 <__printf>:
    80002638:	f3010113          	addi	sp,sp,-208
    8000263c:	08813023          	sd	s0,128(sp)
    80002640:	07313423          	sd	s3,104(sp)
    80002644:	09010413          	addi	s0,sp,144
    80002648:	05813023          	sd	s8,64(sp)
    8000264c:	08113423          	sd	ra,136(sp)
    80002650:	06913c23          	sd	s1,120(sp)
    80002654:	07213823          	sd	s2,112(sp)
    80002658:	07413023          	sd	s4,96(sp)
    8000265c:	05513c23          	sd	s5,88(sp)
    80002660:	05613823          	sd	s6,80(sp)
    80002664:	05713423          	sd	s7,72(sp)
    80002668:	03913c23          	sd	s9,56(sp)
    8000266c:	03a13823          	sd	s10,48(sp)
    80002670:	03b13423          	sd	s11,40(sp)
    80002674:	00003317          	auipc	t1,0x3
    80002678:	22c30313          	addi	t1,t1,556 # 800058a0 <pr>
    8000267c:	01832c03          	lw	s8,24(t1)
    80002680:	00b43423          	sd	a1,8(s0)
    80002684:	00c43823          	sd	a2,16(s0)
    80002688:	00d43c23          	sd	a3,24(s0)
    8000268c:	02e43023          	sd	a4,32(s0)
    80002690:	02f43423          	sd	a5,40(s0)
    80002694:	03043823          	sd	a6,48(s0)
    80002698:	03143c23          	sd	a7,56(s0)
    8000269c:	00050993          	mv	s3,a0
    800026a0:	4a0c1663          	bnez	s8,80002b4c <__printf+0x514>
    800026a4:	60098c63          	beqz	s3,80002cbc <__printf+0x684>
    800026a8:	0009c503          	lbu	a0,0(s3)
    800026ac:	00840793          	addi	a5,s0,8
    800026b0:	f6f43c23          	sd	a5,-136(s0)
    800026b4:	00000493          	li	s1,0
    800026b8:	22050063          	beqz	a0,800028d8 <__printf+0x2a0>
    800026bc:	00002a37          	lui	s4,0x2
    800026c0:	00018ab7          	lui	s5,0x18
    800026c4:	000f4b37          	lui	s6,0xf4
    800026c8:	00989bb7          	lui	s7,0x989
    800026cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800026d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800026d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800026d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800026dc:	00148c9b          	addiw	s9,s1,1
    800026e0:	02500793          	li	a5,37
    800026e4:	01998933          	add	s2,s3,s9
    800026e8:	38f51263          	bne	a0,a5,80002a6c <__printf+0x434>
    800026ec:	00094783          	lbu	a5,0(s2)
    800026f0:	00078c9b          	sext.w	s9,a5
    800026f4:	1e078263          	beqz	a5,800028d8 <__printf+0x2a0>
    800026f8:	0024849b          	addiw	s1,s1,2
    800026fc:	07000713          	li	a4,112
    80002700:	00998933          	add	s2,s3,s1
    80002704:	38e78a63          	beq	a5,a4,80002a98 <__printf+0x460>
    80002708:	20f76863          	bltu	a4,a5,80002918 <__printf+0x2e0>
    8000270c:	42a78863          	beq	a5,a0,80002b3c <__printf+0x504>
    80002710:	06400713          	li	a4,100
    80002714:	40e79663          	bne	a5,a4,80002b20 <__printf+0x4e8>
    80002718:	f7843783          	ld	a5,-136(s0)
    8000271c:	0007a603          	lw	a2,0(a5)
    80002720:	00878793          	addi	a5,a5,8
    80002724:	f6f43c23          	sd	a5,-136(s0)
    80002728:	42064a63          	bltz	a2,80002b5c <__printf+0x524>
    8000272c:	00a00713          	li	a4,10
    80002730:	02e677bb          	remuw	a5,a2,a4
    80002734:	00002d97          	auipc	s11,0x2
    80002738:	a44d8d93          	addi	s11,s11,-1468 # 80004178 <digits>
    8000273c:	00900593          	li	a1,9
    80002740:	0006051b          	sext.w	a0,a2
    80002744:	00000c93          	li	s9,0
    80002748:	02079793          	slli	a5,a5,0x20
    8000274c:	0207d793          	srli	a5,a5,0x20
    80002750:	00fd87b3          	add	a5,s11,a5
    80002754:	0007c783          	lbu	a5,0(a5)
    80002758:	02e656bb          	divuw	a3,a2,a4
    8000275c:	f8f40023          	sb	a5,-128(s0)
    80002760:	14c5d863          	bge	a1,a2,800028b0 <__printf+0x278>
    80002764:	06300593          	li	a1,99
    80002768:	00100c93          	li	s9,1
    8000276c:	02e6f7bb          	remuw	a5,a3,a4
    80002770:	02079793          	slli	a5,a5,0x20
    80002774:	0207d793          	srli	a5,a5,0x20
    80002778:	00fd87b3          	add	a5,s11,a5
    8000277c:	0007c783          	lbu	a5,0(a5)
    80002780:	02e6d73b          	divuw	a4,a3,a4
    80002784:	f8f400a3          	sb	a5,-127(s0)
    80002788:	12a5f463          	bgeu	a1,a0,800028b0 <__printf+0x278>
    8000278c:	00a00693          	li	a3,10
    80002790:	00900593          	li	a1,9
    80002794:	02d777bb          	remuw	a5,a4,a3
    80002798:	02079793          	slli	a5,a5,0x20
    8000279c:	0207d793          	srli	a5,a5,0x20
    800027a0:	00fd87b3          	add	a5,s11,a5
    800027a4:	0007c503          	lbu	a0,0(a5)
    800027a8:	02d757bb          	divuw	a5,a4,a3
    800027ac:	f8a40123          	sb	a0,-126(s0)
    800027b0:	48e5f263          	bgeu	a1,a4,80002c34 <__printf+0x5fc>
    800027b4:	06300513          	li	a0,99
    800027b8:	02d7f5bb          	remuw	a1,a5,a3
    800027bc:	02059593          	slli	a1,a1,0x20
    800027c0:	0205d593          	srli	a1,a1,0x20
    800027c4:	00bd85b3          	add	a1,s11,a1
    800027c8:	0005c583          	lbu	a1,0(a1)
    800027cc:	02d7d7bb          	divuw	a5,a5,a3
    800027d0:	f8b401a3          	sb	a1,-125(s0)
    800027d4:	48e57263          	bgeu	a0,a4,80002c58 <__printf+0x620>
    800027d8:	3e700513          	li	a0,999
    800027dc:	02d7f5bb          	remuw	a1,a5,a3
    800027e0:	02059593          	slli	a1,a1,0x20
    800027e4:	0205d593          	srli	a1,a1,0x20
    800027e8:	00bd85b3          	add	a1,s11,a1
    800027ec:	0005c583          	lbu	a1,0(a1)
    800027f0:	02d7d7bb          	divuw	a5,a5,a3
    800027f4:	f8b40223          	sb	a1,-124(s0)
    800027f8:	46e57663          	bgeu	a0,a4,80002c64 <__printf+0x62c>
    800027fc:	02d7f5bb          	remuw	a1,a5,a3
    80002800:	02059593          	slli	a1,a1,0x20
    80002804:	0205d593          	srli	a1,a1,0x20
    80002808:	00bd85b3          	add	a1,s11,a1
    8000280c:	0005c583          	lbu	a1,0(a1)
    80002810:	02d7d7bb          	divuw	a5,a5,a3
    80002814:	f8b402a3          	sb	a1,-123(s0)
    80002818:	46ea7863          	bgeu	s4,a4,80002c88 <__printf+0x650>
    8000281c:	02d7f5bb          	remuw	a1,a5,a3
    80002820:	02059593          	slli	a1,a1,0x20
    80002824:	0205d593          	srli	a1,a1,0x20
    80002828:	00bd85b3          	add	a1,s11,a1
    8000282c:	0005c583          	lbu	a1,0(a1)
    80002830:	02d7d7bb          	divuw	a5,a5,a3
    80002834:	f8b40323          	sb	a1,-122(s0)
    80002838:	3eeaf863          	bgeu	s5,a4,80002c28 <__printf+0x5f0>
    8000283c:	02d7f5bb          	remuw	a1,a5,a3
    80002840:	02059593          	slli	a1,a1,0x20
    80002844:	0205d593          	srli	a1,a1,0x20
    80002848:	00bd85b3          	add	a1,s11,a1
    8000284c:	0005c583          	lbu	a1,0(a1)
    80002850:	02d7d7bb          	divuw	a5,a5,a3
    80002854:	f8b403a3          	sb	a1,-121(s0)
    80002858:	42eb7e63          	bgeu	s6,a4,80002c94 <__printf+0x65c>
    8000285c:	02d7f5bb          	remuw	a1,a5,a3
    80002860:	02059593          	slli	a1,a1,0x20
    80002864:	0205d593          	srli	a1,a1,0x20
    80002868:	00bd85b3          	add	a1,s11,a1
    8000286c:	0005c583          	lbu	a1,0(a1)
    80002870:	02d7d7bb          	divuw	a5,a5,a3
    80002874:	f8b40423          	sb	a1,-120(s0)
    80002878:	42ebfc63          	bgeu	s7,a4,80002cb0 <__printf+0x678>
    8000287c:	02079793          	slli	a5,a5,0x20
    80002880:	0207d793          	srli	a5,a5,0x20
    80002884:	00fd8db3          	add	s11,s11,a5
    80002888:	000dc703          	lbu	a4,0(s11)
    8000288c:	00a00793          	li	a5,10
    80002890:	00900c93          	li	s9,9
    80002894:	f8e404a3          	sb	a4,-119(s0)
    80002898:	00065c63          	bgez	a2,800028b0 <__printf+0x278>
    8000289c:	f9040713          	addi	a4,s0,-112
    800028a0:	00f70733          	add	a4,a4,a5
    800028a4:	02d00693          	li	a3,45
    800028a8:	fed70823          	sb	a3,-16(a4)
    800028ac:	00078c93          	mv	s9,a5
    800028b0:	f8040793          	addi	a5,s0,-128
    800028b4:	01978cb3          	add	s9,a5,s9
    800028b8:	f7f40d13          	addi	s10,s0,-129
    800028bc:	000cc503          	lbu	a0,0(s9)
    800028c0:	fffc8c93          	addi	s9,s9,-1
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	b90080e7          	jalr	-1136(ra) # 80002454 <consputc>
    800028cc:	ffac98e3          	bne	s9,s10,800028bc <__printf+0x284>
    800028d0:	00094503          	lbu	a0,0(s2)
    800028d4:	e00514e3          	bnez	a0,800026dc <__printf+0xa4>
    800028d8:	1a0c1663          	bnez	s8,80002a84 <__printf+0x44c>
    800028dc:	08813083          	ld	ra,136(sp)
    800028e0:	08013403          	ld	s0,128(sp)
    800028e4:	07813483          	ld	s1,120(sp)
    800028e8:	07013903          	ld	s2,112(sp)
    800028ec:	06813983          	ld	s3,104(sp)
    800028f0:	06013a03          	ld	s4,96(sp)
    800028f4:	05813a83          	ld	s5,88(sp)
    800028f8:	05013b03          	ld	s6,80(sp)
    800028fc:	04813b83          	ld	s7,72(sp)
    80002900:	04013c03          	ld	s8,64(sp)
    80002904:	03813c83          	ld	s9,56(sp)
    80002908:	03013d03          	ld	s10,48(sp)
    8000290c:	02813d83          	ld	s11,40(sp)
    80002910:	0d010113          	addi	sp,sp,208
    80002914:	00008067          	ret
    80002918:	07300713          	li	a4,115
    8000291c:	1ce78a63          	beq	a5,a4,80002af0 <__printf+0x4b8>
    80002920:	07800713          	li	a4,120
    80002924:	1ee79e63          	bne	a5,a4,80002b20 <__printf+0x4e8>
    80002928:	f7843783          	ld	a5,-136(s0)
    8000292c:	0007a703          	lw	a4,0(a5)
    80002930:	00878793          	addi	a5,a5,8
    80002934:	f6f43c23          	sd	a5,-136(s0)
    80002938:	28074263          	bltz	a4,80002bbc <__printf+0x584>
    8000293c:	00002d97          	auipc	s11,0x2
    80002940:	83cd8d93          	addi	s11,s11,-1988 # 80004178 <digits>
    80002944:	00f77793          	andi	a5,a4,15
    80002948:	00fd87b3          	add	a5,s11,a5
    8000294c:	0007c683          	lbu	a3,0(a5)
    80002950:	00f00613          	li	a2,15
    80002954:	0007079b          	sext.w	a5,a4
    80002958:	f8d40023          	sb	a3,-128(s0)
    8000295c:	0047559b          	srliw	a1,a4,0x4
    80002960:	0047569b          	srliw	a3,a4,0x4
    80002964:	00000c93          	li	s9,0
    80002968:	0ee65063          	bge	a2,a4,80002a48 <__printf+0x410>
    8000296c:	00f6f693          	andi	a3,a3,15
    80002970:	00dd86b3          	add	a3,s11,a3
    80002974:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002978:	0087d79b          	srliw	a5,a5,0x8
    8000297c:	00100c93          	li	s9,1
    80002980:	f8d400a3          	sb	a3,-127(s0)
    80002984:	0cb67263          	bgeu	a2,a1,80002a48 <__printf+0x410>
    80002988:	00f7f693          	andi	a3,a5,15
    8000298c:	00dd86b3          	add	a3,s11,a3
    80002990:	0006c583          	lbu	a1,0(a3)
    80002994:	00f00613          	li	a2,15
    80002998:	0047d69b          	srliw	a3,a5,0x4
    8000299c:	f8b40123          	sb	a1,-126(s0)
    800029a0:	0047d593          	srli	a1,a5,0x4
    800029a4:	28f67e63          	bgeu	a2,a5,80002c40 <__printf+0x608>
    800029a8:	00f6f693          	andi	a3,a3,15
    800029ac:	00dd86b3          	add	a3,s11,a3
    800029b0:	0006c503          	lbu	a0,0(a3)
    800029b4:	0087d813          	srli	a6,a5,0x8
    800029b8:	0087d69b          	srliw	a3,a5,0x8
    800029bc:	f8a401a3          	sb	a0,-125(s0)
    800029c0:	28b67663          	bgeu	a2,a1,80002c4c <__printf+0x614>
    800029c4:	00f6f693          	andi	a3,a3,15
    800029c8:	00dd86b3          	add	a3,s11,a3
    800029cc:	0006c583          	lbu	a1,0(a3)
    800029d0:	00c7d513          	srli	a0,a5,0xc
    800029d4:	00c7d69b          	srliw	a3,a5,0xc
    800029d8:	f8b40223          	sb	a1,-124(s0)
    800029dc:	29067a63          	bgeu	a2,a6,80002c70 <__printf+0x638>
    800029e0:	00f6f693          	andi	a3,a3,15
    800029e4:	00dd86b3          	add	a3,s11,a3
    800029e8:	0006c583          	lbu	a1,0(a3)
    800029ec:	0107d813          	srli	a6,a5,0x10
    800029f0:	0107d69b          	srliw	a3,a5,0x10
    800029f4:	f8b402a3          	sb	a1,-123(s0)
    800029f8:	28a67263          	bgeu	a2,a0,80002c7c <__printf+0x644>
    800029fc:	00f6f693          	andi	a3,a3,15
    80002a00:	00dd86b3          	add	a3,s11,a3
    80002a04:	0006c683          	lbu	a3,0(a3)
    80002a08:	0147d79b          	srliw	a5,a5,0x14
    80002a0c:	f8d40323          	sb	a3,-122(s0)
    80002a10:	21067663          	bgeu	a2,a6,80002c1c <__printf+0x5e4>
    80002a14:	02079793          	slli	a5,a5,0x20
    80002a18:	0207d793          	srli	a5,a5,0x20
    80002a1c:	00fd8db3          	add	s11,s11,a5
    80002a20:	000dc683          	lbu	a3,0(s11)
    80002a24:	00800793          	li	a5,8
    80002a28:	00700c93          	li	s9,7
    80002a2c:	f8d403a3          	sb	a3,-121(s0)
    80002a30:	00075c63          	bgez	a4,80002a48 <__printf+0x410>
    80002a34:	f9040713          	addi	a4,s0,-112
    80002a38:	00f70733          	add	a4,a4,a5
    80002a3c:	02d00693          	li	a3,45
    80002a40:	fed70823          	sb	a3,-16(a4)
    80002a44:	00078c93          	mv	s9,a5
    80002a48:	f8040793          	addi	a5,s0,-128
    80002a4c:	01978cb3          	add	s9,a5,s9
    80002a50:	f7f40d13          	addi	s10,s0,-129
    80002a54:	000cc503          	lbu	a0,0(s9)
    80002a58:	fffc8c93          	addi	s9,s9,-1
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	9f8080e7          	jalr	-1544(ra) # 80002454 <consputc>
    80002a64:	ff9d18e3          	bne	s10,s9,80002a54 <__printf+0x41c>
    80002a68:	0100006f          	j	80002a78 <__printf+0x440>
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	9e8080e7          	jalr	-1560(ra) # 80002454 <consputc>
    80002a74:	000c8493          	mv	s1,s9
    80002a78:	00094503          	lbu	a0,0(s2)
    80002a7c:	c60510e3          	bnez	a0,800026dc <__printf+0xa4>
    80002a80:	e40c0ee3          	beqz	s8,800028dc <__printf+0x2a4>
    80002a84:	00003517          	auipc	a0,0x3
    80002a88:	e1c50513          	addi	a0,a0,-484 # 800058a0 <pr>
    80002a8c:	00001097          	auipc	ra,0x1
    80002a90:	94c080e7          	jalr	-1716(ra) # 800033d8 <release>
    80002a94:	e49ff06f          	j	800028dc <__printf+0x2a4>
    80002a98:	f7843783          	ld	a5,-136(s0)
    80002a9c:	03000513          	li	a0,48
    80002aa0:	01000d13          	li	s10,16
    80002aa4:	00878713          	addi	a4,a5,8
    80002aa8:	0007bc83          	ld	s9,0(a5)
    80002aac:	f6e43c23          	sd	a4,-136(s0)
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	9a4080e7          	jalr	-1628(ra) # 80002454 <consputc>
    80002ab8:	07800513          	li	a0,120
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	998080e7          	jalr	-1640(ra) # 80002454 <consputc>
    80002ac4:	00001d97          	auipc	s11,0x1
    80002ac8:	6b4d8d93          	addi	s11,s11,1716 # 80004178 <digits>
    80002acc:	03ccd793          	srli	a5,s9,0x3c
    80002ad0:	00fd87b3          	add	a5,s11,a5
    80002ad4:	0007c503          	lbu	a0,0(a5)
    80002ad8:	fffd0d1b          	addiw	s10,s10,-1
    80002adc:	004c9c93          	slli	s9,s9,0x4
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	974080e7          	jalr	-1676(ra) # 80002454 <consputc>
    80002ae8:	fe0d12e3          	bnez	s10,80002acc <__printf+0x494>
    80002aec:	f8dff06f          	j	80002a78 <__printf+0x440>
    80002af0:	f7843783          	ld	a5,-136(s0)
    80002af4:	0007bc83          	ld	s9,0(a5)
    80002af8:	00878793          	addi	a5,a5,8
    80002afc:	f6f43c23          	sd	a5,-136(s0)
    80002b00:	000c9a63          	bnez	s9,80002b14 <__printf+0x4dc>
    80002b04:	1080006f          	j	80002c0c <__printf+0x5d4>
    80002b08:	001c8c93          	addi	s9,s9,1
    80002b0c:	00000097          	auipc	ra,0x0
    80002b10:	948080e7          	jalr	-1720(ra) # 80002454 <consputc>
    80002b14:	000cc503          	lbu	a0,0(s9)
    80002b18:	fe0518e3          	bnez	a0,80002b08 <__printf+0x4d0>
    80002b1c:	f5dff06f          	j	80002a78 <__printf+0x440>
    80002b20:	02500513          	li	a0,37
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	930080e7          	jalr	-1744(ra) # 80002454 <consputc>
    80002b2c:	000c8513          	mv	a0,s9
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	924080e7          	jalr	-1756(ra) # 80002454 <consputc>
    80002b38:	f41ff06f          	j	80002a78 <__printf+0x440>
    80002b3c:	02500513          	li	a0,37
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	914080e7          	jalr	-1772(ra) # 80002454 <consputc>
    80002b48:	f31ff06f          	j	80002a78 <__printf+0x440>
    80002b4c:	00030513          	mv	a0,t1
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	7bc080e7          	jalr	1980(ra) # 8000330c <acquire>
    80002b58:	b4dff06f          	j	800026a4 <__printf+0x6c>
    80002b5c:	40c0053b          	negw	a0,a2
    80002b60:	00a00713          	li	a4,10
    80002b64:	02e576bb          	remuw	a3,a0,a4
    80002b68:	00001d97          	auipc	s11,0x1
    80002b6c:	610d8d93          	addi	s11,s11,1552 # 80004178 <digits>
    80002b70:	ff700593          	li	a1,-9
    80002b74:	02069693          	slli	a3,a3,0x20
    80002b78:	0206d693          	srli	a3,a3,0x20
    80002b7c:	00dd86b3          	add	a3,s11,a3
    80002b80:	0006c683          	lbu	a3,0(a3)
    80002b84:	02e557bb          	divuw	a5,a0,a4
    80002b88:	f8d40023          	sb	a3,-128(s0)
    80002b8c:	10b65e63          	bge	a2,a1,80002ca8 <__printf+0x670>
    80002b90:	06300593          	li	a1,99
    80002b94:	02e7f6bb          	remuw	a3,a5,a4
    80002b98:	02069693          	slli	a3,a3,0x20
    80002b9c:	0206d693          	srli	a3,a3,0x20
    80002ba0:	00dd86b3          	add	a3,s11,a3
    80002ba4:	0006c683          	lbu	a3,0(a3)
    80002ba8:	02e7d73b          	divuw	a4,a5,a4
    80002bac:	00200793          	li	a5,2
    80002bb0:	f8d400a3          	sb	a3,-127(s0)
    80002bb4:	bca5ece3          	bltu	a1,a0,8000278c <__printf+0x154>
    80002bb8:	ce5ff06f          	j	8000289c <__printf+0x264>
    80002bbc:	40e007bb          	negw	a5,a4
    80002bc0:	00001d97          	auipc	s11,0x1
    80002bc4:	5b8d8d93          	addi	s11,s11,1464 # 80004178 <digits>
    80002bc8:	00f7f693          	andi	a3,a5,15
    80002bcc:	00dd86b3          	add	a3,s11,a3
    80002bd0:	0006c583          	lbu	a1,0(a3)
    80002bd4:	ff100613          	li	a2,-15
    80002bd8:	0047d69b          	srliw	a3,a5,0x4
    80002bdc:	f8b40023          	sb	a1,-128(s0)
    80002be0:	0047d59b          	srliw	a1,a5,0x4
    80002be4:	0ac75e63          	bge	a4,a2,80002ca0 <__printf+0x668>
    80002be8:	00f6f693          	andi	a3,a3,15
    80002bec:	00dd86b3          	add	a3,s11,a3
    80002bf0:	0006c603          	lbu	a2,0(a3)
    80002bf4:	00f00693          	li	a3,15
    80002bf8:	0087d79b          	srliw	a5,a5,0x8
    80002bfc:	f8c400a3          	sb	a2,-127(s0)
    80002c00:	d8b6e4e3          	bltu	a3,a1,80002988 <__printf+0x350>
    80002c04:	00200793          	li	a5,2
    80002c08:	e2dff06f          	j	80002a34 <__printf+0x3fc>
    80002c0c:	00001c97          	auipc	s9,0x1
    80002c10:	54cc8c93          	addi	s9,s9,1356 # 80004158 <CONSOLE_STATUS+0x148>
    80002c14:	02800513          	li	a0,40
    80002c18:	ef1ff06f          	j	80002b08 <__printf+0x4d0>
    80002c1c:	00700793          	li	a5,7
    80002c20:	00600c93          	li	s9,6
    80002c24:	e0dff06f          	j	80002a30 <__printf+0x3f8>
    80002c28:	00700793          	li	a5,7
    80002c2c:	00600c93          	li	s9,6
    80002c30:	c69ff06f          	j	80002898 <__printf+0x260>
    80002c34:	00300793          	li	a5,3
    80002c38:	00200c93          	li	s9,2
    80002c3c:	c5dff06f          	j	80002898 <__printf+0x260>
    80002c40:	00300793          	li	a5,3
    80002c44:	00200c93          	li	s9,2
    80002c48:	de9ff06f          	j	80002a30 <__printf+0x3f8>
    80002c4c:	00400793          	li	a5,4
    80002c50:	00300c93          	li	s9,3
    80002c54:	dddff06f          	j	80002a30 <__printf+0x3f8>
    80002c58:	00400793          	li	a5,4
    80002c5c:	00300c93          	li	s9,3
    80002c60:	c39ff06f          	j	80002898 <__printf+0x260>
    80002c64:	00500793          	li	a5,5
    80002c68:	00400c93          	li	s9,4
    80002c6c:	c2dff06f          	j	80002898 <__printf+0x260>
    80002c70:	00500793          	li	a5,5
    80002c74:	00400c93          	li	s9,4
    80002c78:	db9ff06f          	j	80002a30 <__printf+0x3f8>
    80002c7c:	00600793          	li	a5,6
    80002c80:	00500c93          	li	s9,5
    80002c84:	dadff06f          	j	80002a30 <__printf+0x3f8>
    80002c88:	00600793          	li	a5,6
    80002c8c:	00500c93          	li	s9,5
    80002c90:	c09ff06f          	j	80002898 <__printf+0x260>
    80002c94:	00800793          	li	a5,8
    80002c98:	00700c93          	li	s9,7
    80002c9c:	bfdff06f          	j	80002898 <__printf+0x260>
    80002ca0:	00100793          	li	a5,1
    80002ca4:	d91ff06f          	j	80002a34 <__printf+0x3fc>
    80002ca8:	00100793          	li	a5,1
    80002cac:	bf1ff06f          	j	8000289c <__printf+0x264>
    80002cb0:	00900793          	li	a5,9
    80002cb4:	00800c93          	li	s9,8
    80002cb8:	be1ff06f          	j	80002898 <__printf+0x260>
    80002cbc:	00001517          	auipc	a0,0x1
    80002cc0:	4a450513          	addi	a0,a0,1188 # 80004160 <CONSOLE_STATUS+0x150>
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	918080e7          	jalr	-1768(ra) # 800025dc <panic>

0000000080002ccc <printfinit>:
    80002ccc:	fe010113          	addi	sp,sp,-32
    80002cd0:	00813823          	sd	s0,16(sp)
    80002cd4:	00913423          	sd	s1,8(sp)
    80002cd8:	00113c23          	sd	ra,24(sp)
    80002cdc:	02010413          	addi	s0,sp,32
    80002ce0:	00003497          	auipc	s1,0x3
    80002ce4:	bc048493          	addi	s1,s1,-1088 # 800058a0 <pr>
    80002ce8:	00048513          	mv	a0,s1
    80002cec:	00001597          	auipc	a1,0x1
    80002cf0:	48458593          	addi	a1,a1,1156 # 80004170 <CONSOLE_STATUS+0x160>
    80002cf4:	00000097          	auipc	ra,0x0
    80002cf8:	5f4080e7          	jalr	1524(ra) # 800032e8 <initlock>
    80002cfc:	01813083          	ld	ra,24(sp)
    80002d00:	01013403          	ld	s0,16(sp)
    80002d04:	0004ac23          	sw	zero,24(s1)
    80002d08:	00813483          	ld	s1,8(sp)
    80002d0c:	02010113          	addi	sp,sp,32
    80002d10:	00008067          	ret

0000000080002d14 <uartinit>:
    80002d14:	ff010113          	addi	sp,sp,-16
    80002d18:	00813423          	sd	s0,8(sp)
    80002d1c:	01010413          	addi	s0,sp,16
    80002d20:	100007b7          	lui	a5,0x10000
    80002d24:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002d28:	f8000713          	li	a4,-128
    80002d2c:	00e781a3          	sb	a4,3(a5)
    80002d30:	00300713          	li	a4,3
    80002d34:	00e78023          	sb	a4,0(a5)
    80002d38:	000780a3          	sb	zero,1(a5)
    80002d3c:	00e781a3          	sb	a4,3(a5)
    80002d40:	00700693          	li	a3,7
    80002d44:	00d78123          	sb	a3,2(a5)
    80002d48:	00e780a3          	sb	a4,1(a5)
    80002d4c:	00813403          	ld	s0,8(sp)
    80002d50:	01010113          	addi	sp,sp,16
    80002d54:	00008067          	ret

0000000080002d58 <uartputc>:
    80002d58:	00002797          	auipc	a5,0x2
    80002d5c:	8e07a783          	lw	a5,-1824(a5) # 80004638 <panicked>
    80002d60:	00078463          	beqz	a5,80002d68 <uartputc+0x10>
    80002d64:	0000006f          	j	80002d64 <uartputc+0xc>
    80002d68:	fd010113          	addi	sp,sp,-48
    80002d6c:	02813023          	sd	s0,32(sp)
    80002d70:	00913c23          	sd	s1,24(sp)
    80002d74:	01213823          	sd	s2,16(sp)
    80002d78:	01313423          	sd	s3,8(sp)
    80002d7c:	02113423          	sd	ra,40(sp)
    80002d80:	03010413          	addi	s0,sp,48
    80002d84:	00002917          	auipc	s2,0x2
    80002d88:	8bc90913          	addi	s2,s2,-1860 # 80004640 <uart_tx_r>
    80002d8c:	00093783          	ld	a5,0(s2)
    80002d90:	00002497          	auipc	s1,0x2
    80002d94:	8b848493          	addi	s1,s1,-1864 # 80004648 <uart_tx_w>
    80002d98:	0004b703          	ld	a4,0(s1)
    80002d9c:	02078693          	addi	a3,a5,32
    80002da0:	00050993          	mv	s3,a0
    80002da4:	02e69c63          	bne	a3,a4,80002ddc <uartputc+0x84>
    80002da8:	00001097          	auipc	ra,0x1
    80002dac:	834080e7          	jalr	-1996(ra) # 800035dc <push_on>
    80002db0:	00093783          	ld	a5,0(s2)
    80002db4:	0004b703          	ld	a4,0(s1)
    80002db8:	02078793          	addi	a5,a5,32
    80002dbc:	00e79463          	bne	a5,a4,80002dc4 <uartputc+0x6c>
    80002dc0:	0000006f          	j	80002dc0 <uartputc+0x68>
    80002dc4:	00001097          	auipc	ra,0x1
    80002dc8:	88c080e7          	jalr	-1908(ra) # 80003650 <pop_on>
    80002dcc:	00093783          	ld	a5,0(s2)
    80002dd0:	0004b703          	ld	a4,0(s1)
    80002dd4:	02078693          	addi	a3,a5,32
    80002dd8:	fce688e3          	beq	a3,a4,80002da8 <uartputc+0x50>
    80002ddc:	01f77693          	andi	a3,a4,31
    80002de0:	00003597          	auipc	a1,0x3
    80002de4:	ae058593          	addi	a1,a1,-1312 # 800058c0 <uart_tx_buf>
    80002de8:	00d586b3          	add	a3,a1,a3
    80002dec:	00170713          	addi	a4,a4,1
    80002df0:	01368023          	sb	s3,0(a3)
    80002df4:	00e4b023          	sd	a4,0(s1)
    80002df8:	10000637          	lui	a2,0x10000
    80002dfc:	02f71063          	bne	a4,a5,80002e1c <uartputc+0xc4>
    80002e00:	0340006f          	j	80002e34 <uartputc+0xdc>
    80002e04:	00074703          	lbu	a4,0(a4)
    80002e08:	00f93023          	sd	a5,0(s2)
    80002e0c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002e10:	00093783          	ld	a5,0(s2)
    80002e14:	0004b703          	ld	a4,0(s1)
    80002e18:	00f70e63          	beq	a4,a5,80002e34 <uartputc+0xdc>
    80002e1c:	00564683          	lbu	a3,5(a2)
    80002e20:	01f7f713          	andi	a4,a5,31
    80002e24:	00e58733          	add	a4,a1,a4
    80002e28:	0206f693          	andi	a3,a3,32
    80002e2c:	00178793          	addi	a5,a5,1
    80002e30:	fc069ae3          	bnez	a3,80002e04 <uartputc+0xac>
    80002e34:	02813083          	ld	ra,40(sp)
    80002e38:	02013403          	ld	s0,32(sp)
    80002e3c:	01813483          	ld	s1,24(sp)
    80002e40:	01013903          	ld	s2,16(sp)
    80002e44:	00813983          	ld	s3,8(sp)
    80002e48:	03010113          	addi	sp,sp,48
    80002e4c:	00008067          	ret

0000000080002e50 <uartputc_sync>:
    80002e50:	ff010113          	addi	sp,sp,-16
    80002e54:	00813423          	sd	s0,8(sp)
    80002e58:	01010413          	addi	s0,sp,16
    80002e5c:	00001717          	auipc	a4,0x1
    80002e60:	7dc72703          	lw	a4,2012(a4) # 80004638 <panicked>
    80002e64:	02071663          	bnez	a4,80002e90 <uartputc_sync+0x40>
    80002e68:	00050793          	mv	a5,a0
    80002e6c:	100006b7          	lui	a3,0x10000
    80002e70:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002e74:	02077713          	andi	a4,a4,32
    80002e78:	fe070ce3          	beqz	a4,80002e70 <uartputc_sync+0x20>
    80002e7c:	0ff7f793          	andi	a5,a5,255
    80002e80:	00f68023          	sb	a5,0(a3)
    80002e84:	00813403          	ld	s0,8(sp)
    80002e88:	01010113          	addi	sp,sp,16
    80002e8c:	00008067          	ret
    80002e90:	0000006f          	j	80002e90 <uartputc_sync+0x40>

0000000080002e94 <uartstart>:
    80002e94:	ff010113          	addi	sp,sp,-16
    80002e98:	00813423          	sd	s0,8(sp)
    80002e9c:	01010413          	addi	s0,sp,16
    80002ea0:	00001617          	auipc	a2,0x1
    80002ea4:	7a060613          	addi	a2,a2,1952 # 80004640 <uart_tx_r>
    80002ea8:	00001517          	auipc	a0,0x1
    80002eac:	7a050513          	addi	a0,a0,1952 # 80004648 <uart_tx_w>
    80002eb0:	00063783          	ld	a5,0(a2)
    80002eb4:	00053703          	ld	a4,0(a0)
    80002eb8:	04f70263          	beq	a4,a5,80002efc <uartstart+0x68>
    80002ebc:	100005b7          	lui	a1,0x10000
    80002ec0:	00003817          	auipc	a6,0x3
    80002ec4:	a0080813          	addi	a6,a6,-1536 # 800058c0 <uart_tx_buf>
    80002ec8:	01c0006f          	j	80002ee4 <uartstart+0x50>
    80002ecc:	0006c703          	lbu	a4,0(a3)
    80002ed0:	00f63023          	sd	a5,0(a2)
    80002ed4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002ed8:	00063783          	ld	a5,0(a2)
    80002edc:	00053703          	ld	a4,0(a0)
    80002ee0:	00f70e63          	beq	a4,a5,80002efc <uartstart+0x68>
    80002ee4:	01f7f713          	andi	a4,a5,31
    80002ee8:	00e806b3          	add	a3,a6,a4
    80002eec:	0055c703          	lbu	a4,5(a1)
    80002ef0:	00178793          	addi	a5,a5,1
    80002ef4:	02077713          	andi	a4,a4,32
    80002ef8:	fc071ae3          	bnez	a4,80002ecc <uartstart+0x38>
    80002efc:	00813403          	ld	s0,8(sp)
    80002f00:	01010113          	addi	sp,sp,16
    80002f04:	00008067          	ret

0000000080002f08 <uartgetc>:
    80002f08:	ff010113          	addi	sp,sp,-16
    80002f0c:	00813423          	sd	s0,8(sp)
    80002f10:	01010413          	addi	s0,sp,16
    80002f14:	10000737          	lui	a4,0x10000
    80002f18:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002f1c:	0017f793          	andi	a5,a5,1
    80002f20:	00078c63          	beqz	a5,80002f38 <uartgetc+0x30>
    80002f24:	00074503          	lbu	a0,0(a4)
    80002f28:	0ff57513          	andi	a0,a0,255
    80002f2c:	00813403          	ld	s0,8(sp)
    80002f30:	01010113          	addi	sp,sp,16
    80002f34:	00008067          	ret
    80002f38:	fff00513          	li	a0,-1
    80002f3c:	ff1ff06f          	j	80002f2c <uartgetc+0x24>

0000000080002f40 <uartintr>:
    80002f40:	100007b7          	lui	a5,0x10000
    80002f44:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002f48:	0017f793          	andi	a5,a5,1
    80002f4c:	0a078463          	beqz	a5,80002ff4 <uartintr+0xb4>
    80002f50:	fe010113          	addi	sp,sp,-32
    80002f54:	00813823          	sd	s0,16(sp)
    80002f58:	00913423          	sd	s1,8(sp)
    80002f5c:	00113c23          	sd	ra,24(sp)
    80002f60:	02010413          	addi	s0,sp,32
    80002f64:	100004b7          	lui	s1,0x10000
    80002f68:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002f6c:	0ff57513          	andi	a0,a0,255
    80002f70:	fffff097          	auipc	ra,0xfffff
    80002f74:	534080e7          	jalr	1332(ra) # 800024a4 <consoleintr>
    80002f78:	0054c783          	lbu	a5,5(s1)
    80002f7c:	0017f793          	andi	a5,a5,1
    80002f80:	fe0794e3          	bnez	a5,80002f68 <uartintr+0x28>
    80002f84:	00001617          	auipc	a2,0x1
    80002f88:	6bc60613          	addi	a2,a2,1724 # 80004640 <uart_tx_r>
    80002f8c:	00001517          	auipc	a0,0x1
    80002f90:	6bc50513          	addi	a0,a0,1724 # 80004648 <uart_tx_w>
    80002f94:	00063783          	ld	a5,0(a2)
    80002f98:	00053703          	ld	a4,0(a0)
    80002f9c:	04f70263          	beq	a4,a5,80002fe0 <uartintr+0xa0>
    80002fa0:	100005b7          	lui	a1,0x10000
    80002fa4:	00003817          	auipc	a6,0x3
    80002fa8:	91c80813          	addi	a6,a6,-1764 # 800058c0 <uart_tx_buf>
    80002fac:	01c0006f          	j	80002fc8 <uartintr+0x88>
    80002fb0:	0006c703          	lbu	a4,0(a3)
    80002fb4:	00f63023          	sd	a5,0(a2)
    80002fb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002fbc:	00063783          	ld	a5,0(a2)
    80002fc0:	00053703          	ld	a4,0(a0)
    80002fc4:	00f70e63          	beq	a4,a5,80002fe0 <uartintr+0xa0>
    80002fc8:	01f7f713          	andi	a4,a5,31
    80002fcc:	00e806b3          	add	a3,a6,a4
    80002fd0:	0055c703          	lbu	a4,5(a1)
    80002fd4:	00178793          	addi	a5,a5,1
    80002fd8:	02077713          	andi	a4,a4,32
    80002fdc:	fc071ae3          	bnez	a4,80002fb0 <uartintr+0x70>
    80002fe0:	01813083          	ld	ra,24(sp)
    80002fe4:	01013403          	ld	s0,16(sp)
    80002fe8:	00813483          	ld	s1,8(sp)
    80002fec:	02010113          	addi	sp,sp,32
    80002ff0:	00008067          	ret
    80002ff4:	00001617          	auipc	a2,0x1
    80002ff8:	64c60613          	addi	a2,a2,1612 # 80004640 <uart_tx_r>
    80002ffc:	00001517          	auipc	a0,0x1
    80003000:	64c50513          	addi	a0,a0,1612 # 80004648 <uart_tx_w>
    80003004:	00063783          	ld	a5,0(a2)
    80003008:	00053703          	ld	a4,0(a0)
    8000300c:	04f70263          	beq	a4,a5,80003050 <uartintr+0x110>
    80003010:	100005b7          	lui	a1,0x10000
    80003014:	00003817          	auipc	a6,0x3
    80003018:	8ac80813          	addi	a6,a6,-1876 # 800058c0 <uart_tx_buf>
    8000301c:	01c0006f          	j	80003038 <uartintr+0xf8>
    80003020:	0006c703          	lbu	a4,0(a3)
    80003024:	00f63023          	sd	a5,0(a2)
    80003028:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000302c:	00063783          	ld	a5,0(a2)
    80003030:	00053703          	ld	a4,0(a0)
    80003034:	02f70063          	beq	a4,a5,80003054 <uartintr+0x114>
    80003038:	01f7f713          	andi	a4,a5,31
    8000303c:	00e806b3          	add	a3,a6,a4
    80003040:	0055c703          	lbu	a4,5(a1)
    80003044:	00178793          	addi	a5,a5,1
    80003048:	02077713          	andi	a4,a4,32
    8000304c:	fc071ae3          	bnez	a4,80003020 <uartintr+0xe0>
    80003050:	00008067          	ret
    80003054:	00008067          	ret

0000000080003058 <kinit>:
    80003058:	fc010113          	addi	sp,sp,-64
    8000305c:	02913423          	sd	s1,40(sp)
    80003060:	fffff7b7          	lui	a5,0xfffff
    80003064:	00004497          	auipc	s1,0x4
    80003068:	87b48493          	addi	s1,s1,-1925 # 800068df <end+0xfff>
    8000306c:	02813823          	sd	s0,48(sp)
    80003070:	01313c23          	sd	s3,24(sp)
    80003074:	00f4f4b3          	and	s1,s1,a5
    80003078:	02113c23          	sd	ra,56(sp)
    8000307c:	03213023          	sd	s2,32(sp)
    80003080:	01413823          	sd	s4,16(sp)
    80003084:	01513423          	sd	s5,8(sp)
    80003088:	04010413          	addi	s0,sp,64
    8000308c:	000017b7          	lui	a5,0x1
    80003090:	01100993          	li	s3,17
    80003094:	00f487b3          	add	a5,s1,a5
    80003098:	01b99993          	slli	s3,s3,0x1b
    8000309c:	06f9e063          	bltu	s3,a5,800030fc <kinit+0xa4>
    800030a0:	00003a97          	auipc	s5,0x3
    800030a4:	840a8a93          	addi	s5,s5,-1984 # 800058e0 <end>
    800030a8:	0754ec63          	bltu	s1,s5,80003120 <kinit+0xc8>
    800030ac:	0734fa63          	bgeu	s1,s3,80003120 <kinit+0xc8>
    800030b0:	00088a37          	lui	s4,0x88
    800030b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800030b8:	00001917          	auipc	s2,0x1
    800030bc:	59890913          	addi	s2,s2,1432 # 80004650 <kmem>
    800030c0:	00ca1a13          	slli	s4,s4,0xc
    800030c4:	0140006f          	j	800030d8 <kinit+0x80>
    800030c8:	000017b7          	lui	a5,0x1
    800030cc:	00f484b3          	add	s1,s1,a5
    800030d0:	0554e863          	bltu	s1,s5,80003120 <kinit+0xc8>
    800030d4:	0534f663          	bgeu	s1,s3,80003120 <kinit+0xc8>
    800030d8:	00001637          	lui	a2,0x1
    800030dc:	00100593          	li	a1,1
    800030e0:	00048513          	mv	a0,s1
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	5e4080e7          	jalr	1508(ra) # 800036c8 <__memset>
    800030ec:	00093783          	ld	a5,0(s2)
    800030f0:	00f4b023          	sd	a5,0(s1)
    800030f4:	00993023          	sd	s1,0(s2)
    800030f8:	fd4498e3          	bne	s1,s4,800030c8 <kinit+0x70>
    800030fc:	03813083          	ld	ra,56(sp)
    80003100:	03013403          	ld	s0,48(sp)
    80003104:	02813483          	ld	s1,40(sp)
    80003108:	02013903          	ld	s2,32(sp)
    8000310c:	01813983          	ld	s3,24(sp)
    80003110:	01013a03          	ld	s4,16(sp)
    80003114:	00813a83          	ld	s5,8(sp)
    80003118:	04010113          	addi	sp,sp,64
    8000311c:	00008067          	ret
    80003120:	00001517          	auipc	a0,0x1
    80003124:	07050513          	addi	a0,a0,112 # 80004190 <digits+0x18>
    80003128:	fffff097          	auipc	ra,0xfffff
    8000312c:	4b4080e7          	jalr	1204(ra) # 800025dc <panic>

0000000080003130 <freerange>:
    80003130:	fc010113          	addi	sp,sp,-64
    80003134:	000017b7          	lui	a5,0x1
    80003138:	02913423          	sd	s1,40(sp)
    8000313c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003140:	009504b3          	add	s1,a0,s1
    80003144:	fffff537          	lui	a0,0xfffff
    80003148:	02813823          	sd	s0,48(sp)
    8000314c:	02113c23          	sd	ra,56(sp)
    80003150:	03213023          	sd	s2,32(sp)
    80003154:	01313c23          	sd	s3,24(sp)
    80003158:	01413823          	sd	s4,16(sp)
    8000315c:	01513423          	sd	s5,8(sp)
    80003160:	01613023          	sd	s6,0(sp)
    80003164:	04010413          	addi	s0,sp,64
    80003168:	00a4f4b3          	and	s1,s1,a0
    8000316c:	00f487b3          	add	a5,s1,a5
    80003170:	06f5e463          	bltu	a1,a5,800031d8 <freerange+0xa8>
    80003174:	00002a97          	auipc	s5,0x2
    80003178:	76ca8a93          	addi	s5,s5,1900 # 800058e0 <end>
    8000317c:	0954e263          	bltu	s1,s5,80003200 <freerange+0xd0>
    80003180:	01100993          	li	s3,17
    80003184:	01b99993          	slli	s3,s3,0x1b
    80003188:	0734fc63          	bgeu	s1,s3,80003200 <freerange+0xd0>
    8000318c:	00058a13          	mv	s4,a1
    80003190:	00001917          	auipc	s2,0x1
    80003194:	4c090913          	addi	s2,s2,1216 # 80004650 <kmem>
    80003198:	00002b37          	lui	s6,0x2
    8000319c:	0140006f          	j	800031b0 <freerange+0x80>
    800031a0:	000017b7          	lui	a5,0x1
    800031a4:	00f484b3          	add	s1,s1,a5
    800031a8:	0554ec63          	bltu	s1,s5,80003200 <freerange+0xd0>
    800031ac:	0534fa63          	bgeu	s1,s3,80003200 <freerange+0xd0>
    800031b0:	00001637          	lui	a2,0x1
    800031b4:	00100593          	li	a1,1
    800031b8:	00048513          	mv	a0,s1
    800031bc:	00000097          	auipc	ra,0x0
    800031c0:	50c080e7          	jalr	1292(ra) # 800036c8 <__memset>
    800031c4:	00093703          	ld	a4,0(s2)
    800031c8:	016487b3          	add	a5,s1,s6
    800031cc:	00e4b023          	sd	a4,0(s1)
    800031d0:	00993023          	sd	s1,0(s2)
    800031d4:	fcfa76e3          	bgeu	s4,a5,800031a0 <freerange+0x70>
    800031d8:	03813083          	ld	ra,56(sp)
    800031dc:	03013403          	ld	s0,48(sp)
    800031e0:	02813483          	ld	s1,40(sp)
    800031e4:	02013903          	ld	s2,32(sp)
    800031e8:	01813983          	ld	s3,24(sp)
    800031ec:	01013a03          	ld	s4,16(sp)
    800031f0:	00813a83          	ld	s5,8(sp)
    800031f4:	00013b03          	ld	s6,0(sp)
    800031f8:	04010113          	addi	sp,sp,64
    800031fc:	00008067          	ret
    80003200:	00001517          	auipc	a0,0x1
    80003204:	f9050513          	addi	a0,a0,-112 # 80004190 <digits+0x18>
    80003208:	fffff097          	auipc	ra,0xfffff
    8000320c:	3d4080e7          	jalr	980(ra) # 800025dc <panic>

0000000080003210 <kfree>:
    80003210:	fe010113          	addi	sp,sp,-32
    80003214:	00813823          	sd	s0,16(sp)
    80003218:	00113c23          	sd	ra,24(sp)
    8000321c:	00913423          	sd	s1,8(sp)
    80003220:	02010413          	addi	s0,sp,32
    80003224:	03451793          	slli	a5,a0,0x34
    80003228:	04079c63          	bnez	a5,80003280 <kfree+0x70>
    8000322c:	00002797          	auipc	a5,0x2
    80003230:	6b478793          	addi	a5,a5,1716 # 800058e0 <end>
    80003234:	00050493          	mv	s1,a0
    80003238:	04f56463          	bltu	a0,a5,80003280 <kfree+0x70>
    8000323c:	01100793          	li	a5,17
    80003240:	01b79793          	slli	a5,a5,0x1b
    80003244:	02f57e63          	bgeu	a0,a5,80003280 <kfree+0x70>
    80003248:	00001637          	lui	a2,0x1
    8000324c:	00100593          	li	a1,1
    80003250:	00000097          	auipc	ra,0x0
    80003254:	478080e7          	jalr	1144(ra) # 800036c8 <__memset>
    80003258:	00001797          	auipc	a5,0x1
    8000325c:	3f878793          	addi	a5,a5,1016 # 80004650 <kmem>
    80003260:	0007b703          	ld	a4,0(a5)
    80003264:	01813083          	ld	ra,24(sp)
    80003268:	01013403          	ld	s0,16(sp)
    8000326c:	00e4b023          	sd	a4,0(s1)
    80003270:	0097b023          	sd	s1,0(a5)
    80003274:	00813483          	ld	s1,8(sp)
    80003278:	02010113          	addi	sp,sp,32
    8000327c:	00008067          	ret
    80003280:	00001517          	auipc	a0,0x1
    80003284:	f1050513          	addi	a0,a0,-240 # 80004190 <digits+0x18>
    80003288:	fffff097          	auipc	ra,0xfffff
    8000328c:	354080e7          	jalr	852(ra) # 800025dc <panic>

0000000080003290 <kalloc>:
    80003290:	fe010113          	addi	sp,sp,-32
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	00113c23          	sd	ra,24(sp)
    800032a0:	02010413          	addi	s0,sp,32
    800032a4:	00001797          	auipc	a5,0x1
    800032a8:	3ac78793          	addi	a5,a5,940 # 80004650 <kmem>
    800032ac:	0007b483          	ld	s1,0(a5)
    800032b0:	02048063          	beqz	s1,800032d0 <kalloc+0x40>
    800032b4:	0004b703          	ld	a4,0(s1)
    800032b8:	00001637          	lui	a2,0x1
    800032bc:	00500593          	li	a1,5
    800032c0:	00048513          	mv	a0,s1
    800032c4:	00e7b023          	sd	a4,0(a5)
    800032c8:	00000097          	auipc	ra,0x0
    800032cc:	400080e7          	jalr	1024(ra) # 800036c8 <__memset>
    800032d0:	01813083          	ld	ra,24(sp)
    800032d4:	01013403          	ld	s0,16(sp)
    800032d8:	00048513          	mv	a0,s1
    800032dc:	00813483          	ld	s1,8(sp)
    800032e0:	02010113          	addi	sp,sp,32
    800032e4:	00008067          	ret

00000000800032e8 <initlock>:
    800032e8:	ff010113          	addi	sp,sp,-16
    800032ec:	00813423          	sd	s0,8(sp)
    800032f0:	01010413          	addi	s0,sp,16
    800032f4:	00813403          	ld	s0,8(sp)
    800032f8:	00b53423          	sd	a1,8(a0)
    800032fc:	00052023          	sw	zero,0(a0)
    80003300:	00053823          	sd	zero,16(a0)
    80003304:	01010113          	addi	sp,sp,16
    80003308:	00008067          	ret

000000008000330c <acquire>:
    8000330c:	fe010113          	addi	sp,sp,-32
    80003310:	00813823          	sd	s0,16(sp)
    80003314:	00913423          	sd	s1,8(sp)
    80003318:	00113c23          	sd	ra,24(sp)
    8000331c:	01213023          	sd	s2,0(sp)
    80003320:	02010413          	addi	s0,sp,32
    80003324:	00050493          	mv	s1,a0
    80003328:	10002973          	csrr	s2,sstatus
    8000332c:	100027f3          	csrr	a5,sstatus
    80003330:	ffd7f793          	andi	a5,a5,-3
    80003334:	10079073          	csrw	sstatus,a5
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	8e8080e7          	jalr	-1816(ra) # 80001c20 <mycpu>
    80003340:	07852783          	lw	a5,120(a0)
    80003344:	06078e63          	beqz	a5,800033c0 <acquire+0xb4>
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	8d8080e7          	jalr	-1832(ra) # 80001c20 <mycpu>
    80003350:	07852783          	lw	a5,120(a0)
    80003354:	0004a703          	lw	a4,0(s1)
    80003358:	0017879b          	addiw	a5,a5,1
    8000335c:	06f52c23          	sw	a5,120(a0)
    80003360:	04071063          	bnez	a4,800033a0 <acquire+0x94>
    80003364:	00100713          	li	a4,1
    80003368:	00070793          	mv	a5,a4
    8000336c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003370:	0007879b          	sext.w	a5,a5
    80003374:	fe079ae3          	bnez	a5,80003368 <acquire+0x5c>
    80003378:	0ff0000f          	fence
    8000337c:	fffff097          	auipc	ra,0xfffff
    80003380:	8a4080e7          	jalr	-1884(ra) # 80001c20 <mycpu>
    80003384:	01813083          	ld	ra,24(sp)
    80003388:	01013403          	ld	s0,16(sp)
    8000338c:	00a4b823          	sd	a0,16(s1)
    80003390:	00013903          	ld	s2,0(sp)
    80003394:	00813483          	ld	s1,8(sp)
    80003398:	02010113          	addi	sp,sp,32
    8000339c:	00008067          	ret
    800033a0:	0104b903          	ld	s2,16(s1)
    800033a4:	fffff097          	auipc	ra,0xfffff
    800033a8:	87c080e7          	jalr	-1924(ra) # 80001c20 <mycpu>
    800033ac:	faa91ce3          	bne	s2,a0,80003364 <acquire+0x58>
    800033b0:	00001517          	auipc	a0,0x1
    800033b4:	de850513          	addi	a0,a0,-536 # 80004198 <digits+0x20>
    800033b8:	fffff097          	auipc	ra,0xfffff
    800033bc:	224080e7          	jalr	548(ra) # 800025dc <panic>
    800033c0:	00195913          	srli	s2,s2,0x1
    800033c4:	fffff097          	auipc	ra,0xfffff
    800033c8:	85c080e7          	jalr	-1956(ra) # 80001c20 <mycpu>
    800033cc:	00197913          	andi	s2,s2,1
    800033d0:	07252e23          	sw	s2,124(a0)
    800033d4:	f75ff06f          	j	80003348 <acquire+0x3c>

00000000800033d8 <release>:
    800033d8:	fe010113          	addi	sp,sp,-32
    800033dc:	00813823          	sd	s0,16(sp)
    800033e0:	00113c23          	sd	ra,24(sp)
    800033e4:	00913423          	sd	s1,8(sp)
    800033e8:	01213023          	sd	s2,0(sp)
    800033ec:	02010413          	addi	s0,sp,32
    800033f0:	00052783          	lw	a5,0(a0)
    800033f4:	00079a63          	bnez	a5,80003408 <release+0x30>
    800033f8:	00001517          	auipc	a0,0x1
    800033fc:	da850513          	addi	a0,a0,-600 # 800041a0 <digits+0x28>
    80003400:	fffff097          	auipc	ra,0xfffff
    80003404:	1dc080e7          	jalr	476(ra) # 800025dc <panic>
    80003408:	01053903          	ld	s2,16(a0)
    8000340c:	00050493          	mv	s1,a0
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	810080e7          	jalr	-2032(ra) # 80001c20 <mycpu>
    80003418:	fea910e3          	bne	s2,a0,800033f8 <release+0x20>
    8000341c:	0004b823          	sd	zero,16(s1)
    80003420:	0ff0000f          	fence
    80003424:	0f50000f          	fence	iorw,ow
    80003428:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000342c:	ffffe097          	auipc	ra,0xffffe
    80003430:	7f4080e7          	jalr	2036(ra) # 80001c20 <mycpu>
    80003434:	100027f3          	csrr	a5,sstatus
    80003438:	0027f793          	andi	a5,a5,2
    8000343c:	04079a63          	bnez	a5,80003490 <release+0xb8>
    80003440:	07852783          	lw	a5,120(a0)
    80003444:	02f05e63          	blez	a5,80003480 <release+0xa8>
    80003448:	fff7871b          	addiw	a4,a5,-1
    8000344c:	06e52c23          	sw	a4,120(a0)
    80003450:	00071c63          	bnez	a4,80003468 <release+0x90>
    80003454:	07c52783          	lw	a5,124(a0)
    80003458:	00078863          	beqz	a5,80003468 <release+0x90>
    8000345c:	100027f3          	csrr	a5,sstatus
    80003460:	0027e793          	ori	a5,a5,2
    80003464:	10079073          	csrw	sstatus,a5
    80003468:	01813083          	ld	ra,24(sp)
    8000346c:	01013403          	ld	s0,16(sp)
    80003470:	00813483          	ld	s1,8(sp)
    80003474:	00013903          	ld	s2,0(sp)
    80003478:	02010113          	addi	sp,sp,32
    8000347c:	00008067          	ret
    80003480:	00001517          	auipc	a0,0x1
    80003484:	d4050513          	addi	a0,a0,-704 # 800041c0 <digits+0x48>
    80003488:	fffff097          	auipc	ra,0xfffff
    8000348c:	154080e7          	jalr	340(ra) # 800025dc <panic>
    80003490:	00001517          	auipc	a0,0x1
    80003494:	d1850513          	addi	a0,a0,-744 # 800041a8 <digits+0x30>
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	144080e7          	jalr	324(ra) # 800025dc <panic>

00000000800034a0 <holding>:
    800034a0:	00052783          	lw	a5,0(a0)
    800034a4:	00079663          	bnez	a5,800034b0 <holding+0x10>
    800034a8:	00000513          	li	a0,0
    800034ac:	00008067          	ret
    800034b0:	fe010113          	addi	sp,sp,-32
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00913423          	sd	s1,8(sp)
    800034bc:	00113c23          	sd	ra,24(sp)
    800034c0:	02010413          	addi	s0,sp,32
    800034c4:	01053483          	ld	s1,16(a0)
    800034c8:	ffffe097          	auipc	ra,0xffffe
    800034cc:	758080e7          	jalr	1880(ra) # 80001c20 <mycpu>
    800034d0:	01813083          	ld	ra,24(sp)
    800034d4:	01013403          	ld	s0,16(sp)
    800034d8:	40a48533          	sub	a0,s1,a0
    800034dc:	00153513          	seqz	a0,a0
    800034e0:	00813483          	ld	s1,8(sp)
    800034e4:	02010113          	addi	sp,sp,32
    800034e8:	00008067          	ret

00000000800034ec <push_off>:
    800034ec:	fe010113          	addi	sp,sp,-32
    800034f0:	00813823          	sd	s0,16(sp)
    800034f4:	00113c23          	sd	ra,24(sp)
    800034f8:	00913423          	sd	s1,8(sp)
    800034fc:	02010413          	addi	s0,sp,32
    80003500:	100024f3          	csrr	s1,sstatus
    80003504:	100027f3          	csrr	a5,sstatus
    80003508:	ffd7f793          	andi	a5,a5,-3
    8000350c:	10079073          	csrw	sstatus,a5
    80003510:	ffffe097          	auipc	ra,0xffffe
    80003514:	710080e7          	jalr	1808(ra) # 80001c20 <mycpu>
    80003518:	07852783          	lw	a5,120(a0)
    8000351c:	02078663          	beqz	a5,80003548 <push_off+0x5c>
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	700080e7          	jalr	1792(ra) # 80001c20 <mycpu>
    80003528:	07852783          	lw	a5,120(a0)
    8000352c:	01813083          	ld	ra,24(sp)
    80003530:	01013403          	ld	s0,16(sp)
    80003534:	0017879b          	addiw	a5,a5,1
    80003538:	06f52c23          	sw	a5,120(a0)
    8000353c:	00813483          	ld	s1,8(sp)
    80003540:	02010113          	addi	sp,sp,32
    80003544:	00008067          	ret
    80003548:	0014d493          	srli	s1,s1,0x1
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	6d4080e7          	jalr	1748(ra) # 80001c20 <mycpu>
    80003554:	0014f493          	andi	s1,s1,1
    80003558:	06952e23          	sw	s1,124(a0)
    8000355c:	fc5ff06f          	j	80003520 <push_off+0x34>

0000000080003560 <pop_off>:
    80003560:	ff010113          	addi	sp,sp,-16
    80003564:	00813023          	sd	s0,0(sp)
    80003568:	00113423          	sd	ra,8(sp)
    8000356c:	01010413          	addi	s0,sp,16
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	6b0080e7          	jalr	1712(ra) # 80001c20 <mycpu>
    80003578:	100027f3          	csrr	a5,sstatus
    8000357c:	0027f793          	andi	a5,a5,2
    80003580:	04079663          	bnez	a5,800035cc <pop_off+0x6c>
    80003584:	07852783          	lw	a5,120(a0)
    80003588:	02f05a63          	blez	a5,800035bc <pop_off+0x5c>
    8000358c:	fff7871b          	addiw	a4,a5,-1
    80003590:	06e52c23          	sw	a4,120(a0)
    80003594:	00071c63          	bnez	a4,800035ac <pop_off+0x4c>
    80003598:	07c52783          	lw	a5,124(a0)
    8000359c:	00078863          	beqz	a5,800035ac <pop_off+0x4c>
    800035a0:	100027f3          	csrr	a5,sstatus
    800035a4:	0027e793          	ori	a5,a5,2
    800035a8:	10079073          	csrw	sstatus,a5
    800035ac:	00813083          	ld	ra,8(sp)
    800035b0:	00013403          	ld	s0,0(sp)
    800035b4:	01010113          	addi	sp,sp,16
    800035b8:	00008067          	ret
    800035bc:	00001517          	auipc	a0,0x1
    800035c0:	c0450513          	addi	a0,a0,-1020 # 800041c0 <digits+0x48>
    800035c4:	fffff097          	auipc	ra,0xfffff
    800035c8:	018080e7          	jalr	24(ra) # 800025dc <panic>
    800035cc:	00001517          	auipc	a0,0x1
    800035d0:	bdc50513          	addi	a0,a0,-1060 # 800041a8 <digits+0x30>
    800035d4:	fffff097          	auipc	ra,0xfffff
    800035d8:	008080e7          	jalr	8(ra) # 800025dc <panic>

00000000800035dc <push_on>:
    800035dc:	fe010113          	addi	sp,sp,-32
    800035e0:	00813823          	sd	s0,16(sp)
    800035e4:	00113c23          	sd	ra,24(sp)
    800035e8:	00913423          	sd	s1,8(sp)
    800035ec:	02010413          	addi	s0,sp,32
    800035f0:	100024f3          	csrr	s1,sstatus
    800035f4:	100027f3          	csrr	a5,sstatus
    800035f8:	0027e793          	ori	a5,a5,2
    800035fc:	10079073          	csrw	sstatus,a5
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	620080e7          	jalr	1568(ra) # 80001c20 <mycpu>
    80003608:	07852783          	lw	a5,120(a0)
    8000360c:	02078663          	beqz	a5,80003638 <push_on+0x5c>
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	610080e7          	jalr	1552(ra) # 80001c20 <mycpu>
    80003618:	07852783          	lw	a5,120(a0)
    8000361c:	01813083          	ld	ra,24(sp)
    80003620:	01013403          	ld	s0,16(sp)
    80003624:	0017879b          	addiw	a5,a5,1
    80003628:	06f52c23          	sw	a5,120(a0)
    8000362c:	00813483          	ld	s1,8(sp)
    80003630:	02010113          	addi	sp,sp,32
    80003634:	00008067          	ret
    80003638:	0014d493          	srli	s1,s1,0x1
    8000363c:	ffffe097          	auipc	ra,0xffffe
    80003640:	5e4080e7          	jalr	1508(ra) # 80001c20 <mycpu>
    80003644:	0014f493          	andi	s1,s1,1
    80003648:	06952e23          	sw	s1,124(a0)
    8000364c:	fc5ff06f          	j	80003610 <push_on+0x34>

0000000080003650 <pop_on>:
    80003650:	ff010113          	addi	sp,sp,-16
    80003654:	00813023          	sd	s0,0(sp)
    80003658:	00113423          	sd	ra,8(sp)
    8000365c:	01010413          	addi	s0,sp,16
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	5c0080e7          	jalr	1472(ra) # 80001c20 <mycpu>
    80003668:	100027f3          	csrr	a5,sstatus
    8000366c:	0027f793          	andi	a5,a5,2
    80003670:	04078463          	beqz	a5,800036b8 <pop_on+0x68>
    80003674:	07852783          	lw	a5,120(a0)
    80003678:	02f05863          	blez	a5,800036a8 <pop_on+0x58>
    8000367c:	fff7879b          	addiw	a5,a5,-1
    80003680:	06f52c23          	sw	a5,120(a0)
    80003684:	07853783          	ld	a5,120(a0)
    80003688:	00079863          	bnez	a5,80003698 <pop_on+0x48>
    8000368c:	100027f3          	csrr	a5,sstatus
    80003690:	ffd7f793          	andi	a5,a5,-3
    80003694:	10079073          	csrw	sstatus,a5
    80003698:	00813083          	ld	ra,8(sp)
    8000369c:	00013403          	ld	s0,0(sp)
    800036a0:	01010113          	addi	sp,sp,16
    800036a4:	00008067          	ret
    800036a8:	00001517          	auipc	a0,0x1
    800036ac:	b4050513          	addi	a0,a0,-1216 # 800041e8 <digits+0x70>
    800036b0:	fffff097          	auipc	ra,0xfffff
    800036b4:	f2c080e7          	jalr	-212(ra) # 800025dc <panic>
    800036b8:	00001517          	auipc	a0,0x1
    800036bc:	b1050513          	addi	a0,a0,-1264 # 800041c8 <digits+0x50>
    800036c0:	fffff097          	auipc	ra,0xfffff
    800036c4:	f1c080e7          	jalr	-228(ra) # 800025dc <panic>

00000000800036c8 <__memset>:
    800036c8:	ff010113          	addi	sp,sp,-16
    800036cc:	00813423          	sd	s0,8(sp)
    800036d0:	01010413          	addi	s0,sp,16
    800036d4:	1a060e63          	beqz	a2,80003890 <__memset+0x1c8>
    800036d8:	40a007b3          	neg	a5,a0
    800036dc:	0077f793          	andi	a5,a5,7
    800036e0:	00778693          	addi	a3,a5,7
    800036e4:	00b00813          	li	a6,11
    800036e8:	0ff5f593          	andi	a1,a1,255
    800036ec:	fff6071b          	addiw	a4,a2,-1
    800036f0:	1b06e663          	bltu	a3,a6,8000389c <__memset+0x1d4>
    800036f4:	1cd76463          	bltu	a4,a3,800038bc <__memset+0x1f4>
    800036f8:	1a078e63          	beqz	a5,800038b4 <__memset+0x1ec>
    800036fc:	00b50023          	sb	a1,0(a0)
    80003700:	00100713          	li	a4,1
    80003704:	1ae78463          	beq	a5,a4,800038ac <__memset+0x1e4>
    80003708:	00b500a3          	sb	a1,1(a0)
    8000370c:	00200713          	li	a4,2
    80003710:	1ae78a63          	beq	a5,a4,800038c4 <__memset+0x1fc>
    80003714:	00b50123          	sb	a1,2(a0)
    80003718:	00300713          	li	a4,3
    8000371c:	18e78463          	beq	a5,a4,800038a4 <__memset+0x1dc>
    80003720:	00b501a3          	sb	a1,3(a0)
    80003724:	00400713          	li	a4,4
    80003728:	1ae78263          	beq	a5,a4,800038cc <__memset+0x204>
    8000372c:	00b50223          	sb	a1,4(a0)
    80003730:	00500713          	li	a4,5
    80003734:	1ae78063          	beq	a5,a4,800038d4 <__memset+0x20c>
    80003738:	00b502a3          	sb	a1,5(a0)
    8000373c:	00700713          	li	a4,7
    80003740:	18e79e63          	bne	a5,a4,800038dc <__memset+0x214>
    80003744:	00b50323          	sb	a1,6(a0)
    80003748:	00700e93          	li	t4,7
    8000374c:	00859713          	slli	a4,a1,0x8
    80003750:	00e5e733          	or	a4,a1,a4
    80003754:	01059e13          	slli	t3,a1,0x10
    80003758:	01c76e33          	or	t3,a4,t3
    8000375c:	01859313          	slli	t1,a1,0x18
    80003760:	006e6333          	or	t1,t3,t1
    80003764:	02059893          	slli	a7,a1,0x20
    80003768:	40f60e3b          	subw	t3,a2,a5
    8000376c:	011368b3          	or	a7,t1,a7
    80003770:	02859813          	slli	a6,a1,0x28
    80003774:	0108e833          	or	a6,a7,a6
    80003778:	03059693          	slli	a3,a1,0x30
    8000377c:	003e589b          	srliw	a7,t3,0x3
    80003780:	00d866b3          	or	a3,a6,a3
    80003784:	03859713          	slli	a4,a1,0x38
    80003788:	00389813          	slli	a6,a7,0x3
    8000378c:	00f507b3          	add	a5,a0,a5
    80003790:	00e6e733          	or	a4,a3,a4
    80003794:	000e089b          	sext.w	a7,t3
    80003798:	00f806b3          	add	a3,a6,a5
    8000379c:	00e7b023          	sd	a4,0(a5)
    800037a0:	00878793          	addi	a5,a5,8
    800037a4:	fed79ce3          	bne	a5,a3,8000379c <__memset+0xd4>
    800037a8:	ff8e7793          	andi	a5,t3,-8
    800037ac:	0007871b          	sext.w	a4,a5
    800037b0:	01d787bb          	addw	a5,a5,t4
    800037b4:	0ce88e63          	beq	a7,a4,80003890 <__memset+0x1c8>
    800037b8:	00f50733          	add	a4,a0,a5
    800037bc:	00b70023          	sb	a1,0(a4)
    800037c0:	0017871b          	addiw	a4,a5,1
    800037c4:	0cc77663          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    800037c8:	00e50733          	add	a4,a0,a4
    800037cc:	00b70023          	sb	a1,0(a4)
    800037d0:	0027871b          	addiw	a4,a5,2
    800037d4:	0ac77e63          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    800037d8:	00e50733          	add	a4,a0,a4
    800037dc:	00b70023          	sb	a1,0(a4)
    800037e0:	0037871b          	addiw	a4,a5,3
    800037e4:	0ac77663          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    800037e8:	00e50733          	add	a4,a0,a4
    800037ec:	00b70023          	sb	a1,0(a4)
    800037f0:	0047871b          	addiw	a4,a5,4
    800037f4:	08c77e63          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    800037f8:	00e50733          	add	a4,a0,a4
    800037fc:	00b70023          	sb	a1,0(a4)
    80003800:	0057871b          	addiw	a4,a5,5
    80003804:	08c77663          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    80003808:	00e50733          	add	a4,a0,a4
    8000380c:	00b70023          	sb	a1,0(a4)
    80003810:	0067871b          	addiw	a4,a5,6
    80003814:	06c77e63          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    80003818:	00e50733          	add	a4,a0,a4
    8000381c:	00b70023          	sb	a1,0(a4)
    80003820:	0077871b          	addiw	a4,a5,7
    80003824:	06c77663          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    80003828:	00e50733          	add	a4,a0,a4
    8000382c:	00b70023          	sb	a1,0(a4)
    80003830:	0087871b          	addiw	a4,a5,8
    80003834:	04c77e63          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    80003838:	00e50733          	add	a4,a0,a4
    8000383c:	00b70023          	sb	a1,0(a4)
    80003840:	0097871b          	addiw	a4,a5,9
    80003844:	04c77663          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    80003848:	00e50733          	add	a4,a0,a4
    8000384c:	00b70023          	sb	a1,0(a4)
    80003850:	00a7871b          	addiw	a4,a5,10
    80003854:	02c77e63          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    80003858:	00e50733          	add	a4,a0,a4
    8000385c:	00b70023          	sb	a1,0(a4)
    80003860:	00b7871b          	addiw	a4,a5,11
    80003864:	02c77663          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    80003868:	00e50733          	add	a4,a0,a4
    8000386c:	00b70023          	sb	a1,0(a4)
    80003870:	00c7871b          	addiw	a4,a5,12
    80003874:	00c77e63          	bgeu	a4,a2,80003890 <__memset+0x1c8>
    80003878:	00e50733          	add	a4,a0,a4
    8000387c:	00b70023          	sb	a1,0(a4)
    80003880:	00d7879b          	addiw	a5,a5,13
    80003884:	00c7f663          	bgeu	a5,a2,80003890 <__memset+0x1c8>
    80003888:	00f507b3          	add	a5,a0,a5
    8000388c:	00b78023          	sb	a1,0(a5)
    80003890:	00813403          	ld	s0,8(sp)
    80003894:	01010113          	addi	sp,sp,16
    80003898:	00008067          	ret
    8000389c:	00b00693          	li	a3,11
    800038a0:	e55ff06f          	j	800036f4 <__memset+0x2c>
    800038a4:	00300e93          	li	t4,3
    800038a8:	ea5ff06f          	j	8000374c <__memset+0x84>
    800038ac:	00100e93          	li	t4,1
    800038b0:	e9dff06f          	j	8000374c <__memset+0x84>
    800038b4:	00000e93          	li	t4,0
    800038b8:	e95ff06f          	j	8000374c <__memset+0x84>
    800038bc:	00000793          	li	a5,0
    800038c0:	ef9ff06f          	j	800037b8 <__memset+0xf0>
    800038c4:	00200e93          	li	t4,2
    800038c8:	e85ff06f          	j	8000374c <__memset+0x84>
    800038cc:	00400e93          	li	t4,4
    800038d0:	e7dff06f          	j	8000374c <__memset+0x84>
    800038d4:	00500e93          	li	t4,5
    800038d8:	e75ff06f          	j	8000374c <__memset+0x84>
    800038dc:	00600e93          	li	t4,6
    800038e0:	e6dff06f          	j	8000374c <__memset+0x84>

00000000800038e4 <__memmove>:
    800038e4:	ff010113          	addi	sp,sp,-16
    800038e8:	00813423          	sd	s0,8(sp)
    800038ec:	01010413          	addi	s0,sp,16
    800038f0:	0e060863          	beqz	a2,800039e0 <__memmove+0xfc>
    800038f4:	fff6069b          	addiw	a3,a2,-1
    800038f8:	0006881b          	sext.w	a6,a3
    800038fc:	0ea5e863          	bltu	a1,a0,800039ec <__memmove+0x108>
    80003900:	00758713          	addi	a4,a1,7
    80003904:	00a5e7b3          	or	a5,a1,a0
    80003908:	40a70733          	sub	a4,a4,a0
    8000390c:	0077f793          	andi	a5,a5,7
    80003910:	00f73713          	sltiu	a4,a4,15
    80003914:	00174713          	xori	a4,a4,1
    80003918:	0017b793          	seqz	a5,a5
    8000391c:	00e7f7b3          	and	a5,a5,a4
    80003920:	10078863          	beqz	a5,80003a30 <__memmove+0x14c>
    80003924:	00900793          	li	a5,9
    80003928:	1107f463          	bgeu	a5,a6,80003a30 <__memmove+0x14c>
    8000392c:	0036581b          	srliw	a6,a2,0x3
    80003930:	fff8081b          	addiw	a6,a6,-1
    80003934:	02081813          	slli	a6,a6,0x20
    80003938:	01d85893          	srli	a7,a6,0x1d
    8000393c:	00858813          	addi	a6,a1,8
    80003940:	00058793          	mv	a5,a1
    80003944:	00050713          	mv	a4,a0
    80003948:	01088833          	add	a6,a7,a6
    8000394c:	0007b883          	ld	a7,0(a5)
    80003950:	00878793          	addi	a5,a5,8
    80003954:	00870713          	addi	a4,a4,8
    80003958:	ff173c23          	sd	a7,-8(a4)
    8000395c:	ff0798e3          	bne	a5,a6,8000394c <__memmove+0x68>
    80003960:	ff867713          	andi	a4,a2,-8
    80003964:	02071793          	slli	a5,a4,0x20
    80003968:	0207d793          	srli	a5,a5,0x20
    8000396c:	00f585b3          	add	a1,a1,a5
    80003970:	40e686bb          	subw	a3,a3,a4
    80003974:	00f507b3          	add	a5,a0,a5
    80003978:	06e60463          	beq	a2,a4,800039e0 <__memmove+0xfc>
    8000397c:	0005c703          	lbu	a4,0(a1)
    80003980:	00e78023          	sb	a4,0(a5)
    80003984:	04068e63          	beqz	a3,800039e0 <__memmove+0xfc>
    80003988:	0015c603          	lbu	a2,1(a1)
    8000398c:	00100713          	li	a4,1
    80003990:	00c780a3          	sb	a2,1(a5)
    80003994:	04e68663          	beq	a3,a4,800039e0 <__memmove+0xfc>
    80003998:	0025c603          	lbu	a2,2(a1)
    8000399c:	00200713          	li	a4,2
    800039a0:	00c78123          	sb	a2,2(a5)
    800039a4:	02e68e63          	beq	a3,a4,800039e0 <__memmove+0xfc>
    800039a8:	0035c603          	lbu	a2,3(a1)
    800039ac:	00300713          	li	a4,3
    800039b0:	00c781a3          	sb	a2,3(a5)
    800039b4:	02e68663          	beq	a3,a4,800039e0 <__memmove+0xfc>
    800039b8:	0045c603          	lbu	a2,4(a1)
    800039bc:	00400713          	li	a4,4
    800039c0:	00c78223          	sb	a2,4(a5)
    800039c4:	00e68e63          	beq	a3,a4,800039e0 <__memmove+0xfc>
    800039c8:	0055c603          	lbu	a2,5(a1)
    800039cc:	00500713          	li	a4,5
    800039d0:	00c782a3          	sb	a2,5(a5)
    800039d4:	00e68663          	beq	a3,a4,800039e0 <__memmove+0xfc>
    800039d8:	0065c703          	lbu	a4,6(a1)
    800039dc:	00e78323          	sb	a4,6(a5)
    800039e0:	00813403          	ld	s0,8(sp)
    800039e4:	01010113          	addi	sp,sp,16
    800039e8:	00008067          	ret
    800039ec:	02061713          	slli	a4,a2,0x20
    800039f0:	02075713          	srli	a4,a4,0x20
    800039f4:	00e587b3          	add	a5,a1,a4
    800039f8:	f0f574e3          	bgeu	a0,a5,80003900 <__memmove+0x1c>
    800039fc:	02069613          	slli	a2,a3,0x20
    80003a00:	02065613          	srli	a2,a2,0x20
    80003a04:	fff64613          	not	a2,a2
    80003a08:	00e50733          	add	a4,a0,a4
    80003a0c:	00c78633          	add	a2,a5,a2
    80003a10:	fff7c683          	lbu	a3,-1(a5)
    80003a14:	fff78793          	addi	a5,a5,-1
    80003a18:	fff70713          	addi	a4,a4,-1
    80003a1c:	00d70023          	sb	a3,0(a4)
    80003a20:	fec798e3          	bne	a5,a2,80003a10 <__memmove+0x12c>
    80003a24:	00813403          	ld	s0,8(sp)
    80003a28:	01010113          	addi	sp,sp,16
    80003a2c:	00008067          	ret
    80003a30:	02069713          	slli	a4,a3,0x20
    80003a34:	02075713          	srli	a4,a4,0x20
    80003a38:	00170713          	addi	a4,a4,1
    80003a3c:	00e50733          	add	a4,a0,a4
    80003a40:	00050793          	mv	a5,a0
    80003a44:	0005c683          	lbu	a3,0(a1)
    80003a48:	00178793          	addi	a5,a5,1
    80003a4c:	00158593          	addi	a1,a1,1
    80003a50:	fed78fa3          	sb	a3,-1(a5)
    80003a54:	fee798e3          	bne	a5,a4,80003a44 <__memmove+0x160>
    80003a58:	f89ff06f          	j	800039e0 <__memmove+0xfc>

0000000080003a5c <__putc>:
    80003a5c:	fe010113          	addi	sp,sp,-32
    80003a60:	00813823          	sd	s0,16(sp)
    80003a64:	00113c23          	sd	ra,24(sp)
    80003a68:	02010413          	addi	s0,sp,32
    80003a6c:	00050793          	mv	a5,a0
    80003a70:	fef40593          	addi	a1,s0,-17
    80003a74:	00100613          	li	a2,1
    80003a78:	00000513          	li	a0,0
    80003a7c:	fef407a3          	sb	a5,-17(s0)
    80003a80:	fffff097          	auipc	ra,0xfffff
    80003a84:	b3c080e7          	jalr	-1220(ra) # 800025bc <console_write>
    80003a88:	01813083          	ld	ra,24(sp)
    80003a8c:	01013403          	ld	s0,16(sp)
    80003a90:	02010113          	addi	sp,sp,32
    80003a94:	00008067          	ret

0000000080003a98 <__getc>:
    80003a98:	fe010113          	addi	sp,sp,-32
    80003a9c:	00813823          	sd	s0,16(sp)
    80003aa0:	00113c23          	sd	ra,24(sp)
    80003aa4:	02010413          	addi	s0,sp,32
    80003aa8:	fe840593          	addi	a1,s0,-24
    80003aac:	00100613          	li	a2,1
    80003ab0:	00000513          	li	a0,0
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	ae8080e7          	jalr	-1304(ra) # 8000259c <console_read>
    80003abc:	fe844503          	lbu	a0,-24(s0)
    80003ac0:	01813083          	ld	ra,24(sp)
    80003ac4:	01013403          	ld	s0,16(sp)
    80003ac8:	02010113          	addi	sp,sp,32
    80003acc:	00008067          	ret

0000000080003ad0 <console_handler>:
    80003ad0:	fe010113          	addi	sp,sp,-32
    80003ad4:	00813823          	sd	s0,16(sp)
    80003ad8:	00113c23          	sd	ra,24(sp)
    80003adc:	00913423          	sd	s1,8(sp)
    80003ae0:	02010413          	addi	s0,sp,32
    80003ae4:	14202773          	csrr	a4,scause
    80003ae8:	100027f3          	csrr	a5,sstatus
    80003aec:	0027f793          	andi	a5,a5,2
    80003af0:	06079e63          	bnez	a5,80003b6c <console_handler+0x9c>
    80003af4:	00074c63          	bltz	a4,80003b0c <console_handler+0x3c>
    80003af8:	01813083          	ld	ra,24(sp)
    80003afc:	01013403          	ld	s0,16(sp)
    80003b00:	00813483          	ld	s1,8(sp)
    80003b04:	02010113          	addi	sp,sp,32
    80003b08:	00008067          	ret
    80003b0c:	0ff77713          	andi	a4,a4,255
    80003b10:	00900793          	li	a5,9
    80003b14:	fef712e3          	bne	a4,a5,80003af8 <console_handler+0x28>
    80003b18:	ffffe097          	auipc	ra,0xffffe
    80003b1c:	6dc080e7          	jalr	1756(ra) # 800021f4 <plic_claim>
    80003b20:	00a00793          	li	a5,10
    80003b24:	00050493          	mv	s1,a0
    80003b28:	02f50c63          	beq	a0,a5,80003b60 <console_handler+0x90>
    80003b2c:	fc0506e3          	beqz	a0,80003af8 <console_handler+0x28>
    80003b30:	00050593          	mv	a1,a0
    80003b34:	00000517          	auipc	a0,0x0
    80003b38:	5bc50513          	addi	a0,a0,1468 # 800040f0 <CONSOLE_STATUS+0xe0>
    80003b3c:	fffff097          	auipc	ra,0xfffff
    80003b40:	afc080e7          	jalr	-1284(ra) # 80002638 <__printf>
    80003b44:	01013403          	ld	s0,16(sp)
    80003b48:	01813083          	ld	ra,24(sp)
    80003b4c:	00048513          	mv	a0,s1
    80003b50:	00813483          	ld	s1,8(sp)
    80003b54:	02010113          	addi	sp,sp,32
    80003b58:	ffffe317          	auipc	t1,0xffffe
    80003b5c:	6d430067          	jr	1748(t1) # 8000222c <plic_complete>
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	3e0080e7          	jalr	992(ra) # 80002f40 <uartintr>
    80003b68:	fddff06f          	j	80003b44 <console_handler+0x74>
    80003b6c:	00000517          	auipc	a0,0x0
    80003b70:	68450513          	addi	a0,a0,1668 # 800041f0 <digits+0x78>
    80003b74:	fffff097          	auipc	ra,0xfffff
    80003b78:	a68080e7          	jalr	-1432(ra) # 800025dc <panic>
	...
