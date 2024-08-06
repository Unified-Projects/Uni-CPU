onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xilinx_vip -L cpu -L gmii_to_rgmii_v4_1_14 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L util_vector_logic_v2_0_4 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib cpu cpu.ZYNQ cpu.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ZYNQ.udo}

run 1000ns

quit -force
