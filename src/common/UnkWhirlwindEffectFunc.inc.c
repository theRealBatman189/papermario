#include "common.h"
#include "effects.h"

BSS EffectWhirlwind N(effectStruct);
BSS static s32 padding[0x94];

ApiStatus N(UnkWhirlwindEffectFunc)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 var1 = evt_get_variable(script, *args++);
    s32 var2 = evt_get_variable(script, *args++);
    s32 var3 = evt_get_variable(script, *args++);
    s32 var4 = evt_get_variable(script, *args++);

    N(effectStruct).unk_28 = var1;
    N(effectStruct).unk_2C = var2 - 10.0f;
    N(effectStruct).unk_30 = var3;

    fx_46(6, &N(effectStruct), 1.0f, var4);
    return ApiStatus_DONE2;
}
