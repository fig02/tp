/* 800E9344 000E6284  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E9348 000E6288  7C 08 02 A6 */ mflr r0
/* 800E934C 000E628C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E9350 000E6290  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E9354 000E6294  7C 7F 1B 78 */ mr r31, r3
/* 800E9358 000E6298  38 80 00 BF */ li r4, 0xbf
/* 800E935C 000E629C  4B FD 9A 49 */ bl daAlink_c_NS_commonProcInitNotSameProc
/* 800E9360 000E62A0  2C 03 00 00 */ cmpwi r3, 0
/* 800E9364 000E62A4  40 82 00 0C */ bne lbl_800E9370
/* 800E9368 000E62A8  38 60 00 00 */ li r3, 0
/* 800E936C 000E62AC  48 00 00 B4 */ b lbl_800E9420
lbl_800E9370:
/* 800E9370 000E62B0  7F E3 FB 78 */ mr r3, r31
/* 800E9374 000E62B4  4B FC A5 91 */ bl daAlink_c_NS_checkZeroSpeedF
/* 800E9378 000E62B8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E937C 000E62BC  41 82 00 10 */ beq lbl_800E938C
/* 800E9380 000E62C0  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800E9384 000E62C4  60 00 00 01 */ ori r0, r0, 1
/* 800E9388 000E62C8  90 1F 31 A0 */ stw r0, 0x31a0(r31)
lbl_800E938C:
/* 800E938C 000E62CC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E9390 000E62D0  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800E9394 000E62D4  C0 1F 04 D0 */ lfs f0, 0x4d0(r31)
/* 800E9398 000E62D8  D0 1F 37 C8 */ stfs f0, 0x37c8(r31)
/* 800E939C 000E62DC  C0 1F 04 D4 */ lfs f0, 0x4d4(r31)
/* 800E93A0 000E62E0  D0 1F 37 CC */ stfs f0, 0x37cc(r31)
/* 800E93A4 000E62E4  C0 1F 04 D8 */ lfs f0, 0x4d8(r31)
/* 800E93A8 000E62E8  D0 1F 37 D0 */ stfs f0, 0x37d0(r31)
/* 800E93AC 000E62EC  38 00 00 03 */ li r0, 3
/* 800E93B0 000E62F0  98 1F 2F 98 */ stb r0, 0x2f98(r31)
/* 800E93B4 000E62F4  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800E93B8 000E62F8  38 03 C0 00 */ addi r0, r3, -16384
/* 800E93BC 000E62FC  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800E93C0 000E6300  3C 60 80 39 */ lis r3, lbl_8038D714@ha
/* 800E93C4 000E6304  38 63 D7 14 */ addi r3, r3, lbl_8038D714@l
/* 800E93C8 000E6308  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 800E93CC 000E630C  D0 1F 05 94 */ stfs f0, 0x594(r31)
/* 800E93D0 000E6310  7F E3 FB 78 */ mr r3, r31
/* 800E93D4 000E6314  38 80 01 1A */ li r4, 0x11a
/* 800E93D8 000E6318  4B FC 3B A9 */ bl daAlink_c_NS_setSingleAnimeBase
/* 800E93DC 000E631C  38 00 00 00 */ li r0, 0
/* 800E93E0 000E6320  B0 1F 30 0C */ sth r0, 0x300c(r31)
/*.global daAlink_searchGoat*/
/* 800E93E4 000E6324  3C 60 80 0F */ lis r3, daAlink_searchGoat@ha
/*.global daAlink_searchGoat*/
/* 800E93E8 000E6328  38 63 91 B0 */ addi r3, r3, daAlink_searchGoat@l
/* 800E93EC 000E632C  38 80 00 00 */ li r4, 0
/* 800E93F0 000E6330  4B F3 04 09 */ bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800E93F4 000E6334  7C 64 1B 79 */ or. r4, r3, r3
/* 800E93F8 000E6338  41 82 00 0C */ beq lbl_800E9404
/* 800E93FC 000E633C  38 7F 28 0C */ addi r3, r31, 0x280c
/* 800E9400 000E6340  48 07 58 B9 */ bl daPy_actorKeep_c_NS_setData
lbl_800E9404:
/* 800E9404 000E6344  38 00 00 00 */ li r0, 0
/* 800E9408 000E6348  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 800E940C 000E634C  7F E3 FB 78 */ mr r3, r31
/* 800E9410 000E6350  38 80 00 00 */ li r4, 0
/* 800E9414 000E6354  38 A0 00 00 */ li r5, 0
/* 800E9418 000E6358  4B FD 7E C5 */ bl daAlink_c_NS_deleteEquipItem
/* 800E941C 000E635C  38 60 00 01 */ li r3, 1
lbl_800E9420:
/* 800E9420 000E6360  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E9424 000E6364  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E9428 000E6368  7C 08 03 A6 */ mtlr r0
/* 800E942C 000E636C  38 21 00 10 */ addi r1, r1, 0x10
/* 800E9430 000E6370  4E 80 00 20 */ blr