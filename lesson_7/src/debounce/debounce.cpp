#include "debounce.h"

void Debounce(bool btn, bool sample_en, bool *done)
{
    static DebounceState state      = DEBOUNCE_CNT;
    DebounceState        next_state = DEBOUNCE_CNT;

    static uint32_t cnt   = 0;
    bool            done_ = 0;

    // 状態遷移
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
            // カウント終了
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
            // 長押しを検出
            // ボタンが離されたらロック解除
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
