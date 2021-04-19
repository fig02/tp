//
// Generated By: dol2asm
// Translation Unit: d_a_bg
//

#include "rel/d/a/d_a_bg/d_a_bg.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct mDoMtx_stack_c {
    static u8 now[48];
};

struct mDoLib_clipper {
    static u8 mClipper[92];
};

struct J3DMaterialTable {};

struct J3DAnmTextureSRTKey {};

struct mDoExt_btkAnm {
    /* 8000D63C */ void init(J3DMaterialTable*, J3DAnmTextureSRTKey*, int, int, f32, s16, s16);
    /* 8000D6D8 */ void entry(J3DMaterialTable*, f32);
};

struct J3DAnmTevRegKey {};

struct mDoExt_brkAnm {
    /* 8000D70C */ void init(J3DMaterialTable*, J3DAnmTevRegKey*, int, int, f32, s16, s16);
    /* 8000D7A8 */ void entry(J3DMaterialTable*, f32);
};

struct mDoExt_baseAnm {
    /* 8000D428 */ void play();
};

struct fopAc_ac_c {
    /* 80018B64 */ fopAc_ac_c();
    /* 80018C8C */ ~fopAc_ac_c();
};

struct daSus_c {
    struct room_c {
        /* 800311FC */ void reset();
    };

    static u8 mRoom[256];
};

struct daGrass_c {
    /* 800319C8 */ void deleteRoomGrass(int);
    /* 80031A20 */ void deleteRoomFlower(int);
};

struct daBg_c {
    /* 80457BF8 */ void setArcName();
    /* 804582B8 */ void createHeap();
    /* 80458788 */ ~daBg_c();
    /* 804588C4 */ void draw();
    /* 8045906C */ void create();
};

struct J3DModelData {};

struct daBg_btkAnm_c {
    /* 80457F34 */ void create(J3DModelData*, J3DAnmTextureSRTKey*, int);
    /* 80458088 */ void entry(J3DModelData*);
    /* 804580CC */ void play();
};

struct daBg_brkAnm_c {
    /* 804580F0 */ void create(J3DModelData*, J3DAnmTevRegKey*, int);
    /* 80458230 */ void entry(J3DModelData*);
    /* 80458274 */ void play();
};

struct dSv_event_c {
    /* 800349BC */ void isEventBit(u16) const;
};

struct dStage_roomControl_c {
    /* 800243B0 */ void getMemoryBlock(int);

    static u8 mStatus[65792];
};

struct dKy_tevstr_c {};

struct cXyz {};

struct dScnKy_env_light_c {
    /* 801A37C4 */ void settingTevStruct(int, cXyz*, dKy_tevstr_c*);
    /* 801A4DA0 */ void setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*);
};

struct dRes_info_c {};

struct dRes_control_c {
    /* 8003C37C */ void getRes(char const*, char const*, dRes_info_c*, int);
};

struct dDemo_c {
    static u8 m_frame[4];
};

struct dBgW_Base {};

struct dBgWKCol {
    /* 8007E6F4 */ dBgWKCol();
    /* 8007E804 */ void create(void*, void*);
};

struct dBgW {
    /* 8007B970 */ dBgW();
};

struct dBgS {
    /* 80074A08 */ void Regist(dBgW_Base*, fopAc_ac_c*);
};

struct cBgD_t {};

struct cBgW {
    /* 80079F38 */ void Set(cBgD_t*, u32, f32 (*)[3][4]);
};

struct cBgS {
    /* 80074250 */ void Release(dBgW_Base*);
};

struct Vec {};

struct JUTNameTab {
    /* 802DEAF8 */ void getName(u16) const;
};

struct JKRHeap {};

struct JKRSolidHeap {
    /* 802D0A24 */ void create(u32, JKRHeap*, bool);
    /* 802D0BF4 */ void adjustSize();
};

struct J3DUClipper {
    /* 8027378C */ void calcViewFrustum();
    /* 80273A44 */ void clip(f32 const (*)[4], Vec*, Vec*) const;
};

struct J3DTexNoAnm {
    /* 80457E20 */ ~J3DTexNoAnm();
    /* 80457E68 */ J3DTexNoAnm();
    /* 8045933C */ void calc(u16*) const;
};

struct J3DTexMtxAnm {
    /* 80457E8C */ ~J3DTexMtxAnm();
    /* 80457EC8 */ J3DTexMtxAnm();
};

struct J3DTevKColorAnm {
    /* 80457D78 */ ~J3DTevKColorAnm();
    /* 80457DB4 */ J3DTevKColorAnm();
};

struct J3DTevColorAnm {
    /* 80457DCC */ ~J3DTevColorAnm();
    /* 80457E08 */ J3DTevColorAnm();
};

struct J3DModel {};

struct J3DMaterialAnm {
    /* 8032C320 */ void initialize();
};

struct J3DMatColorAnm {
    /* 80457EE0 */ ~J3DMatColorAnm();
    /* 80457F1C */ J3DMatColorAnm();
};

struct J3DLightObj {
    /* 80458750 */ J3DLightObj();
};

struct J3DLightInfo {
    /* 803256C4 */ void operator=(J3DLightInfo const&);
};

struct J3DFrameCtrl {
    /* 803283FC */ void init(s16);
    /* 80458040 */ ~J3DFrameCtrl();
};

struct J3DAnmTexPattern {
    /* 8032AF50 */ void getTexNo(u16, u16*) const;
};

//
// Forward References:
//

extern "C" void setArcName__6daBg_cFv();
extern "C" static void createMatAnm__FP12J3DModelDataUs();
extern "C" void __dt__15J3DTevKColorAnmFv();
extern "C" void __ct__15J3DTevKColorAnmFv();
extern "C" void __dt__14J3DTevColorAnmFv();
extern "C" void __ct__14J3DTevColorAnmFv();
extern "C" void __dt__11J3DTexNoAnmFv();
extern "C" void __ct__11J3DTexNoAnmFv();
extern "C" void __dt__12J3DTexMtxAnmFv();
extern "C" void __ct__12J3DTexMtxAnmFv();
extern "C" void __dt__14J3DMatColorAnmFv();
extern "C" void __ct__14J3DMatColorAnmFv();
extern "C" void create__13daBg_btkAnm_cFP12J3DModelDataP19J3DAnmTextureSRTKeyi();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void entry__13daBg_btkAnm_cFP12J3DModelData();
extern "C" void play__13daBg_btkAnm_cFv();
extern "C" void create__13daBg_brkAnm_cFP12J3DModelDataP15J3DAnmTevRegKeyi();
extern "C" void entry__13daBg_brkAnm_cFP12J3DModelData();
extern "C" void play__13daBg_brkAnm_cFv();
extern "C" static void checkCreateHeap__FP10fopAc_ac_c();
extern "C" void createHeap__6daBg_cFv();
extern "C" void __ct__11J3DLightObjFv();
extern "C" void __dt__6daBg_cFv();
extern "C" static void daBg_Draw__FP6daBg_c();
extern "C" void draw__6daBg_cFv();
extern "C" static void daBg_Execute__FP6daBg_c();
extern "C" static bool daBg_IsDelete__FP6daBg_c();
extern "C" static void daBg_Delete__FP6daBg_c();
extern "C" static void daBg_Create__FP10fopAc_ac_c();
extern "C" void create__6daBg_cFv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" extern char const* const d_a_bg__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelEntryDL__FP8J3DModel();
extern "C" void mDoExt_setupStageTexture__FP12J3DModelData();
extern "C" void mDoExt_setCurrentHeap__FP7JKRHeap();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopMsgM_messageSetDemo__FUl();
extern "C" void getMemoryBlock__20dStage_roomControl_cFi();
extern "C" void dComIfGp_getMapTrans__FiPfPfPs();
extern "C" void dComIfGs_BossLife_public_Get__Fv();
extern "C" void dComIfG_getRoomArcName__Fi();
extern "C" void reset__Q27daSus_c6room_cFv();
extern "C" void deleteRoomGrass__9daGrass_cFi();
extern "C" void deleteRoomFlower__9daGrass_cFi();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void __ct__8dBgWKColFv();
extern "C" void create__8dBgWKColFPvPv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_tevstr_init__FP12dKy_tevstr_cScUc();
extern "C" void dKy_bg_MAxx_proc__FPv();
extern "C" void calcViewFrustum__11J3DUClipperFv();
extern "C" void clip__11J3DUClipperCFPA4_CfP3VecP3Vec();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void create__12JKRSolidHeapFUlP7JKRHeapb();
extern "C" void adjustSize__12JKRSolidHeapFv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void __as__12J3DLightInfoFRC12J3DLightInfo();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void PSMTXCopy();
extern "C" void PSMTXTrans();
extern "C" void __construct_array();
extern "C" void _savegpr_15();
extern "C" void _savegpr_20();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_15();
extern "C" void _restgpr_20();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" void memcmp();
extern "C" void strcmp();
extern "C" void strncpy();
extern "C" extern u8 const j3dDefaultLightInfo[52];
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mClipper__14mDoLib_clipper[92];
extern "C" u8 mStatus__20dStage_roomControl_c[65792];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mRoom__7daSus_c[256];
extern "C" extern u8 g_env_light[4880];
extern "C" extern u8 j3dSys[284];
extern "C" u8 m_frame__7dDemo_c[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 804595B8-804595D8 000000 0020+00 1/1 0/0 0/0 .bss             arcName$3823 */
static u8 arcName[32];

/* 80457BF8-80457C38 000078 0040+00 1/1 0/0 0/0 .text            setArcName__6daBg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBg_c::setArcName() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/setArcName__6daBg_cFv.s"
}
#pragma pop

/* 80457C38-80457D78 0000B8 0140+00 2/2 0/0 0/0 .text            createMatAnm__FP12J3DModelDataUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void createMatAnm(J3DModelData* param_0, u16 param_1) {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/createMatAnm__FP12J3DModelDataUs.s"
}
#pragma pop

/* 80457D78-80457DB4 0001F8 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTevKColorAnm::~J3DTevKColorAnm() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__dt__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80457DB4-80457DCC 000234 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTevKColorAnm::J3DTevKColorAnm() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__ct__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80457DCC-80457E08 00024C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTevColorAnm::~J3DTevColorAnm() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__dt__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 80457E08-80457E20 000288 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTevColorAnm::J3DTevColorAnm() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__ct__14J3DTevColorAnmFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80459424-80459468 000000 0042+02 1/1 0/0 0/0 .data
 * l_modelName$localstatic3$createHeap__6daBg_cFv               */
SECTION_DATA static u8 data_80459424[66 + 2 /* padding */] = {
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x2E,
    0x62,
    0x6D,
    0x64,
    0x00,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x31,
    0x2E,
    0x62,
    0x6D,
    0x64,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x32,
    0x2E,
    0x62,
    0x6D,
    0x64,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x33,
    0x2E,
    0x62,
    0x6D,
    0x64,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x34,
    0x2E,
    0x62,
    0x6D,
    0x64,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x35,
    0x2E,
    0x62,
    0x6D,
    0x64,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 80459468-804594AC 000044 0042+02 1/1 0/0 0/0 .data
 * l_modelName2$localstatic4$createHeap__6daBg_cFv              */
SECTION_DATA static u8 data_80459468[66 + 2 /* padding */] = {
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x2E,
    0x62,
    0x64,
    0x6C,
    0x00,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x31,
    0x2E,
    0x62,
    0x64,
    0x6C,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x32,
    0x2E,
    0x62,
    0x64,
    0x6C,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x33,
    0x2E,
    0x62,
    0x64,
    0x6C,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x34,
    0x2E,
    0x62,
    0x64,
    0x6C,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x35,
    0x2E,
    0x62,
    0x64,
    0x6C,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 804594AC-804594F0 000088 0042+02 1/1 0/0 0/0 .data l_btkName$localstatic5$createHeap__6daBg_cFv
 */
SECTION_DATA static u8 data_804594AC[66 + 2 /* padding */] = {
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x2E,
    0x62,
    0x74,
    0x6B,
    0x00,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x31,
    0x2E,
    0x62,
    0x74,
    0x6B,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x32,
    0x2E,
    0x62,
    0x74,
    0x6B,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x33,
    0x2E,
    0x62,
    0x74,
    0x6B,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x34,
    0x2E,
    0x62,
    0x74,
    0x6B,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x35,
    0x2E,
    0x62,
    0x74,
    0x6B,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 804594F0-80459534 0000CC 0042+02 1/1 0/0 0/0 .data l_brkName$localstatic6$createHeap__6daBg_cFv
 */
SECTION_DATA static u8 data_804594F0[66 + 2 /* padding */] = {
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x2E,
    0x62,
    0x72,
    0x6B,
    0x00,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x31,
    0x2E,
    0x62,
    0x72,
    0x6B,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x32,
    0x2E,
    0x62,
    0x72,
    0x6B,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x33,
    0x2E,
    0x62,
    0x72,
    0x6B,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x34,
    0x2E,
    0x62,
    0x72,
    0x6B,
    0x00,
    0x6D,
    0x6F,
    0x64,
    0x65,
    0x6C,
    0x35,
    0x2E,
    0x62,
    0x72,
    0x6B,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 80459534-8045954C 000110 0018+00 1/1 0/0 0/0 .data l_tevStrType$localstatic3$draw__6daBg_cFv */
SECTION_DATA static u8 data_80459534[24] = {
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x22,
    0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x20,
};

/* 8045954C-8045956C -00001 0020+00 1/0 0/0 0/0 .data            l_daBg_Method */
SECTION_DATA static void* l_daBg_Method[8] = {
    (void*)daBg_Create__FP10fopAc_ac_c,
    (void*)daBg_Delete__FP6daBg_c,
    (void*)daBg_Execute__FP6daBg_c,
    (void*)daBg_IsDelete__FP6daBg_c,
    (void*)daBg_Draw__FP6daBg_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 8045956C-804595A0 -00001 0034+00 0/0 0/0 1/0 .data            g_profile_BG */
SECTION_DATA extern void* g_profile_BG[13] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,     (void*)0x02DC0000, (void*)&g_fpcLf_Method,
    (void*)0x000005F4, (void*)NULL,           (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x02F10000, (void*)&l_daBg_Method, (void*)0x00060000, (void*)NULL,
    (void*)NULL,
};

/* 804595A0-804595AC 00017C 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 804595AC-804595B8 000188 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80457E20-80457E68 0002A0 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTexNoAnm::~J3DTexNoAnm() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__dt__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80457E68-80457E8C 0002E8 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTexNoAnm::J3DTexNoAnm() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__ct__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80457E8C-80457EC8 00030C 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTexMtxAnm::~J3DTexMtxAnm() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__dt__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80457EC8-80457EE0 000348 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DTexMtxAnm::J3DTexMtxAnm() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__ct__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 80457EE0-80457F1C 000360 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DMatColorAnm::~J3DMatColorAnm() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__dt__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80457F1C-80457F34 00039C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DMatColorAnm::J3DMatColorAnm() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__ct__14J3DMatColorAnmFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80459374-80459380 000000 000C+00 1/1 0/0 0/0 .rodata          @3756 */
SECTION_RODATA static u8 const lit_3756[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80459374, &lit_3756);

/* 80459380-80459384 00000C 0004+00 2/3 0/0 0/0 .rodata          @3900 */
SECTION_RODATA static f32 const lit_3900 = 1.0f;
COMPILER_STRIP_GATE(0x80459380, &lit_3900);

/* 80457F34-80458040 0003B4 010C+00 1/1 0/0 0/0 .text
 * create__13daBg_btkAnm_cFP12J3DModelDataP19J3DAnmTextureSRTKeyi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBg_btkAnm_c::create(J3DModelData* param_0, J3DAnmTextureSRTKey* param_1, int param_2) {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/create__13daBg_btkAnm_cFP12J3DModelDataP19J3DAnmTextureSRTKeyi.s"
}
#pragma pop

/* 80458040-80458088 0004C0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DFrameCtrl::~J3DFrameCtrl() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80459384-80459388 000010 0004+00 4/4 0/0 0/0 .rodata          @3914 */
SECTION_RODATA static u8 const lit_3914[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80459384, &lit_3914);

/* 80458088-804580CC 000508 0044+00 1/1 0/0 0/0 .text entry__13daBg_btkAnm_cFP12J3DModelData */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBg_btkAnm_c::entry(J3DModelData* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/entry__13daBg_btkAnm_cFP12J3DModelData.s"
}
#pragma pop

/* 804580CC-804580F0 00054C 0024+00 1/1 0/0 0/0 .text            play__13daBg_btkAnm_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBg_btkAnm_c::play() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/play__13daBg_btkAnm_cFv.s"
}
#pragma pop

/* 804580F0-80458230 000570 0140+00 1/1 0/0 0/0 .text
 * create__13daBg_brkAnm_cFP12J3DModelDataP15J3DAnmTevRegKeyi   */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBg_brkAnm_c::create(J3DModelData* param_0, J3DAnmTevRegKey* param_1, int param_2) {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/create__13daBg_brkAnm_cFP12J3DModelDataP15J3DAnmTevRegKeyi.s"
}
#pragma pop

/* 80458230-80458274 0006B0 0044+00 1/1 0/0 0/0 .text entry__13daBg_brkAnm_cFP12J3DModelData */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBg_brkAnm_c::entry(J3DModelData* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/entry__13daBg_brkAnm_cFP12J3DModelData.s"
}
#pragma pop

/* 80458274-80458298 0006F4 0024+00 1/1 0/0 0/0 .text            play__13daBg_brkAnm_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBg_brkAnm_c::play() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/play__13daBg_brkAnm_cFv.s"
}
#pragma pop

/* 80458298-804582B8 000718 0020+00 1/1 0/0 0/0 .text            checkCreateHeap__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void checkCreateHeap(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/checkCreateHeap__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80459388-8045938C 000014 0004+00 1/1 0/0 0/0 .rodata          @4125 */
SECTION_RODATA static f32 const lit_4125 = -1.0f;
COMPILER_STRIP_GATE(0x80459388, &lit_4125);

/* 804593A8-804593A8 000034 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_804593A8 = "00";
SECTION_DEAD static char const* const stringBase_804593AB = "01";
SECTION_DEAD static char const* const stringBase_804593AE = "12";
SECTION_DEAD static char const* const stringBase_804593B1 = "18";
SECTION_DEAD static char const* const stringBase_804593B4 = "room.dzb";
SECTION_DEAD static char const* const stringBase_804593BD = "room.kcl";
SECTION_DEAD static char const* const stringBase_804593C6 = "room.plc";
#pragma pop

/* 804582B8-80458750 000738 0498+00 2/2 0/0 1/1 .text            createHeap__6daBg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBg_c::createHeap() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/createHeap__6daBg_cFv.s"
}
#pragma pop

/* 80458750-80458788 000BD0 0038+00 1/1 0/0 0/0 .text            __ct__11J3DLightObjFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DLightObj::J3DLightObj() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__ct__11J3DLightObjFv.s"
}
#pragma pop

/* 80458788-804588A4 000C08 011C+00 1/1 0/0 0/0 .text            __dt__6daBg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daBg_c::~daBg_c() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/__dt__6daBg_cFv.s"
}
#pragma pop

/* 804588A4-804588C4 000D24 0020+00 1/0 0/0 0/0 .text            daBg_Draw__FP6daBg_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daBg_Draw(daBg_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/daBg_Draw__FP6daBg_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 8045938C-80459390 000018 0004+00 0/1 0/0 0/0 .rodata          @4479 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4479 = 1000000.0f;
COMPILER_STRIP_GATE(0x8045938C, &lit_4479);
#pragma pop

/* 80459390-80459394 00001C 0004+00 0/1 0/0 0/0 .rodata          @4480 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4480 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80459390, &lit_4480);
#pragma pop

/* 80459394-8045939C 000020 0004+04 0/1 0/0 0/0 .rodata          @4481 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4481[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80459394, &lit_4481);
#pragma pop

/* 8045939C-804593A4 000028 0008+00 1/2 0/0 0/0 .rodata          @4483 */
SECTION_RODATA static u8 const lit_4483[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8045939C, &lit_4483);

/* 804593A8-804593A8 000034 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_804593CF = "MA12";
SECTION_DEAD static char const* const stringBase_804593D4 = "MA18";
SECTION_DEAD static char const* const stringBase_804593D9 = "MA15";
SECTION_DEAD static char const* const stringBase_804593DE = "MA09";
SECTION_DEAD static char const* const stringBase_804593E3 = "MA05";
SECTION_DEAD static char const* const stringBase_804593E8 = "F_SP127";
SECTION_DEAD static char const* const stringBase_804593F0 = "R_SP127";
SECTION_DEAD static char const* const stringBase_804593F8 = "MA00_Enkei_Tree_Color";
SECTION_DEAD static char const* const stringBase_8045940E = "MA00_Gake";
SECTION_DEAD static char const* const stringBase_80459418 = "MA00_Kusa";
#pragma pop

/* 804588C4-80458F38 000D44 0674+00 1/1 0/0 0/0 .text            draw__6daBg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBg_c::draw() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/draw__6daBg_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804593A4-804593A8 000030 0004+00 1/1 0/0 0/0 .rodata          @4524 */
SECTION_RODATA static f32 const lit_4524 = 100.0f;
COMPILER_STRIP_GATE(0x804593A4, &lit_4524);

/* 80458F38-8045901C 0013B8 00E4+00 1/0 0/0 0/0 .text            daBg_Execute__FP6daBg_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daBg_Execute(daBg_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/daBg_Execute__FP6daBg_c.s"
}
#pragma pop

/* 8045901C-80459024 00149C 0008+00 1/0 0/0 0/0 .text            daBg_IsDelete__FP6daBg_c */
static bool daBg_IsDelete(daBg_c* param_0) {
    return true;
}

/* 80459024-8045904C 0014A4 0028+00 1/0 0/0 0/0 .text            daBg_Delete__FP6daBg_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daBg_Delete(daBg_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/daBg_Delete__FP6daBg_c.s"
}
#pragma pop

/* 8045904C-8045906C 0014CC 0020+00 1/0 0/0 0/0 .text            daBg_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daBg_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/daBg_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 8045906C-8045933C 0014EC 02D0+00 1/1 0/0 0/0 .text            create__6daBg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBg_c::create() {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/create__6daBg_cFv.s"
}
#pragma pop

/* 8045933C-8045936C 0017BC 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DTexNoAnm::calc(u16* param_0) const {
    nofralloc
#include "asm/rel/d/a/d_a_bg/d_a_bg/calc__11J3DTexNoAnmCFPUs.s"
}
#pragma pop

/* 804593A8-804593A8 000034 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
