#include "memory.h"

void Add(int *bram1, int *bram2, int *bram_tmp)
{
Add:
    for (int i = 0; i < BRAM_SIZE; i++)
    {
#pragma HLS PIPELINE II = 1
        bram_tmp[i] = bram1[i] + bram2[i];
    }
}

void Read(int *bram_tmp, int *bram3)
{
Read:
    for (int i = 0; i < BRAM_SIZE; i++)
    {
#pragma HLS PIPELINE II = 1
        bram3[i] = bram_tmp[i];
    }
}

void Memory(int bram1[BRAM_SIZE], int bram2[BRAM_SIZE], int bram3[BRAM_SIZE])
{
#pragma HLS INTERFACE ap_memory port = bram1
#pragma HLS INTERFACE ap_memory port = bram2
#pragma HLS INTERFACE ap_memory port = bram3
#pragma HLS INTERFACE ap_none port = return

    int bram_tmp[BRAM_SIZE];
#pragma HLS BIND_STORAGE variable = bram_tmp type = RAM_1WNR impl = BRAM

    Add(bram1, bram2, bram_tmp);
    Read(bram_tmp, bram3);
}
