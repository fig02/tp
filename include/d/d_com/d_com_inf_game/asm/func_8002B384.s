/* 8002B384 000282C4  54 80 0D FC */ rlwinm r0, r4, 1, 0x17, 0x1e
/* 8002B388 000282C8  7C 63 02 14 */ add r3, r3, r0
/* 8002B38C 000282CC  A8 63 4E C2 */ lha r3, 0x4ec2(r3)
/* 8002B390 000282D0  4E 80 00 20 */ blr