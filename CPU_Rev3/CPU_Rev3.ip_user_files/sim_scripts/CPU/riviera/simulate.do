transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+CPU  -L xilinx_vip -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xil_defaultlib -L gmii_to_rgmii_v4_1_14 -L util_vector_logic_v2_0_4 -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.CPU xil_defaultlib.glbl

do {CPU.udo}

run 1000ns

endsim

quit -force
