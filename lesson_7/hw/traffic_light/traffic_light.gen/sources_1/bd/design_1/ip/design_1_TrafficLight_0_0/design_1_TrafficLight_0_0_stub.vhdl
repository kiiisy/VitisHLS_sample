-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Thu May 22 14:09:13 2025
-- Host        : 2df93fe410a0 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/user/work/2025/02_vitis_hls/qiita/lesson_7/hw/traffic_light/traffic_light.gen/sources_1/bd/design_1/ip/design_1_TrafficLight_0_0/design_1_TrafficLight_0_0_stub.vhdl
-- Design      : design_1_TrafficLight_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_TrafficLight_0_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    red : out STD_LOGIC;
    yellow : out STD_LOGIC;
    green : out STD_LOGIC
  );

end design_1_TrafficLight_0_0;

architecture stub of design_1_TrafficLight_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,btn[0:0],red,yellow,green";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "TrafficLight,Vivado 2023.1";
begin
end;
