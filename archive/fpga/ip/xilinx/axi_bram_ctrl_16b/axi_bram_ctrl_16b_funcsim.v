// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3.1 (lin64) Build 1056140 Thu Oct 30 16:30:39 MDT 2014
// Date        : Wed Apr  8 23:17:21 2015
// Host        : parallella running 64-bit Ubuntu 14.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/aolofsson/Work_all/parallella-hw/fpga/ip/xilinx/axi_bram_ctrl_16b/axi_bram_ctrl_16b_funcsim.v
// Design      : axi_bram_ctrl_16b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2014.3.1" *) (* CHECK_LICENSE_TYPE = "axi_bram_ctrl_16b,axi_bram_ctrl,{}" *) 
(* core_generation_info = "axi_bram_ctrl_16b,axi_bram_ctrl,{x_ipProduct=Vivado 2014.3.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_bram_ctrl,x_ipVersion=4.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,C_BRAM_INST_MODE=EXTERNAL,C_MEMORY_DEPTH=16384,C_BRAM_ADDR_WIDTH=14,C_S_AXI_ADDR_WIDTH=16,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ID_WIDTH=1,C_S_AXI_PROTOCOL=AXI4LITE,C_S_AXI_SUPPORTS_NARROW_BURST=0,C_SINGLE_PORT_BRAM=1,C_FAMILY=zynq,C_S_AXI_CTRL_ADDR_WIDTH=32,C_S_AXI_CTRL_DATA_WIDTH=32,C_ECC=0,C_ECC_TYPE=0,C_FAULT_INJECT=0,C_ECC_ONOFF_RESET_VALUE=0}" *) 
(* NotValidForBitStream *)
module axi_bram_ctrl_16b
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) input s_axi_aresetn;
  input [15:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  input [15:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  output [3:0]bram_we_a;
  output [15:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;

  wire [15:0]bram_addr_a;
  wire bram_clk_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_bram_clk_b_UNCONNECTED;
  wire NLW_U0_bram_en_b_UNCONNECTED;
  wire NLW_U0_bram_rst_b_UNCONNECTED;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire [15:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [3:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [31:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;

(* C_BRAM_ADDR_WIDTH = "14" *) 
   (* C_BRAM_INST_MODE = "EXTERNAL" *) 
   (* C_ECC = "0" *) 
   (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
   (* C_ECC_TYPE = "0" *) 
   (* C_FAMILY = "zynq" *) 
   (* C_FAULT_INJECT = "0" *) 
   (* C_MEMORY_DEPTH = "16384" *) 
   (* C_SINGLE_PORT_BRAM = "1" *) 
   (* C_S_AXI_ADDR_WIDTH = "16" *) 
   (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
   (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
   (* C_S_AXI_DATA_WIDTH = "32" *) 
   (* C_S_AXI_ID_WIDTH = "1" *) 
   (* C_S_AXI_PROTOCOL = "AXI4LITE" *) 
   (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0 U0
       (.bram_addr_a(bram_addr_a),
        .bram_addr_b(NLW_U0_bram_addr_b_UNCONNECTED[15:0]),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(NLW_U0_bram_clk_b_UNCONNECTED),
        .bram_en_a(bram_en_a),
        .bram_en_b(NLW_U0_bram_en_b_UNCONNECTED),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(NLW_U0_bram_rst_b_UNCONNECTED),
        .bram_we_a(bram_we_a),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[3:0]),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[31:0]),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_MEMORY_DEPTH = "16384" *) 
(* C_BRAM_ADDR_WIDTH = "14" *) (* C_S_AXI_ADDR_WIDTH = "16" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_S_AXI_ID_WIDTH = "1" *) (* C_S_AXI_PROTOCOL = "AXI4LITE" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
(* C_SINGLE_PORT_BRAM = "1" *) (* C_FAMILY = "zynq" *) (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
(* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_ECC = "0" *) (* C_ECC_TYPE = "0" *) 
(* C_FAULT_INJECT = "0" *) (* C_ECC_ONOFF_RESET_VALUE = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module axi_bram_ctrl_16b_axi_bram_ctrl__parameterized0
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [0:0]s_axi_awid;
  input [15:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [15:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [15:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [3:0]bram_we_b;
  output [15:0]bram_addr_b;
  output [31:0]bram_wrdata_b;
  input [31:0]bram_rddata_b;

  wire \<const0> ;
  wire [15:2]\^bram_addr_a ;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire [31:0]bram_rddata_b;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire \n_0_bram_we_a[0]_INST_0_i_1 ;
  wire \n_0_bram_we_a[1]_INST_0_i_1 ;
  wire \n_0_bram_we_a[2]_INST_0_i_1 ;
  wire \n_0_bram_we_a[3]_INST_0_i_2 ;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire s_axi_ctrl_rready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[15:2] = \^bram_addr_a [15:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[15] = \<const0> ;
  assign bram_addr_b[14] = \<const0> ;
  assign bram_addr_b[13] = \<const0> ;
  assign bram_addr_b[12] = \<const0> ;
  assign bram_addr_b[11] = \<const0> ;
  assign bram_addr_b[10] = \<const0> ;
  assign bram_addr_b[9] = \<const0> ;
  assign bram_addr_b[8] = \<const0> ;
  assign bram_addr_b[7] = \<const0> ;
  assign bram_addr_b[6] = \<const0> ;
  assign bram_addr_b[5] = \<const0> ;
  assign bram_addr_b[4] = \<const0> ;
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = \<const0> ;
  assign bram_en_b = \<const0> ;
  assign bram_rst_b = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_a[31:0] = s_axi_wdata;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rdata[31:0] = bram_rddata_a;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = s_axi_rlast;
  assign s_axi_wready = s_axi_awready;
GND GND
       (.G(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'hBFFF)) 
     \bram_we_a[0]_INST_0_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_wstrb[0]),
        .O(\n_0_bram_we_a[0]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'hBFFF)) 
     \bram_we_a[1]_INST_0_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_wstrb[1]),
        .O(\n_0_bram_we_a[1]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'hBFFF)) 
     \bram_we_a[2]_INST_0_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_wstrb[2]),
        .O(\n_0_bram_we_a[2]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'hBFFF)) 
     \bram_we_a[3]_INST_0_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_wstrb[3]),
        .O(\n_0_bram_we_a[3]_INST_0_i_2 ));
axi_bram_ctrl_16b_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.I1(\n_0_bram_we_a[0]_INST_0_i_1 ),
        .I2(\n_0_bram_we_a[1]_INST_0_i_1 ),
        .I3(\n_0_bram_we_a[2]_INST_0_i_1 ),
        .I4(\n_0_bram_we_a[3]_INST_0_i_2 ),
        .O1(s_axi_rlast),
        .O2(bram_rst_a),
        .O3(s_axi_bvalid),
        .bram_addr_a(\^bram_addr_a ),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[15:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[15:2]),
        .s_axi_awid(s_axi_awid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl_top" *) 
module axi_bram_ctrl_16b_axi_bram_ctrl_top
   (bram_we_a,
    O1,
    O2,
    s_axi_awready,
    s_axi_arready,
    bram_en_a,
    bram_addr_a,
    O3,
    s_axi_bid,
    s_axi_rid,
    s_axi_arvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    I1,
    I2,
    I3,
    I4,
    s_axi_rready,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_bready,
    s_axi_awid,
    s_axi_arid);
  output [3:0]bram_we_a;
  output O1;
  output O2;
  output s_axi_awready;
  output s_axi_arready;
  output bram_en_a;
  output [13:0]bram_addr_a;
  output O3;
  output [0:0]s_axi_bid;
  output [0:0]s_axi_rid;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input I1;
  input I2;
  input I3;
  input I4;
  input s_axi_rready;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [13:0]s_axi_awaddr;
  input [13:0]s_axi_araddr;
  input s_axi_bready;
  input [0:0]s_axi_awid;
  input [0:0]s_axi_arid;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire O1;
  wire O2;
  wire O3;
  wire [13:0]bram_addr_a;
  wire bram_en_a;
  wire [3:0]bram_we_a;
  wire \n_8_GEN_AXI4LITE.I_AXI_LITE ;
  wire \n_9_GEN_AXI4LITE.I_AXI_LITE ;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [0:0]s_axi_awid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire s_axi_wvalid;

FDRE #(
    .INIT(1'b0)) 
     \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_8_GEN_AXI4LITE.I_AXI_LITE ),
        .Q(s_axi_bid),
        .R(O2));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_RID_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_9_GEN_AXI4LITE.I_AXI_LITE ),
        .Q(s_axi_rid),
        .R(O2));
axi_bram_ctrl_16b_axi_lite \GEN_AXI4LITE.I_AXI_LITE 
       (.I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .O1(O2),
        .O2(O3),
        .O3(O1),
        .O4(\n_8_GEN_AXI4LITE.I_AXI_LITE ),
        .O5(\n_9_GEN_AXI4LITE.I_AXI_LITE ),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awid(s_axi_awid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_lite" *) 
module axi_bram_ctrl_16b_axi_lite
   (s_axi_awready,
    O1,
    O2,
    bram_we_a,
    O3,
    O4,
    O5,
    s_axi_arready,
    bram_en_a,
    bram_addr_a,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    I1,
    I2,
    I3,
    I4,
    s_axi_rready,
    s_axi_bready,
    s_axi_awid,
    s_axi_bid,
    s_axi_arid,
    s_axi_rid,
    s_axi_awaddr,
    s_axi_araddr);
  output s_axi_awready;
  output O1;
  output O2;
  output [3:0]bram_we_a;
  output O3;
  output O4;
  output O5;
  output s_axi_arready;
  output bram_en_a;
  output [13:0]bram_addr_a;
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input I1;
  input I2;
  input I3;
  input I4;
  input s_axi_rready;
  input s_axi_bready;
  input [0:0]s_axi_awid;
  input [0:0]s_axi_bid;
  input [0:0]s_axi_arid;
  input [0:0]s_axi_rid;
  input [13:0]s_axi_awaddr;
  input [13:0]s_axi_araddr;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire axi_aresetn_d1;
  wire axi_wready_cmb;
  wire [13:0]bram_addr_a;
  wire bram_en_a;
  wire [3:0]bram_we_a;
  wire [2:0]bvalid_cnt;
(* RTL_KEEP = "yes" *)   wire [2:0]lite_sm_cs;
  wire lite_sm_ns0;
  wire \n_0_FSM_sequential_lite_sm_cs[0]_i_1 ;
  wire \n_0_FSM_sequential_lite_sm_cs[0]_i_2 ;
  wire \n_0_FSM_sequential_lite_sm_cs[1]_i_1 ;
  wire \n_0_FSM_sequential_lite_sm_cs[1]_i_2 ;
  wire \n_0_FSM_sequential_lite_sm_cs[1]_i_3 ;
  wire \n_0_FSM_sequential_lite_sm_cs[1]_i_4 ;
  wire \n_0_FSM_sequential_lite_sm_cs[1]_i_5 ;
  wire \n_0_FSM_sequential_lite_sm_cs[2]_i_1 ;
  wire \n_0_FSM_sequential_lite_sm_cs[2]_i_2 ;
  wire \n_0_GEN_ARREADY.axi_arready_int_i_1 ;
  wire \n_0_GEN_R.axi_rvalid_int_i_1 ;
  wire n_0_axi_bvalid_int_i_1;
  wire n_0_axi_wready_int_i_2;
  wire n_0_axi_wready_int_i_3;
  wire n_0_bram_en_a_INST_0_i_1;
  wire n_0_bram_en_a_INST_0_i_2;
  wire n_0_bram_en_a_INST_0_i_3;
  wire n_0_bram_en_a_INST_0_i_4;
  wire \n_0_bram_we_a[3]_INST_0_i_1 ;
  wire \n_0_bvalid_cnt[0]_i_1 ;
  wire \n_0_bvalid_cnt[1]_i_1 ;
  wire \n_0_bvalid_cnt[1]_i_2 ;
  wire \n_0_bvalid_cnt[2]_i_1 ;
  wire \n_0_bvalid_cnt[2]_i_2 ;
  wire \n_0_bvalid_cnt[2]_i_3 ;
  wire \n_0_bvalid_cnt[2]_i_4 ;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [0:0]s_axi_awid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire s_axi_wvalid;

LUT6 #(
    .INIT(64'hAAABBBABAAA888A8)) 
     \FSM_sequential_lite_sm_cs[0]_i_1 
       (.I0(\n_0_FSM_sequential_lite_sm_cs[0]_i_2 ),
        .I1(\n_0_FSM_sequential_lite_sm_cs[1]_i_3 ),
        .I2(\n_0_FSM_sequential_lite_sm_cs[1]_i_4 ),
        .I3(n_0_bram_en_a_INST_0_i_2),
        .I4(\n_0_FSM_sequential_lite_sm_cs[1]_i_5 ),
        .I5(lite_sm_cs[0]),
        .O(\n_0_FSM_sequential_lite_sm_cs[0]_i_1 ));
LUT3 #(
    .INIT(8'h02)) 
     \FSM_sequential_lite_sm_cs[0]_i_2 
       (.I0(s_axi_arvalid),
        .I1(lite_sm_cs[2]),
        .I2(lite_sm_cs[0]),
        .O(\n_0_FSM_sequential_lite_sm_cs[0]_i_2 ));
LUT6 #(
    .INIT(64'hAAABBBABAAA888A8)) 
     \FSM_sequential_lite_sm_cs[1]_i_1 
       (.I0(\n_0_FSM_sequential_lite_sm_cs[1]_i_2 ),
        .I1(\n_0_FSM_sequential_lite_sm_cs[1]_i_3 ),
        .I2(\n_0_FSM_sequential_lite_sm_cs[1]_i_4 ),
        .I3(n_0_bram_en_a_INST_0_i_2),
        .I4(\n_0_FSM_sequential_lite_sm_cs[1]_i_5 ),
        .I5(lite_sm_cs[1]),
        .O(\n_0_FSM_sequential_lite_sm_cs[1]_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \FSM_sequential_lite_sm_cs[1]_i_2 
       (.I0(lite_sm_cs[2]),
        .I1(lite_sm_cs[1]),
        .I2(s_axi_arvalid),
        .I3(lite_sm_cs[0]),
        .O(\n_0_FSM_sequential_lite_sm_cs[1]_i_2 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_sequential_lite_sm_cs[1]_i_3 
       (.I0(lite_sm_cs[1]),
        .I1(lite_sm_cs[2]),
        .O(\n_0_FSM_sequential_lite_sm_cs[1]_i_3 ));
LUT4 #(
    .INIT(16'h8F80)) 
     \FSM_sequential_lite_sm_cs[1]_i_4 
       (.I0(s_axi_rready),
        .I1(O3),
        .I2(lite_sm_cs[0]),
        .I3(s_axi_arvalid),
        .O(\n_0_FSM_sequential_lite_sm_cs[1]_i_4 ));
LUT6 #(
    .INIT(64'h8F8F8F808F808F80)) 
     \FSM_sequential_lite_sm_cs[1]_i_5 
       (.I0(s_axi_rready),
        .I1(O3),
        .I2(lite_sm_cs[0]),
        .I3(s_axi_arvalid),
        .I4(s_axi_wvalid),
        .I5(s_axi_awvalid),
        .O(\n_0_FSM_sequential_lite_sm_cs[1]_i_5 ));
LUT2 #(
    .INIT(4'h4)) 
     \FSM_sequential_lite_sm_cs[2]_i_1 
       (.I0(\n_0_FSM_sequential_lite_sm_cs[2]_i_2 ),
        .I1(lite_sm_cs[2]),
        .O(\n_0_FSM_sequential_lite_sm_cs[2]_i_1 ));
LUT6 #(
    .INIT(64'hFEAEFEAEFFAFFEAE)) 
     \FSM_sequential_lite_sm_cs[2]_i_2 
       (.I0(\n_0_FSM_sequential_lite_sm_cs[1]_i_3 ),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[0]),
        .I3(lite_sm_ns0),
        .I4(n_0_bram_en_a_INST_0_i_2),
        .I5(n_0_axi_wready_int_i_2),
        .O(\n_0_FSM_sequential_lite_sm_cs[2]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \FSM_sequential_lite_sm_cs[2]_i_3 
       (.I0(s_axi_rready),
        .I1(O3),
        .O(lite_sm_ns0));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_lite_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_lite_sm_cs[0]_i_1 ),
        .Q(lite_sm_cs[0]),
        .R(O1));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_lite_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_lite_sm_cs[1]_i_1 ),
        .Q(lite_sm_cs[1]),
        .R(O1));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_lite_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_lite_sm_cs[2]_i_1 ),
        .Q(lite_sm_cs[2]),
        .R(O1));
LUT6 #(
    .INIT(64'h0000FF00D500D500)) 
     \GEN_ARREADY.axi_arready_int_i_1 
       (.I0(axi_aresetn_d1),
        .I1(s_axi_rready),
        .I2(O3),
        .I3(s_axi_aresetn),
        .I4(s_axi_arvalid),
        .I5(s_axi_arready),
        .O(\n_0_GEN_ARREADY.axi_arready_int_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_ARREADY.axi_arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_ARREADY.axi_arready_int_i_1 ),
        .Q(s_axi_arready),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'hBF80)) 
     \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int[0]_i_1 
       (.I0(s_axi_awid),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_bid),
        .O(O4));
LUT4 #(
    .INIT(16'hBF80)) 
     \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_RID_int[0]_i_1 
       (.I0(s_axi_arid),
        .I1(s_axi_arvalid),
        .I2(s_axi_arready),
        .I3(s_axi_rid),
        .O(O5));
LUT6 #(
    .INIT(64'h0000FF0010001000)) 
     \GEN_R.axi_rvalid_int_i_1 
       (.I0(lite_sm_cs[2]),
        .I1(lite_sm_cs[0]),
        .I2(s_axi_arvalid),
        .I3(s_axi_aresetn),
        .I4(s_axi_rready),
        .I5(O3),
        .O(\n_0_GEN_R.axi_rvalid_int_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_R.axi_rvalid_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_R.axi_rvalid_int_i_1 ),
        .Q(O3),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     axi_aresetn_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_aresetn),
        .Q(axi_aresetn_d1),
        .R(1'b0));
LUT6 #(
    .INIT(64'hA8A8AAA8AAA8AAA8)) 
     axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .I3(bvalid_cnt[0]),
        .I4(O2),
        .I5(s_axi_bready),
        .O(n_0_axi_bvalid_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_bvalid_int_i_1),
        .Q(O2),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFF101100000000)) 
     axi_wready_int_i_1
       (.I0(s_axi_arvalid),
        .I1(n_0_axi_wready_int_i_2),
        .I2(\n_0_bram_we_a[3]_INST_0_i_1 ),
        .I3(bvalid_cnt[2]),
        .I4(lite_sm_cs[2]),
        .I5(n_0_axi_wready_int_i_3),
        .O(axi_wready_cmb));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'h7)) 
     axi_wready_int_i_2
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(n_0_axi_wready_int_i_2));
LUT2 #(
    .INIT(4'h1)) 
     axi_wready_int_i_3
       (.I0(lite_sm_cs[1]),
        .I1(lite_sm_cs[0]),
        .O(n_0_axi_wready_int_i_3));
FDRE #(
    .INIT(1'b0)) 
     axi_wready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_cmb),
        .Q(s_axi_awready),
        .R(O1));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[10]_INST_0 
       (.I0(s_axi_awaddr[8]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[8]),
        .O(bram_addr_a[8]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[11]_INST_0 
       (.I0(s_axi_awaddr[9]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[9]),
        .O(bram_addr_a[9]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[12]_INST_0 
       (.I0(s_axi_awaddr[10]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[10]),
        .O(bram_addr_a[10]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[13]_INST_0 
       (.I0(s_axi_awaddr[11]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[11]),
        .O(bram_addr_a[11]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[14]_INST_0 
       (.I0(s_axi_awaddr[12]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[12]),
        .O(bram_addr_a[12]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[15]_INST_0 
       (.I0(s_axi_awaddr[13]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[13]),
        .O(bram_addr_a[13]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[2]_INST_0 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[0]),
        .O(bram_addr_a[0]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[3]_INST_0 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[1]),
        .O(bram_addr_a[1]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[4]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[2]),
        .O(bram_addr_a[2]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[5]_INST_0 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[3]),
        .O(bram_addr_a[3]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[6]_INST_0 
       (.I0(s_axi_awaddr[4]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[4]),
        .O(bram_addr_a[4]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[7]_INST_0 
       (.I0(s_axi_awaddr[5]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[5]),
        .O(bram_addr_a[5]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[8]_INST_0 
       (.I0(s_axi_awaddr[6]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[6]),
        .O(bram_addr_a[6]));
LUT6 #(
    .INIT(64'hAAAFAAEEAAA0AA22)) 
     \bram_addr_a[9]_INST_0 
       (.I0(s_axi_awaddr[7]),
        .I1(s_axi_arvalid),
        .I2(lite_sm_cs[1]),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(s_axi_araddr[7]),
        .O(bram_addr_a[7]));
LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
     bram_en_a_INST_0
       (.I0(s_axi_aresetn),
        .I1(n_0_bram_en_a_INST_0_i_1),
        .I2(n_0_bram_en_a_INST_0_i_2),
        .I3(n_0_bram_en_a_INST_0_i_3),
        .I4(lite_sm_cs[0]),
        .I5(n_0_bram_en_a_INST_0_i_4),
        .O(bram_en_a));
LUT2 #(
    .INIT(4'h2)) 
     bram_en_a_INST_0_i_1
       (.I0(s_axi_arvalid),
        .I1(lite_sm_cs[2]),
        .O(n_0_bram_en_a_INST_0_i_1));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'h7F)) 
     bram_en_a_INST_0_i_2
       (.I0(bvalid_cnt[1]),
        .I1(bvalid_cnt[0]),
        .I2(bvalid_cnt[2]),
        .O(n_0_bram_en_a_INST_0_i_2));
LUT5 #(
    .INIT(32'h0000FF40)) 
     bram_en_a_INST_0_i_3
       (.I0(lite_sm_cs[1]),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_arvalid),
        .I4(lite_sm_cs[2]),
        .O(n_0_bram_en_a_INST_0_i_3));
LUT2 #(
    .INIT(4'h2)) 
     bram_en_a_INST_0_i_4
       (.I0(lite_sm_cs[2]),
        .I1(lite_sm_cs[1]),
        .O(n_0_bram_en_a_INST_0_i_4));
LUT1 #(
    .INIT(2'h1)) 
     bram_rst_a_INST_0
       (.I0(s_axi_aresetn),
        .O(O1));
LUT6 #(
    .INIT(64'h00000000AAAA0051)) 
     \bram_we_a[0]_INST_0 
       (.I0(lite_sm_cs[2]),
        .I1(bvalid_cnt[2]),
        .I2(\n_0_bram_we_a[3]_INST_0_i_1 ),
        .I3(I1),
        .I4(lite_sm_cs[0]),
        .I5(lite_sm_cs[1]),
        .O(bram_we_a[0]));
LUT6 #(
    .INIT(64'h00000000AAAA0051)) 
     \bram_we_a[1]_INST_0 
       (.I0(lite_sm_cs[2]),
        .I1(bvalid_cnt[2]),
        .I2(\n_0_bram_we_a[3]_INST_0_i_1 ),
        .I3(I2),
        .I4(lite_sm_cs[0]),
        .I5(lite_sm_cs[1]),
        .O(bram_we_a[1]));
LUT6 #(
    .INIT(64'h00000000AAAA0051)) 
     \bram_we_a[2]_INST_0 
       (.I0(lite_sm_cs[2]),
        .I1(bvalid_cnt[2]),
        .I2(\n_0_bram_we_a[3]_INST_0_i_1 ),
        .I3(I3),
        .I4(lite_sm_cs[0]),
        .I5(lite_sm_cs[1]),
        .O(bram_we_a[2]));
LUT6 #(
    .INIT(64'h00000000AAAA0051)) 
     \bram_we_a[3]_INST_0 
       (.I0(lite_sm_cs[2]),
        .I1(bvalid_cnt[2]),
        .I2(\n_0_bram_we_a[3]_INST_0_i_1 ),
        .I3(I4),
        .I4(lite_sm_cs[0]),
        .I5(lite_sm_cs[1]),
        .O(bram_we_a[3]));
LUT2 #(
    .INIT(4'h7)) 
     \bram_we_a[3]_INST_0_i_1 
       (.I0(bvalid_cnt[0]),
        .I1(bvalid_cnt[1]),
        .O(\n_0_bram_we_a[3]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hB0F08F0F4F0F70F0)) 
     \bvalid_cnt[0]_i_1 
       (.I0(\n_0_bvalid_cnt[2]_i_2 ),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[0]),
        .I3(bvalid_cnt[1]),
        .I4(\n_0_bvalid_cnt[2]_i_3 ),
        .I5(\n_0_bvalid_cnt[1]_i_2 ),
        .O(\n_0_bvalid_cnt[0]_i_1 ));
LUT6 #(
    .INIT(64'hFF00F00F4FF07F00)) 
     \bvalid_cnt[1]_i_1 
       (.I0(\n_0_bvalid_cnt[2]_i_2 ),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[0]),
        .I3(bvalid_cnt[1]),
        .I4(\n_0_bvalid_cnt[2]_i_3 ),
        .I5(\n_0_bvalid_cnt[1]_i_2 ),
        .O(\n_0_bvalid_cnt[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hFE000000)) 
     \bvalid_cnt[1]_i_2 
       (.I0(bvalid_cnt[2]),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[0]),
        .I3(O2),
        .I4(s_axi_bready),
        .O(\n_0_bvalid_cnt[1]_i_2 ));
LUT6 #(
    .INIT(64'h5FFFFFFCC0000000)) 
     \bvalid_cnt[2]_i_1 
       (.I0(\n_0_bvalid_cnt[2]_i_2 ),
        .I1(\n_0_bvalid_cnt[2]_i_3 ),
        .I2(\n_0_bvalid_cnt[2]_i_4 ),
        .I3(bvalid_cnt[0]),
        .I4(bvalid_cnt[1]),
        .I5(bvalid_cnt[2]),
        .O(\n_0_bvalid_cnt[2]_i_1 ));
LUT3 #(
    .INIT(8'h02)) 
     \bvalid_cnt[2]_i_2 
       (.I0(lite_sm_cs[2]),
        .I1(lite_sm_cs[0]),
        .I2(lite_sm_cs[1]),
        .O(\n_0_bvalid_cnt[2]_i_2 ));
LUT6 #(
    .INIT(64'h000000000000FF40)) 
     \bvalid_cnt[2]_i_3 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(lite_sm_cs[2]),
        .I4(lite_sm_cs[0]),
        .I5(lite_sm_cs[1]),
        .O(\n_0_bvalid_cnt[2]_i_3 ));
LUT2 #(
    .INIT(4'h7)) 
     \bvalid_cnt[2]_i_4 
       (.I0(s_axi_bready),
        .I1(O2),
        .O(\n_0_bvalid_cnt[2]_i_4 ));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[0]_i_1 ),
        .Q(bvalid_cnt[0]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[1]_i_1 ),
        .Q(bvalid_cnt[1]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[2]_i_1 ),
        .Q(bvalid_cnt[2]),
        .R(O1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
