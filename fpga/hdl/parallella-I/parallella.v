/*
  File: parallella.v
 
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
module parallella (/*AUTOARG*/
   // Outputs
   csysack, cactive, reset_chip, reset_fpga, txo_data_p, txo_data_n,
   txo_frame_p, txo_frame_n, txo_lclk_p, txo_lclk_n, rxo_wr_wait_p,
   rxo_wr_wait_n, rxo_rd_wait_p, rxo_rd_wait_n, rxi_cclk_p,
   rxi_cclk_n, emaxi_awid, emaxi_awaddr, emaxi_awlen, emaxi_awsize,
   emaxi_awburst, emaxi_awlock, emaxi_awcache, emaxi_awprot,
   emaxi_awvalid, esaxi_awready, emaxi_wid, emaxi_wdata, emaxi_wstrb,
   emaxi_wlast, emaxi_wvalid, esaxi_wready, emaxi_bready, esaxi_bid,
   esaxi_bresp, esaxi_bvalid, emaxi_arid, emaxi_araddr, emaxi_arlen,
   emaxi_arsize, emaxi_arburst, emaxi_arlock, emaxi_arcache,
   emaxi_arprot, emaxi_arvalid, esaxi_arready, emaxi_rready,
   esaxi_rid, esaxi_rdata, esaxi_rresp, esaxi_rlast, esaxi_rvalid,
   emaxi_awqos, emaxi_arqos,
   // Inputs
   clkin_100, esaxi_aclk, emaxi_aclk, reset, esaxi_aresetn,
   emaxi_aresetn, csysreq, rxi_data_p, rxi_data_n, rxi_frame_p,
   rxi_frame_n, rxi_lclk_p, rxi_lclk_n, txi_wr_wait_p, txi_wr_wait_n,
   txi_rd_wait_p, txi_rd_wait_n, emaxi_awready, esaxi_awid,
   esaxi_awaddr, esaxi_awlen, esaxi_awsize, esaxi_awburst,
   esaxi_awlock, esaxi_awcache, esaxi_awprot, esaxi_awvalid,
   emaxi_wready, esaxi_wid, esaxi_wdata, esaxi_wstrb, esaxi_wlast,
   esaxi_wvalid, emaxi_bid, emaxi_bresp, emaxi_bvalid, esaxi_bready,
   emaxi_arready, esaxi_arid, esaxi_araddr, esaxi_arlen, esaxi_arsize,
   esaxi_arburst, esaxi_arlock, esaxi_arcache, esaxi_arprot,
   esaxi_arvalid, emaxi_rid, emaxi_rdata, emaxi_rresp, emaxi_rlast,
   emaxi_rvalid, esaxi_rready, esaxi_awqos, esaxi_arqos
   );

   parameter SIDW = 12; //ID Width
   parameter SAW  = 32; //Address Bus Width
   parameter SDW  = 32; //Data Bus Width
   parameter MIDW = 6;  //ID Width
   parameter MAW  = 32; //Address Bus Width
   parameter MDW  = 64; //Data Bus Width
   parameter STW = 8;   //Number of strobes
   parameter LW  = 8;
   parameter AW  = 32;  //Address Bus Width
   parameter DW  = 32;  //Data Bus Width
   
   //#########
   //# Inputs
   //#########

   // global signals
   input       clkin_100;      // 100MHz input clock 
   input       esaxi_aclk;     // clock source of the axi bus for slave port
   input       emaxi_aclk;     // clock source of the axi bus for master port
   input       reset;          // system reset
   input       esaxi_aresetn;  // reset of axi bus for slave port
   input       emaxi_aresetn;  // reset of axi bus for master port
   input       csysreq;        // system exit low-power state request 
      
   // LVDS FMC Port
   input [7:0] rxi_data_p;
   input [7:0] rxi_data_n;
   input       rxi_frame_p;
   input       rxi_frame_n;
   input       rxi_lclk_p;
   input       rxi_lclk_n;
   input       txi_wr_wait_p;
   input       txi_wr_wait_n;
   input       txi_rd_wait_p;
   input       txi_rd_wait_n;
   
   //########################
   //# Write address channel
   //########################
   // Master Port
   input            emaxi_awready; //write address ready
   // Slave Port
   input [SIDW-1:0] esaxi_awid;    //write address ID
   input [MAW-1:0]  esaxi_awaddr;  //write address
   input [3:0] 	    esaxi_awlen;   //burst lenght (the number of data transfers)
   input [2:0] 	    esaxi_awsize;  //burst size (the size of each transfer)
   input [1:0] 	    esaxi_awburst; //burst type
   input [1:0] 	    esaxi_awlock;  //lock type (atomic characteristics)
   input [3:0] 	    esaxi_awcache; //memory type
   input [2:0] 	    esaxi_awprot;  //protection type
   input 	    esaxi_awvalid; //write address valid
   
   //########################
   //# Write data channel
   //########################
   // Master Port
   input 	    emaxi_wready;//write ready
   // Slave Port
   input [SIDW-1:0] esaxi_wid;   //write ID tag (supported only in AXI3)
   input [SDW-1:0]  esaxi_wdata; //write data
   input [3:0] 	    esaxi_wstrb; //write strobes
   input 	    esaxi_wlast; //write last. Indicates last transfer in burst
   input 	    esaxi_wvalid;//write valid
   
   //########################
   // Write response channel
   //########################
   // Master Port
   input [MIDW-1:0] emaxi_bid;   //response ID tag
   input [1:0] 	    emaxi_bresp; //write response
   input 	    emaxi_bvalid;//write response valid
   // Slave Port
   input 	    esaxi_bready;//response ready
      
   //########################
   //# Read address channel
   //########################
   // Master Port
   input 	    emaxi_arready;//read address ready
   // Slave Port
   input [SIDW-1:0] esaxi_arid;    //read address ID
   input [MAW-1:0]  esaxi_araddr;  //read address
   input [3:0] 	    esaxi_arlen;   //burst lenght (the number of data transfers)
   input [2:0] 	    esaxi_arsize;  //burst size (the size of each transfer)
   input [1:0] 	    esaxi_arburst; //burst type
   input [1:0] 	    esaxi_arlock;  //lock type (atomic characteristics)
   input [3:0] 	    esaxi_arcache; //memory type
   input [2:0] 	    esaxi_arprot;  //protection type
   input 	    esaxi_arvalid; //write address valid

   //########################
   //# Read data channel
   //########################
   // Master Port
   input [MIDW-1:0] emaxi_rid;   //read ID tag 
   input [MDW-1:0]  emaxi_rdata; //read data
   input [1:0] 	    emaxi_rresp; //read response
   input 	    emaxi_rlast; //read last, indicates last transfer in burst
   input 	    emaxi_rvalid;//read valid
   // Slave Port
   input 	    esaxi_rready; //read ready

   //##########
   //# Outputs
   //##########

   // global signals
   output 	   csysack;//exit low-power state acknowledgement
   output 	   cactive;//clock active
   output 	   reset_chip;
   output 	   reset_fpga;
      
   // LVDS FMC Port
   output [7:0]    txo_data_p;
   output [7:0]    txo_data_n;
   output 	   txo_frame_p;
   output 	   txo_frame_n;
   output 	   txo_lclk_p;
   output 	   txo_lclk_n;
   output 	   rxo_wr_wait_p;
   output 	   rxo_wr_wait_n;
   output 	   rxo_rd_wait_p;
   output 	   rxo_rd_wait_n;

   output      rxi_cclk_p;
   output 	   rxi_cclk_n;

   //########################
   //# Write address channel
   //########################
   // Master Port
   output [MIDW-1:0] emaxi_awid;    //write address ID
   output [MAW-1:0]  emaxi_awaddr;  //write address
   output [3:0]      emaxi_awlen;   //burst length (number of data transfers)
   output [2:0]      emaxi_awsize;  //burst size (the size of each transfer)
   output [1:0]      emaxi_awburst; //burst type
   output [1:0]      emaxi_awlock;  //lock type (atomic characteristics)
   output [3:0]      emaxi_awcache; //memory type
   output [2:0]      emaxi_awprot;  //protection type
   output 	     emaxi_awvalid; //write address valid
   // Slave Port
   output 	     esaxi_awready; //write address ready
      
   //########################
   //# Write data channel
   //########################
   // Master Port
   output [MIDW-1:0] emaxi_wid;   //write ID tag (supported only in AXI3)
   output [MDW-1:0]  emaxi_wdata; //write data
   output [STW-1:0]  emaxi_wstrb; //write strobes
   output 	     emaxi_wlast; //write last, indicates last transfer in burst
   output 	     emaxi_wvalid;//write valid
   // Slave Port
   output 	     esaxi_wready;//write ready
   
   //########################
   // Write response channel
   //########################
   // Master Port
   output 	     emaxi_bready;//response ready
   // Slave Port
   output [SIDW-1:0] esaxi_bid;   //response ID tag
   output [1:0]      esaxi_bresp; //write response
   output 	     esaxi_bvalid;//write response valid
  
   //########################
   //# Read address channel
   //########################
   // Master Port
   output [MIDW-1:0] emaxi_arid;    //read address ID
   output [MAW-1:0]  emaxi_araddr;  //read address
   output [3:0]      emaxi_arlen;   //burst lenght (number of data transfers)
   output [2:0]      emaxi_arsize;  //burst size (the size of each transfer)
   output [1:0]      emaxi_arburst; //burst type
   output [1:0]      emaxi_arlock;  //lock type (atomic characteristics)
   output [3:0]      emaxi_arcache; //memory type
   output [2:0]      emaxi_arprot;  //protection type
   output 	     emaxi_arvalid; //write address valid
   // Slave Port
   output 	     esaxi_arready; //read address ready
      
   //########################
   //# Read data channel
   //########################
   // Master Port
   output 	     emaxi_rready; //read ready
   // Slave Port
   output [SIDW-1:0] esaxi_rid;   //read ID tag (must match arid of transaction)
   output [SDW-1:0]  esaxi_rdata; //read data
   output [1:0]      esaxi_rresp; //read response
   output 	     esaxi_rlast; //read last, indicates last transfer in burst
   output 	     esaxi_rvalid;//read valid

   //#######################################################################
   //# The following features are not supported (AXI4 only)
   //# If un-commented, those signals have to be driven with default values
   //#######################################################################
   // input 	    emaxi_buser;   //user signal 
   // input         emaxi_ruser;   //user signal 
   output [3:0]     emaxi_awqos;   //quality of service default 4'b0000
   // output [3:0]  emaxi_awregion;//region identifier 
   // output 	    emaxi_awuser;  //user signal 
   // output        emaxi_wuser;   //user signal  
   output [3:0]     emaxi_arqos;   //quality of service default 4'b0000
   // output [3:0]  emaxi_arregion;//region identifier 
   // output 	    emaxi_aruser;  //user signal 
   input [3:0] 	    esaxi_awqos;   //Quality of Service default 4'b0000
   // input [3:0]   awregion;      //region identifier  
   // input   	    awuser;        //user signal 
   // input         wuser;         //user signal   
   input [3:0] 	    esaxi_arqos;   //quality of service default 4'b0000
   // input [3:0]   arregion;      //region identifier (AXI4 only)
   // input 	    aruser;        //user signal (AXI4 only)
   // output        buser;         //user signal (AXI4 only)
   // output        ruser;         //user signal (AXI4 only)
   
   /*AUTOINPUT*/
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire                 elink_access_inb;       // From ewrapper_link_top of ewrapper_link_top.v
   wire                 elink_access_outb;      // From axi_elink_if of axi_elink_if.v
   wire                 elink_cclk_enb;         // From axi_elink_if of axi_elink_if.v
   wire [1:0]           elink_clk_div;          // From axi_elink_if of axi_elink_if.v
   wire [3:0]           elink_ctrlmode_inb;     // From ewrapper_link_top of ewrapper_link_top.v
   wire [3:0]           elink_ctrlmode_outb;    // From axi_elink_if of axi_elink_if.v
   wire [31:0]          elink_data_inb;         // From ewrapper_link_top of ewrapper_link_top.v
   wire [31:0]          elink_data_outb;        // From axi_elink_if of axi_elink_if.v
   wire [1:0]           elink_datamode_inb;     // From ewrapper_link_top of ewrapper_link_top.v
   wire [1:0]           elink_datamode_outb;    // From axi_elink_if of axi_elink_if.v
   wire                 elink_disable;          // From axi_elink_if of axi_elink_if.v
   wire [31:0]          elink_dstaddr_outb;     // From axi_elink_if of axi_elink_if.v
   wire                 elink_rd_wait_inb;      // From ewrapper_link_top of ewrapper_link_top.v
   wire                 elink_rd_wait_outb;     // From axi_elink_if of axi_elink_if.v
   wire [31:0]          elink_srcaddr_inb;      // From ewrapper_link_top of ewrapper_link_top.v
   wire [31:0]          elink_srcaddr_outb;     // From axi_elink_if of axi_elink_if.v
   wire                 elink_wr_wait_inb;      // From ewrapper_link_top of ewrapper_link_top.v
   wire                 elink_wr_wait_outb;     // From axi_elink_if of axi_elink_if.v
   wire                 elink_write_inb;        // From ewrapper_link_top of ewrapper_link_top.v
   wire                 elink_write_outb;       // From axi_elink_if of axi_elink_if.v
   wire                 emaxi_access_inb;       // From axi_master of axi_master.v
   wire                 emaxi_access_outb;      // From axi_elink_if of axi_elink_if.v
   wire [3:0]           emaxi_ctrlmode_inb;     // From axi_master of axi_master.v
   wire [3:0]           emaxi_ctrlmode_outb;    // From axi_elink_if of axi_elink_if.v
   wire [31:0]          emaxi_data_inb;         // From axi_master of axi_master.v
   wire [31:0]          emaxi_data_outb;        // From axi_elink_if of axi_elink_if.v
   wire [1:0]           emaxi_datamode_inb;     // From axi_master of axi_master.v
   wire [1:0]           emaxi_datamode_outb;    // From axi_elink_if of axi_elink_if.v
   wire [31:0]          emaxi_dstaddr_inb;      // From axi_master of axi_master.v
   wire [31:0]          emaxi_dstaddr_outb;     // From axi_elink_if of axi_elink_if.v
   wire                 emaxi_rd_wait_inb;      // From axi_master of axi_master.v
   wire [31:0]          emaxi_srcaddr_inb;      // From axi_master of axi_master.v
   wire [31:0]          emaxi_srcaddr_outb;     // From axi_elink_if of axi_elink_if.v
   wire                 emaxi_wr_wait_inb;      // From axi_master of axi_master.v
   wire                 emaxi_wr_wait_outb;     // From axi_elink_if of axi_elink_if.v
   wire                 emaxi_write_inb;        // From axi_master of axi_master.v
   wire                 emaxi_write_outb;       // From axi_elink_if of axi_elink_if.v
   wire                 esaxi_access_inb;       // From axi_slave of axi_slave.v
   wire                 esaxi_access_outb;      // From axi_elink_if of axi_elink_if.v
   wire [3:0]           esaxi_ctrlmode_inb;     // From axi_slave of axi_slave.v
   wire [3:0]           esaxi_ctrlmode_outb;    // From axi_elink_if of axi_elink_if.v
   wire [31:0]          esaxi_data_inb;         // From axi_slave of axi_slave.v
   wire [31:0]          esaxi_data_outb;        // From axi_elink_if of axi_elink_if.v
   wire [1:0]           esaxi_datamode_inb;     // From axi_slave of axi_slave.v
   wire [1:0]           esaxi_datamode_outb;    // From axi_elink_if of axi_elink_if.v
   wire [31:0]          esaxi_dstaddr_inb;      // From axi_slave of axi_slave.v
   wire [31:0]          esaxi_dstaddr_outb;     // From axi_elink_if of axi_elink_if.v
   wire                 esaxi_rd_wait_inb;      // From axi_slave of axi_slave.v
   wire                 esaxi_rd_wait_outb;     // From axi_elink_if of axi_elink_if.v
   wire [31:0]          esaxi_srcaddr_inb;      // From axi_slave of axi_slave.v
   wire [31:0]          esaxi_srcaddr_outb;     // From axi_elink_if of axi_elink_if.v
   wire                 esaxi_wr_wait_inb;      // From axi_slave of axi_slave.v
   wire                 esaxi_wr_wait_outb;     // From axi_elink_if of axi_elink_if.v
   wire                 esaxi_write_inb;        // From axi_slave of axi_slave.v
   wire                 esaxi_write_outb;       // From axi_elink_if of axi_elink_if.v
   // End of automatics

   //#########
   //# Regs
   //#########
   
   //#########
   //# Wires
   //#########
   wire 	    emaxi_reset;
   wire 	    esaxi_reset;
   wire 	    rxi_eclk;
   wire [31:0] 	    elink_dstaddr_inb;
   wire [31:0] 	    elink_dstaddr_tmp;
   wire 	    ext_mem_access;
      
   //#################
   //# global signals
   //#################
   
   assign emaxi_reset = ~emaxi_aresetn;
   assign esaxi_reset = ~esaxi_aresetn;

   //##################################
   //# AXI Slave Port Instantiation
   //##################################

   /*axi_slave AUTO_TEMPLATE(.eclk         (rxi_eclk),
                             .reset        (esaxi_reset),
                             .aclk	   (esaxi_aclk),
                             .aw\(.*\)     (esaxi_aw\1[]),
                             .w\(.*\)      (esaxi_w\1[]),
                             .b\(.*\)      (esaxi_b\1[]),
                             .ar\(.*\)     (esaxi_ar\1[]),
                             .r\(.*\)      (esaxi_r\1[]),
                             .emesh_\(.*\) (esaxi_\1[]),
                            );
    */                                    

   axi_slave axi_slave(/*AUTOINST*/
                       // Outputs
                       .csysack         (csysack),
                       .cactive         (cactive),
                       .awready         (esaxi_awready),         // Templated
                       .wready          (esaxi_wready),          // Templated
                       .bid             (esaxi_bid[SIDW-1:0]),   // Templated
                       .bresp           (esaxi_bresp[1:0]),      // Templated
                       .bvalid          (esaxi_bvalid),          // Templated
                       .arready         (esaxi_arready),         // Templated
                       .rid             (esaxi_rid[SIDW-1:0]),   // Templated
                       .rdata           (esaxi_rdata[SDW-1:0]),  // Templated
                       .rresp           (esaxi_rresp[1:0]),      // Templated
                       .rlast           (esaxi_rlast),           // Templated
                       .rvalid          (esaxi_rvalid),          // Templated
                       .emesh_access_inb(esaxi_access_inb),      // Templated
                       .emesh_write_inb (esaxi_write_inb),       // Templated
                       .emesh_datamode_inb(esaxi_datamode_inb[1:0]), // Templated
                       .emesh_ctrlmode_inb(esaxi_ctrlmode_inb[3:0]), // Templated
                       .emesh_dstaddr_inb(esaxi_dstaddr_inb[31:0]), // Templated
                       .emesh_srcaddr_inb(esaxi_srcaddr_inb[31:0]), // Templated
                       .emesh_data_inb  (esaxi_data_inb[31:0]),  // Templated
                       .emesh_wr_wait_inb(esaxi_wr_wait_inb),    // Templated
                       .emesh_rd_wait_inb(esaxi_rd_wait_inb),    // Templated
                       // Inputs
                       .aclk            (esaxi_aclk),            // Templated
                       .eclk            (rxi_eclk),              // Templated
                       .reset           (esaxi_reset),           // Templated
                       .csysreq         (csysreq),
                       .awid            (esaxi_awid[SIDW-1:0]),  // Templated
                       .awaddr          (esaxi_awaddr[SAW-1:0]), // Templated
                       .awlen           (esaxi_awlen[3:0]),      // Templated
                       .awsize          (esaxi_awsize[2:0]),     // Templated
                       .awburst         (esaxi_awburst[1:0]),    // Templated
                       .awlock          (esaxi_awlock[1:0]),     // Templated
                       .awcache         (esaxi_awcache[3:0]),    // Templated
                       .awprot          (esaxi_awprot[2:0]),     // Templated
                       .awvalid         (esaxi_awvalid),         // Templated
                       .wid             (esaxi_wid[SIDW-1:0]),   // Templated
                       .wdata           (esaxi_wdata[SDW-1:0]),  // Templated
                       .wstrb           (esaxi_wstrb[3:0]),      // Templated
                       .wlast           (esaxi_wlast),           // Templated
                       .wvalid          (esaxi_wvalid),          // Templated
                       .bready          (esaxi_bready),          // Templated
                       .arid            (esaxi_arid[SIDW-1:0]),  // Templated
                       .araddr          (esaxi_araddr[SAW-1:0]), // Templated
                       .arlen           (esaxi_arlen[3:0]),      // Templated
                       .arsize          (esaxi_arsize[2:0]),     // Templated
                       .arburst         (esaxi_arburst[1:0]),    // Templated
                       .arlock          (esaxi_arlock[1:0]),     // Templated
                       .arcache         (esaxi_arcache[3:0]),    // Templated
                       .arprot          (esaxi_arprot[2:0]),     // Templated
                       .arvalid         (esaxi_arvalid),         // Templated
                       .rready          (esaxi_rready),          // Templated
                       .emesh_access_outb(esaxi_access_outb),    // Templated
                       .emesh_write_outb(esaxi_write_outb),      // Templated
                       .emesh_datamode_outb(esaxi_datamode_outb[1:0]), // Templated
                       .emesh_ctrlmode_outb(esaxi_ctrlmode_outb[3:0]), // Templated
                       .emesh_dstaddr_outb(esaxi_dstaddr_outb[31:0]), // Templated
                       .emesh_srcaddr_outb(esaxi_srcaddr_outb[31:0]), // Templated
                       .emesh_data_outb (esaxi_data_outb[31:0]), // Templated
                       .emesh_wr_wait_outb(esaxi_wr_wait_outb),  // Templated
                       .emesh_rd_wait_outb(esaxi_rd_wait_outb),  // Templated
                       .awqos           (esaxi_awqos[3:0]),      // Templated
                       .arqos           (esaxi_arqos[3:0]));      // Templated
   
   //##################################
   //# AXI Master Port Instantiation
   //##################################

   /*axi_master AUTO_TEMPLATE(.eclk         (rxi_eclk),
                              .reset        (emaxi_reset),
                              .aclk	    (emaxi_aclk),
                              .aw\(.*\)     (emaxi_aw\1[]),
                              .w\(.*\)      (emaxi_w\1[]),
                              .b\(.*\)      (emaxi_b\1[]),
                              .ar\(.*\)     (emaxi_ar\1[]),
                              .r\(.*\)      (emaxi_r\1[]),
                              .emesh_\(.*\) (emaxi_\1[]),
                             );
    */                                    

   axi_master axi_master(/*AUTOINST*/
                         // Outputs
                         .awid                  (emaxi_awid[MIDW-1:0]), // Templated
                         .awaddr                (emaxi_awaddr[MAW-1:0]), // Templated
                         .awlen                 (emaxi_awlen[3:0]), // Templated
                         .awsize                (emaxi_awsize[2:0]), // Templated
                         .awburst               (emaxi_awburst[1:0]), // Templated
                         .awlock                (emaxi_awlock[1:0]), // Templated
                         .awcache               (emaxi_awcache[3:0]), // Templated
                         .awprot                (emaxi_awprot[2:0]), // Templated
                         .awvalid               (emaxi_awvalid), // Templated
                         .wid                   (emaxi_wid[MIDW-1:0]), // Templated
                         .wdata                 (emaxi_wdata[MDW-1:0]), // Templated
                         .wstrb                 (emaxi_wstrb[STW-1:0]), // Templated
                         .wlast                 (emaxi_wlast),   // Templated
                         .wvalid                (emaxi_wvalid),  // Templated
                         .bready                (emaxi_bready),  // Templated
                         .arid                  (emaxi_arid[MIDW-1:0]), // Templated
                         .araddr                (emaxi_araddr[MAW-1:0]), // Templated
                         .arlen                 (emaxi_arlen[3:0]), // Templated
                         .arsize                (emaxi_arsize[2:0]), // Templated
                         .arburst               (emaxi_arburst[1:0]), // Templated
                         .arlock                (emaxi_arlock[1:0]), // Templated
                         .arcache               (emaxi_arcache[3:0]), // Templated
                         .arprot                (emaxi_arprot[2:0]), // Templated
                         .arvalid               (emaxi_arvalid), // Templated
                         .rready                (emaxi_rready),  // Templated
                         .emesh_access_inb      (emaxi_access_inb), // Templated
                         .emesh_write_inb       (emaxi_write_inb), // Templated
                         .emesh_datamode_inb    (emaxi_datamode_inb[1:0]), // Templated
                         .emesh_ctrlmode_inb    (emaxi_ctrlmode_inb[3:0]), // Templated
                         .emesh_dstaddr_inb     (emaxi_dstaddr_inb[31:0]), // Templated
                         .emesh_srcaddr_inb     (emaxi_srcaddr_inb[31:0]), // Templated
                         .emesh_data_inb        (emaxi_data_inb[31:0]), // Templated
                         .emesh_wr_wait_inb     (emaxi_wr_wait_inb), // Templated
                         .emesh_rd_wait_inb     (emaxi_rd_wait_inb), // Templated
                         .awqos                 (emaxi_awqos[3:0]), // Templated
                         .arqos                 (emaxi_arqos[3:0]), // Templated
                         // Inputs
                         .aclk                  (emaxi_aclk),    // Templated
                         .eclk                  (rxi_eclk),      // Templated
                         .reset                 (emaxi_reset),   // Templated
                         .awready               (emaxi_awready), // Templated
                         .wready                (emaxi_wready),  // Templated
                         .bid                   (emaxi_bid[MIDW-1:0]), // Templated
                         .bresp                 (emaxi_bresp[1:0]), // Templated
                         .bvalid                (emaxi_bvalid),  // Templated
                         .arready               (emaxi_arready), // Templated
                         .rid                   (emaxi_rid[MIDW-1:0]), // Templated
                         .rdata                 (emaxi_rdata[MDW-1:0]), // Templated
                         .rresp                 (emaxi_rresp[1:0]), // Templated
                         .rlast                 (emaxi_rlast),   // Templated
                         .rvalid                (emaxi_rvalid),  // Templated
                         .emesh_access_outb     (emaxi_access_outb), // Templated
                         .emesh_write_outb      (emaxi_write_outb), // Templated
                         .emesh_datamode_outb   (emaxi_datamode_outb[1:0]), // Templated
                         .emesh_ctrlmode_outb   (emaxi_ctrlmode_outb[3:0]), // Templated
                         .emesh_dstaddr_outb    (emaxi_dstaddr_outb[31:0]), // Templated
                         .emesh_srcaddr_outb    (emaxi_srcaddr_outb[31:0]), // Templated
                         .emesh_data_outb       (emaxi_data_outb[31:0]), // Templated
                         .emesh_wr_wait_outb    (emaxi_wr_wait_outb)); // Templated

   //#####################################
   //# ELINK (CHIP Port) Instantiation
   //#####################################
   
   //# "manual remapping" of external memory address seen by the chips
   assign ext_mem_access = (elink_dstaddr_tmp[31:28] == `VIRT_EXT_MEM) &
			  ~(elink_dstaddr_tmp[31:20] == `AXI_COORD);
   
   assign elink_dstaddr_inb[31:28] = ext_mem_access ? `PHYS_EXT_MEM :
			                              elink_dstaddr_tmp[31:28];

   assign elink_dstaddr_inb[27:0] = elink_dstaddr_tmp[27:0];
      
   /*ewrapper_link_top AUTO_TEMPLATE(.emesh_clk_inb (rxi_eclk),
                                     .burst_en      (1'b1),
                                     .emesh_dstaddr_inb(elink_dstaddr_tmp[31:0]),
                                     .emesh_\(.*\)  (elink_\1[]),
                                    );
    */                                    

   ewrapper_link_top ewrapper_link_top
     (/*AUTOINST*/
      // Outputs
      .emesh_clk_inb                    (rxi_eclk),              // Templated
      .emesh_access_inb                 (elink_access_inb),      // Templated
      .emesh_write_inb                  (elink_write_inb),       // Templated
      .emesh_datamode_inb               (elink_datamode_inb[1:0]), // Templated
      .emesh_ctrlmode_inb               (elink_ctrlmode_inb[3:0]), // Templated
      .emesh_dstaddr_inb                (elink_dstaddr_tmp[31:0]), // Templated
      .emesh_srcaddr_inb                (elink_srcaddr_inb[31:0]), // Templated
      .emesh_data_inb                   (elink_data_inb[31:0]),  // Templated
      .emesh_wr_wait_inb                (elink_wr_wait_inb),     // Templated
      .emesh_rd_wait_inb                (elink_rd_wait_inb),     // Templated
      .txo_data_p                       (txo_data_p[7:0]),
      .txo_data_n                       (txo_data_n[7:0]),
      .txo_frame_p                      (txo_frame_p),
      .txo_frame_n                      (txo_frame_n),
      .txo_lclk_p                       (txo_lclk_p),
      .txo_lclk_n                       (txo_lclk_n),
      .rxo_wr_wait_p                    (rxo_wr_wait_p),
      .rxo_wr_wait_n                    (rxo_wr_wait_n),
      .rxo_rd_wait_p                    (rxo_rd_wait_p),
      .rxo_rd_wait_n                    (rxo_rd_wait_n),
      .rxi_cclk_p                       (rxi_cclk_p),
      .rxi_cclk_n                       (rxi_cclk_n),
      // Inputs
      .reset                            (reset),
      .clkin_100                        (clkin_100),
      .elink_disable                    (elink_disable),
      .elink_cclk_enb                   (elink_cclk_enb),
      .elink_clk_div                    (elink_clk_div[1:0]),
      .emesh_access_outb                (elink_access_outb),     // Templated
      .emesh_write_outb                 (elink_write_outb),      // Templated
      .emesh_datamode_outb              (elink_datamode_outb[1:0]), // Templated
      .emesh_ctrlmode_outb              (elink_ctrlmode_outb[3:0]), // Templated
      .emesh_dstaddr_outb               (elink_dstaddr_outb[31:0]), // Templated
      .emesh_srcaddr_outb               (elink_srcaddr_outb[31:0]), // Templated
      .emesh_data_outb                  (elink_data_outb[31:0]), // Templated
      .emesh_wr_wait_outb               (elink_wr_wait_outb),    // Templated
      .emesh_rd_wait_outb               (elink_rd_wait_outb),    // Templated
      .rxi_data_p                       (rxi_data_p[7:0]),
      .rxi_data_n                       (rxi_data_n[7:0]),
      .rxi_frame_p                      (rxi_frame_p),
      .rxi_frame_n                      (rxi_frame_n),
      .rxi_lclk_p                       (rxi_lclk_p),
      .rxi_lclk_n                       (rxi_lclk_n),
      .txi_wr_wait_p                    (txi_wr_wait_p),
      .txi_wr_wait_n                    (txi_wr_wait_n),
      .txi_rd_wait_p                    (txi_rd_wait_p),
      .txi_rd_wait_n                    (txi_rd_wait_n),
      .burst_en                         (1'b1));                  // Templated
   
   //####################################
   //# AXI-ELINK Interface Instantiation
   //####################################

   /*axi_elink_if AUTO_TEMPLATE(.eclk (rxi_eclk),
                                .aclk (esaxi_aclk),
                               );
    */

   axi_elink_if axi_elink_if
     (/*AUTOINST*/
      // Outputs
      .reset_chip                       (reset_chip),
      .reset_fpga                       (reset_fpga),
      .emaxi_access_outb                (emaxi_access_outb),
      .emaxi_write_outb                 (emaxi_write_outb),
      .emaxi_datamode_outb              (emaxi_datamode_outb[1:0]),
      .emaxi_ctrlmode_outb              (emaxi_ctrlmode_outb[3:0]),
      .emaxi_dstaddr_outb               (emaxi_dstaddr_outb[31:0]),
      .emaxi_srcaddr_outb               (emaxi_srcaddr_outb[31:0]),
      .emaxi_data_outb                  (emaxi_data_outb[31:0]),
      .emaxi_wr_wait_outb               (emaxi_wr_wait_outb),
      .esaxi_access_outb                (esaxi_access_outb),
      .esaxi_write_outb                 (esaxi_write_outb),
      .esaxi_datamode_outb              (esaxi_datamode_outb[1:0]),
      .esaxi_ctrlmode_outb              (esaxi_ctrlmode_outb[3:0]),
      .esaxi_dstaddr_outb               (esaxi_dstaddr_outb[31:0]),
      .esaxi_srcaddr_outb               (esaxi_srcaddr_outb[31:0]),
      .esaxi_data_outb                  (esaxi_data_outb[31:0]),
      .esaxi_wr_wait_outb               (esaxi_wr_wait_outb),
      .esaxi_rd_wait_outb               (esaxi_rd_wait_outb),
      .elink_access_outb                (elink_access_outb),
      .elink_write_outb                 (elink_write_outb),
      .elink_datamode_outb              (elink_datamode_outb[1:0]),
      .elink_ctrlmode_outb              (elink_ctrlmode_outb[3:0]),
      .elink_dstaddr_outb               (elink_dstaddr_outb[31:0]),
      .elink_srcaddr_outb               (elink_srcaddr_outb[31:0]),
      .elink_data_outb                  (elink_data_outb[31:0]),
      .elink_wr_wait_outb               (elink_wr_wait_outb),
      .elink_rd_wait_outb               (elink_rd_wait_outb),
      .elink_disable                    (elink_disable),
      .elink_cclk_enb                   (elink_cclk_enb),
      .elink_clk_div                    (elink_clk_div[1:0]),
      // Inputs
      .eclk                             (rxi_eclk),              // Templated
      .aclk                             (esaxi_aclk),            // Templated
      .reset                            (reset),
      .emaxi_access_inb                 (emaxi_access_inb),
      .emaxi_write_inb                  (emaxi_write_inb),
      .emaxi_datamode_inb               (emaxi_datamode_inb[1:0]),
      .emaxi_ctrlmode_inb               (emaxi_ctrlmode_inb[3:0]),
      .emaxi_dstaddr_inb                (emaxi_dstaddr_inb[31:0]),
      .emaxi_srcaddr_inb                (emaxi_srcaddr_inb[31:0]),
      .emaxi_data_inb                   (emaxi_data_inb[31:0]),
      .emaxi_wr_wait_inb                (emaxi_wr_wait_inb),
      .emaxi_rd_wait_inb                (emaxi_rd_wait_inb),
      .esaxi_access_inb                 (esaxi_access_inb),
      .esaxi_write_inb                  (esaxi_write_inb),
      .esaxi_datamode_inb               (esaxi_datamode_inb[1:0]),
      .esaxi_ctrlmode_inb               (esaxi_ctrlmode_inb[3:0]),
      .esaxi_dstaddr_inb                (esaxi_dstaddr_inb[31:0]),
      .esaxi_srcaddr_inb                (esaxi_srcaddr_inb[31:0]),
      .esaxi_data_inb                   (esaxi_data_inb[31:0]),
      .esaxi_wr_wait_inb                (esaxi_wr_wait_inb),
      .esaxi_rd_wait_inb                (esaxi_rd_wait_inb),
      .elink_access_inb                 (elink_access_inb),
      .elink_write_inb                  (elink_write_inb),
      .elink_datamode_inb               (elink_datamode_inb[1:0]),
      .elink_ctrlmode_inb               (elink_ctrlmode_inb[3:0]),
      .elink_dstaddr_inb                (elink_dstaddr_inb[31:0]),
      .elink_srcaddr_inb                (elink_srcaddr_inb[31:0]),
      .elink_data_inb                   (elink_data_inb[31:0]),
      .elink_wr_wait_inb                (elink_wr_wait_inb),
      .elink_rd_wait_inb                (elink_rd_wait_inb));
   
endmodule // parallella

    // Local Variables:
    // verilog-library-directories:("." "../elink" "../axi")
    // End:
