`timescale 1ns / 1ps

module CPU(
    input wire clk,               // Clock signal
    input wire rst_n,
    
    output wire [5:0] CurrentStageDBG
);

    // Configuration Masks
    localparam CPU_CONFIG_ACTIVE      = 16'h0001;
    localparam CPU_CONFIG_PAGING      = 16'h0002;
    localparam CPU_CONFIG_INTERRUPTS  = 16'h0004;

    // Status Masks
    localparam CPU_STATUS_ZERO        = 16'h0001;
    localparam CPU_STATUS_INTERRUPT   = 16'h0002;
    localparam CPU_STATUS_CMP         = 16'h0004;
    localparam CPU_STATUS_OVERFLOW    = 16'h0008;
    
    // Define registers
//    reg [63:0] r0, r1, r2; // General Purpose Registers
//    reg [63:0] rax, rbx, rcx, rdx, rsi, rdi; // (Return Address), (Argument Registers)
    
    reg [31:0] rsp, rip; // Stack Pointer, Instruction Pointer
    reg [7:0] status, err, interrupt; // Flags
    reg [31:0] page; // Page Table Address
    reg [15:0] conf; // Settings
    reg [31:0] IDT_addr; // IDT Address
    reg [15:0] IDT_size; // IDT Size
    reg [15:0] CIR; // Current Instruction Register
    reg [31:0] MAR; // Address Register
    reg [64:0] MDR; // Data Register

    reg [4:0] CurrentStage;

    assign CurrentStageDBG = CurrentStage;
    
    // Function to get the register value based on the register number
    function [63:0] GetRegister;
        input [7:0] register;
        begin
            case (register)
//                8'd0: GetRegister = r0;
//                8'd1: GetRegister = r1;
//                8'd2: GetRegister = r2;
//                8'd3: GetRegister = r3;
//                8'd4: GetRegister = r4;
//                8'd5: GetRegister = r5;
//                8'd6: GetRegister = r6;
//                8'd7: GetRegister = rax;
//                8'd8: GetRegister = rbx;
//                8'd9: GetRegister = rcx;
//                8'd10: GetRegister = rdx;
//                8'd11: GetRegister = rsi;
//                8'd12: GetRegister = rdi;
                8'd13: GetRegister = rsp;
                8'd14: GetRegister = rip;
                8'd15: GetRegister = status;
                8'd16: GetRegister = err;
                8'd17: GetRegister = interrupt;
                8'd18: GetRegister = page;
                8'd19: GetRegister = conf;
                8'd20: GetRegister = IDT_addr;
                8'd21: GetRegister = IDT_size;
                default: GetRegister = 64'b0;
            endcase
        end
    endfunction

    // Initial block to set default values
    initial begin
//        r0 = 64'd0; r1 = 64'd0; r2 = 64'd0; r3 = 64'd0; r4 = 64'd0; r5 = 64'd0; r6 = 64'd0;
//        r0 = 64'd0; r1 = 64'd0; r2 = 64'd0;
//        rax = 64'd0; rbx = 64'd0; rcx = 64'd0; rdx = 64'd0; rsi = 64'd0; rdi = 64'd0;
        rsp = 32'd0; rip = 32'd0;
        status = 8'd0; err = 8'd0; interrupt = 8'd0;
        page = 32'd0; conf = 16'd0;
        IDT_addr = 32'd0; IDT_size = 16'd0;
        CIR = 16'd0; MAR = 32'd0; MDR = 64'd0;
    end

    // Always block for synchronous operations
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Reset all registers
//            r0 <= 64'd0; r1 <= 64'd0; r2 <= 64'd0; r3 <= 64'd0; r4 <= 64'd0; r5 <= 64'd0; r6 <= 64'd0;
//            r0 <= 64'd0; r1 <= 64'd0; r2 <= 64'd0;
//            rax <= 64'd0; rbx <= 64'd0; rcx <= 64'd0; rdx <= 64'd0; rsi <= 64'd0; rdi <= 64'd0;
            rsp <= 32'd0; rip <= 32'd0;
            status <= 8'd0; err <= 8'd0; interrupt <= 8'd0;
            page <= 32'd0; conf <= 16'd0;
            IDT_addr <= 32'd0; IDT_size <= 16'd0;
            CIR <= 16'd0; MAR <= 32'd0; MDR <= 64'd0;;
            CurrentStage <= 5'b0;
        end else begin
            case (CurrentStage)
                5'b00000: begin
                    
                end
                5'b00001: begin
                    
                end
                5'b00010: begin
                    
                end
                default: begin
                    rip = rip + 1;
                end
            endcase
        end
    end

endmodule