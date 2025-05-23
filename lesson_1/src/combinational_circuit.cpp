#include "combinational_circuit.h"

void CombinationalCircuit(bool a, bool b, bool c, bool *d)
{
#pragma HLS INTERFACE ap_none port = a
#pragma HLS INTERFACE ap_none port = b
#pragma HLS INTERFACE ap_none port = c
#pragma HLS INTERFACE ap_none port = d
#pragma HLS INTERFACE ap_ctrl_none port = return

    *d = a && b && c;
}
