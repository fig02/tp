//
// Generated By: dol2asm
// Translation Unit: d_a_obj_bkdoor
//

#include "rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct request_of_phase_process_class {};

struct mDoMtx_stack_c {
    static u8 now[48];
};

struct fopAc_ac_c {};

struct daObjBkDoor_c {
    /* 80578D4C */ void initBaseMtx();
    /* 80578D88 */ void setBaseMtx();
    /* 80578E14 */ void Create();
    /* 80578EA0 */ void CreateHeap();
    /* 80578F20 */ void create1st();
    /* 80578FC0 */ void openCheck();
    /* 8057902C */ void Execute(f32 (**)[3][4]);
    /* 805792E4 */ void Draw();
    /* 80579388 */ void Delete();
};

struct dSv_event_flag_c {
    static u8 saveBitLabels[1644 + 4 /* padding */];
};

struct dSv_event_c {
    /* 800349BC */ void isEventBit(u16) const;
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

struct dBgW {};

struct cBgS_PolyInfo {};

struct csXyz {};

struct dBgS_MoveBgActor {
    /* 80078624 */ dBgS_MoveBgActor();
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

struct JAISoundID {};

struct Vec {};

struct Z2SeMgr {
    /* 802AB984 */ void seStart(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
};

struct Z2AudioMgr {
    static u8 mAudioMgrPtr[4 + 4 /* padding */];
};

struct JMath {
    static u8 sincosTable_[65536];
};

struct J3DModel {};

//
// Forward References:
//

extern "C" static void search_door__FPvPv();
extern "C" void initBaseMtx__13daObjBkDoor_cFv();
extern "C" void setBaseMtx__13daObjBkDoor_cFv();
extern "C" void Create__13daObjBkDoor_cFv();
extern "C" void CreateHeap__13daObjBkDoor_cFv();
extern "C" void create1st__13daObjBkDoor_cFv();
extern "C" void openCheck__13daObjBkDoor_cFv();
extern "C" void Execute__13daObjBkDoor_cFPPA3_A4_f();
extern "C" void Draw__13daObjBkDoor_cFv();
extern "C" void Delete__13daObjBkDoor_cFv();
extern "C" static void daObjBkDoor_create1st__FP13daObjBkDoor_c();
extern "C" static void daObjBkDoor_MoveBGDelete__FP13daObjBkDoor_c();
extern "C" static void daObjBkDoor_MoveBGExecute__FP13daObjBkDoor_c();
extern "C" static void daObjBkDoor_MoveBGDraw__FP13daObjBkDoor_c();
extern "C" extern char const* const d_a_obj_bkdoor__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dLib_checkActorInRectangle__FP10fopAc_ac_cP10fopAc_ac_cPC4cXyzPC4cXyz();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void PSMTXCopy();
extern "C" void PSMTXTrans();
extern "C" void _savegpr_27();
extern "C" void _restgpr_27();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_env_light[4880];
extern "C" extern u8 j3dSys[284];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80578D18-80578D4C 000078 0034+00 1/1 0/0 0/0 .text            search_door__FPvPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void search_door(void* param_0, void* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/search_door__FPvPv.s"
}
#pragma pop

/* 80578D4C-80578D88 0000AC 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjBkDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBkDoor_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/initBaseMtx__13daObjBkDoor_cFv.s"
}
#pragma pop

/* 80578D88-80578E14 0000E8 008C+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjBkDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBkDoor_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/setBaseMtx__13daObjBkDoor_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80579490-80579498 000000 0008+00 2/2 0/0 0/0 .rodata          l_bmd */
SECTION_RODATA static u8 const l_bmd[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80579490, &l_bmd);

/* 80579498-805794A0 000008 0008+00 1/1 0/0 0/0 .rodata          l_dzb */
SECTION_RODATA static u8 const l_dzb[8] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09,
};
COMPILER_STRIP_GATE(0x80579498, &l_dzb);

/* 805794A0-805794B4 000010 0014+00 0/0 0/0 0/0 .rodata          l_col_offsetX */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_col_offsetX[20] = {
    0x42, 0xA0, 0x00, 0x00, 0x43, 0x20, 0x00, 0x00, 0x43, 0x70,
    0x00, 0x00, 0x43, 0xA0, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805794A0, &l_col_offsetX);
#pragma pop

/* 805794B4-805794E4 000024 0030+00 0/1 0/0 0/0 .rodata          l_roll_crash_check_areaL */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_roll_crash_check_areaL[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x0C, 0x00, 0x00, 0x44, 0x89, 0x80, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xC3, 0x0C, 0x00, 0x00, 0x44, 0x89, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x43, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805794B4, &l_roll_crash_check_areaL);
#pragma pop

/* 805794E4-80579514 000054 0030+00 0/1 0/0 0/0 .rodata          l_roll_crash_check_areaR */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_roll_crash_check_areaR[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x0C, 0x00, 0x00, 0xC4, 0x89, 0x80, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xC3, 0x0C, 0x00, 0x00, 0xC4, 0x89, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x43, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805794E4, &l_roll_crash_check_areaR);
#pragma pop

/* 80579514-80579518 000084 0004+00 1/1 0/0 0/0 .rodata          @3702 */
SECTION_RODATA static f32 const lit_3702 = 2.0f;
COMPILER_STRIP_GATE(0x80579514, &lit_3702);

/* 80578E14-80578EA0 000174 008C+00 1/0 0/0 0/0 .text            Create__13daObjBkDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBkDoor_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/Create__13daObjBkDoor_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80579538-80579538 0000A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80579538 = "A_BkDoor";
#pragma pop

/* 80579544-80579548 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_bkdoor__stringBase0;

/* 80578EA0-80578F20 000200 0080+00 1/0 0/0 0/0 .text            CreateHeap__13daObjBkDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBkDoor_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/CreateHeap__13daObjBkDoor_cFv.s"
}
#pragma pop

/* 80578F20-80578FC0 000280 00A0+00 1/1 0/0 0/0 .text            create1st__13daObjBkDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBkDoor_c::create1st() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/create1st__13daObjBkDoor_cFv.s"
}
#pragma pop

/* 80578FC0-8057902C 000320 006C+00 1/1 0/0 0/0 .text            openCheck__13daObjBkDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBkDoor_c::openCheck() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/openCheck__13daObjBkDoor_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80579518-8057951C 000088 0004+00 0/1 0/0 0/0 .rodata          @3817 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3817 = -600.0f;
COMPILER_STRIP_GATE(0x80579518, &lit_3817);
#pragma pop

/* 8057951C-80579520 00008C 0004+00 0/1 0/0 0/0 .rodata          @3818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3818 = 600.0f;
COMPILER_STRIP_GATE(0x8057951C, &lit_3818);
#pragma pop

/* 80579520-80579524 000090 0004+00 0/1 0/0 0/0 .rodata          @3819 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3819 = 700.0f;
COMPILER_STRIP_GATE(0x80579520, &lit_3819);
#pragma pop

/* 80579524-80579528 000094 0004+00 0/1 0/0 0/0 .rodata          @3820 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3820 = 1.0f;
COMPILER_STRIP_GATE(0x80579524, &lit_3820);
#pragma pop

/* 80579528-8057952C 000098 0004+00 0/1 0/0 0/0 .rodata          @3821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3821 = -1.0f;
COMPILER_STRIP_GATE(0x80579528, &lit_3821);
#pragma pop

/* 8057952C-80579530 00009C 0004+00 0/1 0/0 0/0 .rodata          @3822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3822 = -700.0f;
COMPILER_STRIP_GATE(0x8057952C, &lit_3822);
#pragma pop

/* 80579530-80579534 0000A0 0004+00 0/1 0/0 0/0 .rodata          @3823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3823 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80579530, &lit_3823);
#pragma pop

/* 80579534-80579538 0000A4 0004+00 0/1 0/0 0/0 .rodata          @3824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3824 = 20.0f;
COMPILER_STRIP_GATE(0x80579534, &lit_3824);
#pragma pop

/* 8057902C-805792E4 00038C 02B8+00 1/0 0/0 0/0 .text            Execute__13daObjBkDoor_cFPPA3_A4_f
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBkDoor_c::Execute(f32 (**param_0)[3][4]) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/Execute__13daObjBkDoor_cFPPA3_A4_f.s"
}
#pragma pop

/* 805792E4-80579388 000644 00A4+00 1/0 0/0 0/0 .text            Draw__13daObjBkDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBkDoor_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/Draw__13daObjBkDoor_cFv.s"
}
#pragma pop

/* 80579388-805793BC 0006E8 0034+00 1/0 0/0 0/0 .text            Delete__13daObjBkDoor_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBkDoor_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/Delete__13daObjBkDoor_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80579548-80579568 -00001 0020+00 1/0 0/0 0/0 .data            daObjBkDoor_METHODS */
SECTION_DATA static void* daObjBkDoor_METHODS[8] = {
    (void*)daObjBkDoor_create1st__FP13daObjBkDoor_c,
    (void*)daObjBkDoor_MoveBGDelete__FP13daObjBkDoor_c,
    (void*)daObjBkDoor_MoveBGExecute__FP13daObjBkDoor_c,
    (void*)NULL,
    (void*)daObjBkDoor_MoveBGDraw__FP13daObjBkDoor_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80579568-80579598 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_BkDoor */
SECTION_DATA extern void* g_profile_Obj_BkDoor[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x00620000, (void*)&g_fpcLf_Method,
    (void*)0x000005C0, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x01C30000, (void*)&daObjBkDoor_METHODS,
    (void*)0x00040100, (void*)0x000E0000,
};

/* 80579598-805795C0 000054 0028+00 1/1 0/0 0/0 .data            __vt__13daObjBkDoor_c */
SECTION_DATA extern void* __vt__13daObjBkDoor_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObjBkDoor_cFv,
    (void*)Create__13daObjBkDoor_cFv,
    (void*)Execute__13daObjBkDoor_cFPPA3_A4_f,
    (void*)Draw__13daObjBkDoor_cFv,
    (void*)Delete__13daObjBkDoor_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 805793BC-8057941C 00071C 0060+00 1/0 0/0 0/0 .text daObjBkDoor_create1st__FP13daObjBkDoor_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjBkDoor_create1st(daObjBkDoor_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/daObjBkDoor_create1st__FP13daObjBkDoor_c.s"
}
#pragma pop

/* 8057941C-8057943C 00077C 0020+00 1/0 0/0 0/0 .text daObjBkDoor_MoveBGDelete__FP13daObjBkDoor_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjBkDoor_MoveBGDelete(daObjBkDoor_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/daObjBkDoor_MoveBGDelete__FP13daObjBkDoor_c.s"
}
#pragma pop

/* 8057943C-8057945C 00079C 0020+00 1/0 0/0 0/0 .text daObjBkDoor_MoveBGExecute__FP13daObjBkDoor_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjBkDoor_MoveBGExecute(daObjBkDoor_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/daObjBkDoor_MoveBGExecute__FP13daObjBkDoor_c.s"
}
#pragma pop

/* 8057945C-80579488 0007BC 002C+00 1/0 0/0 0/0 .text daObjBkDoor_MoveBGDraw__FP13daObjBkDoor_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjBkDoor_MoveBGDraw(daObjBkDoor_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bkdoor/d_a_obj_bkdoor/daObjBkDoor_MoveBGDraw__FP13daObjBkDoor_c.s"
}
#pragma pop

/* 80579538-80579538 0000A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
