/* 80007E44 00004D84  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80007E48 00004D88  7C 08 02 A6 */ mflr r0
/* 80007E4C 00004D8C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80007E50 00004D90  38 60 00 00 */ li r3, 0
/* 80007E54 00004D94  80 8D 8D F4 */ lwz r4, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
/* 80007E58 00004D98  38 A0 00 02 */ li r5, 2
/* 80007E5C 00004D9C  38 C0 00 01 */ li r6, 1
/* 80007E60 00004DA0  48 26 A3 7D */ bl JFWDisplay_NS_createManager
/* 80007E64 00004DA4  38 00 00 01 */ li r0, 1
/* 80007E68 00004DA8  80 6D 8C 40 */ lwz r3, lbl_804511C0-_SDA_BASE_(r13)
/* 80007E6C 00004DAC  90 03 00 18 */ stw r0, 0x18(r3)
/* 80007E70 00004DB0  38 60 00 28 */ li r3, 0x28
/* 80007E74 00004DB4  48 2C 6D D9 */ bl __nw__FUl
/* 80007E78 00004DB8  7C 60 1B 79 */ or. r0, r3, r3
/* 80007E7C 00004DBC  41 82 00 44 */ beq lbl_80007EC0
/* 80007E80 00004DC0  38 00 00 00 */ li r0, 0
/* 80007E84 00004DC4  98 01 00 08 */ stb r0, 8(r1)
/* 80007E88 00004DC8  98 01 00 09 */ stb r0, 9(r1)
/* 80007E8C 00004DCC  98 01 00 0A */ stb r0, 0xa(r1)
/* 80007E90 00004DD0  98 01 00 0B */ stb r0, 0xb(r1)
/* 80007E94 00004DD4  80 01 00 08 */ lwz r0, 8(r1)
/* 80007E98 00004DD8  90 01 00 0C */ stw r0, 0xc(r1)
/* 80007E9C 00004DDC  80 8D 8F B8 */ lwz r4, lbl_80451538-_SDA_BASE_(r13)
/* 80007EA0 00004DE0  80 E4 00 04 */ lwz r7, 4(r4)
/* 80007EA4 00004DE4  38 80 00 00 */ li r4, 0
/* 80007EA8 00004DE8  38 A0 00 00 */ li r5, 0
/* 80007EAC 00004DEC  A0 C7 00 04 */ lhz r6, 4(r7)
/* 80007EB0 00004DF0  A0 E7 00 06 */ lhz r7, 6(r7)
/* 80007EB4 00004DF4  39 01 00 0C */ addi r8, r1, 0xc
/* 80007EB8 00004DF8  48 2D D6 79 */ bl JUTFader
/* 80007EBC 00004DFC  7C 60 1B 78 */ mr r0, r3
lbl_80007EC0:
/* 80007EC0 00004E00  80 6D 8C 40 */ lwz r3, lbl_804511C0-_SDA_BASE_(r13)
/* 80007EC4 00004E04  90 03 00 04 */ stw r0, 4(r3)
/* 80007EC8 00004E08  90 0D 86 48 */ stw r0, lbl_80450BC8-_SDA_BASE_(r13)
/* 80007ECC 00004E0C  80 6D 8C 40 */ lwz r3, lbl_804511C0-_SDA_BASE_(r13)
/* 80007ED0 00004E10  90 03 00 04 */ stw r0, 4(r3)
/* 80007ED4 00004E14  38 00 00 00 */ li r0, 0
/* 80007ED8 00004E18  80 6D 8F D8 */ lwz r3, lbl_80451558-_SDA_BASE_(r13)
/* 80007EDC 00004E1C  98 03 01 30 */ stb r0, 0x130(r3)
/* 80007EE0 00004E20  80 6D 8F D8 */ lwz r3, lbl_80451558-_SDA_BASE_(r13)
/* 80007EE4 00004E24  98 03 01 0C */ stb r0, 0x10c(r3)
/* 80007EE8 00004E28  80 6D 8F 48 */ lwz r3, lbl_804514C8-_SDA_BASE_(r13)
/* 80007EEC 00004E2C  98 03 00 0C */ stb r0, 0xc(r3)
/* 80007EF0 00004E30  38 60 01 30 */ li r3, 0x130
/* 80007EF4 00004E34  38 80 00 E0 */ li r4, 0xe0
/* 80007EF8 00004E38  38 A0 00 06 */ li r5, 6
/* 80007EFC 00004E3C  4B FF FE A1 */ bl createTimg__FUsUsUl
/* 80007F00 00004E40  90 6D 86 4C */ stw r3, lbl_80450BCC-_SDA_BASE_(r13)
/* 80007F04 00004E44  38 03 00 20 */ addi r0, r3, 0x20
/* 80007F08 00004E48  90 0D 86 50 */ stw r0, lbl_80450BD0-_SDA_BASE_(r13)
/* 80007F0C 00004E4C  38 60 01 30 */ li r3, 0x130
/* 80007F10 00004E50  38 80 00 E0 */ li r4, 0xe0
/* 80007F14 00004E54  38 A0 00 03 */ li r5, 3
/* 80007F18 00004E58  4B FF FE 85 */ bl createTimg__FUsUsUl
/* 80007F1C 00004E5C  90 6D 86 54 */ stw r3, lbl_80450BD4-_SDA_BASE_(r13)
/* 80007F20 00004E60  38 03 00 20 */ addi r0, r3, 0x20
/* 80007F24 00004E64  90 0D 86 58 */ stw r0, lbl_80450BD8-_SDA_BASE_(r13)
/* 80007F28 00004E68  38 60 04 00 */ li r3, 0x400
/* 80007F2C 00004E6C  48 2E C7 2D */ bl J2DPrint_NS_setBuffer
/* 80007F30 00004E70  38 00 00 00 */ li r0, 0
/* 80007F34 00004E74  98 0D 86 64 */ stb r0, lbl_80450BE4-_SDA_BASE_(r13)
/* 80007F38 00004E78  98 0D 86 66 */ stb r0, lbl_80450BE6-_SDA_BASE_(r13)
/* 80007F3C 00004E7C  88 0D 80 80 */ lbz r0, lbl_80450600-_SDA_BASE_(r13)
/* 80007F40 00004E80  98 0D 80 10 */ stb r0, lbl_80450590-_SDA_BASE_(r13)
/* 80007F44 00004E84  38 8D 80 80 */ addi r4, r13, 0x80450600 - 0x80458580 /*SDA HACK; original: lbl_80450600-_SDA_BASE_*/
/* 80007F48 00004E88  88 A4 00 01 */ lbz r5, 1(r4)
/* 80007F4C 00004E8C  38 6D 80 10 */ addi r3, r13, 0x80450590 - 0x80458580 /*SDA HACK; original: lbl_80450590-_SDA_BASE_*/
/* 80007F50 00004E90  98 A3 00 01 */ stb r5, 1(r3)
/* 80007F54 00004E94  88 C4 00 02 */ lbz r6, 2(r4)
/* 80007F58 00004E98  98 C3 00 02 */ stb r6, 2(r3)
/* 80007F5C 00004E9C  88 84 00 03 */ lbz r4, 3(r4)
/* 80007F60 00004EA0  98 83 00 03 */ stb r4, 3(r3)
/* 80007F64 00004EA4  98 0D 80 14 */ stb r0, lbl_80450594-_SDA_BASE_(r13)
/* 80007F68 00004EA8  38 6D 80 14 */ addi r3, r13, 0x80450594 - 0x80458580 /*SDA HACK; original: lbl_80450594-_SDA_BASE_*/
/* 80007F6C 00004EAC  98 A3 00 01 */ stb r5, 1(r3)
/* 80007F70 00004EB0  98 C3 00 02 */ stb r6, 2(r3)
/* 80007F74 00004EB4  98 83 00 03 */ stb r4, 3(r3)
/* 80007F78 00004EB8  38 60 00 01 */ li r3, 1
/* 80007F7C 00004EBC  48 34 58 C5 */ bl VISetBlack
/* 80007F80 00004EC0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80007F84 00004EC4  7C 08 03 A6 */ mtlr r0
/* 80007F88 00004EC8  38 21 00 10 */ addi r1, r1, 0x10
/* 80007F8C 00004ECC  4E 80 00 20 */ blr
