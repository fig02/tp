.include "macros.inc"

.section .text, "ax" # 802d9584


.global JKRDvdFile
JKRDvdFile:
/* 802D9584 002D64C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D9588 002D64C8  7C 08 02 A6 */	mflr r0
/* 802D958C 002D64CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9590 002D64D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9594 002D64D4  93 C1 00 08 */	stw r30, 8(r1)
/* 802D9598 002D64D8  7C 7E 1B 78 */	mr r30, r3
/* 802D959C 002D64DC  7F C0 F3 78 */	mr r0, r30
/* 802D95A0 002D64E0  7C 1F 03 78 */	mr r31, r0
/* 802D95A4 002D64E4  4B FF 7E D9 */	bl __ct__11JKRDisposerFv
/* 802D95A8 002D64E8  3C 60 80 3D */	lis r3, lbl_803CC328@ha
/* 802D95AC 002D64EC  38 03 C3 28 */	addi r0, r3, lbl_803CC328@l
/* 802D95B0 002D64F0  90 1F 00 00 */	stw r0, 0(r31)
/* 802D95B4 002D64F4  38 00 00 00 */	li r0, 0
/* 802D95B8 002D64F8  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802D95BC 002D64FC  3C 60 80 3D */	lis r3, lbl_803CC438@ha
/* 802D95C0 002D6500  38 03 C4 38 */	addi r0, r3, lbl_803CC438@l
/* 802D95C4 002D6504  90 1E 00 00 */	stw r0, 0(r30)
/* 802D95C8 002D6508  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 802D95CC 002D650C  7F C4 F3 78 */	mr r4, r30
/* 802D95D0 002D6510  48 00 28 2D */	bl __ct__10JSUPtrLinkFPv
/* 802D95D4 002D6514  7F C3 F3 78 */	mr r3, r30
/* 802D95D8 002D6518  48 00 02 0D */	bl JKRDvdFile_NS_initiate
/* 802D95DC 002D651C  7F C3 F3 78 */	mr r3, r30
/* 802D95E0 002D6520  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D95E4 002D6524  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D95E8 002D6528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D95EC 002D652C  7C 08 03 A6 */	mtlr r0
/* 802D95F0 002D6530  38 21 00 10 */	addi r1, r1, 0x10
/* 802D95F4 002D6534  4E 80 00 20 */	blr 

.global JKRDvdFile_X1_
JKRDvdFile_X1_:
/* 802D95F8 002D6538  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D95FC 002D653C  7C 08 02 A6 */	mflr r0
/* 802D9600 002D6540  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D9604 002D6544  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9608 002D6548  48 08 8B D5 */	bl _savegpr_29
/* 802D960C 002D654C  7C 7D 1B 78 */	mr r29, r3
/* 802D9610 002D6550  7C 9F 23 78 */	mr r31, r4
/* 802D9614 002D6554  7F A0 EB 78 */	mr r0, r29
/* 802D9618 002D6558  7C 1E 03 78 */	mr r30, r0
/* 802D961C 002D655C  4B FF 7E 61 */	bl __ct__11JKRDisposerFv
/* 802D9620 002D6560  3C 60 80 3D */	lis r3, lbl_803CC328@ha
/* 802D9624 002D6564  38 03 C3 28 */	addi r0, r3, lbl_803CC328@l
/* 802D9628 002D6568  90 1E 00 00 */	stw r0, 0(r30)
/* 802D962C 002D656C  38 00 00 00 */	li r0, 0
/* 802D9630 002D6570  98 1E 00 18 */	stb r0, 0x18(r30)
/* 802D9634 002D6574  3C 60 80 3D */	lis r3, lbl_803CC438@ha
/* 802D9638 002D6578  38 03 C4 38 */	addi r0, r3, lbl_803CC438@l
/* 802D963C 002D657C  90 1D 00 00 */	stw r0, 0(r29)
/* 802D9640 002D6580  38 7D 00 E4 */	addi r3, r29, 0xe4
/* 802D9644 002D6584  7F A4 EB 78 */	mr r4, r29
/* 802D9648 002D6588  48 00 27 B5 */	bl __ct__10JSUPtrLinkFPv
/* 802D964C 002D658C  7F A3 EB 78 */	mr r3, r29
/* 802D9650 002D6590  48 00 01 95 */	bl JKRDvdFile_NS_initiate
/* 802D9654 002D6594  7F A3 EB 78 */	mr r3, r29
/* 802D9658 002D6598  7F E4 FB 78 */	mr r4, r31
/* 802D965C 002D659C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D9660 002D65A0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D9664 002D65A4  7D 89 03 A6 */	mtctr r12
/* 802D9668 002D65A8  4E 80 04 21 */	bctrl 
/* 802D966C 002D65AC  98 7D 00 18 */	stb r3, 0x18(r29)
/* 802D9670 002D65B0  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 802D9674 002D65B4  28 00 00 00 */	cmplwi r0, 0
/* 802D9678 002D65B8  41 82 00 0C */	beq lbl_802D9684
/* 802D967C 002D65BC  7F A3 EB 78 */	mr r3, r29
/* 802D9680 002D65C0  48 00 00 08 */	b lbl_802D9688
lbl_802D9684:
/* 802D9684 002D65C4  7F A3 EB 78 */	mr r3, r29
lbl_802D9688:
/* 802D9688 002D65C8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D968C 002D65CC  48 08 8B 9D */	bl _restgpr_29
/* 802D9690 002D65D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D9694 002D65D4  7C 08 03 A6 */	mtlr r0
/* 802D9698 002D65D8  38 21 00 20 */	addi r1, r1, 0x20
/* 802D969C 002D65DC  4E 80 00 20 */	blr 

.global JKRDvdFile_X2_
JKRDvdFile_X2_:
/* 802D96A0 002D65E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D96A4 002D65E4  7C 08 02 A6 */	mflr r0
/* 802D96A8 002D65E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D96AC 002D65EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D96B0 002D65F0  48 08 8B 2D */	bl _savegpr_29
/* 802D96B4 002D65F4  7C 7D 1B 78 */	mr r29, r3
/* 802D96B8 002D65F8  7C 9F 23 78 */	mr r31, r4
/* 802D96BC 002D65FC  7F A0 EB 78 */	mr r0, r29
/* 802D96C0 002D6600  7C 1E 03 78 */	mr r30, r0
/* 802D96C4 002D6604  4B FF 7D B9 */	bl __ct__11JKRDisposerFv
/* 802D96C8 002D6608  3C 60 80 3D */	lis r3, lbl_803CC328@ha
/* 802D96CC 002D660C  38 03 C3 28 */	addi r0, r3, lbl_803CC328@l
/* 802D96D0 002D6610  90 1E 00 00 */	stw r0, 0(r30)
/* 802D96D4 002D6614  38 00 00 00 */	li r0, 0
/* 802D96D8 002D6618  98 1E 00 18 */	stb r0, 0x18(r30)
/* 802D96DC 002D661C  3C 60 80 3D */	lis r3, lbl_803CC438@ha
/* 802D96E0 002D6620  38 03 C4 38 */	addi r0, r3, lbl_803CC438@l
/* 802D96E4 002D6624  90 1D 00 00 */	stw r0, 0(r29)
/* 802D96E8 002D6628  38 7D 00 E4 */	addi r3, r29, 0xe4
/* 802D96EC 002D662C  7F A4 EB 78 */	mr r4, r29
/* 802D96F0 002D6630  48 00 27 0D */	bl __ct__10JSUPtrLinkFPv
/* 802D96F4 002D6634  7F A3 EB 78 */	mr r3, r29
/* 802D96F8 002D6638  48 00 00 ED */	bl JKRDvdFile_NS_initiate
/* 802D96FC 002D663C  7F A3 EB 78 */	mr r3, r29
/* 802D9700 002D6640  7F E4 FB 78 */	mr r4, r31
/* 802D9704 002D6644  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D9708 002D6648  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D970C 002D664C  7D 89 03 A6 */	mtctr r12
/* 802D9710 002D6650  4E 80 04 21 */	bctrl 
/* 802D9714 002D6654  98 7D 00 18 */	stb r3, 0x18(r29)
/* 802D9718 002D6658  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 802D971C 002D665C  28 00 00 00 */	cmplwi r0, 0
/* 802D9720 002D6660  41 82 00 0C */	beq lbl_802D972C
/* 802D9724 002D6664  7F A3 EB 78 */	mr r3, r29
/* 802D9728 002D6668  48 00 00 08 */	b lbl_802D9730
lbl_802D972C:
/* 802D972C 002D666C  7F A3 EB 78 */	mr r3, r29
lbl_802D9730:
/* 802D9730 002D6670  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9734 002D6674  48 08 8A F5 */	bl _restgpr_29
/* 802D9738 002D6678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D973C 002D667C  7C 08 03 A6 */	mtlr r0
/* 802D9740 002D6680  38 21 00 20 */	addi r1, r1, 0x20
/* 802D9744 002D6684  4E 80 00 20 */	blr 

.global JKRDvdFile_NS_dtor
JKRDvdFile_NS_dtor:
/* 802D9748 002D6688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D974C 002D668C  7C 08 02 A6 */	mflr r0
/* 802D9750 002D6690  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9754 002D6694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9758 002D6698  93 C1 00 08 */	stw r30, 8(r1)
/* 802D975C 002D669C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D9760 002D66A0  7C 9F 23 78 */	mr r31, r4
/* 802D9764 002D66A4  41 82 00 64 */	beq lbl_802D97C8
/* 802D9768 002D66A8  3C 80 80 3D */	lis r4, lbl_803CC438@ha
/* 802D976C 002D66AC  38 04 C4 38 */	addi r0, r4, lbl_803CC438@l
/* 802D9770 002D66B0  90 1E 00 00 */	stw r0, 0(r30)
/* 802D9774 002D66B4  81 83 00 00 */	lwz r12, 0(r3)
/* 802D9778 002D66B8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D977C 002D66BC  7D 89 03 A6 */	mtctr r12
/* 802D9780 002D66C0  4E 80 04 21 */	bctrl 
/* 802D9784 002D66C4  34 1E 00 E4 */	addic. r0, r30, 0xe4
/* 802D9788 002D66C8  41 82 00 10 */	beq lbl_802D9798
/* 802D978C 002D66CC  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 802D9790 002D66D0  38 80 00 00 */	li r4, 0
/* 802D9794 002D66D4  48 00 26 81 */	bl __dt__10JSUPtrLinkFv
lbl_802D9798:
/* 802D9798 002D66D8  28 1E 00 00 */	cmplwi r30, 0
/* 802D979C 002D66DC  41 82 00 1C */	beq lbl_802D97B8
/* 802D97A0 002D66E0  3C 60 80 3D */	lis r3, lbl_803CC328@ha
/* 802D97A4 002D66E4  38 03 C3 28 */	addi r0, r3, lbl_803CC328@l
/* 802D97A8 002D66E8  90 1E 00 00 */	stw r0, 0(r30)
/* 802D97AC 002D66EC  7F C3 F3 78 */	mr r3, r30
/* 802D97B0 002D66F0  38 80 00 00 */	li r4, 0
/* 802D97B4 002D66F4  4B FF 7D 31 */	bl __dt__11JKRDisposerFv
lbl_802D97B8:
/* 802D97B8 002D66F8  7F E0 07 35 */	extsh. r0, r31
/* 802D97BC 002D66FC  40 81 00 0C */	ble lbl_802D97C8
/* 802D97C0 002D6700  7F C3 F3 78 */	mr r3, r30
/* 802D97C4 002D6704  4B FF 55 79 */	bl __dl__FPv
lbl_802D97C8:
/* 802D97C8 002D6708  7F C3 F3 78 */	mr r3, r30
/* 802D97CC 002D670C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D97D0 002D6710  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D97D4 002D6714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D97D8 002D6718  7C 08 03 A6 */	mtlr r0
/* 802D97DC 002D671C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D97E0 002D6720  4E 80 00 20 */	blr 

.global JKRDvdFile_NS_initiate
JKRDvdFile_NS_initiate:
/* 802D97E4 002D6724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D97E8 002D6728  7C 08 02 A6 */	mflr r0
/* 802D97EC 002D672C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D97F0 002D6730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D97F4 002D6734  7C 7F 1B 78 */	mr r31, r3
/* 802D97F8 002D6738  93 E3 00 98 */	stw r31, 0x98(r3)
/* 802D97FC 002D673C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802D9800 002D6740  48 06 58 09 */	bl OSInitMutex
/* 802D9804 002D6744  38 7F 00 34 */	addi r3, r31, 0x34
/* 802D9808 002D6748  48 06 58 01 */	bl OSInitMutex
/* 802D980C 002D674C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 802D9810 002D6750  38 9F 00 E0 */	addi r4, r31, 0xe0
/* 802D9814 002D6754  38 A0 00 01 */	li r5, 1
/* 802D9818 002D6758  48 06 51 7D */	bl OSInitMessageQueue
/* 802D981C 002D675C  38 7F 00 9C */	addi r3, r31, 0x9c
/* 802D9820 002D6760  38 9F 00 BC */	addi r4, r31, 0xbc
/* 802D9824 002D6764  38 A0 00 01 */	li r5, 1
/* 802D9828 002D6768  48 06 51 6D */	bl OSInitMessageQueue
/* 802D982C 002D676C  38 00 00 00 */	li r0, 0
/* 802D9830 002D6770  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 802D9834 002D6774  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802D9838 002D6778  90 1F 00 58 */	stw r0, 0x58(r31)
/* 802D983C 002D677C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D9840 002D6780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D9844 002D6784  7C 08 03 A6 */	mtlr r0
/* 802D9848 002D6788  38 21 00 10 */	addi r1, r1, 0x10
/* 802D984C 002D678C  4E 80 00 20 */	blr 

.global JKRDvdFile_NS_open
JKRDvdFile_NS_open:
/* 802D9850 002D6790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D9854 002D6794  7C 08 02 A6 */	mflr r0
/* 802D9858 002D6798  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D985C 002D679C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9860 002D67A0  7C 7F 1B 78 */	mr r31, r3
/* 802D9864 002D67A4  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802D9868 002D67A8  28 00 00 00 */	cmplwi r0, 0
/* 802D986C 002D67AC  40 82 00 40 */	bne lbl_802D98AC
/* 802D9870 002D67B0  7C 83 23 78 */	mr r3, r4
/* 802D9874 002D67B4  38 9F 00 5C */	addi r4, r31, 0x5c
/* 802D9878 002D67B8  48 06 F0 19 */	bl DVDOpen
/* 802D987C 002D67BC  30 03 FF FF */	addic r0, r3, -1
/* 802D9880 002D67C0  7C 00 19 10 */	subfe r0, r0, r3
/* 802D9884 002D67C4  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802D9888 002D67C8  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 802D988C 002D67CC  28 00 00 00 */	cmplwi r0, 0
/* 802D9890 002D67D0  41 82 00 1C */	beq lbl_802D98AC
/* 802D9894 002D67D4  3C 60 80 43 */	lis r3, lbl_8043436C@ha
/* 802D9898 002D67D8  38 63 43 6C */	addi r3, r3, lbl_8043436C@l
/* 802D989C 002D67DC  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 802D98A0 002D67E0  48 00 26 AD */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802D98A4 002D67E4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 802D98A8 002D67E8  48 07 18 D5 */	bl DVDGetCommandBlockStatus
lbl_802D98AC:
/* 802D98AC 002D67EC  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 802D98B0 002D67F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D98B4 002D67F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D98B8 002D67F8  7C 08 03 A6 */	mtlr r0
/* 802D98BC 002D67FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D98C0 002D6800  4E 80 00 20 */	blr 

.global JKRDvdFile_NS_open_X1_
JKRDvdFile_NS_open_X1_:
/* 802D98C4 002D6804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D98C8 002D6808  7C 08 02 A6 */	mflr r0
/* 802D98CC 002D680C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D98D0 002D6810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D98D4 002D6814  7C 7F 1B 78 */	mr r31, r3
/* 802D98D8 002D6818  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802D98DC 002D681C  28 00 00 00 */	cmplwi r0, 0
/* 802D98E0 002D6820  40 82 00 40 */	bne lbl_802D9920
/* 802D98E4 002D6824  7C 83 23 78 */	mr r3, r4
/* 802D98E8 002D6828  38 9F 00 5C */	addi r4, r31, 0x5c
/* 802D98EC 002D682C  48 06 EF 31 */	bl DVDFastOpen
/* 802D98F0 002D6830  30 03 FF FF */	addic r0, r3, -1
/* 802D98F4 002D6834  7C 00 19 10 */	subfe r0, r0, r3
/* 802D98F8 002D6838  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802D98FC 002D683C  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 802D9900 002D6840  28 00 00 00 */	cmplwi r0, 0
/* 802D9904 002D6844  41 82 00 1C */	beq lbl_802D9920
/* 802D9908 002D6848  3C 60 80 43 */	lis r3, lbl_8043436C@ha
/* 802D990C 002D684C  38 63 43 6C */	addi r3, r3, lbl_8043436C@l
/* 802D9910 002D6850  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 802D9914 002D6854  48 00 26 39 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802D9918 002D6858  38 7F 00 5C */	addi r3, r31, 0x5c
/* 802D991C 002D685C  48 07 18 61 */	bl DVDGetCommandBlockStatus
lbl_802D9920:
/* 802D9920 002D6860  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 802D9924 002D6864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D9928 002D6868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D992C 002D686C  7C 08 03 A6 */	mtlr r0
/* 802D9930 002D6870  38 21 00 10 */	addi r1, r1, 0x10
/* 802D9934 002D6874  4E 80 00 20 */	blr 
/* 802D9938 002D6878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D993C 002D687C  7C 08 02 A6 */	mflr r0
/* 802D9940 002D6880  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9944 002D6884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9948 002D6888  7C 7F 1B 78 */	mr r31, r3
/* 802D994C 002D688C  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802D9950 002D6890  28 00 00 00 */	cmplwi r0, 0
/* 802D9954 002D6894  41 82 00 4C */	beq lbl_802D99A0
/* 802D9958 002D6898  38 7F 00 5C */	addi r3, r31, 0x5c
/* 802D995C 002D689C  48 06 EF FD */	bl DVDClose
/* 802D9960 002D68A0  2C 03 00 00 */	cmpwi r3, 0
/* 802D9964 002D68A4  41 82 00 20 */	beq lbl_802D9984
/* 802D9968 002D68A8  38 00 00 00 */	li r0, 0
/* 802D996C 002D68AC  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802D9970 002D68B0  3C 60 80 43 */	lis r3, lbl_8043436C@ha
/* 802D9974 002D68B4  38 63 43 6C */	addi r3, r3, lbl_8043436C@l
/* 802D9978 002D68B8  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 802D997C 002D68BC  48 00 27 E1 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D9980 002D68C0  48 00 00 20 */	b lbl_802D99A0
lbl_802D9984:
/* 802D9984 002D68C4  3C 60 80 3A */	lis r3, lbl_8039D260@ha
/* 802D9988 002D68C8  38 63 D2 60 */	addi r3, r3, lbl_8039D260@l
/* 802D998C 002D68CC  38 80 00 D5 */	li r4, 0xd5
/* 802D9990 002D68D0  38 A3 00 0F */	addi r5, r3, 0xf
/* 802D9994 002D68D4  38 C3 00 12 */	addi r6, r3, 0x12
/* 802D9998 002D68D8  4C C6 31 82 */	crclr 6
/* 802D999C 002D68DC  48 00 88 61 */	bl JUTException_NS_panic_f
lbl_802D99A0:
/* 802D99A0 002D68E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D99A4 002D68E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D99A8 002D68E8  7C 08 03 A6 */	mtlr r0
/* 802D99AC 002D68EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D99B0 002D68F0  4E 80 00 20 */	blr 
/* 802D99B4 002D68F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D99B8 002D68F8  7C 08 02 A6 */	mflr r0
/* 802D99BC 002D68FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D99C0 002D6900  39 61 00 20 */	addi r11, r1, 0x20
/* 802D99C4 002D6904  48 08 88 11 */	bl _savegpr_27
/* 802D99C8 002D6908  7C 7B 1B 78 */	mr r27, r3
/* 802D99CC 002D690C  7C 9C 23 78 */	mr r28, r4
/* 802D99D0 002D6910  7C BD 2B 78 */	mr r29, r5
/* 802D99D4 002D6914  7C DE 33 78 */	mr r30, r6
/* 802D99D8 002D6918  38 7B 00 1C */	addi r3, r27, 0x1c
/* 802D99DC 002D691C  48 06 56 65 */	bl OSLockMutex
/* 802D99E0 002D6920  80 1B 00 F4 */	lwz r0, 0xf4(r27)
/* 802D99E4 002D6924  28 00 00 00 */	cmplwi r0, 0
/* 802D99E8 002D6928  41 82 00 14 */	beq lbl_802D99FC
/* 802D99EC 002D692C  38 7B 00 1C */	addi r3, r27, 0x1c
/* 802D99F0 002D6930  48 06 57 2D */	bl OSUnlockMutex
/* 802D99F4 002D6934  38 60 FF FF */	li r3, -1
/* 802D99F8 002D6938  48 00 00 58 */	b lbl_802D9A50
lbl_802D99FC:
/* 802D99FC 002D693C  48 06 72 89 */	bl OSGetCurrentThread
/* 802D9A00 002D6940  90 7B 00 F4 */	stw r3, 0xf4(r27)
/* 802D9A04 002D6944  3B E0 FF FF */	li r31, -1
/* 802D9A08 002D6948  38 7B 00 5C */	addi r3, r27, 0x5c
/* 802D9A0C 002D694C  7F 84 E3 78 */	mr r4, r28
/* 802D9A10 002D6950  7F A5 EB 78 */	mr r5, r29
/* 802D9A14 002D6954  7F C6 F3 78 */	mr r6, r30
.global JKRDvdFile_NS_doneProcess
/* 802D9A18 002D6958  3C E0 80 2E */	lis r7, JKRDvdFile_NS_doneProcess@ha
.global JKRDvdFile_NS_doneProcess
/* 802D9A1C 002D695C  38 E7 9A C4 */	addi r7, r7, JKRDvdFile_NS_doneProcess@l
/* 802D9A20 002D6960  39 00 00 02 */	li r8, 2
/* 802D9A24 002D6964  48 06 F3 31 */	bl DVDReadAsyncPrio
/* 802D9A28 002D6968  2C 03 00 00 */	cmpwi r3, 0
/* 802D9A2C 002D696C  41 82 00 10 */	beq lbl_802D9A3C
/* 802D9A30 002D6970  7F 63 DB 78 */	mr r3, r27
/* 802D9A34 002D6974  48 00 00 3D */	bl JKRDvdFile_NS_sync
/* 802D9A38 002D6978  7C 7F 1B 78 */	mr r31, r3
lbl_802D9A3C:
/* 802D9A3C 002D697C  38 00 00 00 */	li r0, 0
/* 802D9A40 002D6980  90 1B 00 F4 */	stw r0, 0xf4(r27)
/* 802D9A44 002D6984  38 7B 00 1C */	addi r3, r27, 0x1c
/* 802D9A48 002D6988  48 06 56 D5 */	bl OSUnlockMutex
/* 802D9A4C 002D698C  7F E3 FB 78 */	mr r3, r31
lbl_802D9A50:
/* 802D9A50 002D6990  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9A54 002D6994  48 08 87 CD */	bl _restgpr_27
/* 802D9A58 002D6998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D9A5C 002D699C  7C 08 03 A6 */	mtlr r0
/* 802D9A60 002D69A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D9A64 002D69A4  4E 80 00 20 */	blr 
/* 802D9A68 002D69A8  38 60 FF FF */	li r3, -1
/* 802D9A6C 002D69AC  4E 80 00 20 */	blr 

.global JKRDvdFile_NS_sync
JKRDvdFile_NS_sync:
/* 802D9A70 002D69B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D9A74 002D69B4  7C 08 02 A6 */	mflr r0
/* 802D9A78 002D69B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D9A7C 002D69BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D9A80 002D69C0  7C 7F 1B 78 */	mr r31, r3
/* 802D9A84 002D69C4  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802D9A88 002D69C8  48 06 55 B9 */	bl OSLockMutex
/* 802D9A8C 002D69CC  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 802D9A90 002D69D0  38 81 00 08 */	addi r4, r1, 8
/* 802D9A94 002D69D4  38 A0 00 01 */	li r5, 1
/* 802D9A98 002D69D8  48 06 50 25 */	bl OSReceiveMessage
/* 802D9A9C 002D69DC  38 00 00 00 */	li r0, 0
/* 802D9AA0 002D69E0  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 802D9AA4 002D69E4  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802D9AA8 002D69E8  48 06 56 75 */	bl OSUnlockMutex
/* 802D9AAC 002D69EC  80 61 00 08 */	lwz r3, 8(r1)
/* 802D9AB0 002D69F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D9AB4 002D69F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D9AB8 002D69F8  7C 08 03 A6 */	mtlr r0
/* 802D9ABC 002D69FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D9AC0 002D6A00  4E 80 00 20 */	blr 
.global JKRDvdFile_NS_doneProcess
JKRDvdFile_NS_doneProcess:
/* 802D9AC4 002D6A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D9AC8 002D6A08  7C 08 02 A6 */	mflr r0
/* 802D9ACC 002D6A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9AD0 002D6A10  7C 60 1B 78 */	mr r0, r3
/* 802D9AD4 002D6A14  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 802D9AD8 002D6A18  38 63 00 C0 */	addi r3, r3, 0xc0
/* 802D9ADC 002D6A1C  7C 04 03 78 */	mr r4, r0
/* 802D9AE0 002D6A20  38 A0 00 00 */	li r5, 0
/* 802D9AE4 002D6A24  48 06 4F 11 */	bl OSSendMessage
/* 802D9AE8 002D6A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D9AEC 002D6A2C  7C 08 03 A6 */	mtlr r0
/* 802D9AF0 002D6A30  38 21 00 10 */	addi r1, r1, 0x10
/* 802D9AF4 002D6A34  4E 80 00 20 */	blr 
/* 802D9AF8 002D6A38  80 63 00 90 */	lwz r3, 0x90(r3)
/* 802D9AFC 002D6A3C  4E 80 00 20 */	blr 
/* 802D9B00 002D6A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D9B04 002D6A44  7C 08 02 A6 */	mflr r0
/* 802D9B08 002D6A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9B0C 002D6A4C  3C 60 80 43 */	lis r3, lbl_8043436C@ha
/* 802D9B10 002D6A50  38 63 43 6C */	addi r3, r3, lbl_8043436C@l
/* 802D9B14 002D6A54  48 00 24 01 */	bl initiate__10JSUPtrListFv
/* 802D9B18 002D6A58  3C 60 80 43 */	lis r3, lbl_8043436C@ha
/* 802D9B1C 002D6A5C  38 63 43 6C */	addi r3, r3, lbl_8043436C@l
.global JSUList_NS_dtor_X7_
/* 802D9B20 002D6A60  3C 80 80 2E */	lis r4, JSUList_NS_dtor_X7_@ha
.global JSUList_NS_dtor_X7_
/* 802D9B24 002D6A64  38 84 9B 44 */	addi r4, r4, JSUList_NS_dtor_X7_@l
/* 802D9B28 002D6A68  3C A0 80 43 */	lis r5, lbl_80434360@ha
/* 802D9B2C 002D6A6C  38 A5 43 60 */	addi r5, r5, lbl_80434360@l
/* 802D9B30 002D6A70  48 08 80 F5 */	bl func_80361C24
/* 802D9B34 002D6A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D9B38 002D6A78  7C 08 03 A6 */	mtlr r0
/* 802D9B3C 002D6A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D9B40 002D6A80  4E 80 00 20 */	blr 
.global JSUList_NS_dtor_X7_
JSUList_NS_dtor_X7_:
/* 802D9B44 002D6A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D9B48 002D6A88  7C 08 02 A6 */	mflr r0
/* 802D9B4C 002D6A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9B50 002D6A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9B54 002D6A94  93 C1 00 08 */	stw r30, 8(r1)
/* 802D9B58 002D6A98  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D9B5C 002D6A9C  7C 9F 23 78 */	mr r31, r4
/* 802D9B60 002D6AA0  41 82 00 1C */	beq lbl_802D9B7C
/* 802D9B64 002D6AA4  38 80 00 00 */	li r4, 0
/* 802D9B68 002D6AA8  48 00 23 45 */	bl __dt__10JSUPtrListFv
/* 802D9B6C 002D6AAC  7F E0 07 35 */	extsh. r0, r31
/* 802D9B70 002D6AB0  40 81 00 0C */	ble lbl_802D9B7C
/* 802D9B74 002D6AB4  7F C3 F3 78 */	mr r3, r30
/* 802D9B78 002D6AB8  4B FF 51 C5 */	bl __dl__FPv
lbl_802D9B7C:
/* 802D9B7C 002D6ABC  7F C3 F3 78 */	mr r3, r30
/* 802D9B80 002D6AC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D9B84 002D6AC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D9B88 002D6AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D9B8C 002D6ACC  7C 08 03 A6 */	mtlr r0
/* 802D9B90 002D6AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D9B94 002D6AD4  4E 80 00 20 */	blr 

