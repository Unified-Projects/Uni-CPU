transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_17
vlib activehdl/processing_system7_vip_v1_0_19
vlib activehdl/CPU
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_15
vlib activehdl/blk_mem_gen_v8_4_8
vlib activehdl/util_vector_logic_v2_0_4
vlib activehdl/sim_clk_gen_v1_0_4
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/fifo_generator_v13_2_10
vlib activehdl/axi_data_fifo_v2_1_30
vlib activehdl/axi_register_slice_v2_1_31
vlib activehdl/axi_protocol_converter_v2_1_31
vlib activehdl/axi_clock_converter_v2_1_30
vlib activehdl/axi_dwidth_converter_v2_1_31
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 activehdl/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 activehdl/processing_system7_vip_v1_0_19
vmap CPU activehdl/CPU
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 activehdl/proc_sys_reset_v5_0_15
vmap blk_mem_gen_v8_4_8 activehdl/blk_mem_gen_v8_4_8
vmap util_vector_logic_v2_0_4 activehdl/util_vector_logic_v2_0_4
vmap sim_clk_gen_v1_0_4 activehdl/sim_clk_gen_v1_0_4
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_10 activehdl/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 activehdl/axi_data_fifo_v2_1_30
vmap axi_register_slice_v2_1_31 activehdl/axi_register_slice_v2_1_31
vmap axi_protocol_converter_v2_1_31 activehdl/axi_protocol_converter_v2_1_31
vmap axi_clock_converter_v2_1_30 activehdl/axi_clock_converter_v2_1_30
vmap axi_dwidth_converter_v2_1_31 activehdl/axi_dwidth_converter_v2_1_31
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -sv2k12 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -sv2k12 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work CPU  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/Setup/ip/Setup_processing_system7_0_0/sim/Setup_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work CPU -93  \
"../../../bd/Setup/ip/Setup_rst_ps7_0_50M_0/sim/Setup_rst_ps7_0_50M_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work CPU  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/Setup/ip/Setup_blk_mem_gen_0_0/sim/Setup_blk_mem_gen_0_0.v" \

vcom -work CPU -93  \
"../../../bd/Setup/ip/Setup_CPU_0_2/sim/Setup_CPU_0_2.vhd" \
"../../../bd/Setup/ip/Setup_AXI_Master_0_3/sim/Setup_AXI_Master_0_3.vhd" \

vlog -work util_vector_logic_v2_0_4  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work CPU  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/Setup/ip/Setup_util_vector_logic_0_0/sim/Setup_util_vector_logic_0_0.v" \

vlog -work sim_clk_gen_v1_0_4  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/2717/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work CPU  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/Setup/ip/Setup_sim_clk_gen_0_0/sim/Setup_sim_clk_gen_0_0.v" \

vcom -work CPU -93  \
"../../../bd/Setup/ip/Setup_IOController_0_0/sim/Setup_IOController_0_0.vhd" \
"../../../bd/Setup/sim/Setup.vhd" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_31  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work CPU  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/Setup/ip/Setup_auto_pc_0/sim/Setup_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_30  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/80bf/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_31  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/14b9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work CPU  -v2k5 "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/ec67/hdl" "+incdir+../../../../CPURev2.gen/sources_1/bd/Setup/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l CPU -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 -l util_vector_logic_v2_0_4 -l sim_clk_gen_v1_0_4 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/Setup/ip/Setup_auto_us_0/sim/Setup_auto_us_0.v" \

vlog -work CPU \
"glbl.v"

