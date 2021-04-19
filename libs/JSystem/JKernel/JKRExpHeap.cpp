//
// Generated By: dol2asm
// Translation Unit: JKRExpHeap
//

#include "JSystem/JKernel/JKRExpHeap.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct JUTException {
    /* 802E21FC */ void panic_f(char const*, int, char const*, ...);
};

struct JKRHeap {
    struct TState {};

    /* 802CE138 */ JKRHeap(void*, u32, JKRHeap*, bool);
    /* 802CE264 */ ~JKRHeap();
    /* 802CE378 */ void initArena(char**, u32*, int);
    /* 802CE474 */ void alloc(u32, int, JKRHeap*);
    /* 802CE500 */ void free(void*, JKRHeap*);
    /* 802CE574 */ void callAllDisposer();
    /* 802CE784 */ void getTotalFreeSize();
    /* 802CE7DC */ void getMaxAllocatableSize(int);
    /* 802CE894 */ void find(void*) const;
    /* 802CEAC0 */ void dispose();
    /* 802CEA78 */ void dispose(void*, u32);
    /* 802CEDA0 */ void state_dump(JKRHeap::TState const&) const;

    static u8 sCurrentHeap[4];
    static u8 sRootHeap[4];
    static u8 mErrorHandler[4];
};

struct JKRExpHeap {
    struct CMemBlock {
        /* 802D0810 */ void initiate(JKRExpHeap::CMemBlock*, JKRExpHeap::CMemBlock*, u32, u8, u8);
        /* 802D0830 */ void allocFore(u32, u8, u8, u8, u8);
        /* 802D0874 */ void allocBack(u32, u8, u8, u8, u8);
        /* 802D08CC */ void free(JKRExpHeap*);
        /* 802D091C */ void getHeapBlock(void*);
    };

    /* 802CEDB4 */ void createRoot(int, bool);
    /* 802CEF00 */ void create(void*, u32, JKRHeap*, bool);
    /* 802CEE2C */ void create(u32, JKRHeap*, bool);
    /* 802CEFAC */ void do_destroy();
    /* 802CF030 */ JKRExpHeap(void*, u32, JKRHeap*, bool);
    /* 802CF0C0 */ ~JKRExpHeap();
    /* 802CF128 */ void do_alloc(u32, int);
    /* 802CF490 */ void allocFromHead(u32);
    /* 802CF234 */ void allocFromHead(u32, int);
    /* 802CF6D4 */ void allocFromTail(u32);
    /* 802CF574 */ void allocFromTail(u32, int);
    /* 802CF7AC */ void do_free(void*);
    /* 802CF820 */ void do_freeAll();
    /* 802CF89C */ void do_freeTail();
    /* 802CF924 */ void do_fillFreeArea();
    /* 802CF928 */ void do_changeGroupID(u8);
    /* 802CF978 */ void do_resize(void*, u32);
    /* 802CFB24 */ void do_getSize(void*);
    /* 802CFBA4 */ void do_getFreeSize();
    /* 802CFC10 */ void do_getMaxFreeBlock();
    /* 802CFC84 */ void do_getTotalFreeSize();
    /* 802CFCE8 */ void getUsedSize(u8) const;
    /* 802CFD64 */ void getTotalUsedSize() const;
    /* 802CFDCC */ void appendUsedList(JKRExpHeap::CMemBlock*);
    /* 802CFE68 */ void setFreeBlock(JKRExpHeap::CMemBlock*, JKRExpHeap::CMemBlock*,
                                     JKRExpHeap::CMemBlock*);
    /* 802CFEB4 */ void removeFreeBlock(JKRExpHeap::CMemBlock*);
    /* 802CFEE8 */ void removeUsedBlock(JKRExpHeap::CMemBlock*);
    /* 802CFF1C */ void recycleFreeBlock(JKRExpHeap::CMemBlock*);
    /* 802D00B4 */ void joinTwoBlocks(JKRExpHeap::CMemBlock*);
    /* 802D0190 */ void check();
    /* 802D03B8 */ void dump();
    /* 802D05CC */ void dump_sort();
    /* 802D0938 */ void state_register(JKRHeap::TState*, u32) const;
    /* 802D09E0 */ void state_compare(JKRHeap::TState const&, JKRHeap::TState const&) const;
    /* 802D0A10 */ void getHeapType();
    /* 802D0A1C */ void do_getCurrentGroupId();
};

//
// Forward References:
//

extern "C" void createRoot__10JKRExpHeapFib();
extern "C" void create__10JKRExpHeapFUlP7JKRHeapb();
extern "C" void create__10JKRExpHeapFPvUlP7JKRHeapb();
extern "C" void do_destroy__10JKRExpHeapFv();
extern "C" void __ct__10JKRExpHeapFPvUlP7JKRHeapb();
extern "C" void __dt__10JKRExpHeapFv();
extern "C" void do_alloc__10JKRExpHeapFUli();
extern "C" void allocFromHead__10JKRExpHeapFUli();
extern "C" void allocFromHead__10JKRExpHeapFUl();
extern "C" void allocFromTail__10JKRExpHeapFUli();
extern "C" void allocFromTail__10JKRExpHeapFUl();
extern "C" void do_free__10JKRExpHeapFPv();
extern "C" void do_freeAll__10JKRExpHeapFv();
extern "C" void do_freeTail__10JKRExpHeapFv();
extern "C" void do_fillFreeArea__10JKRExpHeapFv();
extern "C" void do_changeGroupID__10JKRExpHeapFUc();
extern "C" void do_resize__10JKRExpHeapFPvUl();
extern "C" void do_getSize__10JKRExpHeapFPv();
extern "C" void do_getFreeSize__10JKRExpHeapFv();
extern "C" void do_getMaxFreeBlock__10JKRExpHeapFv();
extern "C" void do_getTotalFreeSize__10JKRExpHeapFv();
extern "C" void getUsedSize__10JKRExpHeapCFUc();
extern "C" void getTotalUsedSize__10JKRExpHeapCFv();
extern "C" void appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock();
extern "C" void
setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock();
extern "C" void removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock();
extern "C" void removeUsedBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock();
extern "C" void recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock();
extern "C" void joinTwoBlocks__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock();
extern "C" void check__10JKRExpHeapFv();
extern "C" void dump__10JKRExpHeapFv();
extern "C" void dump_sort__10JKRExpHeapFv();
extern "C" void
initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc();
extern "C" void allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc();
extern "C" void allocBack__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc();
extern "C" void free__Q210JKRExpHeap9CMemBlockFP10JKRExpHeap();
extern "C" void getHeapBlock__Q210JKRExpHeap9CMemBlockFPv();
extern "C" void state_register__10JKRExpHeapCFPQ27JKRHeap6TStateUl();
extern "C" void state_compare__10JKRExpHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState();
extern "C" void getHeapType__10JKRExpHeapFv();
extern "C" void do_getCurrentGroupId__10JKRExpHeapFv();
extern "C" extern char const* const JKRExpHeap__stringBase0;

//
// External References:
//

extern "C" void __ct__7JKRHeapFPvUlP7JKRHeapb();
extern "C" void __dt__7JKRHeapFv();
extern "C" void initArena__7JKRHeapFPPcPUli();
extern "C" void alloc__7JKRHeapFUliP7JKRHeap();
extern "C" void free__7JKRHeapFPvP7JKRHeap();
extern "C" void callAllDisposer__7JKRHeapFv();
extern "C" void getTotalFreeSize__7JKRHeapFv();
extern "C" void getMaxAllocatableSize__7JKRHeapFi();
extern "C" void find__7JKRHeapCFPv();
extern "C" void dispose__7JKRHeapFPvUl();
extern "C" void dispose__7JKRHeapFv();
extern "C" void __dl__FPv();
extern "C" void state_dump__7JKRHeapCFRCQ27JKRHeap6TState();
extern "C" void panic_f__12JUTExceptionFPCciPCce();
extern "C" void JUTReportConsole_f();
extern "C" void JUTReportConsole();
extern "C" void JUTWarningConsole_f();
extern "C" void JUTWarningConsole();
extern "C" void OSLockMutex();
extern "C" void OSUnlockMutex();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 sCurrentHeap__7JKRHeap[4];
extern "C" u8 sRootHeap__7JKRHeap[4];
extern "C" u8 mErrorHandler__7JKRHeap[4];

//
// Declarations:
//

/* 802CEDB4-802CEE2C 2C96F4 0078+00 0/0 1/1 0/0 .text            createRoot__10JKRExpHeapFib */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::createRoot(int param_0, bool param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/createRoot__10JKRExpHeapFib.s"
}
#pragma pop

/* 802CEE2C-802CEF00 2C976C 00D4+00 0/0 19/19 1/1 .text            create__10JKRExpHeapFUlP7JKRHeapb
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::create(u32 param_0, JKRHeap* param_1, bool param_2) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/create__10JKRExpHeapFUlP7JKRHeapb.s"
}
#pragma pop

/* 802CEF00-802CEFAC 2C9840 00AC+00 0/0 1/1 0/0 .text            create__10JKRExpHeapFPvUlP7JKRHeapb
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::create(void* param_0, u32 param_1, JKRHeap* param_2, bool param_3) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/create__10JKRExpHeapFPvUlP7JKRHeapb.s"
}
#pragma pop

/* 802CEFAC-802CF030 2C98EC 0084+00 1/0 0/0 0/0 .text            do_destroy__10JKRExpHeapFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_destroy() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_destroy__10JKRExpHeapFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 803CBFD0-803CC030 0290F0 0060+00 2/2 0/0 0/0 .data            __vt__10JKRExpHeap */
SECTION_DATA extern void* __vt__10JKRExpHeap[24] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10JKRExpHeapFv,
    (void*)callAllDisposer__7JKRHeapFv,
    (void*)getHeapType__10JKRExpHeapFv,
    (void*)check__10JKRExpHeapFv,
    (void*)dump_sort__10JKRExpHeapFv,
    (void*)dump__10JKRExpHeapFv,
    (void*)do_destroy__10JKRExpHeapFv,
    (void*)do_alloc__10JKRExpHeapFUli,
    (void*)do_free__10JKRExpHeapFPv,
    (void*)do_freeAll__10JKRExpHeapFv,
    (void*)do_freeTail__10JKRExpHeapFv,
    (void*)do_fillFreeArea__10JKRExpHeapFv,
    (void*)do_resize__10JKRExpHeapFPvUl,
    (void*)do_getSize__10JKRExpHeapFPv,
    (void*)do_getFreeSize__10JKRExpHeapFv,
    (void*)do_getMaxFreeBlock__10JKRExpHeapFv,
    (void*)do_getTotalFreeSize__10JKRExpHeapFv,
    (void*)do_changeGroupID__10JKRExpHeapFUc,
    (void*)do_getCurrentGroupId__10JKRExpHeapFv,
    (void*)state_register__10JKRExpHeapCFPQ27JKRHeap6TStateUl,
    (void*)state_compare__10JKRExpHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState,
    (void*)state_dump__7JKRHeapCFRCQ27JKRHeap6TState,
};

/* 802CF030-802CF0C0 2C9970 0090+00 3/3 0/0 0/0 .text            __ct__10JKRExpHeapFPvUlP7JKRHeapb
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRExpHeap::JKRExpHeap(void* param_0, u32 param_1, JKRHeap* param_2, bool param_3) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/__ct__10JKRExpHeapFPvUlP7JKRHeapb.s"
}
#pragma pop

/* 802CF0C0-802CF128 2C9A00 0068+00 1/0 0/0 0/0 .text            __dt__10JKRExpHeapFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRExpHeap::~JKRExpHeap() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/__dt__10JKRExpHeapFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039CAF0-8039CAF0 029150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CAF0 = ":::cannot alloc memory (0x%x byte).\n";
#pragma pop

/* 802CF128-802CF234 2C9A68 010C+00 1/0 0/0 0/0 .text            do_alloc__10JKRExpHeapFUli */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_alloc(u32 param_0, int param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_alloc__10JKRExpHeapFUli.s"
}
#pragma pop

/* ############################################################################################## */
/* 80451398-8045139C 000898 0004+00 1/1 0/0 0/0 .sbss            DBfoundSize */
static u8 DBfoundSize[4];

/* 8045139C-804513A0 00089C 0004+00 1/1 0/0 0/0 .sbss            DBfoundOffset */
static u8 DBfoundOffset[4];

/* 804513A0-804513A4 0008A0 0004+00 1/1 0/0 0/0 .sbss            DBfoundBlock */
static u8 DBfoundBlock[4];

/* 804513A4-804513A8 0008A4 0004+00 1/1 0/0 0/0 .sbss            DBnewFreeBlock */
static u8 DBnewFreeBlock[4];

/* 804513A8-804513B0 0008A8 0004+04 1/1 0/0 0/0 .sbss            DBnewUsedBlock */
static u8 DBnewUsedBlock[4 + 4 /* padding */];

/* 802CF234-802CF490 2C9B74 025C+00 1/1 0/0 0/0 .text            allocFromHead__10JKRExpHeapFUli */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::allocFromHead(u32 param_0, int param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/allocFromHead__10JKRExpHeapFUli.s"
}
#pragma pop

/* 802CF490-802CF574 2C9DD0 00E4+00 1/1 0/0 0/0 .text            allocFromHead__10JKRExpHeapFUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::allocFromHead(u32 param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/allocFromHead__10JKRExpHeapFUl.s"
}
#pragma pop

/* 802CF574-802CF6D4 2C9EB4 0160+00 1/1 0/0 0/0 .text            allocFromTail__10JKRExpHeapFUli */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::allocFromTail(u32 param_0, int param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/allocFromTail__10JKRExpHeapFUli.s"
}
#pragma pop

/* 802CF6D4-802CF7AC 2CA014 00D8+00 1/1 0/0 0/0 .text            allocFromTail__10JKRExpHeapFUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::allocFromTail(u32 param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/allocFromTail__10JKRExpHeapFUl.s"
}
#pragma pop

/* 802CF7AC-802CF820 2CA0EC 0074+00 1/0 0/0 0/0 .text            do_free__10JKRExpHeapFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_free(void* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_free__10JKRExpHeapFPv.s"
}
#pragma pop

/* 802CF820-802CF89C 2CA160 007C+00 1/0 0/0 0/0 .text            do_freeAll__10JKRExpHeapFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_freeAll() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_freeAll__10JKRExpHeapFv.s"
}
#pragma pop

/* 802CF89C-802CF924 2CA1DC 0088+00 1/0 0/0 0/0 .text            do_freeTail__10JKRExpHeapFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_freeTail() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_freeTail__10JKRExpHeapFv.s"
}
#pragma pop

/* 802CF924-802CF928 2CA264 0004+00 1/0 0/0 0/0 .text            do_fillFreeArea__10JKRExpHeapFv */
void JKRExpHeap::do_fillFreeArea() {
    /* empty function */
}

/* 802CF928-802CF978 2CA268 0050+00 1/0 0/0 0/0 .text            do_changeGroupID__10JKRExpHeapFUc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_changeGroupID(u8 param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_changeGroupID__10JKRExpHeapFUc.s"
}
#pragma pop

/* 802CF978-802CFB24 2CA2B8 01AC+00 1/0 0/0 0/0 .text            do_resize__10JKRExpHeapFPvUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_resize(void* param_0, u32 param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_resize__10JKRExpHeapFPvUl.s"
}
#pragma pop

/* 802CFB24-802CFBA4 2CA464 0080+00 1/0 0/0 0/0 .text            do_getSize__10JKRExpHeapFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_getSize(void* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_getSize__10JKRExpHeapFPv.s"
}
#pragma pop

/* 802CFBA4-802CFC10 2CA4E4 006C+00 1/0 0/0 0/0 .text            do_getFreeSize__10JKRExpHeapFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_getFreeSize() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_getFreeSize__10JKRExpHeapFv.s"
}
#pragma pop

/* 802CFC10-802CFC84 2CA550 0074+00 1/0 0/0 0/0 .text            do_getMaxFreeBlock__10JKRExpHeapFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_getMaxFreeBlock() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_getMaxFreeBlock__10JKRExpHeapFv.s"
}
#pragma pop

/* 802CFC84-802CFCE8 2CA5C4 0064+00 1/0 0/0 0/0 .text            do_getTotalFreeSize__10JKRExpHeapFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_getTotalFreeSize() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_getTotalFreeSize__10JKRExpHeapFv.s"
}
#pragma pop

/* 802CFCE8-802CFD64 2CA628 007C+00 1/1 0/0 0/0 .text            getUsedSize__10JKRExpHeapCFUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::getUsedSize(u8 param_0) const {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/getUsedSize__10JKRExpHeapCFUc.s"
}
#pragma pop

/* 802CFD64-802CFDCC 2CA6A4 0068+00 0/0 5/5 0/0 .text            getTotalUsedSize__10JKRExpHeapCFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::getTotalUsedSize() const {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/getTotalUsedSize__10JKRExpHeapCFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039CAF0-8039CAF0 029150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CB15 = "JKRExpHeap.cpp";
SECTION_DEAD static char const* const stringBase_8039CB24 = "%s";
SECTION_DEAD static char const* const stringBase_8039CB27 = "bad appendUsedList\n";
#pragma pop

/* 802CFDCC-802CFE68 2CA70C 009C+00 4/4 0/0 0/0 .text
 * appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock       */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::appendUsedList(JKRExpHeap::CMemBlock* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock.s"
}
#pragma pop

/* 802CFE68-802CFEB4 2CA7A8 004C+00 5/5 0/0 0/0 .text
 * setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::setFreeBlock(JKRExpHeap::CMemBlock* param_0, JKRExpHeap::CMemBlock* param_1,
                                  JKRExpHeap::CMemBlock* param_2) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/func_802CFE68.s"
}
#pragma pop

/* 802CFEB4-802CFEE8 2CA7F4 0034+00 5/5 0/0 0/0 .text
 * removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock      */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::removeFreeBlock(JKRExpHeap::CMemBlock* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock.s"
}
#pragma pop

/* 802CFEE8-802CFF1C 2CA828 0034+00 1/1 0/0 0/0 .text
 * removeUsedBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock      */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::removeUsedBlock(JKRExpHeap::CMemBlock* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/removeUsedBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock.s"
}
#pragma pop

/* 802CFF1C-802D00B4 2CA85C 0198+00 2/2 0/0 0/0 .text
 * recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::recycleFreeBlock(JKRExpHeap::CMemBlock* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039CAF0-8039CAF0 029150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CB3B = ":::Heap may be broken. (block = %x)";
SECTION_DEAD static char const* const stringBase_8039CB5F = "Bad Block\n";
#pragma pop

/* 802D00B4-802D0190 2CA9F4 00DC+00 1/1 0/0 0/0 .text
 * joinTwoBlocks__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::joinTwoBlocks(JKRExpHeap::CMemBlock* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/joinTwoBlocks__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039CAF0-8039CAF0 029150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CB6A =
    ":::addr %08x: bad heap signature. (%c%c)\n";
SECTION_DEAD static char const* const stringBase_8039CB94 =
    ":::addr %08x: bad next pointer (%08x)\nabort\n";
SECTION_DEAD static char const* const stringBase_8039CBC1 =
    ":::addr %08x: bad previous pointer (%08x)\n";
SECTION_DEAD static char const* const stringBase_8039CBEC =
    ":::addr %08x: bad used list(REV) (%08x)\n";
SECTION_DEAD static char const* const stringBase_8039CC15 = ":::addr %08x: bad block size (%08x)\n";
SECTION_DEAD static char const* const stringBase_8039CC3A =
    ":::bad total memory block size (%08X, %08X)\n";
SECTION_DEAD static char const* const stringBase_8039CC67 =
    ":::there is some error in this heap!\n";
#pragma pop

/* 802D0190-802D03B8 2CAAD0 0228+00 1/0 0/0 0/0 .text            check__10JKRExpHeapFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::check() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/check__10JKRExpHeapFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039CAF0-8039CAF0 029150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CC8D =
    " attr  address:   size    gid aln   prev_ptr nex"
    "t_ptr\n";
SECTION_DEAD static char const* const stringBase_8039CCC4 = "(Used Blocks)\n";
SECTION_DEAD static char const* const stringBase_8039CCD3 = " NONE\n";
SECTION_DEAD static char const* const stringBase_8039CCDA =
    "xxxxx %08x: --------  --- ---  (-------- -------"
    "-)\nabort\n";
SECTION_DEAD static char const* const stringBase_8039CD14 = "%s %08x: %08x  %3d %3d  (%08x %08x)\n";
SECTION_DEAD static char const* const stringBase_8039CD39 = " temp";
SECTION_DEAD static char const* const stringBase_8039CD3F = "alloc";
SECTION_DEAD static char const* const stringBase_8039CD45 = "(Free Blocks)\n";
SECTION_DEAD static char const* const stringBase_8039CD54 = " free";
SECTION_DEAD static char const* const stringBase_8039CD5A =
    "%d / %d bytes (%6.2f%%) used (U:%d F:%d)\n";
#pragma pop

/* 80455F98-80455FA0 004598 0004+04 2/2 0/0 0/0 .sdata2          @1121 */
SECTION_SDATA2 static f32 lit_1121[1 + 1 /* padding */] = {
    100.0f,
    /* padding */
    0.0f,
};

/* 80455FA0-80455FA8 0045A0 0008+00 2/2 0/0 0/0 .sdata2          @1123 */
SECTION_SDATA2 static f64 lit_1123 = 4503599627370496.0 /* cast u32 to float */;

/* 802D03B8-802D05CC 2CACF8 0214+00 1/0 0/0 0/0 .text            dump__10JKRExpHeapFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::dump() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/dump__10JKRExpHeapFv.s"
}
#pragma pop

/* 802D05CC-802D0810 2CAF0C 0244+00 1/0 0/0 0/0 .text            dump_sort__10JKRExpHeapFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::dump_sort() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/dump_sort__10JKRExpHeapFv.s"
}
#pragma pop

/* 802D0810-802D0830 2CB150 0020+00 4/4 0/0 0/0 .text
 * initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::CMemBlock::initiate(JKRExpHeap::CMemBlock* param_0,
                                         JKRExpHeap::CMemBlock* param_1, u32 param_2, u8 param_3,
                                         u8 param_4) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/func_802D0810.s"
}
#pragma pop

/* 802D0830-802D0874 2CB170 0044+00 3/3 0/0 0/0 .text
 * allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::CMemBlock::allocFore(u32 param_0, u8 param_1, u8 param_2, u8 param_3,
                                          u8 param_4) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc.s"
}
#pragma pop

/* 802D0874-802D08CC 2CB1B4 0058+00 1/1 0/0 0/0 .text
 * allocBack__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::CMemBlock::allocBack(u32 param_0, u8 param_1, u8 param_2, u8 param_3,
                                          u8 param_4) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/allocBack__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc.s"
}
#pragma pop

/* 802D08CC-802D091C 2CB20C 0050+00 2/2 0/0 0/0 .text free__Q210JKRExpHeap9CMemBlockFP10JKRExpHeap
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::CMemBlock::free(JKRExpHeap* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/free__Q210JKRExpHeap9CMemBlockFP10JKRExpHeap.s"
}
#pragma pop

/* 802D091C-802D0938 2CB25C 001C+00 3/3 0/0 0/0 .text getHeapBlock__Q210JKRExpHeap9CMemBlockFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::CMemBlock::getHeapBlock(void* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/getHeapBlock__Q210JKRExpHeap9CMemBlockFPv.s"
}
#pragma pop

/* 802D0938-802D09E0 2CB278 00A8+00 1/0 0/0 0/0 .text
 * state_register__10JKRExpHeapCFPQ27JKRHeap6TStateUl           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::state_register(JKRHeap::TState* param_0, u32 param_1) const {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/state_register__10JKRExpHeapCFPQ27JKRHeap6TStateUl.s"
}
#pragma pop

/* 802D09E0-802D0A10 2CB320 0030+00 1/0 0/0 0/0 .text
 * state_compare__10JKRExpHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::state_compare(JKRHeap::TState const& param_0,
                                   JKRHeap::TState const& param_1) const {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/state_compare__10JKRExpHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState.s"
}
#pragma pop

/* 802D0A10-802D0A1C 2CB350 000C+00 1/0 0/0 0/0 .text            getHeapType__10JKRExpHeapFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::getHeapType() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/getHeapType__10JKRExpHeapFv.s"
}
#pragma pop

/* 802D0A1C-802D0A24 2CB35C 0008+00 1/0 0/0 0/0 .text do_getCurrentGroupId__10JKRExpHeapFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRExpHeap::do_getCurrentGroupId() {
    nofralloc
#include "asm/JSystem/JKernel/JKRExpHeap/do_getCurrentGroupId__10JKRExpHeapFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039CD84-8039CDA0 0293E4 001C+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CD84 = "+---------------JKRExpHeap\n";
#pragma pop

/* 8039CDA0-8039CDD0 029400 0030+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CDA0 =
    "|         Align Group  size    ( prev , next )\n";
#pragma pop

/* 8039CDD0-8039CDE2 029430 0012+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CDD0 = "| ---- FreeFirst\n";
#pragma pop

/* 8039CDE2-8039CDEB 029442 0009+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CDE2 = "| %08x  ";
#pragma pop

/* 8039CDEB-8039CE07 02944B 001C+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CDEB = "%2x  %3d  %6x  (%08x %08x)\n";
#pragma pop

/* 8039CE07-8039CE18 029467 0011+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CE07 = "| ---- FreeLast\n";
#pragma pop

/* 8039CE18-8039CE2A 029478 0012+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CE18 = "| ---- UsedFirst\n";
#pragma pop

/* 8039CE2A-8039CE3B 02948A 0011+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CE2A = "| ---- UsedLast\n";
#pragma pop

/* 8039CE3B-8039CE50 02949B 0015+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CE3B = "+---------------End\n";
#pragma pop

/* 8039CAF0-8039CAF0 029150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
