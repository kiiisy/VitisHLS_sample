#include "traffic_light.h"
#include "./controller/controller.h"
#include "./debounce/debounce.h"
#include "./generator/generator.h"

void TrafficLight(bool btn, bool *red, bool *yellow, bool *green)
{
#pragma HLS INTERFACE ap_none    port = btn
#pragma HLS INTERFACE ap_none    port = red
#pragma HLS INTERFACE ap_none    port = yellow
#pragma HLS INTERFACE ap_none    port = green
#pragma HLS INTERFACE ap_ctrl_hs port = return

    bool green_  = 0;
    bool yellow_ = 0;
    bool red_    = 0;

    // 1msごとにサンプリングするための信号
    bool sample_en = 0;
    Generator(&sample_en);

    // ボタンのチャタリングを除去
    bool debounce_done = 0;
    Debounce(btn, sample_en, &debounce_done);

    // 状態遷移
    Controller(debounce_done, &red_, &yellow_, &green_);

    *red    = red_;
    *yellow = yellow_;
    *green  = green_;
}
