
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	3d013103          	ld	sp,976(sp) # 800043d0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5b8010ef          	jal	ra,800015d4 <start>

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
    80001084:	0a0000ef          	jal	ra,80001124 <interruptRoutine>

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

0000000080001124 <interruptRoutine>:
    SEM_SIGNAL = 0x24,
    GETC = 0x41,
    PUTC = 0x42
};

extern "C" void interruptRoutine() {
    80001124:	ff010113          	addi	sp,sp,-16
    80001128:	00813423          	sd	s0,8(sp)
    8000112c:	01010413          	addi	s0,sp,16
    //...
    80001130:	00813403          	ld	s0,8(sp)
    80001134:	01010113          	addi	sp,sp,16
    80001138:	00008067          	ret

000000008000113c <main>:
#include "../lib/console.h"
#include "../h/memory_allocator.hpp"

int main() {
    8000113c:	ff010113          	addi	sp,sp,-16
    80001140:	00113423          	sd	ra,8(sp)
    80001144:	00813023          	sd	s0,0(sp)
    80001148:	01010413          	addi	s0,sp,16
    __putc('?');
    8000114c:	03f00513          	li	a0,63
    80001150:	00002097          	auipc	ra,0x2
    80001154:	54c080e7          	jalr	1356(ra) # 8000369c <__putc>
    __putc('\n');
    80001158:	00a00513          	li	a0,10
    8000115c:	00002097          	auipc	ra,0x2
    80001160:	540080e7          	jalr	1344(ra) # 8000369c <__putc>
    MemoryAllocator::getInstance();
    80001164:	00000097          	auipc	ra,0x0
    80001168:	1b4080e7          	jalr	436(ra) # 80001318 <_ZN15MemoryAllocator11getInstanceEv>
    MemoryAllocator::mem_alloc(1);
    8000116c:	00100513          	li	a0,1
    80001170:	00000097          	auipc	ra,0x0
    80001174:	088080e7          	jalr	136(ra) # 800011f8 <_ZN15MemoryAllocator9mem_allocEm>
    MemoryAllocator::print();
    80001178:	00000097          	auipc	ra,0x0
    8000117c:	3dc080e7          	jalr	988(ra) # 80001554 <_ZN15MemoryAllocator5printEv>
    MemoryAllocator::mem_free((void*)(1 * MEM_BLOCK_SIZE + sizeof(MemoryAllocator::MemSeg) + (char*)HEAP_START_ADDR));
    80001180:	00003797          	auipc	a5,0x3
    80001184:	2487b783          	ld	a5,584(a5) # 800043c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001188:	0007b503          	ld	a0,0(a5)
    8000118c:	05850513          	addi	a0,a0,88
    80001190:	00000097          	auipc	ra,0x0
    80001194:	258080e7          	jalr	600(ra) # 800013e8 <_ZN15MemoryAllocator8mem_freeEPv>
    MemoryAllocator::print();
    80001198:	00000097          	auipc	ra,0x0
    8000119c:	3bc080e7          	jalr	956(ra) # 80001554 <_ZN15MemoryAllocator5printEv>
    return 0;
    800011a0:	00000513          	li	a0,0
    800011a4:	00813083          	ld	ra,8(sp)
    800011a8:	00013403          	ld	s0,0(sp)
    800011ac:	01010113          	addi	sp,sp,16
    800011b0:	00008067          	ret

00000000800011b4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
    }
    return instance;
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    800011b4:	ff010113          	addi	sp,sp,-16
    800011b8:	00813423          	sd	s0,8(sp)
    800011bc:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    800011c0:	00853783          	ld	a5,8(a0)
    800011c4:	02078463          	beqz	a5,800011ec <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    800011c8:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    800011cc:	01053783          	ld	a5,16(a0)
    800011d0:	00078863          	beqz	a5,800011e0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    800011d4:	00060463          	beqz	a2,800011dc <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    800011d8:	00853583          	ld	a1,8(a0)
    800011dc:	00b7b423          	sd	a1,8(a5)
}
    800011e0:	00813403          	ld	s0,8(sp)
    800011e4:	01010113          	addi	sp,sp,16
    800011e8:	00008067          	ret
    else freeSegHead = nextSeg;
    800011ec:	00003797          	auipc	a5,0x3
    800011f0:	22b7ba23          	sd	a1,564(a5) # 80004420 <_ZN15MemoryAllocator11freeSegHeadE>
    800011f4:	fd9ff06f          	j	800011cc <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

00000000800011f8 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` bytes, but round up to MEM_BLOCK_SIZE
void *MemoryAllocator::mem_alloc(size_t size) {
    800011f8:	fe010113          	addi	sp,sp,-32
    800011fc:	00113c23          	sd	ra,24(sp)
    80001200:	00813823          	sd	s0,16(sp)
    80001204:	00913423          	sd	s1,8(sp)
    80001208:	01213023          	sd	s2,0(sp)
    8000120c:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80001210:	10050063          	beqz	a0,80001310 <_ZN15MemoryAllocator9mem_allocEm+0x118>
    size_t bytesToAllocate = (size + sizeof(MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80001214:	05750513          	addi	a0,a0,87
    80001218:	fc057913          	andi	s2,a0,-64
    MemSeg *tmp = freeSegHead;
    8000121c:	00003497          	auipc	s1,0x3
    80001220:	2044b483          	ld	s1,516(s1) # 80004420 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80001224:	0a048e63          	beqz	s1,800012e0 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
        if (tmp -> size < bytesToAllocate) {
    80001228:	0004b783          	ld	a5,0(s1)
    8000122c:	0527e463          	bltu	a5,s2,80001274 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80001230:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    80001234:	01700713          	li	a4,23
    80001238:	04f76263          	bltu	a4,a5,8000127c <_ZN15MemoryAllocator9mem_allocEm+0x84>
    8000123c:	00000613          	li	a2,0
    80001240:	0104b583          	ld	a1,16(s1)
    80001244:	00048513          	mv	a0,s1
    80001248:	00000097          	auipc	ra,0x0
    8000124c:	f6c080e7          	jalr	-148(ra) # 800011b4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    80001250:	00003797          	auipc	a5,0x3
    80001254:	1d87b783          	ld	a5,472(a5) # 80004428 <_ZN15MemoryAllocator11usedSegHeadE>
    80001258:	04078863          	beqz	a5,800012a8 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    8000125c:	0497fa63          	bgeu	a5,s1,800012b0 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80001260:	00078713          	mv	a4,a5
    80001264:	0107b783          	ld	a5,16(a5)
    80001268:	04078663          	beqz	a5,800012b4 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    8000126c:	fe97eae3          	bltu	a5,s1,80001260 <_ZN15MemoryAllocator9mem_allocEm+0x68>
    80001270:	0440006f          	j	800012b4 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            tmp = tmp -> next;
    80001274:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80001278:	fadff06f          	j	80001224 <_ZN15MemoryAllocator9mem_allocEm+0x2c>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    8000127c:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80001280:	0084b703          	ld	a4,8(s1)
    80001284:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80001288:	0104b703          	ld	a4,16(s1)
    8000128c:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80001290:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80001294:	00100613          	li	a2,1
    80001298:	00048513          	mv	a0,s1
    8000129c:	00000097          	auipc	ra,0x0
    800012a0:	f18080e7          	jalr	-232(ra) # 800011b4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    800012a4:	fadff06f          	j	80001250 <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = 0;
    800012a8:	00078713          	mv	a4,a5
    800012ac:	0080006f          	j	800012b4 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    800012b0:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    800012b4:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    800012b8:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800012bc:	04070063          	beqz	a4,800012fc <_ZN15MemoryAllocator9mem_allocEm+0x104>
    800012c0:	01073783          	ld	a5,16(a4)
    800012c4:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    800012c8:	02070e63          	beqz	a4,80001304 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    800012cc:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    800012d0:	0104b783          	ld	a5,16(s1)
    800012d4:	00078463          	beqz	a5,800012dc <_ZN15MemoryAllocator9mem_allocEm+0xe4>
    800012d8:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    800012dc:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    800012e0:	00048513          	mv	a0,s1
    800012e4:	01813083          	ld	ra,24(sp)
    800012e8:	01013403          	ld	s0,16(sp)
    800012ec:	00813483          	ld	s1,8(sp)
    800012f0:	00013903          	ld	s2,0(sp)
    800012f4:	02010113          	addi	sp,sp,32
    800012f8:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800012fc:	00070793          	mv	a5,a4
    80001300:	fc5ff06f          	j	800012c4 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
        else usedSegHead = newUsed;
    80001304:	00003797          	auipc	a5,0x3
    80001308:	1297b223          	sd	s1,292(a5) # 80004428 <_ZN15MemoryAllocator11usedSegHeadE>
    8000130c:	fc5ff06f          	j	800012d0 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
    if (size <= 0) return nullptr;
    80001310:	00000493          	li	s1,0
    80001314:	fcdff06f          	j	800012e0 <_ZN15MemoryAllocator9mem_allocEm+0xe8>

0000000080001318 <_ZN15MemoryAllocator11getInstanceEv>:
    if (!instance) {
    80001318:	00003517          	auipc	a0,0x3
    8000131c:	11853503          	ld	a0,280(a0) # 80004430 <_ZN15MemoryAllocator8instanceE>
    80001320:	00050463          	beqz	a0,80001328 <_ZN15MemoryAllocator11getInstanceEv+0x10>
}
    80001324:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    80001328:	fe010113          	addi	sp,sp,-32
    8000132c:	00113c23          	sd	ra,24(sp)
    80001330:	00813823          	sd	s0,16(sp)
    80001334:	00913423          	sd	s1,8(sp)
    80001338:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    8000133c:	00003797          	auipc	a5,0x3
    80001340:	08c7b783          	ld	a5,140(a5) # 800043c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001344:	0007b783          	ld	a5,0(a5)
    80001348:	00003497          	auipc	s1,0x3
    8000134c:	0d848493          	addi	s1,s1,216 # 80004420 <_ZN15MemoryAllocator11freeSegHeadE>
    80001350:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80001354:	00003717          	auipc	a4,0x3
    80001358:	08473703          	ld	a4,132(a4) # 800043d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000135c:	00073703          	ld	a4,0(a4)
    80001360:	40f70733          	sub	a4,a4,a5
    80001364:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80001368:	0004b783          	ld	a5,0(s1)
    8000136c:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80001370:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80001374:	00100513          	li	a0,1
    80001378:	00000097          	auipc	ra,0x0
    8000137c:	e80080e7          	jalr	-384(ra) # 800011f8 <_ZN15MemoryAllocator9mem_allocEm>
    80001380:	00a4b823          	sd	a0,16(s1)
}
    80001384:	01813083          	ld	ra,24(sp)
    80001388:	01013403          	ld	s0,16(sp)
    8000138c:	00813483          	ld	s1,8(sp)
    80001390:	02010113          	addi	sp,sp,32
    80001394:	00008067          	ret

0000000080001398 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00813423          	sd	s0,8(sp)
    800013a0:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    800013a4:	01053783          	ld	a5,16(a0)
    800013a8:	00078863          	beqz	a5,800013b8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800013ac:	00053703          	ld	a4,0(a0)
    800013b0:	00e506b3          	add	a3,a0,a4
    800013b4:	00d78863          	beq	a5,a3,800013c4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    800013b8:	00813403          	ld	s0,8(sp)
    800013bc:	01010113          	addi	sp,sp,16
    800013c0:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    800013c4:	0007b683          	ld	a3,0(a5)
    800013c8:	00d70733          	add	a4,a4,a3
    800013cc:	01870713          	addi	a4,a4,24
    800013d0:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    800013d4:	0107b783          	ld	a5,16(a5)
    800013d8:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    800013dc:	fc078ee3          	beqz	a5,800013b8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800013e0:	00a7b423          	sd	a0,8(a5)
}
    800013e4:	fd5ff06f          	j	800013b8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

00000000800013e8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800013e8:	14050263          	beqz	a0,8000152c <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    800013ec:	fd010113          	addi	sp,sp,-48
    800013f0:	02113423          	sd	ra,40(sp)
    800013f4:	02813023          	sd	s0,32(sp)
    800013f8:	00913c23          	sd	s1,24(sp)
    800013fc:	01213823          	sd	s2,16(sp)
    80001400:	01313423          	sd	s3,8(sp)
    80001404:	03010413          	addi	s0,sp,48
    80001408:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000140c:	00003797          	auipc	a5,0x3
    80001410:	fbc7b783          	ld	a5,-68(a5) # 800043c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001414:	0007b783          	ld	a5,0(a5)
    80001418:	10f56e63          	bltu	a0,a5,80001534 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    8000141c:	00003797          	auipc	a5,0x3
    80001420:	fbc7b783          	ld	a5,-68(a5) # 800043d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001424:	0007b783          	ld	a5,0(a5)
    80001428:	10a7ea63          	bltu	a5,a0,8000153c <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    8000142c:	00003797          	auipc	a5,0x3
    80001430:	ffc7b783          	ld	a5,-4(a5) # 80004428 <_ZN15MemoryAllocator11usedSegHeadE>
    80001434:	10078863          	beqz	a5,80001544 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80001438:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    8000143c:	00078863          	beqz	a5,8000144c <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80001440:	08978e63          	beq	a5,s1,800014dc <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001444:	0107b783          	ld	a5,16(a5)
    80001448:	ff5ff06f          	j	8000143c <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    8000144c:	00000793          	li	a5,0
    if (!found) return -3;
    80001450:	0e078e63          	beqz	a5,8000154c <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    80001454:	00000613          	li	a2,0
    80001458:	ff893583          	ld	a1,-8(s2)
    8000145c:	00048513          	mv	a0,s1
    80001460:	00000097          	auipc	ra,0x0
    80001464:	d54080e7          	jalr	-684(ra) # 800011b4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    80001468:	00003797          	auipc	a5,0x3
    8000146c:	fb87b783          	ld	a5,-72(a5) # 80004420 <_ZN15MemoryAllocator11freeSegHeadE>
    80001470:	06078a63          	beqz	a5,800014e4 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80001474:	08f4e463          	bltu	s1,a5,800014fc <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80001478:	00078993          	mv	s3,a5
    8000147c:	0107b783          	ld	a5,16(a5)
    80001480:	00078463          	beqz	a5,80001488 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80001484:	fe97eae3          	bltu	a5,s1,80001478 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80001488:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    8000148c:	0109b783          	ld	a5,16(s3)
    80001490:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80001494:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80001498:	ff893783          	ld	a5,-8(s2)
    8000149c:	00078463          	beqz	a5,800014a4 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    800014a0:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    800014a4:	00048513          	mv	a0,s1
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	ef0080e7          	jalr	-272(ra) # 80001398 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    800014b0:	00098513          	mv	a0,s3
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	ee4080e7          	jalr	-284(ra) # 80001398 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800014bc:	00000513          	li	a0,0
}
    800014c0:	02813083          	ld	ra,40(sp)
    800014c4:	02013403          	ld	s0,32(sp)
    800014c8:	01813483          	ld	s1,24(sp)
    800014cc:	01013903          	ld	s2,16(sp)
    800014d0:	00813983          	ld	s3,8(sp)
    800014d4:	03010113          	addi	sp,sp,48
    800014d8:	00008067          	ret
            found = true;
    800014dc:	00100793          	li	a5,1
    800014e0:	f71ff06f          	j	80001450 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    800014e4:	00003797          	auipc	a5,0x3
    800014e8:	f297be23          	sd	s1,-196(a5) # 80004420 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    800014ec:	fe093c23          	sd	zero,-8(s2)
    800014f0:	fe093823          	sd	zero,-16(s2)
    return 0;
    800014f4:	00000513          	li	a0,0
    800014f8:	fc9ff06f          	j	800014c0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    800014fc:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80001500:	00003797          	auipc	a5,0x3
    80001504:	f2078793          	addi	a5,a5,-224 # 80004420 <_ZN15MemoryAllocator11freeSegHeadE>
    80001508:	0007b703          	ld	a4,0(a5)
    8000150c:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80001510:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80001514:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80001518:	00048513          	mv	a0,s1
    8000151c:	00000097          	auipc	ra,0x0
    80001520:	e7c080e7          	jalr	-388(ra) # 80001398 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001524:	00000513          	li	a0,0
    80001528:	f99ff06f          	j	800014c0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000152c:	fff00513          	li	a0,-1
}
    80001530:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001534:	fff00513          	li	a0,-1
    80001538:	f89ff06f          	j	800014c0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    8000153c:	fff00513          	li	a0,-1
    80001540:	f81ff06f          	j	800014c0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    80001544:	ffe00513          	li	a0,-2
    80001548:	f79ff06f          	j	800014c0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    8000154c:	ffd00513          	li	a0,-3
    80001550:	f71ff06f          	j	800014c0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

0000000080001554 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80001554:	fe010113          	addi	sp,sp,-32
    80001558:	00113c23          	sd	ra,24(sp)
    8000155c:	00813823          	sd	s0,16(sp)
    80001560:	00913423          	sd	s1,8(sp)
    80001564:	02010413          	addi	s0,sp,32
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80001568:	00003497          	auipc	s1,0x3
    8000156c:	eb84b483          	ld	s1,-328(s1) # 80004420 <_ZN15MemoryAllocator11freeSegHeadE>
    80001570:	00048c63          	beqz	s1,80001588 <_ZN15MemoryAllocator5printEv+0x34>
    80001574:	06600513          	li	a0,102
    80001578:	00002097          	auipc	ra,0x2
    8000157c:	124080e7          	jalr	292(ra) # 8000369c <__putc>
    80001580:	0104b483          	ld	s1,16(s1)
    80001584:	fedff06f          	j	80001570 <_ZN15MemoryAllocator5printEv+0x1c>
    __putc('\n');
    80001588:	00a00513          	li	a0,10
    8000158c:	00002097          	auipc	ra,0x2
    80001590:	110080e7          	jalr	272(ra) # 8000369c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80001594:	00003497          	auipc	s1,0x3
    80001598:	e944b483          	ld	s1,-364(s1) # 80004428 <_ZN15MemoryAllocator11usedSegHeadE>
    8000159c:	00048c63          	beqz	s1,800015b4 <_ZN15MemoryAllocator5printEv+0x60>
    800015a0:	07500513          	li	a0,117
    800015a4:	00002097          	auipc	ra,0x2
    800015a8:	0f8080e7          	jalr	248(ra) # 8000369c <__putc>
    800015ac:	0104b483          	ld	s1,16(s1)
    800015b0:	fedff06f          	j	8000159c <_ZN15MemoryAllocator5printEv+0x48>
    __putc('\n');
    800015b4:	00a00513          	li	a0,10
    800015b8:	00002097          	auipc	ra,0x2
    800015bc:	0e4080e7          	jalr	228(ra) # 8000369c <__putc>
}
    800015c0:	01813083          	ld	ra,24(sp)
    800015c4:	01013403          	ld	s0,16(sp)
    800015c8:	00813483          	ld	s1,8(sp)
    800015cc:	02010113          	addi	sp,sp,32
    800015d0:	00008067          	ret

00000000800015d4 <start>:
    800015d4:	ff010113          	addi	sp,sp,-16
    800015d8:	00813423          	sd	s0,8(sp)
    800015dc:	01010413          	addi	s0,sp,16
    800015e0:	300027f3          	csrr	a5,mstatus
    800015e4:	ffffe737          	lui	a4,0xffffe
    800015e8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff916f>
    800015ec:	00e7f7b3          	and	a5,a5,a4
    800015f0:	00001737          	lui	a4,0x1
    800015f4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800015f8:	00e7e7b3          	or	a5,a5,a4
    800015fc:	30079073          	csrw	mstatus,a5
    80001600:	00000797          	auipc	a5,0x0
    80001604:	16078793          	addi	a5,a5,352 # 80001760 <system_main>
    80001608:	34179073          	csrw	mepc,a5
    8000160c:	00000793          	li	a5,0
    80001610:	18079073          	csrw	satp,a5
    80001614:	000107b7          	lui	a5,0x10
    80001618:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000161c:	30279073          	csrw	medeleg,a5
    80001620:	30379073          	csrw	mideleg,a5
    80001624:	104027f3          	csrr	a5,sie
    80001628:	2227e793          	ori	a5,a5,546
    8000162c:	10479073          	csrw	sie,a5
    80001630:	fff00793          	li	a5,-1
    80001634:	00a7d793          	srli	a5,a5,0xa
    80001638:	3b079073          	csrw	pmpaddr0,a5
    8000163c:	00f00793          	li	a5,15
    80001640:	3a079073          	csrw	pmpcfg0,a5
    80001644:	f14027f3          	csrr	a5,mhartid
    80001648:	0200c737          	lui	a4,0x200c
    8000164c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001650:	0007869b          	sext.w	a3,a5
    80001654:	00269713          	slli	a4,a3,0x2
    80001658:	000f4637          	lui	a2,0xf4
    8000165c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001660:	00d70733          	add	a4,a4,a3
    80001664:	0037979b          	slliw	a5,a5,0x3
    80001668:	020046b7          	lui	a3,0x2004
    8000166c:	00d787b3          	add	a5,a5,a3
    80001670:	00c585b3          	add	a1,a1,a2
    80001674:	00371693          	slli	a3,a4,0x3
    80001678:	00003717          	auipc	a4,0x3
    8000167c:	dc870713          	addi	a4,a4,-568 # 80004440 <timer_scratch>
    80001680:	00b7b023          	sd	a1,0(a5)
    80001684:	00d70733          	add	a4,a4,a3
    80001688:	00f73c23          	sd	a5,24(a4)
    8000168c:	02c73023          	sd	a2,32(a4)
    80001690:	34071073          	csrw	mscratch,a4
    80001694:	00000797          	auipc	a5,0x0
    80001698:	6ec78793          	addi	a5,a5,1772 # 80001d80 <timervec>
    8000169c:	30579073          	csrw	mtvec,a5
    800016a0:	300027f3          	csrr	a5,mstatus
    800016a4:	0087e793          	ori	a5,a5,8
    800016a8:	30079073          	csrw	mstatus,a5
    800016ac:	304027f3          	csrr	a5,mie
    800016b0:	0807e793          	ori	a5,a5,128
    800016b4:	30479073          	csrw	mie,a5
    800016b8:	f14027f3          	csrr	a5,mhartid
    800016bc:	0007879b          	sext.w	a5,a5
    800016c0:	00078213          	mv	tp,a5
    800016c4:	30200073          	mret
    800016c8:	00813403          	ld	s0,8(sp)
    800016cc:	01010113          	addi	sp,sp,16
    800016d0:	00008067          	ret

00000000800016d4 <timerinit>:
    800016d4:	ff010113          	addi	sp,sp,-16
    800016d8:	00813423          	sd	s0,8(sp)
    800016dc:	01010413          	addi	s0,sp,16
    800016e0:	f14027f3          	csrr	a5,mhartid
    800016e4:	0200c737          	lui	a4,0x200c
    800016e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800016ec:	0007869b          	sext.w	a3,a5
    800016f0:	00269713          	slli	a4,a3,0x2
    800016f4:	000f4637          	lui	a2,0xf4
    800016f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800016fc:	00d70733          	add	a4,a4,a3
    80001700:	0037979b          	slliw	a5,a5,0x3
    80001704:	020046b7          	lui	a3,0x2004
    80001708:	00d787b3          	add	a5,a5,a3
    8000170c:	00c585b3          	add	a1,a1,a2
    80001710:	00371693          	slli	a3,a4,0x3
    80001714:	00003717          	auipc	a4,0x3
    80001718:	d2c70713          	addi	a4,a4,-724 # 80004440 <timer_scratch>
    8000171c:	00b7b023          	sd	a1,0(a5)
    80001720:	00d70733          	add	a4,a4,a3
    80001724:	00f73c23          	sd	a5,24(a4)
    80001728:	02c73023          	sd	a2,32(a4)
    8000172c:	34071073          	csrw	mscratch,a4
    80001730:	00000797          	auipc	a5,0x0
    80001734:	65078793          	addi	a5,a5,1616 # 80001d80 <timervec>
    80001738:	30579073          	csrw	mtvec,a5
    8000173c:	300027f3          	csrr	a5,mstatus
    80001740:	0087e793          	ori	a5,a5,8
    80001744:	30079073          	csrw	mstatus,a5
    80001748:	304027f3          	csrr	a5,mie
    8000174c:	0807e793          	ori	a5,a5,128
    80001750:	30479073          	csrw	mie,a5
    80001754:	00813403          	ld	s0,8(sp)
    80001758:	01010113          	addi	sp,sp,16
    8000175c:	00008067          	ret

0000000080001760 <system_main>:
    80001760:	fe010113          	addi	sp,sp,-32
    80001764:	00813823          	sd	s0,16(sp)
    80001768:	00913423          	sd	s1,8(sp)
    8000176c:	00113c23          	sd	ra,24(sp)
    80001770:	02010413          	addi	s0,sp,32
    80001774:	00000097          	auipc	ra,0x0
    80001778:	0c4080e7          	jalr	196(ra) # 80001838 <cpuid>
    8000177c:	00003497          	auipc	s1,0x3
    80001780:	c7448493          	addi	s1,s1,-908 # 800043f0 <started>
    80001784:	02050263          	beqz	a0,800017a8 <system_main+0x48>
    80001788:	0004a783          	lw	a5,0(s1)
    8000178c:	0007879b          	sext.w	a5,a5
    80001790:	fe078ce3          	beqz	a5,80001788 <system_main+0x28>
    80001794:	0ff0000f          	fence
    80001798:	00003517          	auipc	a0,0x3
    8000179c:	8b850513          	addi	a0,a0,-1864 # 80004050 <CONSOLE_STATUS+0x40>
    800017a0:	00001097          	auipc	ra,0x1
    800017a4:	a7c080e7          	jalr	-1412(ra) # 8000221c <panic>
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	9d0080e7          	jalr	-1584(ra) # 80002178 <consoleinit>
    800017b0:	00001097          	auipc	ra,0x1
    800017b4:	15c080e7          	jalr	348(ra) # 8000290c <printfinit>
    800017b8:	00003517          	auipc	a0,0x3
    800017bc:	97850513          	addi	a0,a0,-1672 # 80004130 <CONSOLE_STATUS+0x120>
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	ab8080e7          	jalr	-1352(ra) # 80002278 <__printf>
    800017c8:	00003517          	auipc	a0,0x3
    800017cc:	85850513          	addi	a0,a0,-1960 # 80004020 <CONSOLE_STATUS+0x10>
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	aa8080e7          	jalr	-1368(ra) # 80002278 <__printf>
    800017d8:	00003517          	auipc	a0,0x3
    800017dc:	95850513          	addi	a0,a0,-1704 # 80004130 <CONSOLE_STATUS+0x120>
    800017e0:	00001097          	auipc	ra,0x1
    800017e4:	a98080e7          	jalr	-1384(ra) # 80002278 <__printf>
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	4b0080e7          	jalr	1200(ra) # 80002c98 <kinit>
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	148080e7          	jalr	328(ra) # 80001938 <trapinit>
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	16c080e7          	jalr	364(ra) # 80001964 <trapinithart>
    80001800:	00000097          	auipc	ra,0x0
    80001804:	5c0080e7          	jalr	1472(ra) # 80001dc0 <plicinit>
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	5e0080e7          	jalr	1504(ra) # 80001de8 <plicinithart>
    80001810:	00000097          	auipc	ra,0x0
    80001814:	078080e7          	jalr	120(ra) # 80001888 <userinit>
    80001818:	0ff0000f          	fence
    8000181c:	00100793          	li	a5,1
    80001820:	00003517          	auipc	a0,0x3
    80001824:	81850513          	addi	a0,a0,-2024 # 80004038 <CONSOLE_STATUS+0x28>
    80001828:	00f4a023          	sw	a5,0(s1)
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	a4c080e7          	jalr	-1460(ra) # 80002278 <__printf>
    80001834:	0000006f          	j	80001834 <system_main+0xd4>

0000000080001838 <cpuid>:
    80001838:	ff010113          	addi	sp,sp,-16
    8000183c:	00813423          	sd	s0,8(sp)
    80001840:	01010413          	addi	s0,sp,16
    80001844:	00020513          	mv	a0,tp
    80001848:	00813403          	ld	s0,8(sp)
    8000184c:	0005051b          	sext.w	a0,a0
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <mycpu>:
    80001858:	ff010113          	addi	sp,sp,-16
    8000185c:	00813423          	sd	s0,8(sp)
    80001860:	01010413          	addi	s0,sp,16
    80001864:	00020793          	mv	a5,tp
    80001868:	00813403          	ld	s0,8(sp)
    8000186c:	0007879b          	sext.w	a5,a5
    80001870:	00779793          	slli	a5,a5,0x7
    80001874:	00004517          	auipc	a0,0x4
    80001878:	bfc50513          	addi	a0,a0,-1028 # 80005470 <cpus>
    8000187c:	00f50533          	add	a0,a0,a5
    80001880:	01010113          	addi	sp,sp,16
    80001884:	00008067          	ret

0000000080001888 <userinit>:
    80001888:	ff010113          	addi	sp,sp,-16
    8000188c:	00813423          	sd	s0,8(sp)
    80001890:	01010413          	addi	s0,sp,16
    80001894:	00813403          	ld	s0,8(sp)
    80001898:	01010113          	addi	sp,sp,16
    8000189c:	00000317          	auipc	t1,0x0
    800018a0:	8a030067          	jr	-1888(t1) # 8000113c <main>

00000000800018a4 <either_copyout>:
    800018a4:	ff010113          	addi	sp,sp,-16
    800018a8:	00813023          	sd	s0,0(sp)
    800018ac:	00113423          	sd	ra,8(sp)
    800018b0:	01010413          	addi	s0,sp,16
    800018b4:	02051663          	bnez	a0,800018e0 <either_copyout+0x3c>
    800018b8:	00058513          	mv	a0,a1
    800018bc:	00060593          	mv	a1,a2
    800018c0:	0006861b          	sext.w	a2,a3
    800018c4:	00002097          	auipc	ra,0x2
    800018c8:	c60080e7          	jalr	-928(ra) # 80003524 <__memmove>
    800018cc:	00813083          	ld	ra,8(sp)
    800018d0:	00013403          	ld	s0,0(sp)
    800018d4:	00000513          	li	a0,0
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00008067          	ret
    800018e0:	00002517          	auipc	a0,0x2
    800018e4:	79850513          	addi	a0,a0,1944 # 80004078 <CONSOLE_STATUS+0x68>
    800018e8:	00001097          	auipc	ra,0x1
    800018ec:	934080e7          	jalr	-1740(ra) # 8000221c <panic>

00000000800018f0 <either_copyin>:
    800018f0:	ff010113          	addi	sp,sp,-16
    800018f4:	00813023          	sd	s0,0(sp)
    800018f8:	00113423          	sd	ra,8(sp)
    800018fc:	01010413          	addi	s0,sp,16
    80001900:	02059463          	bnez	a1,80001928 <either_copyin+0x38>
    80001904:	00060593          	mv	a1,a2
    80001908:	0006861b          	sext.w	a2,a3
    8000190c:	00002097          	auipc	ra,0x2
    80001910:	c18080e7          	jalr	-1000(ra) # 80003524 <__memmove>
    80001914:	00813083          	ld	ra,8(sp)
    80001918:	00013403          	ld	s0,0(sp)
    8000191c:	00000513          	li	a0,0
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret
    80001928:	00002517          	auipc	a0,0x2
    8000192c:	77850513          	addi	a0,a0,1912 # 800040a0 <CONSOLE_STATUS+0x90>
    80001930:	00001097          	auipc	ra,0x1
    80001934:	8ec080e7          	jalr	-1812(ra) # 8000221c <panic>

0000000080001938 <trapinit>:
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00813423          	sd	s0,8(sp)
    80001940:	01010413          	addi	s0,sp,16
    80001944:	00813403          	ld	s0,8(sp)
    80001948:	00002597          	auipc	a1,0x2
    8000194c:	78058593          	addi	a1,a1,1920 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001950:	00004517          	auipc	a0,0x4
    80001954:	ba050513          	addi	a0,a0,-1120 # 800054f0 <tickslock>
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00001317          	auipc	t1,0x1
    80001960:	5cc30067          	jr	1484(t1) # 80002f28 <initlock>

0000000080001964 <trapinithart>:
    80001964:	ff010113          	addi	sp,sp,-16
    80001968:	00813423          	sd	s0,8(sp)
    8000196c:	01010413          	addi	s0,sp,16
    80001970:	00000797          	auipc	a5,0x0
    80001974:	30078793          	addi	a5,a5,768 # 80001c70 <kernelvec>
    80001978:	10579073          	csrw	stvec,a5
    8000197c:	00813403          	ld	s0,8(sp)
    80001980:	01010113          	addi	sp,sp,16
    80001984:	00008067          	ret

0000000080001988 <usertrap>:
    80001988:	ff010113          	addi	sp,sp,-16
    8000198c:	00813423          	sd	s0,8(sp)
    80001990:	01010413          	addi	s0,sp,16
    80001994:	00813403          	ld	s0,8(sp)
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00008067          	ret

00000000800019a0 <usertrapret>:
    800019a0:	ff010113          	addi	sp,sp,-16
    800019a4:	00813423          	sd	s0,8(sp)
    800019a8:	01010413          	addi	s0,sp,16
    800019ac:	00813403          	ld	s0,8(sp)
    800019b0:	01010113          	addi	sp,sp,16
    800019b4:	00008067          	ret

00000000800019b8 <kerneltrap>:
    800019b8:	fe010113          	addi	sp,sp,-32
    800019bc:	00813823          	sd	s0,16(sp)
    800019c0:	00113c23          	sd	ra,24(sp)
    800019c4:	00913423          	sd	s1,8(sp)
    800019c8:	02010413          	addi	s0,sp,32
    800019cc:	142025f3          	csrr	a1,scause
    800019d0:	100027f3          	csrr	a5,sstatus
    800019d4:	0027f793          	andi	a5,a5,2
    800019d8:	10079c63          	bnez	a5,80001af0 <kerneltrap+0x138>
    800019dc:	142027f3          	csrr	a5,scause
    800019e0:	0207ce63          	bltz	a5,80001a1c <kerneltrap+0x64>
    800019e4:	00002517          	auipc	a0,0x2
    800019e8:	72c50513          	addi	a0,a0,1836 # 80004110 <CONSOLE_STATUS+0x100>
    800019ec:	00001097          	auipc	ra,0x1
    800019f0:	88c080e7          	jalr	-1908(ra) # 80002278 <__printf>
    800019f4:	141025f3          	csrr	a1,sepc
    800019f8:	14302673          	csrr	a2,stval
    800019fc:	00002517          	auipc	a0,0x2
    80001a00:	72450513          	addi	a0,a0,1828 # 80004120 <CONSOLE_STATUS+0x110>
    80001a04:	00001097          	auipc	ra,0x1
    80001a08:	874080e7          	jalr	-1932(ra) # 80002278 <__printf>
    80001a0c:	00002517          	auipc	a0,0x2
    80001a10:	72c50513          	addi	a0,a0,1836 # 80004138 <CONSOLE_STATUS+0x128>
    80001a14:	00001097          	auipc	ra,0x1
    80001a18:	808080e7          	jalr	-2040(ra) # 8000221c <panic>
    80001a1c:	0ff7f713          	andi	a4,a5,255
    80001a20:	00900693          	li	a3,9
    80001a24:	04d70063          	beq	a4,a3,80001a64 <kerneltrap+0xac>
    80001a28:	fff00713          	li	a4,-1
    80001a2c:	03f71713          	slli	a4,a4,0x3f
    80001a30:	00170713          	addi	a4,a4,1
    80001a34:	fae798e3          	bne	a5,a4,800019e4 <kerneltrap+0x2c>
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	e00080e7          	jalr	-512(ra) # 80001838 <cpuid>
    80001a40:	06050663          	beqz	a0,80001aac <kerneltrap+0xf4>
    80001a44:	144027f3          	csrr	a5,sip
    80001a48:	ffd7f793          	andi	a5,a5,-3
    80001a4c:	14479073          	csrw	sip,a5
    80001a50:	01813083          	ld	ra,24(sp)
    80001a54:	01013403          	ld	s0,16(sp)
    80001a58:	00813483          	ld	s1,8(sp)
    80001a5c:	02010113          	addi	sp,sp,32
    80001a60:	00008067          	ret
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	3d0080e7          	jalr	976(ra) # 80001e34 <plic_claim>
    80001a6c:	00a00793          	li	a5,10
    80001a70:	00050493          	mv	s1,a0
    80001a74:	06f50863          	beq	a0,a5,80001ae4 <kerneltrap+0x12c>
    80001a78:	fc050ce3          	beqz	a0,80001a50 <kerneltrap+0x98>
    80001a7c:	00050593          	mv	a1,a0
    80001a80:	00002517          	auipc	a0,0x2
    80001a84:	67050513          	addi	a0,a0,1648 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	7f0080e7          	jalr	2032(ra) # 80002278 <__printf>
    80001a90:	01013403          	ld	s0,16(sp)
    80001a94:	01813083          	ld	ra,24(sp)
    80001a98:	00048513          	mv	a0,s1
    80001a9c:	00813483          	ld	s1,8(sp)
    80001aa0:	02010113          	addi	sp,sp,32
    80001aa4:	00000317          	auipc	t1,0x0
    80001aa8:	3c830067          	jr	968(t1) # 80001e6c <plic_complete>
    80001aac:	00004517          	auipc	a0,0x4
    80001ab0:	a4450513          	addi	a0,a0,-1468 # 800054f0 <tickslock>
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	498080e7          	jalr	1176(ra) # 80002f4c <acquire>
    80001abc:	00003717          	auipc	a4,0x3
    80001ac0:	93870713          	addi	a4,a4,-1736 # 800043f4 <ticks>
    80001ac4:	00072783          	lw	a5,0(a4)
    80001ac8:	00004517          	auipc	a0,0x4
    80001acc:	a2850513          	addi	a0,a0,-1496 # 800054f0 <tickslock>
    80001ad0:	0017879b          	addiw	a5,a5,1
    80001ad4:	00f72023          	sw	a5,0(a4)
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	540080e7          	jalr	1344(ra) # 80003018 <release>
    80001ae0:	f65ff06f          	j	80001a44 <kerneltrap+0x8c>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	09c080e7          	jalr	156(ra) # 80002b80 <uartintr>
    80001aec:	fa5ff06f          	j	80001a90 <kerneltrap+0xd8>
    80001af0:	00002517          	auipc	a0,0x2
    80001af4:	5e050513          	addi	a0,a0,1504 # 800040d0 <CONSOLE_STATUS+0xc0>
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	724080e7          	jalr	1828(ra) # 8000221c <panic>

0000000080001b00 <clockintr>:
    80001b00:	fe010113          	addi	sp,sp,-32
    80001b04:	00813823          	sd	s0,16(sp)
    80001b08:	00913423          	sd	s1,8(sp)
    80001b0c:	00113c23          	sd	ra,24(sp)
    80001b10:	02010413          	addi	s0,sp,32
    80001b14:	00004497          	auipc	s1,0x4
    80001b18:	9dc48493          	addi	s1,s1,-1572 # 800054f0 <tickslock>
    80001b1c:	00048513          	mv	a0,s1
    80001b20:	00001097          	auipc	ra,0x1
    80001b24:	42c080e7          	jalr	1068(ra) # 80002f4c <acquire>
    80001b28:	00003717          	auipc	a4,0x3
    80001b2c:	8cc70713          	addi	a4,a4,-1844 # 800043f4 <ticks>
    80001b30:	00072783          	lw	a5,0(a4)
    80001b34:	01013403          	ld	s0,16(sp)
    80001b38:	01813083          	ld	ra,24(sp)
    80001b3c:	00048513          	mv	a0,s1
    80001b40:	0017879b          	addiw	a5,a5,1
    80001b44:	00813483          	ld	s1,8(sp)
    80001b48:	00f72023          	sw	a5,0(a4)
    80001b4c:	02010113          	addi	sp,sp,32
    80001b50:	00001317          	auipc	t1,0x1
    80001b54:	4c830067          	jr	1224(t1) # 80003018 <release>

0000000080001b58 <devintr>:
    80001b58:	142027f3          	csrr	a5,scause
    80001b5c:	00000513          	li	a0,0
    80001b60:	0007c463          	bltz	a5,80001b68 <devintr+0x10>
    80001b64:	00008067          	ret
    80001b68:	fe010113          	addi	sp,sp,-32
    80001b6c:	00813823          	sd	s0,16(sp)
    80001b70:	00113c23          	sd	ra,24(sp)
    80001b74:	00913423          	sd	s1,8(sp)
    80001b78:	02010413          	addi	s0,sp,32
    80001b7c:	0ff7f713          	andi	a4,a5,255
    80001b80:	00900693          	li	a3,9
    80001b84:	04d70c63          	beq	a4,a3,80001bdc <devintr+0x84>
    80001b88:	fff00713          	li	a4,-1
    80001b8c:	03f71713          	slli	a4,a4,0x3f
    80001b90:	00170713          	addi	a4,a4,1
    80001b94:	00e78c63          	beq	a5,a4,80001bac <devintr+0x54>
    80001b98:	01813083          	ld	ra,24(sp)
    80001b9c:	01013403          	ld	s0,16(sp)
    80001ba0:	00813483          	ld	s1,8(sp)
    80001ba4:	02010113          	addi	sp,sp,32
    80001ba8:	00008067          	ret
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	c8c080e7          	jalr	-884(ra) # 80001838 <cpuid>
    80001bb4:	06050663          	beqz	a0,80001c20 <devintr+0xc8>
    80001bb8:	144027f3          	csrr	a5,sip
    80001bbc:	ffd7f793          	andi	a5,a5,-3
    80001bc0:	14479073          	csrw	sip,a5
    80001bc4:	01813083          	ld	ra,24(sp)
    80001bc8:	01013403          	ld	s0,16(sp)
    80001bcc:	00813483          	ld	s1,8(sp)
    80001bd0:	00200513          	li	a0,2
    80001bd4:	02010113          	addi	sp,sp,32
    80001bd8:	00008067          	ret
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	258080e7          	jalr	600(ra) # 80001e34 <plic_claim>
    80001be4:	00a00793          	li	a5,10
    80001be8:	00050493          	mv	s1,a0
    80001bec:	06f50663          	beq	a0,a5,80001c58 <devintr+0x100>
    80001bf0:	00100513          	li	a0,1
    80001bf4:	fa0482e3          	beqz	s1,80001b98 <devintr+0x40>
    80001bf8:	00048593          	mv	a1,s1
    80001bfc:	00002517          	auipc	a0,0x2
    80001c00:	4f450513          	addi	a0,a0,1268 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	674080e7          	jalr	1652(ra) # 80002278 <__printf>
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	25c080e7          	jalr	604(ra) # 80001e6c <plic_complete>
    80001c18:	00100513          	li	a0,1
    80001c1c:	f7dff06f          	j	80001b98 <devintr+0x40>
    80001c20:	00004517          	auipc	a0,0x4
    80001c24:	8d050513          	addi	a0,a0,-1840 # 800054f0 <tickslock>
    80001c28:	00001097          	auipc	ra,0x1
    80001c2c:	324080e7          	jalr	804(ra) # 80002f4c <acquire>
    80001c30:	00002717          	auipc	a4,0x2
    80001c34:	7c470713          	addi	a4,a4,1988 # 800043f4 <ticks>
    80001c38:	00072783          	lw	a5,0(a4)
    80001c3c:	00004517          	auipc	a0,0x4
    80001c40:	8b450513          	addi	a0,a0,-1868 # 800054f0 <tickslock>
    80001c44:	0017879b          	addiw	a5,a5,1
    80001c48:	00f72023          	sw	a5,0(a4)
    80001c4c:	00001097          	auipc	ra,0x1
    80001c50:	3cc080e7          	jalr	972(ra) # 80003018 <release>
    80001c54:	f65ff06f          	j	80001bb8 <devintr+0x60>
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	f28080e7          	jalr	-216(ra) # 80002b80 <uartintr>
    80001c60:	fadff06f          	j	80001c0c <devintr+0xb4>
	...

0000000080001c70 <kernelvec>:
    80001c70:	f0010113          	addi	sp,sp,-256
    80001c74:	00113023          	sd	ra,0(sp)
    80001c78:	00213423          	sd	sp,8(sp)
    80001c7c:	00313823          	sd	gp,16(sp)
    80001c80:	00413c23          	sd	tp,24(sp)
    80001c84:	02513023          	sd	t0,32(sp)
    80001c88:	02613423          	sd	t1,40(sp)
    80001c8c:	02713823          	sd	t2,48(sp)
    80001c90:	02813c23          	sd	s0,56(sp)
    80001c94:	04913023          	sd	s1,64(sp)
    80001c98:	04a13423          	sd	a0,72(sp)
    80001c9c:	04b13823          	sd	a1,80(sp)
    80001ca0:	04c13c23          	sd	a2,88(sp)
    80001ca4:	06d13023          	sd	a3,96(sp)
    80001ca8:	06e13423          	sd	a4,104(sp)
    80001cac:	06f13823          	sd	a5,112(sp)
    80001cb0:	07013c23          	sd	a6,120(sp)
    80001cb4:	09113023          	sd	a7,128(sp)
    80001cb8:	09213423          	sd	s2,136(sp)
    80001cbc:	09313823          	sd	s3,144(sp)
    80001cc0:	09413c23          	sd	s4,152(sp)
    80001cc4:	0b513023          	sd	s5,160(sp)
    80001cc8:	0b613423          	sd	s6,168(sp)
    80001ccc:	0b713823          	sd	s7,176(sp)
    80001cd0:	0b813c23          	sd	s8,184(sp)
    80001cd4:	0d913023          	sd	s9,192(sp)
    80001cd8:	0da13423          	sd	s10,200(sp)
    80001cdc:	0db13823          	sd	s11,208(sp)
    80001ce0:	0dc13c23          	sd	t3,216(sp)
    80001ce4:	0fd13023          	sd	t4,224(sp)
    80001ce8:	0fe13423          	sd	t5,232(sp)
    80001cec:	0ff13823          	sd	t6,240(sp)
    80001cf0:	cc9ff0ef          	jal	ra,800019b8 <kerneltrap>
    80001cf4:	00013083          	ld	ra,0(sp)
    80001cf8:	00813103          	ld	sp,8(sp)
    80001cfc:	01013183          	ld	gp,16(sp)
    80001d00:	02013283          	ld	t0,32(sp)
    80001d04:	02813303          	ld	t1,40(sp)
    80001d08:	03013383          	ld	t2,48(sp)
    80001d0c:	03813403          	ld	s0,56(sp)
    80001d10:	04013483          	ld	s1,64(sp)
    80001d14:	04813503          	ld	a0,72(sp)
    80001d18:	05013583          	ld	a1,80(sp)
    80001d1c:	05813603          	ld	a2,88(sp)
    80001d20:	06013683          	ld	a3,96(sp)
    80001d24:	06813703          	ld	a4,104(sp)
    80001d28:	07013783          	ld	a5,112(sp)
    80001d2c:	07813803          	ld	a6,120(sp)
    80001d30:	08013883          	ld	a7,128(sp)
    80001d34:	08813903          	ld	s2,136(sp)
    80001d38:	09013983          	ld	s3,144(sp)
    80001d3c:	09813a03          	ld	s4,152(sp)
    80001d40:	0a013a83          	ld	s5,160(sp)
    80001d44:	0a813b03          	ld	s6,168(sp)
    80001d48:	0b013b83          	ld	s7,176(sp)
    80001d4c:	0b813c03          	ld	s8,184(sp)
    80001d50:	0c013c83          	ld	s9,192(sp)
    80001d54:	0c813d03          	ld	s10,200(sp)
    80001d58:	0d013d83          	ld	s11,208(sp)
    80001d5c:	0d813e03          	ld	t3,216(sp)
    80001d60:	0e013e83          	ld	t4,224(sp)
    80001d64:	0e813f03          	ld	t5,232(sp)
    80001d68:	0f013f83          	ld	t6,240(sp)
    80001d6c:	10010113          	addi	sp,sp,256
    80001d70:	10200073          	sret
    80001d74:	00000013          	nop
    80001d78:	00000013          	nop
    80001d7c:	00000013          	nop

0000000080001d80 <timervec>:
    80001d80:	34051573          	csrrw	a0,mscratch,a0
    80001d84:	00b53023          	sd	a1,0(a0)
    80001d88:	00c53423          	sd	a2,8(a0)
    80001d8c:	00d53823          	sd	a3,16(a0)
    80001d90:	01853583          	ld	a1,24(a0)
    80001d94:	02053603          	ld	a2,32(a0)
    80001d98:	0005b683          	ld	a3,0(a1)
    80001d9c:	00c686b3          	add	a3,a3,a2
    80001da0:	00d5b023          	sd	a3,0(a1)
    80001da4:	00200593          	li	a1,2
    80001da8:	14459073          	csrw	sip,a1
    80001dac:	01053683          	ld	a3,16(a0)
    80001db0:	00853603          	ld	a2,8(a0)
    80001db4:	00053583          	ld	a1,0(a0)
    80001db8:	34051573          	csrrw	a0,mscratch,a0
    80001dbc:	30200073          	mret

0000000080001dc0 <plicinit>:
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00813423          	sd	s0,8(sp)
    80001dc8:	01010413          	addi	s0,sp,16
    80001dcc:	00813403          	ld	s0,8(sp)
    80001dd0:	0c0007b7          	lui	a5,0xc000
    80001dd4:	00100713          	li	a4,1
    80001dd8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001ddc:	00e7a223          	sw	a4,4(a5)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <plicinithart>:
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00813023          	sd	s0,0(sp)
    80001df0:	00113423          	sd	ra,8(sp)
    80001df4:	01010413          	addi	s0,sp,16
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	a40080e7          	jalr	-1472(ra) # 80001838 <cpuid>
    80001e00:	0085171b          	slliw	a4,a0,0x8
    80001e04:	0c0027b7          	lui	a5,0xc002
    80001e08:	00e787b3          	add	a5,a5,a4
    80001e0c:	40200713          	li	a4,1026
    80001e10:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001e14:	00813083          	ld	ra,8(sp)
    80001e18:	00013403          	ld	s0,0(sp)
    80001e1c:	00d5151b          	slliw	a0,a0,0xd
    80001e20:	0c2017b7          	lui	a5,0xc201
    80001e24:	00a78533          	add	a0,a5,a0
    80001e28:	00052023          	sw	zero,0(a0)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <plic_claim>:
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00813023          	sd	s0,0(sp)
    80001e3c:	00113423          	sd	ra,8(sp)
    80001e40:	01010413          	addi	s0,sp,16
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	9f4080e7          	jalr	-1548(ra) # 80001838 <cpuid>
    80001e4c:	00813083          	ld	ra,8(sp)
    80001e50:	00013403          	ld	s0,0(sp)
    80001e54:	00d5151b          	slliw	a0,a0,0xd
    80001e58:	0c2017b7          	lui	a5,0xc201
    80001e5c:	00a78533          	add	a0,a5,a0
    80001e60:	00452503          	lw	a0,4(a0)
    80001e64:	01010113          	addi	sp,sp,16
    80001e68:	00008067          	ret

0000000080001e6c <plic_complete>:
    80001e6c:	fe010113          	addi	sp,sp,-32
    80001e70:	00813823          	sd	s0,16(sp)
    80001e74:	00913423          	sd	s1,8(sp)
    80001e78:	00113c23          	sd	ra,24(sp)
    80001e7c:	02010413          	addi	s0,sp,32
    80001e80:	00050493          	mv	s1,a0
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	9b4080e7          	jalr	-1612(ra) # 80001838 <cpuid>
    80001e8c:	01813083          	ld	ra,24(sp)
    80001e90:	01013403          	ld	s0,16(sp)
    80001e94:	00d5179b          	slliw	a5,a0,0xd
    80001e98:	0c201737          	lui	a4,0xc201
    80001e9c:	00f707b3          	add	a5,a4,a5
    80001ea0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001ea4:	00813483          	ld	s1,8(sp)
    80001ea8:	02010113          	addi	sp,sp,32
    80001eac:	00008067          	ret

0000000080001eb0 <consolewrite>:
    80001eb0:	fb010113          	addi	sp,sp,-80
    80001eb4:	04813023          	sd	s0,64(sp)
    80001eb8:	04113423          	sd	ra,72(sp)
    80001ebc:	02913c23          	sd	s1,56(sp)
    80001ec0:	03213823          	sd	s2,48(sp)
    80001ec4:	03313423          	sd	s3,40(sp)
    80001ec8:	03413023          	sd	s4,32(sp)
    80001ecc:	01513c23          	sd	s5,24(sp)
    80001ed0:	05010413          	addi	s0,sp,80
    80001ed4:	06c05c63          	blez	a2,80001f4c <consolewrite+0x9c>
    80001ed8:	00060993          	mv	s3,a2
    80001edc:	00050a13          	mv	s4,a0
    80001ee0:	00058493          	mv	s1,a1
    80001ee4:	00000913          	li	s2,0
    80001ee8:	fff00a93          	li	s5,-1
    80001eec:	01c0006f          	j	80001f08 <consolewrite+0x58>
    80001ef0:	fbf44503          	lbu	a0,-65(s0)
    80001ef4:	0019091b          	addiw	s2,s2,1
    80001ef8:	00148493          	addi	s1,s1,1
    80001efc:	00001097          	auipc	ra,0x1
    80001f00:	a9c080e7          	jalr	-1380(ra) # 80002998 <uartputc>
    80001f04:	03298063          	beq	s3,s2,80001f24 <consolewrite+0x74>
    80001f08:	00048613          	mv	a2,s1
    80001f0c:	00100693          	li	a3,1
    80001f10:	000a0593          	mv	a1,s4
    80001f14:	fbf40513          	addi	a0,s0,-65
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	9d8080e7          	jalr	-1576(ra) # 800018f0 <either_copyin>
    80001f20:	fd5518e3          	bne	a0,s5,80001ef0 <consolewrite+0x40>
    80001f24:	04813083          	ld	ra,72(sp)
    80001f28:	04013403          	ld	s0,64(sp)
    80001f2c:	03813483          	ld	s1,56(sp)
    80001f30:	02813983          	ld	s3,40(sp)
    80001f34:	02013a03          	ld	s4,32(sp)
    80001f38:	01813a83          	ld	s5,24(sp)
    80001f3c:	00090513          	mv	a0,s2
    80001f40:	03013903          	ld	s2,48(sp)
    80001f44:	05010113          	addi	sp,sp,80
    80001f48:	00008067          	ret
    80001f4c:	00000913          	li	s2,0
    80001f50:	fd5ff06f          	j	80001f24 <consolewrite+0x74>

0000000080001f54 <consoleread>:
    80001f54:	f9010113          	addi	sp,sp,-112
    80001f58:	06813023          	sd	s0,96(sp)
    80001f5c:	04913c23          	sd	s1,88(sp)
    80001f60:	05213823          	sd	s2,80(sp)
    80001f64:	05313423          	sd	s3,72(sp)
    80001f68:	05413023          	sd	s4,64(sp)
    80001f6c:	03513c23          	sd	s5,56(sp)
    80001f70:	03613823          	sd	s6,48(sp)
    80001f74:	03713423          	sd	s7,40(sp)
    80001f78:	03813023          	sd	s8,32(sp)
    80001f7c:	06113423          	sd	ra,104(sp)
    80001f80:	01913c23          	sd	s9,24(sp)
    80001f84:	07010413          	addi	s0,sp,112
    80001f88:	00060b93          	mv	s7,a2
    80001f8c:	00050913          	mv	s2,a0
    80001f90:	00058c13          	mv	s8,a1
    80001f94:	00060b1b          	sext.w	s6,a2
    80001f98:	00003497          	auipc	s1,0x3
    80001f9c:	57048493          	addi	s1,s1,1392 # 80005508 <cons>
    80001fa0:	00400993          	li	s3,4
    80001fa4:	fff00a13          	li	s4,-1
    80001fa8:	00a00a93          	li	s5,10
    80001fac:	05705e63          	blez	s7,80002008 <consoleread+0xb4>
    80001fb0:	09c4a703          	lw	a4,156(s1)
    80001fb4:	0984a783          	lw	a5,152(s1)
    80001fb8:	0007071b          	sext.w	a4,a4
    80001fbc:	08e78463          	beq	a5,a4,80002044 <consoleread+0xf0>
    80001fc0:	07f7f713          	andi	a4,a5,127
    80001fc4:	00e48733          	add	a4,s1,a4
    80001fc8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001fcc:	0017869b          	addiw	a3,a5,1
    80001fd0:	08d4ac23          	sw	a3,152(s1)
    80001fd4:	00070c9b          	sext.w	s9,a4
    80001fd8:	0b370663          	beq	a4,s3,80002084 <consoleread+0x130>
    80001fdc:	00100693          	li	a3,1
    80001fe0:	f9f40613          	addi	a2,s0,-97
    80001fe4:	000c0593          	mv	a1,s8
    80001fe8:	00090513          	mv	a0,s2
    80001fec:	f8e40fa3          	sb	a4,-97(s0)
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	8b4080e7          	jalr	-1868(ra) # 800018a4 <either_copyout>
    80001ff8:	01450863          	beq	a0,s4,80002008 <consoleread+0xb4>
    80001ffc:	001c0c13          	addi	s8,s8,1
    80002000:	fffb8b9b          	addiw	s7,s7,-1
    80002004:	fb5c94e3          	bne	s9,s5,80001fac <consoleread+0x58>
    80002008:	000b851b          	sext.w	a0,s7
    8000200c:	06813083          	ld	ra,104(sp)
    80002010:	06013403          	ld	s0,96(sp)
    80002014:	05813483          	ld	s1,88(sp)
    80002018:	05013903          	ld	s2,80(sp)
    8000201c:	04813983          	ld	s3,72(sp)
    80002020:	04013a03          	ld	s4,64(sp)
    80002024:	03813a83          	ld	s5,56(sp)
    80002028:	02813b83          	ld	s7,40(sp)
    8000202c:	02013c03          	ld	s8,32(sp)
    80002030:	01813c83          	ld	s9,24(sp)
    80002034:	40ab053b          	subw	a0,s6,a0
    80002038:	03013b03          	ld	s6,48(sp)
    8000203c:	07010113          	addi	sp,sp,112
    80002040:	00008067          	ret
    80002044:	00001097          	auipc	ra,0x1
    80002048:	1d8080e7          	jalr	472(ra) # 8000321c <push_on>
    8000204c:	0984a703          	lw	a4,152(s1)
    80002050:	09c4a783          	lw	a5,156(s1)
    80002054:	0007879b          	sext.w	a5,a5
    80002058:	fef70ce3          	beq	a4,a5,80002050 <consoleread+0xfc>
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	234080e7          	jalr	564(ra) # 80003290 <pop_on>
    80002064:	0984a783          	lw	a5,152(s1)
    80002068:	07f7f713          	andi	a4,a5,127
    8000206c:	00e48733          	add	a4,s1,a4
    80002070:	01874703          	lbu	a4,24(a4)
    80002074:	0017869b          	addiw	a3,a5,1
    80002078:	08d4ac23          	sw	a3,152(s1)
    8000207c:	00070c9b          	sext.w	s9,a4
    80002080:	f5371ee3          	bne	a4,s3,80001fdc <consoleread+0x88>
    80002084:	000b851b          	sext.w	a0,s7
    80002088:	f96bf2e3          	bgeu	s7,s6,8000200c <consoleread+0xb8>
    8000208c:	08f4ac23          	sw	a5,152(s1)
    80002090:	f7dff06f          	j	8000200c <consoleread+0xb8>

0000000080002094 <consputc>:
    80002094:	10000793          	li	a5,256
    80002098:	00f50663          	beq	a0,a5,800020a4 <consputc+0x10>
    8000209c:	00001317          	auipc	t1,0x1
    800020a0:	9f430067          	jr	-1548(t1) # 80002a90 <uartputc_sync>
    800020a4:	ff010113          	addi	sp,sp,-16
    800020a8:	00113423          	sd	ra,8(sp)
    800020ac:	00813023          	sd	s0,0(sp)
    800020b0:	01010413          	addi	s0,sp,16
    800020b4:	00800513          	li	a0,8
    800020b8:	00001097          	auipc	ra,0x1
    800020bc:	9d8080e7          	jalr	-1576(ra) # 80002a90 <uartputc_sync>
    800020c0:	02000513          	li	a0,32
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	9cc080e7          	jalr	-1588(ra) # 80002a90 <uartputc_sync>
    800020cc:	00013403          	ld	s0,0(sp)
    800020d0:	00813083          	ld	ra,8(sp)
    800020d4:	00800513          	li	a0,8
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00001317          	auipc	t1,0x1
    800020e0:	9b430067          	jr	-1612(t1) # 80002a90 <uartputc_sync>

00000000800020e4 <consoleintr>:
    800020e4:	fe010113          	addi	sp,sp,-32
    800020e8:	00813823          	sd	s0,16(sp)
    800020ec:	00913423          	sd	s1,8(sp)
    800020f0:	01213023          	sd	s2,0(sp)
    800020f4:	00113c23          	sd	ra,24(sp)
    800020f8:	02010413          	addi	s0,sp,32
    800020fc:	00003917          	auipc	s2,0x3
    80002100:	40c90913          	addi	s2,s2,1036 # 80005508 <cons>
    80002104:	00050493          	mv	s1,a0
    80002108:	00090513          	mv	a0,s2
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	e40080e7          	jalr	-448(ra) # 80002f4c <acquire>
    80002114:	02048c63          	beqz	s1,8000214c <consoleintr+0x68>
    80002118:	0a092783          	lw	a5,160(s2)
    8000211c:	09892703          	lw	a4,152(s2)
    80002120:	07f00693          	li	a3,127
    80002124:	40e7873b          	subw	a4,a5,a4
    80002128:	02e6e263          	bltu	a3,a4,8000214c <consoleintr+0x68>
    8000212c:	00d00713          	li	a4,13
    80002130:	04e48063          	beq	s1,a4,80002170 <consoleintr+0x8c>
    80002134:	07f7f713          	andi	a4,a5,127
    80002138:	00e90733          	add	a4,s2,a4
    8000213c:	0017879b          	addiw	a5,a5,1
    80002140:	0af92023          	sw	a5,160(s2)
    80002144:	00970c23          	sb	s1,24(a4)
    80002148:	08f92e23          	sw	a5,156(s2)
    8000214c:	01013403          	ld	s0,16(sp)
    80002150:	01813083          	ld	ra,24(sp)
    80002154:	00813483          	ld	s1,8(sp)
    80002158:	00013903          	ld	s2,0(sp)
    8000215c:	00003517          	auipc	a0,0x3
    80002160:	3ac50513          	addi	a0,a0,940 # 80005508 <cons>
    80002164:	02010113          	addi	sp,sp,32
    80002168:	00001317          	auipc	t1,0x1
    8000216c:	eb030067          	jr	-336(t1) # 80003018 <release>
    80002170:	00a00493          	li	s1,10
    80002174:	fc1ff06f          	j	80002134 <consoleintr+0x50>

0000000080002178 <consoleinit>:
    80002178:	fe010113          	addi	sp,sp,-32
    8000217c:	00113c23          	sd	ra,24(sp)
    80002180:	00813823          	sd	s0,16(sp)
    80002184:	00913423          	sd	s1,8(sp)
    80002188:	02010413          	addi	s0,sp,32
    8000218c:	00003497          	auipc	s1,0x3
    80002190:	37c48493          	addi	s1,s1,892 # 80005508 <cons>
    80002194:	00048513          	mv	a0,s1
    80002198:	00002597          	auipc	a1,0x2
    8000219c:	fb058593          	addi	a1,a1,-80 # 80004148 <CONSOLE_STATUS+0x138>
    800021a0:	00001097          	auipc	ra,0x1
    800021a4:	d88080e7          	jalr	-632(ra) # 80002f28 <initlock>
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	7ac080e7          	jalr	1964(ra) # 80002954 <uartinit>
    800021b0:	01813083          	ld	ra,24(sp)
    800021b4:	01013403          	ld	s0,16(sp)
    800021b8:	00000797          	auipc	a5,0x0
    800021bc:	d9c78793          	addi	a5,a5,-612 # 80001f54 <consoleread>
    800021c0:	0af4bc23          	sd	a5,184(s1)
    800021c4:	00000797          	auipc	a5,0x0
    800021c8:	cec78793          	addi	a5,a5,-788 # 80001eb0 <consolewrite>
    800021cc:	0cf4b023          	sd	a5,192(s1)
    800021d0:	00813483          	ld	s1,8(sp)
    800021d4:	02010113          	addi	sp,sp,32
    800021d8:	00008067          	ret

00000000800021dc <console_read>:
    800021dc:	ff010113          	addi	sp,sp,-16
    800021e0:	00813423          	sd	s0,8(sp)
    800021e4:	01010413          	addi	s0,sp,16
    800021e8:	00813403          	ld	s0,8(sp)
    800021ec:	00003317          	auipc	t1,0x3
    800021f0:	3d433303          	ld	t1,980(t1) # 800055c0 <devsw+0x10>
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00030067          	jr	t1

00000000800021fc <console_write>:
    800021fc:	ff010113          	addi	sp,sp,-16
    80002200:	00813423          	sd	s0,8(sp)
    80002204:	01010413          	addi	s0,sp,16
    80002208:	00813403          	ld	s0,8(sp)
    8000220c:	00003317          	auipc	t1,0x3
    80002210:	3bc33303          	ld	t1,956(t1) # 800055c8 <devsw+0x18>
    80002214:	01010113          	addi	sp,sp,16
    80002218:	00030067          	jr	t1

000000008000221c <panic>:
    8000221c:	fe010113          	addi	sp,sp,-32
    80002220:	00113c23          	sd	ra,24(sp)
    80002224:	00813823          	sd	s0,16(sp)
    80002228:	00913423          	sd	s1,8(sp)
    8000222c:	02010413          	addi	s0,sp,32
    80002230:	00050493          	mv	s1,a0
    80002234:	00002517          	auipc	a0,0x2
    80002238:	f1c50513          	addi	a0,a0,-228 # 80004150 <CONSOLE_STATUS+0x140>
    8000223c:	00003797          	auipc	a5,0x3
    80002240:	4207a623          	sw	zero,1068(a5) # 80005668 <pr+0x18>
    80002244:	00000097          	auipc	ra,0x0
    80002248:	034080e7          	jalr	52(ra) # 80002278 <__printf>
    8000224c:	00048513          	mv	a0,s1
    80002250:	00000097          	auipc	ra,0x0
    80002254:	028080e7          	jalr	40(ra) # 80002278 <__printf>
    80002258:	00002517          	auipc	a0,0x2
    8000225c:	ed850513          	addi	a0,a0,-296 # 80004130 <CONSOLE_STATUS+0x120>
    80002260:	00000097          	auipc	ra,0x0
    80002264:	018080e7          	jalr	24(ra) # 80002278 <__printf>
    80002268:	00100793          	li	a5,1
    8000226c:	00002717          	auipc	a4,0x2
    80002270:	18f72623          	sw	a5,396(a4) # 800043f8 <panicked>
    80002274:	0000006f          	j	80002274 <panic+0x58>

0000000080002278 <__printf>:
    80002278:	f3010113          	addi	sp,sp,-208
    8000227c:	08813023          	sd	s0,128(sp)
    80002280:	07313423          	sd	s3,104(sp)
    80002284:	09010413          	addi	s0,sp,144
    80002288:	05813023          	sd	s8,64(sp)
    8000228c:	08113423          	sd	ra,136(sp)
    80002290:	06913c23          	sd	s1,120(sp)
    80002294:	07213823          	sd	s2,112(sp)
    80002298:	07413023          	sd	s4,96(sp)
    8000229c:	05513c23          	sd	s5,88(sp)
    800022a0:	05613823          	sd	s6,80(sp)
    800022a4:	05713423          	sd	s7,72(sp)
    800022a8:	03913c23          	sd	s9,56(sp)
    800022ac:	03a13823          	sd	s10,48(sp)
    800022b0:	03b13423          	sd	s11,40(sp)
    800022b4:	00003317          	auipc	t1,0x3
    800022b8:	39c30313          	addi	t1,t1,924 # 80005650 <pr>
    800022bc:	01832c03          	lw	s8,24(t1)
    800022c0:	00b43423          	sd	a1,8(s0)
    800022c4:	00c43823          	sd	a2,16(s0)
    800022c8:	00d43c23          	sd	a3,24(s0)
    800022cc:	02e43023          	sd	a4,32(s0)
    800022d0:	02f43423          	sd	a5,40(s0)
    800022d4:	03043823          	sd	a6,48(s0)
    800022d8:	03143c23          	sd	a7,56(s0)
    800022dc:	00050993          	mv	s3,a0
    800022e0:	4a0c1663          	bnez	s8,8000278c <__printf+0x514>
    800022e4:	60098c63          	beqz	s3,800028fc <__printf+0x684>
    800022e8:	0009c503          	lbu	a0,0(s3)
    800022ec:	00840793          	addi	a5,s0,8
    800022f0:	f6f43c23          	sd	a5,-136(s0)
    800022f4:	00000493          	li	s1,0
    800022f8:	22050063          	beqz	a0,80002518 <__printf+0x2a0>
    800022fc:	00002a37          	lui	s4,0x2
    80002300:	00018ab7          	lui	s5,0x18
    80002304:	000f4b37          	lui	s6,0xf4
    80002308:	00989bb7          	lui	s7,0x989
    8000230c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002310:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002314:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002318:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000231c:	00148c9b          	addiw	s9,s1,1
    80002320:	02500793          	li	a5,37
    80002324:	01998933          	add	s2,s3,s9
    80002328:	38f51263          	bne	a0,a5,800026ac <__printf+0x434>
    8000232c:	00094783          	lbu	a5,0(s2)
    80002330:	00078c9b          	sext.w	s9,a5
    80002334:	1e078263          	beqz	a5,80002518 <__printf+0x2a0>
    80002338:	0024849b          	addiw	s1,s1,2
    8000233c:	07000713          	li	a4,112
    80002340:	00998933          	add	s2,s3,s1
    80002344:	38e78a63          	beq	a5,a4,800026d8 <__printf+0x460>
    80002348:	20f76863          	bltu	a4,a5,80002558 <__printf+0x2e0>
    8000234c:	42a78863          	beq	a5,a0,8000277c <__printf+0x504>
    80002350:	06400713          	li	a4,100
    80002354:	40e79663          	bne	a5,a4,80002760 <__printf+0x4e8>
    80002358:	f7843783          	ld	a5,-136(s0)
    8000235c:	0007a603          	lw	a2,0(a5)
    80002360:	00878793          	addi	a5,a5,8
    80002364:	f6f43c23          	sd	a5,-136(s0)
    80002368:	42064a63          	bltz	a2,8000279c <__printf+0x524>
    8000236c:	00a00713          	li	a4,10
    80002370:	02e677bb          	remuw	a5,a2,a4
    80002374:	00002d97          	auipc	s11,0x2
    80002378:	e04d8d93          	addi	s11,s11,-508 # 80004178 <digits>
    8000237c:	00900593          	li	a1,9
    80002380:	0006051b          	sext.w	a0,a2
    80002384:	00000c93          	li	s9,0
    80002388:	02079793          	slli	a5,a5,0x20
    8000238c:	0207d793          	srli	a5,a5,0x20
    80002390:	00fd87b3          	add	a5,s11,a5
    80002394:	0007c783          	lbu	a5,0(a5)
    80002398:	02e656bb          	divuw	a3,a2,a4
    8000239c:	f8f40023          	sb	a5,-128(s0)
    800023a0:	14c5d863          	bge	a1,a2,800024f0 <__printf+0x278>
    800023a4:	06300593          	li	a1,99
    800023a8:	00100c93          	li	s9,1
    800023ac:	02e6f7bb          	remuw	a5,a3,a4
    800023b0:	02079793          	slli	a5,a5,0x20
    800023b4:	0207d793          	srli	a5,a5,0x20
    800023b8:	00fd87b3          	add	a5,s11,a5
    800023bc:	0007c783          	lbu	a5,0(a5)
    800023c0:	02e6d73b          	divuw	a4,a3,a4
    800023c4:	f8f400a3          	sb	a5,-127(s0)
    800023c8:	12a5f463          	bgeu	a1,a0,800024f0 <__printf+0x278>
    800023cc:	00a00693          	li	a3,10
    800023d0:	00900593          	li	a1,9
    800023d4:	02d777bb          	remuw	a5,a4,a3
    800023d8:	02079793          	slli	a5,a5,0x20
    800023dc:	0207d793          	srli	a5,a5,0x20
    800023e0:	00fd87b3          	add	a5,s11,a5
    800023e4:	0007c503          	lbu	a0,0(a5)
    800023e8:	02d757bb          	divuw	a5,a4,a3
    800023ec:	f8a40123          	sb	a0,-126(s0)
    800023f0:	48e5f263          	bgeu	a1,a4,80002874 <__printf+0x5fc>
    800023f4:	06300513          	li	a0,99
    800023f8:	02d7f5bb          	remuw	a1,a5,a3
    800023fc:	02059593          	slli	a1,a1,0x20
    80002400:	0205d593          	srli	a1,a1,0x20
    80002404:	00bd85b3          	add	a1,s11,a1
    80002408:	0005c583          	lbu	a1,0(a1)
    8000240c:	02d7d7bb          	divuw	a5,a5,a3
    80002410:	f8b401a3          	sb	a1,-125(s0)
    80002414:	48e57263          	bgeu	a0,a4,80002898 <__printf+0x620>
    80002418:	3e700513          	li	a0,999
    8000241c:	02d7f5bb          	remuw	a1,a5,a3
    80002420:	02059593          	slli	a1,a1,0x20
    80002424:	0205d593          	srli	a1,a1,0x20
    80002428:	00bd85b3          	add	a1,s11,a1
    8000242c:	0005c583          	lbu	a1,0(a1)
    80002430:	02d7d7bb          	divuw	a5,a5,a3
    80002434:	f8b40223          	sb	a1,-124(s0)
    80002438:	46e57663          	bgeu	a0,a4,800028a4 <__printf+0x62c>
    8000243c:	02d7f5bb          	remuw	a1,a5,a3
    80002440:	02059593          	slli	a1,a1,0x20
    80002444:	0205d593          	srli	a1,a1,0x20
    80002448:	00bd85b3          	add	a1,s11,a1
    8000244c:	0005c583          	lbu	a1,0(a1)
    80002450:	02d7d7bb          	divuw	a5,a5,a3
    80002454:	f8b402a3          	sb	a1,-123(s0)
    80002458:	46ea7863          	bgeu	s4,a4,800028c8 <__printf+0x650>
    8000245c:	02d7f5bb          	remuw	a1,a5,a3
    80002460:	02059593          	slli	a1,a1,0x20
    80002464:	0205d593          	srli	a1,a1,0x20
    80002468:	00bd85b3          	add	a1,s11,a1
    8000246c:	0005c583          	lbu	a1,0(a1)
    80002470:	02d7d7bb          	divuw	a5,a5,a3
    80002474:	f8b40323          	sb	a1,-122(s0)
    80002478:	3eeaf863          	bgeu	s5,a4,80002868 <__printf+0x5f0>
    8000247c:	02d7f5bb          	remuw	a1,a5,a3
    80002480:	02059593          	slli	a1,a1,0x20
    80002484:	0205d593          	srli	a1,a1,0x20
    80002488:	00bd85b3          	add	a1,s11,a1
    8000248c:	0005c583          	lbu	a1,0(a1)
    80002490:	02d7d7bb          	divuw	a5,a5,a3
    80002494:	f8b403a3          	sb	a1,-121(s0)
    80002498:	42eb7e63          	bgeu	s6,a4,800028d4 <__printf+0x65c>
    8000249c:	02d7f5bb          	remuw	a1,a5,a3
    800024a0:	02059593          	slli	a1,a1,0x20
    800024a4:	0205d593          	srli	a1,a1,0x20
    800024a8:	00bd85b3          	add	a1,s11,a1
    800024ac:	0005c583          	lbu	a1,0(a1)
    800024b0:	02d7d7bb          	divuw	a5,a5,a3
    800024b4:	f8b40423          	sb	a1,-120(s0)
    800024b8:	42ebfc63          	bgeu	s7,a4,800028f0 <__printf+0x678>
    800024bc:	02079793          	slli	a5,a5,0x20
    800024c0:	0207d793          	srli	a5,a5,0x20
    800024c4:	00fd8db3          	add	s11,s11,a5
    800024c8:	000dc703          	lbu	a4,0(s11)
    800024cc:	00a00793          	li	a5,10
    800024d0:	00900c93          	li	s9,9
    800024d4:	f8e404a3          	sb	a4,-119(s0)
    800024d8:	00065c63          	bgez	a2,800024f0 <__printf+0x278>
    800024dc:	f9040713          	addi	a4,s0,-112
    800024e0:	00f70733          	add	a4,a4,a5
    800024e4:	02d00693          	li	a3,45
    800024e8:	fed70823          	sb	a3,-16(a4)
    800024ec:	00078c93          	mv	s9,a5
    800024f0:	f8040793          	addi	a5,s0,-128
    800024f4:	01978cb3          	add	s9,a5,s9
    800024f8:	f7f40d13          	addi	s10,s0,-129
    800024fc:	000cc503          	lbu	a0,0(s9)
    80002500:	fffc8c93          	addi	s9,s9,-1
    80002504:	00000097          	auipc	ra,0x0
    80002508:	b90080e7          	jalr	-1136(ra) # 80002094 <consputc>
    8000250c:	ffac98e3          	bne	s9,s10,800024fc <__printf+0x284>
    80002510:	00094503          	lbu	a0,0(s2)
    80002514:	e00514e3          	bnez	a0,8000231c <__printf+0xa4>
    80002518:	1a0c1663          	bnez	s8,800026c4 <__printf+0x44c>
    8000251c:	08813083          	ld	ra,136(sp)
    80002520:	08013403          	ld	s0,128(sp)
    80002524:	07813483          	ld	s1,120(sp)
    80002528:	07013903          	ld	s2,112(sp)
    8000252c:	06813983          	ld	s3,104(sp)
    80002530:	06013a03          	ld	s4,96(sp)
    80002534:	05813a83          	ld	s5,88(sp)
    80002538:	05013b03          	ld	s6,80(sp)
    8000253c:	04813b83          	ld	s7,72(sp)
    80002540:	04013c03          	ld	s8,64(sp)
    80002544:	03813c83          	ld	s9,56(sp)
    80002548:	03013d03          	ld	s10,48(sp)
    8000254c:	02813d83          	ld	s11,40(sp)
    80002550:	0d010113          	addi	sp,sp,208
    80002554:	00008067          	ret
    80002558:	07300713          	li	a4,115
    8000255c:	1ce78a63          	beq	a5,a4,80002730 <__printf+0x4b8>
    80002560:	07800713          	li	a4,120
    80002564:	1ee79e63          	bne	a5,a4,80002760 <__printf+0x4e8>
    80002568:	f7843783          	ld	a5,-136(s0)
    8000256c:	0007a703          	lw	a4,0(a5)
    80002570:	00878793          	addi	a5,a5,8
    80002574:	f6f43c23          	sd	a5,-136(s0)
    80002578:	28074263          	bltz	a4,800027fc <__printf+0x584>
    8000257c:	00002d97          	auipc	s11,0x2
    80002580:	bfcd8d93          	addi	s11,s11,-1028 # 80004178 <digits>
    80002584:	00f77793          	andi	a5,a4,15
    80002588:	00fd87b3          	add	a5,s11,a5
    8000258c:	0007c683          	lbu	a3,0(a5)
    80002590:	00f00613          	li	a2,15
    80002594:	0007079b          	sext.w	a5,a4
    80002598:	f8d40023          	sb	a3,-128(s0)
    8000259c:	0047559b          	srliw	a1,a4,0x4
    800025a0:	0047569b          	srliw	a3,a4,0x4
    800025a4:	00000c93          	li	s9,0
    800025a8:	0ee65063          	bge	a2,a4,80002688 <__printf+0x410>
    800025ac:	00f6f693          	andi	a3,a3,15
    800025b0:	00dd86b3          	add	a3,s11,a3
    800025b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800025b8:	0087d79b          	srliw	a5,a5,0x8
    800025bc:	00100c93          	li	s9,1
    800025c0:	f8d400a3          	sb	a3,-127(s0)
    800025c4:	0cb67263          	bgeu	a2,a1,80002688 <__printf+0x410>
    800025c8:	00f7f693          	andi	a3,a5,15
    800025cc:	00dd86b3          	add	a3,s11,a3
    800025d0:	0006c583          	lbu	a1,0(a3)
    800025d4:	00f00613          	li	a2,15
    800025d8:	0047d69b          	srliw	a3,a5,0x4
    800025dc:	f8b40123          	sb	a1,-126(s0)
    800025e0:	0047d593          	srli	a1,a5,0x4
    800025e4:	28f67e63          	bgeu	a2,a5,80002880 <__printf+0x608>
    800025e8:	00f6f693          	andi	a3,a3,15
    800025ec:	00dd86b3          	add	a3,s11,a3
    800025f0:	0006c503          	lbu	a0,0(a3)
    800025f4:	0087d813          	srli	a6,a5,0x8
    800025f8:	0087d69b          	srliw	a3,a5,0x8
    800025fc:	f8a401a3          	sb	a0,-125(s0)
    80002600:	28b67663          	bgeu	a2,a1,8000288c <__printf+0x614>
    80002604:	00f6f693          	andi	a3,a3,15
    80002608:	00dd86b3          	add	a3,s11,a3
    8000260c:	0006c583          	lbu	a1,0(a3)
    80002610:	00c7d513          	srli	a0,a5,0xc
    80002614:	00c7d69b          	srliw	a3,a5,0xc
    80002618:	f8b40223          	sb	a1,-124(s0)
    8000261c:	29067a63          	bgeu	a2,a6,800028b0 <__printf+0x638>
    80002620:	00f6f693          	andi	a3,a3,15
    80002624:	00dd86b3          	add	a3,s11,a3
    80002628:	0006c583          	lbu	a1,0(a3)
    8000262c:	0107d813          	srli	a6,a5,0x10
    80002630:	0107d69b          	srliw	a3,a5,0x10
    80002634:	f8b402a3          	sb	a1,-123(s0)
    80002638:	28a67263          	bgeu	a2,a0,800028bc <__printf+0x644>
    8000263c:	00f6f693          	andi	a3,a3,15
    80002640:	00dd86b3          	add	a3,s11,a3
    80002644:	0006c683          	lbu	a3,0(a3)
    80002648:	0147d79b          	srliw	a5,a5,0x14
    8000264c:	f8d40323          	sb	a3,-122(s0)
    80002650:	21067663          	bgeu	a2,a6,8000285c <__printf+0x5e4>
    80002654:	02079793          	slli	a5,a5,0x20
    80002658:	0207d793          	srli	a5,a5,0x20
    8000265c:	00fd8db3          	add	s11,s11,a5
    80002660:	000dc683          	lbu	a3,0(s11)
    80002664:	00800793          	li	a5,8
    80002668:	00700c93          	li	s9,7
    8000266c:	f8d403a3          	sb	a3,-121(s0)
    80002670:	00075c63          	bgez	a4,80002688 <__printf+0x410>
    80002674:	f9040713          	addi	a4,s0,-112
    80002678:	00f70733          	add	a4,a4,a5
    8000267c:	02d00693          	li	a3,45
    80002680:	fed70823          	sb	a3,-16(a4)
    80002684:	00078c93          	mv	s9,a5
    80002688:	f8040793          	addi	a5,s0,-128
    8000268c:	01978cb3          	add	s9,a5,s9
    80002690:	f7f40d13          	addi	s10,s0,-129
    80002694:	000cc503          	lbu	a0,0(s9)
    80002698:	fffc8c93          	addi	s9,s9,-1
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	9f8080e7          	jalr	-1544(ra) # 80002094 <consputc>
    800026a4:	ff9d18e3          	bne	s10,s9,80002694 <__printf+0x41c>
    800026a8:	0100006f          	j	800026b8 <__printf+0x440>
    800026ac:	00000097          	auipc	ra,0x0
    800026b0:	9e8080e7          	jalr	-1560(ra) # 80002094 <consputc>
    800026b4:	000c8493          	mv	s1,s9
    800026b8:	00094503          	lbu	a0,0(s2)
    800026bc:	c60510e3          	bnez	a0,8000231c <__printf+0xa4>
    800026c0:	e40c0ee3          	beqz	s8,8000251c <__printf+0x2a4>
    800026c4:	00003517          	auipc	a0,0x3
    800026c8:	f8c50513          	addi	a0,a0,-116 # 80005650 <pr>
    800026cc:	00001097          	auipc	ra,0x1
    800026d0:	94c080e7          	jalr	-1716(ra) # 80003018 <release>
    800026d4:	e49ff06f          	j	8000251c <__printf+0x2a4>
    800026d8:	f7843783          	ld	a5,-136(s0)
    800026dc:	03000513          	li	a0,48
    800026e0:	01000d13          	li	s10,16
    800026e4:	00878713          	addi	a4,a5,8
    800026e8:	0007bc83          	ld	s9,0(a5)
    800026ec:	f6e43c23          	sd	a4,-136(s0)
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	9a4080e7          	jalr	-1628(ra) # 80002094 <consputc>
    800026f8:	07800513          	li	a0,120
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	998080e7          	jalr	-1640(ra) # 80002094 <consputc>
    80002704:	00002d97          	auipc	s11,0x2
    80002708:	a74d8d93          	addi	s11,s11,-1420 # 80004178 <digits>
    8000270c:	03ccd793          	srli	a5,s9,0x3c
    80002710:	00fd87b3          	add	a5,s11,a5
    80002714:	0007c503          	lbu	a0,0(a5)
    80002718:	fffd0d1b          	addiw	s10,s10,-1
    8000271c:	004c9c93          	slli	s9,s9,0x4
    80002720:	00000097          	auipc	ra,0x0
    80002724:	974080e7          	jalr	-1676(ra) # 80002094 <consputc>
    80002728:	fe0d12e3          	bnez	s10,8000270c <__printf+0x494>
    8000272c:	f8dff06f          	j	800026b8 <__printf+0x440>
    80002730:	f7843783          	ld	a5,-136(s0)
    80002734:	0007bc83          	ld	s9,0(a5)
    80002738:	00878793          	addi	a5,a5,8
    8000273c:	f6f43c23          	sd	a5,-136(s0)
    80002740:	000c9a63          	bnez	s9,80002754 <__printf+0x4dc>
    80002744:	1080006f          	j	8000284c <__printf+0x5d4>
    80002748:	001c8c93          	addi	s9,s9,1
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	948080e7          	jalr	-1720(ra) # 80002094 <consputc>
    80002754:	000cc503          	lbu	a0,0(s9)
    80002758:	fe0518e3          	bnez	a0,80002748 <__printf+0x4d0>
    8000275c:	f5dff06f          	j	800026b8 <__printf+0x440>
    80002760:	02500513          	li	a0,37
    80002764:	00000097          	auipc	ra,0x0
    80002768:	930080e7          	jalr	-1744(ra) # 80002094 <consputc>
    8000276c:	000c8513          	mv	a0,s9
    80002770:	00000097          	auipc	ra,0x0
    80002774:	924080e7          	jalr	-1756(ra) # 80002094 <consputc>
    80002778:	f41ff06f          	j	800026b8 <__printf+0x440>
    8000277c:	02500513          	li	a0,37
    80002780:	00000097          	auipc	ra,0x0
    80002784:	914080e7          	jalr	-1772(ra) # 80002094 <consputc>
    80002788:	f31ff06f          	j	800026b8 <__printf+0x440>
    8000278c:	00030513          	mv	a0,t1
    80002790:	00000097          	auipc	ra,0x0
    80002794:	7bc080e7          	jalr	1980(ra) # 80002f4c <acquire>
    80002798:	b4dff06f          	j	800022e4 <__printf+0x6c>
    8000279c:	40c0053b          	negw	a0,a2
    800027a0:	00a00713          	li	a4,10
    800027a4:	02e576bb          	remuw	a3,a0,a4
    800027a8:	00002d97          	auipc	s11,0x2
    800027ac:	9d0d8d93          	addi	s11,s11,-1584 # 80004178 <digits>
    800027b0:	ff700593          	li	a1,-9
    800027b4:	02069693          	slli	a3,a3,0x20
    800027b8:	0206d693          	srli	a3,a3,0x20
    800027bc:	00dd86b3          	add	a3,s11,a3
    800027c0:	0006c683          	lbu	a3,0(a3)
    800027c4:	02e557bb          	divuw	a5,a0,a4
    800027c8:	f8d40023          	sb	a3,-128(s0)
    800027cc:	10b65e63          	bge	a2,a1,800028e8 <__printf+0x670>
    800027d0:	06300593          	li	a1,99
    800027d4:	02e7f6bb          	remuw	a3,a5,a4
    800027d8:	02069693          	slli	a3,a3,0x20
    800027dc:	0206d693          	srli	a3,a3,0x20
    800027e0:	00dd86b3          	add	a3,s11,a3
    800027e4:	0006c683          	lbu	a3,0(a3)
    800027e8:	02e7d73b          	divuw	a4,a5,a4
    800027ec:	00200793          	li	a5,2
    800027f0:	f8d400a3          	sb	a3,-127(s0)
    800027f4:	bca5ece3          	bltu	a1,a0,800023cc <__printf+0x154>
    800027f8:	ce5ff06f          	j	800024dc <__printf+0x264>
    800027fc:	40e007bb          	negw	a5,a4
    80002800:	00002d97          	auipc	s11,0x2
    80002804:	978d8d93          	addi	s11,s11,-1672 # 80004178 <digits>
    80002808:	00f7f693          	andi	a3,a5,15
    8000280c:	00dd86b3          	add	a3,s11,a3
    80002810:	0006c583          	lbu	a1,0(a3)
    80002814:	ff100613          	li	a2,-15
    80002818:	0047d69b          	srliw	a3,a5,0x4
    8000281c:	f8b40023          	sb	a1,-128(s0)
    80002820:	0047d59b          	srliw	a1,a5,0x4
    80002824:	0ac75e63          	bge	a4,a2,800028e0 <__printf+0x668>
    80002828:	00f6f693          	andi	a3,a3,15
    8000282c:	00dd86b3          	add	a3,s11,a3
    80002830:	0006c603          	lbu	a2,0(a3)
    80002834:	00f00693          	li	a3,15
    80002838:	0087d79b          	srliw	a5,a5,0x8
    8000283c:	f8c400a3          	sb	a2,-127(s0)
    80002840:	d8b6e4e3          	bltu	a3,a1,800025c8 <__printf+0x350>
    80002844:	00200793          	li	a5,2
    80002848:	e2dff06f          	j	80002674 <__printf+0x3fc>
    8000284c:	00002c97          	auipc	s9,0x2
    80002850:	90cc8c93          	addi	s9,s9,-1780 # 80004158 <CONSOLE_STATUS+0x148>
    80002854:	02800513          	li	a0,40
    80002858:	ef1ff06f          	j	80002748 <__printf+0x4d0>
    8000285c:	00700793          	li	a5,7
    80002860:	00600c93          	li	s9,6
    80002864:	e0dff06f          	j	80002670 <__printf+0x3f8>
    80002868:	00700793          	li	a5,7
    8000286c:	00600c93          	li	s9,6
    80002870:	c69ff06f          	j	800024d8 <__printf+0x260>
    80002874:	00300793          	li	a5,3
    80002878:	00200c93          	li	s9,2
    8000287c:	c5dff06f          	j	800024d8 <__printf+0x260>
    80002880:	00300793          	li	a5,3
    80002884:	00200c93          	li	s9,2
    80002888:	de9ff06f          	j	80002670 <__printf+0x3f8>
    8000288c:	00400793          	li	a5,4
    80002890:	00300c93          	li	s9,3
    80002894:	dddff06f          	j	80002670 <__printf+0x3f8>
    80002898:	00400793          	li	a5,4
    8000289c:	00300c93          	li	s9,3
    800028a0:	c39ff06f          	j	800024d8 <__printf+0x260>
    800028a4:	00500793          	li	a5,5
    800028a8:	00400c93          	li	s9,4
    800028ac:	c2dff06f          	j	800024d8 <__printf+0x260>
    800028b0:	00500793          	li	a5,5
    800028b4:	00400c93          	li	s9,4
    800028b8:	db9ff06f          	j	80002670 <__printf+0x3f8>
    800028bc:	00600793          	li	a5,6
    800028c0:	00500c93          	li	s9,5
    800028c4:	dadff06f          	j	80002670 <__printf+0x3f8>
    800028c8:	00600793          	li	a5,6
    800028cc:	00500c93          	li	s9,5
    800028d0:	c09ff06f          	j	800024d8 <__printf+0x260>
    800028d4:	00800793          	li	a5,8
    800028d8:	00700c93          	li	s9,7
    800028dc:	bfdff06f          	j	800024d8 <__printf+0x260>
    800028e0:	00100793          	li	a5,1
    800028e4:	d91ff06f          	j	80002674 <__printf+0x3fc>
    800028e8:	00100793          	li	a5,1
    800028ec:	bf1ff06f          	j	800024dc <__printf+0x264>
    800028f0:	00900793          	li	a5,9
    800028f4:	00800c93          	li	s9,8
    800028f8:	be1ff06f          	j	800024d8 <__printf+0x260>
    800028fc:	00002517          	auipc	a0,0x2
    80002900:	86450513          	addi	a0,a0,-1948 # 80004160 <CONSOLE_STATUS+0x150>
    80002904:	00000097          	auipc	ra,0x0
    80002908:	918080e7          	jalr	-1768(ra) # 8000221c <panic>

000000008000290c <printfinit>:
    8000290c:	fe010113          	addi	sp,sp,-32
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	00113c23          	sd	ra,24(sp)
    8000291c:	02010413          	addi	s0,sp,32
    80002920:	00003497          	auipc	s1,0x3
    80002924:	d3048493          	addi	s1,s1,-720 # 80005650 <pr>
    80002928:	00048513          	mv	a0,s1
    8000292c:	00002597          	auipc	a1,0x2
    80002930:	84458593          	addi	a1,a1,-1980 # 80004170 <CONSOLE_STATUS+0x160>
    80002934:	00000097          	auipc	ra,0x0
    80002938:	5f4080e7          	jalr	1524(ra) # 80002f28 <initlock>
    8000293c:	01813083          	ld	ra,24(sp)
    80002940:	01013403          	ld	s0,16(sp)
    80002944:	0004ac23          	sw	zero,24(s1)
    80002948:	00813483          	ld	s1,8(sp)
    8000294c:	02010113          	addi	sp,sp,32
    80002950:	00008067          	ret

0000000080002954 <uartinit>:
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00813423          	sd	s0,8(sp)
    8000295c:	01010413          	addi	s0,sp,16
    80002960:	100007b7          	lui	a5,0x10000
    80002964:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002968:	f8000713          	li	a4,-128
    8000296c:	00e781a3          	sb	a4,3(a5)
    80002970:	00300713          	li	a4,3
    80002974:	00e78023          	sb	a4,0(a5)
    80002978:	000780a3          	sb	zero,1(a5)
    8000297c:	00e781a3          	sb	a4,3(a5)
    80002980:	00700693          	li	a3,7
    80002984:	00d78123          	sb	a3,2(a5)
    80002988:	00e780a3          	sb	a4,1(a5)
    8000298c:	00813403          	ld	s0,8(sp)
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret

0000000080002998 <uartputc>:
    80002998:	00002797          	auipc	a5,0x2
    8000299c:	a607a783          	lw	a5,-1440(a5) # 800043f8 <panicked>
    800029a0:	00078463          	beqz	a5,800029a8 <uartputc+0x10>
    800029a4:	0000006f          	j	800029a4 <uartputc+0xc>
    800029a8:	fd010113          	addi	sp,sp,-48
    800029ac:	02813023          	sd	s0,32(sp)
    800029b0:	00913c23          	sd	s1,24(sp)
    800029b4:	01213823          	sd	s2,16(sp)
    800029b8:	01313423          	sd	s3,8(sp)
    800029bc:	02113423          	sd	ra,40(sp)
    800029c0:	03010413          	addi	s0,sp,48
    800029c4:	00002917          	auipc	s2,0x2
    800029c8:	a3c90913          	addi	s2,s2,-1476 # 80004400 <uart_tx_r>
    800029cc:	00093783          	ld	a5,0(s2)
    800029d0:	00002497          	auipc	s1,0x2
    800029d4:	a3848493          	addi	s1,s1,-1480 # 80004408 <uart_tx_w>
    800029d8:	0004b703          	ld	a4,0(s1)
    800029dc:	02078693          	addi	a3,a5,32
    800029e0:	00050993          	mv	s3,a0
    800029e4:	02e69c63          	bne	a3,a4,80002a1c <uartputc+0x84>
    800029e8:	00001097          	auipc	ra,0x1
    800029ec:	834080e7          	jalr	-1996(ra) # 8000321c <push_on>
    800029f0:	00093783          	ld	a5,0(s2)
    800029f4:	0004b703          	ld	a4,0(s1)
    800029f8:	02078793          	addi	a5,a5,32
    800029fc:	00e79463          	bne	a5,a4,80002a04 <uartputc+0x6c>
    80002a00:	0000006f          	j	80002a00 <uartputc+0x68>
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	88c080e7          	jalr	-1908(ra) # 80003290 <pop_on>
    80002a0c:	00093783          	ld	a5,0(s2)
    80002a10:	0004b703          	ld	a4,0(s1)
    80002a14:	02078693          	addi	a3,a5,32
    80002a18:	fce688e3          	beq	a3,a4,800029e8 <uartputc+0x50>
    80002a1c:	01f77693          	andi	a3,a4,31
    80002a20:	00003597          	auipc	a1,0x3
    80002a24:	c5058593          	addi	a1,a1,-944 # 80005670 <uart_tx_buf>
    80002a28:	00d586b3          	add	a3,a1,a3
    80002a2c:	00170713          	addi	a4,a4,1
    80002a30:	01368023          	sb	s3,0(a3)
    80002a34:	00e4b023          	sd	a4,0(s1)
    80002a38:	10000637          	lui	a2,0x10000
    80002a3c:	02f71063          	bne	a4,a5,80002a5c <uartputc+0xc4>
    80002a40:	0340006f          	j	80002a74 <uartputc+0xdc>
    80002a44:	00074703          	lbu	a4,0(a4)
    80002a48:	00f93023          	sd	a5,0(s2)
    80002a4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002a50:	00093783          	ld	a5,0(s2)
    80002a54:	0004b703          	ld	a4,0(s1)
    80002a58:	00f70e63          	beq	a4,a5,80002a74 <uartputc+0xdc>
    80002a5c:	00564683          	lbu	a3,5(a2)
    80002a60:	01f7f713          	andi	a4,a5,31
    80002a64:	00e58733          	add	a4,a1,a4
    80002a68:	0206f693          	andi	a3,a3,32
    80002a6c:	00178793          	addi	a5,a5,1
    80002a70:	fc069ae3          	bnez	a3,80002a44 <uartputc+0xac>
    80002a74:	02813083          	ld	ra,40(sp)
    80002a78:	02013403          	ld	s0,32(sp)
    80002a7c:	01813483          	ld	s1,24(sp)
    80002a80:	01013903          	ld	s2,16(sp)
    80002a84:	00813983          	ld	s3,8(sp)
    80002a88:	03010113          	addi	sp,sp,48
    80002a8c:	00008067          	ret

0000000080002a90 <uartputc_sync>:
    80002a90:	ff010113          	addi	sp,sp,-16
    80002a94:	00813423          	sd	s0,8(sp)
    80002a98:	01010413          	addi	s0,sp,16
    80002a9c:	00002717          	auipc	a4,0x2
    80002aa0:	95c72703          	lw	a4,-1700(a4) # 800043f8 <panicked>
    80002aa4:	02071663          	bnez	a4,80002ad0 <uartputc_sync+0x40>
    80002aa8:	00050793          	mv	a5,a0
    80002aac:	100006b7          	lui	a3,0x10000
    80002ab0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002ab4:	02077713          	andi	a4,a4,32
    80002ab8:	fe070ce3          	beqz	a4,80002ab0 <uartputc_sync+0x20>
    80002abc:	0ff7f793          	andi	a5,a5,255
    80002ac0:	00f68023          	sb	a5,0(a3)
    80002ac4:	00813403          	ld	s0,8(sp)
    80002ac8:	01010113          	addi	sp,sp,16
    80002acc:	00008067          	ret
    80002ad0:	0000006f          	j	80002ad0 <uartputc_sync+0x40>

0000000080002ad4 <uartstart>:
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00813423          	sd	s0,8(sp)
    80002adc:	01010413          	addi	s0,sp,16
    80002ae0:	00002617          	auipc	a2,0x2
    80002ae4:	92060613          	addi	a2,a2,-1760 # 80004400 <uart_tx_r>
    80002ae8:	00002517          	auipc	a0,0x2
    80002aec:	92050513          	addi	a0,a0,-1760 # 80004408 <uart_tx_w>
    80002af0:	00063783          	ld	a5,0(a2)
    80002af4:	00053703          	ld	a4,0(a0)
    80002af8:	04f70263          	beq	a4,a5,80002b3c <uartstart+0x68>
    80002afc:	100005b7          	lui	a1,0x10000
    80002b00:	00003817          	auipc	a6,0x3
    80002b04:	b7080813          	addi	a6,a6,-1168 # 80005670 <uart_tx_buf>
    80002b08:	01c0006f          	j	80002b24 <uartstart+0x50>
    80002b0c:	0006c703          	lbu	a4,0(a3)
    80002b10:	00f63023          	sd	a5,0(a2)
    80002b14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002b18:	00063783          	ld	a5,0(a2)
    80002b1c:	00053703          	ld	a4,0(a0)
    80002b20:	00f70e63          	beq	a4,a5,80002b3c <uartstart+0x68>
    80002b24:	01f7f713          	andi	a4,a5,31
    80002b28:	00e806b3          	add	a3,a6,a4
    80002b2c:	0055c703          	lbu	a4,5(a1)
    80002b30:	00178793          	addi	a5,a5,1
    80002b34:	02077713          	andi	a4,a4,32
    80002b38:	fc071ae3          	bnez	a4,80002b0c <uartstart+0x38>
    80002b3c:	00813403          	ld	s0,8(sp)
    80002b40:	01010113          	addi	sp,sp,16
    80002b44:	00008067          	ret

0000000080002b48 <uartgetc>:
    80002b48:	ff010113          	addi	sp,sp,-16
    80002b4c:	00813423          	sd	s0,8(sp)
    80002b50:	01010413          	addi	s0,sp,16
    80002b54:	10000737          	lui	a4,0x10000
    80002b58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002b5c:	0017f793          	andi	a5,a5,1
    80002b60:	00078c63          	beqz	a5,80002b78 <uartgetc+0x30>
    80002b64:	00074503          	lbu	a0,0(a4)
    80002b68:	0ff57513          	andi	a0,a0,255
    80002b6c:	00813403          	ld	s0,8(sp)
    80002b70:	01010113          	addi	sp,sp,16
    80002b74:	00008067          	ret
    80002b78:	fff00513          	li	a0,-1
    80002b7c:	ff1ff06f          	j	80002b6c <uartgetc+0x24>

0000000080002b80 <uartintr>:
    80002b80:	100007b7          	lui	a5,0x10000
    80002b84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002b88:	0017f793          	andi	a5,a5,1
    80002b8c:	0a078463          	beqz	a5,80002c34 <uartintr+0xb4>
    80002b90:	fe010113          	addi	sp,sp,-32
    80002b94:	00813823          	sd	s0,16(sp)
    80002b98:	00913423          	sd	s1,8(sp)
    80002b9c:	00113c23          	sd	ra,24(sp)
    80002ba0:	02010413          	addi	s0,sp,32
    80002ba4:	100004b7          	lui	s1,0x10000
    80002ba8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002bac:	0ff57513          	andi	a0,a0,255
    80002bb0:	fffff097          	auipc	ra,0xfffff
    80002bb4:	534080e7          	jalr	1332(ra) # 800020e4 <consoleintr>
    80002bb8:	0054c783          	lbu	a5,5(s1)
    80002bbc:	0017f793          	andi	a5,a5,1
    80002bc0:	fe0794e3          	bnez	a5,80002ba8 <uartintr+0x28>
    80002bc4:	00002617          	auipc	a2,0x2
    80002bc8:	83c60613          	addi	a2,a2,-1988 # 80004400 <uart_tx_r>
    80002bcc:	00002517          	auipc	a0,0x2
    80002bd0:	83c50513          	addi	a0,a0,-1988 # 80004408 <uart_tx_w>
    80002bd4:	00063783          	ld	a5,0(a2)
    80002bd8:	00053703          	ld	a4,0(a0)
    80002bdc:	04f70263          	beq	a4,a5,80002c20 <uartintr+0xa0>
    80002be0:	100005b7          	lui	a1,0x10000
    80002be4:	00003817          	auipc	a6,0x3
    80002be8:	a8c80813          	addi	a6,a6,-1396 # 80005670 <uart_tx_buf>
    80002bec:	01c0006f          	j	80002c08 <uartintr+0x88>
    80002bf0:	0006c703          	lbu	a4,0(a3)
    80002bf4:	00f63023          	sd	a5,0(a2)
    80002bf8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002bfc:	00063783          	ld	a5,0(a2)
    80002c00:	00053703          	ld	a4,0(a0)
    80002c04:	00f70e63          	beq	a4,a5,80002c20 <uartintr+0xa0>
    80002c08:	01f7f713          	andi	a4,a5,31
    80002c0c:	00e806b3          	add	a3,a6,a4
    80002c10:	0055c703          	lbu	a4,5(a1)
    80002c14:	00178793          	addi	a5,a5,1
    80002c18:	02077713          	andi	a4,a4,32
    80002c1c:	fc071ae3          	bnez	a4,80002bf0 <uartintr+0x70>
    80002c20:	01813083          	ld	ra,24(sp)
    80002c24:	01013403          	ld	s0,16(sp)
    80002c28:	00813483          	ld	s1,8(sp)
    80002c2c:	02010113          	addi	sp,sp,32
    80002c30:	00008067          	ret
    80002c34:	00001617          	auipc	a2,0x1
    80002c38:	7cc60613          	addi	a2,a2,1996 # 80004400 <uart_tx_r>
    80002c3c:	00001517          	auipc	a0,0x1
    80002c40:	7cc50513          	addi	a0,a0,1996 # 80004408 <uart_tx_w>
    80002c44:	00063783          	ld	a5,0(a2)
    80002c48:	00053703          	ld	a4,0(a0)
    80002c4c:	04f70263          	beq	a4,a5,80002c90 <uartintr+0x110>
    80002c50:	100005b7          	lui	a1,0x10000
    80002c54:	00003817          	auipc	a6,0x3
    80002c58:	a1c80813          	addi	a6,a6,-1508 # 80005670 <uart_tx_buf>
    80002c5c:	01c0006f          	j	80002c78 <uartintr+0xf8>
    80002c60:	0006c703          	lbu	a4,0(a3)
    80002c64:	00f63023          	sd	a5,0(a2)
    80002c68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c6c:	00063783          	ld	a5,0(a2)
    80002c70:	00053703          	ld	a4,0(a0)
    80002c74:	02f70063          	beq	a4,a5,80002c94 <uartintr+0x114>
    80002c78:	01f7f713          	andi	a4,a5,31
    80002c7c:	00e806b3          	add	a3,a6,a4
    80002c80:	0055c703          	lbu	a4,5(a1)
    80002c84:	00178793          	addi	a5,a5,1
    80002c88:	02077713          	andi	a4,a4,32
    80002c8c:	fc071ae3          	bnez	a4,80002c60 <uartintr+0xe0>
    80002c90:	00008067          	ret
    80002c94:	00008067          	ret

0000000080002c98 <kinit>:
    80002c98:	fc010113          	addi	sp,sp,-64
    80002c9c:	02913423          	sd	s1,40(sp)
    80002ca0:	fffff7b7          	lui	a5,0xfffff
    80002ca4:	00004497          	auipc	s1,0x4
    80002ca8:	9eb48493          	addi	s1,s1,-1557 # 8000668f <end+0xfff>
    80002cac:	02813823          	sd	s0,48(sp)
    80002cb0:	01313c23          	sd	s3,24(sp)
    80002cb4:	00f4f4b3          	and	s1,s1,a5
    80002cb8:	02113c23          	sd	ra,56(sp)
    80002cbc:	03213023          	sd	s2,32(sp)
    80002cc0:	01413823          	sd	s4,16(sp)
    80002cc4:	01513423          	sd	s5,8(sp)
    80002cc8:	04010413          	addi	s0,sp,64
    80002ccc:	000017b7          	lui	a5,0x1
    80002cd0:	01100993          	li	s3,17
    80002cd4:	00f487b3          	add	a5,s1,a5
    80002cd8:	01b99993          	slli	s3,s3,0x1b
    80002cdc:	06f9e063          	bltu	s3,a5,80002d3c <kinit+0xa4>
    80002ce0:	00003a97          	auipc	s5,0x3
    80002ce4:	9b0a8a93          	addi	s5,s5,-1616 # 80005690 <end>
    80002ce8:	0754ec63          	bltu	s1,s5,80002d60 <kinit+0xc8>
    80002cec:	0734fa63          	bgeu	s1,s3,80002d60 <kinit+0xc8>
    80002cf0:	00088a37          	lui	s4,0x88
    80002cf4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002cf8:	00001917          	auipc	s2,0x1
    80002cfc:	71890913          	addi	s2,s2,1816 # 80004410 <kmem>
    80002d00:	00ca1a13          	slli	s4,s4,0xc
    80002d04:	0140006f          	j	80002d18 <kinit+0x80>
    80002d08:	000017b7          	lui	a5,0x1
    80002d0c:	00f484b3          	add	s1,s1,a5
    80002d10:	0554e863          	bltu	s1,s5,80002d60 <kinit+0xc8>
    80002d14:	0534f663          	bgeu	s1,s3,80002d60 <kinit+0xc8>
    80002d18:	00001637          	lui	a2,0x1
    80002d1c:	00100593          	li	a1,1
    80002d20:	00048513          	mv	a0,s1
    80002d24:	00000097          	auipc	ra,0x0
    80002d28:	5e4080e7          	jalr	1508(ra) # 80003308 <__memset>
    80002d2c:	00093783          	ld	a5,0(s2)
    80002d30:	00f4b023          	sd	a5,0(s1)
    80002d34:	00993023          	sd	s1,0(s2)
    80002d38:	fd4498e3          	bne	s1,s4,80002d08 <kinit+0x70>
    80002d3c:	03813083          	ld	ra,56(sp)
    80002d40:	03013403          	ld	s0,48(sp)
    80002d44:	02813483          	ld	s1,40(sp)
    80002d48:	02013903          	ld	s2,32(sp)
    80002d4c:	01813983          	ld	s3,24(sp)
    80002d50:	01013a03          	ld	s4,16(sp)
    80002d54:	00813a83          	ld	s5,8(sp)
    80002d58:	04010113          	addi	sp,sp,64
    80002d5c:	00008067          	ret
    80002d60:	00001517          	auipc	a0,0x1
    80002d64:	43050513          	addi	a0,a0,1072 # 80004190 <digits+0x18>
    80002d68:	fffff097          	auipc	ra,0xfffff
    80002d6c:	4b4080e7          	jalr	1204(ra) # 8000221c <panic>

0000000080002d70 <freerange>:
    80002d70:	fc010113          	addi	sp,sp,-64
    80002d74:	000017b7          	lui	a5,0x1
    80002d78:	02913423          	sd	s1,40(sp)
    80002d7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002d80:	009504b3          	add	s1,a0,s1
    80002d84:	fffff537          	lui	a0,0xfffff
    80002d88:	02813823          	sd	s0,48(sp)
    80002d8c:	02113c23          	sd	ra,56(sp)
    80002d90:	03213023          	sd	s2,32(sp)
    80002d94:	01313c23          	sd	s3,24(sp)
    80002d98:	01413823          	sd	s4,16(sp)
    80002d9c:	01513423          	sd	s5,8(sp)
    80002da0:	01613023          	sd	s6,0(sp)
    80002da4:	04010413          	addi	s0,sp,64
    80002da8:	00a4f4b3          	and	s1,s1,a0
    80002dac:	00f487b3          	add	a5,s1,a5
    80002db0:	06f5e463          	bltu	a1,a5,80002e18 <freerange+0xa8>
    80002db4:	00003a97          	auipc	s5,0x3
    80002db8:	8dca8a93          	addi	s5,s5,-1828 # 80005690 <end>
    80002dbc:	0954e263          	bltu	s1,s5,80002e40 <freerange+0xd0>
    80002dc0:	01100993          	li	s3,17
    80002dc4:	01b99993          	slli	s3,s3,0x1b
    80002dc8:	0734fc63          	bgeu	s1,s3,80002e40 <freerange+0xd0>
    80002dcc:	00058a13          	mv	s4,a1
    80002dd0:	00001917          	auipc	s2,0x1
    80002dd4:	64090913          	addi	s2,s2,1600 # 80004410 <kmem>
    80002dd8:	00002b37          	lui	s6,0x2
    80002ddc:	0140006f          	j	80002df0 <freerange+0x80>
    80002de0:	000017b7          	lui	a5,0x1
    80002de4:	00f484b3          	add	s1,s1,a5
    80002de8:	0554ec63          	bltu	s1,s5,80002e40 <freerange+0xd0>
    80002dec:	0534fa63          	bgeu	s1,s3,80002e40 <freerange+0xd0>
    80002df0:	00001637          	lui	a2,0x1
    80002df4:	00100593          	li	a1,1
    80002df8:	00048513          	mv	a0,s1
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	50c080e7          	jalr	1292(ra) # 80003308 <__memset>
    80002e04:	00093703          	ld	a4,0(s2)
    80002e08:	016487b3          	add	a5,s1,s6
    80002e0c:	00e4b023          	sd	a4,0(s1)
    80002e10:	00993023          	sd	s1,0(s2)
    80002e14:	fcfa76e3          	bgeu	s4,a5,80002de0 <freerange+0x70>
    80002e18:	03813083          	ld	ra,56(sp)
    80002e1c:	03013403          	ld	s0,48(sp)
    80002e20:	02813483          	ld	s1,40(sp)
    80002e24:	02013903          	ld	s2,32(sp)
    80002e28:	01813983          	ld	s3,24(sp)
    80002e2c:	01013a03          	ld	s4,16(sp)
    80002e30:	00813a83          	ld	s5,8(sp)
    80002e34:	00013b03          	ld	s6,0(sp)
    80002e38:	04010113          	addi	sp,sp,64
    80002e3c:	00008067          	ret
    80002e40:	00001517          	auipc	a0,0x1
    80002e44:	35050513          	addi	a0,a0,848 # 80004190 <digits+0x18>
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	3d4080e7          	jalr	980(ra) # 8000221c <panic>

0000000080002e50 <kfree>:
    80002e50:	fe010113          	addi	sp,sp,-32
    80002e54:	00813823          	sd	s0,16(sp)
    80002e58:	00113c23          	sd	ra,24(sp)
    80002e5c:	00913423          	sd	s1,8(sp)
    80002e60:	02010413          	addi	s0,sp,32
    80002e64:	03451793          	slli	a5,a0,0x34
    80002e68:	04079c63          	bnez	a5,80002ec0 <kfree+0x70>
    80002e6c:	00003797          	auipc	a5,0x3
    80002e70:	82478793          	addi	a5,a5,-2012 # 80005690 <end>
    80002e74:	00050493          	mv	s1,a0
    80002e78:	04f56463          	bltu	a0,a5,80002ec0 <kfree+0x70>
    80002e7c:	01100793          	li	a5,17
    80002e80:	01b79793          	slli	a5,a5,0x1b
    80002e84:	02f57e63          	bgeu	a0,a5,80002ec0 <kfree+0x70>
    80002e88:	00001637          	lui	a2,0x1
    80002e8c:	00100593          	li	a1,1
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	478080e7          	jalr	1144(ra) # 80003308 <__memset>
    80002e98:	00001797          	auipc	a5,0x1
    80002e9c:	57878793          	addi	a5,a5,1400 # 80004410 <kmem>
    80002ea0:	0007b703          	ld	a4,0(a5)
    80002ea4:	01813083          	ld	ra,24(sp)
    80002ea8:	01013403          	ld	s0,16(sp)
    80002eac:	00e4b023          	sd	a4,0(s1)
    80002eb0:	0097b023          	sd	s1,0(a5)
    80002eb4:	00813483          	ld	s1,8(sp)
    80002eb8:	02010113          	addi	sp,sp,32
    80002ebc:	00008067          	ret
    80002ec0:	00001517          	auipc	a0,0x1
    80002ec4:	2d050513          	addi	a0,a0,720 # 80004190 <digits+0x18>
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	354080e7          	jalr	852(ra) # 8000221c <panic>

0000000080002ed0 <kalloc>:
    80002ed0:	fe010113          	addi	sp,sp,-32
    80002ed4:	00813823          	sd	s0,16(sp)
    80002ed8:	00913423          	sd	s1,8(sp)
    80002edc:	00113c23          	sd	ra,24(sp)
    80002ee0:	02010413          	addi	s0,sp,32
    80002ee4:	00001797          	auipc	a5,0x1
    80002ee8:	52c78793          	addi	a5,a5,1324 # 80004410 <kmem>
    80002eec:	0007b483          	ld	s1,0(a5)
    80002ef0:	02048063          	beqz	s1,80002f10 <kalloc+0x40>
    80002ef4:	0004b703          	ld	a4,0(s1)
    80002ef8:	00001637          	lui	a2,0x1
    80002efc:	00500593          	li	a1,5
    80002f00:	00048513          	mv	a0,s1
    80002f04:	00e7b023          	sd	a4,0(a5)
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	400080e7          	jalr	1024(ra) # 80003308 <__memset>
    80002f10:	01813083          	ld	ra,24(sp)
    80002f14:	01013403          	ld	s0,16(sp)
    80002f18:	00048513          	mv	a0,s1
    80002f1c:	00813483          	ld	s1,8(sp)
    80002f20:	02010113          	addi	sp,sp,32
    80002f24:	00008067          	ret

0000000080002f28 <initlock>:
    80002f28:	ff010113          	addi	sp,sp,-16
    80002f2c:	00813423          	sd	s0,8(sp)
    80002f30:	01010413          	addi	s0,sp,16
    80002f34:	00813403          	ld	s0,8(sp)
    80002f38:	00b53423          	sd	a1,8(a0)
    80002f3c:	00052023          	sw	zero,0(a0)
    80002f40:	00053823          	sd	zero,16(a0)
    80002f44:	01010113          	addi	sp,sp,16
    80002f48:	00008067          	ret

0000000080002f4c <acquire>:
    80002f4c:	fe010113          	addi	sp,sp,-32
    80002f50:	00813823          	sd	s0,16(sp)
    80002f54:	00913423          	sd	s1,8(sp)
    80002f58:	00113c23          	sd	ra,24(sp)
    80002f5c:	01213023          	sd	s2,0(sp)
    80002f60:	02010413          	addi	s0,sp,32
    80002f64:	00050493          	mv	s1,a0
    80002f68:	10002973          	csrr	s2,sstatus
    80002f6c:	100027f3          	csrr	a5,sstatus
    80002f70:	ffd7f793          	andi	a5,a5,-3
    80002f74:	10079073          	csrw	sstatus,a5
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	8e0080e7          	jalr	-1824(ra) # 80001858 <mycpu>
    80002f80:	07852783          	lw	a5,120(a0)
    80002f84:	06078e63          	beqz	a5,80003000 <acquire+0xb4>
    80002f88:	fffff097          	auipc	ra,0xfffff
    80002f8c:	8d0080e7          	jalr	-1840(ra) # 80001858 <mycpu>
    80002f90:	07852783          	lw	a5,120(a0)
    80002f94:	0004a703          	lw	a4,0(s1)
    80002f98:	0017879b          	addiw	a5,a5,1
    80002f9c:	06f52c23          	sw	a5,120(a0)
    80002fa0:	04071063          	bnez	a4,80002fe0 <acquire+0x94>
    80002fa4:	00100713          	li	a4,1
    80002fa8:	00070793          	mv	a5,a4
    80002fac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002fb0:	0007879b          	sext.w	a5,a5
    80002fb4:	fe079ae3          	bnez	a5,80002fa8 <acquire+0x5c>
    80002fb8:	0ff0000f          	fence
    80002fbc:	fffff097          	auipc	ra,0xfffff
    80002fc0:	89c080e7          	jalr	-1892(ra) # 80001858 <mycpu>
    80002fc4:	01813083          	ld	ra,24(sp)
    80002fc8:	01013403          	ld	s0,16(sp)
    80002fcc:	00a4b823          	sd	a0,16(s1)
    80002fd0:	00013903          	ld	s2,0(sp)
    80002fd4:	00813483          	ld	s1,8(sp)
    80002fd8:	02010113          	addi	sp,sp,32
    80002fdc:	00008067          	ret
    80002fe0:	0104b903          	ld	s2,16(s1)
    80002fe4:	fffff097          	auipc	ra,0xfffff
    80002fe8:	874080e7          	jalr	-1932(ra) # 80001858 <mycpu>
    80002fec:	faa91ce3          	bne	s2,a0,80002fa4 <acquire+0x58>
    80002ff0:	00001517          	auipc	a0,0x1
    80002ff4:	1a850513          	addi	a0,a0,424 # 80004198 <digits+0x20>
    80002ff8:	fffff097          	auipc	ra,0xfffff
    80002ffc:	224080e7          	jalr	548(ra) # 8000221c <panic>
    80003000:	00195913          	srli	s2,s2,0x1
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	854080e7          	jalr	-1964(ra) # 80001858 <mycpu>
    8000300c:	00197913          	andi	s2,s2,1
    80003010:	07252e23          	sw	s2,124(a0)
    80003014:	f75ff06f          	j	80002f88 <acquire+0x3c>

0000000080003018 <release>:
    80003018:	fe010113          	addi	sp,sp,-32
    8000301c:	00813823          	sd	s0,16(sp)
    80003020:	00113c23          	sd	ra,24(sp)
    80003024:	00913423          	sd	s1,8(sp)
    80003028:	01213023          	sd	s2,0(sp)
    8000302c:	02010413          	addi	s0,sp,32
    80003030:	00052783          	lw	a5,0(a0)
    80003034:	00079a63          	bnez	a5,80003048 <release+0x30>
    80003038:	00001517          	auipc	a0,0x1
    8000303c:	16850513          	addi	a0,a0,360 # 800041a0 <digits+0x28>
    80003040:	fffff097          	auipc	ra,0xfffff
    80003044:	1dc080e7          	jalr	476(ra) # 8000221c <panic>
    80003048:	01053903          	ld	s2,16(a0)
    8000304c:	00050493          	mv	s1,a0
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	808080e7          	jalr	-2040(ra) # 80001858 <mycpu>
    80003058:	fea910e3          	bne	s2,a0,80003038 <release+0x20>
    8000305c:	0004b823          	sd	zero,16(s1)
    80003060:	0ff0000f          	fence
    80003064:	0f50000f          	fence	iorw,ow
    80003068:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000306c:	ffffe097          	auipc	ra,0xffffe
    80003070:	7ec080e7          	jalr	2028(ra) # 80001858 <mycpu>
    80003074:	100027f3          	csrr	a5,sstatus
    80003078:	0027f793          	andi	a5,a5,2
    8000307c:	04079a63          	bnez	a5,800030d0 <release+0xb8>
    80003080:	07852783          	lw	a5,120(a0)
    80003084:	02f05e63          	blez	a5,800030c0 <release+0xa8>
    80003088:	fff7871b          	addiw	a4,a5,-1
    8000308c:	06e52c23          	sw	a4,120(a0)
    80003090:	00071c63          	bnez	a4,800030a8 <release+0x90>
    80003094:	07c52783          	lw	a5,124(a0)
    80003098:	00078863          	beqz	a5,800030a8 <release+0x90>
    8000309c:	100027f3          	csrr	a5,sstatus
    800030a0:	0027e793          	ori	a5,a5,2
    800030a4:	10079073          	csrw	sstatus,a5
    800030a8:	01813083          	ld	ra,24(sp)
    800030ac:	01013403          	ld	s0,16(sp)
    800030b0:	00813483          	ld	s1,8(sp)
    800030b4:	00013903          	ld	s2,0(sp)
    800030b8:	02010113          	addi	sp,sp,32
    800030bc:	00008067          	ret
    800030c0:	00001517          	auipc	a0,0x1
    800030c4:	10050513          	addi	a0,a0,256 # 800041c0 <digits+0x48>
    800030c8:	fffff097          	auipc	ra,0xfffff
    800030cc:	154080e7          	jalr	340(ra) # 8000221c <panic>
    800030d0:	00001517          	auipc	a0,0x1
    800030d4:	0d850513          	addi	a0,a0,216 # 800041a8 <digits+0x30>
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	144080e7          	jalr	324(ra) # 8000221c <panic>

00000000800030e0 <holding>:
    800030e0:	00052783          	lw	a5,0(a0)
    800030e4:	00079663          	bnez	a5,800030f0 <holding+0x10>
    800030e8:	00000513          	li	a0,0
    800030ec:	00008067          	ret
    800030f0:	fe010113          	addi	sp,sp,-32
    800030f4:	00813823          	sd	s0,16(sp)
    800030f8:	00913423          	sd	s1,8(sp)
    800030fc:	00113c23          	sd	ra,24(sp)
    80003100:	02010413          	addi	s0,sp,32
    80003104:	01053483          	ld	s1,16(a0)
    80003108:	ffffe097          	auipc	ra,0xffffe
    8000310c:	750080e7          	jalr	1872(ra) # 80001858 <mycpu>
    80003110:	01813083          	ld	ra,24(sp)
    80003114:	01013403          	ld	s0,16(sp)
    80003118:	40a48533          	sub	a0,s1,a0
    8000311c:	00153513          	seqz	a0,a0
    80003120:	00813483          	ld	s1,8(sp)
    80003124:	02010113          	addi	sp,sp,32
    80003128:	00008067          	ret

000000008000312c <push_off>:
    8000312c:	fe010113          	addi	sp,sp,-32
    80003130:	00813823          	sd	s0,16(sp)
    80003134:	00113c23          	sd	ra,24(sp)
    80003138:	00913423          	sd	s1,8(sp)
    8000313c:	02010413          	addi	s0,sp,32
    80003140:	100024f3          	csrr	s1,sstatus
    80003144:	100027f3          	csrr	a5,sstatus
    80003148:	ffd7f793          	andi	a5,a5,-3
    8000314c:	10079073          	csrw	sstatus,a5
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	708080e7          	jalr	1800(ra) # 80001858 <mycpu>
    80003158:	07852783          	lw	a5,120(a0)
    8000315c:	02078663          	beqz	a5,80003188 <push_off+0x5c>
    80003160:	ffffe097          	auipc	ra,0xffffe
    80003164:	6f8080e7          	jalr	1784(ra) # 80001858 <mycpu>
    80003168:	07852783          	lw	a5,120(a0)
    8000316c:	01813083          	ld	ra,24(sp)
    80003170:	01013403          	ld	s0,16(sp)
    80003174:	0017879b          	addiw	a5,a5,1
    80003178:	06f52c23          	sw	a5,120(a0)
    8000317c:	00813483          	ld	s1,8(sp)
    80003180:	02010113          	addi	sp,sp,32
    80003184:	00008067          	ret
    80003188:	0014d493          	srli	s1,s1,0x1
    8000318c:	ffffe097          	auipc	ra,0xffffe
    80003190:	6cc080e7          	jalr	1740(ra) # 80001858 <mycpu>
    80003194:	0014f493          	andi	s1,s1,1
    80003198:	06952e23          	sw	s1,124(a0)
    8000319c:	fc5ff06f          	j	80003160 <push_off+0x34>

00000000800031a0 <pop_off>:
    800031a0:	ff010113          	addi	sp,sp,-16
    800031a4:	00813023          	sd	s0,0(sp)
    800031a8:	00113423          	sd	ra,8(sp)
    800031ac:	01010413          	addi	s0,sp,16
    800031b0:	ffffe097          	auipc	ra,0xffffe
    800031b4:	6a8080e7          	jalr	1704(ra) # 80001858 <mycpu>
    800031b8:	100027f3          	csrr	a5,sstatus
    800031bc:	0027f793          	andi	a5,a5,2
    800031c0:	04079663          	bnez	a5,8000320c <pop_off+0x6c>
    800031c4:	07852783          	lw	a5,120(a0)
    800031c8:	02f05a63          	blez	a5,800031fc <pop_off+0x5c>
    800031cc:	fff7871b          	addiw	a4,a5,-1
    800031d0:	06e52c23          	sw	a4,120(a0)
    800031d4:	00071c63          	bnez	a4,800031ec <pop_off+0x4c>
    800031d8:	07c52783          	lw	a5,124(a0)
    800031dc:	00078863          	beqz	a5,800031ec <pop_off+0x4c>
    800031e0:	100027f3          	csrr	a5,sstatus
    800031e4:	0027e793          	ori	a5,a5,2
    800031e8:	10079073          	csrw	sstatus,a5
    800031ec:	00813083          	ld	ra,8(sp)
    800031f0:	00013403          	ld	s0,0(sp)
    800031f4:	01010113          	addi	sp,sp,16
    800031f8:	00008067          	ret
    800031fc:	00001517          	auipc	a0,0x1
    80003200:	fc450513          	addi	a0,a0,-60 # 800041c0 <digits+0x48>
    80003204:	fffff097          	auipc	ra,0xfffff
    80003208:	018080e7          	jalr	24(ra) # 8000221c <panic>
    8000320c:	00001517          	auipc	a0,0x1
    80003210:	f9c50513          	addi	a0,a0,-100 # 800041a8 <digits+0x30>
    80003214:	fffff097          	auipc	ra,0xfffff
    80003218:	008080e7          	jalr	8(ra) # 8000221c <panic>

000000008000321c <push_on>:
    8000321c:	fe010113          	addi	sp,sp,-32
    80003220:	00813823          	sd	s0,16(sp)
    80003224:	00113c23          	sd	ra,24(sp)
    80003228:	00913423          	sd	s1,8(sp)
    8000322c:	02010413          	addi	s0,sp,32
    80003230:	100024f3          	csrr	s1,sstatus
    80003234:	100027f3          	csrr	a5,sstatus
    80003238:	0027e793          	ori	a5,a5,2
    8000323c:	10079073          	csrw	sstatus,a5
    80003240:	ffffe097          	auipc	ra,0xffffe
    80003244:	618080e7          	jalr	1560(ra) # 80001858 <mycpu>
    80003248:	07852783          	lw	a5,120(a0)
    8000324c:	02078663          	beqz	a5,80003278 <push_on+0x5c>
    80003250:	ffffe097          	auipc	ra,0xffffe
    80003254:	608080e7          	jalr	1544(ra) # 80001858 <mycpu>
    80003258:	07852783          	lw	a5,120(a0)
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	0017879b          	addiw	a5,a5,1
    80003268:	06f52c23          	sw	a5,120(a0)
    8000326c:	00813483          	ld	s1,8(sp)
    80003270:	02010113          	addi	sp,sp,32
    80003274:	00008067          	ret
    80003278:	0014d493          	srli	s1,s1,0x1
    8000327c:	ffffe097          	auipc	ra,0xffffe
    80003280:	5dc080e7          	jalr	1500(ra) # 80001858 <mycpu>
    80003284:	0014f493          	andi	s1,s1,1
    80003288:	06952e23          	sw	s1,124(a0)
    8000328c:	fc5ff06f          	j	80003250 <push_on+0x34>

0000000080003290 <pop_on>:
    80003290:	ff010113          	addi	sp,sp,-16
    80003294:	00813023          	sd	s0,0(sp)
    80003298:	00113423          	sd	ra,8(sp)
    8000329c:	01010413          	addi	s0,sp,16
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	5b8080e7          	jalr	1464(ra) # 80001858 <mycpu>
    800032a8:	100027f3          	csrr	a5,sstatus
    800032ac:	0027f793          	andi	a5,a5,2
    800032b0:	04078463          	beqz	a5,800032f8 <pop_on+0x68>
    800032b4:	07852783          	lw	a5,120(a0)
    800032b8:	02f05863          	blez	a5,800032e8 <pop_on+0x58>
    800032bc:	fff7879b          	addiw	a5,a5,-1
    800032c0:	06f52c23          	sw	a5,120(a0)
    800032c4:	07853783          	ld	a5,120(a0)
    800032c8:	00079863          	bnez	a5,800032d8 <pop_on+0x48>
    800032cc:	100027f3          	csrr	a5,sstatus
    800032d0:	ffd7f793          	andi	a5,a5,-3
    800032d4:	10079073          	csrw	sstatus,a5
    800032d8:	00813083          	ld	ra,8(sp)
    800032dc:	00013403          	ld	s0,0(sp)
    800032e0:	01010113          	addi	sp,sp,16
    800032e4:	00008067          	ret
    800032e8:	00001517          	auipc	a0,0x1
    800032ec:	f0050513          	addi	a0,a0,-256 # 800041e8 <digits+0x70>
    800032f0:	fffff097          	auipc	ra,0xfffff
    800032f4:	f2c080e7          	jalr	-212(ra) # 8000221c <panic>
    800032f8:	00001517          	auipc	a0,0x1
    800032fc:	ed050513          	addi	a0,a0,-304 # 800041c8 <digits+0x50>
    80003300:	fffff097          	auipc	ra,0xfffff
    80003304:	f1c080e7          	jalr	-228(ra) # 8000221c <panic>

0000000080003308 <__memset>:
    80003308:	ff010113          	addi	sp,sp,-16
    8000330c:	00813423          	sd	s0,8(sp)
    80003310:	01010413          	addi	s0,sp,16
    80003314:	1a060e63          	beqz	a2,800034d0 <__memset+0x1c8>
    80003318:	40a007b3          	neg	a5,a0
    8000331c:	0077f793          	andi	a5,a5,7
    80003320:	00778693          	addi	a3,a5,7
    80003324:	00b00813          	li	a6,11
    80003328:	0ff5f593          	andi	a1,a1,255
    8000332c:	fff6071b          	addiw	a4,a2,-1
    80003330:	1b06e663          	bltu	a3,a6,800034dc <__memset+0x1d4>
    80003334:	1cd76463          	bltu	a4,a3,800034fc <__memset+0x1f4>
    80003338:	1a078e63          	beqz	a5,800034f4 <__memset+0x1ec>
    8000333c:	00b50023          	sb	a1,0(a0)
    80003340:	00100713          	li	a4,1
    80003344:	1ae78463          	beq	a5,a4,800034ec <__memset+0x1e4>
    80003348:	00b500a3          	sb	a1,1(a0)
    8000334c:	00200713          	li	a4,2
    80003350:	1ae78a63          	beq	a5,a4,80003504 <__memset+0x1fc>
    80003354:	00b50123          	sb	a1,2(a0)
    80003358:	00300713          	li	a4,3
    8000335c:	18e78463          	beq	a5,a4,800034e4 <__memset+0x1dc>
    80003360:	00b501a3          	sb	a1,3(a0)
    80003364:	00400713          	li	a4,4
    80003368:	1ae78263          	beq	a5,a4,8000350c <__memset+0x204>
    8000336c:	00b50223          	sb	a1,4(a0)
    80003370:	00500713          	li	a4,5
    80003374:	1ae78063          	beq	a5,a4,80003514 <__memset+0x20c>
    80003378:	00b502a3          	sb	a1,5(a0)
    8000337c:	00700713          	li	a4,7
    80003380:	18e79e63          	bne	a5,a4,8000351c <__memset+0x214>
    80003384:	00b50323          	sb	a1,6(a0)
    80003388:	00700e93          	li	t4,7
    8000338c:	00859713          	slli	a4,a1,0x8
    80003390:	00e5e733          	or	a4,a1,a4
    80003394:	01059e13          	slli	t3,a1,0x10
    80003398:	01c76e33          	or	t3,a4,t3
    8000339c:	01859313          	slli	t1,a1,0x18
    800033a0:	006e6333          	or	t1,t3,t1
    800033a4:	02059893          	slli	a7,a1,0x20
    800033a8:	40f60e3b          	subw	t3,a2,a5
    800033ac:	011368b3          	or	a7,t1,a7
    800033b0:	02859813          	slli	a6,a1,0x28
    800033b4:	0108e833          	or	a6,a7,a6
    800033b8:	03059693          	slli	a3,a1,0x30
    800033bc:	003e589b          	srliw	a7,t3,0x3
    800033c0:	00d866b3          	or	a3,a6,a3
    800033c4:	03859713          	slli	a4,a1,0x38
    800033c8:	00389813          	slli	a6,a7,0x3
    800033cc:	00f507b3          	add	a5,a0,a5
    800033d0:	00e6e733          	or	a4,a3,a4
    800033d4:	000e089b          	sext.w	a7,t3
    800033d8:	00f806b3          	add	a3,a6,a5
    800033dc:	00e7b023          	sd	a4,0(a5)
    800033e0:	00878793          	addi	a5,a5,8
    800033e4:	fed79ce3          	bne	a5,a3,800033dc <__memset+0xd4>
    800033e8:	ff8e7793          	andi	a5,t3,-8
    800033ec:	0007871b          	sext.w	a4,a5
    800033f0:	01d787bb          	addw	a5,a5,t4
    800033f4:	0ce88e63          	beq	a7,a4,800034d0 <__memset+0x1c8>
    800033f8:	00f50733          	add	a4,a0,a5
    800033fc:	00b70023          	sb	a1,0(a4)
    80003400:	0017871b          	addiw	a4,a5,1
    80003404:	0cc77663          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    80003408:	00e50733          	add	a4,a0,a4
    8000340c:	00b70023          	sb	a1,0(a4)
    80003410:	0027871b          	addiw	a4,a5,2
    80003414:	0ac77e63          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    80003418:	00e50733          	add	a4,a0,a4
    8000341c:	00b70023          	sb	a1,0(a4)
    80003420:	0037871b          	addiw	a4,a5,3
    80003424:	0ac77663          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    80003428:	00e50733          	add	a4,a0,a4
    8000342c:	00b70023          	sb	a1,0(a4)
    80003430:	0047871b          	addiw	a4,a5,4
    80003434:	08c77e63          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    80003438:	00e50733          	add	a4,a0,a4
    8000343c:	00b70023          	sb	a1,0(a4)
    80003440:	0057871b          	addiw	a4,a5,5
    80003444:	08c77663          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    80003448:	00e50733          	add	a4,a0,a4
    8000344c:	00b70023          	sb	a1,0(a4)
    80003450:	0067871b          	addiw	a4,a5,6
    80003454:	06c77e63          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    80003458:	00e50733          	add	a4,a0,a4
    8000345c:	00b70023          	sb	a1,0(a4)
    80003460:	0077871b          	addiw	a4,a5,7
    80003464:	06c77663          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    80003468:	00e50733          	add	a4,a0,a4
    8000346c:	00b70023          	sb	a1,0(a4)
    80003470:	0087871b          	addiw	a4,a5,8
    80003474:	04c77e63          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    80003478:	00e50733          	add	a4,a0,a4
    8000347c:	00b70023          	sb	a1,0(a4)
    80003480:	0097871b          	addiw	a4,a5,9
    80003484:	04c77663          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    80003488:	00e50733          	add	a4,a0,a4
    8000348c:	00b70023          	sb	a1,0(a4)
    80003490:	00a7871b          	addiw	a4,a5,10
    80003494:	02c77e63          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    80003498:	00e50733          	add	a4,a0,a4
    8000349c:	00b70023          	sb	a1,0(a4)
    800034a0:	00b7871b          	addiw	a4,a5,11
    800034a4:	02c77663          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    800034a8:	00e50733          	add	a4,a0,a4
    800034ac:	00b70023          	sb	a1,0(a4)
    800034b0:	00c7871b          	addiw	a4,a5,12
    800034b4:	00c77e63          	bgeu	a4,a2,800034d0 <__memset+0x1c8>
    800034b8:	00e50733          	add	a4,a0,a4
    800034bc:	00b70023          	sb	a1,0(a4)
    800034c0:	00d7879b          	addiw	a5,a5,13
    800034c4:	00c7f663          	bgeu	a5,a2,800034d0 <__memset+0x1c8>
    800034c8:	00f507b3          	add	a5,a0,a5
    800034cc:	00b78023          	sb	a1,0(a5)
    800034d0:	00813403          	ld	s0,8(sp)
    800034d4:	01010113          	addi	sp,sp,16
    800034d8:	00008067          	ret
    800034dc:	00b00693          	li	a3,11
    800034e0:	e55ff06f          	j	80003334 <__memset+0x2c>
    800034e4:	00300e93          	li	t4,3
    800034e8:	ea5ff06f          	j	8000338c <__memset+0x84>
    800034ec:	00100e93          	li	t4,1
    800034f0:	e9dff06f          	j	8000338c <__memset+0x84>
    800034f4:	00000e93          	li	t4,0
    800034f8:	e95ff06f          	j	8000338c <__memset+0x84>
    800034fc:	00000793          	li	a5,0
    80003500:	ef9ff06f          	j	800033f8 <__memset+0xf0>
    80003504:	00200e93          	li	t4,2
    80003508:	e85ff06f          	j	8000338c <__memset+0x84>
    8000350c:	00400e93          	li	t4,4
    80003510:	e7dff06f          	j	8000338c <__memset+0x84>
    80003514:	00500e93          	li	t4,5
    80003518:	e75ff06f          	j	8000338c <__memset+0x84>
    8000351c:	00600e93          	li	t4,6
    80003520:	e6dff06f          	j	8000338c <__memset+0x84>

0000000080003524 <__memmove>:
    80003524:	ff010113          	addi	sp,sp,-16
    80003528:	00813423          	sd	s0,8(sp)
    8000352c:	01010413          	addi	s0,sp,16
    80003530:	0e060863          	beqz	a2,80003620 <__memmove+0xfc>
    80003534:	fff6069b          	addiw	a3,a2,-1
    80003538:	0006881b          	sext.w	a6,a3
    8000353c:	0ea5e863          	bltu	a1,a0,8000362c <__memmove+0x108>
    80003540:	00758713          	addi	a4,a1,7
    80003544:	00a5e7b3          	or	a5,a1,a0
    80003548:	40a70733          	sub	a4,a4,a0
    8000354c:	0077f793          	andi	a5,a5,7
    80003550:	00f73713          	sltiu	a4,a4,15
    80003554:	00174713          	xori	a4,a4,1
    80003558:	0017b793          	seqz	a5,a5
    8000355c:	00e7f7b3          	and	a5,a5,a4
    80003560:	10078863          	beqz	a5,80003670 <__memmove+0x14c>
    80003564:	00900793          	li	a5,9
    80003568:	1107f463          	bgeu	a5,a6,80003670 <__memmove+0x14c>
    8000356c:	0036581b          	srliw	a6,a2,0x3
    80003570:	fff8081b          	addiw	a6,a6,-1
    80003574:	02081813          	slli	a6,a6,0x20
    80003578:	01d85893          	srli	a7,a6,0x1d
    8000357c:	00858813          	addi	a6,a1,8
    80003580:	00058793          	mv	a5,a1
    80003584:	00050713          	mv	a4,a0
    80003588:	01088833          	add	a6,a7,a6
    8000358c:	0007b883          	ld	a7,0(a5)
    80003590:	00878793          	addi	a5,a5,8
    80003594:	00870713          	addi	a4,a4,8
    80003598:	ff173c23          	sd	a7,-8(a4)
    8000359c:	ff0798e3          	bne	a5,a6,8000358c <__memmove+0x68>
    800035a0:	ff867713          	andi	a4,a2,-8
    800035a4:	02071793          	slli	a5,a4,0x20
    800035a8:	0207d793          	srli	a5,a5,0x20
    800035ac:	00f585b3          	add	a1,a1,a5
    800035b0:	40e686bb          	subw	a3,a3,a4
    800035b4:	00f507b3          	add	a5,a0,a5
    800035b8:	06e60463          	beq	a2,a4,80003620 <__memmove+0xfc>
    800035bc:	0005c703          	lbu	a4,0(a1)
    800035c0:	00e78023          	sb	a4,0(a5)
    800035c4:	04068e63          	beqz	a3,80003620 <__memmove+0xfc>
    800035c8:	0015c603          	lbu	a2,1(a1)
    800035cc:	00100713          	li	a4,1
    800035d0:	00c780a3          	sb	a2,1(a5)
    800035d4:	04e68663          	beq	a3,a4,80003620 <__memmove+0xfc>
    800035d8:	0025c603          	lbu	a2,2(a1)
    800035dc:	00200713          	li	a4,2
    800035e0:	00c78123          	sb	a2,2(a5)
    800035e4:	02e68e63          	beq	a3,a4,80003620 <__memmove+0xfc>
    800035e8:	0035c603          	lbu	a2,3(a1)
    800035ec:	00300713          	li	a4,3
    800035f0:	00c781a3          	sb	a2,3(a5)
    800035f4:	02e68663          	beq	a3,a4,80003620 <__memmove+0xfc>
    800035f8:	0045c603          	lbu	a2,4(a1)
    800035fc:	00400713          	li	a4,4
    80003600:	00c78223          	sb	a2,4(a5)
    80003604:	00e68e63          	beq	a3,a4,80003620 <__memmove+0xfc>
    80003608:	0055c603          	lbu	a2,5(a1)
    8000360c:	00500713          	li	a4,5
    80003610:	00c782a3          	sb	a2,5(a5)
    80003614:	00e68663          	beq	a3,a4,80003620 <__memmove+0xfc>
    80003618:	0065c703          	lbu	a4,6(a1)
    8000361c:	00e78323          	sb	a4,6(a5)
    80003620:	00813403          	ld	s0,8(sp)
    80003624:	01010113          	addi	sp,sp,16
    80003628:	00008067          	ret
    8000362c:	02061713          	slli	a4,a2,0x20
    80003630:	02075713          	srli	a4,a4,0x20
    80003634:	00e587b3          	add	a5,a1,a4
    80003638:	f0f574e3          	bgeu	a0,a5,80003540 <__memmove+0x1c>
    8000363c:	02069613          	slli	a2,a3,0x20
    80003640:	02065613          	srli	a2,a2,0x20
    80003644:	fff64613          	not	a2,a2
    80003648:	00e50733          	add	a4,a0,a4
    8000364c:	00c78633          	add	a2,a5,a2
    80003650:	fff7c683          	lbu	a3,-1(a5)
    80003654:	fff78793          	addi	a5,a5,-1
    80003658:	fff70713          	addi	a4,a4,-1
    8000365c:	00d70023          	sb	a3,0(a4)
    80003660:	fec798e3          	bne	a5,a2,80003650 <__memmove+0x12c>
    80003664:	00813403          	ld	s0,8(sp)
    80003668:	01010113          	addi	sp,sp,16
    8000366c:	00008067          	ret
    80003670:	02069713          	slli	a4,a3,0x20
    80003674:	02075713          	srli	a4,a4,0x20
    80003678:	00170713          	addi	a4,a4,1
    8000367c:	00e50733          	add	a4,a0,a4
    80003680:	00050793          	mv	a5,a0
    80003684:	0005c683          	lbu	a3,0(a1)
    80003688:	00178793          	addi	a5,a5,1
    8000368c:	00158593          	addi	a1,a1,1
    80003690:	fed78fa3          	sb	a3,-1(a5)
    80003694:	fee798e3          	bne	a5,a4,80003684 <__memmove+0x160>
    80003698:	f89ff06f          	j	80003620 <__memmove+0xfc>

000000008000369c <__putc>:
    8000369c:	fe010113          	addi	sp,sp,-32
    800036a0:	00813823          	sd	s0,16(sp)
    800036a4:	00113c23          	sd	ra,24(sp)
    800036a8:	02010413          	addi	s0,sp,32
    800036ac:	00050793          	mv	a5,a0
    800036b0:	fef40593          	addi	a1,s0,-17
    800036b4:	00100613          	li	a2,1
    800036b8:	00000513          	li	a0,0
    800036bc:	fef407a3          	sb	a5,-17(s0)
    800036c0:	fffff097          	auipc	ra,0xfffff
    800036c4:	b3c080e7          	jalr	-1220(ra) # 800021fc <console_write>
    800036c8:	01813083          	ld	ra,24(sp)
    800036cc:	01013403          	ld	s0,16(sp)
    800036d0:	02010113          	addi	sp,sp,32
    800036d4:	00008067          	ret

00000000800036d8 <__getc>:
    800036d8:	fe010113          	addi	sp,sp,-32
    800036dc:	00813823          	sd	s0,16(sp)
    800036e0:	00113c23          	sd	ra,24(sp)
    800036e4:	02010413          	addi	s0,sp,32
    800036e8:	fe840593          	addi	a1,s0,-24
    800036ec:	00100613          	li	a2,1
    800036f0:	00000513          	li	a0,0
    800036f4:	fffff097          	auipc	ra,0xfffff
    800036f8:	ae8080e7          	jalr	-1304(ra) # 800021dc <console_read>
    800036fc:	fe844503          	lbu	a0,-24(s0)
    80003700:	01813083          	ld	ra,24(sp)
    80003704:	01013403          	ld	s0,16(sp)
    80003708:	02010113          	addi	sp,sp,32
    8000370c:	00008067          	ret

0000000080003710 <console_handler>:
    80003710:	fe010113          	addi	sp,sp,-32
    80003714:	00813823          	sd	s0,16(sp)
    80003718:	00113c23          	sd	ra,24(sp)
    8000371c:	00913423          	sd	s1,8(sp)
    80003720:	02010413          	addi	s0,sp,32
    80003724:	14202773          	csrr	a4,scause
    80003728:	100027f3          	csrr	a5,sstatus
    8000372c:	0027f793          	andi	a5,a5,2
    80003730:	06079e63          	bnez	a5,800037ac <console_handler+0x9c>
    80003734:	00074c63          	bltz	a4,8000374c <console_handler+0x3c>
    80003738:	01813083          	ld	ra,24(sp)
    8000373c:	01013403          	ld	s0,16(sp)
    80003740:	00813483          	ld	s1,8(sp)
    80003744:	02010113          	addi	sp,sp,32
    80003748:	00008067          	ret
    8000374c:	0ff77713          	andi	a4,a4,255
    80003750:	00900793          	li	a5,9
    80003754:	fef712e3          	bne	a4,a5,80003738 <console_handler+0x28>
    80003758:	ffffe097          	auipc	ra,0xffffe
    8000375c:	6dc080e7          	jalr	1756(ra) # 80001e34 <plic_claim>
    80003760:	00a00793          	li	a5,10
    80003764:	00050493          	mv	s1,a0
    80003768:	02f50c63          	beq	a0,a5,800037a0 <console_handler+0x90>
    8000376c:	fc0506e3          	beqz	a0,80003738 <console_handler+0x28>
    80003770:	00050593          	mv	a1,a0
    80003774:	00001517          	auipc	a0,0x1
    80003778:	97c50513          	addi	a0,a0,-1668 # 800040f0 <CONSOLE_STATUS+0xe0>
    8000377c:	fffff097          	auipc	ra,0xfffff
    80003780:	afc080e7          	jalr	-1284(ra) # 80002278 <__printf>
    80003784:	01013403          	ld	s0,16(sp)
    80003788:	01813083          	ld	ra,24(sp)
    8000378c:	00048513          	mv	a0,s1
    80003790:	00813483          	ld	s1,8(sp)
    80003794:	02010113          	addi	sp,sp,32
    80003798:	ffffe317          	auipc	t1,0xffffe
    8000379c:	6d430067          	jr	1748(t1) # 80001e6c <plic_complete>
    800037a0:	fffff097          	auipc	ra,0xfffff
    800037a4:	3e0080e7          	jalr	992(ra) # 80002b80 <uartintr>
    800037a8:	fddff06f          	j	80003784 <console_handler+0x74>
    800037ac:	00001517          	auipc	a0,0x1
    800037b0:	a4450513          	addi	a0,a0,-1468 # 800041f0 <digits+0x78>
    800037b4:	fffff097          	auipc	ra,0xfffff
    800037b8:	a68080e7          	jalr	-1432(ra) # 8000221c <panic>
	...
