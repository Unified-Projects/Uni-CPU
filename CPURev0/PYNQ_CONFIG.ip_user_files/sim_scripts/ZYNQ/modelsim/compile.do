vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/cpu
vlib modelsim_lib/msim/gmii_to_rgmii_v4_1_14
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_17
vlib modelsim_lib/msim/processing_system7_vip_v1_0_19
vlib modelsim_lib/msim/util_vector_logic_v2_0_4
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap cpu modelsim_lib/msim/cpu
vmap gmii_to_rgmii_v4_1_14 modelsim_lib/msim/gmii_to_rgmii_v4_1_14
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 modelsim_lib/msim/processing_system7_vip_v1_0_19
vmap util_vector_logic_v2_0_4 modelsim_lib/msim/util_vector_logic_v2_0_4
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

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work cpu  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/ZYNQ/ip/ZYNQ_processing_system7_0_0/sim/ZYNQ_processing_system7_0_0.v" \

vlog -work util_vector_logic_v2_0_4  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work cpu  -incr -mfcu  "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_CONFIG.gen/sources_1/bd/ZYNQ/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/ZYNQ/ip/ZYNQ_util_vector_logic_0_0/sim/ZYNQ_util_vector_logic_0_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BUS_0_0/sim/ZYNQ_BUS_0_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BUS_0_0/synth/ZYNQ_BUS_0_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BUS_1_0/sim/ZYNQ_BUS_1_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BUS_1_0/synth/ZYNQ_BUS_1_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BUS_2_0/sim/ZYNQ_BUS_2_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BUS_2_0/synth/ZYNQ_BUS_2_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_CU_0_1/sim/ZYNQ_CU_0_1.v" \
"../../../bd/ZYNQ/ip/ZYNQ_CU_0_1/synth/ZYNQ_CU_0_1.v" \
"../../../bd/ZYNQ/ip/ZYNQ_ALU_0_1/sim/ZYNQ_ALU_0_1.v" \
"../../../bd/ZYNQ/ip/ZYNQ_ALU_0_1/synth/ZYNQ_ALU_0_1.v" \
"../../../bd/ZYNQ/ip/ZYNQ_MM_0_1/sim/ZYNQ_MM_0_1.v" \
"../../../bd/ZYNQ/ip/ZYNQ_MM_0_1/synth/ZYNQ_MM_0_1.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BusMerger_0_0/sim/ZYNQ_BusMerger_0_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BusMerger_0_0/synth/ZYNQ_BusMerger_0_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_DeviceSelector_0_0/sim/ZYNQ_DeviceSelector_0_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_DeviceSelector_0_0/synth/ZYNQ_DeviceSelector_0_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BusMerger_1_0/sim/ZYNQ_BusMerger_1_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BusMerger_1_0/synth/ZYNQ_BusMerger_1_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BusMerger_2_0/sim/ZYNQ_BusMerger_2_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_BusMerger_2_0/synth/ZYNQ_BusMerger_2_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_DeviceSelector_1_0/sim/ZYNQ_DeviceSelector_1_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_DeviceSelector_1_0/synth/ZYNQ_DeviceSelector_1_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_DeviceSelector_0_1/sim/ZYNQ_DeviceSelector_0_1.v" \
"../../../bd/ZYNQ/ip/ZYNQ_DeviceSelector_0_1/synth/ZYNQ_DeviceSelector_0_1.v" \
"../../../bd/ZYNQ/ip/ZYNQ_IOController_0_0/sim/ZYNQ_IOController_0_0.v" \
"../../../bd/ZYNQ/ip/ZYNQ_IOController_0_0/synth/ZYNQ_IOController_0_0.v" \
"../../../bd/ZYNQ/sim/ZYNQ.v" \

vlog -work cpu \
"glbl.v"

