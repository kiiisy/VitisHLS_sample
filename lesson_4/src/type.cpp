#include "type.h"

int struct_function(IfMyType struct_data)
{
    int tmp2 = static_cast<int>(struct_data.data2 * 10);
    int tmp3 = struct_data.data3 * 3;

    return (struct_data.data1 > 10) ? tmp2 : tmp3;
}

void type_function(bool bool_data,
                   char char_data,
                   short short_data,
                   int int_data,
                   ap_int<10> apint_data,
                   long long_data,
                   float float_data,
                   double double_data,
                   ap_fixed<32, 20> apfixed_data,
                   IfMyType struct_data,
                   double *out)
{
#pragma HLS INTERFACE ap_none port = bool_data
#pragma HLS INTERFACE ap_none port = char_data
#pragma HLS INTERFACE ap_none port = short_data
#pragma HLS INTERFACE ap_none port = int_data
#pragma HLS INTERFACE ap_none port = apint_data
#pragma HLS INTERFACE ap_none port = long_data
#pragma HLS INTERFACE ap_none port = float_data
#pragma HLS INTERFACE ap_none port = double_data
#pragma HLS INTERFACE ap_none port = apfixed_data
#pragma HLS INTERFACE ap_none port = struct_data
#pragma HLS INTERFACE ap_none port = out
#pragma HLS INTERFACE ap_none port = return

    int tmp, tmp2, tmp3;
    long tmp4;
    float tmp5;
    double tmp6;

    // 処理はテキトー

    int result = struct_function(struct_data);

    tmp = (bool_data) ? static_cast<int>(char_data) : static_cast<int>(short_data);
    tmp2 = (tmp > 1) ? tmp : int_data * result;
    tmp3 = (tmp2 > 10) ? tmp2 : static_cast<int>(apint_data);
    tmp4 = (tmp3 > 100) ? static_cast<long>(tmp3) : long_data;
    tmp5 = (tmp4 > 1000) ? static_cast<float>(tmp4) : float_data;
    tmp6 = (tmp5 > 10000) ? static_cast<double>(tmp5) : double_data;
    *out = (tmp6 > 10000) ? tmp6 : static_cast<double>(apfixed_data);
}
