lbl_80262014:
/* 80262014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80262018  7C 08 02 A6 */	mflr r0
/* 8026201C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80262020  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80262024  7C 7F 1B 78 */	mr r31, r3
/* 80262028  38 7F 00 FC */	addi r3, r31, 0xfc
/* 8026202C  4B DA B3 FD */	bl play__14mDoExt_baseAnmFv
/* 80262030  38 60 00 01 */	li r3, 1
/* 80262034  88 1F 01 01 */	lbz r0, 0x101(r31)
/* 80262038  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8026203C  40 82 00 18 */	bne lbl_80262054
/* 80262040  C0 22 B6 04 */	lfs f1, lit_3946(r2)
/* 80262044  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80262048  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8026204C  41 82 00 08 */	beq lbl_80262054
/* 80262050  38 60 00 00 */	li r3, 0
lbl_80262054:
/* 80262054  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80262058  41 82 00 10 */	beq lbl_80262068
/* 8026205C  7F E3 FB 78 */	mr r3, r31
/* 80262060  4B DB D6 E9 */	bl fopKyM_Delete__FPv
/* 80262064  48 00 00 2C */	b lbl_80262090
lbl_80262068:
/* 80262068  38 7F 00 DC */	addi r3, r31, 0xdc
/* 8026206C  38 81 00 08 */	addi r4, r1, 8
/* 80262070  4B DB B8 21 */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80262074  2C 03 00 00 */	cmpwi r3, 0
/* 80262078  41 82 00 18 */	beq lbl_80262090
/* 8026207C  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 80262080  C0 01 00 08 */	lfs f0, 8(r1)
/* 80262084  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80262088  C0 01 00 08 */	lfs f0, 8(r1)
/* 8026208C  D0 1F 00 E0 */	stfs f0, 0xe0(r31)
lbl_80262090:
/* 80262090  38 60 00 01 */	li r3, 1
/* 80262094  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80262098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026209C  7C 08 03 A6 */	mtlr r0
/* 802620A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802620A4  4E 80 00 20 */	blr 