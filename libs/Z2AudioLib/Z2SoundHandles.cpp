//
// Generated By: dol2asm
// Translation Unit: Z2SoundHandles
//

#include "Z2AudioLib/Z2SoundHandles.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

template <typename A0>
struct JASMemPool {};
/* JASMemPool<Z2SoundHandlePool> */
struct JASMemPool__template4 {
    /* 802AB200 */ void func_802AB200(void* _this);
};

struct JASGenericMemPool {
    /* 80290848 */ JASGenericMemPool();
    /* 80290860 */ ~JASGenericMemPool();
    /* 80290948 */ void alloc(u32);
    /* 80290994 */ void free(void*, u32);
};

//
// Forward References:
//

extern "C" void __ct__14Z2SoundHandlesFv();
extern "C" void __dt__14Z2SoundHandlesFv();
extern "C" void initHandlesPool__14Z2SoundHandlesFUc();
extern "C" void deleteHandlesPool__14Z2SoundHandlesFv();
extern "C" void func_802AB200(void* _this);
extern "C" void getHandleSoundID__14Z2SoundHandlesF10JAISoundID();
extern "C" void getHandleUserData__14Z2SoundHandlesFUl();
extern "C" void getFreeHandle__14Z2SoundHandlesFv();
extern "C" void getLowPrioSound__14Z2SoundHandlesF10JAISoundID();
extern "C" void stopAllSounds__14Z2SoundHandlesFUl();
extern "C" void isActive__14Z2SoundHandlesCFv();
extern "C" void func_802AB538();

//
// External References:
//

extern "C" void __ct__17JASGenericMemPoolFv();
extern "C" void __dt__17JASGenericMemPoolFv();
extern "C" void alloc__17JASGenericMemPoolFUl();
extern "C" void free__17JASGenericMemPoolFPvUl();
extern "C" void releaseSound__14JAISoundHandleFv();
extern "C" void stop__8JAISoundFUl();
extern "C" void __dl__FPv();
extern "C" void __ct__10JSUPtrLinkFPv();
extern "C" void __dt__10JSUPtrLinkFv();
extern "C" void __dt__10JSUPtrListFv();
extern "C" void initiate__10JSUPtrListFv();
extern "C" void append__10JSUPtrListFP10JSUPtrLink();
extern "C" void remove__10JSUPtrListFP10JSUPtrLink();
extern "C" void __register_global_object();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" extern u8 data_80450B5C[4];
extern "C" extern u8 data_80451348[8];
extern "C" extern u8 __OSReport_disable;

//
// Declarations:
//

// inline JAISoundID::JAISoundID(u32 pId) : mId(pId) {}

inline JAISoundID JAISound::getID() const {
    return JAISoundID((u32)soundID);
}

Z2SoundHandles::Z2SoundHandles() {
    mNumHandles = 0;
}

Z2SoundHandles::~Z2SoundHandles() {
    deleteHandlesPool();
}

void Z2SoundHandles::initHandlesPool(u8 pNumHandles) {
    mNumHandles = pNumHandles;
}

/* ############################################################################################## */
/* 804341B8-804341C4 060ED8 000C+00 3/3 0/0 0/0 .bss             @632 */
static u8 lit_632[12];

/* 804341C4-804341D8 060EE4 0010+04 3/3 1/1 0/0 .bss
 * memPool_$localstatic3$getMemPool___39JASPoolAllocObject<17Z2SoundHandlePool>Fv */
extern u8 data_804341C4[16 + 4 /* padding */];
u8 data_804341C4[16 + 4 /* padding */];

/* 802AB120-802AB200 2A5A60 00E0+00 1/1 1/1 0/0 .text deleteHandlesPool__14Z2SoundHandlesFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundHandles::deleteHandlesPool() {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundHandles/deleteHandlesPool__14Z2SoundHandlesFv.s"
}
#pragma pop

/* 802AB200-802AB254 2A5B40 0054+00 3/3 1/1 0/0 .text __dt__31JASMemPool<17Z2SoundHandlePool>Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_802AB200(void* _this) {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundHandles/func_802AB200.s"
}
#pragma pop

JAISoundHandle* Z2SoundHandles::getHandleSoundID(JAISoundID pSoundId) {
    JSULink<Z2SoundHandlePool>* link;
    for (link = getFirst(); link != NULL; link = link->getNext()) {
        JAISoundHandle* handle = link->getObject();
        if (handle->isSoundAttached()) {
            if ((*handle)->getID() == pSoundId) {
                return handle;
            }
        }
    }

    return NULL;
}

JAISoundHandle* Z2SoundHandles::getHandleUserData(u32 pUserData) {
    JSULink<Z2SoundHandlePool>* link;
    for (link = getFirst(); link != NULL; link = link->getNext()) {
        JAISoundHandle* handle = link->getObject();
        if (handle->isSoundAttached()) {
            if ((*handle)->getUserData() == pUserData) {
                return handle;
            }
        }
    }

    return NULL;
}

/* 802AB2D8-802AB3D0 2A5C18 00F8+00 0/0 3/3 0/0 .text            getFreeHandle__14Z2SoundHandlesFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundHandles::getFreeHandle() {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundHandles/getFreeHandle__14Z2SoundHandlesFv.s"
}
#pragma pop

/* 802AB3D0-802AB4A0 2A5D10 00D0+00 0/0 2/2 0/0 .text
 * getLowPrioSound__14Z2SoundHandlesF10JAISoundID               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundHandles::getLowPrioSound(JAISoundID param_0) {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundHandles/getLowPrioSound__14Z2SoundHandlesF10JAISoundID.s"
}
#pragma pop

void Z2SoundHandles::stopAllSounds(u32 fadeout) {
    JSULink<Z2SoundHandlePool>* link;
    for (link = getFirst(); link != NULL; link = link->getNext()) {
        JAISoundHandle* handle = link->getObject();
        //! @meme: explicit operator bool call required to match and be similar
        //!        to CHN_debug; could more concisely write handle->isSoundAttached
        //!        (for some reason cast-to-bool doesn't work?)
        if (handle && handle->operator bool()) {
            (*handle)->stop(fadeout);
        }
    }
}

bool Z2SoundHandles::isActive() const {
    JSULink<Z2SoundHandlePool>* link;
    for (link = getFirst(); link != NULL; link = link->getNext()) {
        if (link->getObject()->isSoundAttached()) {
            return true;
        }
    }

    return false;
}

/* 802AB538-802AB64C 2A5E78 0114+00 0/0 1/1 0/0 .text
 * setPos__14Z2SoundHandlesFRCQ29JGeometry8TVec3<f>             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void Z2SoundHandles::setPos(JGeometry::TVec3<f32> const& param_0) {
    nofralloc
#include "asm/Z2AudioLib/Z2SoundHandles/func_802AB538.s"
}
#pragma pop
