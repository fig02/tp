//
// Generated By: dol2asm
// Translation Unit: JAUAudioArcLoader
//

#include "JSystem/JAudio2/JAUAudioArcLoader.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct JAUSectionHeap {
    /* 802A60AC */ void newDynamicSeqBlock(u32);
};

struct JAISoundID {};

struct JAUSection {
    /* 802A51E4 */ void newSoundTable(void const*, u32, bool);
    /* 802A52A0 */ void newSoundNameTable(void const*, u32, bool);
    /* 802A535C */ void newStreamFileTable(void const*, bool);
    /* 802A5500 */ void newSeSeqCollection(void const*, u32);
    /* 802A56C8 */ void newStaticSeqData(JAISoundID, void const*, u32);
    /* 802A5730 */ void newStaticSeqData(JAISoundID);
    /* 802A5854 */ void newWaveBank(u32, void const*);
    /* 802A5948 */ void loadWaveArc(u32, u32);
    /* 802A5A50 */ void newBank(void const*, u32);
    /* 802A5B84 */ void newVoiceBank(u32, u32);
    /* 802A5CAC */ void beginNewBankTable(u32, u32);
    /* 802A5D9C */ void endNewBankTable();
};

struct JAUAudioArcLoader {
    /* 802A4740 */ JAUAudioArcLoader(JAUSection*);
    /* 802A478C */ void load(void const*);
    /* 802A47AC */ void readWS(u32, void const*, u32);
    /* 802A4804 */ void readBNK(u32, void const*);
    /* 802A4834 */ void readBSC(void const*, u32);
    /* 802A4858 */ void readBST(void const*, u32);
    /* 802A4880 */ void readBSTN(void const*, u32);
    /* 802A48A8 */ void readBMS(u32, void const*, u32);
    /* 802A48D4 */ void readBMS_fromArchive(u32);
    /* 802A4900 */ void newVoiceBank(u32, u32);
    /* 802A4930 */ void newDynamicSeqBlock(u32);
    /* 802A4968 */ void readBSFT(void const*);
    /* 802A4990 */ void beginBNKList(u32, u32);
    /* 802A49B4 */ void endBNKList();
    /* 802A49D8 */ void readMaxSeCategory(int, int, int);
    /* 802A49FC */ ~JAUAudioArcLoader();
};

struct JAUAudioArcInterpreter {
    /* 802A4244 */ JAUAudioArcInterpreter();
    /* 802A4260 */ ~JAUAudioArcInterpreter();
    /* 802A42A8 */ void parse(void const*);
    /* 802A4314 */ bool readCommandMore(u32);
};

//
// Forward References:
//

extern "C" void __ct__17JAUAudioArcLoaderFP10JAUSection();
extern "C" void load__17JAUAudioArcLoaderFPCv();
extern "C" void readWS__17JAUAudioArcLoaderFUlPCvUl();
extern "C" void readBNK__17JAUAudioArcLoaderFUlPCv();
extern "C" void readBSC__17JAUAudioArcLoaderFPCvUl();
extern "C" void readBST__17JAUAudioArcLoaderFPCvUl();
extern "C" void readBSTN__17JAUAudioArcLoaderFPCvUl();
extern "C" void readBMS__17JAUAudioArcLoaderFUlPCvUl();
extern "C" void readBMS_fromArchive__17JAUAudioArcLoaderFUl();
extern "C" void newVoiceBank__17JAUAudioArcLoaderFUlUl();
extern "C" void newDynamicSeqBlock__17JAUAudioArcLoaderFUl();
extern "C" void readBSFT__17JAUAudioArcLoaderFPCv();
extern "C" void beginBNKList__17JAUAudioArcLoaderFUlUl();
extern "C" void endBNKList__17JAUAudioArcLoaderFv();
extern "C" void readMaxSeCategory__17JAUAudioArcLoaderFiii();
extern "C" void __dt__17JAUAudioArcLoaderFv();

//
// External References:
//

extern "C" void __ct__22JAUAudioArcInterpreterFv();
extern "C" void __dt__22JAUAudioArcInterpreterFv();
extern "C" void parse__22JAUAudioArcInterpreterFPCv();
extern "C" bool readCommandMore__22JAUAudioArcInterpreterFUl();
extern "C" void newSoundTable__10JAUSectionFPCvUlb();
extern "C" void newSoundNameTable__10JAUSectionFPCvUlb();
extern "C" void newStreamFileTable__10JAUSectionFPCvb();
extern "C" void newSeSeqCollection__10JAUSectionFPCvUl();
extern "C" void newStaticSeqData__10JAUSectionF10JAISoundIDPCvUl();
extern "C" void newStaticSeqData__10JAUSectionF10JAISoundID();
extern "C" void newWaveBank__10JAUSectionFUlPCv();
extern "C" void loadWaveArc__10JAUSectionFUlUl();
extern "C" void newBank__10JAUSectionFPCvUl();
extern "C" void newVoiceBank__10JAUSectionFUlUl();
extern "C" void beginNewBankTable__10JAUSectionFUlUl();
extern "C" void endNewBankTable__10JAUSectionFv();
extern "C" void newDynamicSeqBlock__14JAUSectionHeapFUl();
extern "C" void __dl__FPv();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern u8 data_80450B6C[4];
extern "C" extern u8 __OSReport_disable;

//
// Declarations:
//

/* ############################################################################################## */
/* 803C9A78-803C9AC0 026B98 0044+04 2/2 2/2 0/0 .data            __vt__17JAUAudioArcLoader */
SECTION_DATA extern void* __vt__17JAUAudioArcLoader[17 + 1 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17JAUAudioArcLoaderFv,
    (void*)readWS__17JAUAudioArcLoaderFUlPCvUl,
    (void*)readBNK__17JAUAudioArcLoaderFUlPCv,
    (void*)readBSC__17JAUAudioArcLoaderFPCvUl,
    (void*)readBST__17JAUAudioArcLoaderFPCvUl,
    (void*)readBSTN__17JAUAudioArcLoaderFPCvUl,
    (void*)readBMS__17JAUAudioArcLoaderFUlPCvUl,
    (void*)readBMS_fromArchive__17JAUAudioArcLoaderFUl,
    (void*)newVoiceBank__17JAUAudioArcLoaderFUlUl,
    (void*)newDynamicSeqBlock__17JAUAudioArcLoaderFUl,
    (void*)readBSFT__17JAUAudioArcLoaderFPCv,
    (void*)readMaxSeCategory__17JAUAudioArcLoaderFiii,
    (void*)beginBNKList__17JAUAudioArcLoaderFUlUl,
    (void*)endBNKList__17JAUAudioArcLoaderFv,
    (void*)readCommandMore__22JAUAudioArcInterpreterFUl,
    /* padding */
    NULL,
};

/* 802A4740-802A478C 29F080 004C+00 0/0 1/1 0/0 .text __ct__17JAUAudioArcLoaderFP10JAUSection */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JAUAudioArcLoader::JAUAudioArcLoader(JAUSection* param_0) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/__ct__17JAUAudioArcLoaderFP10JAUSection.s"
}
#pragma pop

/* 802A478C-802A47AC 29F0CC 0020+00 0/0 1/1 0/0 .text            load__17JAUAudioArcLoaderFPCv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::load(void const* param_0) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/load__17JAUAudioArcLoaderFPCv.s"
}
#pragma pop

/* 802A47AC-802A4804 29F0EC 0058+00 1/0 1/0 0/0 .text            readWS__17JAUAudioArcLoaderFUlPCvUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::readWS(u32 param_0, void const* param_1, u32 param_2) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/readWS__17JAUAudioArcLoaderFUlPCvUl.s"
}
#pragma pop

/* 802A4804-802A4834 29F144 0030+00 1/0 1/0 0/0 .text            readBNK__17JAUAudioArcLoaderFUlPCv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::readBNK(u32 param_0, void const* param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/readBNK__17JAUAudioArcLoaderFUlPCv.s"
}
#pragma pop

/* 802A4834-802A4858 29F174 0024+00 1/0 1/0 0/0 .text            readBSC__17JAUAudioArcLoaderFPCvUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::readBSC(void const* param_0, u32 param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/readBSC__17JAUAudioArcLoaderFPCvUl.s"
}
#pragma pop

/* 802A4858-802A4880 29F198 0028+00 1/0 1/0 0/0 .text            readBST__17JAUAudioArcLoaderFPCvUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::readBST(void const* param_0, u32 param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/readBST__17JAUAudioArcLoaderFPCvUl.s"
}
#pragma pop

/* 802A4880-802A48A8 29F1C0 0028+00 1/0 0/0 0/0 .text            readBSTN__17JAUAudioArcLoaderFPCvUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::readBSTN(void const* param_0, u32 param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/readBSTN__17JAUAudioArcLoaderFPCvUl.s"
}
#pragma pop

/* 802A48A8-802A48D4 29F1E8 002C+00 1/0 1/0 0/0 .text readBMS__17JAUAudioArcLoaderFUlPCvUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::readBMS(u32 param_0, void const* param_1, u32 param_2) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/readBMS__17JAUAudioArcLoaderFUlPCvUl.s"
}
#pragma pop

/* 802A48D4-802A4900 29F214 002C+00 1/0 1/0 0/0 .text readBMS_fromArchive__17JAUAudioArcLoaderFUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::readBMS_fromArchive(u32 param_0) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/readBMS_fromArchive__17JAUAudioArcLoaderFUl.s"
}
#pragma pop

/* 802A4900-802A4930 29F240 0030+00 1/0 1/0 0/0 .text newVoiceBank__17JAUAudioArcLoaderFUlUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::newVoiceBank(u32 param_0, u32 param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/newVoiceBank__17JAUAudioArcLoaderFUlUl.s"
}
#pragma pop

/* 802A4930-802A4968 29F270 0038+00 1/0 1/0 0/0 .text newDynamicSeqBlock__17JAUAudioArcLoaderFUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::newDynamicSeqBlock(u32 param_0) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/newDynamicSeqBlock__17JAUAudioArcLoaderFUl.s"
}
#pragma pop

/* 802A4968-802A4990 29F2A8 0028+00 1/0 1/0 0/0 .text            readBSFT__17JAUAudioArcLoaderFPCv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::readBSFT(void const* param_0) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/readBSFT__17JAUAudioArcLoaderFPCv.s"
}
#pragma pop

/* 802A4990-802A49B4 29F2D0 0024+00 1/0 1/0 0/0 .text beginBNKList__17JAUAudioArcLoaderFUlUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::beginBNKList(u32 param_0, u32 param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/beginBNKList__17JAUAudioArcLoaderFUlUl.s"
}
#pragma pop

/* 802A49B4-802A49D8 29F2F4 0024+00 1/0 1/0 0/0 .text            endBNKList__17JAUAudioArcLoaderFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::endBNKList() {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/endBNKList__17JAUAudioArcLoaderFv.s"
}
#pragma pop

/* 802A49D8-802A49FC 29F318 0024+00 1/0 1/0 0/0 .text readMaxSeCategory__17JAUAudioArcLoaderFiii
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUAudioArcLoader::readMaxSeCategory(int param_0, int param_1, int param_2) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/readMaxSeCategory__17JAUAudioArcLoaderFiii.s"
}
#pragma pop

/* 802A49FC-802A4A5C 29F33C 0060+00 1/0 0/0 0/0 .text            __dt__17JAUAudioArcLoaderFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JAUAudioArcLoader::~JAUAudioArcLoader() {
    nofralloc
#include "asm/JSystem/JAudio2/JAUAudioArcLoader/__dt__17JAUAudioArcLoaderFv.s"
}
#pragma pop
