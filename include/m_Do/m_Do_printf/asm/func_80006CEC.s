/* 80006CEC 00003C2C  94 21 FF 80 */ stwu r1, -0x80(r1)
/* 80006CF0 00003C30  7C 08 02 A6 */ mflr r0
/* 80006CF4 00003C34  90 01 00 84 */ stw r0, 0x84(r1)
/* 80006CF8 00003C38  93 E1 00 7C */ stw r31, 0x7c(r1)
/* 80006CFC 00003C3C  7C 7F 1B 78 */ mr r31, r3
/* 80006D00 00003C40  40 86 00 24 */ bne cr1, lbl_80006D24
/* 80006D04 00003C44  D8 21 00 28 */ stfd f1, 0x28(r1)
/* 80006D08 00003C48  D8 41 00 30 */ stfd f2, 0x30(r1)
/* 80006D0C 00003C4C  D8 61 00 38 */ stfd f3, 0x38(r1)
/* 80006D10 00003C50  D8 81 00 40 */ stfd f4, 0x40(r1)
/* 80006D14 00003C54  D8 A1 00 48 */ stfd f5, 0x48(r1)
/* 80006D18 00003C58  D8 C1 00 50 */ stfd f6, 0x50(r1)
/* 80006D1C 00003C5C  D8 E1 00 58 */ stfd f7, 0x58(r1)
/* 80006D20 00003C60  D9 01 00 60 */ stfd f8, 0x60(r1)
lbl_80006D24:
/* 80006D24 00003C64  90 61 00 08 */ stw r3, 8(r1)
/* 80006D28 00003C68  90 81 00 0C */ stw r4, 0xc(r1)
/* 80006D2C 00003C6C  90 A1 00 10 */ stw r5, 0x10(r1)
/* 80006D30 00003C70  90 C1 00 14 */ stw r6, 0x14(r1)
/* 80006D34 00003C74  90 E1 00 18 */ stw r7, 0x18(r1)
/* 80006D38 00003C78  91 01 00 1C */ stw r8, 0x1c(r1)
/* 80006D3C 00003C7C  91 21 00 20 */ stw r9, 0x20(r1)
/* 80006D40 00003C80  91 41 00 24 */ stw r10, 0x24(r1)
/* 80006D44 00003C84  80 6D 86 2C */ lwz r3, lbl_80450BAC-_SDA_BASE_(r13)
/* 80006D48 00003C88  38 03 00 01 */ addi r0, r3, 1
/* 80006D4C 00003C8C  90 0D 86 2C */ stw r0, lbl_80450BAC-_SDA_BASE_(r13)
/* 80006D50 00003C90  88 0D 86 1A */ lbz r0, lbl_80450B9A-_SDA_BASE_(r13)
/* 80006D54 00003C94  28 00 00 00 */ cmplwi r0, 0
/* 80006D58 00003C98  40 82 00 60 */ bne lbl_80006DB8
/* 80006D5C 00003C9C  3C 00 01 00 */ lis r0, 0x100
/* 80006D60 00003CA0  90 01 00 68 */ stw r0, 0x68(r1)
/* 80006D64 00003CA4  38 01 00 88 */ addi r0, r1, 0x88
/* 80006D68 00003CA8  90 01 00 6C */ stw r0, 0x6c(r1)
/* 80006D6C 00003CAC  38 01 00 08 */ addi r0, r1, 8
/* 80006D70 00003CB0  90 01 00 70 */ stw r0, 0x70(r1)
/* 80006D74 00003CB4  4B FF FB 39 */ bl OSReportForceEnableOn
/* 80006D78 00003CB8  3C 60 80 37 */ lis r3, lbl_80373CB0@ha
/* 80006D7C 00003CBC  38 63 3C B0 */ addi r3, r3, lbl_80373CB0@l
/* 80006D80 00003CC0  38 63 00 51 */ addi r3, r3, 0x51
/* 80006D84 00003CC4  4B FF FA 45 */ bl my_PutString__FPCc
/* 80006D88 00003CC8  7F E3 FB 78 */ mr r3, r31
/* 80006D8C 00003CCC  38 81 00 68 */ addi r4, r1, 0x68
/* 80006D90 00003CD0  4B FF FA 65 */ bl OSVAttention__FPCcP16__va_list_struct
/* 80006D94 00003CD4  3C 60 80 37 */ lis r3, lbl_80373CB0@ha
/* 80006D98 00003CD8  38 63 3C B0 */ addi r3, r3, lbl_80373CB0@l
/* 80006D9C 00003CDC  38 63 00 4D */ addi r3, r3, 0x4d
/* 80006DA0 00003CE0  4B FF FA 29 */ bl my_PutString__FPCc
/* 80006DA4 00003CE4  4B FF FB 15 */ bl OSReportForceEnableOff
/* 80006DA8 00003CE8  3C 60 80 3D */ lis r3, lbl_803D29B0@ha
/* 80006DAC 00003CEC  38 63 29 B0 */ addi r3, r3, lbl_803D29B0@l
/* 80006DB0 00003CF0  38 63 00 50 */ addi r3, r3, 0x50
/* 80006DB4 00003CF4  48 35 EB 0D */ bl func_803658C0
lbl_80006DB8:
/* 80006DB8 00003CF8  83 E1 00 7C */ lwz r31, 0x7c(r1)
/* 80006DBC 00003CFC  80 01 00 84 */ lwz r0, 0x84(r1)
/* 80006DC0 00003D00  7C 08 03 A6 */ mtlr r0
/* 80006DC4 00003D04  38 21 00 80 */ addi r1, r1, 0x80
/* 80006DC8 00003D08  4E 80 00 20 */ blr
