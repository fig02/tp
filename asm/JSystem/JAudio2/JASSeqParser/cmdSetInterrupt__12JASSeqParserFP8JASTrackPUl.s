lbl_8029495C:
/* 8029495C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294960  7C 08 02 A6 */	mflr r0
/* 80294964  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294968  7C 83 23 78 */	mr r3, r4
/* 8029496C  80 85 00 00 */	lwz r4, 0(r5)
/* 80294970  4B FF F1 71 */	bl setIntrMask__10JASSeqCtrlFUl
/* 80294974  38 60 00 00 */	li r3, 0
/* 80294978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029497C  7C 08 03 A6 */	mtlr r0
/* 80294980  38 21 00 10 */	addi r1, r1, 0x10
/* 80294984  4E 80 00 20 */	blr 