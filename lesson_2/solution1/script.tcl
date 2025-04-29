############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project lesson_2
set_top SequentialCircuit
add_files lesson_2/src/sequential_circuit.cpp
add_files lesson_2/src/sequential_circuit.h
add_files -tb lesson_2/tb/tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
config_cosim -tool xsim -trace_level all
#source "./lesson_2/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
