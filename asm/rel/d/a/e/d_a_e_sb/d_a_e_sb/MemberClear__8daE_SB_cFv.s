lbl_80781AF8:
/* 80781AF8  3C 80 80 78 */	lis r4, lit_3768@ha
/* 80781AFC  C0 04 4D E0 */	lfs f0, lit_3768@l(r4)
/* 80781B00  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80781B04  3C 80 80 78 */	lis r4, lit_3758@ha
/* 80781B08  C0 04 4D D8 */	lfs f0, lit_3758@l(r4)
/* 80781B0C  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80781B10  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80781B14  38 00 00 01 */	li r0, 1
/* 80781B18  90 03 05 B0 */	stw r0, 0x5b0(r3)
/* 80781B1C  38 00 00 00 */	li r0, 0
/* 80781B20  90 03 05 AC */	stw r0, 0x5ac(r3)
/* 80781B24  90 03 05 B4 */	stw r0, 0x5b4(r3)
/* 80781B28  90 03 05 B8 */	stw r0, 0x5b8(r3)
/* 80781B2C  90 03 05 BC */	stw r0, 0x5bc(r3)
/* 80781B30  90 03 05 C0 */	stw r0, 0x5c0(r3)
/* 80781B34  90 03 05 C4 */	stw r0, 0x5c4(r3)
/* 80781B38  90 03 05 C8 */	stw r0, 0x5c8(r3)
/* 80781B3C  80 03 0A F8 */	lwz r0, 0xaf8(r3)
/* 80781B40  60 00 00 01 */	ori r0, r0, 1
/* 80781B44  90 03 0A F8 */	stw r0, 0xaf8(r3)
/* 80781B48  38 00 00 02 */	li r0, 2
/* 80781B4C  98 03 0B 16 */	stb r0, 0xb16(r3)
/* 80781B50  4E 80 00 20 */	blr 