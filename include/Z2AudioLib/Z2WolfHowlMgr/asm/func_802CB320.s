/* 802CB320 002C8260  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802CB324 002C8264  80 A3 00 0C */ lwz r5, 0xc(r3)
/* 802CB328 002C8268  28 05 00 00 */ cmplwi r5, 0
/* 802CB32C 002C826C  41 82 00 14 */ beq lbl_802CB340
/* 802CB330 002C8270  54 83 06 3E */ clrlwi r3, r4, 0x18
/* 802CB334 002C8274  88 05 00 00 */ lbz r0, 0(r5)
/* 802CB338 002C8278  7C 03 00 40 */ cmplw r3, r0
/* 802CB33C 002C827C  41 80 00 1C */ blt lbl_802CB358
lbl_802CB340:
/* 802CB340 002C8280  38 00 00 00 */ li r0, 0
/* 802CB344 002C8284  98 01 00 08 */ stb r0, 8(r1)
/* 802CB348 002C8288  98 01 00 09 */ stb r0, 9(r1)
/* 802CB34C 002C828C  A0 01 00 08 */ lhz r0, 8(r1)
/* 802CB350 002C8290  54 03 80 1E */ slwi r3, r0, 0x10
/* 802CB354 002C8294  48 00 00 14 */ b lbl_802CB368
lbl_802CB358:
/* 802CB358 002C8298  80 65 00 04 */ lwz r3, 4(r5)
/* 802CB35C 002C829C  54 80 0D FC */ rlwinm r0, r4, 1, 0x17, 0x1e
/* 802CB360 002C82A0  7C 03 02 2E */ lhzx r0, r3, r0
/* 802CB364 002C82A4  54 03 80 1E */ slwi r3, r0, 0x10
lbl_802CB368:
/* 802CB368 002C82A8  38 21 00 10 */ addi r1, r1, 0x10
/* 802CB36C 002C82AC  4E 80 00 20 */ blr
