/*
  File: top_parallella16_prototype.v
 
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

`define EP16          1
`define IOSTND        "LVDS_25"
`define CLKEDGE       "SAME_EDGE_PIPELINED"
`define PHYS_EXT_MEM  4'h1

module top_parallella16_prototype (/*AUTOARG*/
   // Outputs
   processing_system7_0_DDR_WEB_pin, txo_data_p, txo_data_n,
   txo_frame_p, txo_frame_n, txo_lclk_p, txo_lclk_n, rxi_wr_wait_p,
   rxi_wr_wait_n, rxi_rd_wait_p, rxi_rd_wait_n, aafm_resetn,
   aafm_ctrl, aafm_xid0, aafm_xid1, aafm_xid2, aafm_i2c_scl, user_led,
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
   processing_system7_0_PS_SRSTB, processing_system7_0_PS_CLK,
   processing_system7_0_PS_PORB, rxi_data_p, rxi_data_n, rxi_frame_p,
   rxi_frame_n, rxi_lclk_p, rxi_lclk_n, txo_wr_wait_p, txo_wr_wait_n,
   txo_rd_wait_p, txo_rd_wait_n, aafm_flag0, aafm_flag1, aafm_flag2,
   aafm_flag3, aafm_yid0, aafm_yid1, aafm_yid2, aafm_misc,
   aafm_i2c_sda, user_pb
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
   input 	processing_system7_0_PS_SRSTB;
   input 	processing_system7_0_PS_CLK;
   input 	processing_system7_0_PS_PORB;
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

   //##################################
   //# LVDS FMC 
   //##################################
   input [7:0] 	   rxi_data_p;
   input [7:0] 	   rxi_data_n;
   input 	   rxi_frame_p;
   input 	   rxi_frame_n;
   input 	   rxi_lclk_p;
   input 	   rxi_lclk_n;
   input 	   txo_wr_wait_p;
   input 	   txo_wr_wait_n;
   input 	   txo_rd_wait_p;
   input 	   txo_rd_wait_n;
   
   output [7:0]    txo_data_p;
   output [7:0]    txo_data_n;
   output 	   txo_frame_p;
   output 	   txo_frame_n;
   output 	   txo_lclk_p;
   output 	   txo_lclk_n;
   output 	   rxi_wr_wait_p;
   output 	   rxi_wr_wait_n;
   output 	   rxi_rd_wait_p;
   output 	   rxi_rd_wait_n;

   output 	   aafm_resetn;
   output [2:0]    aafm_ctrl;

   output 	   aafm_xid0;
   output 	   aafm_xid1;
   output 	   aafm_xid2;

   output 	   aafm_i2c_scl;
   
   input 	   aafm_flag0;
   input 	   aafm_flag1;
   input 	   aafm_flag2;
   input 	   aafm_flag3;
   
   //# unused inputs
   input 	   aafm_yid0;
   input 	   aafm_yid1;
   input 	   aafm_yid2;
   input [3:0] 	   aafm_misc;
   input 	   aafm_i2c_sda;
      
   //##########################
   //# user led DS19
   //##########################
   output [7:0]    user_led;
   
   //##########################
   //# user pushbutton SW5,SW7
   //##########################
   input [1:0] 	   user_pb;
   
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
   reg [1:0] 	 user_pb_clean_reg;
   reg [31:0]    counter_reg;

   //##########
   //# WIRES
   //##########
   wire 	 sys_clk;
   wire 	 esaxi_areset;
   wire 	 fpga_reset;
   wire 	 pbr_reset;
   wire [1:0] 	 user_pb_clean;
      
   assign sys_clk      =  processing_system7_0_FCLK_CLK3_pin;
   assign esaxi_areset = ~processing_system7_0_M_AXI_GP1_ARESETN_pin;

   //############
   //# Defaults
   //############

   assign aafm_ctrl[2:0] = 3'b000;
   assign aafm_xid0      = 1'b0;
   assign aafm_xid1      = 1'b0;
   assign aafm_xid2      = 1'b0;
   assign aafm_i2c_scl   = 1'b0;

   //###########################
   //# Debouncer Circuit for PB
   //###########################
   
   genvar   k;   
   generate
      for(k=0;k<2;k=k+1) begin : gen_debounce
         debouncer #(DPW) debouncer (.clean_out   (user_pb_clean[k]),
                                     .clk         (sys_clk),
                                     .noisy_in    (user_pb[k]));
      end
   endgenerate

   always @(posedge sys_clk)    
      user_pb_clean_reg[1:0] <= user_pb_clean[1:0];
 
   //###########################################################
   //#                      RESET
   //# The following "reset-trigers" exist in the system:
   //# 1. POWER ON RESET    (por_reset)
   //# 2. PUSH BUTTON RESET (reset_pb)
   //# 3. AXI BUS RESET
   //# 4. SW RESET 
   //###########################################################
   
   //#################
   //# Power-On-Reset
   //#################

   always @ (posedge sys_clk)
     begin
        if (por_cnt[19:0] == 20'hff13f)//stop count, deassert reset  
          begin   
             por_reset     <= 1'b0;
             por_cnt[19:0] <= por_cnt[19:0]; 
          end
        else                          //keep count, assert reset
          begin
             por_reset     <= 1'b1;
             por_cnt[19:0] <= por_cnt[19:0] + {{(19){1'b0}},1'b1};
          end
     end // always @ (posedge sys_clk)
   
   //####################
   //# Push-Button-Reset
   //####################

   assign pbr_reset     =  user_pb_clean[0];
   assign user_led[7:0] = ~counter_reg[30:23];
   
   //######################
   //# SMALL ALIVE COUNTER  
   //######################
   
   always @ (posedge sys_clk or posedge fpga_reset) 
     if(fpga_reset)
       counter_reg[31:0] <= 32'b0;   
     else
       counter_reg[31:0] <= counter_reg[31:0] + 1'b1;   

   //####################
   //# FPGA Logic Reset
   //####################

   assign fpga_reset = por_reset | pbr_reset | esaxi_areset | reset_fpga;

   //#####################
   //# AAFM Board Reset
   //#####################

   assign aafm_resetn = ~(por_reset | pbr_reset | reset_chip);

   //##################################
   //# PARALLELLA Instantiation
   //##################################
   /*parallella AUTO_TEMPLATE(
		            .esaxi_aclk	   (processing_system7_0_FCLK_CLK3_pin),
    		            .emaxi_aclk	   (processing_system7_0_FCLK_CLK3_pin),
                            .clkin_100     (processing_system7_0_FCLK_CLK0_pin),
                            .reset         (fpga_reset),
                            .esaxi_\(.*\)  (processing_system7_0_M_AXI_GP1_@"(upcase (substring vl-name 6))"_pin[]),
                            .emaxi_\(.*\)  (processing_system7_0_S_AXI_HP1_@"(upcase (substring vl-name 6))"_pin[]),
                            .csysreq	   (1'b0),
                            .rxi_cclk_p    (),
                            .rxi_cclk_n    (),
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
			 .rxi_cclk_p		(),		 // Templated
			 .rxi_cclk_n		(),		 // Templated
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
			   .processing_system7_0_PS_SRSTB_pin(processing_system7_0_PS_SRSTB),
			   .processing_system7_0_PS_CLK_pin(processing_system7_0_PS_CLK),
			   .processing_system7_0_PS_PORB_pin(processing_system7_0_PS_PORB),
			   // must be tied to 1'b0 according to ug585 (2.6.1)
			   //.processing_system7_0_FCLK_CLKTRIG0_N_pin(1'b0),
			   //.processing_system7_0_FCLK_CLKTRIG1_N_pin(1'b0),
			   //.processing_system7_0_FCLK_CLKTRIG2_N_pin(1'b0),
			   //.processing_system7_0_FCLK_CLKTRIG3_N_pin(1'b0),
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
   
endmodule // top_parallella16_prototype

