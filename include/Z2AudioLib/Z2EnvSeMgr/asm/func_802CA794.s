/* 802CA794 002C76D4  94 21 FF 80 */ stwu r1, -0x80(r1)
/* 802CA798 002C76D8  7C 08 02 A6 */ mflr r0
/* 802CA79C 002C76DC  90 01 00 84 */ stw r0, 0x84(r1)
/* 802CA7A0 002C76E0  DB E1 00 70 */ stfd f31, 0x70(r1)
/* 802CA7A4 002C76E4  F3 E1 00 78 */ psq_st f31, 120(r1), 0, 0
/* 802CA7A8 002C76E8  DB C1 00 60 */ stfd f30, 0x60(r1)
/* 802CA7AC 002C76EC  F3 C1 00 68 */ psq_st f30, 104(r1), 0, 0
/* 802CA7B0 002C76F0  DB A1 00 50 */ stfd f29, 0x50(r1)
/* 802CA7B4 002C76F4  F3 A1 00 58 */ psq_st f29, 88(r1), 0, 0
/* 802CA7B8 002C76F8  93 E1 00 4C */ stw r31, 0x4c(r1)
/* 802CA7BC 002C76FC  93 C1 00 48 */ stw r30, 0x48(r1)
/* 802CA7C0 002C7700  7C 7E 1B 78 */ mr r30, r3
/* 802CA7C4 002C7704  7C 9F 23 78 */ mr r31, r4
/* 802CA7C8 002C7708  80 6D 86 00 */ lwz r3, lbl_80450B80-_SDA_BASE_(r13)
/* 802CA7CC 002C770C  80 03 00 04 */ lwz r0, 4(r3)
/* 802CA7D0 002C7710  2C 00 00 2E */ cmpwi r0, 0x2e
/* 802CA7D4 002C7714  40 82 00 18 */ bne lbl_802CA7EC
/* 802CA7D8 002C7718  7F E0 07 75 */ extsb. r0, r31
/* 802CA7DC 002C771C  41 80 00 0C */ blt lbl_802CA7E8
/* 802CA7E0 002C7720  9B FE 01 40 */ stb r31, 0x140(r30)
/* 802CA7E4 002C7724  48 00 02 AC */ b lbl_802CAA90
lbl_802CA7E8:
/* 802CA7E8 002C7728  8B FE 01 40 */ lbz r31, 0x140(r30)
lbl_802CA7EC:
/* 802CA7EC 002C772C  38 00 FF FF */ li r0, -1
/* 802CA7F0 002C7730  90 01 00 30 */ stw r0, 0x30(r1)
/* 802CA7F4 002C7734  7F E0 07 74 */ extsb r0, r31
/* 802CA7F8 002C7738  C8 22 C4 20 */ lfd f1, lbl_80455E20-_SDA2_BASE_(r2)
/* 802CA7FC 002C773C  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 802CA800 002C7740  90 01 00 3C */ stw r0, 0x3c(r1)
/* 802CA804 002C7744  3C 00 43 30 */ lis r0, 0x4330
/* 802CA808 002C7748  90 01 00 38 */ stw r0, 0x38(r1)
/* 802CA80C 002C774C  C8 01 00 38 */ lfd f0, 0x38(r1)
/* 802CA810 002C7750  EC 20 08 28 */ fsubs f1, f0, f1
/* 802CA814 002C7754  C0 02 C3 F4 */ lfs f0, lbl_80455DF4-_SDA2_BASE_(r2)
/* 802CA818 002C7758  EF E1 00 24 */ fdivs f31, f1, f0
/* 802CA81C 002C775C  88 1E 02 3C */ lbz r0, 0x23c(r30)
/* 802CA820 002C7760  7C 00 07 75 */ extsb. r0, r0
/* 802CA824 002C7764  41 80 00 B4 */ blt lbl_802CA8D8
/* 802CA828 002C7768  88 1E 02 48 */ lbz r0, 0x248(r30)
/* 802CA82C 002C776C  28 00 00 73 */ cmplwi r0, 0x73
/* 802CA830 002C7770  40 82 00 18 */ bne lbl_802CA848
/* 802CA834 002C7774  3C 60 00 09 */ lis r3, 0x00090036@ha
/* 802CA838 002C7778  38 03 00 36 */ addi r0, r3, 0x00090036@l
/* 802CA83C 002C777C  90 01 00 2C */ stw r0, 0x2c(r1)
/* 802CA840 002C7780  90 01 00 30 */ stw r0, 0x30(r1)
/* 802CA844 002C7784  48 00 00 1C */ b lbl_802CA860
lbl_802CA848:
/* 802CA848 002C7788  28 00 00 6E */ cmplwi r0, 0x6e
/* 802CA84C 002C778C  40 82 00 14 */ bne lbl_802CA860
/* 802CA850 002C7790  3C 60 00 09 */ lis r3, 0x00090017@ha
/* 802CA854 002C7794  38 03 00 17 */ addi r0, r3, 0x00090017@l
/* 802CA858 002C7798  90 01 00 28 */ stw r0, 0x28(r1)
/* 802CA85C 002C779C  90 01 00 30 */ stw r0, 0x30(r1)
lbl_802CA860:
/* 802CA860 002C77A0  C0 1E 02 28 */ lfs f0, 0x228(r30)
/* 802CA864 002C77A4  C0 22 C3 44 */ lfs f1, lbl_80455D44-_SDA2_BASE_(r2)
/* 802CA868 002C77A8  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 802CA86C 002C77AC  40 81 00 08 */ ble lbl_802CA874
/* 802CA870 002C77B0  48 00 00 18 */ b lbl_802CA888
lbl_802CA874:
/* 802CA874 002C77B4  C0 22 C3 48 */ lfs f1, lbl_80455D48-_SDA2_BASE_(r2)
/* 802CA878 002C77B8  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 802CA87C 002C77BC  40 80 00 08 */ bge lbl_802CA884
/* 802CA880 002C77C0  48 00 00 08 */ b lbl_802CA888
lbl_802CA884:
/* 802CA884 002C77C4  FC 20 00 90 */ fmr f1, f0
lbl_802CA888:
/* 802CA888 002C77C8  C0 1E 02 4C */ lfs f0, 0x24c(r30)
/* 802CA88C 002C77CC  EF A0 00 72 */ fmuls f29, f0, f1
/* 802CA890 002C77D0  38 7E 02 24 */ addi r3, r30, 0x224
/* 802CA894 002C77D4  4B FE 44 4D */ bl getPanPower__12Z2MultiSeMgrFv
/* 802CA898 002C77D8  FF C0 08 90 */ fmr f30, f1
/* 802CA89C 002C77DC  38 7E 02 24 */ addi r3, r30, 0x224
/* 802CA8A0 002C77E0  4B FE 45 21 */ bl getDolbyPower__12Z2MultiSeMgrFv
/* 802CA8A4 002C77E4  FC 80 08 90 */ fmr f4, f1
/* 802CA8A8 002C77E8  80 01 00 30 */ lwz r0, 0x30(r1)
/* 802CA8AC 002C77EC  90 01 00 24 */ stw r0, 0x24(r1)
/* 802CA8B0 002C77F0  38 7E 02 40 */ addi r3, r30, 0x240
/* 802CA8B4 002C77F4  38 81 00 24 */ addi r4, r1, 0x24
/* 802CA8B8 002C77F8  FC 20 F8 90 */ fmr f1, f31
/* 802CA8BC 002C77FC  FC 40 E8 90 */ fmr f2, f29
/* 802CA8C0 002C7800  FC 60 F0 90 */ fmr f3, f30
/* 802CA8C4 002C7804  C0 BE 02 50 */ lfs f5, 0x250(r30)
/* 802CA8C8 002C7808  38 A0 00 00 */ li r5, 0
/* 802CA8CC 002C780C  4B FF B1 E9 */ bl Z2EnvSeBase_NS_startEnvSeLevel
/* 802CA8D0 002C7810  38 7E 02 24 */ addi r3, r30, 0x224
/* 802CA8D4 002C7814  4B FE 43 E9 */ bl resetMultiSePos__12Z2MultiSeMgrFv
lbl_802CA8D8:
/* 802CA8D8 002C7818  88 1E 02 70 */ lbz r0, 0x270(r30)
/* 802CA8DC 002C781C  7C 00 07 75 */ extsb. r0, r0
/* 802CA8E0 002C7820  41 80 00 B4 */ blt lbl_802CA994
/* 802CA8E4 002C7824  88 1E 02 7C */ lbz r0, 0x27c(r30)
/* 802CA8E8 002C7828  28 00 00 74 */ cmplwi r0, 0x74
/* 802CA8EC 002C782C  40 82 00 18 */ bne lbl_802CA904
/* 802CA8F0 002C7830  3C 60 00 09 */ lis r3, 0x00090036@ha
/* 802CA8F4 002C7834  38 03 00 36 */ addi r0, r3, 0x00090036@l
/* 802CA8F8 002C7838  90 01 00 20 */ stw r0, 0x20(r1)
/* 802CA8FC 002C783C  90 01 00 30 */ stw r0, 0x30(r1)
/* 802CA900 002C7840  48 00 00 1C */ b lbl_802CA91C
lbl_802CA904:
/* 802CA904 002C7844  28 00 00 6F */ cmplwi r0, 0x6f
/* 802CA908 002C7848  40 82 00 14 */ bne lbl_802CA91C
/* 802CA90C 002C784C  3C 60 00 09 */ lis r3, 0x00090017@ha
/* 802CA910 002C7850  38 03 00 17 */ addi r0, r3, 0x00090017@l
/* 802CA914 002C7854  90 01 00 1C */ stw r0, 0x1c(r1)
/* 802CA918 002C7858  90 01 00 30 */ stw r0, 0x30(r1)
lbl_802CA91C:
/* 802CA91C 002C785C  C0 1E 02 5C */ lfs f0, 0x25c(r30)
/* 802CA920 002C7860  C0 22 C3 44 */ lfs f1, lbl_80455D44-_SDA2_BASE_(r2)
/* 802CA924 002C7864  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 802CA928 002C7868  40 81 00 08 */ ble lbl_802CA930
/* 802CA92C 002C786C  48 00 00 18 */ b lbl_802CA944
lbl_802CA930:
/* 802CA930 002C7870  C0 22 C3 48 */ lfs f1, lbl_80455D48-_SDA2_BASE_(r2)
/* 802CA934 002C7874  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 802CA938 002C7878  40 80 00 08 */ bge lbl_802CA940
/* 802CA93C 002C787C  48 00 00 08 */ b lbl_802CA944
lbl_802CA940:
/* 802CA940 002C7880  FC 20 00 90 */ fmr f1, f0
lbl_802CA944:
/* 802CA944 002C7884  C0 1E 02 80 */ lfs f0, 0x280(r30)
/* 802CA948 002C7888  EF C0 00 72 */ fmuls f30, f0, f1
/* 802CA94C 002C788C  38 7E 02 58 */ addi r3, r30, 0x258
/* 802CA950 002C7890  4B FE 43 91 */ bl getPanPower__12Z2MultiSeMgrFv
/* 802CA954 002C7894  FF A0 08 90 */ fmr f29, f1
/* 802CA958 002C7898  38 7E 02 58 */ addi r3, r30, 0x258
/* 802CA95C 002C789C  4B FE 44 65 */ bl getDolbyPower__12Z2MultiSeMgrFv
/* 802CA960 002C78A0  FC 80 08 90 */ fmr f4, f1
/* 802CA964 002C78A4  80 01 00 30 */ lwz r0, 0x30(r1)
/* 802CA968 002C78A8  90 01 00 18 */ stw r0, 0x18(r1)
/* 802CA96C 002C78AC  38 7E 02 74 */ addi r3, r30, 0x274
/* 802CA970 002C78B0  38 81 00 18 */ addi r4, r1, 0x18
/* 802CA974 002C78B4  FC 20 F8 90 */ fmr f1, f31
/* 802CA978 002C78B8  FC 40 F0 90 */ fmr f2, f30
/* 802CA97C 002C78BC  FC 60 E8 90 */ fmr f3, f29
/* 802CA980 002C78C0  C0 BE 02 84 */ lfs f5, 0x284(r30)
/* 802CA984 002C78C4  38 A0 00 00 */ li r5, 0
/* 802CA988 002C78C8  4B FF B1 2D */ bl Z2EnvSeBase_NS_startEnvSeLevel
/* 802CA98C 002C78CC  38 7E 02 58 */ addi r3, r30, 0x258
/* 802CA990 002C78D0  4B FE 43 2D */ bl resetMultiSePos__12Z2MultiSeMgrFv
lbl_802CA994:
/* 802CA994 002C78D4  88 1E 02 A4 */ lbz r0, 0x2a4(r30)
/* 802CA998 002C78D8  7C 00 07 75 */ extsb. r0, r0
/* 802CA99C 002C78DC  41 80 00 D0 */ blt lbl_802CAA6C
/* 802CA9A0 002C78E0  88 1E 02 B0 */ lbz r0, 0x2b0(r30)
/* 802CA9A4 002C78E4  28 00 00 75 */ cmplwi r0, 0x75
/* 802CA9A8 002C78E8  40 82 00 18 */ bne lbl_802CA9C0
/* 802CA9AC 002C78EC  3C 60 00 09 */ lis r3, 0x0009003D@ha
/* 802CA9B0 002C78F0  38 03 00 3D */ addi r0, r3, 0x0009003D@l
/* 802CA9B4 002C78F4  90 01 00 14 */ stw r0, 0x14(r1)
/* 802CA9B8 002C78F8  90 01 00 30 */ stw r0, 0x30(r1)
/* 802CA9BC 002C78FC  48 00 00 38 */ b lbl_802CA9F4
lbl_802CA9C0:
/* 802CA9C0 002C7900  28 00 00 70 */ cmplwi r0, 0x70
/* 802CA9C4 002C7904  40 82 00 18 */ bne lbl_802CA9DC
/* 802CA9C8 002C7908  3C 60 00 09 */ lis r3, 0x00090017@ha
/* 802CA9CC 002C790C  38 03 00 17 */ addi r0, r3, 0x00090017@l
/* 802CA9D0 002C7910  90 01 00 10 */ stw r0, 0x10(r1)
/* 802CA9D4 002C7914  90 01 00 30 */ stw r0, 0x30(r1)
/* 802CA9D8 002C7918  48 00 00 1C */ b lbl_802CA9F4
lbl_802CA9DC:
/* 802CA9DC 002C791C  28 00 00 77 */ cmplwi r0, 0x77
/* 802CA9E0 002C7920  40 82 00 14 */ bne lbl_802CA9F4
/* 802CA9E4 002C7924  3C 60 00 09 */ lis r3, 0x0009000A@ha
/* 802CA9E8 002C7928  38 03 00 0A */ addi r0, r3, 0x0009000A@l
/* 802CA9EC 002C792C  90 01 00 0C */ stw r0, 0xc(r1)
/* 802CA9F0 002C7930  90 01 00 30 */ stw r0, 0x30(r1)
lbl_802CA9F4:
/* 802CA9F4 002C7934  C0 1E 02 90 */ lfs f0, 0x290(r30)
/* 802CA9F8 002C7938  C0 22 C3 44 */ lfs f1, lbl_80455D44-_SDA2_BASE_(r2)
/* 802CA9FC 002C793C  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 802CAA00 002C7940  40 81 00 08 */ ble lbl_802CAA08
/* 802CAA04 002C7944  48 00 00 18 */ b lbl_802CAA1C
lbl_802CAA08:
/* 802CAA08 002C7948  C0 22 C3 48 */ lfs f1, lbl_80455D48-_SDA2_BASE_(r2)
/* 802CAA0C 002C794C  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 802CAA10 002C7950  40 80 00 08 */ bge lbl_802CAA18
/* 802CAA14 002C7954  48 00 00 08 */ b lbl_802CAA1C
lbl_802CAA18:
/* 802CAA18 002C7958  FC 20 00 90 */ fmr f1, f0
lbl_802CAA1C:
/* 802CAA1C 002C795C  C0 1E 02 B4 */ lfs f0, 0x2b4(r30)
/* 802CAA20 002C7960  EF C0 00 72 */ fmuls f30, f0, f1
/* 802CAA24 002C7964  38 7E 02 8C */ addi r3, r30, 0x28c
/* 802CAA28 002C7968  4B FE 42 B9 */ bl getPanPower__12Z2MultiSeMgrFv
/* 802CAA2C 002C796C  FF A0 08 90 */ fmr f29, f1
/* 802CAA30 002C7970  38 7E 02 8C */ addi r3, r30, 0x28c
/* 802CAA34 002C7974  4B FE 43 8D */ bl getDolbyPower__12Z2MultiSeMgrFv
/* 802CAA38 002C7978  FC 80 08 90 */ fmr f4, f1
/* 802CAA3C 002C797C  80 01 00 30 */ lwz r0, 0x30(r1)
/* 802CAA40 002C7980  90 01 00 08 */ stw r0, 8(r1)
/* 802CAA44 002C7984  38 7E 02 A8 */ addi r3, r30, 0x2a8
/* 802CAA48 002C7988  38 81 00 08 */ addi r4, r1, 8
/* 802CAA4C 002C798C  FC 20 F8 90 */ fmr f1, f31
/* 802CAA50 002C7990  FC 40 F0 90 */ fmr f2, f30
/* 802CAA54 002C7994  FC 60 E8 90 */ fmr f3, f29
/* 802CAA58 002C7998  C0 BE 02 B8 */ lfs f5, 0x2b8(r30)
/* 802CAA5C 002C799C  38 A0 00 00 */ li r5, 0
/* 802CAA60 002C79A0  4B FF B0 55 */ bl Z2EnvSeBase_NS_startEnvSeLevel
/* 802CAA64 002C79A4  38 7E 02 8C */ addi r3, r30, 0x28c
/* 802CAA68 002C79A8  4B FE 42 55 */ bl resetMultiSePos__12Z2MultiSeMgrFv
lbl_802CAA6C:
/* 802CAA6C 002C79AC  7F C3 F3 78 */ mr r3, r30
/* 802CAA70 002C79B0  7F E4 FB 78 */ mr r4, r31
/* 802CAA74 002C79B4  4B FF D8 8D */ bl Z2EnvSeMgr_NS_startRiverSe
/* 802CAA78 002C79B8  7F C3 F3 78 */ mr r3, r30
/* 802CAA7C 002C79BC  7F E4 FB 78 */ mr r4, r31
/* 802CAA80 002C79C0  4B FF DE 11 */ bl Z2EnvSeMgr_NS_startFallSe
/* 802CAA84 002C79C4  7F C3 F3 78 */ mr r3, r30
/* 802CAA88 002C79C8  7F E4 FB 78 */ mr r4, r31
/* 802CAA8C 002C79CC  4B FF E1 BD */ bl Z2EnvSeMgr_NS_startEtcSe
lbl_802CAA90:
/* 802CAA90 002C79D0  E3 E1 00 78 */ psq_l f31, 120(r1), 0, 0
/* 802CAA94 002C79D4  CB E1 00 70 */ lfd f31, 0x70(r1)
/* 802CAA98 002C79D8  E3 C1 00 68 */ psq_l f30, 104(r1), 0, 0
/* 802CAA9C 002C79DC  CB C1 00 60 */ lfd f30, 0x60(r1)
/* 802CAAA0 002C79E0  E3 A1 00 58 */ psq_l f29, 88(r1), 0, 0
/* 802CAAA4 002C79E4  CB A1 00 50 */ lfd f29, 0x50(r1)
/* 802CAAA8 002C79E8  83 E1 00 4C */ lwz r31, 0x4c(r1)
/* 802CAAAC 002C79EC  83 C1 00 48 */ lwz r30, 0x48(r1)
/* 802CAAB0 002C79F0  80 01 00 84 */ lwz r0, 0x84(r1)
/* 802CAAB4 002C79F4  7C 08 03 A6 */ mtlr r0
/* 802CAAB8 002C79F8  38 21 00 80 */ addi r1, r1, 0x80
/* 802CAABC 002C79FC  4E 80 00 20 */ blr
