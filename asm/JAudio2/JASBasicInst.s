.include "macros.inc"

.section .text, "ax" # 80298014


.global JASBasicInst
JASBasicInst:
/* 80298014 00294F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298018 00294F58  7C 08 02 A6 */	mflr r0
/* 8029801C 00294F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298020 00294F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298024 00294F64  7C 7F 1B 78 */	mr r31, r3
/* 80298028 00294F68  3C 60 80 3C */	lis r3, lbl_803C76FC@ha
/* 8029802C 00294F6C  38 03 76 FC */	addi r0, r3, lbl_803C76FC@l
/* 80298030 00294F70  90 1F 00 00 */	stw r0, 0(r31)
/* 80298034 00294F74  3C 60 80 3C */	lis r3, lbl_803C76E8@ha
/* 80298038 00294F78  38 03 76 E8 */	addi r0, r3, lbl_803C76E8@l
/* 8029803C 00294F7C  90 1F 00 00 */	stw r0, 0(r31)
/* 80298040 00294F80  C0 02 BC 40 */	lfs f0, lbl_80455640-_SDA2_BASE_(r2)
/* 80298044 00294F84  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80298048 00294F88  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8029804C 00294F8C  38 00 00 00 */	li r0, 0
/* 80298050 00294F90  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80298054 00294F94  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80298058 00294F98  38 7F 00 0C */	addi r3, r31, 0xc
/* 8029805C 00294F9C  38 80 00 08 */	li r4, 8
/* 80298060 00294FA0  4B FF 74 21 */	bl JASCalc_NS_bzero
/* 80298064 00294FA4  7F E3 FB 78 */	mr r3, r31
/* 80298068 00294FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029806C 00294FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298070 00294FB0  7C 08 03 A6 */	mtlr r0
/* 80298074 00294FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80298078 00294FB8  4E 80 00 20 */	blr 
/* 8029807C 00294FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298080 00294FC0  7C 08 02 A6 */	mflr r0
/* 80298084 00294FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298088 00294FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029808C 00294FCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80298090 00294FD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80298094 00294FD4  7C 9F 23 78 */	mr r31, r4
/* 80298098 00294FD8  41 82 00 44 */	beq lbl_802980DC
/* 8029809C 00294FDC  3C 60 80 3C */	lis r3, lbl_803C76E8@ha
/* 802980A0 00294FE0  38 03 76 E8 */	addi r0, r3, lbl_803C76E8@l
/* 802980A4 00294FE4  90 1E 00 00 */	stw r0, 0(r30)
/* 802980A8 00294FE8  80 7E 00 18 */	lwz r3, 0x18(r30)
.global JASBasicInst_NS_TKeymap_NS_dtor
/* 802980AC 00294FEC  3C 80 80 2A */	lis r4, JASBasicInst_NS_TKeymap_NS_dtor@ha
.global JASBasicInst_NS_TKeymap_NS_dtor
/* 802980B0 00294FF0  38 84 82 50 */	addi r4, r4, JASBasicInst_NS_TKeymap_NS_dtor@l
/* 802980B4 00294FF4  48 0C 9B B9 */	bl func_80361C6C
/* 802980B8 00294FF8  28 1E 00 00 */	cmplwi r30, 0
/* 802980BC 00294FFC  41 82 00 10 */	beq lbl_802980CC
/* 802980C0 00295000  3C 60 80 3C */	lis r3, lbl_803C76FC@ha
/* 802980C4 00295004  38 03 76 FC */	addi r0, r3, lbl_803C76FC@l
/* 802980C8 00295008  90 1E 00 00 */	stw r0, 0(r30)
lbl_802980CC:
/* 802980CC 0029500C  7F E0 07 35 */	extsh. r0, r31
/* 802980D0 00295010  40 81 00 0C */	ble lbl_802980DC
/* 802980D4 00295014  7F C3 F3 78 */	mr r3, r30
/* 802980D8 00295018  48 03 6C 65 */	bl __dl__FPv
lbl_802980DC:
/* 802980DC 0029501C  7F C3 F3 78 */	mr r3, r30
/* 802980E0 00295020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802980E4 00295024  83 C1 00 08 */	lwz r30, 8(r1)
/* 802980E8 00295028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802980EC 0029502C  7C 08 03 A6 */	mtlr r0
/* 802980F0 00295030  38 21 00 10 */	addi r1, r1, 0x10
/* 802980F4 00295034  4E 80 00 20 */	blr 
/* 802980F8 00295038  38 A0 00 00 */	li r5, 0
/* 802980FC 0029503C  98 A6 00 1C */	stb r5, 0x1c(r6)
/* 80298100 00295040  98 A6 00 1E */	stb r5, 0x1e(r6)
/* 80298104 00295044  38 03 00 0C */	addi r0, r3, 0xc
/* 80298108 00295048  90 06 00 14 */	stw r0, 0x14(r6)
/* 8029810C 0029504C  38 00 00 02 */	li r0, 2
/* 80298110 00295050  98 06 00 1D */	stb r0, 0x1d(r6)
/* 80298114 00295054  C0 03 00 04 */	lfs f0, 4(r3)
/* 80298118 00295058  D0 06 00 00 */	stfs f0, 0(r6)
/* 8029811C 0029505C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80298120 00295060  D0 06 00 08 */	stfs f0, 8(r6)
/* 80298124 00295064  39 00 00 00 */	li r8, 0
/* 80298128 00295068  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8029812C 0029506C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80298130 00295070  7C 09 03 A6 */	mtctr r0
/* 80298134 00295074  28 00 00 00 */	cmplwi r0, 0
/* 80298138 00295078  40 81 00 24 */	ble lbl_8029815C
lbl_8029813C:
/* 8029813C 0029507C  7C E3 2A 14 */	add r7, r3, r5
/* 80298140 00295080  80 07 00 00 */	lwz r0, 0(r7)
/* 80298144 00295084  7C 04 00 00 */	cmpw r4, r0
/* 80298148 00295088  41 81 00 0C */	bgt lbl_80298154
/* 8029814C 0029508C  7C E8 3B 78 */	mr r8, r7
/* 80298150 00295090  48 00 00 0C */	b lbl_8029815C
lbl_80298154:
/* 80298154 00295094  38 A5 00 10 */	addi r5, r5, 0x10
/* 80298158 00295098  42 00 FF E4 */	bdnz lbl_8029813C
lbl_8029815C:
/* 8029815C 0029509C  28 08 00 00 */	cmplwi r8, 0
/* 80298160 002950A0  40 82 00 0C */	bne lbl_8029816C
/* 80298164 002950A4  38 60 00 00 */	li r3, 0
/* 80298168 002950A8  4E 80 00 20 */	blr 
lbl_8029816C:
/* 8029816C 002950AC  C0 26 00 00 */	lfs f1, 0(r6)
/* 80298170 002950B0  C0 08 00 08 */	lfs f0, 8(r8)
/* 80298174 002950B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80298178 002950B8  D0 06 00 00 */	stfs f0, 0(r6)
/* 8029817C 002950BC  C0 26 00 08 */	lfs f1, 8(r6)
/* 80298180 002950C0  C0 08 00 0C */	lfs f0, 0xc(r8)
/* 80298184 002950C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80298188 002950C8  D0 06 00 08 */	stfs f0, 8(r6)
/* 8029818C 002950CC  A0 08 00 04 */	lhz r0, 4(r8)
/* 80298190 002950D0  B0 06 00 1A */	sth r0, 0x1a(r6)
/* 80298194 002950D4  38 60 00 01 */	li r3, 1
/* 80298198 002950D8  4E 80 00 20 */	blr 

.global JASBasicInst_NS_setKeyRegionCount
JASBasicInst_NS_setKeyRegionCount:
/* 8029819C 002950DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802981A0 002950E0  7C 08 02 A6 */	mflr r0
/* 802981A4 002950E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802981A8 002950E8  39 61 00 20 */	addi r11, r1, 0x20
/* 802981AC 002950EC  48 0C A0 31 */	bl _savegpr_29
/* 802981B0 002950F0  7C 7D 1B 78 */	mr r29, r3
/* 802981B4 002950F4  7C 9E 23 78 */	mr r30, r4
/* 802981B8 002950F8  7C BF 2B 78 */	mr r31, r5
/* 802981BC 002950FC  80 63 00 18 */	lwz r3, 0x18(r3)
.global JASBasicInst_NS_TKeymap_NS_dtor
/* 802981C0 00295100  3C 80 80 2A */	lis r4, JASBasicInst_NS_TKeymap_NS_dtor@ha
.global JASBasicInst_NS_TKeymap_NS_dtor
/* 802981C4 00295104  38 84 82 50 */	addi r4, r4, JASBasicInst_NS_TKeymap_NS_dtor@l
/* 802981C8 00295108  48 0C 9A A5 */	bl func_80361C6C
/* 802981CC 0029510C  57 C3 20 36 */	slwi r3, r30, 4
/* 802981D0 00295110  38 63 00 10 */	addi r3, r3, 0x10
/* 802981D4 00295114  7F E4 FB 78 */	mr r4, r31
/* 802981D8 00295118  38 A0 00 00 */	li r5, 0
/* 802981DC 0029511C  48 03 6B 35 */	bl __nwa__FUlP7JKRHeapi
.global JASBasicInst_NS_TKeymap
/* 802981E0 00295120  3C 80 80 2A */	lis r4, JASBasicInst_NS_TKeymap@ha
.global JASBasicInst_NS_TKeymap
/* 802981E4 00295124  38 84 82 D4 */	addi r4, r4, JASBasicInst_NS_TKeymap@l
.global JASBasicInst_NS_TKeymap_NS_dtor
/* 802981E8 00295128  3C A0 80 2A */	lis r5, JASBasicInst_NS_TKeymap_NS_dtor@ha
.global JASBasicInst_NS_TKeymap_NS_dtor
/* 802981EC 0029512C  38 A5 82 50 */	addi r5, r5, JASBasicInst_NS_TKeymap_NS_dtor@l
/* 802981F0 00295130  38 C0 00 10 */	li r6, 0x10
/* 802981F4 00295134  7F C7 F3 78 */	mr r7, r30
/* 802981F8 00295138  48 0C 9D 1D */	bl func_80361F14
/* 802981FC 0029513C  90 7D 00 18 */	stw r3, 0x18(r29)
/* 80298200 00295140  93 DD 00 14 */	stw r30, 0x14(r29)
/* 80298204 00295144  39 61 00 20 */	addi r11, r1, 0x20
/* 80298208 00295148  48 0C A0 21 */	bl _restgpr_29
/* 8029820C 0029514C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80298210 00295150  7C 08 03 A6 */	mtlr r0
/* 80298214 00295154  38 21 00 20 */	addi r1, r1, 0x20
/* 80298218 00295158  4E 80 00 20 */	blr 

.global JASBasicInst_NS_setOsc
JASBasicInst_NS_setOsc:
/* 8029821C 0029515C  54 80 10 3A */	slwi r0, r4, 2
/* 80298220 00295160  7C 63 02 14 */	add r3, r3, r0
/* 80298224 00295164  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80298228 00295168  4E 80 00 20 */	blr 

.global JASBasicInst_NS_getKeyRegion
JASBasicInst_NS_getKeyRegion:
/* 8029822C 0029516C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80298230 00295170  7C 04 00 40 */	cmplw r4, r0
/* 80298234 00295174  41 80 00 0C */	blt lbl_80298240
/* 80298238 00295178  38 60 00 00 */	li r3, 0
/* 8029823C 0029517C  4E 80 00 20 */	blr 
lbl_80298240:
/* 80298240 00295180  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80298244 00295184  54 80 20 36 */	slwi r0, r4, 4
/* 80298248 00295188  7C 63 02 14 */	add r3, r3, r0
/* 8029824C 0029518C  4E 80 00 20 */	blr 
.global JASBasicInst_NS_TKeymap_NS_dtor
JASBasicInst_NS_TKeymap_NS_dtor:
/* 80298250 00295190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298254 00295194  7C 08 02 A6 */	mflr r0
/* 80298258 00295198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029825C 0029519C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298260 002951A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80298264 002951A4  41 82 00 10 */	beq lbl_80298274
/* 80298268 002951A8  7C 80 07 35 */	extsh. r0, r4
/* 8029826C 002951AC  40 81 00 08 */	ble lbl_80298274
/* 80298270 002951B0  48 03 6A CD */	bl __dl__FPv
lbl_80298274:
/* 80298274 002951B4  7F E3 FB 78 */	mr r3, r31
/* 80298278 002951B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029827C 002951BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298280 002951C0  7C 08 03 A6 */	mtlr r0
/* 80298284 002951C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80298288 002951C8  4E 80 00 20 */	blr 
/* 8029828C 002951CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298290 002951D0  7C 08 02 A6 */	mflr r0
/* 80298294 002951D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298298 002951D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029829C 002951DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 802982A0 002951E0  41 82 00 1C */	beq lbl_802982BC
/* 802982A4 002951E4  3C A0 80 3C */	lis r5, lbl_803C76FC@ha
/* 802982A8 002951E8  38 05 76 FC */	addi r0, r5, lbl_803C76FC@l
/* 802982AC 002951EC  90 1F 00 00 */	stw r0, 0(r31)
/* 802982B0 002951F0  7C 80 07 35 */	extsh. r0, r4
/* 802982B4 002951F4  40 81 00 08 */	ble lbl_802982BC
/* 802982B8 002951F8  48 03 6A 85 */	bl __dl__FPv
lbl_802982BC:
/* 802982BC 002951FC  7F E3 FB 78 */	mr r3, r31
/* 802982C0 00295200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802982C4 00295204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802982C8 00295208  7C 08 03 A6 */	mtlr r0
/* 802982CC 0029520C  38 21 00 10 */	addi r1, r1, 0x10
/* 802982D0 00295210  4E 80 00 20 */	blr 
.global JASBasicInst_NS_TKeymap
JASBasicInst_NS_TKeymap:
/* 802982D4 00295214  38 00 FF FF */	li r0, -1
/* 802982D8 00295218  90 03 00 00 */	stw r0, 0(r3)
/* 802982DC 0029521C  4E 80 00 20 */	blr 
/* 802982E0 00295220  3C 60 42 53 */	lis r3, 0x42534943@ha
/* 802982E4 00295224  38 63 49 43 */	addi r3, r3, 0x42534943@l
/* 802982E8 00295228  4E 80 00 20 */	blr 

