//
// Generated By: dol2asm
// Translation Unit: MSL_Common/Src/misc_io
//

#include "MSL_C.PPCEABI.bare.H/MSL_Common/Src/misc_io.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Forward References:
//

extern "C" void __stdio_atexit();

//
// External References:
//

extern "C" extern u8 __stdio_exit[4];

extern "C" void __close_all();
extern "C" extern u8 __stdio_exit[4];

//
// Declarations:
//

/* 803664CC-803664DC 0010+00 s=0 e=2 z=0  None .text      __stdio_atexit */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __stdio_atexit() {
    nofralloc
#include "asm/MSL_C.PPCEABI.bare.H/MSL_Common/Src/misc_io/__stdio_atexit.s"
}
#pragma pop