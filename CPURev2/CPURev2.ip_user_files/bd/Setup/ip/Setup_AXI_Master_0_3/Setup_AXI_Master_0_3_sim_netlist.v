// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Aug  6 12:45:02 2024
// Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_AXI_Master_0_3/Setup_AXI_Master_0_3_sim_netlist.v
// Design      : Setup_AXI_Master_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Setup_AXI_Master_0_3,AXI_Master,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "AXI_Master,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module Setup_AXI_Master_0_3
   (M_AXI_AWADDR,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARADDR,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RVALID,
    M_AXI_RREADY,
    clk,
    reset,
    start_read,
    start_write,
    write_data,
    read_data,
    address,
    done,
    err,
    interrupt);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 5e+07, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]M_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]M_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]M_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]M_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]M_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output M_AXI_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET reset, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input start_read;
  input start_write;
  input [31:0]write_data;
  output [31:0]read_data;
  input [31:0]address;
  output done;
  output err;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire [31:0]M_AXI_ARADDR;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [31:0]M_AXI_AWADDR;
  wire M_AXI_AWREADY;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_RDATA;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WREADY;
  wire [2:2]\^M_AXI_WSTRB ;
  wire M_AXI_WVALID;
  wire [31:0]address;
  wire clk;
  wire done;
  wire [31:0]read_data;
  wire reset;
  wire start_read;
  wire start_write;
  wire [31:0]write_data;

  assign M_AXI_AWVALID = M_AXI_WVALID;
  assign M_AXI_WSTRB[3] = \^M_AXI_WSTRB [2];
  assign M_AXI_WSTRB[2] = \^M_AXI_WSTRB [2];
  assign M_AXI_WSTRB[1] = \^M_AXI_WSTRB [2];
  assign M_AXI_WSTRB[0] = \^M_AXI_WSTRB [2];
  assign err = \<const0> ;
  assign interrupt = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Setup_AXI_Master_0_3_AXI_Master U0
       (.M_AXI_ARADDR(M_AXI_ARADDR),
        .M_AXI_ARREADY(M_AXI_ARREADY),
        .M_AXI_ARVALID(M_AXI_ARVALID),
        .M_AXI_AWADDR(M_AXI_AWADDR),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_BREADY(M_AXI_BREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_RDATA(M_AXI_RDATA),
        .M_AXI_RREADY(M_AXI_RREADY),
        .M_AXI_RVALID(M_AXI_RVALID),
        .M_AXI_WDATA(M_AXI_WDATA),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WSTRB(\^M_AXI_WSTRB ),
        .M_AXI_WVALID(M_AXI_WVALID),
        .address(address),
        .clk(clk),
        .done(done),
        .read_data(read_data),
        .reset(reset),
        .start_read(start_read),
        .start_write(start_write),
        .write_data(write_data));
endmodule

(* ORIG_REF_NAME = "AXI_Master" *) 
module Setup_AXI_Master_0_3_AXI_Master
   (M_AXI_AWADDR,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_ARADDR,
    read_data,
    M_AXI_WVALID,
    M_AXI_BREADY,
    M_AXI_ARVALID,
    M_AXI_RREADY,
    done,
    start_write,
    start_read,
    reset,
    M_AXI_RVALID,
    clk,
    address,
    write_data,
    M_AXI_RDATA,
    M_AXI_AWREADY,
    M_AXI_WREADY,
    M_AXI_ARREADY,
    M_AXI_BVALID);
  output [31:0]M_AXI_AWADDR;
  output [31:0]M_AXI_WDATA;
  output [0:0]M_AXI_WSTRB;
  output [31:0]M_AXI_ARADDR;
  output [31:0]read_data;
  output M_AXI_WVALID;
  output M_AXI_BREADY;
  output M_AXI_ARVALID;
  output M_AXI_RREADY;
  output done;
  input start_write;
  input start_read;
  input reset;
  input M_AXI_RVALID;
  input clk;
  input [31:0]address;
  input [31:0]write_data;
  input [31:0]M_AXI_RDATA;
  input M_AXI_AWREADY;
  input M_AXI_WREADY;
  input M_AXI_ARREADY;
  input M_AXI_BVALID;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire [31:0]M_AXI_ARADDR;
  wire \M_AXI_ARADDR[31]_i_1_n_0 ;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire M_AXI_ARVALID_i_1_n_0;
  wire M_AXI_ARVALID_i_2_n_0;
  wire M_AXI_ARVALID_i_3_n_0;
  wire [31:0]M_AXI_AWADDR;
  wire \M_AXI_AWADDR[31]_i_1_n_0 ;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID_i_1_n_0;
  wire M_AXI_BREADY;
  wire M_AXI_BREADY_i_1_n_0;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_RDATA;
  wire M_AXI_RREADY;
  wire M_AXI_RREADY_i_1_n_0;
  wire M_AXI_RVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WREADY;
  wire [0:0]M_AXI_WSTRB;
  wire M_AXI_WVALID;
  wire [31:0]address;
  wire clk;
  wire done;
  wire done_i_1_n_0;
  wire [31:0]read_data;
  wire \read_data[31]_i_1_n_0 ;
  wire reset;
  wire start_read;
  wire start_write;
  wire [2:0]state;
  wire state0__0;
  wire [1:1]state__0;
  wire [31:0]write_data;

  LUT6 #(
    .INIT(64'h4744477700330000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(M_AXI_RVALID),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state[1]),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABF8A8ABABF8080)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0),
        .I1(M_AXI_RVALID),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[1]),
        .I5(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(start_write),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(state__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8F8F8F80)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(M_AXI_AWREADY),
        .I1(M_AXI_WREADY),
        .I2(state[0]),
        .I3(start_write),
        .I4(start_read),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3A303030)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[0]),
        .I1(M_AXI_RVALID),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(M_AXI_ARREADY),
        .I1(state[0]),
        .I2(M_AXI_BVALID),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,write_resp:010,read_resp:100,read:011,write:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "idle:000,write_resp:010,read_resp:100,read:011,write:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "idle:000,write_resp:010,read_resp:100,read:011,write:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \M_AXI_ARADDR[31]_i_1 
       (.I0(state[1]),
        .I1(start_write),
        .I2(start_read),
        .I3(state[2]),
        .I4(state[0]),
        .I5(reset),
        .O(\M_AXI_ARADDR[31]_i_1_n_0 ));
  FDRE \M_AXI_ARADDR_reg[0] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[0]),
        .Q(M_AXI_ARADDR[0]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[10] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[10]),
        .Q(M_AXI_ARADDR[10]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[11] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[11]),
        .Q(M_AXI_ARADDR[11]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[12] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[12]),
        .Q(M_AXI_ARADDR[12]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[13] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[13]),
        .Q(M_AXI_ARADDR[13]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[14] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[14]),
        .Q(M_AXI_ARADDR[14]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[15] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[15]),
        .Q(M_AXI_ARADDR[15]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[16] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[16]),
        .Q(M_AXI_ARADDR[16]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[17] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[17]),
        .Q(M_AXI_ARADDR[17]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[18] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[18]),
        .Q(M_AXI_ARADDR[18]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[19] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[19]),
        .Q(M_AXI_ARADDR[19]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[1] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[1]),
        .Q(M_AXI_ARADDR[1]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[20] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[20]),
        .Q(M_AXI_ARADDR[20]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[21] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[21]),
        .Q(M_AXI_ARADDR[21]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[22] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[22]),
        .Q(M_AXI_ARADDR[22]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[23] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[23]),
        .Q(M_AXI_ARADDR[23]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[24] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[24]),
        .Q(M_AXI_ARADDR[24]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[25] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[25]),
        .Q(M_AXI_ARADDR[25]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[26] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[26]),
        .Q(M_AXI_ARADDR[26]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[27] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[27]),
        .Q(M_AXI_ARADDR[27]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[28] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[28]),
        .Q(M_AXI_ARADDR[28]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[29] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[29]),
        .Q(M_AXI_ARADDR[29]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[2] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[2]),
        .Q(M_AXI_ARADDR[2]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[30] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[30]),
        .Q(M_AXI_ARADDR[30]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[31] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[31]),
        .Q(M_AXI_ARADDR[31]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[3] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[3]),
        .Q(M_AXI_ARADDR[3]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[4] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[4]),
        .Q(M_AXI_ARADDR[4]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[5] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[5]),
        .Q(M_AXI_ARADDR[5]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[6] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[6]),
        .Q(M_AXI_ARADDR[6]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[7] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[7]),
        .Q(M_AXI_ARADDR[7]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[8] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[8]),
        .Q(M_AXI_ARADDR[8]),
        .R(1'b0));
  FDRE \M_AXI_ARADDR_reg[9] 
       (.C(clk),
        .CE(\M_AXI_ARADDR[31]_i_1_n_0 ),
        .D(address[9]),
        .Q(M_AXI_ARADDR[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF7777778B000000)) 
    M_AXI_ARVALID_i_1
       (.I0(M_AXI_ARVALID_i_2_n_0),
        .I1(state[0]),
        .I2(start_write),
        .I3(start_read),
        .I4(M_AXI_ARVALID_i_3_n_0),
        .I5(M_AXI_ARVALID),
        .O(M_AXI_ARVALID_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    M_AXI_ARVALID_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .I2(M_AXI_ARREADY),
        .O(M_AXI_ARVALID_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    M_AXI_ARVALID_i_3
       (.I0(state[2]),
        .I1(state[1]),
        .O(M_AXI_ARVALID_i_3_n_0));
  FDCE M_AXI_ARVALID_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(M_AXI_ARVALID_i_1_n_0),
        .Q(M_AXI_ARVALID));
  LUT5 #(
    .INIT(32'h00000004)) 
    \M_AXI_AWADDR[31]_i_1 
       (.I0(state[1]),
        .I1(start_write),
        .I2(state[2]),
        .I3(state[0]),
        .I4(reset),
        .O(\M_AXI_AWADDR[31]_i_1_n_0 ));
  FDRE \M_AXI_AWADDR_reg[0] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[0]),
        .Q(M_AXI_AWADDR[0]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[10] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[10]),
        .Q(M_AXI_AWADDR[10]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[11] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[11]),
        .Q(M_AXI_AWADDR[11]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[12] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[12]),
        .Q(M_AXI_AWADDR[12]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[13] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[13]),
        .Q(M_AXI_AWADDR[13]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[14] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[14]),
        .Q(M_AXI_AWADDR[14]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[15] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[15]),
        .Q(M_AXI_AWADDR[15]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[16] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[16]),
        .Q(M_AXI_AWADDR[16]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[17] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[17]),
        .Q(M_AXI_AWADDR[17]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[18] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[18]),
        .Q(M_AXI_AWADDR[18]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[19] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[19]),
        .Q(M_AXI_AWADDR[19]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[1] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[1]),
        .Q(M_AXI_AWADDR[1]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[20] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[20]),
        .Q(M_AXI_AWADDR[20]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[21] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[21]),
        .Q(M_AXI_AWADDR[21]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[22] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[22]),
        .Q(M_AXI_AWADDR[22]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[23] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[23]),
        .Q(M_AXI_AWADDR[23]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[24] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[24]),
        .Q(M_AXI_AWADDR[24]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[25] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[25]),
        .Q(M_AXI_AWADDR[25]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[26] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[26]),
        .Q(M_AXI_AWADDR[26]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[27] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[27]),
        .Q(M_AXI_AWADDR[27]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[28] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[28]),
        .Q(M_AXI_AWADDR[28]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[29] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[29]),
        .Q(M_AXI_AWADDR[29]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[2] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[2]),
        .Q(M_AXI_AWADDR[2]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[30] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[30]),
        .Q(M_AXI_AWADDR[30]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[31] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[31]),
        .Q(M_AXI_AWADDR[31]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[3] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[3]),
        .Q(M_AXI_AWADDR[3]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[4] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[4]),
        .Q(M_AXI_AWADDR[4]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[5] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[5]),
        .Q(M_AXI_AWADDR[5]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[6] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[6]),
        .Q(M_AXI_AWADDR[6]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[7] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[7]),
        .Q(M_AXI_AWADDR[7]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[8] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[8]),
        .Q(M_AXI_AWADDR[8]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[9] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(address[9]),
        .Q(M_AXI_AWADDR[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEFFFFFF00100010)) 
    M_AXI_AWVALID_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(start_write),
        .I3(state[0]),
        .I4(state0__0),
        .I5(M_AXI_WVALID),
        .O(M_AXI_AWVALID_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    M_AXI_AWVALID_i_2
       (.I0(M_AXI_AWREADY),
        .I1(M_AXI_WREADY),
        .O(state0__0));
  FDCE M_AXI_AWVALID_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(M_AXI_AWVALID_i_1_n_0),
        .Q(M_AXI_WVALID));
  LUT6 #(
    .INIT(64'hFCFFFFFF00080008)) 
    M_AXI_BREADY_i_1
       (.I0(state0__0),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(M_AXI_BVALID),
        .I5(M_AXI_BREADY),
        .O(M_AXI_BREADY_i_1_n_0));
  FDCE M_AXI_BREADY_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(M_AXI_BREADY_i_1_n_0),
        .Q(M_AXI_BREADY));
  LUT6 #(
    .INIT(64'hFCFFFFFF00008080)) 
    M_AXI_RREADY_i_1
       (.I0(M_AXI_ARREADY),
        .I1(state[0]),
        .I2(state[1]),
        .I3(M_AXI_RVALID),
        .I4(state[2]),
        .I5(M_AXI_RREADY),
        .O(M_AXI_RREADY_i_1_n_0));
  FDCE M_AXI_RREADY_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(M_AXI_RREADY_i_1_n_0),
        .Q(M_AXI_RREADY));
  FDRE \M_AXI_WDATA_reg[0] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[0]),
        .Q(M_AXI_WDATA[0]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[10] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[10]),
        .Q(M_AXI_WDATA[10]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[11] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[11]),
        .Q(M_AXI_WDATA[11]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[12] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[12]),
        .Q(M_AXI_WDATA[12]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[13] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[13]),
        .Q(M_AXI_WDATA[13]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[14] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[14]),
        .Q(M_AXI_WDATA[14]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[15] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[15]),
        .Q(M_AXI_WDATA[15]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[16] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[16]),
        .Q(M_AXI_WDATA[16]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[17] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[17]),
        .Q(M_AXI_WDATA[17]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[18] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[18]),
        .Q(M_AXI_WDATA[18]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[19] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[19]),
        .Q(M_AXI_WDATA[19]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[1] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[1]),
        .Q(M_AXI_WDATA[1]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[20] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[20]),
        .Q(M_AXI_WDATA[20]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[21] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[21]),
        .Q(M_AXI_WDATA[21]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[22] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[22]),
        .Q(M_AXI_WDATA[22]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[23] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[23]),
        .Q(M_AXI_WDATA[23]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[24] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[24]),
        .Q(M_AXI_WDATA[24]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[25] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[25]),
        .Q(M_AXI_WDATA[25]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[26] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[26]),
        .Q(M_AXI_WDATA[26]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[27] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[27]),
        .Q(M_AXI_WDATA[27]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[28] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[28]),
        .Q(M_AXI_WDATA[28]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[29] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[29]),
        .Q(M_AXI_WDATA[29]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[2] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[2]),
        .Q(M_AXI_WDATA[2]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[30] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[30]),
        .Q(M_AXI_WDATA[30]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[31] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[31]),
        .Q(M_AXI_WDATA[31]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[3] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[3]),
        .Q(M_AXI_WDATA[3]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[4] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[4]),
        .Q(M_AXI_WDATA[4]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[5] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[5]),
        .Q(M_AXI_WDATA[5]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[6] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[6]),
        .Q(M_AXI_WDATA[6]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[7] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[7]),
        .Q(M_AXI_WDATA[7]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[8] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[8]),
        .Q(M_AXI_WDATA[8]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[9] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(write_data[9]),
        .Q(M_AXI_WDATA[9]),
        .R(1'b0));
  FDRE \M_AXI_WSTRB_reg[3] 
       (.C(clk),
        .CE(\M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(start_write),
        .Q(M_AXI_WSTRB),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF05400040)) 
    done_i_1
       (.I0(state[0]),
        .I1(M_AXI_RVALID),
        .I2(state[2]),
        .I3(state[1]),
        .I4(M_AXI_BVALID),
        .I5(done),
        .O(done_i_1_n_0));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(done_i_1_n_0),
        .Q(done));
  LUT5 #(
    .INIT(32'h00000008)) 
    \read_data[31]_i_1 
       (.I0(state[2]),
        .I1(M_AXI_RVALID),
        .I2(state[1]),
        .I3(state[0]),
        .I4(reset),
        .O(\read_data[31]_i_1_n_0 ));
  FDRE \read_data_reg[0] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[0]),
        .Q(read_data[0]),
        .R(1'b0));
  FDRE \read_data_reg[10] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[10]),
        .Q(read_data[10]),
        .R(1'b0));
  FDRE \read_data_reg[11] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[11]),
        .Q(read_data[11]),
        .R(1'b0));
  FDRE \read_data_reg[12] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[12]),
        .Q(read_data[12]),
        .R(1'b0));
  FDRE \read_data_reg[13] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[13]),
        .Q(read_data[13]),
        .R(1'b0));
  FDRE \read_data_reg[14] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[14]),
        .Q(read_data[14]),
        .R(1'b0));
  FDRE \read_data_reg[15] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[15]),
        .Q(read_data[15]),
        .R(1'b0));
  FDRE \read_data_reg[16] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[16]),
        .Q(read_data[16]),
        .R(1'b0));
  FDRE \read_data_reg[17] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[17]),
        .Q(read_data[17]),
        .R(1'b0));
  FDRE \read_data_reg[18] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[18]),
        .Q(read_data[18]),
        .R(1'b0));
  FDRE \read_data_reg[19] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[19]),
        .Q(read_data[19]),
        .R(1'b0));
  FDRE \read_data_reg[1] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[1]),
        .Q(read_data[1]),
        .R(1'b0));
  FDRE \read_data_reg[20] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[20]),
        .Q(read_data[20]),
        .R(1'b0));
  FDRE \read_data_reg[21] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[21]),
        .Q(read_data[21]),
        .R(1'b0));
  FDRE \read_data_reg[22] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[22]),
        .Q(read_data[22]),
        .R(1'b0));
  FDRE \read_data_reg[23] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[23]),
        .Q(read_data[23]),
        .R(1'b0));
  FDRE \read_data_reg[24] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[24]),
        .Q(read_data[24]),
        .R(1'b0));
  FDRE \read_data_reg[25] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[25]),
        .Q(read_data[25]),
        .R(1'b0));
  FDRE \read_data_reg[26] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[26]),
        .Q(read_data[26]),
        .R(1'b0));
  FDRE \read_data_reg[27] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[27]),
        .Q(read_data[27]),
        .R(1'b0));
  FDRE \read_data_reg[28] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[28]),
        .Q(read_data[28]),
        .R(1'b0));
  FDRE \read_data_reg[29] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[29]),
        .Q(read_data[29]),
        .R(1'b0));
  FDRE \read_data_reg[2] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[2]),
        .Q(read_data[2]),
        .R(1'b0));
  FDRE \read_data_reg[30] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[30]),
        .Q(read_data[30]),
        .R(1'b0));
  FDRE \read_data_reg[31] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[31]),
        .Q(read_data[31]),
        .R(1'b0));
  FDRE \read_data_reg[3] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[3]),
        .Q(read_data[3]),
        .R(1'b0));
  FDRE \read_data_reg[4] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[4]),
        .Q(read_data[4]),
        .R(1'b0));
  FDRE \read_data_reg[5] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[5]),
        .Q(read_data[5]),
        .R(1'b0));
  FDRE \read_data_reg[6] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[6]),
        .Q(read_data[6]),
        .R(1'b0));
  FDRE \read_data_reg[7] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[7]),
        .Q(read_data[7]),
        .R(1'b0));
  FDRE \read_data_reg[8] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[8]),
        .Q(read_data[8]),
        .R(1'b0));
  FDRE \read_data_reg[9] 
       (.C(clk),
        .CE(\read_data[31]_i_1_n_0 ),
        .D(M_AXI_RDATA[9]),
        .Q(read_data[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
