#include "common.h"
#include "hud_element.h"

#define NAMESPACE action_command_squirt

extern HudScript HudScript_BlueMeter[];
extern HudScript HudScript_AButton[];
extern s32 D_80294380;

ApiStatus func_802A9000_429D20(void) {
    ActionCommandStatus* actionCommandStatus = &gActionCommandStatus;
    BattleStatus* battleStatus = &gBattleStatus;
    s32 hudElement;

    battleStatus->unk_82 = 5;
    battleStatus->unk_434 = &D_80294380;
    if (battleStatus->unk_83 == 0) {
        battleStatus->actionSuccess = 0;
        return ApiStatus_DONE2;
    }

    func_80268858();
    actionCommandStatus->actionCommandID = ACTION_COMMAND_SQUIRT;
    actionCommandStatus->state = 0;
    actionCommandStatus->unk_60 = 0;
    actionCommandStatus->barFillLevel = 0;
    actionCommandStatus->unk_48 = 0;
    battleStatus->unk_84 = 0;
    actionCommandStatus->hudElementX = -48;
    actionCommandStatus->unk_5C = 0;
    actionCommandStatus->hudElementY = 80;

    hudElement = hud_element_create(HudScript_AButton);
    actionCommandStatus->hudElements[0] = hudElement;
    hud_element_set_flags(hudElement, HUD_ELEMENT_FLAGS_80 | HUD_ELEMENT_FLAGS_DISABLED);
    hud_element_set_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY);
    hud_element_set_render_depth(hudElement, 0);

    hudElement = hud_element_create(HudScript_BlueMeter);
    actionCommandStatus->hudElements[1] = hudElement;
    hud_element_set_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY + 28);
    hud_element_set_render_depth(hudElement, 0);
    hud_element_set_flags(hudElement, HUD_ELEMENT_FLAGS_80 | HUD_ELEMENT_FLAGS_DISABLED);

    return ApiStatus_DONE2;
}

ApiStatus func_802A911C_429E3C(Evt* script) {
    ActionCommandStatus* actionCommandStatus = &gActionCommandStatus;
    BattleStatus* battleStatus = &gBattleStatus;
    Bytecode* args = script->ptrReadPos;

    if (battleStatus->unk_83 == 0) {
        battleStatus->actionSuccess = 0;
        return ApiStatus_DONE2;
    }

    func_80268858();
    actionCommandStatus->unk_4E = evt_get_variable(script, *args++);
    actionCommandStatus->unk_52 = evt_get_variable(script, *args++);
    actionCommandStatus->unk_50 = evt_get_variable(script, *args++);
    actionCommandStatus->unk_50 = func_80268224(actionCommandStatus->unk_50);
    actionCommandStatus->unk_60 = 0;
    actionCommandStatus->barFillLevel = 0;
    actionCommandStatus->unk_48 = 0;
    battleStatus->actionSuccess = 0;
    battleStatus->unk_86 = 0;
    actionCommandStatus->state = 10;
    battleStatus->flags1 &= ~0x8000;
    func_80269118();
    return ApiStatus_DONE2;
}

INCLUDE_ASM(s32, "battle/action_cmd/squirt", func_802A9208_429F28);

void func_802A9634_42A354(void) {
    s32 x, y;
    s32 hudElement;
    ActionCommandStatus* actionCommandStatus = &gActionCommandStatus;

    hud_element_draw_clipped(actionCommandStatus->hudElements[0]);
    hudElement = actionCommandStatus->hudElements[1];
    hud_element_draw_clipped(hudElement);
    hud_element_get_render_pos(hudElement, &x, &y);
    if (actionCommandStatus->unk_5C == 0) {
        func_80268798(x, y, actionCommandStatus->barFillLevel / 100, 1);
    } else {
        func_802687E4(x, y, actionCommandStatus->barFillLevel / 100, 1, 1);
    }
}

void func_802A9720_42A440(void) {
    sfx_stop_sound(0x80000041);
    hud_element_free(gActionCommandStatus.hudElements[0]);
    hud_element_free(gActionCommandStatus.hudElements[1]);
}
