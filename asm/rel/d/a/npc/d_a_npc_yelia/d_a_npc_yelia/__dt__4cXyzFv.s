lbl_80B51368:
/* 80B51368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5136C  7C 08 02 A6 */	mflr r0
/* 80B51370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B51374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B51378  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5137C  41 82 00 10 */	beq lbl_80B5138C
/* 80B51380  7C 80 07 35 */	extsh. r0, r4
/* 80B51384  40 81 00 08 */	ble lbl_80B5138C
/* 80B51388  4B 77 D9 B4 */	b __dl__FPv
lbl_80B5138C:
/* 80B5138C  7F E3 FB 78 */	mr r3, r31
/* 80B51390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B51394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B51398  7C 08 03 A6 */	mtlr r0
/* 80B5139C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B513A0  4E 80 00 20 */	blr 