lbl_802F3758:
/* 802F3758  80 C3 00 04 */	lwz r6, 4(r3)
/* 802F375C  80 A3 00 08 */	lwz r5, 8(r3)
/* 802F3760  54 80 08 3C */	slwi r0, r4, 1
/* 802F3764  7C 05 02 2E */	lhzx r0, r5, r0
/* 802F3768  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F376C  7C 86 02 14 */	add r4, r6, r0
/* 802F3770  88 04 00 03 */	lbz r0, 3(r4)
/* 802F3774  28 00 00 FF */	cmplwi r0, 0xff
/* 802F3778  41 82 00 10 */	beq lbl_802F3788
/* 802F377C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802F3780  7C 63 00 AE */	lbzx r3, r3, r0
/* 802F3784  4E 80 00 20 */	blr 
lbl_802F3788:
/* 802F3788  38 60 00 00 */	li r3, 0
/* 802F378C  4E 80 00 20 */	blr 