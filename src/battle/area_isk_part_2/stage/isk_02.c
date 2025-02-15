#include "common.h"
#include "battle/battle.h"
#include "mapfs/isk_bt02_shape.h"

#define NAMESPACE b_area_isk_part_2_isk_02

EvtScript N(beforeBattle_8021FDF0) = {
    EVT_CALL(SetSpriteShading, 786432)
    EVT_CALL(SetCamBGColor, CAM_BATTLE, 0, 0, 0)
    EVT_RETURN
    EVT_END
};

EvtScript N(afterBattle_8021FE2C) = {
    EVT_RETURN
    EVT_END
};

s32 N(foregroundModelList_8021FE3C)[] = {
    MODEL_o398, MODEL_o397, MODEL_o399, 0,
};

Stage NAMESPACE = {
    .texture = "isk_tex",
    .shape = "isk_bt02_shape",
    .hit = "isk_bt02_hit",
    .preBattle = N(beforeBattle_8021FDF0),
    .postBattle = N(afterBattle_8021FE2C),
    .foregroundModelList = N(foregroundModelList_8021FE3C),
};
