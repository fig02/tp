/* 800ED074 000E9FB4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800ED078 000E9FB8  7C 08 02 A6 */ mflr r0
/* 800ED07C 000E9FBC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800ED080 000E9FC0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800ED084 000E9FC4  93 C1 00 08 */ stw r30, 8(r1)
/* 800ED088 000E9FC8  7C 7E 1B 78 */ mr r30, r3
/* 800ED08C 000E9FCC  3B E0 00 00 */ li r31, 0
/* 800ED090 000E9FD0  A0 03 1F BC */ lhz r0, 0x1fbc(r3)
/* 800ED094 000E9FD4  28 00 02 63 */ cmplwi r0, 0x263
/* 800ED098 000E9FD8  41 82 00 1C */ beq lbl_800ED0B4
/* 800ED09C 000E9FDC  4B FC C1 B9 */ bl checkNoUpperAnime__9daAlink_cCFv
/* 800ED0A0 000E9FE0  2C 03 00 00 */ cmpwi r3, 0
/* 800ED0A4 000E9FE4  40 82 00 10 */ bne lbl_800ED0B4
/* 800ED0A8 000E9FE8  A0 1E 1F BC */ lhz r0, 0x1fbc(r30)
/* 800ED0AC 000E9FEC  28 00 00 CC */ cmplwi r0, 0xcc
/* 800ED0B0 000E9FF0  40 82 00 08 */ bne lbl_800ED0B8
lbl_800ED0B4:
/* 800ED0B4 000E9FF4  3B E0 00 01 */ li r31, 1
lbl_800ED0B8:
/* 800ED0B8 000E9FF8  57 E3 06 3E */ clrlwi r3, r31, 0x18
/* 800ED0BC 000E9FFC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800ED0C0 000EA000  83 C1 00 08 */ lwz r30, 8(r1)
/* 800ED0C4 000EA004  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800ED0C8 000EA008  7C 08 03 A6 */ mtlr r0
/* 800ED0CC 000EA00C  38 21 00 10 */ addi r1, r1, 0x10
/* 800ED0D0 000EA010  4E 80 00 20 */ blr