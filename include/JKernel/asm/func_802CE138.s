/* 802CE138 002CB078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CE13C 002CB07C  7C 08 02 A6 */	mflr r0
/* 802CE140 002CB080  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CE144 002CB084  39 61 00 20 */	addi r11, r1, 0x20
/* 802CE148 002CB088  48 09 40 89 */	bl func_803621D0
/* 802CE14C 002CB08C  7C 7F 1B 78 */	mr r31, r3
/* 802CE150 002CB090  7C 9B 23 78 */	mr r27, r4
/* 802CE154 002CB094  7C BC 2B 78 */	mr r28, r5
/* 802CE158 002CB098  7C DD 33 78 */	mr r29, r6
/* 802CE15C 002CB09C  7C FE 3B 78 */	mr r30, r7
/* 802CE160 002CB0A0  48 00 33 1D */	bl __ct__11JKRDisposerFv
/* 802CE164 002CB0A4  3C 60 80 3D */	lis r3, lbl_803CBF70@ha
/* 802CE168 002CB0A8  38 03 BF 70 */	addi r0, r3, lbl_803CBF70@l
/* 802CE16C 002CB0AC  90 1F 00 00 */	stw r0, 0(r31)
/* 802CE170 002CB0B0  3B 5F 00 40 */	addi r26, r31, 0x40
/* 802CE174 002CB0B4  7F 43 D3 78 */	mr r3, r26
/* 802CE178 002CB0B8  48 00 DD 9D */	bl initiate__10JSUPtrListFv
/* 802CE17C 002CB0BC  38 7A 00 0C */	addi r3, r26, 0xc
/* 802CE180 002CB0C0  7F E4 FB 78 */	mr r4, r31
/* 802CE184 002CB0C4  48 00 DC 79 */	bl __ct__10JSUPtrLinkFPv
/* 802CE188 002CB0C8  38 7F 00 5C */	addi r3, r31, 0x5c
/* 802CE18C 002CB0CC  48 00 DD 89 */	bl initiate__10JSUPtrListFv
/* 802CE190 002CB0D0  38 7F 00 18 */	addi r3, r31, 0x18
/* 802CE194 002CB0D4  48 07 0E 75 */	bl OSInitMutex
/* 802CE198 002CB0D8  93 9F 00 38 */	stw r28, 0x38(r31)
/* 802CE19C 002CB0DC  93 7F 00 30 */	stw r27, 0x30(r31)
/* 802CE1A0 002CB0E0  7C 1B E2 14 */	add r0, r27, r28
/* 802CE1A4 002CB0E4  90 1F 00 34 */	stw r0, 0x34(r31)
/* 802CE1A8 002CB0E8  28 1D 00 00 */	cmplwi r29, 0
/* 802CE1AC 002CB0EC  40 82 00 18 */	bne lbl_802CE1C4
/* 802CE1B0 002CB0F0  7F E3 FB 78 */	mr r3, r31
/* 802CE1B4 002CB0F4  48 00 02 75 */	bl becomeSystemHeap__7JKRHeapFv
/* 802CE1B8 002CB0F8  7F E3 FB 78 */	mr r3, r31
/* 802CE1BC 002CB0FC  48 00 02 7D */	bl becomeCurrentHeap__7JKRHeapFv
/* 802CE1C0 002CB100  48 00 00 48 */	b lbl_802CE208
lbl_802CE1C4:
/* 802CE1C4 002CB104  34 9F 00 40 */	addic. r4, r31, 0x40
/* 802CE1C8 002CB108  41 82 00 08 */	beq lbl_802CE1D0
/* 802CE1CC 002CB10C  38 84 00 0C */	addi r4, r4, 0xc
lbl_802CE1D0:
/* 802CE1D0 002CB110  38 7D 00 40 */	addi r3, r29, 0x40
/* 802CE1D4 002CB114  48 00 DD 79 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802CE1D8 002CB118  80 6D 8D F0 */	lwz r3, lbl_80451370-_SDA_BASE_(r13)
/* 802CE1DC 002CB11C  80 0D 8D F8 */	lwz r0, lbl_80451378-_SDA_BASE_(r13)
/* 802CE1E0 002CB120  7C 03 00 40 */	cmplw r3, r0
/* 802CE1E4 002CB124  40 82 00 0C */	bne lbl_802CE1F0
/* 802CE1E8 002CB128  7F E3 FB 78 */	mr r3, r31
/* 802CE1EC 002CB12C  48 00 02 3D */	bl becomeSystemHeap__7JKRHeapFv
lbl_802CE1F0:
/* 802CE1F0 002CB130  80 6D 8D F4 */	lwz r3, lbl_80451374-_SDA_BASE_(r13)
/* 802CE1F4 002CB134  80 0D 8D F8 */	lwz r0, lbl_80451378-_SDA_BASE_(r13)
/* 802CE1F8 002CB138  7C 03 00 40 */	cmplw r3, r0
/* 802CE1FC 002CB13C  40 82 00 0C */	bne lbl_802CE208
/* 802CE200 002CB140  7F E3 FB 78 */	mr r3, r31
/* 802CE204 002CB144  48 00 02 35 */	bl becomeCurrentHeap__7JKRHeapFv
lbl_802CE208:
/* 802CE208 002CB148  9B DF 00 68 */	stb r30, 0x68(r31)
/* 802CE20C 002CB14C  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 802CE210 002CB150  28 00 00 01 */	cmplwi r0, 1
/* 802CE214 002CB154  40 82 00 1C */	bne lbl_802CE230
/* 802CE218 002CB158  80 0D 8D FC */	lwz r0, lbl_8045137C-_SDA_BASE_(r13)
/* 802CE21C 002CB15C  28 00 00 00 */	cmplwi r0, 0
/* 802CE220 002CB160  40 82 00 10 */	bne lbl_802CE230
//.global JKRDefaultMemoryErrorRoutine__FPvUli
/* 802CE224 002CB164  3C 60 80 2D */	lis r3, JKRDefaultMemoryErrorRoutine@ha
//.global JKRDefaultMemoryErrorRoutine__FPvUli
/* 802CE228 002CB168  38 03 EB 40 */	addi r0, r3, JKRDefaultMemoryErrorRoutine@l
/* 802CE22C 002CB16C  90 0D 8D FC */	stw r0, lbl_8045137C-_SDA_BASE_(r13)
lbl_802CE230:
/* 802CE230 002CB170  88 0D 83 30 */	lbz r0, lbl_804508B0-_SDA_BASE_(r13)
/* 802CE234 002CB174  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802CE238 002CB178  88 0D 8E 00 */	lbz r0, lbl_80451380-_SDA_BASE_(r13)
/* 802CE23C 002CB17C  98 1F 00 3D */	stb r0, 0x3d(r31)
/* 802CE240 002CB180  38 00 00 00 */	li r0, 0
/* 802CE244 002CB184  98 1F 00 69 */	stb r0, 0x69(r31)
/* 802CE248 002CB188  7F E3 FB 78 */	mr r3, r31
/* 802CE24C 002CB18C  39 61 00 20 */	addi r11, r1, 0x20
/* 802CE250 002CB190  48 09 3F CD */	bl func_8036221C
/* 802CE254 002CB194  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CE258 002CB198  7C 08 03 A6 */	mtlr r0
/* 802CE25C 002CB19C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CE260 002CB1A0  4E 80 00 20 */	blr 