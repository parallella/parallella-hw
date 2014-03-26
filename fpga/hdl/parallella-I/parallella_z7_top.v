/*
  File: parallella_z7_top.v
 
  This file is part of the Parallella FPGA Reference Design.

  Copyright (C) 2013 Adapteva, Inc.
  Contributed by Roman Trogan <support@adapteva.com>

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
`ifdef kTARGET_7Z020
  `define kGPIO_ALL
  `define kGPIO_NUM 24
`elsif kTARGET_7Z010
  `define  kGPIO_NUM 12
`endif  // else throw an error!

module parallella_z7_top (/*AUTO ARG*/
   // Outputs
   processing_system7_0_DDR_WEB_pin, 
`ifdef kGPIO_ALL
   GPIO12_P, GPIO12_N, GPIO13_P,
   GPIO13_N, GPIO14_P, GPIO14_N, GPIO15_P, GPIO15_N, GPIO16_P,
   GPIO16_N, GPIO17_P, GPIO17_N, GPIO18_P, GPIO18_N, GPIO19_P,
   GPIO19_N, GPIO20_P, GPIO20_N, GPIO21_P, GPIO21_N, GPIO22_P,
   GPIO22_N, GPIO23_P, GPIO23_N, 
`endif
   RXI_DATA0_P, RXI_DATA1_P,
   RXI_DATA2_P, RXI_DATA3_P, RXI_DATA4_P, RXI_DATA5_P, RXI_DATA6_P,
   RXI_DATA7_P, RXI_DATA0_N, RXI_DATA1_N, RXI_DATA2_N, RXI_DATA3_N,
   RXI_DATA4_N, RXI_DATA5_N, RXI_DATA6_N, RXI_DATA7_N, RXI_FRAME_P,
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
   processing_system7_0_DDR_VRP,
   // Inputs
   processing_system7_0_PS_SRSTB_pin, processing_system7_0_PS_CLK_pin,
   processing_system7_0_PS_PORB_pin, GPIO0_P, GPIO0_N, GPIO1_P,
   GPIO1_N, GPIO2_P, GPIO2_N, GPIO3_P, GPIO3_N, GPIO4_P, GPIO4_N,
   GPIO5_P, GPIO5_N, GPIO6_P, GPIO6_N, GPIO7_P, GPIO7_N, GPIO8_P,
   GPIO8_N, GPIO9_P, GPIO9_N, GPIO10_P, GPIO10_N, GPIO11_P, GPIO11_N,
   TXO_DATA0_P, TXO_DATA1_P, TXO_DATA2_P, TXO_DATA3_P, TXO_DATA4_P,
   TXO_DATA5_P, TXO_DATA6_P, TXO_DATA7_P, TXO_DATA0_N, TXO_DATA1_N,
   TXO_DATA2_N, TXO_DATA3_N, TXO_DATA4_N, TXO_DATA5_N, TXO_DATA6_N,
   TXO_DATA7_N, TXO_FRAME_P, TXO_FRAME_N, TXO_LCLK_P, TXO_LCLK_N,
   RXO_WR_WAIT_P, RXO_WR_WAIT_N, RXO_RD_WAIT,
   DSP_FLAG,TURBO_MODE, PROG_IO,
   //HDMI
   HDMI_D23, HDMI_D22, HDMI_D21, HDMI_D20, HDMI_D19, HDMI_D18, HDMI_D17,
   HDMI_D16, HDMI_D15, HDMI_D14, HDMI_D13, HDMI_D12, HDMI_D11, HDMI_D10,
   HDMI_D9, HDMI_D8, HDMI_CLK, HDMI_HSYNC, HDMI_VSYNC, HDMI_DE, HDMI_SPDIF,
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
   output 	HDMI_D23;
   output 	HDMI_D22;
   output 	HDMI_D21;
   output 	HDMI_D20;
   output 	HDMI_D19;
   output 	HDMI_D18;
   output 	HDMI_D17;
   output 	HDMI_D16;
   output 	HDMI_D15;
   output 	HDMI_D14;
   output 	HDMI_D13;
   output 	HDMI_D12;
   output 	HDMI_D11;
   output 	HDMI_D10;
   output 	HDMI_D9;
   output 	HDMI_D8;
   
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

   input 	GPIO0_P;
   input 	GPIO0_N;
   input 	GPIO1_P;
   input 	GPIO1_N;
   input 	GPIO2_P;
   input 	GPIO2_N;
   input 	GPIO3_P;
   input 	GPIO3_N;
   input 	GPIO4_P;
   input 	GPIO4_N;
   input 	GPIO5_P;
   input 	GPIO5_N;
   input 	GPIO6_P;
   input 	GPIO6_N;
   input 	GPIO7_P;
   input 	GPIO7_N;
   input 	GPIO8_P;
   input 	GPIO8_N;
   input 	GPIO9_P;
   input 	GPIO9_N;
   input 	GPIO10_P;
   input 	GPIO10_N;
   input 	GPIO11_P;
   input 	GPIO11_N;
   
`ifdef kGPIO_ALL
   output 	GPIO12_P;
   output 	GPIO12_N;
   output 	GPIO13_P;
   output 	GPIO13_N;
   output 	GPIO14_P;
   output 	GPIO14_N;
   output 	GPIO15_P;
   output 	GPIO15_N;
   output 	GPIO16_P;
   output 	GPIO16_N;
   output 	GPIO17_P;
   output 	GPIO17_N;
   output 	GPIO18_P;
   output 	GPIO18_N;
   output 	GPIO19_P;
   output 	GPIO19_N;
   output 	GPIO20_P;
   output 	GPIO20_N;
   output 	GPIO21_P;
   output 	GPIO21_N;
   output 	GPIO22_P;
   output 	GPIO22_N;
   output 	GPIO23_P;
   output 	GPIO23_N;
`endif

   //##################################
   //# LVDS to Epiphany 
   //##################################
   
   input 	TXO_DATA0_P;
   input 	TXO_DATA1_P;
   input 	TXO_DATA2_P;
   input 	TXO_DATA3_P;
   input 	TXO_DATA4_P;
   input 	TXO_DATA5_P;
   input 	TXO_DATA6_P;
   input 	TXO_DATA7_P;
   input 	TXO_DATA0_N;
   input 	TXO_DATA1_N;
   input 	TXO_DATA2_N;
   input 	TXO_DATA3_N;
   input 	TXO_DATA4_N;
   input 	TXO_DATA5_N;
   input 	TXO_DATA6_N;
   input 	TXO_DATA7_N;
   input 	TXO_FRAME_P;
   input 	TXO_FRAME_N;
   input 	TXO_LCLK_P;
   input 	TXO_LCLK_N;
   input 	RXO_WR_WAIT_P;
   input 	RXO_WR_WAIT_N;
   input 	RXO_RD_WAIT;//AO-CHANGE
   //input 	RXO_RD_WAIT_N;//AO
   
   output 	RXI_DATA0_P;
   output 	RXI_DATA1_P;
   output 	RXI_DATA2_P;
   output 	RXI_DATA3_P;
   output 	RXI_DATA4_P;
   output 	RXI_DATA5_P;
   output 	RXI_DATA6_P;
   output 	RXI_DATA7_P;
   output 	RXI_DATA0_N;
   output 	RXI_DATA1_N;
   output 	RXI_DATA2_N;
   output 	RXI_DATA3_N;
   output 	RXI_DATA4_N;
   output 	RXI_DATA5_N;
   output 	RXI_DATA6_N;
   output 	RXI_DATA7_N;
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
   wire 	 txo_wr_wait_p;
   wire 	 txo_wr_wait_n;
   wire 	 txo_rd_wait_p;
   wire 	 txo_rd_wait_n;
   wire [7:0] 	 txo_data_p;
   wire [7:0]    txo_data_n;
   wire 	 txo_frame_p;
   wire 	 txo_frame_n;
   wire 	 txo_lclk_p;
   wire 	 txo_lclk_n;
   wire 	 rxi_wr_wait_p;
   wire 	 rxi_wr_wait_n;
   wire 	 rxi_rd_wait_p;
   wire 	 rxi_rd_wait_n;
   wire 	 aafm_resetn;
   wire [1:0] 	 user_pb;
   wire [11:0] 	 gpio_in;
   wire [11:0]   gpio_out;
   wire [`kGPIO_NUM-1:0]  GPIO_P;
   wire [`kGPIO_NUM-1:0]  GPIO_N;

   //##############################
   //# GPIOs
   //##############################

   //Inputs
   assign GPIO_P[0]  = GPIO0_P;
   assign GPIO_N[0]  = GPIO0_N;
   assign GPIO_P[1]  = GPIO1_P;
   assign GPIO_N[1]  = GPIO1_N;
   assign GPIO_P[2]  = GPIO2_P;
   assign GPIO_N[2]  = GPIO2_N;
   assign GPIO_P[3]  = GPIO3_P;
   assign GPIO_N[3]  = GPIO3_N;
   assign GPIO_P[4]  = GPIO4_P;
   assign GPIO_N[4]  = GPIO4_N;
   assign GPIO_P[5]  = GPIO5_P;
   assign GPIO_N[5]  = GPIO5_N;
   assign GPIO_P[6]  = GPIO6_P;
   assign GPIO_N[6]  = GPIO6_N;
   assign GPIO_P[7]  = GPIO7_P;
   assign GPIO_N[7]  = GPIO7_N;
   assign GPIO_P[8]  = GPIO8_P;
   assign GPIO_N[8]  = GPIO8_N;
   assign GPIO_P[9]  = GPIO9_P;
   assign GPIO_N[9]  = GPIO9_N;
   assign GPIO_P[10] = GPIO10_P;
   assign GPIO_N[10] = GPIO10_N;
   assign GPIO_P[11] = GPIO11_P;
   assign GPIO_N[11] = GPIO11_N;
   
   genvar 	 gpin_cnt;
   generate 
      for (gpin_cnt = 0; gpin_cnt < 12; gpin_cnt = gpin_cnt + 1) begin: gpins
	 IBUFDS 
	   #(.DIFF_TERM  ("TRUE"),     // Differential termination
           .IOSTANDARD ("LVDS_25"))
	 gpin_inst
	   (.I     (GPIO_P[gpin_cnt]),
           .IB     (GPIO_N[gpin_cnt]),
           .O      (gpio_in[gpin_cnt]));
      end
   endgenerate

`ifdef kGPIO_ALL
   //Outputs
   assign GPIO12_P = GPIO_P[12];
   assign GPIO12_N = GPIO_N[12];
   assign GPIO13_P = GPIO_P[13];
   assign GPIO13_N = GPIO_N[13];
   assign GPIO14_P = GPIO_P[14];
   assign GPIO14_N = GPIO_N[14];
   assign GPIO15_P = GPIO_P[15];
   assign GPIO15_N = GPIO_N[15];
   assign GPIO16_P = GPIO_P[16];
   assign GPIO16_N = GPIO_N[16];
   assign GPIO17_P = GPIO_P[17];
   assign GPIO17_N = GPIO_N[17];
   assign GPIO18_P = GPIO_P[18];
   assign GPIO18_N = GPIO_N[18];
   assign GPIO19_P = GPIO_P[19];
   assign GPIO19_N = GPIO_N[19];
   assign GPIO20_P = GPIO_P[20];
   assign GPIO20_N = GPIO_N[20];
   assign GPIO21_P = GPIO_P[21];
   assign GPIO21_N = GPIO_N[21];
   assign GPIO22_P = GPIO_P[22];
   assign GPIO22_N = GPIO_N[22];
   assign GPIO23_P = GPIO_P[23];
   assign GPIO23_N = GPIO_N[23];

   genvar 	 gpout_cnt;
   generate 
      for (gpout_cnt = 12; gpout_cnt < 24; gpout_cnt = gpout_cnt + 1) begin: gps
	 OBUFDS 
	   #(.IOSTANDARD ("LVDS_25"))
	 gpout_inst
	   (.O     (GPIO_P[gpout_cnt]),
            .OB    (GPIO_N[gpout_cnt]),
            .I     (gpio_out[gpout_cnt-12]));
      end
   endgenerate
`endif

   assign gpio_out = 12'd0;
   
   assign HDMI_D8  = hdmi_data[0];
   assign HDMI_D9  = hdmi_data[1];
   assign HDMI_D10 = hdmi_data[2];
   assign HDMI_D11 = hdmi_data[3];
   assign HDMI_D12 = hdmi_data[4];
   assign HDMI_D13 = hdmi_data[5];
   assign HDMI_D14 = hdmi_data[6];
   assign HDMI_D15 = hdmi_data[7];
   assign HDMI_D16 = hdmi_data[8];
   assign HDMI_D17 = hdmi_data[9];
   assign HDMI_D18 = hdmi_data[10];
   assign HDMI_D19 = hdmi_data[11];
   assign HDMI_D20 = hdmi_data[12];
   assign HDMI_D21 = hdmi_data[13];
   assign HDMI_D22 = hdmi_data[14];
   assign HDMI_D23 = hdmi_data[15];
   
   assign HDMI_CLK   = hdmi_clk;
   assign HDMI_HSYNC = hdmi_hsync;
   assign HDMI_VSYNC = hdmi_vsync;
   assign HDMI_DE    = hdmi_data_e;
   assign HDMI_SPDIF = hdmi_spdif;

   assign hdmi_int   = 1'b0;//=HDMI_INT

`ifndef kFEATURE_HDMI
   assign hdmi_data = 16'd0;
   assign hdmi_clk = 1'b0;
   assign hdmi_hsync = 1'b0;
   assign hdmi_vsync = 1'b0;
   assign hdmi_data_e = 1'b0;
   assign hdmi_spdif = 1'b0;
   assign PS_I2C_SDA_IBUF = 1'bZ;
   assign PS_I2C_SCL_IBUF = 1'bZ;
`endif   // !kFEATURE_HDMI
   
   assign sys_clk      =  processing_system7_0_FCLK_CLK3_pin;
   assign esaxi_areset = ~processing_system7_0_M_AXI_GP1_ARESETN_pin;

   assign rxi_data_p[0] = TXO_DATA0_P;
   assign rxi_data_p[1] = TXO_DATA1_P;
   assign rxi_data_p[2] = TXO_DATA2_P;
   assign rxi_data_p[3] = TXO_DATA3_P;
   assign rxi_data_p[4] = TXO_DATA4_P;
   assign rxi_data_p[5] = TXO_DATA5_P;
   assign rxi_data_p[6] = TXO_DATA6_P;
   assign rxi_data_p[7] = TXO_DATA7_P;

   assign rxi_data_n[0] = TXO_DATA0_N;
   assign rxi_data_n[1] = TXO_DATA1_N;
   assign rxi_data_n[2] = TXO_DATA2_N;
   assign rxi_data_n[3] = TXO_DATA3_N;
   assign rxi_data_n[4] = TXO_DATA4_N;
   assign rxi_data_n[5] = TXO_DATA5_N;
   assign rxi_data_n[6] = TXO_DATA6_N;
   assign rxi_data_n[7] = TXO_DATA7_N;

   assign rxi_frame_p = TXO_FRAME_P;
   assign rxi_frame_n = TXO_FRAME_N;

   assign rxi_lclk_p = TXO_LCLK_P;
   assign rxi_lclk_n = TXO_LCLK_N;

   assign txo_wr_wait_p = RXO_WR_WAIT_P;
   assign txo_wr_wait_n = RXO_WR_WAIT_N;
   assign txo_rd_wait_p = RXO_RD_WAIT;//AO, made single ended
   assign txo_rd_wait_n = 1'b0;//AO, made single ended

   assign RXI_DATA0_P = txo_data_p[0];
   assign RXI_DATA1_P = txo_data_p[1];
   assign RXI_DATA2_P = txo_data_p[2];
   assign RXI_DATA3_P = txo_data_p[3];
   assign RXI_DATA4_P = txo_data_p[4];
   assign RXI_DATA5_P = txo_data_p[5];
   assign RXI_DATA6_P = txo_data_p[6];
   assign RXI_DATA7_P = txo_data_p[7];
   	                             
   assign RXI_DATA0_N = txo_data_n[0];
   assign RXI_DATA1_N = txo_data_n[1];
   assign RXI_DATA2_N = txo_data_n[2];
   assign RXI_DATA3_N = txo_data_n[3];
   assign RXI_DATA4_N = txo_data_n[4];
   assign RXI_DATA5_N = txo_data_n[5];
   assign RXI_DATA6_N = txo_data_n[6];
   assign RXI_DATA7_N = txo_data_n[7];
   
   assign RXI_FRAME_P = txo_frame_p;
   assign RXI_FRAME_N = txo_frame_n;
   
   assign RXI_LCLK_P  = txo_lclk_p;
   assign RXI_LCLK_N  = txo_lclk_n;

   assign TXI_WR_WAIT_P	= rxi_wr_wait_p;
   assign TXI_WR_WAIT_N	= rxi_wr_wait_n;
   assign TXI_RD_WAIT_P	= rxi_rd_wait_p;
   assign TXI_RD_WAIT_N	= rxi_rd_wait_n;

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
			 .rxi_wr_wait_p		(rxi_wr_wait_p),
			 .rxi_wr_wait_n		(rxi_wr_wait_n),
			 .rxi_rd_wait_p		(rxi_rd_wait_p),
			 .rxi_rd_wait_n		(rxi_rd_wait_n),
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
			 .txo_wr_wait_p		(txo_wr_wait_p),
			 .txo_wr_wait_n		(txo_wr_wait_n),
			 .txo_rd_wait_p		(txo_rd_wait_p),
			 .txo_rd_wait_n		(txo_rd_wait_n),
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
`ifdef kHDMI_INCLUDED
			   .processing_system7_0_I2C0_SCL_pin(PS_I2C_SCL),
			   .processing_system7_0_I2C0_SDA_pin(PS_I2C_SDA),
			   .hdmi_clk(hdmi_clk),
               .hdmi_data(hdmi_data),
               .hdmi_hsync(hdmi_hsync),
               .hdmi_vsync(hdmi_vsync),
               .hdmi_data_e(hdmi_data_e),
               .hdmi_int(hdmi_int),
`endif  // kHDMI_INCLUDED
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

