/* 800EB2BC 000E81FC  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800EB2C0 000E8200  7C 08 02 A6 */ mflr r0
/* 800EB2C4 000E8204  90 01 00 24 */ stw r0, 0x24(r1)
/* 800EB2C8 000E8208  39 61 00 20 */ addi r11, r1, 0x20
/* 800EB2CC 000E820C  48 27 6F 11 */ bl _savegpr_29
/* 800EB2D0 000E8210  7C 7F 1B 78 */ mr r31, r3
/* 800EB2D4 000E8214  38 00 00 04 */ li r0, 4
/* 800EB2D8 000E8218  98 03 2F 99 */ stb r0, 0x2f99(r3)
/* 800EB2DC 000E821C  4B FF F5 69 */ bl daAlink_c_NS_checkSumouVsActor
/* 800EB2E0 000E8220  2C 03 00 00 */ cmpwi r3, 0
/* 800EB2E4 000E8224  40 82 00 0C */ bne lbl_800EB2F0
/* 800EB2E8 000E8228  38 60 00 01 */ li r3, 1
/* 800EB2EC 000E822C  48 00 03 20 */ b lbl_800EB60C
lbl_800EB2F0:
/* 800EB2F0 000E8230  A8 7F 30 08 */ lha r3, 0x3008(r31)
/* 800EB2F4 000E8234  2C 03 00 00 */ cmpwi r3, 0
/* 800EB2F8 000E8238  41 82 00 0C */ beq lbl_800EB304
/* 800EB2FC 000E823C  38 03 FF FF */ addi r0, r3, -1
/* 800EB300 000E8240  B0 1F 30 08 */ sth r0, 0x3008(r31)
lbl_800EB304:
/* 800EB304 000E8244  38 7F 04 D0 */ addi r3, r31, 0x4d0
/* 800EB308 000E8248  80 9F 28 58 */ lwz r4, 0x2858(r31)
/* 800EB30C 000E824C  38 84 04 D0 */ addi r4, r4, 0x4d0
/* 800EB310 000E8250  48 18 58 F5 */ bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800EB314 000E8254  7C 64 1B 78 */ mr r4, r3
/* 800EB318 000E8258  38 7F 04 E6 */ addi r3, r31, 0x4e6
/* 800EB31C 000E825C  38 A0 00 02 */ li r5, 2
/* 800EB320 000E8260  38 C0 20 00 */ li r6, 0x2000
/* 800EB324 000E8264  38 E0 08 00 */ li r7, 0x800
/* 800EB328 000E8268  48 18 52 19 */ bl cLib_addCalcAngleS__FPsssss
/* 800EB32C 000E826C  88 1F 2F 98 */ lbz r0, 0x2f98(r31)
/* 800EB330 000E8270  28 00 00 03 */ cmplwi r0, 3
/* 800EB334 000E8274  40 82 00 14 */ bne lbl_800EB348
/* 800EB338 000E8278  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800EB33C 000E827C  38 03 C0 00 */ addi r0, r3, -16384
/* 800EB340 000E8280  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800EB344 000E8284  48 00 00 10 */ b lbl_800EB354
lbl_800EB348:
/* 800EB348 000E8288  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800EB34C 000E828C  38 03 40 00 */ addi r0, r3, 0x4000
/* 800EB350 000E8290  B0 1F 04 DE */ sth r0, 0x4de(r31)
lbl_800EB354:
/* 800EB354 000E8294  A8 7F 2F E2 */ lha r3, 0x2fe2(r31)
/* 800EB358 000E8298  A8 9F 04 E6 */ lha r4, 0x4e6(r31)
/* 800EB35C 000E829C  48 18 5A C9 */ bl cLib_distanceAngleS__Fss
/* 800EB360 000E82A0  7C 7E 1B 78 */ mr r30, r3
/* 800EB364 000E82A4  88 1F 05 6A */ lbz r0, 0x56a(r31)
/* 800EB368 000E82A8  28 00 00 1C */ cmplwi r0, 0x1c
/* 800EB36C 000E82AC  41 82 00 48 */ beq lbl_800EB3B4
/* 800EB370 000E82B0  28 00 00 1B */ cmplwi r0, 0x1b
/* 800EB374 000E82B4  41 82 00 40 */ beq lbl_800EB3B4
/* 800EB378 000E82B8  88 1F 2F 8D */ lbz r0, 0x2f8d(r31)
/* 800EB37C 000E82BC  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EB380 000E82C0  40 82 00 34 */ bne lbl_800EB3B4
/* 800EB384 000E82C4  7F E3 FB 78 */ mr r3, r31
/* 800EB388 000E82C8  4B FF F5 81 */ bl daAlink_c_NS_sumouPunchTrigger
/* 800EB38C 000E82CC  2C 03 00 00 */ cmpwi r3, 0
/* 800EB390 000E82D0  40 82 00 24 */ bne lbl_800EB3B4
/* 800EB394 000E82D4  80 7F 28 58 */ lwz r3, 0x2858(r31)
/* 800EB398 000E82D8  80 03 0E 74 */ lwz r0, 0xe74(r3)
/* 800EB39C 000E82DC  2C 00 00 03 */ cmpwi r0, 3
/* 800EB3A0 000E82E0  40 82 00 3C */ bne lbl_800EB3DC
/* 800EB3A4 000E82E4  7F E3 FB 78 */ mr r3, r31
/* 800EB3A8 000E82E8  4B FC 85 5D */ bl daAlink_c_NS_checkZeroSpeedF
/* 800EB3AC 000E82EC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EB3B0 000E82F0  40 82 00 2C */ bne lbl_800EB3DC
lbl_800EB3B4:
/* 800EB3B4 000E82F4  88 1F 2F 8D */ lbz r0, 0x2f8d(r31)
/* 800EB3B8 000E82F8  54 1E 06 F6 */ rlwinm r30, r0, 0, 0x1b, 0x1b
/* 800EB3BC 000E82FC  7F E3 FB 78 */ mr r3, r31
/* 800EB3C0 000E8300  4B FF F5 49 */ bl daAlink_c_NS_sumouPunchTrigger
/* 800EB3C4 000E8304  7C 65 1B 78 */ mr r5, r3
/* 800EB3C8 000E8308  7F E3 FB 78 */ mr r3, r31
/* 800EB3CC 000E830C  7F C4 F3 78 */ mr r4, r30
/* 800EB3D0 000E8310  A8 DF 30 08 */ lha r6, 0x3008(r31)
/* 800EB3D4 000E8314  48 00 02 51 */ bl daAlink_c_NS_procSumouActionInit
/* 800EB3D8 000E8318  48 00 02 34 */ b lbl_800EB60C
lbl_800EB3DC:
/* 800EB3DC 000E831C  7F E3 FB 78 */ mr r3, r31
/* 800EB3E0 000E8320  4B FF F5 4D */ bl daAlink_c_NS_setSumouPunchStatus
/* 800EB3E4 000E8324  7F E3 FB 78 */ mr r3, r31
/* 800EB3E8 000E8328  38 80 00 15 */ li r4, 0x15
/* 800EB3EC 000E832C  4B FC 7E 7D */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800EB3F0 000E8330  38 00 00 05 */ li r0, 5
/* 800EB3F4 000E8334  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800EB3F8 000E8338  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800EB3FC 000E833C  98 03 5E 81 */ stb r0, 0x5e81(r3)
/* 800EB400 000E8340  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 800EB404 000E8344  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800EB408 000E8348  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EB40C 000E834C  40 81 00 BC */ ble lbl_800EB4C8
/* 800EB410 000E8350  2C 1E 08 00 */ cmpwi r30, 0x800
/* 800EB414 000E8354  40 81 00 B4 */ ble lbl_800EB4C8
/* 800EB418 000E8358  2C 1E 78 00 */ cmpwi r30, 0x7800
/* 800EB41C 000E835C  40 80 00 AC */ bge lbl_800EB4C8
/* 800EB420 000E8360  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 800EB424 000E8364  A8 1F 2F E2 */ lha r0, 0x2fe2(r31)
/* 800EB428 000E8368  7C 03 00 50 */ subf r0, r3, r0
/* 800EB42C 000E836C  7C 03 07 34 */ extsh r3, r0
/* 800EB430 000E8370  48 27 9C A1 */ bl func_803650D0
/* 800EB434 000E8374  2C 03 40 00 */ cmpwi r3, 0x4000
/* 800EB438 000E8378  40 81 00 44 */ ble lbl_800EB47C
/* 800EB43C 000E837C  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 800EB440 000E8380  3C 63 00 01 */ addis r3, r3, 1
/* 800EB444 000E8384  38 03 80 00 */ addi r0, r3, -32768
/* 800EB448 000E8388  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800EB44C 000E838C  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 800EB450 000E8390  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800EB454 000E8394  EC 01 00 32 */ fmuls f0, f1, f0
/* 800EB458 000E8398  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800EB45C 000E839C  88 1F 2F 98 */ lbz r0, 0x2f98(r31)
/* 800EB460 000E83A0  28 00 00 03 */ cmplwi r0, 3
/* 800EB464 000E83A4  40 82 00 10 */ bne lbl_800EB474
/* 800EB468 000E83A8  38 00 00 02 */ li r0, 2
/* 800EB46C 000E83AC  98 1F 2F 98 */ stb r0, 0x2f98(r31)
/* 800EB470 000E83B0  48 00 00 0C */ b lbl_800EB47C
lbl_800EB474:
/* 800EB474 000E83B4  38 00 00 03 */ li r0, 3
/* 800EB478 000E83B8  98 1F 2F 98 */ stb r0, 0x2f98(r31)
lbl_800EB47C:
/* 800EB47C 000E83BC  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 800EB480 000E83C0  C0 1F 05 94 */ lfs f0, 0x594(r31)
/* 800EB484 000E83C4  EC 01 00 24 */ fdivs f0, f1, f0
/* 800EB488 000E83C8  FC 00 02 10 */ fabs f0, f0
/* 800EB48C 000E83CC  FC 40 00 18 */ frsp f2, f0
/* 800EB490 000E83D0  C0 7F 33 AC */ lfs f3, 0x33ac(r31)
/* 800EB494 000E83D4  C0 22 94 A8 */ lfs f1, lbl_80452EA8-_SDA2_BASE_(r2)
/* 800EB498 000E83D8  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800EB49C 000E83DC  EC 00 10 28 */ fsubs f0, f0, f2
/* 800EB4A0 000E83E0  EC 01 00 32 */ fmuls f0, f1, f0
/* 800EB4A4 000E83E4  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 800EB4A8 000E83E8  40 81 00 18 */ ble lbl_800EB4C0
/* 800EB4AC 000E83EC  3C 60 80 39 */ lis r3, lbl_8038D714@ha
/* 800EB4B0 000E83F0  38 63 D7 14 */ addi r3, r3, lbl_8038D714@l
/* 800EB4B4 000E83F4  C0 03 00 20 */ lfs f0, 0x20(r3)
/* 800EB4B8 000E83F8  EC 20 00 F2 */ fmuls f1, f0, f3
/* 800EB4BC 000E83FC  48 00 00 10 */ b lbl_800EB4CC
lbl_800EB4C0:
/* 800EB4C0 000E8400  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EB4C4 000E8404  48 00 00 08 */ b lbl_800EB4CC
lbl_800EB4C8:
/* 800EB4C8 000E8408  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
lbl_800EB4CC:
/* 800EB4CC 000E840C  7F E3 FB 78 */ mr r3, r31
/* 800EB4D0 000E8410  3C 80 80 39 */ lis r4, lbl_8038D714@ha
/* 800EB4D4 000E8414  38 84 D7 14 */ addi r4, r4, lbl_8038D714@l
/* 800EB4D8 000E8418  C0 44 00 24 */ lfs f2, 0x24(r4)
/* 800EB4DC 000E841C  4B FC 84 49 */ bl daAlink_c_NS_setNormalSpeedF
/* 800EB4E0 000E8420  7F E3 FB 78 */ mr r3, r31
/* 800EB4E4 000E8424  4B FC 84 21 */ bl daAlink_c_NS_checkZeroSpeedF
/* 800EB4E8 000E8428  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EB4EC 000E842C  41 82 00 70 */ beq lbl_800EB55C
/* 800EB4F0 000E8430  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800EB4F4 000E8434  60 00 00 01 */ ori r0, r0, 1
/* 800EB4F8 000E8438  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 800EB4FC 000E843C  38 00 00 16 */ li r0, 0x16
/* 800EB500 000E8440  98 1F 05 6A */ stb r0, 0x56a(r31)
/* 800EB504 000E8444  38 00 00 03 */ li r0, 3
/* 800EB508 000E8448  98 1F 2F 98 */ stb r0, 0x2f98(r31)
/* 800EB50C 000E844C  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800EB510 000E8450  38 03 C0 00 */ addi r0, r3, -16384
/* 800EB514 000E8454  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800EB518 000E8458  A3 DF 1F 58 */ lhz r30, 0x1f58(r31)
/* 800EB51C 000E845C  7F E3 FB 78 */ mr r3, r31
/* 800EB520 000E8460  38 80 01 41 */ li r4, 0x141
/* 800EB524 000E8464  4B FC 0F 2D */ bl daAlink_c_NS_getMainBckData
/* 800EB528 000E8468  A0 03 00 00 */ lhz r0, 0(r3)
/* 800EB52C 000E846C  54 03 05 3E */ clrlwi r3, r0, 0x14
/* 800EB530 000E8470  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 800EB534 000E8474  7C 00 18 00 */ cmpw r0, r3
/* 800EB538 000E8478  41 82 00 D0 */ beq lbl_800EB608
/* 800EB53C 000E847C  7F E3 FB 78 */ mr r3, r31
/* 800EB540 000E8480  38 80 01 41 */ li r4, 0x141
/* 800EB544 000E8484  4B FC 1A 3D */ bl daAlink_c_NS_setSingleAnimeBase
/* 800EB548 000E8488  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EB54C 000E848C  D0 1F 33 9C */ stfs f0, 0x339c(r31)
/* 800EB550 000E8490  38 00 01 41 */ li r0, 0x141
/* 800EB554 000E8494  90 1F 31 98 */ stw r0, 0x3198(r31)
/* 800EB558 000E8498  48 00 00 B0 */ b lbl_800EB608
lbl_800EB55C:
/* 800EB55C 000E849C  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800EB560 000E84A0  54 00 00 3C */ rlwinm r0, r0, 0, 0, 0x1e
/* 800EB564 000E84A4  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 800EB568 000E84A8  88 1F 2F 98 */ lbz r0, 0x2f98(r31)
/* 800EB56C 000E84AC  28 00 00 03 */ cmplwi r0, 3
/* 800EB570 000E84B0  3B C0 01 42 */ li r30, 0x142
/* 800EB574 000E84B4  40 82 00 08 */ bne lbl_800EB57C
/* 800EB578 000E84B8  3B C0 01 43 */ li r30, 0x143
lbl_800EB57C:
/* 800EB57C 000E84BC  A3 BF 1F 58 */ lhz r29, 0x1f58(r31)
/* 800EB580 000E84C0  7F E3 FB 78 */ mr r3, r31
/* 800EB584 000E84C4  7F C4 F3 78 */ mr r4, r30
/* 800EB588 000E84C8  4B FC 0E C9 */ bl daAlink_c_NS_getMainBckData
/* 800EB58C 000E84CC  A0 03 00 00 */ lhz r0, 0(r3)
/* 800EB590 000E84D0  54 03 05 3E */ clrlwi r3, r0, 0x14
/* 800EB594 000E84D4  57 A0 04 3E */ clrlwi r0, r29, 0x10
/* 800EB598 000E84D8  7C 00 18 00 */ cmpw r0, r3
/* 800EB59C 000E84DC  41 82 00 2C */ beq lbl_800EB5C8
/* 800EB5A0 000E84E0  7F E3 FB 78 */ mr r3, r31
/* 800EB5A4 000E84E4  7F C4 F3 78 */ mr r4, r30
/* 800EB5A8 000E84E8  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800EB5AC 000E84EC  C0 42 92 C0 */ lfs f2, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EB5B0 000E84F0  38 A0 00 18 */ li r5, 0x18
/* 800EB5B4 000E84F4  C0 62 92 C4 */ lfs f3, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800EB5B8 000E84F8  4B FC 1A 55 */ bl daAlink_c_NS_setSingleAnime
/* 800EB5BC 000E84FC  93 DF 31 98 */ stw r30, 0x3198(r31)
/* 800EB5C0 000E8500  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800EB5C4 000E8504  D0 1F 33 9C */ stfs f0, 0x339c(r31)
lbl_800EB5C8:
/* 800EB5C8 000E8508  88 1F 2F 98 */ lbz r0, 0x2f98(r31)
/* 800EB5CC 000E850C  28 00 00 03 */ cmplwi r0, 3
/* 800EB5D0 000E8510  40 82 00 10 */ bne lbl_800EB5E0
/* 800EB5D4 000E8514  38 00 00 18 */ li r0, 0x18
/* 800EB5D8 000E8518  98 1F 05 6A */ stb r0, 0x56a(r31)
/* 800EB5DC 000E851C  48 00 00 0C */ b lbl_800EB5E8
lbl_800EB5E0:
/* 800EB5E0 000E8520  38 00 00 17 */ li r0, 0x17
/* 800EB5E4 000E8524  98 1F 05 6A */ stb r0, 0x56a(r31)
lbl_800EB5E8:
/* 800EB5E8 000E8528  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 800EB5EC 000E852C  C0 1F 05 94 */ lfs f0, 0x594(r31)
/* 800EB5F0 000E8530  EC 01 00 24 */ fdivs f0, f1, f0
/* 800EB5F4 000E8534  D0 1F 1F DC */ stfs f0, 0x1fdc(r31)
/* 800EB5F8 000E8538  7F E3 FB 78 */ mr r3, r31
/* 800EB5FC 000E853C  4B FD 3D 81 */ bl daAlink_c_NS_initBasAnime
/* 800EB600 000E8540  38 00 00 60 */ li r0, 0x60
/* 800EB604 000E8544  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
lbl_800EB608:
/* 800EB608 000E8548  38 60 00 01 */ li r3, 1
lbl_800EB60C:
/* 800EB60C 000E854C  39 61 00 20 */ addi r11, r1, 0x20
/* 800EB610 000E8550  48 27 6C 19 */ bl _restgpr_29
/* 800EB614 000E8554  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800EB618 000E8558  7C 08 03 A6 */ mtlr r0
/* 800EB61C 000E855C  38 21 00 20 */ addi r1, r1, 0x20
/* 800EB620 000E8560  4E 80 00 20 */ blr
