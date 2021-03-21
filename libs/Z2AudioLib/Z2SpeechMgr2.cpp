/* Z2SpeechMgr2.cpp autogenerated by split.py v0.3 at 2021-01-04 22:38:34.026034 */

#include "Z2AudioLib/Z2SpeechMgr2/Z2SpeechMgr2.h"
#include "JSystem/JAudio2/JAISoundParamsMove.h"
#include "JSystem/JAudio2/JAISoundStarter.h"
#include "Z2AudioLib/Z2EnvSeMgr/Z2EnvSeMgr.h"
#include "Z2AudioLib/Z2SeqMgr/Z2SeqMgr.h"
#include "Z2AudioLib/Z2SoundStarter/Z2SoundStarter.h"
#include "Z2AudioLib/Z2StatusMgr/Z2StatusMgr.h"
#include "global.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"

extern "C" {
void __dl__FPv(void);
void dComIfGp_getReverb__Fi(void);
}

// additional symbols needed for Z2SpeechMgr2.cpp
// autogenerated by split.py v0.3 at 2021-01-04 22:34:32.652598
extern u8 lbl_80455F40;
extern u8 lbl_80455F50;
extern u8 lbl_80456BA8;
extern u8 lbl_803CBD08;
extern u8 lbl_80455F34;
extern u8 lbl_80455F48;
extern u8 lbl_803CBED0;
extern u8 lbl_80455F30;
extern u8 lbl_80456BAC;
extern u8 lbl_80455F54;
extern u8 lbl_8039C98C;
extern u8 lbl_80455F3C;
extern u8 lbl_803CBF24;
extern u8 lbl_80455F38;
extern u8 lbl_803C9D80;
extern u8 lbl_80450B80;

#ifdef NONMATCHING
Z2SpeechMgr2::Z2SpeechMgr2()
    : mSound(NULL), field_0x4(0), mRandom(0), mSpeechStarter(), field_0x3f8(0), mTextCount(-1),
      field_0x3fc(0), field_0x3fe(0), field_0x3ff(0), field_0x401(0) {
    // lbl_80450B70 = this;
    // this->sound = NULL;
    // this->field_0x4 = 0;
    // this->random
    for (int i = 0; i < 0x40; i++)
        this->field_0x402[i] = -1;
}
#else
asm Z2SpeechMgr2::Z2SpeechMgr2() {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CBC60.s"
}
#endif

extern "C" {
// __dt__15Z2SpeechStarterFv
// Z2SpeechStarter::~Z2SpeechStarter(void)
asm void __dt__15Z2SpeechStarterFv(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CBCEC.s"
}

// setString__12Z2SpeechMgr2FPCUssUcUs
// Z2SpeechMgr2::setString(const unsigned short*, short, unsigned char, unsigned short)
asm void setString__12Z2SpeechMgr2FPCUssUcUs(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CBD88.s"
}

// setTextCount__12Z2SpeechMgr2Fs
// Z2SpeechMgr2::setTextCount(short)
asm void setTextCount__12Z2SpeechMgr2Fs(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CBF60.s"
}

// speakOneWord__12Z2SpeechMgr2Fb
// Z2SpeechMgr2::speakOneWord(bool)
asm void speakOneWord__12Z2SpeechMgr2Fb(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CC190.s"
}

// isNonVerbal__12Z2SpeechMgr2Fv
// Z2SpeechMgr2::isNonVerbal(void)
asm void isNonVerbal__12Z2SpeechMgr2Fv(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CC2FC.s"
}

// selectUnit__12Z2SpeechMgr2Fb
// Z2SpeechMgr2::selectUnit(bool)
asm void selectUnit__12Z2SpeechMgr2Fb(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CC4C0.s"
}

// selectTail__12Z2SpeechMgr2Fv
// Z2SpeechMgr2::selectTail(void)
asm void selectTail__12Z2SpeechMgr2Fv(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CC738.s"
}

// framework__12Z2SpeechMgr2Fv
// Z2SpeechMgr2::framework(void)
asm void framework__12Z2SpeechMgr2Fv(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CC9D0.s"
}

// playOneShotVoice__12Z2SpeechMgr2FUcUsP3VecSc
// Z2SpeechMgr2::playOneShotVoice(unsigned char, unsigned short, Vec*, char)
asm void playOneShotVoice__12Z2SpeechMgr2FUcUsP3VecSc(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CCA18.s"
}

// isMidnaSpeak__12Z2SpeechMgr2Fv
// Z2SpeechMgr2::isMidnaSpeak(void)
asm void isMidnaSpeak__12Z2SpeechMgr2Fv(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CCF88.s"
}

// __ct__15Z2SpeechStarterFv
// Z2SpeechStarter::Z2SpeechStarter(void)
asm Z2SpeechStarter::Z2SpeechStarter(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CCFB8.s"
}

// startSound__15Z2SpeechStarterF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f>UlfffffUl
// Z2SpeechStarter::startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f>, unsigned long,
// float, float, float, float, float, unsigned long)
asm void func_802CCFF8(void) {
    nofralloc
#include "Z2AudioLib/Z2SpeechMgr2/asm/func_802CCFF8.s"
}
};