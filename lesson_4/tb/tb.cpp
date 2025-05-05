#include <iostream>
#include "../src/type.h"

void golden_model(bool bool_data,
                  char char_data,
                  short short_data,
                  int int_data,
                  int apint_data,
                  long long_data,
                  float float_data,
                  double double_data,
                  double apfixed_data,
                  IfMyType struct_data,
                  double *out)
{
    int tmp, tmp2, tmp3;
    long tmp4;
    float tmp5;
    double tmp6;

    int ten_times_short = static_cast<int>(struct_data.data2 * 10);
    int three_times_int = struct_data.data3 * 3;
    int result = (struct_data.data1 > 10) ? ten_times_short : three_times_int;

    tmp = (bool_data) ? static_cast<int>(char_data) : static_cast<int>(short_data);
    tmp2 = (tmp > 1) ? tmp : int_data * result;
    tmp3 = (tmp2 > 10) ? tmp2 : apint_data;
    tmp4 = (tmp3 > 100) ? static_cast<long>(tmp3) : long_data;
    tmp5 = (tmp4 > 1000) ? static_cast<float>(tmp4) : float_data;
    tmp6 = (tmp5 > 10000) ? static_cast<double>(tmp5) : double_data;
    *out = (tmp6 > 100000) ? tmp6 : apfixed_data;
}

int main()
{
    // テストデータ
    // 値はテキトー(合成の確認をしたいだけなので)
    bool bool_data = true;
    char char_data = 1;
    short short_data = 5;
    int int_data = 10;
    ap_int<10> apint_data_dut = 1024;
    int apint_data = 1024;
    long long_data = 20;
    float float_data = 10.5;
    double double_data = 5.5;
    ap_fixed<32, 20> apfixed_data_dut = 3.14;
    double apfixed_data = 3.14;
    IfMyType struct_data;
    struct_data.data1 = 5;
    struct_data.data2 = 2;
    struct_data.data3 = 3;
    double out, out_golden;

    // テストベンチ
    type_function(bool_data,
                  char_data,
                  short_data,
                  int_data,
                  apint_data_dut,
                  long_data,
                  float_data,
                  double_data,
                  apfixed_data_dut,
                  struct_data,
                  &out);
    golden_model(bool_data,
                 char_data,
                 short_data,
                 int_data,
                 apint_data,
                 long_data,
                 float_data,
                 double_data,
                 apfixed_data,
                 struct_data,
                 &out_golden);

    // 結果の比較
    bool result = true;
    if (out != out_golden)
    {
        std::cout << "Output mismatch: " << out << " != " << out_golden << std::endl;
        result = false;
    }

    if (result)
    {
        std::cout << "Test passed!" << std::endl;
    }
    else
    {
        std::cout << "Test failed!" << std::endl;
    }

    return 0;
}
