/* 802B4AFC 002B1A3C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 802B4B00 002B1A40  7C 08 02 A6 */ mflr r0
/* 802B4B04 002B1A44  90 01 00 24 */ stw r0, 0x24(r1)
/* 802B4B08 002B1A48  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 802B4B0C 002B1A4C  93 C1 00 18 */ stw r30, 0x18(r1)
/* 802B4B10 002B1A50  7C 7E 1B 78 */ mr r30, r3
/* 802B4B14 002B1A54  7C 9F 23 78 */ mr r31, r4
/* 802B4B18 002B1A58  80 63 00 04 */ lwz r3, 4(r3)
/* 802B4B1C 002B1A5C  28 03 00 00 */ cmplwi r3, 0
/* 802B4B20 002B1A60  41 82 00 10 */ beq lbl_802B4B30
/* 802B4B24 002B1A64  80 63 00 18 */ lwz r3, 0x18(r3)
/* 802B4B28 002B1A68  90 61 00 08 */ stw r3, 8(r1)
/* 802B4B2C 002B1A6C  48 00 00 08 */ b lbl_802B4B34
lbl_802B4B30:
/* 802B4B30 002B1A70  38 60 FF FF */ li r3, -1
lbl_802B4B34:
/* 802B4B34 002B1A74  3C 03 FF 00 */ addis r0, r3, 0xff00
/* 802B4B38 002B1A78  28 00 00 0F */ cmplwi r0, 0xf
/* 802B4B3C 002B1A7C  40 82 00 7C */ bne lbl_802B4BB8
/* 802B4B40 002B1A80  7F C3 F3 78 */ mr r3, r30
/* 802B4B44 002B1A84  38 80 00 01 */ li r4, 1
/* 802B4B48 002B1A88  4B FF F8 89 */ bl Z2SeqMgr_NS_setBattleDistIgnore
/* 802B4B4C 002B1A8C  88 0D 82 E8 */ lbz r0, lbl_80450868-_SDA_BASE_(r13)
/* 802B4B50 002B1A90  C0 6D 8D BC */ lfs f3, lbl_8045133C-_SDA_BASE_(r13)
/* 802B4B54 002B1A94  28 00 00 00 */ cmplwi r0, 0
/* 802B4B58 002B1A98  41 82 00 3C */ beq lbl_802B4B94
/* 802B4B5C 002B1A9C  C0 1E 00 24 */ lfs f0, 0x24(r30)
/* 802B4B60 002B1AA0  90 1E 00 30 */ stw r0, 0x30(r30)
/* 802B4B64 002B1AA4  EC 43 00 28 */ fsubs f2, f3, f0
/* 802B4B68 002B1AA8  80 1E 00 30 */ lwz r0, 0x30(r30)
/* 802B4B6C 002B1AAC  C8 22 BF A8 */ lfd f1, lbl_804559A8-_SDA2_BASE_(r2)
/* 802B4B70 002B1AB0  90 01 00 14 */ stw r0, 0x14(r1)
/* 802B4B74 002B1AB4  3C 00 43 30 */ lis r0, 0x4330
/* 802B4B78 002B1AB8  90 01 00 10 */ stw r0, 0x10(r1)
/* 802B4B7C 002B1ABC  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 802B4B80 002B1AC0  EC 00 08 28 */ fsubs f0, f0, f1
/* 802B4B84 002B1AC4  EC 02 00 24 */ fdivs f0, f2, f0
/* 802B4B88 002B1AC8  D0 1E 00 28 */ stfs f0, 0x28(r30)
/* 802B4B8C 002B1ACC  D0 7E 00 2C */ stfs f3, 0x2c(r30)
/* 802B4B90 002B1AD0  48 00 00 1C */ b lbl_802B4BAC
lbl_802B4B94:
/* 802B4B94 002B1AD4  D0 7E 00 24 */ stfs f3, 0x24(r30)
/* 802B4B98 002B1AD8  C0 02 BF 9C */ lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802B4B9C 002B1ADC  D0 1E 00 28 */ stfs f0, 0x28(r30)
/* 802B4BA0 002B1AE0  38 00 00 00 */ li r0, 0
/* 802B4BA4 002B1AE4  90 1E 00 30 */ stw r0, 0x30(r30)
/* 802B4BA8 002B1AE8  D0 1E 00 2C */ stfs f0, 0x2c(r30)
lbl_802B4BAC:
/* 802B4BAC 002B1AEC  88 0D 82 EB */ lbz r0, lbl_8045086B-_SDA_BASE_(r13)
/* 802B4BB0 002B1AF0  98 1E 00 C1 */ stb r0, 0xc1(r30)
/* 802B4BB4 002B1AF4  9B FE 00 C2 */ stb r31, 0xc2(r30)
lbl_802B4BB8:
/* 802B4BB8 002B1AF8  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 802B4BBC 002B1AFC  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 802B4BC0 002B1B00  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802B4BC4 002B1B04  7C 08 03 A6 */ mtlr r0
/* 802B4BC8 002B1B08  38 21 00 20 */ addi r1, r1, 0x20
/* 802B4BCC 002B1B0C  4E 80 00 20 */ blr
