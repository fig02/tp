//
// Generated By: dol2asm
// Translation Unit: JASDrumSet
//

#include "JSystem/JAudio2/JASDrumSet.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct JKRHeap {};

struct JASInstParam {};

struct JASDrumSet {
    struct TPerc {
        /* 802984C4 */ TPerc();
        /* 802984E4 */ void setRelease(u32);
    };

    /* 802982EC */ JASDrumSet();
    /* 80298314 */ ~JASDrumSet();
    /* 80298370 */ void newPercArray(u8, JKRHeap*);
    /* 802983CC */ void getParam(int, int, JASInstParam*) const;
    /* 802984B4 */ void setPerc(int, JASDrumSet::TPerc*);
    /* 802984EC */ void getType() const;
};

struct JASCalc {
    /* 8028F480 */ void bzero(void*, u32);
};

//
// Forward References:
//

extern "C" void __ct__10JASDrumSetFv();
extern "C" void __dt__10JASDrumSetFv();
extern "C" void newPercArray__10JASDrumSetFUcP7JKRHeap();
extern "C" void getParam__10JASDrumSetCFiiP12JASInstParam();
extern "C" void setPerc__10JASDrumSetFiPQ210JASDrumSet5TPerc();
extern "C" void __ct__Q210JASDrumSet5TPercFv();
extern "C" void setRelease__Q210JASDrumSet5TPercFUl();
extern "C" void getType__10JASDrumSetCFv();

//
// External References:
//

extern "C" void bzero__7JASCalcFPvUl();
extern "C" void* __nwa__FUlP7JKRHeapi();
extern "C" void __dl__FPv();
extern "C" extern void* __vt__7JASInst[5];

//
// Declarations:
//

/* ############################################################################################## */
/* 803C7710-803C7728 024830 0014+04 2/2 0/0 0/0 .data            __vt__10JASDrumSet */
SECTION_DATA extern void* __vt__10JASDrumSet[5 + 1 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10JASDrumSetFv,
    (void*)getParam__10JASDrumSetCFiiP12JASInstParam,
    (void*)getType__10JASDrumSetCFv,
    /* padding */
    NULL,
};

/* 802982EC-80298314 292C2C 0028+00 0/0 2/2 0/0 .text            __ct__10JASDrumSetFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JASDrumSet::JASDrumSet() {
    nofralloc
#include "asm/JSystem/JAudio2/JASDrumSet/__ct__10JASDrumSetFv.s"
}
#pragma pop

/* 80298314-80298370 292C54 005C+00 1/0 0/0 0/0 .text            __dt__10JASDrumSetFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JASDrumSet::~JASDrumSet() {
    nofralloc
#include "asm/JSystem/JAudio2/JASDrumSet/__dt__10JASDrumSetFv.s"
}
#pragma pop

/* 80298370-802983CC 292CB0 005C+00 0/0 2/2 0/0 .text newPercArray__10JASDrumSetFUcP7JKRHeap */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JASDrumSet::newPercArray(u8 param_0, JKRHeap* param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JASDrumSet/newPercArray__10JASDrumSetFUcP7JKRHeap.s"
}
#pragma pop

/* ############################################################################################## */
/* 80431B58-80431B70 05E878 0018+00 1/1 0/0 0/0 .bss             osc$213 */
static u8 osc[24];

/* 80451270-80451274 000770 0004+00 1/1 0/0 0/0 .sbss            oscp$214 */
static u8 oscp[4];

/* 80451274-80451278 000774 0004+00 1/1 0/0 0/0 .sbss            None */
static u8 data_80451274[4];

/* 80455648-8045564C 003C48 0004+00 2/2 0/0 0/0 .sdata2          @219 */
SECTION_SDATA2 static f32 lit_219 = 1.0f;

/* 8045564C-80455650 003C4C 0004+00 1/1 0/0 0/0 .sdata2          @220 */
SECTION_SDATA2 static u8 lit_220[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 802983CC-802984B4 292D0C 00E8+00 1/0 0/0 0/0 .text getParam__10JASDrumSetCFiiP12JASInstParam */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JASDrumSet::getParam(int param_0, int param_1, JASInstParam* param_2) const {
    nofralloc
#include "asm/JSystem/JAudio2/JASDrumSet/getParam__10JASDrumSetCFiiP12JASInstParam.s"
}
#pragma pop

/* 802984B4-802984C4 292DF4 0010+00 0/0 2/2 0/0 .text setPerc__10JASDrumSetFiPQ210JASDrumSet5TPerc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JASDrumSet::setPerc(int param_0, JASDrumSet::TPerc* param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JASDrumSet/setPerc__10JASDrumSetFiPQ210JASDrumSet5TPerc.s"
}
#pragma pop

/* ############################################################################################## */
/* 80455650-80455658 003C50 0004+04 1/1 0/0 0/0 .sdata2          @253 */
SECTION_SDATA2 static f32 lit_253[1 + 1 /* padding */] = {
    0.5f,
    /* padding */
    0.0f,
};

/* 802984C4-802984E4 292E04 0020+00 0/0 2/2 0/0 .text            __ct__Q210JASDrumSet5TPercFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JASDrumSet::TPerc::TPerc() {
    nofralloc
#include "asm/JSystem/JAudio2/JASDrumSet/__ct__Q210JASDrumSet5TPercFv.s"
}
#pragma pop

/* 802984E4-802984EC -00001 0008+00 0/0 0/0 0/0 .text            setRelease__Q210JASDrumSet5TPercFUl
 */
void JASDrumSet::TPerc::setRelease(u32 param_0) {
    *(u16*)(((u8*)this) + 12) /* this->field_0xc */ = (u16)(param_0);
}

/* 802984EC-802984F8 292E2C 000C+00 1/0 0/0 0/0 .text            getType__10JASDrumSetCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JASDrumSet::getType() const {
    nofralloc
#include "asm/JSystem/JAudio2/JASDrumSet/getType__10JASDrumSetCFv.s"
}
#pragma pop
