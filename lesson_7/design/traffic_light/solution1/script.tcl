############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project traffic_light
set_top TrafficLight
add_files ../src/controller/controller.cpp
add_files ../src/controller/controller.h
add_files ../src/debounce/debounce.cpp
add_files ../src/debounce/debounce.h
add_files ../src/generator/generator.cpp
add_files ../src/generator/generator.h
add_files ../src/traffic_light.cpp
add_files ../src/traffic_light.h
add_files -tb ../verification/traffic_light/tb/tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z010-clg400-1}
create_clock -period 20 -name default
config_cosim -tool xsim -trace_level all
config_csim -O=0
config_debug -enable
config_export -format ip_catalog -output /home/user/work/2025/02_vitis_hls/qiita/lesson_7/design/traffic_light -rtl verilog -vivado_clock 20
source "./traffic_light/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog -output /home/user/work/2025/02_vitis_hls/qiita/lesson_7/design/traffic_light
