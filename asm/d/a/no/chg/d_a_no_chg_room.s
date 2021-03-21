.include "macros.inc"

.section .text, "ax" # 801451ec


.global isLoadRoom__Fi
isLoadRoom__Fi:
/* 801451EC 0014212C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801451F0 00142130  7C 08 02 A6 */	mflr r0
/* 801451F4 00142134  90 01 00 24 */	stw r0, 0x24(r1)
/* 801451F8 00142138  39 61 00 20 */	addi r11, r1, 0x20
/* 801451FC 0014213C  48 21 CF DD */	bl _savegpr_28
/* 80145200 00142140  7C 7C 1B 78 */	mr r28, r3
/* 80145204 00142144  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80145208 00142148  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8014520C 0014214C  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 80145210 00142150  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80145214 00142154  7D 89 03 A6 */	mtctr r12
/* 80145218 00142158  4E 80 04 21 */	bctrl 
/* 8014521C 0014215C  28 03 00 00 */	cmplwi r3, 0
/* 80145220 00142160  41 82 00 A0 */	beq lbl_801452C0
/* 80145224 00142164  80 03 00 00 */	lwz r0, 0(r3)
/* 80145228 00142168  7C 00 E0 00 */	cmpw r0, r28
/* 8014522C 0014216C  40 81 00 94 */	ble lbl_801452C0
/* 80145230 00142170  80 63 00 04 */	lwz r3, 4(r3)
/* 80145234 00142174  57 80 10 3A */	slwi r0, r28, 2
/* 80145238 00142178  7C 63 00 2E */	lwzx r3, r3, r0
/* 8014523C 0014217C  8B A3 00 00 */	lbz r29, 0(r3)
/* 80145240 00142180  83 E3 00 04 */	lwz r31, 4(r3)
/* 80145244 00142184  3B 80 00 00 */	li r28, 0
/* 80145248 00142188  3C 60 80 3F */	lis r3, lbl_803F6094@ha
/* 8014524C 0014218C  3B C3 60 94 */	addi r30, r3, lbl_803F6094@l
/* 80145250 00142190  48 00 00 68 */	b lbl_801452B8
lbl_80145254:
/* 80145254 00142194  88 1F 00 00 */	lbz r0, 0(r31)
/* 80145258 00142198  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 8014525C 0014219C  1C 00 04 04 */	mulli r0, r0, 0x404
/* 80145260 001421A0  7C 9E 02 14 */	add r4, r30, r0
/* 80145264 001421A4  88 64 03 F4 */	lbz r3, 0x3f4(r4)
/* 80145268 001421A8  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8014526C 001421AC  41 82 00 0C */	beq lbl_80145278
/* 80145270 001421B0  38 60 00 00 */	li r3, 0
/* 80145274 001421B4  48 00 00 50 */	b lbl_801452C4
lbl_80145278:
/* 80145278 001421B8  70 60 00 09 */	andi. r0, r3, 9
/* 8014527C 001421BC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80145280 001421C0  28 00 00 01 */	cmplwi r0, 1
/* 80145284 001421C4  40 82 00 2C */	bne lbl_801452B0
/* 80145288 001421C8  80 64 03 FC */	lwz r3, 0x3fc(r4)
/* 8014528C 001421CC  4B ED 9A 25 */	bl fopScnM_SearchByID__FUi
/* 80145290 001421D0  88 03 01 D4 */	lbz r0, 0x1d4(r3)
/* 80145294 001421D4  7C 00 07 75 */	extsb. r0, r0
/* 80145298 001421D8  40 80 00 10 */	bge lbl_801452A8
/* 8014529C 001421DC  4B ED D3 C1 */	bl fpcNd_IsDeleteTiming__FP18process_node_class
/* 801452A0 001421E0  2C 03 00 00 */	cmpwi r3, 0
/* 801452A4 001421E4  40 82 00 0C */	bne lbl_801452B0
lbl_801452A8:
/* 801452A8 001421E8  38 60 00 00 */	li r3, 0
/* 801452AC 001421EC  48 00 00 18 */	b lbl_801452C4
lbl_801452B0:
/* 801452B0 001421F0  3B 9C 00 01 */	addi r28, r28, 1
/* 801452B4 001421F4  3B FF 00 01 */	addi r31, r31, 1
lbl_801452B8:
/* 801452B8 001421F8  7C 1C E8 00 */	cmpw r28, r29
/* 801452BC 001421FC  41 80 FF 98 */	blt lbl_80145254
lbl_801452C0:
/* 801452C0 00142200  38 60 00 01 */	li r3, 1
lbl_801452C4:
/* 801452C4 00142204  39 61 00 20 */	addi r11, r1, 0x20
/* 801452C8 00142208  48 21 CF 5D */	bl _restgpr_28
/* 801452CC 0014220C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801452D0 00142210  7C 08 03 A6 */	mtlr r0
/* 801452D4 00142214  38 21 00 20 */	addi r1, r1, 0x20
/* 801452D8 00142218  4E 80 00 20 */	blr 

.global execute__9daNocrm_cFv
execute__9daNocrm_cFv:
/* 801452DC 0014221C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801452E0 00142220  7C 08 02 A6 */	mflr r0
/* 801452E4 00142224  90 01 00 44 */	stw r0, 0x44(r1)
/* 801452E8 00142228  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801452EC 0014222C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801452F0 00142230  7C 7F 1B 78 */	mr r31, r3
/* 801452F4 00142234  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801452F8 00142238  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801452FC 0014223C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80145300 00142240  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80145304 00142244  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80145308 00142248  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8014530C 0014224C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80145310 00142250  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80145314 00142254  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80145318 00142258  7F C3 F3 78 */	mr r3, r30
/* 8014531C 0014225C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80145320 00142260  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80145324 00142264  7D 89 03 A6 */	mtctr r12
/* 80145328 00142268  4E 80 04 21 */	bctrl 
/* 8014532C 0014226C  28 03 00 00 */	cmplwi r3, 0
/* 80145330 00142270  41 82 00 1C */	beq lbl_8014534C
/* 80145334 00142274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80145338 00142278  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8014533C 0014227C  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 80145340 00142280  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80145344 00142284  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80145348 00142288  48 00 00 44 */	b lbl_8014538C
lbl_8014534C:
/* 8014534C 0014228C  7F C3 F3 78 */	mr r3, r30
/* 80145350 00142290  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80145354 00142294  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 80145358 00142298  7D 89 03 A6 */	mtctr r12
/* 8014535C 0014229C  4E 80 04 21 */	bctrl 
/* 80145360 001422A0  28 03 00 00 */	cmplwi r3, 0
/* 80145364 001422A4  41 82 00 28 */	beq lbl_8014538C
/* 80145368 001422A8  7F C3 F3 78 */	mr r3, r30
/* 8014536C 001422AC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80145370 001422B0  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 80145374 001422B4  7D 89 03 A6 */	mtctr r12
/* 80145378 001422B8  4E 80 04 21 */	bctrl 
/* 8014537C 001422BC  28 03 00 00 */	cmplwi r3, 0
/* 80145380 001422C0  41 82 00 0C */	beq lbl_8014538C
/* 80145384 001422C4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80145388 001422C8  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_8014538C:
/* 8014538C 001422CC  38 7F 05 98 */	addi r3, r31, 0x598
/* 80145390 001422D0  38 81 00 20 */	addi r4, r1, 0x20
/* 80145394 001422D4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80145398 001422D8  48 20 19 D5 */	bl PSMTXMultVec
/* 8014539C 001422DC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801453A0 001422E0  C0 02 99 C8 */	lfs f0, lbl_804533C8-_SDA2_BASE_(r2)
/* 801453A4 001422E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801453A8 001422E8  41 80 00 40 */	blt lbl_801453E8
/* 801453AC 001422EC  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 801453B0 001422F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801453B4 001422F4  41 81 00 34 */	bgt lbl_801453E8
/* 801453B8 001422F8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801453BC 001422FC  FC 00 02 10 */	fabs f0, f0
/* 801453C0 00142300  FC 20 00 18 */	frsp f1, f0
/* 801453C4 00142304  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 801453C8 00142308  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801453CC 0014230C  41 81 00 1C */	bgt lbl_801453E8
/* 801453D0 00142310  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801453D4 00142314  FC 00 02 10 */	fabs f0, f0
/* 801453D8 00142318  FC 20 00 18 */	frsp f1, f0
/* 801453DC 0014231C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 801453E0 00142320  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801453E4 00142324  40 81 00 E4 */	ble lbl_801454C8
lbl_801453E8:
/* 801453E8 00142328  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 801453EC 0014232C  7C 00 07 75 */	extsb. r0, r0
/* 801453F0 00142330  41 82 00 34 */	beq lbl_80145424
/* 801453F4 00142334  88 1F 05 CA */	lbz r0, 0x5ca(r31)
/* 801453F8 00142338  28 00 00 00 */	cmplwi r0, 0
/* 801453FC 0014233C  41 82 00 28 */	beq lbl_80145424
/* 80145400 00142340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80145404 00142344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80145408 00142348  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8014540C 0014234C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80145410 00142350  7D 89 03 A6 */	mtctr r12
/* 80145414 00142354  4E 80 04 21 */	bctrl 
/* 80145418 00142358  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8014541C 0014235C  54 00 87 7F */	rlwinm. r0, r0, 0x10, 0x1d, 0x1f
/* 80145420 00142360  41 82 00 0C */	beq lbl_8014542C
lbl_80145424:
/* 80145424 00142364  38 60 00 01 */	li r3, 1
/* 80145428 00142368  48 00 00 C8 */	b lbl_801454F0
lbl_8014542C:
/* 8014542C 0014236C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80145430 00142370  C0 02 99 C8 */	lfs f0, lbl_804533C8-_SDA2_BASE_(r2)
/* 80145434 00142374  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80145438 00142378  40 80 00 0C */	bge lbl_80145444
/* 8014543C 0014237C  38 80 00 00 */	li r4, 0
/* 80145440 00142380  48 00 00 08 */	b lbl_80145448
lbl_80145444:
/* 80145444 00142384  38 80 00 01 */	li r4, 1
lbl_80145448:
/* 80145448 00142388  7F E3 FB 78 */	mr r3, r31
/* 8014544C 0014238C  48 00 00 BD */	bl getRoomNo__9daNocrm_cFi
/* 80145450 00142390  4B FF FD 9D */	bl isLoadRoom__Fi
/* 80145454 00142394  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80145458 00142398  41 82 00 14 */	beq lbl_8014546C
/* 8014545C 0014239C  38 00 00 00 */	li r0, 0
/* 80145460 001423A0  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80145464 001423A4  38 60 00 01 */	li r3, 1
/* 80145468 001423A8  48 00 00 88 */	b lbl_801454F0
lbl_8014546C:
/* 8014546C 001423AC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80145470 001423B0  C0 02 99 C8 */	lfs f0, lbl_804533C8-_SDA2_BASE_(r2)
/* 80145474 001423B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80145478 001423B8  40 80 00 10 */	bge lbl_80145488
/* 8014547C 001423BC  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80145480 001423C0  FC 00 00 50 */	fneg f0, f0
/* 80145484 001423C4  48 00 00 08 */	b lbl_8014548C
lbl_80145488:
/* 80145488 001423C8  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
lbl_8014548C:
/* 8014548C 001423CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80145490 001423D0  38 7F 05 68 */	addi r3, r31, 0x568
/* 80145494 001423D4  38 81 00 14 */	addi r4, r1, 0x14
/* 80145498 001423D8  38 A1 00 08 */	addi r5, r1, 8
/* 8014549C 001423DC  48 20 18 D1 */	bl PSMTXMultVec
/* 801454A0 001423E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801454A4 001423E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801454A8 001423E8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 801454AC 001423EC  38 81 00 08 */	addi r4, r1, 8
/* 801454B0 001423F0  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 801454B4 001423F4  38 C0 00 01 */	li r6, 1
/* 801454B8 001423F8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801454BC 001423FC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 801454C0 00142400  7D 89 03 A6 */	mtctr r12
/* 801454C4 00142404  4E 80 04 21 */	bctrl 
lbl_801454C8:
/* 801454C8 00142408  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 801454CC 0014240C  7C 00 07 75 */	extsb. r0, r0
/* 801454D0 00142410  40 82 00 10 */	bne lbl_801454E0
/* 801454D4 00142414  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 801454D8 00142418  98 0D 80 70 */	stb r0, lbl_804505F0-_SDA_BASE_(r13)
/* 801454DC 0014241C  48 00 00 10 */	b lbl_801454EC
lbl_801454E0:
/* 801454E0 00142420  38 00 00 01 */	li r0, 1
/* 801454E4 00142424  98 0D 87 E8 */	stb r0, lbl_80450D68-_SDA_BASE_(r13)
/* 801454E8 00142428  98 1F 05 CA */	stb r0, 0x5ca(r31)
lbl_801454EC:
/* 801454EC 0014242C  38 60 00 01 */	li r3, 1
lbl_801454F0:
/* 801454F0 00142430  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801454F4 00142434  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801454F8 00142438  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801454FC 0014243C  7C 08 03 A6 */	mtlr r0
/* 80145500 00142440  38 21 00 40 */	addi r1, r1, 0x40
/* 80145504 00142444  4E 80 00 20 */	blr 

.global getRoomNo__9daNocrm_cFi
getRoomNo__9daNocrm_cFi:
/* 80145508 00142448  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014550C 0014244C  7C 08 02 A6 */	mflr r0
/* 80145510 00142450  90 01 00 34 */	stw r0, 0x34(r1)
/* 80145514 00142454  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80145518 00142458  7F E3 22 14 */	add r31, r3, r4
/* 8014551C 0014245C  88 1F 05 C8 */	lbz r0, 0x5c8(r31)
/* 80145520 00142460  7C 00 07 75 */	extsb. r0, r0
/* 80145524 00142464  40 80 00 68 */	bge lbl_8014558C
/* 80145528 00142468  2C 04 00 00 */	cmpwi r4, 0
/* 8014552C 0014246C  41 82 00 10 */	beq lbl_8014553C
/* 80145530 00142470  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80145534 00142474  FC 40 00 50 */	fneg f2, f0
/* 80145538 00142478  48 00 00 08 */	b lbl_80145540
lbl_8014553C:
/* 8014553C 0014247C  C0 43 04 F4 */	lfs f2, 0x4f4(r3)
lbl_80145540:
/* 80145540 00142480  C0 23 04 F0 */	lfs f1, 0x4f0(r3)
/* 80145544 00142484  C0 02 99 C8 */	lfs f0, lbl_804533C8-_SDA2_BASE_(r2)
/* 80145548 00142488  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8014554C 0014248C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80145550 00142490  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80145554 00142494  38 63 05 68 */	addi r3, r3, 0x568
/* 80145558 00142498  38 81 00 14 */	addi r4, r1, 0x14
/* 8014555C 0014249C  38 A1 00 08 */	addi r5, r1, 8
/* 80145560 001424A0  48 20 18 0D */	bl PSMTXMultVec
/* 80145564 001424A4  38 61 00 08 */	addi r3, r1, 8
/* 80145568 001424A8  4B ED 87 55 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8014556C 001424AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80145570 001424B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80145574 001424B4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80145578 001424B8  3C 80 80 3F */	lis r4, lbl_803F1CC4@ha
/* 8014557C 001424BC  38 84 1C C4 */	addi r4, r4, lbl_803F1CC4@l
/* 80145580 001424C0  38 84 00 14 */	addi r4, r4, 0x14
/* 80145584 001424C4  4B F2 FB 7D */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80145588 001424C8  98 7F 05 C8 */	stb r3, 0x5c8(r31)
lbl_8014558C:
/* 8014558C 001424CC  88 7F 05 C8 */	lbz r3, 0x5c8(r31)
/* 80145590 001424D0  7C 63 07 74 */	extsb r3, r3
/* 80145594 001424D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80145598 001424D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014559C 001424DC  7C 08 03 A6 */	mtlr r0
/* 801455A0 001424E0  38 21 00 30 */	addi r1, r1, 0x30
/* 801455A4 001424E4  4E 80 00 20 */	blr 
/* 801455A8 001424E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801455AC 001424EC  7C 08 02 A6 */	mflr r0
/* 801455B0 001424F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801455B4 001424F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801455B8 001424F8  7C 7F 1B 78 */	mr r31, r3
/* 801455BC 001424FC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 801455C0 00142500  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801455C4 00142504  40 82 00 1C */	bne lbl_801455E0
/* 801455C8 00142508  28 1F 00 00 */	cmplwi r31, 0
/* 801455CC 0014250C  41 82 00 08 */	beq lbl_801455D4
/* 801455D0 00142510  4B ED 35 95 */	bl __ct__10fopAc_ac_cFv
lbl_801455D4:
/* 801455D4 00142514  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 801455D8 00142518  60 00 00 08 */	ori r0, r0, 8
/* 801455DC 0014251C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_801455E0:
/* 801455E0 00142520  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 801455E4 00142524  7C 00 07 75 */	extsb. r0, r0
/* 801455E8 00142528  40 82 00 2C */	bne lbl_80145614
/* 801455EC 0014252C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 801455F0 00142530  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801455F4 00142534  7C 00 07 75 */	extsb. r0, r0
/* 801455F8 00142538  40 80 00 1C */	bge lbl_80145614
/* 801455FC 0014253C  3C 60 80 39 */	lis r3, lbl_80392640@ha
/* 80145600 00142540  38 63 26 40 */	addi r3, r3, lbl_80392640@l
/* 80145604 00142544  4C C6 31 82 */	crclr 6
/* 80145608 00142548  4B EC 16 E5 */	bl OSReport_Warning
/* 8014560C 0014254C  38 60 00 05 */	li r3, 5
/* 80145610 00142550  48 00 00 80 */	b lbl_80145690
lbl_80145614:
/* 80145614 00142554  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 80145618 00142558  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8014561C 0014255C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80145620 00142560  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80145624 00142564  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80145628 00142568  48 20 12 C1 */	bl PSMTXTrans
/* 8014562C 0014256C  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 80145630 00142570  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 80145634 00142574  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80145638 00142578  4B EC 6D FD */	bl mDoMtx_YrotM__FPA4_fs
/* 8014563C 0014257C  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 80145640 00142580  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 80145644 00142584  38 9F 05 68 */	addi r4, r31, 0x568
/* 80145648 00142588  48 20 0E 69 */	bl PSMTXCopy
/* 8014564C 0014258C  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 80145650 00142590  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 80145654 00142594  38 9F 05 98 */	addi r4, r31, 0x598
/* 80145658 00142598  48 20 0F 59 */	bl PSMTXInverse
/* 8014565C 0014259C  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80145660 001425A0  7C 64 1B 78 */	mr r4, r3
/* 80145664 001425A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80145668 001425A8  54 00 C7 3F */	rlwinm. r0, r0, 0x18, 0x1c, 0x1f
/* 8014566C 001425AC  41 82 00 0C */	beq lbl_80145678
/* 80145670 001425B0  C0 22 99 CC */	lfs f1, lbl_804533CC-_SDA2_BASE_(r2)
/* 80145674 001425B4  48 00 00 08 */	b lbl_8014567C
lbl_80145678:
/* 80145678 001425B8  C0 22 99 D0 */	lfs f1, lbl_804533D0-_SDA2_BASE_(r2)
lbl_8014567C:
/* 8014567C 001425BC  48 20 1A 5D */	bl PSVECScale
/* 80145680 001425C0  38 00 FF FF */	li r0, -1
/* 80145684 001425C4  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 80145688 001425C8  98 1F 05 C9 */	stb r0, 0x5c9(r31)
/* 8014568C 001425CC  38 60 00 04 */	li r3, 4
lbl_80145690:
/* 80145690 001425D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80145694 001425D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80145698 001425D8  7C 08 03 A6 */	mtlr r0
/* 8014569C 001425DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801456A0 001425E0  4E 80 00 20 */	blr 
/* 801456A4 001425E4  38 60 00 01 */	li r3, 1
/* 801456A8 001425E8  4E 80 00 20 */	blr 
/* 801456AC 001425EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801456B0 001425F0  7C 08 02 A6 */	mflr r0
/* 801456B4 001425F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801456B8 001425F8  4B FF FC 25 */	bl execute__9daNocrm_cFv
/* 801456BC 001425FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801456C0 00142600  7C 08 03 A6 */	mtlr r0
/* 801456C4 00142604  38 21 00 10 */	addi r1, r1, 0x10
/* 801456C8 00142608  4E 80 00 20 */	blr 
/* 801456CC 0014260C  38 60 00 01 */	li r3, 1
/* 801456D0 00142610  4E 80 00 20 */	blr 
