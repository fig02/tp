lbl_807647F0:
/* 807647F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807647F4  7C 08 02 A6 */	mflr r0
/* 807647F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807647FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80764800  7C 7F 1B 79 */	or. r31, r3, r3
/* 80764804  41 82 00 1C */	beq lbl_80764820
/* 80764808  3C A0 80 76 */	lis r5, __vt__10cCcD_GStts@ha
/* 8076480C  38 05 4E DC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80764810  90 1F 00 00 */	stw r0, 0(r31)
/* 80764814  7C 80 07 35 */	extsh. r0, r4
/* 80764818  40 81 00 08 */	ble lbl_80764820
/* 8076481C  4B B6 A5 20 */	b __dl__FPv
lbl_80764820:
/* 80764820  7F E3 FB 78 */	mr r3, r31
/* 80764824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80764828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076482C  7C 08 03 A6 */	mtlr r0
/* 80764830  38 21 00 10 */	addi r1, r1, 0x10
/* 80764834  4E 80 00 20 */	blr 