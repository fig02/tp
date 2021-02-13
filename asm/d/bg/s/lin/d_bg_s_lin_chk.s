.include "macros.inc"

.section .text, "ax" # 80077c68


.global dBgS_LinChk
dBgS_LinChk:
/* 80077C68 00074BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077C6C 00074BAC  7C 08 02 A6 */	mflr r0
/* 80077C70 00074BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077C74 00074BB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077C78 00074BB8  7C 7F 1B 78 */	mr r31, r3
/* 80077C7C 00074BBC  48 1F 00 E1 */	bl __ct__11cBgS_LinChkFv
/* 80077C80 00074BC0  38 7F 00 58 */	addi r3, r31, 0x58
/* 80077C84 00074BC4  4B FF F8 19 */	bl dBgS_Chk
/* 80077C88 00074BC8  3C 60 80 3B */	lis r3, lbl_803AB970@ha
/* 80077C8C 00074BCC  38 63 B9 70 */	addi r3, r3, lbl_803AB970@l
/* 80077C90 00074BD0  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80077C94 00074BD4  38 03 00 0C */	addi r0, r3, 0xc
/* 80077C98 00074BD8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80077C9C 00074BDC  38 03 00 18 */	addi r0, r3, 0x18
/* 80077CA0 00074BE0  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80077CA4 00074BE4  38 03 00 24 */	addi r0, r3, 0x24
/* 80077CA8 00074BE8  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80077CAC 00074BEC  38 7F 00 58 */	addi r3, r31, 0x58
/* 80077CB0 00074BF0  4B FF F8 B1 */	bl dBgS_Chk_NS_GetPolyPassChkInfo
/* 80077CB4 00074BF4  90 7F 00 00 */	stw r3, 0(r31)
/* 80077CB8 00074BF8  38 7F 00 58 */	addi r3, r31, 0x58
/* 80077CBC 00074BFC  4B FF F8 A9 */	bl dBgS_Chk_NS_GetGrpPassChkInfo
/* 80077CC0 00074C00  90 7F 00 04 */	stw r3, 4(r31)
/* 80077CC4 00074C04  7F E3 FB 78 */	mr r3, r31
/* 80077CC8 00074C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077CCC 00074C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077CD0 00074C10  7C 08 03 A6 */	mtlr r0
/* 80077CD4 00074C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80077CD8 00074C18  4E 80 00 20 */	blr 

.global dBgS_LinChk_NS_dtor
dBgS_LinChk_NS_dtor:
/* 80077CDC 00074C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077CE0 00074C20  7C 08 02 A6 */	mflr r0
/* 80077CE4 00074C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077CE8 00074C28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077CEC 00074C2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80077CF0 00074C30  7C 7E 1B 79 */	or. r30, r3, r3
/* 80077CF4 00074C34  7C 9F 23 78 */	mr r31, r4
/* 80077CF8 00074C38  41 82 00 50 */	beq lbl_80077D48
/* 80077CFC 00074C3C  3C 60 80 3B */	lis r3, lbl_803AB970@ha
/* 80077D00 00074C40  38 63 B9 70 */	addi r3, r3, lbl_803AB970@l
/* 80077D04 00074C44  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80077D08 00074C48  38 03 00 0C */	addi r0, r3, 0xc
/* 80077D0C 00074C4C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80077D10 00074C50  38 03 00 18 */	addi r0, r3, 0x18
/* 80077D14 00074C54  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80077D18 00074C58  38 03 00 24 */	addi r0, r3, 0x24
/* 80077D1C 00074C5C  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80077D20 00074C60  38 7E 00 58 */	addi r3, r30, 0x58
/* 80077D24 00074C64  38 80 00 00 */	li r4, 0
/* 80077D28 00074C68  4B FF F7 C1 */	bl dBgS_Chk_NS_dtor
/* 80077D2C 00074C6C  7F C3 F3 78 */	mr r3, r30
/* 80077D30 00074C70  38 80 00 00 */	li r4, 0
/* 80077D34 00074C74  48 1F 00 89 */	bl __dt__11cBgS_LinChkFv
/* 80077D38 00074C78  7F E0 07 35 */	extsh. r0, r31
/* 80077D3C 00074C7C  40 81 00 0C */	ble lbl_80077D48
/* 80077D40 00074C80  7F C3 F3 78 */	mr r3, r30
/* 80077D44 00074C84  48 25 6F F9 */	bl __dl__FPv
lbl_80077D48:
/* 80077D48 00074C88  7F C3 F3 78 */	mr r3, r30
/* 80077D4C 00074C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077D50 00074C90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80077D54 00074C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077D58 00074C98  7C 08 03 A6 */	mtlr r0
/* 80077D5C 00074C9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80077D60 00074CA0  4E 80 00 20 */	blr 

.global dBgS_LinChk_NS_Set
dBgS_LinChk_NS_Set:
/* 80077D64 00074CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077D68 00074CA8  7C 08 02 A6 */	mflr r0
/* 80077D6C 00074CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077D70 00074CB0  28 06 00 00 */	cmplwi r6, 0
/* 80077D74 00074CB4  41 82 00 18 */	beq lbl_80077D8C
/* 80077D78 00074CB8  41 82 00 0C */	beq lbl_80077D84
/* 80077D7C 00074CBC  80 C6 00 04 */	lwz r6, 4(r6)
/* 80077D80 00074CC0  48 00 00 10 */	b lbl_80077D90
lbl_80077D84:
/* 80077D84 00074CC4  38 C0 FF FF */	li r6, -1
/* 80077D88 00074CC8  48 00 00 08 */	b lbl_80077D90
lbl_80077D8C:
/* 80077D8C 00074CCC  38 C0 FF FF */	li r6, -1
lbl_80077D90:
/* 80077D90 00074CD0  48 1F 01 41 */	bl Set2__11cBgS_LinChkFPC4cXyzPC4cXyzUi
/* 80077D94 00074CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077D98 00074CD8  7C 08 03 A6 */	mtlr r0
/* 80077D9C 00074CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80077DA0 00074CE0  4E 80 00 20 */	blr 

.global dBgS_CamLinChk
dBgS_CamLinChk:
/* 80077DA4 00074CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077DA8 00074CE8  7C 08 02 A6 */	mflr r0
/* 80077DAC 00074CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077DB0 00074CF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077DB4 00074CF4  7C 7F 1B 78 */	mr r31, r3
/* 80077DB8 00074CF8  4B FF FE B1 */	bl dBgS_LinChk
/* 80077DBC 00074CFC  3C 60 80 3B */	lis r3, lbl_803AB940@ha
/* 80077DC0 00074D00  38 63 B9 40 */	addi r3, r3, lbl_803AB940@l
/* 80077DC4 00074D04  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80077DC8 00074D08  38 03 00 0C */	addi r0, r3, 0xc
/* 80077DCC 00074D0C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80077DD0 00074D10  38 03 00 18 */	addi r0, r3, 0x18
/* 80077DD4 00074D14  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80077DD8 00074D18  38 03 00 24 */	addi r0, r3, 0x24
/* 80077DDC 00074D1C  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80077DE0 00074D20  38 7F 00 58 */	addi r3, r31, 0x58
/* 80077DE4 00074D24  48 00 10 9D */	bl SetCam__16dBgS_PolyPassChkFv
/* 80077DE8 00074D28  7F E3 FB 78 */	mr r3, r31
/* 80077DEC 00074D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077DF0 00074D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077DF4 00074D34  7C 08 03 A6 */	mtlr r0
/* 80077DF8 00074D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80077DFC 00074D3C  4E 80 00 20 */	blr 

.global dBgS_CamLinChk_NS_dtor
dBgS_CamLinChk_NS_dtor:
/* 80077E00 00074D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077E04 00074D44  7C 08 02 A6 */	mflr r0
/* 80077E08 00074D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077E0C 00074D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077E10 00074D50  93 C1 00 08 */	stw r30, 8(r1)
/* 80077E14 00074D54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80077E18 00074D58  7C 9F 23 78 */	mr r31, r4
/* 80077E1C 00074D5C  41 82 00 40 */	beq lbl_80077E5C
/* 80077E20 00074D60  3C 80 80 3B */	lis r4, lbl_803AB940@ha
/* 80077E24 00074D64  38 84 B9 40 */	addi r4, r4, lbl_803AB940@l
/* 80077E28 00074D68  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80077E2C 00074D6C  38 04 00 0C */	addi r0, r4, 0xc
/* 80077E30 00074D70  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80077E34 00074D74  38 04 00 18 */	addi r0, r4, 0x18
/* 80077E38 00074D78  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80077E3C 00074D7C  38 04 00 24 */	addi r0, r4, 0x24
/* 80077E40 00074D80  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80077E44 00074D84  38 80 00 00 */	li r4, 0
/* 80077E48 00074D88  4B FF FE 95 */	bl dBgS_LinChk_NS_dtor
/* 80077E4C 00074D8C  7F E0 07 35 */	extsh. r0, r31
/* 80077E50 00074D90  40 81 00 0C */	ble lbl_80077E5C
/* 80077E54 00074D94  7F C3 F3 78 */	mr r3, r30
/* 80077E58 00074D98  48 25 6E E5 */	bl __dl__FPv
lbl_80077E5C:
/* 80077E5C 00074D9C  7F C3 F3 78 */	mr r3, r30
/* 80077E60 00074DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077E64 00074DA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80077E68 00074DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077E6C 00074DAC  7C 08 03 A6 */	mtlr r0
/* 80077E70 00074DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80077E74 00074DB4  4E 80 00 20 */	blr 
/* 80077E78 00074DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077E7C 00074DBC  7C 08 02 A6 */	mflr r0
/* 80077E80 00074DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077E84 00074DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077E88 00074DC8  7C 7F 1B 78 */	mr r31, r3
/* 80077E8C 00074DCC  4B FF FF 19 */	bl dBgS_CamLinChk
/* 80077E90 00074DD0  3C 60 80 3B */	lis r3, lbl_803AB910@ha
/* 80077E94 00074DD4  38 63 B9 10 */	addi r3, r3, lbl_803AB910@l
/* 80077E98 00074DD8  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80077E9C 00074DDC  38 03 00 0C */	addi r0, r3, 0xc
/* 80077EA0 00074DE0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80077EA4 00074DE4  38 03 00 18 */	addi r0, r3, 0x18
/* 80077EA8 00074DE8  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80077EAC 00074DEC  38 03 00 24 */	addi r0, r3, 0x24
/* 80077EB0 00074DF0  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80077EB4 00074DF4  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80077EB8 00074DF8  60 00 00 02 */	ori r0, r0, 2
/* 80077EBC 00074DFC  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80077EC0 00074E00  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80077EC4 00074E04  60 00 00 01 */	ori r0, r0, 1
/* 80077EC8 00074E08  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80077ECC 00074E0C  7F E3 FB 78 */	mr r3, r31
/* 80077ED0 00074E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077ED4 00074E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077ED8 00074E18  7C 08 03 A6 */	mtlr r0
/* 80077EDC 00074E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80077EE0 00074E20  4E 80 00 20 */	blr 
.global dBgS_CamLinChk_NorWtr_NS_dtor
dBgS_CamLinChk_NorWtr_NS_dtor:
/* 80077EE4 00074E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077EE8 00074E28  7C 08 02 A6 */	mflr r0
/* 80077EEC 00074E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077EF0 00074E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077EF4 00074E34  93 C1 00 08 */	stw r30, 8(r1)
/* 80077EF8 00074E38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80077EFC 00074E3C  7C 9F 23 78 */	mr r31, r4
/* 80077F00 00074E40  41 82 00 40 */	beq lbl_80077F40
/* 80077F04 00074E44  3C 80 80 3B */	lis r4, lbl_803AB910@ha
/* 80077F08 00074E48  38 84 B9 10 */	addi r4, r4, lbl_803AB910@l
/* 80077F0C 00074E4C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80077F10 00074E50  38 04 00 0C */	addi r0, r4, 0xc
/* 80077F14 00074E54  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80077F18 00074E58  38 04 00 18 */	addi r0, r4, 0x18
/* 80077F1C 00074E5C  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80077F20 00074E60  38 04 00 24 */	addi r0, r4, 0x24
/* 80077F24 00074E64  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80077F28 00074E68  38 80 00 00 */	li r4, 0
/* 80077F2C 00074E6C  4B FF FE D5 */	bl dBgS_CamLinChk_NS_dtor
/* 80077F30 00074E70  7F E0 07 35 */	extsh. r0, r31
/* 80077F34 00074E74  40 81 00 0C */	ble lbl_80077F40
/* 80077F38 00074E78  7F C3 F3 78 */	mr r3, r30
/* 80077F3C 00074E7C  48 25 6E 01 */	bl __dl__FPv
lbl_80077F40:
/* 80077F40 00074E80  7F C3 F3 78 */	mr r3, r30
/* 80077F44 00074E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077F48 00074E88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80077F4C 00074E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077F50 00074E90  7C 08 03 A6 */	mtlr r0
/* 80077F54 00074E94  38 21 00 10 */	addi r1, r1, 0x10
/* 80077F58 00074E98  4E 80 00 20 */	blr 

.global dBgS_ObjLinChk
dBgS_ObjLinChk:
/* 80077F5C 00074E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077F60 00074EA0  7C 08 02 A6 */	mflr r0
/* 80077F64 00074EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077F68 00074EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077F6C 00074EAC  7C 7F 1B 78 */	mr r31, r3
/* 80077F70 00074EB0  4B FF FC F9 */	bl dBgS_LinChk
/* 80077F74 00074EB4  3C 60 80 3B */	lis r3, lbl_803AB8E0@ha
/* 80077F78 00074EB8  38 63 B8 E0 */	addi r3, r3, lbl_803AB8E0@l
/* 80077F7C 00074EBC  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80077F80 00074EC0  38 03 00 0C */	addi r0, r3, 0xc
/* 80077F84 00074EC4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80077F88 00074EC8  38 03 00 18 */	addi r0, r3, 0x18
/* 80077F8C 00074ECC  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80077F90 00074ED0  38 03 00 24 */	addi r0, r3, 0x24
/* 80077F94 00074ED4  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80077F98 00074ED8  38 7F 00 58 */	addi r3, r31, 0x58
/* 80077F9C 00074EDC  48 00 0E CD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80077FA0 00074EE0  7F E3 FB 78 */	mr r3, r31
/* 80077FA4 00074EE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077FA8 00074EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077FAC 00074EEC  7C 08 03 A6 */	mtlr r0
/* 80077FB0 00074EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80077FB4 00074EF4  4E 80 00 20 */	blr 

.global dBgS_ObjLinChk_NS_dtor
dBgS_ObjLinChk_NS_dtor:
/* 80077FB8 00074EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077FBC 00074EFC  7C 08 02 A6 */	mflr r0
/* 80077FC0 00074F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077FC4 00074F04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077FC8 00074F08  93 C1 00 08 */	stw r30, 8(r1)
/* 80077FCC 00074F0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80077FD0 00074F10  7C 9F 23 78 */	mr r31, r4
/* 80077FD4 00074F14  41 82 00 40 */	beq lbl_80078014
/* 80077FD8 00074F18  3C 80 80 3B */	lis r4, lbl_803AB8E0@ha
/* 80077FDC 00074F1C  38 84 B8 E0 */	addi r4, r4, lbl_803AB8E0@l
/* 80077FE0 00074F20  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80077FE4 00074F24  38 04 00 0C */	addi r0, r4, 0xc
/* 80077FE8 00074F28  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80077FEC 00074F2C  38 04 00 18 */	addi r0, r4, 0x18
/* 80077FF0 00074F30  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80077FF4 00074F34  38 04 00 24 */	addi r0, r4, 0x24
/* 80077FF8 00074F38  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80077FFC 00074F3C  38 80 00 00 */	li r4, 0
/* 80078000 00074F40  4B FF FC DD */	bl dBgS_LinChk_NS_dtor
/* 80078004 00074F44  7F E0 07 35 */	extsh. r0, r31
/* 80078008 00074F48  40 81 00 0C */	ble lbl_80078014
/* 8007800C 00074F4C  7F C3 F3 78 */	mr r3, r30
/* 80078010 00074F50  48 25 6D 2D */	bl __dl__FPv
lbl_80078014:
/* 80078014 00074F54  7F C3 F3 78 */	mr r3, r30
/* 80078018 00074F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007801C 00074F5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80078020 00074F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078024 00074F64  7C 08 03 A6 */	mtlr r0
/* 80078028 00074F68  38 21 00 10 */	addi r1, r1, 0x10
/* 8007802C 00074F6C  4E 80 00 20 */	blr 

.global dBgS_LinkLinChk
dBgS_LinkLinChk:
/* 80078030 00074F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078034 00074F74  7C 08 02 A6 */	mflr r0
/* 80078038 00074F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007803C 00074F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078040 00074F80  7C 7F 1B 78 */	mr r31, r3
/* 80078044 00074F84  4B FF FC 25 */	bl dBgS_LinChk
/* 80078048 00074F88  3C 60 80 3B */	lis r3, lbl_803AB8B0@ha
/* 8007804C 00074F8C  38 63 B8 B0 */	addi r3, r3, lbl_803AB8B0@l
/* 80078050 00074F90  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80078054 00074F94  38 03 00 0C */	addi r0, r3, 0xc
/* 80078058 00074F98  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8007805C 00074F9C  38 03 00 18 */	addi r0, r3, 0x18
/* 80078060 00074FA0  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80078064 00074FA4  38 03 00 24 */	addi r0, r3, 0x24
/* 80078068 00074FA8  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8007806C 00074FAC  38 7F 00 58 */	addi r3, r31, 0x58
/* 80078070 00074FB0  48 00 0E 29 */	bl SetLink__16dBgS_PolyPassChkFv
/* 80078074 00074FB4  7F E3 FB 78 */	mr r3, r31
/* 80078078 00074FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007807C 00074FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078080 00074FC0  7C 08 03 A6 */	mtlr r0
/* 80078084 00074FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80078088 00074FC8  4E 80 00 20 */	blr 

.global dBgS_LinkLinChk_NS_dtor
dBgS_LinkLinChk_NS_dtor:
/* 8007808C 00074FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078090 00074FD0  7C 08 02 A6 */	mflr r0
/* 80078094 00074FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078098 00074FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007809C 00074FDC  93 C1 00 08 */	stw r30, 8(r1)
/* 800780A0 00074FE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 800780A4 00074FE4  7C 9F 23 78 */	mr r31, r4
/* 800780A8 00074FE8  41 82 00 40 */	beq lbl_800780E8
/* 800780AC 00074FEC  3C 80 80 3B */	lis r4, lbl_803AB8B0@ha
/* 800780B0 00074FF0  38 84 B8 B0 */	addi r4, r4, lbl_803AB8B0@l
/* 800780B4 00074FF4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 800780B8 00074FF8  38 04 00 0C */	addi r0, r4, 0xc
/* 800780BC 00074FFC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 800780C0 00075000  38 04 00 18 */	addi r0, r4, 0x18
/* 800780C4 00075004  90 1E 00 58 */	stw r0, 0x58(r30)
/* 800780C8 00075008  38 04 00 24 */	addi r0, r4, 0x24
/* 800780CC 0007500C  90 1E 00 68 */	stw r0, 0x68(r30)
/* 800780D0 00075010  38 80 00 00 */	li r4, 0
/* 800780D4 00075014  4B FF FC 09 */	bl dBgS_LinChk_NS_dtor
/* 800780D8 00075018  7F E0 07 35 */	extsh. r0, r31
/* 800780DC 0007501C  40 81 00 0C */	ble lbl_800780E8
/* 800780E0 00075020  7F C3 F3 78 */	mr r3, r30
/* 800780E4 00075024  48 25 6C 59 */	bl __dl__FPv
lbl_800780E8:
/* 800780E8 00075028  7F C3 F3 78 */	mr r3, r30
/* 800780EC 0007502C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800780F0 00075030  83 C1 00 08 */	lwz r30, 8(r1)
/* 800780F4 00075034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800780F8 00075038  7C 08 03 A6 */	mtlr r0
/* 800780FC 0007503C  38 21 00 10 */	addi r1, r1, 0x10
/* 80078100 00075040  4E 80 00 20 */	blr 
/* 80078104 00075044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078108 00075048  7C 08 02 A6 */	mflr r0
/* 8007810C 0007504C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078110 00075050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078114 00075054  7C 7F 1B 78 */	mr r31, r3
/* 80078118 00075058  4B FF FB 51 */	bl dBgS_LinChk
/* 8007811C 0007505C  3C 60 80 3B */	lis r3, lbl_803AB880@ha
/* 80078120 00075060  38 63 B8 80 */	addi r3, r3, lbl_803AB880@l
/* 80078124 00075064  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80078128 00075068  38 03 00 0C */	addi r0, r3, 0xc
/* 8007812C 0007506C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80078130 00075070  38 03 00 18 */	addi r0, r3, 0x18
/* 80078134 00075074  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80078138 00075078  38 03 00 24 */	addi r0, r3, 0x24
/* 8007813C 0007507C  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80078140 00075080  38 7F 00 58 */	addi r3, r31, 0x58
/* 80078144 00075084  48 00 0D 79 */	bl SetBomb__16dBgS_PolyPassChkFv
/* 80078148 00075088  7F E3 FB 78 */	mr r3, r31
/* 8007814C 0007508C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078150 00075090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078154 00075094  7C 08 03 A6 */	mtlr r0
/* 80078158 00075098  38 21 00 10 */	addi r1, r1, 0x10
/* 8007815C 0007509C  4E 80 00 20 */	blr 
.global dBgS_BombLinChk_NS_dtor
dBgS_BombLinChk_NS_dtor:
/* 80078160 000750A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078164 000750A4  7C 08 02 A6 */	mflr r0
/* 80078168 000750A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007816C 000750AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078170 000750B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80078174 000750B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80078178 000750B8  7C 9F 23 78 */	mr r31, r4
/* 8007817C 000750BC  41 82 00 40 */	beq lbl_800781BC
/* 80078180 000750C0  3C 80 80 3B */	lis r4, lbl_803AB880@ha
/* 80078184 000750C4  38 84 B8 80 */	addi r4, r4, lbl_803AB880@l
/* 80078188 000750C8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8007818C 000750CC  38 04 00 0C */	addi r0, r4, 0xc
/* 80078190 000750D0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80078194 000750D4  38 04 00 18 */	addi r0, r4, 0x18
/* 80078198 000750D8  90 1E 00 58 */	stw r0, 0x58(r30)
/* 8007819C 000750DC  38 04 00 24 */	addi r0, r4, 0x24
/* 800781A0 000750E0  90 1E 00 68 */	stw r0, 0x68(r30)
/* 800781A4 000750E4  38 80 00 00 */	li r4, 0
/* 800781A8 000750E8  4B FF FB 35 */	bl dBgS_LinChk_NS_dtor
/* 800781AC 000750EC  7F E0 07 35 */	extsh. r0, r31
/* 800781B0 000750F0  40 81 00 0C */	ble lbl_800781BC
/* 800781B4 000750F4  7F C3 F3 78 */	mr r3, r30
/* 800781B8 000750F8  48 25 6B 85 */	bl __dl__FPv
lbl_800781BC:
/* 800781BC 000750FC  7F C3 F3 78 */	mr r3, r30
/* 800781C0 00075100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800781C4 00075104  83 C1 00 08 */	lwz r30, 8(r1)
/* 800781C8 00075108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800781CC 0007510C  7C 08 03 A6 */	mtlr r0
/* 800781D0 00075110  38 21 00 10 */	addi r1, r1, 0x10
/* 800781D4 00075114  4E 80 00 20 */	blr 

.global dBgS_ArrowLinChk
dBgS_ArrowLinChk:
/* 800781D8 00075118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800781DC 0007511C  7C 08 02 A6 */	mflr r0
/* 800781E0 00075120  90 01 00 14 */	stw r0, 0x14(r1)
/* 800781E4 00075124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800781E8 00075128  7C 7F 1B 78 */	mr r31, r3
/* 800781EC 0007512C  4B FF FA 7D */	bl dBgS_LinChk
/* 800781F0 00075130  3C 60 80 3B */	lis r3, lbl_803AB850@ha
/* 800781F4 00075134  38 63 B8 50 */	addi r3, r3, lbl_803AB850@l
/* 800781F8 00075138  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800781FC 0007513C  38 03 00 0C */	addi r0, r3, 0xc
/* 80078200 00075140  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80078204 00075144  38 03 00 18 */	addi r0, r3, 0x18
/* 80078208 00075148  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8007820C 0007514C  38 03 00 24 */	addi r0, r3, 0x24
/* 80078210 00075150  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80078214 00075154  38 7F 00 58 */	addi r3, r31, 0x58
/* 80078218 00075158  48 00 0C 99 */	bl SetArrow__16dBgS_PolyPassChkFv
/* 8007821C 0007515C  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80078220 00075160  60 00 00 01 */	ori r0, r0, 1
/* 80078224 00075164  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80078228 00075168  7F E3 FB 78 */	mr r3, r31
/* 8007822C 0007516C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078230 00075170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078234 00075174  7C 08 03 A6 */	mtlr r0
/* 80078238 00075178  38 21 00 10 */	addi r1, r1, 0x10
/* 8007823C 0007517C  4E 80 00 20 */	blr 

.global dBgS_ArrowLinChk_NS_dtor
dBgS_ArrowLinChk_NS_dtor:
/* 80078240 00075180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078244 00075184  7C 08 02 A6 */	mflr r0
/* 80078248 00075188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007824C 0007518C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078250 00075190  93 C1 00 08 */	stw r30, 8(r1)
/* 80078254 00075194  7C 7E 1B 79 */	or. r30, r3, r3
/* 80078258 00075198  7C 9F 23 78 */	mr r31, r4
/* 8007825C 0007519C  41 82 00 40 */	beq lbl_8007829C
/* 80078260 000751A0  3C 80 80 3B */	lis r4, lbl_803AB850@ha
/* 80078264 000751A4  38 84 B8 50 */	addi r4, r4, lbl_803AB850@l
/* 80078268 000751A8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8007826C 000751AC  38 04 00 0C */	addi r0, r4, 0xc
/* 80078270 000751B0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80078274 000751B4  38 04 00 18 */	addi r0, r4, 0x18
/* 80078278 000751B8  90 1E 00 58 */	stw r0, 0x58(r30)
/* 8007827C 000751BC  38 04 00 24 */	addi r0, r4, 0x24
/* 80078280 000751C0  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80078284 000751C4  38 80 00 00 */	li r4, 0
/* 80078288 000751C8  4B FF FA 55 */	bl dBgS_LinChk_NS_dtor
/* 8007828C 000751CC  7F E0 07 35 */	extsh. r0, r31
/* 80078290 000751D0  40 81 00 0C */	ble lbl_8007829C
/* 80078294 000751D4  7F C3 F3 78 */	mr r3, r30
/* 80078298 000751D8  48 25 6A A5 */	bl __dl__FPv
lbl_8007829C:
/* 8007829C 000751DC  7F C3 F3 78 */	mr r3, r30
/* 800782A0 000751E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800782A4 000751E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800782A8 000751E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800782AC 000751EC  7C 08 03 A6 */	mtlr r0
/* 800782B0 000751F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800782B4 000751F4  4E 80 00 20 */	blr 

.global dBgS_BoomerangLinChk
dBgS_BoomerangLinChk:
/* 800782B8 000751F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800782BC 000751FC  7C 08 02 A6 */	mflr r0
/* 800782C0 00075200  90 01 00 14 */	stw r0, 0x14(r1)
/* 800782C4 00075204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800782C8 00075208  7C 7F 1B 78 */	mr r31, r3
/* 800782CC 0007520C  4B FF F9 9D */	bl dBgS_LinChk
/* 800782D0 00075210  3C 60 80 3B */	lis r3, lbl_803AB820@ha
/* 800782D4 00075214  38 63 B8 20 */	addi r3, r3, lbl_803AB820@l
/* 800782D8 00075218  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800782DC 0007521C  38 03 00 0C */	addi r0, r3, 0xc
/* 800782E0 00075220  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800782E4 00075224  38 03 00 18 */	addi r0, r3, 0x18
/* 800782E8 00075228  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800782EC 0007522C  38 03 00 24 */	addi r0, r3, 0x24
/* 800782F0 00075230  90 1F 00 68 */	stw r0, 0x68(r31)
/* 800782F4 00075234  38 7F 00 58 */	addi r3, r31, 0x58
/* 800782F8 00075238  48 00 0B DD */	bl SetBoomerang__16dBgS_PolyPassChkFv
/* 800782FC 0007523C  7F E3 FB 78 */	mr r3, r31
/* 80078300 00075240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078304 00075244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078308 00075248  7C 08 03 A6 */	mtlr r0
/* 8007830C 0007524C  38 21 00 10 */	addi r1, r1, 0x10
/* 80078310 00075250  4E 80 00 20 */	blr 

.global dBgS_BoomerangLinChk_NS_dtor
dBgS_BoomerangLinChk_NS_dtor:
/* 80078314 00075254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078318 00075258  7C 08 02 A6 */	mflr r0
/* 8007831C 0007525C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078320 00075260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078324 00075264  93 C1 00 08 */	stw r30, 8(r1)
/* 80078328 00075268  7C 7E 1B 79 */	or. r30, r3, r3
/* 8007832C 0007526C  7C 9F 23 78 */	mr r31, r4
/* 80078330 00075270  41 82 00 40 */	beq lbl_80078370
/* 80078334 00075274  3C 80 80 3B */	lis r4, lbl_803AB820@ha
/* 80078338 00075278  38 84 B8 20 */	addi r4, r4, lbl_803AB820@l
/* 8007833C 0007527C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80078340 00075280  38 04 00 0C */	addi r0, r4, 0xc
/* 80078344 00075284  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80078348 00075288  38 04 00 18 */	addi r0, r4, 0x18
/* 8007834C 0007528C  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80078350 00075290  38 04 00 24 */	addi r0, r4, 0x24
/* 80078354 00075294  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80078358 00075298  38 80 00 00 */	li r4, 0
/* 8007835C 0007529C  4B FF F9 81 */	bl dBgS_LinChk_NS_dtor
/* 80078360 000752A0  7F E0 07 35 */	extsh. r0, r31
/* 80078364 000752A4  40 81 00 0C */	ble lbl_80078370
/* 80078368 000752A8  7F C3 F3 78 */	mr r3, r30
/* 8007836C 000752AC  48 25 69 D1 */	bl __dl__FPv
lbl_80078370:
/* 80078370 000752B0  7F C3 F3 78 */	mr r3, r30
/* 80078374 000752B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078378 000752B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8007837C 000752BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078380 000752C0  7C 08 03 A6 */	mtlr r0
/* 80078384 000752C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80078388 000752C8  4E 80 00 20 */	blr 

.global dBgS_RopeLinChk
dBgS_RopeLinChk:
/* 8007838C 000752CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078390 000752D0  7C 08 02 A6 */	mflr r0
/* 80078394 000752D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078398 000752D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007839C 000752DC  7C 7F 1B 78 */	mr r31, r3
/* 800783A0 000752E0  4B FF F8 C9 */	bl dBgS_LinChk
/* 800783A4 000752E4  3C 60 80 3B */	lis r3, lbl_803AB7F0@ha
/* 800783A8 000752E8  38 63 B7 F0 */	addi r3, r3, lbl_803AB7F0@l
/* 800783AC 000752EC  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800783B0 000752F0  38 03 00 0C */	addi r0, r3, 0xc
/* 800783B4 000752F4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800783B8 000752F8  38 03 00 18 */	addi r0, r3, 0x18
/* 800783BC 000752FC  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800783C0 00075300  38 03 00 24 */	addi r0, r3, 0x24
/* 800783C4 00075304  90 1F 00 68 */	stw r0, 0x68(r31)
/* 800783C8 00075308  38 7F 00 58 */	addi r3, r31, 0x58
/* 800783CC 0007530C  48 00 0B 15 */	bl SetRope__16dBgS_PolyPassChkFv
/* 800783D0 00075310  7F E3 FB 78 */	mr r3, r31
/* 800783D4 00075314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800783D8 00075318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800783DC 0007531C  7C 08 03 A6 */	mtlr r0
/* 800783E0 00075320  38 21 00 10 */	addi r1, r1, 0x10
/* 800783E4 00075324  4E 80 00 20 */	blr 

.global dBgS_RopeLinChk_NS_dtor
dBgS_RopeLinChk_NS_dtor:
/* 800783E8 00075328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800783EC 0007532C  7C 08 02 A6 */	mflr r0
/* 800783F0 00075330  90 01 00 14 */	stw r0, 0x14(r1)
/* 800783F4 00075334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800783F8 00075338  93 C1 00 08 */	stw r30, 8(r1)
/* 800783FC 0007533C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80078400 00075340  7C 9F 23 78 */	mr r31, r4
/* 80078404 00075344  41 82 00 40 */	beq lbl_80078444
/* 80078408 00075348  3C 80 80 3B */	lis r4, lbl_803AB7F0@ha
/* 8007840C 0007534C  38 84 B7 F0 */	addi r4, r4, lbl_803AB7F0@l
/* 80078410 00075350  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80078414 00075354  38 04 00 0C */	addi r0, r4, 0xc
/* 80078418 00075358  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8007841C 0007535C  38 04 00 18 */	addi r0, r4, 0x18
/* 80078420 00075360  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80078424 00075364  38 04 00 24 */	addi r0, r4, 0x24
/* 80078428 00075368  90 1E 00 68 */	stw r0, 0x68(r30)
/* 8007842C 0007536C  38 80 00 00 */	li r4, 0
/* 80078430 00075370  4B FF F8 AD */	bl dBgS_LinChk_NS_dtor
/* 80078434 00075374  7F E0 07 35 */	extsh. r0, r31
/* 80078438 00075378  40 81 00 0C */	ble lbl_80078444
/* 8007843C 0007537C  7F C3 F3 78 */	mr r3, r30
/* 80078440 00075380  48 25 68 FD */	bl __dl__FPv
lbl_80078444:
/* 80078444 00075384  7F C3 F3 78 */	mr r3, r30
/* 80078448 00075388  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007844C 0007538C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80078450 00075390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078454 00075394  7C 08 03 A6 */	mtlr r0
/* 80078458 00075398  38 21 00 10 */	addi r1, r1, 0x10
/* 8007845C 0007539C  4E 80 00 20 */	blr 
/* 80078460 000753A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078464 000753A4  7C 08 02 A6 */	mflr r0
/* 80078468 000753A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007846C 000753AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078470 000753B0  7C 7F 1B 78 */	mr r31, r3
/* 80078474 000753B4  4B FF F7 F5 */	bl dBgS_LinChk
/* 80078478 000753B8  3C 60 80 3B */	lis r3, lbl_803AB7C0@ha
/* 8007847C 000753BC  38 63 B7 C0 */	addi r3, r3, lbl_803AB7C0@l
/* 80078480 000753C0  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80078484 000753C4  38 03 00 0C */	addi r0, r3, 0xc
/* 80078488 000753C8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8007848C 000753CC  38 03 00 18 */	addi r0, r3, 0x18
/* 80078490 000753D0  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80078494 000753D4  38 03 00 24 */	addi r0, r3, 0x24
/* 80078498 000753D8  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8007849C 000753DC  38 7F 00 58 */	addi r3, r31, 0x58
/* 800784A0 000753E0  48 00 0A 59 */	bl SetHorse__16dBgS_PolyPassChkFv
/* 800784A4 000753E4  7F E3 FB 78 */	mr r3, r31
/* 800784A8 000753E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800784AC 000753EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800784B0 000753F0  7C 08 03 A6 */	mtlr r0
/* 800784B4 000753F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800784B8 000753F8  4E 80 00 20 */	blr 
.global dBgS_HorseLinChk_NS_dtor
dBgS_HorseLinChk_NS_dtor:
/* 800784BC 000753FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800784C0 00075400  7C 08 02 A6 */	mflr r0
/* 800784C4 00075404  90 01 00 14 */	stw r0, 0x14(r1)
/* 800784C8 00075408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800784CC 0007540C  93 C1 00 08 */	stw r30, 8(r1)
/* 800784D0 00075410  7C 7E 1B 79 */	or. r30, r3, r3
/* 800784D4 00075414  7C 9F 23 78 */	mr r31, r4
/* 800784D8 00075418  41 82 00 40 */	beq lbl_80078518
/* 800784DC 0007541C  3C 80 80 3B */	lis r4, lbl_803AB7C0@ha
/* 800784E0 00075420  38 84 B7 C0 */	addi r4, r4, lbl_803AB7C0@l
/* 800784E4 00075424  90 9E 00 10 */	stw r4, 0x10(r30)
/* 800784E8 00075428  38 04 00 0C */	addi r0, r4, 0xc
/* 800784EC 0007542C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 800784F0 00075430  38 04 00 18 */	addi r0, r4, 0x18
/* 800784F4 00075434  90 1E 00 58 */	stw r0, 0x58(r30)
/* 800784F8 00075438  38 04 00 24 */	addi r0, r4, 0x24
/* 800784FC 0007543C  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80078500 00075440  38 80 00 00 */	li r4, 0
/* 80078504 00075444  4B FF F7 D9 */	bl dBgS_LinChk_NS_dtor
/* 80078508 00075448  7F E0 07 35 */	extsh. r0, r31
/* 8007850C 0007544C  40 81 00 0C */	ble lbl_80078518
/* 80078510 00075450  7F C3 F3 78 */	mr r3, r30
/* 80078514 00075454  48 25 68 29 */	bl __dl__FPv
lbl_80078518:
/* 80078518 00075458  7F C3 F3 78 */	mr r3, r30
/* 8007851C 0007545C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078520 00075460  83 C1 00 08 */	lwz r30, 8(r1)
/* 80078524 00075464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078528 00075468  7C 08 03 A6 */	mtlr r0
/* 8007852C 0007546C  38 21 00 10 */	addi r1, r1, 0x10
/* 80078530 00075470  4E 80 00 20 */	blr 
/* 80078534 00075474  38 63 FF EC */	addi r3, r3, -20
/* 80078538 00075478  4B FF F7 A4 */	b dBgS_LinChk_NS_dtor
/* 8007853C 0007547C  38 63 FF 98 */	addi r3, r3, -104
/* 80078540 00075480  4B FF F7 9C */	b dBgS_LinChk_NS_dtor
/* 80078544 00075484  38 63 FF A8 */	addi r3, r3, -88
/* 80078548 00075488  4B FF F7 94 */	b dBgS_LinChk_NS_dtor
/* 8007854C 0007548C  38 63 FF EC */	addi r3, r3, -20
/* 80078550 00075490  4B FF F8 B0 */	b dBgS_CamLinChk_NS_dtor
/* 80078554 00075494  38 63 FF 98 */	addi r3, r3, -104
/* 80078558 00075498  4B FF F8 A8 */	b dBgS_CamLinChk_NS_dtor
/* 8007855C 0007549C  38 63 FF A8 */	addi r3, r3, -88
/* 80078560 000754A0  4B FF F8 A0 */	b dBgS_CamLinChk_NS_dtor
/* 80078564 000754A4  38 63 FF EC */	addi r3, r3, -20
.global dBgS_CamLinChk_NorWtr_NS_dtor
/* 80078568 000754A8  4B FF F9 7C */	b dBgS_CamLinChk_NorWtr_NS_dtor
/* 8007856C 000754AC  38 63 FF 98 */	addi r3, r3, -104
.global dBgS_CamLinChk_NorWtr_NS_dtor
/* 80078570 000754B0  4B FF F9 74 */	b dBgS_CamLinChk_NorWtr_NS_dtor
/* 80078574 000754B4  38 63 FF A8 */	addi r3, r3, -88
.global dBgS_CamLinChk_NorWtr_NS_dtor
/* 80078578 000754B8  4B FF F9 6C */	b dBgS_CamLinChk_NorWtr_NS_dtor
/* 8007857C 000754BC  38 63 FF EC */	addi r3, r3, -20
/* 80078580 000754C0  4B FF FA 38 */	b dBgS_ObjLinChk_NS_dtor
/* 80078584 000754C4  38 63 FF 98 */	addi r3, r3, -104
/* 80078588 000754C8  4B FF FA 30 */	b dBgS_ObjLinChk_NS_dtor
/* 8007858C 000754CC  38 63 FF A8 */	addi r3, r3, -88
/* 80078590 000754D0  4B FF FA 28 */	b dBgS_ObjLinChk_NS_dtor
/* 80078594 000754D4  38 63 FF EC */	addi r3, r3, -20
/* 80078598 000754D8  4B FF FA F4 */	b dBgS_LinkLinChk_NS_dtor
/* 8007859C 000754DC  38 63 FF 98 */	addi r3, r3, -104
/* 800785A0 000754E0  4B FF FA EC */	b dBgS_LinkLinChk_NS_dtor
/* 800785A4 000754E4  38 63 FF A8 */	addi r3, r3, -88
/* 800785A8 000754E8  4B FF FA E4 */	b dBgS_LinkLinChk_NS_dtor
/* 800785AC 000754EC  38 63 FF EC */	addi r3, r3, -20
.global dBgS_BombLinChk_NS_dtor
/* 800785B0 000754F0  4B FF FB B0 */	b dBgS_BombLinChk_NS_dtor
/* 800785B4 000754F4  38 63 FF 98 */	addi r3, r3, -104
.global dBgS_BombLinChk_NS_dtor
/* 800785B8 000754F8  4B FF FB A8 */	b dBgS_BombLinChk_NS_dtor
/* 800785BC 000754FC  38 63 FF A8 */	addi r3, r3, -88
.global dBgS_BombLinChk_NS_dtor
/* 800785C0 00075500  4B FF FB A0 */	b dBgS_BombLinChk_NS_dtor
/* 800785C4 00075504  38 63 FF EC */	addi r3, r3, -20
/* 800785C8 00075508  4B FF FC 78 */	b dBgS_ArrowLinChk_NS_dtor
/* 800785CC 0007550C  38 63 FF 98 */	addi r3, r3, -104
/* 800785D0 00075510  4B FF FC 70 */	b dBgS_ArrowLinChk_NS_dtor
/* 800785D4 00075514  38 63 FF A8 */	addi r3, r3, -88
/* 800785D8 00075518  4B FF FC 68 */	b dBgS_ArrowLinChk_NS_dtor
/* 800785DC 0007551C  38 63 FF EC */	addi r3, r3, -20
/* 800785E0 00075520  4B FF FD 34 */	b dBgS_BoomerangLinChk_NS_dtor
/* 800785E4 00075524  38 63 FF 98 */	addi r3, r3, -104
/* 800785E8 00075528  4B FF FD 2C */	b dBgS_BoomerangLinChk_NS_dtor
/* 800785EC 0007552C  38 63 FF A8 */	addi r3, r3, -88
/* 800785F0 00075530  4B FF FD 24 */	b dBgS_BoomerangLinChk_NS_dtor
/* 800785F4 00075534  38 63 FF EC */	addi r3, r3, -20
/* 800785F8 00075538  4B FF FD F0 */	b dBgS_RopeLinChk_NS_dtor
/* 800785FC 0007553C  38 63 FF 98 */	addi r3, r3, -104
/* 80078600 00075540  4B FF FD E8 */	b dBgS_RopeLinChk_NS_dtor
/* 80078604 00075544  38 63 FF A8 */	addi r3, r3, -88
/* 80078608 00075548  4B FF FD E0 */	b dBgS_RopeLinChk_NS_dtor
/* 8007860C 0007554C  38 63 FF EC */	addi r3, r3, -20
.global dBgS_HorseLinChk_NS_dtor
/* 80078610 00075550  4B FF FE AC */	b dBgS_HorseLinChk_NS_dtor
/* 80078614 00075554  38 63 FF 98 */	addi r3, r3, -104
.global dBgS_HorseLinChk_NS_dtor
/* 80078618 00075558  4B FF FE A4 */	b dBgS_HorseLinChk_NS_dtor
/* 8007861C 0007555C  38 63 FF A8 */	addi r3, r3, -88
.global dBgS_HorseLinChk_NS_dtor
/* 80078620 00075560  4B FF FE 9C */	b dBgS_HorseLinChk_NS_dtor