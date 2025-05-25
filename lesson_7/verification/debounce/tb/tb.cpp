#include "../../../src/debounce/debounce.h"
#include <iostream>
#include <vector>

void GoldenModel(bool btn, bool sample_en, bool *done)
{
    static DebounceState state      = DEBOUNCE_CNT;
    DebounceState        next_state = DEBOUNCE_CNT;

    static uint32_t cnt   = 0;
    bool            done_ = 0;

    switch (state) {
        case DEBOUNCE_CNT:
            // カウント開始
            if (sample_en) {
                if (btn) {
                    cnt++;
                    next_state = DEBOUNCE_CHECK;
                } else {
                    cnt        = 0;
                    next_state = DEBOUNCE_CNT;
                }
            } else {
                next_state = DEBOUNCE_CNT;
            }
            break;
        case DEBOUNCE_CHECK:
            if (cnt >= CNT_THRESHOLD) {
                next_state = DEBOUNCE_DONE;
            } else {
                next_state = DEBOUNCE_CNT;
            }
            break;
        case DEBOUNCE_DONE:
            done_      = 1;
            cnt        = 0;
            next_state = DEBOUNCE_LOCKED;
            break;
        case DEBOUNCE_LOCKED:
            if (!btn) {
                next_state = DEBOUNCE_CNT;
            } else {
                next_state = DEBOUNCE_LOCKED;
            }
            break;
        default:
            next_state = DEBOUNCE_CNT;
            break;
    }

    state = next_state;
    *done = done_;
}

int main()
{
    // テストベンチの入力信号
    std::vector<bool> btn = {
        0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    };

    bool sample_en = 0;  // サンプリング有効
    bool en, golden_en;

    // テストベンチ開始
    for (size_t i = 0; i < btn.size(); ++i) {
        if (i % 5 == 0) {
            sample_en = 1;  // サンプリング有効
        } else {
            sample_en = 0;  // サンプリング無効
        }

        Debounce(btn[i], sample_en, &en);
        GoldenModel(btn[i], sample_en, &golden_en);

        // 結果の比較
        if (en != golden_en) {
            std::cout << "Failed index " << i << ": DUT = " << en << ", Golden = " << golden_en << std::endl;
            return 1;  // エラー終了
        } else {
            std::cout << "Pass index " << i << ": DUT = " << en << ", Golden = " << golden_en << std::endl;
        }
    }

    return 0;
}
