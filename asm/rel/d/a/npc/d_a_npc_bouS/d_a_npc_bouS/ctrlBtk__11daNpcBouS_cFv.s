lbl_80977368:
/* 80977368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097736C  7C 08 02 A6 */	mflr r0
/* 80977370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80977374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80977378  7C 7F 1B 78 */	mr r31, r3
/* 8097737C  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80977380  28 00 00 00 */	cmplwi r0, 0
/* 80977384  41 82 00 A8 */	beq lbl_8097742C
/* 80977388  3C 80 80 98 */	lis r4, l_btkGetParamList@ha
/* 8097738C  38 A4 89 14 */	addi r5, r4, l_btkGetParamList@l
/* 80977390  80 05 00 08 */	lwz r0, 8(r5)
/* 80977394  54 00 10 3A */	slwi r0, r0, 2
/* 80977398  3C 80 80 98 */	lis r4, l_arcNames@ha
/* 8097739C  38 84 89 20 */	addi r4, r4, l_arcNames@l
/* 809773A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809773A4  80 A5 00 00 */	lwz r5, 0(r5)
/* 809773A8  4B 7D B7 FC */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809773AC  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 809773B0  7C 03 00 40 */	cmplw r3, r0
/* 809773B4  40 82 00 6C */	bne lbl_80977420
/* 809773B8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 809773BC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 809773C0  A8 9F 08 FE */	lha r4, 0x8fe(r31)
/* 809773C4  48 00 07 01 */	bl func_80977AC4
/* 809773C8  3C 60 80 98 */	lis r3, lit_4984@ha
/* 809773CC  C0 43 86 F4 */	lfs f2, lit_4984@l(r3)
/* 809773D0  3C 60 80 98 */	lis r3, lit_5583@ha
/* 809773D4  C0 03 87 18 */	lfs f0, lit_5583@l(r3)
/* 809773D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 809773DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 809773E0  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809773E4  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 809773E8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 809773EC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 809773F0  A8 9F 08 FC */	lha r4, 0x8fc(r31)
/* 809773F4  48 00 06 D1 */	bl func_80977AC4
/* 809773F8  3C 60 80 98 */	lis r3, lit_5583@ha
/* 809773FC  C0 03 87 18 */	lfs f0, lit_5583@l(r3)
/* 80977400  EC 00 00 72 */	fmuls f0, f0, f1
/* 80977404  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80977408  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 8097740C  38 00 00 01 */	li r0, 1
/* 80977410  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80977414  98 03 01 04 */	stb r0, 0x104(r3)
/* 80977418  38 60 00 01 */	li r3, 1
/* 8097741C  48 00 00 14 */	b lbl_80977430
lbl_80977420:
/* 80977420  38 00 00 00 */	li r0, 0
/* 80977424  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80977428  98 03 01 04 */	stb r0, 0x104(r3)
lbl_8097742C:
/* 8097742C  38 60 00 00 */	li r3, 0
lbl_80977430:
/* 80977430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80977434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80977438  7C 08 03 A6 */	mtlr r0
/* 8097743C  38 21 00 10 */	addi r1, r1, 0x10
/* 80977440  4E 80 00 20 */	blr 