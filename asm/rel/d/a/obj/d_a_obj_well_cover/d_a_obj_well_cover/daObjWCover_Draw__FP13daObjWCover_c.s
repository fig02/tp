lbl_80D36978:
/* 80D36978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3697C  7C 08 02 A6 */	mflr r0
/* 80D36980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D36984  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80D36988  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D3698C  7D 89 03 A6 */	mtctr r12
/* 80D36990  4E 80 04 21 */	bctrl 
/* 80D36994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D36998  7C 08 03 A6 */	mtlr r0
/* 80D3699C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D369A0  4E 80 00 20 */	blr 