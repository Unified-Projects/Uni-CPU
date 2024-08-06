`timescale 1ns / 1ps

module DeviceSelector(
    input wire CU_clk,
    input wire MM_clk,
    input wire ALU_clk,
    input wire IO_clk,
    output reg clk,
    output reg [1:0] dev
);

    always @(*) begin
        // Default values
        clk = 1'b0;
        dev = 2'b00;

        // Determine which clock is active
        if (CU_clk) begin
            clk = CU_clk;
            dev = 2'b00; // Device 00: CU
        end
        else if (MM_clk) begin
            clk = MM_clk;
            dev = 2'b01; // Device 01: MM
        end
        else if (ALU_clk) begin
            clk = ALU_clk;
            dev = 2'b10; // Device 10: ALU
        end
        else if (IO_clk) begin
            clk = IO_clk;
            dev = 2'b11; // Device 11: IO
        end
        else begin
            // No clock active (default case)
            clk = 1'b0;
            dev = 2'b00; // Default to device 00
        end
    end

endmodule