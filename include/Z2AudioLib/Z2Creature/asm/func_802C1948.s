/* 802C1948 002BE888  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C194C 002BE88C  7C 08 02 A6 */ mflr r0
/* 802C1950 002BE890  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C1954 002BE894  7C A6 2B 78 */ mr r6, r5
/* 802C1958 002BE898  38 A0 00 00 */ li r5, 0
/* 802C195C 002BE89C  88 03 00 A0 */ lbz r0, 0xa0(r3)
/* 802C1960 002BE8A0  28 00 00 07 */ cmplwi r0, 7
/* 802C1964 002BE8A4  40 82 00 08 */ bne lbl_802C196C
/* 802C1968 002BE8A8  38 A0 00 01 */ li r5, 1
lbl_802C196C:
/* 802C196C 002BE8AC  80 04 00 00 */ lwz r0, 0(r4)
/* 802C1970 002BE8B0  90 01 00 08 */ stw r0, 8(r1)
/* 802C1974 002BE8B4  38 63 00 50 */ addi r3, r3, 0x50
/* 802C1978 002BE8B8  38 81 00 08 */ addi r4, r1, 8
/* 802C197C 002BE8BC  81 83 00 10 */ lwz r12, 0x10(r3)
/* 802C1980 002BE8C0  81 8C 00 1C */ lwz r12, 0x1c(r12)
/* 802C1984 002BE8C4  7D 89 03 A6 */ mtctr r12
/* 802C1988 002BE8C8  4E 80 04 21 */ bctrl
/* 802C198C 002BE8CC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C1990 002BE8D0  7C 08 03 A6 */ mtlr r0
/* 802C1994 002BE8D4  38 21 00 10 */ addi r1, r1, 0x10
/* 802C1998 002BE8D8  4E 80 00 20 */ blr