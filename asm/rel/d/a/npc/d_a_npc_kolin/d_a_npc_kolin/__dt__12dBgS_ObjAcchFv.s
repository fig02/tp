lbl_80559D2C:
/* 80559D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559D30  7C 08 02 A6 */	mflr r0
/* 80559D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80559D3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80559D40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80559D44  7C 9F 23 78 */	mr r31, r4
/* 80559D48  41 82 00 38 */	beq lbl_80559D80
/* 80559D4C  3C 80 80 56 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80559D50  38 84 B2 64 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80559D54  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80559D58  38 04 00 0C */	addi r0, r4, 0xc
/* 80559D5C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80559D60  38 04 00 18 */	addi r0, r4, 0x18
/* 80559D64  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80559D68  38 80 00 00 */	li r4, 0
/* 80559D6C  4B B1 C2 28 */	b __dt__9dBgS_AcchFv
/* 80559D70  7F E0 07 35 */	extsh. r0, r31
/* 80559D74  40 81 00 0C */	ble lbl_80559D80
/* 80559D78  7F C3 F3 78 */	mr r3, r30
/* 80559D7C  4B D7 4F C0 */	b __dl__FPv
lbl_80559D80:
/* 80559D80  7F C3 F3 78 */	mr r3, r30
/* 80559D84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80559D88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80559D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559D90  7C 08 03 A6 */	mtlr r0
/* 80559D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80559D98  4E 80 00 20 */	blr 