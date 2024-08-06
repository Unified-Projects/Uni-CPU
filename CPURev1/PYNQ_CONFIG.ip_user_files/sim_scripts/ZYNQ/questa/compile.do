vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/cpu
vlib questa_lib/msim/gmii_to_rgmii_v4_1_14
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_17
vlib questa_lib/msim/processing_system7_vip_v1_0_19
vlib questa_lib/msim/util_vector_logic_v2_0_4
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/lib_pkg_v1_0_4
vlib questa_lib/msim/fifo_generator_v13_2_10
vlib questa_lib/msim/lib_fifo_v1_0_19
vlib questa_lib/msim/blk_mem_gen_v8_4_8
vlib questa_lib/msim/lib_bmg_v1_0_17
vlib questa_lib/msim/lib_srl_fifo_v1_0_4
vlib questa_lib/msim/axi_datamover_v5_1_33
vlib questa_lib/msim/axi_vdma_v6_3_19
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/v_tc_v6_1_14
vlib questa_lib/msim/v_vid_in_axi4s_v4_0_11
vlib questa_lib/msim/v_axi4s_vid_out_v4_0_18
vlib questa_lib/msim/v_tc_v6_2_8
vlib questa_lib/msim/proc_sys_reset_v5_0_15
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/axi_register_slice_v2_1_31
vlib questa_lib/msim/axi_data_fifo_v2_1_30
vlib questa_lib/msim/axi_crossbar_v2_1_32
vlib questa_lib/msim/axi_protocol_converter_v2_1_31
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap cpu questa_lib/msim/cpu
vmap gmii_to_rgmii_v4_1_14 questa_lib/msim/gmii_to_rgmii_v4_1_14
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 questa_lib/msim/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 questa_lib/msim/processing_system7_vip_v1_0_19
vmap util_vector_logic_v2_0_4 questa_lib/msim/util_vector_logic_v2_0_4
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap lib_pkg_v1_0_4 questa_lib/msim/lib_pkg_v1_0_4
vmap fifo_generator_v13_2_10 questa_lib/msim/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 questa_lib/msim/lib_fifo_v1_0_19
vmap blk_mem_gen_v8_4_8 questa_lib/msim/blk_mem_gen_v8_4_8
vmap lib_bmg_v1_0_17 questa_lib/msim/lib_bmg_v1_0_17
vmap lib_srl_fifo_v1_0_4 questa_lib/msim/lib_srl_fifo_v1_0_4
vmap axi_datamover_v5_1_33 questa_lib/msim/axi_datamover_v5_1_33
vmap axi_vdma_v6_3_19 questa_lib/msim/axi_vdma_v6_3_19
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_14 questa_lib/msim/v_tc_v6_1_14
vmap v_vid_in_axi4s_v4_0_11 questa_lib/msim/v_vid_in_axi4s_v4_0_11
vmap v_axi4s_vid_out_v4_0_18 questa_lib/msim/v_axi4s_vid_out_v4_0_18
vmap v_tc_v6_2_8 questa_lib/msim/v_tc_v6_2_8
vmap proc_sys_reset_v5_0_15 questa_lib/msim/proc_sys_reset_v5_0_15
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 questa_lib/msim/axi_register_slice_v2_1_31
vmap axi_data_fifo_v2_1_30 questa_lib/msim/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 questa_lib/msim/axi_crossbar_v2_1_32
vmap axi_protocol_converter_v2_1_31 questa_lib/msim/axi_protocol_converter_v2_1_31
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

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

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work cpu  -93  \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0_clocking.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0_resets.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0_support.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0_reset_sync.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0_block.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/ZYNQ_gmii_to_rgmii_0_0/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_1_14  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/cde3/hdl/gmii_to_rgmii_v4_1_vh_rfs.vhd" \

vcom -work cpu  -93  \
"../../../bd/ZYNQ/ip/ZYNQ_gmii_to_rgmii_0_0/synth/ZYNQ_gmii_to_rgmii_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work cpu  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/ZYNQ/ip/ZYNQ_processing_system7_0_0/sim/ZYNQ_processing_system7_0_0.v" \

vlog -work util_vector_logic_v2_0_4  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work cpu  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/ZYNQ/ip/ZYNQ_util_vector_logic_0_0/sim/ZYNQ_util_vector_logic_0_0.v" \
"../../../bd/ZYNQ/sim/ZYNQ.v" \
"../../../bd/ZYNQ/ipshared/31a1/src/asyn_rst_syn.v" \
"../../../bd/ZYNQ/ipshared/31a1/src/dvi_encoder.v" \
"../../../bd/ZYNQ/ipshared/31a1/src/serializer_10_to_1.v" \
"../../../bd/ZYNQ/ipshared/31a1/src/dvi_transmitter_top.v" \
"../../../bd/ZYNQ/ip/ZYNQ_DVI_Transmitter_0_0/sim/ZYNQ_DVI_Transmitter_0_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_4  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_17  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3f29/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_19  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_19  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work cpu  -93  \
"../../../bd/ZYNQ/ip/ZYNQ_axi_vdma_0_0/sim/ZYNQ_axi_vdma_0_0.vhd" \

vlog -work cpu  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/ZYNQ/ip/ZYNQ_clk_wiz_0_0/ZYNQ_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/ZYNQ/ip/ZYNQ_clk_wiz_0_0/ZYNQ_clk_wiz_0_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_util_vector_logic_0_1/sim/ZYNQ_util_vector_logic_0_1.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_14  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/fd54/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_11  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/4705/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_18  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/52cd/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work cpu  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/ZYNQ/ip/ZYNQ_v_axi4s_vid_out_0_0/sim/ZYNQ_v_axi4s_vid_out_0_0.v" \

vcom -work v_tc_v6_2_8  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/5959/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work cpu  -93  \
"../../../bd/ZYNQ/ip/ZYNQ_v_tc_0_0/sim/ZYNQ_v_tc_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work cpu  -93  \
"../../../bd/ZYNQ/ip/ZYNQ_rst_ps7_0_50M_0/sim/ZYNQ_rst_ps7_0_50M_0.vhd" \
"../../../bd/ZYNQ/ip/ZYNQ_rst_ps7_0_200M_0/sim/ZYNQ_rst_ps7_0_200M_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work cpu  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/ZYNQ/ip/ZYNQ_xbar_0/sim/ZYNQ_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_31  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work cpu  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/a4a8/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/3242" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/ZYNQ/ip/ZYNQ_auto_pc_0/sim/ZYNQ_auto_pc_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_auto_pc_1/sim/ZYNQ_auto_pc_1.v" \

vlog -work cpu \
"glbl.v"

