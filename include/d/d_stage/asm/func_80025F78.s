/* 80025F78 00022EB8  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80025F7C 00022EBC  7C 08 02 A6 */ mflr r0
/* 80025F80 00022EC0  90 01 00 24 */ stw r0, 0x24(r1)
/* 80025F84 00022EC4  39 61 00 20 */ addi r11, r1, 0x20
/* 80025F88 00022EC8  48 33 C2 4D */ bl _savegpr_27
/* 80025F8C 00022ECC  7C 7B 1B 78 */ mr r27, r3
/* 80025F90 00022ED0  3B C4 00 04 */ addi r30, r4, 4
/* 80025F94 00022ED4  83 A4 00 08 */ lwz r29, 8(r4)
/* 80025F98 00022ED8  7F C4 F3 78 */ mr r4, r30
/* 80025F9C 00022EDC  81 83 00 00 */ lwz r12, 0(r3)
/* 80025FA0 00022EE0  81 8C 00 E0 */ lwz r12, 0xe0(r12)
/* 80025FA4 00022EE4  7D 89 03 A6 */ mtctr r12
/* 80025FA8 00022EE8  4E 80 04 21 */ bctrl
/* 80025FAC 00022EEC  3B 80 00 00 */ li r28, 0
/* 80025FB0 00022EF0  3F E0 80 00 */ lis r31, 0x8000
/* 80025FB4 00022EF4  48 00 00 3C */ b lbl_80025FF0
lbl_80025FB8:
/* 80025FB8 00022EF8  80 1D 00 08 */ lwz r0, 8(r29)
/* 80025FBC 00022EFC  7C 00 F8 40 */ cmplw r0, r31
/* 80025FC0 00022F00  40 80 00 28 */ bge lbl_80025FE8
/* 80025FC4 00022F04  7F 63 DB 78 */ mr r3, r27
/* 80025FC8 00022F08  81 9B 00 00 */ lwz r12, 0(r27)
/* 80025FCC 00022F0C  81 8C 00 DC */ lwz r12, 0xdc(r12)
/* 80025FD0 00022F10  7D 89 03 A6 */ mtctr r12
/* 80025FD4 00022F14  4E 80 04 21 */ bctrl
/* 80025FD8 00022F18  80 63 00 04 */ lwz r3, 4(r3)
/* 80025FDC 00022F1C  80 1D 00 08 */ lwz r0, 8(r29)
/* 80025FE0 00022F20  7C 00 1A 14 */ add r0, r0, r3
/* 80025FE4 00022F24  90 1D 00 08 */ stw r0, 8(r29)
lbl_80025FE8:
/* 80025FE8 00022F28  3B BD 00 0C */ addi r29, r29, 0xc
/* 80025FEC 00022F2C  3B 9C 00 01 */ addi r28, r28, 1
lbl_80025FF0:
/* 80025FF0 00022F30  80 1E 00 00 */ lwz r0, 0(r30)
/* 80025FF4 00022F34  7C 1C 00 00 */ cmpw r28, r0
/* 80025FF8 00022F38  41 80 FF C0 */ blt lbl_80025FB8
/* 80025FFC 00022F3C  38 60 00 01 */ li r3, 1
/* 80026000 00022F40  39 61 00 20 */ addi r11, r1, 0x20
/* 80026004 00022F44  48 33 C2 1D */ bl _restgpr_27
/* 80026008 00022F48  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8002600C 00022F4C  7C 08 03 A6 */ mtlr r0
/* 80026010 00022F50  38 21 00 20 */ addi r1, r1, 0x20
/* 80026014 00022F54  4E 80 00 20 */ blr