/* 800F542C 000F236C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F5430 000F2370  7C 08 02 A6 */ mflr r0
/* 800F5434 000F2374  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F5438 000F2378  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F543C 000F237C  7C 7F 1B 78 */ mr r31, r3
/* 800F5440 000F2380  4B FF F3 99 */ bl daAlink_c_NS_canoeCommon
/* 800F5444 000F2384  2C 03 00 00 */ cmpwi r3, 0
/* 800F5448 000F2388  41 82 00 0C */ beq lbl_800F5454
/* 800F544C 000F238C  38 60 00 01 */ li r3, 1
/* 800F5450 000F2390  48 00 02 B8 */ b lbl_800F5708
lbl_800F5454:
/* 800F5454 000F2394  A8 7F 30 08 */ lha r3, 0x3008(r31)
/* 800F5458 000F2398  2C 03 00 00 */ cmpwi r3, 0
/* 800F545C 000F239C  40 81 00 10 */ ble lbl_800F546C
/* 800F5460 000F23A0  38 03 FF FF */ addi r0, r3, -1
/* 800F5464 000F23A4  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 800F5468 000F23A8  48 00 02 9C */ b lbl_800F5704
lbl_800F546C:
/* 800F546C 000F23AC  7F E3 FB 78 */ mr r3, r31
/* 800F5470 000F23B0  4B FF F4 B5 */ bl daAlink_c_NS_checkNextActionCanoe
/* 800F5474 000F23B4  2C 03 00 00 */ cmpwi r3, 0
/* 800F5478 000F23B8  40 82 02 8C */ bne lbl_800F5704
/* 800F547C 000F23BC  7F E3 FB 78 */ mr r3, r31
/* 800F5480 000F23C0  4B FC 3D D5 */ bl daAlink_c_NS_checkNoUpperAnime
/* 800F5484 000F23C4  2C 03 00 00 */ cmpwi r3, 0
/* 800F5488 000F23C8  41 82 02 28 */ beq lbl_800F56B0
/* 800F548C 000F23CC  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 800F5490 000F23D0  C0 02 92 C4 */ lfs f0, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800F5494 000F23D4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F5498 000F23D8  40 80 00 C8 */ bge lbl_800F5560
/* 800F549C 000F23DC  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800F54A0 000F23E0  28 00 01 05 */ cmplwi r0, 0x105
/* 800F54A4 000F23E4  41 82 00 BC */ beq lbl_800F5560
/* 800F54A8 000F23E8  88 1F 05 6A */ lbz r0, 0x56a(r31)
/* 800F54AC 000F23EC  28 00 00 2D */ cmplwi r0, 0x2d
/* 800F54B0 000F23F0  41 82 00 B0 */ beq lbl_800F5560
/* 800F54B4 000F23F4  7F E3 FB 78 */ mr r3, r31
/* 800F54B8 000F23F8  4B FB F5 51 */ bl daAlink_c_NS_setTalkStatus
/* 800F54BC 000F23FC  2C 03 00 00 */ cmpwi r3, 0
/* 800F54C0 000F2400  40 82 00 28 */ bne lbl_800F54E8
/* 800F54C4 000F2404  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 800F54C8 000F2408  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 800F54CC 000F240C  38 63 00 7E */ addi r3, r3, 0x7e
/* 800F54D0 000F2410  4B FA 85 91 */ bl checkStageName__9daAlink_cFPCc
/* 800F54D4 000F2414  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800F54D8 000F2418  40 82 00 10 */ bne lbl_800F54E8
/* 800F54DC 000F241C  7F E3 FB 78 */ mr r3, r31
/* 800F54E0 000F2420  38 80 00 16 */ li r4, 0x16
/* 800F54E4 000F2424  4B FB DD 85 */ bl setDoStatusEmphasys__9daAlink_cFUc
lbl_800F54E8:
/* 800F54E8 000F2428  7F E3 FB 78 */ mr r3, r31
/* 800F54EC 000F242C  38 80 00 00 */ li r4, 0
/* 800F54F0 000F2430  4B FC 27 09 */ bl daAlink_c_NS_orderTalk
/* 800F54F4 000F2434  2C 03 00 00 */ cmpwi r3, 0
/* 800F54F8 000F2438  41 82 00 0C */ beq lbl_800F5504
/* 800F54FC 000F243C  38 60 00 01 */ li r3, 1
/* 800F5500 000F2440  48 00 02 08 */ b lbl_800F5708
lbl_800F5504:
/* 800F5504 000F2444  88 1F 2F 8D */ lbz r0, 0x2f8d(r31)
/* 800F5508 000F2448  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800F550C 000F244C  41 82 00 54 */ beq lbl_800F5560
/* 800F5510 000F2450  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800F5514 000F2454  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800F5518 000F2458  88 03 5E 24 */ lbz r0, 0x5e24(r3)
/* 800F551C 000F245C  28 00 00 16 */ cmplwi r0, 0x16
/* 800F5520 000F2460  40 82 00 40 */ bne lbl_800F5560
/* 800F5524 000F2464  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800F5528 000F2468  28 00 01 0B */ cmplwi r0, 0x10b
/* 800F552C 000F246C  40 82 00 14 */ bne lbl_800F5540
/* 800F5530 000F2470  7F E3 FB 78 */ mr r3, r31
/* 800F5534 000F2474  38 80 00 01 */ li r4, 1
/* 800F5538 000F2478  48 00 09 71 */ bl daAlink_c_NS_procCanoePaddlePutInit
/* 800F553C 000F247C  48 00 01 CC */ b lbl_800F5708
lbl_800F5540:
/* 800F5540 000F2480  28 00 00 FF */ cmplwi r0, 0xff
/* 800F5544 000F2484  41 82 00 10 */ beq lbl_800F5554
/* 800F5548 000F2488  7F E3 FB 78 */ mr r3, r31
/* 800F554C 000F248C  38 80 00 00 */ li r4, 0
/* 800F5550 000F2490  4B FC 42 ED */ bl daAlink_c_NS_allUnequip
lbl_800F5554:
/* 800F5554 000F2494  7F E3 FB 78 */ mr r3, r31
/* 800F5558 000F2498  4B FF F8 A1 */ bl daAlink_c_NS_procCanoeGetOffInit
/* 800F555C 000F249C  48 00 01 AC */ b lbl_800F5708
lbl_800F5560:
/* 800F5560 000F24A0  A0 7F 2F DC */ lhz r3, 0x2fdc(r31)
/* 800F5564 000F24A4  28 03 01 05 */ cmplwi r3, 0x105
/* 800F5568 000F24A8  40 82 00 10 */ bne lbl_800F5578
/* 800F556C 000F24AC  7F E3 FB 78 */ mr r3, r31
/* 800F5570 000F24B0  48 00 0E F5 */ bl daAlink_c_NS_procCanoeFishingWaitInit
/* 800F5574 000F24B4  48 00 01 90 */ b lbl_800F5704
lbl_800F5578:
/* 800F5578 000F24B8  28 03 00 FF */ cmplwi r3, 0xff
/* 800F557C 000F24BC  40 82 00 80 */ bne lbl_800F55FC
/* 800F5580 000F24C0  80 1F 28 38 */ lwz r0, 0x2838(r31)
/* 800F5584 000F24C4  28 00 00 00 */ cmplwi r0, 0
/* 800F5588 000F24C8  40 82 00 10 */ bne lbl_800F5598
/* 800F558C 000F24CC  A8 1F 30 0A */ lha r0, 0x300a(r31)
/* 800F5590 000F24D0  2C 00 00 00 */ cmpwi r0, 0
/* 800F5594 000F24D4  41 82 00 14 */ beq lbl_800F55A8
lbl_800F5598:
/* 800F5598 000F24D8  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 800F559C 000F24DC  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800F55A0 000F24E0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F55A4 000F24E4  40 81 00 58 */ ble lbl_800F55FC
lbl_800F55A8:
/* 800F55A8 000F24E8  38 00 00 FF */ li r0, 0xff
/* 800F55AC 000F24EC  B0 1F 2F DE */ sth r0, 0x2fde(r31)
/* 800F55B0 000F24F0  80 1F 28 38 */ lwz r0, 0x2838(r31)
/* 800F55B4 000F24F4  28 00 00 00 */ cmplwi r0, 0
/* 800F55B8 000F24F8  40 82 00 10 */ bne lbl_800F55C8
/* 800F55BC 000F24FC  A8 1F 30 0A */ lha r0, 0x300a(r31)
/* 800F55C0 000F2500  2C 00 00 00 */ cmpwi r0, 0
/* 800F55C4 000F2504  41 82 00 2C */ beq lbl_800F55F0
lbl_800F55C8:
/* 800F55C8 000F2508  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800F55CC 000F250C  A8 1F 2F E2 */ lha r0, 0x2fe2(r31)
/* 800F55D0 000F2510  7C 03 00 50 */ subf r0, r3, r0
/* 800F55D4 000F2514  7C 00 07 35 */ extsh. r0, r0
/* 800F55D8 000F2518  41 80 00 10 */ blt lbl_800F55E8
/* 800F55DC 000F251C  38 00 00 01 */ li r0, 1
/* 800F55E0 000F2520  B0 1F 30 12 */ sth r0, 0x3012(r31)
/* 800F55E4 000F2524  48 00 00 0C */ b lbl_800F55F0
lbl_800F55E8:
/* 800F55E8 000F2528  38 00 00 00 */ li r0, 0
/* 800F55EC 000F252C  B0 1F 30 12 */ sth r0, 0x3012(r31)
lbl_800F55F0:
/* 800F55F0 000F2530  7F E3 FB 78 */ mr r3, r31
/* 800F55F4 000F2534  48 00 0B 4D */ bl daAlink_c_NS_procCanoePaddleGrabInit
/* 800F55F8 000F2538  48 00 01 0C */ b lbl_800F5704
lbl_800F55FC:
/* 800F55FC 000F253C  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 800F5600 000F2540  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800F5604 000F2544  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F5608 000F2548  40 81 00 1C */ ble lbl_800F5624
/* 800F560C 000F254C  28 03 01 0B */ cmplwi r3, 0x10b
/* 800F5610 000F2550  40 82 00 14 */ bne lbl_800F5624
/* 800F5614 000F2554  7F E3 FB 78 */ mr r3, r31
/* 800F5618 000F2558  38 80 FF FF */ li r4, -1
/* 800F561C 000F255C  48 00 01 01 */ bl daAlink_c_NS_procCanoeRowInit
/* 800F5620 000F2560  48 00 00 E4 */ b lbl_800F5704
lbl_800F5624:
/* 800F5624 000F2564  28 03 00 FF */ cmplwi r3, 0xff
/* 800F5628 000F2568  41 82 00 DC */ beq lbl_800F5704
/* 800F562C 000F256C  28 03 01 0B */ cmplwi r3, 0x10b
/* 800F5630 000F2570  41 82 00 D4 */ beq lbl_800F5704
/* 800F5634 000F2574  7F E3 FB 78 */ mr r3, r31
/* 800F5638 000F2578  38 80 00 D8 */ li r4, 0xd8
/* 800F563C 000F257C  4B FB 6F 1D */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 800F5640 000F2580  2C 03 00 00 */ cmpwi r3, 0
/* 800F5644 000F2584  40 82 00 24 */ bne lbl_800F5668
/* 800F5648 000F2588  80 7F 1F 2C */ lwz r3, 0x1f2c(r31)
/* 800F564C 000F258C  80 1F 1F 44 */ lwz r0, 0x1f44(r31)
/* 800F5650 000F2590  7C 03 00 40 */ cmplw r3, r0
/* 800F5654 000F2594  41 82 00 14 */ beq lbl_800F5668
/* 800F5658 000F2598  7F E3 FB 78 */ mr r3, r31
/* 800F565C 000F259C  38 80 00 D8 */ li r4, 0xd8
/* 800F5660 000F25A0  4B FB 79 21 */ bl daAlink_c_NS_setSingleAnimeBase
/* 800F5664 000F25A4  48 00 00 A0 */ b lbl_800F5704
lbl_800F5668:
/* 800F5668 000F25A8  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 800F566C 000F25AC  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800F5670 000F25B0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F5674 000F25B4  40 81 00 90 */ ble lbl_800F5704
/* 800F5678 000F25B8  7F E3 FB 78 */ mr r3, r31
/* 800F567C 000F25BC  38 80 00 00 */ li r4, 0
/* 800F5680 000F25C0  4B FC 41 BD */ bl daAlink_c_NS_allUnequip
/* 800F5684 000F25C4  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800F5688 000F25C8  A8 1F 2F E2 */ lha r0, 0x2fe2(r31)
/* 800F568C 000F25CC  7C 03 00 50 */ subf r0, r3, r0
/* 800F5690 000F25D0  7C 00 07 35 */ extsh. r0, r0
/* 800F5694 000F25D4  41 80 00 10 */ blt lbl_800F56A4
/* 800F5698 000F25D8  38 00 00 01 */ li r0, 1
/* 800F569C 000F25DC  B0 1F 30 12 */ sth r0, 0x3012(r31)
/* 800F56A0 000F25E0  48 00 00 64 */ b lbl_800F5704
lbl_800F56A4:
/* 800F56A4 000F25E4  38 00 00 00 */ li r0, 0
/* 800F56A8 000F25E8  B0 1F 30 12 */ sth r0, 0x3012(r31)
/* 800F56AC 000F25EC  48 00 00 58 */ b lbl_800F5704
lbl_800F56B0:
/* 800F56B0 000F25F0  7F E3 FB 78 */ mr r3, r31
/* 800F56B4 000F25F4  4B FC 3C 8D */ bl daAlink_c_NS_checkEquipAnime
/* 800F56B8 000F25F8  2C 03 00 00 */ cmpwi r3, 0
/* 800F56BC 000F25FC  41 82 00 48 */ beq lbl_800F5704
/* 800F56C0 000F2600  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800F56C4 000F2604  28 00 01 0B */ cmplwi r0, 0x10b
/* 800F56C8 000F2608  40 82 00 14 */ bne lbl_800F56DC
/* 800F56CC 000F260C  7F E3 FB 78 */ mr r3, r31
/* 800F56D0 000F2610  38 80 00 00 */ li r4, 0
/* 800F56D4 000F2614  48 00 07 D5 */ bl daAlink_c_NS_procCanoePaddlePutInit
/* 800F56D8 000F2618  48 00 00 2C */ b lbl_800F5704
lbl_800F56DC:
/* 800F56DC 000F261C  A0 1F 2F DE */ lhz r0, 0x2fde(r31)
/* 800F56E0 000F2620  28 00 01 05 */ cmplwi r0, 0x105
/* 800F56E4 000F2624  40 82 00 20 */ bne lbl_800F5704
/* 800F56E8 000F2628  80 7F 28 18 */ lwz r3, 0x2818(r31)
/* 800F56EC 000F262C  80 63 14 64 */ lwz r3, 0x1464(r3)
/* 800F56F0 000F2630  3C 03 00 01 */ addis r0, r3, 1
/* 800F56F4 000F2634  28 00 FF FF */ cmplwi r0, 0xffff
/* 800F56F8 000F2638  41 82 00 0C */ beq lbl_800F5704
/* 800F56FC 000F263C  7F E3 FB 78 */ mr r3, r31
/* 800F5700 000F2640  48 00 0C 21 */ bl daAlink_c_NS_procCanoeRodGrabInit
lbl_800F5704:
/* 800F5704 000F2644  38 60 00 01 */ li r3, 1
lbl_800F5708:
/* 800F5708 000F2648  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F570C 000F264C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F5710 000F2650  7C 08 03 A6 */ mtlr r0
/* 800F5714 000F2654  38 21 00 10 */ addi r1, r1, 0x10
/* 800F5718 000F2658  4E 80 00 20 */ blr
