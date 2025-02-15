#include "tik_09.h"

#include "world/common/set_script_owner_npc_anim.inc.c"

#include "world/common/UnkDistFunc.inc.c"

#include "world/common/UnkNpcAIFunc12.inc.c"

#include "world/common/set_script_owner_npc_col_height.inc.c"

#include "world/common/UnkNpcAIMainFunc5.inc.c"

ApiStatus func_80241204_8833C4(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    EncounterStatus* encounterStatus = &gCurrentEncounter;
    s32 enemyCount = 0;
    s32 i, j;

    for (i = 0; i < encounterStatus->numEncounters; i++) {
        Encounter* temp = encounterStatus->encounterList[i];
        if (temp == NULL) {
            continue;
        }
        for (j = 0; j < temp->count; j++) {
            if (temp->enemy[j] != NULL) {
                enemyCount++;
            }
        }
    }

    evt_set_variable(script, *args++, enemyCount);
    return ApiStatus_DONE2;
}
