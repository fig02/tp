.include "macros.inc"

.section .text, "ax" # 80311630


.global __MTGQR7__FUl
__MTGQR7__FUl:
/* 80311630 0030E570  7C 77 E3 A6 */	mtspr 0x397, r3
/* 80311634 0030E574  4E 80 00 20 */	blr 

.global J3DGQRSetup7__FUlUlUlUl
J3DGQRSetup7__FUlUlUlUl:
/* 80311638 0030E578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031163C 0030E57C  7C 08 02 A6 */	mflr r0
/* 80311640 0030E580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80311644 0030E584  54 60 40 2E */	slwi r0, r3, 8
/* 80311648 0030E588  7C 00 22 14 */	add r0, r0, r4
/* 8031164C 0030E58C  54 03 80 1E */	slwi r3, r0, 0x10
/* 80311650 0030E590  54 A0 40 2E */	slwi r0, r5, 8
/* 80311654 0030E594  7C 00 32 14 */	add r0, r0, r6
/* 80311658 0030E598  7C 63 03 78 */	or r3, r3, r0
/* 8031165C 0030E59C  4B FF FF D5 */	bl __MTGQR7__FUl
/* 80311660 0030E5A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80311664 0030E5A4  7C 08 03 A6 */	mtlr r0
/* 80311668 0030E5A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8031166C 0030E5AC  4E 80 00 20 */	blr 

.global J3DCalcBBoardMtx__FPA4_f
J3DCalcBBoardMtx__FPA4_f:
/* 80311670 0030E5B0  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 80311674 0030E5B4  EC 61 00 72 */	fmuls f3, f1, f1
/* 80311678 0030E5B8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8031167C 0030E5BC  EC 41 00 72 */	fmuls f2, f1, f1
/* 80311680 0030E5C0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80311684 0030E5C4  EC 21 00 72 */	fmuls f1, f1, f1
/* 80311688 0030E5C8  EC 22 08 2A */	fadds f1, f2, f1
/* 8031168C 0030E5CC  EC 83 08 2A */	fadds f4, f3, f1
/* 80311690 0030E5D0  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80311694 0030E5D4  EC 61 00 72 */	fmuls f3, f1, f1
/* 80311698 0030E5D8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8031169C 0030E5DC  EC 41 00 72 */	fmuls f2, f1, f1
/* 803116A0 0030E5E0  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 803116A4 0030E5E4  EC 21 00 72 */	fmuls f1, f1, f1
/* 803116A8 0030E5E8  EC 22 08 2A */	fadds f1, f2, f1
/* 803116AC 0030E5EC  EC A3 08 2A */	fadds f5, f3, f1
/* 803116B0 0030E5F0  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 803116B4 0030E5F4  EC 61 00 72 */	fmuls f3, f1, f1
/* 803116B8 0030E5F8  C0 23 00 08 */	lfs f1, 8(r3)
/* 803116BC 0030E5FC  EC 41 00 72 */	fmuls f2, f1, f1
/* 803116C0 0030E600  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 803116C4 0030E604  EC 21 00 72 */	fmuls f1, f1, f1
/* 803116C8 0030E608  EC 22 08 2A */	fadds f1, f2, f1
/* 803116CC 0030E60C  EC 43 08 2A */	fadds f2, f3, f1
/* 803116D0 0030E610  C0 22 C9 78 */	lfs f1, lbl_80456378-_SDA2_BASE_(r2)
/* 803116D4 0030E614  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 803116D8 0030E618  40 81 00 1C */	ble lbl_803116F4
/* 803116DC 0030E61C  40 81 00 10 */	ble lbl_803116EC
/* 803116E0 0030E620  FC 20 20 34 */	frsqrte f1, f4
/* 803116E4 0030E624  EC 21 01 32 */	fmuls f1, f1, f4
/* 803116E8 0030E628  48 00 00 08 */	b lbl_803116F0
lbl_803116EC:
/* 803116EC 0030E62C  FC 20 20 90 */	fmr f1, f4
lbl_803116F0:
/* 803116F0 0030E630  FC 80 08 90 */	fmr f4, f1
lbl_803116F4:
/* 803116F4 0030E634  C0 22 C9 78 */	lfs f1, lbl_80456378-_SDA2_BASE_(r2)
/* 803116F8 0030E638  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 803116FC 0030E63C  40 81 00 1C */	ble lbl_80311718
/* 80311700 0030E640  40 81 00 10 */	ble lbl_80311710
/* 80311704 0030E644  FC 20 28 34 */	frsqrte f1, f5
/* 80311708 0030E648  EC 21 01 72 */	fmuls f1, f1, f5
/* 8031170C 0030E64C  48 00 00 08 */	b lbl_80311714
lbl_80311710:
/* 80311710 0030E650  FC 20 28 90 */	fmr f1, f5
lbl_80311714:
/* 80311714 0030E654  FC A0 08 90 */	fmr f5, f1
lbl_80311718:
/* 80311718 0030E658  C0 22 C9 78 */	lfs f1, lbl_80456378-_SDA2_BASE_(r2)
/* 8031171C 0030E65C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80311720 0030E660  40 81 00 1C */	ble lbl_8031173C
/* 80311724 0030E664  40 81 00 10 */	ble lbl_80311734
/* 80311728 0030E668  FC 20 10 34 */	frsqrte f1, f2
/* 8031172C 0030E66C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80311730 0030E670  48 00 00 08 */	b lbl_80311738
lbl_80311734:
/* 80311734 0030E674  FC 20 10 90 */	fmr f1, f2
lbl_80311738:
/* 80311738 0030E678  FC 40 08 90 */	fmr f2, f1
lbl_8031173C:
/* 8031173C 0030E67C  C0 02 C9 78 */	lfs f0, lbl_80456378-_SDA2_BASE_(r2)
/* 80311740 0030E680  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 80311744 0030E684  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 80311748 0030E688  D0 83 00 00 */	stfs f4, 0(r3)
/* 8031174C 0030E68C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80311750 0030E690  D0 A3 00 14 */	stfs f5, 0x14(r3)
/* 80311754 0030E694  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80311758 0030E698  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 8031175C 0030E69C  4E 80 00 20 */	blr 

.global J3DCalcYBBoardMtx__FPA4_f
J3DCalcYBBoardMtx__FPA4_f:
/* 80311760 0030E6A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80311764 0030E6A4  7C 08 02 A6 */	mflr r0
/* 80311768 0030E6A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8031176C 0030E6AC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80311770 0030E6B0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80311774 0030E6B4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80311778 0030E6B8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8031177C 0030E6BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80311780 0030E6C0  7C 7F 1B 78 */	mr r31, r3
/* 80311784 0030E6C4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80311788 0030E6C8  EC 40 00 32 */	fmuls f2, f0, f0
/* 8031178C 0030E6CC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80311790 0030E6D0  EC 20 00 32 */	fmuls f1, f0, f0
/* 80311794 0030E6D4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80311798 0030E6D8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8031179C 0030E6DC  EC 01 00 2A */	fadds f0, f1, f0
/* 803117A0 0030E6E0  EF E2 00 2A */	fadds f31, f2, f0
/* 803117A4 0030E6E4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 803117A8 0030E6E8  EC 40 00 32 */	fmuls f2, f0, f0
/* 803117AC 0030E6EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 803117B0 0030E6F0  EC 20 00 32 */	fmuls f1, f0, f0
/* 803117B4 0030E6F4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 803117B8 0030E6F8  EC 00 00 32 */	fmuls f0, f0, f0
/* 803117BC 0030E6FC  EC 01 00 2A */	fadds f0, f1, f0
/* 803117C0 0030E700  EF C2 00 2A */	fadds f30, f2, f0
/* 803117C4 0030E704  C0 02 C9 78 */	lfs f0, lbl_80456378-_SDA2_BASE_(r2)
/* 803117C8 0030E708  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803117CC 0030E70C  40 81 00 1C */	ble lbl_803117E8
/* 803117D0 0030E710  40 81 00 10 */	ble lbl_803117E0
/* 803117D4 0030E714  FC 00 F8 34 */	frsqrte f0, f31
/* 803117D8 0030E718  EC 00 07 F2 */	fmuls f0, f0, f31
/* 803117DC 0030E71C  48 00 00 08 */	b lbl_803117E4
lbl_803117E0:
/* 803117E0 0030E720  FC 00 F8 90 */	fmr f0, f31
lbl_803117E4:
/* 803117E4 0030E724  FF E0 00 90 */	fmr f31, f0
lbl_803117E8:
/* 803117E8 0030E728  C0 02 C9 78 */	lfs f0, lbl_80456378-_SDA2_BASE_(r2)
/* 803117EC 0030E72C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 803117F0 0030E730  40 81 00 1C */	ble lbl_8031180C
/* 803117F4 0030E734  40 81 00 10 */	ble lbl_80311804
/* 803117F8 0030E738  FC 00 F0 34 */	frsqrte f0, f30
/* 803117FC 0030E73C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80311800 0030E740  48 00 00 08 */	b lbl_80311808
lbl_80311804:
/* 80311804 0030E744  FC 00 F0 90 */	fmr f0, f30
lbl_80311808:
/* 80311808 0030E748  FF C0 00 90 */	fmr f30, f0
lbl_8031180C:
/* 8031180C 0030E74C  3C 60 80 3A */	lis r3, lbl_803A1E8C@ha
/* 80311810 0030E750  38 83 1E 8C */	addi r4, r3, lbl_803A1E8C@l
/* 80311814 0030E754  80 64 00 00 */	lwz r3, 0(r4)
/* 80311818 0030E758  80 04 00 04 */	lwz r0, 4(r4)
/* 8031181C 0030E75C  90 61 00 08 */	stw r3, 8(r1)
/* 80311820 0030E760  90 01 00 0C */	stw r0, 0xc(r1)
/* 80311824 0030E764  80 04 00 08 */	lwz r0, 8(r4)
/* 80311828 0030E768  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031182C 0030E76C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80311830 0030E770  FC 00 00 50 */	fneg f0, f0
/* 80311834 0030E774  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80311838 0030E778  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8031183C 0030E77C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80311840 0030E780  38 61 00 08 */	addi r3, r1, 8
/* 80311844 0030E784  7C 64 1B 78 */	mr r4, r3
/* 80311848 0030E788  48 03 58 AD */	bl PSVECNormalize
/* 8031184C 0030E78C  D3 FF 00 00 */	stfs f31, 0(r31)
/* 80311850 0030E790  C0 22 C9 78 */	lfs f1, lbl_80456378-_SDA2_BASE_(r2)
/* 80311854 0030E794  D0 3F 00 08 */	stfs f1, 8(r31)
/* 80311858 0030E798  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 8031185C 0030E79C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80311860 0030E7A0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80311864 0030E7A4  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80311868 0030E7A8  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 8031186C 0030E7AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80311870 0030E7B0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80311874 0030E7B4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80311878 0030E7B8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8031187C 0030E7BC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80311880 0030E7C0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80311884 0030E7C4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80311888 0030E7C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031188C 0030E7CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80311890 0030E7D0  7C 08 03 A6 */	mtlr r0
/* 80311894 0030E7D4  38 21 00 40 */	addi r1, r1, 0x40
/* 80311898 0030E7D8  4E 80 00 20 */	blr 

.global J3DPSCalcInverseTranspose__FPA4_fPA3_f
J3DPSCalcInverseTranspose__FPA4_fPA3_f:
/* 8031189C 0030E7DC  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 803118A0 0030E7E0  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 803118A4 0030E7E4  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 803118A8 0030E7E8  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 803118AC 0030E7EC  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 803118B0 0030E7F0  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 803118B4 0030E7F4  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 803118B8 0030E7F8  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 803118BC 0030E7FC  11 63 01 B2 */	ps_mul f11, f3, f6
/* 803118C0 0030E800  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 803118C4 0030E804  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 803118C8 0030E808  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 803118CC 0030E80C  11 81 02 32 */	ps_mul f12, f1, f8
/* 803118D0 0030E810  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 803118D4 0030E814  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 803118D8 0030E818  11 43 01 32 */	ps_mul f10, f3, f4
/* 803118DC 0030E81C  11 20 01 72 */	ps_mul f9, f0, f5
/* 803118E0 0030E820  11 01 00 B2 */	ps_mul f8, f1, f2
/* 803118E4 0030E824  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 803118E8 0030E828  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 803118EC 0030E82C  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 803118F0 0030E830  10 E0 03 72 */	ps_mul f7, f0, f13
/* 803118F4 0030E834  10 21 08 28 */	ps_sub f1, f1, f1
/* 803118F8 0030E838  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 803118FC 0030E83C  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 80311900 0030E840  10 07 08 40 */	ps_cmpo0 cr0, f7, f1
/* 80311904 0030E844  40 82 00 0C */	bne lbl_80311910
/* 80311908 0030E848  38 60 00 00 */	li r3, 0
/* 8031190C 0030E84C  4E 80 00 20 */	blr 
lbl_80311910:
/* 80311910 0030E850  EC 00 38 30 */	fres f0, f7
/* 80311914 0030E854  10 C0 00 2A */	ps_add f6, f0, f0
/* 80311918 0030E858  10 A0 00 32 */	ps_mul f5, f0, f0
/* 8031191C 0030E85C  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 80311920 0030E860  10 C0 00 2A */	ps_add f6, f0, f0
/* 80311924 0030E864  10 A0 00 32 */	ps_mul f5, f0, f0
/* 80311928 0030E868  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 8031192C 0030E86C  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 80311930 0030E870  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 80311934 0030E874  F1 A4 00 00 */	psq_st f13, 0(r4), 0, qr0
/* 80311938 0030E878  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 8031193C 0030E87C  F1 84 00 0C */	psq_st f12, 12(r4), 0, qr0
/* 80311940 0030E880  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 80311944 0030E884  F1 64 00 18 */	psq_st f11, 24(r4), 0, qr0
/* 80311948 0030E888  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 8031194C 0030E88C  F1 44 80 08 */	psq_st f10, 8(r4), 1, qr0
/* 80311950 0030E890  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 80311954 0030E894  F1 24 80 14 */	psq_st f9, 20(r4), 1, qr0
/* 80311958 0030E898  38 60 00 01 */	li r3, 1
/* 8031195C 0030E89C  F1 04 80 20 */	psq_st f8, 32(r4), 1, qr0
/* 80311960 0030E8A0  4E 80 00 20 */	blr 

.global J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f:
/* 80311964 0030E8A4  A8 03 00 0C */	lha r0, 0xc(r3)
/* 80311968 0030E8A8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8031196C 0030E8AC  3C A0 80 44 */	lis r5, lbl_80439A20@ha
/* 80311970 0030E8B0  38 A5 9A 20 */	addi r5, r5, lbl_80439A20@l
/* 80311974 0030E8B4  7C 25 04 2E */	lfsx f1, r5, r0
/* 80311978 0030E8B8  38 C5 00 04 */	addi r6, r5, 4
/* 8031197C 0030E8BC  7C 46 04 2E */	lfsx f2, r6, r0
/* 80311980 0030E8C0  A8 03 00 0E */	lha r0, 0xe(r3)
/* 80311984 0030E8C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80311988 0030E8C8  7C 65 04 2E */	lfsx f3, r5, r0
/* 8031198C 0030E8CC  7C 86 04 2E */	lfsx f4, r6, r0
/* 80311990 0030E8D0  A8 03 00 10 */	lha r0, 0x10(r3)
/* 80311994 0030E8D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80311998 0030E8D8  7C A5 04 2E */	lfsx f5, r5, r0
/* 8031199C 0030E8DC  7C C6 04 2E */	lfsx f6, r6, r0
/* 803119A0 0030E8E0  FC 00 18 50 */	fneg f0, f3
/* 803119A4 0030E8E4  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 803119A8 0030E8E8  EC 06 01 32 */	fmuls f0, f6, f4
/* 803119AC 0030E8EC  D0 04 00 00 */	stfs f0, 0(r4)
/* 803119B0 0030E8F0  EC 05 01 32 */	fmuls f0, f5, f4
/* 803119B4 0030E8F4  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 803119B8 0030E8F8  EC 04 00 72 */	fmuls f0, f4, f1
/* 803119BC 0030E8FC  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 803119C0 0030E900  EC 04 00 B2 */	fmuls f0, f4, f2
/* 803119C4 0030E904  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 803119C8 0030E908  EC 82 01 72 */	fmuls f4, f2, f5
/* 803119CC 0030E90C  EC E1 01 B2 */	fmuls f7, f1, f6
/* 803119D0 0030E910  EC 07 00 F2 */	fmuls f0, f7, f3
/* 803119D4 0030E914  EC 00 20 28 */	fsubs f0, f0, f4
/* 803119D8 0030E918  D0 04 00 04 */	stfs f0, 4(r4)
/* 803119DC 0030E91C  EC 04 00 F2 */	fmuls f0, f4, f3
/* 803119E0 0030E920  EC 00 38 28 */	fsubs f0, f0, f7
/* 803119E4 0030E924  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 803119E8 0030E928  EC 21 01 72 */	fmuls f1, f1, f5
/* 803119EC 0030E92C  EC 42 01 B2 */	fmuls f2, f2, f6
/* 803119F0 0030E930  EC 02 00 F2 */	fmuls f0, f2, f3
/* 803119F4 0030E934  EC 01 00 2A */	fadds f0, f1, f0
/* 803119F8 0030E938  D0 04 00 08 */	stfs f0, 8(r4)
/* 803119FC 0030E93C  EC 01 00 F2 */	fmuls f0, f1, f3
/* 80311A00 0030E940  EC 02 00 2A */	fadds f0, f2, f0
/* 80311A04 0030E944  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 80311A08 0030E948  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80311A0C 0030E94C  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80311A10 0030E950  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80311A14 0030E954  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80311A18 0030E958  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80311A1C 0030E95C  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 80311A20 0030E960  4E 80 00 20 */	blr 

.global J3DGetTranslateRotateMtx__FsssfffPA4_f
J3DGetTranslateRotateMtx__FsssfffPA4_f:
/* 80311A24 0030E964  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80311A28 0030E968  3C 60 80 44 */	lis r3, lbl_80439A20@ha
/* 80311A2C 0030E96C  38 63 9A 20 */	addi r3, r3, lbl_80439A20@l
/* 80311A30 0030E970  7C 83 04 2E */	lfsx f4, r3, r0
/* 80311A34 0030E974  38 E3 00 04 */	addi r7, r3, 4
/* 80311A38 0030E978  7C A7 04 2E */	lfsx f5, r7, r0
/* 80311A3C 0030E97C  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 80311A40 0030E980  7C C3 04 2E */	lfsx f6, r3, r0
/* 80311A44 0030E984  7C E7 04 2E */	lfsx f7, r7, r0
/* 80311A48 0030E988  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 80311A4C 0030E98C  7D 03 04 2E */	lfsx f8, r3, r0
/* 80311A50 0030E990  7D 27 04 2E */	lfsx f9, r7, r0
/* 80311A54 0030E994  FC 00 30 50 */	fneg f0, f6
/* 80311A58 0030E998  D0 06 00 20 */	stfs f0, 0x20(r6)
/* 80311A5C 0030E99C  EC 09 01 F2 */	fmuls f0, f9, f7
/* 80311A60 0030E9A0  D0 06 00 00 */	stfs f0, 0(r6)
/* 80311A64 0030E9A4  EC 08 01 F2 */	fmuls f0, f8, f7
/* 80311A68 0030E9A8  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 80311A6C 0030E9AC  EC 07 01 32 */	fmuls f0, f7, f4
/* 80311A70 0030E9B0  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 80311A74 0030E9B4  EC 07 01 72 */	fmuls f0, f7, f5
/* 80311A78 0030E9B8  D0 06 00 28 */	stfs f0, 0x28(r6)
/* 80311A7C 0030E9BC  EC E5 02 32 */	fmuls f7, f5, f8
/* 80311A80 0030E9C0  ED 44 02 72 */	fmuls f10, f4, f9
/* 80311A84 0030E9C4  EC 0A 01 B2 */	fmuls f0, f10, f6
/* 80311A88 0030E9C8  EC 00 38 28 */	fsubs f0, f0, f7
/* 80311A8C 0030E9CC  D0 06 00 04 */	stfs f0, 4(r6)
/* 80311A90 0030E9D0  EC 07 01 B2 */	fmuls f0, f7, f6
/* 80311A94 0030E9D4  EC 00 50 28 */	fsubs f0, f0, f10
/* 80311A98 0030E9D8  D0 06 00 18 */	stfs f0, 0x18(r6)
/* 80311A9C 0030E9DC  EC 84 02 32 */	fmuls f4, f4, f8
/* 80311AA0 0030E9E0  EC A5 02 72 */	fmuls f5, f5, f9
/* 80311AA4 0030E9E4  EC 05 01 B2 */	fmuls f0, f5, f6
/* 80311AA8 0030E9E8  EC 04 00 2A */	fadds f0, f4, f0
/* 80311AAC 0030E9EC  D0 06 00 08 */	stfs f0, 8(r6)
/* 80311AB0 0030E9F0  EC 04 01 B2 */	fmuls f0, f4, f6
/* 80311AB4 0030E9F4  EC 05 00 2A */	fadds f0, f5, f0
/* 80311AB8 0030E9F8  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 80311ABC 0030E9FC  D0 26 00 0C */	stfs f1, 0xc(r6)
/* 80311AC0 0030EA00  D0 46 00 1C */	stfs f2, 0x1c(r6)
/* 80311AC4 0030EA04  D0 66 00 2C */	stfs f3, 0x2c(r6)
/* 80311AC8 0030EA08  4E 80 00 20 */	blr 

.global J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f
J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f:
/* 80311ACC 0030EA0C  A8 03 00 08 */	lha r0, 8(r3)
/* 80311AD0 0030EA10  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80311AD4 0030EA14  3C C0 80 44 */	lis r6, lbl_80439A20@ha
/* 80311AD8 0030EA18  38 C6 9A 20 */	addi r6, r6, lbl_80439A20@l
/* 80311ADC 0030EA1C  7C 06 04 2E */	lfsx f0, r6, r0
/* 80311AE0 0030EA20  7C C6 02 14 */	add r6, r6, r0
/* 80311AE4 0030EA24  C0 26 00 04 */	lfs f1, 4(r6)
/* 80311AE8 0030EA28  C0 43 00 00 */	lfs f2, 0(r3)
/* 80311AEC 0030EA2C  EC 62 00 72 */	fmuls f3, f2, f1
/* 80311AF0 0030EA30  EC A2 00 32 */	fmuls f5, f2, f0
/* 80311AF4 0030EA34  C0 43 00 04 */	lfs f2, 4(r3)
/* 80311AF8 0030EA38  EC C2 00 32 */	fmuls f6, f2, f0
/* 80311AFC 0030EA3C  EC E2 00 72 */	fmuls f7, f2, f1
/* 80311B00 0030EA40  D0 65 00 00 */	stfs f3, 0(r5)
/* 80311B04 0030EA44  FC 00 28 50 */	fneg f0, f5
/* 80311B08 0030EA48  D0 05 00 04 */	stfs f0, 4(r5)
/* 80311B0C 0030EA4C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80311B10 0030EA50  C0 84 00 00 */	lfs f4, 0(r4)
/* 80311B14 0030EA54  FC 00 18 50 */	fneg f0, f3
/* 80311B18 0030EA58  EC 20 01 32 */	fmuls f1, f0, f4
/* 80311B1C 0030EA5C  C0 64 00 04 */	lfs f3, 4(r4)
/* 80311B20 0030EA60  EC 05 00 F2 */	fmuls f0, f5, f3
/* 80311B24 0030EA64  EC 01 00 2A */	fadds f0, f1, f0
/* 80311B28 0030EA68  EC 04 00 2A */	fadds f0, f4, f0
/* 80311B2C 0030EA6C  EC 02 00 2A */	fadds f0, f2, f0
/* 80311B30 0030EA70  D0 05 00 08 */	stfs f0, 8(r5)
/* 80311B34 0030EA74  D0 C5 00 10 */	stfs f6, 0x10(r5)
/* 80311B38 0030EA78  D0 E5 00 14 */	stfs f7, 0x14(r5)
/* 80311B3C 0030EA7C  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80311B40 0030EA80  FC 00 30 50 */	fneg f0, f6
/* 80311B44 0030EA84  EC 20 01 32 */	fmuls f1, f0, f4
/* 80311B48 0030EA88  EC 07 00 F2 */	fmuls f0, f7, f3
/* 80311B4C 0030EA8C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80311B50 0030EA90  EC 03 00 2A */	fadds f0, f3, f0
/* 80311B54 0030EA94  EC 02 00 2A */	fadds f0, f2, f0
/* 80311B58 0030EA98  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 80311B5C 0030EA9C  C0 02 C9 78 */	lfs f0, lbl_80456378-_SDA2_BASE_(r2)
/* 80311B60 0030EAA0  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 80311B64 0030EAA4  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 80311B68 0030EAA8  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 80311B6C 0030EAAC  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 80311B70 0030EAB0  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 80311B74 0030EAB4  C0 02 C9 7C */	lfs f0, lbl_8045637C-_SDA2_BASE_(r2)
/* 80311B78 0030EAB8  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 80311B7C 0030EABC  4E 80 00 20 */	blr 

.global J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f:
/* 80311B80 0030EAC0  A8 03 00 08 */	lha r0, 8(r3)
/* 80311B84 0030EAC4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80311B88 0030EAC8  3C C0 80 44 */	lis r6, lbl_80439A20@ha
/* 80311B8C 0030EACC  38 C6 9A 20 */	addi r6, r6, lbl_80439A20@l
/* 80311B90 0030EAD0  7C 06 04 2E */	lfsx f0, r6, r0
/* 80311B94 0030EAD4  7C C6 02 14 */	add r6, r6, r0
/* 80311B98 0030EAD8  C0 26 00 04 */	lfs f1, 4(r6)
/* 80311B9C 0030EADC  C0 43 00 00 */	lfs f2, 0(r3)
/* 80311BA0 0030EAE0  EC 62 00 72 */	fmuls f3, f2, f1
/* 80311BA4 0030EAE4  EC A2 00 32 */	fmuls f5, f2, f0
/* 80311BA8 0030EAE8  C0 43 00 04 */	lfs f2, 4(r3)
/* 80311BAC 0030EAEC  EC C2 00 32 */	fmuls f6, f2, f0
/* 80311BB0 0030EAF0  EC E2 00 72 */	fmuls f7, f2, f1
/* 80311BB4 0030EAF4  D0 65 00 00 */	stfs f3, 0(r5)
/* 80311BB8 0030EAF8  FC 00 28 50 */	fneg f0, f5
/* 80311BBC 0030EAFC  D0 05 00 04 */	stfs f0, 4(r5)
/* 80311BC0 0030EB00  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80311BC4 0030EB04  C0 84 00 00 */	lfs f4, 0(r4)
/* 80311BC8 0030EB08  FC 00 18 50 */	fneg f0, f3
/* 80311BCC 0030EB0C  EC 20 01 32 */	fmuls f1, f0, f4
/* 80311BD0 0030EB10  C0 64 00 04 */	lfs f3, 4(r4)
/* 80311BD4 0030EB14  EC 05 00 F2 */	fmuls f0, f5, f3
/* 80311BD8 0030EB18  EC 01 00 2A */	fadds f0, f1, f0
/* 80311BDC 0030EB1C  EC 04 00 2A */	fadds f0, f4, f0
/* 80311BE0 0030EB20  EC 02 00 2A */	fadds f0, f2, f0
/* 80311BE4 0030EB24  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 80311BE8 0030EB28  D0 C5 00 10 */	stfs f6, 0x10(r5)
/* 80311BEC 0030EB2C  D0 E5 00 14 */	stfs f7, 0x14(r5)
/* 80311BF0 0030EB30  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80311BF4 0030EB34  FC 00 30 50 */	fneg f0, f6
/* 80311BF8 0030EB38  EC 20 01 32 */	fmuls f1, f0, f4
/* 80311BFC 0030EB3C  EC 07 00 F2 */	fmuls f0, f7, f3
/* 80311C00 0030EB40  EC 01 00 28 */	fsubs f0, f1, f0
/* 80311C04 0030EB44  EC 03 00 2A */	fadds f0, f3, f0
/* 80311C08 0030EB48  EC 02 00 2A */	fadds f0, f2, f0
/* 80311C0C 0030EB4C  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 80311C10 0030EB50  C0 02 C9 78 */	lfs f0, lbl_80456378-_SDA2_BASE_(r2)
/* 80311C14 0030EB54  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 80311C18 0030EB58  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 80311C1C 0030EB5C  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 80311C20 0030EB60  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 80311C24 0030EB64  D0 05 00 08 */	stfs f0, 8(r5)
/* 80311C28 0030EB68  C0 02 C9 7C */	lfs f0, lbl_8045637C-_SDA2_BASE_(r2)
/* 80311C2C 0030EB6C  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 80311C30 0030EB70  4E 80 00 20 */	blr 

.global J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f:
/* 80311C34 0030EB74  A8 03 00 08 */	lha r0, 8(r3)
/* 80311C38 0030EB78  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80311C3C 0030EB7C  3C A0 80 44 */	lis r5, lbl_80439A20@ha
/* 80311C40 0030EB80  38 A5 9A 20 */	addi r5, r5, lbl_80439A20@l
/* 80311C44 0030EB84  7C C5 04 2E */	lfsx f6, r5, r0
/* 80311C48 0030EB88  7C A5 02 14 */	add r5, r5, r0
/* 80311C4C 0030EB8C  C0 E5 00 04 */	lfs f7, 4(r5)
/* 80311C50 0030EB90  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80311C54 0030EB94  C0 A2 C9 80 */	lfs f5, lbl_80456380-_SDA2_BASE_(r2)
/* 80311C58 0030EB98  ED 00 28 28 */	fsubs f8, f0, f5
/* 80311C5C 0030EB9C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80311C60 0030EBA0  EC 40 28 28 */	fsubs f2, f0, f5
/* 80311C64 0030EBA4  C0 83 00 00 */	lfs f4, 0(r3)
/* 80311C68 0030EBA8  EC 04 01 F2 */	fmuls f0, f4, f7
/* 80311C6C 0030EBAC  D0 04 00 00 */	stfs f0, 0(r4)
/* 80311C70 0030EBB0  C0 63 00 04 */	lfs f3, 4(r3)
/* 80311C74 0030EBB4  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80311C78 0030EBB8  D0 04 00 04 */	stfs f0, 4(r4)
/* 80311C7C 0030EBBC  EC 28 01 F2 */	fmuls f1, f8, f7
/* 80311C80 0030EBC0  EC 42 18 2A */	fadds f2, f2, f3
/* 80311C84 0030EBC4  EC 06 00 B2 */	fmuls f0, f6, f2
/* 80311C88 0030EBC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80311C8C 0030EBCC  EC 05 00 2A */	fadds f0, f5, f0
/* 80311C90 0030EBD0  D0 04 00 08 */	stfs f0, 8(r4)
/* 80311C94 0030EBD4  FC 00 20 50 */	fneg f0, f4
/* 80311C98 0030EBD8  EC 00 01 B2 */	fmuls f0, f0, f6
/* 80311C9C 0030EBDC  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80311CA0 0030EBE0  EC 03 01 F2 */	fmuls f0, f3, f7
/* 80311CA4 0030EBE4  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 80311CA8 0030EBE8  FC 00 40 50 */	fneg f0, f8
/* 80311CAC 0030EBEC  EC 20 01 B2 */	fmuls f1, f0, f6
/* 80311CB0 0030EBF0  EC 07 00 B2 */	fmuls f0, f7, f2
/* 80311CB4 0030EBF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80311CB8 0030EBF8  EC 05 00 2A */	fadds f0, f5, f0
/* 80311CBC 0030EBFC  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80311CC0 0030EC00  C0 02 C9 78 */	lfs f0, lbl_80456378-_SDA2_BASE_(r2)
/* 80311CC4 0030EC04  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 80311CC8 0030EC08  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 80311CCC 0030EC0C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80311CD0 0030EC10  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80311CD4 0030EC14  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80311CD8 0030EC18  C0 02 C9 7C */	lfs f0, lbl_8045637C-_SDA2_BASE_(r2)
/* 80311CDC 0030EC1C  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 80311CE0 0030EC20  4E 80 00 20 */	blr 

.global J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f:
/* 80311CE4 0030EC24  A8 03 00 08 */	lha r0, 8(r3)
/* 80311CE8 0030EC28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80311CEC 0030EC2C  3C A0 80 44 */	lis r5, lbl_80439A20@ha
/* 80311CF0 0030EC30  38 A5 9A 20 */	addi r5, r5, lbl_80439A20@l
/* 80311CF4 0030EC34  7C C5 04 2E */	lfsx f6, r5, r0
/* 80311CF8 0030EC38  7C A5 02 14 */	add r5, r5, r0
/* 80311CFC 0030EC3C  C0 E5 00 04 */	lfs f7, 4(r5)
/* 80311D00 0030EC40  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80311D04 0030EC44  C0 A2 C9 80 */	lfs f5, lbl_80456380-_SDA2_BASE_(r2)
/* 80311D08 0030EC48  ED 00 28 28 */	fsubs f8, f0, f5
/* 80311D0C 0030EC4C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80311D10 0030EC50  EC 40 28 28 */	fsubs f2, f0, f5
/* 80311D14 0030EC54  C0 83 00 00 */	lfs f4, 0(r3)
/* 80311D18 0030EC58  EC 04 01 F2 */	fmuls f0, f4, f7
/* 80311D1C 0030EC5C  D0 04 00 00 */	stfs f0, 0(r4)
/* 80311D20 0030EC60  C0 63 00 04 */	lfs f3, 4(r3)
/* 80311D24 0030EC64  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80311D28 0030EC68  D0 04 00 04 */	stfs f0, 4(r4)
/* 80311D2C 0030EC6C  EC 28 01 F2 */	fmuls f1, f8, f7
/* 80311D30 0030EC70  EC 42 18 2A */	fadds f2, f2, f3
/* 80311D34 0030EC74  EC 06 00 B2 */	fmuls f0, f6, f2
/* 80311D38 0030EC78  EC 01 00 28 */	fsubs f0, f1, f0
/* 80311D3C 0030EC7C  EC 05 00 2A */	fadds f0, f5, f0
/* 80311D40 0030EC80  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80311D44 0030EC84  FC 00 20 50 */	fneg f0, f4
/* 80311D48 0030EC88  EC 00 01 B2 */	fmuls f0, f0, f6
/* 80311D4C 0030EC8C  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80311D50 0030EC90  EC 03 01 F2 */	fmuls f0, f3, f7
/* 80311D54 0030EC94  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 80311D58 0030EC98  FC 00 40 50 */	fneg f0, f8
/* 80311D5C 0030EC9C  EC 20 01 B2 */	fmuls f1, f0, f6
/* 80311D60 0030ECA0  EC 07 00 B2 */	fmuls f0, f7, f2
/* 80311D64 0030ECA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80311D68 0030ECA8  EC 05 00 2A */	fadds f0, f5, f0
/* 80311D6C 0030ECAC  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80311D70 0030ECB0  C0 02 C9 78 */	lfs f0, lbl_80456378-_SDA2_BASE_(r2)
/* 80311D74 0030ECB4  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 80311D78 0030ECB8  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 80311D7C 0030ECBC  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80311D80 0030ECC0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80311D84 0030ECC4  D0 04 00 08 */	stfs f0, 8(r4)
/* 80311D88 0030ECC8  C0 02 C9 7C */	lfs f0, lbl_8045637C-_SDA2_BASE_(r2)
/* 80311D8C 0030ECCC  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 80311D90 0030ECD0  4E 80 00 20 */	blr 

.global J3DScaleNrmMtx__FPA4_fRC3Vec
J3DScaleNrmMtx__FPA4_fRC3Vec:
/* 80311D94 0030ECD4  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 80311D98 0030ECD8  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 80311D9C 0030ECDC  C0 64 00 08 */	lfs f3, 8(r4)
/* 80311DA0 0030ECE0  C0 23 00 08 */	lfs f1, 8(r3)
/* 80311DA4 0030ECE4  10 80 00 B2 */	ps_mul f4, f0, f2
/* 80311DA8 0030ECE8  F0 83 00 00 */	psq_st f4, 0(r3), 0, qr0
/* 80311DAC 0030ECEC  EC 81 00 F2 */	fmuls f4, f1, f3
/* 80311DB0 0030ECF0  D0 83 00 08 */	stfs f4, 8(r3)
/* 80311DB4 0030ECF4  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 80311DB8 0030ECF8  E0 03 00 10 */	psq_l f0, 16(r3), 0, qr0
/* 80311DBC 0030ECFC  C0 64 00 08 */	lfs f3, 8(r4)
/* 80311DC0 0030ED00  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80311DC4 0030ED04  10 80 00 B2 */	ps_mul f4, f0, f2
/* 80311DC8 0030ED08  F0 83 00 10 */	psq_st f4, 16(r3), 0, qr0
/* 80311DCC 0030ED0C  EC 81 00 F2 */	fmuls f4, f1, f3
/* 80311DD0 0030ED10  D0 83 00 18 */	stfs f4, 0x18(r3)
/* 80311DD4 0030ED14  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 80311DD8 0030ED18  E0 03 00 20 */	psq_l f0, 32(r3), 0, qr0
/* 80311DDC 0030ED1C  C0 64 00 08 */	lfs f3, 8(r4)
/* 80311DE0 0030ED20  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80311DE4 0030ED24  10 80 00 B2 */	ps_mul f4, f0, f2
/* 80311DE8 0030ED28  F0 83 00 20 */	psq_st f4, 32(r3), 0, qr0
/* 80311DEC 0030ED2C  EC 81 00 F2 */	fmuls f4, f1, f3
/* 80311DF0 0030ED30  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 80311DF4 0030ED34  4E 80 00 20 */	blr 

.global J3DScaleNrmMtx33__FPA3_fRC3Vec
J3DScaleNrmMtx33__FPA3_fRC3Vec:
/* 80311DF8 0030ED38  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 80311DFC 0030ED3C  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 80311E00 0030ED40  C0 23 00 08 */	lfs f1, 8(r3)
/* 80311E04 0030ED44  C0 E4 00 08 */	lfs f7, 8(r4)
/* 80311E08 0030ED48  10 00 01 B2 */	ps_mul f0, f0, f6
/* 80311E0C 0030ED4C  E0 43 00 0C */	psq_l f2, 12(r3), 0, qr0
/* 80311E10 0030ED50  EC 21 01 F2 */	fmuls f1, f1, f7
/* 80311E14 0030ED54  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 80311E18 0030ED58  10 42 01 B2 */	ps_mul f2, f2, f6
/* 80311E1C 0030ED5C  E0 83 00 18 */	psq_l f4, 24(r3), 0, qr0
/* 80311E20 0030ED60  EC 63 01 F2 */	fmuls f3, f3, f7
/* 80311E24 0030ED64  C0 A3 00 20 */	lfs f5, 0x20(r3)
/* 80311E28 0030ED68  10 84 01 B2 */	ps_mul f4, f4, f6
/* 80311E2C 0030ED6C  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 80311E30 0030ED70  EC A5 01 F2 */	fmuls f5, f5, f7
/* 80311E34 0030ED74  D0 23 00 08 */	stfs f1, 8(r3)
/* 80311E38 0030ED78  F0 43 00 0C */	psq_st f2, 12(r3), 0, qr0
/* 80311E3C 0030ED7C  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 80311E40 0030ED80  F0 83 00 18 */	psq_st f4, 24(r3), 0, qr0
/* 80311E44 0030ED84  D0 A3 00 20 */	stfs f5, 0x20(r3)
/* 80311E48 0030ED88  4E 80 00 20 */	blr 

.global J3DMtxProjConcat__FPA4_fPA4_fPA4_f
J3DMtxProjConcat__FPA4_fPA4_fPA4_f:
/* 80311E4C 0030ED8C  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 80311E50 0030ED90  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 80311E54 0030ED94  10 C2 14 20 */	ps_merge00 f6, f2, f2
/* 80311E58 0030ED98  10 E2 14 E0 */	ps_merge11 f7, f2, f2
/* 80311E5C 0030ED9C  11 03 1C 20 */	ps_merge00 f8, f3, f3
/* 80311E60 0030EDA0  11 23 1C E0 */	ps_merge11 f9, f3, f3
/* 80311E64 0030EDA4  E1 44 00 00 */	psq_l f10, 0(r4), 0, qr0
/* 80311E68 0030EDA8  E1 64 00 10 */	psq_l f11, 16(r4), 0, qr0
/* 80311E6C 0030EDAC  E1 84 00 20 */	psq_l f12, 32(r4), 0, qr0
/* 80311E70 0030EDB0  E1 A4 00 30 */	psq_l f13, 48(r4), 0, qr0
/* 80311E74 0030EDB4  10 06 02 B2 */	ps_mul f0, f6, f10
/* 80311E78 0030EDB8  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 80311E7C 0030EDBC  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 80311E80 0030EDC0  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 80311E84 0030EDC4  F0 05 00 00 */	psq_st f0, 0(r5), 0, qr0
/* 80311E88 0030EDC8  E1 44 00 08 */	psq_l f10, 8(r4), 0, qr0
/* 80311E8C 0030EDCC  E1 64 00 18 */	psq_l f11, 24(r4), 0, qr0
/* 80311E90 0030EDD0  E1 84 00 28 */	psq_l f12, 40(r4), 0, qr0
/* 80311E94 0030EDD4  E1 A4 00 38 */	psq_l f13, 56(r4), 0, qr0
/* 80311E98 0030EDD8  10 06 02 B2 */	ps_mul f0, f6, f10
/* 80311E9C 0030EDDC  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 80311EA0 0030EDE0  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 80311EA4 0030EDE4  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 80311EA8 0030EDE8  F0 05 00 08 */	psq_st f0, 8(r5), 0, qr0
/* 80311EAC 0030EDEC  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 80311EB0 0030EDF0  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 80311EB4 0030EDF4  10 C2 14 20 */	ps_merge00 f6, f2, f2
/* 80311EB8 0030EDF8  10 E2 14 E0 */	ps_merge11 f7, f2, f2
/* 80311EBC 0030EDFC  11 03 1C 20 */	ps_merge00 f8, f3, f3
/* 80311EC0 0030EE00  11 23 1C E0 */	ps_merge11 f9, f3, f3
/* 80311EC4 0030EE04  E1 44 00 00 */	psq_l f10, 0(r4), 0, qr0
/* 80311EC8 0030EE08  E1 64 00 10 */	psq_l f11, 16(r4), 0, qr0
/* 80311ECC 0030EE0C  E1 84 00 20 */	psq_l f12, 32(r4), 0, qr0
/* 80311ED0 0030EE10  E1 A4 00 30 */	psq_l f13, 48(r4), 0, qr0
/* 80311ED4 0030EE14  10 06 02 B2 */	ps_mul f0, f6, f10
/* 80311ED8 0030EE18  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 80311EDC 0030EE1C  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 80311EE0 0030EE20  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 80311EE4 0030EE24  F0 05 00 10 */	psq_st f0, 16(r5), 0, qr0
/* 80311EE8 0030EE28  E1 44 00 08 */	psq_l f10, 8(r4), 0, qr0
/* 80311EEC 0030EE2C  E1 64 00 18 */	psq_l f11, 24(r4), 0, qr0
/* 80311EF0 0030EE30  E1 84 00 28 */	psq_l f12, 40(r4), 0, qr0
/* 80311EF4 0030EE34  E1 A4 00 38 */	psq_l f13, 56(r4), 0, qr0
/* 80311EF8 0030EE38  10 06 02 B2 */	ps_mul f0, f6, f10
/* 80311EFC 0030EE3C  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 80311F00 0030EE40  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 80311F04 0030EE44  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 80311F08 0030EE48  F0 05 00 18 */	psq_st f0, 24(r5), 0, qr0
/* 80311F0C 0030EE4C  E0 43 00 20 */	psq_l f2, 32(r3), 0, qr0
/* 80311F10 0030EE50  E0 63 00 28 */	psq_l f3, 40(r3), 0, qr0
/* 80311F14 0030EE54  10 C2 14 20 */	ps_merge00 f6, f2, f2
/* 80311F18 0030EE58  10 E2 14 E0 */	ps_merge11 f7, f2, f2
/* 80311F1C 0030EE5C  11 03 1C 20 */	ps_merge00 f8, f3, f3
/* 80311F20 0030EE60  11 23 1C E0 */	ps_merge11 f9, f3, f3
/* 80311F24 0030EE64  E1 44 00 00 */	psq_l f10, 0(r4), 0, qr0
/* 80311F28 0030EE68  E1 64 00 10 */	psq_l f11, 16(r4), 0, qr0
/* 80311F2C 0030EE6C  E1 84 00 20 */	psq_l f12, 32(r4), 0, qr0
/* 80311F30 0030EE70  E1 A4 00 30 */	psq_l f13, 48(r4), 0, qr0
/* 80311F34 0030EE74  10 06 02 B2 */	ps_mul f0, f6, f10
/* 80311F38 0030EE78  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 80311F3C 0030EE7C  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 80311F40 0030EE80  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 80311F44 0030EE84  F0 05 00 20 */	psq_st f0, 32(r5), 0, qr0
/* 80311F48 0030EE88  E1 44 00 08 */	psq_l f10, 8(r4), 0, qr0
/* 80311F4C 0030EE8C  E1 64 00 18 */	psq_l f11, 24(r4), 0, qr0
/* 80311F50 0030EE90  E1 84 00 28 */	psq_l f12, 40(r4), 0, qr0
/* 80311F54 0030EE94  E1 A4 00 38 */	psq_l f13, 56(r4), 0, qr0
/* 80311F58 0030EE98  10 06 02 B2 */	ps_mul f0, f6, f10
/* 80311F5C 0030EE9C  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 80311F60 0030EEA0  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 80311F64 0030EEA4  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 80311F68 0030EEA8  F0 05 00 28 */	psq_st f0, 40(r5), 0, qr0
/* 80311F6C 0030EEAC  4E 80 00 20 */	blr 

.global J3DPSMtxArrayConcat__FPA4_fPA4_fPA4_fUl
J3DPSMtxArrayConcat__FPA4_fPA4_fPA4_fUl:
/* 80311F70 0030EEB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80311F74 0030EEB4  D9 C1 00 08 */	stfd f14, 8(r1)
/* 80311F78 0030EEB8  3C E0 80 45 */	lis r7, lbl_80450958@ha
/* 80311F7C 0030EEBC  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 80311F80 0030EEC0  38 E7 09 58 */	addi r7, r7, lbl_80450958@l
/* 80311F84 0030EEC4  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80311F88 0030EEC8  38 84 FF F8 */	addi r4, r4, -8
/* 80311F8C 0030EECC  38 A5 FF F8 */	addi r5, r5, -8
/* 80311F90 0030EED0  7C C9 03 A6 */	mtctr r6
lbl_80311F94:
/* 80311F94 0030EED4  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 80311F98 0030EED8  E0 C4 00 08 */	psq_l f6, 8(r4), 0, qr0
/* 80311F9C 0030EEDC  E0 E4 00 10 */	psq_l f7, 16(r4), 0, qr0
/* 80311FA0 0030EEE0  E1 04 00 18 */	psq_l f8, 24(r4), 0, qr0
/* 80311FA4 0030EEE4  11 86 00 18 */	ps_muls0 f12, f6, f0
/* 80311FA8 0030EEE8  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 80311FAC 0030EEEC  11 A7 00 18 */	ps_muls0 f13, f7, f0
/* 80311FB0 0030EEF0  E3 E7 00 00 */	psq_l f31, 0(r7), 0, qr0
/* 80311FB4 0030EEF4  11 C6 00 98 */	ps_muls0 f14, f6, f2
/* 80311FB8 0030EEF8  E1 24 00 20 */	psq_l f9, 32(r4), 0, qr0
/* 80311FBC 0030EEFC  11 E7 00 98 */	ps_muls0 f15, f7, f2
/* 80311FC0 0030EF00  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 80311FC4 0030EF04  11 88 60 1E */	ps_madds1 f12, f8, f0, f12
/* 80311FC8 0030EF08  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 80311FCC 0030EF0C  11 C8 70 9E */	ps_madds1 f14, f8, f2, f14
/* 80311FD0 0030EF10  E1 44 00 28 */	psq_l f10, 40(r4), 0, qr0
/* 80311FD4 0030EF14  11 A9 68 1E */	ps_madds1 f13, f9, f0, f13
/* 80311FD8 0030EF18  E5 64 00 30 */	psq_lu f11, 48(r4), 0, qr0
/* 80311FDC 0030EF1C  11 E9 78 9E */	ps_madds1 f15, f9, f2, f15
/* 80311FE0 0030EF20  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 80311FE4 0030EF24  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 80311FE8 0030EF28  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 80311FEC 0030EF2C  11 AB 68 5C */	ps_madds0 f13, f11, f1, f13
/* 80311FF0 0030EF30  11 CA 70 DC */	ps_madds0 f14, f10, f3, f14
/* 80311FF4 0030EF34  11 EB 78 DC */	ps_madds0 f15, f11, f3, f15
/* 80311FF8 0030EF38  F1 85 00 08 */	psq_st f12, 8(r5), 0, qr0
/* 80311FFC 0030EF3C  10 46 01 18 */	ps_muls0 f2, f6, f4
/* 80312000 0030EF40  11 BF 68 5E */	ps_madds1 f13, f31, f1, f13
/* 80312004 0030EF44  10 07 01 18 */	ps_muls0 f0, f7, f4
/* 80312008 0030EF48  F1 C5 00 18 */	psq_st f14, 24(r5), 0, qr0
/* 8031200C 0030EF4C  11 FF 78 DE */	ps_madds1 f15, f31, f3, f15
/* 80312010 0030EF50  F1 A5 00 10 */	psq_st f13, 16(r5), 0, qr0
/* 80312014 0030EF54  10 48 11 1E */	ps_madds1 f2, f8, f4, f2
/* 80312018 0030EF58  10 09 01 1E */	ps_madds1 f0, f9, f4, f0
/* 8031201C 0030EF5C  10 4A 11 5C */	ps_madds0 f2, f10, f5, f2
/* 80312020 0030EF60  F1 E5 00 20 */	psq_st f15, 32(r5), 0, qr0
/* 80312024 0030EF64  10 0B 01 5C */	ps_madds0 f0, f11, f5, f0
/* 80312028 0030EF68  F0 45 00 28 */	psq_st f2, 40(r5), 0, qr0
/* 8031202C 0030EF6C  10 1F 01 5E */	ps_madds1 f0, f31, f5, f0
/* 80312030 0030EF70  F4 05 00 30 */	psq_stu f0, 48(r5), 0, qr0
/* 80312034 0030EF74  42 00 FF 60 */	bdnz lbl_80311F94
/* 80312038 0030EF78  C9 C1 00 08 */	lfd f14, 8(r1)
/* 8031203C 0030EF7C  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 80312040 0030EF80  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80312044 0030EF84  38 21 00 40 */	addi r1, r1, 0x40
/* 80312048 0030EF88  4E 80 00 20 */	blr 
