/**
 * @file d_a_obj_glowSphere.cpp
 * 
*/

#include "d/actor/d_a_obj_glowSphere.h"
#include "dol2asm.h"





//
// Forward References:
//

extern "C" void __ct__14daGlwSph_HIO_cFv();
extern "C" void __dt__18fOpAcm_HIO_entry_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void getSphMng__10daGlwSph_cFv();
extern "C" void setBaseMtx__10daGlwSph_cFv();
extern "C" void createHeapCallBack__10daGlwSph_cFP10fopAc_ac_c();
extern "C" void CreateHeap__10daGlwSph_cFv();
extern "C" void create__10daGlwSph_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void execute__10daGlwSph_cFv();
extern "C" void actionMain__10daGlwSph_cFv();
extern "C" void effectSet__10daGlwSph_cFv();
extern "C" void getSE__10daGlwSph_cFv();
extern "C" void getVibe__10daGlwSph_cFv();
extern "C" void actionWaitInit__10daGlwSph_cFv();
extern "C" void actionWait__10daGlwSph_cFv();
extern "C" void actionGetInit__10daGlwSph_cFv();
extern "C" void actionGet__10daGlwSph_cFv();
extern "C" void actionMoveInit__10daGlwSph_cFv();
extern "C" void actionMove__10daGlwSph_cFv();
extern "C" void draw__10daGlwSph_cFv();
extern "C" void _delete__10daGlwSph_cFv();
extern "C" static void daGlwSph_Draw__FP10daGlwSph_c();
extern "C" static void daGlwSph_Execute__FP10daGlwSph_c();
extern "C" static void daGlwSph_Delete__FP10daGlwSph_c();
extern "C" static void daGlwSph_Create__FP10fopAc_ac_c();
extern "C" void _clrLstBuf__12_GlSph_Mng_cFv();
extern "C" void entry__12_GlSph_Mng_cFP10daGlwSph_c();
extern "C" void remove__12_GlSph_Mng_cFP10daGlwSph_c();
extern "C" void _setting_main__12_GlSph_Mng_cFv();
extern "C" void _chkAllGet_main__12_GlSph_Mng_cFv();
extern "C" void SphSeProc__12_GlSph_Mng_cFv();
extern "C" void clrSphSe__12_GlSph_Mng_cFv();
extern "C" void getSphSe__12_GlSph_Mng_cFv();
extern "C" void incSphSe__12_GlSph_Mng_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__14daGlwSph_HIO_cFv();
extern "C" void __sinit_d_a_obj_glowSphere_cpp();
extern "C" void __dt__12_GlSph_Mng_cFv();
extern "C" void __dt__16_GlSph_LstInfo_cFv();
extern "C" void __ct__16_GlSph_LstInfo_cFv();
extern "C" static void func_80BFA94C();
extern "C" static void func_80BFA954();
extern "C" u8 const mCcDObjInfo__10daGlwSph_c[48];
extern "C" extern char const* const d_a_obj_glowSphere__stringBase0;
extern "C" u8 mCcDSph__10daGlwSph_c[64];
extern "C" u8 mSphMng__10daGlwSph_c[964];

//
// External References:
//

extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_mock_light_every_set__FP15LIGHT_INFLUENCE();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_21();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80BFA970-80BFA974 000000 0004+00 3/3 0/0 0/0 .rodata          @3665 */
SECTION_RODATA static f32 const lit_3665 = 50.0f;
COMPILER_STRIP_GATE(0x80BFA970, &lit_3665);

/* 80BFA974-80BFA978 000004 0004+00 1/2 0/0 0/0 .rodata          @3666 */
SECTION_RODATA static f32 const lit_3666 = 4.0f;
COMPILER_STRIP_GATE(0x80BFA974, &lit_3666);

/* 80BFA9D0-80BFA9DC 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BFA9DC-80BFA9F0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80BFA9F0-80BFAA08 000020 0018+00 1/1 0/0 0/0 .data            l_cull_box */
SECTION_DATA static u8 l_cull_box[24] = {
    0xC1, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
};

/* 80BFAA08-80BFAA48 000038 0040+00 2/2 0/0 0/0 .data            mCcDSph__10daGlwSph_c */
SECTION_DATA u8 daGlwSph_c::mCcDSph[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BFAA48-80BFAA4C 000078 0004+00 1/2 0/0 0/0 .data            l_prmColor */
SECTION_DATA static u32 l_prmColor = 0xFFFFFFFF;

/* 80BFAA4C-80BFAA5C 00007C 0010+00 1/3 0/0 0/0 .data            l_envColor */
SECTION_DATA static u8 l_envColor[16] = {
    0x3C, 0x1E, 0x3C, 0xFF, 0xFF, 0x00, 0x32, 0xFF, 0xC8, 0x78, 0x00, 0xFF, 0x00, 0x32, 0xFF, 0xFF,
};

/* 80BFAA5C-80BFAA68 -00001 000C+00 0/1 0/0 0/0 .data            @3934 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3934[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__10daGlwSph_cFv,
};
#pragma pop

/* 80BFAA68-80BFAA74 -00001 000C+00 0/1 0/0 0/0 .data            @3935 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3935[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionGet__10daGlwSph_cFv,
};
#pragma pop

/* 80BFAA74-80BFAA80 -00001 000C+00 0/1 0/0 0/0 .data            @3936 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3936[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionMove__10daGlwSph_cFv,
};
#pragma pop

/* 80BFAA80-80BFAAA4 0000B0 0024+00 0/1 0/0 0/0 .data            l_func$3933 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BFAAA4-80BFAAA8 0000D4 0004+00 0/1 0/0 0/0 .data            l_eff$3973 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_eff[4] = {
    0x87,
    0x4F,
    0x87,
    0x50,
};
#pragma pop

/* 80BFAAA8-80BFAAAC 0000D8 0004+00 0/1 0/0 0/0 .data            l_colorKR$4109 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_colorKR[4] = {
    0x3C,
    0x50,
    0x50,
    0x00,
};
#pragma pop

/* 80BFAAAC-80BFAAB0 0000DC 0004+00 0/1 0/0 0/0 .data            l_colorKG$4110 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_colorKG[4] = {
    0x32,
    0x00,
    0x23,
    0x14,
};
#pragma pop

/* 80BFAAB0-80BFAAB4 0000E0 0004+00 0/1 0/0 0/0 .data            l_colorKB$4111 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_colorKB[4] = {
    0x3C,
    0x23,
    0x00,
    0x50,
};
#pragma pop

/* 80BFAAB4-80BFAAB8 0000E4 0004+00 0/1 0/0 0/0 .data            l_colorCR$4112 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_colorCR[4] = {
    0x96,
    0xFF,
    0xFF,
    0x00,
};
#pragma pop

/* 80BFAAB8-80BFAABC 0000E8 0004+00 0/1 0/0 0/0 .data            l_colorCG$4113 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_colorCG[4] = {
    0x96,
    0x64,
    0xFF,
    0x96,
};
#pragma pop

/* 80BFAABC-80BFAAC0 0000EC 0004+00 0/1 0/0 0/0 .data            l_colorCB$4114 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_colorCB[4] = {
    0x96,
    0x64,
    0x00,
    0xFF,
};
#pragma pop

/* 80BFAAC0-80BFAAE0 -00001 0020+00 1/0 0/0 0/0 .data            l_daGlwSph_Method */
static actor_method_class l_daGlwSph_Method = {
    (process_method_func)daGlwSph_Create__FP10fopAc_ac_c,
    (process_method_func)daGlwSph_Delete__FP10daGlwSph_c,
    (process_method_func)daGlwSph_Execute__FP10daGlwSph_c,
    0,
    (process_method_func)daGlwSph_Draw__FP10daGlwSph_c,
};

/* 80BFAAE0-80BFAB10 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_glowSphere */
extern actor_process_profile_definition g_profile_Obj_glowSphere = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_glowSphere,      // mProcName
  &g_fpcLf_Method.mBase,    // sub_method
  sizeof(daGlwSph_c),       // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  651,                      // mPriority
  &l_daGlwSph_Method,       // sub_method
  0x00040000,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80BFAB10-80BFAB1C 000140 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80BFAB1C-80BFAB28 00014C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BFAB28-80BFAB34 000158 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BFAB34-80BFAB40 000164 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BFAB40-80BFAB4C 000170 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BFAB4C-80BFAB70 00017C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BFA954,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BFA94C,
};

/* 80BFAB70-80BFAB7C 0001A0 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80BFAB7C-80BFAB88 0001AC 000C+00 2/2 0/0 0/0 .data            __vt__14daGlwSph_HIO_c */
SECTION_DATA extern void* __vt__14daGlwSph_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daGlwSph_HIO_cFv,
};

/* 80BFAB88-80BFAB94 0001B8 000C+00 3/3 0/0 0/0 .data            __vt__18fOpAcm_HIO_entry_c */
SECTION_DATA extern void* __vt__18fOpAcm_HIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18fOpAcm_HIO_entry_cFv,
};

/* 80BFAB94-80BFABA0 0001C4 000C+00 4/4 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80BF934C-80BF938C 0000EC 0040+00 1/1 0/0 0/0 .text            __ct__14daGlwSph_HIO_cFv */
daGlwSph_HIO_c::daGlwSph_HIO_c() {
    // NONMATCHING
}

/* 80BF938C-80BF93E8 00012C 005C+00 1/0 0/0 0/0 .text            __dt__18fOpAcm_HIO_entry_cFv */
// fOpAcm_HIO_entry_c::~fOpAcm_HIO_entry_c() {
extern "C" void __dt__18fOpAcm_HIO_entry_cFv() {
    // NONMATCHING
}

/* 80BF93E8-80BF9430 000188 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFABA8-80BFABAC 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80BFABAC-80BFABB0 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80BFABB0-80BFABB4 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80BFABB4-80BFABB8 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80BFABB8-80BFABBC 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80BFABBC-80BFABC0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80BFABC0-80BFABC4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80BFABC4-80BFABC8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80BFABC8-80BFABCC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80BFABCC-80BFABD0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80BFABD0-80BFABD4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80BFABD4-80BFABD8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80BFABD8-80BFABDC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80BFABDC-80BFABE0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80BFABE0-80BFABE4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80BFABE4-80BFABE8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80BFABE8-80BFABF4 000048 000C+00 0/1 0/0 0/0 .bss             @3657 */
#pragma push
#pragma force_active on
static u8 lit_3657[12];
#pragma pop

/* 80BFABF4-80BFAC00 000054 000C+00 2/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 80BFAC00-80BFAC0C 000060 000C+00 0/1 0/0 0/0 .bss             @3673 */
#pragma push
#pragma force_active on
static u8 lit_3673[12];
#pragma pop

/* 80BFAC0C-80BFAFD0 00006C 03C4+00 3/4 0/0 0/0 .bss             mSphMng__10daGlwSph_c */
u8 daGlwSph_c::mSphMng[964];

/* 80BF9430-80BF943C 0001D0 000C+00 0/0 0/0 1/1 .text            getSphMng__10daGlwSph_cFv */
void daGlwSph_c::getSphMng() {
    // NONMATCHING
}

/* 80BF943C-80BF94AC 0001DC 0070+00 2/2 0/0 0/0 .text            setBaseMtx__10daGlwSph_cFv */
void daGlwSph_c::setBaseMtx() {
    // NONMATCHING
}

/* 80BF94AC-80BF94CC 00024C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daGlwSph_cFP10fopAc_ac_c               */
void daGlwSph_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFA978-80BFA9A8 000008 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__10daGlwSph_c */
SECTION_RODATA u8 const daGlwSph_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x19, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BFA978, &daGlwSph_c::mCcDObjInfo);

/* 80BFA9A8-80BFA9AC 000038 0004+00 3/4 0/0 0/0 .rodata          @3714 */
SECTION_RODATA static f32 const lit_3714 = 1.0f;
COMPILER_STRIP_GATE(0x80BFA9A8, &lit_3714);

/* 80BFA9C4-80BFA9C4 000054 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BFA9C4 = "glwSphere";
#pragma pop

/* 80BF94CC-80BF95D4 00026C 0108+00 1/1 0/0 0/0 .text            CreateHeap__10daGlwSph_cFv */
void daGlwSph_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFA9AC-80BFA9B0 00003C 0004+00 1/1 0/0 0/0 .rodata          @3826 */
SECTION_RODATA static f32 const lit_3826 = 25.0f;
COMPILER_STRIP_GATE(0x80BFA9AC, &lit_3826);

/* 80BF95D4-80BF9908 000374 0334+00 1/1 0/0 0/0 .text            create__10daGlwSph_cFv */
void daGlwSph_c::create() {
    // NONMATCHING
}

/* 80BF9908-80BF9950 0006A8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80BF9950-80BF9998 0006F0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BF9998-80BF99F4 000738 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BF99F4-80BF9A64 000794 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80BF9A64-80BF9AD4 000804 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80BF9AD4-80BF9B1C 000874 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80BF9B1C-80BF9BC0 0008BC 00A4+00 1/1 0/0 0/0 .text            execute__10daGlwSph_cFv */
void daGlwSph_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFA9B0-80BFA9B4 000040 0004+00 1/1 0/0 0/0 .rodata          @3968 */
SECTION_RODATA static f32 const lit_3968 = 400.0f;
COMPILER_STRIP_GATE(0x80BFA9B0, &lit_3968);

/* 80BFA9B4-80BFA9B8 000044 0004+00 1/2 0/0 0/0 .rodata          @3969 */
SECTION_RODATA static f32 const lit_3969 = 0.5f;
COMPILER_STRIP_GATE(0x80BFA9B4, &lit_3969);

/* 80BFAFD0-80BFAFD4 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 80BFAFD0 0001+00 data_80BFAFD0 None */
/* 80BFAFD1 0003+00 data_80BFAFD1 None */
static u8 struct_80BFAFD0[4];

/* 80BF9BC0-80BF9DF0 000960 0230+00 1/1 0/0 0/0 .text            actionMain__10daGlwSph_cFv */
void daGlwSph_c::actionMain() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFA9B8-80BFA9BC 000048 0004+00 3/4 0/0 0/0 .rodata          @4012 */
SECTION_RODATA static u8 const lit_4012[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BFA9B8, &lit_4012);

/* 80BF9DF0-80BF9F30 000B90 0140+00 1/1 0/0 0/0 .text            effectSet__10daGlwSph_cFv */
void daGlwSph_c::effectSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFA9BC-80BFA9C0 00004C 0004+00 1/1 0/0 0/0 .rodata          @4031 */
SECTION_RODATA static f32 const lit_4031 = -1.0f;
COMPILER_STRIP_GATE(0x80BFA9BC, &lit_4031);

/* 80BFAFD4-80BFAFE8 000434 0014+00 1/1 0/0 0/0 .bss             sSeId$4016 */
static u8 sSeId[20];

/* 80BF9F30-80BFA010 000CD0 00E0+00 1/1 0/0 0/0 .text            getSE__10daGlwSph_cFv */
void daGlwSph_c::getSE() {
    // NONMATCHING
}

/* 80BFA010-80BFA064 000DB0 0054+00 1/1 0/0 0/0 .text            getVibe__10daGlwSph_cFv */
void daGlwSph_c::getVibe() {
    // NONMATCHING
}

/* 80BFA064-80BFA070 000E04 000C+00 2/2 0/0 0/0 .text            actionWaitInit__10daGlwSph_cFv */
void daGlwSph_c::actionWaitInit() {
    // NONMATCHING
}

/* 80BFA070-80BFA074 000E10 0004+00 1/0 0/0 0/0 .text            actionWait__10daGlwSph_cFv */
void daGlwSph_c::actionWait() {
    /* empty function */
}

/* 80BFA074-80BFA130 000E14 00BC+00 1/1 0/0 0/0 .text            actionGetInit__10daGlwSph_cFv */
void daGlwSph_c::actionGetInit() {
    // NONMATCHING
}

/* 80BFA130-80BFA1E0 000ED0 00B0+00 1/0 0/0 0/0 .text            actionGet__10daGlwSph_cFv */
void daGlwSph_c::actionGet() {
    // NONMATCHING
}

/* 80BFA1E0-80BFA204 000F80 0024+00 1/1 0/0 0/0 .text            actionMoveInit__10daGlwSph_cFv */
void daGlwSph_c::actionMoveInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFA9C0-80BFA9C4 000050 0004+00 0/1 0/0 0/0 .rodata          @4103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4103 = 10.0f;
COMPILER_STRIP_GATE(0x80BFA9C0, &lit_4103);
#pragma pop

/* 80BFA204-80BFA2A4 000FA4 00A0+00 1/0 0/0 0/0 .text            actionMove__10daGlwSph_cFv */
void daGlwSph_c::actionMove() {
    // NONMATCHING
}

/* 80BFA2A4-80BFA3EC 001044 0148+00 1/1 0/0 0/0 .text            draw__10daGlwSph_cFv */
void daGlwSph_c::draw() {
    // NONMATCHING
}

/* 80BFA3EC-80BFA438 00118C 004C+00 1/1 0/0 0/0 .text            _delete__10daGlwSph_cFv */
void daGlwSph_c::_delete() {
    // NONMATCHING
}

/* 80BFA438-80BFA458 0011D8 0020+00 1/0 0/0 0/0 .text            daGlwSph_Draw__FP10daGlwSph_c */
static void daGlwSph_Draw(daGlwSph_c* param_0) {
    // NONMATCHING
}

/* 80BFA458-80BFA478 0011F8 0020+00 1/0 0/0 0/0 .text            daGlwSph_Execute__FP10daGlwSph_c */
static void daGlwSph_Execute(daGlwSph_c* param_0) {
    // NONMATCHING
}

/* 80BFA478-80BFA498 001218 0020+00 1/0 0/0 0/0 .text            daGlwSph_Delete__FP10daGlwSph_c */
static void daGlwSph_Delete(daGlwSph_c* param_0) {
    // NONMATCHING
}

/* 80BFA498-80BFA4B8 001238 0020+00 1/0 0/0 0/0 .text            daGlwSph_Create__FP10fopAc_ac_c */
static void daGlwSph_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BFA4B8-80BFA4DC 001258 0024+00 1/1 0/0 0/0 .text            _clrLstBuf__12_GlSph_Mng_cFv */
void _GlSph_Mng_c::_clrLstBuf() {
    // NONMATCHING
}

/* 80BFA4DC-80BFA528 00127C 004C+00 1/1 0/0 0/0 .text            entry__12_GlSph_Mng_cFP10daGlwSph_c
 */
void _GlSph_Mng_c::entry(daGlwSph_c* param_0) {
    // NONMATCHING
}

/* 80BFA528-80BFA55C 0012C8 0034+00 1/1 0/0 0/0 .text remove__12_GlSph_Mng_cFP10daGlwSph_c */
void _GlSph_Mng_c::remove(daGlwSph_c* param_0) {
    // NONMATCHING
}

/* 80BFA55C-80BFA5C4 0012FC 0068+00 0/0 0/0 1/1 .text            _setting_main__12_GlSph_Mng_cFv */
void _GlSph_Mng_c::_setting_main() {
    // NONMATCHING
}

/* 80BFA5C4-80BFA60C 001364 0048+00 0/0 0/0 1/1 .text            _chkAllGet_main__12_GlSph_Mng_cFv
 */
void _GlSph_Mng_c::_chkAllGet_main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFAFE8-80BFAFEC -00001 0004+00 4/4 0/0 0/0 .bss             None */
/* 80BFAFE8 0002+00 data_80BFAFE8 mSphSe__12_GlSph_Mng_c */
/* 80BFAFEA 0002+00 data_80BFAFEA mSeClrTmr__12_GlSph_Mng_c */
static u8 struct_80BFAFE8[4];

/* 80BFA60C-80BFA6D8 0013AC 00CC+00 0/0 0/0 1/1 .text            SphSeProc__12_GlSph_Mng_cFv */
void _GlSph_Mng_c::SphSeProc() {
    // NONMATCHING
}

/* 80BFA6D8-80BFA6E8 001478 0010+00 1/1 0/0 0/0 .text            clrSphSe__12_GlSph_Mng_cFv */
void _GlSph_Mng_c::clrSphSe() {
    // NONMATCHING
}

/* 80BFA6E8-80BFA6F8 001488 0010+00 1/1 0/0 0/0 .text            getSphSe__12_GlSph_Mng_cFv */
void _GlSph_Mng_c::getSphSe() {
    // NONMATCHING
}

/* 80BFA6F8-80BFA724 001498 002C+00 1/1 0/0 0/0 .text            incSphSe__12_GlSph_Mng_cFv */
void _GlSph_Mng_c::incSphSe() {
    // NONMATCHING
}

/* 80BFA724-80BFA76C 0014C4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BFA76C-80BFA7D8 00150C 006C+00 2/1 0/0 0/0 .text            __dt__14daGlwSph_HIO_cFv */
daGlwSph_HIO_c::~daGlwSph_HIO_c() {
    // NONMATCHING
}

/* 80BFA7D8-80BFA890 001578 00B8+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_glowSphere_cpp */
void __sinit_d_a_obj_glowSphere_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BFA7D8, __sinit_d_a_obj_glowSphere_cpp);
#pragma pop

/* 80BFA890-80BFA900 001630 0070+00 1/1 0/0 0/0 .text            __dt__12_GlSph_Mng_cFv */
_GlSph_Mng_c::~_GlSph_Mng_c() {
    // NONMATCHING
}

/* 80BFA900-80BFA93C 0016A0 003C+00 2/2 0/0 0/0 .text            __dt__16_GlSph_LstInfo_cFv */
_GlSph_LstInfo_c::~_GlSph_LstInfo_c() {
    // NONMATCHING
}

/* 80BFA93C-80BFA94C 0016DC 0010+00 1/1 0/0 0/0 .text            __ct__16_GlSph_LstInfo_cFv */
_GlSph_LstInfo_c::_GlSph_LstInfo_c() {
    // NONMATCHING
}

/* 80BFA94C-80BFA954 0016EC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80BFA94C() {
    // NONMATCHING
}

/* 80BFA954-80BFA95C 0016F4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80BFA954() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFAFEC-80BFAFF0 00044C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80BFAFEC[4];
#pragma pop

/* 80BFAFF0-80BFAFF4 000450 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80BFAFF0[4];
#pragma pop

/* 80BFAFF4-80BFAFF8 000454 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80BFAFF4[4];
#pragma pop

/* 80BFAFF8-80BFAFFC 000458 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80BFAFF8[4];
#pragma pop

/* 80BFAFFC-80BFB000 00045C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BFAFFC[4];
#pragma pop

/* 80BFB000-80BFB004 000460 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BFB000[4];
#pragma pop

/* 80BFB004-80BFB008 000464 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80BFB004[4];
#pragma pop

/* 80BFB008-80BFB00C 000468 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80BFB008[4];
#pragma pop

/* 80BFB00C-80BFB010 00046C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80BFB00C[4];
#pragma pop

/* 80BFB010-80BFB014 000470 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80BFB010[4];
#pragma pop

/* 80BFB014-80BFB018 000474 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80BFB014[4];
#pragma pop

/* 80BFB018-80BFB01C 000478 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80BFB018[4];
#pragma pop

/* 80BFB01C-80BFB020 00047C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80BFB01C[4];
#pragma pop

/* 80BFB020-80BFB024 000480 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BFB020[4];
#pragma pop

/* 80BFB024-80BFB028 000484 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80BFB024[4];
#pragma pop

/* 80BFB028-80BFB02C 000488 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80BFB028[4];
#pragma pop

/* 80BFB02C-80BFB030 00048C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80BFB02C[4];
#pragma pop

/* 80BFB030-80BFB034 000490 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80BFB030[4];
#pragma pop

/* 80BFB034-80BFB038 000494 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80BFB034[4];
#pragma pop

/* 80BFB038-80BFB03C 000498 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80BFB038[4];
#pragma pop

/* 80BFB03C-80BFB040 00049C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80BFB03C[4];
#pragma pop

/* 80BFB040-80BFB044 0004A0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BFB040[4];
#pragma pop

/* 80BFB044-80BFB048 0004A4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BFB044[4];
#pragma pop

/* 80BFB048-80BFB04C 0004A8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BFB048[4];
#pragma pop

/* 80BFB04C-80BFB050 0004AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80BFB04C[4];
#pragma pop

/* 80BFA9C4-80BFA9C4 000054 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */