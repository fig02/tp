//
// Generated By: dol2asm
// Translation Unit: JAISeMgr
//

#include "JSystem/JAudio2/JAISeMgr.h"
#include "JSystem/JAudio2/JAISoundHandles.h"
#include "JSystem/JAudio2/JAISoundInfo.h"
#include "JSystem/JAudio2/JASReport.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Forward References:
//

extern "C" void isUsingSeqData__16JAISeCategoryMgrFRC16JAISeqDataRegion();
extern "C" void releaseSeqData__16JAISeCategoryMgrFRC16JAISeqDataRegion();
extern "C" void JAISeMgr_calc___16JAISeCategoryMgrFv();
extern "C" void JAISeMgr_freeDeadSe___16JAISeCategoryMgrFv();
extern "C" void func_8029FC34(void* _this);
extern "C" void JAISeMgr_acceptsNewSe___16JAISeCategoryMgrCFUl();
extern "C" void sortByPriority___16JAISeCategoryMgrFv();
extern "C" void stop__16JAISeCategoryMgrFUl();
extern "C" void stop__16JAISeCategoryMgrFv();
extern "C" void stopSoundID__16JAISeCategoryMgrF10JAISoundID();
extern "C" void pause__16JAISeCategoryMgrFb();
extern "C" void JAISeMgr_mixOut___16JAISeCategoryMgrFRC18JAISoundParamsMove16JAISoundActivity();
extern "C" void __ct__8JAISeMgrFb();
extern "C" void isUsingSeqData__8JAISeMgrFRC16JAISeqDataRegion();
extern "C" void releaseSeqData__8JAISeMgrFRC16JAISeqDataRegion();
extern "C" void setCategoryArrangement__8JAISeMgrFRC24JAISeCategoryArrangement();
extern "C" void stop__8JAISeMgrFv();
extern "C" void stopSoundID__8JAISeMgrF10JAISoundID();
extern "C" void initParams__8JAISeMgrFv();
extern "C" void setAudience__8JAISeMgrFP11JAIAudience();
extern "C" void setSeqDataMgr__8JAISeMgrFP13JAISeqDataMgr();
extern "C" void resetSeqDataMgr__8JAISeMgrFv();
extern "C" void newSe___8JAISeMgrFiUl();
extern "C" void calc__8JAISeMgrFv();
extern "C" void mixOut__8JAISeMgrFv();
extern "C" void func_802A0768();
extern "C" void getNumActiveSe__8JAISeMgrCFv();
extern "C" void __dt__8JAISeMgrFv();
extern "C" void __ct__16JAISeCategoryMgrFv();
extern "C" extern char const* const JAISeMgr__stringBase0;

//
// External References:
//

extern "C" void __dt__16JAISeCategoryMgrFv();
extern "C" void __ct__17JASGenericMemPoolFv();
extern "C" void __dt__17JASGenericMemPoolFv();
extern "C" void alloc__17JASGenericMemPoolFUl();
extern "C" void free__17JASGenericMemPoolFPvUl();
extern "C" void JASReport__FPCce();
extern "C" void __dt__8JASTrackFv();
extern "C" void combine__14JASSoundParamsFRC14JASSoundParamsRC14JASSoundParams();
extern "C" void func_8029F03C();
extern "C" void JAISeCategoryMgr_mixOut___5JAISeFbRC14JASSoundParams16JAISoundActivity();
extern "C" void JAISeCategoryMgr_calc___5JAISeFv();
extern "C" void func_8029F650();
extern "C" void __dt__14JAISeqDataUserFv();
extern "C" void attachHandle__8JAISoundFP14JAISoundHandle();
extern "C" void stop__8JAISoundFUl();
extern "C" void stop__8JAISoundFv();
extern "C" void __dl__FPv();
extern "C" void __dt__10JSUPtrLinkFv();
extern "C" void initiate__10JSUPtrListFv();
extern "C" void append__10JSUPtrListFP10JSUPtrLink();
extern "C" void remove__10JSUPtrListFP10JSUPtrLink();
extern "C" void __register_global_object();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__5JAISe[22];
extern "C" extern void* __vt__14JAISeqDataUser[5 + 1 /* padding */];
extern "C" extern u8 data_80450B5C[4];
extern "C" extern u8 data_80451310[8];
extern "C" extern u8 __OSReport_disable;

//
// Declarations:
//

/* 8029F8B0-8029F91C 29A1F0 006C+00 2/1 0/0 0/0 .text
 * isUsingSeqData__16JAISeCategoryMgrFRC16JAISeqDataRegion      */
bool JAISeCategoryMgr::isUsingSeqData(JAISeqDataRegion const& param_0) {
    JSULink<JAISe>* link = mSeList.getFirst();
    while (link != NULL) {
        JAISe* obj = link->getObject();
        if (param_0.intersects(*obj->getSeqData())) {
            return true;
        }
        link = link->getNext();
    }
    
    return false;
}

/* 8029F91C-8029F9C4 29A25C 00A8+00 2/1 0/0 0/0 .text
 * releaseSeqData__16JAISeCategoryMgrFRC16JAISeqDataRegion      */
int JAISeCategoryMgr::releaseSeqData(JAISeqDataRegion const& param_0) {
    bool bVar1 = false;
    for (JSULink<JAISe>* link = mSeList.getFirst(); link != NULL; link = link->getNext()) {
        if (param_0.intersects(*link->getObject()->getSeqData())) {
            link->getObject()->stop();
            bVar1 = true;
        }
    }
    // Fake match. li 2 needs to come after clrlwi
    u32 x = bVar1;
    u32 y = x;
    int rv = 2;
    if (x) {
        rv = 1;
    } 
    return rv;
}

/* 8029F9C4-8029FB30 29A304 016C+00 1/1 0/0 0/0 .text JAISeMgr_calc___16JAISeCategoryMgrFv */
void JAISeCategoryMgr::JAISeMgr_calc_() {
    mParams.calc();

    for (JSULink<JAISe>* link = mSeList.getFirst(); link != NULL; link = link->getNext()) {
        link->getObject()->JAISeCategoryMgr_calc_();
    }
    sortByPriority_();
}

/* ############################################################################################## */
/* 80434078-80434084 060D98 000C+00 2/2 0/0 0/0 .bss             @744 */
static u8 lit_744[12];

/* 80434084-80434098 060DA4 0010+04 2/2 1/1 0/0 .bss
 * memPool_$localstatic3$getMemPool___26JASPoolAllocObject<5JAISe>Fv */
extern u8 data_80434084[16 + 4 /* padding */];
u8 data_80434084[16 + 4 /* padding */];

/* 8029FB30-8029FC34 29A470 0104+00 1/1 0/0 0/0 .text JAISeMgr_freeDeadSe___16JAISeCategoryMgrFv
 */
// Need to setup JAISe dtor
#ifdef NONMATCHING
void JAISeCategoryMgr::JAISeMgr_freeDeadSe_() {
    JSULink<JAISe>* link = mSeList.getFirst();
    while (link != NULL) {
        JSULink<JAISe>* link_next = link->getNext();
        if (link->getObject()->status_.isDead()) {
            mSeList.remove(link);
            delete link->getObject();
        }
        link = link_next;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAISeCategoryMgr::JAISeMgr_freeDeadSe_() {
    nofralloc
#include "asm/JSystem/JAudio2/JAISeMgr/JAISeMgr_freeDeadSe___16JAISeCategoryMgrFv.s"
}
#pragma pop
#endif

/* 8029FC34-8029FC88 29A574 0054+00 2/2 1/1 0/0 .text            __dt__18JASMemPool<5JAISe>Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_8029FC34(void* _this) {
    nofralloc
#include "asm/JSystem/JAudio2/JAISeMgr/func_8029FC34.s"
}
#pragma pop

/* ############################################################################################## */
/* 80455788-8045578C 003D88 0004+00 1/1 0/0 0/0 .sdata2          @822 */
SECTION_SDATA2 static f32 lit_822 = 1.0f / 100.0f;

/* 8029FC88-8029FD40 29A5C8 00B8+00 1/1 0/0 0/0 .text
 * JAISeMgr_acceptsNewSe___16JAISeCategoryMgrCFUl               */
// isStopping issues
#ifdef NONMATCHING
u32 JAISeCategoryMgr::JAISeMgr_acceptsNewSe_(u32 param_0) const {
    s32 rv;
    int maxSe = getMaxSe();
    if (maxSe <= 0) {
        return 1;
    } 

    int stopCount = 0;
    for (JSULink<JAISe>* link = mSeList.getFirst(); link != NULL; link = link->getNext()) {
        if (param_0 < link->getObject()->JAISeCategoryMgr_getProperPriority_()) {
            return 1;
        }
        if (link->getObject()->isStopping() == 0) {
            stopCount++;
        }
    }
    return stopCount < maxSe;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm u32 JAISeCategoryMgr::JAISeMgr_acceptsNewSe_(u32 param_0) const {
    nofralloc
#include "asm/JSystem/JAudio2/JAISeMgr/JAISeMgr_acceptsNewSe___16JAISeCategoryMgrCFUl.s"
}
#pragma pop
#endif

/* 8029FD40-8029FDE0 29A680 00A0+00 1/1 0/0 0/0 .text sortByPriority___16JAISeCategoryMgrFv */
void JAISeCategoryMgr::sortByPriority_() {
    for (u32 i = mSeList.getNumLinks(); i != 0; i--) {
        JSULink<JAISe>* link = mSeList.getFirst();
        u32 lowestPriority = link->getObject()->JAISeCategoryMgr_getPriority_();
        JSULink<JAISe>* current = link->getNext();
        for (int j = 1; j < i; j++) {
            u32 itemPriority = current->getObject()->JAISeCategoryMgr_getPriority_();
            if (itemPriority < lowestPriority) {
                lowestPriority = itemPriority;
                link = current;
            }
            current = current->getNext();
        }
        mSeList.remove(link);
        mSeList.append(link);
    }
}

/* 8029FDE0-8029FE34 29A720 0054+00 0/0 1/1 0/0 .text            stop__16JAISeCategoryMgrFUl */
void JAISeCategoryMgr::stop(u32 param_0) {
    for (JSULink<JAISe>* link = mSeList.getFirst(); link != NULL; link = link->getNext()) {
        link->getObject()->stop(param_0);
    }
}

/* 8029FE34-8029FE78 29A774 0044+00 1/1 0/0 0/0 .text            stop__16JAISeCategoryMgrFv */
void JAISeCategoryMgr::stop() {
    for (JSULink<JAISe>* link = mSeList.getFirst(); link != NULL; link = link->getNext()) {
        link->getObject()->stop();
    }
}

/* 8029FE78-8029FEEC 29A7B8 0074+00 1/1 0/0 0/0 .text stopSoundID__16JAISeCategoryMgrF10JAISoundID
 */
inline JAISoundID JAISound::getID() const {
    return JAISoundID((u32)soundID);
}

void JAISeCategoryMgr::stopSoundID(JAISoundID param_0) {
    if (!param_0.isAnonymous()) {
        for (JSULink<JAISe>* link = mSeList.getFirst(); link != NULL; link = link->getNext()) {
            if ((u32)link->getObject()->getID() == (u32)param_0) {
                link->getObject()->stop();
            }
        }
    }
}

/* 8029FEEC-8029FF18 29A82C 002C+00 0/0 2/2 0/0 .text            pause__16JAISeCategoryMgrFb */
void JAISeCategoryMgr::pause(bool param_0) {
    for (JSULink<JAISe>* link = mSeList.getFirst(); link != NULL; link = link->getNext()) {
        link->getObject()->pause(param_0);
    }
}

/* ############################################################################################## */
/* 8045578C-80455790 003D8C 0004+00 4/4 0/0 0/0 .sdata2          @1040 */
SECTION_SDATA2 static f32 lit_1040 = 1.0f;

/* 80455790-80455794 003D90 0004+00 4/4 0/0 0/0 .sdata2          @1041 */
SECTION_SDATA2 static u8 lit_1041[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80455794-80455798 003D94 0004+00 4/4 0/0 0/0 .sdata2          @1042 */
SECTION_SDATA2 static f32 lit_1042 = 0.5f;

/* 8029FF18-802A0074 29A858 015C+00 1/1 0/0 0/0 .text
 * JAISeMgr_mixOut___16JAISeCategoryMgrFRC18JAISoundParamsMove16JAISoundActivity */
// Matches with literals
#ifdef NONMATCHING
void JAISeCategoryMgr::JAISeMgr_mixOut_(JAISoundParamsMove const& param_0,
                                            JAISoundActivity param_1) {
    JASSoundParams aJStack_30;
    aJStack_30.combine(param_0.mParams, mParams.mParams);
    JSULink<JAISe>* this_00 = mSeList.getFirst();
    int iVar1 = getMaxActiveSe();
    
    if (iVar1 > 0) {
        while (this_00 != NULL && iVar1 > 0 && !this_00->getObject()->isFarAway()) {
            this_00->getObject()->JAISeCategoryMgr_mixOut_(true, aJStack_30, param_1);
            this_00 = this_00->getNext();
            iVar1--;
        }
        for (; this_00 != NULL; this_00 = this_00->getNext()) {
            this_00->getObject()->JAISeCategoryMgr_mixOut_(false, aJStack_30, param_1);
        }
    } else {
        while (this_00 != NULL && !this_00->getObject()->isFarAway()) {
            this_00->getObject()->JAISeCategoryMgr_mixOut_(true, aJStack_30, param_1);
            this_00 = this_00->getNext();
        }
        for (; this_00 != NULL; this_00 = this_00->getNext()) {
            this_00->getObject()->JAISeCategoryMgr_mixOut_(false, aJStack_30, param_1);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAISeCategoryMgr::JAISeMgr_mixOut_(JAISoundParamsMove const& param_0,
                                            JAISoundActivity param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JAISeMgr/JAISeMgr_mixOut___16JAISeCategoryMgrFRC18JAISoundParamsMove16JAISoundActivity.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 803C98B0-803C98C4 0269D0 0014+00 2/2 1/1 0/0 .data            __vt__8JAISeMgr */
SECTION_DATA extern void* __vt__8JAISeMgr[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8JAISeMgrFv,
    (void*)isUsingSeqData__8JAISeMgrFRC16JAISeqDataRegion,
    (void*)releaseSeqData__8JAISeMgrFRC16JAISeqDataRegion,
};

/* 802A0074-802A0168 29A9B4 00F4+00 0/0 1/1 0/0 .text            __ct__8JAISeMgrFb */
// Matches with literals
#ifdef NONMATCHING
JAISeMgr::JAISeMgr(bool param_0) : JASGlobalInstance<JAISeMgr>(param_0) {
    mAudience = NULL;
    mSeqDataMgr = NULL;
    field_0x10 = 0;
    mParams.init();
    JAISoundActivity::init();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JAISeMgr::JAISeMgr(bool param_0) {
    nofralloc
#include "asm/JSystem/JAudio2/JAISeMgr/__ct__8JAISeMgrFb.s"
}
#pragma pop
#endif

/* 802A0168-802A01D8 29AAA8 0070+00 1/0 0/0 0/0 .text
 * isUsingSeqData__8JAISeMgrFRC16JAISeqDataRegion               */
bool JAISeMgr::isUsingSeqData(JAISeqDataRegion const& param_0) {
    for (int i = 0; i < 16; i++) {
        if (mCategoryMgrs[i].JAISeCategoryMgr::isUsingSeqData(param_0)) {
            return true;
        }
    }
    return false;
}

/* 802A01D8-802A0268 29AB18 0090+00 1/0 0/0 0/0 .text
 * releaseSeqData__8JAISeMgrFRC16JAISeqDataRegion               */
int JAISeMgr::releaseSeqData(JAISeqDataRegion const& param_0) {
    u8 r30 = 0;
    for (int i = 0; i < 16; i++) {
        switch (mCategoryMgrs[i].JAISeCategoryMgr::releaseSeqData(param_0)) {
            case 0:
                return 0;
            case 1:
                r30 = 1;
                break;
        }
    }
    return (r30 != 0) ? 1 : 0;
}

/* 802A0268-802A02A0 29ABA8 0038+00 0/0 1/1 0/0 .text
 * setCategoryArrangement__8JAISeMgrFRC24JAISeCategoryArrangement */
void JAISeMgr::setCategoryArrangement(JAISeCategoryArrangement const& param_0) {
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].setMaxActiveSe(param_0.mItems[i].mMaxActiveSe);
        mCategoryMgrs[i].setMaxInactiveSe(param_0.mItems[i].mMaxInactiveSe);
    }
}

/* 802A02A0-802A02F4 29ABE0 0054+00 0/0 1/1 0/0 .text            stop__8JAISeMgrFv */
void JAISeMgr::stop() {
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].stop();
    }
}

/* 802A02F4-802A0358 29AC34 0064+00 0/0 1/1 0/0 .text            stopSoundID__8JAISeMgrF10JAISoundID
 */
void JAISeMgr::stopSoundID(JAISoundID param_0) {
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].stopSoundID(param_0);
    }
}

/* 802A0358-802A03D8 29AC98 0080+00 0/0 1/1 0/0 .text            initParams__8JAISeMgrFv */
// Matches with literals
#ifdef NONMATCHING
void JAISeMgr::initParams() {
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].getParams()->init();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAISeMgr::initParams() {
    nofralloc
#include "asm/JSystem/JAudio2/JAISeMgr/initParams__8JAISeMgrFv.s"
}
#pragma pop
#endif

/* 802A03D8-802A03E0 -00001 0008+00 0/0 0/0 0/0 .text setAudience__8JAISeMgrFP11JAIAudience */
void JAISeMgr::setAudience(JAIAudience* param_0) {
    mAudience = param_0;
}

/* 802A03E0-802A0434 29AD20 0054+00 0/0 1/1 0/0 .text setSeqDataMgr__8JAISeMgrFP13JAISeqDataMgr */
void JAISeMgr::setSeqDataMgr(JAISeqDataMgr* param_0) {
    resetSeqDataMgr();
    mSeqDataMgr = param_0;
    mSeqDataMgr->setSeqDataUser(this);
}

/* 802A0434-802A0484 29AD74 0050+00 1/1 0/0 0/0 .text            resetSeqDataMgr__8JAISeMgrFv */
void JAISeMgr::resetSeqDataMgr() {
    if (mSeqDataMgr) {
        mSeqDataMgr->setSeqDataUser(NULL);
        mSeqDataMgr = NULL;
    }
}

/* 802A0484-802A0574 29ADC4 00F0+00 1/1 0/0 0/0 .text            newSe___8JAISeMgrFiUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JAISe* JAISeMgr::newSe_(int param_0, u32 param_1) {
    nofralloc
#include "asm/JSystem/JAudio2/JAISeMgr/newSe___8JAISeMgrFiUl.s"
}
#pragma pop

/* 802A0574-802A0704 29AEB4 0190+00 0/0 1/1 0/0 .text            calc__8JAISeMgrFv */
void JAISeMgr::calc() {
    mParams.calc();
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].JAISeMgr_calc_();
    }
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].JAISeMgr_freeDeadSe_();
    }
}

/* 802A0704-802A0768 29B044 0064+00 0/0 1/1 0/0 .text            mixOut__8JAISeMgrFv */
void JAISeMgr::mixOut() {
    for (int i = 0; i < 16; i++) {
        mCategoryMgrs[i].JAISeMgr_mixOut_(mParams, *this);
    }
}

/* ############################################################################################## */

/* 802A0768-802A08D0 29B0A8 0168+00 0/0 1/1 0/0 .text
 * startSound__8JAISeMgrF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3<f> */
int JAISeMgr::startSound(JAISoundID param_0, JAISoundHandle* param_1,
                              JGeometry::TVec3<f32> const* param_2) {
    if (param_1 && param_1->isSoundAttached()) {
        param_1->getSound()->stop();
    }

    JAISoundInfo* pSoundInfo = JASGlobalInstance<JAISoundInfo>::getInstance();
    u32 uVar4;
    u32 categoryIndex;
    if (pSoundInfo != NULL) {
        categoryIndex = pSoundInfo->getCategory(param_0);
        uVar4 = pSoundInfo->getPriority(param_0);
    } else {
        categoryIndex = param_0.mId.mBytes.b1;
        uVar4 = 0;
    }
    JAISe* pJAISe = newSe_(categoryIndex, uVar4);
    if (pJAISe == NULL) {
        JASReport("cannot new Se %08x.", param_0.mId.mFullId);
        return 0;
    } 
    JAIAudience* pAudience = getAudience(categoryIndex);
    pJAISe->JAISeMgr_startID_(param_0, param_2, pAudience);
    if (pSoundInfo != NULL) {
        pSoundInfo->getSeInfo(param_0, pJAISe);
    }
    if (param_1 != NULL) {
        pJAISe->attachHandle(param_1);
    }
    return 1;
}

/* 802A08D0-802A08FC 29B210 002C+00 0/0 2/2 0/0 .text            getNumActiveSe__8JAISeMgrCFv */
int JAISeMgr::getNumActiveSe() const {
    int sum = 0;
    for (int i = 0; i < 16; i++) {
        sum += mCategoryMgrs[i].getNumSe();
    }
    return sum;
}

/* 802A08FC-802A0994 29B23C 0098+00 1/0 0/0 0/0 .text            __dt__8JAISeMgrFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __dt__8JAISeMgrFv() {
    // asm JAISeMgr::~JAISeMgr() {
    nofralloc
#include "asm/JSystem/JAudio2/JAISeMgr/__dt__8JAISeMgrFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 803C98C4-803C98D8 0269E4 0014+00 1/1 1/1 0/0 .data            __vt__16JAISeCategoryMgr */
SECTION_DATA extern void* __vt__16JAISeCategoryMgr[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16JAISeCategoryMgrFv,
    (void*)isUsingSeqData__16JAISeCategoryMgrFRC16JAISeqDataRegion,
    (void*)releaseSeqData__16JAISeCategoryMgrFRC16JAISeqDataRegion,
};

/* 802A0994-802A0A6C 29B2D4 00D8+00 1/1 0/0 0/0 .text            __ct__16JAISeCategoryMgrFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JAISeCategoryMgr::JAISeCategoryMgr() {
    nofralloc
#include "asm/JSystem/JAudio2/JAISeMgr/__ct__16JAISeCategoryMgrFv.s"
}
#pragma pop

/* 8039B8F8-8039B8F8 027F58 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
