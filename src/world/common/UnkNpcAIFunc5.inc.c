#include "common.h"
#include "npc.h"

void N(UnkNpcAIFunc5)(Evt* script) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    npc->duration--;
    if (npc->duration <= 0) {
        enemy->varTable[0] = 0;
        script->functionTemp[0] = 12;
    }
}
