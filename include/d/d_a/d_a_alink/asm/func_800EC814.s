/* 800EC814 000E9754  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800EC818 000E9758  7C 08 02 A6 */ mflr r0
/* 800EC81C 000E975C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800EC820 000E9760  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800EC824 000E9764  3B E0 00 00 */ li r31, 0
/* 800EC828 000E9768  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 800EC82C 000E976C  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 800EC830 000E9770  38 63 00 77 */ addi r3, r3, 0x77
/* 800EC834 000E9774  4B FB 12 2D */ bl checkStageName__9daAlink_cFPCc
/* 800EC838 000E9778  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EC83C 000E977C  41 82 00 28 */ beq lbl_800EC864
/* 800EC840 000E9780  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800EC844 000E9784  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800EC848 000E9788  88 03 4E 0B */ lbz r0, 0x4e0b(r3)
/* 800EC84C 000E978C  7C 00 07 74 */ extsb r0, r0
/* 800EC850 000E9790  2C 00 00 04 */ cmpwi r0, 4
/* 800EC854 000E9794  41 82 00 0C */ beq lbl_800EC860
/* 800EC858 000E9798  2C 00 00 05 */ cmpwi r0, 5
/* 800EC85C 000E979C  40 82 00 08 */ bne lbl_800EC864
lbl_800EC860:
/* 800EC860 000E97A0  3B E0 00 01 */ li r31, 1
lbl_800EC864:
/* 800EC864 000E97A4  57 E3 06 3E */ clrlwi r3, r31, 0x18
/* 800EC868 000E97A8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800EC86C 000E97AC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800EC870 000E97B0  7C 08 03 A6 */ mtlr r0
/* 800EC874 000E97B4  38 21 00 10 */ addi r1, r1, 0x10
/* 800EC878 000E97B8  4E 80 00 20 */ blr