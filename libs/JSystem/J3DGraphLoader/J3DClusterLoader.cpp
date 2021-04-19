//
// Generated By: dol2asm
// Translation Unit: J3DClusterLoader
//

#include "JSystem/J3DGraphLoader/J3DClusterLoader.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct ResNTAB {};

struct JUTNameTab {
    /* 802DE9E0 */ JUTNameTab(ResNTAB const*);
};

struct J3DDeformData {
    /* 8032E1F8 */ J3DDeformData();
};

struct J3DDeformer {
    /* 8032E39C */ J3DDeformer(J3DDeformData*);
};

struct J3DClusterBlock {};

struct J3DClusterLoader_v15 {
    /* 803341CC */ J3DClusterLoader_v15();
    /* 803341E8 */ ~J3DClusterLoader_v15();
    /* 80334244 */ void load(void const*);
    /* 803342F8 */ void readCluster(J3DClusterBlock const*);
};

struct J3DClusterLoaderDataBase {
    /* 80334130 */ void load(void const*);
};

struct J3DClusterLoader {
    /* 803345FC */ ~J3DClusterLoader();
};

//
// Forward References:
//

extern "C" void load__24J3DClusterLoaderDataBaseFPCv();
extern "C" void __ct__20J3DClusterLoader_v15Fv();
extern "C" void __dt__20J3DClusterLoader_v15Fv();
extern "C" void load__20J3DClusterLoader_v15FPCv();
extern "C" void readCluster__20J3DClusterLoader_v15FPC15J3DClusterBlock();
extern "C" void __dt__16J3DClusterLoaderFv();
extern "C" void func_80334644(void* _this, void const*, void const*);
extern "C" void func_8033465C(void* _this, void const*, void const*);
extern "C" void func_80334674(void* _this, void const*, void const*);
extern "C" extern char const* const J3DClusterLoader__stringBase0;

//
// External References:
//

SECTION_INIT void memcpy();
extern "C" void OSReport();
extern "C" void* __nw__FUl();
extern "C" void* __nwa__FUl();
extern "C" void* __nwa__FUli();
extern "C" void __dl__FPv();
extern "C" void __ct__10JUTNameTabFPC7ResNTAB();
extern "C" void func_802F42C0(void* _this, void const*, void const*);
extern "C" void func_8030A530(void* _this, void const*, void const*);
extern "C" void func_8030A560(void* _this, void const*, void const*);
extern "C" void __ct__13J3DDeformDataFv();
extern "C" void __ct__11J3DDeformerFP13J3DDeformData();
extern "C" void DCStoreRange();
extern "C" void _savegpr_23();
extern "C" void _savegpr_26();
extern "C" void _restgpr_23();
extern "C" void _restgpr_26();

//
// Declarations:
//

/* 80334130-803341CC 32EA70 009C+00 0/0 1/1 0/0 .text load__24J3DClusterLoaderDataBaseFPCv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DClusterLoaderDataBase::load(void const* param_0) {
    nofralloc
#include "asm/JSystem/J3DGraphLoader/J3DClusterLoader/load__24J3DClusterLoaderDataBaseFPCv.s"
}
#pragma pop

/* ############################################################################################## */
/* 803CF0E8-803CF0F8 02C208 0010+00 2/2 0/0 0/0 .data            __vt__20J3DClusterLoader_v15 */
SECTION_DATA extern void* __vt__20J3DClusterLoader_v15[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)load__20J3DClusterLoader_v15FPCv,
    (void*)__dt__20J3DClusterLoader_v15Fv,
};

/* 803CF0F8-803CF108 02C218 0010+00 3/3 0/0 0/0 .data            __vt__16J3DClusterLoader */
SECTION_DATA extern void* __vt__16J3DClusterLoader[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__16J3DClusterLoaderFv,
};

/* 803341CC-803341E8 32EB0C 001C+00 1/1 0/0 0/0 .text            __ct__20J3DClusterLoader_v15Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DClusterLoader_v15::J3DClusterLoader_v15() {
    nofralloc
#include "asm/JSystem/J3DGraphLoader/J3DClusterLoader/__ct__20J3DClusterLoader_v15Fv.s"
}
#pragma pop

/* 803341E8-80334244 32EB28 005C+00 2/1 0/0 0/0 .text            __dt__20J3DClusterLoader_v15Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DClusterLoader_v15::~J3DClusterLoader_v15() {
    nofralloc
#include "asm/JSystem/J3DGraphLoader/J3DClusterLoader/__dt__20J3DClusterLoader_v15Fv.s"
}
#pragma pop

/* ############################################################################################## */
/* 803A2098-803A2098 02E6F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803A2098 = "Unknown data block\n";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_803A20AC = "\0\0\0";
#pragma pop

/* 80334244-803342F8 32EB84 00B4+00 2/1 0/0 0/0 .text            load__20J3DClusterLoader_v15FPCv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DClusterLoader_v15::load(void const* param_0) {
    nofralloc
#include "asm/JSystem/J3DGraphLoader/J3DClusterLoader/load__20J3DClusterLoader_v15FPCv.s"
}
#pragma pop

/* 803342F8-803345FC 32EC38 0304+00 1/1 0/0 0/0 .text
 * readCluster__20J3DClusterLoader_v15FPC15J3DClusterBlock      */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void J3DClusterLoader_v15::readCluster(J3DClusterBlock const* param_0) {
    nofralloc
#include "asm/JSystem/J3DGraphLoader/J3DClusterLoader/readCluster__20J3DClusterLoader_v15FPC15J3DClusterBlock.s"
}
#pragma pop

/* 803345FC-80334644 32EF3C 0048+00 1/0 0/0 0/0 .text            __dt__16J3DClusterLoaderFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DClusterLoader::~J3DClusterLoader() {
    nofralloc
#include "asm/JSystem/J3DGraphLoader/J3DClusterLoader/__dt__16J3DClusterLoaderFv.s"
}
#pragma pop

/* 80334644-8033465C 32EF84 0018+00 1/1 0/0 0/0 .text
 * JSUConvertOffsetToPtr<16J3DClusterVertex>__FPCvPCv           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80334644(void* _this, void const* param_0, void const* param_1) {
    nofralloc
#include "asm/JSystem/J3DGraphLoader/J3DClusterLoader/func_80334644.s"
}
#pragma pop

/* 8033465C-80334674 32EF9C 0018+00 1/1 0/0 0/0 .text
 * JSUConvertOffsetToPtr<13J3DClusterKey>__FPCvPCv              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_8033465C(void* _this, void const* param_0, void const* param_1) {
    nofralloc
#include "asm/JSystem/J3DGraphLoader/J3DClusterLoader/func_8033465C.s"
}
#pragma pop

/* 80334674-8033468C 32EFB4 0018+00 1/1 0/0 0/0 .text JSUConvertOffsetToPtr<10J3DCluster>__FPCvPCv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80334674(void* _this, void const* param_0, void const* param_1) {
    nofralloc
#include "asm/JSystem/J3DGraphLoader/J3DClusterLoader/func_80334674.s"
}
#pragma pop

/* 803A2098-803A2098 02E6F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
