/* 800BB324 000B8264  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800BB328 000B8268  7C 08 02 A6 */ mflr r0
/* 800BB32C 000B826C  90 01 00 24 */ stw r0, 0x24(r1)
/* 800BB330 000B8270  39 61 00 20 */ addi r11, r1, 0x20
/* 800BB334 000B8274  48 2A 6E A1 */ bl _savegpr_27
/* 800BB338 000B8278  7C 7B 1B 78 */ mr r27, r3
/* 800BB33C 000B827C  7C 9C 23 78 */ mr r28, r4
/* 800BB340 000B8280  80 63 06 50 */ lwz r3, 0x650(r3)
/* 800BB344 000B8284  83 E3 00 04 */ lwz r31, 4(r3)
/* 800BB348 000B8288  38 62 92 70 */ addi r3, r2, 0x80452C70 - 0x80459A00 /*SDA HACK; original: lbl_80452C70-_SDA2_BASE_*/
/* 800BB34C 000B828C  54 9D 10 3A */ slwi r29, r4, 2
/* 800BB350 000B8290  3C 80 80 3B */ lis r4, lbl_803B2D94@ha
/* 800BB354 000B8294  38 84 2D 94 */ addi r4, r4, lbl_803B2D94@l
/* 800BB358 000B8298  7C 84 E8 2E */ lwzx r4, r4, r29
/* 800BB35C 000B829C  3C A0 80 40 */ lis r5, g_dComIfG_gameInfo@ha
/* 800BB360 000B82A0  38 A5 61 C0 */ addi r5, r5, g_dComIfG_gameInfo@l
/* 800BB364 000B82A4  3F C5 00 02 */ addis r30, r5, 2
/* 800BB368 000B82A8  3B DE C2 F8 */ addi r30, r30, -15624
/* 800BB36C 000B82AC  7F C5 F3 78 */ mr r5, r30
/* 800BB370 000B82B0  38 C0 00 80 */ li r6, 0x80
/* 800BB374 000B82B4  4B F8 10 09 */ bl dRes_control_c_NS_getRes_X1_
/* 800BB378 000B82B8  90 7B 06 7C */ stw r3, 0x67c(r27)
/* 800BB37C 000B82BC  80 7B 06 7C */ lwz r3, 0x67c(r27)
/* 800BB380 000B82C0  7F E4 FB 78 */ mr r4, r31
/* 800BB384 000B82C4  48 27 04 F9 */ bl J3DAnmTevRegKey_NS_searchUpdateMaterialID_X1_
/* 800BB388 000B82C8  38 7F 00 58 */ addi r3, r31, 0x58
/* 800BB38C 000B82CC  80 9B 06 7C */ lwz r4, 0x67c(r27)
/* 800BB390 000B82D0  48 27 4A E1 */ bl J3DMaterialTable_NS_entryTevRegAnimator
/* 800BB394 000B82D4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800BB398 000B82D8  80 7B 06 7C */ lwz r3, 0x67c(r27)
/* 800BB39C 000B82DC  D0 03 00 08 */ stfs f0, 8(r3)
/* 800BB3A0 000B82E0  80 7B 06 58 */ lwz r3, 0x658(r27)
/* 800BB3A4 000B82E4  83 E3 00 04 */ lwz r31, 4(r3)
/* 800BB3A8 000B82E8  38 62 92 70 */ addi r3, r2, 0x80452C70 - 0x80459A00 /*SDA HACK; original: lbl_80452C70-_SDA2_BASE_*/
/* 800BB3AC 000B82EC  3C 80 80 3B */ lis r4, lbl_803B2DA0@ha
/* 800BB3B0 000B82F0  38 84 2D A0 */ addi r4, r4, lbl_803B2DA0@l
/* 800BB3B4 000B82F4  7C 84 E8 2E */ lwzx r4, r4, r29
/* 800BB3B8 000B82F8  7F C5 F3 78 */ mr r5, r30
/* 800BB3BC 000B82FC  38 C0 00 80 */ li r6, 0x80
/* 800BB3C0 000B8300  4B F8 0F BD */ bl dRes_control_c_NS_getRes_X1_
/* 800BB3C4 000B8304  90 7B 06 80 */ stw r3, 0x680(r27)
/* 800BB3C8 000B8308  80 7B 06 80 */ lwz r3, 0x680(r27)
/* 800BB3CC 000B830C  7F E4 FB 78 */ mr r4, r31
/* 800BB3D0 000B8310  48 27 04 AD */ bl J3DAnmTevRegKey_NS_searchUpdateMaterialID_X1_
/* 800BB3D4 000B8314  38 7F 00 58 */ addi r3, r31, 0x58
/* 800BB3D8 000B8318  80 9B 06 80 */ lwz r4, 0x680(r27)
/* 800BB3DC 000B831C  48 27 4A 95 */ bl J3DMaterialTable_NS_entryTevRegAnimator
/* 800BB3E0 000B8320  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800BB3E4 000B8324  80 7B 06 80 */ lwz r3, 0x680(r27)
/* 800BB3E8 000B8328  D0 03 00 08 */ stfs f0, 8(r3)
/* 800BB3EC 000B832C  9B 9B 2F D7 */ stb r28, 0x2fd7(r27)
/* 800BB3F0 000B8330  39 61 00 20 */ addi r11, r1, 0x20
/* 800BB3F4 000B8334  48 2A 6E 2D */ bl _restgpr_27
/* 800BB3F8 000B8338  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800BB3FC 000B833C  7C 08 03 A6 */ mtlr r0
/* 800BB400 000B8340  38 21 00 20 */ addi r1, r1, 0x20
/* 800BB404 000B8344  4E 80 00 20 */ blr