lbl_802922D8:
/* 802922D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802922DC  38 80 00 00 */	li r4, 0
/* 802922E0  C8 22 BB B0 */	lfd f1, lit_954(r2)
/* 802922E4  3C C0 43 30 */	lis r6, 0x4330
/* 802922E8  38 00 00 06 */	li r0, 6
/* 802922EC  7C 09 03 A6 */	mtctr r0
lbl_802922F0:
/* 802922F0  38 E4 00 9C */	addi r7, r4, 0x9c
/* 802922F4  7C E3 3A 14 */	add r7, r3, r7
/* 802922F8  80 07 00 08 */	lwz r0, 8(r7)
/* 802922FC  28 00 00 00 */	cmplwi r0, 0
/* 80292300  41 82 00 38 */	beq lbl_80292338
/* 80292304  C0 67 00 00 */	lfs f3, 0(r7)
/* 80292308  C0 07 00 04 */	lfs f0, 4(r7)
/* 8029230C  EC 40 18 28 */	fsubs f2, f0, f3
/* 80292310  90 01 00 0C */	stw r0, 0xc(r1)
/* 80292314  90 C1 00 08 */	stw r6, 8(r1)
/* 80292318  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029231C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80292320  EC 02 00 24 */	fdivs f0, f2, f0
/* 80292324  EC 03 00 2A */	fadds f0, f3, f0
/* 80292328  D0 07 00 00 */	stfs f0, 0(r7)
/* 8029232C  80 A7 00 08 */	lwz r5, 8(r7)
/* 80292330  38 05 FF FF */	addi r0, r5, -1
/* 80292334  90 07 00 08 */	stw r0, 8(r7)
lbl_80292338:
/* 80292338  38 84 00 0C */	addi r4, r4, 0xc
/* 8029233C  42 00 FF B4 */	bdnz lbl_802922F0
/* 80292340  38 21 00 10 */	addi r1, r1, 0x10
/* 80292344  4E 80 00 20 */	blr 