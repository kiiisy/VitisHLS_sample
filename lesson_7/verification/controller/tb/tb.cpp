#include "../../../src/controller/controller.h"
#include <iostream>

bool TimerTB(uint32_t time)
{
    static uint32_t cnt = 0;

    cnt++;
    if (cnt == time) {
        cnt = 0;
        return 1;
    }
    return 0;
}

void GoldenModel(bool debounce_done, bool *red, bool *yellow, bool *green)
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
            yellow_done = TimerTB(YELLOW_TIME);
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
            red_done = TimerTB(RED_TIME);
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
            break;
    }

    state = next_state;

    *green  = green_;
    *yellow = yellow_;
    *red    = red_;
}

int main()
{
    bool debounce_done = 0;
    bool red           = 0;
    bool yellow        = 0;
    bool green         = 0;
    bool red_golden    = 0;
    bool yellow_golden = 0;
    bool green_golden  = 0;

    bool result = 0;

    // テストベンチ開始
    for (int i = 0; i < 100; i++) {
        if (i == 10) {
            debounce_done = 1;  // ボタン押下
        } else if (i == 20) {
            debounce_done = 1;  // ボタン押下だが、黄色の時間中なので無視
        } else {
            debounce_done = 0;  // ボタン押下しない
        }

        Controller(debounce_done, &red, &yellow, &green);
        GoldenModel(debounce_done, &red_golden, &yellow_golden, &green_golden);

        // 結果の比較
        if (red != red_golden || yellow != yellow_golden || green != green_golden) {
            std::cout << "Failed time " << i << ": DUT (" << red << ", " << yellow << ", " << green << ", "
                      << debounce_done << "), Golden (" << red_golden << ", " << yellow_golden << ", " << green_golden
                      << ", " << debounce_done << ")" << std::endl;

            result = 1;  // エラー終了
        } else {
            std::cout << "Pass time " << i << ": DUT (" << red << ", " << yellow << ", " << green << ", "
                      << debounce_done << "), Golden (" << red_golden << ", " << yellow_golden << ", " << green_golden
                      << ", " << debounce_done << ")" << std::endl;
        }
    }

    return result;
}
