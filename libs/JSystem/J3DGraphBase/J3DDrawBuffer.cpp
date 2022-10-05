//
// Generated By: dol2asm
// Translation Unit: J3DDrawBuffer
//

#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "dol2asm.h"
#include "dolphin/types.h"

#include "JSystem/J3DGraphBase/J3DPacket.h"

//
// Forward References:
//

extern "C" void initialize__13J3DDrawBufferFv();
extern "C" void allocBuffer__13J3DDrawBufferFUl();
extern "C" void __dt__13J3DDrawBufferFv();
extern "C" void frameInit__13J3DDrawBufferFv();
extern "C" void entryMatSort__13J3DDrawBufferFP12J3DMatPacket();
extern "C" void entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket();
extern "C" void entryZSort__13J3DDrawBufferFP12J3DMatPacket();
extern "C" void entryModelSort__13J3DDrawBufferFP12J3DMatPacket();
extern "C" void entryInvalidSort__13J3DDrawBufferFP12J3DMatPacket();
extern "C" void entryNonSort__13J3DDrawBufferFP12J3DMatPacket();
extern "C" void entryImm__13J3DDrawBufferFP9J3DPacketUs();
extern "C" void draw__13J3DDrawBufferCFv();
extern "C" void drawHead__13J3DDrawBufferCFv();
extern "C" void drawTail__13J3DDrawBufferCFv();
extern "C" void __sinit_J3DDrawBuffer_cpp();
extern "C" u8 sortFuncTable__13J3DDrawBuffer[72];
extern "C" u8 drawFuncTable__13J3DDrawBuffer[24];
extern "C" u8 entryNum__13J3DDrawBuffer[4 + 4 /* padding */];

//
// External References:
//

extern "C" void* __nwa__FUli();
extern "C" void __dl__FPv();
extern "C" void __dla__FPv();
extern "C" void addChildPacket__9J3DPacketFP9J3DPacket();
extern "C" void addShapePacket__12J3DMatPacketFP14J3DShapePacket();
extern "C" void isSame__12J3DMatPacketCFP12J3DMatPacket();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();

//
// Declarations:
//

/* ############################################################################################## */
/* 80456400-80456404 004A00 0004+00 2/2 0/0 0/0 .sdata2          @781 */
SECTION_SDATA2 static f32 lit_781 = 1.0f;

void J3DDrawBuffer::calcZRatio() {
    mZRatio = (mZFar - mZNear) / (f32)mBufSize;
}

void J3DDrawBuffer::initialize() {
    mDrawType = DRAW_HEAD;
    mSortType = SORT_MAT;
    mZNear = lit_781;
    mZFar = 10000.0f;
    mpZMtx = NULL;
    mpCallBackPacket = NULL;
    mBufSize = 0x20;
    calcZRatio();
}

J3DError J3DDrawBuffer::allocBuffer(u32 bufSize) {
    mpBuf = new (0x20) J3DPacket*[bufSize];
    if (mpBuf == NULL)
        return kJ3DError_Alloc;

    mBufSize = bufSize;
    frameInit();
    calcZRatio();
    return kJ3DError_Success;
}

J3DDrawBuffer::~J3DDrawBuffer() {
    frameInit();

    delete[] mpBuf;
    mpBuf = NULL;
}

#ifdef NONMATCHING
/* 80325068-8032509C 31F9A8 0034+00 2/2 1/1 0/0 .text            frameInit__13J3DDrawBufferFv */
void J3DDrawBuffer::frameInit() {
    // can't make mwcc not generate "mtctr" for this loop
    for (int i = 0; i < mBufSize; i++)
        mpBuf[i] = NULL;

    mpCallBackPacket = NULL;
}
#else
/* 80325068-8032509C 31F9A8 0034+00 2/2 1/1 0/0 .text            frameInit__13J3DDrawBufferFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDrawBuffer::frameInit() {
    nofralloc
#include "asm/JSystem/J3DGraphBase/J3DDrawBuffer/frameInit__13J3DDrawBufferFv.s"
}
#pragma pop
#endif

/* 8032509C-803251E4 31F9DC 0148+00 2/1 0/0 0/0 .text
 * entryMatSort__13J3DDrawBufferFP12J3DMatPacket                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int J3DDrawBuffer::entryMatSort(J3DMatPacket* param_0) {
    nofralloc
#include "asm/JSystem/J3DGraphBase/J3DDrawBuffer/entryMatSort__13J3DDrawBufferFP12J3DMatPacket.s"
}
#pragma pop

/* 803251E4-8032529C 31FB24 00B8+00 1/0 0/0 0/0 .text
 * entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int J3DDrawBuffer::entryMatAnmSort(J3DMatPacket* param_0) {
    nofralloc
#include "asm/JSystem/J3DGraphBase/J3DDrawBuffer/entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket.s"
}
#pragma pop

inline f32 J3DCalcZValue(register MtxP m, register Vec v) {
    register f32 out;

    // clang-format off
    asm {
        lfs f1, lit_781(r2)
        psq_l f0, 8(v), 0, 0 /* qr0 */
        lfs f2, 0x10(v)
        psq_l f4, 32(m), 0, 0 /* qr0 */
        psq_l out, 40(m), 0, 0 /* qr0 */
        ps_merge00 f2, f2, f1
        ps_mul f4, f0, f4
        ps_madd out, f2, out, f4
        ps_sum0 out, out, out, out
    }
    // clang-format on

    return out;
}

/* 8032529C-803253B4 31FBDC 0118+00 1/0 0/0 0/0 .text entryZSort__13J3DDrawBufferFP12J3DMatPacket
 */
// J3DCalcZValue needs work with the asm registers
#ifdef NONMATCHING
int J3DDrawBuffer::entryZSort(J3DMatPacket* i_packet) {
    i_packet->drawClear();
    i_packet->getShapePacket()->drawClear();

    Vec tmp;
    tmp.x = mpZMtx[0][3];
    tmp.y = mpZMtx[1][3];
    tmp.z = mpZMtx[2][3];

    f32 value = -J3DCalcZValue(j3dSys.getViewMtx(), tmp);

    u32 uvar4;
    if (mZNear + mZRatio < value) {
        if (mZFar - mZRatio > value) {
            uvar4 = value / mZRatio;
        } else {
            uvar4 = mBufSize - 1;
        }
    } else {
        uvar4 = 0;
    }

    u32 idx = (mBufSize - 1) - uvar4;
    i_packet->setNextPacket(mpBuf[idx]);
    mpBuf[idx] = i_packet;

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int J3DDrawBuffer::entryZSort(J3DMatPacket* param_0) {
    nofralloc
#include "asm/JSystem/J3DGraphBase/J3DDrawBuffer/entryZSort__13J3DDrawBufferFP12J3DMatPacket.s"
}
#pragma pop
#endif

/* 803253B4-80325404 31FCF4 0050+00 1/0 0/0 0/0 .text
 * entryModelSort__13J3DDrawBufferFP12J3DMatPacket              */
int J3DDrawBuffer::entryModelSort(J3DMatPacket* i_packet) {
    i_packet->drawClear();
    i_packet->getShapePacket()->drawClear();

    if (mpCallBackPacket != NULL) {
        mpCallBackPacket->addChildPacket(i_packet);
        return 1;
    }

    return 0;
}

/* 80325404-80325458 31FD44 0054+00 1/0 0/0 0/0 .text
 * entryInvalidSort__13J3DDrawBufferFP12J3DMatPacket            */
int J3DDrawBuffer::entryInvalidSort(J3DMatPacket* i_packet) {
    i_packet->drawClear();
    i_packet->getShapePacket()->drawClear();

    if (mpCallBackPacket != NULL) {
        mpCallBackPacket->addChildPacket(i_packet->getShapePacket());
        return 1;
    }

    return 0;
}

int J3DDrawBuffer::entryNonSort(J3DMatPacket* i_packet) {
    i_packet->drawClear();
    i_packet->mpShapePacket->drawClear();

    i_packet->setNextPacket(mpBuf[0]);
    mpBuf[0] = i_packet;

    return 1;
}

int J3DDrawBuffer::entryImm(J3DPacket* i_packet, u16 index) {
    i_packet->setNextPacket(mpBuf[index]);
    mpBuf[index] = i_packet;

    return 1;
}

/* 803CEC30-803CEC78 02BD50 0048+00 0/1 1/1 0/0 .data            sortFuncTable__13J3DDrawBuffer */
SECTION_DATA sortFunc J3DDrawBuffer::sortFuncTable[6] = {
    &J3DDrawBuffer::entryMatSort,   &J3DDrawBuffer::entryMatAnmSort,  &J3DDrawBuffer::entryZSort,
    &J3DDrawBuffer::entryModelSort, &J3DDrawBuffer::entryInvalidSort, &J3DDrawBuffer::entryNonSort,
};

/* 803CEC90-803CECA8 02BDB0 0018+00 1/2 0/0 0/0 .data            drawFuncTable__13J3DDrawBuffer */
SECTION_DATA drawFunc J3DDrawBuffer::drawFuncTable[2] = {
    &J3DDrawBuffer::drawHead,
    &J3DDrawBuffer::drawTail,
};

/* 803254AC-80325500 31FDEC 0054+00 0/0 2/2 0/0 .text            draw__13J3DDrawBufferCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDrawBuffer::draw() const {
    nofralloc
#include "asm/JSystem/J3DGraphBase/J3DDrawBuffer/draw__13J3DDrawBufferCFv.s"
}
#pragma pop

/* 80325500-80325578 31FE40 0078+00 1/0 0/0 0/0 .text            drawHead__13J3DDrawBufferCFv */
void J3DDrawBuffer::drawHead() const {
    u32 size = mBufSize;
    J3DPacket** buf = mpBuf;

    for (u32 i = 0; i < size; i++) {
        for (J3DPacket* packet = buf[i]; packet != NULL; packet = packet->getNextPacket()) {
            packet->draw();
        }
    }
}

/* 80325578-803255F0 31FEB8 0078+00 1/0 0/0 0/0 .text            drawTail__13J3DDrawBufferCFv */
// flipped regs
#ifdef NONMATCHING
void J3DDrawBuffer::drawTail() const {
    int i = mBufSize - 1;
    J3DPacket** buf = mpBuf;

    for (; i >= 0; i--) {
        for (J3DPacket* packet = buf[i]; packet != NULL; packet = packet->getNextPacket()) {
            packet->draw();
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDrawBuffer::drawTail() const {
    nofralloc
#include "asm/JSystem/J3DGraphBase/J3DDrawBuffer/drawTail__13J3DDrawBufferCFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804515E0-804515E8 000AE0 0004+04 0/0 1/1 0/0 .sbss            entryNum__13J3DDrawBuffer */
int J3DDrawBuffer::entryNum;
