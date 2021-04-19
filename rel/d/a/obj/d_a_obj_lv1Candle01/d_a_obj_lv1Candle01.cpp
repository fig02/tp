//
// Generated By: dol2asm
// Translation Unit: d_a_obj_lv1Candle01
//

#include "rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct request_of_phase_process_class {};

struct mDoMtx_stack_c {
    static u8 now[48];
};

struct mDoHIO_entry_c {
    /* 80C56CD8 */ ~mDoHIO_entry_c();
};

struct fopAc_ac_c {};

struct daLv1Cdl01_c {
    /* 80C56D20 */ void setBaseMtx();
    /* 80C56DA8 */ void CreateHeap();
    /* 80C56E14 */ void create();
    /* 80C570D8 */ void lightInit();
    /* 80C57164 */ void setLight();
    /* 80C57194 */ void cutLight();
    /* 80C571C4 */ void pointLightProc();
    /* 80C57274 */ void Execute(f32 (**)[3][4]);
    /* 80C575F4 */ void Draw();
    /* 80C57698 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];
};

struct daLv1Cdl01_HIO_c {
    /* 80C56CAC */ daLv1Cdl01_HIO_c();
    /* 80C5777C */ ~daLv1Cdl01_HIO_c();
};

struct dKy_tevstr_c {};

struct J3DModelData {};

struct cXyz {};

struct dScnKy_env_light_c {
    /* 801A37C4 */ void settingTevStruct(int, cXyz*, dKy_tevstr_c*);
    /* 801A4DA0 */ void setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*);
};

struct dRes_info_c {};

struct dRes_control_c {
    /* 8003C2EC */ void getRes(char const*, s32, dRes_info_c*, int);
};

struct _GXColor {};

struct dPa_control_c {
    /* 8004D1B8 */ void setSimple(u16, cXyz const*, dKy_tevstr_c const*, u8, _GXColor const&,
                                  _GXColor const&, int, f32);
};

struct dCcD_Stts {
    /* 80083860 */ void Init(int, int, fopAc_ac_c*);
};

struct dCcD_SrcCyl {};

struct dCcD_GStts {
    /* 80083760 */ dCcD_GStts();
};

struct dCcD_GObjInf {
    /* 80083A28 */ dCcD_GObjInf();
    /* 80084460 */ void ChkTgHit();
    /* 800844F8 */ void GetTgHitObj();
    /* 80084548 */ void GetTgHitGObj();
    /* 8008457C */ void GetTgHitObjSe();
    /* 800845B0 */ void getHitSeID(u8, int);
};

struct dCcD_Cyl {
    /* 800848B4 */ void Set(dCcD_SrcCyl const&);
};

struct dBgW {};

struct cBgS_PolyInfo {};

struct csXyz {};

struct dBgS_MoveBgActor {
    /* 80078624 */ dBgS_MoveBgActor();
    /* 80078690 */ bool Create();
    /* 800786B0 */ bool IsDelete();
    /* 800786B8 */ bool ToFore();
    /* 800786C0 */ bool ToBack();
    /* 800787BC */ void MoveBGCreate(char const*, int,
                                     void (*)(dBgW*, void*, cBgS_PolyInfo const&, bool, cXyz*,
                                              csXyz*, csXyz*),
                                     u32, f32 (*)[3][4]);
    /* 800788DC */ void MoveBGDelete();
    /* 80078950 */ void MoveBGExecute();
};

struct cM3dGCyl {
    /* 8026F1DC */ void SetC(cXyz const&);
    /* 8026F1F8 */ void SetH(f32);
    /* 8026F200 */ void SetR(f32);
    /* 80C57048 */ ~cM3dGCyl();
};

struct cM3dGAab {
    /* 80C57090 */ ~cM3dGAab();
};

struct cCcD_Obj {
    /* 80263A48 */ void GetAc();
};

struct cCcS {
    /* 80264BA8 */ void Set(cCcD_Obj*);
};

struct Z2SoundObjSimple {
    /* 802BE844 */ Z2SoundObjSimple();
};

struct Z2SoundObjBase {
    /* 802BDFF8 */ void deleteObject();
    /* 802BE4A4 */ void startCollisionSE(u32, u32, Z2SoundObjBase*);
};

struct JAISoundID {};

struct Vec {};

struct Z2SeMgr {
    /* 802AB984 */ void seStart(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
    /* 802AC50C */ void seStartLevel(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
};

struct Z2AudioMgr {
    static u8 mAudioMgrPtr[4 + 4 /* padding */];
};

struct LIGHT_INFLUENCE {};

struct J3DModel {};

//
// Forward References:
//

extern "C" void __ct__16daLv1Cdl01_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__12daLv1Cdl01_cFv();
extern "C" void CreateHeap__12daLv1Cdl01_cFv();
extern "C" void create__12daLv1Cdl01_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void lightInit__12daLv1Cdl01_cFv();
extern "C" void setLight__12daLv1Cdl01_cFv();
extern "C" void cutLight__12daLv1Cdl01_cFv();
extern "C" void pointLightProc__12daLv1Cdl01_cFv();
extern "C" void Execute__12daLv1Cdl01_cFPPA3_A4_f();
extern "C" void Draw__12daLv1Cdl01_cFv();
extern "C" void Delete__12daLv1Cdl01_cFv();
extern "C" static void daLv1Cdl01_Draw__FP12daLv1Cdl01_c();
extern "C" static void daLv1Cdl01_Execute__FP12daLv1Cdl01_c();
extern "C" static void daLv1Cdl01_Delete__FP12daLv1Cdl01_c();
extern "C" static void daLv1Cdl01_Create__FP10fopAc_ac_c();
extern "C" void __dt__16daLv1Cdl01_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv1Candle01_cpp();
extern "C" u8 const mCcDObjInfo__12daLv1Cdl01_c[48];
extern "C" extern char const* const d_a_obj_lv1Candle01__stringBase0;
extern "C" u8 mCcDCyl__12daLv1Cdl01_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitObjSe__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_plight_set__FP15LIGHT_INFLUENCE();
extern "C" void dKy_plight_cut__FP15LIGHT_INFLUENCE();
extern "C" void dKy_BossLight_set__FP4cXyzP8_GXColorfUc();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void PSMTXCopy();
extern "C" void PSMTXTrans();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_env_light[4880];
extern "C" extern u8 j3dSys[284];
extern "C" extern u32 g_whiteColor;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C578CC-80C57910 000000 0044+00 2/2 0/0 0/0 .data            mCcDCyl__12daLv1Cdl01_c */
SECTION_DATA u8 daLv1Cdl01_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C57910-80C57930 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv1Cdl01_Method */
SECTION_DATA static void* l_daLv1Cdl01_Method[8] = {
    (void*)daLv1Cdl01_Create__FP10fopAc_ac_c,
    (void*)daLv1Cdl01_Delete__FP12daLv1Cdl01_c,
    (void*)daLv1Cdl01_Execute__FP12daLv1Cdl01_c,
    (void*)NULL,
    (void*)daLv1Cdl01_Draw__FP12daLv1Cdl01_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80C57930-80C57960 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv1Cdl01 */
SECTION_DATA extern void* g_profile_Obj_Lv1Cdl01[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x003A0000, (void*)&g_fpcLf_Method,
    (void*)0x0000078C, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x01EF0000, (void*)&l_daLv1Cdl01_Method,
    (void*)0x00060000, (void*)0x000E0000,
};

/* 80C57960-80C5796C 000094 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C5796C-80C57978 0000A0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C57978-80C579A0 0000AC 0028+00 1/1 0/0 0/0 .data            __vt__12daLv1Cdl01_c */
SECTION_DATA extern void* __vt__12daLv1Cdl01_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daLv1Cdl01_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__12daLv1Cdl01_cFPPA3_A4_f,
    (void*)Draw__12daLv1Cdl01_cFv,
    (void*)Delete__12daLv1Cdl01_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C579A0-80C579AC 0000D4 000C+00 2/2 0/0 0/0 .data            __vt__16daLv1Cdl01_HIO_c */
SECTION_DATA extern void* __vt__16daLv1Cdl01_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daLv1Cdl01_HIO_cFv,
};

/* 80C579AC-80C579B8 0000E0 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C56CAC-80C56CD8 0000EC 002C+00 1/1 0/0 0/0 .text            __ct__16daLv1Cdl01_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daLv1Cdl01_HIO_c::daLv1Cdl01_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/__ct__16daLv1Cdl01_HIO_cFv.s"
}
#pragma pop

/* 80C56CD8-80C56D20 000118 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm mDoHIO_entry_c::~mDoHIO_entry_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/__dt__14mDoHIO_entry_cFv.s"
}
#pragma pop

/* 80C56D20-80C56DA8 000160 0088+00 2/2 0/0 0/0 .text            setBaseMtx__12daLv1Cdl01_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daLv1Cdl01_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/setBaseMtx__12daLv1Cdl01_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C578C0-80C578C0 000064 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C578C0 = "lv1cdl01";
#pragma pop

/* 80C56DA8-80C56E14 0001E8 006C+00 1/0 0/0 0/0 .text            CreateHeap__12daLv1Cdl01_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daLv1Cdl01_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/CreateHeap__12daLv1Cdl01_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C5785C-80C5788C 000000 0030+00 4/4 0/0 0/0 .rodata          mCcDObjInfo__12daLv1Cdl01_c */
SECTION_RODATA u8 const daLv1Cdl01_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x79, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C5785C, &daLv1Cdl01_c::mCcDObjInfo);

/* 80C5788C-80C57890 000030 0004+00 1/1 0/0 0/0 .rodata          @3723 */
SECTION_RODATA static f32 const lit_3723 = 120.0f;
COMPILER_STRIP_GATE(0x80C5788C, &lit_3723);

/* 80C56E14-80C57048 000254 0234+00 1/1 0/0 0/0 .text            create__12daLv1Cdl01_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daLv1Cdl01_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/create__12daLv1Cdl01_cFv.s"
}
#pragma pop

/* 80C57048-80C57090 000488 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cM3dGCyl::~cM3dGCyl() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80C57090-80C570D8 0004D0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cM3dGAab::~cM3dGAab() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C57890-80C57894 000034 0004+00 0/1 0/0 0/0 .rodata          @3811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3811 = 10.0f;
COMPILER_STRIP_GATE(0x80C57890, &lit_3811);
#pragma pop

/* 80C57894-80C57898 000038 0004+00 0/1 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3812 = 500.0f;
COMPILER_STRIP_GATE(0x80C57894, &lit_3812);
#pragma pop

/* 80C57898-80C5789C 00003C 0004+00 0/3 0/0 0/0 .rodata          @3813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3813 = 1.0f;
COMPILER_STRIP_GATE(0x80C57898, &lit_3813);
#pragma pop

/* 80C5789C-80C578A0 000040 0004+00 0/3 0/0 0/0 .rodata          @3814 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3814[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C5789C, &lit_3814);
#pragma pop

/* 80C570D8-80C57164 000518 008C+00 1/1 0/0 0/0 .text            lightInit__12daLv1Cdl01_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daLv1Cdl01_c::lightInit() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/lightInit__12daLv1Cdl01_cFv.s"
}
#pragma pop

/* 80C57164-80C57194 0005A4 0030+00 2/2 0/0 0/0 .text            setLight__12daLv1Cdl01_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daLv1Cdl01_c::setLight() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/setLight__12daLv1Cdl01_cFv.s"
}
#pragma pop

/* 80C57194-80C571C4 0005D4 0030+00 1/1 0/0 0/0 .text            cutLight__12daLv1Cdl01_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daLv1Cdl01_c::cutLight() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/cutLight__12daLv1Cdl01_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C578A0-80C578A4 000044 0004+00 0/1 0/0 0/0 .rodata          @3832 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3832 = 0xBC6642FF;
COMPILER_STRIP_GATE(0x80C578A0, &lit_3832);
#pragma pop

/* 80C578A4-80C578A8 000048 0004+00 0/1 0/0 0/0 .rodata          @3840 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3840 = 0.5f;
COMPILER_STRIP_GATE(0x80C578A4, &lit_3840);
#pragma pop

/* 80C578A8-80C578AC 00004C 0004+00 0/1 0/0 0/0 .rodata          @3841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3841 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C578A8, &lit_3841);
#pragma pop

/* 80C578AC-80C578B0 000050 0004+00 0/1 0/0 0/0 .rodata          @3842 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3842 = 0x38D1B717;
COMPILER_STRIP_GATE(0x80C578AC, &lit_3842);
#pragma pop

/* 80C578B0-80C578B4 000054 0004+00 0/1 0/0 0/0 .rodata          @3843 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3843 = 0x358637BD;
COMPILER_STRIP_GATE(0x80C578B0, &lit_3843);
#pragma pop

/* 80C571C4-80C57274 000604 00B0+00 1/1 0/0 0/0 .text            pointLightProc__12daLv1Cdl01_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daLv1Cdl01_c::pointLightProc() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/pointLightProc__12daLv1Cdl01_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C578B4-80C578B8 000058 0004+00 0/1 0/0 0/0 .rodata          @3914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3914 = -1.0f;
COMPILER_STRIP_GATE(0x80C578B4, &lit_3914);
#pragma pop

/* 80C578B8-80C578BC 00005C 0004+00 0/1 0/0 0/0 .rodata          @3915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3915 = 25.0f;
COMPILER_STRIP_GATE(0x80C578B8, &lit_3915);
#pragma pop

/* 80C578BC-80C578C0 000060 0004+00 0/1 0/0 0/0 .rodata          @3916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3916 = 130.0f;
COMPILER_STRIP_GATE(0x80C578BC, &lit_3916);
#pragma pop

/* 80C57274-80C575F4 0006B4 0380+00 1/0 0/0 0/0 .text            Execute__12daLv1Cdl01_cFPPA3_A4_f
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daLv1Cdl01_c::Execute(f32 (**param_0)[3][4]) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/Execute__12daLv1Cdl01_cFPPA3_A4_f.s"
}
#pragma pop

/* 80C575F4-80C57698 000A34 00A4+00 1/0 0/0 0/0 .text            Draw__12daLv1Cdl01_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daLv1Cdl01_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/Draw__12daLv1Cdl01_cFv.s"
}
#pragma pop

/* 80C57698-80C576F0 000AD8 0058+00 1/0 0/0 0/0 .text            Delete__12daLv1Cdl01_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daLv1Cdl01_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/Delete__12daLv1Cdl01_cFv.s"
}
#pragma pop

/* 80C576F0-80C5771C 000B30 002C+00 1/0 0/0 0/0 .text            daLv1Cdl01_Draw__FP12daLv1Cdl01_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daLv1Cdl01_Draw(daLv1Cdl01_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/daLv1Cdl01_Draw__FP12daLv1Cdl01_c.s"
}
#pragma pop

/* 80C5771C-80C5773C 000B5C 0020+00 1/0 0/0 0/0 .text daLv1Cdl01_Execute__FP12daLv1Cdl01_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daLv1Cdl01_Execute(daLv1Cdl01_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/daLv1Cdl01_Execute__FP12daLv1Cdl01_c.s"
}
#pragma pop

/* 80C5773C-80C5775C 000B7C 0020+00 1/0 0/0 0/0 .text            daLv1Cdl01_Delete__FP12daLv1Cdl01_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daLv1Cdl01_Delete(daLv1Cdl01_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/daLv1Cdl01_Delete__FP12daLv1Cdl01_c.s"
}
#pragma pop

/* 80C5775C-80C5777C 000B9C 0020+00 1/0 0/0 0/0 .text            daLv1Cdl01_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daLv1Cdl01_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/daLv1Cdl01_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80C5777C-80C577D8 000BBC 005C+00 2/1 0/0 0/0 .text            __dt__16daLv1Cdl01_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daLv1Cdl01_HIO_c::~daLv1Cdl01_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/__dt__16daLv1Cdl01_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C579C0-80C579CC 000008 000C+00 1/1 0/0 0/0 .bss             @3620 */
static u8 lit_3620[12];

/* 80C579CC-80C579D4 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[8];

/* 80C577D8-80C57848 000C18 0070+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv1Candle01_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_obj_lv1Candle01_cpp() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv1Candle01/d_a_obj_lv1Candle01/__sinit_d_a_obj_lv1Candle01_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C577D8, __sinit_d_a_obj_lv1Candle01_cpp);
#pragma pop

/* 80C578C0-80C578C0 000064 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
