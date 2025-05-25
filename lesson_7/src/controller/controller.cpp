#include "controller.h"

bool Timer(uint32_t time)
{
#pragma HLS INLINE
    static uint32_t cnt = 0;

    cnt++;
    if (cnt == time) {
        cnt = 0;
        return 1;
    }
    return 0;
}

void Controller(bool debounce_done, bool *red, bool *yellow, bool *green)
{
    static SignalState state      = GREEN;
    SignalState        next_state = GREEN;

    // 信号の状態を保存する変数
    static bool green_  = 0;
    static bool yellow_ = 0;
    static bool red_    = 0;

    bool yellow_done = 0;
    bool red_done    = 0;

    // 状態遷移
    switch (state) {
        case GREEN:
            // ボタンが押されたら黄色に遷移
            if (debounce_done) {
                next_state = YELLOW;
            } else {
                next_state = GREEN;
            }
            green_  = 1;
            yellow_ = 0;
            red_    = 0;
            break;
        case YELLOW:
            yellow_done = Timer(YELLOW_TIME);
            // 黄色の時間が経過したら赤に遷移
            if (yellow_done) {
                next_state = RED;
            } else {
                next_state = YELLOW;
            }
            green_  = 0;
            yellow_ = 1;
            red_    = 0;
            break;
        case RED:
            red_done = Timer(RED_TIME);
            // 赤の時間が経過したら緑に遷移
            if (red_done) {
                next_state = GREEN;
            } else {
                next_state = RED;
            }
            green_  = 0;
            yellow_ = 0;
            red_    = 1;
            break;
        default:
            green_     = 1;
            yellow_    = 0;
            red_       = 0;
            next_state = GREEN;
            break;
    }

    // 次の状態を保存
    state = next_state;

    // 信号の状態を出力
    *red    = red_;
    *yellow = yellow_;
    *green  = green_;
}
