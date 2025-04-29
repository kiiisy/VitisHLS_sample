#include "sequential_circuit.h"

void SequentialCircuit(bool a, bool *c1, bool *c2)
{
#pragma HLS INTERFACE ap_none port = a
#pragma HLS INTERFACE ap_none port = c1
#pragma HLS INTERFACE ap_none port = c2
#pragma HLS INTERFACE ap_ctrl_none port = return

    static bool ff1 = false;
    static bool ff2 = false;

    ff2 = ff1;
    ff1 = a;
    // ff1 = a;
    // ff2 = ff1;

    *c1 = ff1;
    *c2 = ff2;
}
