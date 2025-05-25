# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/user/work/2025/02_vitis_hls/qiita/lesson_7/sw/design_1_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/user/work/2025/02_vitis_hls/qiita/lesson_7/sw/design_1_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {/home/user/work/2025/02_vitis_hls/qiita/lesson_7/sw/from_hw/design_1_wrapper.xsa}\
-out {/home/user/work/2025/02_vitis_hls/qiita/lesson_7/sw}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform clean
platform active {design_1_wrapper}
platform config -updatehw {/home/user/work/2025/02_vitis_hls/qiita/lesson_7/sw/from_hw/design_1_wrapper.xsa}
platform generate
platform clean
platform clean
platform clean
platform generate
platform config -updatehw {/home/user/work/2025/02_vitis_hls/qiita/lesson_7/sw/from_hw/design_1_wrapper.xsa}
platform clean
platform clean
platform generate
domain active {zynq_fsbl}
bsp reload
bsp reload
platform generate -domains 
platform config -updatehw {/home/user/work/2025/02_vitis_hls/qiita/lesson_7/sw/from_hw/design_1_wrapper.xsa}
platform clean
platform clean
platform generate
platform clean
platform generate
platform clean
platform clean
platform generate
platform config -updatehw {/home/user/work/2025/02_vitis_hls/qiita/lesson_7/sw/from_hw/design_1_wrapper.xsa}
platform clean
platform clean
platform generate
platform config -updatehw {/home/user/work/2025/02_vitis_hls/qiita/lesson_7/sw/from_hw/design_1_wrapper.xsa}
platform clean
platform clean
platform generate
platform config -updatehw {/home/user/work/2025/02_vitis_hls/qiita/lesson_7/sw/from_hw/design_1_wrapper.xsa}
platform clean
platform clean
platform generate
