/* dump__12JKRSolidHeapFv __ct__12JKRSolidHeapFPvUlP7JKRHeapb::dump(void) */
/* missing reference */
/* 802D10FC 002CE03C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D1100 002CE040  7C 08 02 A6 */	mflr r0
/* 802D1104 002CE044  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D1108 002CE048  39 61 00 30 */	addi r11, r1, 0x30
/* 802D110C 002CE04C  48 09 10 D1 */	bl _savegpr_29
/* 802D1110 002CE050  7C 7E 1B 78 */	mr r30, r3
/* 802D1114 002CE054  81 83 00 00 */	lwz r12, 0(r3)
/* 802D1118 002CE058  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D111C 002CE05C  7D 89 03 A6 */	mtctr r12
/* 802D1120 002CE060  4E 80 04 21 */	bctrl
/* 802D1124 002CE064  7C 7F 1B 78 */	mr r31, r3
/* 802D1128 002CE068  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D112C 002CE06C  48 06 DF 15 */	bl OSLockMutex
/* 802D1130 002CE070  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 802D1134 002CE074  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 802D1138 002CE078  7C A4 00 50 */	subf r5, r4, r0
/* 802D113C 002CE07C  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 802D1140 002CE080  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D1144 002CE084  7C 03 00 50 */	subf r0, r3, r0
/* 802D1148 002CE088  7F A5 02 14 */	add r29, r5, r0
/* 802D114C 002CE08C  3C 60 80 3A */	lis r3, lbl_8039CE50@ha
/* 802D1150 002CE090  38 63 CE 50 */	addi r3, r3, lbl_8039CE50@l
/* 802D1154 002CE094  38 63 01 17 */	addi r3, r3, 0x117
/* 802D1158 002CE098  4C C6 31 82 */	crclr 6
/* 802D115C 002CE09C  48 01 74 6D */	bl JUTReportConsole_f
/* 802D1160 002CE0A0  80 9E 00 74 */	lwz r4, 0x74(r30)
/* 802D1164 002CE0A4  3C 60 80 3A */	lis r3, lbl_8039CE50@ha
/* 802D1168 002CE0A8  38 63 CE 50 */	addi r3, r3, lbl_8039CE50@l
/* 802D116C 002CE0AC  38 63 01 28 */	addi r3, r3, 0x128
/* 802D1170 002CE0B0  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D1174 002CE0B4  7C A4 00 50 */	subf r5, r4, r0
/* 802D1178 002CE0B8  4C C6 31 82 */	crclr 6
/* 802D117C 002CE0BC  48 01 74 4D */	bl JUTReportConsole_f
/* 802D1180 002CE0C0  80 BE 00 38 */	lwz r5, 0x38(r30)
/* 802D1184 002CE0C4  3C 60 80 3A */	lis r3, lbl_8039CE50@ha
/* 802D1188 002CE0C8  38 63 CE 50 */	addi r3, r3, lbl_8039CE50@l
/* 802D118C 002CE0CC  38 63 01 39 */	addi r3, r3, 0x139
/* 802D1190 002CE0D0  7F A4 EB 78 */	mr r4, r29
/* 802D1194 002CE0D4  C0 62 C5 A8 */	lfs f3, lbl_80455FA8-_SDA2_BASE_(r2)
/* 802D1198 002CE0D8  C8 22 C5 B0 */	lfd f1, lbl_80455FB0-_SDA2_BASE_(r2)
/* 802D119C 002CE0DC  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 802D11A0 002CE0E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D11A4 002CE0E4  3C 00 43 30 */	lis r0, 0x4330
/* 802D11A8 002CE0E8  90 01 00 08 */	stw r0, 8(r1)
/* 802D11AC 002CE0EC  C8 01 00 08 */	lfd f0, 8(r1)
/* 802D11B0 002CE0F0  EC 40 08 28 */	fsubs f2, f0, f1
/* 802D11B4 002CE0F4  C8 22 C5 B8 */	lfd f1, lbl_80455FB8-_SDA2_BASE_(r2)
/* 802D11B8 002CE0F8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802D11BC 002CE0FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D11C0 002CE100  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802D11C4 002CE104  EC 00 08 28 */	fsubs f0, f0, f1
/* 802D11C8 002CE108  EC 02 00 24 */	fdivs f0, f2, f0
/* 802D11CC 002CE10C  EC 23 00 32 */	fmuls f1, f3, f0
/* 802D11D0 002CE110  4C C6 32 42 */	crset 6
/* 802D11D4 002CE114  48 01 73 F5 */	bl JUTReportConsole_f
/* 802D11D8 002CE118  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D11DC 002CE11C  48 06 DF 41 */	bl OSUnlockMutex
/* 802D11E0 002CE120  7F E3 FB 78 */	mr r3, r31
/* 802D11E4 002CE124  39 61 00 30 */	addi r11, r1, 0x30
/* 802D11E8 002CE128  48 09 10 41 */	bl _restgpr_29
/* 802D11EC 002CE12C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D11F0 002CE130  7C 08 03 A6 */	mtlr r0
/* 802D11F4 002CE134  38 21 00 30 */	addi r1, r1, 0x30
/* 802D11F8 002CE138  4E 80 00 20 */	blr