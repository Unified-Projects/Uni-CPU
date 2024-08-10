vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_17
vlib modelsim_lib/msim/processing_system7_vip_v1_0_19
vlib modelsim_lib/msim/CPU
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15
vlib modelsim_lib/msim/blk_mem_gen_v8_4_8
vlib modelsim_lib/msim/util_vector_logic_v2_0_4
vlib modelsim_lib/msim/sim_clk_gen_v1_0_4
vlib modelsim_lib/msim/generic_baseblocks_v2_1_2
vlib modelsim_lib/msim/fifo_generator_v13_2_10
vlib modelsim_lib/msim/axi_data_fifo_v2_1_30
vlib modelsim_lib/msim/axi_register_slice_v2_1_31
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_31
vlib modelsim_lib/msim/axi_clock_converter_v2_1_30
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_31
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 modelsim_lib/msim/processing_system7_vip_v1_0_19
vmap CPU modelsim_lib/msim/CPU
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15
vmap blk_mem_gen_v8_4_8 modelsim_lib/msim/blk_mem_gen_v8_4_8
vmap util_vector_logic_v2_0_4 modelsim_lib/msim/util_vector_logic_v2_0_4
vmap sim_clk_gen_v1_0_4 modelsim_lib/msim/sim_clk_gen_v1_0_4
vmap generic_baseblocks_v2_1_2 modelsim_lib/msim/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_10 modelsim_lib/msim/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 modelsim_lib/msim/axi_data_fifo_v2_1_30
vmap axi_register_slice_v2_1_31 modelsim_lib/msim/axi_register_slice_v2_1_31
vmap axi_protocol_converter_v2_1_31 modelsim_lib/msim/axi_protocol_converter_v2_1_31
vmap axi_clock_converter_v2_1_30 modelsim_lib/msim/axi_clock_converter_v2_1_30
vmap axi_dwidth_converter_v2_1_31 modelsim_lib/msim/axi_dwidth_converter_v2_1_31
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work CPU  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/Setup/ip/Setup_processing_system7_0_0/sim/Setup_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work CPU  -93  \
"../../../bd/Setup/ip/Setup_rst_ps7_0_50M_0/sim/Setup_rst_ps7_0_50M_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work CPU  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/Setup/ip/Setup_blk_mem_gen_0_0/sim/Setup_blk_mem_gen_0_0.v" \

vcom -work CPU  -93  \
"../../../bd/Setup/ip/Setup_CPU_0_2/sim/Setup_CPU_0_2.vhd" \
"../../../bd/Setup/ip/Setup_AXI_Master_0_3/sim/Setup_AXI_Master_0_3.vhd" \

vlog -work util_vector_logic_v2_0_4  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work CPU  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/Setup/ip/Setup_util_vector_logic_0_0/sim/Setup_util_vector_logic_0_0.v" \

vlog -work sim_clk_gen_v1_0_4  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/2717/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work CPU  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/Setup/ip/Setup_sim_clk_gen_0_0/sim/Setup_sim_clk_gen_0_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10  -93  \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_31  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work CPU  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/Setup/ip/Setup_auto_pc_0/sim/Setup_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_30  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/80bf/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_31  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/14b9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work CPU  -incr -mfcu  "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/Setup/ip/Setup_auto_us_0/sim/Setup_auto_us_0.v" \

vcom -work CPU  -93  \
"../../../bd/Setup/sim/Setup.vhd" \

vlog -work CPU \
"glbl.v"

