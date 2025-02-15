#include "common.h"
#include "sprite.h"
#include "hud_element.h"
#include "pause/pause_common.h"

extern s32 D_8008EEC0[12];
extern s32 D_8008EEF0[];
extern s16 D_8010C9C0;
extern PopupMenu D_8010C9C8;
extern s16 D_8010CCF8;
extern s16 D_8010CCFA;
extern s16 D_8010CCFC;
extern s16 D_8010CCFE;

void func_800E6860(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;

    if (gPartnerActionStatus.actionState.b[0] != 0 && gPartnerActionStatus.actionState.b[3]  == 9) {
        Npc* partner = get_npc_unsafe(NPC_PARTNER);

        func_802DDEE4(0, -1, 7, 0, 0, 0, playerStatus->alpha1, 0);
        func_8003D624(partner, 7, playerStatus->alpha1, 0, 0, 0, 0);
        playerStatus->alpha2 = 0;
    }
}

s32 func_800E6904(void) {
    PartnerActionStatus* partnerActionStatus = &gPartnerActionStatus;
    PlayerStatus* playerStatus = &gPlayerStatus;
    s32 actionState = playerStatus->actionState;

    if (playerStatus->animFlags & PLAYER_STATUS_ANIM_FLAGS_100000) {
        return FALSE;
    }

    if (partnerActionStatus->actionState.b[0] == 0) {
        if (!(playerStatus->flags & PLAYER_STATUS_FLAGS_1000) &&
            (actionState == ACTION_STATE_IDLE || actionState == ACTION_STATE_WALK || actionState == ACTION_STATE_RUN))
        {
            return TRUE;
        }
    } else if (partner_player_can_pause()) {
        if (partnerActionStatus->actionState.b[3] == 6) {
            return TRUE;
        } else if (partnerActionStatus->actionState.b[3] == 9) {
            if (actionState == ACTION_STATE_RIDE) {
                return TRUE;
            }
        } else if (partnerActionStatus->actionState.b[3] == 8) {
            if (actionState == ACTION_STATE_RIDE) {
                return TRUE;
            }
            sfx_play_sound(SOUND_MENU_ERROR);
        }
    }
    return FALSE;
}

s32 can_pause(s32 currentButtons, s32 pressedButtons) {
    PartnerActionStatus* partnerActionStatus = &gPartnerActionStatus;
    s32 actionState = gPlayerStatus.actionState;

    if (!(gPlayerStatus.animFlags & PLAYER_STATUS_ANIM_FLAGS_100000) &&
        !(gPlayerStatus.flags & PLAYER_STATUS_FLAGS_100) &&
        !(currentButtons & (BUTTON_Z | BUTTON_R)) &&
        (pressedButtons & (BUTTON_START | BUTTON_C_LEFT | BUTTON_C_RIGHT)) &&
        ((gGameStatusPtr->mapShop == NULL) || !(gGameStatusPtr->mapShop->flags & 1)) &&
        !(gOverrideFlags & GLOBAL_OVERRIDES_DISABLE_MENUS) &&
        !is_picking_up_item())
    {
        if (!(gPlayerStatus.animFlags & PLAYER_STATUS_ANIM_FLAGS_8BIT_MARIO)) {
            if (partnerActionStatus->actionState.b[0] == 0) {
                if (!(gPlayerStatus.flags & PLAYER_STATUS_FLAGS_1000)) {
                    if (actionState == ACTION_STATE_IDLE ||
                        actionState == ACTION_STATE_WALK ||
                        actionState == ACTION_STATE_RUN)
                    {
                        return TRUE;
                    }
                }
            } else if (partner_player_can_pause()) {
                if (partnerActionStatus->actionState.b[3] == 6) {
                    return actionState == ACTION_STATE_IDLE ||
                           actionState == ACTION_STATE_WALK ||
                           actionState == ACTION_STATE_RUN;
                } else if (partnerActionStatus->actionState.b[3] == 9) {
                    if (actionState == ACTION_STATE_RIDE) {
                        gPlayerStatus.alpha2 = 0;
                        return TRUE;
                    }
                } else if (partnerActionStatus->actionState.b[3] == 8) {
                    if (actionState == ACTION_STATE_RIDE) {
                        if (func_802BD7DC()) {
                            return TRUE;
                        }
                        sfx_play_sound(SOUND_MENU_ERROR);
                    }
                } else if (partnerActionStatus->actionState.b[3] == 7) {
                    sfx_play_sound(SOUND_MENU_ERROR);
                }
            }
        } else {
            sfx_play_sound(SOUND_MENU_ERROR);
        }
    }
    return FALSE;
}

void func_800E6B68(void) {
    D_8010CD00 = 0;
}

s32 setup_partner_popup(PopupMenu* menu) {
    PlayerData* playerData = &gPlayerData;
    s32 temp_a1;
    s32* phi_t0;
    s32 ret;
    s32 i;

    ret = 0;
    for (i = 1; i < ARRAY_COUNT(D_8008EEC0); i++) {
        temp_a1 = D_8008EEC0[i];
        if (playerData->partners[temp_a1].enabled && temp_a1 != 5) {
            s32* properties = gPartnerPopupProperties[temp_a1];

            menu->ptrIcon[ret] = wPartnerHudScripts[temp_a1];
            menu->userIndex[ret] = temp_a1;
            menu->enabled[ret] = TRUE;
            menu->nameMsg[ret] = properties[0];
            menu->descMsg[ret] = properties[2];
            menu->value[ret] = playerData->partners[temp_a1].level;
            if (playerData->currentPartner == temp_a1) {
                menu->enabled[ret] = FALSE;
                menu->ptrIcon[ret] = wDisabledPartnerHudScripts[temp_a1];
            }
            ret++;
        }
    }
    return ret;
}

s32 setup_item_popup(PopupMenu* menu) {
    PlayerData* playerData = &gPlayerData;
    s32 ret = 0;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(playerData->invItems); i++) {
        s32 itemIdx = playerData->invItems[i];

        if (itemIdx != 0) {
            ItemData* item = &gItemTable[itemIdx];
            HudScriptPair* itemScripts = &gItemHudScripts[item->iconID];

            if (item->typeFlags & 1) {
                menu->ptrIcon[ret] = itemScripts->enabled;
                menu->userIndex[ret] = i;
                menu->enabled[ret] = 1;
            } else {
                menu->ptrIcon[ret] = itemScripts->disabled;
                menu->userIndex[ret] = i;
                menu->enabled[ret] = FALSE;
            }
            menu->nameMsg[ret] = item->nameMsg;
            menu->descMsg[ret] = item->itemMsg;
            ret++;
        }
    }
    return ret;
}

INCLUDE_ASM(s32, "7fd10_len_b40", check_input_open_menus);

void check_input_status_menu(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    s32 pressedButtons;

    if (evt_get_variable(NULL, EVT_STORY_PROGRESS) < STORY_EPILOGUE) {
        if (playerStatus->actionState != ACTION_STATE_RIDE) {
            pressedButtons = playerStatus->pressedButtons;
        } else {
            pressedButtons = gGameStatusPtr->pressedButtons;
        }

        if (!is_status_menu_visible()) {
            if (!(playerStatus->currentButtons & Z_TRIG + R_TRIG) && (pressedButtons & BUTTON_C_UP) && func_800E9860()) {
                open_status_menu_long();

                if (!is_picking_up_item()) {
                    sfx_play_sound(3);
                }
            }
        } else if (!(playerStatus->currentButtons & Z_TRIG + R_TRIG) && (pressedButtons & BUTTON_C_UP) && func_800E9860()) {
            close_status_menu();

            if (!is_picking_up_item()) {
                sfx_play_sound(4);
            }
        }
    }
}
