
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	3b013103          	ld	sp,944(sp) # 800043b0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5a4010ef          	jal	ra,800015c0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <interruptHandler>:
#.extern interruptRoutine
# SKINI KOMENTAREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
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

    #call interruptRoutine

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
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
    800010ac:	05013503          	ld	a0,80(sp)
    800010b0:	05813583          	ld	a1,88(sp)
    800010b4:	06013603          	ld	a2,96(sp)
    800010b8:	06813683          	ld	a3,104(sp)
    800010bc:	07013703          	ld	a4,112(sp)
    800010c0:	07813783          	ld	a5,120(sp)
    800010c4:	08013803          	ld	a6,128(sp)
    800010c8:	08813883          	ld	a7,136(sp)
    800010cc:	09013903          	ld	s2,144(sp)
    800010d0:	09813983          	ld	s3,152(sp)
    800010d4:	0a013a03          	ld	s4,160(sp)
    800010d8:	0a813a83          	ld	s5,168(sp)
    800010dc:	0b013b03          	ld	s6,176(sp)
    800010e0:	0b813b83          	ld	s7,184(sp)
    800010e4:	0c013c03          	ld	s8,192(sp)
    800010e8:	0c813c83          	ld	s9,200(sp)
    800010ec:	0d013d03          	ld	s10,208(sp)
    800010f0:	0d813d83          	ld	s11,216(sp)
    800010f4:	0e013e03          	ld	t3,224(sp)
    800010f8:	0e813e83          	ld	t4,232(sp)
    800010fc:	0f013f03          	ld	t5,240(sp)
    80001100:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001104:	10010113          	addi	sp,sp,256

    80001108:	10200073          	sret
	...

0000000080001114 <ContextSwitchFunction>:
.global ContextSwitchFunction
.type ContextSwitchFunction, @function
ContextSwitchFunction:
	sd ra, 0 * 8(a0)
    80001114:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
	sd sp, 1 * 8(a0)
    80001118:	00253423          	sd	sp,8(a0)

	ld ra, 0 * 8(a1)
    8000111c:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001120:	0085b103          	ld	sp,8(a1)

    80001124:	00008067          	ret

0000000080001128 <main>:
#include "../lib/console.h"
#include "../h/memoryAllocator.h"

int main() {
    80001128:	ff010113          	addi	sp,sp,-16
    8000112c:	00113423          	sd	ra,8(sp)
    80001130:	00813023          	sd	s0,0(sp)
    80001134:	01010413          	addi	s0,sp,16
    __putc('?');
    80001138:	03f00513          	li	a0,63
    8000113c:	00002097          	auipc	ra,0x2
    80001140:	540080e7          	jalr	1344(ra) # 8000367c <__putc>
    __putc('\n');
    80001144:	00a00513          	li	a0,10
    80001148:	00002097          	auipc	ra,0x2
    8000114c:	534080e7          	jalr	1332(ra) # 8000367c <__putc>
    MemoryAllocator::getInstance();
    80001150:	00000097          	auipc	ra,0x0
    80001154:	1b4080e7          	jalr	436(ra) # 80001304 <_ZN15MemoryAllocator11getInstanceEv>
    MemoryAllocator::mem_alloc(1);
    80001158:	00100513          	li	a0,1
    8000115c:	00000097          	auipc	ra,0x0
    80001160:	088080e7          	jalr	136(ra) # 800011e4 <_ZN15MemoryAllocator9mem_allocEm>
    MemoryAllocator::print();
    80001164:	00000097          	auipc	ra,0x0
    80001168:	3dc080e7          	jalr	988(ra) # 80001540 <_ZN15MemoryAllocator5printEv>
    MemoryAllocator::mem_free((void*)(1 * MEM_BLOCK_SIZE + sizeof(MemoryAllocator::MemSeg) + (char*)HEAP_START_ADDR));
    8000116c:	00003797          	auipc	a5,0x3
    80001170:	23c7b783          	ld	a5,572(a5) # 800043a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001174:	0007b503          	ld	a0,0(a5)
    80001178:	05850513          	addi	a0,a0,88
    8000117c:	00000097          	auipc	ra,0x0
    80001180:	258080e7          	jalr	600(ra) # 800013d4 <_ZN15MemoryAllocator8mem_freeEPv>
    MemoryAllocator::print();
    80001184:	00000097          	auipc	ra,0x0
    80001188:	3bc080e7          	jalr	956(ra) # 80001540 <_ZN15MemoryAllocator5printEv>
    return 0;
    8000118c:	00000513          	li	a0,0
    80001190:	00813083          	ld	ra,8(sp)
    80001194:	00013403          	ld	s0,0(sp)
    80001198:	01010113          	addi	sp,sp,16
    8000119c:	00008067          	ret

00000000800011a0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
    }
    return instance;
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    800011a0:	ff010113          	addi	sp,sp,-16
    800011a4:	00813423          	sd	s0,8(sp)
    800011a8:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    800011ac:	00853783          	ld	a5,8(a0)
    800011b0:	02078463          	beqz	a5,800011d8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    800011b4:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    800011b8:	01053783          	ld	a5,16(a0)
    800011bc:	00078863          	beqz	a5,800011cc <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    800011c0:	00060463          	beqz	a2,800011c8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    800011c4:	00853583          	ld	a1,8(a0)
    800011c8:	00b7b423          	sd	a1,8(a5)
}
    800011cc:	00813403          	ld	s0,8(sp)
    800011d0:	01010113          	addi	sp,sp,16
    800011d4:	00008067          	ret
    else freeSegHead = nextSeg;
    800011d8:	00003797          	auipc	a5,0x3
    800011dc:	22b7b423          	sd	a1,552(a5) # 80004400 <_ZN15MemoryAllocator11freeSegHeadE>
    800011e0:	fd9ff06f          	j	800011b8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

00000000800011e4 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` bytes, but round up to MEM_BLOCK_SIZE
void *MemoryAllocator::mem_alloc(size_t size) {
    800011e4:	fe010113          	addi	sp,sp,-32
    800011e8:	00113c23          	sd	ra,24(sp)
    800011ec:	00813823          	sd	s0,16(sp)
    800011f0:	00913423          	sd	s1,8(sp)
    800011f4:	01213023          	sd	s2,0(sp)
    800011f8:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800011fc:	10050063          	beqz	a0,800012fc <_ZN15MemoryAllocator9mem_allocEm+0x118>
    size_t bytesToAllocate = (size + sizeof(MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80001200:	05750513          	addi	a0,a0,87
    80001204:	fc057913          	andi	s2,a0,-64
    MemSeg *tmp = freeSegHead;
    80001208:	00003497          	auipc	s1,0x3
    8000120c:	1f84b483          	ld	s1,504(s1) # 80004400 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80001210:	0a048e63          	beqz	s1,800012cc <_ZN15MemoryAllocator9mem_allocEm+0xe8>
        if (tmp -> size < bytesToAllocate) {
    80001214:	0004b783          	ld	a5,0(s1)
    80001218:	0527e463          	bltu	a5,s2,80001260 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    8000121c:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    80001220:	01700713          	li	a4,23
    80001224:	04f76263          	bltu	a4,a5,80001268 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80001228:	00000613          	li	a2,0
    8000122c:	0104b583          	ld	a1,16(s1)
    80001230:	00048513          	mv	a0,s1
    80001234:	00000097          	auipc	ra,0x0
    80001238:	f6c080e7          	jalr	-148(ra) # 800011a0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    8000123c:	00003797          	auipc	a5,0x3
    80001240:	1cc7b783          	ld	a5,460(a5) # 80004408 <_ZN15MemoryAllocator11usedSegHeadE>
    80001244:	04078863          	beqz	a5,80001294 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    80001248:	0497fa63          	bgeu	a5,s1,8000129c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    8000124c:	00078713          	mv	a4,a5
    80001250:	0107b783          	ld	a5,16(a5)
    80001254:	04078663          	beqz	a5,800012a0 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    80001258:	fe97eae3          	bltu	a5,s1,8000124c <_ZN15MemoryAllocator9mem_allocEm+0x68>
    8000125c:	0440006f          	j	800012a0 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            tmp = tmp -> next;
    80001260:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80001264:	fadff06f          	j	80001210 <_ZN15MemoryAllocator9mem_allocEm+0x2c>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80001268:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    8000126c:	0084b703          	ld	a4,8(s1)
    80001270:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80001274:	0104b703          	ld	a4,16(s1)
    80001278:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    8000127c:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80001280:	00100613          	li	a2,1
    80001284:	00048513          	mv	a0,s1
    80001288:	00000097          	auipc	ra,0x0
    8000128c:	f18080e7          	jalr	-232(ra) # 800011a0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80001290:	fadff06f          	j	8000123c <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = 0;
    80001294:	00078713          	mv	a4,a5
    80001298:	0080006f          	j	800012a0 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    8000129c:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    800012a0:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    800012a4:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800012a8:	04070063          	beqz	a4,800012e8 <_ZN15MemoryAllocator9mem_allocEm+0x104>
    800012ac:	01073783          	ld	a5,16(a4)
    800012b0:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    800012b4:	02070e63          	beqz	a4,800012f0 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    800012b8:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    800012bc:	0104b783          	ld	a5,16(s1)
    800012c0:	00078463          	beqz	a5,800012c8 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
    800012c4:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    800012c8:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    800012cc:	00048513          	mv	a0,s1
    800012d0:	01813083          	ld	ra,24(sp)
    800012d4:	01013403          	ld	s0,16(sp)
    800012d8:	00813483          	ld	s1,8(sp)
    800012dc:	00013903          	ld	s2,0(sp)
    800012e0:	02010113          	addi	sp,sp,32
    800012e4:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800012e8:	00070793          	mv	a5,a4
    800012ec:	fc5ff06f          	j	800012b0 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
        else usedSegHead = newUsed;
    800012f0:	00003797          	auipc	a5,0x3
    800012f4:	1097bc23          	sd	s1,280(a5) # 80004408 <_ZN15MemoryAllocator11usedSegHeadE>
    800012f8:	fc5ff06f          	j	800012bc <_ZN15MemoryAllocator9mem_allocEm+0xd8>
    if (size <= 0) return nullptr;
    800012fc:	00000493          	li	s1,0
    80001300:	fcdff06f          	j	800012cc <_ZN15MemoryAllocator9mem_allocEm+0xe8>

0000000080001304 <_ZN15MemoryAllocator11getInstanceEv>:
    if (!instance) {
    80001304:	00003517          	auipc	a0,0x3
    80001308:	10c53503          	ld	a0,268(a0) # 80004410 <_ZN15MemoryAllocator8instanceE>
    8000130c:	00050463          	beqz	a0,80001314 <_ZN15MemoryAllocator11getInstanceEv+0x10>
}
    80001310:	00008067          	ret
MemoryAllocator* MemoryAllocator::getInstance() {
    80001314:	fe010113          	addi	sp,sp,-32
    80001318:	00113c23          	sd	ra,24(sp)
    8000131c:	00813823          	sd	s0,16(sp)
    80001320:	00913423          	sd	s1,8(sp)
    80001324:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80001328:	00003797          	auipc	a5,0x3
    8000132c:	0807b783          	ld	a5,128(a5) # 800043a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001330:	0007b783          	ld	a5,0(a5)
    80001334:	00003497          	auipc	s1,0x3
    80001338:	0cc48493          	addi	s1,s1,204 # 80004400 <_ZN15MemoryAllocator11freeSegHeadE>
    8000133c:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80001340:	00003717          	auipc	a4,0x3
    80001344:	07873703          	ld	a4,120(a4) # 800043b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001348:	00073703          	ld	a4,0(a4)
    8000134c:	40f70733          	sub	a4,a4,a5
    80001350:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80001354:	0004b783          	ld	a5,0(s1)
    80001358:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    8000135c:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80001360:	00100513          	li	a0,1
    80001364:	00000097          	auipc	ra,0x0
    80001368:	e80080e7          	jalr	-384(ra) # 800011e4 <_ZN15MemoryAllocator9mem_allocEm>
    8000136c:	00a4b823          	sd	a0,16(s1)
}
    80001370:	01813083          	ld	ra,24(sp)
    80001374:	01013403          	ld	s0,16(sp)
    80001378:	00813483          	ld	s1,8(sp)
    8000137c:	02010113          	addi	sp,sp,32
    80001380:	00008067          	ret

0000000080001384 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80001384:	ff010113          	addi	sp,sp,-16
    80001388:	00813423          	sd	s0,8(sp)
    8000138c:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80001390:	01053783          	ld	a5,16(a0)
    80001394:	00078863          	beqz	a5,800013a4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80001398:	00053703          	ld	a4,0(a0)
    8000139c:	00e506b3          	add	a3,a0,a4
    800013a0:	00d78863          	beq	a5,a3,800013b0 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    800013a4:	00813403          	ld	s0,8(sp)
    800013a8:	01010113          	addi	sp,sp,16
    800013ac:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    800013b0:	0007b683          	ld	a3,0(a5)
    800013b4:	00d70733          	add	a4,a4,a3
    800013b8:	01870713          	addi	a4,a4,24
    800013bc:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    800013c0:	0107b783          	ld	a5,16(a5)
    800013c4:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    800013c8:	fc078ee3          	beqz	a5,800013a4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800013cc:	00a7b423          	sd	a0,8(a5)
}
    800013d0:	fd5ff06f          	j	800013a4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

00000000800013d4 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800013d4:	14050263          	beqz	a0,80001518 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    800013d8:	fd010113          	addi	sp,sp,-48
    800013dc:	02113423          	sd	ra,40(sp)
    800013e0:	02813023          	sd	s0,32(sp)
    800013e4:	00913c23          	sd	s1,24(sp)
    800013e8:	01213823          	sd	s2,16(sp)
    800013ec:	01313423          	sd	s3,8(sp)
    800013f0:	03010413          	addi	s0,sp,48
    800013f4:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800013f8:	00003797          	auipc	a5,0x3
    800013fc:	fb07b783          	ld	a5,-80(a5) # 800043a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001400:	0007b783          	ld	a5,0(a5)
    80001404:	10f56e63          	bltu	a0,a5,80001520 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    80001408:	00003797          	auipc	a5,0x3
    8000140c:	fb07b783          	ld	a5,-80(a5) # 800043b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001410:	0007b783          	ld	a5,0(a5)
    80001414:	10a7ea63          	bltu	a5,a0,80001528 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    80001418:	00003797          	auipc	a5,0x3
    8000141c:	ff07b783          	ld	a5,-16(a5) # 80004408 <_ZN15MemoryAllocator11usedSegHeadE>
    80001420:	10078863          	beqz	a5,80001530 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80001424:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001428:	00078863          	beqz	a5,80001438 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    8000142c:	08978e63          	beq	a5,s1,800014c8 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001430:	0107b783          	ld	a5,16(a5)
    80001434:	ff5ff06f          	j	80001428 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80001438:	00000793          	li	a5,0
    if (!found) return -3;
    8000143c:	0e078e63          	beqz	a5,80001538 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    80001440:	00000613          	li	a2,0
    80001444:	ff893583          	ld	a1,-8(s2)
    80001448:	00048513          	mv	a0,s1
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	d54080e7          	jalr	-684(ra) # 800011a0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    80001454:	00003797          	auipc	a5,0x3
    80001458:	fac7b783          	ld	a5,-84(a5) # 80004400 <_ZN15MemoryAllocator11freeSegHeadE>
    8000145c:	06078a63          	beqz	a5,800014d0 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80001460:	08f4e463          	bltu	s1,a5,800014e8 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80001464:	00078993          	mv	s3,a5
    80001468:	0107b783          	ld	a5,16(a5)
    8000146c:	00078463          	beqz	a5,80001474 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80001470:	fe97eae3          	bltu	a5,s1,80001464 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80001474:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80001478:	0109b783          	ld	a5,16(s3)
    8000147c:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80001480:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80001484:	ff893783          	ld	a5,-8(s2)
    80001488:	00078463          	beqz	a5,80001490 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    8000148c:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80001490:	00048513          	mv	a0,s1
    80001494:	00000097          	auipc	ra,0x0
    80001498:	ef0080e7          	jalr	-272(ra) # 80001384 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    8000149c:	00098513          	mv	a0,s3
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	ee4080e7          	jalr	-284(ra) # 80001384 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800014a8:	00000513          	li	a0,0
}
    800014ac:	02813083          	ld	ra,40(sp)
    800014b0:	02013403          	ld	s0,32(sp)
    800014b4:	01813483          	ld	s1,24(sp)
    800014b8:	01013903          	ld	s2,16(sp)
    800014bc:	00813983          	ld	s3,8(sp)
    800014c0:	03010113          	addi	sp,sp,48
    800014c4:	00008067          	ret
            found = true;
    800014c8:	00100793          	li	a5,1
    800014cc:	f71ff06f          	j	8000143c <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    800014d0:	00003797          	auipc	a5,0x3
    800014d4:	f297b823          	sd	s1,-208(a5) # 80004400 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    800014d8:	fe093c23          	sd	zero,-8(s2)
    800014dc:	fe093823          	sd	zero,-16(s2)
    return 0;
    800014e0:	00000513          	li	a0,0
    800014e4:	fc9ff06f          	j	800014ac <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    800014e8:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    800014ec:	00003797          	auipc	a5,0x3
    800014f0:	f1478793          	addi	a5,a5,-236 # 80004400 <_ZN15MemoryAllocator11freeSegHeadE>
    800014f4:	0007b703          	ld	a4,0(a5)
    800014f8:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800014fc:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80001500:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80001504:	00048513          	mv	a0,s1
    80001508:	00000097          	auipc	ra,0x0
    8000150c:	e7c080e7          	jalr	-388(ra) # 80001384 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001510:	00000513          	li	a0,0
    80001514:	f99ff06f          	j	800014ac <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001518:	fff00513          	li	a0,-1
}
    8000151c:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001520:	fff00513          	li	a0,-1
    80001524:	f89ff06f          	j	800014ac <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80001528:	fff00513          	li	a0,-1
    8000152c:	f81ff06f          	j	800014ac <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    80001530:	ffe00513          	li	a0,-2
    80001534:	f79ff06f          	j	800014ac <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    80001538:	ffd00513          	li	a0,-3
    8000153c:	f71ff06f          	j	800014ac <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

0000000080001540 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80001540:	fe010113          	addi	sp,sp,-32
    80001544:	00113c23          	sd	ra,24(sp)
    80001548:	00813823          	sd	s0,16(sp)
    8000154c:	00913423          	sd	s1,8(sp)
    80001550:	02010413          	addi	s0,sp,32
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80001554:	00003497          	auipc	s1,0x3
    80001558:	eac4b483          	ld	s1,-340(s1) # 80004400 <_ZN15MemoryAllocator11freeSegHeadE>
    8000155c:	00048c63          	beqz	s1,80001574 <_ZN15MemoryAllocator5printEv+0x34>
    80001560:	06600513          	li	a0,102
    80001564:	00002097          	auipc	ra,0x2
    80001568:	118080e7          	jalr	280(ra) # 8000367c <__putc>
    8000156c:	0104b483          	ld	s1,16(s1)
    80001570:	fedff06f          	j	8000155c <_ZN15MemoryAllocator5printEv+0x1c>
    __putc('\n');
    80001574:	00a00513          	li	a0,10
    80001578:	00002097          	auipc	ra,0x2
    8000157c:	104080e7          	jalr	260(ra) # 8000367c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80001580:	00003497          	auipc	s1,0x3
    80001584:	e884b483          	ld	s1,-376(s1) # 80004408 <_ZN15MemoryAllocator11usedSegHeadE>
    80001588:	00048c63          	beqz	s1,800015a0 <_ZN15MemoryAllocator5printEv+0x60>
    8000158c:	07500513          	li	a0,117
    80001590:	00002097          	auipc	ra,0x2
    80001594:	0ec080e7          	jalr	236(ra) # 8000367c <__putc>
    80001598:	0104b483          	ld	s1,16(s1)
    8000159c:	fedff06f          	j	80001588 <_ZN15MemoryAllocator5printEv+0x48>
    __putc('\n');
    800015a0:	00a00513          	li	a0,10
    800015a4:	00002097          	auipc	ra,0x2
    800015a8:	0d8080e7          	jalr	216(ra) # 8000367c <__putc>
}
    800015ac:	01813083          	ld	ra,24(sp)
    800015b0:	01013403          	ld	s0,16(sp)
    800015b4:	00813483          	ld	s1,8(sp)
    800015b8:	02010113          	addi	sp,sp,32
    800015bc:	00008067          	ret

00000000800015c0 <start>:
    800015c0:	ff010113          	addi	sp,sp,-16
    800015c4:	00813423          	sd	s0,8(sp)
    800015c8:	01010413          	addi	s0,sp,16
    800015cc:	300027f3          	csrr	a5,mstatus
    800015d0:	ffffe737          	lui	a4,0xffffe
    800015d4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff918f>
    800015d8:	00e7f7b3          	and	a5,a5,a4
    800015dc:	00001737          	lui	a4,0x1
    800015e0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800015e4:	00e7e7b3          	or	a5,a5,a4
    800015e8:	30079073          	csrw	mstatus,a5
    800015ec:	00000797          	auipc	a5,0x0
    800015f0:	16078793          	addi	a5,a5,352 # 8000174c <system_main>
    800015f4:	34179073          	csrw	mepc,a5
    800015f8:	00000793          	li	a5,0
    800015fc:	18079073          	csrw	satp,a5
    80001600:	000107b7          	lui	a5,0x10
    80001604:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001608:	30279073          	csrw	medeleg,a5
    8000160c:	30379073          	csrw	mideleg,a5
    80001610:	104027f3          	csrr	a5,sie
    80001614:	2227e793          	ori	a5,a5,546
    80001618:	10479073          	csrw	sie,a5
    8000161c:	fff00793          	li	a5,-1
    80001620:	00a7d793          	srli	a5,a5,0xa
    80001624:	3b079073          	csrw	pmpaddr0,a5
    80001628:	00f00793          	li	a5,15
    8000162c:	3a079073          	csrw	pmpcfg0,a5
    80001630:	f14027f3          	csrr	a5,mhartid
    80001634:	0200c737          	lui	a4,0x200c
    80001638:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000163c:	0007869b          	sext.w	a3,a5
    80001640:	00269713          	slli	a4,a3,0x2
    80001644:	000f4637          	lui	a2,0xf4
    80001648:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000164c:	00d70733          	add	a4,a4,a3
    80001650:	0037979b          	slliw	a5,a5,0x3
    80001654:	020046b7          	lui	a3,0x2004
    80001658:	00d787b3          	add	a5,a5,a3
    8000165c:	00c585b3          	add	a1,a1,a2
    80001660:	00371693          	slli	a3,a4,0x3
    80001664:	00003717          	auipc	a4,0x3
    80001668:	dbc70713          	addi	a4,a4,-580 # 80004420 <timer_scratch>
    8000166c:	00b7b023          	sd	a1,0(a5)
    80001670:	00d70733          	add	a4,a4,a3
    80001674:	00f73c23          	sd	a5,24(a4)
    80001678:	02c73023          	sd	a2,32(a4)
    8000167c:	34071073          	csrw	mscratch,a4
    80001680:	00000797          	auipc	a5,0x0
    80001684:	6e078793          	addi	a5,a5,1760 # 80001d60 <timervec>
    80001688:	30579073          	csrw	mtvec,a5
    8000168c:	300027f3          	csrr	a5,mstatus
    80001690:	0087e793          	ori	a5,a5,8
    80001694:	30079073          	csrw	mstatus,a5
    80001698:	304027f3          	csrr	a5,mie
    8000169c:	0807e793          	ori	a5,a5,128
    800016a0:	30479073          	csrw	mie,a5
    800016a4:	f14027f3          	csrr	a5,mhartid
    800016a8:	0007879b          	sext.w	a5,a5
    800016ac:	00078213          	mv	tp,a5
    800016b0:	30200073          	mret
    800016b4:	00813403          	ld	s0,8(sp)
    800016b8:	01010113          	addi	sp,sp,16
    800016bc:	00008067          	ret

00000000800016c0 <timerinit>:
    800016c0:	ff010113          	addi	sp,sp,-16
    800016c4:	00813423          	sd	s0,8(sp)
    800016c8:	01010413          	addi	s0,sp,16
    800016cc:	f14027f3          	csrr	a5,mhartid
    800016d0:	0200c737          	lui	a4,0x200c
    800016d4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800016d8:	0007869b          	sext.w	a3,a5
    800016dc:	00269713          	slli	a4,a3,0x2
    800016e0:	000f4637          	lui	a2,0xf4
    800016e4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800016e8:	00d70733          	add	a4,a4,a3
    800016ec:	0037979b          	slliw	a5,a5,0x3
    800016f0:	020046b7          	lui	a3,0x2004
    800016f4:	00d787b3          	add	a5,a5,a3
    800016f8:	00c585b3          	add	a1,a1,a2
    800016fc:	00371693          	slli	a3,a4,0x3
    80001700:	00003717          	auipc	a4,0x3
    80001704:	d2070713          	addi	a4,a4,-736 # 80004420 <timer_scratch>
    80001708:	00b7b023          	sd	a1,0(a5)
    8000170c:	00d70733          	add	a4,a4,a3
    80001710:	00f73c23          	sd	a5,24(a4)
    80001714:	02c73023          	sd	a2,32(a4)
    80001718:	34071073          	csrw	mscratch,a4
    8000171c:	00000797          	auipc	a5,0x0
    80001720:	64478793          	addi	a5,a5,1604 # 80001d60 <timervec>
    80001724:	30579073          	csrw	mtvec,a5
    80001728:	300027f3          	csrr	a5,mstatus
    8000172c:	0087e793          	ori	a5,a5,8
    80001730:	30079073          	csrw	mstatus,a5
    80001734:	304027f3          	csrr	a5,mie
    80001738:	0807e793          	ori	a5,a5,128
    8000173c:	30479073          	csrw	mie,a5
    80001740:	00813403          	ld	s0,8(sp)
    80001744:	01010113          	addi	sp,sp,16
    80001748:	00008067          	ret

000000008000174c <system_main>:
    8000174c:	fe010113          	addi	sp,sp,-32
    80001750:	00813823          	sd	s0,16(sp)
    80001754:	00913423          	sd	s1,8(sp)
    80001758:	00113c23          	sd	ra,24(sp)
    8000175c:	02010413          	addi	s0,sp,32
    80001760:	00000097          	auipc	ra,0x0
    80001764:	0c4080e7          	jalr	196(ra) # 80001824 <cpuid>
    80001768:	00003497          	auipc	s1,0x3
    8000176c:	c6848493          	addi	s1,s1,-920 # 800043d0 <started>
    80001770:	02050263          	beqz	a0,80001794 <system_main+0x48>
    80001774:	0004a783          	lw	a5,0(s1)
    80001778:	0007879b          	sext.w	a5,a5
    8000177c:	fe078ce3          	beqz	a5,80001774 <system_main+0x28>
    80001780:	0ff0000f          	fence
    80001784:	00003517          	auipc	a0,0x3
    80001788:	8cc50513          	addi	a0,a0,-1844 # 80004050 <CONSOLE_STATUS+0x40>
    8000178c:	00001097          	auipc	ra,0x1
    80001790:	a70080e7          	jalr	-1424(ra) # 800021fc <panic>
    80001794:	00001097          	auipc	ra,0x1
    80001798:	9c4080e7          	jalr	-1596(ra) # 80002158 <consoleinit>
    8000179c:	00001097          	auipc	ra,0x1
    800017a0:	150080e7          	jalr	336(ra) # 800028ec <printfinit>
    800017a4:	00003517          	auipc	a0,0x3
    800017a8:	98c50513          	addi	a0,a0,-1652 # 80004130 <CONSOLE_STATUS+0x120>
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	aac080e7          	jalr	-1364(ra) # 80002258 <__printf>
    800017b4:	00003517          	auipc	a0,0x3
    800017b8:	86c50513          	addi	a0,a0,-1940 # 80004020 <CONSOLE_STATUS+0x10>
    800017bc:	00001097          	auipc	ra,0x1
    800017c0:	a9c080e7          	jalr	-1380(ra) # 80002258 <__printf>
    800017c4:	00003517          	auipc	a0,0x3
    800017c8:	96c50513          	addi	a0,a0,-1684 # 80004130 <CONSOLE_STATUS+0x120>
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	a8c080e7          	jalr	-1396(ra) # 80002258 <__printf>
    800017d4:	00001097          	auipc	ra,0x1
    800017d8:	4a4080e7          	jalr	1188(ra) # 80002c78 <kinit>
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	148080e7          	jalr	328(ra) # 80001924 <trapinit>
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	16c080e7          	jalr	364(ra) # 80001950 <trapinithart>
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	5b4080e7          	jalr	1460(ra) # 80001da0 <plicinit>
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	5d4080e7          	jalr	1492(ra) # 80001dc8 <plicinithart>
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	078080e7          	jalr	120(ra) # 80001874 <userinit>
    80001804:	0ff0000f          	fence
    80001808:	00100793          	li	a5,1
    8000180c:	00003517          	auipc	a0,0x3
    80001810:	82c50513          	addi	a0,a0,-2004 # 80004038 <CONSOLE_STATUS+0x28>
    80001814:	00f4a023          	sw	a5,0(s1)
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	a40080e7          	jalr	-1472(ra) # 80002258 <__printf>
    80001820:	0000006f          	j	80001820 <system_main+0xd4>

0000000080001824 <cpuid>:
    80001824:	ff010113          	addi	sp,sp,-16
    80001828:	00813423          	sd	s0,8(sp)
    8000182c:	01010413          	addi	s0,sp,16
    80001830:	00020513          	mv	a0,tp
    80001834:	00813403          	ld	s0,8(sp)
    80001838:	0005051b          	sext.w	a0,a0
    8000183c:	01010113          	addi	sp,sp,16
    80001840:	00008067          	ret

0000000080001844 <mycpu>:
    80001844:	ff010113          	addi	sp,sp,-16
    80001848:	00813423          	sd	s0,8(sp)
    8000184c:	01010413          	addi	s0,sp,16
    80001850:	00020793          	mv	a5,tp
    80001854:	00813403          	ld	s0,8(sp)
    80001858:	0007879b          	sext.w	a5,a5
    8000185c:	00779793          	slli	a5,a5,0x7
    80001860:	00004517          	auipc	a0,0x4
    80001864:	bf050513          	addi	a0,a0,-1040 # 80005450 <cpus>
    80001868:	00f50533          	add	a0,a0,a5
    8000186c:	01010113          	addi	sp,sp,16
    80001870:	00008067          	ret

0000000080001874 <userinit>:
    80001874:	ff010113          	addi	sp,sp,-16
    80001878:	00813423          	sd	s0,8(sp)
    8000187c:	01010413          	addi	s0,sp,16
    80001880:	00813403          	ld	s0,8(sp)
    80001884:	01010113          	addi	sp,sp,16
    80001888:	00000317          	auipc	t1,0x0
    8000188c:	8a030067          	jr	-1888(t1) # 80001128 <main>

0000000080001890 <either_copyout>:
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00813023          	sd	s0,0(sp)
    80001898:	00113423          	sd	ra,8(sp)
    8000189c:	01010413          	addi	s0,sp,16
    800018a0:	02051663          	bnez	a0,800018cc <either_copyout+0x3c>
    800018a4:	00058513          	mv	a0,a1
    800018a8:	00060593          	mv	a1,a2
    800018ac:	0006861b          	sext.w	a2,a3
    800018b0:	00002097          	auipc	ra,0x2
    800018b4:	c54080e7          	jalr	-940(ra) # 80003504 <__memmove>
    800018b8:	00813083          	ld	ra,8(sp)
    800018bc:	00013403          	ld	s0,0(sp)
    800018c0:	00000513          	li	a0,0
    800018c4:	01010113          	addi	sp,sp,16
    800018c8:	00008067          	ret
    800018cc:	00002517          	auipc	a0,0x2
    800018d0:	7ac50513          	addi	a0,a0,1964 # 80004078 <CONSOLE_STATUS+0x68>
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	928080e7          	jalr	-1752(ra) # 800021fc <panic>

00000000800018dc <either_copyin>:
    800018dc:	ff010113          	addi	sp,sp,-16
    800018e0:	00813023          	sd	s0,0(sp)
    800018e4:	00113423          	sd	ra,8(sp)
    800018e8:	01010413          	addi	s0,sp,16
    800018ec:	02059463          	bnez	a1,80001914 <either_copyin+0x38>
    800018f0:	00060593          	mv	a1,a2
    800018f4:	0006861b          	sext.w	a2,a3
    800018f8:	00002097          	auipc	ra,0x2
    800018fc:	c0c080e7          	jalr	-1012(ra) # 80003504 <__memmove>
    80001900:	00813083          	ld	ra,8(sp)
    80001904:	00013403          	ld	s0,0(sp)
    80001908:	00000513          	li	a0,0
    8000190c:	01010113          	addi	sp,sp,16
    80001910:	00008067          	ret
    80001914:	00002517          	auipc	a0,0x2
    80001918:	78c50513          	addi	a0,a0,1932 # 800040a0 <CONSOLE_STATUS+0x90>
    8000191c:	00001097          	auipc	ra,0x1
    80001920:	8e0080e7          	jalr	-1824(ra) # 800021fc <panic>

0000000080001924 <trapinit>:
    80001924:	ff010113          	addi	sp,sp,-16
    80001928:	00813423          	sd	s0,8(sp)
    8000192c:	01010413          	addi	s0,sp,16
    80001930:	00813403          	ld	s0,8(sp)
    80001934:	00002597          	auipc	a1,0x2
    80001938:	79458593          	addi	a1,a1,1940 # 800040c8 <CONSOLE_STATUS+0xb8>
    8000193c:	00004517          	auipc	a0,0x4
    80001940:	b9450513          	addi	a0,a0,-1132 # 800054d0 <tickslock>
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00001317          	auipc	t1,0x1
    8000194c:	5c030067          	jr	1472(t1) # 80002f08 <initlock>

0000000080001950 <trapinithart>:
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00813423          	sd	s0,8(sp)
    80001958:	01010413          	addi	s0,sp,16
    8000195c:	00000797          	auipc	a5,0x0
    80001960:	2f478793          	addi	a5,a5,756 # 80001c50 <kernelvec>
    80001964:	10579073          	csrw	stvec,a5
    80001968:	00813403          	ld	s0,8(sp)
    8000196c:	01010113          	addi	sp,sp,16
    80001970:	00008067          	ret

0000000080001974 <usertrap>:
    80001974:	ff010113          	addi	sp,sp,-16
    80001978:	00813423          	sd	s0,8(sp)
    8000197c:	01010413          	addi	s0,sp,16
    80001980:	00813403          	ld	s0,8(sp)
    80001984:	01010113          	addi	sp,sp,16
    80001988:	00008067          	ret

000000008000198c <usertrapret>:
    8000198c:	ff010113          	addi	sp,sp,-16
    80001990:	00813423          	sd	s0,8(sp)
    80001994:	01010413          	addi	s0,sp,16
    80001998:	00813403          	ld	s0,8(sp)
    8000199c:	01010113          	addi	sp,sp,16
    800019a0:	00008067          	ret

00000000800019a4 <kerneltrap>:
    800019a4:	fe010113          	addi	sp,sp,-32
    800019a8:	00813823          	sd	s0,16(sp)
    800019ac:	00113c23          	sd	ra,24(sp)
    800019b0:	00913423          	sd	s1,8(sp)
    800019b4:	02010413          	addi	s0,sp,32
    800019b8:	142025f3          	csrr	a1,scause
    800019bc:	100027f3          	csrr	a5,sstatus
    800019c0:	0027f793          	andi	a5,a5,2
    800019c4:	10079c63          	bnez	a5,80001adc <kerneltrap+0x138>
    800019c8:	142027f3          	csrr	a5,scause
    800019cc:	0207ce63          	bltz	a5,80001a08 <kerneltrap+0x64>
    800019d0:	00002517          	auipc	a0,0x2
    800019d4:	74050513          	addi	a0,a0,1856 # 80004110 <CONSOLE_STATUS+0x100>
    800019d8:	00001097          	auipc	ra,0x1
    800019dc:	880080e7          	jalr	-1920(ra) # 80002258 <__printf>
    800019e0:	141025f3          	csrr	a1,sepc
    800019e4:	14302673          	csrr	a2,stval
    800019e8:	00002517          	auipc	a0,0x2
    800019ec:	73850513          	addi	a0,a0,1848 # 80004120 <CONSOLE_STATUS+0x110>
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	868080e7          	jalr	-1944(ra) # 80002258 <__printf>
    800019f8:	00002517          	auipc	a0,0x2
    800019fc:	74050513          	addi	a0,a0,1856 # 80004138 <CONSOLE_STATUS+0x128>
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	7fc080e7          	jalr	2044(ra) # 800021fc <panic>
    80001a08:	0ff7f713          	andi	a4,a5,255
    80001a0c:	00900693          	li	a3,9
    80001a10:	04d70063          	beq	a4,a3,80001a50 <kerneltrap+0xac>
    80001a14:	fff00713          	li	a4,-1
    80001a18:	03f71713          	slli	a4,a4,0x3f
    80001a1c:	00170713          	addi	a4,a4,1
    80001a20:	fae798e3          	bne	a5,a4,800019d0 <kerneltrap+0x2c>
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	e00080e7          	jalr	-512(ra) # 80001824 <cpuid>
    80001a2c:	06050663          	beqz	a0,80001a98 <kerneltrap+0xf4>
    80001a30:	144027f3          	csrr	a5,sip
    80001a34:	ffd7f793          	andi	a5,a5,-3
    80001a38:	14479073          	csrw	sip,a5
    80001a3c:	01813083          	ld	ra,24(sp)
    80001a40:	01013403          	ld	s0,16(sp)
    80001a44:	00813483          	ld	s1,8(sp)
    80001a48:	02010113          	addi	sp,sp,32
    80001a4c:	00008067          	ret
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	3c4080e7          	jalr	964(ra) # 80001e14 <plic_claim>
    80001a58:	00a00793          	li	a5,10
    80001a5c:	00050493          	mv	s1,a0
    80001a60:	06f50863          	beq	a0,a5,80001ad0 <kerneltrap+0x12c>
    80001a64:	fc050ce3          	beqz	a0,80001a3c <kerneltrap+0x98>
    80001a68:	00050593          	mv	a1,a0
    80001a6c:	00002517          	auipc	a0,0x2
    80001a70:	68450513          	addi	a0,a0,1668 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	7e4080e7          	jalr	2020(ra) # 80002258 <__printf>
    80001a7c:	01013403          	ld	s0,16(sp)
    80001a80:	01813083          	ld	ra,24(sp)
    80001a84:	00048513          	mv	a0,s1
    80001a88:	00813483          	ld	s1,8(sp)
    80001a8c:	02010113          	addi	sp,sp,32
    80001a90:	00000317          	auipc	t1,0x0
    80001a94:	3bc30067          	jr	956(t1) # 80001e4c <plic_complete>
    80001a98:	00004517          	auipc	a0,0x4
    80001a9c:	a3850513          	addi	a0,a0,-1480 # 800054d0 <tickslock>
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	48c080e7          	jalr	1164(ra) # 80002f2c <acquire>
    80001aa8:	00003717          	auipc	a4,0x3
    80001aac:	92c70713          	addi	a4,a4,-1748 # 800043d4 <ticks>
    80001ab0:	00072783          	lw	a5,0(a4)
    80001ab4:	00004517          	auipc	a0,0x4
    80001ab8:	a1c50513          	addi	a0,a0,-1508 # 800054d0 <tickslock>
    80001abc:	0017879b          	addiw	a5,a5,1
    80001ac0:	00f72023          	sw	a5,0(a4)
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	534080e7          	jalr	1332(ra) # 80002ff8 <release>
    80001acc:	f65ff06f          	j	80001a30 <kerneltrap+0x8c>
    80001ad0:	00001097          	auipc	ra,0x1
    80001ad4:	090080e7          	jalr	144(ra) # 80002b60 <uartintr>
    80001ad8:	fa5ff06f          	j	80001a7c <kerneltrap+0xd8>
    80001adc:	00002517          	auipc	a0,0x2
    80001ae0:	5f450513          	addi	a0,a0,1524 # 800040d0 <CONSOLE_STATUS+0xc0>
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	718080e7          	jalr	1816(ra) # 800021fc <panic>

0000000080001aec <clockintr>:
    80001aec:	fe010113          	addi	sp,sp,-32
    80001af0:	00813823          	sd	s0,16(sp)
    80001af4:	00913423          	sd	s1,8(sp)
    80001af8:	00113c23          	sd	ra,24(sp)
    80001afc:	02010413          	addi	s0,sp,32
    80001b00:	00004497          	auipc	s1,0x4
    80001b04:	9d048493          	addi	s1,s1,-1584 # 800054d0 <tickslock>
    80001b08:	00048513          	mv	a0,s1
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	420080e7          	jalr	1056(ra) # 80002f2c <acquire>
    80001b14:	00003717          	auipc	a4,0x3
    80001b18:	8c070713          	addi	a4,a4,-1856 # 800043d4 <ticks>
    80001b1c:	00072783          	lw	a5,0(a4)
    80001b20:	01013403          	ld	s0,16(sp)
    80001b24:	01813083          	ld	ra,24(sp)
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	0017879b          	addiw	a5,a5,1
    80001b30:	00813483          	ld	s1,8(sp)
    80001b34:	00f72023          	sw	a5,0(a4)
    80001b38:	02010113          	addi	sp,sp,32
    80001b3c:	00001317          	auipc	t1,0x1
    80001b40:	4bc30067          	jr	1212(t1) # 80002ff8 <release>

0000000080001b44 <devintr>:
    80001b44:	142027f3          	csrr	a5,scause
    80001b48:	00000513          	li	a0,0
    80001b4c:	0007c463          	bltz	a5,80001b54 <devintr+0x10>
    80001b50:	00008067          	ret
    80001b54:	fe010113          	addi	sp,sp,-32
    80001b58:	00813823          	sd	s0,16(sp)
    80001b5c:	00113c23          	sd	ra,24(sp)
    80001b60:	00913423          	sd	s1,8(sp)
    80001b64:	02010413          	addi	s0,sp,32
    80001b68:	0ff7f713          	andi	a4,a5,255
    80001b6c:	00900693          	li	a3,9
    80001b70:	04d70c63          	beq	a4,a3,80001bc8 <devintr+0x84>
    80001b74:	fff00713          	li	a4,-1
    80001b78:	03f71713          	slli	a4,a4,0x3f
    80001b7c:	00170713          	addi	a4,a4,1
    80001b80:	00e78c63          	beq	a5,a4,80001b98 <devintr+0x54>
    80001b84:	01813083          	ld	ra,24(sp)
    80001b88:	01013403          	ld	s0,16(sp)
    80001b8c:	00813483          	ld	s1,8(sp)
    80001b90:	02010113          	addi	sp,sp,32
    80001b94:	00008067          	ret
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	c8c080e7          	jalr	-884(ra) # 80001824 <cpuid>
    80001ba0:	06050663          	beqz	a0,80001c0c <devintr+0xc8>
    80001ba4:	144027f3          	csrr	a5,sip
    80001ba8:	ffd7f793          	andi	a5,a5,-3
    80001bac:	14479073          	csrw	sip,a5
    80001bb0:	01813083          	ld	ra,24(sp)
    80001bb4:	01013403          	ld	s0,16(sp)
    80001bb8:	00813483          	ld	s1,8(sp)
    80001bbc:	00200513          	li	a0,2
    80001bc0:	02010113          	addi	sp,sp,32
    80001bc4:	00008067          	ret
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	24c080e7          	jalr	588(ra) # 80001e14 <plic_claim>
    80001bd0:	00a00793          	li	a5,10
    80001bd4:	00050493          	mv	s1,a0
    80001bd8:	06f50663          	beq	a0,a5,80001c44 <devintr+0x100>
    80001bdc:	00100513          	li	a0,1
    80001be0:	fa0482e3          	beqz	s1,80001b84 <devintr+0x40>
    80001be4:	00048593          	mv	a1,s1
    80001be8:	00002517          	auipc	a0,0x2
    80001bec:	50850513          	addi	a0,a0,1288 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	668080e7          	jalr	1640(ra) # 80002258 <__printf>
    80001bf8:	00048513          	mv	a0,s1
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	250080e7          	jalr	592(ra) # 80001e4c <plic_complete>
    80001c04:	00100513          	li	a0,1
    80001c08:	f7dff06f          	j	80001b84 <devintr+0x40>
    80001c0c:	00004517          	auipc	a0,0x4
    80001c10:	8c450513          	addi	a0,a0,-1852 # 800054d0 <tickslock>
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	318080e7          	jalr	792(ra) # 80002f2c <acquire>
    80001c1c:	00002717          	auipc	a4,0x2
    80001c20:	7b870713          	addi	a4,a4,1976 # 800043d4 <ticks>
    80001c24:	00072783          	lw	a5,0(a4)
    80001c28:	00004517          	auipc	a0,0x4
    80001c2c:	8a850513          	addi	a0,a0,-1880 # 800054d0 <tickslock>
    80001c30:	0017879b          	addiw	a5,a5,1
    80001c34:	00f72023          	sw	a5,0(a4)
    80001c38:	00001097          	auipc	ra,0x1
    80001c3c:	3c0080e7          	jalr	960(ra) # 80002ff8 <release>
    80001c40:	f65ff06f          	j	80001ba4 <devintr+0x60>
    80001c44:	00001097          	auipc	ra,0x1
    80001c48:	f1c080e7          	jalr	-228(ra) # 80002b60 <uartintr>
    80001c4c:	fadff06f          	j	80001bf8 <devintr+0xb4>

0000000080001c50 <kernelvec>:
    80001c50:	f0010113          	addi	sp,sp,-256
    80001c54:	00113023          	sd	ra,0(sp)
    80001c58:	00213423          	sd	sp,8(sp)
    80001c5c:	00313823          	sd	gp,16(sp)
    80001c60:	00413c23          	sd	tp,24(sp)
    80001c64:	02513023          	sd	t0,32(sp)
    80001c68:	02613423          	sd	t1,40(sp)
    80001c6c:	02713823          	sd	t2,48(sp)
    80001c70:	02813c23          	sd	s0,56(sp)
    80001c74:	04913023          	sd	s1,64(sp)
    80001c78:	04a13423          	sd	a0,72(sp)
    80001c7c:	04b13823          	sd	a1,80(sp)
    80001c80:	04c13c23          	sd	a2,88(sp)
    80001c84:	06d13023          	sd	a3,96(sp)
    80001c88:	06e13423          	sd	a4,104(sp)
    80001c8c:	06f13823          	sd	a5,112(sp)
    80001c90:	07013c23          	sd	a6,120(sp)
    80001c94:	09113023          	sd	a7,128(sp)
    80001c98:	09213423          	sd	s2,136(sp)
    80001c9c:	09313823          	sd	s3,144(sp)
    80001ca0:	09413c23          	sd	s4,152(sp)
    80001ca4:	0b513023          	sd	s5,160(sp)
    80001ca8:	0b613423          	sd	s6,168(sp)
    80001cac:	0b713823          	sd	s7,176(sp)
    80001cb0:	0b813c23          	sd	s8,184(sp)
    80001cb4:	0d913023          	sd	s9,192(sp)
    80001cb8:	0da13423          	sd	s10,200(sp)
    80001cbc:	0db13823          	sd	s11,208(sp)
    80001cc0:	0dc13c23          	sd	t3,216(sp)
    80001cc4:	0fd13023          	sd	t4,224(sp)
    80001cc8:	0fe13423          	sd	t5,232(sp)
    80001ccc:	0ff13823          	sd	t6,240(sp)
    80001cd0:	cd5ff0ef          	jal	ra,800019a4 <kerneltrap>
    80001cd4:	00013083          	ld	ra,0(sp)
    80001cd8:	00813103          	ld	sp,8(sp)
    80001cdc:	01013183          	ld	gp,16(sp)
    80001ce0:	02013283          	ld	t0,32(sp)
    80001ce4:	02813303          	ld	t1,40(sp)
    80001ce8:	03013383          	ld	t2,48(sp)
    80001cec:	03813403          	ld	s0,56(sp)
    80001cf0:	04013483          	ld	s1,64(sp)
    80001cf4:	04813503          	ld	a0,72(sp)
    80001cf8:	05013583          	ld	a1,80(sp)
    80001cfc:	05813603          	ld	a2,88(sp)
    80001d00:	06013683          	ld	a3,96(sp)
    80001d04:	06813703          	ld	a4,104(sp)
    80001d08:	07013783          	ld	a5,112(sp)
    80001d0c:	07813803          	ld	a6,120(sp)
    80001d10:	08013883          	ld	a7,128(sp)
    80001d14:	08813903          	ld	s2,136(sp)
    80001d18:	09013983          	ld	s3,144(sp)
    80001d1c:	09813a03          	ld	s4,152(sp)
    80001d20:	0a013a83          	ld	s5,160(sp)
    80001d24:	0a813b03          	ld	s6,168(sp)
    80001d28:	0b013b83          	ld	s7,176(sp)
    80001d2c:	0b813c03          	ld	s8,184(sp)
    80001d30:	0c013c83          	ld	s9,192(sp)
    80001d34:	0c813d03          	ld	s10,200(sp)
    80001d38:	0d013d83          	ld	s11,208(sp)
    80001d3c:	0d813e03          	ld	t3,216(sp)
    80001d40:	0e013e83          	ld	t4,224(sp)
    80001d44:	0e813f03          	ld	t5,232(sp)
    80001d48:	0f013f83          	ld	t6,240(sp)
    80001d4c:	10010113          	addi	sp,sp,256
    80001d50:	10200073          	sret
    80001d54:	00000013          	nop
    80001d58:	00000013          	nop
    80001d5c:	00000013          	nop

0000000080001d60 <timervec>:
    80001d60:	34051573          	csrrw	a0,mscratch,a0
    80001d64:	00b53023          	sd	a1,0(a0)
    80001d68:	00c53423          	sd	a2,8(a0)
    80001d6c:	00d53823          	sd	a3,16(a0)
    80001d70:	01853583          	ld	a1,24(a0)
    80001d74:	02053603          	ld	a2,32(a0)
    80001d78:	0005b683          	ld	a3,0(a1)
    80001d7c:	00c686b3          	add	a3,a3,a2
    80001d80:	00d5b023          	sd	a3,0(a1)
    80001d84:	00200593          	li	a1,2
    80001d88:	14459073          	csrw	sip,a1
    80001d8c:	01053683          	ld	a3,16(a0)
    80001d90:	00853603          	ld	a2,8(a0)
    80001d94:	00053583          	ld	a1,0(a0)
    80001d98:	34051573          	csrrw	a0,mscratch,a0
    80001d9c:	30200073          	mret

0000000080001da0 <plicinit>:
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00813423          	sd	s0,8(sp)
    80001da8:	01010413          	addi	s0,sp,16
    80001dac:	00813403          	ld	s0,8(sp)
    80001db0:	0c0007b7          	lui	a5,0xc000
    80001db4:	00100713          	li	a4,1
    80001db8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001dbc:	00e7a223          	sw	a4,4(a5)
    80001dc0:	01010113          	addi	sp,sp,16
    80001dc4:	00008067          	ret

0000000080001dc8 <plicinithart>:
    80001dc8:	ff010113          	addi	sp,sp,-16
    80001dcc:	00813023          	sd	s0,0(sp)
    80001dd0:	00113423          	sd	ra,8(sp)
    80001dd4:	01010413          	addi	s0,sp,16
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	a4c080e7          	jalr	-1460(ra) # 80001824 <cpuid>
    80001de0:	0085171b          	slliw	a4,a0,0x8
    80001de4:	0c0027b7          	lui	a5,0xc002
    80001de8:	00e787b3          	add	a5,a5,a4
    80001dec:	40200713          	li	a4,1026
    80001df0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001df4:	00813083          	ld	ra,8(sp)
    80001df8:	00013403          	ld	s0,0(sp)
    80001dfc:	00d5151b          	slliw	a0,a0,0xd
    80001e00:	0c2017b7          	lui	a5,0xc201
    80001e04:	00a78533          	add	a0,a5,a0
    80001e08:	00052023          	sw	zero,0(a0)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <plic_claim>:
    80001e14:	ff010113          	addi	sp,sp,-16
    80001e18:	00813023          	sd	s0,0(sp)
    80001e1c:	00113423          	sd	ra,8(sp)
    80001e20:	01010413          	addi	s0,sp,16
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	a00080e7          	jalr	-1536(ra) # 80001824 <cpuid>
    80001e2c:	00813083          	ld	ra,8(sp)
    80001e30:	00013403          	ld	s0,0(sp)
    80001e34:	00d5151b          	slliw	a0,a0,0xd
    80001e38:	0c2017b7          	lui	a5,0xc201
    80001e3c:	00a78533          	add	a0,a5,a0
    80001e40:	00452503          	lw	a0,4(a0)
    80001e44:	01010113          	addi	sp,sp,16
    80001e48:	00008067          	ret

0000000080001e4c <plic_complete>:
    80001e4c:	fe010113          	addi	sp,sp,-32
    80001e50:	00813823          	sd	s0,16(sp)
    80001e54:	00913423          	sd	s1,8(sp)
    80001e58:	00113c23          	sd	ra,24(sp)
    80001e5c:	02010413          	addi	s0,sp,32
    80001e60:	00050493          	mv	s1,a0
    80001e64:	00000097          	auipc	ra,0x0
    80001e68:	9c0080e7          	jalr	-1600(ra) # 80001824 <cpuid>
    80001e6c:	01813083          	ld	ra,24(sp)
    80001e70:	01013403          	ld	s0,16(sp)
    80001e74:	00d5179b          	slliw	a5,a0,0xd
    80001e78:	0c201737          	lui	a4,0xc201
    80001e7c:	00f707b3          	add	a5,a4,a5
    80001e80:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001e84:	00813483          	ld	s1,8(sp)
    80001e88:	02010113          	addi	sp,sp,32
    80001e8c:	00008067          	ret

0000000080001e90 <consolewrite>:
    80001e90:	fb010113          	addi	sp,sp,-80
    80001e94:	04813023          	sd	s0,64(sp)
    80001e98:	04113423          	sd	ra,72(sp)
    80001e9c:	02913c23          	sd	s1,56(sp)
    80001ea0:	03213823          	sd	s2,48(sp)
    80001ea4:	03313423          	sd	s3,40(sp)
    80001ea8:	03413023          	sd	s4,32(sp)
    80001eac:	01513c23          	sd	s5,24(sp)
    80001eb0:	05010413          	addi	s0,sp,80
    80001eb4:	06c05c63          	blez	a2,80001f2c <consolewrite+0x9c>
    80001eb8:	00060993          	mv	s3,a2
    80001ebc:	00050a13          	mv	s4,a0
    80001ec0:	00058493          	mv	s1,a1
    80001ec4:	00000913          	li	s2,0
    80001ec8:	fff00a93          	li	s5,-1
    80001ecc:	01c0006f          	j	80001ee8 <consolewrite+0x58>
    80001ed0:	fbf44503          	lbu	a0,-65(s0)
    80001ed4:	0019091b          	addiw	s2,s2,1
    80001ed8:	00148493          	addi	s1,s1,1
    80001edc:	00001097          	auipc	ra,0x1
    80001ee0:	a9c080e7          	jalr	-1380(ra) # 80002978 <uartputc>
    80001ee4:	03298063          	beq	s3,s2,80001f04 <consolewrite+0x74>
    80001ee8:	00048613          	mv	a2,s1
    80001eec:	00100693          	li	a3,1
    80001ef0:	000a0593          	mv	a1,s4
    80001ef4:	fbf40513          	addi	a0,s0,-65
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	9e4080e7          	jalr	-1564(ra) # 800018dc <either_copyin>
    80001f00:	fd5518e3          	bne	a0,s5,80001ed0 <consolewrite+0x40>
    80001f04:	04813083          	ld	ra,72(sp)
    80001f08:	04013403          	ld	s0,64(sp)
    80001f0c:	03813483          	ld	s1,56(sp)
    80001f10:	02813983          	ld	s3,40(sp)
    80001f14:	02013a03          	ld	s4,32(sp)
    80001f18:	01813a83          	ld	s5,24(sp)
    80001f1c:	00090513          	mv	a0,s2
    80001f20:	03013903          	ld	s2,48(sp)
    80001f24:	05010113          	addi	sp,sp,80
    80001f28:	00008067          	ret
    80001f2c:	00000913          	li	s2,0
    80001f30:	fd5ff06f          	j	80001f04 <consolewrite+0x74>

0000000080001f34 <consoleread>:
    80001f34:	f9010113          	addi	sp,sp,-112
    80001f38:	06813023          	sd	s0,96(sp)
    80001f3c:	04913c23          	sd	s1,88(sp)
    80001f40:	05213823          	sd	s2,80(sp)
    80001f44:	05313423          	sd	s3,72(sp)
    80001f48:	05413023          	sd	s4,64(sp)
    80001f4c:	03513c23          	sd	s5,56(sp)
    80001f50:	03613823          	sd	s6,48(sp)
    80001f54:	03713423          	sd	s7,40(sp)
    80001f58:	03813023          	sd	s8,32(sp)
    80001f5c:	06113423          	sd	ra,104(sp)
    80001f60:	01913c23          	sd	s9,24(sp)
    80001f64:	07010413          	addi	s0,sp,112
    80001f68:	00060b93          	mv	s7,a2
    80001f6c:	00050913          	mv	s2,a0
    80001f70:	00058c13          	mv	s8,a1
    80001f74:	00060b1b          	sext.w	s6,a2
    80001f78:	00003497          	auipc	s1,0x3
    80001f7c:	57048493          	addi	s1,s1,1392 # 800054e8 <cons>
    80001f80:	00400993          	li	s3,4
    80001f84:	fff00a13          	li	s4,-1
    80001f88:	00a00a93          	li	s5,10
    80001f8c:	05705e63          	blez	s7,80001fe8 <consoleread+0xb4>
    80001f90:	09c4a703          	lw	a4,156(s1)
    80001f94:	0984a783          	lw	a5,152(s1)
    80001f98:	0007071b          	sext.w	a4,a4
    80001f9c:	08e78463          	beq	a5,a4,80002024 <consoleread+0xf0>
    80001fa0:	07f7f713          	andi	a4,a5,127
    80001fa4:	00e48733          	add	a4,s1,a4
    80001fa8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001fac:	0017869b          	addiw	a3,a5,1
    80001fb0:	08d4ac23          	sw	a3,152(s1)
    80001fb4:	00070c9b          	sext.w	s9,a4
    80001fb8:	0b370663          	beq	a4,s3,80002064 <consoleread+0x130>
    80001fbc:	00100693          	li	a3,1
    80001fc0:	f9f40613          	addi	a2,s0,-97
    80001fc4:	000c0593          	mv	a1,s8
    80001fc8:	00090513          	mv	a0,s2
    80001fcc:	f8e40fa3          	sb	a4,-97(s0)
    80001fd0:	00000097          	auipc	ra,0x0
    80001fd4:	8c0080e7          	jalr	-1856(ra) # 80001890 <either_copyout>
    80001fd8:	01450863          	beq	a0,s4,80001fe8 <consoleread+0xb4>
    80001fdc:	001c0c13          	addi	s8,s8,1
    80001fe0:	fffb8b9b          	addiw	s7,s7,-1
    80001fe4:	fb5c94e3          	bne	s9,s5,80001f8c <consoleread+0x58>
    80001fe8:	000b851b          	sext.w	a0,s7
    80001fec:	06813083          	ld	ra,104(sp)
    80001ff0:	06013403          	ld	s0,96(sp)
    80001ff4:	05813483          	ld	s1,88(sp)
    80001ff8:	05013903          	ld	s2,80(sp)
    80001ffc:	04813983          	ld	s3,72(sp)
    80002000:	04013a03          	ld	s4,64(sp)
    80002004:	03813a83          	ld	s5,56(sp)
    80002008:	02813b83          	ld	s7,40(sp)
    8000200c:	02013c03          	ld	s8,32(sp)
    80002010:	01813c83          	ld	s9,24(sp)
    80002014:	40ab053b          	subw	a0,s6,a0
    80002018:	03013b03          	ld	s6,48(sp)
    8000201c:	07010113          	addi	sp,sp,112
    80002020:	00008067          	ret
    80002024:	00001097          	auipc	ra,0x1
    80002028:	1d8080e7          	jalr	472(ra) # 800031fc <push_on>
    8000202c:	0984a703          	lw	a4,152(s1)
    80002030:	09c4a783          	lw	a5,156(s1)
    80002034:	0007879b          	sext.w	a5,a5
    80002038:	fef70ce3          	beq	a4,a5,80002030 <consoleread+0xfc>
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	234080e7          	jalr	564(ra) # 80003270 <pop_on>
    80002044:	0984a783          	lw	a5,152(s1)
    80002048:	07f7f713          	andi	a4,a5,127
    8000204c:	00e48733          	add	a4,s1,a4
    80002050:	01874703          	lbu	a4,24(a4)
    80002054:	0017869b          	addiw	a3,a5,1
    80002058:	08d4ac23          	sw	a3,152(s1)
    8000205c:	00070c9b          	sext.w	s9,a4
    80002060:	f5371ee3          	bne	a4,s3,80001fbc <consoleread+0x88>
    80002064:	000b851b          	sext.w	a0,s7
    80002068:	f96bf2e3          	bgeu	s7,s6,80001fec <consoleread+0xb8>
    8000206c:	08f4ac23          	sw	a5,152(s1)
    80002070:	f7dff06f          	j	80001fec <consoleread+0xb8>

0000000080002074 <consputc>:
    80002074:	10000793          	li	a5,256
    80002078:	00f50663          	beq	a0,a5,80002084 <consputc+0x10>
    8000207c:	00001317          	auipc	t1,0x1
    80002080:	9f430067          	jr	-1548(t1) # 80002a70 <uartputc_sync>
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00113423          	sd	ra,8(sp)
    8000208c:	00813023          	sd	s0,0(sp)
    80002090:	01010413          	addi	s0,sp,16
    80002094:	00800513          	li	a0,8
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	9d8080e7          	jalr	-1576(ra) # 80002a70 <uartputc_sync>
    800020a0:	02000513          	li	a0,32
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	9cc080e7          	jalr	-1588(ra) # 80002a70 <uartputc_sync>
    800020ac:	00013403          	ld	s0,0(sp)
    800020b0:	00813083          	ld	ra,8(sp)
    800020b4:	00800513          	li	a0,8
    800020b8:	01010113          	addi	sp,sp,16
    800020bc:	00001317          	auipc	t1,0x1
    800020c0:	9b430067          	jr	-1612(t1) # 80002a70 <uartputc_sync>

00000000800020c4 <consoleintr>:
    800020c4:	fe010113          	addi	sp,sp,-32
    800020c8:	00813823          	sd	s0,16(sp)
    800020cc:	00913423          	sd	s1,8(sp)
    800020d0:	01213023          	sd	s2,0(sp)
    800020d4:	00113c23          	sd	ra,24(sp)
    800020d8:	02010413          	addi	s0,sp,32
    800020dc:	00003917          	auipc	s2,0x3
    800020e0:	40c90913          	addi	s2,s2,1036 # 800054e8 <cons>
    800020e4:	00050493          	mv	s1,a0
    800020e8:	00090513          	mv	a0,s2
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	e40080e7          	jalr	-448(ra) # 80002f2c <acquire>
    800020f4:	02048c63          	beqz	s1,8000212c <consoleintr+0x68>
    800020f8:	0a092783          	lw	a5,160(s2)
    800020fc:	09892703          	lw	a4,152(s2)
    80002100:	07f00693          	li	a3,127
    80002104:	40e7873b          	subw	a4,a5,a4
    80002108:	02e6e263          	bltu	a3,a4,8000212c <consoleintr+0x68>
    8000210c:	00d00713          	li	a4,13
    80002110:	04e48063          	beq	s1,a4,80002150 <consoleintr+0x8c>
    80002114:	07f7f713          	andi	a4,a5,127
    80002118:	00e90733          	add	a4,s2,a4
    8000211c:	0017879b          	addiw	a5,a5,1
    80002120:	0af92023          	sw	a5,160(s2)
    80002124:	00970c23          	sb	s1,24(a4)
    80002128:	08f92e23          	sw	a5,156(s2)
    8000212c:	01013403          	ld	s0,16(sp)
    80002130:	01813083          	ld	ra,24(sp)
    80002134:	00813483          	ld	s1,8(sp)
    80002138:	00013903          	ld	s2,0(sp)
    8000213c:	00003517          	auipc	a0,0x3
    80002140:	3ac50513          	addi	a0,a0,940 # 800054e8 <cons>
    80002144:	02010113          	addi	sp,sp,32
    80002148:	00001317          	auipc	t1,0x1
    8000214c:	eb030067          	jr	-336(t1) # 80002ff8 <release>
    80002150:	00a00493          	li	s1,10
    80002154:	fc1ff06f          	j	80002114 <consoleintr+0x50>

0000000080002158 <consoleinit>:
    80002158:	fe010113          	addi	sp,sp,-32
    8000215c:	00113c23          	sd	ra,24(sp)
    80002160:	00813823          	sd	s0,16(sp)
    80002164:	00913423          	sd	s1,8(sp)
    80002168:	02010413          	addi	s0,sp,32
    8000216c:	00003497          	auipc	s1,0x3
    80002170:	37c48493          	addi	s1,s1,892 # 800054e8 <cons>
    80002174:	00048513          	mv	a0,s1
    80002178:	00002597          	auipc	a1,0x2
    8000217c:	fd058593          	addi	a1,a1,-48 # 80004148 <CONSOLE_STATUS+0x138>
    80002180:	00001097          	auipc	ra,0x1
    80002184:	d88080e7          	jalr	-632(ra) # 80002f08 <initlock>
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	7ac080e7          	jalr	1964(ra) # 80002934 <uartinit>
    80002190:	01813083          	ld	ra,24(sp)
    80002194:	01013403          	ld	s0,16(sp)
    80002198:	00000797          	auipc	a5,0x0
    8000219c:	d9c78793          	addi	a5,a5,-612 # 80001f34 <consoleread>
    800021a0:	0af4bc23          	sd	a5,184(s1)
    800021a4:	00000797          	auipc	a5,0x0
    800021a8:	cec78793          	addi	a5,a5,-788 # 80001e90 <consolewrite>
    800021ac:	0cf4b023          	sd	a5,192(s1)
    800021b0:	00813483          	ld	s1,8(sp)
    800021b4:	02010113          	addi	sp,sp,32
    800021b8:	00008067          	ret

00000000800021bc <console_read>:
    800021bc:	ff010113          	addi	sp,sp,-16
    800021c0:	00813423          	sd	s0,8(sp)
    800021c4:	01010413          	addi	s0,sp,16
    800021c8:	00813403          	ld	s0,8(sp)
    800021cc:	00003317          	auipc	t1,0x3
    800021d0:	3d433303          	ld	t1,980(t1) # 800055a0 <devsw+0x10>
    800021d4:	01010113          	addi	sp,sp,16
    800021d8:	00030067          	jr	t1

00000000800021dc <console_write>:
    800021dc:	ff010113          	addi	sp,sp,-16
    800021e0:	00813423          	sd	s0,8(sp)
    800021e4:	01010413          	addi	s0,sp,16
    800021e8:	00813403          	ld	s0,8(sp)
    800021ec:	00003317          	auipc	t1,0x3
    800021f0:	3bc33303          	ld	t1,956(t1) # 800055a8 <devsw+0x18>
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00030067          	jr	t1

00000000800021fc <panic>:
    800021fc:	fe010113          	addi	sp,sp,-32
    80002200:	00113c23          	sd	ra,24(sp)
    80002204:	00813823          	sd	s0,16(sp)
    80002208:	00913423          	sd	s1,8(sp)
    8000220c:	02010413          	addi	s0,sp,32
    80002210:	00050493          	mv	s1,a0
    80002214:	00002517          	auipc	a0,0x2
    80002218:	f3c50513          	addi	a0,a0,-196 # 80004150 <CONSOLE_STATUS+0x140>
    8000221c:	00003797          	auipc	a5,0x3
    80002220:	4207a623          	sw	zero,1068(a5) # 80005648 <pr+0x18>
    80002224:	00000097          	auipc	ra,0x0
    80002228:	034080e7          	jalr	52(ra) # 80002258 <__printf>
    8000222c:	00048513          	mv	a0,s1
    80002230:	00000097          	auipc	ra,0x0
    80002234:	028080e7          	jalr	40(ra) # 80002258 <__printf>
    80002238:	00002517          	auipc	a0,0x2
    8000223c:	ef850513          	addi	a0,a0,-264 # 80004130 <CONSOLE_STATUS+0x120>
    80002240:	00000097          	auipc	ra,0x0
    80002244:	018080e7          	jalr	24(ra) # 80002258 <__printf>
    80002248:	00100793          	li	a5,1
    8000224c:	00002717          	auipc	a4,0x2
    80002250:	18f72623          	sw	a5,396(a4) # 800043d8 <panicked>
    80002254:	0000006f          	j	80002254 <panic+0x58>

0000000080002258 <__printf>:
    80002258:	f3010113          	addi	sp,sp,-208
    8000225c:	08813023          	sd	s0,128(sp)
    80002260:	07313423          	sd	s3,104(sp)
    80002264:	09010413          	addi	s0,sp,144
    80002268:	05813023          	sd	s8,64(sp)
    8000226c:	08113423          	sd	ra,136(sp)
    80002270:	06913c23          	sd	s1,120(sp)
    80002274:	07213823          	sd	s2,112(sp)
    80002278:	07413023          	sd	s4,96(sp)
    8000227c:	05513c23          	sd	s5,88(sp)
    80002280:	05613823          	sd	s6,80(sp)
    80002284:	05713423          	sd	s7,72(sp)
    80002288:	03913c23          	sd	s9,56(sp)
    8000228c:	03a13823          	sd	s10,48(sp)
    80002290:	03b13423          	sd	s11,40(sp)
    80002294:	00003317          	auipc	t1,0x3
    80002298:	39c30313          	addi	t1,t1,924 # 80005630 <pr>
    8000229c:	01832c03          	lw	s8,24(t1)
    800022a0:	00b43423          	sd	a1,8(s0)
    800022a4:	00c43823          	sd	a2,16(s0)
    800022a8:	00d43c23          	sd	a3,24(s0)
    800022ac:	02e43023          	sd	a4,32(s0)
    800022b0:	02f43423          	sd	a5,40(s0)
    800022b4:	03043823          	sd	a6,48(s0)
    800022b8:	03143c23          	sd	a7,56(s0)
    800022bc:	00050993          	mv	s3,a0
    800022c0:	4a0c1663          	bnez	s8,8000276c <__printf+0x514>
    800022c4:	60098c63          	beqz	s3,800028dc <__printf+0x684>
    800022c8:	0009c503          	lbu	a0,0(s3)
    800022cc:	00840793          	addi	a5,s0,8
    800022d0:	f6f43c23          	sd	a5,-136(s0)
    800022d4:	00000493          	li	s1,0
    800022d8:	22050063          	beqz	a0,800024f8 <__printf+0x2a0>
    800022dc:	00002a37          	lui	s4,0x2
    800022e0:	00018ab7          	lui	s5,0x18
    800022e4:	000f4b37          	lui	s6,0xf4
    800022e8:	00989bb7          	lui	s7,0x989
    800022ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800022f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800022f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800022f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800022fc:	00148c9b          	addiw	s9,s1,1
    80002300:	02500793          	li	a5,37
    80002304:	01998933          	add	s2,s3,s9
    80002308:	38f51263          	bne	a0,a5,8000268c <__printf+0x434>
    8000230c:	00094783          	lbu	a5,0(s2)
    80002310:	00078c9b          	sext.w	s9,a5
    80002314:	1e078263          	beqz	a5,800024f8 <__printf+0x2a0>
    80002318:	0024849b          	addiw	s1,s1,2
    8000231c:	07000713          	li	a4,112
    80002320:	00998933          	add	s2,s3,s1
    80002324:	38e78a63          	beq	a5,a4,800026b8 <__printf+0x460>
    80002328:	20f76863          	bltu	a4,a5,80002538 <__printf+0x2e0>
    8000232c:	42a78863          	beq	a5,a0,8000275c <__printf+0x504>
    80002330:	06400713          	li	a4,100
    80002334:	40e79663          	bne	a5,a4,80002740 <__printf+0x4e8>
    80002338:	f7843783          	ld	a5,-136(s0)
    8000233c:	0007a603          	lw	a2,0(a5)
    80002340:	00878793          	addi	a5,a5,8
    80002344:	f6f43c23          	sd	a5,-136(s0)
    80002348:	42064a63          	bltz	a2,8000277c <__printf+0x524>
    8000234c:	00a00713          	li	a4,10
    80002350:	02e677bb          	remuw	a5,a2,a4
    80002354:	00002d97          	auipc	s11,0x2
    80002358:	e24d8d93          	addi	s11,s11,-476 # 80004178 <digits>
    8000235c:	00900593          	li	a1,9
    80002360:	0006051b          	sext.w	a0,a2
    80002364:	00000c93          	li	s9,0
    80002368:	02079793          	slli	a5,a5,0x20
    8000236c:	0207d793          	srli	a5,a5,0x20
    80002370:	00fd87b3          	add	a5,s11,a5
    80002374:	0007c783          	lbu	a5,0(a5)
    80002378:	02e656bb          	divuw	a3,a2,a4
    8000237c:	f8f40023          	sb	a5,-128(s0)
    80002380:	14c5d863          	bge	a1,a2,800024d0 <__printf+0x278>
    80002384:	06300593          	li	a1,99
    80002388:	00100c93          	li	s9,1
    8000238c:	02e6f7bb          	remuw	a5,a3,a4
    80002390:	02079793          	slli	a5,a5,0x20
    80002394:	0207d793          	srli	a5,a5,0x20
    80002398:	00fd87b3          	add	a5,s11,a5
    8000239c:	0007c783          	lbu	a5,0(a5)
    800023a0:	02e6d73b          	divuw	a4,a3,a4
    800023a4:	f8f400a3          	sb	a5,-127(s0)
    800023a8:	12a5f463          	bgeu	a1,a0,800024d0 <__printf+0x278>
    800023ac:	00a00693          	li	a3,10
    800023b0:	00900593          	li	a1,9
    800023b4:	02d777bb          	remuw	a5,a4,a3
    800023b8:	02079793          	slli	a5,a5,0x20
    800023bc:	0207d793          	srli	a5,a5,0x20
    800023c0:	00fd87b3          	add	a5,s11,a5
    800023c4:	0007c503          	lbu	a0,0(a5)
    800023c8:	02d757bb          	divuw	a5,a4,a3
    800023cc:	f8a40123          	sb	a0,-126(s0)
    800023d0:	48e5f263          	bgeu	a1,a4,80002854 <__printf+0x5fc>
    800023d4:	06300513          	li	a0,99
    800023d8:	02d7f5bb          	remuw	a1,a5,a3
    800023dc:	02059593          	slli	a1,a1,0x20
    800023e0:	0205d593          	srli	a1,a1,0x20
    800023e4:	00bd85b3          	add	a1,s11,a1
    800023e8:	0005c583          	lbu	a1,0(a1)
    800023ec:	02d7d7bb          	divuw	a5,a5,a3
    800023f0:	f8b401a3          	sb	a1,-125(s0)
    800023f4:	48e57263          	bgeu	a0,a4,80002878 <__printf+0x620>
    800023f8:	3e700513          	li	a0,999
    800023fc:	02d7f5bb          	remuw	a1,a5,a3
    80002400:	02059593          	slli	a1,a1,0x20
    80002404:	0205d593          	srli	a1,a1,0x20
    80002408:	00bd85b3          	add	a1,s11,a1
    8000240c:	0005c583          	lbu	a1,0(a1)
    80002410:	02d7d7bb          	divuw	a5,a5,a3
    80002414:	f8b40223          	sb	a1,-124(s0)
    80002418:	46e57663          	bgeu	a0,a4,80002884 <__printf+0x62c>
    8000241c:	02d7f5bb          	remuw	a1,a5,a3
    80002420:	02059593          	slli	a1,a1,0x20
    80002424:	0205d593          	srli	a1,a1,0x20
    80002428:	00bd85b3          	add	a1,s11,a1
    8000242c:	0005c583          	lbu	a1,0(a1)
    80002430:	02d7d7bb          	divuw	a5,a5,a3
    80002434:	f8b402a3          	sb	a1,-123(s0)
    80002438:	46ea7863          	bgeu	s4,a4,800028a8 <__printf+0x650>
    8000243c:	02d7f5bb          	remuw	a1,a5,a3
    80002440:	02059593          	slli	a1,a1,0x20
    80002444:	0205d593          	srli	a1,a1,0x20
    80002448:	00bd85b3          	add	a1,s11,a1
    8000244c:	0005c583          	lbu	a1,0(a1)
    80002450:	02d7d7bb          	divuw	a5,a5,a3
    80002454:	f8b40323          	sb	a1,-122(s0)
    80002458:	3eeaf863          	bgeu	s5,a4,80002848 <__printf+0x5f0>
    8000245c:	02d7f5bb          	remuw	a1,a5,a3
    80002460:	02059593          	slli	a1,a1,0x20
    80002464:	0205d593          	srli	a1,a1,0x20
    80002468:	00bd85b3          	add	a1,s11,a1
    8000246c:	0005c583          	lbu	a1,0(a1)
    80002470:	02d7d7bb          	divuw	a5,a5,a3
    80002474:	f8b403a3          	sb	a1,-121(s0)
    80002478:	42eb7e63          	bgeu	s6,a4,800028b4 <__printf+0x65c>
    8000247c:	02d7f5bb          	remuw	a1,a5,a3
    80002480:	02059593          	slli	a1,a1,0x20
    80002484:	0205d593          	srli	a1,a1,0x20
    80002488:	00bd85b3          	add	a1,s11,a1
    8000248c:	0005c583          	lbu	a1,0(a1)
    80002490:	02d7d7bb          	divuw	a5,a5,a3
    80002494:	f8b40423          	sb	a1,-120(s0)
    80002498:	42ebfc63          	bgeu	s7,a4,800028d0 <__printf+0x678>
    8000249c:	02079793          	slli	a5,a5,0x20
    800024a0:	0207d793          	srli	a5,a5,0x20
    800024a4:	00fd8db3          	add	s11,s11,a5
    800024a8:	000dc703          	lbu	a4,0(s11)
    800024ac:	00a00793          	li	a5,10
    800024b0:	00900c93          	li	s9,9
    800024b4:	f8e404a3          	sb	a4,-119(s0)
    800024b8:	00065c63          	bgez	a2,800024d0 <__printf+0x278>
    800024bc:	f9040713          	addi	a4,s0,-112
    800024c0:	00f70733          	add	a4,a4,a5
    800024c4:	02d00693          	li	a3,45
    800024c8:	fed70823          	sb	a3,-16(a4)
    800024cc:	00078c93          	mv	s9,a5
    800024d0:	f8040793          	addi	a5,s0,-128
    800024d4:	01978cb3          	add	s9,a5,s9
    800024d8:	f7f40d13          	addi	s10,s0,-129
    800024dc:	000cc503          	lbu	a0,0(s9)
    800024e0:	fffc8c93          	addi	s9,s9,-1
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	b90080e7          	jalr	-1136(ra) # 80002074 <consputc>
    800024ec:	ffac98e3          	bne	s9,s10,800024dc <__printf+0x284>
    800024f0:	00094503          	lbu	a0,0(s2)
    800024f4:	e00514e3          	bnez	a0,800022fc <__printf+0xa4>
    800024f8:	1a0c1663          	bnez	s8,800026a4 <__printf+0x44c>
    800024fc:	08813083          	ld	ra,136(sp)
    80002500:	08013403          	ld	s0,128(sp)
    80002504:	07813483          	ld	s1,120(sp)
    80002508:	07013903          	ld	s2,112(sp)
    8000250c:	06813983          	ld	s3,104(sp)
    80002510:	06013a03          	ld	s4,96(sp)
    80002514:	05813a83          	ld	s5,88(sp)
    80002518:	05013b03          	ld	s6,80(sp)
    8000251c:	04813b83          	ld	s7,72(sp)
    80002520:	04013c03          	ld	s8,64(sp)
    80002524:	03813c83          	ld	s9,56(sp)
    80002528:	03013d03          	ld	s10,48(sp)
    8000252c:	02813d83          	ld	s11,40(sp)
    80002530:	0d010113          	addi	sp,sp,208
    80002534:	00008067          	ret
    80002538:	07300713          	li	a4,115
    8000253c:	1ce78a63          	beq	a5,a4,80002710 <__printf+0x4b8>
    80002540:	07800713          	li	a4,120
    80002544:	1ee79e63          	bne	a5,a4,80002740 <__printf+0x4e8>
    80002548:	f7843783          	ld	a5,-136(s0)
    8000254c:	0007a703          	lw	a4,0(a5)
    80002550:	00878793          	addi	a5,a5,8
    80002554:	f6f43c23          	sd	a5,-136(s0)
    80002558:	28074263          	bltz	a4,800027dc <__printf+0x584>
    8000255c:	00002d97          	auipc	s11,0x2
    80002560:	c1cd8d93          	addi	s11,s11,-996 # 80004178 <digits>
    80002564:	00f77793          	andi	a5,a4,15
    80002568:	00fd87b3          	add	a5,s11,a5
    8000256c:	0007c683          	lbu	a3,0(a5)
    80002570:	00f00613          	li	a2,15
    80002574:	0007079b          	sext.w	a5,a4
    80002578:	f8d40023          	sb	a3,-128(s0)
    8000257c:	0047559b          	srliw	a1,a4,0x4
    80002580:	0047569b          	srliw	a3,a4,0x4
    80002584:	00000c93          	li	s9,0
    80002588:	0ee65063          	bge	a2,a4,80002668 <__printf+0x410>
    8000258c:	00f6f693          	andi	a3,a3,15
    80002590:	00dd86b3          	add	a3,s11,a3
    80002594:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002598:	0087d79b          	srliw	a5,a5,0x8
    8000259c:	00100c93          	li	s9,1
    800025a0:	f8d400a3          	sb	a3,-127(s0)
    800025a4:	0cb67263          	bgeu	a2,a1,80002668 <__printf+0x410>
    800025a8:	00f7f693          	andi	a3,a5,15
    800025ac:	00dd86b3          	add	a3,s11,a3
    800025b0:	0006c583          	lbu	a1,0(a3)
    800025b4:	00f00613          	li	a2,15
    800025b8:	0047d69b          	srliw	a3,a5,0x4
    800025bc:	f8b40123          	sb	a1,-126(s0)
    800025c0:	0047d593          	srli	a1,a5,0x4
    800025c4:	28f67e63          	bgeu	a2,a5,80002860 <__printf+0x608>
    800025c8:	00f6f693          	andi	a3,a3,15
    800025cc:	00dd86b3          	add	a3,s11,a3
    800025d0:	0006c503          	lbu	a0,0(a3)
    800025d4:	0087d813          	srli	a6,a5,0x8
    800025d8:	0087d69b          	srliw	a3,a5,0x8
    800025dc:	f8a401a3          	sb	a0,-125(s0)
    800025e0:	28b67663          	bgeu	a2,a1,8000286c <__printf+0x614>
    800025e4:	00f6f693          	andi	a3,a3,15
    800025e8:	00dd86b3          	add	a3,s11,a3
    800025ec:	0006c583          	lbu	a1,0(a3)
    800025f0:	00c7d513          	srli	a0,a5,0xc
    800025f4:	00c7d69b          	srliw	a3,a5,0xc
    800025f8:	f8b40223          	sb	a1,-124(s0)
    800025fc:	29067a63          	bgeu	a2,a6,80002890 <__printf+0x638>
    80002600:	00f6f693          	andi	a3,a3,15
    80002604:	00dd86b3          	add	a3,s11,a3
    80002608:	0006c583          	lbu	a1,0(a3)
    8000260c:	0107d813          	srli	a6,a5,0x10
    80002610:	0107d69b          	srliw	a3,a5,0x10
    80002614:	f8b402a3          	sb	a1,-123(s0)
    80002618:	28a67263          	bgeu	a2,a0,8000289c <__printf+0x644>
    8000261c:	00f6f693          	andi	a3,a3,15
    80002620:	00dd86b3          	add	a3,s11,a3
    80002624:	0006c683          	lbu	a3,0(a3)
    80002628:	0147d79b          	srliw	a5,a5,0x14
    8000262c:	f8d40323          	sb	a3,-122(s0)
    80002630:	21067663          	bgeu	a2,a6,8000283c <__printf+0x5e4>
    80002634:	02079793          	slli	a5,a5,0x20
    80002638:	0207d793          	srli	a5,a5,0x20
    8000263c:	00fd8db3          	add	s11,s11,a5
    80002640:	000dc683          	lbu	a3,0(s11)
    80002644:	00800793          	li	a5,8
    80002648:	00700c93          	li	s9,7
    8000264c:	f8d403a3          	sb	a3,-121(s0)
    80002650:	00075c63          	bgez	a4,80002668 <__printf+0x410>
    80002654:	f9040713          	addi	a4,s0,-112
    80002658:	00f70733          	add	a4,a4,a5
    8000265c:	02d00693          	li	a3,45
    80002660:	fed70823          	sb	a3,-16(a4)
    80002664:	00078c93          	mv	s9,a5
    80002668:	f8040793          	addi	a5,s0,-128
    8000266c:	01978cb3          	add	s9,a5,s9
    80002670:	f7f40d13          	addi	s10,s0,-129
    80002674:	000cc503          	lbu	a0,0(s9)
    80002678:	fffc8c93          	addi	s9,s9,-1
    8000267c:	00000097          	auipc	ra,0x0
    80002680:	9f8080e7          	jalr	-1544(ra) # 80002074 <consputc>
    80002684:	ff9d18e3          	bne	s10,s9,80002674 <__printf+0x41c>
    80002688:	0100006f          	j	80002698 <__printf+0x440>
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	9e8080e7          	jalr	-1560(ra) # 80002074 <consputc>
    80002694:	000c8493          	mv	s1,s9
    80002698:	00094503          	lbu	a0,0(s2)
    8000269c:	c60510e3          	bnez	a0,800022fc <__printf+0xa4>
    800026a0:	e40c0ee3          	beqz	s8,800024fc <__printf+0x2a4>
    800026a4:	00003517          	auipc	a0,0x3
    800026a8:	f8c50513          	addi	a0,a0,-116 # 80005630 <pr>
    800026ac:	00001097          	auipc	ra,0x1
    800026b0:	94c080e7          	jalr	-1716(ra) # 80002ff8 <release>
    800026b4:	e49ff06f          	j	800024fc <__printf+0x2a4>
    800026b8:	f7843783          	ld	a5,-136(s0)
    800026bc:	03000513          	li	a0,48
    800026c0:	01000d13          	li	s10,16
    800026c4:	00878713          	addi	a4,a5,8
    800026c8:	0007bc83          	ld	s9,0(a5)
    800026cc:	f6e43c23          	sd	a4,-136(s0)
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	9a4080e7          	jalr	-1628(ra) # 80002074 <consputc>
    800026d8:	07800513          	li	a0,120
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	998080e7          	jalr	-1640(ra) # 80002074 <consputc>
    800026e4:	00002d97          	auipc	s11,0x2
    800026e8:	a94d8d93          	addi	s11,s11,-1388 # 80004178 <digits>
    800026ec:	03ccd793          	srli	a5,s9,0x3c
    800026f0:	00fd87b3          	add	a5,s11,a5
    800026f4:	0007c503          	lbu	a0,0(a5)
    800026f8:	fffd0d1b          	addiw	s10,s10,-1
    800026fc:	004c9c93          	slli	s9,s9,0x4
    80002700:	00000097          	auipc	ra,0x0
    80002704:	974080e7          	jalr	-1676(ra) # 80002074 <consputc>
    80002708:	fe0d12e3          	bnez	s10,800026ec <__printf+0x494>
    8000270c:	f8dff06f          	j	80002698 <__printf+0x440>
    80002710:	f7843783          	ld	a5,-136(s0)
    80002714:	0007bc83          	ld	s9,0(a5)
    80002718:	00878793          	addi	a5,a5,8
    8000271c:	f6f43c23          	sd	a5,-136(s0)
    80002720:	000c9a63          	bnez	s9,80002734 <__printf+0x4dc>
    80002724:	1080006f          	j	8000282c <__printf+0x5d4>
    80002728:	001c8c93          	addi	s9,s9,1
    8000272c:	00000097          	auipc	ra,0x0
    80002730:	948080e7          	jalr	-1720(ra) # 80002074 <consputc>
    80002734:	000cc503          	lbu	a0,0(s9)
    80002738:	fe0518e3          	bnez	a0,80002728 <__printf+0x4d0>
    8000273c:	f5dff06f          	j	80002698 <__printf+0x440>
    80002740:	02500513          	li	a0,37
    80002744:	00000097          	auipc	ra,0x0
    80002748:	930080e7          	jalr	-1744(ra) # 80002074 <consputc>
    8000274c:	000c8513          	mv	a0,s9
    80002750:	00000097          	auipc	ra,0x0
    80002754:	924080e7          	jalr	-1756(ra) # 80002074 <consputc>
    80002758:	f41ff06f          	j	80002698 <__printf+0x440>
    8000275c:	02500513          	li	a0,37
    80002760:	00000097          	auipc	ra,0x0
    80002764:	914080e7          	jalr	-1772(ra) # 80002074 <consputc>
    80002768:	f31ff06f          	j	80002698 <__printf+0x440>
    8000276c:	00030513          	mv	a0,t1
    80002770:	00000097          	auipc	ra,0x0
    80002774:	7bc080e7          	jalr	1980(ra) # 80002f2c <acquire>
    80002778:	b4dff06f          	j	800022c4 <__printf+0x6c>
    8000277c:	40c0053b          	negw	a0,a2
    80002780:	00a00713          	li	a4,10
    80002784:	02e576bb          	remuw	a3,a0,a4
    80002788:	00002d97          	auipc	s11,0x2
    8000278c:	9f0d8d93          	addi	s11,s11,-1552 # 80004178 <digits>
    80002790:	ff700593          	li	a1,-9
    80002794:	02069693          	slli	a3,a3,0x20
    80002798:	0206d693          	srli	a3,a3,0x20
    8000279c:	00dd86b3          	add	a3,s11,a3
    800027a0:	0006c683          	lbu	a3,0(a3)
    800027a4:	02e557bb          	divuw	a5,a0,a4
    800027a8:	f8d40023          	sb	a3,-128(s0)
    800027ac:	10b65e63          	bge	a2,a1,800028c8 <__printf+0x670>
    800027b0:	06300593          	li	a1,99
    800027b4:	02e7f6bb          	remuw	a3,a5,a4
    800027b8:	02069693          	slli	a3,a3,0x20
    800027bc:	0206d693          	srli	a3,a3,0x20
    800027c0:	00dd86b3          	add	a3,s11,a3
    800027c4:	0006c683          	lbu	a3,0(a3)
    800027c8:	02e7d73b          	divuw	a4,a5,a4
    800027cc:	00200793          	li	a5,2
    800027d0:	f8d400a3          	sb	a3,-127(s0)
    800027d4:	bca5ece3          	bltu	a1,a0,800023ac <__printf+0x154>
    800027d8:	ce5ff06f          	j	800024bc <__printf+0x264>
    800027dc:	40e007bb          	negw	a5,a4
    800027e0:	00002d97          	auipc	s11,0x2
    800027e4:	998d8d93          	addi	s11,s11,-1640 # 80004178 <digits>
    800027e8:	00f7f693          	andi	a3,a5,15
    800027ec:	00dd86b3          	add	a3,s11,a3
    800027f0:	0006c583          	lbu	a1,0(a3)
    800027f4:	ff100613          	li	a2,-15
    800027f8:	0047d69b          	srliw	a3,a5,0x4
    800027fc:	f8b40023          	sb	a1,-128(s0)
    80002800:	0047d59b          	srliw	a1,a5,0x4
    80002804:	0ac75e63          	bge	a4,a2,800028c0 <__printf+0x668>
    80002808:	00f6f693          	andi	a3,a3,15
    8000280c:	00dd86b3          	add	a3,s11,a3
    80002810:	0006c603          	lbu	a2,0(a3)
    80002814:	00f00693          	li	a3,15
    80002818:	0087d79b          	srliw	a5,a5,0x8
    8000281c:	f8c400a3          	sb	a2,-127(s0)
    80002820:	d8b6e4e3          	bltu	a3,a1,800025a8 <__printf+0x350>
    80002824:	00200793          	li	a5,2
    80002828:	e2dff06f          	j	80002654 <__printf+0x3fc>
    8000282c:	00002c97          	auipc	s9,0x2
    80002830:	92cc8c93          	addi	s9,s9,-1748 # 80004158 <CONSOLE_STATUS+0x148>
    80002834:	02800513          	li	a0,40
    80002838:	ef1ff06f          	j	80002728 <__printf+0x4d0>
    8000283c:	00700793          	li	a5,7
    80002840:	00600c93          	li	s9,6
    80002844:	e0dff06f          	j	80002650 <__printf+0x3f8>
    80002848:	00700793          	li	a5,7
    8000284c:	00600c93          	li	s9,6
    80002850:	c69ff06f          	j	800024b8 <__printf+0x260>
    80002854:	00300793          	li	a5,3
    80002858:	00200c93          	li	s9,2
    8000285c:	c5dff06f          	j	800024b8 <__printf+0x260>
    80002860:	00300793          	li	a5,3
    80002864:	00200c93          	li	s9,2
    80002868:	de9ff06f          	j	80002650 <__printf+0x3f8>
    8000286c:	00400793          	li	a5,4
    80002870:	00300c93          	li	s9,3
    80002874:	dddff06f          	j	80002650 <__printf+0x3f8>
    80002878:	00400793          	li	a5,4
    8000287c:	00300c93          	li	s9,3
    80002880:	c39ff06f          	j	800024b8 <__printf+0x260>
    80002884:	00500793          	li	a5,5
    80002888:	00400c93          	li	s9,4
    8000288c:	c2dff06f          	j	800024b8 <__printf+0x260>
    80002890:	00500793          	li	a5,5
    80002894:	00400c93          	li	s9,4
    80002898:	db9ff06f          	j	80002650 <__printf+0x3f8>
    8000289c:	00600793          	li	a5,6
    800028a0:	00500c93          	li	s9,5
    800028a4:	dadff06f          	j	80002650 <__printf+0x3f8>
    800028a8:	00600793          	li	a5,6
    800028ac:	00500c93          	li	s9,5
    800028b0:	c09ff06f          	j	800024b8 <__printf+0x260>
    800028b4:	00800793          	li	a5,8
    800028b8:	00700c93          	li	s9,7
    800028bc:	bfdff06f          	j	800024b8 <__printf+0x260>
    800028c0:	00100793          	li	a5,1
    800028c4:	d91ff06f          	j	80002654 <__printf+0x3fc>
    800028c8:	00100793          	li	a5,1
    800028cc:	bf1ff06f          	j	800024bc <__printf+0x264>
    800028d0:	00900793          	li	a5,9
    800028d4:	00800c93          	li	s9,8
    800028d8:	be1ff06f          	j	800024b8 <__printf+0x260>
    800028dc:	00002517          	auipc	a0,0x2
    800028e0:	88450513          	addi	a0,a0,-1916 # 80004160 <CONSOLE_STATUS+0x150>
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	918080e7          	jalr	-1768(ra) # 800021fc <panic>

00000000800028ec <printfinit>:
    800028ec:	fe010113          	addi	sp,sp,-32
    800028f0:	00813823          	sd	s0,16(sp)
    800028f4:	00913423          	sd	s1,8(sp)
    800028f8:	00113c23          	sd	ra,24(sp)
    800028fc:	02010413          	addi	s0,sp,32
    80002900:	00003497          	auipc	s1,0x3
    80002904:	d3048493          	addi	s1,s1,-720 # 80005630 <pr>
    80002908:	00048513          	mv	a0,s1
    8000290c:	00002597          	auipc	a1,0x2
    80002910:	86458593          	addi	a1,a1,-1948 # 80004170 <CONSOLE_STATUS+0x160>
    80002914:	00000097          	auipc	ra,0x0
    80002918:	5f4080e7          	jalr	1524(ra) # 80002f08 <initlock>
    8000291c:	01813083          	ld	ra,24(sp)
    80002920:	01013403          	ld	s0,16(sp)
    80002924:	0004ac23          	sw	zero,24(s1)
    80002928:	00813483          	ld	s1,8(sp)
    8000292c:	02010113          	addi	sp,sp,32
    80002930:	00008067          	ret

0000000080002934 <uartinit>:
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00813423          	sd	s0,8(sp)
    8000293c:	01010413          	addi	s0,sp,16
    80002940:	100007b7          	lui	a5,0x10000
    80002944:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002948:	f8000713          	li	a4,-128
    8000294c:	00e781a3          	sb	a4,3(a5)
    80002950:	00300713          	li	a4,3
    80002954:	00e78023          	sb	a4,0(a5)
    80002958:	000780a3          	sb	zero,1(a5)
    8000295c:	00e781a3          	sb	a4,3(a5)
    80002960:	00700693          	li	a3,7
    80002964:	00d78123          	sb	a3,2(a5)
    80002968:	00e780a3          	sb	a4,1(a5)
    8000296c:	00813403          	ld	s0,8(sp)
    80002970:	01010113          	addi	sp,sp,16
    80002974:	00008067          	ret

0000000080002978 <uartputc>:
    80002978:	00002797          	auipc	a5,0x2
    8000297c:	a607a783          	lw	a5,-1440(a5) # 800043d8 <panicked>
    80002980:	00078463          	beqz	a5,80002988 <uartputc+0x10>
    80002984:	0000006f          	j	80002984 <uartputc+0xc>
    80002988:	fd010113          	addi	sp,sp,-48
    8000298c:	02813023          	sd	s0,32(sp)
    80002990:	00913c23          	sd	s1,24(sp)
    80002994:	01213823          	sd	s2,16(sp)
    80002998:	01313423          	sd	s3,8(sp)
    8000299c:	02113423          	sd	ra,40(sp)
    800029a0:	03010413          	addi	s0,sp,48
    800029a4:	00002917          	auipc	s2,0x2
    800029a8:	a3c90913          	addi	s2,s2,-1476 # 800043e0 <uart_tx_r>
    800029ac:	00093783          	ld	a5,0(s2)
    800029b0:	00002497          	auipc	s1,0x2
    800029b4:	a3848493          	addi	s1,s1,-1480 # 800043e8 <uart_tx_w>
    800029b8:	0004b703          	ld	a4,0(s1)
    800029bc:	02078693          	addi	a3,a5,32
    800029c0:	00050993          	mv	s3,a0
    800029c4:	02e69c63          	bne	a3,a4,800029fc <uartputc+0x84>
    800029c8:	00001097          	auipc	ra,0x1
    800029cc:	834080e7          	jalr	-1996(ra) # 800031fc <push_on>
    800029d0:	00093783          	ld	a5,0(s2)
    800029d4:	0004b703          	ld	a4,0(s1)
    800029d8:	02078793          	addi	a5,a5,32
    800029dc:	00e79463          	bne	a5,a4,800029e4 <uartputc+0x6c>
    800029e0:	0000006f          	j	800029e0 <uartputc+0x68>
    800029e4:	00001097          	auipc	ra,0x1
    800029e8:	88c080e7          	jalr	-1908(ra) # 80003270 <pop_on>
    800029ec:	00093783          	ld	a5,0(s2)
    800029f0:	0004b703          	ld	a4,0(s1)
    800029f4:	02078693          	addi	a3,a5,32
    800029f8:	fce688e3          	beq	a3,a4,800029c8 <uartputc+0x50>
    800029fc:	01f77693          	andi	a3,a4,31
    80002a00:	00003597          	auipc	a1,0x3
    80002a04:	c5058593          	addi	a1,a1,-944 # 80005650 <uart_tx_buf>
    80002a08:	00d586b3          	add	a3,a1,a3
    80002a0c:	00170713          	addi	a4,a4,1
    80002a10:	01368023          	sb	s3,0(a3)
    80002a14:	00e4b023          	sd	a4,0(s1)
    80002a18:	10000637          	lui	a2,0x10000
    80002a1c:	02f71063          	bne	a4,a5,80002a3c <uartputc+0xc4>
    80002a20:	0340006f          	j	80002a54 <uartputc+0xdc>
    80002a24:	00074703          	lbu	a4,0(a4)
    80002a28:	00f93023          	sd	a5,0(s2)
    80002a2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002a30:	00093783          	ld	a5,0(s2)
    80002a34:	0004b703          	ld	a4,0(s1)
    80002a38:	00f70e63          	beq	a4,a5,80002a54 <uartputc+0xdc>
    80002a3c:	00564683          	lbu	a3,5(a2)
    80002a40:	01f7f713          	andi	a4,a5,31
    80002a44:	00e58733          	add	a4,a1,a4
    80002a48:	0206f693          	andi	a3,a3,32
    80002a4c:	00178793          	addi	a5,a5,1
    80002a50:	fc069ae3          	bnez	a3,80002a24 <uartputc+0xac>
    80002a54:	02813083          	ld	ra,40(sp)
    80002a58:	02013403          	ld	s0,32(sp)
    80002a5c:	01813483          	ld	s1,24(sp)
    80002a60:	01013903          	ld	s2,16(sp)
    80002a64:	00813983          	ld	s3,8(sp)
    80002a68:	03010113          	addi	sp,sp,48
    80002a6c:	00008067          	ret

0000000080002a70 <uartputc_sync>:
    80002a70:	ff010113          	addi	sp,sp,-16
    80002a74:	00813423          	sd	s0,8(sp)
    80002a78:	01010413          	addi	s0,sp,16
    80002a7c:	00002717          	auipc	a4,0x2
    80002a80:	95c72703          	lw	a4,-1700(a4) # 800043d8 <panicked>
    80002a84:	02071663          	bnez	a4,80002ab0 <uartputc_sync+0x40>
    80002a88:	00050793          	mv	a5,a0
    80002a8c:	100006b7          	lui	a3,0x10000
    80002a90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002a94:	02077713          	andi	a4,a4,32
    80002a98:	fe070ce3          	beqz	a4,80002a90 <uartputc_sync+0x20>
    80002a9c:	0ff7f793          	andi	a5,a5,255
    80002aa0:	00f68023          	sb	a5,0(a3)
    80002aa4:	00813403          	ld	s0,8(sp)
    80002aa8:	01010113          	addi	sp,sp,16
    80002aac:	00008067          	ret
    80002ab0:	0000006f          	j	80002ab0 <uartputc_sync+0x40>

0000000080002ab4 <uartstart>:
    80002ab4:	ff010113          	addi	sp,sp,-16
    80002ab8:	00813423          	sd	s0,8(sp)
    80002abc:	01010413          	addi	s0,sp,16
    80002ac0:	00002617          	auipc	a2,0x2
    80002ac4:	92060613          	addi	a2,a2,-1760 # 800043e0 <uart_tx_r>
    80002ac8:	00002517          	auipc	a0,0x2
    80002acc:	92050513          	addi	a0,a0,-1760 # 800043e8 <uart_tx_w>
    80002ad0:	00063783          	ld	a5,0(a2)
    80002ad4:	00053703          	ld	a4,0(a0)
    80002ad8:	04f70263          	beq	a4,a5,80002b1c <uartstart+0x68>
    80002adc:	100005b7          	lui	a1,0x10000
    80002ae0:	00003817          	auipc	a6,0x3
    80002ae4:	b7080813          	addi	a6,a6,-1168 # 80005650 <uart_tx_buf>
    80002ae8:	01c0006f          	j	80002b04 <uartstart+0x50>
    80002aec:	0006c703          	lbu	a4,0(a3)
    80002af0:	00f63023          	sd	a5,0(a2)
    80002af4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002af8:	00063783          	ld	a5,0(a2)
    80002afc:	00053703          	ld	a4,0(a0)
    80002b00:	00f70e63          	beq	a4,a5,80002b1c <uartstart+0x68>
    80002b04:	01f7f713          	andi	a4,a5,31
    80002b08:	00e806b3          	add	a3,a6,a4
    80002b0c:	0055c703          	lbu	a4,5(a1)
    80002b10:	00178793          	addi	a5,a5,1
    80002b14:	02077713          	andi	a4,a4,32
    80002b18:	fc071ae3          	bnez	a4,80002aec <uartstart+0x38>
    80002b1c:	00813403          	ld	s0,8(sp)
    80002b20:	01010113          	addi	sp,sp,16
    80002b24:	00008067          	ret

0000000080002b28 <uartgetc>:
    80002b28:	ff010113          	addi	sp,sp,-16
    80002b2c:	00813423          	sd	s0,8(sp)
    80002b30:	01010413          	addi	s0,sp,16
    80002b34:	10000737          	lui	a4,0x10000
    80002b38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002b3c:	0017f793          	andi	a5,a5,1
    80002b40:	00078c63          	beqz	a5,80002b58 <uartgetc+0x30>
    80002b44:	00074503          	lbu	a0,0(a4)
    80002b48:	0ff57513          	andi	a0,a0,255
    80002b4c:	00813403          	ld	s0,8(sp)
    80002b50:	01010113          	addi	sp,sp,16
    80002b54:	00008067          	ret
    80002b58:	fff00513          	li	a0,-1
    80002b5c:	ff1ff06f          	j	80002b4c <uartgetc+0x24>

0000000080002b60 <uartintr>:
    80002b60:	100007b7          	lui	a5,0x10000
    80002b64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002b68:	0017f793          	andi	a5,a5,1
    80002b6c:	0a078463          	beqz	a5,80002c14 <uartintr+0xb4>
    80002b70:	fe010113          	addi	sp,sp,-32
    80002b74:	00813823          	sd	s0,16(sp)
    80002b78:	00913423          	sd	s1,8(sp)
    80002b7c:	00113c23          	sd	ra,24(sp)
    80002b80:	02010413          	addi	s0,sp,32
    80002b84:	100004b7          	lui	s1,0x10000
    80002b88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002b8c:	0ff57513          	andi	a0,a0,255
    80002b90:	fffff097          	auipc	ra,0xfffff
    80002b94:	534080e7          	jalr	1332(ra) # 800020c4 <consoleintr>
    80002b98:	0054c783          	lbu	a5,5(s1)
    80002b9c:	0017f793          	andi	a5,a5,1
    80002ba0:	fe0794e3          	bnez	a5,80002b88 <uartintr+0x28>
    80002ba4:	00002617          	auipc	a2,0x2
    80002ba8:	83c60613          	addi	a2,a2,-1988 # 800043e0 <uart_tx_r>
    80002bac:	00002517          	auipc	a0,0x2
    80002bb0:	83c50513          	addi	a0,a0,-1988 # 800043e8 <uart_tx_w>
    80002bb4:	00063783          	ld	a5,0(a2)
    80002bb8:	00053703          	ld	a4,0(a0)
    80002bbc:	04f70263          	beq	a4,a5,80002c00 <uartintr+0xa0>
    80002bc0:	100005b7          	lui	a1,0x10000
    80002bc4:	00003817          	auipc	a6,0x3
    80002bc8:	a8c80813          	addi	a6,a6,-1396 # 80005650 <uart_tx_buf>
    80002bcc:	01c0006f          	j	80002be8 <uartintr+0x88>
    80002bd0:	0006c703          	lbu	a4,0(a3)
    80002bd4:	00f63023          	sd	a5,0(a2)
    80002bd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002bdc:	00063783          	ld	a5,0(a2)
    80002be0:	00053703          	ld	a4,0(a0)
    80002be4:	00f70e63          	beq	a4,a5,80002c00 <uartintr+0xa0>
    80002be8:	01f7f713          	andi	a4,a5,31
    80002bec:	00e806b3          	add	a3,a6,a4
    80002bf0:	0055c703          	lbu	a4,5(a1)
    80002bf4:	00178793          	addi	a5,a5,1
    80002bf8:	02077713          	andi	a4,a4,32
    80002bfc:	fc071ae3          	bnez	a4,80002bd0 <uartintr+0x70>
    80002c00:	01813083          	ld	ra,24(sp)
    80002c04:	01013403          	ld	s0,16(sp)
    80002c08:	00813483          	ld	s1,8(sp)
    80002c0c:	02010113          	addi	sp,sp,32
    80002c10:	00008067          	ret
    80002c14:	00001617          	auipc	a2,0x1
    80002c18:	7cc60613          	addi	a2,a2,1996 # 800043e0 <uart_tx_r>
    80002c1c:	00001517          	auipc	a0,0x1
    80002c20:	7cc50513          	addi	a0,a0,1996 # 800043e8 <uart_tx_w>
    80002c24:	00063783          	ld	a5,0(a2)
    80002c28:	00053703          	ld	a4,0(a0)
    80002c2c:	04f70263          	beq	a4,a5,80002c70 <uartintr+0x110>
    80002c30:	100005b7          	lui	a1,0x10000
    80002c34:	00003817          	auipc	a6,0x3
    80002c38:	a1c80813          	addi	a6,a6,-1508 # 80005650 <uart_tx_buf>
    80002c3c:	01c0006f          	j	80002c58 <uartintr+0xf8>
    80002c40:	0006c703          	lbu	a4,0(a3)
    80002c44:	00f63023          	sd	a5,0(a2)
    80002c48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c4c:	00063783          	ld	a5,0(a2)
    80002c50:	00053703          	ld	a4,0(a0)
    80002c54:	02f70063          	beq	a4,a5,80002c74 <uartintr+0x114>
    80002c58:	01f7f713          	andi	a4,a5,31
    80002c5c:	00e806b3          	add	a3,a6,a4
    80002c60:	0055c703          	lbu	a4,5(a1)
    80002c64:	00178793          	addi	a5,a5,1
    80002c68:	02077713          	andi	a4,a4,32
    80002c6c:	fc071ae3          	bnez	a4,80002c40 <uartintr+0xe0>
    80002c70:	00008067          	ret
    80002c74:	00008067          	ret

0000000080002c78 <kinit>:
    80002c78:	fc010113          	addi	sp,sp,-64
    80002c7c:	02913423          	sd	s1,40(sp)
    80002c80:	fffff7b7          	lui	a5,0xfffff
    80002c84:	00004497          	auipc	s1,0x4
    80002c88:	9eb48493          	addi	s1,s1,-1557 # 8000666f <end+0xfff>
    80002c8c:	02813823          	sd	s0,48(sp)
    80002c90:	01313c23          	sd	s3,24(sp)
    80002c94:	00f4f4b3          	and	s1,s1,a5
    80002c98:	02113c23          	sd	ra,56(sp)
    80002c9c:	03213023          	sd	s2,32(sp)
    80002ca0:	01413823          	sd	s4,16(sp)
    80002ca4:	01513423          	sd	s5,8(sp)
    80002ca8:	04010413          	addi	s0,sp,64
    80002cac:	000017b7          	lui	a5,0x1
    80002cb0:	01100993          	li	s3,17
    80002cb4:	00f487b3          	add	a5,s1,a5
    80002cb8:	01b99993          	slli	s3,s3,0x1b
    80002cbc:	06f9e063          	bltu	s3,a5,80002d1c <kinit+0xa4>
    80002cc0:	00003a97          	auipc	s5,0x3
    80002cc4:	9b0a8a93          	addi	s5,s5,-1616 # 80005670 <end>
    80002cc8:	0754ec63          	bltu	s1,s5,80002d40 <kinit+0xc8>
    80002ccc:	0734fa63          	bgeu	s1,s3,80002d40 <kinit+0xc8>
    80002cd0:	00088a37          	lui	s4,0x88
    80002cd4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002cd8:	00001917          	auipc	s2,0x1
    80002cdc:	71890913          	addi	s2,s2,1816 # 800043f0 <kmem>
    80002ce0:	00ca1a13          	slli	s4,s4,0xc
    80002ce4:	0140006f          	j	80002cf8 <kinit+0x80>
    80002ce8:	000017b7          	lui	a5,0x1
    80002cec:	00f484b3          	add	s1,s1,a5
    80002cf0:	0554e863          	bltu	s1,s5,80002d40 <kinit+0xc8>
    80002cf4:	0534f663          	bgeu	s1,s3,80002d40 <kinit+0xc8>
    80002cf8:	00001637          	lui	a2,0x1
    80002cfc:	00100593          	li	a1,1
    80002d00:	00048513          	mv	a0,s1
    80002d04:	00000097          	auipc	ra,0x0
    80002d08:	5e4080e7          	jalr	1508(ra) # 800032e8 <__memset>
    80002d0c:	00093783          	ld	a5,0(s2)
    80002d10:	00f4b023          	sd	a5,0(s1)
    80002d14:	00993023          	sd	s1,0(s2)
    80002d18:	fd4498e3          	bne	s1,s4,80002ce8 <kinit+0x70>
    80002d1c:	03813083          	ld	ra,56(sp)
    80002d20:	03013403          	ld	s0,48(sp)
    80002d24:	02813483          	ld	s1,40(sp)
    80002d28:	02013903          	ld	s2,32(sp)
    80002d2c:	01813983          	ld	s3,24(sp)
    80002d30:	01013a03          	ld	s4,16(sp)
    80002d34:	00813a83          	ld	s5,8(sp)
    80002d38:	04010113          	addi	sp,sp,64
    80002d3c:	00008067          	ret
    80002d40:	00001517          	auipc	a0,0x1
    80002d44:	45050513          	addi	a0,a0,1104 # 80004190 <digits+0x18>
    80002d48:	fffff097          	auipc	ra,0xfffff
    80002d4c:	4b4080e7          	jalr	1204(ra) # 800021fc <panic>

0000000080002d50 <freerange>:
    80002d50:	fc010113          	addi	sp,sp,-64
    80002d54:	000017b7          	lui	a5,0x1
    80002d58:	02913423          	sd	s1,40(sp)
    80002d5c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002d60:	009504b3          	add	s1,a0,s1
    80002d64:	fffff537          	lui	a0,0xfffff
    80002d68:	02813823          	sd	s0,48(sp)
    80002d6c:	02113c23          	sd	ra,56(sp)
    80002d70:	03213023          	sd	s2,32(sp)
    80002d74:	01313c23          	sd	s3,24(sp)
    80002d78:	01413823          	sd	s4,16(sp)
    80002d7c:	01513423          	sd	s5,8(sp)
    80002d80:	01613023          	sd	s6,0(sp)
    80002d84:	04010413          	addi	s0,sp,64
    80002d88:	00a4f4b3          	and	s1,s1,a0
    80002d8c:	00f487b3          	add	a5,s1,a5
    80002d90:	06f5e463          	bltu	a1,a5,80002df8 <freerange+0xa8>
    80002d94:	00003a97          	auipc	s5,0x3
    80002d98:	8dca8a93          	addi	s5,s5,-1828 # 80005670 <end>
    80002d9c:	0954e263          	bltu	s1,s5,80002e20 <freerange+0xd0>
    80002da0:	01100993          	li	s3,17
    80002da4:	01b99993          	slli	s3,s3,0x1b
    80002da8:	0734fc63          	bgeu	s1,s3,80002e20 <freerange+0xd0>
    80002dac:	00058a13          	mv	s4,a1
    80002db0:	00001917          	auipc	s2,0x1
    80002db4:	64090913          	addi	s2,s2,1600 # 800043f0 <kmem>
    80002db8:	00002b37          	lui	s6,0x2
    80002dbc:	0140006f          	j	80002dd0 <freerange+0x80>
    80002dc0:	000017b7          	lui	a5,0x1
    80002dc4:	00f484b3          	add	s1,s1,a5
    80002dc8:	0554ec63          	bltu	s1,s5,80002e20 <freerange+0xd0>
    80002dcc:	0534fa63          	bgeu	s1,s3,80002e20 <freerange+0xd0>
    80002dd0:	00001637          	lui	a2,0x1
    80002dd4:	00100593          	li	a1,1
    80002dd8:	00048513          	mv	a0,s1
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	50c080e7          	jalr	1292(ra) # 800032e8 <__memset>
    80002de4:	00093703          	ld	a4,0(s2)
    80002de8:	016487b3          	add	a5,s1,s6
    80002dec:	00e4b023          	sd	a4,0(s1)
    80002df0:	00993023          	sd	s1,0(s2)
    80002df4:	fcfa76e3          	bgeu	s4,a5,80002dc0 <freerange+0x70>
    80002df8:	03813083          	ld	ra,56(sp)
    80002dfc:	03013403          	ld	s0,48(sp)
    80002e00:	02813483          	ld	s1,40(sp)
    80002e04:	02013903          	ld	s2,32(sp)
    80002e08:	01813983          	ld	s3,24(sp)
    80002e0c:	01013a03          	ld	s4,16(sp)
    80002e10:	00813a83          	ld	s5,8(sp)
    80002e14:	00013b03          	ld	s6,0(sp)
    80002e18:	04010113          	addi	sp,sp,64
    80002e1c:	00008067          	ret
    80002e20:	00001517          	auipc	a0,0x1
    80002e24:	37050513          	addi	a0,a0,880 # 80004190 <digits+0x18>
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	3d4080e7          	jalr	980(ra) # 800021fc <panic>

0000000080002e30 <kfree>:
    80002e30:	fe010113          	addi	sp,sp,-32
    80002e34:	00813823          	sd	s0,16(sp)
    80002e38:	00113c23          	sd	ra,24(sp)
    80002e3c:	00913423          	sd	s1,8(sp)
    80002e40:	02010413          	addi	s0,sp,32
    80002e44:	03451793          	slli	a5,a0,0x34
    80002e48:	04079c63          	bnez	a5,80002ea0 <kfree+0x70>
    80002e4c:	00003797          	auipc	a5,0x3
    80002e50:	82478793          	addi	a5,a5,-2012 # 80005670 <end>
    80002e54:	00050493          	mv	s1,a0
    80002e58:	04f56463          	bltu	a0,a5,80002ea0 <kfree+0x70>
    80002e5c:	01100793          	li	a5,17
    80002e60:	01b79793          	slli	a5,a5,0x1b
    80002e64:	02f57e63          	bgeu	a0,a5,80002ea0 <kfree+0x70>
    80002e68:	00001637          	lui	a2,0x1
    80002e6c:	00100593          	li	a1,1
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	478080e7          	jalr	1144(ra) # 800032e8 <__memset>
    80002e78:	00001797          	auipc	a5,0x1
    80002e7c:	57878793          	addi	a5,a5,1400 # 800043f0 <kmem>
    80002e80:	0007b703          	ld	a4,0(a5)
    80002e84:	01813083          	ld	ra,24(sp)
    80002e88:	01013403          	ld	s0,16(sp)
    80002e8c:	00e4b023          	sd	a4,0(s1)
    80002e90:	0097b023          	sd	s1,0(a5)
    80002e94:	00813483          	ld	s1,8(sp)
    80002e98:	02010113          	addi	sp,sp,32
    80002e9c:	00008067          	ret
    80002ea0:	00001517          	auipc	a0,0x1
    80002ea4:	2f050513          	addi	a0,a0,752 # 80004190 <digits+0x18>
    80002ea8:	fffff097          	auipc	ra,0xfffff
    80002eac:	354080e7          	jalr	852(ra) # 800021fc <panic>

0000000080002eb0 <kalloc>:
    80002eb0:	fe010113          	addi	sp,sp,-32
    80002eb4:	00813823          	sd	s0,16(sp)
    80002eb8:	00913423          	sd	s1,8(sp)
    80002ebc:	00113c23          	sd	ra,24(sp)
    80002ec0:	02010413          	addi	s0,sp,32
    80002ec4:	00001797          	auipc	a5,0x1
    80002ec8:	52c78793          	addi	a5,a5,1324 # 800043f0 <kmem>
    80002ecc:	0007b483          	ld	s1,0(a5)
    80002ed0:	02048063          	beqz	s1,80002ef0 <kalloc+0x40>
    80002ed4:	0004b703          	ld	a4,0(s1)
    80002ed8:	00001637          	lui	a2,0x1
    80002edc:	00500593          	li	a1,5
    80002ee0:	00048513          	mv	a0,s1
    80002ee4:	00e7b023          	sd	a4,0(a5)
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	400080e7          	jalr	1024(ra) # 800032e8 <__memset>
    80002ef0:	01813083          	ld	ra,24(sp)
    80002ef4:	01013403          	ld	s0,16(sp)
    80002ef8:	00048513          	mv	a0,s1
    80002efc:	00813483          	ld	s1,8(sp)
    80002f00:	02010113          	addi	sp,sp,32
    80002f04:	00008067          	ret

0000000080002f08 <initlock>:
    80002f08:	ff010113          	addi	sp,sp,-16
    80002f0c:	00813423          	sd	s0,8(sp)
    80002f10:	01010413          	addi	s0,sp,16
    80002f14:	00813403          	ld	s0,8(sp)
    80002f18:	00b53423          	sd	a1,8(a0)
    80002f1c:	00052023          	sw	zero,0(a0)
    80002f20:	00053823          	sd	zero,16(a0)
    80002f24:	01010113          	addi	sp,sp,16
    80002f28:	00008067          	ret

0000000080002f2c <acquire>:
    80002f2c:	fe010113          	addi	sp,sp,-32
    80002f30:	00813823          	sd	s0,16(sp)
    80002f34:	00913423          	sd	s1,8(sp)
    80002f38:	00113c23          	sd	ra,24(sp)
    80002f3c:	01213023          	sd	s2,0(sp)
    80002f40:	02010413          	addi	s0,sp,32
    80002f44:	00050493          	mv	s1,a0
    80002f48:	10002973          	csrr	s2,sstatus
    80002f4c:	100027f3          	csrr	a5,sstatus
    80002f50:	ffd7f793          	andi	a5,a5,-3
    80002f54:	10079073          	csrw	sstatus,a5
    80002f58:	fffff097          	auipc	ra,0xfffff
    80002f5c:	8ec080e7          	jalr	-1812(ra) # 80001844 <mycpu>
    80002f60:	07852783          	lw	a5,120(a0)
    80002f64:	06078e63          	beqz	a5,80002fe0 <acquire+0xb4>
    80002f68:	fffff097          	auipc	ra,0xfffff
    80002f6c:	8dc080e7          	jalr	-1828(ra) # 80001844 <mycpu>
    80002f70:	07852783          	lw	a5,120(a0)
    80002f74:	0004a703          	lw	a4,0(s1)
    80002f78:	0017879b          	addiw	a5,a5,1
    80002f7c:	06f52c23          	sw	a5,120(a0)
    80002f80:	04071063          	bnez	a4,80002fc0 <acquire+0x94>
    80002f84:	00100713          	li	a4,1
    80002f88:	00070793          	mv	a5,a4
    80002f8c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002f90:	0007879b          	sext.w	a5,a5
    80002f94:	fe079ae3          	bnez	a5,80002f88 <acquire+0x5c>
    80002f98:	0ff0000f          	fence
    80002f9c:	fffff097          	auipc	ra,0xfffff
    80002fa0:	8a8080e7          	jalr	-1880(ra) # 80001844 <mycpu>
    80002fa4:	01813083          	ld	ra,24(sp)
    80002fa8:	01013403          	ld	s0,16(sp)
    80002fac:	00a4b823          	sd	a0,16(s1)
    80002fb0:	00013903          	ld	s2,0(sp)
    80002fb4:	00813483          	ld	s1,8(sp)
    80002fb8:	02010113          	addi	sp,sp,32
    80002fbc:	00008067          	ret
    80002fc0:	0104b903          	ld	s2,16(s1)
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	880080e7          	jalr	-1920(ra) # 80001844 <mycpu>
    80002fcc:	faa91ce3          	bne	s2,a0,80002f84 <acquire+0x58>
    80002fd0:	00001517          	auipc	a0,0x1
    80002fd4:	1c850513          	addi	a0,a0,456 # 80004198 <digits+0x20>
    80002fd8:	fffff097          	auipc	ra,0xfffff
    80002fdc:	224080e7          	jalr	548(ra) # 800021fc <panic>
    80002fe0:	00195913          	srli	s2,s2,0x1
    80002fe4:	fffff097          	auipc	ra,0xfffff
    80002fe8:	860080e7          	jalr	-1952(ra) # 80001844 <mycpu>
    80002fec:	00197913          	andi	s2,s2,1
    80002ff0:	07252e23          	sw	s2,124(a0)
    80002ff4:	f75ff06f          	j	80002f68 <acquire+0x3c>

0000000080002ff8 <release>:
    80002ff8:	fe010113          	addi	sp,sp,-32
    80002ffc:	00813823          	sd	s0,16(sp)
    80003000:	00113c23          	sd	ra,24(sp)
    80003004:	00913423          	sd	s1,8(sp)
    80003008:	01213023          	sd	s2,0(sp)
    8000300c:	02010413          	addi	s0,sp,32
    80003010:	00052783          	lw	a5,0(a0)
    80003014:	00079a63          	bnez	a5,80003028 <release+0x30>
    80003018:	00001517          	auipc	a0,0x1
    8000301c:	18850513          	addi	a0,a0,392 # 800041a0 <digits+0x28>
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	1dc080e7          	jalr	476(ra) # 800021fc <panic>
    80003028:	01053903          	ld	s2,16(a0)
    8000302c:	00050493          	mv	s1,a0
    80003030:	fffff097          	auipc	ra,0xfffff
    80003034:	814080e7          	jalr	-2028(ra) # 80001844 <mycpu>
    80003038:	fea910e3          	bne	s2,a0,80003018 <release+0x20>
    8000303c:	0004b823          	sd	zero,16(s1)
    80003040:	0ff0000f          	fence
    80003044:	0f50000f          	fence	iorw,ow
    80003048:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000304c:	ffffe097          	auipc	ra,0xffffe
    80003050:	7f8080e7          	jalr	2040(ra) # 80001844 <mycpu>
    80003054:	100027f3          	csrr	a5,sstatus
    80003058:	0027f793          	andi	a5,a5,2
    8000305c:	04079a63          	bnez	a5,800030b0 <release+0xb8>
    80003060:	07852783          	lw	a5,120(a0)
    80003064:	02f05e63          	blez	a5,800030a0 <release+0xa8>
    80003068:	fff7871b          	addiw	a4,a5,-1
    8000306c:	06e52c23          	sw	a4,120(a0)
    80003070:	00071c63          	bnez	a4,80003088 <release+0x90>
    80003074:	07c52783          	lw	a5,124(a0)
    80003078:	00078863          	beqz	a5,80003088 <release+0x90>
    8000307c:	100027f3          	csrr	a5,sstatus
    80003080:	0027e793          	ori	a5,a5,2
    80003084:	10079073          	csrw	sstatus,a5
    80003088:	01813083          	ld	ra,24(sp)
    8000308c:	01013403          	ld	s0,16(sp)
    80003090:	00813483          	ld	s1,8(sp)
    80003094:	00013903          	ld	s2,0(sp)
    80003098:	02010113          	addi	sp,sp,32
    8000309c:	00008067          	ret
    800030a0:	00001517          	auipc	a0,0x1
    800030a4:	12050513          	addi	a0,a0,288 # 800041c0 <digits+0x48>
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	154080e7          	jalr	340(ra) # 800021fc <panic>
    800030b0:	00001517          	auipc	a0,0x1
    800030b4:	0f850513          	addi	a0,a0,248 # 800041a8 <digits+0x30>
    800030b8:	fffff097          	auipc	ra,0xfffff
    800030bc:	144080e7          	jalr	324(ra) # 800021fc <panic>

00000000800030c0 <holding>:
    800030c0:	00052783          	lw	a5,0(a0)
    800030c4:	00079663          	bnez	a5,800030d0 <holding+0x10>
    800030c8:	00000513          	li	a0,0
    800030cc:	00008067          	ret
    800030d0:	fe010113          	addi	sp,sp,-32
    800030d4:	00813823          	sd	s0,16(sp)
    800030d8:	00913423          	sd	s1,8(sp)
    800030dc:	00113c23          	sd	ra,24(sp)
    800030e0:	02010413          	addi	s0,sp,32
    800030e4:	01053483          	ld	s1,16(a0)
    800030e8:	ffffe097          	auipc	ra,0xffffe
    800030ec:	75c080e7          	jalr	1884(ra) # 80001844 <mycpu>
    800030f0:	01813083          	ld	ra,24(sp)
    800030f4:	01013403          	ld	s0,16(sp)
    800030f8:	40a48533          	sub	a0,s1,a0
    800030fc:	00153513          	seqz	a0,a0
    80003100:	00813483          	ld	s1,8(sp)
    80003104:	02010113          	addi	sp,sp,32
    80003108:	00008067          	ret

000000008000310c <push_off>:
    8000310c:	fe010113          	addi	sp,sp,-32
    80003110:	00813823          	sd	s0,16(sp)
    80003114:	00113c23          	sd	ra,24(sp)
    80003118:	00913423          	sd	s1,8(sp)
    8000311c:	02010413          	addi	s0,sp,32
    80003120:	100024f3          	csrr	s1,sstatus
    80003124:	100027f3          	csrr	a5,sstatus
    80003128:	ffd7f793          	andi	a5,a5,-3
    8000312c:	10079073          	csrw	sstatus,a5
    80003130:	ffffe097          	auipc	ra,0xffffe
    80003134:	714080e7          	jalr	1812(ra) # 80001844 <mycpu>
    80003138:	07852783          	lw	a5,120(a0)
    8000313c:	02078663          	beqz	a5,80003168 <push_off+0x5c>
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	704080e7          	jalr	1796(ra) # 80001844 <mycpu>
    80003148:	07852783          	lw	a5,120(a0)
    8000314c:	01813083          	ld	ra,24(sp)
    80003150:	01013403          	ld	s0,16(sp)
    80003154:	0017879b          	addiw	a5,a5,1
    80003158:	06f52c23          	sw	a5,120(a0)
    8000315c:	00813483          	ld	s1,8(sp)
    80003160:	02010113          	addi	sp,sp,32
    80003164:	00008067          	ret
    80003168:	0014d493          	srli	s1,s1,0x1
    8000316c:	ffffe097          	auipc	ra,0xffffe
    80003170:	6d8080e7          	jalr	1752(ra) # 80001844 <mycpu>
    80003174:	0014f493          	andi	s1,s1,1
    80003178:	06952e23          	sw	s1,124(a0)
    8000317c:	fc5ff06f          	j	80003140 <push_off+0x34>

0000000080003180 <pop_off>:
    80003180:	ff010113          	addi	sp,sp,-16
    80003184:	00813023          	sd	s0,0(sp)
    80003188:	00113423          	sd	ra,8(sp)
    8000318c:	01010413          	addi	s0,sp,16
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	6b4080e7          	jalr	1716(ra) # 80001844 <mycpu>
    80003198:	100027f3          	csrr	a5,sstatus
    8000319c:	0027f793          	andi	a5,a5,2
    800031a0:	04079663          	bnez	a5,800031ec <pop_off+0x6c>
    800031a4:	07852783          	lw	a5,120(a0)
    800031a8:	02f05a63          	blez	a5,800031dc <pop_off+0x5c>
    800031ac:	fff7871b          	addiw	a4,a5,-1
    800031b0:	06e52c23          	sw	a4,120(a0)
    800031b4:	00071c63          	bnez	a4,800031cc <pop_off+0x4c>
    800031b8:	07c52783          	lw	a5,124(a0)
    800031bc:	00078863          	beqz	a5,800031cc <pop_off+0x4c>
    800031c0:	100027f3          	csrr	a5,sstatus
    800031c4:	0027e793          	ori	a5,a5,2
    800031c8:	10079073          	csrw	sstatus,a5
    800031cc:	00813083          	ld	ra,8(sp)
    800031d0:	00013403          	ld	s0,0(sp)
    800031d4:	01010113          	addi	sp,sp,16
    800031d8:	00008067          	ret
    800031dc:	00001517          	auipc	a0,0x1
    800031e0:	fe450513          	addi	a0,a0,-28 # 800041c0 <digits+0x48>
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	018080e7          	jalr	24(ra) # 800021fc <panic>
    800031ec:	00001517          	auipc	a0,0x1
    800031f0:	fbc50513          	addi	a0,a0,-68 # 800041a8 <digits+0x30>
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	008080e7          	jalr	8(ra) # 800021fc <panic>

00000000800031fc <push_on>:
    800031fc:	fe010113          	addi	sp,sp,-32
    80003200:	00813823          	sd	s0,16(sp)
    80003204:	00113c23          	sd	ra,24(sp)
    80003208:	00913423          	sd	s1,8(sp)
    8000320c:	02010413          	addi	s0,sp,32
    80003210:	100024f3          	csrr	s1,sstatus
    80003214:	100027f3          	csrr	a5,sstatus
    80003218:	0027e793          	ori	a5,a5,2
    8000321c:	10079073          	csrw	sstatus,a5
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	624080e7          	jalr	1572(ra) # 80001844 <mycpu>
    80003228:	07852783          	lw	a5,120(a0)
    8000322c:	02078663          	beqz	a5,80003258 <push_on+0x5c>
    80003230:	ffffe097          	auipc	ra,0xffffe
    80003234:	614080e7          	jalr	1556(ra) # 80001844 <mycpu>
    80003238:	07852783          	lw	a5,120(a0)
    8000323c:	01813083          	ld	ra,24(sp)
    80003240:	01013403          	ld	s0,16(sp)
    80003244:	0017879b          	addiw	a5,a5,1
    80003248:	06f52c23          	sw	a5,120(a0)
    8000324c:	00813483          	ld	s1,8(sp)
    80003250:	02010113          	addi	sp,sp,32
    80003254:	00008067          	ret
    80003258:	0014d493          	srli	s1,s1,0x1
    8000325c:	ffffe097          	auipc	ra,0xffffe
    80003260:	5e8080e7          	jalr	1512(ra) # 80001844 <mycpu>
    80003264:	0014f493          	andi	s1,s1,1
    80003268:	06952e23          	sw	s1,124(a0)
    8000326c:	fc5ff06f          	j	80003230 <push_on+0x34>

0000000080003270 <pop_on>:
    80003270:	ff010113          	addi	sp,sp,-16
    80003274:	00813023          	sd	s0,0(sp)
    80003278:	00113423          	sd	ra,8(sp)
    8000327c:	01010413          	addi	s0,sp,16
    80003280:	ffffe097          	auipc	ra,0xffffe
    80003284:	5c4080e7          	jalr	1476(ra) # 80001844 <mycpu>
    80003288:	100027f3          	csrr	a5,sstatus
    8000328c:	0027f793          	andi	a5,a5,2
    80003290:	04078463          	beqz	a5,800032d8 <pop_on+0x68>
    80003294:	07852783          	lw	a5,120(a0)
    80003298:	02f05863          	blez	a5,800032c8 <pop_on+0x58>
    8000329c:	fff7879b          	addiw	a5,a5,-1
    800032a0:	06f52c23          	sw	a5,120(a0)
    800032a4:	07853783          	ld	a5,120(a0)
    800032a8:	00079863          	bnez	a5,800032b8 <pop_on+0x48>
    800032ac:	100027f3          	csrr	a5,sstatus
    800032b0:	ffd7f793          	andi	a5,a5,-3
    800032b4:	10079073          	csrw	sstatus,a5
    800032b8:	00813083          	ld	ra,8(sp)
    800032bc:	00013403          	ld	s0,0(sp)
    800032c0:	01010113          	addi	sp,sp,16
    800032c4:	00008067          	ret
    800032c8:	00001517          	auipc	a0,0x1
    800032cc:	f2050513          	addi	a0,a0,-224 # 800041e8 <digits+0x70>
    800032d0:	fffff097          	auipc	ra,0xfffff
    800032d4:	f2c080e7          	jalr	-212(ra) # 800021fc <panic>
    800032d8:	00001517          	auipc	a0,0x1
    800032dc:	ef050513          	addi	a0,a0,-272 # 800041c8 <digits+0x50>
    800032e0:	fffff097          	auipc	ra,0xfffff
    800032e4:	f1c080e7          	jalr	-228(ra) # 800021fc <panic>

00000000800032e8 <__memset>:
    800032e8:	ff010113          	addi	sp,sp,-16
    800032ec:	00813423          	sd	s0,8(sp)
    800032f0:	01010413          	addi	s0,sp,16
    800032f4:	1a060e63          	beqz	a2,800034b0 <__memset+0x1c8>
    800032f8:	40a007b3          	neg	a5,a0
    800032fc:	0077f793          	andi	a5,a5,7
    80003300:	00778693          	addi	a3,a5,7
    80003304:	00b00813          	li	a6,11
    80003308:	0ff5f593          	andi	a1,a1,255
    8000330c:	fff6071b          	addiw	a4,a2,-1
    80003310:	1b06e663          	bltu	a3,a6,800034bc <__memset+0x1d4>
    80003314:	1cd76463          	bltu	a4,a3,800034dc <__memset+0x1f4>
    80003318:	1a078e63          	beqz	a5,800034d4 <__memset+0x1ec>
    8000331c:	00b50023          	sb	a1,0(a0)
    80003320:	00100713          	li	a4,1
    80003324:	1ae78463          	beq	a5,a4,800034cc <__memset+0x1e4>
    80003328:	00b500a3          	sb	a1,1(a0)
    8000332c:	00200713          	li	a4,2
    80003330:	1ae78a63          	beq	a5,a4,800034e4 <__memset+0x1fc>
    80003334:	00b50123          	sb	a1,2(a0)
    80003338:	00300713          	li	a4,3
    8000333c:	18e78463          	beq	a5,a4,800034c4 <__memset+0x1dc>
    80003340:	00b501a3          	sb	a1,3(a0)
    80003344:	00400713          	li	a4,4
    80003348:	1ae78263          	beq	a5,a4,800034ec <__memset+0x204>
    8000334c:	00b50223          	sb	a1,4(a0)
    80003350:	00500713          	li	a4,5
    80003354:	1ae78063          	beq	a5,a4,800034f4 <__memset+0x20c>
    80003358:	00b502a3          	sb	a1,5(a0)
    8000335c:	00700713          	li	a4,7
    80003360:	18e79e63          	bne	a5,a4,800034fc <__memset+0x214>
    80003364:	00b50323          	sb	a1,6(a0)
    80003368:	00700e93          	li	t4,7
    8000336c:	00859713          	slli	a4,a1,0x8
    80003370:	00e5e733          	or	a4,a1,a4
    80003374:	01059e13          	slli	t3,a1,0x10
    80003378:	01c76e33          	or	t3,a4,t3
    8000337c:	01859313          	slli	t1,a1,0x18
    80003380:	006e6333          	or	t1,t3,t1
    80003384:	02059893          	slli	a7,a1,0x20
    80003388:	40f60e3b          	subw	t3,a2,a5
    8000338c:	011368b3          	or	a7,t1,a7
    80003390:	02859813          	slli	a6,a1,0x28
    80003394:	0108e833          	or	a6,a7,a6
    80003398:	03059693          	slli	a3,a1,0x30
    8000339c:	003e589b          	srliw	a7,t3,0x3
    800033a0:	00d866b3          	or	a3,a6,a3
    800033a4:	03859713          	slli	a4,a1,0x38
    800033a8:	00389813          	slli	a6,a7,0x3
    800033ac:	00f507b3          	add	a5,a0,a5
    800033b0:	00e6e733          	or	a4,a3,a4
    800033b4:	000e089b          	sext.w	a7,t3
    800033b8:	00f806b3          	add	a3,a6,a5
    800033bc:	00e7b023          	sd	a4,0(a5)
    800033c0:	00878793          	addi	a5,a5,8
    800033c4:	fed79ce3          	bne	a5,a3,800033bc <__memset+0xd4>
    800033c8:	ff8e7793          	andi	a5,t3,-8
    800033cc:	0007871b          	sext.w	a4,a5
    800033d0:	01d787bb          	addw	a5,a5,t4
    800033d4:	0ce88e63          	beq	a7,a4,800034b0 <__memset+0x1c8>
    800033d8:	00f50733          	add	a4,a0,a5
    800033dc:	00b70023          	sb	a1,0(a4)
    800033e0:	0017871b          	addiw	a4,a5,1
    800033e4:	0cc77663          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    800033e8:	00e50733          	add	a4,a0,a4
    800033ec:	00b70023          	sb	a1,0(a4)
    800033f0:	0027871b          	addiw	a4,a5,2
    800033f4:	0ac77e63          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    800033f8:	00e50733          	add	a4,a0,a4
    800033fc:	00b70023          	sb	a1,0(a4)
    80003400:	0037871b          	addiw	a4,a5,3
    80003404:	0ac77663          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    80003408:	00e50733          	add	a4,a0,a4
    8000340c:	00b70023          	sb	a1,0(a4)
    80003410:	0047871b          	addiw	a4,a5,4
    80003414:	08c77e63          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    80003418:	00e50733          	add	a4,a0,a4
    8000341c:	00b70023          	sb	a1,0(a4)
    80003420:	0057871b          	addiw	a4,a5,5
    80003424:	08c77663          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    80003428:	00e50733          	add	a4,a0,a4
    8000342c:	00b70023          	sb	a1,0(a4)
    80003430:	0067871b          	addiw	a4,a5,6
    80003434:	06c77e63          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    80003438:	00e50733          	add	a4,a0,a4
    8000343c:	00b70023          	sb	a1,0(a4)
    80003440:	0077871b          	addiw	a4,a5,7
    80003444:	06c77663          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    80003448:	00e50733          	add	a4,a0,a4
    8000344c:	00b70023          	sb	a1,0(a4)
    80003450:	0087871b          	addiw	a4,a5,8
    80003454:	04c77e63          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    80003458:	00e50733          	add	a4,a0,a4
    8000345c:	00b70023          	sb	a1,0(a4)
    80003460:	0097871b          	addiw	a4,a5,9
    80003464:	04c77663          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    80003468:	00e50733          	add	a4,a0,a4
    8000346c:	00b70023          	sb	a1,0(a4)
    80003470:	00a7871b          	addiw	a4,a5,10
    80003474:	02c77e63          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    80003478:	00e50733          	add	a4,a0,a4
    8000347c:	00b70023          	sb	a1,0(a4)
    80003480:	00b7871b          	addiw	a4,a5,11
    80003484:	02c77663          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    80003488:	00e50733          	add	a4,a0,a4
    8000348c:	00b70023          	sb	a1,0(a4)
    80003490:	00c7871b          	addiw	a4,a5,12
    80003494:	00c77e63          	bgeu	a4,a2,800034b0 <__memset+0x1c8>
    80003498:	00e50733          	add	a4,a0,a4
    8000349c:	00b70023          	sb	a1,0(a4)
    800034a0:	00d7879b          	addiw	a5,a5,13
    800034a4:	00c7f663          	bgeu	a5,a2,800034b0 <__memset+0x1c8>
    800034a8:	00f507b3          	add	a5,a0,a5
    800034ac:	00b78023          	sb	a1,0(a5)
    800034b0:	00813403          	ld	s0,8(sp)
    800034b4:	01010113          	addi	sp,sp,16
    800034b8:	00008067          	ret
    800034bc:	00b00693          	li	a3,11
    800034c0:	e55ff06f          	j	80003314 <__memset+0x2c>
    800034c4:	00300e93          	li	t4,3
    800034c8:	ea5ff06f          	j	8000336c <__memset+0x84>
    800034cc:	00100e93          	li	t4,1
    800034d0:	e9dff06f          	j	8000336c <__memset+0x84>
    800034d4:	00000e93          	li	t4,0
    800034d8:	e95ff06f          	j	8000336c <__memset+0x84>
    800034dc:	00000793          	li	a5,0
    800034e0:	ef9ff06f          	j	800033d8 <__memset+0xf0>
    800034e4:	00200e93          	li	t4,2
    800034e8:	e85ff06f          	j	8000336c <__memset+0x84>
    800034ec:	00400e93          	li	t4,4
    800034f0:	e7dff06f          	j	8000336c <__memset+0x84>
    800034f4:	00500e93          	li	t4,5
    800034f8:	e75ff06f          	j	8000336c <__memset+0x84>
    800034fc:	00600e93          	li	t4,6
    80003500:	e6dff06f          	j	8000336c <__memset+0x84>

0000000080003504 <__memmove>:
    80003504:	ff010113          	addi	sp,sp,-16
    80003508:	00813423          	sd	s0,8(sp)
    8000350c:	01010413          	addi	s0,sp,16
    80003510:	0e060863          	beqz	a2,80003600 <__memmove+0xfc>
    80003514:	fff6069b          	addiw	a3,a2,-1
    80003518:	0006881b          	sext.w	a6,a3
    8000351c:	0ea5e863          	bltu	a1,a0,8000360c <__memmove+0x108>
    80003520:	00758713          	addi	a4,a1,7
    80003524:	00a5e7b3          	or	a5,a1,a0
    80003528:	40a70733          	sub	a4,a4,a0
    8000352c:	0077f793          	andi	a5,a5,7
    80003530:	00f73713          	sltiu	a4,a4,15
    80003534:	00174713          	xori	a4,a4,1
    80003538:	0017b793          	seqz	a5,a5
    8000353c:	00e7f7b3          	and	a5,a5,a4
    80003540:	10078863          	beqz	a5,80003650 <__memmove+0x14c>
    80003544:	00900793          	li	a5,9
    80003548:	1107f463          	bgeu	a5,a6,80003650 <__memmove+0x14c>
    8000354c:	0036581b          	srliw	a6,a2,0x3
    80003550:	fff8081b          	addiw	a6,a6,-1
    80003554:	02081813          	slli	a6,a6,0x20
    80003558:	01d85893          	srli	a7,a6,0x1d
    8000355c:	00858813          	addi	a6,a1,8
    80003560:	00058793          	mv	a5,a1
    80003564:	00050713          	mv	a4,a0
    80003568:	01088833          	add	a6,a7,a6
    8000356c:	0007b883          	ld	a7,0(a5)
    80003570:	00878793          	addi	a5,a5,8
    80003574:	00870713          	addi	a4,a4,8
    80003578:	ff173c23          	sd	a7,-8(a4)
    8000357c:	ff0798e3          	bne	a5,a6,8000356c <__memmove+0x68>
    80003580:	ff867713          	andi	a4,a2,-8
    80003584:	02071793          	slli	a5,a4,0x20
    80003588:	0207d793          	srli	a5,a5,0x20
    8000358c:	00f585b3          	add	a1,a1,a5
    80003590:	40e686bb          	subw	a3,a3,a4
    80003594:	00f507b3          	add	a5,a0,a5
    80003598:	06e60463          	beq	a2,a4,80003600 <__memmove+0xfc>
    8000359c:	0005c703          	lbu	a4,0(a1)
    800035a0:	00e78023          	sb	a4,0(a5)
    800035a4:	04068e63          	beqz	a3,80003600 <__memmove+0xfc>
    800035a8:	0015c603          	lbu	a2,1(a1)
    800035ac:	00100713          	li	a4,1
    800035b0:	00c780a3          	sb	a2,1(a5)
    800035b4:	04e68663          	beq	a3,a4,80003600 <__memmove+0xfc>
    800035b8:	0025c603          	lbu	a2,2(a1)
    800035bc:	00200713          	li	a4,2
    800035c0:	00c78123          	sb	a2,2(a5)
    800035c4:	02e68e63          	beq	a3,a4,80003600 <__memmove+0xfc>
    800035c8:	0035c603          	lbu	a2,3(a1)
    800035cc:	00300713          	li	a4,3
    800035d0:	00c781a3          	sb	a2,3(a5)
    800035d4:	02e68663          	beq	a3,a4,80003600 <__memmove+0xfc>
    800035d8:	0045c603          	lbu	a2,4(a1)
    800035dc:	00400713          	li	a4,4
    800035e0:	00c78223          	sb	a2,4(a5)
    800035e4:	00e68e63          	beq	a3,a4,80003600 <__memmove+0xfc>
    800035e8:	0055c603          	lbu	a2,5(a1)
    800035ec:	00500713          	li	a4,5
    800035f0:	00c782a3          	sb	a2,5(a5)
    800035f4:	00e68663          	beq	a3,a4,80003600 <__memmove+0xfc>
    800035f8:	0065c703          	lbu	a4,6(a1)
    800035fc:	00e78323          	sb	a4,6(a5)
    80003600:	00813403          	ld	s0,8(sp)
    80003604:	01010113          	addi	sp,sp,16
    80003608:	00008067          	ret
    8000360c:	02061713          	slli	a4,a2,0x20
    80003610:	02075713          	srli	a4,a4,0x20
    80003614:	00e587b3          	add	a5,a1,a4
    80003618:	f0f574e3          	bgeu	a0,a5,80003520 <__memmove+0x1c>
    8000361c:	02069613          	slli	a2,a3,0x20
    80003620:	02065613          	srli	a2,a2,0x20
    80003624:	fff64613          	not	a2,a2
    80003628:	00e50733          	add	a4,a0,a4
    8000362c:	00c78633          	add	a2,a5,a2
    80003630:	fff7c683          	lbu	a3,-1(a5)
    80003634:	fff78793          	addi	a5,a5,-1
    80003638:	fff70713          	addi	a4,a4,-1
    8000363c:	00d70023          	sb	a3,0(a4)
    80003640:	fec798e3          	bne	a5,a2,80003630 <__memmove+0x12c>
    80003644:	00813403          	ld	s0,8(sp)
    80003648:	01010113          	addi	sp,sp,16
    8000364c:	00008067          	ret
    80003650:	02069713          	slli	a4,a3,0x20
    80003654:	02075713          	srli	a4,a4,0x20
    80003658:	00170713          	addi	a4,a4,1
    8000365c:	00e50733          	add	a4,a0,a4
    80003660:	00050793          	mv	a5,a0
    80003664:	0005c683          	lbu	a3,0(a1)
    80003668:	00178793          	addi	a5,a5,1
    8000366c:	00158593          	addi	a1,a1,1
    80003670:	fed78fa3          	sb	a3,-1(a5)
    80003674:	fee798e3          	bne	a5,a4,80003664 <__memmove+0x160>
    80003678:	f89ff06f          	j	80003600 <__memmove+0xfc>

000000008000367c <__putc>:
    8000367c:	fe010113          	addi	sp,sp,-32
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00113c23          	sd	ra,24(sp)
    80003688:	02010413          	addi	s0,sp,32
    8000368c:	00050793          	mv	a5,a0
    80003690:	fef40593          	addi	a1,s0,-17
    80003694:	00100613          	li	a2,1
    80003698:	00000513          	li	a0,0
    8000369c:	fef407a3          	sb	a5,-17(s0)
    800036a0:	fffff097          	auipc	ra,0xfffff
    800036a4:	b3c080e7          	jalr	-1220(ra) # 800021dc <console_write>
    800036a8:	01813083          	ld	ra,24(sp)
    800036ac:	01013403          	ld	s0,16(sp)
    800036b0:	02010113          	addi	sp,sp,32
    800036b4:	00008067          	ret

00000000800036b8 <__getc>:
    800036b8:	fe010113          	addi	sp,sp,-32
    800036bc:	00813823          	sd	s0,16(sp)
    800036c0:	00113c23          	sd	ra,24(sp)
    800036c4:	02010413          	addi	s0,sp,32
    800036c8:	fe840593          	addi	a1,s0,-24
    800036cc:	00100613          	li	a2,1
    800036d0:	00000513          	li	a0,0
    800036d4:	fffff097          	auipc	ra,0xfffff
    800036d8:	ae8080e7          	jalr	-1304(ra) # 800021bc <console_read>
    800036dc:	fe844503          	lbu	a0,-24(s0)
    800036e0:	01813083          	ld	ra,24(sp)
    800036e4:	01013403          	ld	s0,16(sp)
    800036e8:	02010113          	addi	sp,sp,32
    800036ec:	00008067          	ret

00000000800036f0 <console_handler>:
    800036f0:	fe010113          	addi	sp,sp,-32
    800036f4:	00813823          	sd	s0,16(sp)
    800036f8:	00113c23          	sd	ra,24(sp)
    800036fc:	00913423          	sd	s1,8(sp)
    80003700:	02010413          	addi	s0,sp,32
    80003704:	14202773          	csrr	a4,scause
    80003708:	100027f3          	csrr	a5,sstatus
    8000370c:	0027f793          	andi	a5,a5,2
    80003710:	06079e63          	bnez	a5,8000378c <console_handler+0x9c>
    80003714:	00074c63          	bltz	a4,8000372c <console_handler+0x3c>
    80003718:	01813083          	ld	ra,24(sp)
    8000371c:	01013403          	ld	s0,16(sp)
    80003720:	00813483          	ld	s1,8(sp)
    80003724:	02010113          	addi	sp,sp,32
    80003728:	00008067          	ret
    8000372c:	0ff77713          	andi	a4,a4,255
    80003730:	00900793          	li	a5,9
    80003734:	fef712e3          	bne	a4,a5,80003718 <console_handler+0x28>
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	6dc080e7          	jalr	1756(ra) # 80001e14 <plic_claim>
    80003740:	00a00793          	li	a5,10
    80003744:	00050493          	mv	s1,a0
    80003748:	02f50c63          	beq	a0,a5,80003780 <console_handler+0x90>
    8000374c:	fc0506e3          	beqz	a0,80003718 <console_handler+0x28>
    80003750:	00050593          	mv	a1,a0
    80003754:	00001517          	auipc	a0,0x1
    80003758:	99c50513          	addi	a0,a0,-1636 # 800040f0 <CONSOLE_STATUS+0xe0>
    8000375c:	fffff097          	auipc	ra,0xfffff
    80003760:	afc080e7          	jalr	-1284(ra) # 80002258 <__printf>
    80003764:	01013403          	ld	s0,16(sp)
    80003768:	01813083          	ld	ra,24(sp)
    8000376c:	00048513          	mv	a0,s1
    80003770:	00813483          	ld	s1,8(sp)
    80003774:	02010113          	addi	sp,sp,32
    80003778:	ffffe317          	auipc	t1,0xffffe
    8000377c:	6d430067          	jr	1748(t1) # 80001e4c <plic_complete>
    80003780:	fffff097          	auipc	ra,0xfffff
    80003784:	3e0080e7          	jalr	992(ra) # 80002b60 <uartintr>
    80003788:	fddff06f          	j	80003764 <console_handler+0x74>
    8000378c:	00001517          	auipc	a0,0x1
    80003790:	a6450513          	addi	a0,a0,-1436 # 800041f0 <digits+0x78>
    80003794:	fffff097          	auipc	ra,0xfffff
    80003798:	a68080e7          	jalr	-1432(ra) # 800021fc <panic>
	...
