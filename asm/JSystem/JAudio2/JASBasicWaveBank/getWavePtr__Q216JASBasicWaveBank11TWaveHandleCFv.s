lbl_80298B64:
/* 80298B64  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80298B68  80 84 00 38 */	lwz r4, 0x38(r4)
/* 80298B6C  28 04 00 00 */	cmplwi r4, 0
/* 80298B70  40 82 00 0C */	bne lbl_80298B7C
/* 80298B74  38 60 00 00 */	li r3, 0
/* 80298B78  4E 80 00 20 */	blr 
lbl_80298B7C:
/* 80298B7C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80298B80  7C 64 02 14 */	add r3, r4, r0
/* 80298B84  4E 80 00 20 */	blr 