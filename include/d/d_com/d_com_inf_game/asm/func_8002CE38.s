/* 8002CE38 00029D78  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002CE3C 00029D7C  7C 08 02 A6 */ mflr r0
/* 8002CE40 00029D80  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002CE44 00029D84  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8002CE48 00029D88  7C 7F 1B 78 */ mr r31, r3
/* 8002CE4C 00029D8C  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8002CE50 00029D90  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 8002CE54 00029D94  3C 84 00 02 */ addis r4, r4, 2
/* 8002CE58 00029D98  38 A0 00 80 */ li r5, 0x80
/* 8002CE5C 00029D9C  38 84 C2 F8 */ addi r4, r4, -15624
/* 8002CE60 00029DA0  48 00 F3 01 */ bl syncRes__14dRes_control_cFPCcP11dRes_info_ci
/* 8002CE64 00029DA4  2C 03 00 00 */ cmpwi r3, 0
/* 8002CE68 00029DA8  40 80 00 24 */ bge lbl_8002CE8C
/* 8002CE6C 00029DAC  3C 60 80 38 */ lis r3, lbl_80378F38@ha
/* 8002CE70 00029DB0  38 63 8F 38 */ addi r3, r3, lbl_80378F38@l
/* 8002CE74 00029DB4  38 63 01 36 */ addi r3, r3, 0x136
/* 8002CE78 00029DB8  7F E4 FB 78 */ mr r4, r31
/* 8002CE7C 00029DBC  4C C6 31 82 */ crclr 6
/* 8002CE80 00029DC0  4B FD 9D 8D */ bl OSReport_Error
/* 8002CE84 00029DC4  38 60 00 05 */ li r3, 5
/* 8002CE88 00029DC8  48 00 00 18 */ b lbl_8002CEA0
lbl_8002CE8C:
/* 8002CE8C 00029DCC  7C 03 00 D0 */ neg r0, r3
/* 8002CE90 00029DD0  7C 00 18 78 */ andc r0, r0, r3
/* 8002CE94 00029DD4  7C 03 FE 70 */ srawi r3, r0, 0x1f
/* 8002CE98 00029DD8  38 00 00 02 */ li r0, 2
/* 8002CE9C 00029DDC  7C 03 18 78 */ andc r3, r0, r3
lbl_8002CEA0:
/* 8002CEA0 00029DE0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8002CEA4 00029DE4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002CEA8 00029DE8  7C 08 03 A6 */ mtlr r0
/* 8002CEAC 00029DEC  38 21 00 10 */ addi r1, r1, 0x10
/* 8002CEB0 00029DF0  4E 80 00 20 */ blr