/* 800E7460 000E43A0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E7464 000E43A4  7C 08 02 A6 */ mflr r0
/* 800E7468 000E43A8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E746C 000E43AC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E7470 000E43B0  93 C1 00 08 */ stw r30, 8(r1)
/* 800E7474 000E43B4  7C 7F 1B 78 */ mr r31, r3
/* 800E7478 000E43B8  A8 03 30 10 */ lha r0, 0x3010(r3)
/* 800E747C 000E43BC  2C 00 00 00 */ cmpwi r0, 0
/* 800E7480 000E43C0  40 82 00 28 */ bne lbl_800E74A8
/* 800E7484 000E43C4  80 1F 28 30 */ lwz r0, 0x2830(r31)
/* 800E7488 000E43C8  28 00 00 00 */ cmplwi r0, 0
/* 800E748C 000E43CC  40 82 00 1C */ bne lbl_800E74A8
/* 800E7490 000E43D0  80 1F 28 28 */ lwz r0, 0x2828(r31)
/* 800E7494 000E43D4  28 00 00 00 */ cmplwi r0, 0
/* 800E7498 000E43D8  40 82 00 10 */ bne lbl_800E74A8
/* 800E749C 000E43DC  38 80 00 00 */ li r4, 0
/* 800E74A0 000E43E0  4B FD 2C 31 */ bl daAlink_c_NS_checkNextAction
/* 800E74A4 000E43E4  48 00 01 30 */ b lbl_800E75D4
lbl_800E74A8:
/* 800E74A8 000E43E8  3B DF 1F D0 */ addi r30, r31, 0x1fd0
/* 800E74AC 000E43EC  A8 1F 30 0E */ lha r0, 0x300e(r31)
/* 800E74B0 000E43F0  2C 00 00 00 */ cmpwi r0, 0
/* 800E74B4 000E43F4  41 82 00 80 */ beq lbl_800E7534
/* 800E74B8 000E43F8  7F C3 F3 78 */ mr r3, r30
/* 800E74BC 000E43FC  48 07 70 11 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800E74C0 000E4400  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E74C4 000E4404  41 82 00 30 */ beq lbl_800E74F4
/* 800E74C8 000E4408  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 800E74CC 000E440C  2C 00 00 00 */ cmpwi r0, 0
/* 800E74D0 000E4410  41 82 00 14 */ beq lbl_800E74E4
/* 800E74D4 000E4414  7F E3 FB 78 */ mr r3, r31
/* 800E74D8 000E4418  38 80 00 00 */ li r4, 0
/* 800E74DC 000E441C  48 02 8D F5 */ bl daAlink_c_NS_procBottleGetInit
/* 800E74E0 000E4420  48 00 00 F0 */ b lbl_800E75D0
lbl_800E74E4:
/* 800E74E4 000E4424  7F E3 FB 78 */ mr r3, r31
/* 800E74E8 000E4428  38 80 00 00 */ li r4, 0
/* 800E74EC 000E442C  4B FD 2B E5 */ bl daAlink_c_NS_checkNextAction
/* 800E74F0 000E4430  48 00 00 E0 */ b lbl_800E75D0
lbl_800E74F4:
/* 800E74F4 000E4434  7F C3 F3 78 */ mr r3, r30
/* 800E74F8 000E4438  C0 3F 34 78 */ lfs f1, 0x3478(r31)
/* 800E74FC 000E443C  48 24 0F 31 */ bl J3DFrameCtrl_NS_checkPass
/* 800E7500 000E4440  2C 03 00 00 */ cmpwi r3, 0
/* 800E7504 000E4444  41 82 00 CC */ beq lbl_800E75D0
/* 800E7508 000E4448  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 800E750C 000E444C  60 00 80 00 */ ori r0, r0, 0x8000
/* 800E7510 000E4450  90 1F 05 80 */ stw r0, 0x580(r31)
/* 800E7514 000E4454  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 800E7518 000E4458  2C 00 00 00 */ cmpwi r0, 0
/* 800E751C 000E445C  41 82 00 B4 */ beq lbl_800E75D0
/* 800E7520 000E4460  38 00 00 48 */ li r0, 0x48
/* 800E7524 000E4464  B0 1F 2F DC */ sth r0, 0x2fdc(r31)
/* 800E7528 000E4468  7F E3 FB 78 */ mr r3, r31
/* 800E752C 000E446C  48 02 99 59 */ bl daAlink_c_NS_setKandelaarModel
/* 800E7530 000E4470  48 00 00 A0 */ b lbl_800E75D0
lbl_800E7534:
/* 800E7534 000E4474  7F C3 F3 78 */ mr r3, r30
/* 800E7538 000E4478  48 07 6F 95 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800E753C 000E447C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E7540 000E4480  41 82 00 14 */ beq lbl_800E7554
/* 800E7544 000E4484  7F E3 FB 78 */ mr r3, r31
/* 800E7548 000E4488  38 80 00 00 */ li r4, 0
/* 800E754C 000E448C  4B FD 2B 85 */ bl daAlink_c_NS_checkNextAction
/* 800E7550 000E4490  48 00 00 80 */ b lbl_800E75D0
lbl_800E7554:
/* 800E7554 000E4494  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 800E7558 000E4498  3C 60 80 39 */ lis r3, lbl_8038E840@ha
/* 800E755C 000E449C  38 63 E8 40 */ addi r3, r3, lbl_8038E840@l
/* 800E7560 000E44A0  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 800E7564 000E44A4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E7568 000E44A8  40 81 00 20 */ ble lbl_800E7588
/* 800E756C 000E44AC  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800E7570 000E44B0  60 00 00 04 */ ori r0, r0, 4
/* 800E7574 000E44B4  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 800E7578 000E44B8  7F E3 FB 78 */ mr r3, r31
/* 800E757C 000E44BC  38 80 00 01 */ li r4, 1
/* 800E7580 000E44C0  4B FD 2B 51 */ bl daAlink_c_NS_checkNextAction
/* 800E7584 000E44C4  48 00 00 4C */ b lbl_800E75D0
lbl_800E7588:
/* 800E7588 000E44C8  7F C3 F3 78 */ mr r3, r30
/* 800E758C 000E44CC  C0 22 93 34 */ lfs f1, lbl_80452D34-_SDA2_BASE_(r2)
/* 800E7590 000E44D0  48 24 0E 9D */ bl J3DFrameCtrl_NS_checkPass
/* 800E7594 000E44D4  2C 03 00 00 */ cmpwi r3, 0
/* 800E7598 000E44D8  41 82 00 38 */ beq lbl_800E75D0
/* 800E759C 000E44DC  38 00 01 02 */ li r0, 0x102
/* 800E75A0 000E44E0  B0 1F 2F DC */ sth r0, 0x2fdc(r31)
/* 800E75A4 000E44E4  80 1F 28 2C */ lwz r0, 0x282c(r31)
/* 800E75A8 000E44E8  90 1F 28 24 */ stw r0, 0x2824(r31)
/* 800E75AC 000E44EC  80 1F 28 30 */ lwz r0, 0x2830(r31)
/* 800E75B0 000E44F0  90 1F 28 28 */ stw r0, 0x2828(r31)
/* 800E75B4 000E44F4  38 7F 28 2C */ addi r3, r31, 0x282c
/* 800E75B8 000E44F8  48 07 77 45 */ bl daPy_actorKeep_c_NS_clearData
/* 800E75BC 000E44FC  38 00 00 03 */ li r0, 3
/* 800E75C0 000E4500  98 1F 2F 94 */ stb r0, 0x2f94(r31)
/* 800E75C4 000E4504  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 800E75C8 000E4508  60 00 80 00 */ ori r0, r0, 0x8000
/* 800E75CC 000E450C  90 1F 05 80 */ stw r0, 0x580(r31)
lbl_800E75D0:
/* 800E75D0 000E4510  38 60 00 01 */ li r3, 1
lbl_800E75D4:
/* 800E75D4 000E4514  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E75D8 000E4518  83 C1 00 08 */ lwz r30, 8(r1)
/* 800E75DC 000E451C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E75E0 000E4520  7C 08 03 A6 */ mtlr r0
/* 800E75E4 000E4524  38 21 00 10 */ addi r1, r1, 0x10
/* 800E75E8 000E4528  4E 80 00 20 */ blr