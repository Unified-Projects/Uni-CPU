# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/CPU.xdc

# Block Designs: bd/Setup/Setup.bd
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==Setup || ORIG_REF_NAME==Setup} -quiet] -quiet

# IP: bd/Setup/ip/Setup_processing_system7_0_0/Setup_processing_system7_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==Setup_processing_system7_0_0 || ORIG_REF_NAME==Setup_processing_system7_0_0} -quiet] -quiet

# IP: bd/Setup/ip/Setup_rst_ps7_0_50M_0/Setup_rst_ps7_0_50M_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==Setup_rst_ps7_0_50M_0 || ORIG_REF_NAME==Setup_rst_ps7_0_50M_0} -quiet] -quiet

# IP: bd/Setup/ip/Setup_axi_interconnect_0_1/Setup_axi_interconnect_0_1.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==Setup_axi_interconnect_0_1 || ORIG_REF_NAME==Setup_axi_interconnect_0_1} -quiet] -quiet

# IP: bd/Setup/ip/Setup_blk_mem_gen_0_0/Setup_blk_mem_gen_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==Setup_blk_mem_gen_0_0 || ORIG_REF_NAME==Setup_blk_mem_gen_0_0} -quiet] -quiet

# IP: bd/Setup/ip/Setup_CPU_0_2/Setup_CPU_0_2.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==Setup_CPU_0_2 || ORIG_REF_NAME==Setup_CPU_0_2} -quiet] -quiet

# IP: bd/Setup/ip/Setup_AXI_Master_0_3/Setup_AXI_Master_0_3.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==Setup_AXI_Master_0_3 || ORIG_REF_NAME==Setup_AXI_Master_0_3} -quiet] -quiet

# IP: bd/Setup/ip/Setup_util_vector_logic_0_0/Setup_util_vector_logic_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==Setup_util_vector_logic_0_0 || ORIG_REF_NAME==Setup_util_vector_logic_0_0} -quiet] -quiet

# IP: bd/Setup/ip/Setup_auto_pc_0/Setup_auto_pc_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==Setup_auto_pc_0 || ORIG_REF_NAME==Setup_auto_pc_0} -quiet] -quiet

# IP: bd/Setup/ip/Setup_auto_us_0/Setup_auto_us_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==Setup_auto_us_0 || ORIG_REF_NAME==Setup_auto_us_0} -quiet] -quiet

# XDC: y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_processing_system7_0_0/Setup_processing_system7_0_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==Setup_processing_system7_0_0 || ORIG_REF_NAME==Setup_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_rst_ps7_0_50M_0/Setup_rst_ps7_0_50M_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==Setup_rst_ps7_0_50M_0 || ORIG_REF_NAME==Setup_rst_ps7_0_50M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_rst_ps7_0_50M_0/Setup_rst_ps7_0_50M_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==Setup_rst_ps7_0_50M_0 || ORIG_REF_NAME==Setup_rst_ps7_0_50M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_blk_mem_gen_0_0/Setup_blk_mem_gen_0_0_ooc.xdc

# XDC: y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_auto_pc_0/Setup_auto_pc_0_ooc.xdc

# XDC: y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_auto_us_0/Setup_auto_us_0_clocks.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==Setup_auto_us_0 || ORIG_REF_NAME==Setup_auto_us_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_auto_us_0/Setup_auto_us_0_ooc.xdc

# XDC: y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/Setup_ooc.xdc
