lbl_802E80A8:
/* 802E80A8  2C 04 00 00 */	cmpwi r4, 0
/* 802E80AC  40 80 00 34 */	bge lbl_802E80E0
/* 802E80B0  80 A3 00 34 */	lwz r5, 0x34(r3)
/* 802E80B4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802E80B8  7C A5 00 51 */	subf. r5, r5, r0
/* 802E80BC  41 80 00 08 */	blt lbl_802E80C4
/* 802E80C0  48 00 00 0C */	b lbl_802E80CC
lbl_802E80C4:
/* 802E80C4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802E80C8  7C A5 02 14 */	add r5, r5, r0
lbl_802E80CC:
/* 802E80CC  7C 05 00 D0 */	neg r0, r5
/* 802E80D0  7C 04 00 00 */	cmpw r4, r0
/* 802E80D4  40 80 00 70 */	bge lbl_802E8144
/* 802E80D8  7C 04 03 78 */	mr r4, r0
/* 802E80DC  48 00 00 68 */	b lbl_802E8144
lbl_802E80E0:
/* 802E80E0  40 81 00 64 */	ble lbl_802E8144
/* 802E80E4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 802E80E8  80 C3 00 38 */	lwz r6, 0x38(r3)
/* 802E80EC  7C A0 30 51 */	subf. r5, r0, r6
/* 802E80F0  41 80 00 08 */	blt lbl_802E80F8
/* 802E80F4  48 00 00 0C */	b lbl_802E8100
lbl_802E80F8:
/* 802E80F8  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802E80FC  7C A5 02 14 */	add r5, r5, r0
lbl_802E8100:
/* 802E8100  38 05 00 01 */	addi r0, r5, 1
/* 802E8104  80 E3 00 48 */	lwz r7, 0x48(r3)
/* 802E8108  7C 00 38 40 */	cmplw r0, r7
/* 802E810C  41 81 00 0C */	bgt lbl_802E8118
/* 802E8110  38 80 00 00 */	li r4, 0
/* 802E8114  48 00 00 30 */	b lbl_802E8144
lbl_802E8118:
/* 802E8118  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802E811C  7C A0 30 51 */	subf. r5, r0, r6
/* 802E8120  41 80 00 08 */	blt lbl_802E8128
/* 802E8124  48 00 00 0C */	b lbl_802E8130
lbl_802E8128:
/* 802E8128  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802E812C  7C A5 02 14 */	add r5, r5, r0
lbl_802E8130:
/* 802E8130  7C A7 28 50 */	subf r5, r7, r5
/* 802E8134  38 05 00 01 */	addi r0, r5, 1
/* 802E8138  7C 04 00 00 */	cmpw r4, r0
/* 802E813C  40 81 00 08 */	ble lbl_802E8144
/* 802E8140  7C 04 03 78 */	mr r4, r0
lbl_802E8144:
/* 802E8144  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802E8148  7C 00 22 14 */	add r0, r0, r4
/* 802E814C  90 03 00 30 */	stw r0, 0x30(r3)
/* 802E8150  80 83 00 30 */	lwz r4, 0x30(r3)
/* 802E8154  2C 04 00 00 */	cmpwi r4, 0
/* 802E8158  40 80 00 10 */	bge lbl_802E8168
/* 802E815C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802E8160  7C 04 02 14 */	add r0, r4, r0
/* 802E8164  90 03 00 30 */	stw r0, 0x30(r3)
lbl_802E8168:
/* 802E8168  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802E816C  80 83 00 24 */	lwz r4, 0x24(r3)
/* 802E8170  7C 00 20 40 */	cmplw r0, r4
/* 802E8174  4D 80 00 20 */	bltlr 
/* 802E8178  7C 04 00 50 */	subf r0, r4, r0
/* 802E817C  90 03 00 30 */	stw r0, 0x30(r3)
/* 802E8180  4E 80 00 20 */	blr 