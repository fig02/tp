/* 802BCDA8 002B9CE8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802BCDAC 002B9CEC  7C 08 02 A6 */ mflr r0
/* 802BCDB0 002B9CF0  90 01 00 14 */ stw r0, 0x14(r1)
/* 802BCDB4 002B9CF4  38 00 00 00 */ li r0, 0
/* 802BCDB8 002B9CF8  54 85 10 3A */ slwi r5, r4, 2
/* 802BCDBC 002B9CFC  7C A3 2A 14 */ add r5, r3, r5
/* 802BCDC0 002B9D00  90 05 00 10 */ stw r0, 0x10(r5)
/* 802BCDC4 002B9D04  C0 03 00 0C */ lfs f0, 0xc(r3)
/* 802BCDC8 002B9D08  D0 05 00 18 */ stfs f0, 0x18(r5)
/* 802BCDCC 002B9D0C  7C A3 22 14 */ add r5, r3, r4
/* 802BCDD0 002B9D10  98 05 00 26 */ stb r0, 0x26(r5)
/* 802BCDD4 002B9D14  48 00 00 15 */ bl Z2SpotMic_NS_calcVolumeFactor
/* 802BCDD8 002B9D18  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802BCDDC 002B9D1C  7C 08 03 A6 */ mtlr r0
/* 802BCDE0 002B9D20  38 21 00 10 */ addi r1, r1, 0x10
/* 802BCDE4 002B9D24  4E 80 00 20 */ blr
