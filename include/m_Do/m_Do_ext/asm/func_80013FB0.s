/* 80013FB0 00010EF0  94 21 FE 30 */ stwu r1, -0x1d0(r1)
/* 80013FB4 00010EF4  7C 08 02 A6 */ mflr r0
/* 80013FB8 00010EF8  90 01 01 D4 */ stw r0, 0x1d4(r1)
/* 80013FBC 00010EFC  DB E1 01 C0 */ stfd f31, 0x1c0(r1)
/* 80013FC0 00010F00  F3 E1 01 C8 */ psq_st f31, 456(r1), 0, 0
/* 80013FC4 00010F04  DB C1 01 B0 */ stfd f30, 0x1b0(r1)
/* 80013FC8 00010F08  F3 C1 01 B8 */ psq_st f30, 440(r1), 0, 0
/* 80013FCC 00010F0C  DB A1 01 A0 */ stfd f29, 0x1a0(r1)
/* 80013FD0 00010F10  F3 A1 01 A8 */ psq_st f29, 424(r1), 0, 0
/* 80013FD4 00010F14  DB 81 01 90 */ stfd f28, 0x190(r1)
/* 80013FD8 00010F18  F3 81 01 98 */ psq_st f28, 408(r1), 0, 0
/* 80013FDC 00010F1C  DB 61 01 80 */ stfd f27, 0x180(r1)
/* 80013FE0 00010F20  F3 61 01 88 */ psq_st f27, 392(r1), 0, 0
/* 80013FE4 00010F24  39 61 01 80 */ addi r11, r1, 0x180
/* 80013FE8 00010F28  48 34 E1 BD */ bl _savegpr_15
/* 80013FEC 00010F2C  7C 6F 1B 78 */ mr r15, r3
/* 80013FF0 00010F30  88 05 00 00 */ lbz r0, 0(r5)
/* 80013FF4 00010F34  98 03 00 28 */ stb r0, 0x28(r3)
/* 80013FF8 00010F38  88 05 00 01 */ lbz r0, 1(r5)
/* 80013FFC 00010F3C  98 03 00 29 */ stb r0, 0x29(r3)
/* 80014000 00010F40  88 05 00 02 */ lbz r0, 2(r5)
/* 80014004 00010F44  98 03 00 2A */ stb r0, 0x2a(r3)
/* 80014008 00010F48  88 05 00 03 */ lbz r0, 3(r5)
/* 8001400C 00010F4C  98 03 00 2B */ stb r0, 0x2b(r3)
/* 80014010 00010F50  90 C3 00 2C */ stw r6, 0x2c(r3)
/* 80014014 00010F54  2C 04 00 00 */ cmpwi r4, 0
/* 80014018 00010F58  40 80 00 10 */ bge lbl_80014028
/* 8001401C 00010F5C  A0 0F 00 32 */ lhz r0, 0x32(r15)
/* 80014020 00010F60  B0 0F 00 34 */ sth r0, 0x34(r15)
/* 80014024 00010F64  48 00 00 1C */ b lbl_80014040
lbl_80014028:
/* 80014028 00010F68  A0 0F 00 32 */ lhz r0, 0x32(r15)
/* 8001402C 00010F6C  7C 04 00 00 */ cmpw r4, r0
/* 80014030 00010F70  40 81 00 0C */ ble lbl_8001403C
/* 80014034 00010F74  B0 0F 00 34 */ sth r0, 0x34(r15)
/* 80014038 00010F78  48 00 00 08 */ b lbl_80014040
lbl_8001403C:
/* 8001403C 00010F7C  B0 8F 00 34 */ sth r4, 0x34(r15)
lbl_80014040:
/* 80014040 00010F80  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80014044 00010F84  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80014048 00010F88  83 E3 61 B0 */ lwz r31, 0x61b0(r3)
/* 8001404C 00010F8C  83 CF 00 38 */ lwz r30, 0x38(r15)
/* 80014050 00010F90  A0 0F 00 34 */ lhz r0, 0x34(r15)
/* 80014054 00010F94  54 03 08 3C */ slwi r3, r0, 1
/* 80014058 00010F98  1F A3 00 0C */ mulli r29, r3, 0xc
/* 8001405C 00010F9C  1F 83 00 03 */ mulli r28, r3, 3
/* 80014060 00010FA0  54 1B 20 36 */ slwi r27, r0, 4
/* 80014064 00010FA4  C3 62 81 1C */ lfs f27, lbl_80451B1C-_SDA2_BASE_(r2)
/* 80014068 00010FA8  3A 20 00 00 */ li r17, 0
/* 8001406C 00010FAC  FF A0 D8 90 */ fmr f29, f27
/* 80014070 00010FB0  C3 C2 81 60 */ lfs f30, lbl_80451B60-_SDA2_BASE_(r2)
/* 80014074 00010FB4  C3 E2 81 30 */ lfs f31, lbl_80451B30-_SDA2_BASE_(r2)
/* 80014078 00010FB8  FF 80 D8 90 */ fmr f28, f27
/* 8001407C 00010FBC  48 00 06 70 */ b lbl_800146EC
lbl_80014080:
/* 80014080 00010FC0  83 5E 00 00 */ lwz r26, 0(r30)
/* 80014084 00010FC4  82 5E 00 04 */ lwz r18, 4(r30)
/* 80014088 00010FC8  88 0F 00 36 */ lbz r0, 0x36(r15)
/* 8001408C 00010FCC  54 00 10 3A */ slwi r0, r0, 2
/* 80014090 00010FD0  7C 7E 02 14 */ add r3, r30, r0
/* 80014094 00010FD4  83 03 00 08 */ lwz r24, 8(r3)
/* 80014098 00010FD8  82 A3 00 10 */ lwz r21, 0x10(r3)
/* 8001409C 00010FDC  7E B7 AB 78 */ mr r23, r21
/* 800140A0 00010FE0  3A D5 00 03 */ addi r22, r21, 3
/* 800140A4 00010FE4  82 63 00 18 */ lwz r19, 0x18(r3)
/* 800140A8 00010FE8  D3 73 00 04 */ stfs f27, 4(r19)
/* 800140AC 00010FEC  D3 73 00 0C */ stfs f27, 0xc(r19)
/* 800140B0 00010FF0  38 61 00 DC */ addi r3, r1, 0xdc
/* 800140B4 00010FF4  38 9A 00 0C */ addi r4, r26, 0xc
/* 800140B8 00010FF8  7F 45 D3 78 */ mr r5, r26
/* 800140BC 00010FFC  3A 93 00 10 */ addi r20, r19, 0x10
/* 800140C0 00011000  48 25 2A 75 */ bl __mi__4cXyzCFRC3Vec
/* 800140C4 00011004  C0 01 00 DC */ lfs f0, 0xdc(r1)
/* 800140C8 00011008  D0 01 01 00 */ stfs f0, 0x100(r1)
/* 800140CC 0001100C  C0 01 00 E0 */ lfs f0, 0xe0(r1)
/* 800140D0 00011010  D0 01 01 04 */ stfs f0, 0x104(r1)
/* 800140D4 00011014  C0 01 00 E4 */ lfs f0, 0xe4(r1)
/* 800140D8 00011018  D0 01 01 08 */ stfs f0, 0x108(r1)
/* 800140DC 0001101C  38 61 01 00 */ addi r3, r1, 0x100
/* 800140E0 00011020  48 33 30 59 */ bl PSVECSquareMag
/* 800140E4 00011024  FC 01 E0 40 */ fcmpo cr0, f1, f28
/* 800140E8 00011028  40 81 00 58 */ ble lbl_80014140
/* 800140EC 0001102C  FC 00 08 34 */ frsqrte f0, f1
/* 800140F0 00011030  C8 82 81 48 */ lfd f4, lbl_80451B48-_SDA2_BASE_(r2)
/* 800140F4 00011034  FC 44 00 32 */ fmul f2, f4, f0
/* 800140F8 00011038  C8 62 81 50 */ lfd f3, lbl_80451B50-_SDA2_BASE_(r2)
/* 800140FC 0001103C  FC 00 00 32 */ fmul f0, f0, f0
/* 80014100 00011040  FC 01 00 32 */ fmul f0, f1, f0
/* 80014104 00011044  FC 03 00 28 */ fsub f0, f3, f0
/* 80014108 00011048  FC 02 00 32 */ fmul f0, f2, f0
/* 8001410C 0001104C  FC 44 00 32 */ fmul f2, f4, f0
/* 80014110 00011050  FC 00 00 32 */ fmul f0, f0, f0
/* 80014114 00011054  FC 01 00 32 */ fmul f0, f1, f0
/* 80014118 00011058  FC 03 00 28 */ fsub f0, f3, f0
/* 8001411C 0001105C  FC 02 00 32 */ fmul f0, f2, f0
/* 80014120 00011060  FC 44 00 32 */ fmul f2, f4, f0
/* 80014124 00011064  FC 00 00 32 */ fmul f0, f0, f0
/* 80014128 00011068  FC 01 00 32 */ fmul f0, f1, f0
/* 8001412C 0001106C  FC 03 00 28 */ fsub f0, f3, f0
/* 80014130 00011070  FC 02 00 32 */ fmul f0, f2, f0
/* 80014134 00011074  FC 21 00 32 */ fmul f1, f1, f0
/* 80014138 00011078  FC 20 08 18 */ frsp f1, f1
/* 8001413C 0001107C  48 00 00 88 */ b lbl_800141C4
lbl_80014140:
/* 80014140 00011080  C8 02 81 58 */ lfd f0, lbl_80451B58-_SDA2_BASE_(r2)
/* 80014144 00011084  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80014148 00011088  40 80 00 10 */ bge lbl_80014158
/* 8001414C 0001108C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80014150 00011090  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 80014154 00011094  48 00 00 70 */ b lbl_800141C4
lbl_80014158:
/* 80014158 00011098  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 8001415C 0001109C  80 81 00 0C */ lwz r4, 0xc(r1)
/* 80014160 000110A0  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 80014164 000110A4  3C 00 7F 80 */ lis r0, 0x7f80
/* 80014168 000110A8  7C 03 00 00 */ cmpw r3, r0
/* 8001416C 000110AC  41 82 00 14 */ beq lbl_80014180
/* 80014170 000110B0  40 80 00 40 */ bge lbl_800141B0
/* 80014174 000110B4  2C 03 00 00 */ cmpwi r3, 0
/* 80014178 000110B8  41 82 00 20 */ beq lbl_80014198
/* 8001417C 000110BC  48 00 00 34 */ b lbl_800141B0
lbl_80014180:
/* 80014180 000110C0  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80014184 000110C4  41 82 00 0C */ beq lbl_80014190
/* 80014188 000110C8  38 00 00 01 */ li r0, 1
/* 8001418C 000110CC  48 00 00 28 */ b lbl_800141B4
lbl_80014190:
/* 80014190 000110D0  38 00 00 02 */ li r0, 2
/* 80014194 000110D4  48 00 00 20 */ b lbl_800141B4
lbl_80014198:
/* 80014198 000110D8  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8001419C 000110DC  41 82 00 0C */ beq lbl_800141A8
/* 800141A0 000110E0  38 00 00 05 */ li r0, 5
/* 800141A4 000110E4  48 00 00 10 */ b lbl_800141B4
lbl_800141A8:
/* 800141A8 000110E8  38 00 00 03 */ li r0, 3
/* 800141AC 000110EC  48 00 00 08 */ b lbl_800141B4
lbl_800141B0:
/* 800141B0 000110F0  38 00 00 04 */ li r0, 4
lbl_800141B4:
/* 800141B4 000110F4  2C 00 00 01 */ cmpwi r0, 1
/* 800141B8 000110F8  40 82 00 0C */ bne lbl_800141C4
/* 800141BC 000110FC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800141C0 00011100  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_800141C4:
/* 800141C4 00011104  EC 1E 00 72 */ fmuls f0, f30, f1
/* 800141C8 00011108  EF 7B 00 2A */ fadds f27, f27, f0
/* 800141CC 0001110C  38 61 00 D0 */ addi r3, r1, 0xd0
/* 800141D0 00011110  7F 44 D3 78 */ mr r4, r26
/* 800141D4 00011114  38 BF 00 D8 */ addi r5, r31, 0xd8
/* 800141D8 00011118  48 25 29 5D */ bl __mi__4cXyzCFRC3Vec
/* 800141DC 0001111C  C0 01 00 D0 */ lfs f0, 0xd0(r1)
/* 800141E0 00011120  D0 01 01 0C */ stfs f0, 0x10c(r1)
/* 800141E4 00011124  C0 01 00 D4 */ lfs f0, 0xd4(r1)
/* 800141E8 00011128  D0 01 01 10 */ stfs f0, 0x110(r1)
/* 800141EC 0001112C  C0 01 00 D8 */ lfs f0, 0xd8(r1)
/* 800141F0 00011130  D0 01 01 14 */ stfs f0, 0x114(r1)
/* 800141F4 00011134  38 61 00 C4 */ addi r3, r1, 0xc4
/* 800141F8 00011138  38 81 01 00 */ addi r4, r1, 0x100
/* 800141FC 0001113C  38 A1 01 0C */ addi r5, r1, 0x10c
/* 80014200 00011140  48 25 2A BD */ bl outprod__4cXyzCFRC3Vec
/* 80014204 00011144  C0 01 00 C4 */ lfs f0, 0xc4(r1)
/* 80014208 00011148  D0 01 01 00 */ stfs f0, 0x100(r1)
/* 8001420C 0001114C  C0 01 00 C8 */ lfs f0, 0xc8(r1)
/* 80014210 00011150  D0 01 01 04 */ stfs f0, 0x104(r1)
/* 80014214 00011154  C0 01 00 CC */ lfs f0, 0xcc(r1)
/* 80014218 00011158  D0 01 01 08 */ stfs f0, 0x108(r1)
/* 8001421C 0001115C  38 61 00 B8 */ addi r3, r1, 0xb8
/* 80014220 00011160  38 81 01 00 */ addi r4, r1, 0x100
/* 80014224 00011164  48 25 2D 25 */ bl normalizeZP__4cXyzFv
/* 80014228 00011168  C0 01 01 00 */ lfs f0, 0x100(r1)
/* 8001422C 0001116C  EC 1F 00 32 */ fmuls f0, f31, f0
/* 80014230 00011170  FC 00 00 1E */ fctiwz f0, f0
/* 80014234 00011174  D8 01 01 18 */ stfd f0, 0x118(r1)
/* 80014238 00011178  80 01 01 1C */ lwz r0, 0x11c(r1)
/* 8001423C 0001117C  98 15 00 00 */ stb r0, 0(r21)
/* 80014240 00011180  C0 01 01 04 */ lfs f0, 0x104(r1)
/* 80014244 00011184  EC 1F 00 32 */ fmuls f0, f31, f0
/* 80014248 00011188  FC 00 00 1E */ fctiwz f0, f0
/* 8001424C 0001118C  D8 01 01 20 */ stfd f0, 0x120(r1)
/* 80014250 00011190  80 01 01 24 */ lwz r0, 0x124(r1)
/* 80014254 00011194  98 15 00 01 */ stb r0, 1(r21)
/* 80014258 00011198  C0 01 01 08 */ lfs f0, 0x108(r1)
/* 8001425C 0001119C  EC 1F 00 32 */ fmuls f0, f31, f0
/* 80014260 000111A0  FC 00 00 1E */ fctiwz f0, f0
/* 80014264 000111A4  D8 01 01 28 */ stfd f0, 0x128(r1)
/* 80014268 000111A8  80 01 01 2C */ lwz r0, 0x12c(r1)
/* 8001426C 000111AC  98 15 00 02 */ stb r0, 2(r21)
/* 80014270 000111B0  88 15 00 00 */ lbz r0, 0(r21)
/* 80014274 000111B4  7C 00 00 D0 */ neg r0, r0
/* 80014278 000111B8  98 16 00 00 */ stb r0, 0(r22)
/* 8001427C 000111BC  88 15 00 01 */ lbz r0, 1(r21)
/* 80014280 000111C0  7C 00 00 D0 */ neg r0, r0
/* 80014284 000111C4  98 16 00 01 */ stb r0, 1(r22)
/* 80014288 000111C8  88 15 00 02 */ lbz r0, 2(r21)
/* 8001428C 000111CC  7C 00 00 D0 */ neg r0, r0
/* 80014290 000111D0  98 16 00 02 */ stb r0, 2(r22)
/* 80014294 000111D4  38 61 01 00 */ addi r3, r1, 0x100
/* 80014298 000111D8  7C 64 1B 78 */ mr r4, r3
/* 8001429C 000111DC  C0 32 00 00 */ lfs f1, 0(r18)
/* 800142A0 000111E0  48 33 2E 39 */ bl PSVECScale
/* 800142A4 000111E4  38 61 00 AC */ addi r3, r1, 0xac
/* 800142A8 000111E8  7F 44 D3 78 */ mr r4, r26
/* 800142AC 000111EC  38 A1 01 00 */ addi r5, r1, 0x100
/* 800142B0 000111F0  48 25 28 35 */ bl __pl__4cXyzCFRC3Vec
/* 800142B4 000111F4  C0 01 00 AC */ lfs f0, 0xac(r1)
/* 800142B8 000111F8  D0 18 00 00 */ stfs f0, 0(r24)
/* 800142BC 000111FC  C0 01 00 B0 */ lfs f0, 0xb0(r1)
/* 800142C0 00011200  D0 18 00 04 */ stfs f0, 4(r24)
/* 800142C4 00011204  C0 01 00 B4 */ lfs f0, 0xb4(r1)
/* 800142C8 00011208  D0 18 00 08 */ stfs f0, 8(r24)
/* 800142CC 0001120C  38 61 00 A0 */ addi r3, r1, 0xa0
/* 800142D0 00011210  7F 44 D3 78 */ mr r4, r26
/* 800142D4 00011214  38 A1 01 00 */ addi r5, r1, 0x100
/* 800142D8 00011218  48 25 28 5D */ bl __mi__4cXyzCFRC3Vec
/* 800142DC 0001121C  C0 01 00 A0 */ lfs f0, 0xa0(r1)
/* 800142E0 00011220  D0 18 00 0C */ stfs f0, 0xc(r24)
/* 800142E4 00011224  C0 01 00 A4 */ lfs f0, 0xa4(r1)
/* 800142E8 00011228  D0 18 00 10 */ stfs f0, 0x10(r24)
/* 800142EC 0001122C  C0 01 00 A8 */ lfs f0, 0xa8(r1)
/* 800142F0 00011230  D0 18 00 14 */ stfs f0, 0x14(r24)
/* 800142F4 00011234  3B 5A 00 0C */ addi r26, r26, 0xc
/* 800142F8 00011238  38 61 00 94 */ addi r3, r1, 0x94
/* 800142FC 0001123C  7F 44 D3 78 */ mr r4, r26
/* 80014300 00011240  38 A1 01 00 */ addi r5, r1, 0x100
/* 80014304 00011244  3B 38 00 18 */ addi r25, r24, 0x18
/* 80014308 00011248  3A 52 00 04 */ addi r18, r18, 4
/* 8001430C 0001124C  48 25 27 D9 */ bl __pl__4cXyzCFRC3Vec
/* 80014310 00011250  C0 01 00 94 */ lfs f0, 0x94(r1)
/* 80014314 00011254  D0 01 00 F4 */ stfs f0, 0xf4(r1)
/* 80014318 00011258  C0 01 00 98 */ lfs f0, 0x98(r1)
/* 8001431C 0001125C  D0 01 00 F8 */ stfs f0, 0xf8(r1)
/* 80014320 00011260  C0 01 00 9C */ lfs f0, 0x9c(r1)
/* 80014324 00011264  D0 01 00 FC */ stfs f0, 0xfc(r1)
/* 80014328 00011268  38 61 00 88 */ addi r3, r1, 0x88
/* 8001432C 0001126C  7F 44 D3 78 */ mr r4, r26
/* 80014330 00011270  38 A1 01 00 */ addi r5, r1, 0x100
/* 80014334 00011274  48 25 28 01 */ bl __mi__4cXyzCFRC3Vec
/* 80014338 00011278  C0 01 00 88 */ lfs f0, 0x88(r1)
/* 8001433C 0001127C  D0 01 00 E8 */ stfs f0, 0xe8(r1)
/* 80014340 00011280  C0 01 00 8C */ lfs f0, 0x8c(r1)
/* 80014344 00011284  D0 01 00 EC */ stfs f0, 0xec(r1)
/* 80014348 00011288  C0 01 00 90 */ lfs f0, 0x90(r1)
/* 8001434C 0001128C  D0 01 00 F0 */ stfs f0, 0xf0(r1)
/* 80014350 00011290  A0 6F 00 34 */ lhz r3, 0x34(r15)
/* 80014354 00011294  3A 03 FF FE */ addi r16, r3, -2
/* 80014358 00011298  48 00 02 F8 */ b lbl_80014650
lbl_8001435C:
/* 8001435C 0001129C  D3 74 00 04 */ stfs f27, 4(r20)
/* 80014360 000112A0  D3 74 00 0C */ stfs f27, 0xc(r20)
/* 80014364 000112A4  38 61 00 7C */ addi r3, r1, 0x7c
/* 80014368 000112A8  38 9A 00 0C */ addi r4, r26, 0xc
/* 8001436C 000112AC  7F 45 D3 78 */ mr r5, r26
/* 80014370 000112B0  3A 94 00 10 */ addi r20, r20, 0x10
/* 80014374 000112B4  48 25 27 C1 */ bl __mi__4cXyzCFRC3Vec
/* 80014378 000112B8  C0 01 00 7C */ lfs f0, 0x7c(r1)
/* 8001437C 000112BC  D0 01 01 00 */ stfs f0, 0x100(r1)
/* 80014380 000112C0  C0 01 00 80 */ lfs f0, 0x80(r1)
/* 80014384 000112C4  D0 01 01 04 */ stfs f0, 0x104(r1)
/* 80014388 000112C8  C0 01 00 84 */ lfs f0, 0x84(r1)
/* 8001438C 000112CC  D0 01 01 08 */ stfs f0, 0x108(r1)
/* 80014390 000112D0  38 61 01 00 */ addi r3, r1, 0x100
/* 80014394 000112D4  48 33 2D A5 */ bl PSVECSquareMag
/* 80014398 000112D8  FC 01 E8 40 */ fcmpo cr0, f1, f29
/* 8001439C 000112DC  40 81 00 58 */ ble lbl_800143F4
/* 800143A0 000112E0  FC 00 08 34 */ frsqrte f0, f1
/* 800143A4 000112E4  C8 82 81 48 */ lfd f4, lbl_80451B48-_SDA2_BASE_(r2)
/* 800143A8 000112E8  FC 44 00 32 */ fmul f2, f4, f0
/* 800143AC 000112EC  C8 62 81 50 */ lfd f3, lbl_80451B50-_SDA2_BASE_(r2)
/* 800143B0 000112F0  FC 00 00 32 */ fmul f0, f0, f0
/* 800143B4 000112F4  FC 01 00 32 */ fmul f0, f1, f0
/* 800143B8 000112F8  FC 03 00 28 */ fsub f0, f3, f0
/* 800143BC 000112FC  FC 02 00 32 */ fmul f0, f2, f0
/* 800143C0 00011300  FC 44 00 32 */ fmul f2, f4, f0
/* 800143C4 00011304  FC 00 00 32 */ fmul f0, f0, f0
/* 800143C8 00011308  FC 01 00 32 */ fmul f0, f1, f0
/* 800143CC 0001130C  FC 03 00 28 */ fsub f0, f3, f0
/* 800143D0 00011310  FC 02 00 32 */ fmul f0, f2, f0
/* 800143D4 00011314  FC 44 00 32 */ fmul f2, f4, f0
/* 800143D8 00011318  FC 00 00 32 */ fmul f0, f0, f0
/* 800143DC 0001131C  FC 01 00 32 */ fmul f0, f1, f0
/* 800143E0 00011320  FC 03 00 28 */ fsub f0, f3, f0
/* 800143E4 00011324  FC 02 00 32 */ fmul f0, f2, f0
/* 800143E8 00011328  FC 21 00 32 */ fmul f1, f1, f0
/* 800143EC 0001132C  FC 20 08 18 */ frsp f1, f1
/* 800143F0 00011330  48 00 00 88 */ b lbl_80014478
lbl_800143F4:
/* 800143F4 00011334  C8 02 81 58 */ lfd f0, lbl_80451B58-_SDA2_BASE_(r2)
/* 800143F8 00011338  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800143FC 0001133C  40 80 00 10 */ bge lbl_8001440C
/* 80014400 00011340  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80014404 00011344  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 80014408 00011348  48 00 00 70 */ b lbl_80014478
lbl_8001440C:
/* 8001440C 0001134C  D0 21 00 08 */ stfs f1, 8(r1)
/* 80014410 00011350  80 81 00 08 */ lwz r4, 8(r1)
/* 80014414 00011354  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 80014418 00011358  3C 00 7F 80 */ lis r0, 0x7f80
/* 8001441C 0001135C  7C 03 00 00 */ cmpw r3, r0
/* 80014420 00011360  41 82 00 14 */ beq lbl_80014434
/* 80014424 00011364  40 80 00 40 */ bge lbl_80014464
/* 80014428 00011368  2C 03 00 00 */ cmpwi r3, 0
/* 8001442C 0001136C  41 82 00 20 */ beq lbl_8001444C
/* 80014430 00011370  48 00 00 34 */ b lbl_80014464
lbl_80014434:
/* 80014434 00011374  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80014438 00011378  41 82 00 0C */ beq lbl_80014444
/* 8001443C 0001137C  38 00 00 01 */ li r0, 1
/* 80014440 00011380  48 00 00 28 */ b lbl_80014468
lbl_80014444:
/* 80014444 00011384  38 00 00 02 */ li r0, 2
/* 80014448 00011388  48 00 00 20 */ b lbl_80014468
lbl_8001444C:
/* 8001444C 0001138C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80014450 00011390  41 82 00 0C */ beq lbl_8001445C
/* 80014454 00011394  38 00 00 05 */ li r0, 5
/* 80014458 00011398  48 00 00 10 */ b lbl_80014468
lbl_8001445C:
/* 8001445C 0001139C  38 00 00 03 */ li r0, 3
/* 80014460 000113A0  48 00 00 08 */ b lbl_80014468
lbl_80014464:
/* 80014464 000113A4  38 00 00 04 */ li r0, 4
lbl_80014468:
/* 80014468 000113A8  2C 00 00 01 */ cmpwi r0, 1
/* 8001446C 000113AC  40 82 00 0C */ bne lbl_80014478
/* 80014470 000113B0  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80014474 000113B4  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_80014478:
/* 80014478 000113B8  EC 1E 00 72 */ fmuls f0, f30, f1
/* 8001447C 000113BC  EF 7B 00 2A */ fadds f27, f27, f0
/* 80014480 000113C0  38 61 00 70 */ addi r3, r1, 0x70
/* 80014484 000113C4  7F 44 D3 78 */ mr r4, r26
/* 80014488 000113C8  38 BF 00 D8 */ addi r5, r31, 0xd8
/* 8001448C 000113CC  48 25 26 A9 */ bl __mi__4cXyzCFRC3Vec
/* 80014490 000113D0  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 80014494 000113D4  D0 01 01 0C */ stfs f0, 0x10c(r1)
/* 80014498 000113D8  C0 01 00 74 */ lfs f0, 0x74(r1)
/* 8001449C 000113DC  D0 01 01 10 */ stfs f0, 0x110(r1)
/* 800144A0 000113E0  C0 01 00 78 */ lfs f0, 0x78(r1)
/* 800144A4 000113E4  D0 01 01 14 */ stfs f0, 0x114(r1)
/* 800144A8 000113E8  38 61 00 64 */ addi r3, r1, 0x64
/* 800144AC 000113EC  38 81 01 00 */ addi r4, r1, 0x100
/* 800144B0 000113F0  38 A1 01 0C */ addi r5, r1, 0x10c
/* 800144B4 000113F4  48 25 28 09 */ bl outprod__4cXyzCFRC3Vec
/* 800144B8 000113F8  C0 01 00 64 */ lfs f0, 0x64(r1)
/* 800144BC 000113FC  D0 01 01 00 */ stfs f0, 0x100(r1)
/* 800144C0 00011400  C0 01 00 68 */ lfs f0, 0x68(r1)
/* 800144C4 00011404  D0 01 01 04 */ stfs f0, 0x104(r1)
/* 800144C8 00011408  C0 01 00 6C */ lfs f0, 0x6c(r1)
/* 800144CC 0001140C  D0 01 01 08 */ stfs f0, 0x108(r1)
/* 800144D0 00011410  38 61 00 58 */ addi r3, r1, 0x58
/* 800144D4 00011414  38 81 01 00 */ addi r4, r1, 0x100
/* 800144D8 00011418  48 25 2A 71 */ bl normalizeZP__4cXyzFv
/* 800144DC 0001141C  C0 01 01 00 */ lfs f0, 0x100(r1)
/* 800144E0 00011420  EC 1F 00 32 */ fmuls f0, f31, f0
/* 800144E4 00011424  FC 00 00 1E */ fctiwz f0, f0
/* 800144E8 00011428  D8 01 01 28 */ stfd f0, 0x128(r1)
/* 800144EC 0001142C  80 01 01 2C */ lwz r0, 0x12c(r1)
/* 800144F0 00011430  98 17 00 06 */ stb r0, 6(r23)
/* 800144F4 00011434  C0 01 01 04 */ lfs f0, 0x104(r1)
/* 800144F8 00011438  EC 1F 00 32 */ fmuls f0, f31, f0
/* 800144FC 0001143C  FC 00 00 1E */ fctiwz f0, f0
/* 80014500 00011440  D8 01 01 20 */ stfd f0, 0x120(r1)
/* 80014504 00011444  80 01 01 24 */ lwz r0, 0x124(r1)
/* 80014508 00011448  98 17 00 07 */ stb r0, 7(r23)
/* 8001450C 0001144C  C0 01 01 08 */ lfs f0, 0x108(r1)
/* 80014510 00011450  EC 1F 00 32 */ fmuls f0, f31, f0
/* 80014514 00011454  FC 00 00 1E */ fctiwz f0, f0
/* 80014518 00011458  D8 01 01 18 */ stfd f0, 0x118(r1)
/* 8001451C 0001145C  80 01 01 1C */ lwz r0, 0x11c(r1)
/* 80014520 00011460  98 17 00 08 */ stb r0, 8(r23)
/* 80014524 00011464  88 17 00 06 */ lbz r0, 6(r23)
/* 80014528 00011468  7C 00 00 D0 */ neg r0, r0
/* 8001452C 0001146C  98 16 00 06 */ stb r0, 6(r22)
/* 80014530 00011470  88 17 00 07 */ lbz r0, 7(r23)
/* 80014534 00011474  7C 00 00 D0 */ neg r0, r0
/* 80014538 00011478  98 16 00 07 */ stb r0, 7(r22)
/* 8001453C 0001147C  88 17 00 08 */ lbz r0, 8(r23)
/* 80014540 00011480  7C 00 00 D0 */ neg r0, r0
/* 80014544 00011484  98 16 00 08 */ stb r0, 8(r22)
/* 80014548 00011488  38 61 01 00 */ addi r3, r1, 0x100
/* 8001454C 0001148C  7C 64 1B 78 */ mr r4, r3
/* 80014550 00011490  C0 32 00 00 */ lfs f1, 0(r18)
/* 80014554 00011494  3A F7 00 06 */ addi r23, r23, 6
/* 80014558 00011498  3A D6 00 06 */ addi r22, r22, 6
/* 8001455C 0001149C  48 33 2B 7D */ bl PSVECScale
/* 80014560 000114A0  38 61 00 4C */ addi r3, r1, 0x4c
/* 80014564 000114A4  7F 44 D3 78 */ mr r4, r26
/* 80014568 000114A8  38 A1 01 00 */ addi r5, r1, 0x100
/* 8001456C 000114AC  48 25 25 79 */ bl __pl__4cXyzCFRC3Vec
/* 80014570 000114B0  38 61 00 F4 */ addi r3, r1, 0xf4
/* 80014574 000114B4  38 81 00 4C */ addi r4, r1, 0x4c
/* 80014578 000114B8  7C 65 1B 78 */ mr r5, r3
/* 8001457C 000114BC  48 33 2B 15 */ bl PSVECAdd
/* 80014580 000114C0  38 61 00 40 */ addi r3, r1, 0x40
/* 80014584 000114C4  7F 44 D3 78 */ mr r4, r26
/* 80014588 000114C8  38 A1 01 00 */ addi r5, r1, 0x100
/* 8001458C 000114CC  48 25 25 A9 */ bl __mi__4cXyzCFRC3Vec
/* 80014590 000114D0  38 61 00 E8 */ addi r3, r1, 0xe8
/* 80014594 000114D4  38 81 00 40 */ addi r4, r1, 0x40
/* 80014598 000114D8  7C 65 1B 78 */ mr r5, r3
/* 8001459C 000114DC  48 33 2A F5 */ bl PSVECAdd
/* 800145A0 000114E0  38 61 00 34 */ addi r3, r1, 0x34
/* 800145A4 000114E4  38 81 00 F4 */ addi r4, r1, 0xf4
/* 800145A8 000114E8  C0 22 81 2C */ lfs f1, lbl_80451B2C-_SDA2_BASE_(r2)
/* 800145AC 000114EC  48 25 25 D9 */ bl __ml__4cXyzCFf
/* 800145B0 000114F0  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 800145B4 000114F4  D0 19 00 00 */ stfs f0, 0(r25)
/* 800145B8 000114F8  C0 01 00 38 */ lfs f0, 0x38(r1)
/* 800145BC 000114FC  D0 19 00 04 */ stfs f0, 4(r25)
/* 800145C0 00011500  C0 01 00 3C */ lfs f0, 0x3c(r1)
/* 800145C4 00011504  D0 19 00 08 */ stfs f0, 8(r25)
/* 800145C8 00011508  38 61 00 28 */ addi r3, r1, 0x28
/* 800145CC 0001150C  38 81 00 E8 */ addi r4, r1, 0xe8
/* 800145D0 00011510  C0 22 81 2C */ lfs f1, lbl_80451B2C-_SDA2_BASE_(r2)
/* 800145D4 00011514  48 25 25 B1 */ bl __ml__4cXyzCFf
/* 800145D8 00011518  C0 01 00 28 */ lfs f0, 0x28(r1)
/* 800145DC 0001151C  D0 19 00 0C */ stfs f0, 0xc(r25)
/* 800145E0 00011520  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 800145E4 00011524  D0 19 00 10 */ stfs f0, 0x10(r25)
/* 800145E8 00011528  C0 01 00 30 */ lfs f0, 0x30(r1)
/* 800145EC 0001152C  D0 19 00 14 */ stfs f0, 0x14(r25)
/* 800145F0 00011530  3B 5A 00 0C */ addi r26, r26, 0xc
/* 800145F4 00011534  38 61 00 1C */ addi r3, r1, 0x1c
/* 800145F8 00011538  7F 44 D3 78 */ mr r4, r26
/* 800145FC 0001153C  38 A1 01 00 */ addi r5, r1, 0x100
/* 80014600 00011540  3B 39 00 18 */ addi r25, r25, 0x18
/* 80014604 00011544  3A 52 00 04 */ addi r18, r18, 4
/* 80014608 00011548  48 25 24 DD */ bl __pl__4cXyzCFRC3Vec
/* 8001460C 0001154C  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 80014610 00011550  D0 01 00 F4 */ stfs f0, 0xf4(r1)
/* 80014614 00011554  C0 01 00 20 */ lfs f0, 0x20(r1)
/* 80014618 00011558  D0 01 00 F8 */ stfs f0, 0xf8(r1)
/* 8001461C 0001155C  C0 01 00 24 */ lfs f0, 0x24(r1)
/* 80014620 00011560  D0 01 00 FC */ stfs f0, 0xfc(r1)
/* 80014624 00011564  38 61 00 10 */ addi r3, r1, 0x10
/* 80014628 00011568  7F 44 D3 78 */ mr r4, r26
/* 8001462C 0001156C  38 A1 01 00 */ addi r5, r1, 0x100
/* 80014630 00011570  48 25 25 05 */ bl __mi__4cXyzCFRC3Vec
/* 80014634 00011574  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 80014638 00011578  D0 01 00 E8 */ stfs f0, 0xe8(r1)
/* 8001463C 0001157C  C0 01 00 14 */ lfs f0, 0x14(r1)
/* 80014640 00011580  D0 01 00 EC */ stfs f0, 0xec(r1)
/* 80014644 00011584  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 80014648 00011588  D0 01 00 F0 */ stfs f0, 0xf0(r1)
/* 8001464C 0001158C  3A 10 FF FF */ addi r16, r16, -1
lbl_80014650:
/* 80014650 00011590  2C 10 00 00 */ cmpwi r16, 0
/* 80014654 00011594  41 81 FD 08 */ bgt lbl_8001435C
/* 80014658 00011598  D3 74 00 04 */ stfs f27, 4(r20)
/* 8001465C 0001159C  D3 74 00 0C */ stfs f27, 0xc(r20)
/* 80014660 000115A0  88 17 00 00 */ lbz r0, 0(r23)
/* 80014664 000115A4  98 16 00 03 */ stb r0, 3(r22)
/* 80014668 000115A8  88 17 00 01 */ lbz r0, 1(r23)
/* 8001466C 000115AC  98 16 00 04 */ stb r0, 4(r22)
/* 80014670 000115B0  88 17 00 02 */ lbz r0, 2(r23)
/* 80014674 000115B4  98 16 00 05 */ stb r0, 5(r22)
/* 80014678 000115B8  88 17 00 03 */ lbz r0, 3(r23)
/* 8001467C 000115BC  98 16 00 06 */ stb r0, 6(r22)
/* 80014680 000115C0  88 17 00 04 */ lbz r0, 4(r23)
/* 80014684 000115C4  98 16 00 07 */ stb r0, 7(r22)
/* 80014688 000115C8  88 17 00 05 */ lbz r0, 5(r23)
/* 8001468C 000115CC  98 16 00 08 */ stb r0, 8(r22)
/* 80014690 000115D0  C0 01 00 F4 */ lfs f0, 0xf4(r1)
/* 80014694 000115D4  D0 19 00 00 */ stfs f0, 0(r25)
/* 80014698 000115D8  C0 01 00 F8 */ lfs f0, 0xf8(r1)
/* 8001469C 000115DC  D0 19 00 04 */ stfs f0, 4(r25)
/* 800146A0 000115E0  C0 01 00 FC */ lfs f0, 0xfc(r1)
/* 800146A4 000115E4  D0 19 00 08 */ stfs f0, 8(r25)
/* 800146A8 000115E8  C0 01 00 E8 */ lfs f0, 0xe8(r1)
/* 800146AC 000115EC  D0 19 00 0C */ stfs f0, 0xc(r25)
/* 800146B0 000115F0  C0 01 00 EC */ lfs f0, 0xec(r1)
/* 800146B4 000115F4  D0 19 00 10 */ stfs f0, 0x10(r25)
/* 800146B8 000115F8  C0 01 00 F0 */ lfs f0, 0xf0(r1)
/* 800146BC 000115FC  D0 19 00 14 */ stfs f0, 0x14(r25)
/* 800146C0 00011600  7F 03 C3 78 */ mr r3, r24
/* 800146C4 00011604  7F A4 EB 78 */ mr r4, r29
/* 800146C8 00011608  48 32 6F 71 */ bl DCStoreRangeNoSync
/* 800146CC 0001160C  7E A3 AB 78 */ mr r3, r21
/* 800146D0 00011610  7F 84 E3 78 */ mr r4, r28
/* 800146D4 00011614  48 32 6F 65 */ bl DCStoreRangeNoSync
/* 800146D8 00011618  7E 63 9B 78 */ mr r3, r19
/* 800146DC 0001161C  7F 64 DB 78 */ mr r4, r27
/* 800146E0 00011620  48 32 6F 59 */ bl DCStoreRangeNoSync
/* 800146E4 00011624  3B DE 00 20 */ addi r30, r30, 0x20
/* 800146E8 00011628  3A 31 00 01 */ addi r17, r17, 1
lbl_800146EC:
/* 800146EC 0001162C  A0 0F 00 30 */ lhz r0, 0x30(r15)
/* 800146F0 00011630  7C 11 00 00 */ cmpw r17, r0
/* 800146F4 00011634  41 80 F9 8C */ blt lbl_80014080
/* 800146F8 00011638  E3 E1 01 C8 */ psq_l f31, 456(r1), 0, 0
/* 800146FC 0001163C  CB E1 01 C0 */ lfd f31, 0x1c0(r1)
/* 80014700 00011640  E3 C1 01 B8 */ psq_l f30, 440(r1), 0, 0
/* 80014704 00011644  CB C1 01 B0 */ lfd f30, 0x1b0(r1)
/* 80014708 00011648  E3 A1 01 A8 */ psq_l f29, 424(r1), 0, 0
/* 8001470C 0001164C  CB A1 01 A0 */ lfd f29, 0x1a0(r1)
/* 80014710 00011650  E3 81 01 98 */ psq_l f28, 408(r1), 0, 0
/* 80014714 00011654  CB 81 01 90 */ lfd f28, 0x190(r1)
/* 80014718 00011658  E3 61 01 88 */ psq_l f27, 392(r1), 0, 0
/* 8001471C 0001165C  CB 61 01 80 */ lfd f27, 0x180(r1)
/* 80014720 00011660  39 61 01 80 */ addi r11, r1, 0x180
/* 80014724 00011664  48 34 DA CD */ bl _restgpr_15
/* 80014728 00011668  80 01 01 D4 */ lwz r0, 0x1d4(r1)
/* 8001472C 0001166C  7C 08 03 A6 */ mtlr r0
/* 80014730 00011670  38 21 01 D0 */ addi r1, r1, 0x1d0
/* 80014734 00011674  4E 80 00 20 */ blr