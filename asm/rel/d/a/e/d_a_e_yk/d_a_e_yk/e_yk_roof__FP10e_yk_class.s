lbl_80805360:
/* 80805360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80805364  7C 08 02 A6 */	mflr r0
/* 80805368  90 01 00 24 */	stw r0, 0x24(r1)
/* 8080536C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80805370  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80805374  7C 7E 1B 78 */	mr r30, r3
/* 80805378  3C 60 80 80 */	lis r3, lit_3941@ha
/* 8080537C  3B E3 7C 9C */	addi r31, r3, lit_3941@l
/* 80805380  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 80805384  2C 00 00 01 */	cmpwi r0, 1
/* 80805388  41 82 00 44 */	beq lbl_808053CC
/* 8080538C  40 80 00 88 */	bge lbl_80805414
/* 80805390  2C 00 00 00 */	cmpwi r0, 0
/* 80805394  40 80 00 08 */	bge lbl_8080539C
/* 80805398  48 00 00 7C */	b lbl_80805414
lbl_8080539C:
/* 8080539C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 808053A0  4B A6 25 B4 */	b cM_rndF__Ff
/* 808053A4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 808053A8  EC 40 08 2A */	fadds f2, f0, f1
/* 808053AC  7F C3 F3 78 */	mr r3, r30
/* 808053B0  38 80 00 09 */	li r4, 9
/* 808053B4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 808053B8  38 A0 00 02 */	li r5, 2
/* 808053BC  4B FF F6 29 */	bl anm_init__FP10e_yk_classifUcf
/* 808053C0  38 00 00 01 */	li r0, 1
/* 808053C4  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 808053C8  48 00 00 4C */	b lbl_80805414
lbl_808053CC:
/* 808053CC  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 808053D0  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 808053D4  40 82 00 40 */	bne lbl_80805414
/* 808053D8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 808053DC  4B A6 25 78 */	b cM_rndF__Ff
/* 808053E0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 808053E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808053E8  40 80 00 2C */	bge lbl_80805414
/* 808053EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701C8@ha */
/* 808053F0  38 03 01 C8 */	addi r0, r3, 0x01C8 /* 0x000701C8@l */
/* 808053F4  90 01 00 08 */	stw r0, 8(r1)
/* 808053F8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 808053FC  38 81 00 08 */	addi r4, r1, 8
/* 80805400  38 A0 FF FF */	li r5, -1
/* 80805404  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80805408  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8080540C  7D 89 03 A6 */	mtctr r12
/* 80805410  4E 80 04 21 */	bctrl 
lbl_80805414:
/* 80805414  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80805418  FC 00 02 10 */	fabs f0, f0
/* 8080541C  FC 60 00 18 */	frsp f3, f0
/* 80805420  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80805424  C0 3E 04 A8 */	lfs f1, 0x4a8(r30)
/* 80805428  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 8080542C  4B A6 A6 10 */	b cLib_addCalc2__FPffff
/* 80805430  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80805434  FC 00 02 10 */	fabs f0, f0
/* 80805438  FC 60 00 18 */	frsp f3, f0
/* 8080543C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80805440  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80805444  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80805448  4B A6 A5 F4 */	b cLib_addCalc2__FPffff
/* 8080544C  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80805450  FC 00 02 10 */	fabs f0, f0
/* 80805454  FC 60 00 18 */	frsp f3, f0
/* 80805458  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8080545C  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 80805460  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80805464  4B A6 A5 D8 */	b cLib_addCalc2__FPffff
/* 80805468  7F C3 F3 78 */	mr r3, r30
/* 8080546C  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 80805470  38 80 00 01 */	li r4, 1
/* 80805474  4B FF F8 15 */	bl pl_check__FP10e_yk_classfs
/* 80805478  2C 03 00 00 */	cmpwi r3, 0
/* 8080547C  41 82 00 14 */	beq lbl_80805490
/* 80805480  38 00 00 01 */	li r0, 1
/* 80805484  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 80805488  38 00 00 00 */	li r0, 0
/* 8080548C  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_80805490:
/* 80805490  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80805494  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80805498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8080549C  7C 08 03 A6 */	mtlr r0
/* 808054A0  38 21 00 20 */	addi r1, r1, 0x20
/* 808054A4  4E 80 00 20 */	blr 