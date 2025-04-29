#include <iostream>
#include <vector>
#include "../src/combinational_circuit.h"

void GoldenModel(bool a, bool b, bool c, bool *d)
{
    *d = (a && b) && c;
}

int main()
{
    std::vector<bool> a_values = {true, false};
    std::vector<bool> b_values = {true, false};
    std::vector<bool> c_values = {true, false};
    bool d, d_golden;

    for (bool a : a_values)
    {
        for (bool b : b_values)
        {
            for (bool c : c_values)
            {
                CombinationalCircuit(a, b, c, &d);
                GoldenModel(a, b, c, &d_golden);

                if (d == d_golden)
                {
                    std::cout << "Test passed!" << std::endl;
                }
                else
                {
                    std::cout << "Test failed!" << std::endl;
                }
            }
        }
    }

    return 0;
}