/* 802DC094 002D8FD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DC098 002D8FD8  7C 08 02 A6 */	mflr r0
/* 802DC09C 002D8FDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DC0A0 002D8FE0  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC0A4 002D8FE4  48 08 61 39 */	bl _savegpr_29
/* 802DC0A8 002D8FE8  7C 7D 1B 78 */	mr r29, r3
/* 802DC0AC 002D8FEC  7C 9E 23 78 */	mr r30, r4
/* 802DC0B0 002D8FF0  7C BF 2B 78 */	mr r31, r5
/* 802DC0B4 002D8FF4  80 03 00 00 */	lwz r0, 0(r3)
/* 802DC0B8 002D8FF8  7C 1E 00 40 */	cmplw r30, r0
/* 802DC0BC 002D8FFC  40 82 00 10 */	bne lbl_802DC0CC
/* 802DC0C0 002D9000  7F E4 FB 78 */	mr r4, r31
/* 802DC0C4 002D9004  4B FF FF 2D */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 802DC0C8 002D9008  48 00 00 7C */	b lbl_802DC144
lbl_802DC0CC:
/* 802DC0CC 002D900C  28 1E 00 00 */	cmplwi r30, 0
/* 802DC0D0 002D9010  40 82 00 10 */	bne lbl_802DC0E0
/* 802DC0D4 002D9014  7F E4 FB 78 */	mr r4, r31
/* 802DC0D8 002D9018  4B FF FE 75 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802DC0DC 002D901C  48 00 00 68 */	b lbl_802DC144
lbl_802DC0E0:
/* 802DC0E0 002D9020  80 1E 00 04 */	lwz r0, 4(r30)
/* 802DC0E4 002D9024  7C 00 E8 40 */	cmplw r0, r29
/* 802DC0E8 002D9028  41 82 00 0C */	beq lbl_802DC0F4
/* 802DC0EC 002D902C  38 60 00 00 */	li r3, 0
/* 802DC0F0 002D9030  48 00 00 54 */	b lbl_802DC144
lbl_802DC0F4:
/* 802DC0F4 002D9034  80 7F 00 04 */	lwz r3, 4(r31)
/* 802DC0F8 002D9038  7C 60 00 34 */	cntlzw r0, r3
/* 802DC0FC 002D903C  54 04 D9 7E */	srwi r4, r0, 5
/* 802DC100 002D9040  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802DC104 002D9044  40 82 00 10 */	bne lbl_802DC114
/* 802DC108 002D9048  7F E4 FB 78 */	mr r4, r31
/* 802DC10C 002D904C  48 00 00 51 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802DC110 002D9050  7C 64 1B 78 */	mr r4, r3
lbl_802DC114:
/* 802DC114 002D9054  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802DC118 002D9058  41 82 00 28 */	beq lbl_802DC140
/* 802DC11C 002D905C  80 7E 00 08 */	lwz r3, 8(r30)
/* 802DC120 002D9060  93 BF 00 04 */	stw r29, 4(r31)
/* 802DC124 002D9064  90 7F 00 08 */	stw r3, 8(r31)
/* 802DC128 002D9068  93 DF 00 0C */	stw r30, 0xc(r31)
/* 802DC12C 002D906C  93 E3 00 0C */	stw r31, 0xc(r3)
/* 802DC130 002D9070  93 FE 00 08 */	stw r31, 8(r30)
/* 802DC134 002D9074  80 7D 00 08 */	lwz r3, 8(r29)
/* 802DC138 002D9078  38 03 00 01 */	addi r0, r3, 1
/* 802DC13C 002D907C  90 1D 00 08 */	stw r0, 8(r29)
lbl_802DC140:
/* 802DC140 002D9080  7C 83 23 78 */	mr r3, r4
lbl_802DC144:
/* 802DC144 002D9084  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC148 002D9088  48 08 60 E1 */	bl _restgpr_29
/* 802DC14C 002D908C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC150 002D9090  7C 08 03 A6 */	mtlr r0
/* 802DC154 002D9094  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC158 002D9098  4E 80 00 20 */	blr 