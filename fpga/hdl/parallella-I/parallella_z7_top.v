/*
  File: parallella_z7_top.v
 
  This file is part of the Parallella FPGA Reference Design.

  Copyright (C) 2013-2014 Adapteva, Inc.
  Contributed by Roman Trogan <support@adapteva.com>
  updates by Fred Huettig

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program (see the file COPYING).  If not, see
  <http://www.gnu.org/licenses/>.
*/


// Set # of GPIO pins based on target FPGA
`ifdef TARGET_7Z020
  `define GPIO_NUM 24
`elsif TARGET_7Z010
  `define  GPIO_NUM 12
`endif  // else throw an error!

module parallella_z7_top (/*AUTOARG*/
   // Outputs
   DDR_WEB, HDMI_D, HDMI_CLK, HDMI_HSYNC, HDMI_VSYNC, HDMI_DE,
   HDMI_SPDIF, RXI_DATA_P, RXI_DATA_N, RXI_FRAME_P, RXI_FRAME_N,
   RXI_LCLK_P, RXI_LCLK_N, TXI_WR_WAIT_P, TXI_WR_WAIT_N,
   TXI_RD_WAIT_P, TXI_RD_WAIT_N, RXI_CCLK_P, RXI_CCLK_N, DSP_RESET_N,
   // Inouts
   MIO, DDR_Clk, DDR_Clk_n, DDR_CKE, DDR_CS_n, DDR_RAS_n, DDR_CAS_n,
   DDR_BankAddr, DDR_Addr, DDR_ODT, DDR_DRSTB, DDR_DQ, DDR_DM,
   DDR_DQS, DDR_DQS_n, DDR_VRN, DDR_VRP, PROG_IO, PS_I2C_SCL,
   PS_I2C_SDA, GPIO_P, GPIO_N, PS_SRSTB, PS_CLK, PS_PORB,
   // Inputs
   HDMI_INT, TURBO_MODE, TXO_DATA_P,
   TXO_DATA_N, TXO_FRAME_P, TXO_FRAME_N, TXO_LCLK_P, TXO_LCLK_N,
   RXO_WR_WAIT_P, RXO_WR_WAIT_N, RXO_RD_WAIT, DSP_FLAG
   );

   parameter SIDW = 12; //ID Width
   parameter SAW  = 32; //Address Bus Width
   parameter SDW  = 32; //Data Bus Width
   parameter MIDW = 6;  //ID Width
   parameter MAW  = 32; //Address Bus Width
   parameter MDW  = 64; //Data Bus Width
   parameter STW  = 8;  //Number of strobes
   parameter DPW  = 20; //Debouncer pulse width 

   inout [53:0] MIO;
   inout 	PS_SRSTB;
   inout 	PS_CLK;
   inout 	PS_PORB;
   inout 	DDR_Clk;
   inout 	DDR_Clk_n;
   inout 	DDR_CKE;
   inout 	DDR_CS_n;
   inout 	DDR_RAS_n;
   inout 	DDR_CAS_n;
   inout 	DDR_WEB;
   inout [2:0] 	DDR_BankAddr;
   inout [14:0] DDR_Addr;
   inout 	DDR_ODT;
   inout 	DDR_DRSTB;
   inout [31:0] DDR_DQ;
   inout [3:0] 	DDR_DM;
   inout [3:0] 	DDR_DQS;
   inout [3:0] 	DDR_DQS_n;
   inout 	DDR_VRN;
   inout 	DDR_VRP;

   //######################
   //# HDMI Interface
   //######################
   output [23:8] HDMI_D;
   output 	HDMI_CLK;
   output 	HDMI_HSYNC;
   output 	HDMI_VSYNC;
   output 	HDMI_DE;
   output 	HDMI_SPDIF;
   input 	HDMI_INT;

   input 	TURBO_MODE;
   inout 	PROG_IO;

   inout 	PS_I2C_SCL;
   inout 	PS_I2C_SDA;

   inout [`GPIO_NUM-1:0] GPIO_P;
   inout [`GPIO_NUM-1:0] GPIO_N;

   //##################################
   //# LVDS to Epiphany 
   //##################################
   
   input [7:0]	TXO_DATA_P;
   input [7:0]	TXO_DATA_N;
   input 	TXO_FRAME_P;
   input 	TXO_FRAME_N;
   input 	TXO_LCLK_P;
   input 	TXO_LCLK_N;
   input 	RXO_WR_WAIT_P;
   input 	RXO_WR_WAIT_N;
   input 	RXO_RD_WAIT;
   
   output [7:0]  RXI_DATA_P;
   output [7:0]  RXI_DATA_N;
   output 	RXI_FRAME_P;
   output 	RXI_FRAME_N;
   output 	RXI_LCLK_P;
   output 	RXI_LCLK_N;
   output 	TXI_WR_WAIT_P;
   output 	TXI_WR_WAIT_N;
   output 	TXI_RD_WAIT_P;
   output 	TXI_RD_WAIT_N;

   output 	RXI_CCLK_P;
   output 	RXI_CCLK_N;
   output 	DSP_RESET_N;

   input 	DSP_FLAG;
   
   
   /*AUTO INPUT*/
   /*AUTO WIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire         I2CO_SDA_I;
   wire         I2C0_SDA_O;
   wire         I2C0_SDA_T;
   wire         I2CO_SCL_I;
   wire         I2C0_SCL_O;
   wire         I2C0_SCL_T;
   wire			cactive;		// From parallella of parallella.v
   wire			csysack;		// From parallella of parallella.v
   wire			FCLK_CLK0;// From system_stub of system_stub.v
   wire			FCLK_CLK3;// From system_stub of system_stub.v
   wire [31:0]  M_AXI_GP1_ARADDR;// From system_stub of system_stub.v
   wire [1:0]   M_AXI_GP1_ARBURST;// From system_stub of system_stub.v
   wire [3:0]   M_AXI_GP1_ARCACHE;// From system_stub of system_stub.v
   wire			M_AXI_GP1_ARESETN;// From system_stub of system_stub.v
   wire [11:0]  M_AXI_GP1_ARID;// From system_stub of system_stub.v
   wire [3:0]   M_AXI_GP1_ARLEN;// From system_stub of system_stub.v
   wire [1:0]   M_AXI_GP1_ARLOCK;// From system_stub of system_stub.v
   wire [2:0]   M_AXI_GP1_ARPROT;// From system_stub of system_stub.v
   wire [3:0]   M_AXI_GP1_ARQOS;// From system_stub of system_stub.v
   wire			M_AXI_GP1_ARREADY;// From parallella of parallella.v
   wire [2:0]   M_AXI_GP1_ARSIZE;// From system_stub of system_stub.v
   wire			M_AXI_GP1_ARVALID;// From system_stub of system_stub.v
   wire [31:0]  M_AXI_GP1_AWADDR;// From system_stub of system_stub.v
   wire [1:0]   M_AXI_GP1_AWBURST;// From system_stub of system_stub.v
   wire [3:0]   M_AXI_GP1_AWCACHE;// From system_stub of system_stub.v
   wire [11:0]  M_AXI_GP1_AWID;// From system_stub of system_stub.v
   wire [3:0]   M_AXI_GP1_AWLEN;// From system_stub of system_stub.v
   wire [1:0]   M_AXI_GP1_AWLOCK;// From system_stub of system_stub.v
   wire [2:0]   M_AXI_GP1_AWPROT;// From system_stub of system_stub.v
   wire [3:0]   M_AXI_GP1_AWQOS;// From system_stub of system_stub.v
   wire			M_AXI_GP1_AWREADY;// From parallella of parallella.v
   wire [2:0]   M_AXI_GP1_AWSIZE;// From system_stub of system_stub.v
   wire			M_AXI_GP1_AWVALID;// From system_stub of system_stub.v
   wire [SIDW-1:0] M_AXI_GP1_BID;// From parallella of parallella.v
   wire         M_AXI_GP1_BREADY;// From system_stub of system_stub.v
   wire [1:0]   M_AXI_GP1_BRESP;// From parallella of parallella.v
   wire         M_AXI_GP1_BVALID;// From parallella of parallella.v
   wire [SDW-1:0] M_AXI_GP1_RDATA;// From parallella of parallella.v
   wire [SIDW-1:0] M_AXI_GP1_RID;// From parallella of parallella.v
   wire         M_AXI_GP1_RLAST;// From parallella of parallella.v
   wire         M_AXI_GP1_RREADY;// From system_stub of system_stub.v
   wire [1:0]   M_AXI_GP1_RRESP;// From parallella of parallella.v
   wire			M_AXI_GP1_RVALID;// From parallella of parallella.v
   wire [31:0]  M_AXI_GP1_WDATA;// From system_stub of system_stub.v
   wire [11:0]  M_AXI_GP1_WID;// From system_stub of system_stub.v
   wire			M_AXI_GP1_WLAST;// From system_stub of system_stub.v
   wire			M_AXI_GP1_WREADY;// From parallella of parallella.v
   wire [3:0]   M_AXI_GP1_WSTRB;// From system_stub of system_stub.v
   wire			M_AXI_GP1_WVALID;// From system_stub of system_stub.v
   wire [MAW-1:0] S_AXI_HP1_ARADDR;// From parallella of parallella.v
   wire [1:0]   S_AXI_HP1_ARBURST;// From parallella of parallella.v
   wire [3:0]   S_AXI_HP1_ARCACHE;// From parallella of parallella.v
   wire         S_AXI_HP1_ARESETN;// From system_stub of system_stub.v
   wire [MIDW-1:0] S_AXI_HP1_ARID;// From parallella of parallella.v
   wire [3:0]	S_AXI_HP1_ARLEN;// From parallella of parallella.v
   wire [1:0]   S_AXI_HP1_ARLOCK;// From parallella of parallella.v
   wire [2:0]   S_AXI_HP1_ARPROT;// From parallella of parallella.v
   wire [3:0]   S_AXI_HP1_ARQOS;// From parallella of parallella.v
   wire         S_AXI_HP1_ARREADY;// From system_stub of system_stub.v
   wire [2:0]   S_AXI_HP1_ARSIZE;// From parallella of parallella.v
   wire			S_AXI_HP1_ARVALID;// From parallella of parallella.v
   wire [MAW-1:0] S_AXI_HP1_AWADDR;// From parallella of parallella.v
   wire [1:0]   S_AXI_HP1_AWBURST;// From parallella of parallella.v
   wire [3:0]   S_AXI_HP1_AWCACHE;// From parallella of parallella.v
   wire [MIDW-1:0] S_AXI_HP1_AWID;// From parallella of parallella.v
   wire [3:0]   S_AXI_HP1_AWLEN;// From parallella of parallella.v
   wire [1:0]   S_AXI_HP1_AWLOCK;// From parallella of parallella.v
   wire [2:0]   S_AXI_HP1_AWPROT;// From parallella of parallella.v
   wire [3:0]   S_AXI_HP1_AWQOS;// From parallella of parallella.v
   wire			S_AXI_HP1_AWREADY;// From system_stub of system_stub.v
   wire [2:0]   S_AXI_HP1_AWSIZE;// From parallella of parallella.v
   wire			S_AXI_HP1_AWVALID;// From parallella of parallella.v
   wire [5:0]   S_AXI_HP1_BID;// From system_stub of system_stub.v
   wire			S_AXI_HP1_BREADY;// From parallella of parallella.v
   wire [1:0]   S_AXI_HP1_BRESP;// From system_stub of system_stub.v
   wire			S_AXI_HP1_BVALID;// From system_stub of system_stub.v
   wire [63:0]  S_AXI_HP1_RDATA;// From system_stub of system_stub.v
   wire [5:0]   S_AXI_HP1_RID;// From system_stub of system_stub.v
   wire			S_AXI_HP1_RLAST;// From system_stub of system_stub.v
   wire			S_AXI_HP1_RREADY;// From parallella of parallella.v
   wire [1:0]   S_AXI_HP1_RRESP;// From system_stub of system_stub.v
   wire			S_AXI_HP1_RVALID;// From system_stub of system_stub.v
   wire [MDW-1:0] S_AXI_HP1_WDATA;// From parallella of parallella.v
   wire [MIDW-1:0] S_AXI_HP1_WID;// From parallella of parallella.v
   wire         S_AXI_HP1_WLAST;// From parallella of parallella.v
   wire			S_AXI_HP1_WREADY;// From system_stub of system_stub.v
   wire [STW-1:0] S_AXI_HP1_WSTRB;// From parallella of parallella.v
   wire			S_AXI_HP1_WVALID;// From parallella of parallella.v
   wire			reset_chip;		// From parallella of parallella.v
   wire			reset_fpga;		// From parallella of parallella.v
   // End of automatics

   wire [63:0]  GPIO_I;
   wire [63:0]  GPIO_O;
   wire [63:0]  GPIO_T;

`ifndef FEATURE_GPIO_EMIO  // Tie-off GPIO signals if not connected to PS7
   assign GPIO_O = 64'd0;
   assign GPIO_T = 64'hFFFF_FFFF_FFFF_FFFF;
`endif

   //###########
   //# REGS
   //###########
   reg [19:0]    por_cnt;
   reg           por_reset;
   
   //##########
   //# WIRES
   //##########
   wire 	 sys_clk;
   wire 	 esaxi_areset;
   wire 	 fpga_reset;
   wire [15:0] 	 hdmi_data;
   wire 	 hdmi_clk;
   wire 	 hdmi_hsync;
   wire 	 hdmi_vsync;
   wire 	 hdmi_data_e;
   wire 	 hdmi_spdif;
   wire [7:0] 	 rxi_data_p;
   wire [7:0] 	 rxi_data_n;
   wire 	 rxi_frame_p;
   wire 	 rxi_frame_n;
   wire 	 rxi_lclk_p;
   wire 	 rxi_lclk_n;
   wire 	 txi_wr_wait_p;
   wire 	 txi_wr_wait_n;
   wire 	 txi_rd_wait_p;
   wire 	 txi_rd_wait_n;
   wire [7:0] 	 txo_data_p;
   wire [7:0]    txo_data_n;
   wire 	 txo_frame_p;
   wire 	 txo_frame_n;
   wire 	 txo_lclk_p;
   wire 	 txo_lclk_n;
   wire 	 rxo_wr_wait_p;
   wire 	 rxo_wr_wait_n;
   wire 	 rxo_rd_wait_p;
   wire 	 rxo_rd_wait_n;
   wire 	 aafm_resetn;
   wire [1:0] 	 user_pb;

   //##############################
   //# I2C
   //##############################
   assign PS_I2C_SCL = I2C0_SCL_T ? 1'bZ : I2C0_SCL_O;
   assign I2C0_SCL_I = PS_I2C_SCL;
   assign PS_I2C_SDA = I2C0_SDA_T ? 1'bZ : I2C0_SDA_O;
   assign I2C0_SDA_I = PS_I2C_SDA;
   
   //##############################
   //# GPIOs
   //##############################

   // This module handles single-ended or differential, 7010 or 7020
   parallella_gpio_emio parallella_gpio_emio
     (
      // Outputs
      .GPIO_I(GPIO_I),
      // Inouts
      .GPIO_P(GPIO_P),
      .GPIO_N(GPIO_N),
      // Inputs
      .GPIO_O(GPIO_O),
      .GPIO_T(GPIO_T)
      );
   
   //##############################
   //# HDMI Interface
   //##############################

   assign HDMI_D     = hdmi_data;
   assign HDMI_CLK   = hdmi_clk;
   assign HDMI_HSYNC = hdmi_hsync;
   assign HDMI_VSYNC = hdmi_vsync;
   assign HDMI_DE    = hdmi_data_e;
   assign HDMI_SPDIF = hdmi_spdif;

`ifndef FEATURE_HDMI
   assign hdmi_data = 16'd0;
   assign hdmi_clk = 1'b0;
   assign hdmi_hsync = 1'b0;
   assign hdmi_vsync = 1'b0;
   assign hdmi_data_e = 1'b0;
   assign hdmi_spdif = 1'b0;
`endif   // !FEATURE_HDMI
   
   assign sys_clk      =  FCLK_CLK3;
   assign esaxi_areset = ~M_AXI_GP1_ARESETN;

   // Vivado doesn't supply these signals:
   assign M_AXI_GP1_ARESETN = ~por_reset;
   assign S_AXI_HP1_ARESETN = ~por_reset;
   
   //##############################
   //# E-Link Interface
   //#   TX/RX at the IO level refers to the Epiphany
   //#   (and the net names on the PCB).  Internally
   //#   tx/rx refers to the FPGA, therefore the following
   //#   connects TX->rx and tx->RX.
   //##############################

   assign rxi_data_p = TXO_DATA_P;
   assign rxi_data_n = TXO_DATA_N;

   assign rxi_frame_p = TXO_FRAME_P;
   assign rxi_frame_n = TXO_FRAME_N;

   assign rxi_lclk_p = TXO_LCLK_P;
   assign rxi_lclk_n = TXO_LCLK_N;

   assign txi_wr_wait_p = RXO_WR_WAIT_P;
   assign txi_wr_wait_n = RXO_WR_WAIT_N;
   assign txi_rd_wait_p = RXO_RD_WAIT;//AO, made single ended
   assign txi_rd_wait_n = 1'b0;//AO, made single ended

   assign RXI_DATA_P = txo_data_p;
   assign RXI_DATA_N = txo_data_n;
   
   assign RXI_FRAME_P = txo_frame_p;
   assign RXI_FRAME_N = txo_frame_n;
   
   assign RXI_LCLK_P  = txo_lclk_p;
   assign RXI_LCLK_N  = txo_lclk_n;

   assign TXI_WR_WAIT_P	= rxo_wr_wait_p;
   assign TXI_WR_WAIT_N	= rxo_wr_wait_n;
   assign TXI_RD_WAIT_P	= rxo_rd_wait_p;
   assign TXI_RD_WAIT_N	= rxo_rd_wait_n;

   assign DSP_RESET_N = aafm_resetn;
   
   //############
   //# Defaults
   //############

   //###########################################################
   //#                      RESET
   //# The following "reset-trigers" exist in the system:
   //# 1. POWER ON RESET    (por_reset)
   //# 2. AXI BUS RESET
   //# 3. SW RESET 
   //###########################################################
   
   //#################
   //# Power-On-Reset
   //#################

   always @ (posedge sys_clk)
     begin
        if (por_cnt[19:0] == 20'hff13f)//stop count, deassert reset  
          begin   
             por_reset     <= 1'b0;
          end
        else                          //keep count, assert reset
          begin
             por_reset     <= 1'b1;
             por_cnt[19:0] <= por_cnt[19:0] + 20'd1;
          end
     end // always @ (posedge sys_clk)
   
   //####################
   //# FPGA Logic Reset
   //####################

   assign fpga_reset = por_reset | esaxi_areset | reset_fpga;

   //#####################
   //# AAFM Board Reset
   //#####################

   assign aafm_resetn = ~(por_reset | reset_chip);

   //##################################
   //# PARALLELLA Instantiation
   //##################################
   /*parallella AUTO_TEMPLATE(
                            .rxi_cclk_p	   (RXI_CCLK_P),
			    .rxi_cclk_n	   (RXI_CCLK_N),
		            .esaxi_aclk	   (FCLK_CLK3),
    		            .emaxi_aclk	   (FCLK_CLK3),
                            .clkin_100     (FCLK_CLK0),
                            .reset         (fpga_reset),
                            .esaxi_\(.*\)  (M_AXI_GP1_@"(upcase (substring vl-name 6))"[]),
                            .emaxi_\(.*\)  (S_AXI_HP1_@"(upcase (substring vl-name 6))"[]),
                            .csysreq	   (1'b0),
                            .gpio_dip_sw   (2'b00),
                            .user_led	   (),
                            );
    */                                    

   parallella parallella(/*AUTO INST*/
			 // Outputs
			 .csysack		(csysack),
			 .cactive		(cactive),
			 .reset_chip		(reset_chip),
			 .reset_fpga		(reset_fpga),
			 .txo_data_p		(txo_data_p[7:0]),
			 .txo_data_n		(txo_data_n[7:0]),
			 .txo_frame_p		(txo_frame_p),
			 .txo_frame_n		(txo_frame_n),
			 .txo_lclk_p		(txo_lclk_p),
			 .txo_lclk_n		(txo_lclk_n),
			 .rxo_wr_wait_p		(rxo_wr_wait_p),
			 .rxo_wr_wait_n		(rxo_wr_wait_n),
			 .rxo_rd_wait_p		(rxo_rd_wait_p),
			 .rxo_rd_wait_n		(rxo_rd_wait_n),
			 .rxi_cclk_p		(RXI_CCLK_P),
			 .rxi_cclk_n		(RXI_CCLK_N),
			 .emaxi_awid		(S_AXI_HP1_AWID[MIDW-1:0]),
			 .emaxi_awaddr		(S_AXI_HP1_AWADDR[MAW-1:0]),
			 .emaxi_awlen		(S_AXI_HP1_AWLEN[3:0]),
			 .emaxi_awsize		(S_AXI_HP1_AWSIZE[2:0]),
			 .emaxi_awburst		(S_AXI_HP1_AWBURST[1:0]),
			 .emaxi_awlock		(S_AXI_HP1_AWLOCK[1:0]),
			 .emaxi_awcache		(S_AXI_HP1_AWCACHE[3:0]),
			 .emaxi_awprot		(S_AXI_HP1_AWPROT[2:0]),
			 .emaxi_awvalid		(S_AXI_HP1_AWVALID),
			 .esaxi_awready		(M_AXI_GP1_AWREADY),
			 .emaxi_wid		(S_AXI_HP1_WID[MIDW-1:0]),
			 .emaxi_wdata		(S_AXI_HP1_WDATA[MDW-1:0]),
			 .emaxi_wstrb		(S_AXI_HP1_WSTRB[STW-1:0]),
			 .emaxi_wlast		(S_AXI_HP1_WLAST),
			 .emaxi_wvalid		(S_AXI_HP1_WVALID),
			 .esaxi_wready		(M_AXI_GP1_WREADY),
			 .emaxi_bready		(S_AXI_HP1_BREADY),
			 .esaxi_bid		(M_AXI_GP1_BID[SIDW-1:0]),
			 .esaxi_bresp		(M_AXI_GP1_BRESP[1:0]),
			 .esaxi_bvalid		(M_AXI_GP1_BVALID),
			 .emaxi_arid		(S_AXI_HP1_ARID[MIDW-1:0]),
			 .emaxi_araddr		(S_AXI_HP1_ARADDR[MAW-1:0]),
			 .emaxi_arlen		(S_AXI_HP1_ARLEN[3:0]),
			 .emaxi_arsize		(S_AXI_HP1_ARSIZE[2:0]),
			 .emaxi_arburst		(S_AXI_HP1_ARBURST[1:0]),
			 .emaxi_arlock		(S_AXI_HP1_ARLOCK[1:0]),
			 .emaxi_arcache		(S_AXI_HP1_ARCACHE[3:0]),
			 .emaxi_arprot		(S_AXI_HP1_ARPROT[2:0]),
			 .emaxi_arvalid		(S_AXI_HP1_ARVALID),
			 .esaxi_arready		(M_AXI_GP1_ARREADY),
			 .emaxi_rready		(S_AXI_HP1_RREADY),
			 .esaxi_rid		(M_AXI_GP1_RID[SIDW-1:0]),
			 .esaxi_rdata		(M_AXI_GP1_RDATA[SDW-1:0]),
			 .esaxi_rresp		(M_AXI_GP1_RRESP[1:0]),
			 .esaxi_rlast		(M_AXI_GP1_RLAST),
			 .esaxi_rvalid		(M_AXI_GP1_RVALID),
			 .emaxi_awqos		(S_AXI_HP1_AWQOS[3:0]),
			 .emaxi_arqos		(S_AXI_HP1_ARQOS[3:0]),
			 // Inputs
			 .clkin_100		(FCLK_CLK0),
			 .esaxi_aclk		(FCLK_CLK3),
			 .emaxi_aclk		(FCLK_CLK3),
			 .reset			(fpga_reset),
			 .esaxi_aresetn		(M_AXI_GP1_ARESETN),
			 .emaxi_aresetn		(S_AXI_HP1_ARESETN),
			 .csysreq		(1'b0),
			 .rxi_data_p		(rxi_data_p[7:0]),
			 .rxi_data_n		(rxi_data_n[7:0]),
			 .rxi_frame_p		(rxi_frame_p),
			 .rxi_frame_n		(rxi_frame_n),
			 .rxi_lclk_p		(rxi_lclk_p),
			 .rxi_lclk_n		(rxi_lclk_n),
			 .txi_wr_wait_p		(txi_wr_wait_p),
			 .txi_wr_wait_n		(txi_wr_wait_n),
			 .txi_rd_wait_p		(txi_rd_wait_p),
			 .txi_rd_wait_n		(txi_rd_wait_n),
			 .emaxi_awready		(S_AXI_HP1_AWREADY),
			 .esaxi_awid		(M_AXI_GP1_AWID[SIDW-1:0]),
			 .esaxi_awaddr		(M_AXI_GP1_AWADDR[MAW-1:0]),
			 .esaxi_awlen		(M_AXI_GP1_AWLEN[3:0]),
			 .esaxi_awsize		(M_AXI_GP1_AWSIZE[2:0]),
			 .esaxi_awburst		(M_AXI_GP1_AWBURST[1:0]),
			 .esaxi_awlock		(M_AXI_GP1_AWLOCK[1:0]),
			 .esaxi_awcache		(M_AXI_GP1_AWCACHE[3:0]),
			 .esaxi_awprot		(M_AXI_GP1_AWPROT[2:0]),
			 .esaxi_awvalid		(M_AXI_GP1_AWVALID),
			 .emaxi_wready		(S_AXI_HP1_WREADY),
			 .esaxi_wid		(M_AXI_GP1_WID[SIDW-1:0]),
			 .esaxi_wdata		(M_AXI_GP1_WDATA[SDW-1:0]),
			 .esaxi_wstrb		(M_AXI_GP1_WSTRB[3:0]),
			 .esaxi_wlast		(M_AXI_GP1_WLAST),
			 .esaxi_wvalid		(M_AXI_GP1_WVALID),
			 .emaxi_bid		(S_AXI_HP1_BID[MIDW-1:0]),
			 .emaxi_bresp		(S_AXI_HP1_BRESP[1:0]),
			 .emaxi_bvalid		(S_AXI_HP1_BVALID),
			 .esaxi_bready		(M_AXI_GP1_BREADY),
			 .emaxi_arready		(S_AXI_HP1_ARREADY),
			 .esaxi_arid		(M_AXI_GP1_ARID[SIDW-1:0]),
			 .esaxi_araddr		(M_AXI_GP1_ARADDR[MAW-1:0]),
			 .esaxi_arlen		(M_AXI_GP1_ARLEN[3:0]),
			 .esaxi_arsize		(M_AXI_GP1_ARSIZE[2:0]),
			 .esaxi_arburst		(M_AXI_GP1_ARBURST[1:0]),
			 .esaxi_arlock		(M_AXI_GP1_ARLOCK[1:0]),
			 .esaxi_arcache		(M_AXI_GP1_ARCACHE[3:0]),
			 .esaxi_arprot		(M_AXI_GP1_ARPROT[2:0]),
			 .esaxi_arvalid		(M_AXI_GP1_ARVALID),
			 .emaxi_rid		(S_AXI_HP1_RID[MIDW-1:0]),
			 .emaxi_rdata		(S_AXI_HP1_RDATA[MDW-1:0]),
			 .emaxi_rresp		(S_AXI_HP1_RRESP[1:0]),
			 .emaxi_rlast		(S_AXI_HP1_RLAST),
			 .emaxi_rvalid		(S_AXI_HP1_RVALID),
			 .esaxi_rready		(M_AXI_GP1_RREADY),
			 .esaxi_awqos		(M_AXI_GP1_AWQOS[3:0]),
			 .esaxi_arqos		(M_AXI_GP1_ARQOS[3:0]));
   
   //##################################
   //# PS SYSTEM Instantiation, udpated for Vivado
   //##################################

   processing_system7_0 system_stub
     (
`ifdef FEATURE_HDMI
	  .hdmi_clk(hdmi_clk),
      .hdmi_data(hdmi_data),
      .hdmi_hsync(hdmi_hsync),
      .hdmi_vsync(hdmi_vsync),
      .hdmi_data_e(hdmi_data_e),
      .axi_spdif_tx_0_spdif_tx_o(hdmi_spdif),
`endif  // FEATURE_HDMI
`ifdef FEATURE_GPIO_EMIO
      .GPIO_O                           (GPIO_O[63:0]),
      .GPIO_T                           (GPIO_T[63:0]),
      .GPIO_I                           (GPIO_I[63:0]),
`endif
      /*AUTO INST*/
      // Outputs
      .I2C0_SDA_O                       (I2C0_SDA_O),
      .I2C0_SDA_T                       (I2C0_SDA_T),
      .I2C0_SCL_O                       (I2C0_SCL_O),
      .I2C0_SCL_T                       (I2C0_SCL_T),
      .USB0_PORT_INDCTL                 (),
      .USB0_VBUS_PWRSELECT              (),
      .USB1_PORT_INDCTL                 (),
      .USB1_VBUS_PWRSELECT              (),
      .M_AXI_GP1_ARVALID                (M_AXI_GP1_ARVALID),
      .M_AXI_GP1_AWVALID                (M_AXI_GP1_AWVALID),
      .M_AXI_GP1_BREADY                 (M_AXI_GP1_BREADY),
      .M_AXI_GP1_RREADY                 (M_AXI_GP1_RREADY),
      .M_AXI_GP1_WLAST                  (M_AXI_GP1_WLAST),
      .M_AXI_GP1_WVALID                 (M_AXI_GP1_WVALID),
      .M_AXI_GP1_ARID                   (M_AXI_GP1_ARID[11:0]),
      .M_AXI_GP1_AWID                   (M_AXI_GP1_AWID[11:0]),
      .M_AXI_GP1_WID                    (M_AXI_GP1_WID[11:0]),
      .M_AXI_GP1_ARBURST                (M_AXI_GP1_ARBURST[1:0]),
      .M_AXI_GP1_ARLOCK                 (M_AXI_GP1_ARLOCK[1:0]),
      .M_AXI_GP1_ARSIZE                 (M_AXI_GP1_ARSIZE[2:0]),
      .M_AXI_GP1_AWBURST                (M_AXI_GP1_AWBURST[1:0]),
      .M_AXI_GP1_AWLOCK                 (M_AXI_GP1_AWLOCK[1:0]),
      .M_AXI_GP1_AWSIZE                 (M_AXI_GP1_AWSIZE[2:0]),
      .M_AXI_GP1_ARPROT                 (M_AXI_GP1_ARPROT[2:0]),
      .M_AXI_GP1_AWPROT                 (M_AXI_GP1_AWPROT[2:0]),
      .M_AXI_GP1_ARADDR                 (M_AXI_GP1_ARADDR[31:0]),
      .M_AXI_GP1_AWADDR                 (M_AXI_GP1_AWADDR[31:0]),
      .M_AXI_GP1_WDATA                  (M_AXI_GP1_WDATA[31:0]),
      .M_AXI_GP1_ARCACHE                (M_AXI_GP1_ARCACHE[3:0]),
      .M_AXI_GP1_ARLEN                  (M_AXI_GP1_ARLEN[3:0]),
      .M_AXI_GP1_ARQOS                  (M_AXI_GP1_ARQOS[3:0]),
      .M_AXI_GP1_AWCACHE                (M_AXI_GP1_AWCACHE[3:0]),
      .M_AXI_GP1_AWLEN                  (M_AXI_GP1_AWLEN[3:0]),
      .M_AXI_GP1_AWQOS                  (M_AXI_GP1_AWQOS[3:0]),
      .M_AXI_GP1_WSTRB                  (M_AXI_GP1_WSTRB[3:0]),
      .S_AXI_HP1_ARREADY                (S_AXI_HP1_ARREADY),
      .S_AXI_HP1_AWREADY                (S_AXI_HP1_AWREADY),
      .S_AXI_HP1_BVALID                 (S_AXI_HP1_BVALID),
      .S_AXI_HP1_RLAST                  (S_AXI_HP1_RLAST),
      .S_AXI_HP1_RVALID                 (S_AXI_HP1_RVALID),
      .S_AXI_HP1_WREADY                 (S_AXI_HP1_WREADY),
      .S_AXI_HP1_BRESP                  (S_AXI_HP1_BRESP[1:0]),
      .S_AXI_HP1_RRESP                  (S_AXI_HP1_RRESP[1:0]),
      .S_AXI_HP1_BID                    (S_AXI_HP1_BID[5:0]),
      .S_AXI_HP1_RID                    (S_AXI_HP1_RID[5:0]),
      .S_AXI_HP1_RDATA                  (S_AXI_HP1_RDATA[63:0]),
      .S_AXI_HP1_RCOUNT                 (),
      .S_AXI_HP1_WCOUNT                 (),
      .S_AXI_HP1_RACOUNT                (),
      .S_AXI_HP1_WACOUNT                (),
      .FCLK_CLK0                        (FCLK_CLK0),
      .FCLK_CLK3                        (FCLK_CLK3),
      .FCLK_RESET0_N                    (FCLK_RESET0_N),
      // Inouts
      .MIO                              (MIO[53:0]),
      .DDR_CAS_n                        (DDR_CAS_n),
      .DDR_CKE                          (DDR_CKE),
      .DDR_Clk_n                        (DDR_Clk_n),
      .DDR_Clk                          (DDR_Clk),
      .DDR_CS_n                         (DDR_CS_n),
      .DDR_DRSTB                        (DDR_DRSTB),
      .DDR_ODT                          (DDR_ODT),
      .DDR_RAS_n                        (DDR_RAS_n),
      .DDR_WEB                          (DDR_WEB),
      .DDR_BankAddr                     (DDR_BankAddr[2:0]),
      .DDR_Addr                         (DDR_Addr[14:0]),
      .DDR_VRN                          (DDR_VRN),
      .DDR_VRP                          (DDR_VRP),
      .DDR_DM                           (DDR_DM[3:0]),
      .DDR_DQ                           (DDR_DQ[31:0]),
      .DDR_DQS_n                        (DDR_DQS_n[3:0]),
      .DDR_DQS                          (DDR_DQS[3:0]),
      .PS_SRSTB                         (PS_SRSTB),
      .PS_CLK                           (PS_CLK),
      .PS_PORB                          (PS_PORB),
      // Inputs
      .I2C0_SDA_I                       (I2C0_SDA_I),
      .I2C0_SCL_I                       (I2C0_SCL_I),
      .USB0_VBUS_PWRFAULT               (1'b0),
      .USB1_VBUS_PWRFAULT               (1'b0),
      .M_AXI_GP1_ACLK                   (FCLK_CLK3),
      .M_AXI_GP1_ARREADY                (M_AXI_GP1_ARREADY),
      .M_AXI_GP1_AWREADY                (M_AXI_GP1_AWREADY),
      .M_AXI_GP1_BVALID                 (M_AXI_GP1_BVALID),
      .M_AXI_GP1_RLAST                  (M_AXI_GP1_RLAST),
      .M_AXI_GP1_RVALID                 (M_AXI_GP1_RVALID),
      .M_AXI_GP1_WREADY                 (M_AXI_GP1_WREADY),
      .M_AXI_GP1_BID                    (M_AXI_GP1_BID[11:0]),
      .M_AXI_GP1_RID                    (M_AXI_GP1_RID[11:0]),
      .M_AXI_GP1_BRESP                  (M_AXI_GP1_BRESP[1:0]),
      .M_AXI_GP1_RRESP                  (M_AXI_GP1_RRESP[1:0]),
      .M_AXI_GP1_RDATA                  (M_AXI_GP1_RDATA[31:0]),
      .S_AXI_HP1_ACLK                   (FCLK_CLK3),
      .S_AXI_HP1_ARVALID                (S_AXI_HP1_ARVALID),
      .S_AXI_HP1_AWVALID                (S_AXI_HP1_AWVALID),
      .S_AXI_HP1_BREADY                 (S_AXI_HP1_BREADY),
      .S_AXI_HP1_RDISSUECAP1_EN         (1'b0),
      .S_AXI_HP1_RREADY                 (S_AXI_HP1_RREADY),
      .S_AXI_HP1_WLAST                  (S_AXI_HP1_WLAST),
      .S_AXI_HP1_WRISSUECAP1_EN         (1'b0),
      .S_AXI_HP1_WVALID                 (S_AXI_HP1_WVALID),
      .S_AXI_HP1_ARBURST                (S_AXI_HP1_ARBURST[1:0]),
      .S_AXI_HP1_ARLOCK                 (S_AXI_HP1_ARLOCK[1:0]),
      .S_AXI_HP1_ARSIZE                 (S_AXI_HP1_ARSIZE[2:0]),
      .S_AXI_HP1_AWBURST                (S_AXI_HP1_AWBURST[1:0]),
      .S_AXI_HP1_AWLOCK                 (S_AXI_HP1_AWLOCK[1:0]),
      .S_AXI_HP1_AWSIZE                 (S_AXI_HP1_AWSIZE[2:0]),
      .S_AXI_HP1_ARPROT                 (S_AXI_HP1_ARPROT[2:0]),
      .S_AXI_HP1_AWPROT                 (S_AXI_HP1_AWPROT[2:0]),
      .S_AXI_HP1_ARADDR                 (S_AXI_HP1_ARADDR[31:0]),
      .S_AXI_HP1_AWADDR                 (S_AXI_HP1_AWADDR[31:0]),
      .S_AXI_HP1_ARCACHE                (S_AXI_HP1_ARCACHE[3:0]),
      .S_AXI_HP1_ARLEN                  (S_AXI_HP1_ARLEN[3:0]),
      .S_AXI_HP1_ARQOS                  (S_AXI_HP1_ARQOS[3:0]),
      .S_AXI_HP1_AWCACHE                (S_AXI_HP1_AWCACHE[3:0]),
      .S_AXI_HP1_AWLEN                  (S_AXI_HP1_AWLEN[3:0]),
      .S_AXI_HP1_AWQOS                  (S_AXI_HP1_AWQOS[3:0]),
      .S_AXI_HP1_ARID                   (S_AXI_HP1_ARID[5:0]),
      .S_AXI_HP1_AWID                   (S_AXI_HP1_AWID[5:0]),
      .S_AXI_HP1_WID                    (S_AXI_HP1_WID[5:0]),
      .S_AXI_HP1_WDATA                  (S_AXI_HP1_WDATA[63:0]),
      .S_AXI_HP1_WSTRB                  (S_AXI_HP1_WSTRB[7:0]));

`ifdef ISE   
   system_stub system_stub(
			   .processing_system7_0_M_AXI_GP1_ACLK_pin(processing_system7_0_FCLK_CLK3_pin),
			   .processing_system7_0_S_AXI_HP1_ACLK_pin(processing_system7_0_FCLK_CLK3_pin),
			   .processing_system7_0_I2C0_SCL_pin(PS_I2C_SCL),
			   .processing_system7_0_I2C0_SDA_pin(PS_I2C_SDA),
`ifdef FEATURE_HDMI
			   .hdmi_clk(hdmi_clk),
               .hdmi_data(hdmi_data),
               .hdmi_hsync(hdmi_hsync),
               .hdmi_vsync(hdmi_vsync),
               .hdmi_data_e(hdmi_data_e),
               .axi_spdif_tx_0_spdif_tx_o_pin(hdmi_spdif),
`endif  // FEATURE_HDMI
`ifdef FEATURE_GPIO_EMIO
               .processing_system7_0_GPIO_I_pin(processing_system7_0_GPIO_I_pin),
               .processing_system7_0_GPIO_O_pin(processing_system7_0_GPIO_O_pin),
               .processing_system7_0_GPIO_T_pin(processing_system7_0_GPIO_T_pin),
`endif  // FEATURE_GPIO_EMIO
			   /*AUTO INST*/
			   // Outputs
               .processing_system7_0_DDR_WEB_pin(processing_system7_0_DDR_WEB_pin),
			   .processing_system7_0_M_AXI_GP1_ARESETN_pin(processing_system7_0_M_AXI_GP1_ARESETN_pin),
			   .processing_system7_0_S_AXI_HP1_ARESETN_pin(processing_system7_0_S_AXI_HP1_ARESETN_pin),
			   .processing_system7_0_FCLK_CLK3_pin(processing_system7_0_FCLK_CLK3_pin),
			   .processing_system7_0_FCLK_CLK0_pin(processing_system7_0_FCLK_CLK0_pin),
			   .processing_system7_0_M_AXI_GP1_ARVALID_pin(processing_system7_0_M_AXI_GP1_ARVALID_pin),
			   .processing_system7_0_M_AXI_GP1_AWVALID_pin(processing_system7_0_M_AXI_GP1_AWVALID_pin),
			   .processing_system7_0_M_AXI_GP1_BREADY_pin(processing_system7_0_M_AXI_GP1_BREADY_pin),
			   .processing_system7_0_M_AXI_GP1_RREADY_pin(processing_system7_0_M_AXI_GP1_RREADY_pin),
			   .processing_system7_0_M_AXI_GP1_WLAST_pin(processing_system7_0_M_AXI_GP1_WLAST_pin),
			   .processing_system7_0_M_AXI_GP1_WVALID_pin(processing_system7_0_M_AXI_GP1_WVALID_pin),
			   .processing_system7_0_M_AXI_GP1_ARID_pin(processing_system7_0_M_AXI_GP1_ARID_pin[11:0]),
			   .processing_system7_0_M_AXI_GP1_AWID_pin(processing_system7_0_M_AXI_GP1_AWID_pin[11:0]),
			   .processing_system7_0_M_AXI_GP1_WID_pin(processing_system7_0_M_AXI_GP1_WID_pin[11:0]),
			   .processing_system7_0_M_AXI_GP1_ARBURST_pin(processing_system7_0_M_AXI_GP1_ARBURST_pin[1:0]),
			   .processing_system7_0_M_AXI_GP1_ARLOCK_pin(processing_system7_0_M_AXI_GP1_ARLOCK_pin[1:0]),
			   .processing_system7_0_M_AXI_GP1_ARSIZE_pin(processing_system7_0_M_AXI_GP1_ARSIZE_pin[2:0]),
			   .processing_system7_0_M_AXI_GP1_AWBURST_pin(processing_system7_0_M_AXI_GP1_AWBURST_pin[1:0]),
			   .processing_system7_0_M_AXI_GP1_AWLOCK_pin(processing_system7_0_M_AXI_GP1_AWLOCK_pin[1:0]),
			   .processing_system7_0_M_AXI_GP1_AWSIZE_pin(processing_system7_0_M_AXI_GP1_AWSIZE_pin[2:0]),
			   .processing_system7_0_M_AXI_GP1_ARPROT_pin(processing_system7_0_M_AXI_GP1_ARPROT_pin[2:0]),
			   .processing_system7_0_M_AXI_GP1_AWPROT_pin(processing_system7_0_M_AXI_GP1_AWPROT_pin[2:0]),
			   .processing_system7_0_M_AXI_GP1_ARADDR_pin(processing_system7_0_M_AXI_GP1_ARADDR_pin[31:0]),
			   .processing_system7_0_M_AXI_GP1_AWADDR_pin(processing_system7_0_M_AXI_GP1_AWADDR_pin[31:0]),
			   .processing_system7_0_M_AXI_GP1_WDATA_pin(processing_system7_0_M_AXI_GP1_WDATA_pin[31:0]),
			   .processing_system7_0_M_AXI_GP1_ARCACHE_pin(processing_system7_0_M_AXI_GP1_ARCACHE_pin[3:0]),
			   .processing_system7_0_M_AXI_GP1_ARLEN_pin(processing_system7_0_M_AXI_GP1_ARLEN_pin[3:0]),
			   .processing_system7_0_M_AXI_GP1_ARQOS_pin(processing_system7_0_M_AXI_GP1_ARQOS_pin[3:0]),
			   .processing_system7_0_M_AXI_GP1_AWCACHE_pin(processing_system7_0_M_AXI_GP1_AWCACHE_pin[3:0]),
			   .processing_system7_0_M_AXI_GP1_AWLEN_pin(processing_system7_0_M_AXI_GP1_AWLEN_pin[3:0]),
			   .processing_system7_0_M_AXI_GP1_AWQOS_pin(processing_system7_0_M_AXI_GP1_AWQOS_pin[3:0]),
			   .processing_system7_0_M_AXI_GP1_WSTRB_pin(processing_system7_0_M_AXI_GP1_WSTRB_pin[3:0]),
			   .processing_system7_0_S_AXI_HP1_ARREADY_pin(processing_system7_0_S_AXI_HP1_ARREADY_pin),
			   .processing_system7_0_S_AXI_HP1_AWREADY_pin(processing_system7_0_S_AXI_HP1_AWREADY_pin),
			   .processing_system7_0_S_AXI_HP1_BVALID_pin(processing_system7_0_S_AXI_HP1_BVALID_pin),
			   .processing_system7_0_S_AXI_HP1_RLAST_pin(processing_system7_0_S_AXI_HP1_RLAST_pin),
			   .processing_system7_0_S_AXI_HP1_RVALID_pin(processing_system7_0_S_AXI_HP1_RVALID_pin),
			   .processing_system7_0_S_AXI_HP1_WREADY_pin(processing_system7_0_S_AXI_HP1_WREADY_pin),
			   .processing_system7_0_S_AXI_HP1_BRESP_pin(processing_system7_0_S_AXI_HP1_BRESP_pin[1:0]),
			   .processing_system7_0_S_AXI_HP1_RRESP_pin(processing_system7_0_S_AXI_HP1_RRESP_pin[1:0]),
			   .processing_system7_0_S_AXI_HP1_BID_pin(processing_system7_0_S_AXI_HP1_BID_pin[5:0]),
			   .processing_system7_0_S_AXI_HP1_RID_pin(processing_system7_0_S_AXI_HP1_RID_pin[5:0]),
			   .processing_system7_0_S_AXI_HP1_RDATA_pin(processing_system7_0_S_AXI_HP1_RDATA_pin[63:0]),
			   // Inouts
			   .processing_system7_0_MIO(processing_system7_0_MIO[53:0]),
			   .processing_system7_0_DDR_Clk(processing_system7_0_DDR_Clk),
			   .processing_system7_0_DDR_Clk_n(processing_system7_0_DDR_Clk_n),
			   .processing_system7_0_DDR_CKE(processing_system7_0_DDR_CKE),
			   .processing_system7_0_DDR_CS_n(processing_system7_0_DDR_CS_n),
			   .processing_system7_0_DDR_RAS_n(processing_system7_0_DDR_RAS_n),
			   .processing_system7_0_DDR_CAS_n(processing_system7_0_DDR_CAS_n),
			   .processing_system7_0_DDR_BankAddr(processing_system7_0_DDR_BankAddr[2:0]),
			   .processing_system7_0_DDR_Addr(processing_system7_0_DDR_Addr[14:0]),
			   .processing_system7_0_DDR_ODT(processing_system7_0_DDR_ODT),
			   .processing_system7_0_DDR_DRSTB(processing_system7_0_DDR_DRSTB),
			   .processing_system7_0_DDR_DQ(processing_system7_0_DDR_DQ[31:0]),
			   .processing_system7_0_DDR_DM(processing_system7_0_DDR_DM[3:0]),
			   .processing_system7_0_DDR_DQS(processing_system7_0_DDR_DQS[3:0]),
			   .processing_system7_0_DDR_DQS_n(processing_system7_0_DDR_DQS_n[3:0]),
			   .processing_system7_0_DDR_VRN(processing_system7_0_DDR_VRN),
			   .processing_system7_0_DDR_VRP(processing_system7_0_DDR_VRP),
			   // Inputs
			   .processing_system7_0_PS_SRSTB_pin(processing_system7_0_PS_SRSTB_pin),
			   .processing_system7_0_PS_CLK_pin(processing_system7_0_PS_CLK_pin),
			   .processing_system7_0_PS_PORB_pin(processing_system7_0_PS_PORB_pin),
			   .processing_system7_0_M_AXI_GP1_ARREADY_pin(processing_system7_0_M_AXI_GP1_ARREADY_pin),
			   .processing_system7_0_M_AXI_GP1_AWREADY_pin(processing_system7_0_M_AXI_GP1_AWREADY_pin),
			   .processing_system7_0_M_AXI_GP1_BVALID_pin(processing_system7_0_M_AXI_GP1_BVALID_pin),
			   .processing_system7_0_M_AXI_GP1_RLAST_pin(processing_system7_0_M_AXI_GP1_RLAST_pin),
			   .processing_system7_0_M_AXI_GP1_RVALID_pin(processing_system7_0_M_AXI_GP1_RVALID_pin),
			   .processing_system7_0_M_AXI_GP1_WREADY_pin(processing_system7_0_M_AXI_GP1_WREADY_pin),
			   .processing_system7_0_M_AXI_GP1_BID_pin(processing_system7_0_M_AXI_GP1_BID_pin[11:0]),
			   .processing_system7_0_M_AXI_GP1_RID_pin(processing_system7_0_M_AXI_GP1_RID_pin[11:0]),
			   .processing_system7_0_M_AXI_GP1_BRESP_pin(processing_system7_0_M_AXI_GP1_BRESP_pin[1:0]),
			   .processing_system7_0_M_AXI_GP1_RRESP_pin(processing_system7_0_M_AXI_GP1_RRESP_pin[1:0]),
			   .processing_system7_0_M_AXI_GP1_RDATA_pin(processing_system7_0_M_AXI_GP1_RDATA_pin[31:0]),
			   .processing_system7_0_S_AXI_HP1_ARVALID_pin(processing_system7_0_S_AXI_HP1_ARVALID_pin),
			   .processing_system7_0_S_AXI_HP1_AWVALID_pin(processing_system7_0_S_AXI_HP1_AWVALID_pin),
			   .processing_system7_0_S_AXI_HP1_BREADY_pin(processing_system7_0_S_AXI_HP1_BREADY_pin),
			   .processing_system7_0_S_AXI_HP1_RREADY_pin(processing_system7_0_S_AXI_HP1_RREADY_pin),
			   .processing_system7_0_S_AXI_HP1_WLAST_pin(processing_system7_0_S_AXI_HP1_WLAST_pin),
			   .processing_system7_0_S_AXI_HP1_WVALID_pin(processing_system7_0_S_AXI_HP1_WVALID_pin),
			   .processing_system7_0_S_AXI_HP1_ARBURST_pin(processing_system7_0_S_AXI_HP1_ARBURST_pin[1:0]),
			   .processing_system7_0_S_AXI_HP1_ARLOCK_pin(processing_system7_0_S_AXI_HP1_ARLOCK_pin[1:0]),
			   .processing_system7_0_S_AXI_HP1_ARSIZE_pin(processing_system7_0_S_AXI_HP1_ARSIZE_pin[2:0]),
			   .processing_system7_0_S_AXI_HP1_AWBURST_pin(processing_system7_0_S_AXI_HP1_AWBURST_pin[1:0]),
			   .processing_system7_0_S_AXI_HP1_AWLOCK_pin(processing_system7_0_S_AXI_HP1_AWLOCK_pin[1:0]),
			   .processing_system7_0_S_AXI_HP1_AWSIZE_pin(processing_system7_0_S_AXI_HP1_AWSIZE_pin[2:0]),
			   .processing_system7_0_S_AXI_HP1_ARPROT_pin(processing_system7_0_S_AXI_HP1_ARPROT_pin[2:0]),
			   .processing_system7_0_S_AXI_HP1_AWPROT_pin(processing_system7_0_S_AXI_HP1_AWPROT_pin[2:0]),
			   .processing_system7_0_S_AXI_HP1_ARADDR_pin(processing_system7_0_S_AXI_HP1_ARADDR_pin[31:0]),
			   .processing_system7_0_S_AXI_HP1_AWADDR_pin(processing_system7_0_S_AXI_HP1_AWADDR_pin[31:0]),
			   .processing_system7_0_S_AXI_HP1_ARCACHE_pin(processing_system7_0_S_AXI_HP1_ARCACHE_pin[3:0]),
			   .processing_system7_0_S_AXI_HP1_ARLEN_pin(processing_system7_0_S_AXI_HP1_ARLEN_pin[3:0]),
			   .processing_system7_0_S_AXI_HP1_ARQOS_pin(processing_system7_0_S_AXI_HP1_ARQOS_pin[3:0]),
			   .processing_system7_0_S_AXI_HP1_AWCACHE_pin(processing_system7_0_S_AXI_HP1_AWCACHE_pin[3:0]),
			   .processing_system7_0_S_AXI_HP1_AWLEN_pin(processing_system7_0_S_AXI_HP1_AWLEN_pin[3:0]),
			   .processing_system7_0_S_AXI_HP1_AWQOS_pin(processing_system7_0_S_AXI_HP1_AWQOS_pin[3:0]),
			   .processing_system7_0_S_AXI_HP1_ARID_pin(processing_system7_0_S_AXI_HP1_ARID_pin[5:0]),
			   .processing_system7_0_S_AXI_HP1_AWID_pin(processing_system7_0_S_AXI_HP1_AWID_pin[5:0]),
			   .processing_system7_0_S_AXI_HP1_WID_pin(processing_system7_0_S_AXI_HP1_WID_pin[5:0]),
			   .processing_system7_0_S_AXI_HP1_WDATA_pin(processing_system7_0_S_AXI_HP1_WDATA_pin[63:0]),
			   .processing_system7_0_S_AXI_HP1_WSTRB_pin(processing_system7_0_S_AXI_HP1_WSTRB_pin[7:0]));
`endif //  `ifdef ISE
   
endmodule // parallella_z7_top

