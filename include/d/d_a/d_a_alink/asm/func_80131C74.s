/* 80131C74 0012EBB4  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80131C78 0012EBB8  7C 08 02 A6 */ mflr r0
/* 80131C7C 0012EBBC  90 01 00 24 */ stw r0, 0x24(r1)
/* 80131C80 0012EBC0  39 61 00 20 */ addi r11, r1, 0x20
/* 80131C84 0012EBC4  48 23 05 55 */ bl _savegpr_28
/* 80131C88 0012EBC8  7C 7C 1B 78 */ mr r28, r3
/* 80131C8C 0012EBCC  7C 9D 23 78 */ mr r29, r4
/* 80131C90 0012EBD0  7C BE 2B 78 */ mr r30, r5
/* 80131C94 0012EBD4  83 E3 28 10 */ lwz r31, 0x2810(r3)
/* 80131C98 0012EBD8  38 80 01 13 */ li r4, 0x113
/* 80131C9C 0012EBDC  4B F9 02 D1 */ bl daAlink_c_NS_commonProcInit
/* 80131CA0 0012EBE0  7F 83 E3 78 */ mr r3, r28
/* 80131CA4 0012EBE4  4B FF FD 4D */ bl daAlink_c_NS_initWolfRopeShapeAngle
/* 80131CA8 0012EBE8  B0 7C 30 0C */ sth r3, 0x300c(r28)
/* 80131CAC 0012EBEC  A8 1C 04 E6 */ lha r0, 0x4e6(r28)
/* 80131CB0 0012EBF0  B0 1C 04 DE */ sth r0, 0x4de(r28)
/* 80131CB4 0012EBF4  7F 83 E3 78 */ mr r3, r28
/* 80131CB8 0012EBF8  38 80 00 21 */ li r4, 0x21
/* 80131CBC 0012EBFC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80131CC0 0012EC00  3C A0 80 39 */ lis r5, lbl_8038F46C@ha
/* 80131CC4 0012EC04  38 A5 F4 6C */ addi r5, r5, lbl_8038F46C@l
/* 80131CC8 0012EC08  C0 45 00 20 */ lfs f2, 0x20(r5)
/* 80131CCC 0012EC0C  4B FF 7A 0D */ bl daAlink_c_NS_setSingleAnimeWolfBaseSpeed
/* 80131CD0 0012EC10  2C 1D 00 00 */ cmpwi r29, 0
/* 80131CD4 0012EC14  41 82 00 14 */ beq lbl_80131CE8
/* 80131CD8 0012EC18  C0 02 97 70 */ lfs f0, lbl_80453170-_SDA2_BASE_(r2)
/* 80131CDC 0012EC1C  D0 1C 1F E0 */ stfs f0, 0x1fe0(r28)
/* 80131CE0 0012EC20  80 7C 1F 2C */ lwz r3, 0x1f2c(r28)
/* 80131CE4 0012EC24  D0 03 00 08 */ stfs f0, 8(r3)
lbl_80131CE8:
/* 80131CE8 0012EC28  7F 83 E3 78 */ mr r3, r28
/* 80131CEC 0012EC2C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80131CF0 0012EC30  C0 5C 05 34 */ lfs f2, 0x534(r28)
/* 80131CF4 0012EC34  38 80 00 00 */ li r4, 0
/* 80131CF8 0012EC38  4B F8 9A 79 */ bl setSpecialGravity__9daAlink_cFffi
/* 80131CFC 0012EC3C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80131D00 0012EC40  D0 3C 04 FC */ stfs f1, 0x4fc(r28)
/* 80131D04 0012EC44  2C 1E 00 00 */ cmpwi r30, 0
/* 80131D08 0012EC48  41 82 00 28 */ beq lbl_80131D30
/* 80131D0C 0012EC4C  C0 1F 07 34 */ lfs f0, 0x734(r31)
/* 80131D10 0012EC50  D0 1C 04 D0 */ stfs f0, 0x4d0(r28)
/* 80131D14 0012EC54  C0 1F 07 38 */ lfs f0, 0x738(r31)
/* 80131D18 0012EC58  D0 1C 04 D4 */ stfs f0, 0x4d4(r28)
/* 80131D1C 0012EC5C  C0 1F 07 3C */ lfs f0, 0x73c(r31)
/* 80131D20 0012EC60  D0 1C 04 D8 */ stfs f0, 0x4d8(r28)
/* 80131D24 0012EC64  D0 3C 34 78 */ stfs f1, 0x3478(r28)
/* 80131D28 0012EC68  38 00 00 00 */ li r0, 0
/* 80131D2C 0012EC6C  B0 1C 30 08 */ sth r0, 0x3008(r28)
lbl_80131D30:
/* 80131D30 0012EC70  7F 83 E3 78 */ mr r3, r28
/* 80131D34 0012EC74  4B FF F9 E5 */ bl daAlink_c_NS_setWolfRopePosY
/* 80131D38 0012EC78  7C 64 1B 78 */ mr r4, r3
/* 80131D3C 0012EC7C  7F 83 E3 78 */ mr r3, r28
/* 80131D40 0012EC80  4B FF FD BD */ bl daAlink_c_NS_setWolfRopeOffsetY
/* 80131D44 0012EC84  38 60 00 00 */ li r3, 0
/* 80131D48 0012EC88  A0 1C 1F BC */ lhz r0, 0x1fbc(r28)
/* 80131D4C 0012EC8C  28 00 02 DA */ cmplwi r0, 0x2da
/* 80131D50 0012EC90  41 82 00 10 */ beq lbl_80131D60
/* 80131D54 0012EC94  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 80131D58 0012EC98  28 00 02 DB */ cmplwi r0, 0x2db
/* 80131D5C 0012EC9C  40 82 00 08 */ bne lbl_80131D64
lbl_80131D60:
/* 80131D60 0012ECA0  38 60 00 01 */ li r3, 1
lbl_80131D64:
/* 80131D64 0012ECA4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80131D68 0012ECA8  41 82 00 0C */ beq lbl_80131D74
/* 80131D6C 0012ECAC  38 00 E8 00 */ li r0, -6144
/* 80131D70 0012ECB0  B0 1C 30 A0 */ sth r0, 0x30a0(r28)
lbl_80131D74:
/* 80131D74 0012ECB4  38 00 00 00 */ li r0, 0
/* 80131D78 0012ECB8  B0 1C 30 0E */ sth r0, 0x300e(r28)
/* 80131D7C 0012ECBC  7F 83 E3 78 */ mr r3, r28
/* 80131D80 0012ECC0  4B F8 1A C5 */ bl daAlink_c_NS_initServiceWaitTime
/* 80131D84 0012ECC4  38 60 00 01 */ li r3, 1
/* 80131D88 0012ECC8  39 61 00 20 */ addi r11, r1, 0x20
/* 80131D8C 0012ECCC  48 23 04 99 */ bl _restgpr_28
/* 80131D90 0012ECD0  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80131D94 0012ECD4  7C 08 03 A6 */ mtlr r0
/* 80131D98 0012ECD8  38 21 00 20 */ addi r1, r1, 0x20
/* 80131D9C 0012ECDC  4E 80 00 20 */ blr