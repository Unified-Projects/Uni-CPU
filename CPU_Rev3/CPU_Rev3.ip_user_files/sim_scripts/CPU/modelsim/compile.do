vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_17
vlib modelsim_lib/msim/processing_system7_vip_v1_0_19
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/gmii_to_rgmii_v4_1_16
vlib modelsim_lib/msim/util_vector_logic_v2_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15
vlib modelsim_lib/msim/blk_mem_gen_v8_4_8

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 modelsim_lib/msim/processing_system7_vip_v1_0_19
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap gmii_to_rgmii_v4_1_16 modelsim_lib/msim/gmii_to_rgmii_v4_1_16
vmap util_vector_logic_v2_0_4 modelsim_lib/msim/util_vector_logic_v2_0_4
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15
vmap blk_mem_gen_v8_4_8 modelsim_lib/msim/blk_mem_gen_v8_4_8

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_18 -L processing_system7_vip_v1_0_20 -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_18 -L processing_system7_vip_v1_0_20 -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -mfcu  -sv -L axi_vip_v1_1_18 -L processing_system7_vip_v1_0_20 -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr -mfcu  -sv -L axi_vip_v1_1_18 -L processing_system7_vip_v1_0_20 -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/CPU/ip/CPU_processing_system7_0_0/sim/CPU_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0_clocking.vhd" \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0_resets.vhd" \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0_support.vhd" \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0_reset_sync.vhd" \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0_block.vhd" \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/CPU_gmii_to_rgmii_0_0/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_1_16  -93  \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/9db3/hdl/gmii_to_rgmii_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -incr -mfcu  "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/CPU/ip/CPU_util_vector_logic_0_0/sim/CPU_util_vector_logic_0_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/CPU/ip/CPU_proc_sys_reset_0_0/sim/CPU_proc_sys_reset_0_0.vhd" \
"../../../bd/CPU/ip/CPU_IO_Controller_0_0/sim/CPU_IO_Controller_0_0.vhd" \
"../../../bd/CPU/ip/CPU_ClockSplitter_0_0/sim/CPU_ClockSplitter_0_0.vhd" \
"../../../bd/CPU/ip/CPU_ClockDivider_0_0/sim/CPU_ClockDivider_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/CPU/ip/CPU_blk_mem_gen_0_0/sim/CPU_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/CPU/ip/CPU_CPU_Module_0_1/sim/CPU_CPU_Module_0_1.vhd" \
"../../../bd/CPU/ip/CPU_LCD_Controller_0_0/sim/CPU_LCD_Controller_0_0.vhd" \
"../../../bd/CPU/sim/CPU.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

