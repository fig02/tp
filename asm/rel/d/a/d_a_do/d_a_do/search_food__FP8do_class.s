lbl_806683C0:
/* 806683C0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806683C4  7C 08 02 A6 */	mflr r0
/* 806683C8  90 01 00 74 */	stw r0, 0x74(r1)
/* 806683CC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 806683D0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806683D4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 806683D8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 806683DC  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 806683E0  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 806683E4  39 61 00 40 */	addi r11, r1, 0x40
/* 806683E8  4B CF 9D E0 */	b _savegpr_24
/* 806683EC  7C 7F 1B 78 */	mr r31, r3
/* 806683F0  3C 60 80 67 */	lis r3, lit_1109@ha
/* 806683F4  3B 83 F2 78 */	addi r28, r3, lit_1109@l
/* 806683F8  3C 60 80 67 */	lis r3, lit_3662@ha
/* 806683FC  3B A3 ED E8 */	addi r29, r3, lit_3662@l
/* 80668400  38 C0 00 00 */	li r6, 0
/* 80668404  90 DC 00 80 */	stw r6, 0x80(r28)
/* 80668408  7C C3 33 78 */	mr r3, r6
/* 8066840C  38 BC 00 6C */	addi r5, r28, 0x6c
/* 80668410  38 9C 00 84 */	addi r4, r28, 0x84
/* 80668414  38 00 00 05 */	li r0, 5
/* 80668418  7C 09 03 A6 */	mtctr r0
lbl_8066841C:
/* 8066841C  7C C5 19 2E */	stwx r6, r5, r3
/* 80668420  7C C4 19 2E */	stwx r6, r4, r3
/* 80668424  38 63 00 04 */	addi r3, r3, 4
/* 80668428  42 00 FF F4 */	bdnz lbl_8066841C
/* 8066842C  3C 60 80 67 */	lis r3, s_w_sub__FPvPv@ha
/* 80668430  38 63 83 3C */	addi r3, r3, s_w_sub__FPvPv@l
/* 80668434  7F E4 FB 78 */	mr r4, r31
/* 80668438  4B 9B 8F 00 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8066843C  C3 FD 00 2C */	lfs f31, 0x2c(r29)
/* 80668440  80 1C 00 80 */	lwz r0, 0x80(r28)
/* 80668444  2C 00 00 00 */	cmpwi r0, 0
/* 80668448  41 82 01 08 */	beq lbl_80668550
/* 8066844C  3B 00 00 00 */	li r24, 0
/* 80668450  48 00 00 E4 */	b lbl_80668534
lbl_80668454:
/* 80668454  57 1B 10 3A */	slwi r27, r24, 2
/* 80668458  7F 3E D8 2E */	lwzx r25, r30, r27
/* 8066845C  C0 39 04 D0 */	lfs f1, 0x4d0(r25)
/* 80668460  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80668464  EC 41 00 28 */	fsubs f2, f1, f0
/* 80668468  D0 41 00 08 */	stfs f2, 8(r1)
/* 8066846C  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80668470  EC 3D 00 2A */	fadds f1, f29, f0
/* 80668474  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80668478  EC 01 00 28 */	fsubs f0, f1, f0
/* 8066847C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80668480  C0 39 04 D8 */	lfs f1, 0x4d8(r25)
/* 80668484  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80668488  EC 01 00 28 */	fsubs f0, f1, f0
/* 8066848C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80668490  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80668494  EC 00 00 32 */	fmuls f0, f0, f0
/* 80668498  EC 21 00 2A */	fadds f1, f1, f0
/* 8066849C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 806684A0  40 81 00 0C */	ble lbl_806684AC
/* 806684A4  FC 00 08 34 */	frsqrte f0, f1
/* 806684A8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_806684AC:
/* 806684AC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 806684B0  40 80 00 4C */	bge lbl_806684FC
/* 806684B4  3B 5C 00 84 */	addi r26, r28, 0x84
/* 806684B8  7C 1A D8 2E */	lwzx r0, r26, r27
/* 806684BC  2C 00 00 00 */	cmpwi r0, 0
/* 806684C0  40 82 00 18 */	bne lbl_806684D8
/* 806684C4  7F E3 FB 78 */	mr r3, r31
/* 806684C8  7F 24 CB 78 */	mr r4, r25
/* 806684CC  4B FF FC A5 */	bl daDo_other_bg_check__FP8do_classP10fopAc_ac_c
/* 806684D0  2C 03 00 00 */	cmpwi r3, 0
/* 806684D4  41 82 00 10 */	beq lbl_806684E4
lbl_806684D8:
/* 806684D8  38 00 00 01 */	li r0, 1
/* 806684DC  7C 1A D9 2E */	stwx r0, r26, r27
/* 806684E0  48 00 00 1C */	b lbl_806684FC
lbl_806684E4:
/* 806684E4  28 19 00 00 */	cmplwi r25, 0
/* 806684E8  41 82 00 0C */	beq lbl_806684F4
/* 806684EC  80 79 00 04 */	lwz r3, 4(r25)
/* 806684F0  48 00 00 6C */	b lbl_8066855C
lbl_806684F4:
/* 806684F4  38 60 FF FF */	li r3, -1
/* 806684F8  48 00 00 64 */	b lbl_8066855C
lbl_806684FC:
/* 806684FC  80 1C 00 80 */	lwz r0, 0x80(r28)
/* 80668500  3B 18 00 01 */	addi r24, r24, 1
/* 80668504  7C 18 00 00 */	cmpw r24, r0
/* 80668508  40 82 00 38 */	bne lbl_80668540
/* 8066850C  3B 00 00 00 */	li r24, 0
/* 80668510  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80668514  EF FF 00 2A */	fadds f31, f31, f0
/* 80668518  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 8066851C  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 80668520  EC 01 00 32 */	fmuls f0, f1, f0
/* 80668524  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80668528  40 81 00 18 */	ble lbl_80668540
/* 8066852C  38 60 FF FF */	li r3, -1
/* 80668530  48 00 00 2C */	b lbl_8066855C
lbl_80668534:
/* 80668534  3B DC 00 6C */	addi r30, r28, 0x6c
/* 80668538  C3 BD 00 24 */	lfs f29, 0x24(r29)
/* 8066853C  C3 DD 00 14 */	lfs f30, 0x14(r29)
lbl_80668540:
/* 80668540  80 1C 00 80 */	lwz r0, 0x80(r28)
/* 80668544  7C 18 00 00 */	cmpw r24, r0
/* 80668548  41 80 FF 0C */	blt lbl_80668454
/* 8066854C  48 00 00 0C */	b lbl_80668558
lbl_80668550:
/* 80668550  38 60 FF FF */	li r3, -1
/* 80668554  48 00 00 08 */	b lbl_8066855C
lbl_80668558:
/* 80668558  38 60 FF FF */	li r3, -1
lbl_8066855C:
/* 8066855C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80668560  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80668564  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80668568  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8066856C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80668570  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80668574  39 61 00 40 */	addi r11, r1, 0x40
/* 80668578  4B CF 9C 9C */	b _restgpr_24
/* 8066857C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80668580  7C 08 03 A6 */	mtlr r0
/* 80668584  38 21 00 70 */	addi r1, r1, 0x70
/* 80668588  4E 80 00 20 */	blr 