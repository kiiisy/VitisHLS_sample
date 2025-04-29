#include <iostream>
#include <vector>
#include "../src/sequential_circuit.h"

void GoldenModel(bool a, bool *c1, bool *c2)
{
    static bool ff1 = false;
    static bool ff2 = false;

    ff2 = ff1;
    ff1 = a;
    // ff1 = a;
    // ff2 = ff1;

    *c1 = ff1;
    *c2 = ff2;
}

int main()
{
    std::vector<bool> a_values = {true, true, false, false, true, false};

    // テストベンチ
    for (bool a : a_values)
    {
        bool c1, c2;
        SequentialCircuit(a, &c1, &c2);

        bool golden_c1, golden_c2;
        GoldenModel(a, &golden_c1, &golden_c2);

        std::cout << "Input: " << a << ", Output: (" << c1 << ", " << c2 << "), Golden: (" << golden_c1 << ", " << golden_c2 << ")" << std::endl;

        if (c1 != golden_c1 || c2 != golden_c2)
        {
            std::cout << "Mismatch!" << std::endl;
            return 1;
        }
    }
    std::cout << "All tests passed!" << std::endl;

    return 0;
}
