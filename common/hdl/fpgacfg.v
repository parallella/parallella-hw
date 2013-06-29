/*
  File: fpgacfg.v
 
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
//#######################################################
//# The following fpga config registers are supported:
//# - SYS_CONFIG `REG_SYSCFG   (system configuration)
//# - CHIP_RESET `REG_RESET    (reset to the chip/fpga)
//# - VERSION    `REG_VERSION  (firmware version)
//# - FILTER_L   `REG_FILTERL  (filter range low)
//# - FILTER_H   `REG_FILTERH  (filter range high)
//# - FILTER_C   `REG_FILTERC  (filter capture)
//# - TIMEOUT    `REG_TIMEOUT  (read timeout)
//########################################################
module fpgacfg (/*AUTOARG*/
   // Outputs
   reset_chip, reset_fpga, elink_access_out, elink_write_out,
   elink_datamode_out, elink_ctrlmode_out, elink_dstaddr_out,
   elink_srcaddr_out, elink_data_out, elink_wr_wait_out,
   elink_rd_wait_out, axi_access_out, axi_write_out, axi_datamode_out,
   axi_ctrlmode_out, axi_dstaddr_out, axi_srcaddr_out, axi_data_out,
   axi_wr_wait_out, axi_rd_wait_out,
   // Inputs
   eclk, aclk, reset, elink_access_in, elink_write_in,
   elink_datamode_in, elink_ctrlmode_in, elink_dstaddr_in,
   elink_srcaddr_in, elink_data_in, elink_wr_wait_in,
   elink_rd_wait_in, axi_access_in, axi_write_in, axi_datamode_in,
   axi_ctrlmode_in, axi_dstaddr_in, axi_srcaddr_in, axi_data_in,
   axi_wr_wait_in, axi_rd_wait_in
   );

   //#########
   //# Inputs
   //#########

   input         eclk;
   input 	 aclk;
   input 	 reset;     
      
   //##############################
   //# From elink
   //##############################
   input 	 elink_access_in;
   input 	 elink_write_in;
   input [1:0] 	 elink_datamode_in;
   input [3:0] 	 elink_ctrlmode_in;
   input [31:0]  elink_dstaddr_in;
   input [31:0]  elink_srcaddr_in;
   input [31:0]  elink_data_in;  
   input 	 elink_wr_wait_in;  
   input 	 elink_rd_wait_in; 
   
   //##############################
   //# From axi
   //##############################
   input 	 axi_access_in;
   input 	 axi_write_in;
   input [1:0] 	 axi_datamode_in;
   input [3:0] 	 axi_ctrlmode_in;
   input [31:0]  axi_dstaddr_in;
   input [31:0]  axi_srcaddr_in;
   input [31:0]  axi_data_in;  
   input 	 axi_wr_wait_in;  
   input 	 axi_rd_wait_in; 

   //##########
   //# Outputs
   //##########

   output 	 reset_chip;
   output 	 reset_fpga;

   //##############################
   //# To elink
   //##############################
   output 	 elink_access_out;
   output 	 elink_write_out;
   output [1:0]  elink_datamode_out;
   output [3:0]  elink_ctrlmode_out;
   output [31:0] elink_dstaddr_out;
   output [31:0] elink_srcaddr_out;
   output [31:0] elink_data_out;   
   output 	 elink_wr_wait_out; 
   output 	 elink_rd_wait_out; 

   //##############################
   //# To axi
   //##############################
   output 	 axi_access_out;
   output 	 axi_write_out;
   output [1:0]  axi_datamode_out;
   output [3:0]  axi_ctrlmode_out;
   output [31:0] axi_dstaddr_out;
   output [31:0] axi_srcaddr_out;
   output [31:0] axi_data_out;   
   output 	 axi_wr_wait_out; 
   output 	 axi_rd_wait_out; 

   /*AUTOINPUT*/
   /*AUTOWIRE*/

   //#########
   //# Regs
   //#########
   reg  	 reset_reg;
   reg [31:0] 	 syscfg_reg;
   reg [31:0] 	 version_reg;
   reg [31:0] 	 filterl_reg;
   reg [31:0] 	 filterh_reg;
   reg [31:0] 	 filterc_reg;
   reg [31:0] 	 timeout_reg;

   reg [31:0] 	 reset_chip_reg;
   reg 		 wb_access_reg;
   reg [1:0] 	 wb_datamode_reg;
   reg [3:0] 	 wb_ctrlmode_reg;
   reg [31:0] 	 wb_dstaddr_reg;
   reg [31:0] 	 wb_data_reg;

   reg [6:0] 	 rd_tran_cnt;
   reg [31:0] 	 timeout_cnt;
   reg [31:0] 	 to_dstaddr_reg;
   reg [11:0] 	 to_data_reg;  

   reg 		 second_wb_from_one_or_two;
   
   //#########
   //# Wires
   //#########
   wire 	 fpgacfg_addr_match;
   wire 	 fpgacfg_access;
   wire 	 fpgacfg_write_access;
   wire 	 fpgacfg_read_access;
   wire 	 reset_reg_access;
   wire 	 reset_reg_write;
   wire 	 reset_reg_write_sync;
   wire 	 reset_reg_clear;
   wire 	 version_reg_access;
   wire 	 version_reg_read;
   wire [31:0] 	 wb_data;
   wire 	 syscfg_reg_access;
   wire 	 syscfg_reg_write;
   wire 	 syscfg_reg_read;
   wire 	 filterl_reg_access;
   wire 	 filterl_reg_write;
   wire 	 filterl_reg_read;
   wire 	 filterh_reg_access;
   wire 	 filterh_reg_write;
   wire 	 filterh_reg_read;
   wire 	 filterc_reg_access;
   wire 	 filterc_reg_write;
   wire 	 filterc_reg_read;
   wire 	 timeout_reg_access;
   wire 	 timeout_reg_write;
   wire 	 timeout_reg_read;
   wire [30:0] 	 orange_low_diff;
   wire [30:0] 	 orange_high_diff;
   wire 	 orange_inc;
   wire 	 orange_exc;
   wire 	 otran_en;
   wire 	 wb_axi_slave;
   wire 	 otran_to_axi_slave;
   wire [1:0] 	 filterc_reg_status;
   wire 	 filterc_reg_capture;
   wire [3:0] 	 sys_ctrlmode;
   wire [1:0] 	 sys_filtere;
   wire 	 sys_timeoute;
   wire 	 rd_tran_start;
   wire 	 rd_tran_end;
   wire 	 rd_tran_inc;
   wire 	 rd_tran_dec;
   wire 	 rd_tran_upd;
   wire [6:0] 	 rd_tran_cnt_inc;
   wire [6:0] 	 rd_tran_cnt_dec;
   wire [6:0] 	 rd_tran_cnt_next;
   wire 	 rd_tran_active;
   wire [31:0] 	 timeout_cnt_dec;
   wire 	 timeout_cnt_upd;
   wire 	 to_access;
   wire [31:0] 	 to_dstaddr;
   wire [31:0] 	 to_data;
   wire 	 read_row_one_or_two;
   wire 	 wb_from_one_or_two;
   wire 	 write_row2;
   wire 	 sys_dwb_prev_dis;
   wire 	 sys_tran_modif_row2;
   wire [3:0] 	 sys_ctrlmode_row2;
   wire [11:0] 	 sys_srcaddr_row2;
   
      
`ifdef EP64
   assign sys_dwb_prev_dis       = syscfg_reg[27];
   assign sys_tran_modif_row2    = syscfg_reg[26];
   assign sys_ctrlmode_row2[3:0] = syscfg_reg[23:20];
   assign sys_srcaddr_row2[11:0] = syscfg_reg[19:8];
`else
   assign sys_dwb_prev_dis       = 1'b1;
   assign sys_tran_modif_row2    = 1'b0;
   assign sys_ctrlmode_row2[3:0] = 4'b0000;
   assign sys_srcaddr_row2[11:0] = {(12){1'b0}};
`endif

   //##########################################
   //# Configuration registers write detection
   //##########################################

   assign fpgacfg_addr_match = 
         (axi_dstaddr_in[31:8] == {`CHIP_CORE0_ID,`MM_MMR, 4'b0000,`MM_FPGA});
 
   assign fpgacfg_access       = axi_access_in & fpgacfg_addr_match;
   assign fpgacfg_write_access = fpgacfg_access &  axi_write_in;
   assign fpgacfg_read_access  = fpgacfg_access & ~axi_write_in;
   
   //########################################################################
   //#                 System Configuration Register
   //# ----------------------------------------------------------------------
   //#  bits            meaning
   //# ----------------------------------------------------------------------
   //# [31:28]        "Control Mode" 
   //# [27:3]          Reserved:
   //#         [27]    - disable "double read" prevention logic
   //#         [26]    - enable tran modification for row 2
   //#         [23:20] - control mode for write tran to row 2
   //#         [19:8]  - src address for write tran to row 2
   //#  [2:1]         "Filter Enable"
   //#                     00 - filter disable
   //#                     01 - inclusive range (enable transactions 
   //#                                           within the range)
   //#                     10 - exclusive range (enable transactions outside
   //#                                           the range)
   //#                     11 - reserved
   //#
   //#   [0]           "Time Out Enable"
   //#                      1 - enable
   //#                      0 - disable               
   //########################################################################

   assign syscfg_reg_access = fpgacfg_access & 
			      (axi_dstaddr_in[7:2] == `REG_SYSCFG);
   
   assign syscfg_reg_write = syscfg_reg_access &  axi_write_in;
   assign syscfg_reg_read  = syscfg_reg_access & ~axi_write_in;
   
   always @ (posedge eclk or posedge reset)
     if(reset)
       syscfg_reg[31:0] <= {(32){1'b0}};
     else if(syscfg_reg_write)
       syscfg_reg[31:0] <= axi_data_in[31:0];

   assign sys_ctrlmode[3:0] = syscfg_reg[31:28];
   assign sys_filtere[1:0]  = syscfg_reg[2:1];
   assign sys_timeoute      = syscfg_reg[0];

   //###########################
   //# Reset Register
   //###########################

   assign reset_reg_access = fpgacfg_access & 
			     (axi_dstaddr_in[7:2] == `REG_RESET);
   
   
   assign reset_reg_write = reset_reg_access & axi_write_in & ~axi_wr_wait_out;

   pulse2pulse pulse2pulse (.out         (reset_reg_write_sync),
                            .outclk      (aclk),
                            .in          (reset_reg_write),
                            .inclk       (eclk),
                            .reset       (1'b0));
   
   assign reset_reg_clear = |(reset_chip_reg[31:0]);

   always @ (posedge aclk) 
     if(reset_reg_write_sync)
       reset_reg <= 1'b1;
     else if(reset_reg_clear)
       reset_reg <= 1'b0;

   // reset chip
   assign reset_chip = reset_chip_reg[31];
   assign reset_fpga = reset_chip_reg[31];

   always @ (posedge aclk)
     if(reset_reg)
       reset_chip_reg[31:0] <= {(32){1'b1}};
     else
       reset_chip_reg[31:0] <= {reset_chip_reg[30:0],1'b0};

   //#############################
   //# Version Control Register
   //#############################

   assign version_reg_access = fpgacfg_access & 
			       (axi_dstaddr_in[7:2] == `REG_VERSION);
   
   assign version_reg_read = version_reg_access & ~axi_write_in;
   
   always @ (posedge eclk or posedge reset)
     if(reset)
       version_reg[31:0] = `VERSION_VALUE;

   //###################################################################
   //#             Filter Low Register
   //# -----------------------------------------------------------------
   //#  bits            meaning
   //# [31:2]   low address of the filter range
   //#  [1:0]          don't care
   //#####################################################################

   assign filterl_reg_access = fpgacfg_access & 
				(axi_dstaddr_in[7:2] == `REG_FILTERL);
   
   assign filterl_reg_write = filterl_reg_access &  axi_write_in;
   assign filterl_reg_read  = filterl_reg_access & ~axi_write_in;

   always @ (posedge eclk or posedge reset)
     if(reset)
       filterl_reg[31:0] <= {(32){1'b0}};
     else if(filterl_reg_write)
       filterl_reg[31:0] <= axi_data_in[31:0];

   //###################################################################
   //#             Filter High Register
   //# -----------------------------------------------------------------
   //#  bits            meaning
   //# [31:2]   high address of the filter range
   //#  [1:0]          don't care
   //#####################################################################
   
   assign filterh_reg_access = fpgacfg_access & 
				(axi_dstaddr_in[7:2] == `REG_FILTERH);
   
   assign filterh_reg_write = filterh_reg_access &  axi_write_in;
   assign filterh_reg_read  = filterh_reg_access & ~axi_write_in;

   always @ (posedge eclk or posedge reset)
     if(reset)
       filterh_reg[31:0] <= {(32){1'b0}};
     else if(filterh_reg_write)
       filterh_reg[31:0] <= axi_data_in[31:0];

   //###################################################################
   //#                    Filter Capture Register
   //# -----------------------------------------------------------------
   //#  bits                 meaning
   //# [31:2]  captured address of the filter-out violating transaction
   //#  [1:0]          status
   //#                  00 - not a valid value
   //#                  01 - first violating transaction
   //#                  10 - second violating transaction
   //#                  11 - there are more than 3 violating transactions
   //#
   //# * Every write to this register clears its value
   //#
   //#####################################################################

   assign filterc_reg_access = fpgacfg_access & 
				(axi_dstaddr_in[7:2] == `REG_FILTERC);
   
   assign filterc_reg_write = filterc_reg_access &  axi_write_in;
   assign filterc_reg_read  = filterc_reg_access & ~axi_write_in;

   always @ (posedge eclk or posedge reset)
     if(reset)
       filterc_reg[31:0] <= {(32){1'b0}};
     else if(filterc_reg_write)
       filterc_reg[31:0] <= {(32){1'b0}};
     else if(filterc_reg_capture)
       filterc_reg[31:0] <= {elink_dstaddr_in[31:2],filterc_reg_status[1:0]};

   assign filterc_reg_status[1:0] = (filterc_reg[1:0] == 2'b11) ? 2'b11 :
				     filterc_reg[1:0] + 2'b01;
   
   assign filterc_reg_capture = elink_access_in & ~otran_en;
			     
   //###################################################################
   //#                    Read Timeout Register
   //#####################################################################

   assign timeout_reg_access = fpgacfg_access & 
			       (axi_dstaddr_in[7:2] == `REG_TIMEOUT);
   
   assign timeout_reg_write = timeout_reg_access &  axi_write_in;
   assign timeout_reg_read  = timeout_reg_access & ~axi_write_in;

   always @ (posedge eclk or posedge reset)
     if(reset)
       timeout_reg[31:0] <= `TIMEOUT_DEFAULT;
     else if(timeout_reg_write)
       timeout_reg[31:0] <= axi_data_in[31:0];

   //###############################
   //# FpgaCfg Read Transactions
   //###############################

   assign wb_data[31:0] = syscfg_reg_read   ? syscfg_reg[31:0]  :
			  version_reg_read  ? version_reg[31:0] :
			  filterl_reg_read  ? filterl_reg[31:0] :
			  filterh_reg_read  ? filterh_reg[31:0] :
			  filterc_reg_read  ? filterc_reg[31:0] :
			  timeout_reg_read  ? timeout_reg[31:0] :
			                      {(32){1'b0}};
   
   always @ (posedge eclk or posedge reset)
     if(reset)
       wb_access_reg <= 1'b0;
     else
       wb_access_reg <= fpgacfg_read_access | (wb_access_reg & axi_wr_wait_in);
   
   always @ (posedge eclk)
     if(fpgacfg_read_access & ~wb_access_reg)
       begin
          wb_datamode_reg[1:0]  <= axi_datamode_in[1:0];
          wb_ctrlmode_reg[3:0]  <= axi_ctrlmode_in[3:0];
          wb_dstaddr_reg[31:0]  <= axi_srcaddr_in[31:0];
	  wb_data_reg[31:0]     <= wb_data[31:0];
       end

   //###########################
   //# Time Out Logic
   //###########################

   assign rd_tran_start = elink_access_out & ~elink_write_out;
   assign rd_tran_end   = ~(wb_access_reg | axi_wr_wait_in) & 
			  (elink_access_in & otran_to_axi_slave | to_access);

   assign rd_tran_inc = rd_tran_start & ~(&(rd_tran_cnt[6:0]));
   assign rd_tran_dec = rd_tran_end   &  (|(rd_tran_cnt[6:0]));
   assign rd_tran_upd = rd_tran_inc ^ rd_tran_dec;
      
   assign rd_tran_cnt_inc[6:0] = rd_tran_cnt[6:0] + {{(6){1'b0}},1'b1};
   assign rd_tran_cnt_dec[6:0] = rd_tran_cnt[6:0] - {{(6){1'b0}},1'b1};
   
   assign rd_tran_cnt_next[6:0] = rd_tran_inc ? rd_tran_cnt_inc[6:0] :
				                rd_tran_cnt_dec[6:0];
   
   always @ (posedge eclk or posedge reset)
     if(reset)
       rd_tran_cnt[6:0] <= {(7){1'b0}};
     else if(rd_tran_upd)
       rd_tran_cnt[6:0] <= rd_tran_cnt_next[6:0];

   assign rd_tran_active = |(rd_tran_cnt[6:0]);

   always @ (posedge eclk or posedge reset)
     if(reset)
       timeout_cnt[31:0] <= {(32){1'b1}};
     else if(rd_tran_start | rd_tran_end)
       timeout_cnt[31:0] <= timeout_reg[31:0];
     else if(timeout_cnt_upd)
       timeout_cnt[31:0] <= timeout_cnt_dec[31:0];

   assign timeout_cnt_upd = sys_timeoute & rd_tran_active & 
			    |(timeout_cnt[31:0]);
   
   assign timeout_cnt_dec[31:0]  = timeout_cnt[31:0] - {{(31){1'b0}},1'b1};

   //# Timeout Response Transaction
   always @ (posedge eclk)
     if(rd_tran_start)
       begin
	  to_dstaddr_reg[31:0] <= elink_srcaddr_out[31:0];
	  to_data_reg[11:0]    <= elink_dstaddr_out[31:20];
       end
   
   assign to_dstaddr[31:0] = to_dstaddr_reg[31:0];
   assign to_data[31:0]    = {to_data_reg[11:0],20'h0dead};
   assign to_access        = sys_timeoute & ~(|(timeout_cnt[31:0]));
      
   //###########################
   //# Filter Range Check
   //###########################

   //# from the chip (output)
   assign orange_low_diff[30:0] = {1'b0,elink_dstaddr_in[31:2]} -
				  {1'b0,filterl_reg[31:2]};

   assign orange_high_diff[30:0] = {1'b0,elink_dstaddr_in[31:2]} -
				   {1'b0,filterh_reg[31:2]};

   assign orange_inc = ~orange_low_diff[30] &  orange_high_diff[30];
   assign orange_exc =  orange_low_diff[30] | ~orange_high_diff[30];

   assign otran_en = otran_to_axi_slave | ~wb_axi_slave & 
		     (orange_inc & (sys_filtere[1:0] == 2'b01) |
		      orange_exc & (sys_filtere[1:0] == 2'b10) |
		                   (sys_filtere[1:0] == 2'b00));

   //# write back transaction to AXI Slave port is always enabled
   assign wb_axi_slave = elink_write_in & 
			 (elink_dstaddr_in[31:20] == `AXI_COORD);

   
   assign otran_to_axi_slave = wb_axi_slave & wb_axi_slave_en;

   
   //###########################
   //# Transactions to ELink
   //###########################

   assign elink_access_out        = axi_access_in & ~fpgacfg_addr_match;
   assign elink_write_out         = axi_write_in;
   assign elink_datamode_out[1:0] = axi_datamode_in[1:0];
   assign elink_dstaddr_out[31:0] = axi_dstaddr_in[31:0];
   assign elink_data_out[31:0]    = axi_data_in[31:0];   
   assign elink_ctrlmode_out[3:0] = axi_ctrlmode_in[3:0] | sys_ctrlmode[3:0] | 
				    {(4){write_row2}} & sys_ctrlmode_row2[3:0];

   assign elink_srcaddr_out[31:0] = write_row2 ? 
				    {sys_srcaddr_row2[11:0],axi_srcaddr_in[19:0]} :
				    axi_srcaddr_in[31:0];

   assign elink_wr_wait_out       = axi_wr_wait_in | wb_access_reg;
   assign elink_rd_wait_out       = axi_rd_wait_in | wb_access_reg;

   assign write_row2 = axi_write_in & sys_tran_modif_row2 &
		      ~(axi_datamode_in[1:0] == 2'b11) & 
		       (axi_dstaddr_in[28:26] == 3'b010);

   //############################
   //# Transactions to AXI
   //############################

   assign axi_access_out          = wb_access_reg | 
				    to_access     |
				    elink_access_in & otran_en;
   
   assign axi_write_out           = wb_access_reg | 
				    to_access     |
				    elink_write_in;
   
   assign axi_srcaddr_out[31:0]   = elink_srcaddr_in[31:0];

   assign axi_datamode_out[1:0]   = wb_access_reg ? wb_datamode_reg[1:0] :
				                    elink_datamode_in[1:0];
   
   assign axi_ctrlmode_out[3:0]   = wb_access_reg ? wb_ctrlmode_reg[3:0] :
				                    elink_ctrlmode_in[3:0];
   
   assign axi_dstaddr_out[31:0]   = wb_access_reg ? wb_dstaddr_reg[31:0] :
				    to_access     ? to_dstaddr[31:0]     :
				                    elink_dstaddr_in[31:0];
   
   assign axi_data_out[31:0]      = wb_access_reg ? wb_data_reg[31:0] :
				    to_access     ? to_data[31:0]     :
				                    elink_data_in[31:0];   

   assign axi_wr_wait_out         = elink_wr_wait_in & ~fpgacfg_write_access; 
   assign axi_rd_wait_out         = elink_rd_wait_in & ~fpgacfg_read_access;
      
   //#####################################
   //# Workaround for a double write back 
   //# data coming from row 1 and row 2
   //# of the chip
   //#####################################

   assign read_row_one_or_two = (to_data_reg[8:6] == 3'b001) | 
				(to_data_reg[8:6] == 3'b010);

   assign wb_from_one_or_two = read_row_one_or_two & 
			       elink_access_in & wb_axi_slave &
			       ~elink_wr_wait_out;
   
   always @ (posedge eclk or posedge reset)
     if(reset)
       second_wb_from_one_or_two <= 1'b0;
     else if(wb_from_one_or_two)
       second_wb_from_one_or_two <= ~second_wb_from_one_or_two;

   assign wb_axi_slave_en = ~read_row_one_or_two | second_wb_from_one_or_two |
			    sys_dwb_prev_dis; 
   
endmodule // fpgacfg
