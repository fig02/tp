//
// Generated By: dol2asm
// Translation Unit: J3DCluster
//

#include "JSystem/J3DGraphAnimator/J3DCluster.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct JMath {
    static f32 asinAcosTable_[1032];
};

struct J3DVertexBuffer {};

struct J3DModel {};

struct J3DCluster {};

struct J3DClusterKey {};

struct J3DAnmCluster {};

struct J3DDeformData {
    /* 8032E1F8 */ J3DDeformData();
    /* 8032E230 */ void offAllFlag(u32);
    /* 8032E298 */ void deform(J3DVertexBuffer*);
    /* 8032E274 */ void deform(J3DModel*);
    /* 8032E364 */ void setAnm(J3DAnmCluster*);
};

struct J3DDeformer {
    /* 8032E39C */ J3DDeformer(J3DDeformData*);
    /* 8032EAB4 */ void deform(J3DVertexBuffer*, u16, f32*);
    /* 8032E3BC */ void deform(J3DVertexBuffer*, u16);
    /* 8032E4A4 */ void deform_VtxPosF32(J3DVertexBuffer*, J3DCluster*, J3DClusterKey*, f32*);
    /* 8032E60C */ void deform_VtxNrmF32(J3DVertexBuffer*, J3DCluster*, J3DClusterKey*, f32*);
    /* 8032EBCC */ void normalizeWeight(int, f32*);
};

//
// Forward References:
//

extern "C" void __ct__13J3DDeformDataFv();
extern "C" void offAllFlag__13J3DDeformDataFUl();
extern "C" void deform__13J3DDeformDataFP8J3DModel();
extern "C" void deform__13J3DDeformDataFP15J3DVertexBuffer();
extern "C" void setAnm__13J3DDeformDataFP13J3DAnmCluster();
extern "C" void __ct__11J3DDeformerFP13J3DDeformData();
extern "C" void deform__11J3DDeformerFP15J3DVertexBufferUs();
extern "C" void deform_VtxPosF32__11J3DDeformerFP15J3DVertexBufferP10J3DClusterP13J3DClusterKeyPf();
extern "C" void deform_VtxNrmF32__11J3DDeformerFP15J3DVertexBufferP10J3DClusterP13J3DClusterKeyPf();
extern "C" void deform__11J3DDeformerFP15J3DVertexBufferUsPf();
extern "C" void normalizeWeight__11J3DDeformerFiPf();

//
// External References:
//

extern "C" void PPCSync();
extern "C" void DCStoreRangeNoSync();
extern "C" void PSVECNormalize();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_21();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" f32 asinAcosTable___5JMath[1032];

//
// Declarations:
//

/* 8032E1F8-8032E230 328B38 0038+00 0/0 1/1 0/0 .text            __ct__13J3DDeformDataFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DDeformData::J3DDeformData() {
    nofralloc
#include "asm/JSystem/J3DGraphAnimator/J3DCluster/__ct__13J3DDeformDataFv.s"
}
#pragma pop

/* 8032E230-8032E274 328B70 0044+00 0/0 1/1 0/0 .text            offAllFlag__13J3DDeformDataFUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDeformData::offAllFlag(u32 param_0) {
    nofralloc
#include "asm/JSystem/J3DGraphAnimator/J3DCluster/offAllFlag__13J3DDeformDataFUl.s"
}
#pragma pop

/* 8032E274-8032E298 328BB4 0024+00 0/0 1/1 0/0 .text            deform__13J3DDeformDataFP8J3DModel
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDeformData::deform(J3DModel* param_0) {
    nofralloc
#include "asm/JSystem/J3DGraphAnimator/J3DCluster/deform__13J3DDeformDataFP8J3DModel.s"
}
#pragma pop

/* 8032E298-8032E364 328BD8 00CC+00 1/1 0/0 0/0 .text deform__13J3DDeformDataFP15J3DVertexBuffer
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDeformData::deform(J3DVertexBuffer* param_0) {
    nofralloc
#include "asm/JSystem/J3DGraphAnimator/J3DCluster/deform__13J3DDeformDataFP15J3DVertexBuffer.s"
}
#pragma pop

/* 8032E364-8032E39C 328CA4 0038+00 0/0 1/1 0/0 .text setAnm__13J3DDeformDataFP13J3DAnmCluster */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDeformData::setAnm(J3DAnmCluster* param_0) {
    nofralloc
#include "asm/JSystem/J3DGraphAnimator/J3DCluster/setAnm__13J3DDeformDataFP13J3DAnmCluster.s"
}
#pragma pop

/* 8032E39C-8032E3BC 328CDC 0020+00 0/0 1/1 0/0 .text __ct__11J3DDeformerFP13J3DDeformData */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DDeformer::J3DDeformer(J3DDeformData* param_0) {
    nofralloc
#include "asm/JSystem/J3DGraphAnimator/J3DCluster/__ct__11J3DDeformerFP13J3DDeformData.s"
}
#pragma pop

/* 8032E3BC-8032E4A4 328CFC 00E8+00 1/1 0/0 0/0 .text deform__11J3DDeformerFP15J3DVertexBufferUs
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDeformer::deform(J3DVertexBuffer* param_0, u16 param_1) {
    nofralloc
#include "asm/JSystem/J3DGraphAnimator/J3DCluster/deform__11J3DDeformerFP15J3DVertexBufferUs.s"
}
#pragma pop

/* ############################################################################################## */
/* 80456470-80456474 004A70 0004+00 2/2 0/0 0/0 .sdata2          @830 */
SECTION_SDATA2 static f32 lit_830 = 1.0f;

/* 80456474-80456478 004A74 0004+00 1/1 0/0 0/0 .sdata2          @840 */
SECTION_SDATA2 static f32 lit_840 = 1.0f;

/* 80456478-8045647C 004A78 0004+00 1/1 0/0 0/0 .sdata2          None */
SECTION_SDATA2 static f32 data_80456478 = -1.0f;

/* 8045647C-80456480 004A7C 0004+00 3/3 0/0 0/0 .sdata2          @866 */
SECTION_SDATA2 static u8 lit_866[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 8032E4A4-8032E60C 328DE4 0168+00 1/1 0/0 0/0 .text
 * deform_VtxPosF32__11J3DDeformerFP15J3DVertexBufferP10J3DClusterP13J3DClusterKeyPf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDeformer::deform_VtxPosF32(J3DVertexBuffer* param_0, J3DCluster* param_1,
                                       J3DClusterKey* param_2, f32* param_3) {
    nofralloc
#include "asm/JSystem/J3DGraphAnimator/J3DCluster/func_8032E4A4.s"
}
#pragma pop

/* ############################################################################################## */
/* 80456480-80456484 004A80 0004+00 1/1 0/0 0/0 .sdata2          @1020 */
SECTION_SDATA2 static f32 lit_1020 = -1.0f;

/* 80456484-80456488 004A84 0004+00 1/1 0/0 0/0 .sdata2          @1021 */
SECTION_SDATA2 static f32 lit_1021 = 3.1415927410125732f;

/* 80456488-8045648C 004A88 0004+00 1/1 0/0 0/0 .sdata2          @1022 */
SECTION_SDATA2 static f32 lit_1022 = 1023.5f;

/* 8045648C-80456490 004A8C 0004+00 1/1 0/0 0/0 .sdata2          @1023 */
SECTION_SDATA2 static f32 lit_1023 = 1.5707963705062866f;

/* 80456490-80456494 004A90 0004+00 1/1 0/0 0/0 .sdata2          @1024 */
SECTION_SDATA2 static f32 lit_1024 = 57.2957763671875f;

/* 80456494-80456498 004A94 0004+00 1/1 0/0 0/0 .sdata2          @1025 */
SECTION_SDATA2 static f32 lit_1025 = 180.0f;

/* 80456498-804564A0 004A98 0008+00 1/1 0/0 0/0 .sdata2          @1027 */
SECTION_SDATA2 static f64 lit_1027 = 4503599627370496.0 /* cast u32 to float */;

/* 8032E60C-8032EAB4 328F4C 04A8+00 1/1 0/0 0/0 .text
 * deform_VtxNrmF32__11J3DDeformerFP15J3DVertexBufferP10J3DClusterP13J3DClusterKeyPf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDeformer::deform_VtxNrmF32(J3DVertexBuffer* param_0, J3DCluster* param_1,
                                       J3DClusterKey* param_2, f32* param_3) {
    nofralloc
#include "asm/JSystem/J3DGraphAnimator/J3DCluster/func_8032E60C.s"
}
#pragma pop

/* 8032EAB4-8032EBCC 3293F4 0118+00 1/1 0/0 0/0 .text deform__11J3DDeformerFP15J3DVertexBufferUsPf
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDeformer::deform(J3DVertexBuffer* param_0, u16 param_1, f32* param_2) {
    nofralloc
#include "asm/JSystem/J3DGraphAnimator/J3DCluster/deform__11J3DDeformerFP15J3DVertexBufferUsPf.s"
}
#pragma pop

/* 8032EBCC-8032EC28 32950C 005C+00 1/1 0/0 0/0 .text            normalizeWeight__11J3DDeformerFiPf
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DDeformer::normalizeWeight(int param_0, f32* param_1) {
    nofralloc
#include "asm/JSystem/J3DGraphAnimator/J3DCluster/normalizeWeight__11J3DDeformerFiPf.s"
}
#pragma pop
