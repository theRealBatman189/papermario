#include "common.h"
#include "npc.h"

ApiStatus N(UnkFunc11)(Evt* script, s32 isInitialCall) {
    s32 var = evt_get_variable(script, *script->ptrReadPos);
    PlayerStatus* playerStatus = &gPlayerStatus;
    CollisionStatus* collisionStatus = &gCollisionStatus;

    if (((collisionStatus->pushingAgainstWall != var) && (playerStatus->actionState == 20)) ||
        playerStatus->enableCollisionOverlapsCheck || playerStatus->inputEnabledCounter) {
        set_action_state(0);
        script->varTable[0] = 0;
        return ApiStatus_DONE2;
    }

    if (collisionStatus->pushingAgainstWall != var) {
        script->varTable[0] = 0;
    } else if ((playerStatus->actionState != 20) && (playerStatus->actionState != 1) &&
               (playerStatus->actionState != 2)) {
        script->varTable[0] = 0;
    } else if (playerStatus->animFlags & 1) {
        script->varTable[0] = 0;
    } else {
        script->varTable[0] = 1;
    }

    return ApiStatus_DONE2;
}
