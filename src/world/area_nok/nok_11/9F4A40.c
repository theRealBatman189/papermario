#include "nok_11.h"

static char* N(exit_str_0) = "mac_01";
static char* N(exit_str_1) = "nok_12";

#include "world/common/set_script_owner_npc_anim.inc.c"

#include "world/common/UnkDistFunc.inc.c"

#include "world/common/UnkNpcAIFunc12.inc.c"

#include "world/common/set_script_owner_npc_col_height.inc.c"

#include "world/common/UnkNpcAIMainFunc5.inc.c"

#include "world/common/UnkNpcAIFunc23.inc.c"

#include "world/common/UnkNpcAIFunc35.inc.c"

#include "world/common/UnkNpcAIFunc1_copy.inc.c"

#include "world/common/UnkFunc4.inc.c"

#include "world/common/UnkNpcAIFunc2.inc.c"

#include "world/common/SixFloatsFunc.inc.c"

#include "world/common/UnkNpcAIFunc14.inc.c"

#include "world/common/UnkNpcAIFunc3.inc.c"

#include "world/common/UnkFunc6.inc.c"

#include "world/common/UnkFunc5.inc.c"

#include "world/common/UnkNpcAIMainFunc9.inc.c"

#include "common/foliage.inc.c"


INCLUDE_ASM(s32, "world/area_nok/nok_11/9F4A40", func_80241F08_9F6948);

ApiStatus func_80241F30_9F6970(Evt* script, s32 isInitialCall) {
    PlayerData* playerData = &gPlayerData;

    playerData->coins -= 100;

    return ApiStatus_DONE2;
}
