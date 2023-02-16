//
// Generated By: dol2asm
// Translation Unit: JAISoundStarter
//

#include "JSystem/JAudio2/JAISoundStarter.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Forward References:
//

extern "C" void __ct__15JAISoundStarterFb();
extern "C" void __dt__15JAISoundStarterFv();
extern "C" void func_802A2FEC();

//
// External References:
//

extern "C" void __dl__FPv();
extern "C" extern u8 __OSReport_disable;

//
// Declarations:
//

/* ############################################################################################## */
/* 803C99C8-803C99D8 026AE8 0010+00 2/2 0/0 0/0 .data            __vt__15JAISoundStarter */
SECTION_DATA extern void* __vt__15JAISoundStarter[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15JAISoundStarterFv,
    (void*)NULL,
};

/* 802A2F6C-802A2F88 29D8AC 001C+00 0/0 1/1 0/0 .text            __ct__15JAISoundStarterFb */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JAISoundStarter::JAISoundStarter(bool param_0) {
    nofralloc
#include "asm/JSystem/JAudio2/JAISoundStarter/__ct__15JAISoundStarterFb.s"
}
#pragma pop

/* 802A2F88-802A2FEC 29D8C8 0064+00 1/0 7/7 0/0 .text            __dt__15JAISoundStarterFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JAISoundStarter::~JAISoundStarter() {
    nofralloc
#include "asm/JSystem/JAudio2/JAISoundStarter/__dt__15JAISoundStarterFv.s"
}
#pragma pop

/* 802A2FEC-802A30D4 29D92C 00E8+00 0/0 4/4 0/0 .text
 * startLevelSound__15JAISoundStarterF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f> */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAISoundStarter::startLevelSound(JAISoundID param_0, JAISoundHandle* param_1,
                                          JGeometry::TVec3<f32> const* param_2) {
    nofralloc
#include "asm/JSystem/JAudio2/JAISoundStarter/func_802A2FEC.s"
}
#pragma pop
