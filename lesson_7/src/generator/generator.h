#pragma once

#include "ap_int.h"
#include <stdint.h>

#define COUNTER_WIDTH 17

#ifdef __SYNTHESIS__
#define SAMPLE_PERIOD 49999  // 0〜49999 → 100000クロック = 1ms
#else
#define SAMPLE_PERIOD 4
#endif

void Generator(bool *sample_en);
