# Asynchronous reset
set_property IOSTANDARD LVCMOS18 [get_ports reset]
set_property PACKAGE_PIN R23 [get_ports reset]
set_property DRIVE 12 [get_ports reset]
set_property PULLUP true [get_ports reset]

# DDR-related signals
set_property IOSTANDARD LVCMOS18 [get_ports {DDR_*}]
set_property PACKAGE_PIN ... [get_ports {DDR_*}]
set_property DRIVE ... [get_ports {DDR_*}]
# Repeat for each DDR signal (DDR_addr, DDR_ba, ...)

# Fixed I/O signals
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_*}]
set_property PACKAGE_PIN ... [get_ports {FIXED_IO_*}]
set_property DRIVE ... [get_ports {FIXED_IO_*}]
# Repeat for each fixed I/O signal (FIXED_IO_ddr_vrn, FIXED_IO_ddr_vrp, ...)

# Memory interface signals
set_property IOSTANDARD LVCMOS18 [get_ports {addr_0 address_0 data_in_0 data_out_0 mem_read_0 mem_write_0 read_data_0 write_data_0}]
set_property PACKAGE_PIN ... [get_ports {addr_0 address_0 data_in_0 data_out_0 mem_read_0 mem_write_0 read_data_0 write_data_0}]
set_property DRIVE ... [get_ports {addr_0 address_0 data_in_0 data_out_0 mem_read_0 mem_write_0 read_data_0 write_data_0}]