//
// Generated By: dol2asm
// Translation Unit: d/bg/d_bg_w_kcol
//

#include "d/bg/d_bg_w_kcol.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct cM3dGTri {
    /* 8026F8C8 */ void set(Vec const*, Vec const*, Vec const*, Vec const*);
};

//
// Forward References:
//

extern "C" void __ct__8dBgWKColFv();
extern "C" void __dt__8dBgWKColFv();
extern "C" void initKCollision__8dBgWKColFPv();
extern "C" void create__8dBgWKColFPvPv();
extern "C" void getTriNrm__8dBgWKColCFP12KC_PrismDataPP3Vec();
extern "C" void ChkNotReady__8dBgWKColCFv();
extern "C" bool ChkLock__8dBgWKColCFv();
extern "C" bool ChkMoveBg__8dBgWKColCFv();
extern "C" bool ChkMoveFlag__8dBgWKColCFv();
extern "C" void GetTriPla__8dBgWKColCFRC13cBgS_PolyInfo();
extern "C" void GetTriPla__8dBgWKColCFi();
extern "C" void GetTriPnt__8dBgWKColCFRC13cBgS_PolyInfoP4cXyzP4cXyzP4cXyz();
extern "C" void GetTriPnt__8dBgWKColCFiP3VecP3VecP3Vec();
extern "C" void GetTriPnt__8dBgWKColCFPC12KC_PrismDataP3VecP3VecP3Vec();
extern "C" void GetBnd__8dBgWKColCFv();
extern "C" void GetGrpInf__8dBgWKColCFRC13cBgS_PolyInfo();
extern "C" void OffMoveFlag__8dBgWKColFv();
extern "C" void getPolyCode__8dBgWKColCFiP5dBgPc();
extern "C" void chkPolyThrough__8dBgWKColCFP5dBgPcP16cBgS_PolyPassChkP15cBgS_GrpPassChkR4cXyz();
extern "C" void LineCheck__8dBgWKColFP11cBgS_LinChk();
extern "C" void GroundCross__8dBgWKColFP11cBgS_GndChk();
extern "C" void ShdwDraw__8dBgWKColFP13cBgS_ShdwDraw();
extern "C" void ChkShdwDrawThrough__8dBgWKColFP5dBgPc();
extern "C" void CaptPoly__8dBgWKColFR13dBgS_CaptPoly();
extern "C" void WallCorrectSort__8dBgWKColFP9dBgS_Acch();
extern "C" void WallCorrect__8dBgWKColFP9dBgS_Acch();
extern "C" void RoofChk__8dBgWKColFP12dBgS_RoofChk();
extern "C" void SplGrpChk__8dBgWKColFP14dBgS_SplGrpChk();
extern "C" void SphChk__8dBgWKColFP11dBgS_SphChkPv();
extern "C" void GetTopUnder__8dBgWKColCFPfPf();
extern "C" void GetGrpRoomIndex__8dBgWKColCFRC13cBgS_PolyInfo();
extern "C" void GetExitId__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetPolyColor__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetHorseNoEntry__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetSpecialCode__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetSpecialCode__8dBgWKColFi();
extern "C" void GetMagnetCode__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetMonkeyBarsCode__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetPolyObjThrough__8dBgWKColFi();
extern "C" void GetPolyCamThrough__8dBgWKColFi();
extern "C" void GetPolyLinkThrough__8dBgWKColFi();
extern "C" void GetPolyArrowThrough__8dBgWKColFi();
extern "C" void GetPolyHSStick__8dBgWKColFi();
extern "C" void GetPolyBoomerangThrough__8dBgWKColFi();
extern "C" void GetPolyRopeThrough__8dBgWKColFi();
extern "C" void GetPolyBombThrough__8dBgWKColFi();
extern "C" void GetUnderwaterRoofCode__8dBgWKColFi();
extern "C" void GetShdwThrough__8dBgWKColFi();
extern "C" void GetLinkNo__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetWallCode__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetPolyAtt0__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetPolyAtt1__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetGroundCode__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetIronBallThrough__8dBgWKColFi();
extern "C" void GetAttackThrough__8dBgWKColFi();
extern "C" void GetCamMoveBG__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetRoomCamId__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetRoomPathId__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetRoomPathPntNo__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetPolyGrpRoomInfId__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void GetGrpSoundId__8dBgWKColFRC13cBgS_PolyInfo();
extern "C" void CrrPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz();
extern "C" void TransPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz();
extern "C" void MatrixCrrPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz();

//
// External References:
//

extern "C" void setCode__5dBgPcFR5sBgPc();
extern "C" void __ct__6dBgPlcFv();
extern "C" void __dt__6dBgPlcFv();
extern "C" void setBase__6dBgPlcFPv();
extern "C" void getCode__6dBgPlcCFiPP5sBgPc();
extern "C" void getGrpCode__6dBgPlcCFi();
extern "C" void SetOldShapeAngleY__9dBgW_BaseFs();
extern "C" void GetSpeedY__9dBgS_AcchFv();
extern "C" void GetWallAddY__9dBgS_AcchFR3Vec();
extern "C" void SetWallPolyIndex__9dBgS_AcchFii();
extern "C" void CalcMovePosWork__9dBgS_AcchFv();
extern "C" void ChkNoHorse__16dBgS_PolyPassChkFv();
extern "C" void __ct__9dBgW_BaseFv();
extern "C" void __dt__9dBgW_BaseFv();
extern "C" void ClrDBgWBase__9dBgW_BaseFv();
extern "C" bool ChkMemoryError__9dBgW_BaseFv();
extern "C" void CallRideCallBack__9dBgW_BaseFP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void CallArrowStickCallBack__9dBgW_BaseFP10fopAc_ac_cP10fopAc_ac_cR4cXyz();
extern "C" void cM_atan2s__Fff();
extern "C" void SetPolyIndex__13cBgS_PolyInfoFi();
extern "C" void cBgW_CheckBGround__Ff();
extern "C" void cBgW_CheckBRoof__Ff();
extern "C" void cBgW_CheckBWall__Ff();
extern "C" void cM2d_CrossCirLin__FR8cM2dGCirffffPfPf();
extern "C" void cM3d_Len2dSq__Fffff();
extern "C" void cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf();
extern "C" void cM3d_Cross_SphTri__FPC8cM3dGSphPC8cM3dGTriP3Vec();
extern "C" void calcMinMax__8cM3dGCylFP4cXyzP4cXyz();
extern "C" void SetupNP__8cM3dGPlaFRC3VecRC3Vec();
extern "C" void GetMinMaxCube__8cM3dGSphCFR4cXyzR4cXyz();
extern "C" void set__8cM3dGTriFPC3VecPC3VecPC3VecPC3Vec();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void __save_gpr();
extern "C" void _savegpr_19();
extern "C" void _savegpr_25();
extern "C" void _savegpr_29();
extern "C" void __restore_gpr();
extern "C" void _restgpr_19();
extern "C" void _restgpr_25();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8cM3dGPla[3];
extern "C" extern void* __vt__8cM3dGAab[3];
extern "C" extern void* __vt__8cM3dGTri[3];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

/* ############################################################################################## */
/* 803ABDC8-803ABEB8 008EE8 00F0+00 2/2 0/0 0/0 .data            __vt__8dBgWKCol */
SECTION_DATA extern void* __vt__8dBgWKCol[60] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8dBgWKColFv,
    (void*)ChkMemoryError__9dBgW_BaseFv,
    (void*)ChkNotReady__8dBgWKColCFv,
    (void*)ChkLock__8dBgWKColCFv,
    (void*)ChkMoveBg__8dBgWKColCFv,
    (void*)ChkMoveFlag__8dBgWKColCFv,
    (void*)GetTriPla__8dBgWKColCFRC13cBgS_PolyInfo,
    (void*)GetTriPnt__8dBgWKColCFRC13cBgS_PolyInfoP4cXyzP4cXyzP4cXyz,
    (void*)GetBnd__8dBgWKColCFv,
    (void*)GetGrpInf__8dBgWKColCFRC13cBgS_PolyInfo,
    (void*)OffMoveFlag__8dBgWKColFv,
    (void*)GetTopUnder__8dBgWKColCFPfPf,
    (void*)SetOldShapeAngleY__9dBgW_BaseFs,
    (void*)LineCheck__8dBgWKColFP11cBgS_LinChk,
    (void*)GroundCross__8dBgWKColFP11cBgS_GndChk,
    (void*)ShdwDraw__8dBgWKColFP13cBgS_ShdwDraw,
    (void*)CaptPoly__8dBgWKColFR13dBgS_CaptPoly,
    (void*)WallCorrect__8dBgWKColFP9dBgS_Acch,
    (void*)WallCorrectSort__8dBgWKColFP9dBgS_Acch,
    (void*)RoofChk__8dBgWKColFP12dBgS_RoofChk,
    (void*)SplGrpChk__8dBgWKColFP14dBgS_SplGrpChk,
    (void*)SphChk__8dBgWKColFP11dBgS_SphChkPv,
    (void*)GetGrpRoomIndex__8dBgWKColCFRC13cBgS_PolyInfo,
    (void*)GetExitId__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetPolyColor__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetHorseNoEntry__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetSpecialCode__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetSpecialCode__8dBgWKColFi,
    (void*)GetMagnetCode__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetPolyObjThrough__8dBgWKColFi,
    (void*)GetPolyCamThrough__8dBgWKColFi,
    (void*)GetPolyLinkThrough__8dBgWKColFi,
    (void*)GetPolyArrowThrough__8dBgWKColFi,
    (void*)GetPolyHSStick__8dBgWKColFi,
    (void*)GetPolyBoomerangThrough__8dBgWKColFi,
    (void*)GetPolyRopeThrough__8dBgWKColFi,
    (void*)GetPolyBombThrough__8dBgWKColFi,
    (void*)GetShdwThrough__8dBgWKColFi,
    (void*)GetUnderwaterRoofCode__8dBgWKColFi,
    (void*)GetMonkeyBarsCode__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetLinkNo__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetWallCode__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetPolyAtt0__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetPolyAtt1__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetGroundCode__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetIronBallThrough__8dBgWKColFi,
    (void*)GetAttackThrough__8dBgWKColFi,
    (void*)GetCamMoveBG__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetRoomCamId__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetRoomPathId__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetRoomPathPntNo__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetPolyGrpRoomInfId__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)GetGrpSoundId__8dBgWKColFRC13cBgS_PolyInfo,
    (void*)CrrPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz,
    (void*)TransPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz,
    (void*)MatrixCrrPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz,
    (void*)CallRideCallBack__9dBgW_BaseFP10fopAc_ac_cP10fopAc_ac_c,
    (void*)CallArrowStickCallBack__9dBgW_BaseFP10fopAc_ac_cP10fopAc_ac_cR4cXyz,
};

/* 8007E6F4-8007E74C 079034 0058+00 0/0 0/0 1/1 .text            __ct__8dBgWKColFv */
dBgWKCol::dBgWKCol() {
    m_pkc_head = NULL;
}

/* 8007E74C-8007E7D0 07908C 0084+00 1/0 0/0 0/0 .text            __dt__8dBgWKColFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgWKCol::~dBgWKCol() {
extern "C" asm void __dt__8dBgWKColFv() {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/__dt__8dBgWKColFv.s"
}
#pragma pop

/* 8007E7D0-8007E804 079110 0034+00 0/0 1/1 0/0 .text            initKCollision__8dBgWKColFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dBgWKCol::initKCollision(void* param_0) {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/initKCollision__8dBgWKColFPv.s"
}
#pragma pop

/* 8007E804-8007E850 079144 004C+00 0/0 0/0 1/1 .text            create__8dBgWKColFPvPv */
void dBgWKCol::create(void* pprism, void* plc) {
    ClrDBgWBase();
    m_pkc_head = (pkcdata*)pprism;
    m_code.setBase(plc);
}

/* 8007E850-8007E86C 079190 001C+00 1/1 0/0 0/0 .text getTriNrm__8dBgWKColCFP12KC_PrismDataPP3Vec
 */
void dBgWKCol::getTriNrm(KC_PrismData* pkc, Vec** nrm) const {
    *nrm = &m_pkc_head->field_0x4[pkc->field_0x6];
}

/* 8007E86C-8007E87C 0791AC 0010+00 1/0 0/0 0/0 .text            ChkNotReady__8dBgWKColCFv */
bool dBgWKCol::ChkNotReady() const {
    return m_pkc_head == NULL;
}

/* 8007E87C-8007E884 0791BC 0008+00 1/0 0/0 0/0 .text            ChkLock__8dBgWKColCFv */
bool dBgWKCol::ChkLock() const {
    return false;
}

/* 8007E884-8007E88C 0791C4 0008+00 1/0 0/0 0/0 .text            ChkMoveBg__8dBgWKColCFv */
bool dBgWKCol::ChkMoveBg() const {
    return false;
}

/* 8007E88C-8007E894 0791CC 0008+00 1/0 0/0 0/0 .text            ChkMoveFlag__8dBgWKColCFv */
u32 dBgWKCol::ChkMoveFlag() const {
    return 0;
}

/* 8007E894-8007E8C0 0791D4 002C+00 1/0 0/0 0/0 .text GetTriPla__8dBgWKColCFRC13cBgS_PolyInfo */
cM3dGPla dBgWKCol::GetTriPla(cBgS_PolyInfo const& poly) const {
    int poly_index = poly.GetPolyIndex();
    return GetTriPla(poly_index);
}

/* 8007E8C0-8007E980 079200 00C0+00 3/3 0/0 0/0 .text            GetTriPla__8dBgWKColCFi */
cM3dGPla dBgWKCol::GetTriPla(int poly_index) const {
    KC_PrismData* pd = getPrismData(poly_index);

    Vec* tri_nrm;
    getTriNrm(pd, &tri_nrm);

    Vec* tri_pos;
    getTri1Pos(pd, &tri_pos);
    PSVECDotProduct(tri_nrm, tri_pos);

    cM3dGPla plane;
    plane.SetupNP(*tri_nrm, *tri_pos);

    return plane;
}

/* 8007E980-8007E9A4 0792C0 0024+00 1/0 0/0 0/0 .text
 * GetTriPnt__8dBgWKColCFRC13cBgS_PolyInfoP4cXyzP4cXyzP4cXyz    */
bool dBgWKCol::GetTriPnt(cBgS_PolyInfo const& poly, cXyz* param_1, cXyz* param_2,
                         cXyz* param_3) const {
    int poly_index = poly.GetPolyIndex();
    return GetTriPnt(poly_index, param_1, param_2, param_3);
}

/* 8007E9A4-8007E9D4 0792E4 0030+00 3/3 0/0 0/0 .text GetTriPnt__8dBgWKColCFiP3VecP3VecP3Vec */
bool dBgWKCol::GetTriPnt(int poly_index, Vec* param_1, Vec* param_2, Vec* param_3) const {
    KC_PrismData* pd = getPrismData(poly_index);
    return GetTriPnt(pd, param_1, param_2, param_3);
}

/* 8007E9D4-8007EB28 079314 0154+00 3/3 0/0 0/0 .text
 * GetTriPnt__8dBgWKColCFPC12KC_PrismDataP3VecP3VecP3Vec        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dBgWKCol::GetTriPnt(KC_PrismData const* param_0, Vec* param_1, Vec* param_2,
                             Vec* param_3) const {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/GetTriPnt__8dBgWKColCFPC12KC_PrismDataP3VecP3VecP3Vec.s"
}
#pragma pop

/* 8007EB28-8007EB30 079468 0008+00 1/0 0/0 0/0 .text            GetBnd__8dBgWKColCFv */
cM3dGAab* dBgWKCol::GetBnd() const {
    return (cM3dGAab*)&m_bnd;
}

/* 8007EB30-8007EB6C 079470 003C+00 1/0 0/0 0/0 .text GetGrpInf__8dBgWKColCFRC13cBgS_PolyInfo */
u32 dBgWKCol::GetGrpInf(cBgS_PolyInfo const& poly) const {
    u16 poly_index = poly.GetPolyIndex();
    KC_PrismData* pd = getPrismData(poly_index);

    return m_code.getGrpCode(pd->field_0xe);
}

/* 8007EB6C-8007EB70 0794AC 0004+00 1/0 0/0 0/0 .text            OffMoveFlag__8dBgWKColFv */
void dBgWKCol::OffMoveFlag() {}

/* 8007EB70-8007EBC4 0794B0 0054+00 39/39 0/0 0/0 .text            getPolyCode__8dBgWKColCFiP5dBgPc
 */
void dBgWKCol::getPolyCode(int poly_index, dBgPc* pbgpc) const {
    KC_PrismData* pd = getPrismData(poly_index);

    sBgPc* code;
    m_code.getCode(pd->field_0xe, &code);
    pbgpc->setCode(*code);
}

/* 8007EBC4-8007EE34 079504 0270+00 8/8 0/0 0/0 .text
 * chkPolyThrough__8dBgWKColCFP5dBgPcP16cBgS_PolyPassChkP15cBgS_GrpPassChkR4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dBgWKCol::chkPolyThrough(dBgPc* param_0, cBgS_PolyPassChk* param_1,
                                  cBgS_GrpPassChk* param_2, cXyz& param_3) const {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/chkPolyThrough__8dBgWKColCFP5dBgPcP16cBgS_PolyPassChkP15cBgS_GrpPassChkR4cXyz.s"
}
#pragma pop

/* ############################################################################################## */
/* 80452718-8045271C 000D18 0004+00 5/5 0/0 0/0 .sdata2          @4187 */
SECTION_SDATA2 static u8 lit_4187[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 8045271C-80452720 000D1C 0004+00 1/1 0/0 0/0 .sdata2          @4188 */
SECTION_SDATA2 static f32 lit_4188 = 500.0f;

/* 80452720-80452724 000D20 0004+00 6/6 0/0 0/0 .sdata2          @4189 */
SECTION_SDATA2 static f32 lit_4189 = 1.0f;

/* 80452724-80452728 000D24 0004+00 4/4 0/0 0/0 .sdata2          @4190 */
SECTION_SDATA2 static f32 lit_4190 = 0.007499999832361937f;

/* 80452728-8045272C 000D28 0004+00 4/4 0/0 0/0 .sdata2          @4191 */
SECTION_SDATA2 static f32 lit_4191 = -0.007499999832361937f;

/* 8007EE34-8007F628 079774 07F4+00 1/0 0/0 0/0 .text            LineCheck__8dBgWKColFP11cBgS_LinChk
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dBgWKCol::LineCheck(cBgS_LinChk* param_0) {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/LineCheck__8dBgWKColFP11cBgS_LinChk.s"
}
#pragma pop

/* ############################################################################################## */
/* 8045272C-80452730 000D2C 0004+00 1/1 0/0 0/0 .sdata2          @4293 */
SECTION_SDATA2 static f32 lit_4293 = 0.014000000432133675f;

/* 8007F628-8007F9A4 079F68 037C+00 1/0 0/0 0/0 .text GroundCross__8dBgWKColFP11cBgS_GndChk */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dBgWKCol::GroundCross(cBgS_GndChk* param_0) {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/GroundCross__8dBgWKColFP11cBgS_GndChk.s"
}
#pragma pop

/* 8007F9A4-8007FF00 07A2E4 055C+00 1/0 0/0 0/0 .text ShdwDraw__8dBgWKColFP13cBgS_ShdwDraw */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dBgWKCol::ShdwDraw(cBgS_ShdwDraw* param_0) {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/ShdwDraw__8dBgWKColFP13cBgS_ShdwDraw.s"
}
#pragma pop

/* 8007FF00-8007FF1C 07A840 001C+00 1/1 0/0 0/0 .text ChkShdwDrawThrough__8dBgWKColFP5dBgPc */
bool dBgWKCol::ChkShdwDrawThrough(dBgPc* pbgpc) {
    if (pbgpc->getShdwThrough()) {
        return true;
    }

    return pbgpc->getArrowThrough();
}

/* ############################################################################################## */
/* 80424F70-80424F94 051C90 0024+00 1/1 0/0 0/0 .bss             vtx_tbl$4582 */
static Vec vtx_tbl_4582[3];

/* 8007FF1C-80080330 07A85C 0414+00 1/0 0/0 0/0 .text CaptPoly__8dBgWKColFR13dBgS_CaptPoly */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dBgWKCol::CaptPoly(dBgS_CaptPoly& param_0) {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/CaptPoly__8dBgWKColFR13dBgS_CaptPoly.s"
}
#pragma pop

/* ############################################################################################## */
/* 80424F94-80425384 051CB4 03F0+00 1/1 0/0 0/0 .bss             l_wcsbuf */
static u8 l_wcsbuf[1008];

/* 80452730-80452738 000D30 0008+00 2/2 0/0 0/0 .sdata2          @5298 */
SECTION_SDATA2 static f64 lit_5298 = 0.5;

/* 80452738-80452740 000D38 0008+00 2/2 0/0 0/0 .sdata2          @5299 */
SECTION_SDATA2 static f64 lit_5299 = 3.0;

/* 80452740-80452748 000D40 0008+00 2/2 0/0 0/0 .sdata2          @5300 */
SECTION_SDATA2 static u8 lit_5300[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80452748-80452750 000D48 0004+04 2/2 0/0 0/0 .sdata2          @5301 */
SECTION_SDATA2 static f32 lit_5301[1 + 1 /* padding */] = {
    1.0f / 125.0f,
    /* padding */
    0.0f,
};

/* 80080330-800811A0 07AC70 0E70+00 1/0 0/0 0/0 .text WallCorrectSort__8dBgWKColFP9dBgS_Acch */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dBgWKCol::WallCorrectSort(dBgS_Acch* param_0) {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/WallCorrectSort__8dBgWKColFP9dBgS_Acch.s"
}
#pragma pop

/* 800811A0-80081E18 07BAE0 0C78+00 1/0 0/0 0/0 .text            WallCorrect__8dBgWKColFP9dBgS_Acch
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dBgWKCol::WallCorrect(dBgS_Acch* param_0) {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/WallCorrect__8dBgWKColFP9dBgS_Acch.s"
}
#pragma pop

/* 80081E18-80082184 07C758 036C+00 1/0 0/0 0/0 .text            RoofChk__8dBgWKColFP12dBgS_RoofChk
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dBgWKCol::RoofChk(dBgS_RoofChk* param_0) {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/RoofChk__8dBgWKColFP12dBgS_RoofChk.s"
}
#pragma pop

/* 80082184-800824EC 07CAC4 0368+00 1/0 0/0 0/0 .text SplGrpChk__8dBgWKColFP14dBgS_SplGrpChk */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dBgWKCol::SplGrpChk(dBgS_SplGrpChk* param_0) {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/SplGrpChk__8dBgWKColFP14dBgS_SplGrpChk.s"
}
#pragma pop

/* ############################################################################################## */
/* 80425384-804253A8 0520A4 0024+00 1/1 0/0 0/0 .bss             vtx_tbl$5950 */
static Vec vtx_tbl_5950[3];

/* 800824EC-800829AC 07CE2C 04C0+00 1/0 0/0 0/0 .text            SphChk__8dBgWKColFP11dBgS_SphChkPv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dBgWKCol::SphChk(dBgS_SphChk* param_0, void* param_1) {
    nofralloc
#include "asm/d/bg/d_bg_w_kcol/SphChk__8dBgWKColFP11dBgS_SphChkPv.s"
}
#pragma pop

/* 800829AC-800829F0 07D2EC 0044+00 1/0 0/0 0/0 .text            GetTopUnder__8dBgWKColCFPfPf */
void dBgWKCol::GetTopUnder(f32* param_0, f32* param_1) const {
    *param_1 = m_pkc_head->m_area_min_pos.y;
    *param_0 = *param_1 + (f32)~m_pkc_head->field_0x24;
}

/* 800829F0-80082A20 07D330 0030+00 1/0 0/0 0/0 .text
 * GetGrpRoomIndex__8dBgWKColCFRC13cBgS_PolyInfo                */
s32 dBgWKCol::GetGrpRoomIndex(cBgS_PolyInfo const& poly) const {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoom();
}

/* 80082A20-80082A50 07D360 0030+00 1/0 0/0 0/0 .text GetExitId__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetExitId(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getExit();
}

/* 80082A50-80082A80 07D390 0030+00 1/0 0/0 0/0 .text GetPolyColor__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetPolyColor(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getPolyCol();
}

/* 80082A80-80082AB0 07D3C0 0030+00 1/0 0/0 0/0 .text GetHorseNoEntry__8dBgWKColFRC13cBgS_PolyInfo
 */
BOOL dBgWKCol::GetHorseNoEntry(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getHorseNoEntry();
}

/* 80082AB0-80082AE0 07D3F0 0030+00 1/0 0/0 0/0 .text GetSpecialCode__8dBgWKColFRC13cBgS_PolyInfo
 */
int dBgWKCol::GetSpecialCode(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();
    return GetSpecialCode(poly_index);
}

/* 80082AE0-80082B0C 07D420 002C+00 1/0 0/0 0/0 .text            GetSpecialCode__8dBgWKColFi */
int dBgWKCol::GetSpecialCode(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getSpl();
}

/* 80082B0C-80082B3C 07D44C 0030+00 1/0 0/0 0/0 .text GetMagnetCode__8dBgWKColFRC13cBgS_PolyInfo
 */
int dBgWKCol::GetMagnetCode(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getMagnet();
}

/* 80082B3C-80082B6C 07D47C 0030+00 1/0 0/0 0/0 .text
 * GetMonkeyBarsCode__8dBgWKColFRC13cBgS_PolyInfo               */
int dBgWKCol::GetMonkeyBarsCode(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getMonkeyBars();
}

/* 80082B6C-80082B98 07D4AC 002C+00 1/0 0/0 0/0 .text            GetPolyObjThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyObjThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getObjThrough();
}

/* 80082B98-80082BC4 07D4D8 002C+00 1/0 0/0 0/0 .text            GetPolyCamThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyCamThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getCamThrough();
}

/* 80082BC4-80082BF0 07D504 002C+00 1/0 0/0 0/0 .text            GetPolyLinkThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyLinkThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getLinkThrough();
}

/* 80082BF0-80082C1C 07D530 002C+00 1/0 0/0 0/0 .text            GetPolyArrowThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyArrowThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getArrowThrough();
}

/* 80082C1C-80082C48 07D55C 002C+00 1/0 0/0 0/0 .text            GetPolyHSStick__8dBgWKColFi */
u32 dBgWKCol::GetPolyHSStick(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getHSStick();
}

/* 80082C48-80082C74 07D588 002C+00 1/0 0/0 0/0 .text GetPolyBoomerangThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyBoomerangThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getBoomerangThrough();
}

/* 80082C74-80082CA0 07D5B4 002C+00 1/0 0/0 0/0 .text            GetPolyRopeThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyRopeThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getRopeThrough();
}

/* 80082CA0-80082CCC 07D5E0 002C+00 1/0 0/0 0/0 .text            GetPolyBombThrough__8dBgWKColFi */
u32 dBgWKCol::GetPolyBombThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getBombThrough();
}

/* 80082CCC-80082CF8 07D60C 002C+00 1/0 0/0 0/0 .text            GetUnderwaterRoofCode__8dBgWKColFi
 */
u32 dBgWKCol::GetUnderwaterRoofCode(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getUnderwaterRoof();
}

/* 80082CF8-80082D24 07D638 002C+00 1/0 0/0 0/0 .text            GetShdwThrough__8dBgWKColFi */
bool dBgWKCol::GetShdwThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getShdwThrough();
}

/* 80082D24-80082D54 07D664 0030+00 1/0 0/0 0/0 .text GetLinkNo__8dBgWKColFRC13cBgS_PolyInfo */
int dBgWKCol::GetLinkNo(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getLinkNo();
}

/* 80082D54-80082D84 07D694 0030+00 1/0 0/0 0/0 .text GetWallCode__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetWallCode(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getWallCode();
}

/* 80082D84-80082DB4 07D6C4 0030+00 1/0 0/0 0/0 .text GetPolyAtt0__8dBgWKColFRC13cBgS_PolyInfo */
int dBgWKCol::GetPolyAtt0(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getAtt0Code();
}

/* 80082DB4-80082DE4 07D6F4 0030+00 1/0 0/0 0/0 .text GetPolyAtt1__8dBgWKColFRC13cBgS_PolyInfo */
int dBgWKCol::GetPolyAtt1(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getAtt1Code();
}

/* 80082DE4-80082E14 07D724 0030+00 1/0 0/0 0/0 .text GetGroundCode__8dBgWKColFRC13cBgS_PolyInfo
 */
int dBgWKCol::GetGroundCode(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getGroundCode();
}

/* 80082E14-80082E40 07D754 002C+00 1/0 0/0 0/0 .text            GetIronBallThrough__8dBgWKColFi */
u32 dBgWKCol::GetIronBallThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getIronBallThrough();
}

/* 80082E40-80082E6C 07D780 002C+00 1/0 0/0 0/0 .text            GetAttackThrough__8dBgWKColFi */
u32 dBgWKCol::GetAttackThrough(int poly_index) {
    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);

    return bgpc.getAttackThrough();
}

/* 80082E6C-80082E9C 07D7AC 0030+00 1/0 0/0 0/0 .text GetCamMoveBG__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetCamMoveBG(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getCamMoveBG();
}

/* 80082E9C-80082ECC 07D7DC 0030+00 1/0 0/0 0/0 .text GetRoomCamId__8dBgWKColFRC13cBgS_PolyInfo */
s32 dBgWKCol::GetRoomCamId(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomCam();
}

/* 80082ECC-80082EFC 07D80C 0030+00 1/0 0/0 0/0 .text GetRoomPathId__8dBgWKColFRC13cBgS_PolyInfo
 */
s32 dBgWKCol::GetRoomPathId(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomPath();
}

/* 80082EFC-80082F2C 07D83C 0030+00 1/0 0/0 0/0 .text
 * GetRoomPathPntNo__8dBgWKColFRC13cBgS_PolyInfo                */
s32 dBgWKCol::GetRoomPathPntNo(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomPathPnt();
}

/* 80082F2C-80082F5C 07D86C 0030+00 1/0 0/0 0/0 .text
 * GetPolyGrpRoomInfId__8dBgWKColFRC13cBgS_PolyInfo             */
u8 dBgWKCol::GetPolyGrpRoomInfId(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getRoomInf();
}

/* 80082F5C-80082F8C 07D89C 0030+00 1/0 0/0 0/0 .text GetGrpSoundId__8dBgWKColFRC13cBgS_PolyInfo
 */
u8 dBgWKCol::GetGrpSoundId(cBgS_PolyInfo const& poly) {
    u16 poly_index = poly.GetPolyIndex();

    dBgPc bgpc;
    getPolyCode(poly_index, &bgpc);
    return bgpc.getSnd();
}

/* 80082F8C-80082F90 07D8CC 0004+00 1/0 0/0 0/0 .text
 * CrrPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz   */
void dBgWKCol::CrrPos(cBgS_PolyInfo const& param_0, void* param_1, bool param_2, cXyz* param_3,
                      csXyz* param_4, csXyz* param_5) {}

/* 80082F90-80082F94 07D8D0 0004+00 1/0 0/0 0/0 .text
 * TransPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz */
void dBgWKCol::TransPos(cBgS_PolyInfo const& param_0, void* param_1, bool param_2, cXyz* param_3,
                        csXyz* param_4, csXyz* param_5) {}

/* 80082F94-80082F98 07D8D4 0004+00 1/0 0/0 0/0 .text
 * MatrixCrrPos__8dBgWKColFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz */
void dBgWKCol::MatrixCrrPos(cBgS_PolyInfo const& param_0, void* param_1, bool param_2,
                            cXyz* param_3, csXyz* param_4, csXyz* param_5) {}
