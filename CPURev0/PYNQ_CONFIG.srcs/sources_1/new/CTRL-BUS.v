`timescale 1ns / 1ps

module BUS(
    input wire ClockIn,
    output wire ClockOut,
    input wire [63:0] data_in,       // Data input from the driving device
    input wire [1:0]  device_select, // 4-bit control signal to select the device
    output wire [63:0] CU,           // Connection to the CU device
    output wire [63:0] MM,           // Connection to the MM device
    output wire [63:0] ALU,          // Connection to the ALU device
    output wire [63:0] IO            // Connection to the IO device
);
    // Control logic for bus direction
    assign CU = (device_select == 4'b00) ? data_in : 64'bz;
    assign MM = (device_select == 4'b01) ? data_in : 64'bz;
    assign ALU = (device_select == 4'b10) ? data_in : 64'bz;
    assign IO = (device_select == 4'b11) ? data_in : 64'bz;
    assign ClockOut = ClockIn;

endmodule

