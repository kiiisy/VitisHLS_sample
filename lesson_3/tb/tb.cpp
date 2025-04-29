#include <iostream>
#include "../src/memory.h"

void GoldenModel(int *din1, int *din2, int *dout)
{
    for (int i = 0; i < BRAM_SIZE; i++)
    {
        dout[i] = din1[i] + din2[i];
    }
}

int main()
{
    int din1[BRAM_SIZE] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    int din2[BRAM_SIZE] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    int dout[BRAM_SIZE], dout_golden[BRAM_SIZE];

    // テストベンチ
    Memory(din1, din2, dout);
    GoldenModel(din1, din2, dout_golden);

    // 結果の比較
    bool result = true;
    for (int i = 0; i < BRAM_SIZE; i++)
    {
        // データの比較
        std::cout << "dout[" << i << "] = " << dout[i] << ", dout_golden[" << i << "] = " << dout_golden[i] << std::endl;

        if (dout[i] != dout_golden[i])
        {
            std::cout << "Mismatch at index " << i << ": expected " << dout_golden[i] << ", got " << dout[i] << std::endl;
            result = false;
        }
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
