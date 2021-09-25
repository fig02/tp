//
// Generated By: dol2asm
// Translation Unit: JUTDirectPrint
//

#include "JSystem/JUtility/JUTDirectPrint.h"
#include "dol2asm.h"
#include "dolphin/os/OSCache.h"
#include "dolphin/types.h"
#include "global.h"
#include "msl_c/string.h"
#include "Runtime.PPCEABI.H/__va_arg.h"

//
// Types:
//

namespace JStudio {
struct TFunctionValue_list_parameter {
    /* 80283C24 */ ~TFunctionValue_list_parameter();
};

};  // namespace JStudio

//
// Forward References:
//

extern "C" void __ct__14JUTDirectPrintFv();
extern "C" void start__14JUTDirectPrintFv();
extern "C" void erase__14JUTDirectPrintFiiii();
extern "C" void drawChar__14JUTDirectPrintFiii();
extern "C" void changeFrameBuffer__14JUTDirectPrintFPvUsUs();
extern "C" void printSub__14JUTDirectPrintFUsUsPCcP16__va_list_structb();
extern "C" void drawString__14JUTDirectPrintFUsUsPc();
extern "C" void drawString_f__14JUTDirectPrintFUsUsPCce();
extern "C" void setCharColor__14JUTDirectPrintFQ28JUtility6TColor();
extern "C" void setCharColor__14JUTDirectPrintFUcUcUc();
extern "C" extern char const* const JUTDirectPrint__stringBase0;
extern "C" u8 sAsciiTable__14JUTDirectPrint[128];
extern "C" void* sFontData__14JUTDirectPrint[64];
extern "C" void* sFontData2__14JUTDirectPrint[77];
extern "C" u8 sDirectPrint__14JUTDirectPrint[4 + 4 /* padding */];

//
// External References:
//

extern "C" void fpcBs_Delete__FP18base_process_class();
extern "C" void __dt__Q27JStudio29TFunctionValue_list_parameterFv();
extern "C" void* __nw__FUl();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _restgpr_24();
extern "C" void _restgpr_27();

//
// Declarations:
//

/* 802E41E8-802E4240 2DEB28 0058+00 1/1 0/0 0/0 .text            __ct__14JUTDirectPrintFv */
JUTDirectPrint::JUTDirectPrint() {
    changeFrameBuffer(NULL, 0, 0);
    setCharColor(0xff, 0xff, 0xff);
}

/* ############################################################################################## */
/* 80451528-80451530 000A28 0004+04 1/1 4/4 0/0 .sbss            sDirectPrint__14JUTDirectPrint */
JUTDirectPrint* JUTDirectPrint::sDirectPrint;
u8 JUTDirectPrint::sDirectPrint_padding[4 /* padding */];

/* 802E4240-802E4288 2DEB80 0048+00 0/0 1/1 0/0 .text            start__14JUTDirectPrintFv */
JUTDirectPrint* JUTDirectPrint::start() {
    if (!sDirectPrint) {
        sDirectPrint = new JUTDirectPrint();
    }

    return sDirectPrint;
}

/* 802E4288-802E431C 2DEBC8 0094+00 1/1 1/1 0/0 .text            erase__14JUTDirectPrintFiiii */
void JUTDirectPrint::erase(int x, int y, int width, int height) {
    if (!this->field_0x00) {
        return;
    }

    if (400 < mFrameBufferWidth) {
        x = x << 1;
        width = width << 1;
    }

    if (300 < mFrameBufferHeight) {
        y = y << 1;
        height = height << 1;
    }

    u16* pixel = mFrameBuffer + mStride * y + x;
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            *pixel = 0x1080;
            pixel = pixel + 1;
        }

        pixel += mStride - width;
    }
}

/* ############################################################################################## */
/* 803CC6B8-803CC738 0297D8 0080+00 2/2 0/0 0/0 .data            sAsciiTable__14JUTDirectPrint */
SECTION_DATA u8 JUTDirectPrint::sAsciiTable[128] = {
    0x7A, 0x7A, 0x7A, 0x7A, 0x7A, 0x7A, 0x7A, 0x7A, 0x7A, 0xFD, 0xFE, 0x7A, 0x7A, 0x7A, 0x7A, 0x7A,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0x29, 0x64, 0x65, 0x66, 0x2B, 0x67, 0x68, 0x25, 0x26, 0x69, 0x2A, 0x6A, 0x27, 0x2C, 0x6B,
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x24, 0x6C, 0x6D, 0x6E, 0x6F, 0x28,
    0x70, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18,
    0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23, 0x71, 0x72, 0x73, 0x74, 0x75,
    0xFF, 0x7D, 0x7E, 0x7F, 0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x8B,
    0x8C, 0x8D, 0x8E, 0x8F, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x76, 0x77, 0x78, 0x79, 0x7A,
};

/* 803CC738-803CC838 -00001 0100+00 0/1 0/0 0/0 .data            sFontData__14JUTDirectPrint */
#pragma push
#pragma force_active on
SECTION_DATA u32 JUTDirectPrint::sFontData[64] = {
    0x70871C30, 0x8988A250, 0x88808290, 0x88830C90, 0x888402F8, 0x88882210, 0x71CF9C10, 0xF9CF9C70,
    0x8208A288, 0xF200A288, 0x0BC11C78, 0x0A222208, 0x8A222208, 0x71C21C70, 0x23C738F8, 0x5228A480,
    0x8A282280, 0x8BC822F0, 0xFA282280, 0x8A28A480, 0x8BC738F8, 0xF9C89C08, 0x82288808, 0x82088808,
    0xF2EF8808, 0x82288888, 0x82288888, 0x81C89C70, 0x8A08A270, 0x920DA288, 0xA20AB288, 0xC20AAA88,
    0xA208A688, 0x9208A288, 0x8BE8A270, 0xF1CF1CF8, 0x8A28A220, 0x8A28A020, 0xF22F1C20, 0x82AA0220,
    0x82492220, 0x81A89C20, 0x8A28A288, 0x8A28A288, 0x8A289488, 0x8A2A8850, 0x894A9420, 0x894AA220,
    0x70852220, 0xF8011000, 0x08020800, 0x10840400, 0x20040470, 0x40840400, 0x80020800, 0xF8011000,
    0x70800000, 0x88822200, 0x08820400, 0x108F8800, 0x20821000, 0x00022200, 0x20800020, 0x00000000,
};
#pragma pop

/* 803CC838-803CC96C -00001 0134+00 0/1 0/0 0/0 .data            sFontData2__14JUTDirectPrint */
#pragma push
#pragma force_active on
SECTION_DATA u32 JUTDirectPrint::sFontData2[77] = {
    0x51421820, 0x53E7A420, 0x014A2C40, 0x01471000, 0x0142AA00, 0x03EAA400, 0x01471A78, 0x00000000,
    0x50008010, 0x20010820, 0xF8020040, 0x20420820, 0x50441010, 0x00880000, 0x00070E00, 0x01088840,
    0x78898820, 0x004A8810, 0x788A8810, 0x01098808, 0x00040E04, 0x70800620, 0x11400820, 0x12200820,
    0x10001020, 0x10000820, 0x100F8820, 0x70000620, 0x60070000, 0x110F82A0, 0x12AA8AE0, 0x084F92A0,
    0x100FBE1C, 0x10089008, 0x60070808, 0x00000000, 0x02000200, 0x7A078270, 0x8BC81E88, 0x8A2822F8,
    0x9A282280, 0x6BC79E78, 0x30000000, 0x48080810, 0x41E80000, 0x422F1830, 0xFBE88810, 0x40288890,
    0x43C89C60, 0x81000000, 0x81000000, 0x990F3C70, 0xA10AA288, 0xE10AA288, 0xA10AA288, 0x98CAA270,
    0x00000000, 0x00000020, 0xF1EF1E20, 0x8A28A0F8, 0x8A281C20, 0xF1E80220, 0x80283C38, 0x00000000,
    0x00000000, 0x8A28B688, 0x8A2A8888, 0x8A2A8878, 0x894A8808, 0x788536F0, 0x00000000, 0x00000000,
    0xF8000000, 0x10000000, 0x20000000, 0x40000000, 0xF8000000,
};
#pragma pop

/* 803CC96C-803CC980 029A8C 0010+04 0/1 0/0 0/0 .data            twiceBit$371 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 twiceBit[4] = {
    0x00000000,
    0x00000003,
    0x0000000C,
    0x0000000F,
};
#pragma pop

/* 802E431C-802E456C 2DEC5C 0250+00 1/1 0/0 0/0 .text            drawChar__14JUTDirectPrintFiii */
#if NONMATCHING
void JUTDirectPrint::drawChar(int position_x, int position_y, int ch) {
    int codepoint;
    if (100 <= ch)
        codepoint = ch - 100;
    else
        codepoint = ch;

    u32 col_index = (codepoint % 5) * 6;
    u32 row_index = (codepoint / 5) * 7;

    u32* font_data;
    if (100 > ch)
        font_data = sFontData + row_index;
    else
        font_data = sFontData2 + row_index;

    s32 scale_x;
    if (mFrameBufferWidth < 400)
        scale_x = 1;
    else
        scale_x = 2;

    s32 scale_y;
    if (mFrameBufferHeight < 300)
        scale_y = 1;
    else
        scale_y = 2;

    u16* pixel = mFrameBuffer + mStride * position_y * scale_y + position_x * scale_x;
    for (int y = 0; y < 7; y++) {
        u32 data = *font_data << col_index;
        font_data += 1;

        if (scale_x == 1) {
            data = data >> 1 & 0x7e000000;
        } else {
            u32 a = twiceBit[(data >> 26) & 3];
            u32 b = twiceBit[(data >> 28) & 3] << 4;
            u32 c = twiceBit[(data >> 30) & 3] << 8;
            data = (a | b | c) << 0x13;
        }

        for (int x = 0; x < scale_x * 6; x += 2) {
            u16 u1;
            u16 u2;
            u16 u3;
            u16 u4;
            u16 value;

            if (data & 0x40000000) {
                u1 = field_0x20;
            } else {
                u1 = 0x40;
            }

            if (data & 0x80000000) {
                u2 = field_0x22;
            } else {
                u2 = 0x20;
            }

            if (data & 0x20000000) {
                u3 = field_0x22;
            } else {
                u3 = 0x20;
            }

            if (data & 0x40000000) {
                u4 = field_0x1C;
            } else {
                u4 = 0x00;
            }

            value = u4 | (u2 + u1 + u3);
            pixel[0] = value;
            if (scale_y > 1)
                pixel[mStride] = value;

            if (data & 0x20000000) {
                u1 = field_0x26;
            } else {
                u1 = 0x40;
            }

            if (data & 0x40000000) {
                u2 = field_0x28;
            } else {
                u2 = 0x20;
            }

            if (data & 0x10000000) {
                u3 = field_0x28;
            } else {
                u3 = 0x20;
            }

            if (data & 0x20000000) {
                u4 = field_0x1C;
            } else {
                u4 = 0x00;
            }

            value = u4 | (u2 + u1 + u3);
            pixel[1] = value;
            if (scale_y > 1)
                pixel[1 + mStride] = value;

            data <<= 2;
            pixel += 2;
        }

        pixel += mStride * scale_y - scale_x * 6;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JUTDirectPrint::drawChar(int param_0, int param_1, int param_2) {
    nofralloc
#include "asm/JSystem/JUtility/JUTDirectPrint/drawChar__14JUTDirectPrintFiii.s"
}
#pragma pop
#endif

/* 802E456C-802E45A4 2DEEAC 0038+00 1/1 4/4 0/0 .text changeFrameBuffer__14JUTDirectPrintFPvUsUs
 */
void JUTDirectPrint::changeFrameBuffer(void* frameBuffer, u16 width, u16 height) {
    this->field_0x00 = frameBuffer;
    mFrameBuffer = (u16*)frameBuffer;
    mFrameBufferWidth = width;
    mFrameBufferHeight = height;
    mStride = ALIGN_NEXT(width & 0xFFFF, 16);
    mFrameBufferSize = (u32)mStride * (u32)mFrameBufferHeight * 2;
}

/* 802E45A4-802E46D8 2DEEE4 0134+00 1/1 0/0 0/0 .text
 * printSub__14JUTDirectPrintFUsUsPCcP16__va_list_structb       */
void JUTDirectPrint::printSub(u16 position_x, u16 position_y, char const* format,
                              __va_list_struct* args, bool clear) {
    char buffer[256];
    if (!mFrameBuffer) {
        return;
    }

    int buffer_length = vsnprintf(buffer, ARRAY_SIZE(buffer), format, args);
    u16 x = position_x;
    if (buffer_length > 0) {
        if (clear) {
            erase(position_x - 6, position_y - 3, (buffer_length + 2) * 6, 0xd);
        }

        char* ptr = buffer;
        for (; 0 < buffer_length; buffer_length--, ptr++) {
            int codepoint = sAsciiTable[*ptr & 0x7f];
            if (codepoint == 0xfe) {
                position_x = x;
                position_y += 7;
            } else if (codepoint == 0xfd) {
                s32 current_position = (int)position_x;
                s32 tab = (current_position - x + 0x2f) % 0x30;
                position_x = current_position + 0x30 - tab;
            } else {
                if (codepoint != 0xff) {
                    drawChar(position_x, position_y, codepoint);
                }
                position_x += 6;
            }
        }
    }

    DCStoreRange(mFrameBuffer, mFrameBufferSize);
}

#if DEBUG
void JUTDirectPrint::print(u16 position_x, u16 position_y, char const* format, ...) {
    if (mFrameBuffer) {
        va_list args;
        va_start(args, format);
        printSub(position_x, position_y, format, args);
        va_end(args);
    }
}
#endif

/* 802E46D8-802E4708 2DF018 0030+00 0/0 2/2 0/0 .text            drawString__14JUTDirectPrintFUsUsPc
 */
void JUTDirectPrint::drawString(u16 position_x, u16 position_y, char* text) {
    drawString_f(position_x, position_y, "%s", text);
}

/* 802E4708-802E4798 2DF048 0090+00 1/1 0/0 0/0 .text drawString_f__14JUTDirectPrintFUsUsPCce */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JUTDirectPrint::drawString_f(u16 param_0, u16 param_1, char const* param_2, ...) {
    nofralloc
#include "asm/JSystem/JUtility/JUTDirectPrint/drawString_f__14JUTDirectPrintFUsUsPCce.s"
}
#pragma pop

/* 802E4798-802E47C8 2DF0D8 0030+00 0/0 2/2 0/0 .text
 * setCharColor__14JUTDirectPrintFQ28JUtility6TColor            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JUTDirectPrint::setCharColor(JUtility::TColor param_0) {
    nofralloc
#include "asm/JSystem/JUtility/JUTDirectPrint/setCharColor__14JUTDirectPrintFQ28JUtility6TColor.s"
}
#pragma pop

/* ############################################################################################## */
/* 80456060-80456068 004660 0008+00 1/1 0/0 0/0 .sdata2          @503 */
SECTION_SDATA2 static f64 lit_503 = 128.0;

/* 80456068-80456070 004668 0008+00 1/1 0/0 0/0 .sdata2          @504 */
SECTION_SDATA2 static f64 lit_504 = 0.439;

/* 80456070-80456078 004670 0008+00 1/1 0/0 0/0 .sdata2          @505 */
SECTION_SDATA2 static f64 lit_505 = -0.148;

/* 80456078-80456080 004678 0008+00 1/1 0/0 0/0 .sdata2          @506 */
SECTION_SDATA2 static f64 lit_506 = 0.291;

/* 80456080-80456088 004680 0008+00 1/1 0/0 0/0 .sdata2          @507 */
SECTION_SDATA2 static f64 lit_507 = 0.368;

/* 80456088-80456090 004688 0008+00 1/1 0/0 0/0 .sdata2          @508 */
SECTION_SDATA2 static f64 lit_508 = 0.071;

/* 80456090-80456098 004690 0008+00 1/1 0/0 0/0 .sdata2          @509 */
SECTION_SDATA2 static f64 lit_509 = 16.0;

/* 80456098-804560A0 004698 0008+00 1/1 0/0 0/0 .sdata2          @510 */
SECTION_SDATA2 static f64 lit_510 = 0.098;

/* 804560A0-804560A8 0046A0 0008+00 1/1 0/0 0/0 .sdata2          @511 */
SECTION_SDATA2 static f64 lit_511 = 0.257;

/* 804560A8-804560B0 0046A8 0008+00 1/1 0/0 0/0 .sdata2          @512 */
SECTION_SDATA2 static f64 lit_512 = 0.504;

/* 804560B0-804560B8 0046B0 0008+00 1/1 0/0 0/0 .sdata2          @514 */
SECTION_SDATA2 static f64 lit_514 = 4503601774854144.0 /* cast s32 to float */;

/* 802E47C8-802E495C 2DF108 0194+00 2/2 0/0 0/0 .text setCharColor__14JUTDirectPrintFUcUcUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JUTDirectPrint::setCharColor(u8 param_0, u8 param_1, u8 param_2) {
    nofralloc
#include "asm/JSystem/JUtility/JUTDirectPrint/setCharColor__14JUTDirectPrintFUcUcUc.s"
}
#pragma pop

/* 8039D9A0-8039D9A0 02A000 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
