#include "../../../src/generator/generator.h"
#include <iostream>

void GoldenModel(bool *sample_en)
{
    static uint32_t counter = 0;

    bool sample_en_ = 0;

    if (counter == SAMPLE_PERIOD) {
        counter    = 0;
        sample_en_ = 1;
    } else {
        counter++;
        sample_en_ = 0;
    }

    *sample_en = sample_en_;
}

int main()
{
    bool sample_en        = 0;
    bool sample_en_golden = 0;
    bool result           = 0;

    // テストベンチ開始
    for (int i = 0; i < 1000000; i++) {
        Generator(&sample_en);
        GoldenModel(&sample_en_golden);

        // 結果の比較
        if (sample_en != sample_en_golden) {

            std::cout << "Failed " << i << ": DUT = " << sample_en << ", Golden = " << sample_en_golden << std::endl;
            result = 1;
        } else {
            std::cout << "Pass " << i << ": DUT = " << sample_en << ", Golden = " << sample_en_golden << std::endl;
        }
    }

    return result;
}
