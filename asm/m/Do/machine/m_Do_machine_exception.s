.include "macros.inc"

.section .text, "ax" # 80017d7c


.global print_f
print_f:
/* 80017D7C 00014CBC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80017D80 00014CC0  7C 08 02 A6 */	mflr r0
/* 80017D84 00014CC4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80017D88 00014CC8  7C 6B 1B 78 */	mr r11, r3
/* 80017D8C 00014CCC  40 86 00 24 */	bne cr1, lbl_80017DB0
/* 80017D90 00014CD0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80017D94 00014CD4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80017D98 00014CD8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80017D9C 00014CDC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80017DA0 00014CE0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80017DA4 00014CE4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80017DA8 00014CE8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80017DAC 00014CEC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80017DB0:
/* 80017DB0 00014CF0  90 61 00 08 */	stw r3, 8(r1)
/* 80017DB4 00014CF4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80017DB8 00014CF8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80017DBC 00014CFC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80017DC0 00014D00  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80017DC4 00014D04  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80017DC8 00014D08  91 21 00 20 */	stw r9, 0x20(r1)
/* 80017DCC 00014D0C  91 41 00 24 */	stw r10, 0x24(r1)
/* 80017DD0 00014D10  38 A1 00 68 */	addi r5, r1, 0x68
/* 80017DD4 00014D14  3C 00 01 00 */	lis r0, 0x100
/* 80017DD8 00014D18  90 01 00 68 */	stw r0, 0x68(r1)
/* 80017DDC 00014D1C  38 01 00 88 */	addi r0, r1, 0x88
/* 80017DE0 00014D20  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80017DE4 00014D24  38 01 00 08 */	addi r0, r1, 8
/* 80017DE8 00014D28  90 01 00 70 */	stw r0, 0x70(r1)
/* 80017DEC 00014D2C  80 6D 87 10 */	lwz r3, lbl_80450C90-_SDA_BASE_(r13)
/* 80017DF0 00014D30  7D 64 5B 78 */	mr r4, r11
/* 80017DF4 00014D34  48 2D 01 3D */	bl JUTConsole_print_f_va_
/* 80017DF8 00014D38  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80017DFC 00014D3C  7C 08 03 A6 */	mtlr r0
/* 80017E00 00014D40  38 21 00 80 */	addi r1, r1, 0x80
/* 80017E04 00014D44  4E 80 00 20 */	blr 

.global print
print:
/* 80017E08 00014D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80017E0C 00014D4C  7C 08 02 A6 */	mflr r0
/* 80017E10 00014D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80017E14 00014D54  7C 64 1B 78 */	mr r4, r3
/* 80017E18 00014D58  80 6D 87 10 */	lwz r3, lbl_80450C90-_SDA_BASE_(r13)
/* 80017E1C 00014D5C  48 2C FE 1D */	bl JUTConsole_NS_print
/* 80017E20 00014D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80017E24 00014D64  7C 08 03 A6 */	mtlr r0
/* 80017E28 00014D68  38 21 00 10 */	addi r1, r1, 0x10
/* 80017E2C 00014D6C  4E 80 00 20 */	blr 

.global dispHeapInfo
dispHeapInfo:
/* 80017E30 00014D70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80017E34 00014D74  7C 08 02 A6 */	mflr r0
/* 80017E38 00014D78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80017E3C 00014D7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80017E40 00014D80  48 34 A3 85 */	bl func_803621C4
/* 80017E44 00014D84  80 6D 86 AC */	lwz r3, lbl_80450C2C-_SDA_BASE_(r13)
/* 80017E48 00014D88  7C 7F 1B 78 */	mr r31, r3
/* 80017E4C 00014D8C  83 CD 86 A8 */	lwz r30, lbl_80450C28-_SDA_BASE_(r13)
/* 80017E50 00014D90  83 AD 86 B4 */	lwz r29, lbl_80450C34-_SDA_BASE_(r13)
/* 80017E54 00014D94  48 2B 68 D9 */	bl getFreeSize__7JKRHeapFv
/* 80017E58 00014D98  7C 77 1B 78 */	mr r23, r3
/* 80017E5C 00014D9C  7F C3 F3 78 */	mr r3, r30
/* 80017E60 00014DA0  48 2B 68 CD */	bl getFreeSize__7JKRHeapFv
/* 80017E64 00014DA4  7C 78 1B 78 */	mr r24, r3
/* 80017E68 00014DA8  7F A3 EB 78 */	mr r3, r29
/* 80017E6C 00014DAC  48 2B 68 C1 */	bl getFreeSize__7JKRHeapFv
/* 80017E70 00014DB0  7C 79 1B 78 */	mr r25, r3
/* 80017E74 00014DB4  7F E3 FB 78 */	mr r3, r31
/* 80017E78 00014DB8  48 2B 69 0D */	bl getTotalFreeSize__7JKRHeapFv
/* 80017E7C 00014DBC  7C 7A 1B 78 */	mr r26, r3
/* 80017E80 00014DC0  7F C3 F3 78 */	mr r3, r30
/* 80017E84 00014DC4  48 2B 69 01 */	bl getTotalFreeSize__7JKRHeapFv
/* 80017E88 00014DC8  7C 7B 1B 78 */	mr r27, r3
/* 80017E8C 00014DCC  7F A3 EB 78 */	mr r3, r29
/* 80017E90 00014DD0  48 2B 68 F5 */	bl getTotalFreeSize__7JKRHeapFv
/* 80017E94 00014DD4  7C 7C 1B 78 */	mr r28, r3
/* 80017E98 00014DD8  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80017E9C 00014DDC  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80017EA0 00014DE0  38 63 00 28 */	addi r3, r3, 0x28
/* 80017EA4 00014DE4  4B FF FF 65 */	bl print
/* 80017EA8 00014DE8  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80017EAC 00014DEC  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80017EB0 00014DF0  38 63 00 4A */	addi r3, r3, 0x4a
/* 80017EB4 00014DF4  56 E4 B2 BE */	srwi r4, r23, 0xa
/* 80017EB8 00014DF8  57 45 B2 BE */	srwi r5, r26, 0xa
/* 80017EBC 00014DFC  4C C6 31 82 */	crclr 6
/* 80017EC0 00014E00  4B FF FE BD */	bl print_f
/* 80017EC4 00014E04  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80017EC8 00014E08  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80017ECC 00014E0C  38 63 00 5D */	addi r3, r3, 0x5d
/* 80017ED0 00014E10  57 04 B2 BE */	srwi r4, r24, 0xa
/* 80017ED4 00014E14  57 65 B2 BE */	srwi r5, r27, 0xa
/* 80017ED8 00014E18  4C C6 31 82 */	crclr 6
/* 80017EDC 00014E1C  4B FF FE A1 */	bl print_f
/* 80017EE0 00014E20  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80017EE4 00014E24  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80017EE8 00014E28  38 63 00 70 */	addi r3, r3, 0x70
/* 80017EEC 00014E2C  57 24 B2 BE */	srwi r4, r25, 0xa
/* 80017EF0 00014E30  57 85 B2 BE */	srwi r5, r28, 0xa
/* 80017EF4 00014E34  4C C6 31 82 */	crclr 6
/* 80017EF8 00014E38  4B FF FE 85 */	bl print_f
/* 80017EFC 00014E3C  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80017F00 00014E40  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80017F04 00014E44  38 63 00 83 */	addi r3, r3, 0x83
/* 80017F08 00014E48  4B FF FF 01 */	bl print
/* 80017F0C 00014E4C  80 6D 8E 48 */	lwz r3, lbl_804513C8-_SDA_BASE_(r13)
/* 80017F10 00014E50  80 63 00 94 */	lwz r3, 0x94(r3)
/* 80017F14 00014E54  28 03 00 00 */	cmplwi r3, 0
/* 80017F18 00014E58  41 82 00 08 */	beq lbl_80017F20
/* 80017F1C 00014E5C  48 2B B2 FD */	bl JKRAramHeap_NS_dump
lbl_80017F20:
/* 80017F20 00014E60  48 24 A5 51 */	bl DynamicModuleControlBase_NS_dump
/* 80017F24 00014E64  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80017F28 00014E68  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80017F2C 00014E6C  3C 63 00 02 */	addis r3, r3, 2
/* 80017F30 00014E70  38 63 C2 F8 */	addi r3, r3, -15624
/* 80017F34 00014E74  48 02 47 05 */	bl dRes_control_c_NS_dump
/* 80017F38 00014E78  7F E3 FB 78 */	mr r3, r31
/* 80017F3C 00014E7C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80017F40 00014E80  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80017F44 00014E84  7D 89 03 A6 */	mtctr r12
/* 80017F48 00014E88  4E 80 04 21 */	bctrl 
/* 80017F4C 00014E8C  7F C3 F3 78 */	mr r3, r30
/* 80017F50 00014E90  81 9E 00 00 */	lwz r12, 0(r30)
/* 80017F54 00014E94  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80017F58 00014E98  7D 89 03 A6 */	mtctr r12
/* 80017F5C 00014E9C  4E 80 04 21 */	bctrl 
/* 80017F60 00014EA0  7F A3 EB 78 */	mr r3, r29
/* 80017F64 00014EA4  81 9D 00 00 */	lwz r12, 0(r29)
/* 80017F68 00014EA8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80017F6C 00014EAC  7D 89 03 A6 */	mtctr r12
/* 80017F70 00014EB0  4E 80 04 21 */	bctrl 
/* 80017F74 00014EB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80017F78 00014EB8  48 34 A2 99 */	bl func_80362210
/* 80017F7C 00014EBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80017F80 00014EC0  7C 08 03 A6 */	mtlr r0
/* 80017F84 00014EC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80017F88 00014EC8  4E 80 00 20 */	blr 

.global dispGameInfo
dispGameInfo:
/* 80017F8C 00014ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80017F90 00014ED0  7C 08 02 A6 */	mflr r0
/* 80017F94 00014ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80017F98 00014ED8  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80017F9C 00014EDC  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80017FA0 00014EE0  38 63 00 A5 */	addi r3, r3, 0xa5
/* 80017FA4 00014EE4  3C 80 80 40 */	lis r4, lbl_804061C0@ha
/* 80017FA8 00014EE8  38 A4 61 C0 */	addi r5, r4, lbl_804061C0@l
/* 80017FAC 00014EEC  38 85 4E 00 */	addi r4, r5, 0x4e00
/* 80017FB0 00014EF0  88 05 4E 0A */	lbz r0, 0x4e0a(r5)
/* 80017FB4 00014EF4  7C 05 07 74 */	extsb r5, r0
/* 80017FB8 00014EF8  4C C6 31 82 */	crclr 6
/* 80017FBC 00014EFC  4B FF FD C1 */	bl print_f
/* 80017FC0 00014F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80017FC4 00014F04  7C 08 03 A6 */	mtlr r0
/* 80017FC8 00014F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80017FCC 00014F0C  4E 80 00 20 */	blr 

.global dispDateInfo
dispDateInfo:
/* 80017FD0 00014F10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80017FD4 00014F14  7C 08 02 A6 */	mflr r0
/* 80017FD8 00014F18  90 01 00 44 */	stw r0, 0x44(r1)
/* 80017FDC 00014F1C  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80017FE0 00014F20  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80017FE4 00014F24  38 63 00 C5 */	addi r3, r3, 0xc5
/* 80017FE8 00014F28  4B FF FE 21 */	bl print
/* 80017FEC 00014F2C  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80017FF0 00014F30  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80017FF4 00014F34  38 63 00 EE */	addi r3, r3, 0xee
/* 80017FF8 00014F38  4B FF FE 11 */	bl print
/* 80017FFC 00014F3C  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80018000 00014F40  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80018004 00014F44  38 63 00 FE */	addi r3, r3, 0xfe
/* 80018008 00014F48  4B FF FE 01 */	bl print
/* 8001800C 00014F4C  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80018010 00014F50  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80018014 00014F54  38 63 01 13 */	addi r3, r3, 0x113
/* 80018018 00014F58  3C 80 80 3A */	lis r4, lbl_803A2EE0@ha
/* 8001801C 00014F5C  38 84 2E E0 */	addi r4, r4, lbl_803A2EE0@l
/* 80018020 00014F60  4C C6 31 82 */	crclr 6
/* 80018024 00014F64  4B FF FD 59 */	bl print_f
/* 80018028 00014F68  80 6D 85 88 */	lwz r3, lbl_80450B08-_SDA_BASE_(r13)
/* 8001802C 00014F6C  80 8D 85 8C */	lwz r4, lbl_80450B0C-_SDA_BASE_(r13)
/* 80018030 00014F70  38 A1 00 10 */	addi r5, r1, 0x10
/* 80018034 00014F74  48 32 A9 41 */	bl OSTicksToCalendarTime
/* 80018038 00014F78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001803C 00014F7C  90 01 00 08 */	stw r0, 8(r1)
/* 80018040 00014F80  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80018044 00014F84  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80018048 00014F88  38 63 01 26 */	addi r3, r3, 0x126
/* 8001804C 00014F8C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80018050 00014F90  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80018054 00014F94  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80018058 00014F98  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 8001805C 00014F9C  81 01 00 14 */	lwz r8, 0x14(r1)
/* 80018060 00014FA0  81 21 00 10 */	lwz r9, 0x10(r1)
/* 80018064 00014FA4  81 41 00 30 */	lwz r10, 0x30(r1)
/* 80018068 00014FA8  4C C6 31 82 */	crclr 6
/* 8001806C 00014FAC  4B FF FD 11 */	bl print_f
/* 80018070 00014FB0  80 6D 85 90 */	lwz r3, lbl_80450B10-_SDA_BASE_(r13)
/* 80018074 00014FB4  80 8D 85 94 */	lwz r4, lbl_80450B14-_SDA_BASE_(r13)
/* 80018078 00014FB8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8001807C 00014FBC  48 32 A8 F9 */	bl OSTicksToCalendarTime
/* 80018080 00014FC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80018084 00014FC4  90 01 00 08 */	stw r0, 8(r1)
/* 80018088 00014FC8  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 8001808C 00014FCC  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 80018090 00014FD0  38 63 01 57 */	addi r3, r3, 0x157
/* 80018094 00014FD4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80018098 00014FD8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8001809C 00014FDC  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 800180A0 00014FE0  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 800180A4 00014FE4  81 01 00 14 */	lwz r8, 0x14(r1)
/* 800180A8 00014FE8  81 21 00 10 */	lwz r9, 0x10(r1)
/* 800180AC 00014FEC  81 41 00 30 */	lwz r10, 0x30(r1)
/* 800180B0 00014FF0  4C C6 31 82 */	crclr 6
/* 800180B4 00014FF4  4B FF FC C9 */	bl print_f
/* 800180B8 00014FF8  80 AD 85 90 */	lwz r5, lbl_80450B10-_SDA_BASE_(r13)
/* 800180BC 00014FFC  80 8D 85 94 */	lwz r4, lbl_80450B14-_SDA_BASE_(r13)
/* 800180C0 00015000  80 0D 85 88 */	lwz r0, lbl_80450B08-_SDA_BASE_(r13)
/* 800180C4 00015004  80 6D 85 8C */	lwz r3, lbl_80450B0C-_SDA_BASE_(r13)
/* 800180C8 00015008  7C 83 20 10 */	subfc r4, r3, r4
/* 800180CC 0001500C  7C 60 29 10 */	subfe r3, r0, r5
/* 800180D0 00015010  38 A1 00 10 */	addi r5, r1, 0x10
/* 800180D4 00015014  48 32 A8 A1 */	bl OSTicksToCalendarTime
/* 800180D8 00015018  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 800180DC 0001501C  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 800180E0 00015020  38 63 01 88 */	addi r3, r3, 0x188
/* 800180E4 00015024  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 800180E8 00015028  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 800180EC 0001502C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 800180F0 00015030  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 800180F4 00015034  81 01 00 30 */	lwz r8, 0x30(r1)
/* 800180F8 00015038  81 21 00 34 */	lwz r9, 0x34(r1)
/* 800180FC 0001503C  4C C6 31 82 */	crclr 6
/* 80018100 00015040  4B FF FC 7D */	bl print_f
/* 80018104 00015044  3C 60 80 37 */	lis r3, lbl_80374460@ha
/* 80018108 00015048  38 63 44 60 */	addi r3, r3, lbl_80374460@l
/* 8001810C 0001504C  38 63 01 B6 */	addi r3, r3, 0x1b6
/* 80018110 00015050  4B FF FC F9 */	bl print
/* 80018114 00015054  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80018118 00015058  7C 08 03 A6 */	mtlr r0
/* 8001811C 0001505C  38 21 00 40 */	addi r1, r1, 0x40
/* 80018120 00015060  4E 80 00 20 */	blr 

.global dispConsoleToTerminal
dispConsoleToTerminal:
/* 80018124 00015064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018128 00015068  7C 08 02 A6 */	mflr r0
/* 8001812C 0001506C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018130 00015070  80 6D 8C 38 */	lwz r3, lbl_804511B8-_SDA_BASE_(r13)
/* 80018134 00015074  38 80 FF FF */	li r4, -1
/* 80018138 00015078  48 2C FE 45 */	bl JUTConsole_NS_dumpToTerminal
/* 8001813C 0001507C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018140 00015080  7C 08 03 A6 */	mtlr r0
/* 80018144 00015084  38 21 00 10 */	addi r1, r1, 0x10
/* 80018148 00015088  4E 80 00 20 */	blr 

.global exception_addition
exception_addition:
/* 8001814C 0001508C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018150 00015090  7C 08 02 A6 */	mflr r0
/* 80018154 00015094  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018158 00015098  90 6D 87 10 */	stw r3, lbl_80450C90-_SDA_BASE_(r13)
/* 8001815C 0001509C  4B FF FC D5 */	bl dispHeapInfo
/* 80018160 000150A0  4B FF FE 71 */	bl dispDateInfo
/* 80018164 000150A4  4B FF FF C1 */	bl dispConsoleToTerminal
/* 80018168 000150A8  4B FF FE 25 */	bl dispGameInfo
/* 8001816C 000150AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018170 000150B0  7C 08 03 A6 */	mtlr r0
/* 80018174 000150B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80018178 000150B8  4E 80 00 20 */	blr 
