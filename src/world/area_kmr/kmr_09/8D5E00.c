#include "kmr_09.h"

static char* N(exit_str_0) = "kmr_02";
static char* N(exit_str_1) = "kmr_06";

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

ApiStatus func_802414F8_8D72F8(Evt* script, s32 isInitialCall) {
    script->varTable[0] = get_enemy_safe(2);

    return ApiStatus_DONE2;
}
