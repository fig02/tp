/* 801044B4 001013F4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801044B8 001013F8  7C 08 02 A6 */ mflr r0
/* 801044BC 001013FC  90 01 00 14 */ stw r0, 0x14(r1)
/* 801044C0 00101400  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801044C4 00101404  7C 7F 1B 78 */ mr r31, r3
/* 801044C8 00101408  80 03 06 14 */ lwz r0, 0x614(r3)
/* 801044CC 0010140C  28 00 00 06 */ cmplwi r0, 6
/* 801044D0 00101410  41 82 00 0C */ beq lbl_801044DC
/* 801044D4 00101414  28 00 00 08 */ cmplwi r0, 8
/* 801044D8 00101418  40 82 00 14 */ bne lbl_801044EC
lbl_801044DC:
/* 801044DC 0010141C  7F E3 FB 78 */ mr r3, r31
/* 801044E0 00101420  48 01 40 8D */ bl daAlink_c_NS_setShapeAngleToTalkActor
/* 801044E4 00101424  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 801044E8 00101428  B0 1F 04 DE */ sth r0, 0x4de(r31)
lbl_801044EC:
/* 801044EC 0010142C  7F E3 FB 78 */ mr r3, r31
/* 801044F0 00101430  4B FF D5 B9 */ bl daAlink_c_NS_getSwimMaxFallSpeed
/* 801044F4 00101434  D0 3F 05 34 */ stfs f1, 0x534(r31)
/* 801044F8 00101438  7F E3 FB 78 */ mr r3, r31
/* 801044FC 0010143C  4B FF D5 1D */ bl daAlink_c_NS_getSwimFrontMaxSpeed
/* 80104500 00101440  D0 3F 05 94 */ stfs f1, 0x594(r31)
/* 80104504 00101444  7F E3 FB 78 */ mr r3, r31
/* 80104508 00101448  4B FF DE DD */ bl daAlink_c_NS_setSpeedAndAngleSwim
/* 8010450C 0010144C  A0 7F 2F DC */ lhz r3, 0x2fdc(r31)
/* 80104510 00101450  80 1F 32 CC */ lwz r0, 0x32cc(r31)
/* 80104514 00101454  7C 03 00 40 */ cmplw r3, r0
/* 80104518 00101458  41 82 00 24 */ beq lbl_8010453C
/* 8010451C 0010145C  90 7F 32 CC */ stw r3, 0x32cc(r31)
/* 80104520 00101460  7F E3 FB 78 */ mr r3, r31
/* 80104524 00101464  38 80 00 14 */ li r4, 0x14
/* 80104528 00101468  3C A0 80 39 */ lis r5, lbl_8038ED2C@ha
/* 8010452C 0010146C  38 A5 ED 2C */ addi r5, r5, lbl_8038ED2C@l
/* 80104530 00101470  C0 25 00 90 */ lfs f1, 0x90(r5)
/* 80104534 00101474  C0 45 00 94 */ lfs f2, 0x94(r5)
/* 80104538 00101478  4B FA 8A A9 */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
lbl_8010453C:
/* 8010453C 0010147C  7F E3 FB 78 */ mr r3, r31
/* 80104540 00101480  4B FF FA F5 */ bl daAlink_c_NS_setSwimUpDownOffset
/* 80104544 00101484  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 80104548 00101488  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 8010454C 0010148C  41 82 00 1C */ beq lbl_80104568
/* 80104550 00101490  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 80104554 00101494  28 00 00 FF */ cmplwi r0, 0xff
/* 80104558 00101498  41 82 00 10 */ beq lbl_80104568
/* 8010455C 0010149C  7F E3 FB 78 */ mr r3, r31
/* 80104560 001014A0  38 80 00 04 */ li r4, 4
/* 80104564 001014A4  4B FA EC ED */ bl setDoStatus__9daAlink_cFUc
lbl_80104568:
/* 80104568 001014A8  7F E3 FB 78 */ mr r3, r31
/* 8010456C 001014AC  4B FF EA ED */ bl daAlink_c_NS_checkSwimUpAction
/* 80104570 001014B0  2C 03 00 00 */ cmpwi r3, 0
/* 80104574 001014B4  41 82 00 0C */ beq lbl_80104580
/* 80104578 001014B8  38 60 00 01 */ li r3, 1
/* 8010457C 001014BC  48 00 00 E0 */ b lbl_8010465C
lbl_80104580:
/* 80104580 001014C0  7F E3 FB 78 */ mr r3, r31
/* 80104584 001014C4  4B FF E4 45 */ bl daAlink_c_NS_checkNextActionSwim
/* 80104588 001014C8  2C 03 00 00 */ cmpwi r3, 0
/* 8010458C 001014CC  41 82 00 0C */ beq lbl_80104598
/* 80104590 001014D0  38 60 00 01 */ li r3, 1
/* 80104594 001014D4  48 00 00 C8 */ b lbl_8010465C
lbl_80104598:
/* 80104598 001014D8  7F E3 FB 78 */ mr r3, r31
/* 8010459C 001014DC  4B FB 24 95 */ bl daAlink_c_NS_checkFrontWallTypeAction
/* 801045A0 001014E0  2C 03 00 00 */ cmpwi r3, 0
/* 801045A4 001014E4  41 82 00 18 */ beq lbl_801045BC
/* 801045A8 001014E8  7F E3 FB 78 */ mr r3, r31
/* 801045AC 001014EC  38 80 00 01 */ li r4, 1
/* 801045B0 001014F0  4B FF ED 19 */ bl daAlink_c_NS_swimOutAfter
/* 801045B4 001014F4  38 60 00 01 */ li r3, 1
/* 801045B8 001014F8  48 00 00 A4 */ b lbl_8010465C
lbl_801045BC:
/* 801045BC 001014FC  7F E3 FB 78 */ mr r3, r31
/* 801045C0 00101500  4B FF F9 21 */ bl daAlink_c_NS_checkSwimButtonAccept
/* 801045C4 00101504  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801045C8 00101508  41 82 00 1C */ beq lbl_801045E4
/* 801045CC 0010150C  88 1F 2F 8D */ lbz r0, 0x2f8d(r31)
/* 801045D0 00101510  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801045D4 00101514  41 82 00 10 */ beq lbl_801045E4
/* 801045D8 00101518  7F E3 FB 78 */ mr r3, r31
/* 801045DC 0010151C  48 00 03 7D */ bl daAlink_c_NS_procSwimDiveInit
/* 801045E0 00101520  48 00 00 78 */ b lbl_80104658
lbl_801045E4:
/* 801045E4 00101524  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 801045E8 00101528  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 801045EC 0010152C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801045F0 00101530  40 81 00 20 */ ble lbl_80104610
/* 801045F4 00101534  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 801045F8 00101538  3C 60 80 39 */ lis r3, lbl_8038ED2C@ha
/* 801045FC 0010153C  38 63 ED 2C */ addi r3, r3, lbl_8038ED2C@l
/* 80104600 00101540  C0 03 00 C8 */ lfs f0, 0xc8(r3)
/* 80104604 00101544  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80104608 00101548  4C 41 13 82 */ cror 2, 1, 2
/* 8010460C 0010154C  41 82 00 20 */ beq lbl_8010462C
lbl_80104610:
/* 80104610 00101550  7F E3 FB 78 */ mr r3, r31
/* 80104614 00101554  4B FF F8 F5 */ bl daAlink_c_NS_checkUpSwimButtonAccept
/* 80104618 00101558  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010461C 0010155C  41 82 00 3C */ beq lbl_80104658
/* 80104620 00101560  88 1F 2F 8E */ lbz r0, 0x2f8e(r31)
/* 80104624 00101564  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80104628 00101568  41 82 00 30 */ beq lbl_80104658
lbl_8010462C:
/* 8010462C 0010156C  7F E3 FB 78 */ mr r3, r31
/* 80104630 00101570  4B FF F8 D9 */ bl daAlink_c_NS_checkUpSwimButtonAccept
/* 80104634 00101574  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80104638 00101578  41 82 00 18 */ beq lbl_80104650
/* 8010463C 0010157C  88 1F 2F 8E */ lbz r0, 0x2f8e(r31)
/* 80104640 00101580  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80104644 00101584  41 82 00 0C */ beq lbl_80104650
/* 80104648 00101588  38 00 00 1E */ li r0, 0x1e
/* 8010464C 0010158C  B0 1F 30 00 */ sth r0, 0x3000(r31)
lbl_80104650:
/* 80104650 00101590  7F E3 FB 78 */ mr r3, r31
/* 80104654 00101594  48 00 00 1D */ bl daAlink_c_NS_procSwimMoveInit
lbl_80104658:
/* 80104658 00101598  38 60 00 01 */ li r3, 1
lbl_8010465C:
/* 8010465C 0010159C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80104660 001015A0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80104664 001015A4  7C 08 03 A6 */ mtlr r0
/* 80104668 001015A8  38 21 00 10 */ addi r1, r1, 0x10
/* 8010466C 001015AC  4E 80 00 20 */ blr
