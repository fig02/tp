/* 80016704 00013644  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80016708 00013648  7C 08 02 A6 */ mflr r0
/* 8001670C 0001364C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80016710 00013650  3C 60 80 3E */ lis r3, lbl_803DECC0@ha
/* 80016714 00013654  38 63 EC C0 */ addi r3, r3, lbl_803DECC0@l
/* 80016718 00013658  48 32 B0 9D */ bl OSResumeThread
/* 8001671C 0001365C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80016720 00013660  7C 08 03 A6 */ mtlr r0
/* 80016724 00013664  38 21 00 10 */ addi r1, r1, 0x10
/* 80016728 00013668  4E 80 00 20 */ blr
