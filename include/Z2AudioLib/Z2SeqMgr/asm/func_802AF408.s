/* 802AF408 002AC348  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AF40C 002AC34C  7C 08 02 A6 */	mflr r0
/* 802AF410 002AC350  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AF414 002AC354  39 61 00 20 */	addi r11, r1, 0x20
/* 802AF418 002AC358  48 0B 2D C5 */	bl _savegpr_29
/* 802AF41C 002AC35C  7C 7D 1B 78 */	mr r29, r3
/* 802AF420 002AC360  7C 9E 23 78 */	mr r30, r4
/* 802AF424 002AC364  7C BF 2B 78 */	mr r31, r5
/* 802AF428 002AC368  80 63 00 00 */	lwz r3, 0(r3)
/* 802AF42C 002AC36C  28 03 00 00 */	cmplwi r3, 0
/* 802AF430 002AC370  41 82 00 08 */	beq lbl_802AF438
/* 802AF434 002AC374  4B FF 30 A9 */	bl stop__8JAISoundFUl
lbl_802AF438:
/* 802AF438 002AC378  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802AF43C 002AC37C  28 03 00 00 */	cmplwi r3, 0
/* 802AF440 002AC380  41 82 00 0C */	beq lbl_802AF44C
/* 802AF444 002AC384  7F C4 F3 78 */	mr r4, r30
/* 802AF448 002AC388  4B FF 30 95 */	bl stop__8JAISoundFUl
lbl_802AF44C:
/* 802AF44C 002AC38C  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF450 002AC390  40 82 00 34 */	bne lbl_802AF484
/* 802AF454 002AC394  80 7D 00 04 */	lwz r3, 4(r29)
/* 802AF458 002AC398  28 03 00 00 */	cmplwi r3, 0
/* 802AF45C 002AC39C  41 82 00 0C */	beq lbl_802AF468
/* 802AF460 002AC3A0  7F C4 F3 78 */	mr r4, r30
/* 802AF464 002AC3A4  4B FF 30 79 */	bl stop__8JAISoundFUl
lbl_802AF468:
/* 802AF468 002AC3A8  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF46C 002AC3AC  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 802AF470 002AC3B0  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF474 002AC3B4  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 802AF478 002AC3B8  38 00 00 00 */	li r0, 0
/* 802AF47C 002AC3BC  90 1D 00 20 */	stw r0, 0x20(r29)
/* 802AF480 002AC3C0  D0 1D 00 1C */	stfs f0, 0x1c(r29)
lbl_802AF484:
/* 802AF484 002AC3C4  39 61 00 20 */	addi r11, r1, 0x20
/* 802AF488 002AC3C8  48 0B 2D A1 */	bl _restgpr_29
/* 802AF48C 002AC3CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AF490 002AC3D0  7C 08 03 A6 */	mtlr r0
/* 802AF494 002AC3D4  38 21 00 20 */	addi r1, r1, 0x20
/* 802AF498 002AC3D8  4E 80 00 20 */	blr 