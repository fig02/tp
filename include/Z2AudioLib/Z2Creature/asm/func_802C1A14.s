/* 802C1A14 002BE954  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 802C1A18 002BE958  7C 08 02 A6 */ mflr r0
/* 802C1A1C 002BE95C  90 01 00 24 */ stw r0, 0x24(r1)
/* 802C1A20 002BE960  39 61 00 20 */ addi r11, r1, 0x20
/* 802C1A24 002BE964  48 0A 07 B9 */ bl _savegpr_29
/* 802C1A28 002BE968  7C 7D 1B 78 */ mr r29, r3
/* 802C1A2C 002BE96C  7C 9E 23 78 */ mr r30, r4
/* 802C1A30 002BE970  7C BF 2B 78 */ mr r31, r5
/* 802C1A34 002BE974  88 83 00 A0 */ lbz r4, 0xa0(r3)
/* 802C1A38 002BE978  2C 04 00 2F */ cmpwi r4, 0x2f
/* 802C1A3C 002BE97C  41 82 00 40 */ beq lbl_802C1A7C
/* 802C1A40 002BE980  40 80 00 78 */ bge lbl_802C1AB8
/* 802C1A44 002BE984  2C 04 00 21 */ cmpwi r4, 0x21
/* 802C1A48 002BE988  41 82 00 08 */ beq lbl_802C1A50
/* 802C1A4C 002BE98C  48 00 00 6C */ b lbl_802C1AB8
lbl_802C1A50:
/* 802C1A50 002BE990  38 00 00 01 */ li r0, 1
/* 802C1A54 002BE994  98 1D 00 A3 */ stb r0, 0xa3(r29)
/* 802C1A58 002BE998  80 6D 86 04 */ lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 802C1A5C 002BE99C  88 8D 82 E9 */ lbz r4, lbl_80450869-_SDA_BASE_(r13)
/* 802C1A60 002BE9A0  4B FF 30 9D */ bl Z2SeqMgr_NS_setBattleLastHit
/* 802C1A64 002BE9A4  38 7D 00 08 */ addi r3, r29, 8
/* 802C1A68 002BE9A8  7F C4 F3 78 */ mr r4, r30
/* 802C1A6C 002BE9AC  7F E5 FB 78 */ mr r5, r31
/* 802C1A70 002BE9B0  38 C0 00 00 */ li r6, 0
/* 802C1A74 002BE9B4  4B FF CA 31 */ bl Z2SoundObjBase_NS_startCollisionSE
/* 802C1A78 002BE9B8  48 00 00 EC */ b lbl_802C1B64
lbl_802C1A7C:
/* 802C1A7C 002BE9BC  80 1D 00 94 */ lwz r0, 0x94(r29)
/* 802C1A80 002BE9C0  28 00 00 00 */ cmplwi r0, 0
/* 802C1A84 002BE9C4  41 82 00 1C */ beq lbl_802C1AA0
/* 802C1A88 002BE9C8  7F A4 EB 78 */ mr r4, r29
/* 802C1A8C 002BE9CC  28 1D 00 00 */ cmplwi r29, 0
/* 802C1A90 002BE9D0  41 82 00 08 */ beq lbl_802C1A98
/* 802C1A94 002BE9D4  38 84 00 90 */ addi r4, r4, 0x90
lbl_802C1A98:
/* 802C1A98 002BE9D8  80 6D 85 C8 */ lwz r3, lbl_80450B48-_SDA_BASE_(r13)
/* 802C1A9C 002BE9DC  4B FF E6 F5 */ bl Z2SoundObjMgr_NS_removeEnemy
lbl_802C1AA0:
/* 802C1AA0 002BE9E0  38 7D 00 08 */ addi r3, r29, 8
/* 802C1AA4 002BE9E4  7F C4 F3 78 */ mr r4, r30
/* 802C1AA8 002BE9E8  7F E5 FB 78 */ mr r5, r31
/* 802C1AAC 002BE9EC  38 C0 00 00 */ li r6, 0
/* 802C1AB0 002BE9F0  4B FF C9 F5 */ bl Z2SoundObjBase_NS_startCollisionSE
/* 802C1AB4 002BE9F4  48 00 00 B0 */ b lbl_802C1B64
lbl_802C1AB8:
/* 802C1AB8 002BE9F8  38 1F FF E2 */ addi r0, r31, -30
/* 802C1ABC 002BE9FC  28 00 00 16 */ cmplwi r0, 0x16
/* 802C1AC0 002BEA00  41 81 00 90 */ bgt lbl_802C1B50
/* 802C1AC4 002BEA04  3C 60 80 3D */ lis r3, lbl_803CB724@ha
/* 802C1AC8 002BEA08  38 63 B7 24 */ addi r3, r3, lbl_803CB724@l
/* 802C1ACC 002BEA0C  54 00 10 3A */ slwi r0, r0, 2
/* 802C1AD0 002BEA10  7C 03 00 2E */ lwzx r0, r3, r0
/* 802C1AD4 002BEA14  7C 09 03 A6 */ mtctr r0
/* 802C1AD8 002BEA18  4E 80 04 20 */ bctr
/* 802C1ADC 002BEA1C  80 6D 86 04 */ lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 802C1AE0 002BEA20  38 80 00 02 */ li r4, 2
/* 802C1AE4 002BEA24  4B FF 2D 61 */ bl Z2SeqMgr_NS_setBattleSeqState
/* 802C1AE8 002BEA28  48 00 00 68 */ b lbl_802C1B50
/* 802C1AEC 002BEA2C  38 00 00 01 */ li r0, 1
/* 802C1AF0 002BEA30  98 1D 00 A3 */ stb r0, 0xa3(r29)
/* 802C1AF4 002BEA34  88 8D 82 E9 */ lbz r4, lbl_80450869-_SDA_BASE_(r13)
/* 802C1AF8 002BEA38  3C 1E FF FC */ addis r0, r30, 0xfffc
/* 802C1AFC 002BEA3C  28 00 00 01 */ cmplwi r0, 1
/* 802C1B00 002BEA40  40 81 00 0C */ ble lbl_802C1B0C
/* 802C1B04 002BEA44  28 00 00 03 */ cmplwi r0, 3
/* 802C1B08 002BEA48  40 82 00 08 */ bne lbl_802C1B10
lbl_802C1B0C:
/* 802C1B0C 002BEA4C  38 80 00 14 */ li r4, 0x14
lbl_802C1B10:
/* 802C1B10 002BEA50  80 6D 86 04 */ lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 802C1B14 002BEA54  4B FF 2F E9 */ bl Z2SeqMgr_NS_setBattleLastHit
/* 802C1B18 002BEA58  48 00 00 38 */ b lbl_802C1B50
/* 802C1B1C 002BEA5C  28 04 00 2B */ cmplwi r4, 0x2b
/* 802C1B20 002BEA60  40 82 00 1C */ bne lbl_802C1B3C
/* 802C1B24 002BEA64  38 00 00 01 */ li r0, 1
/* 802C1B28 002BEA68  98 1D 00 A3 */ stb r0, 0xa3(r29)
/* 802C1B2C 002BEA6C  80 6D 86 04 */ lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 802C1B30 002BEA70  88 8D 82 E9 */ lbz r4, lbl_80450869-_SDA_BASE_(r13)
/* 802C1B34 002BEA74  4B FF 2F C9 */ bl Z2SeqMgr_NS_setBattleLastHit
/* 802C1B38 002BEA78  48 00 00 18 */ b lbl_802C1B50
lbl_802C1B3C:
/* 802C1B3C 002BEA7C  28 04 00 16 */ cmplwi r4, 0x16
/* 802C1B40 002BEA80  40 82 00 10 */ bne lbl_802C1B50
/* 802C1B44 002BEA84  80 6D 86 04 */ lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 802C1B48 002BEA88  38 80 00 02 */ li r4, 2
/* 802C1B4C 002BEA8C  4B FF 2C F9 */ bl Z2SeqMgr_NS_setBattleSeqState
lbl_802C1B50:
/* 802C1B50 002BEA90  38 7D 00 08 */ addi r3, r29, 8
/* 802C1B54 002BEA94  7F C4 F3 78 */ mr r4, r30
/* 802C1B58 002BEA98  7F E5 FB 78 */ mr r5, r31
/* 802C1B5C 002BEA9C  38 C0 00 00 */ li r6, 0
/* 802C1B60 002BEAA0  4B FF C9 45 */ bl Z2SoundObjBase_NS_startCollisionSE
lbl_802C1B64:
/* 802C1B64 002BEAA4  39 61 00 20 */ addi r11, r1, 0x20
/* 802C1B68 002BEAA8  48 0A 06 C1 */ bl _restgpr_29
/* 802C1B6C 002BEAAC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802C1B70 002BEAB0  7C 08 03 A6 */ mtlr r0
/* 802C1B74 002BEAB4  38 21 00 20 */ addi r1, r1, 0x20
/* 802C1B78 002BEAB8  4E 80 00 20 */ blr