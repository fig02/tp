lbl_80490240:
/* 80490240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80490244  7C 08 02 A6 */	mflr r0
/* 80490248  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049024C  3C 60 80 49 */	lis r3, data_80490944@ha
/* 80490250  38 63 09 44 */	addi r3, r3, data_80490944@l
/* 80490254  4B DD 2E F8 */	b ModuleConstructorsX
/* 80490258  4B DD 2E 30 */	b ModuleProlog
/* 8049025C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490260  7C 08 03 A6 */	mtlr r0
/* 80490264  38 21 00 10 */	addi r1, r1, 0x10
/* 80490268  4E 80 00 20 */	blr 