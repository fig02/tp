/* 800F1688 000EE5C8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F168C 000EE5CC  7C 08 02 A6 */ mflr r0
/* 800F1690 000EE5D0  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F1694 000EE5D4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F1698 000EE5D8  93 C1 00 08 */ stw r30, 8(r1)
/* 800F169C 000EE5DC  7C 7F 1B 78 */ mr r31, r3
/* 800F16A0 000EE5E0  3B DF 20 48 */ addi r30, r31, 0x2048
/* 800F16A4 000EE5E4  38 80 00 01 */ li r4, 1
/* 800F16A8 000EE5E8  4B FF D2 71 */ bl daAlink_c_NS_setSyncRide
/* 800F16AC 000EE5EC  2C 03 00 00 */ cmpwi r3, 0
/* 800F16B0 000EE5F0  40 82 00 0C */ bne lbl_800F16BC
/* 800F16B4 000EE5F4  38 60 00 01 */ li r3, 1
/* 800F16B8 000EE5F8  48 00 01 C4 */ b lbl_800F187C
lbl_800F16BC:
/* 800F16BC 000EE5FC  7F E3 FB 78 */ mr r3, r31
/* 800F16C0 000EE600  4B FE 0A 3D */ bl daAlink_c_NS_setComboReserb
/* 800F16C4 000EE604  7F E3 FB 78 */ mr r3, r31
/* 800F16C8 000EE608  4B FE 0F BD */ bl daAlink_c_NS_checkCutTurnCharge_X1_
/* 800F16CC 000EE60C  7F C3 F3 78 */ mr r3, r30
/* 800F16D0 000EE610  48 06 CD FD */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800F16D4 000EE614  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800F16D8 000EE618  41 82 00 4C */ beq lbl_800F1724
/* 800F16DC 000EE61C  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800F16E0 000EE620  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800F16E4 000EE624  41 82 00 10 */ beq lbl_800F16F4
/* 800F16E8 000EE628  7F E3 FB 78 */ mr r3, r31
/* 800F16EC 000EE62C  4B FE 0C D5 */ bl daAlink_c_NS_checkCutAction
/* 800F16F0 000EE630  48 00 01 88 */ b lbl_800F1878
lbl_800F16F4:
/* 800F16F4 000EE634  7F E3 FB 78 */ mr r3, r31
/* 800F16F8 000EE638  38 80 00 02 */ li r4, 2
/* 800F16FC 000EE63C  C0 22 93 24 */ lfs f1, lbl_80452D24-_SDA2_BASE_(r2)
/* 800F1700 000EE640  4B FB C0 25 */ bl daAlink_c_NS_resetUpperAnime
/* 800F1704 000EE644  7F E3 FB 78 */ mr r3, r31
/* 800F1708 000EE648  4B FF F2 79 */ bl daAlink_c_NS_procHorseWaitInit
/* 800F170C 000EE64C  80 7F 20 60 */ lwz r3, 0x2060(r31)
/* 800F1710 000EE650  C0 3F 34 80 */ lfs f1, 0x3480(r31)
/* 800F1714 000EE654  38 80 00 00 */ li r4, 0
/* 800F1718 000EE658  38 A0 00 23 */ li r5, 0x23
/* 800F171C 000EE65C  4B F1 E1 2D */ bl mDoExt_MtxCalcOldFrame_NS_initOldFrameMorf
/* 800F1720 000EE660  48 00 01 58 */ b lbl_800F1878
lbl_800F1724:
/* 800F1724 000EE664  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 800F1728 000EE668  C0 1F 34 84 */ lfs f0, 0x3484(r31)
/* 800F172C 000EE66C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F1730 000EE670  40 81 00 B4 */ ble lbl_800F17E4
/* 800F1734 000EE674  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800F1738 000EE678  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800F173C 000EE67C  40 82 00 20 */ bne lbl_800F175C
/* 800F1740 000EE680  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 800F1744 000EE684  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 800F1748 000EE688  40 82 00 14 */ bne lbl_800F175C
/* 800F174C 000EE68C  7F E3 FB 78 */ mr r3, r31
/* 800F1750 000EE690  4B FC 0F 15 */ bl spActionButton__9daAlink_cFv
/* 800F1754 000EE694  2C 03 00 00 */ cmpwi r3, 0
/* 800F1758 000EE698  41 82 00 8C */ beq lbl_800F17E4
lbl_800F175C:
/* 800F175C 000EE69C  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 800F1760 000EE6A0  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 800F1764 000EE6A4  41 82 00 10 */ beq lbl_800F1774
/* 800F1768 000EE6A8  7F E3 FB 78 */ mr r3, r31
/* 800F176C 000EE6AC  48 00 01 29 */ bl daAlink_c_NS_procHorseCutChargeReadyInit
/* 800F1770 000EE6B0  48 00 01 08 */ b lbl_800F1878
lbl_800F1774:
/* 800F1774 000EE6B4  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800F1778 000EE6B8  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800F177C 000EE6BC  41 82 00 10 */ beq lbl_800F178C
/* 800F1780 000EE6C0  7F E3 FB 78 */ mr r3, r31
/* 800F1784 000EE6C4  4B FE 0C 3D */ bl daAlink_c_NS_checkCutAction
/* 800F1788 000EE6C8  48 00 00 F0 */ b lbl_800F1878
lbl_800F178C:
/* 800F178C 000EE6CC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800F1790 000EE6D0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800F1794 000EE6D4  88 03 00 15 */ lbz r0, 0x15(r3)
/* 800F1798 000EE6D8  28 00 00 FF */ cmplwi r0, 0xff
/* 800F179C 000EE6DC  41 82 00 14 */ beq lbl_800F17B0
/* 800F17A0 000EE6E0  7F E3 FB 78 */ mr r3, r31
/* 800F17A4 000EE6E4  38 80 00 0B */ li r4, 0xb
/* 800F17A8 000EE6E8  4B FC 1A 79 */ bl setRStatus__9daAlink_cFUc
/* 800F17AC 000EE6EC  48 00 00 10 */ b lbl_800F17BC
lbl_800F17B0:
/* 800F17B0 000EE6F0  7F E3 FB 78 */ mr r3, r31
/* 800F17B4 000EE6F4  38 80 00 3E */ li r4, 0x3e
/* 800F17B8 000EE6F8  4B FC 1A 69 */ bl setRStatus__9daAlink_cFUc
lbl_800F17BC:
/* 800F17BC 000EE6FC  7F E3 FB 78 */ mr r3, r31
/* 800F17C0 000EE700  38 80 00 02 */ li r4, 2
/* 800F17C4 000EE704  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800F17C8 000EE708  4B FB BF 5D */ bl daAlink_c_NS_resetUpperAnime
/* 800F17CC 000EE70C  7F E3 FB 78 */ mr r3, r31
/* 800F17D0 000EE710  38 80 00 55 */ li r4, 0x55
/* 800F17D4 000EE714  4B FB B7 AD */ bl daAlink_c_NS_setSingleAnimeBase
/* 800F17D8 000EE718  7F E3 FB 78 */ mr r3, r31
/* 800F17DC 000EE71C  4B FF F1 A5 */ bl daAlink_c_NS_procHorseWaitInit
/* 800F17E0 000EE720  48 00 00 98 */ b lbl_800F1878
lbl_800F17E4:
/* 800F17E4 000EE724  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 800F17E8 000EE728  C0 1F 34 84 */ lfs f0, 0x3484(r31)
/* 800F17EC 000EE72C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F17F0 000EE730  40 81 00 40 */ ble lbl_800F1830
/* 800F17F4 000EE734  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800F17F8 000EE738  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800F17FC 000EE73C  88 03 00 15 */ lbz r0, 0x15(r3)
/* 800F1800 000EE740  28 00 00 FF */ cmplwi r0, 0xff
/* 800F1804 000EE744  41 82 00 14 */ beq lbl_800F1818
/* 800F1808 000EE748  7F E3 FB 78 */ mr r3, r31
/* 800F180C 000EE74C  38 80 00 0B */ li r4, 0xb
/* 800F1810 000EE750  4B FC 1A 11 */ bl setRStatus__9daAlink_cFUc
/* 800F1814 000EE754  48 00 00 10 */ b lbl_800F1824
lbl_800F1818:
/* 800F1818 000EE758  7F E3 FB 78 */ mr r3, r31
/* 800F181C 000EE75C  38 80 00 3E */ li r4, 0x3e
/* 800F1820 000EE760  4B FC 1A 01 */ bl setRStatus__9daAlink_cFUc
lbl_800F1824:
/* 800F1824 000EE764  7F E3 FB 78 */ mr r3, r31
/* 800F1828 000EE768  38 80 00 01 */ li r4, 1
/* 800F182C 000EE76C  4B FD FC 05 */ bl daAlink_c_NS_resetCombo
lbl_800F1830:
/* 800F1830 000EE770  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 800F1834 000EE774  C0 1F 34 78 */ lfs f0, 0x3478(r31)
/* 800F1838 000EE778  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F183C 000EE77C  4C 41 13 82 */ cror 2, 1, 2
/* 800F1840 000EE780  40 82 00 38 */ bne lbl_800F1878
/* 800F1844 000EE784  C0 1F 34 7C */ lfs f0, 0x347c(r31)
/* 800F1848 000EE788  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F184C 000EE78C  40 80 00 2C */ bge lbl_800F1878
/* 800F1850 000EE790  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 800F1854 000EE794  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 800F1858 000EE798  40 82 00 14 */ bne lbl_800F186C
/* 800F185C 000EE79C  7F E3 FB 78 */ mr r3, r31
/* 800F1860 000EE7A0  3C 80 00 02 */ lis r4, 0x00020002@ha
/* 800F1864 000EE7A4  38 84 00 02 */ addi r4, r4, 0x00020002@l
/* 800F1868 000EE7A8  4B FC D8 85 */ bl daAlink_c_NS_seStartSwordCut
lbl_800F186C:
/* 800F186C 000EE7AC  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 800F1870 000EE7B0  60 00 00 02 */ ori r0, r0, 2
/* 800F1874 000EE7B4  90 1F 05 80 */ stw r0, 0x580(r31)
lbl_800F1878:
/* 800F1878 000EE7B8  38 60 00 01 */ li r3, 1
lbl_800F187C:
/* 800F187C 000EE7BC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F1880 000EE7C0  83 C1 00 08 */ lwz r30, 8(r1)
/* 800F1884 000EE7C4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F1888 000EE7C8  7C 08 03 A6 */ mtlr r0
/* 800F188C 000EE7CC  38 21 00 10 */ addi r1, r1, 0x10
/* 800F1890 000EE7D0  4E 80 00 20 */ blr
