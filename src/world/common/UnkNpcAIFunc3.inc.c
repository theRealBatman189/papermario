#include "common.h"
#include "npc.h"

void N(UnkNpcAIFunc3)(Evt* script, NpcAISettings* aiSettings, EnemyTerritoryThing* territory) {
    Npc* npc = get_npc_unsafe(script->owner1.enemy->npcID);

    if ((npc->duration <= 0) || (--npc->duration <= 0)) {
        if (npc->turnAroundYawAdjustment == 0) {
            npc->duration = 0;
            script->functionTemp[0] = 14;
        }
    }
}
