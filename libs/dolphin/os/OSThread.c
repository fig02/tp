//
// Generated By: dol2asm
// Translation Unit: OSThread
//

#include "dolphin/os/OSThread.h"
#include "dol2asm.h"
#include "dolphin/os/OSMutex.h"
#include "dolphin/types.h"

//
// External References:
//

void OSReport();
void OSPanic();
void OSGetStackPointer();
void OSDisableInterrupts();
void OSEnableInterrupts();
void OSRestoreInterrupts();
extern u8 __OSErrorTable[68 + 12 /* padding */];
extern u32 __OSFpscrEnableBits;
void _epilog();

//
// Declarations:
//

/* 80340AA4-80340AA8 33B3E4 0004+00 2/1 0/0 0/0 .text            DefaultSwitchThreadCallback */
static void DefaultSwitchThreadCallback(OSThread* from, OSThread* to) {}

/* ############################################################################################## */
/* 804509B8-804509BC -00001 0004+00 3/3 0/0 0/0 .sdata           SwitchThreadCallback */
SECTION_SDATA static OSSwitchThreadCallback SwitchThreadCallback = DefaultSwitchThreadCallback;

/* 80340AA8-80340B1C 33B3E8 0074+00 0/0 1/1 0/0 .text            OSSetSwitchThreadCallback */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm OSSwitchThreadCallback OSSetSwitchThreadCallback(OSSwitchThreadCallback func) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSSetSwitchThreadCallback.s"
}
#pragma pop

/* ############################################################################################## */
/* 8044BB78-8044BC78 078898 0100+00 6/6 0/0 0/0 .bss             RunQueue */
static OSThreadQueue RunQueue[32];

/* 8044BC78-8044BF90 078998 0318+00 0/0 0/0 0/0 .bss             IdleThread */
#pragma push
#pragma force_active on
static OSThread IdleThread;
#pragma pop

/* 8044BF90-8044C2A8 078CB0 0318+00 0/1 0/0 0/0 .bss             DefaultThread */
#pragma push
#pragma force_active on
static OSThread DefaultThread;
#pragma pop

/* 8044C2A8-8044C570 078FC8 02C8+00 0/2 0/0 0/0 .bss             IdleContext */
#pragma push
#pragma force_active on
static OSContext IdleContext;
#pragma pop

/* 804516C0-804516C4 000BC0 0004+00 7/7 0/0 0/0 .sbss            RunQueueBits */
static u32 RunQueueBits;

/* 804516C4-804516C8 000BC4 0004+00 11/11 0/0 0/0 .sbss            RunQueueHint */
static BOOL RunQueueHint;

/* 804516C8-804516D0 000BC8 0004+04 4/4 0/0 0/0 .sbss            Reschedule */
static u8 Reschedule[4 + 4 /* padding */];

/* 80340B1C-80340C74 33B45C 0158+00 0/0 1/1 0/0 .text            __OSThreadInit */

extern void* _stack_end;

#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __OSThreadInit(void) {
    nofralloc
#include "asm/dolphin/os/OSThread/__OSThreadInit.s"
}
#pragma pop

/* 80340C74-80340C84 33B5B4 0010+00 1/1 9/9 0/0 .text            OSInitThreadQueue */
void OSInitThreadQueue(OSThreadQueue* queue) {
    queue->tail = NULL;
    queue->head = NULL;
}

/* 80340C84-80340C90 33B5C4 000C+00 0/0 20/20 0/0 .text            OSGetCurrentThread */
OSThread* OSGetCurrentThread(void) {
    return OS_CURRENT_THREAD;
}

/* 80340C90-80340CC4 33B5D0 0034+00 0/0 1/1 0/0 .text            OSIsThreadTerminated */
BOOL OSIsThreadTerminated(OSThread* thread) {
    return thread->state == OS_THREAD_STATE_DEAD || thread->state == OS_THREAD_STATE_UNINITIALIZED ?
               TRUE :
               FALSE;
}

/* 80340CC4-80340D04 33B604 0040+00 0/0 8/8 0/0 .text            OSDisableScheduler */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 OSDisableScheduler(void) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSDisableScheduler.s"
}
#pragma pop

/* 80340D04-80340D44 33B644 0040+00 0/0 10/10 0/0 .text            OSEnableScheduler */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 OSEnableScheduler(void) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSEnableScheduler.s"
}
#pragma pop

/* 80340D44-80340DAC 33B684 0068+00 3/3 0/0 0/0 .text            UnsetRun */
static void UnsetRun(OSThread* thread) {
    OSThreadQueue* queue;
    OSThread* next;
    OSThread* prev;

    prev = thread->link.prev;
    queue = thread->queue;
    next = thread->link.next;

    if (prev == NULL) {
        queue->tail = next;
    } else {
        prev->link.next = next;
    }

    if (next == NULL) {
        queue->head = prev;
    } else {
        next->link.prev = prev;
    }

    if (queue->head == NULL) {
        RunQueueBits &= ~(1 << 31 - thread->effective_priority);
    }

    thread->queue = NULL;
}

/* 80340DAC-80340DE8 33B6EC 003C+00 4/4 2/2 0/0 .text            __OSGetEffectivePriority */
s32 __OSGetEffectivePriority(OSThread* thread) {
    s32 prio = thread->base_priority;

    OSMutex* mutex;
    for (mutex = thread->owned_mutexes.prev; mutex != NULL; mutex = mutex->link.prev) {
        OSThread* mutexThread = mutex->queue.head;
        if (mutexThread != NULL && mutexThread->effective_priority < prio) {
            prio = mutexThread->effective_priority;
        }
    }

    return prio;
}

/* 80340DE8-80340FA8 33B728 01C0+00 5/5 0/0 0/0 .text            SetEffectivePriority */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void SetEffectivePriority(OSThread* thread, s32 priority) {
    nofralloc
#include "asm/dolphin/os/OSThread/SetEffectivePriority.s"
}
#pragma pop

/* 80340FA8-80340FF8 33B8E8 0050+00 0/0 1/1 0/0 .text            __OSPromoteThread */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __OSPromoteThread(OSThread* thread, s32 priority) {
    nofralloc
#include "asm/dolphin/os/OSThread/__OSPromoteThread.s"
}
#pragma pop

/* 80340FF8-80341220 33B938 0228+00 9/9 0/0 0/0 .text            SelectThread */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void SelectThread(OSThread* thread) {
    nofralloc
#include "asm/dolphin/os/OSThread/SelectThread.s"
}
#pragma pop

/* 80341220-80341250 33BB60 0030+00 0/0 3/3 0/0 .text            __OSReschedule */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __OSReschedule(void) {
    nofralloc
#include "asm/dolphin/os/OSThread/__OSReschedule.s"
}
#pragma pop

/* 80341250-8034128C 33BB90 003C+00 0/0 2/2 0/0 .text            OSYieldThread */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void OSYieldThread(void) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSYieldThread.s"
}
#pragma pop

/* 8034128C-80341474 33BBCC 01E8+00 0/0 5/5 3/3 .text            OSCreateThread */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL OSCreateThread(OSThread* thread, void* func, void* param, void* stackBase, u32 stackSize,
                        s32 priority, u16 attribute) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSCreateThread.s"
}
#pragma pop

/* 80341474-80341558 33BDB4 00E4+00 1/1 1/1 0/0 .text            OSExitThread */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void OSExitThread(void* exitValue) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSExitThread.s"
}
#pragma pop

/* 80341558-80341714 33BE98 01BC+00 0/0 4/4 3/3 .text            OSCancelThread */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void OSCancelThread(OSThread* thread) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSCancelThread.s"
}
#pragma pop

/* 80341714-803417B4 33C054 00A0+00 0/0 2/2 0/0 .text            OSDetachThread */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void OSDetachThread(OSThread* thread) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSDetachThread.s"
}
#pragma pop

/* 803417B4-80341A3C 33C0F4 0288+00 0/0 13/13 3/3 .text            OSResumeThread */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 OSResumeThread(OSThread* thread) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSResumeThread.s"
}
#pragma pop

/* 80341A3C-80341BAC 33C37C 0170+00 0/0 7/7 4/4 .text            OSSuspendThread */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 OSSuspendThread(OSThread* thread) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSSuspendThread.s"
}
#pragma pop

/* 80341BAC-80341C98 33C4EC 00EC+00 0/0 12/12 0/0 .text            OSSleepThread */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void OSSleepThread(OSThreadQueue* queue) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSSleepThread.s"
}
#pragma pop

/* 80341C98-80341D9C 33C5D8 0104+00 3/3 13/13 0/0 .text            OSWakeupThread */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void OSWakeupThread(OSThreadQueue* queue) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSWakeupThread.s"
}
#pragma pop

/* 80341D9C-80341E5C 33C6DC 00C0+00 0/0 1/1 0/0 .text            OSSetThreadPriority */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 OSSetThreadPriority(OSThread* thread, s32 priority) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSSetThreadPriority.s"
}
#pragma pop

/* 80341E5C-80341E64 33C79C 0008+00 0/0 4/4 0/0 .text            OSGetThreadPriority */
s32 OSGetThreadPriority(OSThread* thread) {
    return thread->base_priority;
}

/* 80341E64-80341F00 33C7A4 009C+00 1/1 0/0 0/0 .text            CheckThreadQueue */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm s32 CheckThreadQueue(OSThread* thread) {
    nofralloc
#include "asm/dolphin/os/OSThread/CheckThreadQueue.s"
}
#pragma pop

/* ############################################################################################## */
/* 803D0838-803D0898 02D958 005F+01 1/1 0/0 0/0 .data            @831 */
SECTION_DATA static char lit_831[] = "OSCheckActiveThreads: Failed RunQueue[prio].head != NULL && RunQueue[prio].tail != NULL in %d\n";

/* 803D0898-803D08A4 02D9B8 000B+01 0/1 0/0 0/0 .data            @832 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_832[] = "OSThread.c";
#pragma pop

/* 803D08A4-803D0904 02D9C4 005F+01 0/1 0/0 0/0 .data            @834 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_834[] = "OSCheckActiveThreads: Failed RunQueue[prio].head == NULL && RunQueue[prio].tail == NULL in %d\n";
#pragma pop

/* 803D0904-803D094C 02DA24 0046+02 0/1 0/0 0/0 .data            @835 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_835[] = "OSCheckActiveThreads: Failed CheckThreadQueue(&RunQueue[prio]) in %d\n";
#pragma pop

/* 803D094C-803D09CC 02DA6C 007E+02 0/1 0/0 0/0 .data            @836 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_836[] = "OSCheckActiveThreads: Failed __OSActiveThreadQueue.head == NULL || __OSActiveThreadQueue.head->linkActive.prev == NULL in %d\n";
#pragma pop

/* 803D09CC-803D0A4C 02DAEC 007E+02 0/1 0/0 0/0 .data            @837 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_837[] = "OSCheckActiveThreads: Failed __OSActiveThreadQueue.tail == NULL || __OSActiveThreadQueue.tail->linkActive.next == NULL in %d\n";
#pragma pop

/* 803D0A4C-803D0AC8 02DB6C 007A+02 0/1 0/0 0/0 .data            @838 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_838[] = "OSCheckActiveThreads: Failed thread->linkActive.next == NULL || thread == thread->linkActive.next->linkActive.prev in %d\n";
#pragma pop

/* 803D0AC8-803D0B44 02DBE8 007A+02 0/1 0/0 0/0 .data            @839 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_839[] = "OSCheckActiveThreads: Failed thread->linkActive.prev == NULL || thread == thread->linkActive.prev->linkActive.next in %d\n";
#pragma pop

/* 803D0B44-803D0B98 02DC64 0051+03 0/1 0/0 0/0 .data            @840 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_840[] = "OSCheckActiveThreads: Failed *(thread->stackEnd) == OS_THREAD_STACK_MAGIC in %d\n";
#pragma pop

/* 803D0B98-803D0C0C 02DCB8 0071+03 0/1 0/0 0/0 .data            @841 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_841[] = "OSCheckActiveThreads: Failed OS_PRIORITY_MIN <= thread->priority && thread->priority <= OS_PRIORITY_MAX+1 in %d\n";
#pragma pop

/* 803D0C0C-803D0C48 02DD2C 0039+03 0/1 0/0 0/0 .data            @842 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_842[] = "OSCheckActiveThreads: Failed 0 <= thread->suspend in %d\n";
#pragma pop

/* 803D0C48-803D0C94 02DD68 0049+03 0/1 0/0 0/0 .data            @843 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_843[] = "OSCheckActiveThreads: Failed CheckThreadQueue(&thread->queueJoin) in %d\n";
#pragma pop

/* 803D0C94-803D0CE8 02DDB4 0051+03 0/1 0/0 0/0 .data            @844 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_844[] = "OSCheckActiveThreads: Failed thread->queue == &RunQueue[thread->priority] in %d\n";
#pragma pop

/* 803D0CE8-803D0D3C 02DE08 0052+02 0/1 0/0 0/0 .data            @845 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_845[] = "OSCheckActiveThreads: Failed IsMember(&RunQueue[thread->priority], thread) in %d\n";
#pragma pop

/* 803D0D3C-803D0D98 02DE5C 0059+03 0/1 0/0 0/0 .data            @846 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_846[] = "OSCheckActiveThreads: Failed thread->priority == __OSGetEffectivePriority(thread) in %d\n";
#pragma pop

/* 803D0D98-803D0DDC 02DEB8 0042+02 0/1 0/0 0/0 .data            @847 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_847[] = "OSCheckActiveThreads: Failed !IsSuspended(thread->suspend) in %d\n";
#pragma pop

/* 803D0DDC-803D0E18 02DEFC 003A+02 0/1 0/0 0/0 .data            @848 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_848[] = "OSCheckActiveThreads: Failed thread->queue == NULL in %d\n";
#pragma pop

/* 803D0E18-803D0E54 02DF38 003A+02 0/1 0/0 0/0 .data            @849 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_849[] = "OSCheckActiveThreads: Failed thread->queue != NULL in %d\n";
#pragma pop

/* 803D0E54-803D0E98 02DF74 0044+00 0/1 0/0 0/0 .data            @850 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_850[] = "OSCheckActiveThreads: Failed CheckThreadQueue(thread->queue) in %d\n";
#pragma pop

/* 803D0E98-803D0EDC 02DFB8 0044+00 0/1 0/0 0/0 .data            @851 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_851[] = "OSCheckActiveThreads: Failed IsMember(thread->queue, thread) in %d\n";
#pragma pop

/* 803D0EDC-803D0F18 02DFFC 003B+01 0/1 0/0 0/0 .data            @852 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_852[] = "OSCheckActiveThreads: Failed thread->priority == 32 in %d\n";
#pragma pop

/* 803D0F18-803D0F58 02E038 003F+01 0/1 0/0 0/0 .data            @853 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_853[] = "OSCheckActiveThreads: Failed !__OSCheckDeadLock(thread) in %d\n";
#pragma pop

/* 803D0F58-803D0FC0 02E078 0067+01 0/1 0/0 0/0 .data            @854 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_854[] = "OSCheckActiveThreads: Failed thread->queueMutex.head == NULL && thread->queueMutex.tail == NULL in %d\n";
#pragma pop

/* 803D0FC0-803D1008 02E0E0 0045+03 0/1 0/0 0/0 .data            @855 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_855[] = "OSCheckActiveThreads: Failed. unkown thread state (%d) of thread %p\n";
#pragma pop

/* 803D1008-803D1048 02E128 003D+03 0/1 0/0 0/0 .data            @856 */
#pragma push
#pragma force_active on
SECTION_DATA static char lit_856[] = "OSCheckActiveThreads: Failed __OSCheckMutexes(thread) in %d\n";
#pragma pop

/* 804509BC-804509C0 00043C 0001+03 1/1 0/0 0/0 .sdata           @833 */
SECTION_SDATA static char lit_833[] = "";

/* 80341F00-80342650 33C840 0750+00 0/0 1/1 0/0 .text            OSCheckActiveThreads */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 OSCheckActiveThreads(void) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSCheckActiveThreads.s"
}
#pragma pop

/* 80342650-803426FC 33CF90 00AC+00 1/1 0/0 0/0 .text            OSClearStack */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void OSClearStack(u32 value) {
    nofralloc
#include "asm/dolphin/os/OSThread/OSClearStack.s"
}
#pragma pop

/* ############################################################################################## */
/* 804516D0-804516D8 000BD0 0008+00 0/0 2/1 0/0 .sbss            None */
extern u8 data_804516D0[8];
u8 data_804516D0[8];
