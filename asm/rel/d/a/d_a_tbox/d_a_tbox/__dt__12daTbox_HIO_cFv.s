lbl_804960B8:
/* 804960B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804960BC  7C 08 02 A6 */	mflr r0
/* 804960C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804960C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804960C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804960CC  41 82 00 30 */	beq lbl_804960FC
/* 804960D0  3C 60 80 49 */	lis r3, __vt__12daTbox_HIO_c@ha
/* 804960D4  38 03 68 74 */	addi r0, r3, __vt__12daTbox_HIO_c@l
/* 804960D8  90 1F 00 00 */	stw r0, 0(r31)
/* 804960DC  41 82 00 10 */	beq lbl_804960EC
/* 804960E0  3C 60 80 49 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 804960E4  38 03 68 80 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 804960E8  90 1F 00 00 */	stw r0, 0(r31)
lbl_804960EC:
/* 804960EC  7C 80 07 35 */	extsh. r0, r4
/* 804960F0  40 81 00 0C */	ble lbl_804960FC
/* 804960F4  7F E3 FB 78 */	mr r3, r31
/* 804960F8  4B E3 8C 44 */	b __dl__FPv
lbl_804960FC:
/* 804960FC  7F E3 FB 78 */	mr r3, r31
/* 80496100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80496104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496108  7C 08 03 A6 */	mtlr r0
/* 8049610C  38 21 00 10 */	addi r1, r1, 0x10
/* 80496110  4E 80 00 20 */	blr 