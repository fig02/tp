/* 802C8730 002C5670  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C8734 002C5674  98 83 01 E0 */ stb r4, 0x1e0(r3)
/* 802C8738 002C5678  54 A0 06 3E */ clrlwi r0, r5, 0x18
/* 802C873C 002C567C  28 00 00 64 */ cmplwi r0, 0x64
/* 802C8740 002C5680  41 80 00 10 */ blt lbl_802C8750
/* 802C8744 002C5684  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C8748 002C5688  D0 03 01 E4 */ stfs f0, 0x1e4(r3)
/* 802C874C 002C568C  48 00 00 28 */ b lbl_802C8774
lbl_802C8750:
/* 802C8750 002C5690  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C8754 002C5694  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C8758 002C5698  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C875C 002C569C  3C 00 43 30 */ lis r0, 0x4330
/* 802C8760 002C56A0  90 01 00 08 */ stw r0, 8(r1)
/* 802C8764 002C56A4  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C8768 002C56A8  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C876C 002C56AC  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C8770 002C56B0  D0 03 01 E4 */ stfs f0, 0x1e4(r3)
lbl_802C8774:
/* 802C8774 002C56B4  54 C0 06 3E */ clrlwi r0, r6, 0x18
/* 802C8778 002C56B8  28 00 00 FF */ cmplwi r0, 0xff
/* 802C877C 002C56BC  40 82 00 10 */ bne lbl_802C878C
/* 802C8780 002C56C0  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C8784 002C56C4  D0 03 01 E8 */ stfs f0, 0x1e8(r3)
/* 802C8788 002C56C8  48 00 00 28 */ b lbl_802C87B0
lbl_802C878C:
/* 802C878C 002C56CC  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C8790 002C56D0  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C8794 002C56D4  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C8798 002C56D8  3C 00 43 30 */ lis r0, 0x4330
/* 802C879C 002C56DC  90 01 00 08 */ stw r0, 8(r1)
/* 802C87A0 002C56E0  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C87A4 002C56E4  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C87A8 002C56E8  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C87AC 002C56EC  D0 03 01 E8 */ stfs f0, 0x1e8(r3)
lbl_802C87B0:
/* 802C87B0 002C56F0  54 E0 06 3E */ clrlwi r0, r7, 0x18
/* 802C87B4 002C56F4  28 00 00 FF */ cmplwi r0, 0xff
/* 802C87B8 002C56F8  40 82 00 10 */ bne lbl_802C87C8
/* 802C87BC 002C56FC  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C87C0 002C5700  D0 03 01 EC */ stfs f0, 0x1ec(r3)
/* 802C87C4 002C5704  48 00 00 28 */ b lbl_802C87EC
lbl_802C87C8:
/* 802C87C8 002C5708  C0 42 C3 50 */ lfs f2, lbl_80455D50-_SDA2_BASE_(r2)
/* 802C87CC 002C570C  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C87D0 002C5710  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C87D4 002C5714  3C 00 43 30 */ lis r0, 0x4330
/* 802C87D8 002C5718  90 01 00 08 */ stw r0, 8(r1)
/* 802C87DC 002C571C  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C87E0 002C5720  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C87E4 002C5724  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C87E8 002C5728  D0 03 01 EC */ stfs f0, 0x1ec(r3)
lbl_802C87EC:
/* 802C87EC 002C572C  54 80 06 3E */ clrlwi r0, r4, 0x18
/* 802C87F0 002C5730  2C 00 00 0A */ cmpwi r0, 0xa
/* 802C87F4 002C5734  41 82 00 4C */ beq lbl_802C8840
/* 802C87F8 002C5738  40 80 00 14 */ bge lbl_802C880C
/* 802C87FC 002C573C  2C 00 00 08 */ cmpwi r0, 8
/* 802C8800 002C5740  41 82 00 18 */ beq lbl_802C8818
/* 802C8804 002C5744  40 80 00 28 */ bge lbl_802C882C
/* 802C8808 002C5748  48 00 00 5C */ b lbl_802C8864
lbl_802C880C:
/* 802C880C 002C574C  2C 00 00 0C */ cmpwi r0, 0xc
/* 802C8810 002C5750  40 80 00 54 */ bge lbl_802C8864
/* 802C8814 002C5754  48 00 00 40 */ b lbl_802C8854
lbl_802C8818:
/* 802C8818 002C5758  C0 22 C4 34 */ lfs f1, lbl_80455E34-_SDA2_BASE_(r2)
/* 802C881C 002C575C  C0 03 01 EC */ lfs f0, 0x1ec(r3)
/* 802C8820 002C5760  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C8824 002C5764  D0 03 01 BC */ stfs f0, 0x1bc(r3)
/* 802C8828 002C5768  48 00 00 3C */ b lbl_802C8864
lbl_802C882C:
/* 802C882C 002C576C  C0 22 C4 34 */ lfs f1, lbl_80455E34-_SDA2_BASE_(r2)
/* 802C8830 002C5770  C0 03 01 EC */ lfs f0, 0x1ec(r3)
/* 802C8834 002C5774  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C8838 002C5778  D0 03 01 BC */ stfs f0, 0x1bc(r3)
/* 802C883C 002C577C  48 00 00 28 */ b lbl_802C8864
lbl_802C8840:
/* 802C8840 002C5780  C0 22 C4 30 */ lfs f1, lbl_80455E30-_SDA2_BASE_(r2)
/* 802C8844 002C5784  C0 03 01 EC */ lfs f0, 0x1ec(r3)
/* 802C8848 002C5788  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C884C 002C578C  D0 03 01 BC */ stfs f0, 0x1bc(r3)
/* 802C8850 002C5790  48 00 00 14 */ b lbl_802C8864
lbl_802C8854:
/* 802C8854 002C5794  C0 22 C4 30 */ lfs f1, lbl_80455E30-_SDA2_BASE_(r2)
/* 802C8858 002C5798  C0 03 01 EC */ lfs f0, 0x1ec(r3)
/* 802C885C 002C579C  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C8860 002C57A0  D0 03 01 BC */ stfs f0, 0x1bc(r3)
lbl_802C8864:
/* 802C8864 002C57A4  38 21 00 10 */ addi r1, r1, 0x10
/* 802C8868 002C57A8  4E 80 00 20 */ blr
