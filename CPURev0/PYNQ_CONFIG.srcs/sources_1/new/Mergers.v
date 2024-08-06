`timescale 1ns / 1ps

module BusMerger(
    input wire [63:0] CU_IN,
    input wire [63:0] MM_IN,
    input wire [63:0] ALU_IN,
    input wire [63:0] IO_IN,
    input wire clk,
    input wire [1:0] select_in,  // 2-bit select signal for input
    output reg [63:0] OutBus
);

    // Internal wire to hold the selected input
    reg [63:0] selected_input;

    // Always block to update the selected_input based on select_in
    always @(*) begin
        case (select_in)
            2'b00: selected_input = CU_IN;
            2'b01: selected_input = MM_IN;
            2'b10: selected_input = ALU_IN;
            2'b11: selected_input = IO_IN;
            default: selected_input = 64'b0; // Default case
        endcase
    end

    // Always block to update the outputs on the rising edge of the clock
    always @(posedge clk) begin
        OutBus <= selected_input;
    end

endmodule
