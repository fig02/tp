/* 8000E6C8 0000B608  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8000E6CC 0000B60C  7C 08 02 A6 */ mflr r0
/* 8000E6D0 0000B610  90 01 00 44 */ stw r0, 0x44(r1)
/* 8000E6D4 0000B614  39 61 00 40 */ addi r11, r1, 0x40
/* 8000E6D8 0000B618  48 35 3A F5 */ bl _savegpr_25
/* 8000E6DC 0000B61C  7C 79 1B 78 */ mr r25, r3
/* 8000E6E0 0000B620  7C 9A 23 79 */ or. r26, r4, r4
/* 8000E6E4 0000B624  80 63 00 00 */ lwz r3, 0(r3)
/* 8000E6E8 0000B628  83 A3 00 04 */ lwz r29, 4(r3)
/* 8000E6EC 0000B62C  83 F9 00 04 */ lwz r31, 4(r25)
/* 8000E6F0 0000B630  40 82 00 78 */ bne lbl_8000E768
/* 8000E6F4 0000B634  3B 60 00 00 */ li r27, 0
/* 8000E6F8 0000B638  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8000E6FC 0000B63C  3B C3 61 C0 */ addi r30, r3, g_dComIfG_gameInfo@l
/* 8000E700 0000B640  3B 9E 5F 64 */ addi r28, r30, 0x5f64
/* 8000E704 0000B644  48 00 00 50 */ b lbl_8000E754
lbl_8000E708:
/* 8000E708 0000B648  80 79 00 00 */ lwz r3, 0(r25)
/* 8000E70C 0000B64C  80 63 00 84 */ lwz r3, 0x84(r3)
/* 8000E710 0000B650  80 63 00 0C */ lwz r3, 0xc(r3)
/* 8000E714 0000B654  57 60 04 3E */ clrlwi r0, r27, 0x10
/* 8000E718 0000B658  1C 00 00 30 */ mulli r0, r0, 0x30
/* 8000E71C 0000B65C  7C 63 02 14 */ add r3, r3, r0
/* 8000E720 0000B660  C0 43 00 2C */ lfs f2, 0x2c(r3)
/* 8000E724 0000B664  C0 23 00 1C */ lfs f1, 0x1c(r3)
/* 8000E728 0000B668  C0 03 00 0C */ lfs f0, 0xc(r3)
/* 8000E72C 0000B66C  D0 01 00 08 */ stfs f0, 8(r1)
/* 8000E730 0000B670  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 8000E734 0000B674  D0 41 00 10 */ stfs f2, 0x10(r1)
/* 8000E738 0000B678  7F 83 E3 78 */ mr r3, r28
/* 8000E73C 0000B67C  80 9E 5F A8 */ lwz r4, 0x5fa8(r30)
/* 8000E740 0000B680  7F E5 FB 78 */ mr r5, r31
/* 8000E744 0000B684  38 C1 00 08 */ addi r6, r1, 8
/* 8000E748 0000B688  48 04 7E A5 */ bl dDlst_list_c_NS_entryZSortXluDrawList
/* 8000E74C 0000B68C  3B FF 00 18 */ addi r31, r31, 0x18
/* 8000E750 0000B690  3B 7B 00 01 */ addi r27, r27, 1
lbl_8000E754:
/* 8000E754 0000B694  57 63 04 3E */ clrlwi r3, r27, 0x10
/* 8000E758 0000B698  A0 1D 00 2C */ lhz r0, 0x2c(r29)
/* 8000E75C 0000B69C  7C 03 00 40 */ cmplw r3, r0
/* 8000E760 0000B6A0  41 80 FF A8 */ blt lbl_8000E708
/* 8000E764 0000B6A4  48 00 00 44 */ b lbl_8000E7A8
lbl_8000E768:
/* 8000E768 0000B6A8  3B 60 00 00 */ li r27, 0
/* 8000E76C 0000B6AC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8000E770 0000B6B0  3B C3 61 C0 */ addi r30, r3, g_dComIfG_gameInfo@l
/* 8000E774 0000B6B4  3B 9E 5F 64 */ addi r28, r30, 0x5f64
/* 8000E778 0000B6B8  48 00 00 20 */ b lbl_8000E798
lbl_8000E77C:
/* 8000E77C 0000B6BC  7F 83 E3 78 */ mr r3, r28
/* 8000E780 0000B6C0  80 9E 5F A8 */ lwz r4, 0x5fa8(r30)
/* 8000E784 0000B6C4  7F E5 FB 78 */ mr r5, r31
/* 8000E788 0000B6C8  7F 46 D3 78 */ mr r6, r26
/* 8000E78C 0000B6CC  48 04 7E 61 */ bl dDlst_list_c_NS_entryZSortXluDrawList
/* 8000E790 0000B6D0  3B FF 00 18 */ addi r31, r31, 0x18
/* 8000E794 0000B6D4  3B 7B 00 01 */ addi r27, r27, 1
lbl_8000E798:
/* 8000E798 0000B6D8  57 63 04 3E */ clrlwi r3, r27, 0x10
/* 8000E79C 0000B6DC  A0 1D 00 2C */ lhz r0, 0x2c(r29)
/* 8000E7A0 0000B6E0  7C 03 00 40 */ cmplw r3, r0
/* 8000E7A4 0000B6E4  41 80 FF D8 */ blt lbl_8000E77C
lbl_8000E7A8:
/* 8000E7A8 0000B6E8  39 61 00 40 */ addi r11, r1, 0x40
/* 8000E7AC 0000B6EC  48 35 3A 6D */ bl _restgpr_25
/* 8000E7B0 0000B6F0  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8000E7B4 0000B6F4  7C 08 03 A6 */ mtlr r0
/* 8000E7B8 0000B6F8  38 21 00 40 */ addi r1, r1, 0x40
/* 8000E7BC 0000B6FC  4E 80 00 20 */ blr