/* 800B48D0 000B1810  80 03 31 A0 */ lwz r0, 0x31a0(r3)
/* 800B48D4 000B1814  60 00 00 02 */ ori r0, r0, 2
/* 800B48D8 000B1818  90 03 31 A0 */ stw r0, 0x31a0(r3)
/* 800B48DC 000B181C  C0 03 04 D0 */ lfs f0, 0x4d0(r3)
/* 800B48E0 000B1820  D0 03 34 F8 */ stfs f0, 0x34f8(r3)
/* 800B48E4 000B1824  C0 03 04 D4 */ lfs f0, 0x4d4(r3)
/* 800B48E8 000B1828  D0 03 34 FC */ stfs f0, 0x34fc(r3)
/* 800B48EC 000B182C  C0 03 04 D8 */ lfs f0, 0x4d8(r3)
/* 800B48F0 000B1830  D0 03 35 00 */ stfs f0, 0x3500(r3)
/* 800B48F4 000B1834  C0 03 34 FC */ lfs f0, 0x34fc(r3)
/* 800B48F8 000B1838  D0 03 33 C4 */ stfs f0, 0x33c4(r3)
/* 800B48FC 000B183C  C0 03 34 FC */ lfs f0, 0x34fc(r3)
/* 800B4900 000B1840  D0 03 33 C8 */ stfs f0, 0x33c8(r3)
/* 800B4904 000B1844  4E 80 00 20 */ blr