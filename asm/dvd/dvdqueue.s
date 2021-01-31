.include "macros.inc"

.section .text, "ax" # 8034b874


.global __DVDClearWaitingQueue
__DVDClearWaitingQueue:
/* 8034B874 003487B4  3C 60 80 45 */	lis r3, lbl_8044C998@ha
/* 8034B878 003487B8  38 63 C9 98 */	addi r3, r3, lbl_8044C998@l
/* 8034B87C 003487BC  90 63 00 00 */	stw r3, 0(r3)
/* 8034B880 003487C0  38 A3 00 08 */	addi r5, r3, 8
/* 8034B884 003487C4  38 83 00 10 */	addi r4, r3, 0x10
/* 8034B888 003487C8  90 63 00 04 */	stw r3, 4(r3)
/* 8034B88C 003487CC  38 63 00 18 */	addi r3, r3, 0x18
/* 8034B890 003487D0  90 A5 00 00 */	stw r5, 0(r5)
/* 8034B894 003487D4  90 A5 00 04 */	stw r5, 4(r5)
/* 8034B898 003487D8  90 84 00 00 */	stw r4, 0(r4)
/* 8034B89C 003487DC  90 84 00 04 */	stw r4, 4(r4)
/* 8034B8A0 003487E0  90 63 00 00 */	stw r3, 0(r3)
/* 8034B8A4 003487E4  90 63 00 04 */	stw r3, 4(r3)
/* 8034B8A8 003487E8  4E 80 00 20 */	blr 

.global __DVDPushWaitingQueue
__DVDPushWaitingQueue:
/* 8034B8AC 003487EC  7C 08 02 A6 */	mflr r0
/* 8034B8B0 003487F0  90 01 00 04 */	stw r0, 4(r1)
/* 8034B8B4 003487F4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034B8B8 003487F8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034B8BC 003487FC  3B E4 00 00 */	addi r31, r4, 0
/* 8034B8C0 00348800  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034B8C4 00348804  3B C3 00 00 */	addi r30, r3, 0
/* 8034B8C8 00348808  4B FF 1E 2D */	bl __RAS_OSDisableInterrupts_begin 
/* 8034B8CC 0034880C  3C 80 80 45 */	lis r4, lbl_8044C998@ha
/* 8034B8D0 00348810  57 C5 18 38 */	slwi r5, r30, 3
/* 8034B8D4 00348814  38 04 C9 98 */	addi r0, r4, lbl_8044C998@l
/* 8034B8D8 00348818  7C A0 2A 14 */	add r5, r0, r5
/* 8034B8DC 0034881C  80 85 00 04 */	lwz r4, 4(r5)
/* 8034B8E0 00348820  93 E4 00 00 */	stw r31, 0(r4)
/* 8034B8E4 00348824  80 05 00 04 */	lwz r0, 4(r5)
/* 8034B8E8 00348828  90 1F 00 04 */	stw r0, 4(r31)
/* 8034B8EC 0034882C  90 BF 00 00 */	stw r5, 0(r31)
/* 8034B8F0 00348830  93 E5 00 04 */	stw r31, 4(r5)
/* 8034B8F4 00348834  4B FF 1E 29 */	bl OSRestoreInterrupts
/* 8034B8F8 00348838  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034B8FC 0034883C  38 60 00 01 */	li r3, 1
/* 8034B900 00348840  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034B904 00348844  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034B908 00348848  38 21 00 18 */	addi r1, r1, 0x18
/* 8034B90C 0034884C  7C 08 03 A6 */	mtlr r0
/* 8034B910 00348850  4E 80 00 20 */	blr 

.global __DVDPopWaitingQueue
__DVDPopWaitingQueue:
/* 8034B914 00348854  7C 08 02 A6 */	mflr r0
/* 8034B918 00348858  90 01 00 04 */	stw r0, 4(r1)
/* 8034B91C 0034885C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034B920 00348860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034B924 00348864  4B FF 1D D1 */	bl __RAS_OSDisableInterrupts_begin 
/* 8034B928 00348868  38 00 00 04 */	li r0, 4
/* 8034B92C 0034886C  3C 80 80 45 */	lis r4, lbl_8044C998@ha
/* 8034B930 00348870  7C 09 03 A6 */	mtctr r0
/* 8034B934 00348874  38 84 C9 98 */	addi r4, r4, lbl_8044C998@l
/* 8034B938 00348878  3B E0 00 00 */	li r31, 0
lbl_8034B93C:
/* 8034B93C 0034887C  80 04 00 00 */	lwz r0, 0(r4)
/* 8034B940 00348880  7C 00 20 40 */	cmplw r0, r4
/* 8034B944 00348884  41 82 00 48 */	beq lbl_8034B98C
/* 8034B948 00348888  4B FF 1D D5 */	bl OSRestoreInterrupts
/* 8034B94C 0034888C  4B FF 1D A9 */	bl __RAS_OSDisableInterrupts_begin 
/* 8034B950 00348890  3C 80 80 45 */	lis r4, lbl_8044C998@ha
/* 8034B954 00348894  57 E5 18 38 */	slwi r5, r31, 3
/* 8034B958 00348898  38 04 C9 98 */	addi r0, r4, lbl_8044C998@l
/* 8034B95C 0034889C  7C A0 2A 14 */	add r5, r0, r5
/* 8034B960 003488A0  83 E5 00 00 */	lwz r31, 0(r5)
/* 8034B964 003488A4  80 1F 00 00 */	lwz r0, 0(r31)
/* 8034B968 003488A8  90 05 00 00 */	stw r0, 0(r5)
/* 8034B96C 003488AC  80 9F 00 00 */	lwz r4, 0(r31)
/* 8034B970 003488B0  90 A4 00 04 */	stw r5, 4(r4)
/* 8034B974 003488B4  4B FF 1D A9 */	bl OSRestoreInterrupts
/* 8034B978 003488B8  38 00 00 00 */	li r0, 0
/* 8034B97C 003488BC  90 1F 00 00 */	stw r0, 0(r31)
/* 8034B980 003488C0  7F E3 FB 78 */	mr r3, r31
/* 8034B984 003488C4  90 1F 00 04 */	stw r0, 4(r31)
/* 8034B988 003488C8  48 00 00 18 */	b lbl_8034B9A0
lbl_8034B98C:
/* 8034B98C 003488CC  38 84 00 08 */	addi r4, r4, 8
/* 8034B990 003488D0  3B FF 00 01 */	addi r31, r31, 1
/* 8034B994 003488D4  42 00 FF A8 */	bdnz lbl_8034B93C
/* 8034B998 003488D8  4B FF 1D 85 */	bl OSRestoreInterrupts
/* 8034B99C 003488DC  38 60 00 00 */	li r3, 0
lbl_8034B9A0:
/* 8034B9A0 003488E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034B9A4 003488E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034B9A8 003488E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8034B9AC 003488EC  7C 08 03 A6 */	mtlr r0
/* 8034B9B0 003488F0  4E 80 00 20 */	blr 

.global __DVDCheckWaitingQueue
__DVDCheckWaitingQueue:
/* 8034B9B4 003488F4  7C 08 02 A6 */	mflr r0
/* 8034B9B8 003488F8  90 01 00 04 */	stw r0, 4(r1)
/* 8034B9BC 003488FC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8034B9C0 00348900  4B FF 1D 35 */	bl __RAS_OSDisableInterrupts_begin 
/* 8034B9C4 00348904  38 00 00 04 */	li r0, 4
/* 8034B9C8 00348908  3C 80 80 45 */	lis r4, lbl_8044C998@ha
/* 8034B9CC 0034890C  7C 09 03 A6 */	mtctr r0
/* 8034B9D0 00348910  38 84 C9 98 */	addi r4, r4, lbl_8044C998@l
lbl_8034B9D4:
/* 8034B9D4 00348914  80 04 00 00 */	lwz r0, 0(r4)
/* 8034B9D8 00348918  7C 00 20 40 */	cmplw r0, r4
/* 8034B9DC 0034891C  41 82 00 10 */	beq lbl_8034B9EC
/* 8034B9E0 00348920  4B FF 1D 3D */	bl OSRestoreInterrupts
/* 8034B9E4 00348924  38 60 00 01 */	li r3, 1
/* 8034B9E8 00348928  48 00 00 14 */	b lbl_8034B9FC
lbl_8034B9EC:
/* 8034B9EC 0034892C  38 84 00 08 */	addi r4, r4, 8
/* 8034B9F0 00348930  42 00 FF E4 */	bdnz lbl_8034B9D4
/* 8034B9F4 00348934  4B FF 1D 29 */	bl OSRestoreInterrupts
/* 8034B9F8 00348938  38 60 00 00 */	li r3, 0
lbl_8034B9FC:
/* 8034B9FC 0034893C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034BA00 00348940  38 21 00 08 */	addi r1, r1, 8
/* 8034BA04 00348944  7C 08 03 A6 */	mtlr r0
/* 8034BA08 00348948  4E 80 00 20 */	blr 

.global __DVDDequeueWaitingQueue
__DVDDequeueWaitingQueue:
/* 8034BA0C 0034894C  7C 08 02 A6 */	mflr r0
/* 8034BA10 00348950  90 01 00 04 */	stw r0, 4(r1)
/* 8034BA14 00348954  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034BA18 00348958  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034BA1C 0034895C  7C 7F 1B 78 */	mr r31, r3
/* 8034BA20 00348960  4B FF 1C D5 */	bl __RAS_OSDisableInterrupts_begin 
/* 8034BA24 00348964  80 9F 00 04 */	lwz r4, 4(r31)
/* 8034BA28 00348968  80 BF 00 00 */	lwz r5, 0(r31)
/* 8034BA2C 0034896C  28 04 00 00 */	cmplwi r4, 0
/* 8034BA30 00348970  41 82 00 0C */	beq lbl_8034BA3C
/* 8034BA34 00348974  28 05 00 00 */	cmplwi r5, 0
/* 8034BA38 00348978  40 82 00 10 */	bne lbl_8034BA48
lbl_8034BA3C:
/* 8034BA3C 0034897C  4B FF 1C E1 */	bl OSRestoreInterrupts
/* 8034BA40 00348980  38 60 00 00 */	li r3, 0
/* 8034BA44 00348984  48 00 00 14 */	b lbl_8034BA58
lbl_8034BA48:
/* 8034BA48 00348988  90 A4 00 00 */	stw r5, 0(r4)
/* 8034BA4C 0034898C  90 85 00 04 */	stw r4, 4(r5)
/* 8034BA50 00348990  4B FF 1C CD */	bl OSRestoreInterrupts
/* 8034BA54 00348994  38 60 00 01 */	li r3, 1
lbl_8034BA58:
/* 8034BA58 00348998  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034BA5C 0034899C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034BA60 003489A0  38 21 00 18 */	addi r1, r1, 0x18
/* 8034BA64 003489A4  7C 08 03 A6 */	mtlr r0
/* 8034BA68 003489A8  4E 80 00 20 */	blr 
