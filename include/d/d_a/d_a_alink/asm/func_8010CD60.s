/* 8010CD60 00109CA0  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8010CD64 00109CA4  7C 08 02 A6 */ mflr r0
/* 8010CD68 00109CA8  90 01 00 24 */ stw r0, 0x24(r1)
/* 8010CD6C 00109CAC  39 61 00 20 */ addi r11, r1, 0x20
/* 8010CD70 00109CB0  48 25 54 69 */ bl _savegpr_28
/* 8010CD74 00109CB4  7C 7F 1B 78 */ mr r31, r3
/* 8010CD78 00109CB8  4B FF BC A1 */ bl daAlink_c_NS_checkHookshotWait
/* 8010CD7C 00109CBC  2C 03 00 00 */ cmpwi r3, 0
/* 8010CD80 00109CC0  41 82 00 10 */ beq lbl_8010CD90
/* 8010CD84 00109CC4  7F E3 FB 78 */ mr r3, r31
/* 8010CD88 00109CC8  38 80 00 12 */ li r4, 0x12
/* 8010CD8C 00109CCC  4B FA 64 C5 */ bl setDoStatus__9daAlink_cFUc
lbl_8010CD90:
/* 8010CD90 00109CD0  7F E3 FB 78 */ mr r3, r31
/* 8010CD94 00109CD4  4B FF EB D9 */ bl daAlink_c_NS_commonHookshotRoofWait
/* 8010CD98 00109CD8  2C 03 00 00 */ cmpwi r3, 0
/* 8010CD9C 00109CDC  41 82 00 0C */ beq lbl_8010CDA8
/* 8010CDA0 00109CE0  38 60 00 01 */ li r3, 1
/* 8010CDA4 00109CE4  48 00 01 B0 */ b lbl_8010CF54
lbl_8010CDA8:
/* 8010CDA8 00109CE8  7F E3 FB 78 */ mr r3, r31
/* 8010CDAC 00109CEC  4B FF BC 6D */ bl daAlink_c_NS_checkHookshotWait
/* 8010CDB0 00109CF0  2C 03 00 00 */ cmpwi r3, 0
/* 8010CDB4 00109CF4  41 82 00 10 */ beq lbl_8010CDC4
/* 8010CDB8 00109CF8  7F E3 FB 78 */ mr r3, r31
/* 8010CDBC 00109CFC  38 80 00 00 */ li r4, 0
/* 8010CDC0 00109D00  4B FA 69 75 */ bl daAlink_c_NS_setShapeAngleToAtnActor
lbl_8010CDC4:
/* 8010CDC4 00109D04  38 00 00 00 */ li r0, 0
/* 8010CDC8 00109D08  98 1F 20 68 */ stb r0, 0x2068(r31)
/* 8010CDCC 00109D0C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010CDD0 00109D10  3B C3 61 C0 */ addi r30, r3, g_dComIfG_gameInfo@l
/* 8010CDD4 00109D14  80 1E 5F 18 */ lwz r0, 0x5f18(r30)
/* 8010CDD8 00109D18  54 00 03 98 */ rlwinm r0, r0, 0, 0xe, 0xc
/* 8010CDDC 00109D1C  90 1E 5F 18 */ stw r0, 0x5f18(r30)
/* 8010CDE0 00109D20  A8 1F 30 8E */ lha r0, 0x308e(r31)
/* 8010CDE4 00109D24  2C 00 00 00 */ cmpwi r0, 0
/* 8010CDE8 00109D28  41 82 00 20 */ beq lbl_8010CE08
/* 8010CDEC 00109D2C  7F E3 FB 78 */ mr r3, r31
/* 8010CDF0 00109D30  4B FF BC 29 */ bl daAlink_c_NS_checkHookshotWait
/* 8010CDF4 00109D34  2C 03 00 00 */ cmpwi r3, 0
/* 8010CDF8 00109D38  41 82 00 10 */ beq lbl_8010CE08
/* 8010CDFC 00109D3C  A8 7F 30 8E */ lha r3, 0x308e(r31)
/* 8010CE00 00109D40  38 03 FF FF */ addi r0, r3, -1
/* 8010CE04 00109D44  B0 1F 30 8E */ sth r0, 0x308e(r31)
lbl_8010CE08:
/* 8010CE08 00109D48  7F E3 FB 78 */ mr r3, r31
/* 8010CE0C 00109D4C  4B FF C4 79 */ bl daAlink_c_NS_checkUpperItemActionHookshot
/* 8010CE10 00109D50  2C 03 00 00 */ cmpwi r3, 0
/* 8010CE14 00109D54  40 82 01 3C */ bne lbl_8010CF50
/* 8010CE18 00109D58  A8 1F 30 0E */ lha r0, 0x300e(r31)
/* 8010CE1C 00109D5C  B0 1F 05 9C */ sth r0, 0x59c(r31)
/* 8010CE20 00109D60  83 BF 27 E0 */ lwz r29, 0x27e0(r31)
/* 8010CE24 00109D64  3B 80 00 01 */ li r28, 1
/* 8010CE28 00109D68  7F A3 EB 78 */ mr r3, r29
/* 8010CE2C 00109D6C  4B F6 69 B9 */ bl dAttention_c_NS_LockonTruth
/* 8010CE30 00109D70  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010CE34 00109D74  40 82 00 14 */ bne lbl_8010CE48
/* 8010CE38 00109D78  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 8010CE3C 00109D7C  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 8010CE40 00109D80  40 82 00 08 */ bne lbl_8010CE48
/* 8010CE44 00109D84  3B 80 00 00 */ li r28, 0
lbl_8010CE48:
/* 8010CE48 00109D88  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 8010CE4C 00109D8C  40 82 00 74 */ bne lbl_8010CEC0
/* 8010CE50 00109D90  A8 1F 30 8E */ lha r0, 0x308e(r31)
/* 8010CE54 00109D94  2C 00 00 00 */ cmpwi r0, 0
/* 8010CE58 00109D98  40 82 00 68 */ bne lbl_8010CEC0
/* 8010CE5C 00109D9C  7F E3 FB 78 */ mr r3, r31
/* 8010CE60 00109DA0  4B FF BB B9 */ bl daAlink_c_NS_checkHookshotWait
/* 8010CE64 00109DA4  2C 03 00 00 */ cmpwi r3, 0
/* 8010CE68 00109DA8  41 82 00 40 */ beq lbl_8010CEA8
/* 8010CE6C 00109DAC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8010CE70 00109DB0  D0 1F 1F DC */ stfs f0, 0x1fdc(r31)
/* 8010CE74 00109DB4  D0 1F 1F E0 */ stfs f0, 0x1fe0(r31)
/* 8010CE78 00109DB8  80 7F 1F 2C */ lwz r3, 0x1f2c(r31)
/* 8010CE7C 00109DBC  D0 03 00 08 */ stfs f0, 8(r3)
/* 8010CE80 00109DC0  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 8010CE84 00109DC4  2C 00 00 00 */ cmpwi r0, 0
/* 8010CE88 00109DC8  41 82 00 2C */ beq lbl_8010CEB4
/* 8010CE8C 00109DCC  7F E3 FB 78 */ mr r3, r31
/* 8010CE90 00109DD0  4B FC 1A 11 */ bl daAlink_c_NS_setBodyAngleToCamera
/* 8010CE94 00109DD4  2C 03 00 00 */ cmpwi r3, 0
/* 8010CE98 00109DD8  41 82 00 1C */ beq lbl_8010CEB4
/* 8010CE9C 00109DDC  7F E3 FB 78 */ mr r3, r31
/* 8010CEA0 00109DE0  4B FF BF 15 */ bl daAlink_c_NS_setHookshotSight
/* 8010CEA4 00109DE4  48 00 00 10 */ b lbl_8010CEB4
lbl_8010CEA8:
/* 8010CEA8 00109DE8  80 1E 5F 18 */ lwz r0, 0x5f18(r30)
/* 8010CEAC 00109DEC  64 00 00 04 */ oris r0, r0, 4
/* 8010CEB0 00109DF0  90 1E 5F 18 */ stw r0, 0x5f18(r30)
lbl_8010CEB4:
/* 8010CEB4 00109DF4  38 00 00 01 */ li r0, 1
/* 8010CEB8 00109DF8  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8010CEBC 00109DFC  48 00 00 84 */ b lbl_8010CF40
lbl_8010CEC0:
/* 8010CEC0 00109E00  80 1F 27 EC */ lwz r0, 0x27ec(r31)
/* 8010CEC4 00109E04  28 00 00 00 */ cmplwi r0, 0
/* 8010CEC8 00109E08  40 82 00 28 */ bne lbl_8010CEF0
/* 8010CECC 00109E0C  A8 1F 30 1A */ lha r0, 0x301a(r31)
/* 8010CED0 00109E10  2C 00 00 00 */ cmpwi r0, 0
/* 8010CED4 00109E14  40 82 00 1C */ bne lbl_8010CEF0
/* 8010CED8 00109E18  7F E3 FB 78 */ mr r3, r31
/* 8010CEDC 00109E1C  38 80 00 00 */ li r4, 0
/* 8010CEE0 00109E20  80 BF 28 58 */ lwz r5, 0x2858(r31)
/* 8010CEE4 00109E24  38 C0 00 00 */ li r6, 0
/* 8010CEE8 00109E28  4B FF F9 49 */ bl daAlink_c_NS_procHookshotRoofWaitInit
/* 8010CEEC 00109E2C  48 00 00 68 */ b lbl_8010CF54
lbl_8010CEF0:
/* 8010CEF0 00109E30  7F E3 FB 78 */ mr r3, r31
/* 8010CEF4 00109E34  4B FF BB 25 */ bl daAlink_c_NS_checkHookshotWait
/* 8010CEF8 00109E38  2C 03 00 00 */ cmpwi r3, 0
/* 8010CEFC 00109E3C  41 82 00 3C */ beq lbl_8010CF38
/* 8010CF00 00109E40  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8010CF04 00109E44  D0 1F 1F DC */ stfs f0, 0x1fdc(r31)
/* 8010CF08 00109E48  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 8010CF0C 00109E4C  2C 00 00 00 */ cmpwi r0, 0
/* 8010CF10 00109E50  40 82 00 1C */ bne lbl_8010CF2C
/* 8010CF14 00109E54  7F E3 FB 78 */ mr r3, r31
/* 8010CF18 00109E58  38 80 00 00 */ li r4, 0
/* 8010CF1C 00109E5C  4B FA E3 95 */ bl daAlink_c_NS_setBodyAngleXReadyAnime
/* 8010CF20 00109E60  7F E3 FB 78 */ mr r3, r31
/* 8010CF24 00109E64  4B FF E4 89 */ bl daAlink_c_NS_hookshotRoofTurn
/* 8010CF28 00109E68  48 00 00 10 */ b lbl_8010CF38
lbl_8010CF2C:
/* 8010CF2C 00109E6C  7F E3 FB 78 */ mr r3, r31
/* 8010CF30 00109E70  38 80 00 00 */ li r4, 0
/* 8010CF34 00109E74  4B FA A2 5D */ bl daAlink_c_NS_cancelItemUseQuake
lbl_8010CF38:
/* 8010CF38 00109E78  38 00 00 00 */ li r0, 0
/* 8010CF3C 00109E7C  B0 1F 30 0C */ sth r0, 0x300c(r31)
lbl_8010CF40:
/* 8010CF40 00109E80  A8 1F 05 9C */ lha r0, 0x59c(r31)
/* 8010CF44 00109E84  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 8010CF48 00109E88  38 00 00 00 */ li r0, 0
/* 8010CF4C 00109E8C  B0 1F 05 9C */ sth r0, 0x59c(r31)
lbl_8010CF50:
/* 8010CF50 00109E90  38 60 00 01 */ li r3, 1
lbl_8010CF54:
/* 8010CF54 00109E94  39 61 00 20 */ addi r11, r1, 0x20
/* 8010CF58 00109E98  48 25 52 CD */ bl _restgpr_28
/* 8010CF5C 00109E9C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8010CF60 00109EA0  7C 08 03 A6 */ mtlr r0
/* 8010CF64 00109EA4  38 21 00 20 */ addi r1, r1, 0x20
/* 8010CF68 00109EA8  4E 80 00 20 */ blr
