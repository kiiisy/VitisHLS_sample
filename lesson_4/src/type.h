#pragma once

#include <ap_int.h>
#include <ap_fixed.h>

struct IfMyType
{
    short data1;
    short data3;
    int data2;
};

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
                   double *out);
