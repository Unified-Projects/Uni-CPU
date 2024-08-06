transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ZYNQ  -L xilinx_vip -L cpu -L gmii_to_rgmii_v4_1_14 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L util_vector_logic_v2_0_4 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 cpu.ZYNQ cpu.glbl

do {ZYNQ.udo}

run 1000ns

endsim

quit -force
