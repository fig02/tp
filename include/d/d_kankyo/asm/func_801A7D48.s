/* 801A7D48 001A4C88  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 801A7D4C 001A4C8C  7C 60 07 34 */ extsh r0, r3
/* 801A7D50 001A4C90  C8 42 A2 30 */ lfd f2, lbl_80453C30-_SDA2_BASE_(r2)
/* 801A7D54 001A4C94  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 801A7D58 001A4C98  90 01 00 0C */ stw r0, 0xc(r1)
/* 801A7D5C 001A4C9C  3C C0 43 30 */ lis r6, 0x4330
/* 801A7D60 001A4CA0  90 C1 00 08 */ stw r6, 8(r1)
/* 801A7D64 001A4CA4  C8 01 00 08 */ lfd f0, 8(r1)
/* 801A7D68 001A4CA8  EC 00 10 28 */ fsubs f0, f0, f2
/* 801A7D6C 001A4CAC  EC 00 00 72 */ fmuls f0, f0, f1
/* 801A7D70 001A4CB0  FC 00 00 1E */ fctiwz f0, f0
/* 801A7D74 001A4CB4  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 801A7D78 001A4CB8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801A7D7C 001A4CBC  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A7D80 001A4CC0  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 801A7D84 001A4CC4  B0 03 11 A0 */ sth r0, 0x11a0(r3)
/* 801A7D88 001A4CC8  7C 80 07 34 */ extsh r0, r4
/* 801A7D8C 001A4CCC  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 801A7D90 001A4CD0  90 01 00 1C */ stw r0, 0x1c(r1)
/* 801A7D94 001A4CD4  90 C1 00 18 */ stw r6, 0x18(r1)
/* 801A7D98 001A4CD8  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 801A7D9C 001A4CDC  EC 00 10 28 */ fsubs f0, f0, f2
/* 801A7DA0 001A4CE0  EC 00 00 72 */ fmuls f0, f0, f1
/* 801A7DA4 001A4CE4  FC 00 00 1E */ fctiwz f0, f0
/* 801A7DA8 001A4CE8  D8 01 00 20 */ stfd f0, 0x20(r1)
/* 801A7DAC 001A4CEC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 801A7DB0 001A4CF0  B0 03 11 A2 */ sth r0, 0x11a2(r3)
/* 801A7DB4 001A4CF4  7C A0 07 34 */ extsh r0, r5
/* 801A7DB8 001A4CF8  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 801A7DBC 001A4CFC  90 01 00 2C */ stw r0, 0x2c(r1)
/* 801A7DC0 001A4D00  90 C1 00 28 */ stw r6, 0x28(r1)
/* 801A7DC4 001A4D04  C8 01 00 28 */ lfd f0, 0x28(r1)
/* 801A7DC8 001A4D08  EC 00 10 28 */ fsubs f0, f0, f2
/* 801A7DCC 001A4D0C  EC 00 00 72 */ fmuls f0, f0, f1
/* 801A7DD0 001A4D10  FC 00 00 1E */ fctiwz f0, f0
/* 801A7DD4 001A4D14  D8 01 00 30 */ stfd f0, 0x30(r1)
/* 801A7DD8 001A4D18  80 01 00 34 */ lwz r0, 0x34(r1)
/* 801A7DDC 001A4D1C  B0 03 11 A4 */ sth r0, 0x11a4(r3)
/* 801A7DE0 001A4D20  38 21 00 40 */ addi r1, r1, 0x40
/* 801A7DE4 001A4D24  4E 80 00 20 */ blr