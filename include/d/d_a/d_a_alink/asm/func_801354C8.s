/* 801354C8 00132408  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801354CC 0013240C  7C 08 02 A6 */ mflr r0
/* 801354D0 00132410  90 01 00 14 */ stw r0, 0x14(r1)
/* 801354D4 00132414  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801354D8 00132418  7C 7F 1B 78 */ mr r31, r3
/* 801354DC 0013241C  4B FF FF 7D */ bl daAlink_c_NS_setWolfHangGroundY
/* 801354E0 00132420  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 801354E4 00132424  54 00 06 31 */ rlwinm. r0, r0, 0, 0x18, 0x18
/* 801354E8 00132428  41 82 00 2C */ beq lbl_80135514
/* 801354EC 0013242C  C0 3F 33 B4 */ lfs f1, 0x33b4(r31)
/* 801354F0 00132430  C0 1F 33 D8 */ lfs f0, 0x33d8(r31)
/* 801354F4 00132434  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801354F8 00132438  40 81 00 1C */ ble lbl_80135514
/* 801354FC 0013243C  3C 60 80 39 */ lis r3, lbl_8038F8B4@ha
/* 80135500 00132440  38 63 F8 B4 */ addi r3, r3, lbl_8038F8B4@l
/* 80135504 00132444  C0 23 00 48 */ lfs f1, 0x48(r3)
/* 80135508 00132448  C0 03 00 94 */ lfs f0, 0x94(r3)
/* 8013550C 0013244C  EC 21 00 2A */ fadds f1, f1, f0
/* 80135510 00132450  48 00 00 10 */ b lbl_80135520
lbl_80135514:
/* 80135514 00132454  3C 60 80 39 */ lis r3, lbl_8038F1A0@ha
/* 80135518 00132458  38 63 F1 A0 */ addi r3, r3, lbl_8038F1A0@l
/* 8013551C 0013245C  C0 23 00 88 */ lfs f1, 0x88(r3)
lbl_80135520:
/* 80135520 00132460  C0 5F 04 D4 */ lfs f2, 0x4d4(r31)
/* 80135524 00132464  C0 1F 33 D8 */ lfs f0, 0x33d8(r31)
/* 80135528 00132468  EC 20 08 2A */ fadds f1, f0, f1
/* 8013552C 0013246C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80135530 00132470  EC 01 00 28 */ fsubs f0, f1, f0
/* 80135534 00132474  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 80135538 00132478  40 80 00 10 */ bge lbl_80135548
/* 8013553C 0013247C  7F E3 FB 78 */ mr r3, r31
/* 80135540 00132480  4B FF 9B F9 */ bl daAlink_c_NS_procWolfLandInit
/* 80135544 00132484  48 00 00 94 */ b lbl_801355D8
lbl_80135548:
/* 80135548 00132488  7F E3 FB 78 */ mr r3, r31
/* 8013554C 0013248C  38 80 00 33 */ li r4, 0x33
/* 80135550 00132490  4B F7 DD 01 */ bl setDoStatus__9daAlink_cFUc
/* 80135554 00132494  88 1F 2F 8D */ lbz r0, 0x2f8d(r31)
/* 80135558 00132498  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8013555C 0013249C  41 82 00 78 */ beq lbl_801355D4
/* 80135560 001324A0  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 80135564 001324A4  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 80135568 001324A8  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8013556C 001324AC  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 80135570 001324B0  7C 03 04 2E */ lfsx f0, r3, r0
/* 80135574 001324B4  C0 3F 04 D0 */ lfs f1, 0x4d0(r31)
/* 80135578 001324B8  C0 42 93 00 */ lfs f2, lbl_80452D00-_SDA2_BASE_(r2)
/* 8013557C 001324BC  EC 02 00 32 */ fmuls f0, f2, f0
/* 80135580 001324C0  EC 01 00 28 */ fsubs f0, f1, f0
/* 80135584 001324C4  D0 1F 04 D0 */ stfs f0, 0x4d0(r31)
/* 80135588 001324C8  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 8013558C 001324CC  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 80135590 001324D0  7C 63 02 14 */ add r3, r3, r0
/* 80135594 001324D4  C0 03 00 04 */ lfs f0, 4(r3)
/* 80135598 001324D8  C0 3F 04 D8 */ lfs f1, 0x4d8(r31)
/* 8013559C 001324DC  EC 02 00 32 */ fmuls f0, f2, f0
/* 801355A0 001324E0  EC 01 00 28 */ fsubs f0, f1, f0
/* 801355A4 001324E4  D0 1F 04 D8 */ stfs f0, 0x4d8(r31)
/* 801355A8 001324E8  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 801355AC 001324EC  60 00 02 00 */ ori r0, r0, 0x200
/* 801355B0 001324F0  90 1F 05 78 */ stw r0, 0x578(r31)
/* 801355B4 001324F4  7F E3 FB 78 */ mr r3, r31
/* 801355B8 001324F8  38 80 00 02 */ li r4, 2
/* 801355BC 001324FC  3C A0 80 39 */ lis r5, lbl_8038F1A0@ha
/* 801355C0 00132500  38 A5 F1 A0 */ addi r5, r5, lbl_8038F1A0@l
/* 801355C4 00132504  C0 25 00 98 */ lfs f1, 0x98(r5)
/* 801355C8 00132508  4B FF 98 09 */ bl daAlink_c_NS_procWolfFallInit
/* 801355CC 0013250C  38 60 00 01 */ li r3, 1
/* 801355D0 00132510  48 00 00 08 */ b lbl_801355D8
lbl_801355D4:
/* 801355D4 00132514  38 60 00 00 */ li r3, 0
lbl_801355D8:
/* 801355D8 00132518  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801355DC 0013251C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801355E0 00132520  7C 08 03 A6 */ mtlr r0
/* 801355E4 00132524  38 21 00 10 */ addi r1, r1, 0x10
/* 801355E8 00132528  4E 80 00 20 */ blr
