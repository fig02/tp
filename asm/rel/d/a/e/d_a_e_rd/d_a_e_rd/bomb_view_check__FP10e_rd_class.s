lbl_80506758:
/* 80506758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050675C  7C 08 02 A6 */	mflr r0
/* 80506760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506764  38 80 00 01 */	li r4, 1
/* 80506768  4B FF F6 95 */	bl search_bomb__FP10e_rd_classi
/* 8050676C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80506770  7C 08 03 A6 */	mtlr r0
/* 80506774  38 21 00 10 */	addi r1, r1, 0x10
/* 80506778  4E 80 00 20 */	blr 