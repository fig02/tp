/* 80180B40 0017DA80  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80180B44 0017DA84  7C 08 02 A6 */ mflr r0
/* 80180B48 0017DA88  90 01 00 14 */ stw r0, 0x14(r1)
/* 80180B4C 0017DA8C  C0 04 00 00 */ lfs f0, 0(r4)
/* 80180B50 0017DA90  D0 03 00 30 */ stfs f0, 0x30(r3)
/* 80180B54 0017DA94  C0 04 00 04 */ lfs f0, 4(r4)
/* 80180B58 0017DA98  D0 03 00 34 */ stfs f0, 0x34(r3)
/* 80180B5C 0017DA9C  C0 04 00 08 */ lfs f0, 8(r4)
/* 80180B60 0017DAA0  D0 03 00 38 */ stfs f0, 0x38(r3)
/* 80180B64 0017DAA4  C0 05 00 00 */ lfs f0, 0(r5)
/* 80180B68 0017DAA8  D0 03 00 3C */ stfs f0, 0x3c(r3)
/* 80180B6C 0017DAAC  C0 05 00 04 */ lfs f0, 4(r5)
/* 80180B70 0017DAB0  D0 03 00 40 */ stfs f0, 0x40(r3)
/* 80180B74 0017DAB4  C0 05 00 08 */ lfs f0, 8(r5)
/* 80180B78 0017DAB8  D0 03 00 44 */ stfs f0, 0x44(r3)
/* 80180B7C 0017DABC  D0 23 00 58 */ stfs f1, 0x58(r3)
/* 80180B80 0017DAC0  7C C4 33 78 */ mr r4, r6
/* 80180B84 0017DAC4  38 63 00 54 */ addi r3, r3, 0x54
/* 80180B88 0017DAC8  48 0F 04 7D */ bl Val__7cSAngleFs
/* 80180B8C 0017DACC  38 60 00 01 */ li r3, 1
/* 80180B90 0017DAD0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80180B94 0017DAD4  7C 08 03 A6 */ mtlr r0
/* 80180B98 0017DAD8  38 21 00 10 */ addi r1, r1, 0x10
/* 80180B9C 0017DADC  4E 80 00 20 */ blr