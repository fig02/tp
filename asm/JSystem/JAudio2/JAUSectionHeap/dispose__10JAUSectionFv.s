lbl_802A5160:
/* 802A5160  80 03 00 BC */	lwz r0, 0xbc(r3)
/* 802A5164  28 00 00 00 */	cmplwi r0, 0
/* 802A5168  41 82 00 38 */	beq lbl_802A51A0
/* 802A516C  80 83 00 30 */	lwz r4, 0x30(r3)
/* 802A5170  80 84 05 2C */	lwz r4, 0x52c(r4)
/* 802A5174  28 04 00 00 */	cmplwi r4, 0
/* 802A5178  41 82 00 1C */	beq lbl_802A5194
/* 802A517C  41 82 00 18 */	beq lbl_802A5194
/* 802A5180  80 0D 85 D8 */	lwz r0, __OSReport_disable-0x40(r13)
/* 802A5184  7C 00 20 40 */	cmplw r0, r4
/* 802A5188  40 82 00 0C */	bne lbl_802A5194
/* 802A518C  38 00 00 00 */	li r0, 0
/* 802A5190  90 0D 85 D8 */	stw r0, __OSReport_disable-0x40(r13)
lbl_802A5194:
/* 802A5194  38 00 00 00 */	li r0, 0
/* 802A5198  80 83 00 30 */	lwz r4, 0x30(r3)
/* 802A519C  90 04 05 2C */	stw r0, 0x52c(r4)
lbl_802A51A0:
/* 802A51A0  80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 802A51A4  28 00 00 00 */	cmplwi r0, 0
/* 802A51A8  4D 82 00 20 */	beqlr 
/* 802A51AC  80 83 00 30 */	lwz r4, 0x30(r3)
/* 802A51B0  80 84 05 30 */	lwz r4, 0x530(r4)
/* 802A51B4  28 04 00 00 */	cmplwi r4, 0
/* 802A51B8  41 82 00 1C */	beq lbl_802A51D4
/* 802A51BC  41 82 00 18 */	beq lbl_802A51D4
/* 802A51C0  80 0D 85 D4 */	lwz r0, __OSReport_disable-0x44(r13)
/* 802A51C4  7C 00 20 40 */	cmplw r0, r4
/* 802A51C8  40 82 00 0C */	bne lbl_802A51D4
/* 802A51CC  38 00 00 00 */	li r0, 0
/* 802A51D0  90 0D 85 D4 */	stw r0, __OSReport_disable-0x44(r13)
lbl_802A51D4:
/* 802A51D4  38 00 00 00 */	li r0, 0
/* 802A51D8  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802A51DC  90 03 05 30 */	stw r0, 0x530(r3)
/* 802A51E0  4E 80 00 20 */	blr 
