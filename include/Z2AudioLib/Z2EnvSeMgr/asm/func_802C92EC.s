/* 802C92EC 002C622C  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 802C92F0 002C6230  7C 08 02 A6 */ mflr r0
/* 802C92F4 002C6234  90 01 00 34 */ stw r0, 0x34(r1)
/* 802C92F8 002C6238  DB E1 00 20 */ stfd f31, 0x20(r1)
/* 802C92FC 002C623C  F3 E1 00 28 */ psq_st f31, 40(r1), 0, 0
/* 802C9300 002C6240  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 802C9304 002C6244  93 C1 00 18 */ stw r30, 0x18(r1)
/* 802C9308 002C6248  7C 7E 1B 78 */ mr r30, r3
/* 802C930C 002C624C  7C 9F 23 78 */ mr r31, r4
/* 802C9310 002C6250  80 03 02 44 */ lwz r0, 0x244(r3)
/* 802C9314 002C6254  28 00 00 00 */ cmplwi r0, 0
/* 802C9318 002C6258  41 82 00 68 */ beq lbl_802C9380
/* 802C931C 002C625C  48 00 00 C9 */ bl Z2EnvSeMgr_NS_getFogDensity
/* 802C9320 002C6260  FF E0 08 90 */ fmr f31, f1
/* 802C9324 002C6264  7F C3 F3 78 */ mr r3, r30
/* 802C9328 002C6268  48 00 00 BD */ bl Z2EnvSeMgr_NS_getFogDensity
/* 802C932C 002C626C  C0 02 C4 58 */ lfs f0, lbl_80455E58-_SDA2_BASE_(r2)
/* 802C9330 002C6270  EC 20 00 72 */ fmuls f1, f0, f1
/* 802C9334 002C6274  48 09 8D 79 */ bl func_803620AC
/* 802C9338 002C6278  7C 67 1B 78 */ mr r7, r3
/* 802C933C 002C627C  3C 60 00 09 */ lis r3, 0x00090035@ha
/* 802C9340 002C6280  38 03 00 35 */ addi r0, r3, 0x00090035@l
/* 802C9344 002C6284  90 01 00 08 */ stw r0, 8(r1)
/* 802C9348 002C6288  80 6D 85 F4 */ lwz r3, lbl_80450B74-_SDA_BASE_(r13)
/* 802C934C 002C628C  38 81 00 08 */ addi r4, r1, 8
/* 802C9350 002C6290  38 BE 02 10 */ addi r5, r30, 0x210
/* 802C9354 002C6294  7F E6 FB 78 */ mr r6, r31
/* 802C9358 002C6298  C0 22 C3 B0 */ lfs f1, lbl_80455DB0-_SDA2_BASE_(r2)
/* 802C935C 002C629C  C0 42 C3 44 */ lfs f2, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C9360 002C62A0  FC 60 F8 90 */ fmr f3, f31
/* 802C9364 002C62A4  C0 82 C3 74 */ lfs f4, lbl_80455D74-_SDA2_BASE_(r2)
/* 802C9368 002C62A8  FC A0 20 90 */ fmr f5, f4
/* 802C936C 002C62AC  39 00 00 00 */ li r8, 0
/* 802C9370 002C62B0  81 83 00 00 */ lwz r12, 0(r3)
/* 802C9374 002C62B4  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 802C9378 002C62B8  7D 89 03 A6 */ mtctr r12
/* 802C937C 002C62BC  4E 80 04 21 */ bctrl
lbl_802C9380:
/* 802C9380 002C62C0  E3 E1 00 28 */ psq_l f31, 40(r1), 0, 0
/* 802C9384 002C62C4  CB E1 00 20 */ lfd f31, 0x20(r1)
/* 802C9388 002C62C8  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 802C938C 002C62CC  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 802C9390 002C62D0  80 01 00 34 */ lwz r0, 0x34(r1)
/* 802C9394 002C62D4  7C 08 03 A6 */ mtlr r0
/* 802C9398 002C62D8  38 21 00 30 */ addi r1, r1, 0x30
/* 802C939C 002C62DC  4E 80 00 20 */ blr