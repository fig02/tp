//
// Generated By: dol2asm
// Translation Unit: JKRFileLoader
//

#include "JSystem/JKernel/JKRFileLoader.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct JSUPtrList {
    /* 802DBEAC */ ~JSUPtrList();
    /* 802DBF14 */ void initiate();
};

struct JSUPtrLink {
    /* 802DBDFC */ JSUPtrLink(void*);
    /* 802DBE14 */ ~JSUPtrLink();
};

template <typename A0>
struct JSUList {};
/* JSUList<JKRFileLoader> */
struct JSUList__template7 {
    /* 802D45E4 */ void func_802D45E4(void* _this);
};

struct JKRFileLoader {
    /* 802D40F0 */ JKRFileLoader();
    /* 802D4148 */ ~JKRFileLoader();
    /* 802D41D4 */ void unmount();
    /* 802D4224 */ void getGlbResource(char const*);
    /* 802D4270 */ void getGlbResource(char const*, JKRFileLoader*);
    /* 802D4308 */ void removeResource(void*, JKRFileLoader*);
    /* 802D43A0 */ void detachResource(void*, JKRFileLoader*);
    /* 802D4438 */ void findVolume(char const**);
    /* 802D44C4 */ void fetchVolumeName(char*, s32, char const*);

    static u8 sVolumeList[12];
    static u8 sCurrentVolume[4 + 4 /* padding */];
};

struct JKRDisposer {
    /* 802D147C */ JKRDisposer();
    /* 802D14E4 */ ~JKRDisposer();
};

//
// Forward References:
//

extern "C" void __ct__13JKRFileLoaderFv();
extern "C" void __dt__13JKRFileLoaderFv();
extern "C" void unmount__13JKRFileLoaderFv();
extern "C" void getGlbResource__13JKRFileLoaderFPCc();
extern "C" void getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader();
extern "C" void removeResource__13JKRFileLoaderFPvP13JKRFileLoader();
extern "C" void detachResource__13JKRFileLoaderFPvP13JKRFileLoader();
extern "C" void findVolume__13JKRFileLoaderFPPCc();
extern "C" void fetchVolumeName__13JKRFileLoaderFPclPCc();
extern "C" void __sinit_JKRFileLoader_cpp();
extern "C" void func_802D45E4(void* _this);
extern "C" extern char const* const JKRFileLoader__stringBase0;
extern "C" u8 sVolumeList__13JKRFileLoader[12];
extern "C" u8 sCurrentVolume__13JKRFileLoader[4 + 4 /* padding */];

//
// External References:
//

extern "C" void __dl__FPv();
extern "C" void __ct__11JKRDisposerFv();
extern "C" void __dt__11JKRDisposerFv();
extern "C" void __ct__10JSUPtrLinkFPv();
extern "C" void __dt__10JSUPtrLinkFv();
extern "C" void __dt__10JSUPtrListFv();
extern "C" void initiate__10JSUPtrListFv();
extern "C" void __register_global_object();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" void strcmp();
extern "C" void strcpy();
extern "C" extern u8 __lower_map[256];

//
// Declarations:
//

/* ############################################################################################## */
/* 803CC1C8-803CC208 0292E8 003C+04 2/2 0/0 0/0 .data            __vt__13JKRFileLoader */
SECTION_DATA extern void* __vt__13JKRFileLoader[15 + 1 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13JKRFileLoaderFv,
    (void*)unmount__13JKRFileLoaderFv,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    /* padding */
    NULL,
};

/* 802D40F0-802D4148 2CEA30 0058+00 0/0 2/2 0/0 .text            __ct__13JKRFileLoaderFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRFileLoader::JKRFileLoader() {
    nofralloc
#include "asm/JSystem/JKernel/JKRFileLoader/__ct__13JKRFileLoaderFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80451418-80451420 000918 0004+04 2/2 3/3 0/0 .sbss            sCurrentVolume__13JKRFileLoader */
u8 JKRFileLoader::sCurrentVolume[4 + 4 /* padding */];

/* 802D4148-802D41D4 2CEA88 008C+00 1/0 2/2 0/0 .text            __dt__13JKRFileLoaderFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRFileLoader::~JKRFileLoader() {
    nofralloc
#include "asm/JSystem/JKernel/JKRFileLoader/__dt__13JKRFileLoaderFv.s"
}
#pragma pop

/* 802D41D4-802D4224 2CEB14 0050+00 1/0 6/0 0/0 .text            unmount__13JKRFileLoaderFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRFileLoader::unmount() {
    nofralloc
#include "asm/JSystem/JKernel/JKRFileLoader/unmount__13JKRFileLoaderFv.s"
}
#pragma pop

/* 802D4224-802D4270 2CEB64 004C+00 0/0 2/2 0/0 .text            getGlbResource__13JKRFileLoaderFPCc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRFileLoader::getGlbResource(char const* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRFileLoader/getGlbResource__13JKRFileLoaderFPCc.s"
}
#pragma pop

/* ############################################################################################## */
/* 80434348-80434354 061068 000C+00 1/1 0/0 0/0 .bss             @2182 */
static u8 lit_2182[12];

/* 80434354-80434360 061074 000C+00 5/5 14/14 0/0 .bss             sVolumeList__13JKRFileLoader */
u8 JKRFileLoader::sVolumeList[12];

/* 802D4270-802D4308 2CEBB0 0098+00 0/0 29/29 1/1 .text
 * getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRFileLoader::getGlbResource(char const* param_0, JKRFileLoader* param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRFileLoader/getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader.s"
}
#pragma pop

/* 802D4308-802D43A0 2CEC48 0098+00 0/0 1/1 0/0 .text
 * removeResource__13JKRFileLoaderFPvP13JKRFileLoader           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRFileLoader::removeResource(void* param_0, JKRFileLoader* param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRFileLoader/removeResource__13JKRFileLoaderFPvP13JKRFileLoader.s"
}
#pragma pop

/* 802D43A0-802D4438 2CECE0 0098+00 0/0 2/2 0/0 .text
 * detachResource__13JKRFileLoaderFPvP13JKRFileLoader           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRFileLoader::detachResource(void* param_0, JKRFileLoader* param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRFileLoader/detachResource__13JKRFileLoaderFPvP13JKRFileLoader.s"
}
#pragma pop

/* 802D4438-802D44C4 2CED78 008C+00 1/1 0/0 0/0 .text            findVolume__13JKRFileLoaderFPPCc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRFileLoader::findVolume(char const** param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRFileLoader/findVolume__13JKRFileLoaderFPPCc.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039D150-8039D150 0297B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039D150 = "/";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_8039D152 = "\0\0\0\0\0";
#pragma pop

/* 804508C0-804508C8 000340 0002+06 1/1 0/0 0/0 .sdata           rootPath$2498 */
SECTION_SDATA static u8 rootPath[2 + 6 /* padding */] = {
    0x2F,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 802D44C4-802D45A0 2CEE04 00DC+00 1/1 0/0 0/0 .text fetchVolumeName__13JKRFileLoaderFPclPCc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRFileLoader::fetchVolumeName(char* param_0, s32 param_1, char const* param_2) {
    nofralloc
#include "asm/JSystem/JKernel/JKRFileLoader/fetchVolumeName__13JKRFileLoaderFPclPCc.s"
}
#pragma pop

/* 802D45A0-802D45E4 2CEEE0 0044+00 0/0 1/0 0/0 .text            __sinit_JKRFileLoader_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_JKRFileLoader_cpp() {
    nofralloc
#include "asm/JSystem/JKernel/JKRFileLoader/__sinit_JKRFileLoader_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x802D45A0, __sinit_JKRFileLoader_cpp);
#pragma pop

/* 802D45E4-802D4638 2CEF24 0054+00 1/1 0/0 0/0 .text            __dt__24JSUList<13JKRFileLoader>Fv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_802D45E4(void* _this) {
    nofralloc
#include "asm/JSystem/JKernel/JKRFileLoader/func_802D45E4.s"
}
#pragma pop

/* 8039D150-8039D150 0297B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
