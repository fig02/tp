lbl_8054D374:
/* 8054D374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D378  7C 08 02 A6 */	mflr r0
/* 8054D37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054D384  7C 7F 1B 78 */	mr r31, r3
/* 8054D388  4B AE 43 58 */	b daNpcKakashi_getSwdTutorialStep__Fv
/* 8054D38C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8054D390  2C 00 00 04 */	cmpwi r0, 4
/* 8054D394  41 82 00 68 */	beq lbl_8054D3FC
/* 8054D398  40 80 00 14 */	bge lbl_8054D3AC
/* 8054D39C  2C 00 00 02 */	cmpwi r0, 2
/* 8054D3A0  41 82 00 1C */	beq lbl_8054D3BC
/* 8054D3A4  40 80 00 44 */	bge lbl_8054D3E8
/* 8054D3A8  48 00 00 D0 */	b lbl_8054D478
lbl_8054D3AC:
/* 8054D3AC  2C 00 00 06 */	cmpwi r0, 6
/* 8054D3B0  41 82 00 9C */	beq lbl_8054D44C
/* 8054D3B4  40 80 00 C4 */	bge lbl_8054D478
/* 8054D3B8  48 00 00 68 */	b lbl_8054D420
lbl_8054D3BC:
/* 8054D3BC  80 1F 0D B0 */	lwz r0, 0xdb0(r31)
/* 8054D3C0  2C 00 00 03 */	cmpwi r0, 3
/* 8054D3C4  41 82 00 1C */	beq lbl_8054D3E0
/* 8054D3C8  2C 00 00 04 */	cmpwi r0, 4
/* 8054D3CC  41 82 00 14 */	beq lbl_8054D3E0
/* 8054D3D0  2C 00 00 06 */	cmpwi r0, 6
/* 8054D3D4  41 82 00 0C */	beq lbl_8054D3E0
/* 8054D3D8  2C 00 00 07 */	cmpwi r0, 7
/* 8054D3DC  40 82 00 0C */	bne lbl_8054D3E8
lbl_8054D3E0:
/* 8054D3E0  38 60 00 01 */	li r3, 1
/* 8054D3E4  48 00 00 98 */	b lbl_8054D47C
lbl_8054D3E8:
/* 8054D3E8  80 1F 0D B0 */	lwz r0, 0xdb0(r31)
/* 8054D3EC  2C 00 00 01 */	cmpwi r0, 1
/* 8054D3F0  40 82 00 88 */	bne lbl_8054D478
/* 8054D3F4  38 60 00 01 */	li r3, 1
/* 8054D3F8  48 00 00 84 */	b lbl_8054D47C
lbl_8054D3FC:
/* 8054D3FC  80 1F 0D B0 */	lwz r0, 0xdb0(r31)
/* 8054D400  2C 00 00 02 */	cmpwi r0, 2
/* 8054D404  41 82 00 14 */	beq lbl_8054D418
/* 8054D408  2C 00 00 20 */	cmpwi r0, 0x20
/* 8054D40C  41 82 00 0C */	beq lbl_8054D418
/* 8054D410  2C 00 00 21 */	cmpwi r0, 0x21
/* 8054D414  40 82 00 64 */	bne lbl_8054D478
lbl_8054D418:
/* 8054D418  38 60 00 01 */	li r3, 1
/* 8054D41C  48 00 00 60 */	b lbl_8054D47C
lbl_8054D420:
/* 8054D420  80 1F 0D B0 */	lwz r0, 0xdb0(r31)
/* 8054D424  2C 00 00 08 */	cmpwi r0, 8
/* 8054D428  41 82 00 1C */	beq lbl_8054D444
/* 8054D42C  2C 00 00 16 */	cmpwi r0, 0x16
/* 8054D430  41 82 00 14 */	beq lbl_8054D444
/* 8054D434  2C 00 00 17 */	cmpwi r0, 0x17
/* 8054D438  41 82 00 0C */	beq lbl_8054D444
/* 8054D43C  2C 00 00 18 */	cmpwi r0, 0x18
/* 8054D440  40 82 00 38 */	bne lbl_8054D478
lbl_8054D444:
/* 8054D444  38 60 00 01 */	li r3, 1
/* 8054D448  48 00 00 34 */	b lbl_8054D47C
lbl_8054D44C:
/* 8054D44C  80 1F 0D B0 */	lwz r0, 0xdb0(r31)
/* 8054D450  2C 00 00 0A */	cmpwi r0, 0xa
/* 8054D454  41 82 00 1C */	beq lbl_8054D470
/* 8054D458  2C 00 00 12 */	cmpwi r0, 0x12
/* 8054D45C  41 82 00 14 */	beq lbl_8054D470
/* 8054D460  2C 00 00 13 */	cmpwi r0, 0x13
/* 8054D464  41 82 00 0C */	beq lbl_8054D470
/* 8054D468  2C 00 00 14 */	cmpwi r0, 0x14
/* 8054D46C  40 82 00 0C */	bne lbl_8054D478
lbl_8054D470:
/* 8054D470  38 60 00 01 */	li r3, 1
/* 8054D474  48 00 00 08 */	b lbl_8054D47C
lbl_8054D478:
/* 8054D478  38 60 00 00 */	li r3, 0
lbl_8054D47C:
/* 8054D47C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054D480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D484  7C 08 03 A6 */	mtlr r0
/* 8054D488  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D48C  4E 80 00 20 */	blr 