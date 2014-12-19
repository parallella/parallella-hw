/*
  Copyright (C) 2014 Adapteva, Inc.
 
  Contributed by Fred Huettig <fred@adapteva.com>

   This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.This program is distributed in the hope 
  that it will be useful,but WITHOUT ANY WARRANTY; without even the implied 
  warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details. You should have received a copy 
  of the GNU General Public License along with this program (see the file 
  COPYING).  If not, see <http://www.gnu.org/licenses/>.
 */

module saxi_test (/*AUTOARG*/
   // Outputs
   ERROR, DONE, s_axi_awready, s_axi_wready, s_axi_bid, s_axi_bresp,
   s_axi_bvalid, s_axi_arready, s_axi_rid, s_axi_rdata, s_axi_rresp,
   s_axi_rlast, s_axi_rvalid,
   // Inputs
   s_axi_aclk, s_axi_aresetn, s_axi_awid, s_axi_awaddr, s_axi_awlen,
   s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache,
   s_axi_awprot, s_axi_awvalid, s_axi_awqos, s_axi_wid, s_axi_wdata,
   s_axi_wstrb, s_axi_wlast, s_axi_wvalid, s_axi_bready, s_axi_arid,
   s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst,
   s_axi_arlock, s_axi_arcache, s_axi_arprot, s_axi_arvalid,
   s_axi_arqos, s_axi_rready
   );

   // Parameters (Connects to DUT master)
   parameter MIDW = 6;  //ID Width
   parameter MAW  = 32; //Address Bus Width
   parameter MDW  = 64; //Data Bus Width
   parameter MSTW = 8;  //Number of strobes
   
   /*****************************/
   /*TESTBENCH SIGNALS          */
   /*****************************/
   output ERROR;
   output DONE;
      
   /*****************************/
   /*AXI SLAVE I/F              */
   /*****************************/

   //Global signals
   input  s_axi_aclk;      //clock source for axi master/slave interfaces
   input  s_axi_aresetn;   //asynchronous reset signal, active low 
   
   //Write address channel
   input [MIDW-1:0]  s_axi_awid;      //write address ID
   input [MAW-1:0]   s_axi_awaddr;    //write address
   input [3:0]       s_axi_awlen;     //burst length (number of data transfers)
   input [2:0]       s_axi_awsize;    //burst size (size of each transfer)
   input [1:0]       s_axi_awburst;   //burst type
   input [1:0]       s_axi_awlock;    //lock type (atomic characteristics)
   input [3:0]       s_axi_awcache;   //memory type
   input [2:0]       s_axi_awprot;    //protection type
   input             s_axi_awvalid;   //write address valid
   input [3:0]       s_axi_awqos;     //quality of service default 4'b0000
   output            s_axi_awready;   //write address ready
   
   //Write data channel
   input [MIDW-1:0]  s_axi_wid;       //write ID tag (supported only in AXI3)
   input [MDW-1:0]   s_axi_wdata;     //write data
   input [MSTW-1:0]  s_axi_wstrb;     //write strobes
   input             s_axi_wlast;     //indicates last write transfer in burst
   input             s_axi_wvalid;    //write valid
   output            s_axi_wready;    //write channel ready
   
   //Buffered write response channel
   input             s_axi_bready;    //write ready
   output [MIDW-1:0] s_axi_bid;       //response ID tag
   output [1:0]      s_axi_bresp;     //write response
   output            s_axi_bvalid;    //write response valid
   
   //Read address channel
   input [MIDW-1:0]  s_axi_arid;      //read address ID
   input [MAW-1:0]   s_axi_araddr;    //read address
   input [3:0]       s_axi_arlen;     //burst lenght (number of data transfers)
   input [2:0]       s_axi_arsize;    //burst size (size of each transfer)
   input [1:0]       s_axi_arburst;   //burst type
   input [1:0] 	     s_axi_arlock;    //lock type (atomic characteristics)
   input [3:0]       s_axi_arcache;   //memory type
   input [2:0]       s_axi_arprot;    //protection type
   input             s_axi_arvalid;   //read address valid
   input [3:0]       s_axi_arqos;     //quality of service default 4'b0000
   output            s_axi_arready;   //read address ready
   
   //Read data channel
   output [MIDW-1:0] s_axi_rid;       //read ID tag 
   output [MDW-1:0]  s_axi_rdata;     //read data
   output [1:0]      s_axi_rresp;     //read response
   output            s_axi_rlast;     //indicates last read transfer in burst
   output            s_axi_rvalid;    //read valid
   input             s_axi_rready;    //read ready

   initial begin
      ERROR <= 1'b0;
      DONE  <= 1'b0;
   end

   wire           s_axi_awready = 1'b1;
   
   //Write data channel
   wire           s_axi_wready = 1'b1;
   
   //Buffered write response channel
   reg [MIDW-1:0] s_axi_bid;
   wire [1:0]     s_axi_bresp;
   reg            s_axi_bvalid;

   always @ (posedge s_axi_aclk or negedge s_axi_aresetn) begin
      if(~s_axi_aresetn) begin

         s_axi_bid    <= {MIDW{1'b0}};
         s_axi_bvalid <= 1'b0;

      end else begin
         
         if(s_axi_wvalid && s_axi_wready) begin
            s_axi_bid <= s_axi_wid;
            s_axi_bvalid <= 1'b1;
         end else if(s_axi_bready) begin
            s_axi_bvalid <= 1'b0;
         end
         
      end // else: !if(~s_axi_aresetn)
   end // always @ (posedge s_axi_aclk or negedge s_axi_aresetn)
         
   //Read address channel
   reg            s_axi_arready;

   always @ (posedge s_axi_aclk or negedge s_axi_aresetn) begin
      if(~s_axi_aresetn) begin
         s_axi_arready <= 1'b0;
      end else begin
         
   //Read data channel
   reg [MIDW-1:0] s_axi_rid;
   reg [MDW-1:0]  s_axi_rdata;
   reg [1:0]      s_axi_rresp;
   wire           s_axi_rlast = 1'b1; // No bursting for now, so always last beat
   reg            s_axi_rvalid;
   
endmodule // saxi_test

    // Local Variables:
    // verilog-library-directories:("." "../elink" "../axi")
    // End:
