transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_17
vlib riviera/processing_system7_vip_v1_0_19
vlib riviera/xil_defaultlib
vlib riviera/gmii_to_rgmii_v4_1_16
vlib riviera/util_vector_logic_v2_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/blk_mem_gen_v8_4_8

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 riviera/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 riviera/processing_system7_vip_v1_0_19
vmap xil_defaultlib riviera/xil_defaultlib
vmap gmii_to_rgmii_v4_1_16 riviera/gmii_to_rgmii_v4_1_16
vmap util_vector_logic_v2_0_4 riviera/util_vector_logic_v2_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8

vlog -work xilinx_vip  -incr -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l gmii_to_rgmii_v4_1_16 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l gmii_to_rgmii_v4_1_16 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l gmii_to_rgmii_v4_1_16 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l gmii_to_rgmii_v4_1_16 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l gmii_to_rgmii_v4_1_16 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l gmii_to_rgmii_v4_1_16 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 \
"../../../bd/CPU/ip/CPU_processing_system7_0_0/sim/CPU_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0_clocking.vhd" \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0_resets.vhd" \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0_support.vhd" \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0_reset_sync.vhd" \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0_block.vhd" \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/CPU_gmii_to_rgmii_0_0/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_1_16 -93  -incr \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/9db3/hdl/gmii_to_rgmii_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/CPU/ip/CPU_gmii_to_rgmii_0_0/synth/CPU_gmii_to_rgmii_0_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -incr -v2k5 "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l gmii_to_rgmii_v4_1_16 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l gmii_to_rgmii_v4_1_16 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 \
"../../../bd/CPU/ip/CPU_util_vector_logic_0_0/sim/CPU_util_vector_logic_0_0.v" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/CPU/ip/CPU_proc_sys_reset_0_0/sim/CPU_proc_sys_reset_0_0.vhd" \
"../../../bd/CPU/ip/CPU_IO_Controller_0_0/sim/CPU_IO_Controller_0_0.vhd" \
"../../../bd/CPU/ip/CPU_ClockSplitter_0_0/sim/CPU_ClockSplitter_0_0.vhd" \
"../../../bd/CPU/ip/CPU_ClockDivider_0_0/sim/CPU_ClockDivider_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l gmii_to_rgmii_v4_1_16 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 \
"../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/ec67/hdl" "+incdir+../../../../CPU_Rev3.gen/sources_1/bd/CPU/ipshared/b28c/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l gmii_to_rgmii_v4_1_16 -l util_vector_logic_v2_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l blk_mem_gen_v8_4_8 \
"../../../bd/CPU/ip/CPU_blk_mem_gen_0_0/sim/CPU_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/CPU/ip/CPU_CPU_Module_0_1/sim/CPU_CPU_Module_0_1.vhd" \
"../../../bd/CPU/ip/CPU_LCD_Controller_0_0/sim/CPU_LCD_Controller_0_0.vhd" \
"../../../bd/CPU/sim/CPU.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

