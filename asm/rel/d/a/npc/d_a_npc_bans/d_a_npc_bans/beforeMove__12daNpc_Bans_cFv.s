lbl_80964148:
/* 80964148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096414C  7C 08 02 A6 */	mflr r0
/* 80964150  90 01 00 14 */	stw r0, 0x14(r1)
/* 80964154  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80964158  93 C1 00 08 */	stw r30, 8(r1)
/* 8096415C  7C 7E 1B 78 */	mr r30, r3
/* 80964160  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80964164  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80964168  90 03 04 9C */	stw r0, 0x49c(r3)
/* 8096416C  3B E0 00 00 */	li r31, 0
/* 80964170  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80964174  28 00 00 00 */	cmplwi r0, 0
/* 80964178  40 82 00 1C */	bne lbl_80964194
/* 8096417C  4B 6C B8 D8 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80964180  2C 03 00 00 */	cmpwi r3, 0
/* 80964184  40 82 00 14 */	bne lbl_80964198
/* 80964188  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 8096418C  28 00 00 00 */	cmplwi r0, 0
/* 80964190  41 82 00 08 */	beq lbl_80964198
lbl_80964194:
/* 80964194  3B E0 00 01 */	li r31, 1
lbl_80964198:
/* 80964198  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8096419C  41 82 00 10 */	beq lbl_809641AC
/* 809641A0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 809641A4  64 00 08 00 */	oris r0, r0, 0x800
/* 809641A8  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_809641AC:
/* 809641AC  7F C3 F3 78 */	mr r3, r30
/* 809641B0  48 00 0B 71 */	bl checkPlayerIn2ndFloorOfBombShop__12daNpc_Bans_cFv
/* 809641B4  2C 03 00 00 */	cmpwi r3, 0
/* 809641B8  41 82 00 10 */	beq lbl_809641C8
/* 809641BC  38 00 00 00 */	li r0, 0
/* 809641C0  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 809641C4  48 00 00 4C */	b lbl_80964210
lbl_809641C8:
/* 809641C8  3B E0 00 00 */	li r31, 0
/* 809641CC  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 809641D0  28 00 00 00 */	cmplwi r0, 0
/* 809641D4  40 82 00 1C */	bne lbl_809641F0
/* 809641D8  4B 6C B8 7C */	b dComIfGs_wolfeye_effect_check__Fv
/* 809641DC  2C 03 00 00 */	cmpwi r3, 0
/* 809641E0  40 82 00 14 */	bne lbl_809641F4
/* 809641E4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809641E8  28 00 00 00 */	cmplwi r0, 0
/* 809641EC  41 82 00 08 */	beq lbl_809641F4
lbl_809641F0:
/* 809641F0  3B E0 00 01 */	li r31, 1
lbl_809641F4:
/* 809641F4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 809641F8  40 82 00 10 */	bne lbl_80964208
/* 809641FC  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80964200  28 00 00 00 */	cmplwi r0, 0
/* 80964204  41 82 00 0C */	beq lbl_80964210
lbl_80964208:
/* 80964208  38 00 00 00 */	li r0, 0
/* 8096420C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80964210:
/* 80964210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80964214  83 C1 00 08 */	lwz r30, 8(r1)
/* 80964218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096421C  7C 08 03 A6 */	mtlr r0
/* 80964220  38 21 00 10 */	addi r1, r1, 0x10
/* 80964224  4E 80 00 20 */	blr 