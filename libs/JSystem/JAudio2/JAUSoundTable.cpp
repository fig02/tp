//
// Generated By: dol2asm
// Translation Unit: JAUSoundTable
//

#include "JSystem/JAudio2/JAUSoundTable.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Forward References:
//

extern "C" void init__13JAUSoundTableFPCv();
extern "C" void getTypeID__13JAUSoundTableCF10JAISoundID();
extern "C" void getData__13JAUSoundTableCF10JAISoundID();
extern "C" void init__17JAUSoundNameTableFPCv();

//
// External References:
//

//
// Declarations:
//

/* 802A7114-802A7160 2A1A54 004C+00 0/0 1/1 0/0 .text            init__13JAUSoundTableFPCv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUSoundTable::init(void const* param_0) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUSoundTable/init__13JAUSoundTableFPCv.s"
}
#pragma pop

/* 802A7160-802A728C 2A1AA0 012C+00 0/0 10/10 0/0 .text getTypeID__13JAUSoundTableCF10JAISoundID
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUSoundTable::getTypeID(JAISoundID param_0) const {
    nofralloc
#include "asm/JSystem/JAudio2/JAUSoundTable/getTypeID__13JAUSoundTableCF10JAISoundID.s"
}
#pragma pop

/* 802A728C-802A73D4 2A1BCC 0148+00 0/0 7/7 0/0 .text getData__13JAUSoundTableCF10JAISoundID */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUSoundTable::getData(JAISoundID param_0) const {
    nofralloc
#include "asm/JSystem/JAudio2/JAUSoundTable/getData__13JAUSoundTableCF10JAISoundID.s"
}
#pragma pop

/* 802A73D4-802A7420 2A1D14 004C+00 0/0 1/1 0/0 .text            init__17JAUSoundNameTableFPCv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JAUSoundNameTable::init(void const* param_0) {
    nofralloc
#include "asm/JSystem/JAudio2/JAUSoundTable/init__17JAUSoundNameTableFPCv.s"
}
#pragma pop
