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

module parallella_z7_top (/*AUTO ARG*/
   // Outputs
   processing_system7_0_DDR_WEB_pin, 
   RXI_DATA_P, RXI_DATA_N, RXI_FRAME_P,
   RXI_FRAME_N, RXI_LCLK_P, RXI_LCLK_N, TXI_WR_WAIT_P, TXI_WR_WAIT_N,
   TXI_RD_WAIT_P, TXI_RD_WAIT_N, RXI_CCLK_P, RXI_CCLK_N, DSP_RESET_N,
   // Inouts
   processing_system7_0_MIO, processing_system7_0_DDR_Clk,
   processing_system7_0_DDR_Clk_n, processing_system7_0_DDR_CKE,
   processing_system7_0_DDR_CS_n, processing_system7_0_DDR_RAS_n,
   processing_system7_0_DDR_CAS_n, processing_system7_0_DDR_BankAddr,
   processing_system7_0_DDR_Addr, processing_system7_0_DDR_ODT,
   processing_system7_0_DDR_DRSTB, processing_system7_0_DDR_DQ,
   processing_system7_0_DDR_DM, processing_system7_0_DDR_DQS,
   processing_system7_0_DDR_DQS_n, processing_system7_0_DDR_VRN,
   processing_system7_0_DDR_VRP, GPIO_P, GPIO_N,
   // Inputs
   processing_system7_0_PS_SRSTB_pin, processing_system7_0_PS_CLK_pin,
   processing_system7_0_PS_PORB_pin,
   TXO_DATA_P, TXO_DATA_N, TXO_FRAME_P, TXO_FRAME_N, TXO_LCLK_P,
   TXO_LCLK_N, RXO_WR_WAIT_P, RXO_WR_WAIT_N, RXO_RD_WAIT,
   DSP_FLAG,TURBO_MODE, PROG_IO,
   //HDMI
   HDMI_D, HDMI_CLK, HDMI_HSYNC, HDMI_VSYNC, HDMI_DE, HDMI_SPDIF,
   HDMI_INT,PS_I2C_SCL,PS_I2C_SDA
   );

   parameter SIDW = 12; //ID Width
   parameter SAW  = 32; //Address Bus Width
   parameter SDW  = 32; //Data Bus Width
   parameter MIDW = 6;  //ID Width
   parameter MAW  = 32; //Address Bus Width
   parameter MDW  = 64; //Data Bus Width
   parameter STW  = 8;  //Number of strobes
   parameter DPW  = 20; //Debouncer pulse width 

   inout [53:0] processing_system7_0_MIO;
   input 	processing_system7_0_PS_SRSTB_pin;
   input 	processing_system7_0_PS_CLK_pin;
   input 	processing_system7_0_PS_PORB_pin;
   inout 	processing_system7_0_DDR_Clk;
   inout 	processing_system7_0_DDR_Clk_n;
   inout 	processing_system7_0_DDR_CKE;
   inout 	processing_system7_0_DDR_CS_n;
   inout 	processing_system7_0_DDR_RAS_n;
   inout 	processing_system7_0_DDR_CAS_n;
   output 	processing_system7_0_DDR_WEB_pin;
   inout [2:0] 	processing_system7_0_DDR_BankAddr;
   inout [14:0] processing_system7_0_DDR_Addr;
   inout 	processing_system7_0_DDR_ODT;
   inout 	processing_system7_0_DDR_DRSTB;
   inout [31:0] processing_system7_0_DDR_DQ;
   inout [3:0] 	processing_system7_0_DDR_DM;
   inout [3:0] 	processing_system7_0_DDR_DQS;
   inout [3:0] 	processing_system7_0_DDR_DQS_n;
   inout 	processing_system7_0_DDR_VRN;
   inout 	processing_system7_0_DDR_VRP;

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
   input 	PROG_IO;

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
   input 	RXO_RD_WAIT;//AO-CHANGE
   //input 	RXO_RD_WAIT_N;//AO
   
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
   
   
   /*AUTOINPUT*/
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			cactive;		// From parallella of parallella.v
   wire			csysack;		// From parallella of parallella.v
   wire			processing_system7_0_FCLK_CLK0_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_FCLK_CLK3_pin;// From system_stub of system_stub.v
   wire [31:0]		processing_system7_0_M_AXI_GP1_ARADDR_pin;// From system_stub of system_stub.v
   wire [1:0]		processing_system7_0_M_AXI_GP1_ARBURST_pin;// From system_stub of system_stub.v
   wire [3:0]		processing_system7_0_M_AXI_GP1_ARCACHE_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_M_AXI_GP1_ARESETN_pin;// From system_stub of system_stub.v
   wire [11:0]		processing_system7_0_M_AXI_GP1_ARID_pin;// From system_stub of system_stub.v
   wire [3:0]		processing_system7_0_M_AXI_GP1_ARLEN_pin;// From system_stub of system_stub.v
   wire [1:0]		processing_system7_0_M_AXI_GP1_ARLOCK_pin;// From system_stub of system_stub.v
   wire [2:0]		processing_system7_0_M_AXI_GP1_ARPROT_pin;// From system_stub of system_stub.v
   wire [3:0]		processing_system7_0_M_AXI_GP1_ARQOS_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_M_AXI_GP1_ARREADY_pin;// From parallella of parallella.v
   wire [2:0]		processing_system7_0_M_AXI_GP1_ARSIZE_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_M_AXI_GP1_ARVALID_pin;// From system_stub of system_stub.v
   wire [31:0]		processing_system7_0_M_AXI_GP1_AWADDR_pin;// From system_stub of system_stub.v
   wire [1:0]		processing_system7_0_M_AXI_GP1_AWBURST_pin;// From system_stub of system_stub.v
   wire [3:0]		processing_system7_0_M_AXI_GP1_AWCACHE_pin;// From system_stub of system_stub.v
   wire [11:0]		processing_system7_0_M_AXI_GP1_AWID_pin;// From system_stub of system_stub.v
   wire [3:0]		processing_system7_0_M_AXI_GP1_AWLEN_pin;// From system_stub of system_stub.v
   wire [1:0]		processing_system7_0_M_AXI_GP1_AWLOCK_pin;// From system_stub of system_stub.v
   wire [2:0]		processing_system7_0_M_AXI_GP1_AWPROT_pin;// From system_stub of system_stub.v
   wire [3:0]		processing_system7_0_M_AXI_GP1_AWQOS_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_M_AXI_GP1_AWREADY_pin;// From parallella of parallella.v
   wire [2:0]		processing_system7_0_M_AXI_GP1_AWSIZE_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_M_AXI_GP1_AWVALID_pin;// From system_stub of system_stub.v
   wire [SIDW-1:0]	processing_system7_0_M_AXI_GP1_BID_pin;// From parallella of parallella.v
   wire			processing_system7_0_M_AXI_GP1_BREADY_pin;// From system_stub of system_stub.v
   wire [1:0]		processing_system7_0_M_AXI_GP1_BRESP_pin;// From parallella of parallella.v
   wire			processing_system7_0_M_AXI_GP1_BVALID_pin;// From parallella of parallella.v
   wire [SDW-1:0]	processing_system7_0_M_AXI_GP1_RDATA_pin;// From parallella of parallella.v
   wire [SIDW-1:0]	processing_system7_0_M_AXI_GP1_RID_pin;// From parallella of parallella.v
   wire			processing_system7_0_M_AXI_GP1_RLAST_pin;// From parallella of parallella.v
   wire			processing_system7_0_M_AXI_GP1_RREADY_pin;// From system_stub of system_stub.v
   wire [1:0]		processing_system7_0_M_AXI_GP1_RRESP_pin;// From parallella of parallella.v
   wire			processing_system7_0_M_AXI_GP1_RVALID_pin;// From parallella of parallella.v
   wire [31:0]		processing_system7_0_M_AXI_GP1_WDATA_pin;// From system_stub of system_stub.v
   wire [11:0]		processing_system7_0_M_AXI_GP1_WID_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_M_AXI_GP1_WLAST_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_M_AXI_GP1_WREADY_pin;// From parallella of parallella.v
   wire [3:0]		processing_system7_0_M_AXI_GP1_WSTRB_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_M_AXI_GP1_WVALID_pin;// From system_stub of system_stub.v
   wire [MAW-1:0]	processing_system7_0_S_AXI_HP1_ARADDR_pin;// From parallella of parallella.v
   wire [1:0]		processing_system7_0_S_AXI_HP1_ARBURST_pin;// From parallella of parallella.v
   wire [3:0]		processing_system7_0_S_AXI_HP1_ARCACHE_pin;// From parallella of parallella.v
   wire			processing_system7_0_S_AXI_HP1_ARESETN_pin;// From system_stub of system_stub.v
   wire [MIDW-1:0]	processing_system7_0_S_AXI_HP1_ARID_pin;// From parallella of parallella.v
   wire [3:0]		processing_system7_0_S_AXI_HP1_ARLEN_pin;// From parallella of parallella.v
   wire [1:0]		processing_system7_0_S_AXI_HP1_ARLOCK_pin;// From parallella of parallella.v
   wire [2:0]		processing_system7_0_S_AXI_HP1_ARPROT_pin;// From parallella of parallella.v
   wire [3:0]		processing_system7_0_S_AXI_HP1_ARQOS_pin;// From parallella of parallella.v
   wire			processing_system7_0_S_AXI_HP1_ARREADY_pin;// From system_stub of system_stub.v
   wire [2:0]		processing_system7_0_S_AXI_HP1_ARSIZE_pin;// From parallella of parallella.v
   wire			processing_system7_0_S_AXI_HP1_ARVALID_pin;// From parallella of parallella.v
   wire [MAW-1:0]	processing_system7_0_S_AXI_HP1_AWADDR_pin;// From parallella of parallella.v
   wire [1:0]		processing_system7_0_S_AXI_HP1_AWBURST_pin;// From parallella of parallella.v
   wire [3:0]		processing_system7_0_S_AXI_HP1_AWCACHE_pin;// From parallella of parallella.v
   wire [MIDW-1:0]	processing_system7_0_S_AXI_HP1_AWID_pin;// From parallella of parallella.v
   wire [3:0]		processing_system7_0_S_AXI_HP1_AWLEN_pin;// From parallella of parallella.v
   wire [1:0]		processing_system7_0_S_AXI_HP1_AWLOCK_pin;// From parallella of parallella.v
   wire [2:0]		processing_system7_0_S_AXI_HP1_AWPROT_pin;// From parallella of parallella.v
   wire [3:0]		processing_system7_0_S_AXI_HP1_AWQOS_pin;// From parallella of parallella.v
   wire			processing_system7_0_S_AXI_HP1_AWREADY_pin;// From system_stub of system_stub.v
   wire [2:0]		processing_system7_0_S_AXI_HP1_AWSIZE_pin;// From parallella of parallella.v
   wire			processing_system7_0_S_AXI_HP1_AWVALID_pin;// From parallella of parallella.v
   wire [5:0]		processing_system7_0_S_AXI_HP1_BID_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_S_AXI_HP1_BREADY_pin;// From parallella of parallella.v
   wire [1:0]		processing_system7_0_S_AXI_HP1_BRESP_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_S_AXI_HP1_BVALID_pin;// From system_stub of system_stub.v
   wire [63:0]		processing_system7_0_S_AXI_HP1_RDATA_pin;// From system_stub of system_stub.v
   wire [5:0]		processing_system7_0_S_AXI_HP1_RID_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_S_AXI_HP1_RLAST_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_S_AXI_HP1_RREADY_pin;// From parallella of parallella.v
   wire [1:0]		processing_system7_0_S_AXI_HP1_RRESP_pin;// From system_stub of system_stub.v
   wire			processing_system7_0_S_AXI_HP1_RVALID_pin;// From system_stub of system_stub.v
   wire [MDW-1:0]	processing_system7_0_S_AXI_HP1_WDATA_pin;// From parallella of parallella.v
   wire [MIDW-1:0]	processing_system7_0_S_AXI_HP1_WID_pin;// From parallella of parallella.v
   wire			processing_system7_0_S_AXI_HP1_WLAST_pin;// From parallella of parallella.v
   wire			processing_system7_0_S_AXI_HP1_WREADY_pin;// From system_stub of system_stub.v
   wire [STW-1:0]	processing_system7_0_S_AXI_HP1_WSTRB_pin;// From parallella of parallella.v
   wire			processing_system7_0_S_AXI_HP1_WVALID_pin;// From parallella of parallella.v
   wire			reset_chip;		// From parallella of parallella.v
   wire			reset_fpga;		// From parallella of parallella.v
   // End of automatics

   wire [47:0]  processing_system7_0_GPIO_I_pin;
   wire [47:0]  processing_system7_0_GPIO_O_pin;
   wire [47:0]  processing_system7_0_GPIO_T_pin;

`ifndef FEATURE_GPIO_EMIO  // Tie-off GPIO signals if not connected to PS7
   assign processing_system7_0_GPIO_O_pin = 47'd0;
   assign processing_system7_0_GPIO_T_pin = 47'hFFFF_FFFF_FFFF;
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
   wire 	 hdmi_int;
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
   //# GPIOs
   //##############################

   // This module handles single-ended or differential, 7010 or 7020
   parallella_gpio_emio parallella_gpio_emio
     (
      // Outputs
      .processing_system7_0_GPIO_I_pin(processing_system7_0_GPIO_I_pin),
      // Inouts
      .GPIO_P(GPIO_P),
      .GPIO_N(GPIO_N),
      // Inputs
      .processing_system7_0_GPIO_O_pin(processing_system7_0_GPIO_O_pin),
      .processing_system7_0_GPIO_T_pin(processing_system7_0_GPIO_T_pin)
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

   assign hdmi_int   = 1'b0;//=HDMI_INT

`ifndef FEATURE_HDMI
   assign hdmi_data = 16'd0;
   assign hdmi_clk = 1'b0;
   assign hdmi_hsync = 1'b0;
   assign hdmi_vsync = 1'b0;
   assign hdmi_data_e = 1'b0;
   assign hdmi_spdif = 1'b0;
`endif   // !FEATURE_HDMI
   
   assign sys_clk      =  processing_system7_0_FCLK_CLK3_pin;
   assign esaxi_areset = ~processing_system7_0_M_AXI_GP1_ARESETN_pin;

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
		            .esaxi_aclk	   (processing_system7_0_FCLK_CLK3_pin),
    		            .emaxi_aclk	   (processing_system7_0_FCLK_CLK3_pin),
                            .clkin_100     (processing_system7_0_FCLK_CLK0_pin),
                            .reset         (fpga_reset),
                            .esaxi_\(.*\)  (processing_system7_0_M_AXI_GP1_@"(upcase (substring vl-name 6))"_pin[]),
                            .emaxi_\(.*\)  (processing_system7_0_S_AXI_HP1_@"(upcase (substring vl-name 6))"_pin[]),
                            .csysreq	   (1'b0),
                            .gpio_dip_sw   (2'b00),
                            .user_led	   (),
                            );
    */                                    

   parallella parallella(/*AUTOINST*/
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
			 .rxi_cclk_p		(RXI_CCLK_P),	 // Templated
			 .rxi_cclk_n		(RXI_CCLK_N),	 // Templated
			 .emaxi_awid		(processing_system7_0_S_AXI_HP1_AWID_pin[MIDW-1:0]), // Templated
			 .emaxi_awaddr		(processing_system7_0_S_AXI_HP1_AWADDR_pin[MAW-1:0]), // Templated
			 .emaxi_awlen		(processing_system7_0_S_AXI_HP1_AWLEN_pin[3:0]), // Templated
			 .emaxi_awsize		(processing_system7_0_S_AXI_HP1_AWSIZE_pin[2:0]), // Templated
			 .emaxi_awburst		(processing_system7_0_S_AXI_HP1_AWBURST_pin[1:0]), // Templated
			 .emaxi_awlock		(processing_system7_0_S_AXI_HP1_AWLOCK_pin[1:0]), // Templated
			 .emaxi_awcache		(processing_system7_0_S_AXI_HP1_AWCACHE_pin[3:0]), // Templated
			 .emaxi_awprot		(processing_system7_0_S_AXI_HP1_AWPROT_pin[2:0]), // Templated
			 .emaxi_awvalid		(processing_system7_0_S_AXI_HP1_AWVALID_pin), // Templated
			 .esaxi_awready		(processing_system7_0_M_AXI_GP1_AWREADY_pin), // Templated
			 .emaxi_wid		(processing_system7_0_S_AXI_HP1_WID_pin[MIDW-1:0]), // Templated
			 .emaxi_wdata		(processing_system7_0_S_AXI_HP1_WDATA_pin[MDW-1:0]), // Templated
			 .emaxi_wstrb		(processing_system7_0_S_AXI_HP1_WSTRB_pin[STW-1:0]), // Templated
			 .emaxi_wlast		(processing_system7_0_S_AXI_HP1_WLAST_pin), // Templated
			 .emaxi_wvalid		(processing_system7_0_S_AXI_HP1_WVALID_pin), // Templated
			 .esaxi_wready		(processing_system7_0_M_AXI_GP1_WREADY_pin), // Templated
			 .emaxi_bready		(processing_system7_0_S_AXI_HP1_BREADY_pin), // Templated
			 .esaxi_bid		(processing_system7_0_M_AXI_GP1_BID_pin[SIDW-1:0]), // Templated
			 .esaxi_bresp		(processing_system7_0_M_AXI_GP1_BRESP_pin[1:0]), // Templated
			 .esaxi_bvalid		(processing_system7_0_M_AXI_GP1_BVALID_pin), // Templated
			 .emaxi_arid		(processing_system7_0_S_AXI_HP1_ARID_pin[MIDW-1:0]), // Templated
			 .emaxi_araddr		(processing_system7_0_S_AXI_HP1_ARADDR_pin[MAW-1:0]), // Templated
			 .emaxi_arlen		(processing_system7_0_S_AXI_HP1_ARLEN_pin[3:0]), // Templated
			 .emaxi_arsize		(processing_system7_0_S_AXI_HP1_ARSIZE_pin[2:0]), // Templated
			 .emaxi_arburst		(processing_system7_0_S_AXI_HP1_ARBURST_pin[1:0]), // Templated
			 .emaxi_arlock		(processing_system7_0_S_AXI_HP1_ARLOCK_pin[1:0]), // Templated
			 .emaxi_arcache		(processing_system7_0_S_AXI_HP1_ARCACHE_pin[3:0]), // Templated
			 .emaxi_arprot		(processing_system7_0_S_AXI_HP1_ARPROT_pin[2:0]), // Templated
			 .emaxi_arvalid		(processing_system7_0_S_AXI_HP1_ARVALID_pin), // Templated
			 .esaxi_arready		(processing_system7_0_M_AXI_GP1_ARREADY_pin), // Templated
			 .emaxi_rready		(processing_system7_0_S_AXI_HP1_RREADY_pin), // Templated
			 .esaxi_rid		(processing_system7_0_M_AXI_GP1_RID_pin[SIDW-1:0]), // Templated
			 .esaxi_rdata		(processing_system7_0_M_AXI_GP1_RDATA_pin[SDW-1:0]), // Templated
			 .esaxi_rresp		(processing_system7_0_M_AXI_GP1_RRESP_pin[1:0]), // Templated
			 .esaxi_rlast		(processing_system7_0_M_AXI_GP1_RLAST_pin), // Templated
			 .esaxi_rvalid		(processing_system7_0_M_AXI_GP1_RVALID_pin), // Templated
			 .emaxi_awqos		(processing_system7_0_S_AXI_HP1_AWQOS_pin[3:0]), // Templated
			 .emaxi_arqos		(processing_system7_0_S_AXI_HP1_ARQOS_pin[3:0]), // Templated
			 // Inputs
			 .clkin_100		(processing_system7_0_FCLK_CLK0_pin), // Templated
			 .esaxi_aclk		(processing_system7_0_FCLK_CLK3_pin), // Templated
			 .emaxi_aclk		(processing_system7_0_FCLK_CLK3_pin), // Templated
			 .reset			(fpga_reset),	 // Templated
			 .esaxi_aresetn		(processing_system7_0_M_AXI_GP1_ARESETN_pin), // Templated
			 .emaxi_aresetn		(processing_system7_0_S_AXI_HP1_ARESETN_pin), // Templated
			 .csysreq		(1'b0),		 // Templated
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
			 .emaxi_awready		(processing_system7_0_S_AXI_HP1_AWREADY_pin), // Templated
			 .esaxi_awid		(processing_system7_0_M_AXI_GP1_AWID_pin[SIDW-1:0]), // Templated
			 .esaxi_awaddr		(processing_system7_0_M_AXI_GP1_AWADDR_pin[MAW-1:0]), // Templated
			 .esaxi_awlen		(processing_system7_0_M_AXI_GP1_AWLEN_pin[3:0]), // Templated
			 .esaxi_awsize		(processing_system7_0_M_AXI_GP1_AWSIZE_pin[2:0]), // Templated
			 .esaxi_awburst		(processing_system7_0_M_AXI_GP1_AWBURST_pin[1:0]), // Templated
			 .esaxi_awlock		(processing_system7_0_M_AXI_GP1_AWLOCK_pin[1:0]), // Templated
			 .esaxi_awcache		(processing_system7_0_M_AXI_GP1_AWCACHE_pin[3:0]), // Templated
			 .esaxi_awprot		(processing_system7_0_M_AXI_GP1_AWPROT_pin[2:0]), // Templated
			 .esaxi_awvalid		(processing_system7_0_M_AXI_GP1_AWVALID_pin), // Templated
			 .emaxi_wready		(processing_system7_0_S_AXI_HP1_WREADY_pin), // Templated
			 .esaxi_wid		(processing_system7_0_M_AXI_GP1_WID_pin[SIDW-1:0]), // Templated
			 .esaxi_wdata		(processing_system7_0_M_AXI_GP1_WDATA_pin[SDW-1:0]), // Templated
			 .esaxi_wstrb		(processing_system7_0_M_AXI_GP1_WSTRB_pin[3:0]), // Templated
			 .esaxi_wlast		(processing_system7_0_M_AXI_GP1_WLAST_pin), // Templated
			 .esaxi_wvalid		(processing_system7_0_M_AXI_GP1_WVALID_pin), // Templated
			 .emaxi_bid		(processing_system7_0_S_AXI_HP1_BID_pin[MIDW-1:0]), // Templated
			 .emaxi_bresp		(processing_system7_0_S_AXI_HP1_BRESP_pin[1:0]), // Templated
			 .emaxi_bvalid		(processing_system7_0_S_AXI_HP1_BVALID_pin), // Templated
			 .esaxi_bready		(processing_system7_0_M_AXI_GP1_BREADY_pin), // Templated
			 .emaxi_arready		(processing_system7_0_S_AXI_HP1_ARREADY_pin), // Templated
			 .esaxi_arid		(processing_system7_0_M_AXI_GP1_ARID_pin[SIDW-1:0]), // Templated
			 .esaxi_araddr		(processing_system7_0_M_AXI_GP1_ARADDR_pin[MAW-1:0]), // Templated
			 .esaxi_arlen		(processing_system7_0_M_AXI_GP1_ARLEN_pin[3:0]), // Templated
			 .esaxi_arsize		(processing_system7_0_M_AXI_GP1_ARSIZE_pin[2:0]), // Templated
			 .esaxi_arburst		(processing_system7_0_M_AXI_GP1_ARBURST_pin[1:0]), // Templated
			 .esaxi_arlock		(processing_system7_0_M_AXI_GP1_ARLOCK_pin[1:0]), // Templated
			 .esaxi_arcache		(processing_system7_0_M_AXI_GP1_ARCACHE_pin[3:0]), // Templated
			 .esaxi_arprot		(processing_system7_0_M_AXI_GP1_ARPROT_pin[2:0]), // Templated
			 .esaxi_arvalid		(processing_system7_0_M_AXI_GP1_ARVALID_pin), // Templated
			 .emaxi_rid		(processing_system7_0_S_AXI_HP1_RID_pin[MIDW-1:0]), // Templated
			 .emaxi_rdata		(processing_system7_0_S_AXI_HP1_RDATA_pin[MDW-1:0]), // Templated
			 .emaxi_rresp		(processing_system7_0_S_AXI_HP1_RRESP_pin[1:0]), // Templated
			 .emaxi_rlast		(processing_system7_0_S_AXI_HP1_RLAST_pin), // Templated
			 .emaxi_rvalid		(processing_system7_0_S_AXI_HP1_RVALID_pin), // Templated
			 .esaxi_rready		(processing_system7_0_M_AXI_GP1_RREADY_pin), // Templated
			 .esaxi_awqos		(processing_system7_0_M_AXI_GP1_AWQOS_pin[3:0]), // Templated
			 .esaxi_arqos		(processing_system7_0_M_AXI_GP1_ARQOS_pin[3:0])); // Templated
   
   //##################################
   //# PS SYSTEM Instantiation
   //##################################

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
               .hdmi_int(hdmi_int),
`endif  // FEATURE_HDMI
`ifdef FEATURE_GPIO_EMIO
               .processing_system7_0_GPIO_I_pin(processing_system7_0_GPIO_I_pin),
               .processing_system7_0_GPIO_O_pin(processing_system7_0_GPIO_O_pin),
               .processing_system7_0_GPIO_T_pin(processing_system7_0_GPIO_T_pin),
`endif  // FEATURE_GPIO_EMIO
			   /*AUTOINST*/
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
   
endmodule // parallella_z7_top

