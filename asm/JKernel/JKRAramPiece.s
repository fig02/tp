.include "macros.inc"

.section .text, "ax" # 802d3574


.global JKRAramPiece_NS_prepareCommand
JKRAramPiece_NS_prepareCommand:
/* 802D3574 002D04B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3578 002D04B8  7C 08 02 A6 */	mflr r0
/* 802D357C 002D04BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3580 002D04C0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3584 002D04C4  48 08 EC 4D */	bl func_803621D0
/* 802D3588 002D04C8  7C 7A 1B 78 */	mr r26, r3
/* 802D358C 002D04CC  7C 9B 23 78 */	mr r27, r4
/* 802D3590 002D04D0  7C BC 2B 78 */	mr r28, r5
/* 802D3594 002D04D4  7C DD 33 78 */	mr r29, r6
/* 802D3598 002D04D8  7C FE 3B 78 */	mr r30, r7
/* 802D359C 002D04DC  7D 1F 43 78 */	mr r31, r8
/* 802D35A0 002D04E0  38 60 00 98 */	li r3, 0x98
/* 802D35A4 002D04E4  80 8D 8D F0 */	lwz r4, lbl_80451370-_SDA_BASE_(r13)
/* 802D35A8 002D04E8  38 A0 FF FC */	li r5, -4
/* 802D35AC 002D04EC  4B FF B6 ED */	bl __nw__FUlP7JKRHeapi
/* 802D35B0 002D04F0  7C 64 1B 79 */	or. r4, r3, r3
/* 802D35B4 002D04F4  41 82 00 0C */	beq lbl_802D35C0
/* 802D35B8 002D04F8  48 00 04 35 */	bl JKRAMCommand
/* 802D35BC 002D04FC  7C 64 1B 78 */	mr r4, r3
lbl_802D35C0:
/* 802D35C0 002D0500  93 44 00 40 */	stw r26, 0x40(r4)
/* 802D35C4 002D0504  93 64 00 48 */	stw r27, 0x48(r4)
/* 802D35C8 002D0508  93 84 00 4C */	stw r28, 0x4c(r4)
/* 802D35CC 002D050C  93 C4 00 50 */	stw r30, 0x50(r4)
/* 802D35D0 002D0510  93 A4 00 44 */	stw r29, 0x44(r4)
/* 802D35D4 002D0514  93 E4 00 58 */	stw r31, 0x58(r4)
/* 802D35D8 002D0518  7C 83 23 78 */	mr r3, r4
/* 802D35DC 002D051C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D35E0 002D0520  48 08 EC 3D */	bl func_8036221C
/* 802D35E4 002D0524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D35E8 002D0528  7C 08 03 A6 */	mtlr r0
/* 802D35EC 002D052C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D35F0 002D0530  4E 80 00 20 */	blr 

.global JKRAramPiece_NS_sendCommand
JKRAramPiece_NS_sendCommand:
/* 802D35F4 002D0534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D35F8 002D0538  7C 08 02 A6 */	mflr r0
/* 802D35FC 002D053C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3600 002D0540  48 00 02 CD */	bl JKRAramPiece_NS_startDMA
/* 802D3604 002D0544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3608 002D0548  7C 08 03 A6 */	mtlr r0
/* 802D360C 002D054C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3610 002D0550  4E 80 00 20 */	blr 

.global JKRAramPiece_NS_orderAsync
JKRAramPiece_NS_orderAsync:
/* 802D3614 002D0554  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D3618 002D0558  7C 08 02 A6 */	mflr r0
/* 802D361C 002D055C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D3620 002D0560  39 61 00 30 */	addi r11, r1, 0x30
/* 802D3624 002D0564  48 08 EB A9 */	bl func_803621CC
/* 802D3628 002D0568  7C 7A 1B 78 */	mr r26, r3
/* 802D362C 002D056C  7C 9B 23 78 */	mr r27, r4
/* 802D3630 002D0570  7C BC 2B 78 */	mr r28, r5
/* 802D3634 002D0574  7C DD 33 78 */	mr r29, r6
/* 802D3638 002D0578  7C FE 3B 78 */	mr r30, r7
/* 802D363C 002D057C  7D 1F 43 78 */	mr r31, r8
/* 802D3640 002D0580  3C 60 80 43 */	lis r3, lbl_80434330@ha
/* 802D3644 002D0584  38 63 43 30 */	addi r3, r3, lbl_80434330@l
/* 802D3648 002D0588  48 06 B9 F9 */	bl OSLockMutex
/* 802D364C 002D058C  57 60 06 FF */	clrlwi. r0, r27, 0x1b
/* 802D3650 002D0590  40 82 00 0C */	bne lbl_802D365C
/* 802D3654 002D0594  57 80 06 FF */	clrlwi. r0, r28, 0x1b
/* 802D3658 002D0598  41 82 00 80 */	beq lbl_802D36D8
lbl_802D365C:
/* 802D365C 002D059C  3C 60 80 3A */	lis r3, lbl_8039D0B8@ha
/* 802D3660 002D05A0  38 63 D0 B8 */	addi r3, r3, lbl_8039D0B8@l
/* 802D3664 002D05A4  7F 44 D3 78 */	mr r4, r26
/* 802D3668 002D05A8  4C C6 31 82 */	crclr 6
/* 802D366C 002D05AC  4B D3 34 51 */	bl OSReport
/* 802D3670 002D05B0  3C 60 80 3A */	lis r3, lbl_8039D0B8@ha
/* 802D3674 002D05B4  38 63 D0 B8 */	addi r3, r3, lbl_8039D0B8@l
/* 802D3678 002D05B8  38 63 00 10 */	addi r3, r3, 0x10
/* 802D367C 002D05BC  7F 64 DB 78 */	mr r4, r27
/* 802D3680 002D05C0  4C C6 31 82 */	crclr 6
/* 802D3684 002D05C4  4B D3 34 39 */	bl OSReport
/* 802D3688 002D05C8  3C 60 80 3A */	lis r3, lbl_8039D0B8@ha
/* 802D368C 002D05CC  38 63 D0 B8 */	addi r3, r3, lbl_8039D0B8@l
/* 802D3690 002D05D0  38 63 00 1D */	addi r3, r3, 0x1d
/* 802D3694 002D05D4  7F 84 E3 78 */	mr r4, r28
/* 802D3698 002D05D8  4C C6 31 82 */	crclr 6
/* 802D369C 002D05DC  4B D3 34 21 */	bl OSReport
/* 802D36A0 002D05E0  3C 60 80 3A */	lis r3, lbl_8039D0B8@ha
/* 802D36A4 002D05E4  38 63 D0 B8 */	addi r3, r3, lbl_8039D0B8@l
/* 802D36A8 002D05E8  38 63 00 2F */	addi r3, r3, 0x2f
/* 802D36AC 002D05EC  7F A4 EB 78 */	mr r4, r29
/* 802D36B0 002D05F0  4C C6 31 82 */	crclr 6
/* 802D36B4 002D05F4  4B D3 34 09 */	bl OSReport
/* 802D36B8 002D05F8  3C 60 80 3A */	lis r3, lbl_8039D0B8@ha
/* 802D36BC 002D05FC  38 C3 D0 B8 */	addi r6, r3, lbl_8039D0B8@l
/* 802D36C0 002D0600  38 66 00 3C */	addi r3, r6, 0x3c
/* 802D36C4 002D0604  38 80 00 6C */	li r4, 0x6c
/* 802D36C8 002D0608  38 A6 00 4D */	addi r5, r6, 0x4d
/* 802D36CC 002D060C  38 C6 00 50 */	addi r6, r6, 0x50
/* 802D36D0 002D0610  4C C6 31 82 */	crclr 6
/* 802D36D4 002D0614  48 00 EB 29 */	bl JUTException_NS_panic_f
lbl_802D36D8:
/* 802D36D8 002D0618  38 60 00 08 */	li r3, 8
/* 802D36DC 002D061C  80 8D 8D F0 */	lwz r4, lbl_80451370-_SDA_BASE_(r13)
/* 802D36E0 002D0620  38 A0 FF FC */	li r5, -4
/* 802D36E4 002D0624  4B FF B5 B5 */	bl __nw__FUlP7JKRHeapi
/* 802D36E8 002D0628  7C 79 1B 78 */	mr r25, r3
/* 802D36EC 002D062C  7F 43 D3 78 */	mr r3, r26
/* 802D36F0 002D0630  7F 64 DB 78 */	mr r4, r27
/* 802D36F4 002D0634  7F 85 E3 78 */	mr r5, r28
/* 802D36F8 002D0638  7F A6 EB 78 */	mr r6, r29
/* 802D36FC 002D063C  7F C7 F3 78 */	mr r7, r30
/* 802D3700 002D0640  7F E8 FB 78 */	mr r8, r31
/* 802D3704 002D0644  4B FF FE 71 */	bl JKRAramPiece_NS_prepareCommand
/* 802D3708 002D0648  7C 7A 1B 78 */	mr r26, r3
/* 802D370C 002D064C  38 00 00 01 */	li r0, 1
/* 802D3710 002D0650  90 19 00 00 */	stw r0, 0(r25)
/* 802D3714 002D0654  93 59 00 04 */	stw r26, 4(r25)
/* 802D3718 002D0658  3C 60 80 3D */	lis r3, lbl_803CC138@ha
/* 802D371C 002D065C  38 63 C1 38 */	addi r3, r3, lbl_803CC138@l
/* 802D3720 002D0660  7F 24 CB 78 */	mr r4, r25
/* 802D3724 002D0664  38 A0 00 01 */	li r5, 1
/* 802D3728 002D0668  48 06 B2 CD */	bl OSSendMessage
/* 802D372C 002D066C  80 1A 00 58 */	lwz r0, 0x58(r26)
/* 802D3730 002D0670  28 00 00 00 */	cmplwi r0, 0
/* 802D3734 002D0674  41 82 00 14 */	beq lbl_802D3748
/* 802D3738 002D0678  3C 60 80 43 */	lis r3, lbl_80434324@ha
/* 802D373C 002D067C  38 63 43 24 */	addi r3, r3, lbl_80434324@l
/* 802D3740 002D0680  38 9A 00 20 */	addi r4, r26, 0x20
/* 802D3744 002D0684  48 00 88 09 */	bl append__10JSUPtrListFP10JSUPtrLink
lbl_802D3748:
/* 802D3748 002D0688  3C 60 80 43 */	lis r3, lbl_80434330@ha
/* 802D374C 002D068C  38 63 43 30 */	addi r3, r3, lbl_80434330@l
/* 802D3750 002D0690  48 06 B9 CD */	bl OSUnlockMutex
/* 802D3754 002D0694  7F 43 D3 78 */	mr r3, r26
/* 802D3758 002D0698  39 61 00 30 */	addi r11, r1, 0x30
/* 802D375C 002D069C  48 08 EA BD */	bl func_80362218
/* 802D3760 002D06A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D3764 002D06A4  7C 08 03 A6 */	mtlr r0
/* 802D3768 002D06A8  38 21 00 30 */	addi r1, r1, 0x30
/* 802D376C 002D06AC  4E 80 00 20 */	blr 

.global JKRAramPiece_NS_sync
JKRAramPiece_NS_sync:
/* 802D3770 002D06B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3774 002D06B4  7C 08 02 A6 */	mflr r0
/* 802D3778 002D06B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D377C 002D06BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D3780 002D06C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D3784 002D06C4  7C 7E 1B 78 */	mr r30, r3
/* 802D3788 002D06C8  7C 9F 23 78 */	mr r31, r4
/* 802D378C 002D06CC  3C 60 80 43 */	lis r3, lbl_80434330@ha
/* 802D3790 002D06D0  38 63 43 30 */	addi r3, r3, lbl_80434330@l
/* 802D3794 002D06D4  48 06 B8 AD */	bl OSLockMutex
/* 802D3798 002D06D8  2C 1F 00 00 */	cmpwi r31, 0
/* 802D379C 002D06DC  40 82 00 38 */	bne lbl_802D37D4
/* 802D37A0 002D06E0  38 7E 00 68 */	addi r3, r30, 0x68
/* 802D37A4 002D06E4  38 81 00 08 */	addi r4, r1, 8
/* 802D37A8 002D06E8  38 A0 00 01 */	li r5, 1
/* 802D37AC 002D06EC  48 06 B3 11 */	bl OSReceiveMessage
/* 802D37B0 002D06F0  3C 60 80 43 */	lis r3, lbl_80434324@ha
/* 802D37B4 002D06F4  38 63 43 24 */	addi r3, r3, lbl_80434324@l
/* 802D37B8 002D06F8  38 9E 00 20 */	addi r4, r30, 0x20
/* 802D37BC 002D06FC  48 00 89 A1 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D37C0 002D0700  3C 60 80 43 */	lis r3, lbl_80434330@ha
/* 802D37C4 002D0704  38 63 43 30 */	addi r3, r3, lbl_80434330@l
/* 802D37C8 002D0708  48 06 B9 55 */	bl OSUnlockMutex
/* 802D37CC 002D070C  38 60 00 01 */	li r3, 1
/* 802D37D0 002D0710  48 00 00 50 */	b lbl_802D3820
lbl_802D37D4:
/* 802D37D4 002D0714  38 7E 00 68 */	addi r3, r30, 0x68
/* 802D37D8 002D0718  38 81 00 08 */	addi r4, r1, 8
/* 802D37DC 002D071C  38 A0 00 00 */	li r5, 0
/* 802D37E0 002D0720  48 06 B2 DD */	bl OSReceiveMessage
/* 802D37E4 002D0724  2C 03 00 00 */	cmpwi r3, 0
/* 802D37E8 002D0728  40 82 00 18 */	bne lbl_802D3800
/* 802D37EC 002D072C  3C 60 80 43 */	lis r3, lbl_80434330@ha
/* 802D37F0 002D0730  38 63 43 30 */	addi r3, r3, lbl_80434330@l
/* 802D37F4 002D0734  48 06 B9 29 */	bl OSUnlockMutex
/* 802D37F8 002D0738  38 60 00 00 */	li r3, 0
/* 802D37FC 002D073C  48 00 00 24 */	b lbl_802D3820
lbl_802D3800:
/* 802D3800 002D0740  3C 60 80 43 */	lis r3, lbl_80434324@ha
/* 802D3804 002D0744  38 63 43 24 */	addi r3, r3, lbl_80434324@l
/* 802D3808 002D0748  38 9E 00 20 */	addi r4, r30, 0x20
/* 802D380C 002D074C  48 00 89 51 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D3810 002D0750  3C 60 80 43 */	lis r3, lbl_80434330@ha
/* 802D3814 002D0754  38 63 43 30 */	addi r3, r3, lbl_80434330@l
/* 802D3818 002D0758  48 06 B9 05 */	bl OSUnlockMutex
/* 802D381C 002D075C  38 60 00 01 */	li r3, 1
lbl_802D3820:
/* 802D3820 002D0760  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D3824 002D0764  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D3828 002D0768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D382C 002D076C  7C 08 03 A6 */	mtlr r0
/* 802D3830 002D0770  38 21 00 20 */	addi r1, r1, 0x20
/* 802D3834 002D0774  4E 80 00 20 */	blr 

.global JKRAramPiece_NS_orderSync
JKRAramPiece_NS_orderSync:
/* 802D3838 002D0778  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D383C 002D077C  7C 08 02 A6 */	mflr r0
/* 802D3840 002D0780  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3844 002D0784  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3848 002D0788  48 08 E9 8D */	bl _savegpr_27
/* 802D384C 002D078C  7C 7B 1B 78 */	mr r27, r3
/* 802D3850 002D0790  7C 9C 23 78 */	mr r28, r4
/* 802D3854 002D0794  7C BD 2B 78 */	mr r29, r5
/* 802D3858 002D0798  7C DF 33 78 */	mr r31, r6
/* 802D385C 002D079C  7C FE 3B 78 */	mr r30, r7
/* 802D3860 002D07A0  3C 60 80 43 */	lis r3, lbl_80434330@ha
/* 802D3864 002D07A4  38 63 43 30 */	addi r3, r3, lbl_80434330@l
/* 802D3868 002D07A8  48 06 B7 D9 */	bl OSLockMutex
/* 802D386C 002D07AC  7F 63 DB 78 */	mr r3, r27
/* 802D3870 002D07B0  7F 84 E3 78 */	mr r4, r28
/* 802D3874 002D07B4  7F A5 EB 78 */	mr r5, r29
/* 802D3878 002D07B8  7F E6 FB 78 */	mr r6, r31
/* 802D387C 002D07BC  7F C7 F3 78 */	mr r7, r30
/* 802D3880 002D07C0  39 00 00 00 */	li r8, 0
/* 802D3884 002D07C4  4B FF FD 91 */	bl JKRAramPiece_NS_orderAsync
/* 802D3888 002D07C8  7C 7F 1B 78 */	mr r31, r3
/* 802D388C 002D07CC  38 80 00 00 */	li r4, 0
/* 802D3890 002D07D0  4B FF FE E1 */	bl JKRAramPiece_NS_sync
/* 802D3894 002D07D4  7C 7E 1B 78 */	mr r30, r3
/* 802D3898 002D07D8  7F E3 FB 78 */	mr r3, r31
/* 802D389C 002D07DC  38 80 00 01 */	li r4, 1
/* 802D38A0 002D07E0  48 00 01 BD */	bl JKRAMCommand_NS_dtor
/* 802D38A4 002D07E4  3C 60 80 43 */	lis r3, lbl_80434330@ha
/* 802D38A8 002D07E8  38 63 43 30 */	addi r3, r3, lbl_80434330@l
/* 802D38AC 002D07EC  48 06 B8 71 */	bl OSUnlockMutex
/* 802D38B0 002D07F0  7F C3 F3 78 */	mr r3, r30
/* 802D38B4 002D07F4  39 61 00 20 */	addi r11, r1, 0x20
/* 802D38B8 002D07F8  48 08 E9 69 */	bl _restgpr_27
/* 802D38BC 002D07FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D38C0 002D0800  7C 08 03 A6 */	mtlr r0
/* 802D38C4 002D0804  38 21 00 20 */	addi r1, r1, 0x20
/* 802D38C8 002D0808  4E 80 00 20 */	blr 

.global JKRAramPiece_NS_startDMA
JKRAramPiece_NS_startDMA:
/* 802D38CC 002D080C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D38D0 002D0810  7C 08 02 A6 */	mflr r0
/* 802D38D4 002D0814  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D38D8 002D0818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D38DC 002D081C  7C 7F 1B 78 */	mr r31, r3
/* 802D38E0 002D0820  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802D38E4 002D0824  2C 00 00 01 */	cmpwi r0, 1
/* 802D38E8 002D0828  40 82 00 14 */	bne lbl_802D38FC
/* 802D38EC 002D082C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 802D38F0 002D0830  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D38F4 002D0834  48 06 7C 8D */	bl DCInvalidateRange
/* 802D38F8 002D0838  48 00 00 10 */	b lbl_802D3908
lbl_802D38FC:
/* 802D38FC 002D083C  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 802D3900 002D0840  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D3904 002D0844  48 06 7C D9 */	bl DCStoreRange
lbl_802D3908:
/* 802D3908 002D0848  7F E3 FB 78 */	mr r3, r31
/* 802D390C 002D084C  38 80 00 00 */	li r4, 0
/* 802D3910 002D0850  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 802D3914 002D0854  38 C0 00 00 */	li r6, 0
/* 802D3918 002D0858  80 FF 00 48 */	lwz r7, 0x48(r31)
/* 802D391C 002D085C  81 1F 00 4C */	lwz r8, 0x4c(r31)
/* 802D3920 002D0860  81 3F 00 44 */	lwz r9, 0x44(r31)
.global JKRAramPiece_NS_doneDMA
/* 802D3924 002D0864  3D 40 80 2D */	lis r10, JKRAramPiece_NS_doneDMA@ha
.global JKRAramPiece_NS_doneDMA
/* 802D3928 002D0868  39 4A 39 44 */	addi r10, r10, JKRAramPiece_NS_doneDMA@l
/* 802D392C 002D086C  48 07 E9 A9 */	bl ARQPostRequest
/* 802D3930 002D0870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3934 002D0874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3938 002D0878  7C 08 03 A6 */	mtlr r0
/* 802D393C 002D087C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3940 002D0880  4E 80 00 20 */	blr 
.global JKRAramPiece_NS_doneDMA
JKRAramPiece_NS_doneDMA:
/* 802D3944 002D0884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3948 002D0888  7C 08 02 A6 */	mflr r0
/* 802D394C 002D088C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3950 002D0890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D3954 002D0894  7C 7F 1B 78 */	mr r31, r3
/* 802D3958 002D0898  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802D395C 002D089C  2C 00 00 01 */	cmpwi r0, 1
/* 802D3960 002D08A0  40 82 00 10 */	bne lbl_802D3970
/* 802D3964 002D08A4  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 802D3968 002D08A8  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D396C 002D08AC  48 06 7C 15 */	bl DCInvalidateRange
lbl_802D3970:
/* 802D3970 002D08B0  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802D3974 002D08B4  2C 00 00 00 */	cmpwi r0, 0
/* 802D3978 002D08B8  41 82 00 18 */	beq lbl_802D3990
/* 802D397C 002D08BC  2C 00 00 02 */	cmpwi r0, 2
/* 802D3980 002D08C0  40 82 00 58 */	bne lbl_802D39D8
/* 802D3984 002D08C4  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D3988 002D08C8  48 00 7F 49 */	bl JKRDecomp_NS_sendCommand
/* 802D398C 002D08CC  48 00 00 4C */	b lbl_802D39D8
lbl_802D3990:
/* 802D3990 002D08D0  81 9F 00 58 */	lwz r12, 0x58(r31)
/* 802D3994 002D08D4  28 0C 00 00 */	cmplwi r12, 0
/* 802D3998 002D08D8  41 82 00 14 */	beq lbl_802D39AC
/* 802D399C 002D08DC  7F E3 FB 78 */	mr r3, r31
/* 802D39A0 002D08E0  7D 89 03 A6 */	mtctr r12
/* 802D39A4 002D08E4  4E 80 04 21 */	bctrl 
/* 802D39A8 002D08E8  48 00 00 30 */	b lbl_802D39D8
lbl_802D39AC:
/* 802D39AC 002D08EC  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 802D39B0 002D08F0  28 03 00 00 */	cmplwi r3, 0
/* 802D39B4 002D08F4  41 82 00 14 */	beq lbl_802D39C8
/* 802D39B8 002D08F8  7F E4 FB 78 */	mr r4, r31
/* 802D39BC 002D08FC  38 A0 00 00 */	li r5, 0
/* 802D39C0 002D0900  48 06 B0 35 */	bl OSSendMessage
/* 802D39C4 002D0904  48 00 00 14 */	b lbl_802D39D8
lbl_802D39C8:
/* 802D39C8 002D0908  38 7F 00 68 */	addi r3, r31, 0x68
/* 802D39CC 002D090C  7F E4 FB 78 */	mr r4, r31
/* 802D39D0 002D0910  38 A0 00 00 */	li r5, 0
/* 802D39D4 002D0914  48 06 B0 21 */	bl OSSendMessage
lbl_802D39D8:
/* 802D39D8 002D0918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D39DC 002D091C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D39E0 002D0920  7C 08 03 A6 */	mtlr r0
/* 802D39E4 002D0924  38 21 00 10 */	addi r1, r1, 0x10
/* 802D39E8 002D0928  4E 80 00 20 */	blr 

.global JKRAMCommand
JKRAMCommand:
/* 802D39EC 002D092C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D39F0 002D0930  7C 08 02 A6 */	mflr r0
/* 802D39F4 002D0934  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D39F8 002D0938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D39FC 002D093C  7C 7F 1B 78 */	mr r31, r3
/* 802D3A00 002D0940  7F E4 FB 78 */	mr r4, r31
/* 802D3A04 002D0944  38 64 00 20 */	addi r3, r4, 0x20
/* 802D3A08 002D0948  48 00 83 F5 */	bl __ct__10JSUPtrLinkFPv
/* 802D3A0C 002D094C  38 7F 00 30 */	addi r3, r31, 0x30
/* 802D3A10 002D0950  7F E4 FB 78 */	mr r4, r31
/* 802D3A14 002D0954  48 00 83 E9 */	bl __ct__10JSUPtrLinkFPv
/* 802D3A18 002D0958  38 7F 00 68 */	addi r3, r31, 0x68
/* 802D3A1C 002D095C  38 9F 00 88 */	addi r4, r31, 0x88
/* 802D3A20 002D0960  38 A0 00 01 */	li r5, 1
/* 802D3A24 002D0964  48 06 AF 71 */	bl OSInitMessageQueue
/* 802D3A28 002D0968  38 00 00 00 */	li r0, 0
/* 802D3A2C 002D096C  90 1F 00 58 */	stw r0, 0x58(r31)
/* 802D3A30 002D0970  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 802D3A34 002D0974  90 1F 00 60 */	stw r0, 0x60(r31)
/* 802D3A38 002D0978  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 802D3A3C 002D097C  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802D3A40 002D0980  90 1F 00 94 */	stw r0, 0x94(r31)
/* 802D3A44 002D0984  7F E3 FB 78 */	mr r3, r31
/* 802D3A48 002D0988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3A4C 002D098C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3A50 002D0990  7C 08 03 A6 */	mtlr r0
/* 802D3A54 002D0994  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3A58 002D0998  4E 80 00 20 */	blr 

.global JKRAMCommand_NS_dtor
JKRAMCommand_NS_dtor:
/* 802D3A5C 002D099C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3A60 002D09A0  7C 08 02 A6 */	mflr r0
/* 802D3A64 002D09A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3A68 002D09A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D3A6C 002D09AC  93 C1 00 08 */	stw r30, 8(r1)
/* 802D3A70 002D09B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D3A74 002D09B4  7C 9F 23 78 */	mr r31, r4
/* 802D3A78 002D09B8  41 82 00 70 */	beq lbl_802D3AE8
/* 802D3A7C 002D09BC  80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 802D3A80 002D09C0  28 03 00 00 */	cmplwi r3, 0
/* 802D3A84 002D09C4  41 82 00 08 */	beq lbl_802D3A8C
/* 802D3A88 002D09C8  4B FF B2 B5 */	bl __dl__FPv
lbl_802D3A8C:
/* 802D3A8C 002D09CC  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 802D3A90 002D09D0  28 03 00 00 */	cmplwi r3, 0
/* 802D3A94 002D09D4  41 82 00 08 */	beq lbl_802D3A9C
/* 802D3A98 002D09D8  4B FF B2 A5 */	bl __dl__FPv
lbl_802D3A9C:
/* 802D3A9C 002D09DC  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 802D3AA0 002D09E0  28 03 00 00 */	cmplwi r3, 0
/* 802D3AA4 002D09E4  41 82 00 0C */	beq lbl_802D3AB0
/* 802D3AA8 002D09E8  38 80 00 00 */	li r4, 0
/* 802D3AAC 002D09EC  4B FF AA 55 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D3AB0:
/* 802D3AB0 002D09F0  34 1E 00 30 */	addic. r0, r30, 0x30
/* 802D3AB4 002D09F4  41 82 00 10 */	beq lbl_802D3AC4
/* 802D3AB8 002D09F8  38 7E 00 30 */	addi r3, r30, 0x30
/* 802D3ABC 002D09FC  38 80 00 00 */	li r4, 0
/* 802D3AC0 002D0A00  48 00 83 55 */	bl __dt__10JSUPtrLinkFv
lbl_802D3AC4:
/* 802D3AC4 002D0A04  34 1E 00 20 */	addic. r0, r30, 0x20
/* 802D3AC8 002D0A08  41 82 00 10 */	beq lbl_802D3AD8
/* 802D3ACC 002D0A0C  38 7E 00 20 */	addi r3, r30, 0x20
/* 802D3AD0 002D0A10  38 80 00 00 */	li r4, 0
/* 802D3AD4 002D0A14  48 00 83 41 */	bl __dt__10JSUPtrLinkFv
lbl_802D3AD8:
/* 802D3AD8 002D0A18  7F E0 07 35 */	extsh. r0, r31
/* 802D3ADC 002D0A1C  40 81 00 0C */	ble lbl_802D3AE8
/* 802D3AE0 002D0A20  7F C3 F3 78 */	mr r3, r30
/* 802D3AE4 002D0A24  4B FF B2 59 */	bl __dl__FPv
lbl_802D3AE8:
/* 802D3AE8 002D0A28  7F C3 F3 78 */	mr r3, r30
/* 802D3AEC 002D0A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3AF0 002D0A30  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D3AF4 002D0A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3AF8 002D0A38  7C 08 03 A6 */	mtlr r0
/* 802D3AFC 002D0A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3B00 002D0A40  4E 80 00 20 */	blr 
/* 802D3B04 002D0A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3B08 002D0A48  7C 08 02 A6 */	mflr r0
/* 802D3B0C 002D0A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3B10 002D0A50  3C 60 80 43 */	lis r3, lbl_80434324@ha
/* 802D3B14 002D0A54  38 63 43 24 */	addi r3, r3, lbl_80434324@l
/* 802D3B18 002D0A58  48 00 83 FD */	bl initiate__10JSUPtrListFv
/* 802D3B1C 002D0A5C  3C 60 80 43 */	lis r3, lbl_80434324@ha
/* 802D3B20 002D0A60  38 63 43 24 */	addi r3, r3, lbl_80434324@l
.global JSUList_NS_dtor_X4_
/* 802D3B24 002D0A64  3C 80 80 2D */	lis r4, JSUList_NS_dtor_X4_@ha
.global JSUList_NS_dtor_X4_
/* 802D3B28 002D0A68  38 84 2D F0 */	addi r4, r4, JSUList_NS_dtor_X4_@l
/* 802D3B2C 002D0A6C  3C A0 80 43 */	lis r5, lbl_80434318@ha
/* 802D3B30 002D0A70  38 A5 43 18 */	addi r5, r5, lbl_80434318@l
/* 802D3B34 002D0A74  48 08 E0 F1 */	bl func_80361C24
/* 802D3B38 002D0A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3B3C 002D0A7C  7C 08 03 A6 */	mtlr r0
/* 802D3B40 002D0A80  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3B44 002D0A84  4E 80 00 20 */	blr 

