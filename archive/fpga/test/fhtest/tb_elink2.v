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

module tb_elink2 ();

   //Parallella Master parameters (connect to test slave)
   parameter MIDW  = 6;  //ID Width
   parameter MAW   = 32; //Address Bus Width
   parameter MDW   = 64; //Data Bus Width
   parameter MSTW  = 8;  //Number of strobes

   //Parallella Slave parameters (connect to test master)
   parameter SIDW  = 12; //ID Width
   parameter SAW   = 32; //Address Bus Width
   parameter SDW   = 32; //Data Bus Width
   parameter SSTW  = 8; //Number of strobes

   parameter CLOCKPERIOD = 10;

   reg clock;
   reg resetn;
   wire reset = ~resetn;
   
   initial begin
      clock <= 1'b0;
      resetn <= 1'b0;
      #50 resetn <= 1'b1;
   end

   always
     #(CLOCKPERIOD/2.0) clock <= ~clock;

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire [3:0]           DONE;                   // From maxi_gold of maxi_test.v, ...
   wire [3:0]           ERROR;                  // From maxi_gold of maxi_test.v, ...
   wire                 d2g_cclk_n;             // From golden of parallella.v
   wire                 d2g_cclk_p;             // From golden of parallella.v
   wire [7:0]           d2g_data_n;             // From dut of parallella.v
   wire [7:0]           d2g_data_p;             // From dut of parallella.v
   wire                 d2g_frame_n;            // From dut of parallella.v
   wire                 d2g_frame_p;            // From dut of parallella.v
   wire                 d2g_lclk_n;             // From dut of parallella.v
   wire                 d2g_lclk_p;             // From dut of parallella.v
   wire                 d2g_rd_wait_n;          // From golden of parallella.v
   wire                 d2g_rd_wait_p;          // From golden of parallella.v
   wire                 d2g_wr_wait_n;          // From golden of parallella.v
   wire                 d2g_wr_wait_p;          // From golden of parallella.v
   wire [MAW-1:0]       dut_emaxi_araddr;       // From dut of parallella.v
   wire [1:0]           dut_emaxi_arburst;      // From dut of parallella.v
   wire [3:0]           dut_emaxi_arcache;      // From dut of parallella.v
   wire [MIDW-1:0]      dut_emaxi_arid;         // From dut of parallella.v
   wire [3:0]           dut_emaxi_arlen;        // From dut of parallella.v
   wire [1:0]           dut_emaxi_arlock;       // From dut of parallella.v
   wire [2:0]           dut_emaxi_arprot;       // From dut of parallella.v
   wire [3:0]           dut_emaxi_arqos;        // From dut of parallella.v
   wire                 dut_emaxi_arready;      // From saxi_dut of saxi_test.v
   wire [2:0]           dut_emaxi_arsize;       // From dut of parallella.v
   wire                 dut_emaxi_arvalid;      // From dut of parallella.v
   wire [MAW-1:0]       dut_emaxi_awaddr;       // From dut of parallella.v
   wire [1:0]           dut_emaxi_awburst;      // From dut of parallella.v
   wire [3:0]           dut_emaxi_awcache;      // From dut of parallella.v
   wire [MIDW-1:0]      dut_emaxi_awid;         // From dut of parallella.v
   wire [3:0]           dut_emaxi_awlen;        // From dut of parallella.v
   wire [1:0]           dut_emaxi_awlock;       // From dut of parallella.v
   wire [2:0]           dut_emaxi_awprot;       // From dut of parallella.v
   wire [3:0]           dut_emaxi_awqos;        // From dut of parallella.v
   wire                 dut_emaxi_awready;      // From saxi_dut of saxi_test.v
   wire [2:0]           dut_emaxi_awsize;       // From dut of parallella.v
   wire                 dut_emaxi_awvalid;      // From dut of parallella.v
   wire [MIDW-1:0]      dut_emaxi_bid;          // From saxi_dut of saxi_test.v
   wire                 dut_emaxi_bready;       // From dut of parallella.v
   wire [1:0]           dut_emaxi_bresp;        // From saxi_dut of saxi_test.v
   wire                 dut_emaxi_bvalid;       // From saxi_dut of saxi_test.v
   wire [MDW-1:0]       dut_emaxi_rdata;        // From saxi_dut of saxi_test.v
   wire [MIDW-1:0]      dut_emaxi_rid;          // From saxi_dut of saxi_test.v
   wire                 dut_emaxi_rlast;        // From saxi_dut of saxi_test.v
   wire                 dut_emaxi_rready;       // From dut of parallella.v
   wire [1:0]           dut_emaxi_rresp;        // From saxi_dut of saxi_test.v
   wire                 dut_emaxi_rvalid;       // From saxi_dut of saxi_test.v
   wire [MDW-1:0]       dut_emaxi_wdata;        // From dut of parallella.v
   wire [MIDW-1:0]      dut_emaxi_wid;          // From dut of parallella.v
   wire                 dut_emaxi_wlast;        // From dut of parallella.v
   wire                 dut_emaxi_wready;       // From saxi_dut of saxi_test.v
   wire [MSTW-1:0]      dut_emaxi_wstrb;        // From dut of parallella.v
   wire                 dut_emaxi_wvalid;       // From dut of parallella.v
   wire [SAW-1:0]       dut_esaxi_araddr;       // From maxi_dut of maxi_test.v
   wire [1:0]           dut_esaxi_arburst;      // From maxi_dut of maxi_test.v
   wire [3:0]           dut_esaxi_arcache;      // From maxi_dut of maxi_test.v
   wire [SIDW-1:0]      dut_esaxi_arid;         // From maxi_dut of maxi_test.v
   wire [3:0]           dut_esaxi_arlen;        // From maxi_dut of maxi_test.v
   wire [1:0]           dut_esaxi_arlock;       // From maxi_dut of maxi_test.v
   wire [2:0]           dut_esaxi_arprot;       // From maxi_dut of maxi_test.v
   wire [3:0]           dut_esaxi_arqos;        // From maxi_dut of maxi_test.v
   wire                 dut_esaxi_arready;      // From dut of parallella.v
   wire [2:0]           dut_esaxi_arsize;       // From maxi_dut of maxi_test.v
   wire                 dut_esaxi_arvalid;      // From maxi_dut of maxi_test.v
   wire [SAW-1:0]       dut_esaxi_awaddr;       // From maxi_dut of maxi_test.v
   wire [1:0]           dut_esaxi_awburst;      // From maxi_dut of maxi_test.v
   wire [3:0]           dut_esaxi_awcache;      // From maxi_dut of maxi_test.v
   wire [SIDW-1:0]      dut_esaxi_awid;         // From maxi_dut of maxi_test.v
   wire [3:0]           dut_esaxi_awlen;        // From maxi_dut of maxi_test.v
   wire [1:0]           dut_esaxi_awlock;       // From maxi_dut of maxi_test.v
   wire [2:0]           dut_esaxi_awprot;       // From maxi_dut of maxi_test.v
   wire [3:0]           dut_esaxi_awqos;        // From maxi_dut of maxi_test.v
   wire                 dut_esaxi_awready;      // From dut of parallella.v
   wire [2:0]           dut_esaxi_awsize;       // From maxi_dut of maxi_test.v
   wire                 dut_esaxi_awvalid;      // From maxi_dut of maxi_test.v
   wire [SIDW-1:0]      dut_esaxi_bid;          // From dut of parallella.v
   wire                 dut_esaxi_bready;       // From maxi_dut of maxi_test.v
   wire [1:0]           dut_esaxi_bresp;        // From dut of parallella.v
   wire                 dut_esaxi_bvalid;       // From dut of parallella.v
   wire [SDW-1:0]       dut_esaxi_rdata;        // From dut of parallella.v
   wire [SIDW-1:0]      dut_esaxi_rid;          // From dut of parallella.v
   wire                 dut_esaxi_rlast;        // From dut of parallella.v
   wire                 dut_esaxi_rready;       // From maxi_dut of maxi_test.v
   wire [1:0]           dut_esaxi_rresp;        // From dut of parallella.v
   wire                 dut_esaxi_rvalid;       // From dut of parallella.v
   wire [SDW-1:0]       dut_esaxi_wdata;        // From maxi_dut of maxi_test.v
   wire [SIDW-1:0]      dut_esaxi_wid;          // From maxi_dut of maxi_test.v
   wire                 dut_esaxi_wlast;        // From maxi_dut of maxi_test.v
   wire                 dut_esaxi_wready;       // From dut of parallella.v
   wire [SSTW-1:0]      dut_esaxi_wstrb;        // From maxi_dut of maxi_test.v
   wire                 dut_esaxi_wvalid;       // From maxi_dut of maxi_test.v
   wire                 g2d_cclk_n;             // From dut of parallella.v
   wire                 g2d_cclk_p;             // From dut of parallella.v
   wire [7:0]           g2d_data_n;             // From golden of parallella.v
   wire [7:0]           g2d_data_p;             // From golden of parallella.v
   wire                 g2d_frame_n;            // From golden of parallella.v
   wire                 g2d_frame_p;            // From golden of parallella.v
   wire                 g2d_lclk_n;             // From golden of parallella.v
   wire                 g2d_lclk_p;             // From golden of parallella.v
   wire                 g2d_rd_wait_n;          // From dut of parallella.v
   wire                 g2d_rd_wait_p;          // From dut of parallella.v
   wire                 g2d_wr_wait_n;          // From dut of parallella.v
   wire                 g2d_wr_wait_p;          // From dut of parallella.v
   wire [MAW-1:0]       gold_emaxi_araddr;      // From golden of parallella.v
   wire [1:0]           gold_emaxi_arburst;     // From golden of parallella.v
   wire [3:0]           gold_emaxi_arcache;     // From golden of parallella.v
   wire [MIDW-1:0]      gold_emaxi_arid;        // From golden of parallella.v
   wire [3:0]           gold_emaxi_arlen;       // From golden of parallella.v
   wire [1:0]           gold_emaxi_arlock;      // From golden of parallella.v
   wire [2:0]           gold_emaxi_arprot;      // From golden of parallella.v
   wire [3:0]           gold_emaxi_arqos;       // From golden of parallella.v
   wire                 gold_emaxi_arready;     // From saxi_gold of saxi_test.v
   wire [2:0]           gold_emaxi_arsize;      // From golden of parallella.v
   wire                 gold_emaxi_arvalid;     // From golden of parallella.v
   wire [MAW-1:0]       gold_emaxi_awaddr;      // From golden of parallella.v
   wire [1:0]           gold_emaxi_awburst;     // From golden of parallella.v
   wire [3:0]           gold_emaxi_awcache;     // From golden of parallella.v
   wire [MIDW-1:0]      gold_emaxi_awid;        // From golden of parallella.v
   wire [3:0]           gold_emaxi_awlen;       // From golden of parallella.v
   wire [1:0]           gold_emaxi_awlock;      // From golden of parallella.v
   wire [2:0]           gold_emaxi_awprot;      // From golden of parallella.v
   wire [3:0]           gold_emaxi_awqos;       // From golden of parallella.v
   wire                 gold_emaxi_awready;     // From saxi_gold of saxi_test.v
   wire [2:0]           gold_emaxi_awsize;      // From golden of parallella.v
   wire                 gold_emaxi_awvalid;     // From golden of parallella.v
   wire [MIDW-1:0]      gold_emaxi_bid;         // From saxi_gold of saxi_test.v
   wire                 gold_emaxi_bready;      // From golden of parallella.v
   wire [1:0]           gold_emaxi_bresp;       // From saxi_gold of saxi_test.v
   wire                 gold_emaxi_bvalid;      // From saxi_gold of saxi_test.v
   wire [MDW-1:0]       gold_emaxi_rdata;       // From saxi_gold of saxi_test.v
   wire [MIDW-1:0]      gold_emaxi_rid;         // From saxi_gold of saxi_test.v
   wire                 gold_emaxi_rlast;       // From saxi_gold of saxi_test.v
   wire                 gold_emaxi_rready;      // From golden of parallella.v
   wire [1:0]           gold_emaxi_rresp;       // From saxi_gold of saxi_test.v
   wire                 gold_emaxi_rvalid;      // From saxi_gold of saxi_test.v
   wire [MDW-1:0]       gold_emaxi_wdata;       // From golden of parallella.v
   wire [MIDW-1:0]      gold_emaxi_wid;         // From golden of parallella.v
   wire                 gold_emaxi_wlast;       // From golden of parallella.v
   wire                 gold_emaxi_wready;      // From saxi_gold of saxi_test.v
   wire [MSTW-1:0]      gold_emaxi_wstrb;       // From golden of parallella.v
   wire                 gold_emaxi_wvalid;      // From golden of parallella.v
   wire [SAW-1:0]       gold_esaxi_araddr;      // From maxi_gold of maxi_test.v
   wire [1:0]           gold_esaxi_arburst;     // From maxi_gold of maxi_test.v
   wire [3:0]           gold_esaxi_arcache;     // From maxi_gold of maxi_test.v
   wire [SIDW-1:0]      gold_esaxi_arid;        // From maxi_gold of maxi_test.v
   wire [3:0]           gold_esaxi_arlen;       // From maxi_gold of maxi_test.v
   wire [1:0]           gold_esaxi_arlock;      // From maxi_gold of maxi_test.v
   wire [2:0]           gold_esaxi_arprot;      // From maxi_gold of maxi_test.v
   wire [3:0]           gold_esaxi_arqos;       // From maxi_gold of maxi_test.v
   wire                 gold_esaxi_arready;     // From golden of parallella.v
   wire [2:0]           gold_esaxi_arsize;      // From maxi_gold of maxi_test.v
   wire                 gold_esaxi_arvalid;     // From maxi_gold of maxi_test.v
   wire [SAW-1:0]       gold_esaxi_awaddr;      // From maxi_gold of maxi_test.v
   wire [1:0]           gold_esaxi_awburst;     // From maxi_gold of maxi_test.v
   wire [3:0]           gold_esaxi_awcache;     // From maxi_gold of maxi_test.v
   wire [SIDW-1:0]      gold_esaxi_awid;        // From maxi_gold of maxi_test.v
   wire [3:0]           gold_esaxi_awlen;       // From maxi_gold of maxi_test.v
   wire [1:0]           gold_esaxi_awlock;      // From maxi_gold of maxi_test.v
   wire [2:0]           gold_esaxi_awprot;      // From maxi_gold of maxi_test.v
   wire [3:0]           gold_esaxi_awqos;       // From maxi_gold of maxi_test.v
   wire                 gold_esaxi_awready;     // From golden of parallella.v
   wire [2:0]           gold_esaxi_awsize;      // From maxi_gold of maxi_test.v
   wire                 gold_esaxi_awvalid;     // From maxi_gold of maxi_test.v
   wire [SIDW-1:0]      gold_esaxi_bid;         // From golden of parallella.v
   wire                 gold_esaxi_bready;      // From maxi_gold of maxi_test.v
   wire [1:0]           gold_esaxi_bresp;       // From golden of parallella.v
   wire                 gold_esaxi_bvalid;      // From golden of parallella.v
   wire [SDW-1:0]       gold_esaxi_rdata;       // From golden of parallella.v
   wire [SIDW-1:0]      gold_esaxi_rid;         // From golden of parallella.v
   wire                 gold_esaxi_rlast;       // From golden of parallella.v
   wire                 gold_esaxi_rready;      // From maxi_gold of maxi_test.v
   wire [1:0]           gold_esaxi_rresp;       // From golden of parallella.v
   wire                 gold_esaxi_rvalid;      // From golden of parallella.v
   wire [SDW-1:0]       gold_esaxi_wdata;       // From maxi_gold of maxi_test.v
   wire [SIDW-1:0]      gold_esaxi_wid;         // From maxi_gold of maxi_test.v
   wire                 gold_esaxi_wlast;       // From maxi_gold of maxi_test.v
   wire                 gold_esaxi_wready;      // From golden of parallella.v
   wire [SSTW-1:0]      gold_esaxi_wstrb;       // From maxi_gold of maxi_test.v
   wire                 gold_esaxi_wvalid;      // From maxi_gold of maxi_test.v
   // End of automatics

   /* maxi_test AUTO_TEMPLATE(
    .ERROR        (ERROR[0]),
    .DONE         (DONE[0]),
    ..*_aclk      (clock),
    ..*_aresetn   (resetn),
    .m_axi\(.*\)  (gold_esaxi\1[]),
    ); */

   maxi_test
     #(/*AUTOINSTPARAM*/
       // Parameters
       .SIDW                            (SIDW),
       .SAW                             (SAW),
       .SDW                             (SDW),
       .SSTW                            (SSTW))
   maxi_gold
     (/*AUTOINST*/
      // Outputs
      .ERROR                            (ERROR[0]),              // Templated
      .DONE                             (DONE[0]),               // Templated
      .m_axi_awid                       (gold_esaxi_awid[SIDW-1:0]), // Templated
      .m_axi_awaddr                     (gold_esaxi_awaddr[SAW-1:0]), // Templated
      .m_axi_awlen                      (gold_esaxi_awlen[3:0]), // Templated
      .m_axi_awsize                     (gold_esaxi_awsize[2:0]), // Templated
      .m_axi_awburst                    (gold_esaxi_awburst[1:0]), // Templated
      .m_axi_awlock                     (gold_esaxi_awlock[1:0]), // Templated
      .m_axi_awcache                    (gold_esaxi_awcache[3:0]), // Templated
      .m_axi_awprot                     (gold_esaxi_awprot[2:0]), // Templated
      .m_axi_awvalid                    (gold_esaxi_awvalid),    // Templated
      .m_axi_awqos                      (gold_esaxi_awqos[3:0]), // Templated
      .m_axi_wid                        (gold_esaxi_wid[SIDW-1:0]), // Templated
      .m_axi_wdata                      (gold_esaxi_wdata[SDW-1:0]), // Templated
      .m_axi_wstrb                      (gold_esaxi_wstrb[SSTW-1:0]), // Templated
      .m_axi_wlast                      (gold_esaxi_wlast),      // Templated
      .m_axi_wvalid                     (gold_esaxi_wvalid),     // Templated
      .m_axi_bready                     (gold_esaxi_bready),     // Templated
      .m_axi_arid                       (gold_esaxi_arid[SIDW-1:0]), // Templated
      .m_axi_araddr                     (gold_esaxi_araddr[SAW-1:0]), // Templated
      .m_axi_arlen                      (gold_esaxi_arlen[3:0]), // Templated
      .m_axi_arsize                     (gold_esaxi_arsize[2:0]), // Templated
      .m_axi_arburst                    (gold_esaxi_arburst[1:0]), // Templated
      .m_axi_arlock                     (gold_esaxi_arlock[1:0]), // Templated
      .m_axi_arcache                    (gold_esaxi_arcache[3:0]), // Templated
      .m_axi_arprot                     (gold_esaxi_arprot[2:0]), // Templated
      .m_axi_arvalid                    (gold_esaxi_arvalid),    // Templated
      .m_axi_arqos                      (gold_esaxi_arqos[3:0]), // Templated
      .m_axi_rready                     (gold_esaxi_rready),     // Templated
      // Inputs
      .m_axi_aclk                       (clock),                 // Templated
      .m_axi_aresetn                    (resetn),                // Templated
      .m_axi_awready                    (gold_esaxi_awready),    // Templated
      .m_axi_wready                     (gold_esaxi_wready),     // Templated
      .m_axi_bid                        (gold_esaxi_bid[SIDW-1:0]), // Templated
      .m_axi_bresp                      (gold_esaxi_bresp[1:0]), // Templated
      .m_axi_bvalid                     (gold_esaxi_bvalid),     // Templated
      .m_axi_arready                    (gold_esaxi_arready),    // Templated
      .m_axi_rid                        (gold_esaxi_rid[SIDW-1:0]), // Templated
      .m_axi_rdata                      (gold_esaxi_rdata[SDW-1:0]), // Templated
      .m_axi_rresp                      (gold_esaxi_rresp[1:0]), // Templated
      .m_axi_rlast                      (gold_esaxi_rlast),      // Templated
      .m_axi_rvalid                     (gold_esaxi_rvalid));     // Templated

   /* saxi_test AUTO_TEMPLATE(
    .ERROR        (ERROR[1]),
    .DONE         (DONE[1]),
    ..*_aclk      (clock),
    ..*_aresetn   (resetn),
    .s_axi\(.*\)  (gold_emaxi\1[]),
    ); */

   saxi_test
     #(/*AUTOINSTPARAM*/
       // Parameters
       .MIDW                            (MIDW),
       .MAW                             (MAW),
       .MDW                             (MDW),
       .MSTW                            (MSTW))
   saxi_gold
     (/*AUTOINST*/
      // Outputs
      .ERROR                            (ERROR[1]),              // Templated
      .DONE                             (DONE[1]),               // Templated
      .s_axi_awready                    (gold_emaxi_awready),    // Templated
      .s_axi_wready                     (gold_emaxi_wready),     // Templated
      .s_axi_bid                        (gold_emaxi_bid[MIDW-1:0]), // Templated
      .s_axi_bresp                      (gold_emaxi_bresp[1:0]), // Templated
      .s_axi_bvalid                     (gold_emaxi_bvalid),     // Templated
      .s_axi_arready                    (gold_emaxi_arready),    // Templated
      .s_axi_rid                        (gold_emaxi_rid[MIDW-1:0]), // Templated
      .s_axi_rdata                      (gold_emaxi_rdata[MDW-1:0]), // Templated
      .s_axi_rresp                      (gold_emaxi_rresp[1:0]), // Templated
      .s_axi_rlast                      (gold_emaxi_rlast),      // Templated
      .s_axi_rvalid                     (gold_emaxi_rvalid),     // Templated
      // Inputs
      .s_axi_aclk                       (clock),                 // Templated
      .s_axi_aresetn                    (resetn),                // Templated
      .s_axi_awid                       (gold_emaxi_awid[MIDW-1:0]), // Templated
      .s_axi_awaddr                     (gold_emaxi_awaddr[MAW-1:0]), // Templated
      .s_axi_awlen                      (gold_emaxi_awlen[3:0]), // Templated
      .s_axi_awsize                     (gold_emaxi_awsize[2:0]), // Templated
      .s_axi_awburst                    (gold_emaxi_awburst[1:0]), // Templated
      .s_axi_awlock                     (gold_emaxi_awlock[1:0]), // Templated
      .s_axi_awcache                    (gold_emaxi_awcache[3:0]), // Templated
      .s_axi_awprot                     (gold_emaxi_awprot[2:0]), // Templated
      .s_axi_awvalid                    (gold_emaxi_awvalid),    // Templated
      .s_axi_awqos                      (gold_emaxi_awqos[3:0]), // Templated
      .s_axi_wid                        (gold_emaxi_wid[MIDW-1:0]), // Templated
      .s_axi_wdata                      (gold_emaxi_wdata[MDW-1:0]), // Templated
      .s_axi_wstrb                      (gold_emaxi_wstrb[MSTW-1:0]), // Templated
      .s_axi_wlast                      (gold_emaxi_wlast),      // Templated
      .s_axi_wvalid                     (gold_emaxi_wvalid),     // Templated
      .s_axi_bready                     (gold_emaxi_bready),     // Templated
      .s_axi_arid                       (gold_emaxi_arid[MIDW-1:0]), // Templated
      .s_axi_araddr                     (gold_emaxi_araddr[MAW-1:0]), // Templated
      .s_axi_arlen                      (gold_emaxi_arlen[3:0]), // Templated
      .s_axi_arsize                     (gold_emaxi_arsize[2:0]), // Templated
      .s_axi_arburst                    (gold_emaxi_arburst[1:0]), // Templated
      .s_axi_arlock                     (gold_emaxi_arlock[1:0]), // Templated
      .s_axi_arcache                    (gold_emaxi_arcache[3:0]), // Templated
      .s_axi_arprot                     (gold_emaxi_arprot[2:0]), // Templated
      .s_axi_arvalid                    (gold_emaxi_arvalid),    // Templated
      .s_axi_arqos                      (gold_emaxi_arqos[3:0]), // Templated
      .s_axi_rready                     (gold_emaxi_rready));     // Templated
   

   /* parallella AUTO_TEMPLATE(
    ..*_aclk      (clock),
    ..*_aresetn   (resetn),
    .tx[io]\(.*\) (g2d\1[]),
    .rx[io]\(.*\) (d2g\1[]),
    .emaxi\(.*\)  (gold_emaxi\1[]),
    .esaxi\(.*\)  (gold_esaxi\1[]),
    ); */

   // Reference module
   parallella golden
     (
      .csysack                          (),
      .csysreq                          (1'b0),
      .cactive                          (),
      .reset_chip                       (),
      .reset_fpga                       (),
      .clkin_100                        (clock),
      /*AUTOINST*/
      // Outputs
      .txo_data_p                       (g2d_data_p[7:0]),       // Templated
      .txo_data_n                       (g2d_data_n[7:0]),       // Templated
      .txo_frame_p                      (g2d_frame_p),           // Templated
      .txo_frame_n                      (g2d_frame_n),           // Templated
      .txo_lclk_p                       (g2d_lclk_p),            // Templated
      .txo_lclk_n                       (g2d_lclk_n),            // Templated
      .rxo_wr_wait_p                    (d2g_wr_wait_p),         // Templated
      .rxo_wr_wait_n                    (d2g_wr_wait_n),         // Templated
      .rxo_rd_wait_p                    (d2g_rd_wait_p),         // Templated
      .rxo_rd_wait_n                    (d2g_rd_wait_n),         // Templated
      .rxi_cclk_p                       (d2g_cclk_p),            // Templated
      .rxi_cclk_n                       (d2g_cclk_n),            // Templated
      .emaxi_awid                       (gold_emaxi_awid[MIDW-1:0]), // Templated
      .emaxi_awaddr                     (gold_emaxi_awaddr[MAW-1:0]), // Templated
      .emaxi_awlen                      (gold_emaxi_awlen[3:0]), // Templated
      .emaxi_awsize                     (gold_emaxi_awsize[2:0]), // Templated
      .emaxi_awburst                    (gold_emaxi_awburst[1:0]), // Templated
      .emaxi_awlock                     (gold_emaxi_awlock[1:0]), // Templated
      .emaxi_awcache                    (gold_emaxi_awcache[3:0]), // Templated
      .emaxi_awprot                     (gold_emaxi_awprot[2:0]), // Templated
      .emaxi_awvalid                    (gold_emaxi_awvalid),    // Templated
      .esaxi_awready                    (gold_esaxi_awready),    // Templated
      .emaxi_wid                        (gold_emaxi_wid[MIDW-1:0]), // Templated
      .emaxi_wdata                      (gold_emaxi_wdata[MDW-1:0]), // Templated
      .emaxi_wstrb                      (gold_emaxi_wstrb[MSTW-1:0]), // Templated
      .emaxi_wlast                      (gold_emaxi_wlast),      // Templated
      .emaxi_wvalid                     (gold_emaxi_wvalid),     // Templated
      .esaxi_wready                     (gold_esaxi_wready),     // Templated
      .emaxi_bready                     (gold_emaxi_bready),     // Templated
      .esaxi_bid                        (gold_esaxi_bid[SIDW-1:0]), // Templated
      .esaxi_bresp                      (gold_esaxi_bresp[1:0]), // Templated
      .esaxi_bvalid                     (gold_esaxi_bvalid),     // Templated
      .emaxi_arid                       (gold_emaxi_arid[MIDW-1:0]), // Templated
      .emaxi_araddr                     (gold_emaxi_araddr[MAW-1:0]), // Templated
      .emaxi_arlen                      (gold_emaxi_arlen[3:0]), // Templated
      .emaxi_arsize                     (gold_emaxi_arsize[2:0]), // Templated
      .emaxi_arburst                    (gold_emaxi_arburst[1:0]), // Templated
      .emaxi_arlock                     (gold_emaxi_arlock[1:0]), // Templated
      .emaxi_arcache                    (gold_emaxi_arcache[3:0]), // Templated
      .emaxi_arprot                     (gold_emaxi_arprot[2:0]), // Templated
      .emaxi_arvalid                    (gold_emaxi_arvalid),    // Templated
      .esaxi_arready                    (gold_esaxi_arready),    // Templated
      .emaxi_rready                     (gold_emaxi_rready),     // Templated
      .esaxi_rid                        (gold_esaxi_rid[SIDW-1:0]), // Templated
      .esaxi_rdata                      (gold_esaxi_rdata[SDW-1:0]), // Templated
      .esaxi_rresp                      (gold_esaxi_rresp[1:0]), // Templated
      .esaxi_rlast                      (gold_esaxi_rlast),      // Templated
      .esaxi_rvalid                     (gold_esaxi_rvalid),     // Templated
      .emaxi_awqos                      (gold_emaxi_awqos[3:0]), // Templated
      .emaxi_arqos                      (gold_emaxi_arqos[3:0]), // Templated
      // Inputs
      .esaxi_aclk                       (clock),                 // Templated
      .emaxi_aclk                       (clock),                 // Templated
      .reset                            (reset),
      .esaxi_aresetn                    (resetn),                // Templated
      .emaxi_aresetn                    (resetn),                // Templated
      .rxi_data_p                       (d2g_data_p[7:0]),       // Templated
      .rxi_data_n                       (d2g_data_n[7:0]),       // Templated
      .rxi_frame_p                      (d2g_frame_p),           // Templated
      .rxi_frame_n                      (d2g_frame_n),           // Templated
      .rxi_lclk_p                       (d2g_lclk_p),            // Templated
      .rxi_lclk_n                       (d2g_lclk_n),            // Templated
      .txi_wr_wait_p                    (g2d_wr_wait_p),         // Templated
      .txi_wr_wait_n                    (g2d_wr_wait_n),         // Templated
      .txi_rd_wait_p                    (g2d_rd_wait_p),         // Templated
      .txi_rd_wait_n                    (g2d_rd_wait_n),         // Templated
      .emaxi_awready                    (gold_emaxi_awready),    // Templated
      .esaxi_awid                       (gold_esaxi_awid[SIDW-1:0]), // Templated
      .esaxi_awaddr                     (gold_esaxi_awaddr[MAW-1:0]), // Templated
      .esaxi_awlen                      (gold_esaxi_awlen[3:0]), // Templated
      .esaxi_awsize                     (gold_esaxi_awsize[2:0]), // Templated
      .esaxi_awburst                    (gold_esaxi_awburst[1:0]), // Templated
      .esaxi_awlock                     (gold_esaxi_awlock[1:0]), // Templated
      .esaxi_awcache                    (gold_esaxi_awcache[3:0]), // Templated
      .esaxi_awprot                     (gold_esaxi_awprot[2:0]), // Templated
      .esaxi_awvalid                    (gold_esaxi_awvalid),    // Templated
      .emaxi_wready                     (gold_emaxi_wready),     // Templated
      .esaxi_wid                        (gold_esaxi_wid[SIDW-1:0]), // Templated
      .esaxi_wdata                      (gold_esaxi_wdata[SDW-1:0]), // Templated
      .esaxi_wstrb                      (gold_esaxi_wstrb[SSTW-1:0]), // Templated
      .esaxi_wlast                      (gold_esaxi_wlast),      // Templated
      .esaxi_wvalid                     (gold_esaxi_wvalid),     // Templated
      .emaxi_bid                        (gold_emaxi_bid[MIDW-1:0]), // Templated
      .emaxi_bresp                      (gold_emaxi_bresp[1:0]), // Templated
      .emaxi_bvalid                     (gold_emaxi_bvalid),     // Templated
      .esaxi_bready                     (gold_esaxi_bready),     // Templated
      .emaxi_arready                    (gold_emaxi_arready),    // Templated
      .esaxi_arid                       (gold_esaxi_arid[SIDW-1:0]), // Templated
      .esaxi_araddr                     (gold_esaxi_araddr[MAW-1:0]), // Templated
      .esaxi_arlen                      (gold_esaxi_arlen[3:0]), // Templated
      .esaxi_arsize                     (gold_esaxi_arsize[2:0]), // Templated
      .esaxi_arburst                    (gold_esaxi_arburst[1:0]), // Templated
      .esaxi_arlock                     (gold_esaxi_arlock[1:0]), // Templated
      .esaxi_arcache                    (gold_esaxi_arcache[3:0]), // Templated
      .esaxi_arprot                     (gold_esaxi_arprot[2:0]), // Templated
      .esaxi_arvalid                    (gold_esaxi_arvalid),    // Templated
      .emaxi_rid                        (gold_emaxi_rid[MIDW-1:0]), // Templated
      .emaxi_rdata                      (gold_emaxi_rdata[MDW-1:0]), // Templated
      .emaxi_rresp                      (gold_emaxi_rresp[1:0]), // Templated
      .emaxi_rlast                      (gold_emaxi_rlast),      // Templated
      .emaxi_rvalid                     (gold_emaxi_rvalid),     // Templated
      .esaxi_rready                     (gold_esaxi_rready),     // Templated
      .esaxi_awqos                      (gold_esaxi_awqos[3:0]), // Templated
      .esaxi_arqos                      (gold_esaxi_arqos[3:0])); // Templated

   /* parallella AUTO_TEMPLATE(
    ..*_aclk      (clock),
    ..*_aresetn   (resetn),
    .tx[io]\(.*\) (d2g\1[]),
    .rx[io]\(.*\) (g2d\1[]),
    .emaxi\(.*\)  (dut_emaxi\1[]),
    .esaxi\(.*\)  (dut_esaxi\1[]),
    ); */

  parallella dut
     (
      .csysack                          (),
      .csysreq                          (1'b0),
      .cactive                          (),
      .reset_chip                       (),
      .reset_fpga                       (),
      .clkin_100                        (clock),
      /*AUTOINST*/
      // Outputs
      .txo_data_p                       (d2g_data_p[7:0]),       // Templated
      .txo_data_n                       (d2g_data_n[7:0]),       // Templated
      .txo_frame_p                      (d2g_frame_p),           // Templated
      .txo_frame_n                      (d2g_frame_n),           // Templated
      .txo_lclk_p                       (d2g_lclk_p),            // Templated
      .txo_lclk_n                       (d2g_lclk_n),            // Templated
      .rxo_wr_wait_p                    (g2d_wr_wait_p),         // Templated
      .rxo_wr_wait_n                    (g2d_wr_wait_n),         // Templated
      .rxo_rd_wait_p                    (g2d_rd_wait_p),         // Templated
      .rxo_rd_wait_n                    (g2d_rd_wait_n),         // Templated
      .rxi_cclk_p                       (g2d_cclk_p),            // Templated
      .rxi_cclk_n                       (g2d_cclk_n),            // Templated
      .emaxi_awid                       (dut_emaxi_awid[MIDW-1:0]), // Templated
      .emaxi_awaddr                     (dut_emaxi_awaddr[MAW-1:0]), // Templated
      .emaxi_awlen                      (dut_emaxi_awlen[3:0]),  // Templated
      .emaxi_awsize                     (dut_emaxi_awsize[2:0]), // Templated
      .emaxi_awburst                    (dut_emaxi_awburst[1:0]), // Templated
      .emaxi_awlock                     (dut_emaxi_awlock[1:0]), // Templated
      .emaxi_awcache                    (dut_emaxi_awcache[3:0]), // Templated
      .emaxi_awprot                     (dut_emaxi_awprot[2:0]), // Templated
      .emaxi_awvalid                    (dut_emaxi_awvalid),     // Templated
      .esaxi_awready                    (dut_esaxi_awready),     // Templated
      .emaxi_wid                        (dut_emaxi_wid[MIDW-1:0]), // Templated
      .emaxi_wdata                      (dut_emaxi_wdata[MDW-1:0]), // Templated
      .emaxi_wstrb                      (dut_emaxi_wstrb[MSTW-1:0]), // Templated
      .emaxi_wlast                      (dut_emaxi_wlast),       // Templated
      .emaxi_wvalid                     (dut_emaxi_wvalid),      // Templated
      .esaxi_wready                     (dut_esaxi_wready),      // Templated
      .emaxi_bready                     (dut_emaxi_bready),      // Templated
      .esaxi_bid                        (dut_esaxi_bid[SIDW-1:0]), // Templated
      .esaxi_bresp                      (dut_esaxi_bresp[1:0]),  // Templated
      .esaxi_bvalid                     (dut_esaxi_bvalid),      // Templated
      .emaxi_arid                       (dut_emaxi_arid[MIDW-1:0]), // Templated
      .emaxi_araddr                     (dut_emaxi_araddr[MAW-1:0]), // Templated
      .emaxi_arlen                      (dut_emaxi_arlen[3:0]),  // Templated
      .emaxi_arsize                     (dut_emaxi_arsize[2:0]), // Templated
      .emaxi_arburst                    (dut_emaxi_arburst[1:0]), // Templated
      .emaxi_arlock                     (dut_emaxi_arlock[1:0]), // Templated
      .emaxi_arcache                    (dut_emaxi_arcache[3:0]), // Templated
      .emaxi_arprot                     (dut_emaxi_arprot[2:0]), // Templated
      .emaxi_arvalid                    (dut_emaxi_arvalid),     // Templated
      .esaxi_arready                    (dut_esaxi_arready),     // Templated
      .emaxi_rready                     (dut_emaxi_rready),      // Templated
      .esaxi_rid                        (dut_esaxi_rid[SIDW-1:0]), // Templated
      .esaxi_rdata                      (dut_esaxi_rdata[SDW-1:0]), // Templated
      .esaxi_rresp                      (dut_esaxi_rresp[1:0]),  // Templated
      .esaxi_rlast                      (dut_esaxi_rlast),       // Templated
      .esaxi_rvalid                     (dut_esaxi_rvalid),      // Templated
      .emaxi_awqos                      (dut_emaxi_awqos[3:0]),  // Templated
      .emaxi_arqos                      (dut_emaxi_arqos[3:0]),  // Templated
      // Inputs
      .esaxi_aclk                       (clock),                 // Templated
      .emaxi_aclk                       (clock),                 // Templated
      .reset                            (reset),
      .esaxi_aresetn                    (resetn),                // Templated
      .emaxi_aresetn                    (resetn),                // Templated
      .rxi_data_p                       (g2d_data_p[7:0]),       // Templated
      .rxi_data_n                       (g2d_data_n[7:0]),       // Templated
      .rxi_frame_p                      (g2d_frame_p),           // Templated
      .rxi_frame_n                      (g2d_frame_n),           // Templated
      .rxi_lclk_p                       (g2d_lclk_p),            // Templated
      .rxi_lclk_n                       (g2d_lclk_n),            // Templated
      .txi_wr_wait_p                    (d2g_wr_wait_p),         // Templated
      .txi_wr_wait_n                    (d2g_wr_wait_n),         // Templated
      .txi_rd_wait_p                    (d2g_rd_wait_p),         // Templated
      .txi_rd_wait_n                    (d2g_rd_wait_n),         // Templated
      .emaxi_awready                    (dut_emaxi_awready),     // Templated
      .esaxi_awid                       (dut_esaxi_awid[SIDW-1:0]), // Templated
      .esaxi_awaddr                     (dut_esaxi_awaddr[MAW-1:0]), // Templated
      .esaxi_awlen                      (dut_esaxi_awlen[3:0]),  // Templated
      .esaxi_awsize                     (dut_esaxi_awsize[2:0]), // Templated
      .esaxi_awburst                    (dut_esaxi_awburst[1:0]), // Templated
      .esaxi_awlock                     (dut_esaxi_awlock[1:0]), // Templated
      .esaxi_awcache                    (dut_esaxi_awcache[3:0]), // Templated
      .esaxi_awprot                     (dut_esaxi_awprot[2:0]), // Templated
      .esaxi_awvalid                    (dut_esaxi_awvalid),     // Templated
      .emaxi_wready                     (dut_emaxi_wready),      // Templated
      .esaxi_wid                        (dut_esaxi_wid[SIDW-1:0]), // Templated
      .esaxi_wdata                      (dut_esaxi_wdata[SDW-1:0]), // Templated
      .esaxi_wstrb                      (dut_esaxi_wstrb[SSTW-1:0]), // Templated
      .esaxi_wlast                      (dut_esaxi_wlast),       // Templated
      .esaxi_wvalid                     (dut_esaxi_wvalid),      // Templated
      .emaxi_bid                        (dut_emaxi_bid[MIDW-1:0]), // Templated
      .emaxi_bresp                      (dut_emaxi_bresp[1:0]),  // Templated
      .emaxi_bvalid                     (dut_emaxi_bvalid),      // Templated
      .esaxi_bready                     (dut_esaxi_bready),      // Templated
      .emaxi_arready                    (dut_emaxi_arready),     // Templated
      .esaxi_arid                       (dut_esaxi_arid[SIDW-1:0]), // Templated
      .esaxi_araddr                     (dut_esaxi_araddr[MAW-1:0]), // Templated
      .esaxi_arlen                      (dut_esaxi_arlen[3:0]),  // Templated
      .esaxi_arsize                     (dut_esaxi_arsize[2:0]), // Templated
      .esaxi_arburst                    (dut_esaxi_arburst[1:0]), // Templated
      .esaxi_arlock                     (dut_esaxi_arlock[1:0]), // Templated
      .esaxi_arcache                    (dut_esaxi_arcache[3:0]), // Templated
      .esaxi_arprot                     (dut_esaxi_arprot[2:0]), // Templated
      .esaxi_arvalid                    (dut_esaxi_arvalid),     // Templated
      .emaxi_rid                        (dut_emaxi_rid[MIDW-1:0]), // Templated
      .emaxi_rdata                      (dut_emaxi_rdata[MDW-1:0]), // Templated
      .emaxi_rresp                      (dut_emaxi_rresp[1:0]),  // Templated
      .emaxi_rlast                      (dut_emaxi_rlast),       // Templated
      .emaxi_rvalid                     (dut_emaxi_rvalid),      // Templated
      .esaxi_rready                     (dut_esaxi_rready),      // Templated
      .esaxi_awqos                      (dut_esaxi_awqos[3:0]),  // Templated
      .esaxi_arqos                      (dut_esaxi_arqos[3:0]));  // Templated

   /* maxi_test AUTO_TEMPLATE(
    .ERROR        (ERROR[2]),
    .DONE         (DONE[2]),
    ..*_aclk      (clock),
    ..*_aresetn   (resetn),
    .m_axi\(.*\)  (dut_esaxi\1[]),
    ); */

   maxi_test
     #(/*AUTOINSTPARAM*/
       // Parameters
       .SIDW                            (SIDW),
       .SAW                             (SAW),
       .SDW                             (SDW),
       .SSTW                            (SSTW))
   maxi_dut
     (/*AUTOINST*/
      // Outputs
      .ERROR                            (ERROR[2]),              // Templated
      .DONE                             (DONE[2]),               // Templated
      .m_axi_awid                       (dut_esaxi_awid[SIDW-1:0]), // Templated
      .m_axi_awaddr                     (dut_esaxi_awaddr[SAW-1:0]), // Templated
      .m_axi_awlen                      (dut_esaxi_awlen[3:0]),  // Templated
      .m_axi_awsize                     (dut_esaxi_awsize[2:0]), // Templated
      .m_axi_awburst                    (dut_esaxi_awburst[1:0]), // Templated
      .m_axi_awlock                     (dut_esaxi_awlock[1:0]), // Templated
      .m_axi_awcache                    (dut_esaxi_awcache[3:0]), // Templated
      .m_axi_awprot                     (dut_esaxi_awprot[2:0]), // Templated
      .m_axi_awvalid                    (dut_esaxi_awvalid),     // Templated
      .m_axi_awqos                      (dut_esaxi_awqos[3:0]),  // Templated
      .m_axi_wid                        (dut_esaxi_wid[SIDW-1:0]), // Templated
      .m_axi_wdata                      (dut_esaxi_wdata[SDW-1:0]), // Templated
      .m_axi_wstrb                      (dut_esaxi_wstrb[SSTW-1:0]), // Templated
      .m_axi_wlast                      (dut_esaxi_wlast),       // Templated
      .m_axi_wvalid                     (dut_esaxi_wvalid),      // Templated
      .m_axi_bready                     (dut_esaxi_bready),      // Templated
      .m_axi_arid                       (dut_esaxi_arid[SIDW-1:0]), // Templated
      .m_axi_araddr                     (dut_esaxi_araddr[SAW-1:0]), // Templated
      .m_axi_arlen                      (dut_esaxi_arlen[3:0]),  // Templated
      .m_axi_arsize                     (dut_esaxi_arsize[2:0]), // Templated
      .m_axi_arburst                    (dut_esaxi_arburst[1:0]), // Templated
      .m_axi_arlock                     (dut_esaxi_arlock[1:0]), // Templated
      .m_axi_arcache                    (dut_esaxi_arcache[3:0]), // Templated
      .m_axi_arprot                     (dut_esaxi_arprot[2:0]), // Templated
      .m_axi_arvalid                    (dut_esaxi_arvalid),     // Templated
      .m_axi_arqos                      (dut_esaxi_arqos[3:0]),  // Templated
      .m_axi_rready                     (dut_esaxi_rready),      // Templated
      // Inputs
      .m_axi_aclk                       (clock),                 // Templated
      .m_axi_aresetn                    (resetn),                // Templated
      .m_axi_awready                    (dut_esaxi_awready),     // Templated
      .m_axi_wready                     (dut_esaxi_wready),      // Templated
      .m_axi_bid                        (dut_esaxi_bid[SIDW-1:0]), // Templated
      .m_axi_bresp                      (dut_esaxi_bresp[1:0]),  // Templated
      .m_axi_bvalid                     (dut_esaxi_bvalid),      // Templated
      .m_axi_arready                    (dut_esaxi_arready),     // Templated
      .m_axi_rid                        (dut_esaxi_rid[SIDW-1:0]), // Templated
      .m_axi_rdata                      (dut_esaxi_rdata[SDW-1:0]), // Templated
      .m_axi_rresp                      (dut_esaxi_rresp[1:0]),  // Templated
      .m_axi_rlast                      (dut_esaxi_rlast),       // Templated
      .m_axi_rvalid                     (dut_esaxi_rvalid));      // Templated
   
   /* saxi_test AUTO_TEMPLATE(
    .ERROR        (ERROR[3]),
    .DONE         (DONE[3]),
    ..*_aclk      (clock),
    ..*_aresetn   (resetn),
    .s_axi\(.*\)  (dut_emaxi\1[]),
    ); */

   saxi_test
     #(/*AUTOINSTPARAM*/
       // Parameters
       .MIDW                            (MIDW),
       .MAW                             (MAW),
       .MDW                             (MDW),
       .MSTW                            (MSTW))
   saxi_dut
     (/*AUTOINST*/
      // Outputs
      .ERROR                            (ERROR[3]),              // Templated
      .DONE                             (DONE[3]),               // Templated
      .s_axi_awready                    (dut_emaxi_awready),     // Templated
      .s_axi_wready                     (dut_emaxi_wready),      // Templated
      .s_axi_bid                        (dut_emaxi_bid[MIDW-1:0]), // Templated
      .s_axi_bresp                      (dut_emaxi_bresp[1:0]),  // Templated
      .s_axi_bvalid                     (dut_emaxi_bvalid),      // Templated
      .s_axi_arready                    (dut_emaxi_arready),     // Templated
      .s_axi_rid                        (dut_emaxi_rid[MIDW-1:0]), // Templated
      .s_axi_rdata                      (dut_emaxi_rdata[MDW-1:0]), // Templated
      .s_axi_rresp                      (dut_emaxi_rresp[1:0]),  // Templated
      .s_axi_rlast                      (dut_emaxi_rlast),       // Templated
      .s_axi_rvalid                     (dut_emaxi_rvalid),      // Templated
      // Inputs
      .s_axi_aclk                       (clock),                 // Templated
      .s_axi_aresetn                    (resetn),                // Templated
      .s_axi_awid                       (dut_emaxi_awid[MIDW-1:0]), // Templated
      .s_axi_awaddr                     (dut_emaxi_awaddr[MAW-1:0]), // Templated
      .s_axi_awlen                      (dut_emaxi_awlen[3:0]),  // Templated
      .s_axi_awsize                     (dut_emaxi_awsize[2:0]), // Templated
      .s_axi_awburst                    (dut_emaxi_awburst[1:0]), // Templated
      .s_axi_awlock                     (dut_emaxi_awlock[1:0]), // Templated
      .s_axi_awcache                    (dut_emaxi_awcache[3:0]), // Templated
      .s_axi_awprot                     (dut_emaxi_awprot[2:0]), // Templated
      .s_axi_awvalid                    (dut_emaxi_awvalid),     // Templated
      .s_axi_awqos                      (dut_emaxi_awqos[3:0]),  // Templated
      .s_axi_wid                        (dut_emaxi_wid[MIDW-1:0]), // Templated
      .s_axi_wdata                      (dut_emaxi_wdata[MDW-1:0]), // Templated
      .s_axi_wstrb                      (dut_emaxi_wstrb[MSTW-1:0]), // Templated
      .s_axi_wlast                      (dut_emaxi_wlast),       // Templated
      .s_axi_wvalid                     (dut_emaxi_wvalid),      // Templated
      .s_axi_bready                     (dut_emaxi_bready),      // Templated
      .s_axi_arid                       (dut_emaxi_arid[MIDW-1:0]), // Templated
      .s_axi_araddr                     (dut_emaxi_araddr[MAW-1:0]), // Templated
      .s_axi_arlen                      (dut_emaxi_arlen[3:0]),  // Templated
      .s_axi_arsize                     (dut_emaxi_arsize[2:0]), // Templated
      .s_axi_arburst                    (dut_emaxi_arburst[1:0]), // Templated
      .s_axi_arlock                     (dut_emaxi_arlock[1:0]), // Templated
      .s_axi_arcache                    (dut_emaxi_arcache[3:0]), // Templated
      .s_axi_arprot                     (dut_emaxi_arprot[2:0]), // Templated
      .s_axi_arvalid                    (dut_emaxi_arvalid),     // Templated
      .s_axi_arqos                      (dut_emaxi_arqos[3:0]),  // Templated
      .s_axi_rready                     (dut_emaxi_rready));      // Templated
   
   
endmodule // tb_elink2

    // Local Variables:
    // verilog-library-directories:("." "../hdl/parallella-I" "../hdl/elink")
    // End:
