lbl_80085EB8:
/* 80085EB8  C0 03 02 04 */	lfs f0, 0x204(r3)
/* 80085EBC  D0 04 00 00 */	stfs f0, 0(r4)
/* 80085EC0  C0 03 02 08 */	lfs f0, 0x208(r3)
/* 80085EC4  D0 04 00 04 */	stfs f0, 4(r4)
/* 80085EC8  C0 03 02 0C */	lfs f0, 0x20c(r3)
/* 80085ECC  D0 04 00 08 */	stfs f0, 8(r4)
/* 80085ED0  4E 80 00 20 */	blr 