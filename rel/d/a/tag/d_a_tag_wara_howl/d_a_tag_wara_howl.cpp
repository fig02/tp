//
// Generated By: dol2asm
// Translation Unit: d_a_tag_wara_howl
//

#include "rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct fopAc_ac_c {
    /* 80018B64 */ fopAc_ac_c();
    /* 80018C8C */ ~fopAc_ac_c();
};

struct daTagWrHowl_c {
    /* 80D63F38 */ daTagWrHowl_c();
    /* 80D63F74 */ ~daTagWrHowl_c();
    /* 80D63FD4 */ void create();
    /* 80D6402C */ bool Delete();
    /* 80D64034 */ bool draw();
    /* 80D6403C */ void execute();
    /* 80D64090 */ void init();
    /* 80D640B4 */ void chkWlfInTag();
};

//
// Forward References:
//

extern "C" void __ct__13daTagWrHowl_cFv();
extern "C" void __dt__13daTagWrHowl_cFv();
extern "C" void create__13daTagWrHowl_cFv();
extern "C" bool Delete__13daTagWrHowl_cFv();
extern "C" bool draw__13daTagWrHowl_cFv();
extern "C" void execute__13daTagWrHowl_cFv();
extern "C" void init__13daTagWrHowl_cFv();
extern "C" void chkWlfInTag__13daTagWrHowl_cFv();
extern "C" static void daTagWrHowl_create__FP13daTagWrHowl_c();
extern "C" static void daTagWrHowl_Delete__FP13daTagWrHowl_c();
extern "C" static void daTagWrHowl_execute__FP13daTagWrHowl_c();
extern "C" static void daTagWrHowl_draw__FP13daTagWrHowl_c();

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void __dl__FPv();
extern "C" void PSVECSquareDistance();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern u8 g_dComIfG_gameInfo[122384];

//
// Declarations:
//

/* ############################################################################################## */
/* 80D64204-80D64224 -00001 0020+00 1/0 0/0 0/0 .data            daTagWrHowl_METHODS */
SECTION_DATA static void* daTagWrHowl_METHODS[8] = {
    (void*)daTagWrHowl_create__FP13daTagWrHowl_c,
    (void*)daTagWrHowl_Delete__FP13daTagWrHowl_c,
    (void*)daTagWrHowl_execute__FP13daTagWrHowl_c,
    (void*)NULL,
    (void*)daTagWrHowl_draw__FP13daTagWrHowl_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80D64224-80D64254 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_WaraHowl */
SECTION_DATA extern void* g_profile_Tag_WaraHowl[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x018B0000, (void*)&g_fpcLf_Method,
    (void*)0x00000574, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x02DD0000, (void*)&daTagWrHowl_METHODS,
    (void*)0x00040000, (void*)0x000E0000,
};

/* 80D64254-80D64260 000050 000C+00 2/2 0/0 0/0 .data            __vt__13daTagWrHowl_c */
SECTION_DATA extern void* __vt__13daTagWrHowl_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daTagWrHowl_cFv,
};

/* 80D63F38-80D63F74 000078 003C+00 2/2 0/0 0/0 .text            __ct__13daTagWrHowl_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daTagWrHowl_c::daTagWrHowl_c() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl/__ct__13daTagWrHowl_cFv.s"
}
#pragma pop

/* 80D63F74-80D63FD4 0000B4 0060+00 1/0 0/0 0/0 .text            __dt__13daTagWrHowl_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daTagWrHowl_c::~daTagWrHowl_c() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl/__dt__13daTagWrHowl_cFv.s"
}
#pragma pop

/* 80D63FD4-80D6402C 000114 0058+00 1/1 0/0 0/0 .text            create__13daTagWrHowl_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagWrHowl_c::create() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl/create__13daTagWrHowl_cFv.s"
}
#pragma pop

/* 80D6402C-80D64034 00016C 0008+00 1/1 0/0 0/0 .text            Delete__13daTagWrHowl_cFv */
bool daTagWrHowl_c::Delete() {
    return true;
}

/* 80D64034-80D6403C 000174 0008+00 1/1 0/0 0/0 .text            draw__13daTagWrHowl_cFv */
bool daTagWrHowl_c::draw() {
    return true;
}

/* 80D6403C-80D64090 00017C 0054+00 1/1 0/0 0/0 .text            execute__13daTagWrHowl_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagWrHowl_c::execute() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl/execute__13daTagWrHowl_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D64200-80D64204 000000 0004+00 1/1 0/0 0/0 .rodata          @3680 */
SECTION_RODATA static f32 const lit_3680 = 50.0f;
COMPILER_STRIP_GATE(0x80D64200, &lit_3680);

/* 80D64090-80D640B4 0001D0 0024+00 1/1 0/0 0/0 .text            init__13daTagWrHowl_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagWrHowl_c::init() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl/init__13daTagWrHowl_cFv.s"
}
#pragma pop

/* 80D640B4-80D64144 0001F4 0090+00 1/1 0/0 0/0 .text            chkWlfInTag__13daTagWrHowl_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTagWrHowl_c::chkWlfInTag() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl/chkWlfInTag__13daTagWrHowl_cFv.s"
}
#pragma pop

/* 80D64144-80D64198 000284 0054+00 1/0 0/0 0/0 .text daTagWrHowl_create__FP13daTagWrHowl_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daTagWrHowl_create(daTagWrHowl_c* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl/daTagWrHowl_create__FP13daTagWrHowl_c.s"
}
#pragma pop

/* 80D64198-80D641B8 0002D8 0020+00 1/0 0/0 0/0 .text daTagWrHowl_Delete__FP13daTagWrHowl_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daTagWrHowl_Delete(daTagWrHowl_c* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl/daTagWrHowl_Delete__FP13daTagWrHowl_c.s"
}
#pragma pop

/* 80D641B8-80D641D8 0002F8 0020+00 1/0 0/0 0/0 .text daTagWrHowl_execute__FP13daTagWrHowl_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daTagWrHowl_execute(daTagWrHowl_c* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl/daTagWrHowl_execute__FP13daTagWrHowl_c.s"
}
#pragma pop

/* 80D641D8-80D641F8 000318 0020+00 1/0 0/0 0/0 .text            daTagWrHowl_draw__FP13daTagWrHowl_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daTagWrHowl_draw(daTagWrHowl_c* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl/daTagWrHowl_draw__FP13daTagWrHowl_c.s"
}
#pragma pop
