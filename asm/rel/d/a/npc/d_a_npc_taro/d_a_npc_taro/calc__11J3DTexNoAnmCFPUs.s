lbl_805701F8:
/* 805701F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805701FC  7C 08 02 A6 */	mflr r0
/* 80570200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570204  7C 66 1B 78 */	mr r6, r3
/* 80570208  7C 85 23 78 */	mr r5, r4
/* 8057020C  80 63 00 08 */	lwz r3, 8(r3)
/* 80570210  A0 86 00 04 */	lhz r4, 4(r6)
/* 80570214  4B DB AD 3C */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80570218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057021C  7C 08 03 A6 */	mtlr r0
/* 80570220  38 21 00 10 */	addi r1, r1, 0x10
/* 80570224  4E 80 00 20 */	blr 