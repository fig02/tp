lbl_80C11EA8:
/* 80C11EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C11EAC  7C 08 02 A6 */	mflr r0
/* 80C11EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C11EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C11EB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C11EBC  41 82 00 1C */	beq lbl_80C11ED8
/* 80C11EC0  3C A0 80 C1 */	lis r5, __vt__8cM3dGCyl@ha
/* 80C11EC4  38 05 25 00 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80C11EC8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C11ECC  7C 80 07 35 */	extsh. r0, r4
/* 80C11ED0  40 81 00 08 */	ble lbl_80C11ED8
/* 80C11ED4  4B 6B CE 68 */	b __dl__FPv
lbl_80C11ED8:
/* 80C11ED8  7F E3 FB 78 */	mr r3, r31
/* 80C11EDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C11EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C11EE4  7C 08 03 A6 */	mtlr r0
/* 80C11EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C11EEC  4E 80 00 20 */	blr 