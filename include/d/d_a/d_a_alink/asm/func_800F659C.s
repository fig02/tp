/* 800F659C 000F34DC  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800F65A0 000F34E0  7C 08 02 A6 */ mflr r0
/* 800F65A4 000F34E4  90 01 00 24 */ stw r0, 0x24(r1)
/* 800F65A8 000F34E8  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800F65AC 000F34EC  93 C1 00 18 */ stw r30, 0x18(r1)
/* 800F65B0 000F34F0  7C 7E 1B 78 */ mr r30, r3
/* 800F65B4 000F34F4  4B FF E2 25 */ bl daAlink_c_NS_canoeCommon
/* 800F65B8 000F34F8  2C 03 00 00 */ cmpwi r3, 0
/* 800F65BC 000F34FC  41 82 00 0C */ beq lbl_800F65C8
/* 800F65C0 000F3500  38 60 00 01 */ li r3, 1
/* 800F65C4 000F3504  48 00 01 E4 */ b lbl_800F67A8
lbl_800F65C8:
/* 800F65C8 000F3508  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 800F65CC 000F350C  28 00 01 05 */ cmplwi r0, 0x105
/* 800F65D0 000F3510  40 82 00 18 */ bne lbl_800F65E8
/* 800F65D4 000F3514  80 1E 28 28 */ lwz r0, 0x2828(r30)
/* 800F65D8 000F3518  28 00 00 00 */ cmplwi r0, 0
/* 800F65DC 000F351C  40 82 00 0C */ bne lbl_800F65E8
/* 800F65E0 000F3520  38 60 00 01 */ li r3, 1
/* 800F65E4 000F3524  48 00 01 C4 */ b lbl_800F67A8
lbl_800F65E8:
/* 800F65E8 000F3528  3B FE 20 48 */ addi r31, r30, 0x2048
/* 800F65EC 000F352C  A8 1E 30 0C */ lha r0, 0x300c(r30)
/* 800F65F0 000F3530  2C 00 00 00 */ cmpwi r0, 0
/* 800F65F4 000F3534  41 82 00 28 */ beq lbl_800F661C
/* 800F65F8 000F3538  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800F65FC 000F353C  54 00 04 21 */ rlwinm. r0, r0, 0, 0x10, 0x10
/* 800F6600 000F3540  41 82 01 A4 */ beq lbl_800F67A4
/* 800F6604 000F3544  38 00 00 00 */ li r0, 0
/* 800F6608 000F3548  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 800F660C 000F354C  7F C3 F3 78 */ mr r3, r30
/* 800F6610 000F3550  38 80 00 68 */ li r4, 0x68
/* 800F6614 000F3554  4B FB 6D 2D */ bl daAlink_c_NS_setUpperAnimeBase
/* 800F6618 000F3558  48 00 01 8C */ b lbl_800F67A4
lbl_800F661C:
/* 800F661C 000F355C  A0 1E 1F BC */ lhz r0, 0x1fbc(r30)
/* 800F6620 000F3560  28 00 00 68 */ cmplwi r0, 0x68
/* 800F6624 000F3564  40 82 00 40 */ bne lbl_800F6664
/* 800F6628 000F3568  7F E3 FB 78 */ mr r3, r31
/* 800F662C 000F356C  48 06 7E A1 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800F6630 000F3570  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800F6634 000F3574  41 82 00 10 */ beq lbl_800F6644
/* 800F6638 000F3578  7F C3 F3 78 */ mr r3, r30
/* 800F663C 000F357C  48 00 01 85 */ bl daAlink_c_NS_procCanoeFishingReelInit
/* 800F6640 000F3580  48 00 01 64 */ b lbl_800F67A4
lbl_800F6644:
/* 800F6644 000F3584  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800F6648 000F3588  C0 02 93 8C */ lfs f0, lbl_80452D8C-_SDA2_BASE_(r2)
/* 800F664C 000F358C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F6650 000F3590  4C 41 13 82 */ cror 2, 1, 2
/* 800F6654 000F3594  40 82 01 50 */ bne lbl_800F67A4
/* 800F6658 000F3598  38 00 00 00 */ li r0, 0
/* 800F665C 000F359C  B0 1E 30 18 */ sth r0, 0x3018(r30)
/* 800F6660 000F35A0  48 00 01 44 */ b lbl_800F67A4
lbl_800F6664:
/* 800F6664 000F35A4  7F C3 F3 78 */ mr r3, r30
/* 800F6668 000F35A8  4B FF E2 BD */ bl daAlink_c_NS_checkNextActionCanoe
/* 800F666C 000F35AC  2C 03 00 00 */ cmpwi r3, 0
/* 800F6670 000F35B0  40 82 01 34 */ bne lbl_800F67A4
/* 800F6674 000F35B4  38 60 00 00 */ li r3, 0
/* 800F6678 000F35B8  A0 1E 1F BC */ lhz r0, 0x1fbc(r30)
/* 800F667C 000F35BC  28 00 00 5D */ cmplwi r0, 0x5d
/* 800F6680 000F35C0  41 82 00 10 */ beq lbl_800F6690
/* 800F6684 000F35C4  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800F6688 000F35C8  28 00 02 60 */ cmplwi r0, 0x260
/* 800F668C 000F35CC  40 82 00 08 */ bne lbl_800F6694
lbl_800F6690:
/* 800F6690 000F35D0  38 60 00 01 */ li r3, 1
lbl_800F6694:
/* 800F6694 000F35D4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800F6698 000F35D8  41 82 01 0C */ beq lbl_800F67A4
/* 800F669C 000F35DC  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 800F66A0 000F35E0  2C 00 00 00 */ cmpwi r0, 0
/* 800F66A4 000F35E4  40 82 00 30 */ bne lbl_800F66D4
/* 800F66A8 000F35E8  38 7E 05 9E */ addi r3, r30, 0x59e
/* 800F66AC 000F35EC  A8 9E 30 0E */ lha r4, 0x300e(r30)
/* 800F66B0 000F35F0  38 A0 00 02 */ li r5, 2
/* 800F66B4 000F35F4  38 C0 08 00 */ li r6, 0x800
/* 800F66B8 000F35F8  38 E0 02 00 */ li r7, 0x200
/* 800F66BC 000F35FC  48 06 92 C1 */ bl daPy_addCalcShort
/* 800F66C0 000F3600  2C 03 00 00 */ cmpwi r3, 0
/* 800F66C4 000F3604  40 82 00 88 */ bne lbl_800F674C
/* 800F66C8 000F3608  38 00 00 01 */ li r0, 1
/* 800F66CC 000F360C  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 800F66D0 000F3610  48 00 00 7C */ b lbl_800F674C
lbl_800F66D4:
/* 800F66D4 000F3614  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 800F66D8 000F3618  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800F66DC 000F361C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F66E0 000F3620  40 81 00 6C */ ble lbl_800F674C
/* 800F66E4 000F3624  A8 1E 2F E0 */ lha r0, 0x2fe0(r30)
/* 800F66E8 000F3628  2C 00 20 00 */ cmpwi r0, 0x2000
/* 800F66EC 000F362C  40 81 00 0C */ ble lbl_800F66F8
/* 800F66F0 000F3630  2C 00 60 00 */ cmpwi r0, 0x6000
/* 800F66F4 000F3634  41 80 00 14 */ blt lbl_800F6708
lbl_800F66F8:
/* 800F66F8 000F3638  2C 00 E0 00 */ cmpwi r0, -8192
/* 800F66FC 000F363C  40 80 00 50 */ bge lbl_800F674C
/* 800F6700 000F3640  2C 00 A0 00 */ cmpwi r0, -24576
/* 800F6704 000F3644  40 81 00 48 */ ble lbl_800F674C
lbl_800F6708:
/* 800F6708 000F3648  2C 00 20 00 */ cmpwi r0, 0x2000
/* 800F670C 000F364C  40 81 00 14 */ ble lbl_800F6720
/* 800F6710 000F3650  2C 00 60 00 */ cmpwi r0, 0x6000
/* 800F6714 000F3654  40 80 00 0C */ bge lbl_800F6720
/* 800F6718 000F3658  38 80 38 00 */ li r4, 0x3800
/* 800F671C 000F365C  48 00 00 08 */ b lbl_800F6724
lbl_800F6720:
/* 800F6720 000F3660  38 80 C8 00 */ li r4, -14336
lbl_800F6724:
/* 800F6724 000F3664  38 7E 05 9E */ addi r3, r30, 0x59e
/* 800F6728 000F3668  38 A0 00 05 */ li r5, 5
/* 800F672C 000F366C  C0 22 95 2C */ lfs f1, lbl_80452F2C-_SDA2_BASE_(r2)
/* 800F6730 000F3670  C0 1E 33 A8 */ lfs f0, 0x33a8(r30)
/* 800F6734 000F3674  EC 01 00 32 */ fmuls f0, f1, f0
/* 800F6738 000F3678  FC 00 00 1E */ fctiwz f0, f0
/* 800F673C 000F367C  D8 01 00 08 */ stfd f0, 8(r1)
/* 800F6740 000F3680  80 C1 00 0C */ lwz r6, 0xc(r1)
/* 800F6744 000F3684  38 E0 00 01 */ li r7, 1
/* 800F6748 000F3688  48 06 92 35 */ bl daPy_addCalcShort
lbl_800F674C:
/* 800F674C 000F368C  C0 62 92 B8 */ lfs f3, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F6750 000F3690  A8 7E 05 9E */ lha r3, 0x59e(r30)
/* 800F6754 000F3694  38 03 40 00 */ addi r0, r3, 0x4000
/* 800F6758 000F3698  C8 42 92 B0 */ lfd f2, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800F675C 000F369C  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800F6760 000F36A0  90 01 00 0C */ stw r0, 0xc(r1)
/* 800F6764 000F36A4  3C 60 43 30 */ lis r3, 0x4330
/* 800F6768 000F36A8  90 61 00 08 */ stw r3, 8(r1)
/* 800F676C 000F36AC  C8 01 00 08 */ lfd f0, 8(r1)
/* 800F6770 000F36B0  EC 20 10 28 */ fsubs f1, f0, f2
/* 800F6774 000F36B4  C0 02 95 28 */ lfs f0, lbl_80452F28-_SDA2_BASE_(r2)
/* 800F6778 000F36B8  EC 01 00 24 */ fdivs f0, f1, f0
/* 800F677C 000F36BC  EC 23 00 28 */ fsubs f1, f3, f0
/* 800F6780 000F36C0  A8 1E 1F D8 */ lha r0, 0x1fd8(r30)
/* 800F6784 000F36C4  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800F6788 000F36C8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F678C 000F36CC  90 61 00 10 */ stw r3, 0x10(r1)
/* 800F6790 000F36D0  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 800F6794 000F36D4  EC 00 10 28 */ fsubs f0, f0, f2
/* 800F6798 000F36D8  EC 01 00 32 */ fmuls f0, f1, f0
/* 800F679C 000F36DC  D0 1E 1F E0 */ stfs f0, 0x1fe0(r30)
/* 800F67A0 000F36E0  D0 1F 00 10 */ stfs f0, 0x10(r31)
lbl_800F67A4:
/* 800F67A4 000F36E4  38 60 00 01 */ li r3, 1
lbl_800F67A8:
/* 800F67A8 000F36E8  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800F67AC 000F36EC  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 800F67B0 000F36F0  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800F67B4 000F36F4  7C 08 03 A6 */ mtlr r0
/* 800F67B8 000F36F8  38 21 00 20 */ addi r1, r1, 0x20
/* 800F67BC 000F36FC  4E 80 00 20 */ blr