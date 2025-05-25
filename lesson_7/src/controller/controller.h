#pragma once

#include <stdint.h>

#ifdef __SYNTHESIS__
#define YELLOW_TIME 249999999  // 5秒 (20ns * 250000000) 249999999
#define RED_TIME    499999999  // 10秒 (20ns * 500000000) 499999999
#else
#define YELLOW_TIME 24
#define RED_TIME    49
#endif

enum SignalState
{
    GREEN,
    YELLOW,
    RED
};

void Controller(bool debounce_done, bool *red, bool *yellow, bool *green);
