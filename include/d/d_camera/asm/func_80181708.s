/* 80181708 0017E648  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8018170C 0017E64C  7C 08 02 A6 */ mflr r0
/* 80181710 0017E650  90 01 00 24 */ stw r0, 0x24(r1)
/* 80181714 0017E654  39 61 00 20 */ addi r11, r1, 0x20
/* 80181718 0017E658  48 1E 0A C5 */ bl _savegpr_29
/* 8018171C 0017E65C  7C 7D 1B 78 */ mr r29, r3
/* 80181720 0017E660  4B E9 CB E9 */ bl fopCamM_GetParam
/* 80181724 0017E664  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 80181728 0017E668  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 8018172C 0017E66C  1C 03 00 38 */ mulli r0, r3, 0x38
/* 80181730 0017E670  7C 64 02 14 */ add r3, r4, r0
/* 80181734 0017E674  88 03 5D 78 */ lbz r0, 0x5d78(r3)
/* 80181738 0017E678  7C 00 07 74 */ extsb r0, r0
/* 8018173C 0017E67C  3B C4 0F 38 */ addi r30, r4, 0xf38
/* 80181740 0017E680  1C 60 00 2C */ mulli r3, r0, 0x2c
/* 80181744 0017E684  3B E3 4E 10 */ addi r31, r3, 0x4e10
/* 80181748 0017E688  7F FE FA 14 */ add r31, r30, r31
/* 8018174C 0017E68C  38 7D 01 40 */ addi r3, r29, 0x140
/* 80181750 0017E690  38 9D 00 D8 */ addi r4, r29, 0xd8
/* 80181754 0017E694  38 BD 00 E4 */ addi r5, r29, 0xe4
/* 80181758 0017E698  38 DD 00 F0 */ addi r6, r29, 0xf0
/* 8018175C 0017E69C  A8 FD 00 FC */ lha r7, 0xfc(r29)
/* 80181760 0017E6A0  4B E8 AF B1 */ bl mDoMtx_lookAt_X1_
/* 80181764 0017E6A4  38 7D 01 40 */ addi r3, r29, 0x140
/* 80181768 0017E6A8  38 9D 01 E0 */ addi r4, r29, 0x1e0
/* 8018176C 0017E6AC  48 1C 4D 45 */ bl PSMTXCopy
/* 80181770 0017E6B0  C0 02 9C A0 */ lfs f0, lbl_804536A0-_SDA2_BASE_(r2)
/* 80181774 0017E6B4  D0 1D 01 EC */ stfs f0, 0x1ec(r29)
/* 80181778 0017E6B8  D0 1D 01 FC */ stfs f0, 0x1fc(r29)
/* 8018177C 0017E6BC  D0 1D 02 0C */ stfs f0, 0x20c(r29)
/* 80181780 0017E6C0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80181784 0017E6C4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80181788 0017E6C8  93 E3 61 A8 */ stw r31, 0x61a8(r3)
/* 8018178C 0017E6CC  93 E3 61 AC */ stw r31, 0x61ac(r3)
/* 80181790 0017E6D0  93 A3 61 B0 */ stw r29, 0x61b0(r3)
/* 80181794 0017E6D4  80 03 5D 7C */ lwz r0, 0x5d7c(r3)
/* 80181798 0017E6D8  54 00 07 39 */ rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8018179C 0017E6DC  41 82 00 0C */ beq lbl_801817A8
/* 801817A0 0017E6E0  C0 9D 00 CC */ lfs f4, 0xcc(r29)
/* 801817A4 0017E6E4  48 00 00 38 */ b lbl_801817DC
lbl_801817A8:
/* 801817A8 0017E6E8  38 7E 3E E8 */ addi r3, r30, 0x3ee8
/* 801817AC 0017E6EC  81 9E 3E E8 */ lwz r12, 0x3ee8(r30)
/* 801817B0 0017E6F0  81 8C 00 BC */ lwz r12, 0xbc(r12)
/* 801817B4 0017E6F4  7D 89 03 A6 */ mtctr r12
/* 801817B8 0017E6F8  4E 80 04 21 */ bctrl
/* 801817BC 0017E6FC  80 03 00 10 */ lwz r0, 0x10(r3)
/* 801817C0 0017E700  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 801817C4 0017E704  C8 22 9D 60 */ lfd f1, lbl_80453760-_SDA2_BASE_(r2)
/* 801817C8 0017E708  90 01 00 0C */ stw r0, 0xc(r1)
/* 801817CC 0017E70C  3C 00 43 30 */ lis r0, 0x4330
/* 801817D0 0017E710  90 01 00 08 */ stw r0, 8(r1)
/* 801817D4 0017E714  C8 01 00 08 */ lfd f0, 8(r1)
/* 801817D8 0017E718  EC 80 08 28 */ fsubs f4, f0, f1
lbl_801817DC:
/* 801817DC 0017E71C  C0 3D 00 D0 */ lfs f1, 0xd0(r29)
/* 801817E0 0017E720  C0 5D 00 D4 */ lfs f2, 0xd4(r29)
/* 801817E4 0017E724  C0 7D 00 C8 */ lfs f3, 0xc8(r29)
/* 801817E8 0017E728  4B E9 3A A5 */ bl mDoLib_clipper_NS_setup
/* 801817EC 0017E72C  39 61 00 20 */ addi r11, r1, 0x20
/* 801817F0 0017E730  48 1E 0A 39 */ bl _restgpr_29
/* 801817F4 0017E734  80 01 00 24 */ lwz r0, 0x24(r1)
/* 801817F8 0017E738  7C 08 03 A6 */ mtlr r0
/* 801817FC 0017E73C  38 21 00 20 */ addi r1, r1, 0x20
/* 80181800 0017E740  4E 80 00 20 */ blr