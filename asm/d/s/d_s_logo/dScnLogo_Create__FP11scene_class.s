lbl_80258420:
/* 80258420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80258424  7C 08 02 A6 */	mflr r0
/* 80258428  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025842C  28 03 00 00 */	cmplwi r3, 0
/* 80258430  4B FF F6 B1 */	bl create__10dScnLogo_cFv
/* 80258434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80258438  7C 08 03 A6 */	mtlr r0
/* 8025843C  38 21 00 10 */	addi r1, r1, 0x10
/* 80258440  4E 80 00 20 */	blr 