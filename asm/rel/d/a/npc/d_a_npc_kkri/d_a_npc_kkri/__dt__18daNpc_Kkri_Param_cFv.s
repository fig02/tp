lbl_80553424:
/* 80553424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553428  7C 08 02 A6 */	mflr r0
/* 8055342C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80553434  7C 7F 1B 79 */	or. r31, r3, r3
/* 80553438  41 82 00 1C */	beq lbl_80553454
/* 8055343C  3C A0 80 55 */	lis r5, __vt__18daNpc_Kkri_Param_c@ha
/* 80553440  38 05 3E CC */	addi r0, r5, __vt__18daNpc_Kkri_Param_c@l
/* 80553444  90 1F 00 00 */	stw r0, 0(r31)
/* 80553448  7C 80 07 35 */	extsh. r0, r4
/* 8055344C  40 81 00 08 */	ble lbl_80553454
/* 80553450  4B D7 B8 EC */	b __dl__FPv
lbl_80553454:
/* 80553454  7F E3 FB 78 */	mr r3, r31
/* 80553458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055345C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553460  7C 08 03 A6 */	mtlr r0
/* 80553464  38 21 00 10 */	addi r1, r1, 0x10
/* 80553468  4E 80 00 20 */	blr 