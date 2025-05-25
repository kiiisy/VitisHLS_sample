#include "generator.h"

void Generator(bool *sample_en)
{
    static ap_uint<COUNTER_WIDTH> counter = 0;

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
