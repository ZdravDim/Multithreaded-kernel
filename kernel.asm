
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	81813103          	ld	sp,-2024(sp) # 80004818 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	419010ef          	jal	ra,80001c34 <start>

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
    80001084:	30d000ef          	jal	ra,80001b90 <interruptRoutine>

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
    800012c8:	a38080e7          	jalr	-1480(ra) # 80003cfc <__putc>
    __putc('\n');
    800012cc:	00a00513          	li	a0,10
    800012d0:	00003097          	auipc	ra,0x3
    800012d4:	a2c080e7          	jalr	-1492(ra) # 80003cfc <__putc>
    MemoryAllocator::getInstance();
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	394080e7          	jalr	916(ra) # 8000166c <_ZN15MemoryAllocator11getInstanceEv>
    MemoryAllocator::mem_alloc(1);
    800012e0:	00100513          	li	a0,1
    800012e4:	00000097          	auipc	ra,0x0
    800012e8:	26c080e7          	jalr	620(ra) # 80001550 <_ZN15MemoryAllocator9mem_allocEm>
    MemoryAllocator::print();
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	5bc080e7          	jalr	1468(ra) # 800018a8 <_ZN15MemoryAllocator5printEv>
    MemoryAllocator::mem_free((void*)(1 * MEM_BLOCK_SIZE + sizeof(MemoryAllocator::MemSeg) + (char*)HEAP_START_ADDR));
    800012f4:	00003797          	auipc	a5,0x3
    800012f8:	51c7b783          	ld	a5,1308(a5) # 80004810 <_GLOBAL_OFFSET_TABLE_+0x8>
    800012fc:	0007b503          	ld	a0,0(a5)
    80001300:	05850513          	addi	a0,a0,88 # 1058 <_entry-0x7fffefa8>
    80001304:	00000097          	auipc	ra,0x0
    80001308:	438080e7          	jalr	1080(ra) # 8000173c <_ZN15MemoryAllocator8mem_freeEPv>
    MemoryAllocator::print();
    8000130c:	00000097          	auipc	ra,0x0
    80001310:	59c080e7          	jalr	1436(ra) # 800018a8 <_ZN15MemoryAllocator5printEv>
    return 0;
    80001314:	00000513          	li	a0,0
    80001318:	00813083          	ld	ra,8(sp)
    8000131c:	00013403          	ld	s0,0(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <_ZN3TCB16wrapper_functionEv>:

void TCB::thread_exit() {
    //...
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
    80001358:	00003517          	auipc	a0,0x3
    8000135c:	51850513          	addi	a0,a0,1304 # 80004870 <_ZN3TCB3cntE>
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
    8000138c:	1c8080e7          	jalr	456(ra) # 80001550 <_ZN15MemoryAllocator9mem_allocEm>
    80001390:	02a4b823          	sd	a0,48(s1)
    time_slice = DEFAULT_TIME_SLICE;
    80001394:	00200793          	li	a5,2
    80001398:	02f4bc23          	sd	a5,56(s1)
}
    8000139c:	02813083          	ld	ra,40(sp)
    800013a0:	02013403          	ld	s0,32(sp)
    800013a4:	01813483          	ld	s1,24(sp)
    800013a8:	03010113          	addi	sp,sp,48
    800013ac:	00008067          	ret

00000000800013b0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_space) {
    800013b0:	fa010113          	addi	sp,sp,-96
    800013b4:	04113c23          	sd	ra,88(sp)
    800013b8:	04813823          	sd	s0,80(sp)
    800013bc:	04913423          	sd	s1,72(sp)
    800013c0:	05213023          	sd	s2,64(sp)
    800013c4:	03313c23          	sd	s3,56(sp)
    800013c8:	03413823          	sd	s4,48(sp)
    800013cc:	03513423          	sd	s5,40(sp)
    800013d0:	06010413          	addi	s0,sp,96
    800013d4:	00050993          	mv	s3,a0
    800013d8:	00058a13          	mv	s4,a1
    800013dc:	00060a93          	mv	s5,a2
    800013e0:	00068913          	mv	s2,a3
            (uint64) stack_space + DEFAULT_STACK_SIZE - 1
    800013e4:	000017b7          	lui	a5,0x1
    800013e8:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800013ec:	00f687b3          	add	a5,a3,a5
    *handle = new TCB(start_routine, arg, stack_space, context);
    800013f0:	00000717          	auipc	a4,0x0
    800013f4:	f3870713          	addi	a4,a4,-200 # 80001328 <_ZN3TCB16wrapper_functionEv>
    800013f8:	fae43823          	sd	a4,-80(s0)
    800013fc:	faf43c23          	sd	a5,-72(s0)
    80001400:	04000513          	li	a0,64
    80001404:	00000097          	auipc	ra,0x0
    80001408:	0b8080e7          	jalr	184(ra) # 800014bc <_Znwm>
    8000140c:	00050493          	mv	s1,a0
    80001410:	fb043703          	ld	a4,-80(s0)
    80001414:	fb843783          	ld	a5,-72(s0)
    80001418:	00090693          	mv	a3,s2
    8000141c:	000a8613          	mv	a2,s5
    80001420:	000a0593          	mv	a1,s4
    80001424:	00000097          	auipc	ra,0x0
    80001428:	f1c080e7          	jalr	-228(ra) # 80001340 <_ZN3TCBC1EPFvPvES0_S0_7Context>
    8000142c:	0099b023          	sd	s1,0(s3)
    return (*handle) -> id;
    80001430:	0004a503          	lw	a0,0(s1)
}
    80001434:	05813083          	ld	ra,88(sp)
    80001438:	05013403          	ld	s0,80(sp)
    8000143c:	04813483          	ld	s1,72(sp)
    80001440:	04013903          	ld	s2,64(sp)
    80001444:	03813983          	ld	s3,56(sp)
    80001448:	03013a03          	ld	s4,48(sp)
    8000144c:	02813a83          	ld	s5,40(sp)
    80001450:	06010113          	addi	sp,sp,96
    80001454:	00008067          	ret
    80001458:	00050913          	mv	s2,a0
    *handle = new TCB(start_routine, arg, stack_space, context);
    8000145c:	00048513          	mv	a0,s1
    80001460:	00000097          	auipc	ra,0x0
    80001464:	084080e7          	jalr	132(ra) # 800014e4 <_ZdlPv>
    80001468:	00090513          	mv	a0,s2
    8000146c:	00004097          	auipc	ra,0x4
    80001470:	4fc080e7          	jalr	1276(ra) # 80005968 <_Unwind_Resume>

0000000080001474 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
}
    80001480:	00813403          	ld	s0,8(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret

000000008000148c <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB *old_running, TCB *new_running) {
    8000148c:	ff010113          	addi	sp,sp,-16
    80001490:	00813423          	sd	s0,8(sp)
    80001494:	01010413          	addi	s0,sp,16
    //...
}
    80001498:	00813403          	ld	s0,8(sp)
    8000149c:	01010113          	addi	sp,sp,16
    800014a0:	00008067          	ret

00000000800014a4 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800014a4:	ff010113          	addi	sp,sp,-16
    800014a8:	00813423          	sd	s0,8(sp)
    800014ac:	01010413          	addi	s0,sp,16
    //...
}
    800014b0:	00813403          	ld	s0,8(sp)
    800014b4:	01010113          	addi	sp,sp,16
    800014b8:	00008067          	ret

00000000800014bc <_Znwm>:
#include "../h/syscall_cpp.hpp"

void* operator new(size_t size){
    800014bc:	ff010113          	addi	sp,sp,-16
    800014c0:	00113423          	sd	ra,8(sp)
    800014c4:	00813023          	sd	s0,0(sp)
    800014c8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	c74080e7          	jalr	-908(ra) # 80001140 <_Z9mem_allocm>
}
    800014d4:	00813083          	ld	ra,8(sp)
    800014d8:	00013403          	ld	s0,0(sp)
    800014dc:	01010113          	addi	sp,sp,16
    800014e0:	00008067          	ret

00000000800014e4 <_ZdlPv>:

void operator delete(void* p){
    800014e4:	ff010113          	addi	sp,sp,-16
    800014e8:	00113423          	sd	ra,8(sp)
    800014ec:	00813023          	sd	s0,0(sp)
    800014f0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	c9c080e7          	jalr	-868(ra) # 80001190 <_Z8mem_freePv>
    800014fc:	00813083          	ld	ra,8(sp)
    80001500:	00013403          	ld	s0,0(sp)
    80001504:	01010113          	addi	sp,sp,16
    80001508:	00008067          	ret

000000008000150c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
    }
    return instance;
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    8000150c:	ff010113          	addi	sp,sp,-16
    80001510:	00813423          	sd	s0,8(sp)
    80001514:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80001518:	00853783          	ld	a5,8(a0) # 1008 <_entry-0x7fffeff8>
    8000151c:	02078463          	beqz	a5,80001544 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80001520:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80001524:	01053783          	ld	a5,16(a0)
    80001528:	00078863          	beqz	a5,80001538 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    8000152c:	00060463          	beqz	a2,80001534 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80001530:	00853583          	ld	a1,8(a0)
    80001534:	00b7b423          	sd	a1,8(a5)
}
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret
    else freeSegHead = nextSeg;
    80001544:	00003797          	auipc	a5,0x3
    80001548:	32b7ba23          	sd	a1,820(a5) # 80004878 <_ZN15MemoryAllocator11freeSegHeadE>
    8000154c:	fd9ff06f          	j	80001524 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

0000000080001550 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` bytes, rounded up to MEM_BLOCK_SIZE
void *MemoryAllocator::mem_alloc(size_t size) {
    80001550:	fe010113          	addi	sp,sp,-32
    80001554:	00113c23          	sd	ra,24(sp)
    80001558:	00813823          	sd	s0,16(sp)
    8000155c:	00913423          	sd	s1,8(sp)
    80001560:	01213023          	sd	s2,0(sp)
    80001564:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80001568:	0e050e63          	beqz	a0,80001664 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    8000156c:	00050913          	mv	s2,a0
//    size_t bytesToAllocate = (size + sizeof(MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    size_t bytesToAllocate = size;
    MemSeg *tmp = freeSegHead;
    80001570:	00003497          	auipc	s1,0x3
    80001574:	3084b483          	ld	s1,776(s1) # 80004878 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80001578:	0a048e63          	beqz	s1,80001634 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    8000157c:	0004b783          	ld	a5,0(s1)
    80001580:	0527e463          	bltu	a5,s2,800015c8 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80001584:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    80001588:	01700713          	li	a4,23
    8000158c:	04f76263          	bltu	a4,a5,800015d0 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    80001590:	00000613          	li	a2,0
    80001594:	0104b583          	ld	a1,16(s1)
    80001598:	00048513          	mv	a0,s1
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	f70080e7          	jalr	-144(ra) # 8000150c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800015a4:	00003797          	auipc	a5,0x3
    800015a8:	2dc7b783          	ld	a5,732(a5) # 80004880 <_ZN15MemoryAllocator11usedSegHeadE>
    800015ac:	04078863          	beqz	a5,800015fc <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800015b0:	0497fa63          	bgeu	a5,s1,80001604 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800015b4:	00078713          	mv	a4,a5
    800015b8:	0107b783          	ld	a5,16(a5)
    800015bc:	04078663          	beqz	a5,80001608 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    800015c0:	fe97eae3          	bltu	a5,s1,800015b4 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800015c4:	0440006f          	j	80001608 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    800015c8:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    800015cc:	fadff06f          	j	80001578 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800015d0:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    800015d4:	0084b703          	ld	a4,8(s1)
    800015d8:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    800015dc:	0104b703          	ld	a4,16(s1)
    800015e0:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    800015e4:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    800015e8:	00100613          	li	a2,1
    800015ec:	00048513          	mv	a0,s1
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	f1c080e7          	jalr	-228(ra) # 8000150c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    800015f8:	fadff06f          	j	800015a4 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    800015fc:	00078713          	mv	a4,a5
    80001600:	0080006f          	j	80001608 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80001604:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80001608:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    8000160c:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80001610:	04070063          	beqz	a4,80001650 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80001614:	01073783          	ld	a5,16(a4)
    80001618:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    8000161c:	02070e63          	beqz	a4,80001658 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80001620:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80001624:	0104b783          	ld	a5,16(s1)
    80001628:	00078463          	beqz	a5,80001630 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    8000162c:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80001630:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80001634:	00048513          	mv	a0,s1
    80001638:	01813083          	ld	ra,24(sp)
    8000163c:	01013403          	ld	s0,16(sp)
    80001640:	00813483          	ld	s1,8(sp)
    80001644:	00013903          	ld	s2,0(sp)
    80001648:	02010113          	addi	sp,sp,32
    8000164c:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80001650:	00070793          	mv	a5,a4
    80001654:	fc5ff06f          	j	80001618 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    80001658:	00003797          	auipc	a5,0x3
    8000165c:	2297b423          	sd	s1,552(a5) # 80004880 <_ZN15MemoryAllocator11usedSegHeadE>
    80001660:	fc5ff06f          	j	80001624 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    80001664:	00000493          	li	s1,0
    80001668:	fcdff06f          	j	80001634 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

000000008000166c <_ZN15MemoryAllocator11getInstanceEv>:
    if (!instance) {
    8000166c:	00003517          	auipc	a0,0x3
    80001670:	21c53503          	ld	a0,540(a0) # 80004888 <_ZN15MemoryAllocator8instanceE>
    80001674:	00050463          	beqz	a0,8000167c <_ZN15MemoryAllocator11getInstanceEv+0x10>
}
    80001678:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    8000167c:	fe010113          	addi	sp,sp,-32
    80001680:	00113c23          	sd	ra,24(sp)
    80001684:	00813823          	sd	s0,16(sp)
    80001688:	00913423          	sd	s1,8(sp)
    8000168c:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80001690:	00003797          	auipc	a5,0x3
    80001694:	1807b783          	ld	a5,384(a5) # 80004810 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001698:	0007b783          	ld	a5,0(a5)
    8000169c:	00003497          	auipc	s1,0x3
    800016a0:	1dc48493          	addi	s1,s1,476 # 80004878 <_ZN15MemoryAllocator11freeSegHeadE>
    800016a4:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800016a8:	00003717          	auipc	a4,0x3
    800016ac:	17873703          	ld	a4,376(a4) # 80004820 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016b0:	00073703          	ld	a4,0(a4)
    800016b4:	40f70733          	sub	a4,a4,a5
    800016b8:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800016bc:	0004b783          	ld	a5,0(s1)
    800016c0:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800016c4:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    800016c8:	00100513          	li	a0,1
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	e84080e7          	jalr	-380(ra) # 80001550 <_ZN15MemoryAllocator9mem_allocEm>
    800016d4:	00a4b823          	sd	a0,16(s1)
}
    800016d8:	01813083          	ld	ra,24(sp)
    800016dc:	01013403          	ld	s0,16(sp)
    800016e0:	00813483          	ld	s1,8(sp)
    800016e4:	02010113          	addi	sp,sp,32
    800016e8:	00008067          	ret

00000000800016ec <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    800016ec:	ff010113          	addi	sp,sp,-16
    800016f0:	00813423          	sd	s0,8(sp)
    800016f4:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    800016f8:	01053783          	ld	a5,16(a0)
    800016fc:	00078863          	beqz	a5,8000170c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80001700:	00053703          	ld	a4,0(a0)
    80001704:	00e506b3          	add	a3,a0,a4
    80001708:	00d78863          	beq	a5,a3,80001718 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    8000170c:	00813403          	ld	s0,8(sp)
    80001710:	01010113          	addi	sp,sp,16
    80001714:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80001718:	0007b683          	ld	a3,0(a5)
    8000171c:	00d70733          	add	a4,a4,a3
    80001720:	01870713          	addi	a4,a4,24
    80001724:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80001728:	0107b783          	ld	a5,16(a5)
    8000172c:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80001730:	fc078ee3          	beqz	a5,8000170c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80001734:	00a7b423          	sd	a0,8(a5)
}
    80001738:	fd5ff06f          	j	8000170c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

000000008000173c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000173c:	14050263          	beqz	a0,80001880 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80001740:	fd010113          	addi	sp,sp,-48
    80001744:	02113423          	sd	ra,40(sp)
    80001748:	02813023          	sd	s0,32(sp)
    8000174c:	00913c23          	sd	s1,24(sp)
    80001750:	01213823          	sd	s2,16(sp)
    80001754:	01313423          	sd	s3,8(sp)
    80001758:	03010413          	addi	s0,sp,48
    8000175c:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001760:	00003797          	auipc	a5,0x3
    80001764:	0b07b783          	ld	a5,176(a5) # 80004810 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001768:	0007b783          	ld	a5,0(a5)
    8000176c:	10f56e63          	bltu	a0,a5,80001888 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    80001770:	00003797          	auipc	a5,0x3
    80001774:	0b07b783          	ld	a5,176(a5) # 80004820 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001778:	0007b783          	ld	a5,0(a5)
    8000177c:	10a7ea63          	bltu	a5,a0,80001890 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    80001780:	00003797          	auipc	a5,0x3
    80001784:	1007b783          	ld	a5,256(a5) # 80004880 <_ZN15MemoryAllocator11usedSegHeadE>
    80001788:	10078863          	beqz	a5,80001898 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    8000178c:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001790:	00078863          	beqz	a5,800017a0 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80001794:	08978e63          	beq	a5,s1,80001830 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001798:	0107b783          	ld	a5,16(a5)
    8000179c:	ff5ff06f          	j	80001790 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800017a0:	00000793          	li	a5,0
    if (!found) return -3;
    800017a4:	0e078e63          	beqz	a5,800018a0 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    800017a8:	00000613          	li	a2,0
    800017ac:	ff893583          	ld	a1,-8(s2)
    800017b0:	00048513          	mv	a0,s1
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	d58080e7          	jalr	-680(ra) # 8000150c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    800017bc:	00003797          	auipc	a5,0x3
    800017c0:	0bc7b783          	ld	a5,188(a5) # 80004878 <_ZN15MemoryAllocator11freeSegHeadE>
    800017c4:	06078a63          	beqz	a5,80001838 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    800017c8:	08f4e463          	bltu	s1,a5,80001850 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    800017cc:	00078993          	mv	s3,a5
    800017d0:	0107b783          	ld	a5,16(a5)
    800017d4:	00078463          	beqz	a5,800017dc <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    800017d8:	fe97eae3          	bltu	a5,s1,800017cc <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    800017dc:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    800017e0:	0109b783          	ld	a5,16(s3)
    800017e4:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    800017e8:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    800017ec:	ff893783          	ld	a5,-8(s2)
    800017f0:	00078463          	beqz	a5,800017f8 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    800017f4:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    800017f8:	00048513          	mv	a0,s1
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	ef0080e7          	jalr	-272(ra) # 800016ec <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80001804:	00098513          	mv	a0,s3
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	ee4080e7          	jalr	-284(ra) # 800016ec <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001810:	00000513          	li	a0,0
}
    80001814:	02813083          	ld	ra,40(sp)
    80001818:	02013403          	ld	s0,32(sp)
    8000181c:	01813483          	ld	s1,24(sp)
    80001820:	01013903          	ld	s2,16(sp)
    80001824:	00813983          	ld	s3,8(sp)
    80001828:	03010113          	addi	sp,sp,48
    8000182c:	00008067          	ret
            found = true;
    80001830:	00100793          	li	a5,1
    80001834:	f71ff06f          	j	800017a4 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80001838:	00003797          	auipc	a5,0x3
    8000183c:	0497b023          	sd	s1,64(a5) # 80004878 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80001840:	fe093c23          	sd	zero,-8(s2)
    80001844:	fe093823          	sd	zero,-16(s2)
    return 0;
    80001848:	00000513          	li	a0,0
    8000184c:	fc9ff06f          	j	80001814 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80001850:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80001854:	00003797          	auipc	a5,0x3
    80001858:	02478793          	addi	a5,a5,36 # 80004878 <_ZN15MemoryAllocator11freeSegHeadE>
    8000185c:	0007b703          	ld	a4,0(a5)
    80001860:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80001864:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80001868:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    8000186c:	00048513          	mv	a0,s1
    80001870:	00000097          	auipc	ra,0x0
    80001874:	e7c080e7          	jalr	-388(ra) # 800016ec <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001878:	00000513          	li	a0,0
    8000187c:	f99ff06f          	j	80001814 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001880:	fff00513          	li	a0,-1
}
    80001884:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001888:	fff00513          	li	a0,-1
    8000188c:	f89ff06f          	j	80001814 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80001890:	fff00513          	li	a0,-1
    80001894:	f81ff06f          	j	80001814 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    80001898:	ffe00513          	li	a0,-2
    8000189c:	f79ff06f          	j	80001814 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    800018a0:	ffd00513          	li	a0,-3
    800018a4:	f71ff06f          	j	80001814 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

00000000800018a8 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800018a8:	fe010113          	addi	sp,sp,-32
    800018ac:	00113c23          	sd	ra,24(sp)
    800018b0:	00813823          	sd	s0,16(sp)
    800018b4:	00913423          	sd	s1,8(sp)
    800018b8:	02010413          	addi	s0,sp,32
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    800018bc:	00003497          	auipc	s1,0x3
    800018c0:	fbc4b483          	ld	s1,-68(s1) # 80004878 <_ZN15MemoryAllocator11freeSegHeadE>
    800018c4:	00048c63          	beqz	s1,800018dc <_ZN15MemoryAllocator5printEv+0x34>
    800018c8:	06600513          	li	a0,102
    800018cc:	00002097          	auipc	ra,0x2
    800018d0:	430080e7          	jalr	1072(ra) # 80003cfc <__putc>
    800018d4:	0104b483          	ld	s1,16(s1)
    800018d8:	fedff06f          	j	800018c4 <_ZN15MemoryAllocator5printEv+0x1c>
    __putc('\n');
    800018dc:	00a00513          	li	a0,10
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	41c080e7          	jalr	1052(ra) # 80003cfc <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    800018e8:	00003497          	auipc	s1,0x3
    800018ec:	f984b483          	ld	s1,-104(s1) # 80004880 <_ZN15MemoryAllocator11usedSegHeadE>
    800018f0:	00048c63          	beqz	s1,80001908 <_ZN15MemoryAllocator5printEv+0x60>
    800018f4:	07500513          	li	a0,117
    800018f8:	00002097          	auipc	ra,0x2
    800018fc:	404080e7          	jalr	1028(ra) # 80003cfc <__putc>
    80001900:	0104b483          	ld	s1,16(s1)
    80001904:	fedff06f          	j	800018f0 <_ZN15MemoryAllocator5printEv+0x48>
    __putc('\n');
    80001908:	00a00513          	li	a0,10
    8000190c:	00002097          	auipc	ra,0x2
    80001910:	3f0080e7          	jalr	1008(ra) # 80003cfc <__putc>
}
    80001914:	01813083          	ld	ra,24(sp)
    80001918:	01013403          	ld	s0,16(sp)
    8000191c:	00813483          	ld	s1,8(sp)
    80001920:	02010113          	addi	sp,sp,32
    80001924:	00008067          	ret

0000000080001928 <_ZN9Scheduler3putEP3TCB>:
#include "../h/scheduler.hpp"

ThreadList* Scheduler::ready_threads = nullptr;

void Scheduler::put(TCB *thread) {
    80001928:	ff010113          	addi	sp,sp,-16
    8000192c:	00113423          	sd	ra,8(sp)
    80001930:	00813023          	sd	s0,0(sp)
    80001934:	01010413          	addi	s0,sp,16
    ready_threads -> push_back(nullptr);
    80001938:	00000593          	li	a1,0
    8000193c:	00003517          	auipc	a0,0x3
    80001940:	f5453503          	ld	a0,-172(a0) # 80004890 <_ZN9Scheduler13ready_threadsE>
    80001944:	00000097          	auipc	ra,0x0
    80001948:	10c080e7          	jalr	268(ra) # 80001a50 <_ZN10ThreadList9push_backEP3TCB>
}
    8000194c:	00813083          	ld	ra,8(sp)
    80001950:	00013403          	ld	s0,0(sp)
    80001954:	01010113          	addi	sp,sp,16
    80001958:	00008067          	ret

000000008000195c <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    8000195c:	ff010113          	addi	sp,sp,-16
    80001960:	00813423          	sd	s0,8(sp)
    80001964:	01010413          	addi	s0,sp,16
    return nullptr;
}
    80001968:	00000513          	li	a0,0
    8000196c:	00813403          	ld	s0,8(sp)
    80001970:	01010113          	addi	sp,sp,16
    80001974:	00008067          	ret

0000000080001978 <_ZN9Scheduler10initializeEv>:

void Scheduler::initialize() {
    80001978:	ff010113          	addi	sp,sp,-16
    8000197c:	00113423          	sd	ra,8(sp)
    80001980:	00813023          	sd	s0,0(sp)
    80001984:	01010413          	addi	s0,sp,16
    ready_threads = new ThreadList();
    80001988:	01000513          	li	a0,16
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	b30080e7          	jalr	-1232(ra) # 800014bc <_Znwm>
    80001994:	00053023          	sd	zero,0(a0)
    80001998:	00053423          	sd	zero,8(a0)
    8000199c:	00003797          	auipc	a5,0x3
    800019a0:	eea7ba23          	sd	a0,-268(a5) # 80004890 <_ZN9Scheduler13ready_threadsE>
}
    800019a4:	00813083          	ld	ra,8(sp)
    800019a8:	00013403          	ld	s0,0(sp)
    800019ac:	01010113          	addi	sp,sp,16
    800019b0:	00008067          	ret

00000000800019b4 <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    800019b4:	ff010113          	addi	sp,sp,-16
    800019b8:	00113423          	sd	ra,8(sp)
    800019bc:	00813023          	sd	s0,0(sp)
    800019c0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	b8c080e7          	jalr	-1140(ra) # 80001550 <_ZN15MemoryAllocator9mem_allocEm>
}
    800019cc:	00813083          	ld	ra,8(sp)
    800019d0:	00013403          	ld	s0,0(sp)
    800019d4:	01010113          	addi	sp,sp,16
    800019d8:	00008067          	ret

00000000800019dc <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *addr) {
    800019dc:	ff010113          	addi	sp,sp,-16
    800019e0:	00113423          	sd	ra,8(sp)
    800019e4:	00813023          	sd	s0,0(sp)
    800019e8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	d50080e7          	jalr	-688(ra) # 8000173c <_ZN15MemoryAllocator8mem_freeEPv>
}
    800019f4:	00813083          	ld	ra,8(sp)
    800019f8:	00013403          	ld	s0,0(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret

0000000080001a04 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    80001a04:	ff010113          	addi	sp,sp,-16
    80001a08:	00813423          	sd	s0,8(sp)
    80001a0c:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80001a10:	00053503          	ld	a0,0(a0)
    80001a14:	00050463          	beqz	a0,80001a1c <_ZN10ThreadList9get_firstEv+0x18>
    80001a18:	00053503          	ld	a0,0(a0)
}
    80001a1c:	00813403          	ld	s0,8(sp)
    80001a20:	01010113          	addi	sp,sp,16
    80001a24:	00008067          	ret

0000000080001a28 <_ZN10ThreadList4NodenwEm>:
    head -> next = nullptr;
    delete tmp;
    return thread;
}

void *ThreadList::Node::operator new(size_t size) {
    80001a28:	ff010113          	addi	sp,sp,-16
    80001a2c:	00113423          	sd	ra,8(sp)
    80001a30:	00813023          	sd	s0,0(sp)
    80001a34:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	b18080e7          	jalr	-1256(ra) # 80001550 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001a40:	00813083          	ld	ra,8(sp)
    80001a44:	00013403          	ld	s0,0(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret

0000000080001a50 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80001a50:	fe010113          	addi	sp,sp,-32
    80001a54:	00113c23          	sd	ra,24(sp)
    80001a58:	00813823          	sd	s0,16(sp)
    80001a5c:	00913423          	sd	s1,8(sp)
    80001a60:	01213023          	sd	s2,0(sp)
    80001a64:	02010413          	addi	s0,sp,32
    80001a68:	00050493          	mv	s1,a0
    80001a6c:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80001a70:	01000513          	li	a0,16
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	fb4080e7          	jalr	-76(ra) # 80001a28 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        Node(TCB* data) : data(data), next(nullptr) {}
    80001a7c:	01253023          	sd	s2,0(a0)
    80001a80:	00053423          	sd	zero,8(a0)
    80001a84:	0004b783          	ld	a5,0(s1)
    80001a88:	02078263          	beqz	a5,80001aac <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80001a8c:	00a4b023          	sd	a0,0(s1)
    80001a90:	00a4b423          	sd	a0,8(s1)
}
    80001a94:	01813083          	ld	ra,24(sp)
    80001a98:	01013403          	ld	s0,16(sp)
    80001a9c:	00813483          	ld	s1,8(sp)
    80001aa0:	00013903          	ld	s2,0(sp)
    80001aa4:	02010113          	addi	sp,sp,32
    80001aa8:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80001aac:	0084b783          	ld	a5,8(s1)
    80001ab0:	00a7b423          	sd	a0,8(a5)
    80001ab4:	fddff06f          	j	80001a90 <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080001ab8 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80001ab8:	fe010113          	addi	sp,sp,-32
    80001abc:	00113c23          	sd	ra,24(sp)
    80001ac0:	00813823          	sd	s0,16(sp)
    80001ac4:	00913423          	sd	s1,8(sp)
    80001ac8:	01213023          	sd	s2,0(sp)
    80001acc:	02010413          	addi	s0,sp,32
    80001ad0:	00050493          	mv	s1,a0
    80001ad4:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80001ad8:	01000513          	li	a0,16
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	f4c080e7          	jalr	-180(ra) # 80001a28 <_ZN10ThreadList4NodenwEm>
    80001ae4:	01253023          	sd	s2,0(a0)
    80001ae8:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80001aec:	0004b783          	ld	a5,0(s1)
    80001af0:	00f53423          	sd	a5,8(a0)
    head = node;
    80001af4:	00a4b023          	sd	a0,0(s1)
}
    80001af8:	01813083          	ld	ra,24(sp)
    80001afc:	01013403          	ld	s0,16(sp)
    80001b00:	00813483          	ld	s1,8(sp)
    80001b04:	00013903          	ld	s2,0(sp)
    80001b08:	02010113          	addi	sp,sp,32
    80001b0c:	00008067          	ret

0000000080001b10 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00113423          	sd	ra,8(sp)
    80001b18:	00813023          	sd	s0,0(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	c1c080e7          	jalr	-996(ra) # 8000173c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001b28:	00813083          	ld	ra,8(sp)
    80001b2c:	00013403          	ld	s0,0(sp)
    80001b30:	01010113          	addi	sp,sp,16
    80001b34:	00008067          	ret

0000000080001b38 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80001b38:	fe010113          	addi	sp,sp,-32
    80001b3c:	00113c23          	sd	ra,24(sp)
    80001b40:	00813823          	sd	s0,16(sp)
    80001b44:	00913423          	sd	s1,8(sp)
    80001b48:	02010413          	addi	s0,sp,32
    80001b4c:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80001b50:	00053503          	ld	a0,0(a0)
    80001b54:	02050a63          	beqz	a0,80001b88 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80001b58:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80001b5c:	00853703          	ld	a4,8(a0)
    80001b60:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    80001b64:	00073423          	sd	zero,8(a4)
    delete tmp;
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	fa8080e7          	jalr	-88(ra) # 80001b10 <_ZN10ThreadList4NodedlEPv>
}
    80001b70:	00048513          	mv	a0,s1
    80001b74:	01813083          	ld	ra,24(sp)
    80001b78:	01013403          	ld	s0,16(sp)
    80001b7c:	00813483          	ld	s1,8(sp)
    80001b80:	02010113          	addi	sp,sp,32
    80001b84:	00008067          	ret
    if (!head) return nullptr;
    80001b88:	00050493          	mv	s1,a0
    80001b8c:	fe5ff06f          	j	80001b70 <_ZN10ThreadList12remove_firstEv+0x38>

0000000080001b90 <interruptRoutine>:
#include "../lib/hw.h"
#include "../h/syscall_c.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/risc-v.hpp"

extern "C" void interruptRoutine() {
    80001b90:	fe010113          	addi	sp,sp,-32
    80001b94:	00113c23          	sd	ra,24(sp)
    80001b98:	00813823          	sd	s0,16(sp)
    80001b9c:	02010413          	addi	s0,sp,32
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80001ba0:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80001ba4:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80001ba8:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80001bac:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80001bb0:	00070693          	mv	a3,a4

};

inline uint64 RiscV::read_scause() {
    uint64 volatile scause;
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80001bb4:	14202773          	csrr	a4,scause
    80001bb8:	fee43423          	sd	a4,-24(s0)
    return scause;
    80001bbc:	fe843803          	ld	a6,-24(s0)

    /// illegal instruction
    if (RiscV::read_scause() == (uint64) 2) {
    80001bc0:	00200713          	li	a4,2
    80001bc4:	02e80663          	beq	a6,a4,80001bf0 <interruptRoutine+0x60>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    switch(syscall_code) {
    80001bc8:	01100713          	li	a4,17
    80001bcc:	04e78e63          	beq	a5,a4,80001c28 <interruptRoutine+0x98>
    80001bd0:	02f76c63          	bltu	a4,a5,80001c08 <interruptRoutine+0x78>
    80001bd4:	00100713          	li	a4,1
    80001bd8:	04e78263          	beq	a5,a4,80001c1c <interruptRoutine+0x8c>
    80001bdc:	00200713          	li	a4,2
    80001be0:	00e79c63          	bne	a5,a4,80001bf8 <interruptRoutine+0x68>
        case MEM_ALLOC:
            MemoryAllocator::mem_alloc((size_t) a1);
            break;
        case MEM_FREE:
            MemoryAllocator::mem_free((void *) a1);
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	b58080e7          	jalr	-1192(ra) # 8000173c <_ZN15MemoryAllocator8mem_freeEPv>
            break;
    80001bec:	00c0006f          	j	80001bf8 <interruptRoutine+0x68>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80001bf0:	00100793          	li	a5,1
    80001bf4:	00078513          	mv	a0,a5
//            IO::_putc((char) arg1);
            break;
        default:
            break;
    }
    80001bf8:	01813083          	ld	ra,24(sp)
    80001bfc:	01013403          	ld	s0,16(sp)
    80001c00:	02010113          	addi	sp,sp,32
    80001c04:	00008067          	ret
    switch(syscall_code) {
    80001c08:	01200713          	li	a4,18
    80001c0c:	fee796e3          	bne	a5,a4,80001bf8 <interruptRoutine+0x68>
            TCB::thread_exit();
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	864080e7          	jalr	-1948(ra) # 80001474 <_ZN3TCB11thread_exitEv>
            break;
    80001c18:	fe1ff06f          	j	80001bf8 <interruptRoutine+0x68>
            MemoryAllocator::mem_alloc((size_t) a1);
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	934080e7          	jalr	-1740(ra) # 80001550 <_ZN15MemoryAllocator9mem_allocEm>
            break;
    80001c24:	fd5ff06f          	j	80001bf8 <interruptRoutine+0x68>
            TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80001c28:	fffff097          	auipc	ra,0xfffff
    80001c2c:	788080e7          	jalr	1928(ra) # 800013b0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
            break;
    80001c30:	fc9ff06f          	j	80001bf8 <interruptRoutine+0x68>

0000000080001c34 <start>:
    80001c34:	ff010113          	addi	sp,sp,-16
    80001c38:	00813423          	sd	s0,8(sp)
    80001c3c:	01010413          	addi	s0,sp,16
    80001c40:	300027f3          	csrr	a5,mstatus
    80001c44:	ffffe737          	lui	a4,0xffffe
    80001c48:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8cff>
    80001c4c:	00e7f7b3          	and	a5,a5,a4
    80001c50:	00001737          	lui	a4,0x1
    80001c54:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001c58:	00e7e7b3          	or	a5,a5,a4
    80001c5c:	30079073          	csrw	mstatus,a5
    80001c60:	00000797          	auipc	a5,0x0
    80001c64:	16078793          	addi	a5,a5,352 # 80001dc0 <system_main>
    80001c68:	34179073          	csrw	mepc,a5
    80001c6c:	00000793          	li	a5,0
    80001c70:	18079073          	csrw	satp,a5
    80001c74:	000107b7          	lui	a5,0x10
    80001c78:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c7c:	30279073          	csrw	medeleg,a5
    80001c80:	30379073          	csrw	mideleg,a5
    80001c84:	104027f3          	csrr	a5,sie
    80001c88:	2227e793          	ori	a5,a5,546
    80001c8c:	10479073          	csrw	sie,a5
    80001c90:	fff00793          	li	a5,-1
    80001c94:	00a7d793          	srli	a5,a5,0xa
    80001c98:	3b079073          	csrw	pmpaddr0,a5
    80001c9c:	00f00793          	li	a5,15
    80001ca0:	3a079073          	csrw	pmpcfg0,a5
    80001ca4:	f14027f3          	csrr	a5,mhartid
    80001ca8:	0200c737          	lui	a4,0x200c
    80001cac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001cb0:	0007869b          	sext.w	a3,a5
    80001cb4:	00269713          	slli	a4,a3,0x2
    80001cb8:	000f4637          	lui	a2,0xf4
    80001cbc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001cc0:	00d70733          	add	a4,a4,a3
    80001cc4:	0037979b          	slliw	a5,a5,0x3
    80001cc8:	020046b7          	lui	a3,0x2004
    80001ccc:	00d787b3          	add	a5,a5,a3
    80001cd0:	00c585b3          	add	a1,a1,a2
    80001cd4:	00371693          	slli	a3,a4,0x3
    80001cd8:	00003717          	auipc	a4,0x3
    80001cdc:	bc870713          	addi	a4,a4,-1080 # 800048a0 <timer_scratch>
    80001ce0:	00b7b023          	sd	a1,0(a5)
    80001ce4:	00d70733          	add	a4,a4,a3
    80001ce8:	00f73c23          	sd	a5,24(a4)
    80001cec:	02c73023          	sd	a2,32(a4)
    80001cf0:	34071073          	csrw	mscratch,a4
    80001cf4:	00000797          	auipc	a5,0x0
    80001cf8:	6ec78793          	addi	a5,a5,1772 # 800023e0 <timervec>
    80001cfc:	30579073          	csrw	mtvec,a5
    80001d00:	300027f3          	csrr	a5,mstatus
    80001d04:	0087e793          	ori	a5,a5,8
    80001d08:	30079073          	csrw	mstatus,a5
    80001d0c:	304027f3          	csrr	a5,mie
    80001d10:	0807e793          	ori	a5,a5,128
    80001d14:	30479073          	csrw	mie,a5
    80001d18:	f14027f3          	csrr	a5,mhartid
    80001d1c:	0007879b          	sext.w	a5,a5
    80001d20:	00078213          	mv	tp,a5
    80001d24:	30200073          	mret
    80001d28:	00813403          	ld	s0,8(sp)
    80001d2c:	01010113          	addi	sp,sp,16
    80001d30:	00008067          	ret

0000000080001d34 <timerinit>:
    80001d34:	ff010113          	addi	sp,sp,-16
    80001d38:	00813423          	sd	s0,8(sp)
    80001d3c:	01010413          	addi	s0,sp,16
    80001d40:	f14027f3          	csrr	a5,mhartid
    80001d44:	0200c737          	lui	a4,0x200c
    80001d48:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001d4c:	0007869b          	sext.w	a3,a5
    80001d50:	00269713          	slli	a4,a3,0x2
    80001d54:	000f4637          	lui	a2,0xf4
    80001d58:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001d5c:	00d70733          	add	a4,a4,a3
    80001d60:	0037979b          	slliw	a5,a5,0x3
    80001d64:	020046b7          	lui	a3,0x2004
    80001d68:	00d787b3          	add	a5,a5,a3
    80001d6c:	00c585b3          	add	a1,a1,a2
    80001d70:	00371693          	slli	a3,a4,0x3
    80001d74:	00003717          	auipc	a4,0x3
    80001d78:	b2c70713          	addi	a4,a4,-1236 # 800048a0 <timer_scratch>
    80001d7c:	00b7b023          	sd	a1,0(a5)
    80001d80:	00d70733          	add	a4,a4,a3
    80001d84:	00f73c23          	sd	a5,24(a4)
    80001d88:	02c73023          	sd	a2,32(a4)
    80001d8c:	34071073          	csrw	mscratch,a4
    80001d90:	00000797          	auipc	a5,0x0
    80001d94:	65078793          	addi	a5,a5,1616 # 800023e0 <timervec>
    80001d98:	30579073          	csrw	mtvec,a5
    80001d9c:	300027f3          	csrr	a5,mstatus
    80001da0:	0087e793          	ori	a5,a5,8
    80001da4:	30079073          	csrw	mstatus,a5
    80001da8:	304027f3          	csrr	a5,mie
    80001dac:	0807e793          	ori	a5,a5,128
    80001db0:	30479073          	csrw	mie,a5
    80001db4:	00813403          	ld	s0,8(sp)
    80001db8:	01010113          	addi	sp,sp,16
    80001dbc:	00008067          	ret

0000000080001dc0 <system_main>:
    80001dc0:	fe010113          	addi	sp,sp,-32
    80001dc4:	00813823          	sd	s0,16(sp)
    80001dc8:	00913423          	sd	s1,8(sp)
    80001dcc:	00113c23          	sd	ra,24(sp)
    80001dd0:	02010413          	addi	s0,sp,32
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	0c4080e7          	jalr	196(ra) # 80001e98 <cpuid>
    80001ddc:	00003497          	auipc	s1,0x3
    80001de0:	a6448493          	addi	s1,s1,-1436 # 80004840 <started>
    80001de4:	02050263          	beqz	a0,80001e08 <system_main+0x48>
    80001de8:	0004a783          	lw	a5,0(s1)
    80001dec:	0007879b          	sext.w	a5,a5
    80001df0:	fe078ce3          	beqz	a5,80001de8 <system_main+0x28>
    80001df4:	0ff0000f          	fence
    80001df8:	00002517          	auipc	a0,0x2
    80001dfc:	25850513          	addi	a0,a0,600 # 80004050 <CONSOLE_STATUS+0x40>
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	a7c080e7          	jalr	-1412(ra) # 8000287c <panic>
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	9d0080e7          	jalr	-1584(ra) # 800027d8 <consoleinit>
    80001e10:	00001097          	auipc	ra,0x1
    80001e14:	15c080e7          	jalr	348(ra) # 80002f6c <printfinit>
    80001e18:	00002517          	auipc	a0,0x2
    80001e1c:	31850513          	addi	a0,a0,792 # 80004130 <CONSOLE_STATUS+0x120>
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	ab8080e7          	jalr	-1352(ra) # 800028d8 <__printf>
    80001e28:	00002517          	auipc	a0,0x2
    80001e2c:	1f850513          	addi	a0,a0,504 # 80004020 <CONSOLE_STATUS+0x10>
    80001e30:	00001097          	auipc	ra,0x1
    80001e34:	aa8080e7          	jalr	-1368(ra) # 800028d8 <__printf>
    80001e38:	00002517          	auipc	a0,0x2
    80001e3c:	2f850513          	addi	a0,a0,760 # 80004130 <CONSOLE_STATUS+0x120>
    80001e40:	00001097          	auipc	ra,0x1
    80001e44:	a98080e7          	jalr	-1384(ra) # 800028d8 <__printf>
    80001e48:	00001097          	auipc	ra,0x1
    80001e4c:	4b0080e7          	jalr	1200(ra) # 800032f8 <kinit>
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	148080e7          	jalr	328(ra) # 80001f98 <trapinit>
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	16c080e7          	jalr	364(ra) # 80001fc4 <trapinithart>
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	5c0080e7          	jalr	1472(ra) # 80002420 <plicinit>
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	5e0080e7          	jalr	1504(ra) # 80002448 <plicinithart>
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	078080e7          	jalr	120(ra) # 80001ee8 <userinit>
    80001e78:	0ff0000f          	fence
    80001e7c:	00100793          	li	a5,1
    80001e80:	00002517          	auipc	a0,0x2
    80001e84:	1b850513          	addi	a0,a0,440 # 80004038 <CONSOLE_STATUS+0x28>
    80001e88:	00f4a023          	sw	a5,0(s1)
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	a4c080e7          	jalr	-1460(ra) # 800028d8 <__printf>
    80001e94:	0000006f          	j	80001e94 <system_main+0xd4>

0000000080001e98 <cpuid>:
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00813423          	sd	s0,8(sp)
    80001ea0:	01010413          	addi	s0,sp,16
    80001ea4:	00020513          	mv	a0,tp
    80001ea8:	00813403          	ld	s0,8(sp)
    80001eac:	0005051b          	sext.w	a0,a0
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <mycpu>:
    80001eb8:	ff010113          	addi	sp,sp,-16
    80001ebc:	00813423          	sd	s0,8(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    80001ec4:	00020793          	mv	a5,tp
    80001ec8:	00813403          	ld	s0,8(sp)
    80001ecc:	0007879b          	sext.w	a5,a5
    80001ed0:	00779793          	slli	a5,a5,0x7
    80001ed4:	00004517          	auipc	a0,0x4
    80001ed8:	9fc50513          	addi	a0,a0,-1540 # 800058d0 <cpus>
    80001edc:	00f50533          	add	a0,a0,a5
    80001ee0:	01010113          	addi	sp,sp,16
    80001ee4:	00008067          	ret

0000000080001ee8 <userinit>:
    80001ee8:	ff010113          	addi	sp,sp,-16
    80001eec:	00813423          	sd	s0,8(sp)
    80001ef0:	01010413          	addi	s0,sp,16
    80001ef4:	00813403          	ld	s0,8(sp)
    80001ef8:	01010113          	addi	sp,sp,16
    80001efc:	fffff317          	auipc	t1,0xfffff
    80001f00:	3b430067          	jr	948(t1) # 800012b0 <main>

0000000080001f04 <either_copyout>:
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00813023          	sd	s0,0(sp)
    80001f0c:	00113423          	sd	ra,8(sp)
    80001f10:	01010413          	addi	s0,sp,16
    80001f14:	02051663          	bnez	a0,80001f40 <either_copyout+0x3c>
    80001f18:	00058513          	mv	a0,a1
    80001f1c:	00060593          	mv	a1,a2
    80001f20:	0006861b          	sext.w	a2,a3
    80001f24:	00002097          	auipc	ra,0x2
    80001f28:	c60080e7          	jalr	-928(ra) # 80003b84 <__memmove>
    80001f2c:	00813083          	ld	ra,8(sp)
    80001f30:	00013403          	ld	s0,0(sp)
    80001f34:	00000513          	li	a0,0
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret
    80001f40:	00002517          	auipc	a0,0x2
    80001f44:	13850513          	addi	a0,a0,312 # 80004078 <CONSOLE_STATUS+0x68>
    80001f48:	00001097          	auipc	ra,0x1
    80001f4c:	934080e7          	jalr	-1740(ra) # 8000287c <panic>

0000000080001f50 <either_copyin>:
    80001f50:	ff010113          	addi	sp,sp,-16
    80001f54:	00813023          	sd	s0,0(sp)
    80001f58:	00113423          	sd	ra,8(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    80001f60:	02059463          	bnez	a1,80001f88 <either_copyin+0x38>
    80001f64:	00060593          	mv	a1,a2
    80001f68:	0006861b          	sext.w	a2,a3
    80001f6c:	00002097          	auipc	ra,0x2
    80001f70:	c18080e7          	jalr	-1000(ra) # 80003b84 <__memmove>
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	00000513          	li	a0,0
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret
    80001f88:	00002517          	auipc	a0,0x2
    80001f8c:	11850513          	addi	a0,a0,280 # 800040a0 <CONSOLE_STATUS+0x90>
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	8ec080e7          	jalr	-1812(ra) # 8000287c <panic>

0000000080001f98 <trapinit>:
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00813423          	sd	s0,8(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    80001fa4:	00813403          	ld	s0,8(sp)
    80001fa8:	00002597          	auipc	a1,0x2
    80001fac:	12058593          	addi	a1,a1,288 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001fb0:	00004517          	auipc	a0,0x4
    80001fb4:	9a050513          	addi	a0,a0,-1632 # 80005950 <tickslock>
    80001fb8:	01010113          	addi	sp,sp,16
    80001fbc:	00001317          	auipc	t1,0x1
    80001fc0:	5cc30067          	jr	1484(t1) # 80003588 <initlock>

0000000080001fc4 <trapinithart>:
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00813423          	sd	s0,8(sp)
    80001fcc:	01010413          	addi	s0,sp,16
    80001fd0:	00000797          	auipc	a5,0x0
    80001fd4:	30078793          	addi	a5,a5,768 # 800022d0 <kernelvec>
    80001fd8:	10579073          	csrw	stvec,a5
    80001fdc:	00813403          	ld	s0,8(sp)
    80001fe0:	01010113          	addi	sp,sp,16
    80001fe4:	00008067          	ret

0000000080001fe8 <usertrap>:
    80001fe8:	ff010113          	addi	sp,sp,-16
    80001fec:	00813423          	sd	s0,8(sp)
    80001ff0:	01010413          	addi	s0,sp,16
    80001ff4:	00813403          	ld	s0,8(sp)
    80001ff8:	01010113          	addi	sp,sp,16
    80001ffc:	00008067          	ret

0000000080002000 <usertrapret>:
    80002000:	ff010113          	addi	sp,sp,-16
    80002004:	00813423          	sd	s0,8(sp)
    80002008:	01010413          	addi	s0,sp,16
    8000200c:	00813403          	ld	s0,8(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <kerneltrap>:
    80002018:	fe010113          	addi	sp,sp,-32
    8000201c:	00813823          	sd	s0,16(sp)
    80002020:	00113c23          	sd	ra,24(sp)
    80002024:	00913423          	sd	s1,8(sp)
    80002028:	02010413          	addi	s0,sp,32
    8000202c:	142025f3          	csrr	a1,scause
    80002030:	100027f3          	csrr	a5,sstatus
    80002034:	0027f793          	andi	a5,a5,2
    80002038:	10079c63          	bnez	a5,80002150 <kerneltrap+0x138>
    8000203c:	142027f3          	csrr	a5,scause
    80002040:	0207ce63          	bltz	a5,8000207c <kerneltrap+0x64>
    80002044:	00002517          	auipc	a0,0x2
    80002048:	0cc50513          	addi	a0,a0,204 # 80004110 <CONSOLE_STATUS+0x100>
    8000204c:	00001097          	auipc	ra,0x1
    80002050:	88c080e7          	jalr	-1908(ra) # 800028d8 <__printf>
    80002054:	141025f3          	csrr	a1,sepc
    80002058:	14302673          	csrr	a2,stval
    8000205c:	00002517          	auipc	a0,0x2
    80002060:	0c450513          	addi	a0,a0,196 # 80004120 <CONSOLE_STATUS+0x110>
    80002064:	00001097          	auipc	ra,0x1
    80002068:	874080e7          	jalr	-1932(ra) # 800028d8 <__printf>
    8000206c:	00002517          	auipc	a0,0x2
    80002070:	0cc50513          	addi	a0,a0,204 # 80004138 <CONSOLE_STATUS+0x128>
    80002074:	00001097          	auipc	ra,0x1
    80002078:	808080e7          	jalr	-2040(ra) # 8000287c <panic>
    8000207c:	0ff7f713          	andi	a4,a5,255
    80002080:	00900693          	li	a3,9
    80002084:	04d70063          	beq	a4,a3,800020c4 <kerneltrap+0xac>
    80002088:	fff00713          	li	a4,-1
    8000208c:	03f71713          	slli	a4,a4,0x3f
    80002090:	00170713          	addi	a4,a4,1
    80002094:	fae798e3          	bne	a5,a4,80002044 <kerneltrap+0x2c>
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	e00080e7          	jalr	-512(ra) # 80001e98 <cpuid>
    800020a0:	06050663          	beqz	a0,8000210c <kerneltrap+0xf4>
    800020a4:	144027f3          	csrr	a5,sip
    800020a8:	ffd7f793          	andi	a5,a5,-3
    800020ac:	14479073          	csrw	sip,a5
    800020b0:	01813083          	ld	ra,24(sp)
    800020b4:	01013403          	ld	s0,16(sp)
    800020b8:	00813483          	ld	s1,8(sp)
    800020bc:	02010113          	addi	sp,sp,32
    800020c0:	00008067          	ret
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	3d0080e7          	jalr	976(ra) # 80002494 <plic_claim>
    800020cc:	00a00793          	li	a5,10
    800020d0:	00050493          	mv	s1,a0
    800020d4:	06f50863          	beq	a0,a5,80002144 <kerneltrap+0x12c>
    800020d8:	fc050ce3          	beqz	a0,800020b0 <kerneltrap+0x98>
    800020dc:	00050593          	mv	a1,a0
    800020e0:	00002517          	auipc	a0,0x2
    800020e4:	01050513          	addi	a0,a0,16 # 800040f0 <CONSOLE_STATUS+0xe0>
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	7f0080e7          	jalr	2032(ra) # 800028d8 <__printf>
    800020f0:	01013403          	ld	s0,16(sp)
    800020f4:	01813083          	ld	ra,24(sp)
    800020f8:	00048513          	mv	a0,s1
    800020fc:	00813483          	ld	s1,8(sp)
    80002100:	02010113          	addi	sp,sp,32
    80002104:	00000317          	auipc	t1,0x0
    80002108:	3c830067          	jr	968(t1) # 800024cc <plic_complete>
    8000210c:	00004517          	auipc	a0,0x4
    80002110:	84450513          	addi	a0,a0,-1980 # 80005950 <tickslock>
    80002114:	00001097          	auipc	ra,0x1
    80002118:	498080e7          	jalr	1176(ra) # 800035ac <acquire>
    8000211c:	00002717          	auipc	a4,0x2
    80002120:	72870713          	addi	a4,a4,1832 # 80004844 <ticks>
    80002124:	00072783          	lw	a5,0(a4)
    80002128:	00004517          	auipc	a0,0x4
    8000212c:	82850513          	addi	a0,a0,-2008 # 80005950 <tickslock>
    80002130:	0017879b          	addiw	a5,a5,1
    80002134:	00f72023          	sw	a5,0(a4)
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	540080e7          	jalr	1344(ra) # 80003678 <release>
    80002140:	f65ff06f          	j	800020a4 <kerneltrap+0x8c>
    80002144:	00001097          	auipc	ra,0x1
    80002148:	09c080e7          	jalr	156(ra) # 800031e0 <uartintr>
    8000214c:	fa5ff06f          	j	800020f0 <kerneltrap+0xd8>
    80002150:	00002517          	auipc	a0,0x2
    80002154:	f8050513          	addi	a0,a0,-128 # 800040d0 <CONSOLE_STATUS+0xc0>
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	724080e7          	jalr	1828(ra) # 8000287c <panic>

0000000080002160 <clockintr>:
    80002160:	fe010113          	addi	sp,sp,-32
    80002164:	00813823          	sd	s0,16(sp)
    80002168:	00913423          	sd	s1,8(sp)
    8000216c:	00113c23          	sd	ra,24(sp)
    80002170:	02010413          	addi	s0,sp,32
    80002174:	00003497          	auipc	s1,0x3
    80002178:	7dc48493          	addi	s1,s1,2012 # 80005950 <tickslock>
    8000217c:	00048513          	mv	a0,s1
    80002180:	00001097          	auipc	ra,0x1
    80002184:	42c080e7          	jalr	1068(ra) # 800035ac <acquire>
    80002188:	00002717          	auipc	a4,0x2
    8000218c:	6bc70713          	addi	a4,a4,1724 # 80004844 <ticks>
    80002190:	00072783          	lw	a5,0(a4)
    80002194:	01013403          	ld	s0,16(sp)
    80002198:	01813083          	ld	ra,24(sp)
    8000219c:	00048513          	mv	a0,s1
    800021a0:	0017879b          	addiw	a5,a5,1
    800021a4:	00813483          	ld	s1,8(sp)
    800021a8:	00f72023          	sw	a5,0(a4)
    800021ac:	02010113          	addi	sp,sp,32
    800021b0:	00001317          	auipc	t1,0x1
    800021b4:	4c830067          	jr	1224(t1) # 80003678 <release>

00000000800021b8 <devintr>:
    800021b8:	142027f3          	csrr	a5,scause
    800021bc:	00000513          	li	a0,0
    800021c0:	0007c463          	bltz	a5,800021c8 <devintr+0x10>
    800021c4:	00008067          	ret
    800021c8:	fe010113          	addi	sp,sp,-32
    800021cc:	00813823          	sd	s0,16(sp)
    800021d0:	00113c23          	sd	ra,24(sp)
    800021d4:	00913423          	sd	s1,8(sp)
    800021d8:	02010413          	addi	s0,sp,32
    800021dc:	0ff7f713          	andi	a4,a5,255
    800021e0:	00900693          	li	a3,9
    800021e4:	04d70c63          	beq	a4,a3,8000223c <devintr+0x84>
    800021e8:	fff00713          	li	a4,-1
    800021ec:	03f71713          	slli	a4,a4,0x3f
    800021f0:	00170713          	addi	a4,a4,1
    800021f4:	00e78c63          	beq	a5,a4,8000220c <devintr+0x54>
    800021f8:	01813083          	ld	ra,24(sp)
    800021fc:	01013403          	ld	s0,16(sp)
    80002200:	00813483          	ld	s1,8(sp)
    80002204:	02010113          	addi	sp,sp,32
    80002208:	00008067          	ret
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	c8c080e7          	jalr	-884(ra) # 80001e98 <cpuid>
    80002214:	06050663          	beqz	a0,80002280 <devintr+0xc8>
    80002218:	144027f3          	csrr	a5,sip
    8000221c:	ffd7f793          	andi	a5,a5,-3
    80002220:	14479073          	csrw	sip,a5
    80002224:	01813083          	ld	ra,24(sp)
    80002228:	01013403          	ld	s0,16(sp)
    8000222c:	00813483          	ld	s1,8(sp)
    80002230:	00200513          	li	a0,2
    80002234:	02010113          	addi	sp,sp,32
    80002238:	00008067          	ret
    8000223c:	00000097          	auipc	ra,0x0
    80002240:	258080e7          	jalr	600(ra) # 80002494 <plic_claim>
    80002244:	00a00793          	li	a5,10
    80002248:	00050493          	mv	s1,a0
    8000224c:	06f50663          	beq	a0,a5,800022b8 <devintr+0x100>
    80002250:	00100513          	li	a0,1
    80002254:	fa0482e3          	beqz	s1,800021f8 <devintr+0x40>
    80002258:	00048593          	mv	a1,s1
    8000225c:	00002517          	auipc	a0,0x2
    80002260:	e9450513          	addi	a0,a0,-364 # 800040f0 <CONSOLE_STATUS+0xe0>
    80002264:	00000097          	auipc	ra,0x0
    80002268:	674080e7          	jalr	1652(ra) # 800028d8 <__printf>
    8000226c:	00048513          	mv	a0,s1
    80002270:	00000097          	auipc	ra,0x0
    80002274:	25c080e7          	jalr	604(ra) # 800024cc <plic_complete>
    80002278:	00100513          	li	a0,1
    8000227c:	f7dff06f          	j	800021f8 <devintr+0x40>
    80002280:	00003517          	auipc	a0,0x3
    80002284:	6d050513          	addi	a0,a0,1744 # 80005950 <tickslock>
    80002288:	00001097          	auipc	ra,0x1
    8000228c:	324080e7          	jalr	804(ra) # 800035ac <acquire>
    80002290:	00002717          	auipc	a4,0x2
    80002294:	5b470713          	addi	a4,a4,1460 # 80004844 <ticks>
    80002298:	00072783          	lw	a5,0(a4)
    8000229c:	00003517          	auipc	a0,0x3
    800022a0:	6b450513          	addi	a0,a0,1716 # 80005950 <tickslock>
    800022a4:	0017879b          	addiw	a5,a5,1
    800022a8:	00f72023          	sw	a5,0(a4)
    800022ac:	00001097          	auipc	ra,0x1
    800022b0:	3cc080e7          	jalr	972(ra) # 80003678 <release>
    800022b4:	f65ff06f          	j	80002218 <devintr+0x60>
    800022b8:	00001097          	auipc	ra,0x1
    800022bc:	f28080e7          	jalr	-216(ra) # 800031e0 <uartintr>
    800022c0:	fadff06f          	j	8000226c <devintr+0xb4>
	...

00000000800022d0 <kernelvec>:
    800022d0:	f0010113          	addi	sp,sp,-256
    800022d4:	00113023          	sd	ra,0(sp)
    800022d8:	00213423          	sd	sp,8(sp)
    800022dc:	00313823          	sd	gp,16(sp)
    800022e0:	00413c23          	sd	tp,24(sp)
    800022e4:	02513023          	sd	t0,32(sp)
    800022e8:	02613423          	sd	t1,40(sp)
    800022ec:	02713823          	sd	t2,48(sp)
    800022f0:	02813c23          	sd	s0,56(sp)
    800022f4:	04913023          	sd	s1,64(sp)
    800022f8:	04a13423          	sd	a0,72(sp)
    800022fc:	04b13823          	sd	a1,80(sp)
    80002300:	04c13c23          	sd	a2,88(sp)
    80002304:	06d13023          	sd	a3,96(sp)
    80002308:	06e13423          	sd	a4,104(sp)
    8000230c:	06f13823          	sd	a5,112(sp)
    80002310:	07013c23          	sd	a6,120(sp)
    80002314:	09113023          	sd	a7,128(sp)
    80002318:	09213423          	sd	s2,136(sp)
    8000231c:	09313823          	sd	s3,144(sp)
    80002320:	09413c23          	sd	s4,152(sp)
    80002324:	0b513023          	sd	s5,160(sp)
    80002328:	0b613423          	sd	s6,168(sp)
    8000232c:	0b713823          	sd	s7,176(sp)
    80002330:	0b813c23          	sd	s8,184(sp)
    80002334:	0d913023          	sd	s9,192(sp)
    80002338:	0da13423          	sd	s10,200(sp)
    8000233c:	0db13823          	sd	s11,208(sp)
    80002340:	0dc13c23          	sd	t3,216(sp)
    80002344:	0fd13023          	sd	t4,224(sp)
    80002348:	0fe13423          	sd	t5,232(sp)
    8000234c:	0ff13823          	sd	t6,240(sp)
    80002350:	cc9ff0ef          	jal	ra,80002018 <kerneltrap>
    80002354:	00013083          	ld	ra,0(sp)
    80002358:	00813103          	ld	sp,8(sp)
    8000235c:	01013183          	ld	gp,16(sp)
    80002360:	02013283          	ld	t0,32(sp)
    80002364:	02813303          	ld	t1,40(sp)
    80002368:	03013383          	ld	t2,48(sp)
    8000236c:	03813403          	ld	s0,56(sp)
    80002370:	04013483          	ld	s1,64(sp)
    80002374:	04813503          	ld	a0,72(sp)
    80002378:	05013583          	ld	a1,80(sp)
    8000237c:	05813603          	ld	a2,88(sp)
    80002380:	06013683          	ld	a3,96(sp)
    80002384:	06813703          	ld	a4,104(sp)
    80002388:	07013783          	ld	a5,112(sp)
    8000238c:	07813803          	ld	a6,120(sp)
    80002390:	08013883          	ld	a7,128(sp)
    80002394:	08813903          	ld	s2,136(sp)
    80002398:	09013983          	ld	s3,144(sp)
    8000239c:	09813a03          	ld	s4,152(sp)
    800023a0:	0a013a83          	ld	s5,160(sp)
    800023a4:	0a813b03          	ld	s6,168(sp)
    800023a8:	0b013b83          	ld	s7,176(sp)
    800023ac:	0b813c03          	ld	s8,184(sp)
    800023b0:	0c013c83          	ld	s9,192(sp)
    800023b4:	0c813d03          	ld	s10,200(sp)
    800023b8:	0d013d83          	ld	s11,208(sp)
    800023bc:	0d813e03          	ld	t3,216(sp)
    800023c0:	0e013e83          	ld	t4,224(sp)
    800023c4:	0e813f03          	ld	t5,232(sp)
    800023c8:	0f013f83          	ld	t6,240(sp)
    800023cc:	10010113          	addi	sp,sp,256
    800023d0:	10200073          	sret
    800023d4:	00000013          	nop
    800023d8:	00000013          	nop
    800023dc:	00000013          	nop

00000000800023e0 <timervec>:
    800023e0:	34051573          	csrrw	a0,mscratch,a0
    800023e4:	00b53023          	sd	a1,0(a0)
    800023e8:	00c53423          	sd	a2,8(a0)
    800023ec:	00d53823          	sd	a3,16(a0)
    800023f0:	01853583          	ld	a1,24(a0)
    800023f4:	02053603          	ld	a2,32(a0)
    800023f8:	0005b683          	ld	a3,0(a1)
    800023fc:	00c686b3          	add	a3,a3,a2
    80002400:	00d5b023          	sd	a3,0(a1)
    80002404:	00200593          	li	a1,2
    80002408:	14459073          	csrw	sip,a1
    8000240c:	01053683          	ld	a3,16(a0)
    80002410:	00853603          	ld	a2,8(a0)
    80002414:	00053583          	ld	a1,0(a0)
    80002418:	34051573          	csrrw	a0,mscratch,a0
    8000241c:	30200073          	mret

0000000080002420 <plicinit>:
    80002420:	ff010113          	addi	sp,sp,-16
    80002424:	00813423          	sd	s0,8(sp)
    80002428:	01010413          	addi	s0,sp,16
    8000242c:	00813403          	ld	s0,8(sp)
    80002430:	0c0007b7          	lui	a5,0xc000
    80002434:	00100713          	li	a4,1
    80002438:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000243c:	00e7a223          	sw	a4,4(a5)
    80002440:	01010113          	addi	sp,sp,16
    80002444:	00008067          	ret

0000000080002448 <plicinithart>:
    80002448:	ff010113          	addi	sp,sp,-16
    8000244c:	00813023          	sd	s0,0(sp)
    80002450:	00113423          	sd	ra,8(sp)
    80002454:	01010413          	addi	s0,sp,16
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	a40080e7          	jalr	-1472(ra) # 80001e98 <cpuid>
    80002460:	0085171b          	slliw	a4,a0,0x8
    80002464:	0c0027b7          	lui	a5,0xc002
    80002468:	00e787b3          	add	a5,a5,a4
    8000246c:	40200713          	li	a4,1026
    80002470:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002474:	00813083          	ld	ra,8(sp)
    80002478:	00013403          	ld	s0,0(sp)
    8000247c:	00d5151b          	slliw	a0,a0,0xd
    80002480:	0c2017b7          	lui	a5,0xc201
    80002484:	00a78533          	add	a0,a5,a0
    80002488:	00052023          	sw	zero,0(a0)
    8000248c:	01010113          	addi	sp,sp,16
    80002490:	00008067          	ret

0000000080002494 <plic_claim>:
    80002494:	ff010113          	addi	sp,sp,-16
    80002498:	00813023          	sd	s0,0(sp)
    8000249c:	00113423          	sd	ra,8(sp)
    800024a0:	01010413          	addi	s0,sp,16
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	9f4080e7          	jalr	-1548(ra) # 80001e98 <cpuid>
    800024ac:	00813083          	ld	ra,8(sp)
    800024b0:	00013403          	ld	s0,0(sp)
    800024b4:	00d5151b          	slliw	a0,a0,0xd
    800024b8:	0c2017b7          	lui	a5,0xc201
    800024bc:	00a78533          	add	a0,a5,a0
    800024c0:	00452503          	lw	a0,4(a0)
    800024c4:	01010113          	addi	sp,sp,16
    800024c8:	00008067          	ret

00000000800024cc <plic_complete>:
    800024cc:	fe010113          	addi	sp,sp,-32
    800024d0:	00813823          	sd	s0,16(sp)
    800024d4:	00913423          	sd	s1,8(sp)
    800024d8:	00113c23          	sd	ra,24(sp)
    800024dc:	02010413          	addi	s0,sp,32
    800024e0:	00050493          	mv	s1,a0
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	9b4080e7          	jalr	-1612(ra) # 80001e98 <cpuid>
    800024ec:	01813083          	ld	ra,24(sp)
    800024f0:	01013403          	ld	s0,16(sp)
    800024f4:	00d5179b          	slliw	a5,a0,0xd
    800024f8:	0c201737          	lui	a4,0xc201
    800024fc:	00f707b3          	add	a5,a4,a5
    80002500:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002504:	00813483          	ld	s1,8(sp)
    80002508:	02010113          	addi	sp,sp,32
    8000250c:	00008067          	ret

0000000080002510 <consolewrite>:
    80002510:	fb010113          	addi	sp,sp,-80
    80002514:	04813023          	sd	s0,64(sp)
    80002518:	04113423          	sd	ra,72(sp)
    8000251c:	02913c23          	sd	s1,56(sp)
    80002520:	03213823          	sd	s2,48(sp)
    80002524:	03313423          	sd	s3,40(sp)
    80002528:	03413023          	sd	s4,32(sp)
    8000252c:	01513c23          	sd	s5,24(sp)
    80002530:	05010413          	addi	s0,sp,80
    80002534:	06c05c63          	blez	a2,800025ac <consolewrite+0x9c>
    80002538:	00060993          	mv	s3,a2
    8000253c:	00050a13          	mv	s4,a0
    80002540:	00058493          	mv	s1,a1
    80002544:	00000913          	li	s2,0
    80002548:	fff00a93          	li	s5,-1
    8000254c:	01c0006f          	j	80002568 <consolewrite+0x58>
    80002550:	fbf44503          	lbu	a0,-65(s0)
    80002554:	0019091b          	addiw	s2,s2,1
    80002558:	00148493          	addi	s1,s1,1
    8000255c:	00001097          	auipc	ra,0x1
    80002560:	a9c080e7          	jalr	-1380(ra) # 80002ff8 <uartputc>
    80002564:	03298063          	beq	s3,s2,80002584 <consolewrite+0x74>
    80002568:	00048613          	mv	a2,s1
    8000256c:	00100693          	li	a3,1
    80002570:	000a0593          	mv	a1,s4
    80002574:	fbf40513          	addi	a0,s0,-65
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	9d8080e7          	jalr	-1576(ra) # 80001f50 <either_copyin>
    80002580:	fd5518e3          	bne	a0,s5,80002550 <consolewrite+0x40>
    80002584:	04813083          	ld	ra,72(sp)
    80002588:	04013403          	ld	s0,64(sp)
    8000258c:	03813483          	ld	s1,56(sp)
    80002590:	02813983          	ld	s3,40(sp)
    80002594:	02013a03          	ld	s4,32(sp)
    80002598:	01813a83          	ld	s5,24(sp)
    8000259c:	00090513          	mv	a0,s2
    800025a0:	03013903          	ld	s2,48(sp)
    800025a4:	05010113          	addi	sp,sp,80
    800025a8:	00008067          	ret
    800025ac:	00000913          	li	s2,0
    800025b0:	fd5ff06f          	j	80002584 <consolewrite+0x74>

00000000800025b4 <consoleread>:
    800025b4:	f9010113          	addi	sp,sp,-112
    800025b8:	06813023          	sd	s0,96(sp)
    800025bc:	04913c23          	sd	s1,88(sp)
    800025c0:	05213823          	sd	s2,80(sp)
    800025c4:	05313423          	sd	s3,72(sp)
    800025c8:	05413023          	sd	s4,64(sp)
    800025cc:	03513c23          	sd	s5,56(sp)
    800025d0:	03613823          	sd	s6,48(sp)
    800025d4:	03713423          	sd	s7,40(sp)
    800025d8:	03813023          	sd	s8,32(sp)
    800025dc:	06113423          	sd	ra,104(sp)
    800025e0:	01913c23          	sd	s9,24(sp)
    800025e4:	07010413          	addi	s0,sp,112
    800025e8:	00060b93          	mv	s7,a2
    800025ec:	00050913          	mv	s2,a0
    800025f0:	00058c13          	mv	s8,a1
    800025f4:	00060b1b          	sext.w	s6,a2
    800025f8:	00003497          	auipc	s1,0x3
    800025fc:	38048493          	addi	s1,s1,896 # 80005978 <cons>
    80002600:	00400993          	li	s3,4
    80002604:	fff00a13          	li	s4,-1
    80002608:	00a00a93          	li	s5,10
    8000260c:	05705e63          	blez	s7,80002668 <consoleread+0xb4>
    80002610:	09c4a703          	lw	a4,156(s1)
    80002614:	0984a783          	lw	a5,152(s1)
    80002618:	0007071b          	sext.w	a4,a4
    8000261c:	08e78463          	beq	a5,a4,800026a4 <consoleread+0xf0>
    80002620:	07f7f713          	andi	a4,a5,127
    80002624:	00e48733          	add	a4,s1,a4
    80002628:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000262c:	0017869b          	addiw	a3,a5,1
    80002630:	08d4ac23          	sw	a3,152(s1)
    80002634:	00070c9b          	sext.w	s9,a4
    80002638:	0b370663          	beq	a4,s3,800026e4 <consoleread+0x130>
    8000263c:	00100693          	li	a3,1
    80002640:	f9f40613          	addi	a2,s0,-97
    80002644:	000c0593          	mv	a1,s8
    80002648:	00090513          	mv	a0,s2
    8000264c:	f8e40fa3          	sb	a4,-97(s0)
    80002650:	00000097          	auipc	ra,0x0
    80002654:	8b4080e7          	jalr	-1868(ra) # 80001f04 <either_copyout>
    80002658:	01450863          	beq	a0,s4,80002668 <consoleread+0xb4>
    8000265c:	001c0c13          	addi	s8,s8,1
    80002660:	fffb8b9b          	addiw	s7,s7,-1
    80002664:	fb5c94e3          	bne	s9,s5,8000260c <consoleread+0x58>
    80002668:	000b851b          	sext.w	a0,s7
    8000266c:	06813083          	ld	ra,104(sp)
    80002670:	06013403          	ld	s0,96(sp)
    80002674:	05813483          	ld	s1,88(sp)
    80002678:	05013903          	ld	s2,80(sp)
    8000267c:	04813983          	ld	s3,72(sp)
    80002680:	04013a03          	ld	s4,64(sp)
    80002684:	03813a83          	ld	s5,56(sp)
    80002688:	02813b83          	ld	s7,40(sp)
    8000268c:	02013c03          	ld	s8,32(sp)
    80002690:	01813c83          	ld	s9,24(sp)
    80002694:	40ab053b          	subw	a0,s6,a0
    80002698:	03013b03          	ld	s6,48(sp)
    8000269c:	07010113          	addi	sp,sp,112
    800026a0:	00008067          	ret
    800026a4:	00001097          	auipc	ra,0x1
    800026a8:	1d8080e7          	jalr	472(ra) # 8000387c <push_on>
    800026ac:	0984a703          	lw	a4,152(s1)
    800026b0:	09c4a783          	lw	a5,156(s1)
    800026b4:	0007879b          	sext.w	a5,a5
    800026b8:	fef70ce3          	beq	a4,a5,800026b0 <consoleread+0xfc>
    800026bc:	00001097          	auipc	ra,0x1
    800026c0:	234080e7          	jalr	564(ra) # 800038f0 <pop_on>
    800026c4:	0984a783          	lw	a5,152(s1)
    800026c8:	07f7f713          	andi	a4,a5,127
    800026cc:	00e48733          	add	a4,s1,a4
    800026d0:	01874703          	lbu	a4,24(a4)
    800026d4:	0017869b          	addiw	a3,a5,1
    800026d8:	08d4ac23          	sw	a3,152(s1)
    800026dc:	00070c9b          	sext.w	s9,a4
    800026e0:	f5371ee3          	bne	a4,s3,8000263c <consoleread+0x88>
    800026e4:	000b851b          	sext.w	a0,s7
    800026e8:	f96bf2e3          	bgeu	s7,s6,8000266c <consoleread+0xb8>
    800026ec:	08f4ac23          	sw	a5,152(s1)
    800026f0:	f7dff06f          	j	8000266c <consoleread+0xb8>

00000000800026f4 <consputc>:
    800026f4:	10000793          	li	a5,256
    800026f8:	00f50663          	beq	a0,a5,80002704 <consputc+0x10>
    800026fc:	00001317          	auipc	t1,0x1
    80002700:	9f430067          	jr	-1548(t1) # 800030f0 <uartputc_sync>
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00113423          	sd	ra,8(sp)
    8000270c:	00813023          	sd	s0,0(sp)
    80002710:	01010413          	addi	s0,sp,16
    80002714:	00800513          	li	a0,8
    80002718:	00001097          	auipc	ra,0x1
    8000271c:	9d8080e7          	jalr	-1576(ra) # 800030f0 <uartputc_sync>
    80002720:	02000513          	li	a0,32
    80002724:	00001097          	auipc	ra,0x1
    80002728:	9cc080e7          	jalr	-1588(ra) # 800030f0 <uartputc_sync>
    8000272c:	00013403          	ld	s0,0(sp)
    80002730:	00813083          	ld	ra,8(sp)
    80002734:	00800513          	li	a0,8
    80002738:	01010113          	addi	sp,sp,16
    8000273c:	00001317          	auipc	t1,0x1
    80002740:	9b430067          	jr	-1612(t1) # 800030f0 <uartputc_sync>

0000000080002744 <consoleintr>:
    80002744:	fe010113          	addi	sp,sp,-32
    80002748:	00813823          	sd	s0,16(sp)
    8000274c:	00913423          	sd	s1,8(sp)
    80002750:	01213023          	sd	s2,0(sp)
    80002754:	00113c23          	sd	ra,24(sp)
    80002758:	02010413          	addi	s0,sp,32
    8000275c:	00003917          	auipc	s2,0x3
    80002760:	21c90913          	addi	s2,s2,540 # 80005978 <cons>
    80002764:	00050493          	mv	s1,a0
    80002768:	00090513          	mv	a0,s2
    8000276c:	00001097          	auipc	ra,0x1
    80002770:	e40080e7          	jalr	-448(ra) # 800035ac <acquire>
    80002774:	02048c63          	beqz	s1,800027ac <consoleintr+0x68>
    80002778:	0a092783          	lw	a5,160(s2)
    8000277c:	09892703          	lw	a4,152(s2)
    80002780:	07f00693          	li	a3,127
    80002784:	40e7873b          	subw	a4,a5,a4
    80002788:	02e6e263          	bltu	a3,a4,800027ac <consoleintr+0x68>
    8000278c:	00d00713          	li	a4,13
    80002790:	04e48063          	beq	s1,a4,800027d0 <consoleintr+0x8c>
    80002794:	07f7f713          	andi	a4,a5,127
    80002798:	00e90733          	add	a4,s2,a4
    8000279c:	0017879b          	addiw	a5,a5,1
    800027a0:	0af92023          	sw	a5,160(s2)
    800027a4:	00970c23          	sb	s1,24(a4)
    800027a8:	08f92e23          	sw	a5,156(s2)
    800027ac:	01013403          	ld	s0,16(sp)
    800027b0:	01813083          	ld	ra,24(sp)
    800027b4:	00813483          	ld	s1,8(sp)
    800027b8:	00013903          	ld	s2,0(sp)
    800027bc:	00003517          	auipc	a0,0x3
    800027c0:	1bc50513          	addi	a0,a0,444 # 80005978 <cons>
    800027c4:	02010113          	addi	sp,sp,32
    800027c8:	00001317          	auipc	t1,0x1
    800027cc:	eb030067          	jr	-336(t1) # 80003678 <release>
    800027d0:	00a00493          	li	s1,10
    800027d4:	fc1ff06f          	j	80002794 <consoleintr+0x50>

00000000800027d8 <consoleinit>:
    800027d8:	fe010113          	addi	sp,sp,-32
    800027dc:	00113c23          	sd	ra,24(sp)
    800027e0:	00813823          	sd	s0,16(sp)
    800027e4:	00913423          	sd	s1,8(sp)
    800027e8:	02010413          	addi	s0,sp,32
    800027ec:	00003497          	auipc	s1,0x3
    800027f0:	18c48493          	addi	s1,s1,396 # 80005978 <cons>
    800027f4:	00048513          	mv	a0,s1
    800027f8:	00002597          	auipc	a1,0x2
    800027fc:	95058593          	addi	a1,a1,-1712 # 80004148 <CONSOLE_STATUS+0x138>
    80002800:	00001097          	auipc	ra,0x1
    80002804:	d88080e7          	jalr	-632(ra) # 80003588 <initlock>
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	7ac080e7          	jalr	1964(ra) # 80002fb4 <uartinit>
    80002810:	01813083          	ld	ra,24(sp)
    80002814:	01013403          	ld	s0,16(sp)
    80002818:	00000797          	auipc	a5,0x0
    8000281c:	d9c78793          	addi	a5,a5,-612 # 800025b4 <consoleread>
    80002820:	0af4bc23          	sd	a5,184(s1)
    80002824:	00000797          	auipc	a5,0x0
    80002828:	cec78793          	addi	a5,a5,-788 # 80002510 <consolewrite>
    8000282c:	0cf4b023          	sd	a5,192(s1)
    80002830:	00813483          	ld	s1,8(sp)
    80002834:	02010113          	addi	sp,sp,32
    80002838:	00008067          	ret

000000008000283c <console_read>:
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00813423          	sd	s0,8(sp)
    80002844:	01010413          	addi	s0,sp,16
    80002848:	00813403          	ld	s0,8(sp)
    8000284c:	00003317          	auipc	t1,0x3
    80002850:	1e433303          	ld	t1,484(t1) # 80005a30 <devsw+0x10>
    80002854:	01010113          	addi	sp,sp,16
    80002858:	00030067          	jr	t1

000000008000285c <console_write>:
    8000285c:	ff010113          	addi	sp,sp,-16
    80002860:	00813423          	sd	s0,8(sp)
    80002864:	01010413          	addi	s0,sp,16
    80002868:	00813403          	ld	s0,8(sp)
    8000286c:	00003317          	auipc	t1,0x3
    80002870:	1cc33303          	ld	t1,460(t1) # 80005a38 <devsw+0x18>
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00030067          	jr	t1

000000008000287c <panic>:
    8000287c:	fe010113          	addi	sp,sp,-32
    80002880:	00113c23          	sd	ra,24(sp)
    80002884:	00813823          	sd	s0,16(sp)
    80002888:	00913423          	sd	s1,8(sp)
    8000288c:	02010413          	addi	s0,sp,32
    80002890:	00050493          	mv	s1,a0
    80002894:	00002517          	auipc	a0,0x2
    80002898:	8bc50513          	addi	a0,a0,-1860 # 80004150 <CONSOLE_STATUS+0x140>
    8000289c:	00003797          	auipc	a5,0x3
    800028a0:	2207ae23          	sw	zero,572(a5) # 80005ad8 <pr+0x18>
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	034080e7          	jalr	52(ra) # 800028d8 <__printf>
    800028ac:	00048513          	mv	a0,s1
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	028080e7          	jalr	40(ra) # 800028d8 <__printf>
    800028b8:	00002517          	auipc	a0,0x2
    800028bc:	87850513          	addi	a0,a0,-1928 # 80004130 <CONSOLE_STATUS+0x120>
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	018080e7          	jalr	24(ra) # 800028d8 <__printf>
    800028c8:	00100793          	li	a5,1
    800028cc:	00002717          	auipc	a4,0x2
    800028d0:	f6f72e23          	sw	a5,-132(a4) # 80004848 <panicked>
    800028d4:	0000006f          	j	800028d4 <panic+0x58>

00000000800028d8 <__printf>:
    800028d8:	f3010113          	addi	sp,sp,-208
    800028dc:	08813023          	sd	s0,128(sp)
    800028e0:	07313423          	sd	s3,104(sp)
    800028e4:	09010413          	addi	s0,sp,144
    800028e8:	05813023          	sd	s8,64(sp)
    800028ec:	08113423          	sd	ra,136(sp)
    800028f0:	06913c23          	sd	s1,120(sp)
    800028f4:	07213823          	sd	s2,112(sp)
    800028f8:	07413023          	sd	s4,96(sp)
    800028fc:	05513c23          	sd	s5,88(sp)
    80002900:	05613823          	sd	s6,80(sp)
    80002904:	05713423          	sd	s7,72(sp)
    80002908:	03913c23          	sd	s9,56(sp)
    8000290c:	03a13823          	sd	s10,48(sp)
    80002910:	03b13423          	sd	s11,40(sp)
    80002914:	00003317          	auipc	t1,0x3
    80002918:	1ac30313          	addi	t1,t1,428 # 80005ac0 <pr>
    8000291c:	01832c03          	lw	s8,24(t1)
    80002920:	00b43423          	sd	a1,8(s0)
    80002924:	00c43823          	sd	a2,16(s0)
    80002928:	00d43c23          	sd	a3,24(s0)
    8000292c:	02e43023          	sd	a4,32(s0)
    80002930:	02f43423          	sd	a5,40(s0)
    80002934:	03043823          	sd	a6,48(s0)
    80002938:	03143c23          	sd	a7,56(s0)
    8000293c:	00050993          	mv	s3,a0
    80002940:	4a0c1663          	bnez	s8,80002dec <__printf+0x514>
    80002944:	60098c63          	beqz	s3,80002f5c <__printf+0x684>
    80002948:	0009c503          	lbu	a0,0(s3)
    8000294c:	00840793          	addi	a5,s0,8
    80002950:	f6f43c23          	sd	a5,-136(s0)
    80002954:	00000493          	li	s1,0
    80002958:	22050063          	beqz	a0,80002b78 <__printf+0x2a0>
    8000295c:	00002a37          	lui	s4,0x2
    80002960:	00018ab7          	lui	s5,0x18
    80002964:	000f4b37          	lui	s6,0xf4
    80002968:	00989bb7          	lui	s7,0x989
    8000296c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002970:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002974:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002978:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000297c:	00148c9b          	addiw	s9,s1,1
    80002980:	02500793          	li	a5,37
    80002984:	01998933          	add	s2,s3,s9
    80002988:	38f51263          	bne	a0,a5,80002d0c <__printf+0x434>
    8000298c:	00094783          	lbu	a5,0(s2)
    80002990:	00078c9b          	sext.w	s9,a5
    80002994:	1e078263          	beqz	a5,80002b78 <__printf+0x2a0>
    80002998:	0024849b          	addiw	s1,s1,2
    8000299c:	07000713          	li	a4,112
    800029a0:	00998933          	add	s2,s3,s1
    800029a4:	38e78a63          	beq	a5,a4,80002d38 <__printf+0x460>
    800029a8:	20f76863          	bltu	a4,a5,80002bb8 <__printf+0x2e0>
    800029ac:	42a78863          	beq	a5,a0,80002ddc <__printf+0x504>
    800029b0:	06400713          	li	a4,100
    800029b4:	40e79663          	bne	a5,a4,80002dc0 <__printf+0x4e8>
    800029b8:	f7843783          	ld	a5,-136(s0)
    800029bc:	0007a603          	lw	a2,0(a5)
    800029c0:	00878793          	addi	a5,a5,8
    800029c4:	f6f43c23          	sd	a5,-136(s0)
    800029c8:	42064a63          	bltz	a2,80002dfc <__printf+0x524>
    800029cc:	00a00713          	li	a4,10
    800029d0:	02e677bb          	remuw	a5,a2,a4
    800029d4:	00001d97          	auipc	s11,0x1
    800029d8:	7a4d8d93          	addi	s11,s11,1956 # 80004178 <digits>
    800029dc:	00900593          	li	a1,9
    800029e0:	0006051b          	sext.w	a0,a2
    800029e4:	00000c93          	li	s9,0
    800029e8:	02079793          	slli	a5,a5,0x20
    800029ec:	0207d793          	srli	a5,a5,0x20
    800029f0:	00fd87b3          	add	a5,s11,a5
    800029f4:	0007c783          	lbu	a5,0(a5)
    800029f8:	02e656bb          	divuw	a3,a2,a4
    800029fc:	f8f40023          	sb	a5,-128(s0)
    80002a00:	14c5d863          	bge	a1,a2,80002b50 <__printf+0x278>
    80002a04:	06300593          	li	a1,99
    80002a08:	00100c93          	li	s9,1
    80002a0c:	02e6f7bb          	remuw	a5,a3,a4
    80002a10:	02079793          	slli	a5,a5,0x20
    80002a14:	0207d793          	srli	a5,a5,0x20
    80002a18:	00fd87b3          	add	a5,s11,a5
    80002a1c:	0007c783          	lbu	a5,0(a5)
    80002a20:	02e6d73b          	divuw	a4,a3,a4
    80002a24:	f8f400a3          	sb	a5,-127(s0)
    80002a28:	12a5f463          	bgeu	a1,a0,80002b50 <__printf+0x278>
    80002a2c:	00a00693          	li	a3,10
    80002a30:	00900593          	li	a1,9
    80002a34:	02d777bb          	remuw	a5,a4,a3
    80002a38:	02079793          	slli	a5,a5,0x20
    80002a3c:	0207d793          	srli	a5,a5,0x20
    80002a40:	00fd87b3          	add	a5,s11,a5
    80002a44:	0007c503          	lbu	a0,0(a5)
    80002a48:	02d757bb          	divuw	a5,a4,a3
    80002a4c:	f8a40123          	sb	a0,-126(s0)
    80002a50:	48e5f263          	bgeu	a1,a4,80002ed4 <__printf+0x5fc>
    80002a54:	06300513          	li	a0,99
    80002a58:	02d7f5bb          	remuw	a1,a5,a3
    80002a5c:	02059593          	slli	a1,a1,0x20
    80002a60:	0205d593          	srli	a1,a1,0x20
    80002a64:	00bd85b3          	add	a1,s11,a1
    80002a68:	0005c583          	lbu	a1,0(a1)
    80002a6c:	02d7d7bb          	divuw	a5,a5,a3
    80002a70:	f8b401a3          	sb	a1,-125(s0)
    80002a74:	48e57263          	bgeu	a0,a4,80002ef8 <__printf+0x620>
    80002a78:	3e700513          	li	a0,999
    80002a7c:	02d7f5bb          	remuw	a1,a5,a3
    80002a80:	02059593          	slli	a1,a1,0x20
    80002a84:	0205d593          	srli	a1,a1,0x20
    80002a88:	00bd85b3          	add	a1,s11,a1
    80002a8c:	0005c583          	lbu	a1,0(a1)
    80002a90:	02d7d7bb          	divuw	a5,a5,a3
    80002a94:	f8b40223          	sb	a1,-124(s0)
    80002a98:	46e57663          	bgeu	a0,a4,80002f04 <__printf+0x62c>
    80002a9c:	02d7f5bb          	remuw	a1,a5,a3
    80002aa0:	02059593          	slli	a1,a1,0x20
    80002aa4:	0205d593          	srli	a1,a1,0x20
    80002aa8:	00bd85b3          	add	a1,s11,a1
    80002aac:	0005c583          	lbu	a1,0(a1)
    80002ab0:	02d7d7bb          	divuw	a5,a5,a3
    80002ab4:	f8b402a3          	sb	a1,-123(s0)
    80002ab8:	46ea7863          	bgeu	s4,a4,80002f28 <__printf+0x650>
    80002abc:	02d7f5bb          	remuw	a1,a5,a3
    80002ac0:	02059593          	slli	a1,a1,0x20
    80002ac4:	0205d593          	srli	a1,a1,0x20
    80002ac8:	00bd85b3          	add	a1,s11,a1
    80002acc:	0005c583          	lbu	a1,0(a1)
    80002ad0:	02d7d7bb          	divuw	a5,a5,a3
    80002ad4:	f8b40323          	sb	a1,-122(s0)
    80002ad8:	3eeaf863          	bgeu	s5,a4,80002ec8 <__printf+0x5f0>
    80002adc:	02d7f5bb          	remuw	a1,a5,a3
    80002ae0:	02059593          	slli	a1,a1,0x20
    80002ae4:	0205d593          	srli	a1,a1,0x20
    80002ae8:	00bd85b3          	add	a1,s11,a1
    80002aec:	0005c583          	lbu	a1,0(a1)
    80002af0:	02d7d7bb          	divuw	a5,a5,a3
    80002af4:	f8b403a3          	sb	a1,-121(s0)
    80002af8:	42eb7e63          	bgeu	s6,a4,80002f34 <__printf+0x65c>
    80002afc:	02d7f5bb          	remuw	a1,a5,a3
    80002b00:	02059593          	slli	a1,a1,0x20
    80002b04:	0205d593          	srli	a1,a1,0x20
    80002b08:	00bd85b3          	add	a1,s11,a1
    80002b0c:	0005c583          	lbu	a1,0(a1)
    80002b10:	02d7d7bb          	divuw	a5,a5,a3
    80002b14:	f8b40423          	sb	a1,-120(s0)
    80002b18:	42ebfc63          	bgeu	s7,a4,80002f50 <__printf+0x678>
    80002b1c:	02079793          	slli	a5,a5,0x20
    80002b20:	0207d793          	srli	a5,a5,0x20
    80002b24:	00fd8db3          	add	s11,s11,a5
    80002b28:	000dc703          	lbu	a4,0(s11)
    80002b2c:	00a00793          	li	a5,10
    80002b30:	00900c93          	li	s9,9
    80002b34:	f8e404a3          	sb	a4,-119(s0)
    80002b38:	00065c63          	bgez	a2,80002b50 <__printf+0x278>
    80002b3c:	f9040713          	addi	a4,s0,-112
    80002b40:	00f70733          	add	a4,a4,a5
    80002b44:	02d00693          	li	a3,45
    80002b48:	fed70823          	sb	a3,-16(a4)
    80002b4c:	00078c93          	mv	s9,a5
    80002b50:	f8040793          	addi	a5,s0,-128
    80002b54:	01978cb3          	add	s9,a5,s9
    80002b58:	f7f40d13          	addi	s10,s0,-129
    80002b5c:	000cc503          	lbu	a0,0(s9)
    80002b60:	fffc8c93          	addi	s9,s9,-1
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	b90080e7          	jalr	-1136(ra) # 800026f4 <consputc>
    80002b6c:	ffac98e3          	bne	s9,s10,80002b5c <__printf+0x284>
    80002b70:	00094503          	lbu	a0,0(s2)
    80002b74:	e00514e3          	bnez	a0,8000297c <__printf+0xa4>
    80002b78:	1a0c1663          	bnez	s8,80002d24 <__printf+0x44c>
    80002b7c:	08813083          	ld	ra,136(sp)
    80002b80:	08013403          	ld	s0,128(sp)
    80002b84:	07813483          	ld	s1,120(sp)
    80002b88:	07013903          	ld	s2,112(sp)
    80002b8c:	06813983          	ld	s3,104(sp)
    80002b90:	06013a03          	ld	s4,96(sp)
    80002b94:	05813a83          	ld	s5,88(sp)
    80002b98:	05013b03          	ld	s6,80(sp)
    80002b9c:	04813b83          	ld	s7,72(sp)
    80002ba0:	04013c03          	ld	s8,64(sp)
    80002ba4:	03813c83          	ld	s9,56(sp)
    80002ba8:	03013d03          	ld	s10,48(sp)
    80002bac:	02813d83          	ld	s11,40(sp)
    80002bb0:	0d010113          	addi	sp,sp,208
    80002bb4:	00008067          	ret
    80002bb8:	07300713          	li	a4,115
    80002bbc:	1ce78a63          	beq	a5,a4,80002d90 <__printf+0x4b8>
    80002bc0:	07800713          	li	a4,120
    80002bc4:	1ee79e63          	bne	a5,a4,80002dc0 <__printf+0x4e8>
    80002bc8:	f7843783          	ld	a5,-136(s0)
    80002bcc:	0007a703          	lw	a4,0(a5)
    80002bd0:	00878793          	addi	a5,a5,8
    80002bd4:	f6f43c23          	sd	a5,-136(s0)
    80002bd8:	28074263          	bltz	a4,80002e5c <__printf+0x584>
    80002bdc:	00001d97          	auipc	s11,0x1
    80002be0:	59cd8d93          	addi	s11,s11,1436 # 80004178 <digits>
    80002be4:	00f77793          	andi	a5,a4,15
    80002be8:	00fd87b3          	add	a5,s11,a5
    80002bec:	0007c683          	lbu	a3,0(a5)
    80002bf0:	00f00613          	li	a2,15
    80002bf4:	0007079b          	sext.w	a5,a4
    80002bf8:	f8d40023          	sb	a3,-128(s0)
    80002bfc:	0047559b          	srliw	a1,a4,0x4
    80002c00:	0047569b          	srliw	a3,a4,0x4
    80002c04:	00000c93          	li	s9,0
    80002c08:	0ee65063          	bge	a2,a4,80002ce8 <__printf+0x410>
    80002c0c:	00f6f693          	andi	a3,a3,15
    80002c10:	00dd86b3          	add	a3,s11,a3
    80002c14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002c18:	0087d79b          	srliw	a5,a5,0x8
    80002c1c:	00100c93          	li	s9,1
    80002c20:	f8d400a3          	sb	a3,-127(s0)
    80002c24:	0cb67263          	bgeu	a2,a1,80002ce8 <__printf+0x410>
    80002c28:	00f7f693          	andi	a3,a5,15
    80002c2c:	00dd86b3          	add	a3,s11,a3
    80002c30:	0006c583          	lbu	a1,0(a3)
    80002c34:	00f00613          	li	a2,15
    80002c38:	0047d69b          	srliw	a3,a5,0x4
    80002c3c:	f8b40123          	sb	a1,-126(s0)
    80002c40:	0047d593          	srli	a1,a5,0x4
    80002c44:	28f67e63          	bgeu	a2,a5,80002ee0 <__printf+0x608>
    80002c48:	00f6f693          	andi	a3,a3,15
    80002c4c:	00dd86b3          	add	a3,s11,a3
    80002c50:	0006c503          	lbu	a0,0(a3)
    80002c54:	0087d813          	srli	a6,a5,0x8
    80002c58:	0087d69b          	srliw	a3,a5,0x8
    80002c5c:	f8a401a3          	sb	a0,-125(s0)
    80002c60:	28b67663          	bgeu	a2,a1,80002eec <__printf+0x614>
    80002c64:	00f6f693          	andi	a3,a3,15
    80002c68:	00dd86b3          	add	a3,s11,a3
    80002c6c:	0006c583          	lbu	a1,0(a3)
    80002c70:	00c7d513          	srli	a0,a5,0xc
    80002c74:	00c7d69b          	srliw	a3,a5,0xc
    80002c78:	f8b40223          	sb	a1,-124(s0)
    80002c7c:	29067a63          	bgeu	a2,a6,80002f10 <__printf+0x638>
    80002c80:	00f6f693          	andi	a3,a3,15
    80002c84:	00dd86b3          	add	a3,s11,a3
    80002c88:	0006c583          	lbu	a1,0(a3)
    80002c8c:	0107d813          	srli	a6,a5,0x10
    80002c90:	0107d69b          	srliw	a3,a5,0x10
    80002c94:	f8b402a3          	sb	a1,-123(s0)
    80002c98:	28a67263          	bgeu	a2,a0,80002f1c <__printf+0x644>
    80002c9c:	00f6f693          	andi	a3,a3,15
    80002ca0:	00dd86b3          	add	a3,s11,a3
    80002ca4:	0006c683          	lbu	a3,0(a3)
    80002ca8:	0147d79b          	srliw	a5,a5,0x14
    80002cac:	f8d40323          	sb	a3,-122(s0)
    80002cb0:	21067663          	bgeu	a2,a6,80002ebc <__printf+0x5e4>
    80002cb4:	02079793          	slli	a5,a5,0x20
    80002cb8:	0207d793          	srli	a5,a5,0x20
    80002cbc:	00fd8db3          	add	s11,s11,a5
    80002cc0:	000dc683          	lbu	a3,0(s11)
    80002cc4:	00800793          	li	a5,8
    80002cc8:	00700c93          	li	s9,7
    80002ccc:	f8d403a3          	sb	a3,-121(s0)
    80002cd0:	00075c63          	bgez	a4,80002ce8 <__printf+0x410>
    80002cd4:	f9040713          	addi	a4,s0,-112
    80002cd8:	00f70733          	add	a4,a4,a5
    80002cdc:	02d00693          	li	a3,45
    80002ce0:	fed70823          	sb	a3,-16(a4)
    80002ce4:	00078c93          	mv	s9,a5
    80002ce8:	f8040793          	addi	a5,s0,-128
    80002cec:	01978cb3          	add	s9,a5,s9
    80002cf0:	f7f40d13          	addi	s10,s0,-129
    80002cf4:	000cc503          	lbu	a0,0(s9)
    80002cf8:	fffc8c93          	addi	s9,s9,-1
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	9f8080e7          	jalr	-1544(ra) # 800026f4 <consputc>
    80002d04:	ff9d18e3          	bne	s10,s9,80002cf4 <__printf+0x41c>
    80002d08:	0100006f          	j	80002d18 <__printf+0x440>
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	9e8080e7          	jalr	-1560(ra) # 800026f4 <consputc>
    80002d14:	000c8493          	mv	s1,s9
    80002d18:	00094503          	lbu	a0,0(s2)
    80002d1c:	c60510e3          	bnez	a0,8000297c <__printf+0xa4>
    80002d20:	e40c0ee3          	beqz	s8,80002b7c <__printf+0x2a4>
    80002d24:	00003517          	auipc	a0,0x3
    80002d28:	d9c50513          	addi	a0,a0,-612 # 80005ac0 <pr>
    80002d2c:	00001097          	auipc	ra,0x1
    80002d30:	94c080e7          	jalr	-1716(ra) # 80003678 <release>
    80002d34:	e49ff06f          	j	80002b7c <__printf+0x2a4>
    80002d38:	f7843783          	ld	a5,-136(s0)
    80002d3c:	03000513          	li	a0,48
    80002d40:	01000d13          	li	s10,16
    80002d44:	00878713          	addi	a4,a5,8
    80002d48:	0007bc83          	ld	s9,0(a5)
    80002d4c:	f6e43c23          	sd	a4,-136(s0)
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	9a4080e7          	jalr	-1628(ra) # 800026f4 <consputc>
    80002d58:	07800513          	li	a0,120
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	998080e7          	jalr	-1640(ra) # 800026f4 <consputc>
    80002d64:	00001d97          	auipc	s11,0x1
    80002d68:	414d8d93          	addi	s11,s11,1044 # 80004178 <digits>
    80002d6c:	03ccd793          	srli	a5,s9,0x3c
    80002d70:	00fd87b3          	add	a5,s11,a5
    80002d74:	0007c503          	lbu	a0,0(a5)
    80002d78:	fffd0d1b          	addiw	s10,s10,-1
    80002d7c:	004c9c93          	slli	s9,s9,0x4
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	974080e7          	jalr	-1676(ra) # 800026f4 <consputc>
    80002d88:	fe0d12e3          	bnez	s10,80002d6c <__printf+0x494>
    80002d8c:	f8dff06f          	j	80002d18 <__printf+0x440>
    80002d90:	f7843783          	ld	a5,-136(s0)
    80002d94:	0007bc83          	ld	s9,0(a5)
    80002d98:	00878793          	addi	a5,a5,8
    80002d9c:	f6f43c23          	sd	a5,-136(s0)
    80002da0:	000c9a63          	bnez	s9,80002db4 <__printf+0x4dc>
    80002da4:	1080006f          	j	80002eac <__printf+0x5d4>
    80002da8:	001c8c93          	addi	s9,s9,1
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	948080e7          	jalr	-1720(ra) # 800026f4 <consputc>
    80002db4:	000cc503          	lbu	a0,0(s9)
    80002db8:	fe0518e3          	bnez	a0,80002da8 <__printf+0x4d0>
    80002dbc:	f5dff06f          	j	80002d18 <__printf+0x440>
    80002dc0:	02500513          	li	a0,37
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	930080e7          	jalr	-1744(ra) # 800026f4 <consputc>
    80002dcc:	000c8513          	mv	a0,s9
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	924080e7          	jalr	-1756(ra) # 800026f4 <consputc>
    80002dd8:	f41ff06f          	j	80002d18 <__printf+0x440>
    80002ddc:	02500513          	li	a0,37
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	914080e7          	jalr	-1772(ra) # 800026f4 <consputc>
    80002de8:	f31ff06f          	j	80002d18 <__printf+0x440>
    80002dec:	00030513          	mv	a0,t1
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	7bc080e7          	jalr	1980(ra) # 800035ac <acquire>
    80002df8:	b4dff06f          	j	80002944 <__printf+0x6c>
    80002dfc:	40c0053b          	negw	a0,a2
    80002e00:	00a00713          	li	a4,10
    80002e04:	02e576bb          	remuw	a3,a0,a4
    80002e08:	00001d97          	auipc	s11,0x1
    80002e0c:	370d8d93          	addi	s11,s11,880 # 80004178 <digits>
    80002e10:	ff700593          	li	a1,-9
    80002e14:	02069693          	slli	a3,a3,0x20
    80002e18:	0206d693          	srli	a3,a3,0x20
    80002e1c:	00dd86b3          	add	a3,s11,a3
    80002e20:	0006c683          	lbu	a3,0(a3)
    80002e24:	02e557bb          	divuw	a5,a0,a4
    80002e28:	f8d40023          	sb	a3,-128(s0)
    80002e2c:	10b65e63          	bge	a2,a1,80002f48 <__printf+0x670>
    80002e30:	06300593          	li	a1,99
    80002e34:	02e7f6bb          	remuw	a3,a5,a4
    80002e38:	02069693          	slli	a3,a3,0x20
    80002e3c:	0206d693          	srli	a3,a3,0x20
    80002e40:	00dd86b3          	add	a3,s11,a3
    80002e44:	0006c683          	lbu	a3,0(a3)
    80002e48:	02e7d73b          	divuw	a4,a5,a4
    80002e4c:	00200793          	li	a5,2
    80002e50:	f8d400a3          	sb	a3,-127(s0)
    80002e54:	bca5ece3          	bltu	a1,a0,80002a2c <__printf+0x154>
    80002e58:	ce5ff06f          	j	80002b3c <__printf+0x264>
    80002e5c:	40e007bb          	negw	a5,a4
    80002e60:	00001d97          	auipc	s11,0x1
    80002e64:	318d8d93          	addi	s11,s11,792 # 80004178 <digits>
    80002e68:	00f7f693          	andi	a3,a5,15
    80002e6c:	00dd86b3          	add	a3,s11,a3
    80002e70:	0006c583          	lbu	a1,0(a3)
    80002e74:	ff100613          	li	a2,-15
    80002e78:	0047d69b          	srliw	a3,a5,0x4
    80002e7c:	f8b40023          	sb	a1,-128(s0)
    80002e80:	0047d59b          	srliw	a1,a5,0x4
    80002e84:	0ac75e63          	bge	a4,a2,80002f40 <__printf+0x668>
    80002e88:	00f6f693          	andi	a3,a3,15
    80002e8c:	00dd86b3          	add	a3,s11,a3
    80002e90:	0006c603          	lbu	a2,0(a3)
    80002e94:	00f00693          	li	a3,15
    80002e98:	0087d79b          	srliw	a5,a5,0x8
    80002e9c:	f8c400a3          	sb	a2,-127(s0)
    80002ea0:	d8b6e4e3          	bltu	a3,a1,80002c28 <__printf+0x350>
    80002ea4:	00200793          	li	a5,2
    80002ea8:	e2dff06f          	j	80002cd4 <__printf+0x3fc>
    80002eac:	00001c97          	auipc	s9,0x1
    80002eb0:	2acc8c93          	addi	s9,s9,684 # 80004158 <CONSOLE_STATUS+0x148>
    80002eb4:	02800513          	li	a0,40
    80002eb8:	ef1ff06f          	j	80002da8 <__printf+0x4d0>
    80002ebc:	00700793          	li	a5,7
    80002ec0:	00600c93          	li	s9,6
    80002ec4:	e0dff06f          	j	80002cd0 <__printf+0x3f8>
    80002ec8:	00700793          	li	a5,7
    80002ecc:	00600c93          	li	s9,6
    80002ed0:	c69ff06f          	j	80002b38 <__printf+0x260>
    80002ed4:	00300793          	li	a5,3
    80002ed8:	00200c93          	li	s9,2
    80002edc:	c5dff06f          	j	80002b38 <__printf+0x260>
    80002ee0:	00300793          	li	a5,3
    80002ee4:	00200c93          	li	s9,2
    80002ee8:	de9ff06f          	j	80002cd0 <__printf+0x3f8>
    80002eec:	00400793          	li	a5,4
    80002ef0:	00300c93          	li	s9,3
    80002ef4:	dddff06f          	j	80002cd0 <__printf+0x3f8>
    80002ef8:	00400793          	li	a5,4
    80002efc:	00300c93          	li	s9,3
    80002f00:	c39ff06f          	j	80002b38 <__printf+0x260>
    80002f04:	00500793          	li	a5,5
    80002f08:	00400c93          	li	s9,4
    80002f0c:	c2dff06f          	j	80002b38 <__printf+0x260>
    80002f10:	00500793          	li	a5,5
    80002f14:	00400c93          	li	s9,4
    80002f18:	db9ff06f          	j	80002cd0 <__printf+0x3f8>
    80002f1c:	00600793          	li	a5,6
    80002f20:	00500c93          	li	s9,5
    80002f24:	dadff06f          	j	80002cd0 <__printf+0x3f8>
    80002f28:	00600793          	li	a5,6
    80002f2c:	00500c93          	li	s9,5
    80002f30:	c09ff06f          	j	80002b38 <__printf+0x260>
    80002f34:	00800793          	li	a5,8
    80002f38:	00700c93          	li	s9,7
    80002f3c:	bfdff06f          	j	80002b38 <__printf+0x260>
    80002f40:	00100793          	li	a5,1
    80002f44:	d91ff06f          	j	80002cd4 <__printf+0x3fc>
    80002f48:	00100793          	li	a5,1
    80002f4c:	bf1ff06f          	j	80002b3c <__printf+0x264>
    80002f50:	00900793          	li	a5,9
    80002f54:	00800c93          	li	s9,8
    80002f58:	be1ff06f          	j	80002b38 <__printf+0x260>
    80002f5c:	00001517          	auipc	a0,0x1
    80002f60:	20450513          	addi	a0,a0,516 # 80004160 <CONSOLE_STATUS+0x150>
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	918080e7          	jalr	-1768(ra) # 8000287c <panic>

0000000080002f6c <printfinit>:
    80002f6c:	fe010113          	addi	sp,sp,-32
    80002f70:	00813823          	sd	s0,16(sp)
    80002f74:	00913423          	sd	s1,8(sp)
    80002f78:	00113c23          	sd	ra,24(sp)
    80002f7c:	02010413          	addi	s0,sp,32
    80002f80:	00003497          	auipc	s1,0x3
    80002f84:	b4048493          	addi	s1,s1,-1216 # 80005ac0 <pr>
    80002f88:	00048513          	mv	a0,s1
    80002f8c:	00001597          	auipc	a1,0x1
    80002f90:	1e458593          	addi	a1,a1,484 # 80004170 <CONSOLE_STATUS+0x160>
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	5f4080e7          	jalr	1524(ra) # 80003588 <initlock>
    80002f9c:	01813083          	ld	ra,24(sp)
    80002fa0:	01013403          	ld	s0,16(sp)
    80002fa4:	0004ac23          	sw	zero,24(s1)
    80002fa8:	00813483          	ld	s1,8(sp)
    80002fac:	02010113          	addi	sp,sp,32
    80002fb0:	00008067          	ret

0000000080002fb4 <uartinit>:
    80002fb4:	ff010113          	addi	sp,sp,-16
    80002fb8:	00813423          	sd	s0,8(sp)
    80002fbc:	01010413          	addi	s0,sp,16
    80002fc0:	100007b7          	lui	a5,0x10000
    80002fc4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002fc8:	f8000713          	li	a4,-128
    80002fcc:	00e781a3          	sb	a4,3(a5)
    80002fd0:	00300713          	li	a4,3
    80002fd4:	00e78023          	sb	a4,0(a5)
    80002fd8:	000780a3          	sb	zero,1(a5)
    80002fdc:	00e781a3          	sb	a4,3(a5)
    80002fe0:	00700693          	li	a3,7
    80002fe4:	00d78123          	sb	a3,2(a5)
    80002fe8:	00e780a3          	sb	a4,1(a5)
    80002fec:	00813403          	ld	s0,8(sp)
    80002ff0:	01010113          	addi	sp,sp,16
    80002ff4:	00008067          	ret

0000000080002ff8 <uartputc>:
    80002ff8:	00002797          	auipc	a5,0x2
    80002ffc:	8507a783          	lw	a5,-1968(a5) # 80004848 <panicked>
    80003000:	00078463          	beqz	a5,80003008 <uartputc+0x10>
    80003004:	0000006f          	j	80003004 <uartputc+0xc>
    80003008:	fd010113          	addi	sp,sp,-48
    8000300c:	02813023          	sd	s0,32(sp)
    80003010:	00913c23          	sd	s1,24(sp)
    80003014:	01213823          	sd	s2,16(sp)
    80003018:	01313423          	sd	s3,8(sp)
    8000301c:	02113423          	sd	ra,40(sp)
    80003020:	03010413          	addi	s0,sp,48
    80003024:	00002917          	auipc	s2,0x2
    80003028:	82c90913          	addi	s2,s2,-2004 # 80004850 <uart_tx_r>
    8000302c:	00093783          	ld	a5,0(s2)
    80003030:	00002497          	auipc	s1,0x2
    80003034:	82848493          	addi	s1,s1,-2008 # 80004858 <uart_tx_w>
    80003038:	0004b703          	ld	a4,0(s1)
    8000303c:	02078693          	addi	a3,a5,32
    80003040:	00050993          	mv	s3,a0
    80003044:	02e69c63          	bne	a3,a4,8000307c <uartputc+0x84>
    80003048:	00001097          	auipc	ra,0x1
    8000304c:	834080e7          	jalr	-1996(ra) # 8000387c <push_on>
    80003050:	00093783          	ld	a5,0(s2)
    80003054:	0004b703          	ld	a4,0(s1)
    80003058:	02078793          	addi	a5,a5,32
    8000305c:	00e79463          	bne	a5,a4,80003064 <uartputc+0x6c>
    80003060:	0000006f          	j	80003060 <uartputc+0x68>
    80003064:	00001097          	auipc	ra,0x1
    80003068:	88c080e7          	jalr	-1908(ra) # 800038f0 <pop_on>
    8000306c:	00093783          	ld	a5,0(s2)
    80003070:	0004b703          	ld	a4,0(s1)
    80003074:	02078693          	addi	a3,a5,32
    80003078:	fce688e3          	beq	a3,a4,80003048 <uartputc+0x50>
    8000307c:	01f77693          	andi	a3,a4,31
    80003080:	00003597          	auipc	a1,0x3
    80003084:	a6058593          	addi	a1,a1,-1440 # 80005ae0 <uart_tx_buf>
    80003088:	00d586b3          	add	a3,a1,a3
    8000308c:	00170713          	addi	a4,a4,1
    80003090:	01368023          	sb	s3,0(a3)
    80003094:	00e4b023          	sd	a4,0(s1)
    80003098:	10000637          	lui	a2,0x10000
    8000309c:	02f71063          	bne	a4,a5,800030bc <uartputc+0xc4>
    800030a0:	0340006f          	j	800030d4 <uartputc+0xdc>
    800030a4:	00074703          	lbu	a4,0(a4)
    800030a8:	00f93023          	sd	a5,0(s2)
    800030ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800030b0:	00093783          	ld	a5,0(s2)
    800030b4:	0004b703          	ld	a4,0(s1)
    800030b8:	00f70e63          	beq	a4,a5,800030d4 <uartputc+0xdc>
    800030bc:	00564683          	lbu	a3,5(a2)
    800030c0:	01f7f713          	andi	a4,a5,31
    800030c4:	00e58733          	add	a4,a1,a4
    800030c8:	0206f693          	andi	a3,a3,32
    800030cc:	00178793          	addi	a5,a5,1
    800030d0:	fc069ae3          	bnez	a3,800030a4 <uartputc+0xac>
    800030d4:	02813083          	ld	ra,40(sp)
    800030d8:	02013403          	ld	s0,32(sp)
    800030dc:	01813483          	ld	s1,24(sp)
    800030e0:	01013903          	ld	s2,16(sp)
    800030e4:	00813983          	ld	s3,8(sp)
    800030e8:	03010113          	addi	sp,sp,48
    800030ec:	00008067          	ret

00000000800030f0 <uartputc_sync>:
    800030f0:	ff010113          	addi	sp,sp,-16
    800030f4:	00813423          	sd	s0,8(sp)
    800030f8:	01010413          	addi	s0,sp,16
    800030fc:	00001717          	auipc	a4,0x1
    80003100:	74c72703          	lw	a4,1868(a4) # 80004848 <panicked>
    80003104:	02071663          	bnez	a4,80003130 <uartputc_sync+0x40>
    80003108:	00050793          	mv	a5,a0
    8000310c:	100006b7          	lui	a3,0x10000
    80003110:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003114:	02077713          	andi	a4,a4,32
    80003118:	fe070ce3          	beqz	a4,80003110 <uartputc_sync+0x20>
    8000311c:	0ff7f793          	andi	a5,a5,255
    80003120:	00f68023          	sb	a5,0(a3)
    80003124:	00813403          	ld	s0,8(sp)
    80003128:	01010113          	addi	sp,sp,16
    8000312c:	00008067          	ret
    80003130:	0000006f          	j	80003130 <uartputc_sync+0x40>

0000000080003134 <uartstart>:
    80003134:	ff010113          	addi	sp,sp,-16
    80003138:	00813423          	sd	s0,8(sp)
    8000313c:	01010413          	addi	s0,sp,16
    80003140:	00001617          	auipc	a2,0x1
    80003144:	71060613          	addi	a2,a2,1808 # 80004850 <uart_tx_r>
    80003148:	00001517          	auipc	a0,0x1
    8000314c:	71050513          	addi	a0,a0,1808 # 80004858 <uart_tx_w>
    80003150:	00063783          	ld	a5,0(a2)
    80003154:	00053703          	ld	a4,0(a0)
    80003158:	04f70263          	beq	a4,a5,8000319c <uartstart+0x68>
    8000315c:	100005b7          	lui	a1,0x10000
    80003160:	00003817          	auipc	a6,0x3
    80003164:	98080813          	addi	a6,a6,-1664 # 80005ae0 <uart_tx_buf>
    80003168:	01c0006f          	j	80003184 <uartstart+0x50>
    8000316c:	0006c703          	lbu	a4,0(a3)
    80003170:	00f63023          	sd	a5,0(a2)
    80003174:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003178:	00063783          	ld	a5,0(a2)
    8000317c:	00053703          	ld	a4,0(a0)
    80003180:	00f70e63          	beq	a4,a5,8000319c <uartstart+0x68>
    80003184:	01f7f713          	andi	a4,a5,31
    80003188:	00e806b3          	add	a3,a6,a4
    8000318c:	0055c703          	lbu	a4,5(a1)
    80003190:	00178793          	addi	a5,a5,1
    80003194:	02077713          	andi	a4,a4,32
    80003198:	fc071ae3          	bnez	a4,8000316c <uartstart+0x38>
    8000319c:	00813403          	ld	s0,8(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <uartgetc>:
    800031a8:	ff010113          	addi	sp,sp,-16
    800031ac:	00813423          	sd	s0,8(sp)
    800031b0:	01010413          	addi	s0,sp,16
    800031b4:	10000737          	lui	a4,0x10000
    800031b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800031bc:	0017f793          	andi	a5,a5,1
    800031c0:	00078c63          	beqz	a5,800031d8 <uartgetc+0x30>
    800031c4:	00074503          	lbu	a0,0(a4)
    800031c8:	0ff57513          	andi	a0,a0,255
    800031cc:	00813403          	ld	s0,8(sp)
    800031d0:	01010113          	addi	sp,sp,16
    800031d4:	00008067          	ret
    800031d8:	fff00513          	li	a0,-1
    800031dc:	ff1ff06f          	j	800031cc <uartgetc+0x24>

00000000800031e0 <uartintr>:
    800031e0:	100007b7          	lui	a5,0x10000
    800031e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800031e8:	0017f793          	andi	a5,a5,1
    800031ec:	0a078463          	beqz	a5,80003294 <uartintr+0xb4>
    800031f0:	fe010113          	addi	sp,sp,-32
    800031f4:	00813823          	sd	s0,16(sp)
    800031f8:	00913423          	sd	s1,8(sp)
    800031fc:	00113c23          	sd	ra,24(sp)
    80003200:	02010413          	addi	s0,sp,32
    80003204:	100004b7          	lui	s1,0x10000
    80003208:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000320c:	0ff57513          	andi	a0,a0,255
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	534080e7          	jalr	1332(ra) # 80002744 <consoleintr>
    80003218:	0054c783          	lbu	a5,5(s1)
    8000321c:	0017f793          	andi	a5,a5,1
    80003220:	fe0794e3          	bnez	a5,80003208 <uartintr+0x28>
    80003224:	00001617          	auipc	a2,0x1
    80003228:	62c60613          	addi	a2,a2,1580 # 80004850 <uart_tx_r>
    8000322c:	00001517          	auipc	a0,0x1
    80003230:	62c50513          	addi	a0,a0,1580 # 80004858 <uart_tx_w>
    80003234:	00063783          	ld	a5,0(a2)
    80003238:	00053703          	ld	a4,0(a0)
    8000323c:	04f70263          	beq	a4,a5,80003280 <uartintr+0xa0>
    80003240:	100005b7          	lui	a1,0x10000
    80003244:	00003817          	auipc	a6,0x3
    80003248:	89c80813          	addi	a6,a6,-1892 # 80005ae0 <uart_tx_buf>
    8000324c:	01c0006f          	j	80003268 <uartintr+0x88>
    80003250:	0006c703          	lbu	a4,0(a3)
    80003254:	00f63023          	sd	a5,0(a2)
    80003258:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000325c:	00063783          	ld	a5,0(a2)
    80003260:	00053703          	ld	a4,0(a0)
    80003264:	00f70e63          	beq	a4,a5,80003280 <uartintr+0xa0>
    80003268:	01f7f713          	andi	a4,a5,31
    8000326c:	00e806b3          	add	a3,a6,a4
    80003270:	0055c703          	lbu	a4,5(a1)
    80003274:	00178793          	addi	a5,a5,1
    80003278:	02077713          	andi	a4,a4,32
    8000327c:	fc071ae3          	bnez	a4,80003250 <uartintr+0x70>
    80003280:	01813083          	ld	ra,24(sp)
    80003284:	01013403          	ld	s0,16(sp)
    80003288:	00813483          	ld	s1,8(sp)
    8000328c:	02010113          	addi	sp,sp,32
    80003290:	00008067          	ret
    80003294:	00001617          	auipc	a2,0x1
    80003298:	5bc60613          	addi	a2,a2,1468 # 80004850 <uart_tx_r>
    8000329c:	00001517          	auipc	a0,0x1
    800032a0:	5bc50513          	addi	a0,a0,1468 # 80004858 <uart_tx_w>
    800032a4:	00063783          	ld	a5,0(a2)
    800032a8:	00053703          	ld	a4,0(a0)
    800032ac:	04f70263          	beq	a4,a5,800032f0 <uartintr+0x110>
    800032b0:	100005b7          	lui	a1,0x10000
    800032b4:	00003817          	auipc	a6,0x3
    800032b8:	82c80813          	addi	a6,a6,-2004 # 80005ae0 <uart_tx_buf>
    800032bc:	01c0006f          	j	800032d8 <uartintr+0xf8>
    800032c0:	0006c703          	lbu	a4,0(a3)
    800032c4:	00f63023          	sd	a5,0(a2)
    800032c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800032cc:	00063783          	ld	a5,0(a2)
    800032d0:	00053703          	ld	a4,0(a0)
    800032d4:	02f70063          	beq	a4,a5,800032f4 <uartintr+0x114>
    800032d8:	01f7f713          	andi	a4,a5,31
    800032dc:	00e806b3          	add	a3,a6,a4
    800032e0:	0055c703          	lbu	a4,5(a1)
    800032e4:	00178793          	addi	a5,a5,1
    800032e8:	02077713          	andi	a4,a4,32
    800032ec:	fc071ae3          	bnez	a4,800032c0 <uartintr+0xe0>
    800032f0:	00008067          	ret
    800032f4:	00008067          	ret

00000000800032f8 <kinit>:
    800032f8:	fc010113          	addi	sp,sp,-64
    800032fc:	02913423          	sd	s1,40(sp)
    80003300:	fffff7b7          	lui	a5,0xfffff
    80003304:	00003497          	auipc	s1,0x3
    80003308:	7fb48493          	addi	s1,s1,2043 # 80006aff <end+0xfff>
    8000330c:	02813823          	sd	s0,48(sp)
    80003310:	01313c23          	sd	s3,24(sp)
    80003314:	00f4f4b3          	and	s1,s1,a5
    80003318:	02113c23          	sd	ra,56(sp)
    8000331c:	03213023          	sd	s2,32(sp)
    80003320:	01413823          	sd	s4,16(sp)
    80003324:	01513423          	sd	s5,8(sp)
    80003328:	04010413          	addi	s0,sp,64
    8000332c:	000017b7          	lui	a5,0x1
    80003330:	01100993          	li	s3,17
    80003334:	00f487b3          	add	a5,s1,a5
    80003338:	01b99993          	slli	s3,s3,0x1b
    8000333c:	06f9e063          	bltu	s3,a5,8000339c <kinit+0xa4>
    80003340:	00002a97          	auipc	s5,0x2
    80003344:	7c0a8a93          	addi	s5,s5,1984 # 80005b00 <end>
    80003348:	0754ec63          	bltu	s1,s5,800033c0 <kinit+0xc8>
    8000334c:	0734fa63          	bgeu	s1,s3,800033c0 <kinit+0xc8>
    80003350:	00088a37          	lui	s4,0x88
    80003354:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003358:	00001917          	auipc	s2,0x1
    8000335c:	50890913          	addi	s2,s2,1288 # 80004860 <kmem>
    80003360:	00ca1a13          	slli	s4,s4,0xc
    80003364:	0140006f          	j	80003378 <kinit+0x80>
    80003368:	000017b7          	lui	a5,0x1
    8000336c:	00f484b3          	add	s1,s1,a5
    80003370:	0554e863          	bltu	s1,s5,800033c0 <kinit+0xc8>
    80003374:	0534f663          	bgeu	s1,s3,800033c0 <kinit+0xc8>
    80003378:	00001637          	lui	a2,0x1
    8000337c:	00100593          	li	a1,1
    80003380:	00048513          	mv	a0,s1
    80003384:	00000097          	auipc	ra,0x0
    80003388:	5e4080e7          	jalr	1508(ra) # 80003968 <__memset>
    8000338c:	00093783          	ld	a5,0(s2)
    80003390:	00f4b023          	sd	a5,0(s1)
    80003394:	00993023          	sd	s1,0(s2)
    80003398:	fd4498e3          	bne	s1,s4,80003368 <kinit+0x70>
    8000339c:	03813083          	ld	ra,56(sp)
    800033a0:	03013403          	ld	s0,48(sp)
    800033a4:	02813483          	ld	s1,40(sp)
    800033a8:	02013903          	ld	s2,32(sp)
    800033ac:	01813983          	ld	s3,24(sp)
    800033b0:	01013a03          	ld	s4,16(sp)
    800033b4:	00813a83          	ld	s5,8(sp)
    800033b8:	04010113          	addi	sp,sp,64
    800033bc:	00008067          	ret
    800033c0:	00001517          	auipc	a0,0x1
    800033c4:	dd050513          	addi	a0,a0,-560 # 80004190 <digits+0x18>
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	4b4080e7          	jalr	1204(ra) # 8000287c <panic>

00000000800033d0 <freerange>:
    800033d0:	fc010113          	addi	sp,sp,-64
    800033d4:	000017b7          	lui	a5,0x1
    800033d8:	02913423          	sd	s1,40(sp)
    800033dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800033e0:	009504b3          	add	s1,a0,s1
    800033e4:	fffff537          	lui	a0,0xfffff
    800033e8:	02813823          	sd	s0,48(sp)
    800033ec:	02113c23          	sd	ra,56(sp)
    800033f0:	03213023          	sd	s2,32(sp)
    800033f4:	01313c23          	sd	s3,24(sp)
    800033f8:	01413823          	sd	s4,16(sp)
    800033fc:	01513423          	sd	s5,8(sp)
    80003400:	01613023          	sd	s6,0(sp)
    80003404:	04010413          	addi	s0,sp,64
    80003408:	00a4f4b3          	and	s1,s1,a0
    8000340c:	00f487b3          	add	a5,s1,a5
    80003410:	06f5e463          	bltu	a1,a5,80003478 <freerange+0xa8>
    80003414:	00002a97          	auipc	s5,0x2
    80003418:	6eca8a93          	addi	s5,s5,1772 # 80005b00 <end>
    8000341c:	0954e263          	bltu	s1,s5,800034a0 <freerange+0xd0>
    80003420:	01100993          	li	s3,17
    80003424:	01b99993          	slli	s3,s3,0x1b
    80003428:	0734fc63          	bgeu	s1,s3,800034a0 <freerange+0xd0>
    8000342c:	00058a13          	mv	s4,a1
    80003430:	00001917          	auipc	s2,0x1
    80003434:	43090913          	addi	s2,s2,1072 # 80004860 <kmem>
    80003438:	00002b37          	lui	s6,0x2
    8000343c:	0140006f          	j	80003450 <freerange+0x80>
    80003440:	000017b7          	lui	a5,0x1
    80003444:	00f484b3          	add	s1,s1,a5
    80003448:	0554ec63          	bltu	s1,s5,800034a0 <freerange+0xd0>
    8000344c:	0534fa63          	bgeu	s1,s3,800034a0 <freerange+0xd0>
    80003450:	00001637          	lui	a2,0x1
    80003454:	00100593          	li	a1,1
    80003458:	00048513          	mv	a0,s1
    8000345c:	00000097          	auipc	ra,0x0
    80003460:	50c080e7          	jalr	1292(ra) # 80003968 <__memset>
    80003464:	00093703          	ld	a4,0(s2)
    80003468:	016487b3          	add	a5,s1,s6
    8000346c:	00e4b023          	sd	a4,0(s1)
    80003470:	00993023          	sd	s1,0(s2)
    80003474:	fcfa76e3          	bgeu	s4,a5,80003440 <freerange+0x70>
    80003478:	03813083          	ld	ra,56(sp)
    8000347c:	03013403          	ld	s0,48(sp)
    80003480:	02813483          	ld	s1,40(sp)
    80003484:	02013903          	ld	s2,32(sp)
    80003488:	01813983          	ld	s3,24(sp)
    8000348c:	01013a03          	ld	s4,16(sp)
    80003490:	00813a83          	ld	s5,8(sp)
    80003494:	00013b03          	ld	s6,0(sp)
    80003498:	04010113          	addi	sp,sp,64
    8000349c:	00008067          	ret
    800034a0:	00001517          	auipc	a0,0x1
    800034a4:	cf050513          	addi	a0,a0,-784 # 80004190 <digits+0x18>
    800034a8:	fffff097          	auipc	ra,0xfffff
    800034ac:	3d4080e7          	jalr	980(ra) # 8000287c <panic>

00000000800034b0 <kfree>:
    800034b0:	fe010113          	addi	sp,sp,-32
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00113c23          	sd	ra,24(sp)
    800034bc:	00913423          	sd	s1,8(sp)
    800034c0:	02010413          	addi	s0,sp,32
    800034c4:	03451793          	slli	a5,a0,0x34
    800034c8:	04079c63          	bnez	a5,80003520 <kfree+0x70>
    800034cc:	00002797          	auipc	a5,0x2
    800034d0:	63478793          	addi	a5,a5,1588 # 80005b00 <end>
    800034d4:	00050493          	mv	s1,a0
    800034d8:	04f56463          	bltu	a0,a5,80003520 <kfree+0x70>
    800034dc:	01100793          	li	a5,17
    800034e0:	01b79793          	slli	a5,a5,0x1b
    800034e4:	02f57e63          	bgeu	a0,a5,80003520 <kfree+0x70>
    800034e8:	00001637          	lui	a2,0x1
    800034ec:	00100593          	li	a1,1
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	478080e7          	jalr	1144(ra) # 80003968 <__memset>
    800034f8:	00001797          	auipc	a5,0x1
    800034fc:	36878793          	addi	a5,a5,872 # 80004860 <kmem>
    80003500:	0007b703          	ld	a4,0(a5)
    80003504:	01813083          	ld	ra,24(sp)
    80003508:	01013403          	ld	s0,16(sp)
    8000350c:	00e4b023          	sd	a4,0(s1)
    80003510:	0097b023          	sd	s1,0(a5)
    80003514:	00813483          	ld	s1,8(sp)
    80003518:	02010113          	addi	sp,sp,32
    8000351c:	00008067          	ret
    80003520:	00001517          	auipc	a0,0x1
    80003524:	c7050513          	addi	a0,a0,-912 # 80004190 <digits+0x18>
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	354080e7          	jalr	852(ra) # 8000287c <panic>

0000000080003530 <kalloc>:
    80003530:	fe010113          	addi	sp,sp,-32
    80003534:	00813823          	sd	s0,16(sp)
    80003538:	00913423          	sd	s1,8(sp)
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	02010413          	addi	s0,sp,32
    80003544:	00001797          	auipc	a5,0x1
    80003548:	31c78793          	addi	a5,a5,796 # 80004860 <kmem>
    8000354c:	0007b483          	ld	s1,0(a5)
    80003550:	02048063          	beqz	s1,80003570 <kalloc+0x40>
    80003554:	0004b703          	ld	a4,0(s1)
    80003558:	00001637          	lui	a2,0x1
    8000355c:	00500593          	li	a1,5
    80003560:	00048513          	mv	a0,s1
    80003564:	00e7b023          	sd	a4,0(a5)
    80003568:	00000097          	auipc	ra,0x0
    8000356c:	400080e7          	jalr	1024(ra) # 80003968 <__memset>
    80003570:	01813083          	ld	ra,24(sp)
    80003574:	01013403          	ld	s0,16(sp)
    80003578:	00048513          	mv	a0,s1
    8000357c:	00813483          	ld	s1,8(sp)
    80003580:	02010113          	addi	sp,sp,32
    80003584:	00008067          	ret

0000000080003588 <initlock>:
    80003588:	ff010113          	addi	sp,sp,-16
    8000358c:	00813423          	sd	s0,8(sp)
    80003590:	01010413          	addi	s0,sp,16
    80003594:	00813403          	ld	s0,8(sp)
    80003598:	00b53423          	sd	a1,8(a0)
    8000359c:	00052023          	sw	zero,0(a0)
    800035a0:	00053823          	sd	zero,16(a0)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret

00000000800035ac <acquire>:
    800035ac:	fe010113          	addi	sp,sp,-32
    800035b0:	00813823          	sd	s0,16(sp)
    800035b4:	00913423          	sd	s1,8(sp)
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	01213023          	sd	s2,0(sp)
    800035c0:	02010413          	addi	s0,sp,32
    800035c4:	00050493          	mv	s1,a0
    800035c8:	10002973          	csrr	s2,sstatus
    800035cc:	100027f3          	csrr	a5,sstatus
    800035d0:	ffd7f793          	andi	a5,a5,-3
    800035d4:	10079073          	csrw	sstatus,a5
    800035d8:	fffff097          	auipc	ra,0xfffff
    800035dc:	8e0080e7          	jalr	-1824(ra) # 80001eb8 <mycpu>
    800035e0:	07852783          	lw	a5,120(a0)
    800035e4:	06078e63          	beqz	a5,80003660 <acquire+0xb4>
    800035e8:	fffff097          	auipc	ra,0xfffff
    800035ec:	8d0080e7          	jalr	-1840(ra) # 80001eb8 <mycpu>
    800035f0:	07852783          	lw	a5,120(a0)
    800035f4:	0004a703          	lw	a4,0(s1)
    800035f8:	0017879b          	addiw	a5,a5,1
    800035fc:	06f52c23          	sw	a5,120(a0)
    80003600:	04071063          	bnez	a4,80003640 <acquire+0x94>
    80003604:	00100713          	li	a4,1
    80003608:	00070793          	mv	a5,a4
    8000360c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003610:	0007879b          	sext.w	a5,a5
    80003614:	fe079ae3          	bnez	a5,80003608 <acquire+0x5c>
    80003618:	0ff0000f          	fence
    8000361c:	fffff097          	auipc	ra,0xfffff
    80003620:	89c080e7          	jalr	-1892(ra) # 80001eb8 <mycpu>
    80003624:	01813083          	ld	ra,24(sp)
    80003628:	01013403          	ld	s0,16(sp)
    8000362c:	00a4b823          	sd	a0,16(s1)
    80003630:	00013903          	ld	s2,0(sp)
    80003634:	00813483          	ld	s1,8(sp)
    80003638:	02010113          	addi	sp,sp,32
    8000363c:	00008067          	ret
    80003640:	0104b903          	ld	s2,16(s1)
    80003644:	fffff097          	auipc	ra,0xfffff
    80003648:	874080e7          	jalr	-1932(ra) # 80001eb8 <mycpu>
    8000364c:	faa91ce3          	bne	s2,a0,80003604 <acquire+0x58>
    80003650:	00001517          	auipc	a0,0x1
    80003654:	b4850513          	addi	a0,a0,-1208 # 80004198 <digits+0x20>
    80003658:	fffff097          	auipc	ra,0xfffff
    8000365c:	224080e7          	jalr	548(ra) # 8000287c <panic>
    80003660:	00195913          	srli	s2,s2,0x1
    80003664:	fffff097          	auipc	ra,0xfffff
    80003668:	854080e7          	jalr	-1964(ra) # 80001eb8 <mycpu>
    8000366c:	00197913          	andi	s2,s2,1
    80003670:	07252e23          	sw	s2,124(a0)
    80003674:	f75ff06f          	j	800035e8 <acquire+0x3c>

0000000080003678 <release>:
    80003678:	fe010113          	addi	sp,sp,-32
    8000367c:	00813823          	sd	s0,16(sp)
    80003680:	00113c23          	sd	ra,24(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	01213023          	sd	s2,0(sp)
    8000368c:	02010413          	addi	s0,sp,32
    80003690:	00052783          	lw	a5,0(a0)
    80003694:	00079a63          	bnez	a5,800036a8 <release+0x30>
    80003698:	00001517          	auipc	a0,0x1
    8000369c:	b0850513          	addi	a0,a0,-1272 # 800041a0 <digits+0x28>
    800036a0:	fffff097          	auipc	ra,0xfffff
    800036a4:	1dc080e7          	jalr	476(ra) # 8000287c <panic>
    800036a8:	01053903          	ld	s2,16(a0)
    800036ac:	00050493          	mv	s1,a0
    800036b0:	fffff097          	auipc	ra,0xfffff
    800036b4:	808080e7          	jalr	-2040(ra) # 80001eb8 <mycpu>
    800036b8:	fea910e3          	bne	s2,a0,80003698 <release+0x20>
    800036bc:	0004b823          	sd	zero,16(s1)
    800036c0:	0ff0000f          	fence
    800036c4:	0f50000f          	fence	iorw,ow
    800036c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	7ec080e7          	jalr	2028(ra) # 80001eb8 <mycpu>
    800036d4:	100027f3          	csrr	a5,sstatus
    800036d8:	0027f793          	andi	a5,a5,2
    800036dc:	04079a63          	bnez	a5,80003730 <release+0xb8>
    800036e0:	07852783          	lw	a5,120(a0)
    800036e4:	02f05e63          	blez	a5,80003720 <release+0xa8>
    800036e8:	fff7871b          	addiw	a4,a5,-1
    800036ec:	06e52c23          	sw	a4,120(a0)
    800036f0:	00071c63          	bnez	a4,80003708 <release+0x90>
    800036f4:	07c52783          	lw	a5,124(a0)
    800036f8:	00078863          	beqz	a5,80003708 <release+0x90>
    800036fc:	100027f3          	csrr	a5,sstatus
    80003700:	0027e793          	ori	a5,a5,2
    80003704:	10079073          	csrw	sstatus,a5
    80003708:	01813083          	ld	ra,24(sp)
    8000370c:	01013403          	ld	s0,16(sp)
    80003710:	00813483          	ld	s1,8(sp)
    80003714:	00013903          	ld	s2,0(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret
    80003720:	00001517          	auipc	a0,0x1
    80003724:	aa050513          	addi	a0,a0,-1376 # 800041c0 <digits+0x48>
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	154080e7          	jalr	340(ra) # 8000287c <panic>
    80003730:	00001517          	auipc	a0,0x1
    80003734:	a7850513          	addi	a0,a0,-1416 # 800041a8 <digits+0x30>
    80003738:	fffff097          	auipc	ra,0xfffff
    8000373c:	144080e7          	jalr	324(ra) # 8000287c <panic>

0000000080003740 <holding>:
    80003740:	00052783          	lw	a5,0(a0)
    80003744:	00079663          	bnez	a5,80003750 <holding+0x10>
    80003748:	00000513          	li	a0,0
    8000374c:	00008067          	ret
    80003750:	fe010113          	addi	sp,sp,-32
    80003754:	00813823          	sd	s0,16(sp)
    80003758:	00913423          	sd	s1,8(sp)
    8000375c:	00113c23          	sd	ra,24(sp)
    80003760:	02010413          	addi	s0,sp,32
    80003764:	01053483          	ld	s1,16(a0)
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	750080e7          	jalr	1872(ra) # 80001eb8 <mycpu>
    80003770:	01813083          	ld	ra,24(sp)
    80003774:	01013403          	ld	s0,16(sp)
    80003778:	40a48533          	sub	a0,s1,a0
    8000377c:	00153513          	seqz	a0,a0
    80003780:	00813483          	ld	s1,8(sp)
    80003784:	02010113          	addi	sp,sp,32
    80003788:	00008067          	ret

000000008000378c <push_off>:
    8000378c:	fe010113          	addi	sp,sp,-32
    80003790:	00813823          	sd	s0,16(sp)
    80003794:	00113c23          	sd	ra,24(sp)
    80003798:	00913423          	sd	s1,8(sp)
    8000379c:	02010413          	addi	s0,sp,32
    800037a0:	100024f3          	csrr	s1,sstatus
    800037a4:	100027f3          	csrr	a5,sstatus
    800037a8:	ffd7f793          	andi	a5,a5,-3
    800037ac:	10079073          	csrw	sstatus,a5
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	708080e7          	jalr	1800(ra) # 80001eb8 <mycpu>
    800037b8:	07852783          	lw	a5,120(a0)
    800037bc:	02078663          	beqz	a5,800037e8 <push_off+0x5c>
    800037c0:	ffffe097          	auipc	ra,0xffffe
    800037c4:	6f8080e7          	jalr	1784(ra) # 80001eb8 <mycpu>
    800037c8:	07852783          	lw	a5,120(a0)
    800037cc:	01813083          	ld	ra,24(sp)
    800037d0:	01013403          	ld	s0,16(sp)
    800037d4:	0017879b          	addiw	a5,a5,1
    800037d8:	06f52c23          	sw	a5,120(a0)
    800037dc:	00813483          	ld	s1,8(sp)
    800037e0:	02010113          	addi	sp,sp,32
    800037e4:	00008067          	ret
    800037e8:	0014d493          	srli	s1,s1,0x1
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	6cc080e7          	jalr	1740(ra) # 80001eb8 <mycpu>
    800037f4:	0014f493          	andi	s1,s1,1
    800037f8:	06952e23          	sw	s1,124(a0)
    800037fc:	fc5ff06f          	j	800037c0 <push_off+0x34>

0000000080003800 <pop_off>:
    80003800:	ff010113          	addi	sp,sp,-16
    80003804:	00813023          	sd	s0,0(sp)
    80003808:	00113423          	sd	ra,8(sp)
    8000380c:	01010413          	addi	s0,sp,16
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	6a8080e7          	jalr	1704(ra) # 80001eb8 <mycpu>
    80003818:	100027f3          	csrr	a5,sstatus
    8000381c:	0027f793          	andi	a5,a5,2
    80003820:	04079663          	bnez	a5,8000386c <pop_off+0x6c>
    80003824:	07852783          	lw	a5,120(a0)
    80003828:	02f05a63          	blez	a5,8000385c <pop_off+0x5c>
    8000382c:	fff7871b          	addiw	a4,a5,-1
    80003830:	06e52c23          	sw	a4,120(a0)
    80003834:	00071c63          	bnez	a4,8000384c <pop_off+0x4c>
    80003838:	07c52783          	lw	a5,124(a0)
    8000383c:	00078863          	beqz	a5,8000384c <pop_off+0x4c>
    80003840:	100027f3          	csrr	a5,sstatus
    80003844:	0027e793          	ori	a5,a5,2
    80003848:	10079073          	csrw	sstatus,a5
    8000384c:	00813083          	ld	ra,8(sp)
    80003850:	00013403          	ld	s0,0(sp)
    80003854:	01010113          	addi	sp,sp,16
    80003858:	00008067          	ret
    8000385c:	00001517          	auipc	a0,0x1
    80003860:	96450513          	addi	a0,a0,-1692 # 800041c0 <digits+0x48>
    80003864:	fffff097          	auipc	ra,0xfffff
    80003868:	018080e7          	jalr	24(ra) # 8000287c <panic>
    8000386c:	00001517          	auipc	a0,0x1
    80003870:	93c50513          	addi	a0,a0,-1732 # 800041a8 <digits+0x30>
    80003874:	fffff097          	auipc	ra,0xfffff
    80003878:	008080e7          	jalr	8(ra) # 8000287c <panic>

000000008000387c <push_on>:
    8000387c:	fe010113          	addi	sp,sp,-32
    80003880:	00813823          	sd	s0,16(sp)
    80003884:	00113c23          	sd	ra,24(sp)
    80003888:	00913423          	sd	s1,8(sp)
    8000388c:	02010413          	addi	s0,sp,32
    80003890:	100024f3          	csrr	s1,sstatus
    80003894:	100027f3          	csrr	a5,sstatus
    80003898:	0027e793          	ori	a5,a5,2
    8000389c:	10079073          	csrw	sstatus,a5
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	618080e7          	jalr	1560(ra) # 80001eb8 <mycpu>
    800038a8:	07852783          	lw	a5,120(a0)
    800038ac:	02078663          	beqz	a5,800038d8 <push_on+0x5c>
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	608080e7          	jalr	1544(ra) # 80001eb8 <mycpu>
    800038b8:	07852783          	lw	a5,120(a0)
    800038bc:	01813083          	ld	ra,24(sp)
    800038c0:	01013403          	ld	s0,16(sp)
    800038c4:	0017879b          	addiw	a5,a5,1
    800038c8:	06f52c23          	sw	a5,120(a0)
    800038cc:	00813483          	ld	s1,8(sp)
    800038d0:	02010113          	addi	sp,sp,32
    800038d4:	00008067          	ret
    800038d8:	0014d493          	srli	s1,s1,0x1
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	5dc080e7          	jalr	1500(ra) # 80001eb8 <mycpu>
    800038e4:	0014f493          	andi	s1,s1,1
    800038e8:	06952e23          	sw	s1,124(a0)
    800038ec:	fc5ff06f          	j	800038b0 <push_on+0x34>

00000000800038f0 <pop_on>:
    800038f0:	ff010113          	addi	sp,sp,-16
    800038f4:	00813023          	sd	s0,0(sp)
    800038f8:	00113423          	sd	ra,8(sp)
    800038fc:	01010413          	addi	s0,sp,16
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	5b8080e7          	jalr	1464(ra) # 80001eb8 <mycpu>
    80003908:	100027f3          	csrr	a5,sstatus
    8000390c:	0027f793          	andi	a5,a5,2
    80003910:	04078463          	beqz	a5,80003958 <pop_on+0x68>
    80003914:	07852783          	lw	a5,120(a0)
    80003918:	02f05863          	blez	a5,80003948 <pop_on+0x58>
    8000391c:	fff7879b          	addiw	a5,a5,-1
    80003920:	06f52c23          	sw	a5,120(a0)
    80003924:	07853783          	ld	a5,120(a0)
    80003928:	00079863          	bnez	a5,80003938 <pop_on+0x48>
    8000392c:	100027f3          	csrr	a5,sstatus
    80003930:	ffd7f793          	andi	a5,a5,-3
    80003934:	10079073          	csrw	sstatus,a5
    80003938:	00813083          	ld	ra,8(sp)
    8000393c:	00013403          	ld	s0,0(sp)
    80003940:	01010113          	addi	sp,sp,16
    80003944:	00008067          	ret
    80003948:	00001517          	auipc	a0,0x1
    8000394c:	8a050513          	addi	a0,a0,-1888 # 800041e8 <digits+0x70>
    80003950:	fffff097          	auipc	ra,0xfffff
    80003954:	f2c080e7          	jalr	-212(ra) # 8000287c <panic>
    80003958:	00001517          	auipc	a0,0x1
    8000395c:	87050513          	addi	a0,a0,-1936 # 800041c8 <digits+0x50>
    80003960:	fffff097          	auipc	ra,0xfffff
    80003964:	f1c080e7          	jalr	-228(ra) # 8000287c <panic>

0000000080003968 <__memset>:
    80003968:	ff010113          	addi	sp,sp,-16
    8000396c:	00813423          	sd	s0,8(sp)
    80003970:	01010413          	addi	s0,sp,16
    80003974:	1a060e63          	beqz	a2,80003b30 <__memset+0x1c8>
    80003978:	40a007b3          	neg	a5,a0
    8000397c:	0077f793          	andi	a5,a5,7
    80003980:	00778693          	addi	a3,a5,7
    80003984:	00b00813          	li	a6,11
    80003988:	0ff5f593          	andi	a1,a1,255
    8000398c:	fff6071b          	addiw	a4,a2,-1
    80003990:	1b06e663          	bltu	a3,a6,80003b3c <__memset+0x1d4>
    80003994:	1cd76463          	bltu	a4,a3,80003b5c <__memset+0x1f4>
    80003998:	1a078e63          	beqz	a5,80003b54 <__memset+0x1ec>
    8000399c:	00b50023          	sb	a1,0(a0)
    800039a0:	00100713          	li	a4,1
    800039a4:	1ae78463          	beq	a5,a4,80003b4c <__memset+0x1e4>
    800039a8:	00b500a3          	sb	a1,1(a0)
    800039ac:	00200713          	li	a4,2
    800039b0:	1ae78a63          	beq	a5,a4,80003b64 <__memset+0x1fc>
    800039b4:	00b50123          	sb	a1,2(a0)
    800039b8:	00300713          	li	a4,3
    800039bc:	18e78463          	beq	a5,a4,80003b44 <__memset+0x1dc>
    800039c0:	00b501a3          	sb	a1,3(a0)
    800039c4:	00400713          	li	a4,4
    800039c8:	1ae78263          	beq	a5,a4,80003b6c <__memset+0x204>
    800039cc:	00b50223          	sb	a1,4(a0)
    800039d0:	00500713          	li	a4,5
    800039d4:	1ae78063          	beq	a5,a4,80003b74 <__memset+0x20c>
    800039d8:	00b502a3          	sb	a1,5(a0)
    800039dc:	00700713          	li	a4,7
    800039e0:	18e79e63          	bne	a5,a4,80003b7c <__memset+0x214>
    800039e4:	00b50323          	sb	a1,6(a0)
    800039e8:	00700e93          	li	t4,7
    800039ec:	00859713          	slli	a4,a1,0x8
    800039f0:	00e5e733          	or	a4,a1,a4
    800039f4:	01059e13          	slli	t3,a1,0x10
    800039f8:	01c76e33          	or	t3,a4,t3
    800039fc:	01859313          	slli	t1,a1,0x18
    80003a00:	006e6333          	or	t1,t3,t1
    80003a04:	02059893          	slli	a7,a1,0x20
    80003a08:	40f60e3b          	subw	t3,a2,a5
    80003a0c:	011368b3          	or	a7,t1,a7
    80003a10:	02859813          	slli	a6,a1,0x28
    80003a14:	0108e833          	or	a6,a7,a6
    80003a18:	03059693          	slli	a3,a1,0x30
    80003a1c:	003e589b          	srliw	a7,t3,0x3
    80003a20:	00d866b3          	or	a3,a6,a3
    80003a24:	03859713          	slli	a4,a1,0x38
    80003a28:	00389813          	slli	a6,a7,0x3
    80003a2c:	00f507b3          	add	a5,a0,a5
    80003a30:	00e6e733          	or	a4,a3,a4
    80003a34:	000e089b          	sext.w	a7,t3
    80003a38:	00f806b3          	add	a3,a6,a5
    80003a3c:	00e7b023          	sd	a4,0(a5)
    80003a40:	00878793          	addi	a5,a5,8
    80003a44:	fed79ce3          	bne	a5,a3,80003a3c <__memset+0xd4>
    80003a48:	ff8e7793          	andi	a5,t3,-8
    80003a4c:	0007871b          	sext.w	a4,a5
    80003a50:	01d787bb          	addw	a5,a5,t4
    80003a54:	0ce88e63          	beq	a7,a4,80003b30 <__memset+0x1c8>
    80003a58:	00f50733          	add	a4,a0,a5
    80003a5c:	00b70023          	sb	a1,0(a4)
    80003a60:	0017871b          	addiw	a4,a5,1
    80003a64:	0cc77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a68:	00e50733          	add	a4,a0,a4
    80003a6c:	00b70023          	sb	a1,0(a4)
    80003a70:	0027871b          	addiw	a4,a5,2
    80003a74:	0ac77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a78:	00e50733          	add	a4,a0,a4
    80003a7c:	00b70023          	sb	a1,0(a4)
    80003a80:	0037871b          	addiw	a4,a5,3
    80003a84:	0ac77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a88:	00e50733          	add	a4,a0,a4
    80003a8c:	00b70023          	sb	a1,0(a4)
    80003a90:	0047871b          	addiw	a4,a5,4
    80003a94:	08c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a98:	00e50733          	add	a4,a0,a4
    80003a9c:	00b70023          	sb	a1,0(a4)
    80003aa0:	0057871b          	addiw	a4,a5,5
    80003aa4:	08c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003aa8:	00e50733          	add	a4,a0,a4
    80003aac:	00b70023          	sb	a1,0(a4)
    80003ab0:	0067871b          	addiw	a4,a5,6
    80003ab4:	06c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ab8:	00e50733          	add	a4,a0,a4
    80003abc:	00b70023          	sb	a1,0(a4)
    80003ac0:	0077871b          	addiw	a4,a5,7
    80003ac4:	06c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ac8:	00e50733          	add	a4,a0,a4
    80003acc:	00b70023          	sb	a1,0(a4)
    80003ad0:	0087871b          	addiw	a4,a5,8
    80003ad4:	04c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ad8:	00e50733          	add	a4,a0,a4
    80003adc:	00b70023          	sb	a1,0(a4)
    80003ae0:	0097871b          	addiw	a4,a5,9
    80003ae4:	04c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ae8:	00e50733          	add	a4,a0,a4
    80003aec:	00b70023          	sb	a1,0(a4)
    80003af0:	00a7871b          	addiw	a4,a5,10
    80003af4:	02c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003af8:	00e50733          	add	a4,a0,a4
    80003afc:	00b70023          	sb	a1,0(a4)
    80003b00:	00b7871b          	addiw	a4,a5,11
    80003b04:	02c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003b08:	00e50733          	add	a4,a0,a4
    80003b0c:	00b70023          	sb	a1,0(a4)
    80003b10:	00c7871b          	addiw	a4,a5,12
    80003b14:	00c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003b18:	00e50733          	add	a4,a0,a4
    80003b1c:	00b70023          	sb	a1,0(a4)
    80003b20:	00d7879b          	addiw	a5,a5,13
    80003b24:	00c7f663          	bgeu	a5,a2,80003b30 <__memset+0x1c8>
    80003b28:	00f507b3          	add	a5,a0,a5
    80003b2c:	00b78023          	sb	a1,0(a5)
    80003b30:	00813403          	ld	s0,8(sp)
    80003b34:	01010113          	addi	sp,sp,16
    80003b38:	00008067          	ret
    80003b3c:	00b00693          	li	a3,11
    80003b40:	e55ff06f          	j	80003994 <__memset+0x2c>
    80003b44:	00300e93          	li	t4,3
    80003b48:	ea5ff06f          	j	800039ec <__memset+0x84>
    80003b4c:	00100e93          	li	t4,1
    80003b50:	e9dff06f          	j	800039ec <__memset+0x84>
    80003b54:	00000e93          	li	t4,0
    80003b58:	e95ff06f          	j	800039ec <__memset+0x84>
    80003b5c:	00000793          	li	a5,0
    80003b60:	ef9ff06f          	j	80003a58 <__memset+0xf0>
    80003b64:	00200e93          	li	t4,2
    80003b68:	e85ff06f          	j	800039ec <__memset+0x84>
    80003b6c:	00400e93          	li	t4,4
    80003b70:	e7dff06f          	j	800039ec <__memset+0x84>
    80003b74:	00500e93          	li	t4,5
    80003b78:	e75ff06f          	j	800039ec <__memset+0x84>
    80003b7c:	00600e93          	li	t4,6
    80003b80:	e6dff06f          	j	800039ec <__memset+0x84>

0000000080003b84 <__memmove>:
    80003b84:	ff010113          	addi	sp,sp,-16
    80003b88:	00813423          	sd	s0,8(sp)
    80003b8c:	01010413          	addi	s0,sp,16
    80003b90:	0e060863          	beqz	a2,80003c80 <__memmove+0xfc>
    80003b94:	fff6069b          	addiw	a3,a2,-1
    80003b98:	0006881b          	sext.w	a6,a3
    80003b9c:	0ea5e863          	bltu	a1,a0,80003c8c <__memmove+0x108>
    80003ba0:	00758713          	addi	a4,a1,7
    80003ba4:	00a5e7b3          	or	a5,a1,a0
    80003ba8:	40a70733          	sub	a4,a4,a0
    80003bac:	0077f793          	andi	a5,a5,7
    80003bb0:	00f73713          	sltiu	a4,a4,15
    80003bb4:	00174713          	xori	a4,a4,1
    80003bb8:	0017b793          	seqz	a5,a5
    80003bbc:	00e7f7b3          	and	a5,a5,a4
    80003bc0:	10078863          	beqz	a5,80003cd0 <__memmove+0x14c>
    80003bc4:	00900793          	li	a5,9
    80003bc8:	1107f463          	bgeu	a5,a6,80003cd0 <__memmove+0x14c>
    80003bcc:	0036581b          	srliw	a6,a2,0x3
    80003bd0:	fff8081b          	addiw	a6,a6,-1
    80003bd4:	02081813          	slli	a6,a6,0x20
    80003bd8:	01d85893          	srli	a7,a6,0x1d
    80003bdc:	00858813          	addi	a6,a1,8
    80003be0:	00058793          	mv	a5,a1
    80003be4:	00050713          	mv	a4,a0
    80003be8:	01088833          	add	a6,a7,a6
    80003bec:	0007b883          	ld	a7,0(a5)
    80003bf0:	00878793          	addi	a5,a5,8
    80003bf4:	00870713          	addi	a4,a4,8
    80003bf8:	ff173c23          	sd	a7,-8(a4)
    80003bfc:	ff0798e3          	bne	a5,a6,80003bec <__memmove+0x68>
    80003c00:	ff867713          	andi	a4,a2,-8
    80003c04:	02071793          	slli	a5,a4,0x20
    80003c08:	0207d793          	srli	a5,a5,0x20
    80003c0c:	00f585b3          	add	a1,a1,a5
    80003c10:	40e686bb          	subw	a3,a3,a4
    80003c14:	00f507b3          	add	a5,a0,a5
    80003c18:	06e60463          	beq	a2,a4,80003c80 <__memmove+0xfc>
    80003c1c:	0005c703          	lbu	a4,0(a1)
    80003c20:	00e78023          	sb	a4,0(a5)
    80003c24:	04068e63          	beqz	a3,80003c80 <__memmove+0xfc>
    80003c28:	0015c603          	lbu	a2,1(a1)
    80003c2c:	00100713          	li	a4,1
    80003c30:	00c780a3          	sb	a2,1(a5)
    80003c34:	04e68663          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c38:	0025c603          	lbu	a2,2(a1)
    80003c3c:	00200713          	li	a4,2
    80003c40:	00c78123          	sb	a2,2(a5)
    80003c44:	02e68e63          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c48:	0035c603          	lbu	a2,3(a1)
    80003c4c:	00300713          	li	a4,3
    80003c50:	00c781a3          	sb	a2,3(a5)
    80003c54:	02e68663          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c58:	0045c603          	lbu	a2,4(a1)
    80003c5c:	00400713          	li	a4,4
    80003c60:	00c78223          	sb	a2,4(a5)
    80003c64:	00e68e63          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c68:	0055c603          	lbu	a2,5(a1)
    80003c6c:	00500713          	li	a4,5
    80003c70:	00c782a3          	sb	a2,5(a5)
    80003c74:	00e68663          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c78:	0065c703          	lbu	a4,6(a1)
    80003c7c:	00e78323          	sb	a4,6(a5)
    80003c80:	00813403          	ld	s0,8(sp)
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00008067          	ret
    80003c8c:	02061713          	slli	a4,a2,0x20
    80003c90:	02075713          	srli	a4,a4,0x20
    80003c94:	00e587b3          	add	a5,a1,a4
    80003c98:	f0f574e3          	bgeu	a0,a5,80003ba0 <__memmove+0x1c>
    80003c9c:	02069613          	slli	a2,a3,0x20
    80003ca0:	02065613          	srli	a2,a2,0x20
    80003ca4:	fff64613          	not	a2,a2
    80003ca8:	00e50733          	add	a4,a0,a4
    80003cac:	00c78633          	add	a2,a5,a2
    80003cb0:	fff7c683          	lbu	a3,-1(a5)
    80003cb4:	fff78793          	addi	a5,a5,-1
    80003cb8:	fff70713          	addi	a4,a4,-1
    80003cbc:	00d70023          	sb	a3,0(a4)
    80003cc0:	fec798e3          	bne	a5,a2,80003cb0 <__memmove+0x12c>
    80003cc4:	00813403          	ld	s0,8(sp)
    80003cc8:	01010113          	addi	sp,sp,16
    80003ccc:	00008067          	ret
    80003cd0:	02069713          	slli	a4,a3,0x20
    80003cd4:	02075713          	srli	a4,a4,0x20
    80003cd8:	00170713          	addi	a4,a4,1
    80003cdc:	00e50733          	add	a4,a0,a4
    80003ce0:	00050793          	mv	a5,a0
    80003ce4:	0005c683          	lbu	a3,0(a1)
    80003ce8:	00178793          	addi	a5,a5,1
    80003cec:	00158593          	addi	a1,a1,1
    80003cf0:	fed78fa3          	sb	a3,-1(a5)
    80003cf4:	fee798e3          	bne	a5,a4,80003ce4 <__memmove+0x160>
    80003cf8:	f89ff06f          	j	80003c80 <__memmove+0xfc>

0000000080003cfc <__putc>:
    80003cfc:	fe010113          	addi	sp,sp,-32
    80003d00:	00813823          	sd	s0,16(sp)
    80003d04:	00113c23          	sd	ra,24(sp)
    80003d08:	02010413          	addi	s0,sp,32
    80003d0c:	00050793          	mv	a5,a0
    80003d10:	fef40593          	addi	a1,s0,-17
    80003d14:	00100613          	li	a2,1
    80003d18:	00000513          	li	a0,0
    80003d1c:	fef407a3          	sb	a5,-17(s0)
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	b3c080e7          	jalr	-1220(ra) # 8000285c <console_write>
    80003d28:	01813083          	ld	ra,24(sp)
    80003d2c:	01013403          	ld	s0,16(sp)
    80003d30:	02010113          	addi	sp,sp,32
    80003d34:	00008067          	ret

0000000080003d38 <__getc>:
    80003d38:	fe010113          	addi	sp,sp,-32
    80003d3c:	00813823          	sd	s0,16(sp)
    80003d40:	00113c23          	sd	ra,24(sp)
    80003d44:	02010413          	addi	s0,sp,32
    80003d48:	fe840593          	addi	a1,s0,-24
    80003d4c:	00100613          	li	a2,1
    80003d50:	00000513          	li	a0,0
    80003d54:	fffff097          	auipc	ra,0xfffff
    80003d58:	ae8080e7          	jalr	-1304(ra) # 8000283c <console_read>
    80003d5c:	fe844503          	lbu	a0,-24(s0)
    80003d60:	01813083          	ld	ra,24(sp)
    80003d64:	01013403          	ld	s0,16(sp)
    80003d68:	02010113          	addi	sp,sp,32
    80003d6c:	00008067          	ret

0000000080003d70 <console_handler>:
    80003d70:	fe010113          	addi	sp,sp,-32
    80003d74:	00813823          	sd	s0,16(sp)
    80003d78:	00113c23          	sd	ra,24(sp)
    80003d7c:	00913423          	sd	s1,8(sp)
    80003d80:	02010413          	addi	s0,sp,32
    80003d84:	14202773          	csrr	a4,scause
    80003d88:	100027f3          	csrr	a5,sstatus
    80003d8c:	0027f793          	andi	a5,a5,2
    80003d90:	06079e63          	bnez	a5,80003e0c <console_handler+0x9c>
    80003d94:	00074c63          	bltz	a4,80003dac <console_handler+0x3c>
    80003d98:	01813083          	ld	ra,24(sp)
    80003d9c:	01013403          	ld	s0,16(sp)
    80003da0:	00813483          	ld	s1,8(sp)
    80003da4:	02010113          	addi	sp,sp,32
    80003da8:	00008067          	ret
    80003dac:	0ff77713          	andi	a4,a4,255
    80003db0:	00900793          	li	a5,9
    80003db4:	fef712e3          	bne	a4,a5,80003d98 <console_handler+0x28>
    80003db8:	ffffe097          	auipc	ra,0xffffe
    80003dbc:	6dc080e7          	jalr	1756(ra) # 80002494 <plic_claim>
    80003dc0:	00a00793          	li	a5,10
    80003dc4:	00050493          	mv	s1,a0
    80003dc8:	02f50c63          	beq	a0,a5,80003e00 <console_handler+0x90>
    80003dcc:	fc0506e3          	beqz	a0,80003d98 <console_handler+0x28>
    80003dd0:	00050593          	mv	a1,a0
    80003dd4:	00000517          	auipc	a0,0x0
    80003dd8:	31c50513          	addi	a0,a0,796 # 800040f0 <CONSOLE_STATUS+0xe0>
    80003ddc:	fffff097          	auipc	ra,0xfffff
    80003de0:	afc080e7          	jalr	-1284(ra) # 800028d8 <__printf>
    80003de4:	01013403          	ld	s0,16(sp)
    80003de8:	01813083          	ld	ra,24(sp)
    80003dec:	00048513          	mv	a0,s1
    80003df0:	00813483          	ld	s1,8(sp)
    80003df4:	02010113          	addi	sp,sp,32
    80003df8:	ffffe317          	auipc	t1,0xffffe
    80003dfc:	6d430067          	jr	1748(t1) # 800024cc <plic_complete>
    80003e00:	fffff097          	auipc	ra,0xfffff
    80003e04:	3e0080e7          	jalr	992(ra) # 800031e0 <uartintr>
    80003e08:	fddff06f          	j	80003de4 <console_handler+0x74>
    80003e0c:	00000517          	auipc	a0,0x0
    80003e10:	3e450513          	addi	a0,a0,996 # 800041f0 <digits+0x78>
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	a68080e7          	jalr	-1432(ra) # 8000287c <panic>
	...
