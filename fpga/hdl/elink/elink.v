/*
  Copyright (C) 2014 Adapteva, Inc.
 
  Contributed by Andreas Olofsson <andreas@adapteva.com>
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

module elink (/*AUTOARG*/
   // Outputs
   rxo_wr_wait_p, rxo_wr_wait_n, rxo_rd_wait_p, rxo_rd_wait_n,
   txo_lclk_p, txo_lclk_n, txo_frame_p, txo_frame_n, txo_data_p,
   txo_data_n, m_axi_awid, m_axi_awaddr, m_axi_awlen, m_axi_awsize,
   m_axi_awburst, m_axi_awlock, m_axi_awcache, m_axi_awprot,
   m_axi_awvalid, m_axi_wid, m_axi_wdata, m_axi_wstrb, m_axi_wlast,
   m_axi_wvalid, m_axi_bready, m_axi_arid, m_axi_araddr, m_axi_arlen,
   m_axi_arsize, m_axi_arburst, m_axi_arlock, m_axi_arcache,
   m_axi_arprot, m_axi_arvalid, m_axi_rready, s_axi_awready,
   s_axi_wready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_arready,
   s_axi_rid, s_axi_rdata, s_axi_rresp, s_axi_rlast, s_axi_rvalid,
   // Inputs
   clk_in, reset, rxi_lclk_p, rxi_lclk_n, rxi_frame_p, rxi_frame_n,
   rxi_data_p, rxi_data_n, txi_wr_wait_p, txi_wr_wait_n,
   txi_rd_wait_p, txi_rd_wait_n, m_axi_aclk, m_axi_aresetn,
   m_axi_awready, m_axi_wrready, m_axi_bid, m_axi_bresp, m_axi_bvalid,
   m_axi_arready, m_axi_rid, m_axi_rdata, m_axi_rresp, m_axi_rlast,
   m_axi_rvalid, s_axi_aclk, s_axi_aresetn, s_axi_awid, s_axi_awaddr,
   s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awlock,
   s_axi_awcache, s_axi_awprot, s_axi_awvalid, s_axi_wid, s_axi_wdata,
   s_axi_wstrb, s_axi_wlast, s_axi_wvalid, s_axi_bready, s_axi_arid,
   s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst,
   s_axi_arlock, s_axi_arcache, s_axi_arprot, s_axi_arvalid,
   s_axi_rready, ecfg_sw_reset, ecfg_coreid, ecfg_elink_en,
   ecfg_lclkdiv, ecfg_ctrlmode, ecfg_tx_loopback_mode,
   ecfg_tx_force_mode, ecfg_tx_force_data, ecfg_rx_remap_addr,
   ecfg_rx_filter_mode, ecfg_rx_filter_lo_addr,
   ecfg_rx_filter_hi_addr
   );

   //Slave parameters
   parameter SIDW  = 12; //Slave ID Width
   parameter SAW   = 32; //Slave Address Bus Width
   parameter SDW   = 32; //Slave Data Bus Width
   parameter SSTW  = 8; //Number of strobes
   //Master parameters
   parameter MIDW  = 6;  //ID Width
   parameter MAW   = 32; //Address Bus Width
   parameter MDW   = 64; //Data Bus Width
   parameter MSTW  = 8;  //Number of strobes
   //Epiphany parameters
   parameter EDW    = 32; //Epiphany native data width
   parameter EAW    = 32; //Epiphany native address width
   parameter EIDW   = 12; //Elink ID (row,column coordinate)
   
   //Memory Map 
   parameter VMW    =  4; //Number of address MSB bits of RX transaction to remap
   
   
   /*****************************/
   /*BASIC SIGNAL               */
   /*****************************/
   input             clk_in;              //Input reference clock
   input             reset;               //Active high asynchronous hardware reset           
   
   /*****************************/
   /*ELINK INTERFACE (I/O PINS) */
   /*****************************/

   //Receiver
   input        rxi_lclk_p;      //high speed clock (up to 500MHz)
   input        rxi_lclk_n;
   input        rxi_frame_p;     //frame signal to indicate start/stop of transaction stream
   input        rxi_frame_n;
   input [7:0]  rxi_data_p;      //receive data (dual data rate)
   input [7:0]  rxi_data_n;
   output       rxo_wr_wait_p;     //outgoing pushback on write transactions
   output       rxo_wr_wait_n;     //outgoing pushback on write transactions
   output       rxo_rd_wait_p;     //outgoing pushback on read transactions
   output       rxo_rd_wait_n;     //outgoing pushback on read transactions
   
   //Transmitter
   output       txo_lclk_p;      //high speed clock (up to 500MHz)
   output       txo_lclk_n;
   output       txo_frame_p;     //frame signal to indicate start/stop of transaction stream
   output       txo_frame_n;
   output [7:0] txo_data_p;     //transmit data (dual data rate)
   output [7:0] txo_data_n;          
   input 	txi_wr_wait_p;    //incoming pushback on write transactions
   input 	txi_wr_wait_n;    //incoming pushback on write transactions
   input 	txi_rd_wait_p;    //incoming pushback on write transactions
   input 	txi_rd_wait_n;    //incoming pushback on write transactions
   
   /*****************************/
   /*AXI MASTER I/F             */
   /*****************************/
   
   //Global signals
   input 	     m_axi_aclk;      //clock source for axi master/slave interfaces
   input 	     m_axi_aresetn;   //asynchronous reset signal, active low: TBD: do we need it?, qos?,  
   
   //Write address channel
   output [MIDW-1:0] m_axi_awid;      //write address ID
   output [MAW-1:0]  m_axi_awaddr;    //write address
   output [3:0]      m_axi_awlen;     //burst length (number of data transfers)
   output [2:0]      m_axi_awsize;    //burst size (size of each transfer)
   output [1:0]      m_axi_awburst;   //burst type
   output [1:0]      m_axi_awlock;    //lock type (atomic characteristics)
   output [3:0]      m_axi_awcache;   //memory type
   output [2:0]      m_axi_awprot;    //protection type
   output 	     m_axi_awvalid;   //write address valid
   input             m_axi_awready;   //write address ready
   
   //Write data channel
   output [MIDW-1:0] m_axi_wid;       //write ID tag (supported only in AXI3)
   output [MDW-1:0]  m_axi_wdata;     //write data
   output [MSTW-1:0] m_axi_wstrb;     //write strobes
   output 	     m_axi_wlast;     //indicats last write transfer in burst
   output 	     m_axi_wvalid;    //write valid
   input 	     m_axi_wrready;   //write ready
   
   //Bufered write response channel
   input [MIDW-1:0]  m_axi_bid;       //response ID tag
   input [1:0] 	     m_axi_bresp;     //write response
   input 	     m_axi_bvalid;    //write response valid
   output            m_axi_bready;    //write ready
         
   //Read address channel
   output [MIDW-1:0] m_axi_arid;      //read address ID
   output [MAW-1:0]  m_axi_araddr;    //read address
   output [3:0]      m_axi_arlen;     //burst lenght (number of data transfers)
   output [2:0]      m_axi_arsize;    //burst size (size of each transfer)
   output [1:0]      m_axi_arburst;   //burst type
   output [1:0]      m_axi_arlock;    //lock type (atomic characteristics)
   output [3:0]      m_axi_arcache;   //memory type
   output [2:0]      m_axi_arprot;    //protection type
   output 	     m_axi_arvalid;   //read address valid
   input             m_axi_arready;   //read address ready
   
   //Read data channel
   input [MIDW-1:0]  m_axi_rid;       //read ID tag 
   input [MDW-1:0]   m_axi_rdata;     //read data
   input [1:0] 	     m_axi_rresp;     //read response
   input 	     m_axi_rlast;     //indicates last read transfer in burst
   input 	     m_axi_rvalid;    //read valid
   output 	     m_axi_rready;    //read ready
   
   /*****************************/
   /*AXI SLAVE I/F              */
   /*****************************/

   //Global signals
   input 	     s_axi_aclk;      //clock source for axi slave interfaces
   input 	     s_axi_aresetn;   //asynchronous reset signal, active low 
   
   //Write address channel
   input [SIDW-1:0]  s_axi_awid;      //write address ID
   input [SAW-1:0]   s_axi_awaddr;    //write address
   input [3:0] 	     s_axi_awlen;     //burst length (number of data transfers)
   input [2:0] 	     s_axi_awsize;    //burst size (size of each transfer)
   input [1:0] 	     s_axi_awburst;   //burst type
   input [1:0] 	     s_axi_awlock;    //lock type (atomic characteristics)
   input [3:0] 	     s_axi_awcache;   //memory type
   input [2:0] 	     s_axi_awprot;    //protection type
   input 	     s_axi_awvalid;   //write address valid
   output 	     s_axi_awready;   //write address ready
   
   //Write data channel
   input [SIDW-1:0]  s_axi_wid;       //write ID tag (supported only in AXI3)
   input [SDW-1:0]   s_axi_wdata;     //write data
   input [SSTW-1:0]  s_axi_wstrb;     //write strobes
   input 	     s_axi_wlast;     //indicats last write transfer in burst
   input 	     s_axi_wvalid;    //write valid
   output            s_axi_wready;    //write channel ready
   
   //Buffered write response channel
   input 	     s_axi_bready;    //write ready
   output [MIDW-1:0] s_axi_bid;       //response ID tag
   output [1:0]      s_axi_bresp;     //write response
   output 	     s_axi_bvalid;    //write response valid
   
   //Read address channel
   input [MIDW-1:0]  s_axi_arid;      //read address ID
   input [MAW-1:0]   s_axi_araddr;    //read address
   input [3:0] 	     s_axi_arlen;     //burst lenght (number of data transfers)
   input [2:0] 	     s_axi_arsize;    //burst size (size of each transfer)
   input [1:0] 	     s_axi_arburst;   //burst type
   input [1:0] 	     s_axi_arlock;    //lock type (atomic characteristics)
   input [3:0] 	     s_axi_arcache;   //memory type
   input [2:0] 	     s_axi_arprot;    //protection type
   input 	     s_axi_arvalid;   //read address valid
   output 	     s_axi_arready;   //read address ready
   
   //Read data channel
   output [MIDW-1:0] s_axi_rid;       //read ID tag 
   output [MDW-1:0]  s_axi_rdata;     //read data
   output [1:0]      s_axi_rresp;     //read response
   output 	     s_axi_rlast;     //indicates last read transfer in burst
   output 	     s_axi_rvalid;    //read valid
   input 	     s_axi_rready;    //read ready

   /*****************************/
   /*ELINK CONFIG INTERFACE     */
   /*****************************/
   input 	    ecfg_sw_reset;          //Software initiated reset 

   //Coordinate (ID) of elink              
   input [EIDW-1:0] ecfg_coreid;            //ID (coordinate) of elink
   
   //Link low power mode
   input            esys_elink_en;         //0=normal operations
                                            //1=disable TX data drivers, RX inputs, other logic
   
   //Transmit clock "lclk" divider
   input [1:0]      esys_lclkdiv;           //00=No division, full speed
                                            //01=Divide by 2
                                            //10=Divide by 4
                                            //11=Divide by 8

   //Transmit mode signals
   input [3:0] 	    esys_ctrlmode;          //Special control mode tage used by Epiphany eMesh 
   
   //Various transmit modes
   input            esys_tx_loopback_mode; //Loops back TX-->RX
   input            esys_tx_force_mode;    //force a constant on TX output pins
   input [8:0] 	    esys_tx_force_data;    //data to force on {frame,data[7:0]}

   //Remapping address
   input [VMW-1:0]  esys_rx_remap_addr;    //MSBs to insert into RX addr field


   //Filtering illegal addresses on elink receiver port
   input [1:0] 	    esys_rx_filter_mode;   //00=pass all
                                           //01=pass lo < "addr" <hi,
                                           //10=pass (addr < lo) & (addr > hi)    
   input [MAW-1:0]  esys_rx_filter_lo_addr;//lower bound address
   input [MAW-1:0]  esys_rx_filter_hi_addr;//higher bound address

   
endmodule // elink
