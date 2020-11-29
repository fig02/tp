.include "macros.inc"

.section .text, "ax" # 80196914


/* 80196914 00193854  3C 80 80 3C */	lis r4, lbl_803BB888@ha
/* 80196918 00193858  38 04 B8 88 */	addi r0, r4, lbl_803BB888@l
/* 8019691C 0019385C  90 03 00 00 */	stw r0, 0(r3)
/* 80196920 00193860  38 80 00 00 */	li r4, 0
/* 80196924 00193864  38 A0 00 00 */	li r5, 0
/* 80196928 00193868  38 E0 FF FF */	li r7, -1
/* 8019692C 0019386C  7C A6 2B 78 */	mr r6, r5
/* 80196930 00193870  38 00 00 07 */	li r0, 7
/* 80196934 00193874  7C 09 03 A6 */	mtctr r0
lbl_80196938:
/* 80196938 00193878  38 05 00 04 */	addi r0, r5, 4
/* 8019693C 0019387C  7C E3 01 2E */	stwx r7, r3, r0
/* 80196940 00193880  38 04 00 20 */	addi r0, r4, 0x20
/* 80196944 00193884  7C C3 03 2E */	sthx r6, r3, r0
/* 80196948 00193888  38 84 00 02 */	addi r4, r4, 2
/* 8019694C 0019388C  38 A5 00 04 */	addi r5, r5, 4
/* 80196950 00193890  42 00 FF E8 */	bdnz lbl_80196938
/* 80196954 00193894  4E 80 00 20 */	blr 

.global dShopItemCtrl_c_NS_dtor
dShopItemCtrl_c_NS_dtor:
/* 80196958 00193898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019695C 0019389C  7C 08 02 A6 */	mflr r0
/* 80196960 001938A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80196964 001938A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80196968 001938A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8019696C 001938AC  41 82 00 1C */	beq lbl_80196988
/* 80196970 001938B0  3C A0 80 3C */	lis r5, lbl_803BB888@ha
/* 80196974 001938B4  38 05 B8 88 */	addi r0, r5, lbl_803BB888@l
/* 80196978 001938B8  90 1F 00 00 */	stw r0, 0(r31)
/* 8019697C 001938BC  7C 80 07 35 */	extsh. r0, r4
/* 80196980 001938C0  40 81 00 08 */	ble lbl_80196988
/* 80196984 001938C4  48 13 83 B9 */	bl __dl__FPv
lbl_80196988:
/* 80196988 001938C8  7F E3 FB 78 */	mr r3, r31
/* 8019698C 001938CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80196990 001938D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80196994 001938D4  7C 08 03 A6 */	mtlr r0
/* 80196998 001938D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019699C 001938DC  4E 80 00 20 */	blr 

.global dShopItemCtrl_c_NS_getCurrentPos
dShopItemCtrl_c_NS_getCurrentPos:
/* 801969A0 001938E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801969A4 001938E4  7C 08 02 A6 */	mflr r0
/* 801969A8 001938E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801969AC 001938EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801969B0 001938F0  7C 7F 1B 78 */	mr r31, r3
/* 801969B4 001938F4  C0 02 A0 D0 */	lfs f0, lbl_80453AD0-_SDA2_BASE_(r2)
/* 801969B8 001938F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801969BC 001938FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801969C0 00193900  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801969C4 00193904  54 A0 10 3A */	slwi r0, r5, 2
/* 801969C8 00193908  7C 64 02 14 */	add r3, r4, r0
/* 801969CC 0019390C  80 63 00 04 */	lwz r3, 4(r3)
/* 801969D0 00193910  3C 03 00 01 */	addis r0, r3, 1
/* 801969D4 00193914  28 00 FF FF */	cmplwi r0, 0xffff
/* 801969D8 00193918  41 82 00 38 */	beq lbl_80196A10
/* 801969DC 0019391C  90 61 00 08 */	stw r3, 8(r1)
.global fpcSch_JudgeByID
/* 801969E0 00193920  3C 60 80 02 */	lis r3, fpcSch_JudgeByID@ha
.global fpcSch_JudgeByID
/* 801969E4 00193924  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID@l
/* 801969E8 00193928  38 81 00 08 */	addi r4, r1, 8
/* 801969EC 0019392C  4B E8 2E 0D */	bl fopAcIt_Judge
/* 801969F0 00193930  28 03 00 00 */	cmplwi r3, 0
/* 801969F4 00193934  41 82 00 1C */	beq lbl_80196A10
/* 801969F8 00193938  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 801969FC 0019393C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80196A00 00193940  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80196A04 00193944  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80196A08 00193948  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80196A0C 0019394C  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_80196A10:
/* 80196A10 00193950  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80196A14 00193954  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80196A18 00193958  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80196A1C 0019395C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80196A20 00193960  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80196A24 00193964  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80196A28 00193968  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80196A2C 0019396C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80196A30 00193970  7C 08 03 A6 */	mtlr r0
/* 80196A34 00193974  38 21 00 20 */	addi r1, r1, 0x20
/* 80196A38 00193978  4E 80 00 20 */	blr 

.global dShopItemCtrl_c_NS_isHomePos
dShopItemCtrl_c_NS_isHomePos:
/* 80196A3C 0019397C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80196A40 00193980  7C 08 02 A6 */	mflr r0
/* 80196A44 00193984  90 01 00 24 */	stw r0, 0x24(r1)
/* 80196A48 00193988  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80196A4C 0019398C  2C 04 00 00 */	cmpwi r4, 0
/* 80196A50 00193990  41 80 00 88 */	blt lbl_80196AD8
/* 80196A54 00193994  2C 04 00 07 */	cmpwi r4, 7
/* 80196A58 00193998  40 80 00 80 */	bge lbl_80196AD8
/* 80196A5C 0019399C  54 80 10 3A */	slwi r0, r4, 2
/* 80196A60 001939A0  7C 63 02 14 */	add r3, r3, r0
/* 80196A64 001939A4  80 63 00 04 */	lwz r3, 4(r3)
/* 80196A68 001939A8  3C 03 00 01 */	addis r0, r3, 1
/* 80196A6C 001939AC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80196A70 001939B0  41 82 00 68 */	beq lbl_80196AD8
/* 80196A74 001939B4  90 61 00 08 */	stw r3, 8(r1)
.global fpcSch_JudgeByID
/* 80196A78 001939B8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID@ha
.global fpcSch_JudgeByID
/* 80196A7C 001939BC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID@l
/* 80196A80 001939C0  38 81 00 08 */	addi r4, r1, 8
/* 80196A84 001939C4  4B E8 2D 75 */	bl fopAcIt_Judge
/* 80196A88 001939C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80196A8C 001939CC  41 82 00 4C */	beq lbl_80196AD8
/* 80196A90 001939D0  4B EA 11 8D */	bl daShopItem_c_NS_getPosP
/* 80196A94 001939D4  C0 7F 04 A8 */	lfs f3, 0x4a8(r31)
/* 80196A98 001939D8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80196A9C 001939DC  C0 5F 04 AC */	lfs f2, 0x4ac(r31)
/* 80196AA0 001939E0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80196AA4 001939E4  C0 3F 04 B0 */	lfs f1, 0x4b0(r31)
/* 80196AA8 001939E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80196AAC 001939EC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80196AB0 001939F0  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 80196AB4 001939F4  40 82 00 24 */	bne lbl_80196AD8
/* 80196AB8 001939F8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80196ABC 001939FC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80196AC0 00193A00  40 82 00 18 */	bne lbl_80196AD8
/* 80196AC4 00193A04  C0 03 00 08 */	lfs f0, 8(r3)
/* 80196AC8 00193A08  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80196ACC 00193A0C  40 82 00 0C */	bne lbl_80196AD8
/* 80196AD0 00193A10  38 60 00 01 */	li r3, 1
/* 80196AD4 00193A14  48 00 00 08 */	b lbl_80196ADC
lbl_80196AD8:
/* 80196AD8 00193A18  38 60 00 00 */	li r3, 0
lbl_80196ADC:
/* 80196ADC 00193A1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80196AE0 00193A20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80196AE4 00193A24  7C 08 03 A6 */	mtlr r0
/* 80196AE8 00193A28  38 21 00 20 */	addi r1, r1, 0x20
/* 80196AEC 00193A2C  4E 80 00 20 */	blr 

.global dShopItemCtrl_c_NS_setRotateAnime
dShopItemCtrl_c_NS_setRotateAnime:
/* 80196AF0 00193A30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80196AF4 00193A34  7C 08 02 A6 */	mflr r0
/* 80196AF8 00193A38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80196AFC 00193A3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80196B00 00193A40  48 1C B6 D5 */	bl _savegpr_27
/* 80196B04 00193A44  7C 7B 1B 78 */	mr r27, r3
/* 80196B08 00193A48  7C 9C 23 78 */	mr r28, r4
/* 80196B0C 00193A4C  3B A0 00 00 */	li r29, 0
/* 80196B10 00193A50  3B E0 00 00 */	li r31, 0
lbl_80196B14:
/* 80196B14 00193A54  38 1F 00 04 */	addi r0, r31, 4
/* 80196B18 00193A58  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80196B1C 00193A5C  3C 03 00 01 */	addis r0, r3, 1
/* 80196B20 00193A60  28 00 FF FF */	cmplwi r0, 0xffff
/* 80196B24 00193A64  41 82 00 58 */	beq lbl_80196B7C
/* 80196B28 00193A68  90 61 00 08 */	stw r3, 8(r1)
.global fpcSch_JudgeByID
/* 80196B2C 00193A6C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID@ha
.global fpcSch_JudgeByID
/* 80196B30 00193A70  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID@l
/* 80196B34 00193A74  38 81 00 08 */	addi r4, r1, 8
/* 80196B38 00193A78  4B E8 2C C1 */	bl fopAcIt_Judge
/* 80196B3C 00193A7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80196B40 00193A80  41 82 00 3C */	beq lbl_80196B7C
/* 80196B44 00193A84  4B EA 10 D1 */	bl daShopItem_c_NS_getRotateP
/* 80196B48 00193A88  38 1C FF FF */	addi r0, r28, -1
/* 80196B4C 00193A8C  7C 1D 00 00 */	cmpw r29, r0
/* 80196B50 00193A90  40 82 00 14 */	bne lbl_80196B64
/* 80196B54 00193A94  A8 83 00 02 */	lha r4, 2(r3)
/* 80196B58 00193A98  38 04 02 00 */	addi r0, r4, 0x200
/* 80196B5C 00193A9C  B0 03 00 02 */	sth r0, 2(r3)
/* 80196B60 00193AA0  48 00 00 1C */	b lbl_80196B7C
lbl_80196B64:
/* 80196B64 00193AA4  38 63 00 02 */	addi r3, r3, 2
/* 80196B68 00193AA8  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80196B6C 00193AAC  38 A0 00 04 */	li r5, 4
/* 80196B70 00193AB0  38 C0 08 00 */	li r6, 0x800
/* 80196B74 00193AB4  38 E0 00 80 */	li r7, 0x80
/* 80196B78 00193AB8  48 0D 99 C9 */	bl cLib_addCalcAngleS
lbl_80196B7C:
/* 80196B7C 00193ABC  3B BD 00 01 */	addi r29, r29, 1
/* 80196B80 00193AC0  2C 1D 00 07 */	cmpwi r29, 7
/* 80196B84 00193AC4  3B FF 00 04 */	addi r31, r31, 4
/* 80196B88 00193AC8  41 80 FF 8C */	blt lbl_80196B14
/* 80196B8C 00193ACC  39 61 00 30 */	addi r11, r1, 0x30
/* 80196B90 00193AD0  48 1C B6 91 */	bl _restgpr_27
/* 80196B94 00193AD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80196B98 00193AD8  7C 08 03 A6 */	mtlr r0
/* 80196B9C 00193ADC  38 21 00 30 */	addi r1, r1, 0x30
/* 80196BA0 00193AE0  4E 80 00 20 */	blr 

.global dShopItemCtrl_c_NS_setZoomAnime
dShopItemCtrl_c_NS_setZoomAnime:
/* 80196BA4 00193AE4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80196BA8 00193AE8  7C 08 02 A6 */	mflr r0
/* 80196BAC 00193AEC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80196BB0 00193AF0  39 61 00 80 */	addi r11, r1, 0x80
/* 80196BB4 00193AF4  48 1C B6 11 */	bl func_803621C4
/* 80196BB8 00193AF8  7C 78 1B 78 */	mr r24, r3
/* 80196BBC 00193AFC  7C 99 23 78 */	mr r25, r4
/* 80196BC0 00193B00  7C BA 2B 78 */	mr r26, r5
/* 80196BC4 00193B04  7C DB 33 78 */	mr r27, r6
/* 80196BC8 00193B08  7C FC 3B 78 */	mr r28, r7
/* 80196BCC 00193B0C  3B C0 00 00 */	li r30, 0
/* 80196BD0 00193B10  3A E0 00 00 */	li r23, 0
lbl_80196BD4:
/* 80196BD4 00193B14  38 17 00 04 */	addi r0, r23, 4
/* 80196BD8 00193B18  7C 78 00 2E */	lwzx r3, r24, r0
/* 80196BDC 00193B1C  3C 03 00 01 */	addis r0, r3, 1
/* 80196BE0 00193B20  28 00 FF FF */	cmplwi r0, 0xffff
/* 80196BE4 00193B24  41 82 04 8C */	beq lbl_80197070
/* 80196BE8 00193B28  90 61 00 18 */	stw r3, 0x18(r1)
.global fpcSch_JudgeByID
/* 80196BEC 00193B2C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID@ha
.global fpcSch_JudgeByID
/* 80196BF0 00193B30  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID@l
/* 80196BF4 00193B34  38 81 00 18 */	addi r4, r1, 0x18
/* 80196BF8 00193B38  4B E8 2C 01 */	bl fopAcIt_Judge
/* 80196BFC 00193B3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80196C00 00193B40  41 82 04 70 */	beq lbl_80197070
/* 80196C04 00193B44  4B EA 10 19 */	bl daShopItem_c_NS_getPosP
/* 80196C08 00193B48  7C 7D 1B 78 */	mr r29, r3
/* 80196C0C 00193B4C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80196C10 00193B50  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80196C14 00193B54  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80196C18 00193B58  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80196C1C 00193B5C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80196C20 00193B60  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80196C24 00193B64  38 61 00 28 */	addi r3, r1, 0x28
/* 80196C28 00193B68  7F 44 D3 78 */	mr r4, r26
/* 80196C2C 00193B6C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80196C30 00193B70  48 0C FF 05 */	bl cXyz_NS___mi
/* 80196C34 00193B74  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80196C38 00193B78  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80196C3C 00193B7C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80196C40 00193B80  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80196C44 00193B84  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80196C48 00193B88  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80196C4C 00193B8C  A8 1F 09 60 */	lha r0, 0x960(r31)
/* 80196C50 00193B90  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80196C54 00193B94  A8 1F 09 62 */	lha r0, 0x962(r31)
/* 80196C58 00193B98  B0 01 00 08 */	sth r0, 8(r1)
/* 80196C5C 00193B9C  38 19 FF FF */	addi r0, r25, -1
/* 80196C60 00193BA0  7C 1E 00 00 */	cmpw r30, r0
/* 80196C64 00193BA4  40 82 01 60 */	bne lbl_80196DC4
/* 80196C68 00193BA8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80196C6C 00193BAC  28 00 00 01 */	cmplwi r0, 1
/* 80196C70 00193BB0  40 82 01 54 */	bne lbl_80196DC4
/* 80196C74 00193BB4  38 61 00 40 */	addi r3, r1, 0x40
/* 80196C78 00193BB8  48 1B 04 C1 */	bl PSVECSquareMag
/* 80196C7C 00193BBC  C0 02 A0 D0 */	lfs f0, lbl_80453AD0-_SDA2_BASE_(r2)
/* 80196C80 00193BC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196C84 00193BC4  40 81 00 58 */	ble lbl_80196CDC
/* 80196C88 00193BC8  FC 00 08 34 */	frsqrte f0, f1
/* 80196C8C 00193BCC  C8 82 A0 D8 */	lfd f4, lbl_80453AD8-_SDA2_BASE_(r2)
/* 80196C90 00193BD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80196C94 00193BD4  C8 62 A0 E0 */	lfd f3, lbl_80453AE0-_SDA2_BASE_(r2)
/* 80196C98 00193BD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80196C9C 00193BDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80196CA0 00193BE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80196CA4 00193BE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80196CA8 00193BE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80196CAC 00193BEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80196CB0 00193BF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80196CB4 00193BF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80196CB8 00193BF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80196CBC 00193BFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80196CC0 00193C00  FC 00 00 32 */	fmul f0, f0, f0
/* 80196CC4 00193C04  FC 01 00 32 */	fmul f0, f1, f0
/* 80196CC8 00193C08  FC 03 00 28 */	fsub f0, f3, f0
/* 80196CCC 00193C0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80196CD0 00193C10  FC 41 00 32 */	fmul f2, f1, f0
/* 80196CD4 00193C14  FC 40 10 18 */	frsp f2, f2
/* 80196CD8 00193C18  48 00 00 90 */	b lbl_80196D68
lbl_80196CDC:
/* 80196CDC 00193C1C  C8 02 A0 E8 */	lfd f0, lbl_80453AE8-_SDA2_BASE_(r2)
/* 80196CE0 00193C20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196CE4 00193C24  40 80 00 10 */	bge lbl_80196CF4
/* 80196CE8 00193C28  3C 60 80 45 */	lis r3, lbl_80450AE0@ha
/* 80196CEC 00193C2C  C0 43 0A E0 */	lfs f2, lbl_80450AE0@l(r3)
/* 80196CF0 00193C30  48 00 00 78 */	b lbl_80196D68
lbl_80196CF4:
/* 80196CF4 00193C34  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80196CF8 00193C38  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80196CFC 00193C3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80196D00 00193C40  3C 00 7F 80 */	lis r0, 0x7f80
/* 80196D04 00193C44  7C 03 00 00 */	cmpw r3, r0
/* 80196D08 00193C48  41 82 00 14 */	beq lbl_80196D1C
/* 80196D0C 00193C4C  40 80 00 40 */	bge lbl_80196D4C
/* 80196D10 00193C50  2C 03 00 00 */	cmpwi r3, 0
/* 80196D14 00193C54  41 82 00 20 */	beq lbl_80196D34
/* 80196D18 00193C58  48 00 00 34 */	b lbl_80196D4C
lbl_80196D1C:
/* 80196D1C 00193C5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196D20 00193C60  41 82 00 0C */	beq lbl_80196D2C
/* 80196D24 00193C64  38 00 00 01 */	li r0, 1
/* 80196D28 00193C68  48 00 00 28 */	b lbl_80196D50
lbl_80196D2C:
/* 80196D2C 00193C6C  38 00 00 02 */	li r0, 2
/* 80196D30 00193C70  48 00 00 20 */	b lbl_80196D50
lbl_80196D34:
/* 80196D34 00193C74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196D38 00193C78  41 82 00 0C */	beq lbl_80196D44
/* 80196D3C 00193C7C  38 00 00 05 */	li r0, 5
/* 80196D40 00193C80  48 00 00 10 */	b lbl_80196D50
lbl_80196D44:
/* 80196D44 00193C84  38 00 00 03 */	li r0, 3
/* 80196D48 00193C88  48 00 00 08 */	b lbl_80196D50
lbl_80196D4C:
/* 80196D4C 00193C8C  38 00 00 04 */	li r0, 4
lbl_80196D50:
/* 80196D50 00193C90  2C 00 00 01 */	cmpwi r0, 1
/* 80196D54 00193C94  40 82 00 10 */	bne lbl_80196D64
/* 80196D58 00193C98  3C 60 80 45 */	lis r3, lbl_80450AE0@ha
/* 80196D5C 00193C9C  C0 43 0A E0 */	lfs f2, lbl_80450AE0@l(r3)
/* 80196D60 00193CA0  48 00 00 08 */	b lbl_80196D68
lbl_80196D64:
/* 80196D64 00193CA4  FC 40 08 90 */	fmr f2, f1
lbl_80196D68:
/* 80196D68 00193CA8  7F A3 EB 78 */	mr r3, r29
/* 80196D6C 00193CAC  7F 44 D3 78 */	mr r4, r26
/* 80196D70 00193CB0  C0 22 A0 F0 */	lfs f1, lbl_80453AF0-_SDA2_BASE_(r2)
/* 80196D74 00193CB4  C0 02 A0 F4 */	lfs f0, lbl_80453AF4-_SDA2_BASE_(r2)
/* 80196D78 00193CB8  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80196D7C 00193CBC  48 0D 93 FD */	bl cLib_addCalcPos2
/* 80196D80 00193CC0  38 61 00 0A */	addi r3, r1, 0xa
/* 80196D84 00193CC4  7F 64 DB 78 */	mr r4, r27
/* 80196D88 00193CC8  38 A0 00 04 */	li r5, 4
/* 80196D8C 00193CCC  38 C0 08 00 */	li r6, 0x800
/* 80196D90 00193CD0  38 E0 00 80 */	li r7, 0x80
/* 80196D94 00193CD4  48 0D 97 AD */	bl cLib_addCalcAngleS
/* 80196D98 00193CD8  A8 01 00 0A */	lha r0, 0xa(r1)
/* 80196D9C 00193CDC  B0 1F 09 60 */	sth r0, 0x960(r31)
/* 80196DA0 00193CE0  38 61 00 08 */	addi r3, r1, 8
/* 80196DA4 00193CE4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80196DA8 00193CE8  38 A0 00 04 */	li r5, 4
/* 80196DAC 00193CEC  38 C0 08 00 */	li r6, 0x800
/* 80196DB0 00193CF0  38 E0 00 80 */	li r7, 0x80
/* 80196DB4 00193CF4  48 0D 97 8D */	bl cLib_addCalcAngleS
/* 80196DB8 00193CF8  A8 01 00 08 */	lha r0, 8(r1)
/* 80196DBC 00193CFC  B0 1F 09 62 */	sth r0, 0x962(r31)
/* 80196DC0 00193D00  48 00 02 B0 */	b lbl_80197070
lbl_80196DC4:
/* 80196DC4 00193D04  38 61 00 40 */	addi r3, r1, 0x40
/* 80196DC8 00193D08  48 1B 03 71 */	bl PSVECSquareMag
/* 80196DCC 00193D0C  C0 02 A0 D0 */	lfs f0, lbl_80453AD0-_SDA2_BASE_(r2)
/* 80196DD0 00193D10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196DD4 00193D14  40 81 00 58 */	ble lbl_80196E2C
/* 80196DD8 00193D18  FC 00 08 34 */	frsqrte f0, f1
/* 80196DDC 00193D1C  C8 82 A0 D8 */	lfd f4, lbl_80453AD8-_SDA2_BASE_(r2)
/* 80196DE0 00193D20  FC 44 00 32 */	fmul f2, f4, f0
/* 80196DE4 00193D24  C8 62 A0 E0 */	lfd f3, lbl_80453AE0-_SDA2_BASE_(r2)
/* 80196DE8 00193D28  FC 00 00 32 */	fmul f0, f0, f0
/* 80196DEC 00193D2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80196DF0 00193D30  FC 03 00 28 */	fsub f0, f3, f0
/* 80196DF4 00193D34  FC 02 00 32 */	fmul f0, f2, f0
/* 80196DF8 00193D38  FC 44 00 32 */	fmul f2, f4, f0
/* 80196DFC 00193D3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80196E00 00193D40  FC 01 00 32 */	fmul f0, f1, f0
/* 80196E04 00193D44  FC 03 00 28 */	fsub f0, f3, f0
/* 80196E08 00193D48  FC 02 00 32 */	fmul f0, f2, f0
/* 80196E0C 00193D4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80196E10 00193D50  FC 00 00 32 */	fmul f0, f0, f0
/* 80196E14 00193D54  FC 01 00 32 */	fmul f0, f1, f0
/* 80196E18 00193D58  FC 03 00 28 */	fsub f0, f3, f0
/* 80196E1C 00193D5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80196E20 00193D60  FC 41 00 32 */	fmul f2, f1, f0
/* 80196E24 00193D64  FC 40 10 18 */	frsp f2, f2
/* 80196E28 00193D68  48 00 00 90 */	b lbl_80196EB8
lbl_80196E2C:
/* 80196E2C 00193D6C  C8 02 A0 E8 */	lfd f0, lbl_80453AE8-_SDA2_BASE_(r2)
/* 80196E30 00193D70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196E34 00193D74  40 80 00 10 */	bge lbl_80196E44
/* 80196E38 00193D78  3C 60 80 45 */	lis r3, lbl_80450AE0@ha
/* 80196E3C 00193D7C  C0 43 0A E0 */	lfs f2, lbl_80450AE0@l(r3)
/* 80196E40 00193D80  48 00 00 78 */	b lbl_80196EB8
lbl_80196E44:
/* 80196E44 00193D84  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80196E48 00193D88  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80196E4C 00193D8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80196E50 00193D90  3C 00 7F 80 */	lis r0, 0x7f80
/* 80196E54 00193D94  7C 03 00 00 */	cmpw r3, r0
/* 80196E58 00193D98  41 82 00 14 */	beq lbl_80196E6C
/* 80196E5C 00193D9C  40 80 00 40 */	bge lbl_80196E9C
/* 80196E60 00193DA0  2C 03 00 00 */	cmpwi r3, 0
/* 80196E64 00193DA4  41 82 00 20 */	beq lbl_80196E84
/* 80196E68 00193DA8  48 00 00 34 */	b lbl_80196E9C
lbl_80196E6C:
/* 80196E6C 00193DAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196E70 00193DB0  41 82 00 0C */	beq lbl_80196E7C
/* 80196E74 00193DB4  38 00 00 01 */	li r0, 1
/* 80196E78 00193DB8  48 00 00 28 */	b lbl_80196EA0
lbl_80196E7C:
/* 80196E7C 00193DBC  38 00 00 02 */	li r0, 2
/* 80196E80 00193DC0  48 00 00 20 */	b lbl_80196EA0
lbl_80196E84:
/* 80196E84 00193DC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196E88 00193DC8  41 82 00 0C */	beq lbl_80196E94
/* 80196E8C 00193DCC  38 00 00 05 */	li r0, 5
/* 80196E90 00193DD0  48 00 00 10 */	b lbl_80196EA0
lbl_80196E94:
/* 80196E94 00193DD4  38 00 00 03 */	li r0, 3
/* 80196E98 00193DD8  48 00 00 08 */	b lbl_80196EA0
lbl_80196E9C:
/* 80196E9C 00193DDC  38 00 00 04 */	li r0, 4
lbl_80196EA0:
/* 80196EA0 00193DE0  2C 00 00 01 */	cmpwi r0, 1
/* 80196EA4 00193DE4  40 82 00 10 */	bne lbl_80196EB4
/* 80196EA8 00193DE8  3C 60 80 45 */	lis r3, lbl_80450AE0@ha
/* 80196EAC 00193DEC  C0 43 0A E0 */	lfs f2, lbl_80450AE0@l(r3)
/* 80196EB0 00193DF0  48 00 00 08 */	b lbl_80196EB8
lbl_80196EB4:
/* 80196EB4 00193DF4  FC 40 08 90 */	fmr f2, f1
lbl_80196EB8:
/* 80196EB8 00193DF8  7F A3 EB 78 */	mr r3, r29
/* 80196EBC 00193DFC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80196EC0 00193E00  C0 22 A0 F0 */	lfs f1, lbl_80453AF0-_SDA2_BASE_(r2)
/* 80196EC4 00193E04  C0 02 A0 F8 */	lfs f0, lbl_80453AF8-_SDA2_BASE_(r2)
/* 80196EC8 00193E08  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80196ECC 00193E0C  48 0D 92 AD */	bl cLib_addCalcPos2
/* 80196ED0 00193E10  38 61 00 1C */	addi r3, r1, 0x1c
/* 80196ED4 00193E14  7F A4 EB 78 */	mr r4, r29
/* 80196ED8 00193E18  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80196EDC 00193E1C  48 0C FC 59 */	bl cXyz_NS___mi
/* 80196EE0 00193E20  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80196EE4 00193E24  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80196EE8 00193E28  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80196EEC 00193E2C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80196EF0 00193E30  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80196EF4 00193E34  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80196EF8 00193E38  38 61 00 34 */	addi r3, r1, 0x34
/* 80196EFC 00193E3C  48 1B 02 3D */	bl PSVECSquareMag
/* 80196F00 00193E40  C0 02 A0 D0 */	lfs f0, lbl_80453AD0-_SDA2_BASE_(r2)
/* 80196F04 00193E44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196F08 00193E48  40 81 00 58 */	ble lbl_80196F60
/* 80196F0C 00193E4C  FC 00 08 34 */	frsqrte f0, f1
/* 80196F10 00193E50  C8 82 A0 D8 */	lfd f4, lbl_80453AD8-_SDA2_BASE_(r2)
/* 80196F14 00193E54  FC 44 00 32 */	fmul f2, f4, f0
/* 80196F18 00193E58  C8 62 A0 E0 */	lfd f3, lbl_80453AE0-_SDA2_BASE_(r2)
/* 80196F1C 00193E5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80196F20 00193E60  FC 01 00 32 */	fmul f0, f1, f0
/* 80196F24 00193E64  FC 03 00 28 */	fsub f0, f3, f0
/* 80196F28 00193E68  FC 02 00 32 */	fmul f0, f2, f0
/* 80196F2C 00193E6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80196F30 00193E70  FC 00 00 32 */	fmul f0, f0, f0
/* 80196F34 00193E74  FC 01 00 32 */	fmul f0, f1, f0
/* 80196F38 00193E78  FC 03 00 28 */	fsub f0, f3, f0
/* 80196F3C 00193E7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80196F40 00193E80  FC 44 00 32 */	fmul f2, f4, f0
/* 80196F44 00193E84  FC 00 00 32 */	fmul f0, f0, f0
/* 80196F48 00193E88  FC 01 00 32 */	fmul f0, f1, f0
/* 80196F4C 00193E8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80196F50 00193E90  FC 02 00 32 */	fmul f0, f2, f0
/* 80196F54 00193E94  FC 21 00 32 */	fmul f1, f1, f0
/* 80196F58 00193E98  FC 20 08 18 */	frsp f1, f1
/* 80196F5C 00193E9C  48 00 00 88 */	b lbl_80196FE4
lbl_80196F60:
/* 80196F60 00193EA0  C8 02 A0 E8 */	lfd f0, lbl_80453AE8-_SDA2_BASE_(r2)
/* 80196F64 00193EA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196F68 00193EA8  40 80 00 10 */	bge lbl_80196F78
/* 80196F6C 00193EAC  3C 60 80 45 */	lis r3, lbl_80450AE0@ha
/* 80196F70 00193EB0  C0 23 0A E0 */	lfs f1, lbl_80450AE0@l(r3)
/* 80196F74 00193EB4  48 00 00 70 */	b lbl_80196FE4
lbl_80196F78:
/* 80196F78 00193EB8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80196F7C 00193EBC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80196F80 00193EC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80196F84 00193EC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80196F88 00193EC8  7C 03 00 00 */	cmpw r3, r0
/* 80196F8C 00193ECC  41 82 00 14 */	beq lbl_80196FA0
/* 80196F90 00193ED0  40 80 00 40 */	bge lbl_80196FD0
/* 80196F94 00193ED4  2C 03 00 00 */	cmpwi r3, 0
/* 80196F98 00193ED8  41 82 00 20 */	beq lbl_80196FB8
/* 80196F9C 00193EDC  48 00 00 34 */	b lbl_80196FD0
lbl_80196FA0:
/* 80196FA0 00193EE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196FA4 00193EE4  41 82 00 0C */	beq lbl_80196FB0
/* 80196FA8 00193EE8  38 00 00 01 */	li r0, 1
/* 80196FAC 00193EEC  48 00 00 28 */	b lbl_80196FD4
lbl_80196FB0:
/* 80196FB0 00193EF0  38 00 00 02 */	li r0, 2
/* 80196FB4 00193EF4  48 00 00 20 */	b lbl_80196FD4
lbl_80196FB8:
/* 80196FB8 00193EF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196FBC 00193EFC  41 82 00 0C */	beq lbl_80196FC8
/* 80196FC0 00193F00  38 00 00 05 */	li r0, 5
/* 80196FC4 00193F04  48 00 00 10 */	b lbl_80196FD4
lbl_80196FC8:
/* 80196FC8 00193F08  38 00 00 03 */	li r0, 3
/* 80196FCC 00193F0C  48 00 00 08 */	b lbl_80196FD4
lbl_80196FD0:
/* 80196FD0 00193F10  38 00 00 04 */	li r0, 4
lbl_80196FD4:
/* 80196FD4 00193F14  2C 00 00 01 */	cmpwi r0, 1
/* 80196FD8 00193F18  40 82 00 0C */	bne lbl_80196FE4
/* 80196FDC 00193F1C  3C 60 80 45 */	lis r3, lbl_80450AE0@ha
/* 80196FE0 00193F20  C0 23 0A E0 */	lfs f1, lbl_80450AE0@l(r3)
lbl_80196FE4:
/* 80196FE4 00193F24  C0 02 A0 FC */	lfs f0, lbl_80453AFC-_SDA2_BASE_(r2)
/* 80196FE8 00193F28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196FEC 00193F2C  40 80 00 1C */	bge lbl_80197008
/* 80196FF0 00193F30  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80196FF4 00193F34  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80196FF8 00193F38  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80196FFC 00193F3C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80197000 00193F40  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80197004 00193F44  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_80197008:
/* 80197008 00193F48  38 61 00 0A */	addi r3, r1, 0xa
/* 8019700C 00193F4C  38 80 00 00 */	li r4, 0
/* 80197010 00193F50  38 A0 00 04 */	li r5, 4
/* 80197014 00193F54  38 C0 08 00 */	li r6, 0x800
/* 80197018 00193F58  38 E0 00 80 */	li r7, 0x80
/* 8019701C 00193F5C  48 0D 95 25 */	bl cLib_addCalcAngleS
/* 80197020 00193F60  A8 01 00 0A */	lha r0, 0xa(r1)
/* 80197024 00193F64  2C 00 00 80 */	cmpwi r0, 0x80
/* 80197028 00193F68  41 81 00 0C */	bgt lbl_80197034
/* 8019702C 00193F6C  38 00 00 00 */	li r0, 0
/* 80197030 00193F70  B0 01 00 0A */	sth r0, 0xa(r1)
lbl_80197034:
/* 80197034 00193F74  A8 01 00 0A */	lha r0, 0xa(r1)
/* 80197038 00193F78  B0 1F 09 60 */	sth r0, 0x960(r31)
/* 8019703C 00193F7C  38 61 00 08 */	addi r3, r1, 8
/* 80197040 00193F80  38 80 00 00 */	li r4, 0
/* 80197044 00193F84  38 A0 00 04 */	li r5, 4
/* 80197048 00193F88  38 C0 08 00 */	li r6, 0x800
/* 8019704C 00193F8C  38 E0 00 80 */	li r7, 0x80
/* 80197050 00193F90  48 0D 94 F1 */	bl cLib_addCalcAngleS
/* 80197054 00193F94  A8 01 00 08 */	lha r0, 8(r1)
/* 80197058 00193F98  2C 00 00 80 */	cmpwi r0, 0x80
/* 8019705C 00193F9C  41 81 00 0C */	bgt lbl_80197068
/* 80197060 00193FA0  38 00 00 00 */	li r0, 0
/* 80197064 00193FA4  B0 01 00 08 */	sth r0, 8(r1)
lbl_80197068:
/* 80197068 00193FA8  A8 01 00 08 */	lha r0, 8(r1)
/* 8019706C 00193FAC  B0 1F 09 62 */	sth r0, 0x962(r31)
lbl_80197070:
/* 80197070 00193FB0  3B DE 00 01 */	addi r30, r30, 1
/* 80197074 00193FB4  2C 1E 00 07 */	cmpwi r30, 7
/* 80197078 00193FB8  3A F7 00 04 */	addi r23, r23, 4
/* 8019707C 00193FBC  41 80 FB 58 */	blt lbl_80196BD4
/* 80197080 00193FC0  39 61 00 80 */	addi r11, r1, 0x80
/* 80197084 00193FC4  48 1C B1 8D */	bl func_80362210
/* 80197088 00193FC8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8019708C 00193FCC  7C 08 03 A6 */	mtlr r0
/* 80197090 00193FD0  38 21 00 80 */	addi r1, r1, 0x80
/* 80197094 00193FD4  4E 80 00 20 */	blr 
