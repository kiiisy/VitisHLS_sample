############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project generator
set_top Generator
add_files ../src/generator/generator.cpp
add_files ../src/generator/generator.h -cflags "-DSYNTHESIS_EN"
add_files -tb ../verification/generator/tb/tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z010clg400-1}
create_clock -period 20 -name default
#source "./generator/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
