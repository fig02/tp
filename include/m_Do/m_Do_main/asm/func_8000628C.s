/* 8000628C 000031CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006290 000031D0  7C 08 02 A6 */	mflr r0
/* 80006294 000031D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006298 000031D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000629C 000031DC  3C 60 80 3D */	lis r3, lbl_803D32E0@ha
/* 800062A0 000031E0  3B E3 32 E0 */	addi r31, r3, lbl_803D32E0@l
/* 800062A4 000031E4  48 00 5A A1 */	bl mDoMch_Create
/* 800062A8 000031E8  48 00 4E CD */	bl mDoGph_Create__Fv
/* 800062AC 000031EC  48 00 16 A9 */	bl create__8mDoCPd_cFv
/* 800062B0 000031F0  80 8D 8D F8 */	lwz r4, sRootHeap__7JKRHeap-_SDA_BASE_(r13)
/* 800062B4 000031F4  38 7F 00 00 */	addi r3, r31, 0
/* 800062B8 000031F8  90 83 00 08 */	stw r4, 8(r3)
/* 800062BC 000031FC  28 04 00 00 */	cmplwi r4, 0
/* 800062C0 00003200  41 82 00 0C */	beq lbl_800062CC
/* 800062C4 00003204  80 04 00 38 */	lwz r0, 0x38(r4)
/* 800062C8 00003208  90 03 00 1C */	stw r0, 0x1c(r3)
lbl_800062CC:
/* 800062CC 0000320C  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap-_SDA_BASE_(r13)
/* 800062D0 00003210  38 7F 00 28 */	addi r3, r31, 0x28
/* 800062D4 00003214  90 83 00 08 */	stw r4, 8(r3)
/* 800062D8 00003218  28 04 00 00 */	cmplwi r4, 0
/* 800062DC 0000321C  41 82 00 0C */	beq lbl_800062E8
/* 800062E0 00003220  80 04 00 38 */	lwz r0, 0x38(r4)
/* 800062E4 00003224  90 03 00 1C */	stw r0, 0x1c(r3)
lbl_800062E8:
/* 800062E8 00003228  48 00 8A 99 */	bl mDoExt_getZeldaHeap
/* 800062EC 0000322C  38 9F 00 50 */	addi r4, r31, 0x50
/* 800062F0 00003230  90 64 00 08 */	stw r3, 8(r4)
/* 800062F4 00003234  28 03 00 00 */	cmplwi r3, 0
/* 800062F8 00003238  41 82 00 0C */	beq lbl_80006304
/* 800062FC 0000323C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80006300 00003240  90 04 00 1C */	stw r0, 0x1c(r4)
lbl_80006304:
/* 80006304 00003244  48 00 8A 4D */	bl mDoExt_getGameHeap
/* 80006308 00003248  38 9F 00 78 */	addi r4, r31, 0x78
/* 8000630C 0000324C  90 64 00 08 */	stw r3, 8(r4)
/* 80006310 00003250  28 03 00 00 */	cmplwi r3, 0
/* 80006314 00003254  41 82 00 0C */	beq lbl_80006320
/* 80006318 00003258  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8000631C 0000325C  90 04 00 1C */	stw r0, 0x1c(r4)
lbl_80006320:
/* 80006320 00003260  48 00 8A CD */	bl mDoExt_getArchiveHeap
/* 80006324 00003264  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 80006328 00003268  90 64 00 08 */	stw r3, 8(r4)
/* 8000632C 0000326C  28 03 00 00 */	cmplwi r3, 0
/* 80006330 00003270  41 82 00 0C */	beq lbl_8000633C
/* 80006334 00003274  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80006338 00003278  90 04 00 1C */	stw r0, 0x1c(r4)
lbl_8000633C:
/* 8000633C 0000327C  48 00 8A F5 */	bl mDoExt_getJ2dHeap
/* 80006340 00003280  38 9F 00 C8 */	addi r4, r31, 0xc8
/* 80006344 00003284  90 64 00 08 */	stw r3, 8(r4)
/* 80006348 00003288  28 03 00 00 */	cmplwi r3, 0
/* 8000634C 0000328C  41 82 00 0C */	beq lbl_80006358
/* 80006350 00003290  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80006354 00003294  90 04 00 1C */	stw r0, 0x1c(r4)
lbl_80006358:
/* 80006358 00003298  48 00 8A E1 */	bl mDoExt_getHostIOHeap
/* 8000635C 0000329C  38 9F 00 F0 */	addi r4, r31, 0xf0
/* 80006360 000032A0  90 64 00 08 */	stw r3, 8(r4)
/* 80006364 000032A4  28 03 00 00 */	cmplwi r3, 0
/* 80006368 000032A8  41 82 00 0C */	beq lbl_80006374
/* 8000636C 000032AC  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80006370 000032B0  90 04 00 1C */	stw r0, 0x1c(r4)
lbl_80006374:
/* 80006374 000032B4  48 00 8A 3D */	bl mDoExt_getCommandHeap
/* 80006378 000032B8  38 9F 01 18 */	addi r4, r31, 0x118
/* 8000637C 000032BC  90 64 00 08 */	stw r3, 8(r4)
/* 80006380 000032C0  28 03 00 00 */	cmplwi r3, 0
/* 80006384 000032C4  41 82 00 0C */	beq lbl_80006390
/* 80006388 000032C8  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8000638C 000032CC  90 04 00 1C */	stw r0, 0x1c(r4)
lbl_80006390:
/* 80006390 000032D0  80 6D 8C 38 */	lwz r3, lbl_804511B8-_SDA_BASE_(r13)
/* 80006394 000032D4  88 0D 80 00 */	lbz r0, lbl_80450580-_SDA_BASE_(r13)
/* 80006398 000032D8  7C 00 07 75 */	extsb. r0, r0
/* 8000639C 000032DC  38 00 00 00 */	li r0, 0
/* 800063A0 000032E0  41 82 00 08 */	beq lbl_800063A8
/* 800063A4 000032E4  38 00 00 03 */	li r0, 3
lbl_800063A8:
/* 800063A8 000032E8  90 03 00 58 */	stw r0, 0x58(r3)
/* 800063AC 000032EC  38 00 00 20 */	li r0, 0x20
/* 800063B0 000032F0  90 03 00 40 */	stw r0, 0x40(r3)
/* 800063B4 000032F4  38 00 00 2A */	li r0, 0x2a
/* 800063B8 000032F8  90 03 00 44 */	stw r0, 0x44(r3)
/* 800063BC 000032FC  3C 60 80 00 */	lis r3, LOAD_COPYDATE__FPv@ha
/* 800063C0 00003300  38 63 61 4C */	addi r3, r3, LOAD_COPYDATE__FPv@l
/* 800063C4 00003304  38 80 00 00 */	li r4, 0
/* 800063C8 00003308  48 00 F8 AD */	bl mDoDvdThd_callback_c_NS_create
/* 800063CC 0000330C  48 01 26 D5 */	bl fapGm_Create
/* 800063D0 00003310  48 01 7A 41 */	bl fopAcM_initManager
/* 800063D4 00003314  38 00 00 00 */	li r0, 0
/* 800063D8 00003318  98 0D 85 98 */	stb r0, lbl_80450B18-_SDA_BASE_(r13)
/* 800063DC 0000331C  48 01 23 89 */	bl cDyl_InitAsync
/* 800063E0 00003320  3C 60 00 15 */	lis r3, 0x0014D800@ha
/* 800063E4 00003324  38 63 D8 00 */	addi r3, r3, 0x0014D800@l
/* 800063E8 00003328  80 8D 8D F4 */	lwz r4, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
/* 800063EC 0000332C  38 A0 00 00 */	li r5, 0
/* 800063F0 00003330  48 2C A6 35 */	bl create__12JKRSolidHeapFUlP7JKRHeapb
/* 800063F4 00003334  90 6D 86 3C */	stw r3, lbl_80450BBC-_SDA_BASE_(r13)
/* 800063F8 00003338  3C 60 80 3F */	lis r3, lbl_803EAF40@ha
/* 800063FC 0000333C  3B E3 AF 40 */	addi r31, r3, lbl_803EAF40@l
lbl_80006400:
/* 80006400 00003340  80 6D 85 B4 */	lwz r3, lbl_80450B34-_SDA_BASE_(r13)
/* 80006404 00003344  38 63 00 01 */	addi r3, r3, 1
/* 80006408 00003348  90 6D 85 B4 */	stw r3, lbl_80450B34-_SDA_BASE_(r13)
/* 8000640C 0000334C  88 8D 85 80 */	lbz r4, lbl_80450B00-_SDA_BASE_(r13)
/* 80006410 00003350  28 04 00 00 */	cmplwi r4, 0
/* 80006414 00003354  41 82 00 18 */	beq lbl_8000642C
/* 80006418 00003358  7C 03 23 96 */	divwu r0, r3, r4
/* 8000641C 0000335C  7C 00 21 D6 */	mullw r0, r0, r4
/* 80006420 00003360  7C 00 18 51 */	subf. r0, r0, r3
/* 80006424 00003364  40 82 00 08 */	bne lbl_8000642C
/* 80006428 00003368  48 00 52 41 */	bl mDoMch_HeapCheckAll
lbl_8000642C:
/* 8000642C 0000336C  88 0D 87 00 */	lbz r0, lbl_80450C80-_SDA_BASE_(r13)
/* 80006430 00003370  28 00 00 00 */	cmplwi r0, 0
/* 80006434 00003374  41 82 00 0C */	beq lbl_80006440
/* 80006438 00003378  7F E3 FB 78 */	mr r3, r31
/* 8000643C 0000337C  48 01 04 59 */	bl mDoMemCd_Ctrl_c_NS_update
lbl_80006440:
/* 80006440 00003380  48 00 16 55 */	bl read__8mDoCPd_cFv
/* 80006444 00003384  48 01 26 29 */	bl fapGm_Execute
/* 80006448 00003388  48 00 0D 1D */	bl mDoAud_Execute__Fv
/* 8000644C 0000338C  4B FF FD 7D */	bl debug__Fv
/* 80006450 00003390  4B FF FF B0 */	b lbl_80006400