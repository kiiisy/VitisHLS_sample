// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu May 22 14:09:13 2025
// Host        : 2df93fe410a0 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/work/2025/02_vitis_hls/qiita/lesson_7/hw/traffic_light/traffic_light.gen/sources_1/bd/design_1/ip/design_1_TrafficLight_0_0/design_1_TrafficLight_0_0_sim_netlist.v
// Design      : design_1_TrafficLight_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_TrafficLight_0_0,TrafficLight,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "TrafficLight,Vivado 2023.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_TrafficLight_0_0
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    btn,
    red,
    yellow,
    green);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 btn DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME btn, LAYERED_METADATA undef" *) input [0:0]btn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 red DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME red, LAYERED_METADATA undef" *) output red;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 yellow DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME yellow, LAYERED_METADATA undef" *) output yellow;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 green DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME green, LAYERED_METADATA undef" *) output green;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_start;
  wire [0:0]btn;
  wire green;
  wire red;
  wire yellow;

  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "1'b1" *) 
  design_1_TrafficLight_0_0_TrafficLight inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(1'b0),
        .ap_start(ap_start),
        .btn(btn),
        .green(green),
        .red(red),
        .yellow(yellow));
endmodule

(* ORIG_REF_NAME = "TrafficLight" *) (* ap_ST_fsm_state1 = "1'b1" *) (* hls_module = "yes" *) 
module design_1_TrafficLight_0_0_TrafficLight
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    btn,
    red,
    yellow,
    green);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [0:0]btn;
  output [0:0]red;
  output [0:0]yellow;
  output [0:0]green;

  wire ap_clk;
  wire ap_idle;
  wire ap_start;
  wire [0:0]btn;
  wire \cnt[0]_i_12_n_0 ;
  wire \cnt[0]_i_13_n_0 ;
  wire \cnt[0]_i_14_n_0 ;
  wire \cnt[0]_i_15_n_0 ;
  wire \cnt[0]_i_16_n_0 ;
  wire \cnt[0]_i_17_n_0 ;
  wire \cnt[0]_i_18_n_0 ;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire \cnt[0]_i_8_n_0 ;
  wire \cnt[0]_i_9_n_0 ;
  wire cnt_1;
  wire cnt_10;
  wire \cnt_1[0]_i_4_n_0 ;
  wire \cnt_1[0]_i_5_n_0 ;
  wire \cnt_1[0]_i_6_n_0 ;
  wire [31:0]cnt_1_reg;
  wire \cnt_1_reg[0]_i_3_n_0 ;
  wire \cnt_1_reg[0]_i_3_n_1 ;
  wire \cnt_1_reg[0]_i_3_n_2 ;
  wire \cnt_1_reg[0]_i_3_n_3 ;
  wire \cnt_1_reg[0]_i_3_n_4 ;
  wire \cnt_1_reg[0]_i_3_n_5 ;
  wire \cnt_1_reg[0]_i_3_n_6 ;
  wire \cnt_1_reg[0]_i_3_n_7 ;
  wire \cnt_1_reg[12]_i_1_n_0 ;
  wire \cnt_1_reg[12]_i_1_n_1 ;
  wire \cnt_1_reg[12]_i_1_n_2 ;
  wire \cnt_1_reg[12]_i_1_n_3 ;
  wire \cnt_1_reg[12]_i_1_n_4 ;
  wire \cnt_1_reg[12]_i_1_n_5 ;
  wire \cnt_1_reg[12]_i_1_n_6 ;
  wire \cnt_1_reg[12]_i_1_n_7 ;
  wire \cnt_1_reg[16]_i_1_n_0 ;
  wire \cnt_1_reg[16]_i_1_n_1 ;
  wire \cnt_1_reg[16]_i_1_n_2 ;
  wire \cnt_1_reg[16]_i_1_n_3 ;
  wire \cnt_1_reg[16]_i_1_n_4 ;
  wire \cnt_1_reg[16]_i_1_n_5 ;
  wire \cnt_1_reg[16]_i_1_n_6 ;
  wire \cnt_1_reg[16]_i_1_n_7 ;
  wire \cnt_1_reg[20]_i_1_n_0 ;
  wire \cnt_1_reg[20]_i_1_n_1 ;
  wire \cnt_1_reg[20]_i_1_n_2 ;
  wire \cnt_1_reg[20]_i_1_n_3 ;
  wire \cnt_1_reg[20]_i_1_n_4 ;
  wire \cnt_1_reg[20]_i_1_n_5 ;
  wire \cnt_1_reg[20]_i_1_n_6 ;
  wire \cnt_1_reg[20]_i_1_n_7 ;
  wire \cnt_1_reg[24]_i_1_n_0 ;
  wire \cnt_1_reg[24]_i_1_n_1 ;
  wire \cnt_1_reg[24]_i_1_n_2 ;
  wire \cnt_1_reg[24]_i_1_n_3 ;
  wire \cnt_1_reg[24]_i_1_n_4 ;
  wire \cnt_1_reg[24]_i_1_n_5 ;
  wire \cnt_1_reg[24]_i_1_n_6 ;
  wire \cnt_1_reg[24]_i_1_n_7 ;
  wire \cnt_1_reg[28]_i_1_n_1 ;
  wire \cnt_1_reg[28]_i_1_n_2 ;
  wire \cnt_1_reg[28]_i_1_n_3 ;
  wire \cnt_1_reg[28]_i_1_n_4 ;
  wire \cnt_1_reg[28]_i_1_n_5 ;
  wire \cnt_1_reg[28]_i_1_n_6 ;
  wire \cnt_1_reg[28]_i_1_n_7 ;
  wire \cnt_1_reg[4]_i_1_n_0 ;
  wire \cnt_1_reg[4]_i_1_n_1 ;
  wire \cnt_1_reg[4]_i_1_n_2 ;
  wire \cnt_1_reg[4]_i_1_n_3 ;
  wire \cnt_1_reg[4]_i_1_n_4 ;
  wire \cnt_1_reg[4]_i_1_n_5 ;
  wire \cnt_1_reg[4]_i_1_n_6 ;
  wire \cnt_1_reg[4]_i_1_n_7 ;
  wire \cnt_1_reg[8]_i_1_n_0 ;
  wire \cnt_1_reg[8]_i_1_n_1 ;
  wire \cnt_1_reg[8]_i_1_n_2 ;
  wire \cnt_1_reg[8]_i_1_n_3 ;
  wire \cnt_1_reg[8]_i_1_n_4 ;
  wire \cnt_1_reg[8]_i_1_n_5 ;
  wire \cnt_1_reg[8]_i_1_n_6 ;
  wire \cnt_1_reg[8]_i_1_n_7 ;
  wire [31:0]cnt_reg;
  wire \cnt_reg[0]_i_10_n_0 ;
  wire \cnt_reg[0]_i_10_n_1 ;
  wire \cnt_reg[0]_i_10_n_2 ;
  wire \cnt_reg[0]_i_10_n_3 ;
  wire \cnt_reg[0]_i_11_n_0 ;
  wire \cnt_reg[0]_i_11_n_1 ;
  wire \cnt_reg[0]_i_11_n_2 ;
  wire \cnt_reg[0]_i_11_n_3 ;
  wire \cnt_reg[0]_i_19_n_0 ;
  wire \cnt_reg[0]_i_19_n_1 ;
  wire \cnt_reg[0]_i_19_n_2 ;
  wire \cnt_reg[0]_i_19_n_3 ;
  wire \cnt_reg[0]_i_20_n_0 ;
  wire \cnt_reg[0]_i_20_n_1 ;
  wire \cnt_reg[0]_i_20_n_2 ;
  wire \cnt_reg[0]_i_20_n_3 ;
  wire \cnt_reg[0]_i_21_n_0 ;
  wire \cnt_reg[0]_i_21_n_1 ;
  wire \cnt_reg[0]_i_21_n_2 ;
  wire \cnt_reg[0]_i_21_n_3 ;
  wire \cnt_reg[0]_i_22_n_0 ;
  wire \cnt_reg[0]_i_22_n_1 ;
  wire \cnt_reg[0]_i_22_n_2 ;
  wire \cnt_reg[0]_i_22_n_3 ;
  wire \cnt_reg[0]_i_23_n_2 ;
  wire \cnt_reg[0]_i_23_n_3 ;
  wire \cnt_reg[0]_i_24_n_0 ;
  wire \cnt_reg[0]_i_24_n_1 ;
  wire \cnt_reg[0]_i_24_n_2 ;
  wire \cnt_reg[0]_i_24_n_3 ;
  wire \cnt_reg[0]_i_3_n_0 ;
  wire \cnt_reg[0]_i_3_n_1 ;
  wire \cnt_reg[0]_i_3_n_2 ;
  wire \cnt_reg[0]_i_3_n_3 ;
  wire \cnt_reg[0]_i_3_n_4 ;
  wire \cnt_reg[0]_i_3_n_5 ;
  wire \cnt_reg[0]_i_3_n_6 ;
  wire \cnt_reg[0]_i_3_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[20]_i_1_n_0 ;
  wire \cnt_reg[20]_i_1_n_1 ;
  wire \cnt_reg[20]_i_1_n_2 ;
  wire \cnt_reg[20]_i_1_n_3 ;
  wire \cnt_reg[20]_i_1_n_4 ;
  wire \cnt_reg[20]_i_1_n_5 ;
  wire \cnt_reg[20]_i_1_n_6 ;
  wire \cnt_reg[20]_i_1_n_7 ;
  wire \cnt_reg[24]_i_1_n_0 ;
  wire \cnt_reg[24]_i_1_n_1 ;
  wire \cnt_reg[24]_i_1_n_2 ;
  wire \cnt_reg[24]_i_1_n_3 ;
  wire \cnt_reg[24]_i_1_n_4 ;
  wire \cnt_reg[24]_i_1_n_5 ;
  wire \cnt_reg[24]_i_1_n_6 ;
  wire \cnt_reg[24]_i_1_n_7 ;
  wire \cnt_reg[28]_i_1_n_1 ;
  wire \cnt_reg[28]_i_1_n_2 ;
  wire \cnt_reg[28]_i_1_n_3 ;
  wire \cnt_reg[28]_i_1_n_4 ;
  wire \cnt_reg[28]_i_1_n_5 ;
  wire \cnt_reg[28]_i_1_n_6 ;
  wire \cnt_reg[28]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [16:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [0:0]green;
  wire [31:0]grp_fu_193_p2;
  wire [0:0]red;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[1]_i_7_n_0 ;
  wire \state[1]_i_8_n_0 ;
  wire \state[1]_i_9_n_0 ;
  wire [1:0]state_1;
  wire \state_1[0]_i_1_n_0 ;
  wire \state_1[0]_i_2_n_0 ;
  wire \state_1[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire [0:0]yellow;
  wire [3:3]\NLW_cnt_1_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[0]_i_23_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[0]_i_23_O_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[16]_i_1_O_UNCONNECTED ;

  assign ap_done = ap_start;
  assign ap_ready = ap_start;
  LUT1 #(
    .INIT(2'h1)) 
    ap_idle_INST_0
       (.I0(ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h0000002000000828)) 
    \cnt[0]_i_1 
       (.I0(ap_start),
        .I1(state_1[1]),
        .I2(state_1[0]),
        .I3(\cnt[0]_i_4_n_0 ),
        .I4(\cnt[0]_i_5_n_0 ),
        .I5(\cnt[0]_i_6_n_0 ),
        .O(\cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[0]_i_12 
       (.I0(grp_fu_193_p2[23]),
        .I1(grp_fu_193_p2[5]),
        .I2(grp_fu_193_p2[26]),
        .I3(grp_fu_193_p2[30]),
        .O(\cnt[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cnt[0]_i_13 
       (.I0(grp_fu_193_p2[1]),
        .I1(grp_fu_193_p2[31]),
        .I2(grp_fu_193_p2[27]),
        .I3(grp_fu_193_p2[11]),
        .O(\cnt[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt[0]_i_14 
       (.I0(grp_fu_193_p2[13]),
        .I1(grp_fu_193_p2[4]),
        .I2(grp_fu_193_p2[6]),
        .O(\cnt[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[0]_i_15 
       (.I0(grp_fu_193_p2[2]),
        .I1(grp_fu_193_p2[3]),
        .I2(grp_fu_193_p2[18]),
        .I3(grp_fu_193_p2[8]),
        .O(\cnt[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \cnt[0]_i_16 
       (.I0(grp_fu_193_p2[29]),
        .I1(grp_fu_193_p2[20]),
        .I2(grp_fu_193_p2[22]),
        .I3(cnt_reg[0]),
        .O(\cnt[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \cnt[0]_i_17 
       (.I0(grp_fu_193_p2[12]),
        .I1(grp_fu_193_p2[25]),
        .I2(grp_fu_193_p2[10]),
        .I3(grp_fu_193_p2[28]),
        .I4(grp_fu_193_p2[21]),
        .I5(grp_fu_193_p2[7]),
        .O(\cnt[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[0]_i_18 
       (.I0(grp_fu_193_p2[14]),
        .I1(grp_fu_193_p2[19]),
        .I2(grp_fu_193_p2[16]),
        .I3(grp_fu_193_p2[15]),
        .O(\cnt[0]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \cnt[0]_i_2 
       (.I0(state_1[0]),
        .I1(state_1[1]),
        .I2(ap_start),
        .O(\cnt[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \cnt[0]_i_4 
       (.I0(\cnt[0]_i_8_n_0 ),
        .I1(\cnt[0]_i_9_n_0 ),
        .I2(grp_fu_193_p2[19]),
        .I3(grp_fu_193_p2[15]),
        .I4(grp_fu_193_p2[14]),
        .O(\cnt[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \cnt[0]_i_5 
       (.I0(\cnt[0]_i_12_n_0 ),
        .I1(\cnt[0]_i_13_n_0 ),
        .I2(\cnt[0]_i_14_n_0 ),
        .I3(\cnt[0]_i_15_n_0 ),
        .I4(\cnt[0]_i_16_n_0 ),
        .O(\cnt[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \cnt[0]_i_6 
       (.I0(\cnt[0]_i_17_n_0 ),
        .I1(\cnt[0]_i_18_n_0 ),
        .I2(grp_fu_193_p2[24]),
        .I3(grp_fu_193_p2[17]),
        .I4(grp_fu_193_p2[9]),
        .O(\cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_7 
       (.I0(cnt_reg[0]),
        .O(grp_fu_193_p2[0]));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \cnt[0]_i_8 
       (.I0(grp_fu_193_p2[28]),
        .I1(grp_fu_193_p2[10]),
        .I2(grp_fu_193_p2[25]),
        .I3(grp_fu_193_p2[17]),
        .I4(grp_fu_193_p2[24]),
        .I5(grp_fu_193_p2[12]),
        .O(\cnt[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \cnt[0]_i_9 
       (.I0(grp_fu_193_p2[21]),
        .I1(grp_fu_193_p2[9]),
        .I2(grp_fu_193_p2[16]),
        .I3(grp_fu_193_p2[7]),
        .O(\cnt[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0F0000000F000100)) 
    \cnt_1[0]_i_1 
       (.I0(\cnt_1[0]_i_4_n_0 ),
        .I1(\cnt_1[0]_i_5_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(ap_start),
        .I4(\state_reg_n_0_[1] ),
        .I5(btn),
        .O(cnt_1));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \cnt_1[0]_i_2 
       (.I0(\cnt_1[0]_i_4_n_0 ),
        .I1(\cnt_1[0]_i_5_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(ap_start),
        .I4(\state_reg_n_0_[0] ),
        .I5(btn),
        .O(cnt_10));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_1[0]_i_4 
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(counter_reg[8]),
        .I3(counter_reg[6]),
        .I4(counter_reg[0]),
        .I5(counter_reg[1]),
        .O(\cnt_1[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \cnt_1[0]_i_5 
       (.I0(counter_reg[14]),
        .I1(counter_reg[9]),
        .I2(\counter[8]_i_4_n_0 ),
        .I3(counter_reg[15]),
        .O(\cnt_1[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_1[0]_i_6 
       (.I0(cnt_1_reg[0]),
        .O(\cnt_1[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[0] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[0]_i_3_n_7 ),
        .Q(cnt_1_reg[0]),
        .R(cnt_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_1_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cnt_1_reg[0]_i_3_n_0 ,\cnt_1_reg[0]_i_3_n_1 ,\cnt_1_reg[0]_i_3_n_2 ,\cnt_1_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_1_reg[0]_i_3_n_4 ,\cnt_1_reg[0]_i_3_n_5 ,\cnt_1_reg[0]_i_3_n_6 ,\cnt_1_reg[0]_i_3_n_7 }),
        .S({cnt_1_reg[3:1],\cnt_1[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[10] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[8]_i_1_n_5 ),
        .Q(cnt_1_reg[10]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[11] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[8]_i_1_n_4 ),
        .Q(cnt_1_reg[11]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[12] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[12]_i_1_n_7 ),
        .Q(cnt_1_reg[12]),
        .R(cnt_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_1_reg[12]_i_1 
       (.CI(\cnt_1_reg[8]_i_1_n_0 ),
        .CO({\cnt_1_reg[12]_i_1_n_0 ,\cnt_1_reg[12]_i_1_n_1 ,\cnt_1_reg[12]_i_1_n_2 ,\cnt_1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[12]_i_1_n_4 ,\cnt_1_reg[12]_i_1_n_5 ,\cnt_1_reg[12]_i_1_n_6 ,\cnt_1_reg[12]_i_1_n_7 }),
        .S(cnt_1_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[13] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[12]_i_1_n_6 ),
        .Q(cnt_1_reg[13]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[14] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[12]_i_1_n_5 ),
        .Q(cnt_1_reg[14]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[15] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[12]_i_1_n_4 ),
        .Q(cnt_1_reg[15]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[16] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[16]_i_1_n_7 ),
        .Q(cnt_1_reg[16]),
        .R(cnt_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_1_reg[16]_i_1 
       (.CI(\cnt_1_reg[12]_i_1_n_0 ),
        .CO({\cnt_1_reg[16]_i_1_n_0 ,\cnt_1_reg[16]_i_1_n_1 ,\cnt_1_reg[16]_i_1_n_2 ,\cnt_1_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[16]_i_1_n_4 ,\cnt_1_reg[16]_i_1_n_5 ,\cnt_1_reg[16]_i_1_n_6 ,\cnt_1_reg[16]_i_1_n_7 }),
        .S(cnt_1_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[17] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[16]_i_1_n_6 ),
        .Q(cnt_1_reg[17]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[18] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[16]_i_1_n_5 ),
        .Q(cnt_1_reg[18]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[19] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[16]_i_1_n_4 ),
        .Q(cnt_1_reg[19]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[1] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[0]_i_3_n_6 ),
        .Q(cnt_1_reg[1]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[20] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[20]_i_1_n_7 ),
        .Q(cnt_1_reg[20]),
        .R(cnt_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_1_reg[20]_i_1 
       (.CI(\cnt_1_reg[16]_i_1_n_0 ),
        .CO({\cnt_1_reg[20]_i_1_n_0 ,\cnt_1_reg[20]_i_1_n_1 ,\cnt_1_reg[20]_i_1_n_2 ,\cnt_1_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[20]_i_1_n_4 ,\cnt_1_reg[20]_i_1_n_5 ,\cnt_1_reg[20]_i_1_n_6 ,\cnt_1_reg[20]_i_1_n_7 }),
        .S(cnt_1_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[21] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[20]_i_1_n_6 ),
        .Q(cnt_1_reg[21]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[22] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[20]_i_1_n_5 ),
        .Q(cnt_1_reg[22]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[23] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[20]_i_1_n_4 ),
        .Q(cnt_1_reg[23]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[24] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[24]_i_1_n_7 ),
        .Q(cnt_1_reg[24]),
        .R(cnt_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_1_reg[24]_i_1 
       (.CI(\cnt_1_reg[20]_i_1_n_0 ),
        .CO({\cnt_1_reg[24]_i_1_n_0 ,\cnt_1_reg[24]_i_1_n_1 ,\cnt_1_reg[24]_i_1_n_2 ,\cnt_1_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[24]_i_1_n_4 ,\cnt_1_reg[24]_i_1_n_5 ,\cnt_1_reg[24]_i_1_n_6 ,\cnt_1_reg[24]_i_1_n_7 }),
        .S(cnt_1_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[25] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[24]_i_1_n_6 ),
        .Q(cnt_1_reg[25]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[26] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[24]_i_1_n_5 ),
        .Q(cnt_1_reg[26]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[27] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[24]_i_1_n_4 ),
        .Q(cnt_1_reg[27]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[28] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[28]_i_1_n_7 ),
        .Q(cnt_1_reg[28]),
        .R(cnt_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_1_reg[28]_i_1 
       (.CI(\cnt_1_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_1_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_1_reg[28]_i_1_n_1 ,\cnt_1_reg[28]_i_1_n_2 ,\cnt_1_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[28]_i_1_n_4 ,\cnt_1_reg[28]_i_1_n_5 ,\cnt_1_reg[28]_i_1_n_6 ,\cnt_1_reg[28]_i_1_n_7 }),
        .S(cnt_1_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[29] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[28]_i_1_n_6 ),
        .Q(cnt_1_reg[29]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[2] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[0]_i_3_n_5 ),
        .Q(cnt_1_reg[2]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[30] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[28]_i_1_n_5 ),
        .Q(cnt_1_reg[30]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[31] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[28]_i_1_n_4 ),
        .Q(cnt_1_reg[31]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[3] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[0]_i_3_n_4 ),
        .Q(cnt_1_reg[3]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[4] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[4]_i_1_n_7 ),
        .Q(cnt_1_reg[4]),
        .R(cnt_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_1_reg[4]_i_1 
       (.CI(\cnt_1_reg[0]_i_3_n_0 ),
        .CO({\cnt_1_reg[4]_i_1_n_0 ,\cnt_1_reg[4]_i_1_n_1 ,\cnt_1_reg[4]_i_1_n_2 ,\cnt_1_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[4]_i_1_n_4 ,\cnt_1_reg[4]_i_1_n_5 ,\cnt_1_reg[4]_i_1_n_6 ,\cnt_1_reg[4]_i_1_n_7 }),
        .S(cnt_1_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[5] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[4]_i_1_n_6 ),
        .Q(cnt_1_reg[5]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[6] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[4]_i_1_n_5 ),
        .Q(cnt_1_reg[6]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[7] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[4]_i_1_n_4 ),
        .Q(cnt_1_reg[7]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[8] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[8]_i_1_n_7 ),
        .Q(cnt_1_reg[8]),
        .R(cnt_1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_1_reg[8]_i_1 
       (.CI(\cnt_1_reg[4]_i_1_n_0 ),
        .CO({\cnt_1_reg[8]_i_1_n_0 ,\cnt_1_reg[8]_i_1_n_1 ,\cnt_1_reg[8]_i_1_n_2 ,\cnt_1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[8]_i_1_n_4 ,\cnt_1_reg[8]_i_1_n_5 ,\cnt_1_reg[8]_i_1_n_6 ,\cnt_1_reg[8]_i_1_n_7 }),
        .S(cnt_1_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[9] 
       (.C(ap_clk),
        .CE(cnt_10),
        .D(\cnt_1_reg[8]_i_1_n_6 ),
        .Q(cnt_1_reg[9]),
        .R(cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[0]_i_3_n_7 ),
        .Q(cnt_reg[0]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[0]_i_10 
       (.CI(\cnt_reg[0]_i_11_n_0 ),
        .CO({\cnt_reg[0]_i_10_n_0 ,\cnt_reg[0]_i_10_n_1 ,\cnt_reg[0]_i_10_n_2 ,\cnt_reg[0]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_193_p2[20:17]),
        .S(cnt_reg[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[0]_i_11 
       (.CI(\cnt_reg[0]_i_20_n_0 ),
        .CO({\cnt_reg[0]_i_11_n_0 ,\cnt_reg[0]_i_11_n_1 ,\cnt_reg[0]_i_11_n_2 ,\cnt_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_193_p2[16:13]),
        .S(cnt_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[0]_i_19 
       (.CI(\cnt_reg[0]_i_10_n_0 ),
        .CO({\cnt_reg[0]_i_19_n_0 ,\cnt_reg[0]_i_19_n_1 ,\cnt_reg[0]_i_19_n_2 ,\cnt_reg[0]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_193_p2[24:21]),
        .S(cnt_reg[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[0]_i_20 
       (.CI(\cnt_reg[0]_i_22_n_0 ),
        .CO({\cnt_reg[0]_i_20_n_0 ,\cnt_reg[0]_i_20_n_1 ,\cnt_reg[0]_i_20_n_2 ,\cnt_reg[0]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_193_p2[12:9]),
        .S(cnt_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[0]_i_21 
       (.CI(\cnt_reg[0]_i_19_n_0 ),
        .CO({\cnt_reg[0]_i_21_n_0 ,\cnt_reg[0]_i_21_n_1 ,\cnt_reg[0]_i_21_n_2 ,\cnt_reg[0]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_193_p2[28:25]),
        .S(cnt_reg[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[0]_i_22 
       (.CI(\cnt_reg[0]_i_24_n_0 ),
        .CO({\cnt_reg[0]_i_22_n_0 ,\cnt_reg[0]_i_22_n_1 ,\cnt_reg[0]_i_22_n_2 ,\cnt_reg[0]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_193_p2[8:5]),
        .S(cnt_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[0]_i_23 
       (.CI(\cnt_reg[0]_i_21_n_0 ),
        .CO({\NLW_cnt_reg[0]_i_23_CO_UNCONNECTED [3:2],\cnt_reg[0]_i_23_n_2 ,\cnt_reg[0]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[0]_i_23_O_UNCONNECTED [3],grp_fu_193_p2[31:29]}),
        .S({1'b0,cnt_reg[31:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[0]_i_24 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_24_n_0 ,\cnt_reg[0]_i_24_n_1 ,\cnt_reg[0]_i_24_n_2 ,\cnt_reg[0]_i_24_n_3 }),
        .CYINIT(cnt_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(grp_fu_193_p2[4:1]),
        .S(cnt_reg[4:1]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_3_n_0 ,\cnt_reg[0]_i_3_n_1 ,\cnt_reg[0]_i_3_n_2 ,\cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_3_n_4 ,\cnt_reg[0]_i_3_n_5 ,\cnt_reg[0]_i_3_n_6 ,\cnt_reg[0]_i_3_n_7 }),
        .S({cnt_reg[3:1],grp_fu_193_p2[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S(cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(cnt_reg[16]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\cnt_reg[16]_i_1_n_0 ,\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S(cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(cnt_reg[17]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg[18]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(cnt_reg[19]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[0]_i_3_n_6 ),
        .Q(cnt_reg[1]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[20]_i_1_n_7 ),
        .Q(cnt_reg[20]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[20]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CO({\cnt_reg[20]_i_1_n_0 ,\cnt_reg[20]_i_1_n_1 ,\cnt_reg[20]_i_1_n_2 ,\cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_1_n_4 ,\cnt_reg[20]_i_1_n_5 ,\cnt_reg[20]_i_1_n_6 ,\cnt_reg[20]_i_1_n_7 }),
        .S(cnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(cnt_reg[21]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[20]_i_1_n_5 ),
        .Q(cnt_reg[22]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[20]_i_1_n_4 ),
        .Q(cnt_reg[23]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[24]_i_1_n_7 ),
        .Q(cnt_reg[24]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[24]_i_1 
       (.CI(\cnt_reg[20]_i_1_n_0 ),
        .CO({\cnt_reg[24]_i_1_n_0 ,\cnt_reg[24]_i_1_n_1 ,\cnt_reg[24]_i_1_n_2 ,\cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[24]_i_1_n_4 ,\cnt_reg[24]_i_1_n_5 ,\cnt_reg[24]_i_1_n_6 ,\cnt_reg[24]_i_1_n_7 }),
        .S(cnt_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[24]_i_1_n_6 ),
        .Q(cnt_reg[25]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[24]_i_1_n_5 ),
        .Q(cnt_reg[26]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[27] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[24]_i_1_n_4 ),
        .Q(cnt_reg[27]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[28] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[28]_i_1_n_7 ),
        .Q(cnt_reg[28]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[28]_i_1 
       (.CI(\cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_reg[28]_i_1_n_1 ,\cnt_reg[28]_i_1_n_2 ,\cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[28]_i_1_n_4 ,\cnt_reg[28]_i_1_n_5 ,\cnt_reg[28]_i_1_n_6 ,\cnt_reg[28]_i_1_n_7 }),
        .S(cnt_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[29] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[28]_i_1_n_6 ),
        .Q(cnt_reg[29]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[0]_i_3_n_5 ),
        .Q(cnt_reg[2]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[30] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[28]_i_1_n_5 ),
        .Q(cnt_reg[30]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[31] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[28]_i_1_n_4 ),
        .Q(cnt_reg[31]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[0]_i_3_n_4 ),
        .Q(cnt_reg[3]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_3_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(ap_clk),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(\cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter[0]_i_2 
       (.I0(\cnt_1[0]_i_4_n_0 ),
        .I1(\cnt_1[0]_i_5_n_0 ),
        .O(\counter[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \counter[0]_i_3 
       (.I0(counter_reg[3]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter_reg[2]),
        .O(\counter[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter_reg[3]),
        .O(\counter[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \counter[0]_i_5 
       (.I0(counter_reg[1]),
        .I1(\counter[0]_i_8_n_0 ),
        .I2(counter_reg[0]),
        .O(\counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_6 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \counter[0]_i_7 
       (.I0(counter_reg[6]),
        .I1(counter_reg[8]),
        .I2(\cnt_1[0]_i_5_n_0 ),
        .I3(counter_reg[1]),
        .I4(counter_reg[0]),
        .O(\counter[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \counter[0]_i_8 
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(counter_reg[8]),
        .I3(counter_reg[6]),
        .I4(\cnt_1[0]_i_5_n_0 ),
        .O(\counter[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8AAA)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(\counter[8]_i_4_n_0 ),
        .I2(counter_reg[9]),
        .I3(counter_reg[14]),
        .I4(\cnt_1[0]_i_4_n_0 ),
        .O(\counter[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFB00FF00)) 
    \counter[12]_i_3 
       (.I0(\cnt_1[0]_i_4_n_0 ),
        .I1(counter_reg[15]),
        .I2(\counter[8]_i_4_n_0 ),
        .I3(counter_reg[14]),
        .I4(counter_reg[9]),
        .O(\counter[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \counter[4]_i_2 
       (.I0(counter_reg[6]),
        .I1(\counter[4]_i_3_n_0 ),
        .I2(counter_reg[8]),
        .O(\counter[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \counter[4]_i_3 
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .I2(\cnt_1[0]_i_5_n_0 ),
        .I3(counter_reg[1]),
        .I4(counter_reg[0]),
        .O(\counter[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB00FF00)) 
    \counter[8]_i_2 
       (.I0(\cnt_1[0]_i_4_n_0 ),
        .I1(counter_reg[15]),
        .I2(\counter[8]_i_4_n_0 ),
        .I3(counter_reg[9]),
        .I4(counter_reg[14]),
        .O(\counter[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \counter[8]_i_3 
       (.I0(counter_reg[8]),
        .I1(\counter[4]_i_3_n_0 ),
        .I2(counter_reg[6]),
        .O(\counter[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[8]_i_4 
       (.I0(counter_reg[13]),
        .I1(counter_reg[12]),
        .I2(counter_reg[16]),
        .I3(counter_reg[11]),
        .I4(\counter[8]_i_5_n_0 ),
        .O(\counter[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[8]_i_5 
       (.I0(counter_reg[4]),
        .I1(counter_reg[10]),
        .I2(counter_reg[5]),
        .I3(counter_reg[7]),
        .O(\counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2_n_0 }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,counter_reg[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_1_O_UNCONNECTED [3:1],\counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,counter_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({counter_reg[7],\counter[4]_i_2_n_0 ,counter_reg[5:4]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({counter_reg[11:10],\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \green[0]_INST_0 
       (.I0(state_1[0]),
        .I1(state_1[1]),
        .O(green));
  LUT2 #(
    .INIT(4'h2)) 
    \red[0]_INST_0 
       (.I0(state_1[1]),
        .I1(state_1[0]),
        .O(red));
  LUT6 #(
    .INIT(64'hF0FFFF000010FF00)) 
    \state[0]_i_1 
       (.I0(\cnt_1[0]_i_4_n_0 ),
        .I1(\cnt_1[0]_i_5_n_0 ),
        .I2(btn),
        .I3(\state_reg_n_0_[0] ),
        .I4(ap_start),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCAF0F0F0)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(btn),
        .I2(\state_reg_n_0_[1] ),
        .I3(ap_start),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \state[1]_i_2 
       (.I0(\state[1]_i_3_n_0 ),
        .I1(cnt_1_reg[2]),
        .I2(cnt_1_reg[1]),
        .I3(cnt_1_reg[0]),
        .I4(\state[1]_i_4_n_0 ),
        .I5(\state[1]_i_5_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_3 
       (.I0(cnt_1_reg[22]),
        .I1(cnt_1_reg[17]),
        .I2(cnt_1_reg[19]),
        .I3(\state[1]_i_6_n_0 ),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[1]_i_4 
       (.I0(\state[1]_i_7_n_0 ),
        .I1(cnt_1_reg[3]),
        .I2(cnt_1_reg[30]),
        .I3(cnt_1_reg[7]),
        .I4(cnt_1_reg[24]),
        .I5(\state[1]_i_8_n_0 ),
        .O(\state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[1]_i_5 
       (.I0(cnt_1_reg[16]),
        .I1(cnt_1_reg[25]),
        .I2(cnt_1_reg[26]),
        .I3(cnt_1_reg[9]),
        .I4(cnt_1_reg[29]),
        .I5(cnt_1_reg[8]),
        .O(\state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_6 
       (.I0(cnt_1_reg[21]),
        .I1(cnt_1_reg[31]),
        .I2(cnt_1_reg[14]),
        .I3(cnt_1_reg[20]),
        .O(\state[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_7 
       (.I0(cnt_1_reg[18]),
        .I1(cnt_1_reg[6]),
        .I2(cnt_1_reg[13]),
        .I3(cnt_1_reg[10]),
        .O(\state[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[1]_i_8 
       (.I0(cnt_1_reg[15]),
        .I1(cnt_1_reg[11]),
        .I2(cnt_1_reg[28]),
        .I3(cnt_1_reg[27]),
        .I4(\state[1]_i_9_n_0 ),
        .O(\state[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_9 
       (.I0(cnt_1_reg[5]),
        .I1(cnt_1_reg[23]),
        .I2(cnt_1_reg[12]),
        .I3(cnt_1_reg[4]),
        .O(\state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF0000EEFFF000)) 
    \state_1[0]_i_1 
       (.I0(\cnt[0]_i_4_n_0 ),
        .I1(\cnt[0]_i_5_n_0 ),
        .I2(\state_1[0]_i_2_n_0 ),
        .I3(ap_start),
        .I4(state_1[0]),
        .I5(state_1[1]),
        .O(\state_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state_1[0]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\state_1[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003EE00FF00FF00)) 
    \state_1[1]_i_1 
       (.I0(\cnt[0]_i_6_n_0 ),
        .I1(\cnt[0]_i_5_n_0 ),
        .I2(\cnt[0]_i_4_n_0 ),
        .I3(state_1[1]),
        .I4(state_1[0]),
        .I5(ap_start),
        .O(\state_1[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state_1[0]_i_1_n_0 ),
        .Q(state_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_1_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state_1[1]_i_1_n_0 ),
        .Q(state_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \yellow[0]_INST_0 
       (.I0(state_1[0]),
        .I1(state_1[1]),
        .O(yellow));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
