//
// Generated By: dol2asm
// Translation Unit: Z2SoundInfo
//

#include "Z2AudioLib/Z2SoundInfo.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct Z2Calc {
    /* 802A968C */ void linearTransform(f32, f32, f32, f32, f32, bool);
    /* 802A98D4 */ void getRandom_0_1();
};

struct JAUStdSoundTableType {
    static u32 STRM_CH_SHIFT;
};

struct JAUSoundTable {
    /* 802A7160 */ void getTypeID(JAISoundID) const;
    /* 802A728C */ void getData(JAISoundID) const;
};

//
// Forward References:
//

extern "C" void getBgmSeqResourceID__11Z2SoundInfoCF10JAISoundID();
extern "C" void getSoundType__11Z2SoundInfoCF10JAISoundID();
extern "C" void getCategory__11Z2SoundInfoCF10JAISoundID();
extern "C" void getPriority__11Z2SoundInfoCF10JAISoundID();
extern "C" void getAudibleSwFull__11Z2SoundInfoF10JAISoundID();
extern "C" void getAudibleSw__11Z2SoundInfoCF10JAISoundID();
extern "C" void getSeInfo__11Z2SoundInfoCF10JAISoundIDP5JAISe();
extern "C" void getSeqInfo__11Z2SoundInfoCF10JAISoundIDP6JAISeq();
extern "C" void getStreamInfo__11Z2SoundInfoCF10JAISoundIDP9JAIStream();
extern "C" void getStreamFilePath__11Z2SoundInfoF10JAISoundID();
extern "C" void getStreamFileEntry__11Z2SoundInfoF10JAISoundID();
extern "C" void getSwBit__11Z2SoundInfoCF10JAISoundID();
extern "C" void getSoundInfo___11Z2SoundInfoCF10JAISoundIDP8JAISound();
extern "C" void __dt__11Z2SoundInfoFv();
extern "C" static void func_802BBCBC();
extern "C" static void func_802BBCC4();
extern "C" static void func_802BBCCC();
extern "C" static void func_802BBCD4();
extern "C" u32 STRM_CH_SHIFT__20JAUStdSoundTableType;

//
// External References:
//

extern "C" void __dt__12JAISoundInfoFv();
extern "C" void __dt__16JAIStreamDataMgrFv();
extern "C" void getTypeID__13JAUSoundTableCF10JAISoundID();
extern "C" void getData__13JAUSoundTableCF10JAISoundID();
extern "C" void linearTransform__6Z2CalcFfffffb();
extern "C" void getRandom_0_1__6Z2CalcFv();
extern "C" void __dl__FPv();
extern "C" void DVDConvertPathToEntrynum();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__12JAUSoundInfo[4 + 1 /* padding */];
extern "C" extern u8 data_80450B58[4];
extern "C" extern u8 __OSReport_disable;

//
// Declarations:
//

/* 802BB00C-802BB090 2B594C 0084+00 2/1 0/0 0/0 .text
 * getBgmSeqResourceID__11Z2SoundInfoCF10JAISoundID             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getBgmSeqResourceID(JAISoundID param_0) const {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getBgmSeqResourceID__11Z2SoundInfoCF10JAISoundID.s"
}
#pragma pop

/* 802BB090-802BB0D8 2B59D0 0048+00 1/0 0/0 0/0 .text getSoundType__11Z2SoundInfoCF10JAISoundID */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getSoundType(JAISoundID param_0) const {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getSoundType__11Z2SoundInfoCF10JAISoundID.s"
}
#pragma pop

/* 802BB0D8-802BB0E0 2B5A18 0008+00 1/0 0/0 0/0 .text getCategory__11Z2SoundInfoCF10JAISoundID */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getCategory(JAISoundID param_0) const {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getCategory__11Z2SoundInfoCF10JAISoundID.s"
}
#pragma pop

/* 802BB0E0-802BB158 2B5A20 0078+00 1/0 0/0 0/0 .text getPriority__11Z2SoundInfoCF10JAISoundID */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getPriority(JAISoundID param_0) const {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getPriority__11Z2SoundInfoCF10JAISoundID.s"
}
#pragma pop

/* 802BB158-802BB448 2B5A98 02F0+00 0/0 1/1 0/0 .text getAudibleSwFull__11Z2SoundInfoF10JAISoundID
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getAudibleSwFull(JAISoundID param_0) {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getAudibleSwFull__11Z2SoundInfoF10JAISoundID.s"
}
#pragma pop

/* 802BB448-802BB6DC 2B5D88 0294+00 2/1 0/0 0/0 .text getAudibleSw__11Z2SoundInfoCF10JAISoundID */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getAudibleSw(JAISoundID param_0) const {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getAudibleSw__11Z2SoundInfoCF10JAISoundID.s"
}
#pragma pop

/* ############################################################################################## */
/* 80455A68-80455A6C 004068 0004+00 1/1 0/0 0/0 .sdata2          @963 */
SECTION_SDATA2 static f32 lit_963 = 8.0f;

/* 80455A6C-80455A70 00406C 0004+00 1/1 0/0 0/0 .sdata2          @964 */
SECTION_SDATA2 static f32 lit_964 = 15.0f;

/* 80455A70-80455A74 004070 0004+00 1/1 0/0 0/0 .sdata2          @965 */
SECTION_SDATA2 static f32 lit_965 = 16.0f;

/* 80455A74-80455A78 004074 0004+00 1/1 0/0 0/0 .sdata2          @966 */
SECTION_SDATA2 static f32 lit_966 = 24.0f;

/* 80455A78-80455A7C 004078 0004+00 1/1 0/0 0/0 .sdata2          @967 */
SECTION_SDATA2 static f32 lit_967 = 48.0f;

/* 80455A7C-80455A80 00407C 0004+00 2/2 0/0 0/0 .sdata2          @968 */
SECTION_SDATA2 static u8 lit_968[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80455A80-80455A88 004080 0004+04 2/2 0/0 0/0 .sdata2          @969 */
SECTION_SDATA2 static f32 lit_969[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};

/* 80455A88-80455A90 004088 0008+00 2/2 0/0 0/0 .sdata2          @973 */
SECTION_SDATA2 static f64 lit_973 = 4503599627370496.0 /* cast u32 to float */;

/* 802BB6DC-802BB8B4 2B601C 01D8+00 1/0 0/0 0/0 .text
 * getSeInfo__11Z2SoundInfoCF10JAISoundIDP5JAISe                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getSeInfo(JAISoundID param_0, JAISe* param_1) const {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getSeInfo__11Z2SoundInfoCF10JAISoundIDP5JAISe.s"
}
#pragma pop

/* 802BB8B4-802BB8E0 2B61F4 002C+00 1/0 0/0 0/0 .text
 * getSeqInfo__11Z2SoundInfoCF10JAISoundIDP6JAISeq              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getSeqInfo(JAISoundID param_0, JAISeq* param_1) const {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getSeqInfo__11Z2SoundInfoCF10JAISoundIDP6JAISeq.s"
}
#pragma pop

/* ############################################################################################## */
/* 80455A90-80455A94 004090 0004+00 1/1 0/0 0/0 .sdata2 STRM_CH_SHIFT__20JAUStdSoundTableType */
SECTION_SDATA2 u32 JAUStdSoundTableType::STRM_CH_SHIFT = 0x00000002;

/* 80455A94-80455A98 004094 0004+00 1/1 0/0 0/0 .sdata2          @1010 */
SECTION_SDATA2 static f32 lit_1010 = 0.5f;

/* 802BB8E0-802BBA10 2B6220 0130+00 1/0 0/0 0/0 .text
 * getStreamInfo__11Z2SoundInfoCF10JAISoundIDP9JAIStream        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getStreamInfo(JAISoundID param_0, JAIStream* param_1) const {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getStreamInfo__11Z2SoundInfoCF10JAISoundIDP9JAIStream.s"
}
#pragma pop

/* 802BBA10-802BBA88 2B6350 0078+00 1/1 0/0 0/0 .text
 * getStreamFilePath__11Z2SoundInfoF10JAISoundID                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getStreamFilePath(JAISoundID param_0) {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getStreamFilePath__11Z2SoundInfoF10JAISoundID.s"
}
#pragma pop

/* 802BBA88-802BBAC8 2B63C8 0040+00 2/1 0/0 0/0 .text
 * getStreamFileEntry__11Z2SoundInfoF10JAISoundID               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getStreamFileEntry(JAISoundID param_0) {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getStreamFileEntry__11Z2SoundInfoF10JAISoundID.s"
}
#pragma pop

/* 802BBAC8-802BBB48 2B6408 0080+00 3/3 4/4 0/0 .text getSwBit__11Z2SoundInfoCF10JAISoundID */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getSwBit(JAISoundID param_0) const {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getSwBit__11Z2SoundInfoCF10JAISoundID.s"
}
#pragma pop

/* ############################################################################################## */
/* 80455A98-80455AA0 004098 0004+04 1/1 0/0 0/0 .sdata2          @1070 */
SECTION_SDATA2 static f32 lit_1070[1 + 1 /* padding */] = {
    1.0f / 127.0f,
    /* padding */
    0.0f,
};

/* 802BBB48-802BBBE0 2B6488 0098+00 3/3 0/0 0/0 .text
 * getSoundInfo___11Z2SoundInfoCF10JAISoundIDP8JAISound         */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundInfo::getSoundInfo_(JAISoundID param_0, JAISound* param_1) const {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/getSoundInfo___11Z2SoundInfoCF10JAISoundIDP8JAISound.s"
}
#pragma pop

/* ############################################################################################## */
/* 803CAC48-803CAC98 027D68 0050+00 1/1 2/2 0/0 .data            __vt__11Z2SoundInfo */
SECTION_DATA extern void* __vt__11Z2SoundInfo[20] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)getSoundType__11Z2SoundInfoCF10JAISoundID,
    (void*)getCategory__11Z2SoundInfoCF10JAISoundID,
    (void*)getPriority__11Z2SoundInfoCF10JAISoundID,
    (void*)getSeInfo__11Z2SoundInfoCF10JAISoundIDP5JAISe,
    (void*)getSeqInfo__11Z2SoundInfoCF10JAISoundIDP6JAISeq,
    (void*)getStreamInfo__11Z2SoundInfoCF10JAISoundIDP9JAIStream,
    (void*)__dt__11Z2SoundInfoFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_802BBCC4,
    (void*)func_802BBCBC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_802BBCD4,
    (void*)func_802BBCCC,
    (void*)getAudibleSw__11Z2SoundInfoCF10JAISoundID,
    (void*)getBgmSeqResourceID__11Z2SoundInfoCF10JAISoundID,
    (void*)getStreamFileEntry__11Z2SoundInfoF10JAISoundID,
};

/* 802BBBE0-802BBCBC 2B6520 00DC+00 2/1 0/0 0/0 .text            __dt__11Z2SoundInfoFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __dt__11Z2SoundInfoFv() {
    // asm Z2SoundInfo::~Z2SoundInfo() {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/__dt__11Z2SoundInfoFv.s"
}
#pragma pop

/* 802BBCBC-802BBCC4 2B65FC 0008+00 1/0 0/0 0/0 .text
 * @4@getBgmSeqResourceID__11Z2SoundInfoCF10JAISoundID          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_802BBCBC() {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/func_802BBCBC.s"
}
#pragma pop

/* 802BBCC4-802BBCCC 2B6604 0008+00 1/0 0/0 0/0 .text @4@getAudibleSw__11Z2SoundInfoCF10JAISoundID
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_802BBCC4() {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/func_802BBCC4.s"
}
#pragma pop

/* 802BBCCC-802BBCD4 2B660C 0008+00 1/0 0/0 0/0 .text            @8@__dt__11Z2SoundInfoFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_802BBCCC() {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/func_802BBCCC.s"
}
#pragma pop

/* 802BBCD4-802BBCDC 2B6614 0008+00 1/0 0/0 0/0 .text
 * @8@getStreamFileEntry__11Z2SoundInfoF10JAISoundID            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_802BBCD4() {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundInfo/func_802BBCD4.s"
}
#pragma pop
