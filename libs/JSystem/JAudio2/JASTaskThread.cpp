//
// Generated By: dol2asm
// Translation Unit: JASTaskThread
//

#include "JSystem/JAudio2/JASTaskThread.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct JKRHeap {
    static u8 sSystemHeap[4];
};

struct JKRThread {
    /* 802D1610 */ JKRThread(JKRHeap*, u32, int, int);
    /* 802D1758 */ ~JKRThread();
};

struct JASTaskThread {
    /* 8028F6C4 */ JASTaskThread(int, int, u32);
    /* 8028F724 */ ~JASTaskThread();
    /* 8028F9EC */ void allocCallStack(void (*)(void*), void*);
    /* 8028F850 */ void allocCallStack(void (*)(void*), void const*, u32);
    /* 8028FC54 */ void sendCmdMsg(void (*)(void*), void*);
    /* 8028FB5C */ void sendCmdMsg(void (*)(void*), void const*, u32);
    /* 8028FD4C */ void run();
    /* 8028FE88 */ void pause(bool);
};

struct JASCalc {
    /* 8028F354 */ void bcopy(void const*, void*, u32);
};

//
// Forward References:
//

extern "C" void __ct__13JASTaskThreadFiiUl();
extern "C" void __dt__13JASTaskThreadFv();
extern "C" void allocCallStack__13JASTaskThreadFPFPv_vPCvUl();
extern "C" void allocCallStack__13JASTaskThreadFPFPv_vPv();
extern "C" void sendCmdMsg__13JASTaskThreadFPFPv_vPCvUl();
extern "C" void sendCmdMsg__13JASTaskThreadFPFPv_vPv();
extern "C" void run__13JASTaskThreadFv();
extern "C" void pause__13JASTaskThreadFb();

//
// External References:
//

extern "C" void bcopy__7JASCalcFPCvPvUl();
extern "C" void getSystemHeap__9JASKernelFv();
extern "C" void getCommandHeap__9JASKernelFv();
extern "C" void* __nw__FUlP7JKRHeapi();
extern "C" void __dl__FPv();
extern "C" void __ct__9JKRThreadFP7JKRHeapUlii();
extern "C" void __dt__9JKRThreadFv();
extern "C" void OSDisableInterrupts();
extern "C" void OSRestoreInterrupts();
extern "C" void OSSendMessage();
extern "C" void OSReceiveMessage();
extern "C" void OSLockMutex();
extern "C" void OSUnlockMutex();
extern "C" void OSInitThreadQueue();
extern "C" void OSSleepThread();
extern "C" void OSWakeupThread();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" extern u8 JASDram[4];
extern "C" u8 sSystemHeap__7JKRHeap[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 803C5B58-803C5B68 022C78 0010+00 2/2 0/0 0/0 .data            __vt__13JASTaskThread */
SECTION_DATA extern void* __vt__13JASTaskThread[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13JASTaskThreadFv,
    (void*)run__13JASTaskThreadFv,
};

/* 8028F6C4-8028F724 28A004 0060+00 0/0 1/1 0/0 .text            __ct__13JASTaskThreadFiiUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JASTaskThread::JASTaskThread(int param_0, int param_1, u32 param_2) {
    nofralloc
#include "asm/JSystem/JAudio2/JASTaskThread/__ct__13JASTaskThreadFiiUl.s"
}
#pragma pop

/* 8028F724-8028F850 28A064 012C+00 1/0 0/0 0/0 .text            __dt__13JASTaskThreadFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JASTaskThread::~JASTaskThread() {
    nofralloc
#include "asm/JSystem/JAudio2/JASTaskThread/__dt__13JASTaskThreadFv.s"
}
#pragma pop

/* 8028F850-8028F9EC 28A190 019C+00 1/1 0/0 0/0 .text allocCallStack__13JASTaskThreadFPFPv_vPCvUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JASTaskThread::allocCallStack(void (*param_0)(void*), void const* param_1, u32 param_2) {
    nofralloc
#include "asm/JSystem/JAudio2/JASTaskThread/allocCallStack__13JASTaskThreadFPFPv_vPCvUl.s"
}
#pragma pop

/* 8028F9EC-8028FB5C 28A32C 0170+00 1/1 0/0 0/0 .text allocCallStack__13JASTaskThreadFPFPv_vPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JASTaskThread::allocCallStack(void (*param_0)(void*), void* param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JASTaskThread/allocCallStack__13JASTaskThreadFPFPv_vPv.s"
}
#pragma pop

/* 8028FB5C-8028FC54 28A49C 00F8+00 0/0 6/6 0/0 .text sendCmdMsg__13JASTaskThreadFPFPv_vPCvUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JASTaskThread::sendCmdMsg(void (*param_0)(void*), void const* param_1, u32 param_2) {
    nofralloc
#include "asm/JSystem/JAudio2/JASTaskThread/sendCmdMsg__13JASTaskThreadFPFPv_vPCvUl.s"
}
#pragma pop

/* 8028FC54-8028FD4C 28A594 00F8+00 0/0 3/3 0/0 .text sendCmdMsg__13JASTaskThreadFPFPv_vPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JASTaskThread::sendCmdMsg(void (*param_0)(void*), void* param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JASTaskThread/sendCmdMsg__13JASTaskThreadFPFPv_vPv.s"
}
#pragma pop

/* 8028FD4C-8028FE88 28A68C 013C+00 1/0 0/0 0/0 .text            run__13JASTaskThreadFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JASTaskThread::run() {
    nofralloc
#include "asm/JSystem/JAudio2/JASTaskThread/run__13JASTaskThreadFv.s"
}
#pragma pop

/* 8028FE88-8028FEFC 28A7C8 0074+00 0/0 1/1 0/0 .text            pause__13JASTaskThreadFb */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JASTaskThread::pause(bool param_0) {
    nofralloc
#include "asm/JSystem/JAudio2/JASTaskThread/pause__13JASTaskThreadFb.s"
}
#pragma pop
