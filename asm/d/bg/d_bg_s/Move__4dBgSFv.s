lbl_800749A8:
/* 800749A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800749AC  7C 08 02 A6 */	mflr r0
/* 800749B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800749B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800749B8  93 C1 00 08 */	stw r30, 8(r1)
/* 800749BC  7C 7F 1B 78 */	mr r31, r3
/* 800749C0  3B C0 00 00 */	li r30, 0
lbl_800749C4:
/* 800749C4  88 1F 00 04 */	lbz r0, 4(r31)
/* 800749C8  28 00 00 00 */	cmplwi r0, 0
/* 800749CC  41 82 00 14 */	beq lbl_800749E0
/* 800749D0  80 7F 00 00 */	lwz r3, 0(r31)
/* 800749D4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 800749D8  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 800749DC  48 00 9D 05 */	bl CalcDiffShapeAngleY__9dBgW_BaseFs
lbl_800749E0:
/* 800749E0  3B DE 00 01 */	addi r30, r30, 1
/* 800749E4  2C 1E 01 00 */	cmpwi r30, 0x100
/* 800749E8  3B FF 00 14 */	addi r31, r31, 0x14
/* 800749EC  41 80 FF D8 */	blt lbl_800749C4
/* 800749F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800749F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800749F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800749FC  7C 08 03 A6 */	mtlr r0
/* 80074A00  38 21 00 10 */	addi r1, r1, 0x10
/* 80074A04  4E 80 00 20 */	blr 