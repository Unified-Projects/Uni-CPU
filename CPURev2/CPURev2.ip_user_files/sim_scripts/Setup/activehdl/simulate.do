transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Setup  -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L CPU -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L blk_mem_gen_v8_4_8 -L sim_clk_gen_v1_0_4 -L util_vector_logic_v2_0_4 -L generic_baseblocks_v2_1_2 -L fifo_generator_v13_2_10 -L axi_data_fifo_v2_1_30 -L axi_register_slice_v2_1_31 -L axi_protocol_converter_v2_1_31 -L axi_clock_converter_v2_1_30 -L axi_dwidth_converter_v2_1_31 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 CPU.Setup CPU.glbl

do {Setup.udo}

run 1000ns

endsim

quit -force
