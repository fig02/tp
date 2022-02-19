//
// Generated By: dol2asm
// Translation Unit: d/a/d_a_itembase_static
//

#include "d/a/d_a_itembase_static.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/d_item_data.h"
#include "dol2asm.h"
#include "dolphin/types.h"

u8 daItemBase_c::getItemNo() {
    return m_itemNo;
}

void daItemBase_c::hide() {
    cLib_offBit(field_0x92b, 1);
}

void daItemBase_c::show() {
    cLib_onBit(field_0x92b, 1);
}

void daItemBase_c::changeDraw() {
    if (chkDraw()) {
        hide();
    } else {
        show();
    }
}

u8 daItemBase_c::chkDraw() {
    return cLib_checkBit(field_0x92b, 1) != 0;
}

void daItemBase_c::dead() {
    cLib_onBit(field_0x92b, 2);
}

u8 daItemBase_c::chkDead() {
    return cLib_checkBit(field_0x92b, 2) != 0;
}

/* 80037B0C-80037B78 03244C 006C+00 0/0 0/0 1/1 .text            CheckItemCreateHeap__FP10fopAc_ac_c
 */
void CheckItemCreateHeap(fopAc_ac_c* actor) {
    daItemBase_c* item = static_cast<daItemBase_c*>(actor);

    u8 item_no = item->getItemNo();
    item->CreateItemHeap(dItem_data::getArcName(item_no), dItem_data::getBmdName(item_no),
                         dItem_data::getBtkName(item_no), dItem_data::getBpkName(item_no),
                         dItem_data::getBckName(item_no), dItem_data::getBxaName(item_no),
                         dItem_data::getBrkName(item_no), dItem_data::getBtpName(item_no));
}

/* 80037B78-80037BE0 0324B8 0068+00 0/0 1/1 7/7 .text CheckFieldItemCreateHeap__FP10fopAc_ac_c */
void CheckFieldItemCreateHeap(fopAc_ac_c* actor) {
    daItemBase_c* item = static_cast<daItemBase_c*>(actor);

    u8 item_no = item->getItemNo();
    item->CreateItemHeap(dItem_data::getFieldArc(item_no), dItem_data::getItemBmdName(item_no),
                         dItem_data::getItemBtkName(item_no), dItem_data::getItemBpkName(item_no),
                         dItem_data::getItemBckName(item_no), dItem_data::getItemBxaName(item_no),
                         dItem_data::getItemBrkName(item_no), dItem_data::getItemBtpName(item_no));
}

/* ############################################################################################## */
/* 803792B0-803792E8 005910 0038+00 0/0 1/1 0/0 .rodata          m_data__12daItemBase_c */
SECTION_RODATA daItemBase_data const daItemBase_c::m_data = {
    -4.5f, 0.62f, 45.0f, 10.0f, 6.0f, 1,     240,   60, 4000,
    120,   -4.0f, 3.5f,  1100,  3000, 23.0f, -6.0f, 13, 10};
COMPILER_STRIP_GATE(0x803792B0, &daItemBase_c::m_data);
