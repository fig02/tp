/* f_op_draw_iter.cpp autogenerated by split.py v0.4 at 2021-02-15 20:16:49.147351 */

#include "f/f_op/f_op_draw_iter.h"
#include "SComponent/c_tree.h"
#include "global.h"

// additional symbols needed for f_op_draw_iter.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:16:49.147373
extern "C" {
void fopDwIt_GetTag__Fv(void);
}

// additional symbols needed for f_op_draw_iter.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:16:49.147378
extern node_lists_tree_class g_fopDwTg_Queue;
extern u32 l_fopDwTg_id;

// void fopDwIt_GetTag(void) {
//     u32 tmp = l_fopDwTg_id;
//     while (!g_fopDwTg_Queue.mpLists[tmp].mpHead) {
//         if (g_fopDwTg_Queue.mNumLists <= tmp + 1) {
//             return;
//         }
//         l_fopDwTg_id++;
//     }
// }

asm void fopDwIt_GetTag(void) {
    nofralloc
#include "f/f_op/f_op_draw_iter/asm/func_80020400.s"
}

asm void fopDwIt_Begin(void) {
    nofralloc
#include "f/f_op/f_op_draw_iter/asm/func_80020444.s"
}

asm void fopDwIt_Next(create_tag_class* pCreateTag) {
    nofralloc
#include "f/f_op/f_op_draw_iter/asm/func_80020480.s"
}