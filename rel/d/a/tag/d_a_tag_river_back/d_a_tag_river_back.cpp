//
// Generated By: dol2asm
// Translation Unit: d_a_tag_river_back
//

#include "rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct request_of_phase_process_class {};

struct fopAc_ac_c {
    /* 80018B64 */ fopAc_ac_c();
};

struct daTagRiverBack_c {
    /* 80D5F2F8 */ void Create();
    /* 80D5F360 */ void create();
    /* 80D5F3F0 */ void execute();
    /* 80D5F48C */ void event_proc_call();
    /* 80D5F548 */ void actionWait();
    /* 80D5F5BC */ void actionOrderEvent();
    /* 80D5F66C */ void actionEvent();
    /* 80D5F70C */ void actionDead();
    /* 80D5F710 */ void demoProc();
    /* 80D5F88C */ void _delete();
};

struct dSv_info_c {
    /* 80035360 */ void isSwitch(int, int) const;
};

struct dEvt_control_c {
    /* 80042468 */ void reset();
};

struct dEvent_manager_c {
    /* 80047758 */ void getEventIdx(fopAc_ac_c*, char const*, u8);
    /* 80047A78 */ void endCheck(s16);
    /* 80047B1C */ void getMyStaffId(char const*, fopAc_ac_c*, int);
    /* 80047D4C */ void getIsAddvance(int);
    /* 80047E10 */ void getMyActIdx(int, char const* const*, int, int, int);
    /* 800480EC */ void getMySubstanceP(int, char const*, int);
    /* 8004817C */ void cutEnd(int);
};

struct JAISoundID {};

struct Vec {};

struct Z2SeMgr {
    /* 802AB984 */ void seStart(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
};

//
// Forward References:
//

static void daTagRiverBack_Execute(daTagRiverBack_c*);
static void daTagRiverBack_Delete(daTagRiverBack_c*);
static void daTagRiverBack_Create(daTagRiverBack_c*);
static void cLib_calcTimer__template0(u8*);
extern "C" extern u32 lit_1787[1 + 4 /* padding */];
extern "C" extern void* g_profile_Tag_RiverBack[12];

extern "C" void Create__16daTagRiverBack_cFv();
extern "C" void create__16daTagRiverBack_cFv();
extern "C" void execute__16daTagRiverBack_cFv();
extern "C" void event_proc_call__16daTagRiverBack_cFv();
extern "C" void actionWait__16daTagRiverBack_cFv();
extern "C" void actionOrderEvent__16daTagRiverBack_cFv();
extern "C" void actionEvent__16daTagRiverBack_cFv();
extern "C" void actionDead__16daTagRiverBack_cFv();
extern "C" void demoProc__16daTagRiverBack_cFv();
extern "C" void _delete__16daTagRiverBack_cFv();
extern "C" static void daTagRiverBack_Execute__FP16daTagRiverBack_c();
extern "C" static void daTagRiverBack_Delete__FP16daTagRiverBack_c();
extern "C" static void daTagRiverBack_Create__FP16daTagRiverBack_c();
extern "C" static void func_80D5F920();
extern "C" extern u32 lit_1787[1 + 4 /* padding */];
extern "C" extern void* g_profile_Tag_RiverBack[12];

//
// External References:
//

void fopAcM_orderOtherEventId(fopAc_ac_c*, s16, u8, u16, u16, u16);
void dStage_changeScene(int, f32, u32, s8, s16, int);
void dComIfG_resLoad(request_of_phase_process_class*, char const*);
void dComIfG_resDelete(request_of_phase_process_class*, char const*);
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80D5FA68[4];

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80D5FA68[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80D5F944-80D5F948 0004+00 s=1 e=0 z=0  None .rodata    @3813 */
SECTION_RODATA static u32 const lit_3813 = 0x3F800000;

/* 80D5F948-80D5F94C 0004+00 s=1 e=0 z=0  None .rodata    @3814 */
SECTION_RODATA static u32 const lit_3814 = 0xBF800000;

/* 80D5F94C-80D5F950 0004+00 s=1 e=0 z=0  None .rodata    @3815 */
SECTION_RODATA static u8 const lit_3815[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80D5F950-80D5F980 0030+00 s=5 e=0 z=0  None .rodata    None */
SECTION_RODATA static u8 const struct_80D5F950[48] = {
    /* 80D5F950 0007 stringBase_80D5F950 @stringBase0 */
    0x52,
    0x76,
    0x42,
    0x61,
    0x63,
    0x6B,
    0x00,
    /* 80D5F957 000B data_80D5F957 None */
    0x52,
    0x49,
    0x56,
    0x45,
    0x52,
    0x5F,
    0x42,
    0x41,
    0x43,
    0x4B,
    0x00,
    /* 80D5F962 0007 data_80D5F962 None */
    0x72,
    0x76,
    0x62,
    0x61,
    0x63,
    0x6B,
    0x00,
    /* 80D5F969 0005 data_80D5F969 None */
    0x57,
    0x41,
    0x49,
    0x54,
    0x00,
    /* 80D5F96E 0012 data_80D5F96E None */
    0x53,
    0x43,
    0x45,
    0x4E,
    0x45,
    0x5F,
    0x43,
    0x48,
    0x47,
    0x00,
    0x54,
    0x69,
    0x6D,
    0x65,
    0x72,
    0x00,
    0x00,
    0x00,
};

/* 80D5F980-80D5F98C 000C+00 s=1 e=0 z=0  None .data      cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D5F98C-80D5F9A0 0004+10 s=0 e=0 z=0  None .data      @1787 */
SECTION_DATA u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};

/* 80D5F9A0-80D5F9A4 0004+00 s=3 e=0 z=0  None .data      l_arcName */
SECTION_DATA static void* l_arcName = (void*)(((char*)&struct_80D5F950) + 0x0) /* @stringBase0 */;

/* 80D5F9A4-80D5F9A8 0004+00 s=1 e=0 z=0  None .data      l_evName */
SECTION_DATA static void* l_evName = (void*)(((char*)&struct_80D5F950) + 0x7) /* None */;

/* 80D5F2F8-80D5F360 0068+00 s=1 e=0 z=0  None .text      Create__16daTagRiverBack_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagRiverBack_c::Create() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/Create__16daTagRiverBack_cFv.s"
}
#pragma pop

/* 80D5F360-80D5F3F0 0090+00 s=1 e=0 z=0  None .text      create__16daTagRiverBack_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagRiverBack_c::create() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/func_80D5F360.s"
}
#pragma pop

/* 80D5F3F0-80D5F48C 009C+00 s=1 e=0 z=0  None .text      execute__16daTagRiverBack_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagRiverBack_c::execute() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/execute__16daTagRiverBack_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D5F9A8-80D5F9AC 0004+00 s=1 e=0 z=0  None .data      l_staffName */
SECTION_DATA static void* l_staffName = (void*)(((char*)&struct_80D5F950) + 0x12) /* None */;

/* 80D5F9AC-80D5F9B8 000C+00 s=1 e=0 z=0  None .data      @3712 */
SECTION_DATA static void* lit_3712[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__16daTagRiverBack_cFv,
};

/* 80D5F9B8-80D5F9C4 000C+00 s=1 e=0 z=0  None .data      @3713 */
SECTION_DATA static void* lit_3713[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderEvent__16daTagRiverBack_cFv,
};

/* 80D5F9C4-80D5F9D0 000C+00 s=1 e=0 z=0  None .data      @3714 */
SECTION_DATA static void* lit_3714[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEvent__16daTagRiverBack_cFv,
};

/* 80D5F9D0-80D5F9DC 000C+00 s=1 e=0 z=0  None .data      @3715 */
SECTION_DATA static void* lit_3715[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__16daTagRiverBack_cFv,
};

/* 80D5F9DC-80D5FA0C 0030+00 s=1 e=0 z=0  None .data      l_func$3711 */
SECTION_DATA static u8 l_func[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D5F48C-80D5F548 00BC+00 s=1 e=0 z=0  None .text      event_proc_call__16daTagRiverBack_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagRiverBack_c::event_proc_call() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/event_proc_call__16daTagRiverBack_cFv.s"
}
#pragma pop

/* 80D5F548-80D5F5BC 0074+00 s=1 e=0 z=0  None .text      actionWait__16daTagRiverBack_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagRiverBack_c::actionWait() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/actionWait__16daTagRiverBack_cFv.s"
}
#pragma pop

/* 80D5F5BC-80D5F66C 00B0+00 s=1 e=0 z=0  None .text      actionOrderEvent__16daTagRiverBack_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagRiverBack_c::actionOrderEvent() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/actionOrderEvent__16daTagRiverBack_cFv.s"
}
#pragma pop

/* 80D5F66C-80D5F70C 00A0+00 s=1 e=0 z=0  None .text      actionEvent__16daTagRiverBack_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagRiverBack_c::actionEvent() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/actionEvent__16daTagRiverBack_cFv.s"
}
#pragma pop

/* 80D5F70C-80D5F710 0004+00 s=1 e=0 z=0  None .text      actionDead__16daTagRiverBack_cFv */
void daTagRiverBack_c::actionDead() {
    /* empty function */
}

/* ############################################################################################## */
/* 80D5FA0C-80D5FA14 0008+00 s=1 e=0 z=0  None .data      action_table$3769 */
SECTION_DATA static void* action_table[2] = {
    (void*)(((char*)&struct_80D5F950) + 0x19) /* None */,
    (void*)(((char*)&struct_80D5F950) + 0x1E) /* None */,
};

/* 80D5F710-80D5F88C 017C+00 s=2 e=0 z=0  None .text      demoProc__16daTagRiverBack_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagRiverBack_c::demoProc() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/demoProc__16daTagRiverBack_cFv.s"
}
#pragma pop

/* 80D5F88C-80D5F8C0 0034+00 s=1 e=0 z=0  None .text      _delete__16daTagRiverBack_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagRiverBack_c::_delete() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/_delete__16daTagRiverBack_cFv.s"
}
#pragma pop

/* 80D5F8C0-80D5F8E0 0020+00 s=1 e=0 z=0  None .text daTagRiverBack_Execute__FP16daTagRiverBack_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daTagRiverBack_Execute(daTagRiverBack_c* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/daTagRiverBack_Execute__FP16daTagRiverBack_c.s"
}
#pragma pop

/* 80D5F8E0-80D5F900 0020+00 s=1 e=0 z=0  None .text daTagRiverBack_Delete__FP16daTagRiverBack_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daTagRiverBack_Delete(daTagRiverBack_c* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/daTagRiverBack_Delete__FP16daTagRiverBack_c.s"
}
#pragma pop

/* 80D5F900-80D5F920 0020+00 s=1 e=0 z=0  None .text daTagRiverBack_Create__FP16daTagRiverBack_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daTagRiverBack_Create(daTagRiverBack_c* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/daTagRiverBack_Create__FP16daTagRiverBack_c.s"
}
#pragma pop

/* 80D5F920-80D5F93C 001C+00 s=1 e=0 z=0  None .text      cLib_calcTimer<Uc>__FPUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void cLib_calcTimer__template0(u8* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_river_back/d_a_tag_river_back/func_80D5F920.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D5FA14-80D5FA34 0020+00 s=1 e=0 z=0  None .data      l_daTagRiverBack_Method */
SECTION_DATA static void* l_daTagRiverBack_Method[8] = {
    (void*)daTagRiverBack_Create__FP16daTagRiverBack_c,
    (void*)daTagRiverBack_Delete__FP16daTagRiverBack_c,
    (void*)daTagRiverBack_Execute__FP16daTagRiverBack_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80D5FA34-80D5FA64 0030+00 s=0 e=0 z=1  None .data      g_profile_Tag_RiverBack */
SECTION_DATA void* g_profile_Tag_RiverBack[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01800000, (void*)&g_fpcLf_Method,
    (void*)0x0000057C, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x022C0000, (void*)&l_daTagRiverBack_Method,
    (void*)0x00040000, (void*)0x000E0000,
};