/* 80120440 0011D380  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80120444 0011D384  7C 08 02 A6 */ mflr r0
/* 80120448 0011D388  90 01 00 14 */ stw r0, 0x14(r1)
/* 8012044C 0011D38C  80 03 05 74 */ lwz r0, 0x574(r3)
/* 80120450 0011D390  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 80120454 0011D394  41 82 00 0C */ beq lbl_80120460
/* 80120458 0011D398  48 00 D8 B1 */ bl procWolfWaitTurnInit__9daAlink_cFv
/* 8012045C 0011D39C  48 00 00 08 */ b lbl_80120464
lbl_80120460:
/* 80120460 0011D3A0  4B FA 36 35 */ bl procWaitTurnInit__9daAlink_cFv
lbl_80120464:
/* 80120464 0011D3A4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80120468 0011D3A8  7C 08 03 A6 */ mtlr r0
/* 8012046C 0011D3AC  38 21 00 10 */ addi r1, r1, 0x10
/* 80120470 0011D3B0  4E 80 00 20 */ blr