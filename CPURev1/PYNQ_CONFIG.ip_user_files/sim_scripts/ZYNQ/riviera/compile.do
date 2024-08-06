transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/cpu
vlib riviera/gmii_to_rgmii_v4_1_14
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_17
vlib riviera/processing_system7_vip_v1_0_19
vlib riviera/util_vector_logic_v2_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/lib_pkg_v1_0_4
vlib riviera/fifo_generator_v13_2_10
vlib riviera/lib_fifo_v1_0_19
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/lib_bmg_v1_0_17
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_datamover_v5_1_33
vlib riviera/axi_vdma_v6_3_19
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/v_tc_v6_1_14
vlib riviera/v_vid_in_axi4s_v4_0_11
vlib riviera/v_axi4s_vid_out_v4_0_18
vlib riviera/v_tc_v6_2_8
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_register_slice_v2_1_31
vlib riviera/axi_data_fifo_v2_1_30
vlib riviera/axi_crossbar_v2_1_32
vlib riviera/axi_protocol_converter_v2_1_31
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap cpu riviera/cpu
vmap gmii_to_rgmii_v4_1_14 riviera/gmii_to_rgmii_v4_1_14
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 riviera/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 riviera/processing_system7_vip_v1_0_19
vmap util_vector_logic_v2_0_4 riviera/util_vector_logic_v2_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 riviera/lib_fifo_v1_0_19
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap lib_bmg_v1_0_17 riviera/lib_bmg_v1_0_17
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_datamover_v5_1_33 riviera/axi_datamover_v5_1_33
vmap axi_vdma_v6_3_19 riviera/axi_vdma_v6_3_19
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_14 riviera/v_tc_v6_1_14
vmap v_vid_in_axi4s_v4_0_11 riviera/v_vid_in_axi4s_v4_0_11
vmap v_axi4s_vid_out_v4_0_18 riviera/v_axi4s_vid_out_v4_0_18
vmap v_tc_v6_2_8 riviera/v_tc_v6_2_8
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 riviera/axi_register_slice_v2_1_31
vmap axi_data_fifo_v2_1_30 riviera/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 riviera/axi_crossbar_v2_1_32
vmap axi_protocol_converter_v2_1_31 riviera/axi_protocol_converter_v2_1_31
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work cpu -93  -incr \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0_clocking.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0_resets.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0_support.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0_reset_sync.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0_block.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/ZYNQ_gmii_to_rgmii_0_0/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_1_14 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/cde3/hdl/gmii_to_rgmii_v4_1_vh_rfs.vhd" \

vcom -work cpu -93  -incr \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work cpu  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../bd/ZYNQ/ip/ZYNQ_processing_system7_0_0/sim/ZYNQ_processing_system7_0_0.v" \

vlog -work util_vector_logic_v2_0_4  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work cpu  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../bd/ZYNQ/ip/ZYNQ_util_vector_logic_0_0/sim/ZYNQ_util_vector_logic_0_0.v" \
"../../../bd/ZYNQ/sim/ZYNQ.v" \
"../../../bd/ZYNQ/ipshared/31a1/src/asyn_rst_syn.v" \
"../../../bd/ZYNQ/ipshared/31a1/src/dvi_encoder.v" \
"../../../bd/ZYNQ/ipshared/31a1/src/serializer_10_to_1.v" \
"../../../bd/ZYNQ/ipshared/31a1/src/dvi_transmitter_top.v" \
"../../../bd/ZYNQ/ip/ZYNQ_DVI_Transmitter_0_0/sim/ZYNQ_DVI_Transmitter_0_0.v" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_17 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3f29/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_19  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_19 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work cpu -93  -incr \
"../../../bd/ZYNQ/ip/ZYNQ_axi_vdma_0_0/sim/ZYNQ_axi_vdma_0_0.vhd" \

vlog -work cpu  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../bd/ZYNQ/ip/ZYNQ_clk_wiz_0_0/ZYNQ_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/ZYNQ/ip/ZYNQ_clk_wiz_0_0/ZYNQ_clk_wiz_0_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_util_vector_logic_0_1/sim/ZYNQ_util_vector_logic_0_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_14 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/fd54/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_11  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/4705/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_18  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/52cd/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work cpu  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../bd/ZYNQ/ip/ZYNQ_v_axi4s_vid_out_0_0/sim/ZYNQ_v_axi4s_vid_out_0_0.v" \

vcom -work v_tc_v6_2_8 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/5959/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work cpu -93  -incr \
"../../../bd/ZYNQ/ip/ZYNQ_v_tc_0_0/sim/ZYNQ_v_tc_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work cpu -93  -incr \
"../../../bd/ZYNQ/ip/ZYNQ_rst_ps7_0_50M_0/sim/ZYNQ_rst_ps7_0_50M_0.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_rst_ps7_0_200M_0/sim/ZYNQ_rst_ps7_0_200M_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work cpu  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../bd/ZYNQ/ip/ZYNQ_xbar_0/sim/ZYNQ_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_31  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work cpu  -incr -v2k5 "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l cpu -l gmii_to_rgmii_v4_1_14 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_protocol_converter_v2_1_31 \
"../../../bd/ZYNQ/ip/ZYNQ_auto_pc_0/sim/ZYNQ_auto_pc_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_auto_pc_1/sim/ZYNQ_auto_pc_1.v" \

vlog -work cpu \
"glbl.v"

