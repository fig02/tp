lbl_80522F8C:
/* 80522F8C  1C 84 00 38 */	mulli r4, r4, 0x38
/* 80522F90  3C 84 00 01 */	addis r4, r4, 1
/* 80522F94  38 84 19 54 */	addi r4, r4, 0x1954
/* 80522F98  7C 83 22 14 */	add r4, r3, r4
/* 80522F9C  38 00 00 01 */	li r0, 1
/* 80522FA0  98 04 00 00 */	stb r0, 0(r4)
/* 80522FA4  B0 A4 00 02 */	sth r5, 2(r4)
/* 80522FA8  38 00 00 00 */	li r0, 0
/* 80522FAC  B0 04 00 04 */	sth r0, 4(r4)
/* 80522FB0  4E 80 00 20 */	blr 