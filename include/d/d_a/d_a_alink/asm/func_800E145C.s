/* 800E145C 000DE39C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800E1460 000DE3A0  7C 08 02 A6 */ mflr r0
/* 800E1464 000DE3A4  90 01 00 24 */ stw r0, 0x24(r1)
/* 800E1468 000DE3A8  39 61 00 20 */ addi r11, r1, 0x20
/* 800E146C 000DE3AC  48 28 0D 6D */ bl _savegpr_28
/* 800E1470 000DE3B0  7C 7C 1B 78 */ mr r28, r3
/* 800E1474 000DE3B4  3B E0 00 01 */ li r31, 1
/* 800E1478 000DE3B8  7F FE FB 78 */ mr r30, r31
/* 800E147C 000DE3BC  3B A0 00 00 */ li r29, 0
/* 800E1480 000DE3C0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800E1484 000DE3C4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800E1488 000DE3C8  38 63 07 F0 */ addi r3, r3, 0x7f0
/* 800E148C 000DE3CC  38 80 25 80 */ li r4, 0x2580
/* 800E1490 000DE3D0  4B F5 35 2D */ bl isEventBit__11dSv_event_cCFUs
/* 800E1494 000DE3D4  2C 03 00 00 */ cmpwi r3, 0
/* 800E1498 000DE3D8  41 82 00 30 */ beq lbl_800E14C8
/* 800E149C 000DE3DC  38 60 00 00 */ li r3, 0
/* 800E14A0 000DE3E0  A0 1C 2F E8 */ lhz r0, 0x2fe8(r28)
/* 800E14A4 000DE3E4  28 00 01 47 */ cmplwi r0, 0x147
/* 800E14A8 000DE3E8  40 82 00 14 */ bne lbl_800E14BC
/* 800E14AC 000DE3EC  A8 1C 30 0E */ lha r0, 0x300e(r28)
/* 800E14B0 000DE3F0  2C 00 00 00 */ cmpwi r0, 0
/* 800E14B4 000DE3F4  41 82 00 08 */ beq lbl_800E14BC
/* 800E14B8 000DE3F8  38 60 00 01 */ li r3, 1
lbl_800E14BC:
/* 800E14BC 000DE3FC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E14C0 000DE400  40 82 00 08 */ bne lbl_800E14C8
/* 800E14C4 000DE404  3B A0 00 01 */ li r29, 1
lbl_800E14C8:
/* 800E14C8 000DE408  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 800E14CC 000DE40C  40 82 00 30 */ bne lbl_800E14FC
/* 800E14D0 000DE410  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800E14D4 000DE414  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800E14D8 000DE418  85 83 4E 20 */ lwzu r12, 0x4e20(r3)
/* 800E14DC 000DE41C  81 8C 00 BC */ lwz r12, 0xbc(r12)
/* 800E14E0 000DE420  7D 89 03 A6 */ mtctr r12
/* 800E14E4 000DE424  4E 80 04 21 */ bctrl
/* 800E14E8 000DE428  88 03 00 09 */ lbz r0, 9(r3)
/* 800E14EC 000DE42C  54 00 FE FE */ rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 800E14F0 000DE430  2C 00 00 15 */ cmpwi r0, 0x15
/* 800E14F4 000DE434  41 82 00 08 */ beq lbl_800E14FC
/* 800E14F8 000DE438  3B C0 00 00 */ li r30, 0
lbl_800E14FC:
/* 800E14FC 000DE43C  57 C0 06 3F */ clrlwi. r0, r30, 0x18
/* 800E1500 000DE440  40 82 00 14 */ bne lbl_800E1514
/* 800E1504 000DE444  4B FF FF 05 */ bl daAlink_c_NS_checkForestOldCentury
/* 800E1508 000DE448  2C 03 00 00 */ cmpwi r3, 0
/* 800E150C 000DE44C  40 82 00 08 */ bne lbl_800E1514
/* 800E1510 000DE450  3B E0 00 00 */ li r31, 0
lbl_800E1514:
/* 800E1514 000DE454  57 E3 06 3E */ clrlwi r3, r31, 0x18
/* 800E1518 000DE458  39 61 00 20 */ addi r11, r1, 0x20
/* 800E151C 000DE45C  48 28 0D 09 */ bl _restgpr_28
/* 800E1520 000DE460  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800E1524 000DE464  7C 08 03 A6 */ mtlr r0
/* 800E1528 000DE468  38 21 00 20 */ addi r1, r1, 0x20
/* 800E152C 000DE46C  4E 80 00 20 */ blr