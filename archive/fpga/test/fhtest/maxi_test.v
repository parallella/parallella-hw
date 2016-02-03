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

`timescale 1ns/10ps

module maxi_test (/*AUTOARG*/
   // Outputs
   ERROR, DONE, m_axi_awid, m_axi_awaddr, m_axi_awlen, m_axi_awsize,
   m_axi_awburst, m_axi_awlock, m_axi_awcache, m_axi_awprot,
   m_axi_awvalid, m_axi_awqos, m_axi_wid, m_axi_wdata, m_axi_wstrb,
   m_axi_wlast, m_axi_wvalid, m_axi_bready, m_axi_arid, m_axi_araddr,
   m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arlock,
   m_axi_arcache, m_axi_arprot, m_axi_arvalid, m_axi_arqos,
   m_axi_rready,
   // Inputs
   m_axi_aclk, m_axi_aresetn, m_axi_awready, m_axi_wready, m_axi_bid,
   m_axi_bresp, m_axi_bvalid, m_axi_arready, m_axi_rid, m_axi_rdata,
   m_axi_rresp, m_axi_rlast, m_axi_rvalid
   );

   // Parameters (connect to DUT slave)
   parameter SIDW = 12; //ID Width
   parameter SAW  = 32; //Address Bus Width
   parameter SDW  = 32; //Data Bus Width
   parameter SSTW = 8; //Number of strobes

   localparam DELAYSTART_W = 100;
   localparam DELAYSTART_R = 200;
   
   /*****************************/
   /*TESTBENCH SIGNALS          */
   /*****************************/
   output ERROR;
   output DONE;
      
   /*****************************/
   /*AXI MASTER I/F             */
   /*****************************/

   //Global signals
   input 	     m_axi_aclk;      //clock source for axi master/slave interfaces
   input 	     m_axi_aresetn;   //asynchronous reset signal, active low 
   
   //Write address channel
   output [SIDW-1:0] m_axi_awid;      //write address ID
   output [SAW-1:0]  m_axi_awaddr;    //write address
   output [3:0]      m_axi_awlen;     //burst length (number of data transfers)
   output [2:0]      m_axi_awsize;    //burst size (size of each transfer)
   output [1:0]      m_axi_awburst;   //burst type
   output [1:0]      m_axi_awlock;    //lock type (atomic characteristics)
   output [3:0]      m_axi_awcache;   //memory type
   output [2:0]      m_axi_awprot;    //protection type
   output            m_axi_awvalid;   //write address valid
   output [3:0]      m_axi_awqos;     //quality of service default 4'b0000
   input             m_axi_awready;   //write address ready
   
   //Write data channel
   output [SIDW-1:0] m_axi_wid;       //write ID tag (supported only in AXI3)
   output [SDW-1:0]  m_axi_wdata;     //write data
   output [SSTW-1:0] m_axi_wstrb;     //write strobes
   output            m_axi_wlast;     //indicates last write transfer in burst
   output            m_axi_wvalid;    //write valid
   input             m_axi_wready;    //write ready

   //Bufered write response channel
   input [SIDW-1:0]  m_axi_bid;       //response ID tag
   input [1:0]       m_axi_bresp;     //write response
   input             m_axi_bvalid;    //write response valid
   output            m_axi_bready;    //write ready
         
   //Read address channel
   output [SIDW-1:0] m_axi_arid;      //read address ID
   output [SAW-1:0]  m_axi_araddr;    //read address
   output [3:0]      m_axi_arlen;     //burst length (number of data transfers)
   output [2:0]      m_axi_arsize;    //burst size (size of each transfer)
   output [1:0]      m_axi_arburst;   //burst type
   output [1:0]      m_axi_arlock;    //lock type (atomic characteristics)
   output [3:0]      m_axi_arcache;   //memory type
   output [2:0]      m_axi_arprot;    //protection type
   output            m_axi_arvalid;   //read address valid
   output [3:0]      m_axi_arqos;     //quality of service default 4'b0000
   input             m_axi_arready;   //read address ready
   
   //Read data channel
   input [SIDW-1:0]  m_axi_rid;       //read ID tag 
   input [SDW-1:0]   m_axi_rdata;     //read data
   input [1:0]       m_axi_rresp;     //read response
   input             m_axi_rlast;     //indicates last read transfer in burst
   input             m_axi_rvalid;    //read valid
   output            m_axi_rready;    //read ready


   /***************************************/
   /* Extend local resets by delay values */
   /***************************************/
   reg               resetn_w;
   reg               resetn_r;
   integer           count;
   
   always @ (posedge m_axi_aclk or negedge m_axi_aresetn) begin
      if(~m_axi_aresetn) begin
         resetn_w <= 1'b0;
         resetn_r <= 1'b0;
         count    <= 0;
      end else begin
         count <= count + 1;
         if(count == DELAYSTART_W)
           resetn_w <= 1'b1;
         if(count == DELAYSTART_R)
           resetn_r <= 1'b1;
      end
   end

   /******************************/
   /* Write sequential addresses */
   /******************************/

   wire [SIDW-1:0]   m_axi_awid = {SIDW{1'b0}}; // Fixed ID
   reg [SAW-1:0]     m_axi_awaddr;         // Incrementing Address
   wire [3:0]        m_axi_awlen = 4'd0;   // Single beat (no burst for now)
   wire [2:0]        m_axi_awsize = 3'd2;  // 4 Bytes / beat
   wire [1:0]        m_axi_awburst = 2'd1; // Incrementing Burst Type
   wire [1:0]        m_axi_awlock = 2'b00;  // Normal access (AXI4 uses only 1 bit?)
   wire [3:0]        m_axi_awcache = 4'b0011; // Modifiable, Bufferable, but not cacheable
   wire [2:0]        m_axi_awprot = 3'b010; // Data, Non-secure, Unprivileged
   reg               m_axi_awvalid;         // Valid
   wire [3:0]        m_axi_awqos = 4'd0;    // Default QoS

   always @ (posedge m_axi_aclk or negedge resetn_w) begin
      if(~resetn_w) begin
         m_axi_awaddr <= {SAW{1'b0}};
         m_axi_awvalid <= 1'b0;
      end else begin
         m_axi_awvalid <= 1'b1;
         if(m_axi_awready)
           m_axi_awaddr <= m_axi_awaddr + 4;
      end
   end  // TODO: Add optional gaps between 'valid's
   
   //Write data channel
   wire [SIDW-1:0] m_axi_wid = {SIDW{1'b0}}; // Fixed ID
   reg [SDW-1:0]   m_axi_wdata;     // Decrementing Data
   wire [SSTW-1:0] m_axi_wstrb = {SSTW{1'b1}}; // Byte Lanes
   wire            m_axi_wlast = 1'b1; // Single beat per transfer, always last
   reg             m_axi_wvalid;

   always @ (posedge m_axi_aclk or negedge resetn_w) begin
      if(~resetn_w) begin
         m_axi_wdata <= {SDW{1'b1}};
         m_axi_wvalid <= 1'b0;
      end else begin
         m_axi_wvalid <= 1'b1;
         if(m_axi_wready)
           m_axi_wdata <= m_axi_wdata - 1;
      end
   end

   //Buffered write response channel
   wire            m_axi_bready = 1'b1;    // always ready for now
   
   //Read address channel
   wire [SIDW-1:0] m_axi_arid = {SIDW{1'b0}}; // ID unused
   reg [SAW-1:0]   m_axi_araddr;
   wire [3:0]      m_axi_arlen = 4'd0;      // Single beat per transfer
   wire [2:0]      m_axi_arsize = 3'd2;     // 4 bytes / beat
   wire [1:0]      m_axi_arburst = 2'd1;    // Incrementing Burst Type
   wire [1:0]      m_axi_arlock = 2'b00;    // Normal access (AXI4 uses only 1 bit?)
   wire [3:0]      m_axi_arcache = 4'b0011; // Modifiable, Bufferable, but not cacheable
   wire [2:0]      m_axi_arprot = 3'b010;   // Data, Non-secure, Unprivileged
   reg             m_axi_arvalid;           //read address valid
   wire [3:0]      m_axi_arqos = 4'd0;      // Default QoS

   always @ (posedge m_axi_aclk or negedge resetn_r) begin
      if(~resetn_r) begin
         m_axi_araddr <= {SAW{1'b0}};
         m_axi_arvalid <= 1'b0;
      end else begin
         m_axi_arvalid <= 1'b1;
         if(m_axi_arready)
           m_axi_araddr <= m_axi_araddr + 8;
      end
   end  // TODO: Add optional gaps between 'valid's  
 
   //Read data channel
   wire            m_axi_rready = 1'b1; // Always Ready for now

endmodule // maxi_test

    // Local Variables:
    // verilog-library-directories:("." "../elink" "../axi")
    // End:
