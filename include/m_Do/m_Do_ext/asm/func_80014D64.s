/* 80014D64 00011CA4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80014D68 00011CA8  7C 08 02 A6 */ mflr r0
/* 80014D6C 00011CAC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80014D70 00011CB0  48 32 BF 15 */ bl OSGetCurrentThread
/* 80014D74 00011CB4  28 03 00 00 */ cmplwi r3, 0
/* 80014D78 00011CB8  41 82 00 14 */ beq lbl_80014D8C
/* 80014D7C 00011CBC  A0 03 02 C8 */ lhz r0, 0x2c8(r3)
/* 80014D80 00011CC0  28 00 00 02 */ cmplwi r0, 2
/* 80014D84 00011CC4  41 82 00 08 */ beq lbl_80014D8C
/* 80014D88 00011CC8  38 60 00 00 */ li r3, 0
lbl_80014D8C:
/* 80014D8C 00011CCC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80014D90 00011CD0  7C 08 03 A6 */ mtlr r0
/* 80014D94 00011CD4  38 21 00 10 */ addi r1, r1, 0x10
/* 80014D98 00011CD8  4E 80 00 20 */ blr