// this file and world/actions.c are candidates for merging

#include "common.h"
#include "world/partners.h"
#include "world/actions.h"
#include "npc.h"

extern void* D_8010C924;
extern s32 D_8010C964;
extern s32 gSpinHistoryBufferPos;
extern s16 D_8010C9B0;
extern s32 gSpinHistoryPosY[5];
extern s32 gSpinHistoryPosX[5];
extern s32 gSpinHistoryPosZ[5];
extern s16 gSpinHistoryPosAngle[5];

void func_800E5520(void) {
    D_8010C9B0 = 0;
}

s32 phys_adjust_cam_on_landing(void) {
    PartnerActionStatus* partnerActionStatus = &gPartnerActionStatus;
    GameStatus* gameStatus = gGameStatusPtr;
    PlayerStatus* playerStatus = &gPlayerStatus;
    s32 ret = 1;

    switch (gameStatus->areaID) {
        case AREA_OBK:
            ret = gameStatus->mapID != 4;
            break;
        case AREA_ISK:
            switch (gameStatus->mapID) {
                case 0:
                    ret = 2;
                    break;
                case 1:
                    if (D_8010C9B0 == 0) {
                        if (playerStatus->position.y <= 0.0f) {
                            D_8010C9B0 = 1;
                        }
                        ret = 2;
                    } else if (playerStatus->position.y > 0.0f) {
                        ret = 0;
                    }
                    break;
                case 3:
                    if (playerStatus->position.y > 25.0f) {
                        ret = 0;
                    }
                    break;
                case 4:
                    if (playerStatus->position.y > 50.0f) {
                        ret = 0;
                    }
                    break;
                case 7:
                    if (playerStatus->position.y > -390.0f) {
                        ret = 0;
                    } else if (playerStatus->position.y < -495.0f) {
                        ret = 0;
                    }
                    break;
                case 8:
                    if (playerStatus->position.y > -90.0f) {
                        ret = 0;
                    } else if (playerStatus->position.y < -370.0f) {
                        ret = 0;
                    }
                    break;
                case 2:
                    if (gGameStatusPtr->entryID == 0) {
                        if (D_8010C9B0 == 0) {
                            if (!(playerStatus->position.y > 0.0f)) {
                                D_8010C9B0 = 1;
                            } else {
                                ret = 2;
                                break;
                            }
                        }

                        if (playerStatus->position.y > 0.0f) {
                            ret = 0;
                        }
                    } else {
                        ret = 2;
                    }
                    break;
                case 5:
                    if (gGameStatusPtr->entryID == 0) {
                        if (D_8010C9B0 == 0) {
                            if (!(playerStatus->position.y > -130.0f)) {
                                D_8010C9B0 = 1;
                            } else {
                                ret = 2;
                                break;
                            }

                        }

                        if (playerStatus->position.y > -130.0f) {
                            ret = 0;
                        }
                    } else {
                        ret = 2;
                    }
                    break;
                case 10:
                    if (D_8010C9B0 == 0) {
                        if (!(playerStatus->position.y > -520.0f)) {
                            D_8010C9B0 = 1;
                        } else {
                            ret = 2;
                            break;
                        }
                    }

                    if (playerStatus->position.y > -520.0f) {
                        ret = 0;
                    }
                    break;
                case 11:
                    if (gGameStatusPtr->entryID == 0) {
                        if (D_8010C9B0 == 0) {
                            if (!(playerStatus->position.y > -520.0f)) {
                                D_8010C9B0 = 1;
                            } else {
                                ret = 2;
                                break;
                            }

                        }

                        if (playerStatus->position.y > -520.0f) {
                            ret = 0;
                        }
                    }

                    if (evt_get_variable(NULL, EVT_STORY_PROGRESS) >= STORY_CH2_DRAINED_THIRD_SAND_ROOM) {
                        ret = 2;
                    }
                    break;
            }
            break;
    }

    if (ret == 1) {
        if ((get_collider_type_by_id(gCollisionStatus.currentFloor) & 0xFF) == 3) {
            ret = 0;
            gCameras[0].moveFlags |= 0x1;
        } else {
            gCameras[0].moveFlags &= ~0x1;
        }
    } else if (partnerActionStatus->actionState.b[0] != 0 && partnerActionStatus->actionState.b[3] == 4) {
        gCameras[0].moveFlags |= 0x2;
    } else {
        gCameras[0].moveFlags &= ~0x2;
    }

    return ret;
}

void phys_clear_spin_history(void) {
    s32 i;

    gSpinHistoryBufferPos = 0;

    for (i = 0; i < ARRAY_COUNT(gSpinHistoryPosY); i++) {
        gSpinHistoryPosAngle[i] = 180;
        gSpinHistoryPosY[i] = 0x80000000;
    }
}

f32 phys_get_spin_history(s32 lag, s32* x, s32* y, s32* z) {
    s32 idx = gSpinHistoryBufferPos;

    // Can't get this if/else to match otherwise...
    if (idx - lag >= 0) {
        idx -= lag;
    } else {
        idx = gSpinHistoryBufferPos - lag + 5;
    }

    *x = gSpinHistoryPosX[idx];
    *y = gSpinHistoryPosY[idx];
    *z = gSpinHistoryPosZ[idx];
    return gSpinHistoryPosAngle[idx];
}

void phys_reset_spin_history(void) {
    s32 i;

    mem_clear(&gPlayerSpinState, sizeof(PlayerSpinState));
    gSpinHistoryBufferPos = 0;

    for (i = 0; i < ARRAY_COUNT(gSpinHistoryPosAngle); i++) {
        gSpinHistoryPosAngle[i] = 0;
        gSpinHistoryPosX[i] = 0;
        gSpinHistoryPosY[i] = 0;
        gSpinHistoryPosZ[i] = 0;
    }

    D_8010C964 = 0;
    D_8010C924 = NULL;
}

INCLUDE_ASM(s32, "7bb60_len_41b0", phys_update_action_state);

void phys_peach_update(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;

    func_800E24F8();

    do {
        if (!(playerStatus->flags & PLAYER_STATUS_FLAGS_20) && check_conversation_trigger()) {
            set_action_state(ACTION_STATE_TALK);
        }

        if (playerStatus->flags & PLAYER_STATUS_FLAGS_ACTION_STATE_CHANGED) {
            Action* action = &PlayerActionsTable[playerStatus->actionState];

            if (action->flag) {
                if (action->dmaStart != NULL && action->dmaStart != D_8010C924) {
                    D_8010C924 = action->dmaStart;

                    // TODO: This needs to be a defined linker define for full shiftability
                    dma_copy(D_8010C924, PlayerActionsTable[playerStatus->actionState].dmaEnd, (void* )0x802B6000);
                }

                if (PlayerActionsTable[playerStatus->actionState].flag) {
                    PlayerActionsTable[playerStatus->actionState].update();
                }
            }
        } else {
            if (PlayerActionsTable[playerStatus->actionState].flag) {
                PlayerActionsTable[playerStatus->actionState].update();
            }
        }
    } while (playerStatus->flags & PLAYER_STATUS_FLAGS_ACTION_STATE_CHANGED);

    peach_check_for_parasol_input();
    if (playerStatus->animFlags & PLAYER_STATUS_ANIM_FLAGS_IN_DISGUISE) {
        peach_sync_disguise_npc();
    }
}

void set_action_state(s32 actionState) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    PlayerData* playerData = &gPlayerData;
    PlayerSpinState* spinState = &gPlayerSpinState;

    if (playerStatus->flags & PLAYER_STATUS_FLAGS_200) {
        playerStatus->flags &= ~PLAYER_STATUS_FLAGS_200;
        enable_player_input();
    }

    if (playerStatus->animFlags & PLAYER_STATUS_ANIM_FLAGS_8BIT_MARIO) {
        // TODO figure this out
#ifdef NON_EQUIVALENT
        if (
            actionState == ACTION_STATE_IDLE || actionState == ACTION_STATE_WALK ||
            actionState == ACTION_STATE_RUN || actionState == ACTION_STATE_JUMP ||
            actionState == ACTION_STATE_BOUNCE || actionState == ACTION_STATE_HOP ||
            actionState == ACTION_STATE_LAUNCH || actionState == ACTION_STATE_LANDING_ON_SWITCH ||
            actionState == ACTION_STATE_FALLING || actionState == ACTION_STATE_STEP_DOWN ||
            actionState == ACTION_STATE_LAND || actionState == ACTION_STATE_STEP_DOWN_LAND
        ) {
#else
        if (actionState < ACTION_STATE_TALK)
            if (actionState >= 0) {
#endif
            playerStatus->prevActionState = playerStatus->actionState;
            playerStatus->actionState = actionState;
            playerStatus->flags |= PLAYER_STATUS_FLAGS_ACTION_STATE_CHANGED;
        }
        return;
    }

    if (actionState == ACTION_STATE_HIT_FIRE || actionState == ACTION_STATE_HIT_LAVA) {
        s8 partner;

        if (playerStatus->unk_BF == 3) {
            actionState = ACTION_STATE_HIT_FIRE;
        }

        // Whilst Sushie, Lakilester, Parakarry's ability is active, hazards have no effect.
        partner = playerData->currentPartner;

        if (partner == PARTNER_SUSHIE || partner == PARTNER_LAKILESTER || partner == PARTNER_PARAKARRY) {
            if (gPartnerActionStatus.actionState.b[0] != 0) {
                playerStatus->animFlags |= 0x4;
                playerStatus->flags |= PLAYER_STATUS_FLAGS_800;
                return;
            }
        }
    }

    if (actionState == ACTION_STATE_SLIDING) {
        playerStatus->flags |= PLAYER_STATUS_FLAGS_10;
        playerStatus->moveFrames = 0;
        playerStatus->flags &= ~PLAYER_STATUS_FLAGS_4000;
    }

    playerStatus->prevActionState = playerStatus->actionState;
    if (actionState == ACTION_STATE_USE_TWEESTER) {
        playerStatus->prevActionState = ACTION_STATE_IDLE;
    }

    if (actionState == ACTION_STATE_ENEMY_FIRST_STRIKE) {
        playerStatus->animFlags |= 4;
    }
    playerStatus->actionState = actionState;
    playerStatus->flags |= PLAYER_STATUS_FLAGS_ACTION_STATE_CHANGED;

    if (playerStatus->actionState == ACTION_STATE_SPIN) {
        return;
    }

    playerStatus->flags &= ~PLAYER_STATUS_FLAGS_20000;
    playerStatus->animFlags &= ~PLAYER_STATUS_ANIM_FLAGS_SPINNING;

    if (spinState->spinSoundID != 0) {
        sfx_stop_sound(spinState->spinSoundID);
    }

    if (playerStatus->unk_D8) {
        playerStatus->unk_D8[3][9] = 0xA; // TODO: Substruct? Currently UB.
        playerStatus->unk_D8 = NULL;
    }
}

void update_locomotion_state(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;

    if (!is_ability_active(ABILITY_SLOW_GO) &&
        SQ(playerStatus->stickAxis[0]) + SQ(playerStatus->stickAxis[1]) >= 0xBD2)
    {
        set_action_state(ACTION_STATE_RUN);
    } else {
        set_action_state(ACTION_STATE_WALK);
    }
}

void start_falling(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;

    set_action_state(ACTION_STATE_FALLING);
    playerStatus->gravityIntegrator[0] = 0.1143f;
    playerStatus->gravityIntegrator[1] = -0.2871f;
    playerStatus->gravityIntegrator[2] = -0.1823f;
    playerStatus->gravityIntegrator[3] = 0.01152f;
}

void start_bounce_a(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;

    set_action_state(ACTION_STATE_BOUNCE);
    playerStatus->gravityIntegrator[0] = 10.0f;
    playerStatus->gravityIntegrator[1] = -2.0f;
    playerStatus->gravityIntegrator[2] = 0.8f;
    playerStatus->gravityIntegrator[3] = -0.75f;
}

void start_bounce_b(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;

    set_action_state(ACTION_STATE_BOUNCE);
    playerStatus->gravityIntegrator[0] = 8.0f;
    playerStatus->gravityIntegrator[1] = -1.0f;
    playerStatus->gravityIntegrator[2] = 0;
    playerStatus->gravityIntegrator[3] = 0;
    playerStatus->flags |= 0x800000;
}

s32 check_input_hammer(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    PlayerData* playerData = &gPlayerData;

    if (playerStatus->pressedButtons & BUTTON_B) {
        if (playerStatus->flags & PLAYER_STATUS_FLAGS_FALLING) {
            return FALSE;
        }

        if (gPartnerActionStatus.actionState.b[0] == 1 && playerData->currentPartner == PARTNER_WATT) {
            return FALSE;
        }

        if (playerData->hammerLevel == -1) {
            return FALSE;
        }

        set_action_state(ACTION_STATE_HAMMER);
        return TRUE;
    }
    return FALSE;
}

INCLUDE_ASM(s32, "7bb60_len_41b0", check_input_jump, void);

void check_input_spin(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    PlayerSpinState* spinState = &gPlayerSpinState;
    PlayerSpinState* temp2 = spinState;

    if (!(playerStatus->flags & (PLAYER_STATUS_ANIM_FLAGS_8BIT_MARIO | PLAYER_STATUS_ANIM_FLAGS_USING_PEACH_PHYSICS)) &&
        !(playerStatus->animFlags & 1) &&
        !(playerStatus->currentButtons & D_CBUTTONS) &&
        !is_ability_active(ABILITY_SLOW_GO)) {

        s32 actionState = playerStatus->actionState;
        s32 btnPressed = playerStatus->pressedButtons & Z_TRIG;

        // TODO
        if (actionState != ACTION_STATE_RIDE) {
            if (actionState < ACTION_STATE_STEP_UP) {
                if (actionState < ACTION_STATE_JUMP) {
                    if (actionState >= 0 && !(playerStatus->animFlags & PLAYER_STATUS_ANIM_FLAGS_SPINNING)) {
                        if (btnPressed || spinState->hasBufferedSpin) {
                            set_action_state(ACTION_STATE_SPIN);
                            if (spinState->hasBufferedSpin != FALSE) {
                                if (spinState->bufferedStickAxis.x != 0 || spinState->bufferedStickAxis.y != 0) {
                                    playerStatus->prevActionState = temp2->prevActionState;
                                } else {
                                    playerStatus->prevActionState = ACTION_STATE_IDLE;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

void peach_set_disguise_anim(s32 arg0) {
    s32 listIndex = D_8010C96C;

    if (listIndex >= 0) {
        get_npc_by_index(listIndex)->currentAnim.w = arg0;
    }
}

void func_800E63A4(s32 arg0) {
    PlayerStatus* playerStatus = &gPlayerStatus;

    if (arg0 != 0) {
        set_action_state(ACTION_STATE_USE_SNEAKY_PARASOL);
    } else {
        playerStatus->animFlags &= ~PLAYER_STATUS_ANIM_FLAGS_IN_DISGUISE;
        gGameStatusPtr->peachFlags &= ~0x2;
        playerStatus->peachDisguise = 0;
        free_npc_by_index(D_8010C96C);
        set_action_state(ACTION_STATE_IDLE);
        playerStatus->colliderHeight = 55;
        playerStatus->colliderDiameter = 38;
    }
}

void peach_check_for_parasol_input(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    s32 actionState = playerStatus->actionState;
    Npc* disguiseNpc;

    if (actionState == ACTION_STATE_IDLE || actionState == ACTION_STATE_WALK || actionState == ACTION_STATE_RUN) {
        if (D_8010C92C != 0) {
            D_8010C92C--;
            if (D_8010C92C == 0) {
                if (gGameStatusPtr->peachFlags & 2) {
                    playerStatus->animFlags |= PLAYER_STATUS_ANIM_FLAGS_IN_DISGUISE;
                    gGameStatusPtr->peachFlags |= 2;

                    disguiseNpc = peach_make_disguise_npc(gGameStatusPtr->peachDisguise);
                    if (disguiseNpc != NULL) {
                        disguiseNpc->flags &= ~NPC_FLAG_40000;
                    }
                }
            }
        } else if (gGameStatusPtr->peachFlags & 4 && playerStatus->pressedButtons & B_BUTTON) {
            set_action_state(ACTION_STATE_USE_SNEAKY_PARASOL);
        }
    }
}

void peach_sync_disguise_npc(void) {
    PlayerStatus* playerStatus = &gPlayerStatus;

    if (D_8010C96C >= 0) {
        Npc* npc = get_npc_by_index(D_8010C96C);

        if (npc->flags & NPC_FLAG_40000) {
            npc->renderYaw = playerStatus->spriteFacingAngle;
        } else {
            npc->yaw = playerStatus->targetYaw;
        }

        npc->pos.x = playerStatus->position.x;
        npc->pos.y = playerStatus->position.y;
        npc->pos.z = playerStatus->position.z;
    }
}


#ifdef NON_EQUIVALENT
Npc* peach_make_disguise_npc(s32 peachDisguise) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    NpcBlueprint blueprint;
    Npc* npc;
    f32 yaw;

    if (peachDisguise == 0) {
        return NULL;
    }

    playerStatus->colliderHeight = 37;
    playerStatus->colliderDiameter = 38;
    playerStatus->peachDisguise = gGameStatusPtr->peachDisguise = peachDisguise;

    blueprint.flags = NPC_FLAG_ENABLE_HIT_SCRIPT | NPC_FLAG_40 | NPC_FLAG_100 | NPC_FLAG_40000;
    blueprint.initialAnim = BasicPeachDisguiseAnims[playerStatus->peachDisguise].idle;
    blueprint.onRender = NULL;
    blueprint.onUpdate = NULL;
    D_8010C96C = _create_npc_standard(&blueprint, &PeachDisguiseExtraAnims[playerStatus->peachDisguise]);
    npc = get_npc_by_index(D_8010C96C);

    disable_npc_shadow(npc);

    if (playerStatus->spriteFacingAngle >= 90.0f && playerStatus->spriteFacingAngle < 270.0f) {
        yaw = 180.0f;
    } else {
        yaw = 0.0f;
    }

    set_npc_yaw(npc, yaw);

    npc->pos.x = playerStatus->position.x;
    npc->pos.y = playerStatus->position.y;
    npc->pos.z = playerStatus->position.z;

    return npc;
}
#else
INCLUDE_ASM(Npc*, "7bb60_len_41b0", peach_make_disguise_npc, s32 peachDisguise);
#endif

INCLUDE_ASM(s32, "7bb60_len_41b0", peach_disguise_check_overlaps);

