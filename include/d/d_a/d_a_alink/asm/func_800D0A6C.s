/* 800D0A6C 000CD9AC  38 80 00 00 */ li r4, 0
/* 800D0A70 000CD9B0  A0 03 2F E8 */ lhz r0, 0x2fe8(r3)
/* 800D0A74 000CD9B4  28 00 00 97 */ cmplwi r0, 0x97
/* 800D0A78 000CD9B8  40 82 00 14 */ bne lbl_800D0A8C
/* 800D0A7C 000CD9BC  A8 03 30 0E */ lha r0, 0x300e(r3)
/* 800D0A80 000CD9C0  2C 00 00 01 */ cmpwi r0, 1
/* 800D0A84 000CD9C4  40 82 00 08 */ bne lbl_800D0A8C
/* 800D0A88 000CD9C8  38 80 00 01 */ li r4, 1
lbl_800D0A8C:
/* 800D0A8C 000CD9CC  7C 83 23 78 */ mr r3, r4
/* 800D0A90 000CD9D0  4E 80 00 20 */ blr