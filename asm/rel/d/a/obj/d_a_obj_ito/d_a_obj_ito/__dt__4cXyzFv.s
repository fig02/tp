lbl_8047B9A4:
/* 8047B9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047B9A8  7C 08 02 A6 */	mflr r0
/* 8047B9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047B9B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047B9B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8047B9B8  41 82 00 10 */	beq lbl_8047B9C8
/* 8047B9BC  7C 80 07 35 */	extsh. r0, r4
/* 8047B9C0  40 81 00 08 */	ble lbl_8047B9C8
/* 8047B9C4  4B E5 33 78 */	b __dl__FPv
lbl_8047B9C8:
/* 8047B9C8  7F E3 FB 78 */	mr r3, r31
/* 8047B9CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047B9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047B9D4  7C 08 03 A6 */	mtlr r0
/* 8047B9D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8047B9DC  4E 80 00 20 */	blr 