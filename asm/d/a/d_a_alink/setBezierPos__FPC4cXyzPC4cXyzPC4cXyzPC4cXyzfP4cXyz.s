lbl_80125778:
/* 80125778  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8012577C  7C 08 02 A6 */	mflr r0
/* 80125780  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80125784  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80125788  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8012578C  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80125790  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80125794  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 80125798  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 8012579C  39 61 00 70 */	addi r11, r1, 0x70
/* 801257A0  48 23 CA 39 */	bl _savegpr_28
/* 801257A4  7C 60 1B 78 */	mr r0, r3
/* 801257A8  7C 9C 23 78 */	mr r28, r4
/* 801257AC  7C BD 2B 78 */	mr r29, r5
/* 801257B0  7C DE 33 78 */	mr r30, r6
/* 801257B4  7C FF 3B 78 */	mr r31, r7
/* 801257B8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 801257BC  EC 60 08 28 */	fsubs f3, f0, f1
/* 801257C0  EC 83 00 F2 */	fmuls f4, f3, f3
/* 801257C4  EF A1 00 72 */	fmuls f29, f1, f1
/* 801257C8  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 801257CC  EC 02 01 32 */	fmuls f0, f2, f4
/* 801257D0  EF E0 00 72 */	fmuls f31, f0, f1
/* 801257D4  EC 02 07 72 */	fmuls f0, f2, f29
/* 801257D8  EF C0 00 F2 */	fmuls f30, f0, f3
/* 801257DC  EC 84 00 F2 */	fmuls f4, f4, f3
/* 801257E0  EF BD 00 72 */	fmuls f29, f29, f1
/* 801257E4  38 61 00 50 */	addi r3, r1, 0x50
/* 801257E8  7C 04 03 78 */	mr r4, r0
/* 801257EC  FC 20 20 90 */	fmr f1, f4
/* 801257F0  48 14 13 95 */	bl __ml__4cXyzCFf
/* 801257F4  38 61 00 44 */	addi r3, r1, 0x44
/* 801257F8  7F A4 EB 78 */	mr r4, r29
/* 801257FC  FC 20 F8 90 */	fmr f1, f31
/* 80125800  48 14 13 85 */	bl __ml__4cXyzCFf
/* 80125804  38 61 00 38 */	addi r3, r1, 0x38
/* 80125808  38 81 00 50 */	addi r4, r1, 0x50
/* 8012580C  38 A1 00 44 */	addi r5, r1, 0x44
/* 80125810  48 14 12 D5 */	bl __pl__4cXyzCFRC3Vec
/* 80125814  38 61 00 2C */	addi r3, r1, 0x2c
/* 80125818  7F C4 F3 78 */	mr r4, r30
/* 8012581C  FC 20 F0 90 */	fmr f1, f30
/* 80125820  48 14 13 65 */	bl __ml__4cXyzCFf
/* 80125824  38 61 00 20 */	addi r3, r1, 0x20
/* 80125828  38 81 00 38 */	addi r4, r1, 0x38
/* 8012582C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80125830  48 14 12 B5 */	bl __pl__4cXyzCFRC3Vec
/* 80125834  38 61 00 14 */	addi r3, r1, 0x14
/* 80125838  7F 84 E3 78 */	mr r4, r28
/* 8012583C  FC 20 E8 90 */	fmr f1, f29
/* 80125840  48 14 13 45 */	bl __ml__4cXyzCFf
/* 80125844  38 61 00 08 */	addi r3, r1, 8
/* 80125848  38 81 00 20 */	addi r4, r1, 0x20
/* 8012584C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80125850  48 14 12 95 */	bl __pl__4cXyzCFRC3Vec
/* 80125854  C0 01 00 08 */	lfs f0, 8(r1)
/* 80125858  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8012585C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80125860  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80125864  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80125868  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8012586C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80125870  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80125874  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80125878  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8012587C  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 80125880  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 80125884  39 61 00 70 */	addi r11, r1, 0x70
/* 80125888  48 23 C9 9D */	bl _restgpr_28
/* 8012588C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80125890  7C 08 03 A6 */	mtlr r0
/* 80125894  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80125898  4E 80 00 20 */	blr 