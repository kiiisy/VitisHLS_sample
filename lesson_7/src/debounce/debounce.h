#pragma once

#include "ap_int.h"
#include <stdint.h>

#define CNT_THRESHOLD 5

enum DebounceState
{
    DEBOUNCE_CNT,
    DEBOUNCE_CHECK,
    DEBOUNCE_DONE,
    DEBOUNCE_LOCKED
};

void Debounce(bool btn, bool sample_en, bool *done);
