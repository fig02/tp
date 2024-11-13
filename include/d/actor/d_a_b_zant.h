#ifndef D_A_B_ZANT_H
#define D_A_B_ZANT_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/d_bg_s_acch.h"
#include "d/d_msg_flow.h"

/**
 * @ingroup actors-enemies
 * @class daB_ZANT_c
 * @brief Zant
 *
 * @details Palace of Twilight dungeon boss.
 *
 */
class daB_ZANT_c : public fopEn_enemy_c {
public:
    /* 8063E19C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 8063E264 */ void JointCallBack(J3DJoint*, int);
    /* 8063E2B0 */ void draw();
    /* 8063E5C4 */ void setBck(int, u8, f32, f32);
    /* 8063E668 */ void checkBck(int);
    /* 8063E6C4 */ void setActionMode(int, int);
    /* 8063E6F8 */ void checkBigDamage();
    /* 8063E79C */ void checkDamageType();
    /* 8063E810 */ void setDamageSe(dCcD_Sph*, int);
    /* 8063E938 */ void damage_check();
    /* 8063F524 */ void ice_damage_check();
    /* 8063F84C */ void setNextDamageMode(int);
    /* 8063FAB4 */ void checkAvoidWeapon(int);
    /* 8063FF6C */ void setTgHitBit(int);
    /* 8063FFAC */ void setCoHitBit(int);
    /* 8063FFEC */ void setTgShield(int);
    /* 806400BC */ void setTgType(u32);
    /* 806400C8 */ void setZantMessage(int);
    /* 80640104 */ void doZantMessage();
    /* 80640180 */ void setIceLandingEffect(int);
    /* 80640310 */ void setWaterBubble();
    /* 806403D4 */ void setMonkeyFallEffect();
    /* 80640478 */ void setLastRollEffect();
    /* 80640654 */ f32 getMagicSpeed();
    /* 80640664 */ f32 getMagicWaterSpeed();
    /* 80640674 */ void executeSmallAttack();
    /* 80640C20 */ void calcScale(int);
    /* 80640D14 */ void executeWarp();
    /* 806412A8 */ void executeDamage();
    /* 806414E4 */ void executeConfuse();
    /* 80641640 */ void executeOpening();
    /* 806427EC */ void executeFly();
    /* 80642EC8 */ void executeFlyGround();
    /* 806430E0 */ void checkSwimLinkNearMouth();
    /* 806432F8 */ void checkSwimLinkNear();
    /* 8064350C */ void executeHook();
    /* 80643690 */ void executeWater();
    /* 80644074 */ void executeSwim();
    /* 80644A3C */ void executeSimaJump();
    /* 80645014 */ void executeIceDemo();
    /* 8064524C */ void executeIceJump();
    /* 80645DA4 */ void executeIceStep();
    /* 8064687C */ void executeIceDamage();
    /* 806471CC */ void setFarPillarPos();
    /* 806473E4 */ void setNearPillarPos();
    /* 80647468 */ void setNextPillarInfo(int);
    /* 806474F4 */ void setNextPillarPos();
    /* 80647A34 */ void checkPillarSwing();
    /* 80647AC8 */ void executeMonkey();
    /* 806481F4 */ void executeMonkeyFall();
    /* 80648544 */ void executeMonkeyDamage();
    /* 80648778 */ void setLastWarp(int, int);
    /* 80648F64 */ void executeLastStartDemo();
    /* 806494A8 */ void executeLastAttack();
    /* 8064A58C */ void executeLastTired();
    /* 8064A688 */ void executeLastDamage();
    /* 8064AC8C */ void executeLastEndDemo();
    /* 8064B270 */ void calcMahojinAnime();
    /* 8064B49C */ void calcRoomChangeCamera(int);
    /* 8064B69C */ void initNextRoom();
    /* 8064B868 */ void executeRoomChange();
    /* 8064C1C0 */ void setBaseActionMode(int);
    /* 8064C5A8 */ void action();
    /* 8064CB1C */ void mtx_set();
    /* 8064CD0C */ void cc_set();
    /* 8064CFA8 */ void cc_ice_set();
    /* 8064DA48 */ void execute();
    /* 8064DB70 */ void _delete();
    /* 8064DC04 */ void CreateHeap();
    /* 8064E190 */ void create();

private:
    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x05B8 */ J3DModel* field_0x5b8;
    /* 0x05BC */ J3DModel* field_0x5bc;
    /* 0x05C0 */ J3DModel* field_0x5c0;
    /* 0x05C4 */ J3DModel* field_0x5c4;
    /* 0x05C8 */ mDoExt_brkAnm* field_0x5c8;
    /* 0x05CC */ mDoExt_btkAnm* field_0x5cc;
    /* 0x05D0 */ mDoExt_btkAnm* field_0x5d0;
    /* 0x05D4 */ mDoExt_brkAnm* field_0x5d4;
    /* 0x05D8 */ mDoExt_btkAnm* field_0x5d8;
    /* 0x05DC */ u8 field_0x5dc[0x5e8 - 0x5dc];
    /* 0x05E8 */ u8 field_0x5e8;
    /* 0x05E9 */ u8 field_0x5e9;
    /* 0x05EC */ f32 field_0x5ec;
    /* 0x05F0 */ Z2CreatureEnemy mZ2Enemy;
    /* 0x0680 */ u8 field_0x680[0x6a0 - 0x680];
    /* 0x06A0 */ cXyz mFlyWarpPos;
    /* 0x06AC */ cXyz field_0x6ac;
    /* 0x06B8 */ s16 field_0x6b8;
    /* 0x06BA */ s16 field_0x6ba;
    /* 0x06BC */ f32 field_0x6bc;
    /* 0x06C0 */ f32 field_0x6c0;
    /* 0x06C4 */ f32 field_0x6c4;
    /* 0x06C8 */ f32 field_0x6c8;
    /* 0x06CC */ f32 field_0x6cc;
    /* 0x06D0 */ f32 field_0x6d0;
    /* 0x06D4 */ int mActionID;
    /* 0x06D8 */ int mLastActionID;
    /* 0x06DC */ int mActionMode;
    /* 0x06E0 */ u32 field_0x6e0;
    /* 0x06E4 */ u16 field_0x6e4;
    /* 0x06E8 */ int field_0x6e8;
    /* 0x06EC */ int field_0x6ec;
    /* 0x06F0 */ int field_0x6f0;
    /* 0x06F4 */ int field_0x6f4;
    /* 0x06F8 */ s16 field_0x6f8;
    /* 0x06FA */ u8 field_0x6fa;
    /* 0x06FB */ u8 mFightPhase;
    /* 0x06FC */ u8 field_0x6fc;
    /* 0x06FD */ u8 field_0x6fd;
    /* 0x06FE */ u8 mFlyWarpPosID;
    /* 0x06FF */ u8 field_0x6ff;
    /* 0x0700 */ u8 field_0x700;
    /* 0x0701 */ u8 field_0x701;
    /* 0x0702 */ u8 field_0x702;
    /* 0x0703 */ u8 field_0x703;
    /* 0x0704 */ u8 field_0x704;
    /* 0x0705 */ u8 field_0x705;
    /* 0x0706 */ u8 field_0x706;
    /* 0x0707 */ u8 field_0x707;
    /* 0x0708 */ u8 field_0x708;
    /* 0x0709 */ u8 field_0x709;
    /* 0x070A */ u8 field_0x70a;
    /* 0x070B */ u8 field_0x70b;
    /* 0x070C */ u8 field_0x70c;
    /* 0x070D */ u8 field_0x70d;
    /* 0x070E */ u8 field_0x70e;
    /* 0x070F */ u8 field_0x70f;
    /* 0x0710 */ u8 field_0x710;
    /* 0x0711 */ u8 field_0x711;
    /* 0x0712 */ u8 field_0x712;
    /* 0x0713 */ u8 field_0x713;
    /* 0x0714 */ u8 field_0x714;
    /* 0x0715 */ u8 field_0x715;
    /* 0x0716 */ u8 field_0x716;
    /* 0x0717 */ u8 field_0x717;
    /* 0x0718 */ u8 field_0x718;
    /* 0x0719 */ bool mTakenBigDmg;
    /* 0x071A */ u8 mFightCycle;
    /* 0x071B */ u8 field_0x71b;
    /* 0x071C */ u8 field_0x71c;
    /* 0x071D */ u8 field_0x71d;
    /* 0x071E */ s16 field_0x71e;
    /* 0x0720 */ s16 field_0x720;
    /* 0x0722 */ s16 field_0x722;
    /* 0x0724 */ u32 field_0x724;
    /* 0x0728 */ u8 field_0x728;
    /* 0x072C */ u32 field_0x72c[4];
    /* 0x073C */ u32 field_0x73c[9];
    /* 0x0760 */ cXyz field_0x760;
    /* 0x076C */ cXyz field_0x76c;
    /* 0x0778 */ f32 field_0x778;
    /* 0x077C */ f32 field_0x77c;
    /* 0x0780 */ int mMsgNo;
    /* 0x0784 */ int mMsgID;
    /* 0x0788 */ msg_class* mpMsg;
    /* 0x078C */ dBgS_AcchCir mAcchCir;
    /* 0x07CC */ dBgS_Acch mAcch;
    /* 0x09A4 */ dCcD_Stts mStts;
    /* 0x09E0 */ dCcD_Sph field_0x9e0[2];
    /* 0x0C50 */ dCcU_AtInfo mAtInfo;
    /* 0x0C74 */ dCcD_Stts field_0xc74;
    /* 0x0CB0 */ dCcD_Sph field_0xcb0[11];
    /* 0x1A18 */ dCcD_Sph field_0x1a18[11];
    /* 0x2780 */ dCcD_Sph field_0x2780[11];
    /* 0x34E8 */ dCcD_Cyl field_0x34e8;
    /* 0x3624 */ dCcD_Sph field_0x3624[2];
    /* 0x3894 */ u32 field_0x3894;
    /* 0x3898 */ u32 field_0x3898;
    // /* 0x389C */ u32 field_0x389c;
    /* 0x38A0 */ u8 field_0x38a0[0x38ac - 0x38a0];
    // /* 0x38AC */ u32 field_0x38ac[2];
    // /* 0x38B4 */ u32 field_0x38b4;
    // /* 0x38B8 */ u8 field_0x38b8;
};

/* 
    There is a misalignment here causing the class to be too big by 0x14.
    Commenting out the class members at the end fixed it temporarily.
    Needs to be fixed properly at some point.
*/

STATIC_ASSERT(sizeof(daB_ZANT_c) == 0x38BC);

class daB_ZANT_HIO_c {
public:
    /* 8063E10C */ daB_ZANT_HIO_c();
    /* 8064E994 */ ~daB_ZANT_HIO_c();
};

#endif /* D_A_B_ZANT_H */
