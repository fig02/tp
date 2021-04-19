//
// Generated By: dol2asm
// Translation Unit: object
//

#include "JSystem/JStudio/JStudio_JStage/object.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct Vec {};

struct JStage {
    struct TObject {};
};

namespace JStudio {
struct TControl {
    struct TTransform_translation_rotation_scaling {};

    struct TTransform_position {};
};

struct data {
    struct TEOperationData {};
};

struct math {
    /* 80285B44 */ void getTransformation_SRxyzT(f32 (*)[4], Vec const&, Vec const&, Vec const&);
};

};  // namespace JStudio

struct JStudio_JStage {
    struct TAdaptor_object_ {
        /* 8028A470 */ void adaptor_object_data_(void const*, u32, void const*, u32);
        /* 8028A4BC */ void adaptor_object_findJSGObject_(char const*);
        /* 8028A50C */ void adaptor_object_findJSGObjectNode_(JStage::TObject const*, char const*);
        /* 8028A550 */ void adaptor_object_ENABLE_(JStudio::data::TEOperationData, void const*,
                                                   u32);
    };

    /* 8028A1F8 */ void transform_toGlobalFromLocal(
        f32 (*)[4], JStudio::TControl::TTransform_translation_rotation_scaling const&,
        JStage::TObject const*, u32);
    /* 8028A290 */ void transform_toGlobalFromLocal(f32 (*)[4],
                                                    JStudio::TControl::TTransform_position const&,
                                                    JStage::TObject const*, u32);
    /* 8028A328 */ void transform_toLocalFromGlobal(
        f32 (*)[4], JStudio::TControl::TTransform_translation_rotation_scaling const&,
        JStage::TObject const*, u32);
    /* 8028A3CC */ void transform_toLocalFromGlobal(f32 (*)[4],
                                                    JStudio::TControl::TTransform_position const&,
                                                    JStage::TObject const*, u32);
};

//
// Forward References:
//

extern "C" void
transform_toGlobalFromLocal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl39TTransform_translation_rotation_scalingPCQ26JStage7TObjectUl();
extern "C" void
transform_toGlobalFromLocal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl19TTransform_positionPCQ26JStage7TObjectUl();
extern "C" void
transform_toLocalFromGlobal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl39TTransform_translation_rotation_scalingPCQ26JStage7TObjectUl();
extern "C" void
transform_toLocalFromGlobal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl19TTransform_positionPCQ26JStage7TObjectUl();
extern "C" void adaptor_object_data___Q214JStudio_JStage16TAdaptor_object_FPCvUlPCvUl();
extern "C" void adaptor_object_findJSGObject___Q214JStudio_JStage16TAdaptor_object_FPCc();
extern "C" void
adaptor_object_findJSGObjectNode___Q214JStudio_JStage16TAdaptor_object_FPCQ26JStage7TObjectPCc();
extern "C" void
adaptor_object_ENABLE___Q214JStudio_JStage16TAdaptor_object_FQ37JStudio4data15TEOperationDataPCvUl();

//
// External References:
//

extern "C" void getTransformation_SRxyzT__Q27JStudio4mathFPA4_fRC3VecRC3VecRC3Vec();
extern "C" void PSMTXConcat();
extern "C" void PSMTXInverse();
extern "C" void PSMTXTrans();

//
// Declarations:
//

/* 8028A1F8-8028A290 284B38 0098+00 0/0 2/2 0/0 .text
 * transform_toGlobalFromLocal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl39TTransform_translation_rotation_scalingPCQ26JStage7TObjectUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JStudio_JStage::transform_toGlobalFromLocal(
    f32 (*param_0)[4], JStudio::TControl::TTransform_translation_rotation_scaling const& param_1,
    JStage::TObject const* param_2, u32 param_3) {
    nofralloc
#include "asm/JSystem/JStudio/JStudio_JStage/object/func_8028A1F8.s"
}
#pragma pop

/* 8028A290-8028A328 284BD0 0098+00 0/0 3/3 0/0 .text
 * transform_toGlobalFromLocal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl19TTransform_positionPCQ26JStage7TObjectUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void
JStudio_JStage::transform_toGlobalFromLocal(f32 (*param_0)[4],
                                            JStudio::TControl::TTransform_position const& param_1,
                                            JStage::TObject const* param_2, u32 param_3) {
    nofralloc
#include "asm/JSystem/JStudio/JStudio_JStage/object/func_8028A290.s"
}
#pragma pop

/* 8028A328-8028A3CC 284C68 00A4+00 0/0 1/1 0/0 .text
 * transform_toLocalFromGlobal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl39TTransform_translation_rotation_scalingPCQ26JStage7TObjectUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JStudio_JStage::transform_toLocalFromGlobal(
    f32 (*param_0)[4], JStudio::TControl::TTransform_translation_rotation_scaling const& param_1,
    JStage::TObject const* param_2, u32 param_3) {
    nofralloc
#include "asm/JSystem/JStudio/JStudio_JStage/object/func_8028A328.s"
}
#pragma pop

/* 8028A3CC-8028A470 284D0C 00A4+00 0/0 2/2 0/0 .text
 * transform_toLocalFromGlobal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl19TTransform_positionPCQ26JStage7TObjectUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void
JStudio_JStage::transform_toLocalFromGlobal(f32 (*param_0)[4],
                                            JStudio::TControl::TTransform_position const& param_1,
                                            JStage::TObject const* param_2, u32 param_3) {
    nofralloc
#include "asm/JSystem/JStudio/JStudio_JStage/object/func_8028A3CC.s"
}
#pragma pop

/* 8028A470-8028A4BC 284DB0 004C+00 0/0 5/5 0/0 .text
 * adaptor_object_data___Q214JStudio_JStage16TAdaptor_object_FPCvUlPCvUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JStudio_JStage::TAdaptor_object_::adaptor_object_data_(void const* param_0, u32 param_1,
                                                                void const* param_2, u32 param_3) {
    nofralloc
#include "asm/JSystem/JStudio/JStudio_JStage/object/adaptor_object_data___Q214JStudio_JStage16TAdaptor_object_FPCvUlPCvUl.s"
}
#pragma pop

/* 8028A4BC-8028A50C 284DFC 0050+00 0/0 4/4 0/0 .text
 * adaptor_object_findJSGObject___Q214JStudio_JStage16TAdaptor_object_FPCc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JStudio_JStage::TAdaptor_object_::adaptor_object_findJSGObject_(char const* param_0) {
    nofralloc
#include "asm/JSystem/JStudio/JStudio_JStage/object/adaptor_object_findJSGObject___Q214JStudio_JStage16TAdaptor_object_FPCc.s"
}
#pragma pop

/* 8028A50C-8028A550 284E4C 0044+00 0/0 4/4 0/0 .text
 * adaptor_object_findJSGObjectNode___Q214JStudio_JStage16TAdaptor_object_FPCQ26JStage7TObjectPCc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void
JStudio_JStage::TAdaptor_object_::adaptor_object_findJSGObjectNode_(JStage::TObject const* param_0,
                                                                    char const* param_1) {
    nofralloc
#include "asm/JSystem/JStudio/JStudio_JStage/object/func_8028A50C.s"
}
#pragma pop

/* 8028A550-8028A5F0 284E90 00A0+00 0/0 1/1 0/0 .text
 * adaptor_object_ENABLE___Q214JStudio_JStage16TAdaptor_object_FQ37JStudio4data15TEOperationDataPCvUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void
JStudio_JStage::TAdaptor_object_::adaptor_object_ENABLE_(JStudio::data::TEOperationData param_0,
                                                         void const* param_1, u32 param_2) {
    nofralloc
#include "asm/JSystem/JStudio/JStudio_JStage/object/func_8028A550.s"
}
#pragma pop
