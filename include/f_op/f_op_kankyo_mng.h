#ifndef F_F_OP_KANKYO_MNG_H_
#define F_F_OP_KANKYO_MNG_H_

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"
#include "f_pc/f_pc_manager.h"

struct fopKyM_prm_class {
    /* 0x00 */ cXyz field_0x0;
    /* 0x0C */ cXyz field_0xc;
    /* 0x18 */ int field_0x18;
};  // Size: 0x1C

typedef int (*fopKyM_CreateFunc)(void*);

static fopKyM_prm_class* fopKyM_CreateAppend(void);
static fopKyM_prm_class* createAppend(int param_1, cXyz* param_2, cXyz* param_3);
void fopKyM_Delete(void* param_1);
static int fopKyM_Create(s16 param_1, fopKyM_CreateFunc param_2, void* param_3);
base_process_class* fopKyM_fastCreate(s16 param_0, int param_1, cXyz* param_2, cXyz* param_3,
                                      fopKyM_CreateFunc);

inline void* fopKyM_GetAppend(void* param_0) {
    return fpcM_GetAppend(param_0);
}

#endif