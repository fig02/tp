/* 800E158C 000DE4CC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E1590 000DE4D0  7C 08 02 A6 */ mflr r0
/* 800E1594 000DE4D4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E1598 000DE4D8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E159C 000DE4DC  7C 7F 1B 78 */ mr r31, r3
/* 800E15A0 000DE4E0  4B FD 7C B5 */ bl checkNoUpperAnime__9daAlink_cCFv
/* 800E15A4 000DE4E4  2C 03 00 00 */ cmpwi r3, 0
/* 800E15A8 000DE4E8  41 82 00 40 */ beq lbl_800E15E8
/* 800E15AC 000DE4EC  7F E3 FB 78 */ mr r3, r31
/* 800E15B0 000DE4F0  4B FF FD C5 */ bl getCopyRodControllActor__9daAlink_cFv
/* 800E15B4 000DE4F4  28 03 00 00 */ cmplwi r3, 0
/* 800E15B8 000DE4F8  41 82 00 30 */ beq lbl_800E15E8
/* 800E15BC 000DE4FC  7F E3 FB 78 */ mr r3, r31
/* 800E15C0 000DE500  38 80 02 02 */ li r4, 0x202
/* 800E15C4 000DE504  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E15C8 000DE508  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800E15CC 000DE50C  4B FC BD DD */ bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800E15D0 000DE510  38 00 00 02 */ li r0, 2
/* 800E15D4 000DE514  98 1F 2F 96 */ stb r0, 0x2f96(r31)
/* 800E15D8 000DE518  38 00 00 05 */ li r0, 5
/* 800E15DC 000DE51C  98 1F 2F 97 */ stb r0, 0x2f97(r31)
/* 800E15E0 000DE520  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E15E4 000DE524  D0 1F 33 E8 */ stfs f0, 0x33e8(r31)
lbl_800E15E8:
/* 800E15E8 000DE528  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E15EC 000DE52C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E15F0 000DE530  7C 08 03 A6 */ mtlr r0
/* 800E15F4 000DE534  38 21 00 10 */ addi r1, r1, 0x10
/* 800E15F8 000DE538  4E 80 00 20 */ blr