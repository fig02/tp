lbl_80580D58:
/* 80580D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80580D5C  7C 08 02 A6 */	mflr r0
/* 80580D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80580D64  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80580D68  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80580D6C  7D 89 03 A6 */	mtctr r12
/* 80580D70  4E 80 04 21 */	bctrl 
/* 80580D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580D78  7C 08 03 A6 */	mtlr r0
/* 80580D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80580D80  4E 80 00 20 */	blr 