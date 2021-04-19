//
// Generated By: dol2asm
// Translation Unit: d/msg/d_msg_out_font
//

#include "d/msg/d_msg_out_font.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct ResTIMG {};

struct J2DTextBox {};

struct J2DRotateAxis {};

struct J2DPicture {
    /* 802FC708 */ J2DPicture(ResTIMG const*);
};

struct J2DPane {
    /* 802F71DC */ void rotate(f32, f32, J2DRotateAxis, f32);
    /* 802F7AFC */ void getParentPane();
};

struct COutFont_c {
    /* 80225C94 */ COutFont_c(u8);
    /* 80225D60 */ ~COutFont_c();
    /* 80225E7C */ void setPane(J2DPicture*);
    /* 80225EA8 */ void createPane();
    /* 80226CF8 */ void initialize();
    /* 80226D4C */ void drawFont(J2DTextBox*, u8, f32, f32, f32, f32, u32, u8);
    /* 80226DA8 */ void setAlphaRatio(f32);
    /* 80226DB0 */ void draw(J2DTextBox*, f32, f32, f32);
    /* 80228448 */ void reset(J2DTextBox*);
    /* 80228490 */ void setBlendAnime(J2DPicture*, s16);
    /* 80228530 */ void getBtiName(int);
};

struct COutFontSet_c {
    /* 80225BB8 */ COutFontSet_c();
    /* 80225BF4 */ ~COutFontSet_c();
    /* 80225C3C */ void initialize();
    /* 80225C70 */ void drawFont(J2DTextBox*, u8, f32, f32, f32, f32, u32, u8);
};

//
// Forward References:
//

extern "C" void __ct__13COutFontSet_cFv();
extern "C" void __dt__13COutFontSet_cFv();
extern "C" void initialize__13COutFontSet_cFv();
extern "C" void drawFont__13COutFontSet_cFP10J2DTextBoxUcffffUlUc();
extern "C" void __ct__10COutFont_cFUc();
extern "C" void __dt__10COutFont_cFv();
extern "C" void setPane__10COutFont_cFP10J2DPicture();
extern "C" void createPane__10COutFont_cFv();
extern "C" void initialize__10COutFont_cFv();
extern "C" void drawFont__10COutFont_cFP10J2DTextBoxUcffffUlUc();
extern "C" void setAlphaRatio__10COutFont_cFf();
extern "C" void draw__10COutFont_cFP10J2DTextBoxfff();
extern "C" void reset__10COutFont_cFP10J2DTextBox();
extern "C" void setBlendAnime__10COutFont_cFP10J2DPictures();
extern "C" void getBtiName__10COutFont_cFi();
extern "C" extern char const* const d_msg_d_msg_out_font__stringBase0;

//
// External References:
//

extern "C" void fopMsgM_valueIncrease__FiiUc();
extern "C" void dMeter2Info_getNumberTextureName__Fi();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void rotate__7J2DPaneFff13J2DRotateAxisf();
extern "C" void getParentPane__7J2DPaneFv();
extern "C" void __ct__10J2DPictureFPC7ResTIMG();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_MsgObject_HIO_c[1040];

//
// Declarations:
//

/* ############################################################################################## */
/* 80399350-80399350 0259B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80399350 = "font_07_02.bti";
SECTION_DEAD static char const* const stringBase_8039935F = "font_20.bti";
SECTION_DEAD static char const* const stringBase_8039936B = "font_21.bti";
SECTION_DEAD static char const* const stringBase_80399377 = "font_30.bti";
SECTION_DEAD static char const* const stringBase_80399383 = "font_31.bti";
SECTION_DEAD static char const* const stringBase_8039938F = "font_34.bti";
SECTION_DEAD static char const* const stringBase_8039939B = "font_00.bti";
SECTION_DEAD static char const* const stringBase_803993A7 = "font_01.bti";
SECTION_DEAD static char const* const stringBase_803993B3 = "font_09.bti";
SECTION_DEAD static char const* const stringBase_803993BF = "font_04.bti";
SECTION_DEAD static char const* const stringBase_803993CB = "font_05.bti";
SECTION_DEAD static char const* const stringBase_803993D7 = "font_02.bti";
SECTION_DEAD static char const* const stringBase_803993E3 = "font_03.bti";
SECTION_DEAD static char const* const stringBase_803993EF = "font_06.bti";
SECTION_DEAD static char const* const stringBase_803993FB = "font_08.bti";
SECTION_DEAD static char const* const stringBase_80399407 = "font_07_01.bti";
SECTION_DEAD static char const* const stringBase_80399416 = "font_10.bti";
SECTION_DEAD static char const* const stringBase_80399422 = "font_15.bti";
SECTION_DEAD static char const* const stringBase_8039942E = "font_12.bti";
SECTION_DEAD static char const* const stringBase_8039943A = "im_map_icon_portal_4ia_40_05.bti";
SECTION_DEAD static char const* const stringBase_8039945B = "font_16_backlight.bti";
SECTION_DEAD static char const* const stringBase_80399471 = "font_13.bti";
SECTION_DEAD static char const* const stringBase_8039947D = "font_14.bti";
SECTION_DEAD static char const* const stringBase_80399489 = "im_zelda_item_icon_rupy_13.bti";
SECTION_DEAD static char const* const stringBase_803994A8 = "";
SECTION_DEAD static char const* const stringBase_803994A9 = "st_bompoach_lv1.bti";
SECTION_DEAD static char const* const stringBase_803994BD = "font_46.bti";
SECTION_DEAD static char const* const stringBase_803994C9 = "font_47.bti";
SECTION_DEAD static char const* const stringBase_803994D5 = "font_35.bti";
SECTION_DEAD static char const* const stringBase_803994E1 = "font_36.bti";
SECTION_DEAD static char const* const stringBase_803994ED = "font_19.bti";
SECTION_DEAD static char const* const stringBase_803994F9 = "font_22.bti";
SECTION_DEAD static char const* const stringBase_80399505 = "font_23.bti";
SECTION_DEAD static char const* const stringBase_80399511 = "font_24.bti";
SECTION_DEAD static char const* const stringBase_8039951D = "font_25.bti";
SECTION_DEAD static char const* const stringBase_80399529 = "font_40.bti";
SECTION_DEAD static char const* const stringBase_80399535 = "font_39.bti";
SECTION_DEAD static char const* const stringBase_80399541 = "font_29.bti";
SECTION_DEAD static char const* const stringBase_8039954D = "font_28.bti";
SECTION_DEAD static char const* const stringBase_80399559 = "font_32.bti";
SECTION_DEAD static char const* const stringBase_80399565 = "font_33.bti";
SECTION_DEAD static char const* const stringBase_80399571 = "font_41.bti";
SECTION_DEAD static char const* const stringBase_8039957D = "font_42.bti";
SECTION_DEAD static char const* const stringBase_80399589 = "font_50.bti";
SECTION_DEAD static char const* const stringBase_80399595 = "font_49.bti";
SECTION_DEAD static char const* const stringBase_803995A1 = "font_51.bti";
SECTION_DEAD static char const* const stringBase_803995AD = "font_52.bti";
SECTION_DEAD static char const* const stringBase_803995B9 = "font_53.bti";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_803995C5 = "\0\0";
#pragma pop

/* 803BFA90-803BFBA8 -00001 0118+00 1/1 0/0 0/0 .data            @4395 */
SECTION_DATA static void* lit_4395[70] = {
    (void*)(((char*)createPane__10COutFont_cFv) + 0xDC),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x140),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x1A0),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x200),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x200),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x200),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x200),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x2C4),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x200),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x328),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xE20),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xE20),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xE20),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xE20),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x328),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x328),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x328),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x328),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x328),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x328),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x3E0),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x440),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x4A0),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x4FC),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x558),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x5B0),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x60C),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x670),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x6CC),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x77C),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x7D8),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x870),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x870),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x870),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x870),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x870),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x870),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x870),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x870),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x870),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x870),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x8C8),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x724),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x6CC),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x920),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x920),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x920),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x920),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x978),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xA30),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xA30),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xAE8),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xB44),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xB44),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xB44),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x920),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x920),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x920),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x920),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xB9C),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xC54),
    (void*)(((char*)createPane__10COutFont_cFv) + 0x920),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xD0C),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xB44),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xB44),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xA30),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xA30),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xA30),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xA30),
    (void*)(((char*)createPane__10COutFont_cFv) + 0xDC4),
};

/* 803BFBA8-803BFCAC -00001 0104+00 1/1 0/0 0/0 .data            @5000 */
SECTION_DATA static void* lit_5000[65] = {
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x5B8),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x5B8),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x150C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x150C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x6F0),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x198),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x29C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x4B4),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xB8C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x824),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x8A0),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x91C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x998),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xA14),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xAD0),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xD40),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xD40),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xD40),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x150C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xC90),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xDE4),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xF48),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xC90),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xC90),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x3A0),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xF7C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x102C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x102C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x102C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x102C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x102C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x102C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x102C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x102C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x102C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x102C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x10A8),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xD0C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0xC90),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x10DC),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x1204),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x1248),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x1248),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x13D4),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x127C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x127C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x150C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x150C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x150C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x150C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x1248),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x1248),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x1248),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x1248),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x13D4),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x13D4),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x1248),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x1450),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x150C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x150C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x127C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x127C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x127C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x127C),
    (void*)(((char*)draw__10COutFont_cFP10J2DTextBoxfff) + 0x1248),
};

/* 803BFCAC-803BFDC4 -00001 0118+00 1/1 0/0 0/0 .data            mpIconName$5045 */
SECTION_DATA static void* mpIconName[70] = {
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x4B),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x57),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x63),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x6F),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x7B),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x87),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x93),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x9F),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xAB),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xB7),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xC6),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xC6),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xC6),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xC6),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xB7),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xB7),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xB7),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xB7),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xB7),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xB7),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xD2),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xD2),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xD2),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xDE),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xD2),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xEA),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x10B),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x121),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x12D),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xC6),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x139),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x158),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x158),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x158),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x158),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x158),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x158),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x158),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x158),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x158),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x158),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x159),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x16D),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x179),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x185),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x191),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x19D),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0xF),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x19D),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x1A9),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x1B5),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x1C1),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x1CD),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x1D9),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x1E5),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x1F1),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x1FD),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x27),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x33),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x1F1),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x1FD),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x209),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x215),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x221),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x22D),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x239),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x245),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x251),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x25D),
    (void*)(((char*)&d_msg_d_msg_out_font__stringBase0) + 0x269),
};

/* 803BFDC4-803BFDE8 01CEE4 0024+00 2/2 0/0 0/0 .data            __vt__10COutFont_c */
SECTION_DATA extern void* __vt__10COutFont_c[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10COutFont_cFv,
    (void*)setPane__10COutFont_cFP10J2DPicture,
    (void*)createPane__10COutFont_cFv,
    (void*)draw__10COutFont_cFP10J2DTextBoxfff,
    (void*)reset__10COutFont_cFP10J2DTextBox,
    (void*)drawFont__10COutFont_cFP10J2DTextBoxUcffffUlUc,
    (void*)setAlphaRatio__10COutFont_cFf,
};

/* 803BFDE8-803BFDF8 01CF08 000C+04 2/2 0/0 0/0 .data            __vt__13COutFontSet_c */
SECTION_DATA extern void* __vt__13COutFontSet_c[3 + 1 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13COutFontSet_cFv,
    /* padding */
    NULL,
};

/* 80225BB8-80225BF4 2204F8 003C+00 1/1 0/0 0/0 .text            __ct__13COutFontSet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm COutFontSet_c::COutFontSet_c() {
    nofralloc
#include "asm/d/msg/d_msg_out_font/__ct__13COutFontSet_cFv.s"
}
#pragma pop

/* 80225BF4-80225C3C 220534 0048+00 1/0 0/0 0/0 .text            __dt__13COutFontSet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm COutFontSet_c::~COutFontSet_c() {
    nofralloc
#include "asm/d/msg/d_msg_out_font/__dt__13COutFontSet_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80454A10-80454A14 003010 0004+00 4/4 0/0 0/0 .sdata2          @3748 */
SECTION_SDATA2 static u8 lit_3748[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80454A14-80454A18 003014 0004+00 6/6 0/0 0/0 .sdata2          @3749 */
SECTION_SDATA2 static f32 lit_3749 = 1.0f;

/* 80225C3C-80225C70 22057C 0034+00 2/2 0/0 0/0 .text            initialize__13COutFontSet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void COutFontSet_c::initialize() {
    nofralloc
#include "asm/d/msg/d_msg_out_font/initialize__13COutFontSet_cFv.s"
}
#pragma pop

/* 80225C70-80225C94 2205B0 0024+00 1/1 0/0 0/0 .text
 * drawFont__13COutFontSet_cFP10J2DTextBoxUcffffUlUc            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void COutFontSet_c::drawFont(J2DTextBox* param_0, u8 param_1, f32 param_2, f32 param_3,
                                 f32 param_4, f32 param_5, u32 param_6, u8 param_7) {
    nofralloc
#include "asm/d/msg/d_msg_out_font/drawFont__13COutFontSet_cFP10J2DTextBoxUcffffUlUc.s"
}
#pragma pop

/* 80225C94-80225D60 2205D4 00CC+00 0/0 5/5 0/0 .text            __ct__10COutFont_cFUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm COutFont_c::COutFont_c(u8 param_0) {
    nofralloc
#include "asm/d/msg/d_msg_out_font/__ct__10COutFont_cFUc.s"
}
#pragma pop

/* 80225D60-80225E7C 2206A0 011C+00 1/0 0/0 0/0 .text            __dt__10COutFont_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm COutFont_c::~COutFont_c() {
    nofralloc
#include "asm/d/msg/d_msg_out_font/__dt__10COutFont_cFv.s"
}
#pragma pop

/* 80225E7C-80225EA8 2207BC 002C+00 1/0 0/0 0/0 .text            setPane__10COutFont_cFP10J2DPicture
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void COutFont_c::setPane(J2DPicture* param_0) {
    nofralloc
#include "asm/d/msg/d_msg_out_font/setPane__10COutFont_cFP10J2DPicture.s"
}
#pragma pop

/* ############################################################################################## */
/* 80454A18-80454A20 003018 0008+00 2/2 0/0 0/0 .sdata2          @4397 */
SECTION_SDATA2 static f64 lit_4397 = 4503599627370496.0 /* cast u32 to float */;

/* 80225EA8-80226CF8 2207E8 0E50+00 2/0 0/0 0/0 .text            createPane__10COutFont_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void COutFont_c::createPane() {
    nofralloc
#include "asm/d/msg/d_msg_out_font/createPane__10COutFont_cFv.s"
}
#pragma pop

/* 80226CF8-80226D4C 221638 0054+00 0/0 2/2 0/0 .text            initialize__10COutFont_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void COutFont_c::initialize() {
    nofralloc
#include "asm/d/msg/d_msg_out_font/initialize__10COutFont_cFv.s"
}
#pragma pop

/* 80226D4C-80226DA8 22168C 005C+00 1/0 0/0 0/0 .text
 * drawFont__10COutFont_cFP10J2DTextBoxUcffffUlUc               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void COutFont_c::drawFont(J2DTextBox* param_0, u8 param_1, f32 param_2, f32 param_3,
                              f32 param_4, f32 param_5, u32 param_6, u8 param_7) {
    nofralloc
#include "asm/d/msg/d_msg_out_font/drawFont__10COutFont_cFP10J2DTextBoxUcffffUlUc.s"
}
#pragma pop

/* 80226DA8-80226DB0 2216E8 0008+00 1/0 0/0 0/0 .text            setAlphaRatio__10COutFont_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void COutFont_c::setAlphaRatio(f32 param_0) {
    nofralloc
#include "asm/d/msg/d_msg_out_font/setAlphaRatio__10COutFont_cFf.s"
}
#pragma pop

/* ############################################################################################## */
/* 80454A20-80454A24 003020 0004+00 1/1 0/0 0/0 .sdata2          @4986 */
SECTION_SDATA2 static f32 lit_4986 = 2.0f;

/* 80454A24-80454A28 003024 0004+00 1/1 0/0 0/0 .sdata2          @4987 */
SECTION_SDATA2 static f32 lit_4987 = 3.0f;

/* 80454A28-80454A2C 003028 0004+00 1/1 0/0 0/0 .sdata2          @4988 */
SECTION_SDATA2 static f32 lit_4988 = 0.5f;

/* 80454A2C-80454A30 00302C 0004+00 1/1 0/0 0/0 .sdata2          @4989 */
SECTION_SDATA2 static f32 lit_4989 = 360.0f;

/* 80454A30-80454A34 003030 0004+00 1/1 0/0 0/0 .sdata2          @4990 */
SECTION_SDATA2 static f32 lit_4990 = 28.0f;

/* 80454A34-80454A38 003034 0004+00 1/1 0/0 0/0 .sdata2          @4991 */
SECTION_SDATA2 static f32 lit_4991 = 50.0f;

/* 80454A38-80454A3C 003038 0004+00 1/1 0/0 0/0 .sdata2          @4992 */
SECTION_SDATA2 static f32 lit_4992 = 205.0f;

/* 80454A3C-80454A40 00303C 0004+00 1/1 0/0 0/0 .sdata2          @4993 */
SECTION_SDATA2 static f32 lit_4993 = 9.0f;

/* 80454A40-80454A44 003040 0004+00 1/1 0/0 0/0 .sdata2          @4994 */
SECTION_SDATA2 static f32 lit_4994 = 18.0f;

/* 80454A44-80454A48 003044 0004+00 1/1 0/0 0/0 .sdata2          @4995 */
SECTION_SDATA2 static f32 lit_4995 = -3.0f;

/* 80454A48-80454A4C 003048 0004+00 1/1 0/0 0/0 .sdata2          @4996 */
SECTION_SDATA2 static f32 lit_4996 = 4.0f;

/* 80454A4C-80454A50 00304C 0004+00 1/1 0/0 0/0 .sdata2          @4997 */
SECTION_SDATA2 static f32 lit_4997 = 1.25f;

/* 80454A50-80454A58 003050 0008+00 1/1 0/0 0/0 .sdata2          @5001 */
SECTION_SDATA2 static f64 lit_5001 = 4503601774854144.0 /* cast s32 to float */;

/* 80226DB0-80228448 2216F0 1698+00 2/0 0/0 0/0 .text            draw__10COutFont_cFP10J2DTextBoxfff
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void COutFont_c::draw(J2DTextBox* param_0, f32 param_1, f32 param_2, f32 param_3) {
    nofralloc
#include "asm/d/msg/d_msg_out_font/draw__10COutFont_cFP10J2DTextBoxfff.s"
}
#pragma pop

/* 80228448-80228490 222D88 0048+00 1/0 0/0 0/0 .text            reset__10COutFont_cFP10J2DTextBox
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void COutFont_c::reset(J2DTextBox* param_0) {
    nofralloc
#include "asm/d/msg/d_msg_out_font/reset__10COutFont_cFP10J2DTextBox.s"
}
#pragma pop

/* 80228490-80228530 222DD0 00A0+00 1/1 0/0 0/0 .text setBlendAnime__10COutFont_cFP10J2DPictures
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void COutFont_c::setBlendAnime(J2DPicture* param_0, s16 param_1) {
    nofralloc
#include "asm/d/msg/d_msg_out_font/setBlendAnime__10COutFont_cFP10J2DPictures.s"
}
#pragma pop

/* 80228530-80228578 222E70 0048+00 1/1 0/0 0/0 .text            getBtiName__10COutFont_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void COutFont_c::getBtiName(int param_0) {
    nofralloc
#include "asm/d/msg/d_msg_out_font/getBtiName__10COutFont_cFi.s"
}
#pragma pop

/* 80399350-80399350 0259B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
