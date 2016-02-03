// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3.1 (lin64) Build 1056140 Thu Oct 30 16:30:39 MDT 2014
// Date        : Wed Apr  8 20:38:45 2015
// Host        : parallella running 64-bit Ubuntu 14.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/aolofsson/Work_all/parallella-hw/fpga/vivado/junk/junk.srcs/sources_1/ip/fifo_async_103x16/fifo_async_103x16_funcsim.v
// Design      : fifo_async_103x16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v12_0,Vivado 2014.3.1" *) (* CHECK_LICENSE_TYPE = "fifo_async_103x16,fifo_generator_v12_0,{}" *) 
(* core_generation_info = "fifo_async_103x16,fifo_generator_v12_0,{x_ipProduct=Vivado 2014.3.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=fifo_generator,x_ipVersion=12.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,C_COMMON_CLOCK=0,C_COUNT_TYPE=0,C_DATA_COUNT_WIDTH=4,C_DEFAULT_VALUE=BlankString,C_DIN_WIDTH=103,C_DOUT_RST_VAL=0,C_DOUT_WIDTH=103,C_ENABLE_RLOCS=0,C_FAMILY=zynq,C_FULL_FLAGS_RST_VAL=1,C_HAS_ALMOST_EMPTY=0,C_HAS_ALMOST_FULL=0,C_HAS_BACKUP=0,C_HAS_DATA_COUNT=0,C_HAS_INT_CLK=0,C_HAS_MEMINIT_FILE=0,C_HAS_OVERFLOW=0,C_HAS_RD_DATA_COUNT=0,C_HAS_RD_RST=0,C_HAS_RST=1,C_HAS_SRST=0,C_HAS_UNDERFLOW=0,C_HAS_VALID=0,C_HAS_WR_ACK=0,C_HAS_WR_DATA_COUNT=0,C_HAS_WR_RST=0,C_IMPLEMENTATION_TYPE=2,C_INIT_WR_PNTR_VAL=0,C_MEMORY_TYPE=2,C_MIF_FILE_NAME=BlankString,C_OPTIMIZATION_MODE=0,C_OVERFLOW_LOW=0,C_PRELOAD_LATENCY=0,C_PRELOAD_REGS=1,C_PRIM_FIFO_TYPE=512x72,C_PROG_EMPTY_THRESH_ASSERT_VAL=4,C_PROG_EMPTY_THRESH_NEGATE_VAL=5,C_PROG_EMPTY_TYPE=0,C_PROG_FULL_THRESH_ASSERT_VAL=12,C_PROG_FULL_THRESH_NEGATE_VAL=11,C_PROG_FULL_TYPE=1,C_RD_DATA_COUNT_WIDTH=4,C_RD_DEPTH=16,C_RD_FREQ=1,C_RD_PNTR_WIDTH=4,C_UNDERFLOW_LOW=0,C_USE_DOUT_RST=1,C_USE_ECC=0,C_USE_EMBEDDED_REG=0,C_USE_PIPELINE_REG=0,C_POWER_SAVING_MODE=0,C_USE_FIFO16_FLAGS=0,C_USE_FWFT_DATA_COUNT=0,C_VALID_LOW=0,C_WR_ACK_LOW=0,C_WR_DATA_COUNT_WIDTH=4,C_WR_DEPTH=16,C_WR_FREQ=1,C_WR_PNTR_WIDTH=4,C_WR_RESPONSE_LATENCY=1,C_MSGON_VAL=1,C_ENABLE_RST_SYNC=1,C_ERROR_INJECTION_TYPE=0,C_SYNCHRONIZER_STAGE=2,C_INTERFACE_TYPE=0,C_AXI_TYPE=1,C_HAS_AXI_WR_CHANNEL=1,C_HAS_AXI_RD_CHANNEL=1,C_HAS_SLAVE_CE=0,C_HAS_MASTER_CE=0,C_ADD_NGC_CONSTRAINT=0,C_USE_COMMON_OVERFLOW=0,C_USE_COMMON_UNDERFLOW=0,C_USE_DEFAULT_SETTINGS=0,C_AXI_ID_WIDTH=1,C_AXI_ADDR_WIDTH=32,C_AXI_DATA_WIDTH=64,C_AXI_LEN_WIDTH=8,C_AXI_LOCK_WIDTH=1,C_HAS_AXI_ID=0,C_HAS_AXI_AWUSER=0,C_HAS_AXI_WUSER=0,C_HAS_AXI_BUSER=0,C_HAS_AXI_ARUSER=0,C_HAS_AXI_RUSER=0,C_AXI_ARUSER_WIDTH=1,C_AXI_AWUSER_WIDTH=1,C_AXI_WUSER_WIDTH=1,C_AXI_BUSER_WIDTH=1,C_AXI_RUSER_WIDTH=1,C_HAS_AXIS_TDATA=1,C_HAS_AXIS_TID=0,C_HAS_AXIS_TDEST=0,C_HAS_AXIS_TUSER=1,C_HAS_AXIS_TREADY=1,C_HAS_AXIS_TLAST=0,C_HAS_AXIS_TSTRB=0,C_HAS_AXIS_TKEEP=0,C_AXIS_TDATA_WIDTH=8,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=4,C_AXIS_TSTRB_WIDTH=1,C_AXIS_TKEEP_WIDTH=1,C_WACH_TYPE=0,C_WDCH_TYPE=0,C_WRCH_TYPE=0,C_RACH_TYPE=0,C_RDCH_TYPE=0,C_AXIS_TYPE=0,C_IMPLEMENTATION_TYPE_WACH=1,C_IMPLEMENTATION_TYPE_WDCH=1,C_IMPLEMENTATION_TYPE_WRCH=1,C_IMPLEMENTATION_TYPE_RACH=1,C_IMPLEMENTATION_TYPE_RDCH=1,C_IMPLEMENTATION_TYPE_AXIS=1,C_APPLICATION_TYPE_WACH=0,C_APPLICATION_TYPE_WDCH=0,C_APPLICATION_TYPE_WRCH=0,C_APPLICATION_TYPE_RACH=0,C_APPLICATION_TYPE_RDCH=0,C_APPLICATION_TYPE_AXIS=0,C_PRIM_FIFO_TYPE_WACH=512x36,C_PRIM_FIFO_TYPE_WDCH=1kx36,C_PRIM_FIFO_TYPE_WRCH=512x36,C_PRIM_FIFO_TYPE_RACH=512x36,C_PRIM_FIFO_TYPE_RDCH=1kx36,C_PRIM_FIFO_TYPE_AXIS=1kx18,C_USE_ECC_WACH=0,C_USE_ECC_WDCH=0,C_USE_ECC_WRCH=0,C_USE_ECC_RACH=0,C_USE_ECC_RDCH=0,C_USE_ECC_AXIS=0,C_ERROR_INJECTION_TYPE_WACH=0,C_ERROR_INJECTION_TYPE_WDCH=0,C_ERROR_INJECTION_TYPE_WRCH=0,C_ERROR_INJECTION_TYPE_RACH=0,C_ERROR_INJECTION_TYPE_RDCH=0,C_ERROR_INJECTION_TYPE_AXIS=0,C_DIN_WIDTH_WACH=32,C_DIN_WIDTH_WDCH=64,C_DIN_WIDTH_WRCH=2,C_DIN_WIDTH_RACH=32,C_DIN_WIDTH_RDCH=64,C_DIN_WIDTH_AXIS=1,C_WR_DEPTH_WACH=16,C_WR_DEPTH_WDCH=1024,C_WR_DEPTH_WRCH=16,C_WR_DEPTH_RACH=16,C_WR_DEPTH_RDCH=1024,C_WR_DEPTH_AXIS=1024,C_WR_PNTR_WIDTH_WACH=4,C_WR_PNTR_WIDTH_WDCH=10,C_WR_PNTR_WIDTH_WRCH=4,C_WR_PNTR_WIDTH_RACH=4,C_WR_PNTR_WIDTH_RDCH=10,C_WR_PNTR_WIDTH_AXIS=10,C_HAS_DATA_COUNTS_WACH=0,C_HAS_DATA_COUNTS_WDCH=0,C_HAS_DATA_COUNTS_WRCH=0,C_HAS_DATA_COUNTS_RACH=0,C_HAS_DATA_COUNTS_RDCH=0,C_HAS_DATA_COUNTS_AXIS=0,C_HAS_PROG_FLAGS_WACH=0,C_HAS_PROG_FLAGS_WDCH=0,C_HAS_PROG_FLAGS_WRCH=0,C_HAS_PROG_FLAGS_RACH=0,C_HAS_PROG_FLAGS_RDCH=0,C_HAS_PROG_FLAGS_AXIS=0,C_PROG_FULL_TYPE_WACH=0,C_PROG_FULL_TYPE_WDCH=0,C_PROG_FULL_TYPE_WRCH=0,C_PROG_FULL_TYPE_RACH=0,C_PROG_FULL_TYPE_RDCH=0,C_PROG_FULL_TYPE_AXIS=0,C_PROG_FULL_THRESH_ASSERT_VAL_WACH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_WDCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_WRCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_RACH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_RDCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_AXIS=1023,C_PROG_EMPTY_TYPE_WACH=0,C_PROG_EMPTY_TYPE_WDCH=0,C_PROG_EMPTY_TYPE_WRCH=0,C_PROG_EMPTY_TYPE_RACH=0,C_PROG_EMPTY_TYPE_RDCH=0,C_PROG_EMPTY_TYPE_AXIS=0,C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS=1022,C_REG_SLICE_MODE_WACH=0,C_REG_SLICE_MODE_WDCH=0,C_REG_SLICE_MODE_WRCH=0,C_REG_SLICE_MODE_RACH=0,C_REG_SLICE_MODE_RDCH=0,C_REG_SLICE_MODE_AXIS=0}" *) 
(* NotValidForBitStream *)
module fifo_async_103x16
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full);
  input rst;
  input wr_clk;
  input rd_clk;
  input [102:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  output [102:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;

  wire [102:0]din;
  wire [102:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

(* C_ADD_NGC_CONSTRAINT = "0" *) 
   (* C_APPLICATION_TYPE_AXIS = "0" *) 
   (* C_APPLICATION_TYPE_RACH = "0" *) 
   (* C_APPLICATION_TYPE_RDCH = "0" *) 
   (* C_APPLICATION_TYPE_WACH = "0" *) 
   (* C_APPLICATION_TYPE_WDCH = "0" *) 
   (* C_APPLICATION_TYPE_WRCH = "0" *) 
   (* C_AXIS_TDATA_WIDTH = "8" *) 
   (* C_AXIS_TDEST_WIDTH = "1" *) 
   (* C_AXIS_TID_WIDTH = "1" *) 
   (* C_AXIS_TKEEP_WIDTH = "1" *) 
   (* C_AXIS_TSTRB_WIDTH = "1" *) 
   (* C_AXIS_TUSER_WIDTH = "4" *) 
   (* C_AXIS_TYPE = "0" *) 
   (* C_AXI_ADDR_WIDTH = "32" *) 
   (* C_AXI_ARUSER_WIDTH = "1" *) 
   (* C_AXI_AWUSER_WIDTH = "1" *) 
   (* C_AXI_BUSER_WIDTH = "1" *) 
   (* C_AXI_DATA_WIDTH = "64" *) 
   (* C_AXI_ID_WIDTH = "1" *) 
   (* C_AXI_LEN_WIDTH = "8" *) 
   (* C_AXI_LOCK_WIDTH = "1" *) 
   (* C_AXI_RUSER_WIDTH = "1" *) 
   (* C_AXI_TYPE = "1" *) 
   (* C_AXI_WUSER_WIDTH = "1" *) 
   (* C_COMMON_CLOCK = "0" *) 
   (* C_COUNT_TYPE = "0" *) 
   (* C_DATA_COUNT_WIDTH = "4" *) 
   (* C_DEFAULT_VALUE = "BlankString" *) 
   (* C_DIN_WIDTH = "103" *) 
   (* C_DIN_WIDTH_AXIS = "1" *) 
   (* C_DIN_WIDTH_RACH = "32" *) 
   (* C_DIN_WIDTH_RDCH = "64" *) 
   (* C_DIN_WIDTH_WACH = "32" *) 
   (* C_DIN_WIDTH_WDCH = "64" *) 
   (* C_DIN_WIDTH_WRCH = "2" *) 
   (* C_DOUT_RST_VAL = "0" *) 
   (* C_DOUT_WIDTH = "103" *) 
   (* C_ENABLE_RLOCS = "0" *) 
   (* C_ENABLE_RST_SYNC = "1" *) 
   (* C_ERROR_INJECTION_TYPE = "0" *) 
   (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
   (* C_FAMILY = "zynq" *) 
   (* C_FULL_FLAGS_RST_VAL = "1" *) 
   (* C_HAS_ALMOST_EMPTY = "0" *) 
   (* C_HAS_ALMOST_FULL = "0" *) 
   (* C_HAS_AXIS_TDATA = "1" *) 
   (* C_HAS_AXIS_TDEST = "0" *) 
   (* C_HAS_AXIS_TID = "0" *) 
   (* C_HAS_AXIS_TKEEP = "0" *) 
   (* C_HAS_AXIS_TLAST = "0" *) 
   (* C_HAS_AXIS_TREADY = "1" *) 
   (* C_HAS_AXIS_TSTRB = "0" *) 
   (* C_HAS_AXIS_TUSER = "1" *) 
   (* C_HAS_AXI_ARUSER = "0" *) 
   (* C_HAS_AXI_AWUSER = "0" *) 
   (* C_HAS_AXI_BUSER = "0" *) 
   (* C_HAS_AXI_ID = "0" *) 
   (* C_HAS_AXI_RD_CHANNEL = "1" *) 
   (* C_HAS_AXI_RUSER = "0" *) 
   (* C_HAS_AXI_WR_CHANNEL = "1" *) 
   (* C_HAS_AXI_WUSER = "0" *) 
   (* C_HAS_BACKUP = "0" *) 
   (* C_HAS_DATA_COUNT = "0" *) 
   (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
   (* C_HAS_DATA_COUNTS_RACH = "0" *) 
   (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WACH = "0" *) 
   (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
   (* C_HAS_INT_CLK = "0" *) 
   (* C_HAS_MASTER_CE = "0" *) 
   (* C_HAS_MEMINIT_FILE = "0" *) 
   (* C_HAS_OVERFLOW = "0" *) 
   (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
   (* C_HAS_PROG_FLAGS_RACH = "0" *) 
   (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WACH = "0" *) 
   (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
   (* C_HAS_RD_DATA_COUNT = "0" *) 
   (* C_HAS_RD_RST = "0" *) 
   (* C_HAS_RST = "1" *) 
   (* C_HAS_SLAVE_CE = "0" *) 
   (* C_HAS_SRST = "0" *) 
   (* C_HAS_UNDERFLOW = "0" *) 
   (* C_HAS_VALID = "0" *) 
   (* C_HAS_WR_ACK = "0" *) 
   (* C_HAS_WR_DATA_COUNT = "0" *) 
   (* C_HAS_WR_RST = "0" *) 
   (* C_IMPLEMENTATION_TYPE = "2" *) 
   (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
   (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
   (* C_INIT_WR_PNTR_VAL = "0" *) 
   (* C_INTERFACE_TYPE = "0" *) 
   (* C_MEMORY_TYPE = "2" *) 
   (* C_MIF_FILE_NAME = "BlankString" *) 
   (* C_MSGON_VAL = "1" *) 
   (* C_OPTIMIZATION_MODE = "0" *) 
   (* C_OVERFLOW_LOW = "0" *) 
   (* C_POWER_SAVING_MODE = "0" *) 
   (* C_PRELOAD_LATENCY = "0" *) 
   (* C_PRELOAD_REGS = "1" *) 
   (* C_PRIM_FIFO_TYPE = "512x72" *) 
   (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
   (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
   (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
   (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
   (* C_PROG_EMPTY_TYPE = "0" *) 
   (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
   (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL = "12" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
   (* C_PROG_FULL_THRESH_NEGATE_VAL = "11" *) 
   (* C_PROG_FULL_TYPE = "1" *) 
   (* C_PROG_FULL_TYPE_AXIS = "0" *) 
   (* C_PROG_FULL_TYPE_RACH = "0" *) 
   (* C_PROG_FULL_TYPE_RDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WACH = "0" *) 
   (* C_PROG_FULL_TYPE_WDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WRCH = "0" *) 
   (* C_RACH_TYPE = "0" *) 
   (* C_RDCH_TYPE = "0" *) 
   (* C_RD_DATA_COUNT_WIDTH = "4" *) 
   (* C_RD_DEPTH = "16" *) 
   (* C_RD_FREQ = "1" *) 
   (* C_RD_PNTR_WIDTH = "4" *) 
   (* C_REG_SLICE_MODE_AXIS = "0" *) 
   (* C_REG_SLICE_MODE_RACH = "0" *) 
   (* C_REG_SLICE_MODE_RDCH = "0" *) 
   (* C_REG_SLICE_MODE_WACH = "0" *) 
   (* C_REG_SLICE_MODE_WDCH = "0" *) 
   (* C_REG_SLICE_MODE_WRCH = "0" *) 
   (* C_SYNCHRONIZER_STAGE = "2" *) 
   (* C_UNDERFLOW_LOW = "0" *) 
   (* C_USE_COMMON_OVERFLOW = "0" *) 
   (* C_USE_COMMON_UNDERFLOW = "0" *) 
   (* C_USE_DEFAULT_SETTINGS = "0" *) 
   (* C_USE_DOUT_RST = "1" *) 
   (* C_USE_ECC = "0" *) 
   (* C_USE_ECC_AXIS = "0" *) 
   (* C_USE_ECC_RACH = "0" *) 
   (* C_USE_ECC_RDCH = "0" *) 
   (* C_USE_ECC_WACH = "0" *) 
   (* C_USE_ECC_WDCH = "0" *) 
   (* C_USE_ECC_WRCH = "0" *) 
   (* C_USE_EMBEDDED_REG = "0" *) 
   (* C_USE_FIFO16_FLAGS = "0" *) 
   (* C_USE_FWFT_DATA_COUNT = "0" *) 
   (* C_USE_PIPELINE_REG = "0" *) 
   (* C_VALID_LOW = "0" *) 
   (* C_WACH_TYPE = "0" *) 
   (* C_WDCH_TYPE = "0" *) 
   (* C_WRCH_TYPE = "0" *) 
   (* C_WR_ACK_LOW = "0" *) 
   (* C_WR_DATA_COUNT_WIDTH = "4" *) 
   (* C_WR_DEPTH = "16" *) 
   (* C_WR_DEPTH_AXIS = "1024" *) 
   (* C_WR_DEPTH_RACH = "16" *) 
   (* C_WR_DEPTH_RDCH = "1024" *) 
   (* C_WR_DEPTH_WACH = "16" *) 
   (* C_WR_DEPTH_WDCH = "1024" *) 
   (* C_WR_DEPTH_WRCH = "16" *) 
   (* C_WR_FREQ = "1" *) 
   (* C_WR_PNTR_WIDTH = "4" *) 
   (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
   (* C_WR_PNTR_WIDTH_RACH = "4" *) 
   (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WACH = "4" *) 
   (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
   (* C_WR_RESPONSE_LATENCY = "1" *) 
   fifo_async_103x16_fifo_generator_v12_0__parameterized0 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module fifo_async_103x16_clk_x_pntrs
   (D,
    O1,
    O2,
    O3,
    O4,
    O5,
    Q,
    E,
    I1,
    I2,
    I3,
    wr_clk,
    I4,
    rd_clk,
    I5,
    I6);
  output [0:0]D;
  output [3:0]O1;
  output O2;
  output [3:0]O3;
  output O4;
  output O5;
  input [2:0]Q;
  input [0:0]E;
  input [2:0]I1;
  input [3:0]I2;
  input [3:0]I3;
  input wr_clk;
  input [0:0]I4;
  input rd_clk;
  input [0:0]I5;
  input [3:0]I6;

  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]I1;
  wire [3:0]I2;
  wire [3:0]I3;
  wire [0:0]I4;
  wire [0:0]I5;
  wire [3:0]I6;
  wire [3:0]O1;
  wire O2;
  wire [3:0]O3;
  wire O4;
  wire O5;
  wire [2:0]Q;
  wire \n_0_gdiff.diff_pntr_pad[3]_i_2 ;
  wire \n_0_gsync_stage[1].rd_stg_inst ;
  wire \n_0_gsync_stage[1].wr_stg_inst ;
  wire \n_0_gsync_stage[2].wr_stg_inst ;
  wire \n_1_gsync_stage[1].rd_stg_inst ;
  wire \n_1_gsync_stage[1].wr_stg_inst ;
  wire \n_1_gsync_stage[2].wr_stg_inst ;
  wire \n_2_gsync_stage[1].rd_stg_inst ;
  wire \n_2_gsync_stage[1].wr_stg_inst ;
  wire \n_2_gsync_stage[2].wr_stg_inst ;
  wire \n_3_gsync_stage[1].rd_stg_inst ;
  wire \n_3_gsync_stage[1].wr_stg_inst ;
  wire \n_3_gsync_stage[2].wr_stg_inst ;
  wire [3:0]p_0_in;
  wire [2:0]p_0_in2_out;
  wire rd_clk;
  wire [3:0]rd_pntr_gc;
  wire wr_clk;
  wire [3:0]wr_pntr_gc;

LUT6 #(
    .INIT(64'h9A5959599A9A9A59)) 
     \gdiff.diff_pntr_pad[3]_i_1 
       (.I0(\n_0_gdiff.diff_pntr_pad[3]_i_2 ),
        .I1(Q[1]),
        .I2(O1[1]),
        .I3(E),
        .I4(Q[0]),
        .I5(O1[0]),
        .O(D));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gdiff.diff_pntr_pad[3]_i_2 
       (.I0(O1[2]),
        .I1(Q[2]),
        .O(\n_0_gdiff.diff_pntr_pad[3]_i_2 ));
fifo_async_103x16_synchronizer_ff \gsync_stage[1].rd_stg_inst 
       (.I1(wr_pntr_gc),
        .I5(I5),
        .Q({\n_0_gsync_stage[1].rd_stg_inst ,\n_1_gsync_stage[1].rd_stg_inst ,\n_2_gsync_stage[1].rd_stg_inst ,\n_3_gsync_stage[1].rd_stg_inst }),
        .rd_clk(rd_clk));
fifo_async_103x16_synchronizer_ff_0 \gsync_stage[1].wr_stg_inst 
       (.I1(rd_pntr_gc),
        .I4(I4),
        .Q({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst }),
        .wr_clk(wr_clk));
fifo_async_103x16_synchronizer_ff_1 \gsync_stage[2].rd_stg_inst 
       (.D({\n_0_gsync_stage[1].rd_stg_inst ,\n_1_gsync_stage[1].rd_stg_inst ,\n_2_gsync_stage[1].rd_stg_inst ,\n_3_gsync_stage[1].rd_stg_inst }),
        .I5(I5),
        .p_0_in(p_0_in),
        .rd_clk(rd_clk));
fifo_async_103x16_synchronizer_ff_2 \gsync_stage[2].wr_stg_inst 
       (.D({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst }),
        .I4(I4),
        .O1({\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst }),
        .Q(\n_0_gsync_stage[2].wr_stg_inst ),
        .wr_clk(wr_clk));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_empty_fb_i_i_4
       (.I0(O3[2]),
        .I1(I1[2]),
        .I2(O3[1]),
        .I3(I1[1]),
        .I4(I1[0]),
        .I5(O3[0]),
        .O(O2));
LUT4 #(
    .INIT(16'h6FF6)) 
     ram_full_i_i_4
       (.I0(O1[1]),
        .I1(I2[1]),
        .I2(O1[0]),
        .I3(I2[0]),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h6FF6)) 
     ram_full_i_i_5
       (.I0(O1[3]),
        .I1(I2[3]),
        .I2(O1[2]),
        .I3(I2[2]),
        .O(O5));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_3_gsync_stage[2].wr_stg_inst ),
        .Q(O1[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_2_gsync_stage[2].wr_stg_inst ),
        .Q(O1[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_1_gsync_stage[2].wr_stg_inst ),
        .Q(O1[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_0_gsync_stage[2].wr_stg_inst ),
        .Q(O1[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(I6[0]),
        .Q(rd_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(I6[1]),
        .Q(rd_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(I6[2]),
        .Q(rd_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(I6[3]),
        .Q(rd_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in[0]),
        .Q(O3[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in[1]),
        .Q(O3[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in[2]),
        .Q(O3[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in[3]),
        .Q(O3[3]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[0]_i_1 
       (.I0(I3[0]),
        .I1(I3[1]),
        .O(p_0_in2_out[0]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[1]_i_1 
       (.I0(I3[1]),
        .I1(I3[2]),
        .O(p_0_in2_out[1]));
LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[2]_i_1 
       (.I0(I3[2]),
        .I1(I3[3]),
        .O(p_0_in2_out[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(p_0_in2_out[0]),
        .Q(wr_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(p_0_in2_out[1]),
        .Q(wr_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(p_0_in2_out[2]),
        .Q(wr_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(I3[3]),
        .Q(wr_pntr_gc[3]));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module fifo_async_103x16_dmem
   (Q,
    E,
    rd_clk,
    I1,
    wr_clk,
    I2,
    din,
    ADDRA,
    O3);
  output [102:0]Q;
  input [0:0]E;
  input rd_clk;
  input [0:0]I1;
  input wr_clk;
  input [0:0]I2;
  input [102:0]din;
  input [3:0]ADDRA;
  input [3:0]O3;

  wire [3:0]ADDRA;
  wire [0:0]E;
  wire [0:0]I1;
  wire [0:0]I2;
  wire [3:0]O3;
  wire [102:0]Q;
  wire [102:0]din;
  wire [102:0]p_0_out;
  wire rd_clk;
  wire wr_clk;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_15_102_102_DOA_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_102_102_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_102_102_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_102_102_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_66_71_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_72_77_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_78_83_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_84_89_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_90_95_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_96_101_DOD_UNCONNECTED;

RAM32M RAM_reg_0_15_0_5
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_102_102
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA({1'b0,din[102]}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({NLW_RAM_reg_0_15_102_102_DOA_UNCONNECTED[1],p_0_out[102]}),
        .DOB(NLW_RAM_reg_0_15_102_102_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_15_102_102_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_15_102_102_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_12_17
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[13:12]),
        .DIB(din[15:14]),
        .DIC(din[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[13:12]),
        .DOB(p_0_out[15:14]),
        .DOC(p_0_out[17:16]),
        .DOD(NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_18_23
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[19:18]),
        .DIB(din[21:20]),
        .DIC(din[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[19:18]),
        .DOB(p_0_out[21:20]),
        .DOC(p_0_out[23:22]),
        .DOD(NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_24_29
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[25:24]),
        .DIB(din[27:26]),
        .DIC(din[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[25:24]),
        .DOB(p_0_out[27:26]),
        .DOC(p_0_out[29:28]),
        .DOD(NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_30_35
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[31:30]),
        .DIB(din[33:32]),
        .DIC(din[35:34]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[31:30]),
        .DOB(p_0_out[33:32]),
        .DOC(p_0_out[35:34]),
        .DOD(NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_36_41
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[37:36]),
        .DIB(din[39:38]),
        .DIC(din[41:40]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[37:36]),
        .DOB(p_0_out[39:38]),
        .DOC(p_0_out[41:40]),
        .DOD(NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_42_47
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[43:42]),
        .DIB(din[45:44]),
        .DIC(din[47:46]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[43:42]),
        .DOB(p_0_out[45:44]),
        .DOC(p_0_out[47:46]),
        .DOD(NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_48_53
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[49:48]),
        .DIB(din[51:50]),
        .DIC(din[53:52]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[49:48]),
        .DOB(p_0_out[51:50]),
        .DOC(p_0_out[53:52]),
        .DOD(NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_54_59
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[55:54]),
        .DIB(din[57:56]),
        .DIC(din[59:58]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[55:54]),
        .DOB(p_0_out[57:56]),
        .DOC(p_0_out[59:58]),
        .DOD(NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_60_65
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[61:60]),
        .DIB(din[63:62]),
        .DIC(din[65:64]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[61:60]),
        .DOB(p_0_out[63:62]),
        .DOC(p_0_out[65:64]),
        .DOD(NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_66_71
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[67:66]),
        .DIB(din[69:68]),
        .DIC(din[71:70]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[67:66]),
        .DOB(p_0_out[69:68]),
        .DOC(p_0_out[71:70]),
        .DOD(NLW_RAM_reg_0_15_66_71_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_6_11
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[7:6]),
        .DIB(din[9:8]),
        .DIC(din[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(p_0_out[11:10]),
        .DOD(NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_72_77
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[73:72]),
        .DIB(din[75:74]),
        .DIC(din[77:76]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[73:72]),
        .DOB(p_0_out[75:74]),
        .DOC(p_0_out[77:76]),
        .DOD(NLW_RAM_reg_0_15_72_77_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_78_83
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[79:78]),
        .DIB(din[81:80]),
        .DIC(din[83:82]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[79:78]),
        .DOB(p_0_out[81:80]),
        .DOC(p_0_out[83:82]),
        .DOD(NLW_RAM_reg_0_15_78_83_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_84_89
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[85:84]),
        .DIB(din[87:86]),
        .DIC(din[89:88]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[85:84]),
        .DOB(p_0_out[87:86]),
        .DOC(p_0_out[89:88]),
        .DOD(NLW_RAM_reg_0_15_84_89_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_90_95
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[91:90]),
        .DIB(din[93:92]),
        .DIC(din[95:94]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[91:90]),
        .DOB(p_0_out[93:92]),
        .DOC(p_0_out[95:94]),
        .DOD(NLW_RAM_reg_0_15_90_95_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
RAM32M RAM_reg_0_15_96_101
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,O3}),
        .DIA(din[97:96]),
        .DIB(din[99:98]),
        .DIC(din[101:100]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[97:96]),
        .DOB(p_0_out[99:98]),
        .DOC(p_0_out[101:100]),
        .DOD(NLW_RAM_reg_0_15_96_101_DOD_UNCONNECTED[1:0]),
        .WCLK(wr_clk),
        .WE(I2));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[0]),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[100] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[100]),
        .Q(Q[100]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[101] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[101]),
        .Q(Q[101]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[102] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[102]),
        .Q(Q[102]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[10]),
        .Q(Q[10]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[11] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[11]),
        .Q(Q[11]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[12] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[12]),
        .Q(Q[12]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[13] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[13]),
        .Q(Q[13]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[14] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[14]),
        .Q(Q[14]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[15] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[15]),
        .Q(Q[15]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[16] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[16]),
        .Q(Q[16]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[17] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[17]),
        .Q(Q[17]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[18] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[18]),
        .Q(Q[18]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[19] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[19]),
        .Q(Q[19]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[20] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[20]),
        .Q(Q[20]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[21] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[21]),
        .Q(Q[21]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[22] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[22]),
        .Q(Q[22]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[23] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[23]),
        .Q(Q[23]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[24] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[24]),
        .Q(Q[24]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[25] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[25]),
        .Q(Q[25]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[26] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[26]),
        .Q(Q[26]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[27] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[27]),
        .Q(Q[27]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[28] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[28]),
        .Q(Q[28]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[29] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[29]),
        .Q(Q[29]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[2]),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[30] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[30]),
        .Q(Q[30]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[31] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[31]),
        .Q(Q[31]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[32] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[32]),
        .Q(Q[32]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[33] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[33]),
        .Q(Q[33]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[34] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[34]),
        .Q(Q[34]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[35] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[35]),
        .Q(Q[35]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[36] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[36]),
        .Q(Q[36]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[37] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[37]),
        .Q(Q[37]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[38] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[38]),
        .Q(Q[38]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[39] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[39]),
        .Q(Q[39]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[3]),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[40] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[40]),
        .Q(Q[40]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[41] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[41]),
        .Q(Q[41]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[42] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[42]),
        .Q(Q[42]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[43] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[43]),
        .Q(Q[43]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[44] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[44]),
        .Q(Q[44]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[45] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[45]),
        .Q(Q[45]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[46] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[46]),
        .Q(Q[46]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[47] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[47]),
        .Q(Q[47]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[48] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[48]),
        .Q(Q[48]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[49] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[49]),
        .Q(Q[49]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[4]),
        .Q(Q[4]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[50] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[50]),
        .Q(Q[50]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[51] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[51]),
        .Q(Q[51]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[52] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[52]),
        .Q(Q[52]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[53] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[53]),
        .Q(Q[53]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[54] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[54]),
        .Q(Q[54]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[55] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[55]),
        .Q(Q[55]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[56] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[56]),
        .Q(Q[56]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[57] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[57]),
        .Q(Q[57]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[58] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[58]),
        .Q(Q[58]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[59] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[59]),
        .Q(Q[59]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[5]),
        .Q(Q[5]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[60] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[60]),
        .Q(Q[60]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[61] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[61]),
        .Q(Q[61]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[62] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[62]),
        .Q(Q[62]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[63] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[63]),
        .Q(Q[63]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[64] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[64]),
        .Q(Q[64]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[65] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[65]),
        .Q(Q[65]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[66] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[66]),
        .Q(Q[66]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[67] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[67]),
        .Q(Q[67]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[68] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[68]),
        .Q(Q[68]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[69] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[69]),
        .Q(Q[69]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[6]),
        .Q(Q[6]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[70] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[70]),
        .Q(Q[70]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[71] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[71]),
        .Q(Q[71]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[72] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[72]),
        .Q(Q[72]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[73] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[73]),
        .Q(Q[73]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[74] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[74]),
        .Q(Q[74]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[75] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[75]),
        .Q(Q[75]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[76] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[76]),
        .Q(Q[76]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[77] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[77]),
        .Q(Q[77]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[78] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[78]),
        .Q(Q[78]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[79] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[79]),
        .Q(Q[79]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[7]),
        .Q(Q[7]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[80] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[80]),
        .Q(Q[80]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[81] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[81]),
        .Q(Q[81]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[82] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[82]),
        .Q(Q[82]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[83] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[83]),
        .Q(Q[83]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[84] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[84]),
        .Q(Q[84]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[85] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[85]),
        .Q(Q[85]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[86] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[86]),
        .Q(Q[86]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[87] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[87]),
        .Q(Q[87]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[88] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[88]),
        .Q(Q[88]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[89] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[89]),
        .Q(Q[89]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[8]),
        .Q(Q[8]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[90] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[90]),
        .Q(Q[90]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[91] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[91]),
        .Q(Q[91]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[92] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[92]),
        .Q(Q[92]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[93] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[93]),
        .Q(Q[93]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[94] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[94]),
        .Q(Q[94]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[95] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[95]),
        .Q(Q[95]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[96] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[96]),
        .Q(Q[96]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[97] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[97]),
        .Q(Q[97]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[98] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[98]),
        .Q(Q[98]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[99] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[99]),
        .Q(Q[99]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I1),
        .D(p_0_out[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module fifo_async_103x16_fifo_generator_ramfifo
   (dout,
    empty,
    full,
    prog_full,
    wr_en,
    rd_clk,
    wr_clk,
    rst,
    din,
    rd_en);
  output [102:0]dout;
  output empty;
  output full;
  output prog_full;
  input wr_en;
  input rd_clk;
  input wr_clk;
  input rst;
  input [102:0]din;
  input rd_en;

  wire RD_RST;
  wire RST;
  wire WR_RST;
  wire [102:0]din;
  wire [102:0]dout;
  wire empty;
  wire full;
  wire \n_0_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_10_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_11_gntv_or_sync_fifo.gcx.clkx ;
  wire n_2_rstblk;
  wire \n_5_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_7_gntv_or_sync_fifo.gl0.rd ;
  wire \n_8_gntv_or_sync_fifo.gl0.rd ;
  wire \n_9_gntv_or_sync_fifo.gl0.rd ;
  wire [3:0]p_0_out;
  wire p_15_out;
  wire [3:0]p_1_out;
  wire [3:0]p_20_out;
  wire p_3_out;
  wire [2:0]p_8_out;
  wire [3:0]p_9_out;
  wire prog_full;
  wire ram_rd_en_i;
  wire rd_clk;
  wire rd_en;
  wire [2:0]rd_pntr_plus1;
  wire [0:0]rd_rst_i;
  wire rst;
  wire rst_d2;
  wire rst_full_gen_i;
  wire wr_clk;
  wire wr_en;
  wire [3:0]wr_pntr_plus2;

fifo_async_103x16_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.D(\n_0_gntv_or_sync_fifo.gcx.clkx ),
        .E(p_3_out),
        .I1(rd_pntr_plus1),
        .I2(wr_pntr_plus2),
        .I3(p_9_out),
        .I4(RST),
        .I5(RD_RST),
        .I6({p_20_out[3],\n_7_gntv_or_sync_fifo.gl0.rd ,\n_8_gntv_or_sync_fifo.gl0.rd ,\n_9_gntv_or_sync_fifo.gl0.rd }),
        .O1(p_0_out),
        .O2(\n_5_gntv_or_sync_fifo.gcx.clkx ),
        .O3(p_1_out),
        .O4(\n_10_gntv_or_sync_fifo.gcx.clkx ),
        .O5(\n_11_gntv_or_sync_fifo.gcx.clkx ),
        .Q(p_8_out),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
fifo_async_103x16_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(p_15_out),
        .I1(\n_5_gntv_or_sync_fifo.gcx.clkx ),
        .I6({p_20_out[3],\n_7_gntv_or_sync_fifo.gl0.rd ,\n_8_gntv_or_sync_fifo.gl0.rd ,\n_9_gntv_or_sync_fifo.gl0.rd }),
        .O1(rd_pntr_plus1),
        .O2(ram_rd_en_i),
        .O3(p_1_out),
        .O4(p_20_out[2:0]),
        .Q(n_2_rstblk),
        .empty(empty),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
fifo_async_103x16_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.D(\n_0_gntv_or_sync_fifo.gcx.clkx ),
        .E(p_3_out),
        .I1(\n_10_gntv_or_sync_fifo.gcx.clkx ),
        .I2(\n_11_gntv_or_sync_fifo.gcx.clkx ),
        .I3(WR_RST),
        .O1(p_0_out),
        .O2(wr_pntr_plus2),
        .O3(p_9_out),
        .Q(p_8_out),
        .full(full),
        .prog_full(prog_full),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
fifo_async_103x16_memory \gntv_or_sync_fifo.mem 
       (.ADDRA(p_20_out),
        .E(ram_rd_en_i),
        .I1(p_3_out),
        .I2(p_15_out),
        .O3(p_9_out),
        .Q(rd_rst_i),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
fifo_async_103x16_reset_blk_ramfifo rstblk
       (.O1({WR_RST,RST}),
        .Q({n_2_rstblk,RD_RST,rd_rst_i}),
        .rd_clk(rd_clk),
        .rst(rst),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module fifo_async_103x16_fifo_generator_top
   (dout,
    empty,
    full,
    prog_full,
    wr_en,
    rd_clk,
    wr_clk,
    rst,
    din,
    rd_en);
  output [102:0]dout;
  output empty;
  output full;
  output prog_full;
  input wr_en;
  input rd_clk;
  input wr_clk;
  input rst;
  input [102:0]din;
  input rd_en;

  wire [102:0]din;
  wire [102:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;

fifo_async_103x16_fifo_generator_ramfifo \grf.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "4" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "103" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "103" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_FAMILY = "zynq" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_BACKUP = "0" *) (* C_HAS_DATA_COUNT = "0" *) 
(* C_HAS_INT_CLK = "0" *) (* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) 
(* C_HAS_RD_DATA_COUNT = "0" *) (* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_MEMORY_TYPE = "2" *) 
(* C_MIF_FILE_NAME = "BlankString" *) (* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) 
(* C_PRELOAD_LATENCY = "0" *) (* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x72" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "12" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "11" *) (* C_PROG_FULL_TYPE = "1" *) 
(* C_RD_DATA_COUNT_WIDTH = "4" *) (* C_RD_DEPTH = "16" *) (* C_RD_FREQ = "1" *) 
(* C_RD_PNTR_WIDTH = "4" *) (* C_UNDERFLOW_LOW = "0" *) (* C_USE_DOUT_RST = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_EMBEDDED_REG = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_POWER_SAVING_MODE = "0" *) (* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "4" *) 
(* C_WR_DEPTH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* C_MSGON_VAL = "1" *) (* C_ENABLE_RST_SYNC = "1" *) 
(* C_ERROR_INJECTION_TYPE = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_AXI_TYPE = "1" *) (* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) 
(* C_HAS_SLAVE_CE = "0" *) (* C_HAS_MASTER_CE = "0" *) (* C_ADD_NGC_CONSTRAINT = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_AXI_ID_WIDTH = "1" *) (* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_DATA_WIDTH = "64" *) 
(* C_AXI_LEN_WIDTH = "8" *) (* C_AXI_LOCK_WIDTH = "1" *) (* C_HAS_AXI_ID = "0" *) 
(* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_RUSER = "0" *) (* C_AXI_ARUSER_WIDTH = "1" *) 
(* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TID = "0" *) 
(* C_HAS_AXIS_TDEST = "0" *) (* C_HAS_AXIS_TUSER = "1" *) (* C_HAS_AXIS_TREADY = "1" *) 
(* C_HAS_AXIS_TLAST = "0" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) 
(* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) 
(* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) (* C_WRCH_TYPE = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_AXIS_TYPE = "0" *) 
(* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RACH = "1" *) (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
(* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) (* C_APPLICATION_TYPE_WRCH = "0" *) 
(* C_APPLICATION_TYPE_RACH = "0" *) (* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
(* C_USE_ECC_WACH = "0" *) (* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) (* C_DIN_WIDTH_AXIS = "1" *) 
(* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) (* C_WR_DEPTH_WRCH = "16" *) 
(* C_WR_DEPTH_RACH = "16" *) (* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
(* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
(* C_HAS_DATA_COUNTS_RACH = "0" *) (* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_WACH = "0" *) (* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) (* C_PROG_FULL_TYPE_AXIS = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) (* C_REG_SLICE_MODE_AXIS = "0" *) 
module fifo_async_103x16_fifo_generator_v12_0__parameterized0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [102:0]din;
  input wr_en;
  input rd_en;
  input [3:0]prog_empty_thresh;
  input [3:0]prog_empty_thresh_assert;
  input [3:0]prog_empty_thresh_negate;
  input [3:0]prog_full_thresh;
  input [3:0]prog_full_thresh_assert;
  input [3:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [102:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [3:0]data_count;
  output [3:0]rd_data_count;
  output [3:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_ar_injectdbiterr;
  wire axi_ar_injectsbiterr;
  wire [3:0]axi_ar_prog_empty_thresh;
  wire [3:0]axi_ar_prog_full_thresh;
  wire axi_aw_injectdbiterr;
  wire axi_aw_injectsbiterr;
  wire [3:0]axi_aw_prog_empty_thresh;
  wire [3:0]axi_aw_prog_full_thresh;
  wire axi_b_injectdbiterr;
  wire axi_b_injectsbiterr;
  wire [3:0]axi_b_prog_empty_thresh;
  wire [3:0]axi_b_prog_full_thresh;
  wire axi_r_injectdbiterr;
  wire axi_r_injectsbiterr;
  wire [9:0]axi_r_prog_empty_thresh;
  wire [9:0]axi_r_prog_full_thresh;
  wire axi_w_injectdbiterr;
  wire axi_w_injectsbiterr;
  wire [9:0]axi_w_prog_empty_thresh;
  wire [9:0]axi_w_prog_full_thresh;
  wire axis_injectdbiterr;
  wire axis_injectsbiterr;
  wire [9:0]axis_prog_empty_thresh;
  wire [9:0]axis_prog_full_thresh;
  wire backup;
  wire backup_marker;
  wire clk;
  wire [102:0]din;
  wire [102:0]dout;
  wire empty;
  wire full;
  wire injectdbiterr;
  wire injectsbiterr;
  wire int_clk;
  wire m_aclk;
  wire m_aclk_en;
  wire m_axi_arready;
  wire m_axi_awready;
  wire [0:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axis_tready;
  wire [3:0]prog_empty_thresh;
  wire [3:0]prog_empty_thresh_assert;
  wire [3:0]prog_empty_thresh_negate;
  wire prog_full;
  wire [3:0]prog_full_thresh;
  wire [3:0]prog_full_thresh_assert;
  wire [3:0]prog_full_thresh_negate;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire rst;
  wire s_aclk;
  wire s_aclk_en;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire [0:0]s_axi_wid;
  wire s_axi_wlast;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [7:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [0:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [0:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
fifo_async_103x16_fifo_generator_v12_0_synth inst_fifo_gen
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module fifo_async_103x16_fifo_generator_v12_0_synth
   (dout,
    empty,
    full,
    prog_full,
    wr_en,
    rd_clk,
    wr_clk,
    rst,
    din,
    rd_en);
  output [102:0]dout;
  output empty;
  output full;
  output prog_full;
  input wr_en;
  input rd_clk;
  input wr_clk;
  input rst;
  input [102:0]din;
  input rd_en;

  wire [102:0]din;
  wire [102:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;

fifo_async_103x16_fifo_generator_top \gconvfifo.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module fifo_async_103x16_memory
   (dout,
    E,
    rd_clk,
    Q,
    wr_clk,
    I1,
    din,
    ADDRA,
    O3,
    I2);
  output [102:0]dout;
  input [0:0]E;
  input rd_clk;
  input [0:0]Q;
  input wr_clk;
  input [0:0]I1;
  input [102:0]din;
  input [3:0]ADDRA;
  input [3:0]O3;
  input [0:0]I2;

  wire [3:0]ADDRA;
  wire [0:0]E;
  wire [0:0]I1;
  wire [0:0]I2;
  wire [3:0]O3;
  wire [0:0]Q;
  wire [102:0]din;
  wire [102:0]dout;
  wire [102:0]p_0_out;
  wire rd_clk;
  wire wr_clk;

fifo_async_103x16_dmem \gdm.dm 
       (.ADDRA(ADDRA),
        .E(E),
        .I1(Q),
        .I2(I1),
        .O3(O3),
        .Q(p_0_out),
        .din(din),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[0] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[0]),
        .Q(dout[0]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[100] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[100]),
        .Q(dout[100]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[101] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[101]),
        .Q(dout[101]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[102] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[102]),
        .Q(dout[102]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[10] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[10]),
        .Q(dout[10]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[11] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[11]),
        .Q(dout[11]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[12] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[12]),
        .Q(dout[12]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[13] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[13]),
        .Q(dout[13]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[14] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[14]),
        .Q(dout[14]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[15] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[15]),
        .Q(dout[15]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[16] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[16]),
        .Q(dout[16]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[17] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[17]),
        .Q(dout[17]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[18] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[18]),
        .Q(dout[18]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[19] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[19]),
        .Q(dout[19]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[1] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[1]),
        .Q(dout[1]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[20] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[20]),
        .Q(dout[20]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[21] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[21]),
        .Q(dout[21]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[22] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[22]),
        .Q(dout[22]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[23] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[23]),
        .Q(dout[23]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[24] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[24]),
        .Q(dout[24]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[25] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[25]),
        .Q(dout[25]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[26] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[26]),
        .Q(dout[26]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[27] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[27]),
        .Q(dout[27]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[28] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[28]),
        .Q(dout[28]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[29] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[29]),
        .Q(dout[29]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[2] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[2]),
        .Q(dout[2]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[30] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[30]),
        .Q(dout[30]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[31] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[31]),
        .Q(dout[31]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[32] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[32]),
        .Q(dout[32]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[33] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[33]),
        .Q(dout[33]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[34] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[34]),
        .Q(dout[34]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[35] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[35]),
        .Q(dout[35]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[36] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[36]),
        .Q(dout[36]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[37] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[37]),
        .Q(dout[37]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[38] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[38]),
        .Q(dout[38]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[39] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[39]),
        .Q(dout[39]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[3] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[3]),
        .Q(dout[3]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[40] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[40]),
        .Q(dout[40]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[41] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[41]),
        .Q(dout[41]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[42] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[42]),
        .Q(dout[42]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[43] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[43]),
        .Q(dout[43]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[44] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[44]),
        .Q(dout[44]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[45] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[45]),
        .Q(dout[45]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[46] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[46]),
        .Q(dout[46]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[47] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[47]),
        .Q(dout[47]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[48] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[48]),
        .Q(dout[48]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[49] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[49]),
        .Q(dout[49]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[4] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[4]),
        .Q(dout[4]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[50] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[50]),
        .Q(dout[50]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[51] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[51]),
        .Q(dout[51]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[52] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[52]),
        .Q(dout[52]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[53] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[53]),
        .Q(dout[53]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[54] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[54]),
        .Q(dout[54]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[55] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[55]),
        .Q(dout[55]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[56] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[56]),
        .Q(dout[56]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[57] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[57]),
        .Q(dout[57]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[58] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[58]),
        .Q(dout[58]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[59] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[59]),
        .Q(dout[59]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[5] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[5]),
        .Q(dout[5]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[60] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[60]),
        .Q(dout[60]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[61] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[61]),
        .Q(dout[61]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[62] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[62]),
        .Q(dout[62]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[63] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[63]),
        .Q(dout[63]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[64] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[64]),
        .Q(dout[64]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[65] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[65]),
        .Q(dout[65]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[66] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[66]),
        .Q(dout[66]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[67] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[67]),
        .Q(dout[67]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[68] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[68]),
        .Q(dout[68]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[69] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[69]),
        .Q(dout[69]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[6] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[6]),
        .Q(dout[6]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[70] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[70]),
        .Q(dout[70]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[71] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[71]),
        .Q(dout[71]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[72] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[72]),
        .Q(dout[72]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[73] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[73]),
        .Q(dout[73]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[74] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[74]),
        .Q(dout[74]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[75] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[75]),
        .Q(dout[75]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[76] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[76]),
        .Q(dout[76]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[77] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[77]),
        .Q(dout[77]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[78] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[78]),
        .Q(dout[78]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[79] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[79]),
        .Q(dout[79]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[7] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[7]),
        .Q(dout[7]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[80] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[80]),
        .Q(dout[80]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[81] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[81]),
        .Q(dout[81]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[82] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[82]),
        .Q(dout[82]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[83] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[83]),
        .Q(dout[83]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[84] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[84]),
        .Q(dout[84]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[85] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[85]),
        .Q(dout[85]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[86] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[86]),
        .Q(dout[86]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[87] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[87]),
        .Q(dout[87]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[88] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[88]),
        .Q(dout[88]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[89] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[89]),
        .Q(dout[89]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[8] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[8]),
        .Q(dout[8]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[90] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[90]),
        .Q(dout[90]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[91] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[91]),
        .Q(dout[91]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[92] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[92]),
        .Q(dout[92]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[93] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[93]),
        .Q(dout[93]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[94] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[94]),
        .Q(dout[94]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[95] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[95]),
        .Q(dout[95]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[96] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[96]),
        .Q(dout[96]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[97] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[97]),
        .Q(dout[97]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[98] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[98]),
        .Q(dout[98]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[99] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[99]),
        .Q(dout[99]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[9] 
       (.C(rd_clk),
        .CE(I2),
        .CLR(Q),
        .D(p_0_out[9]),
        .Q(dout[9]));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module fifo_async_103x16_rd_bin_cntr
   (Q,
    O1,
    I6,
    O2,
    I1,
    I2,
    O3,
    E,
    rd_clk,
    I3);
  output [3:0]Q;
  output O1;
  output [3:0]I6;
  output [2:0]O2;
  input I1;
  input I2;
  input [3:0]O3;
  input [0:0]E;
  input rd_clk;
  input [0:0]I3;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [3:0]I6;
  wire O1;
  wire [2:0]O2;
  wire [3:0]O3;
  wire [3:0]Q;
  wire n_0_ram_empty_fb_i_i_2;
  wire n_0_ram_empty_fb_i_i_3;
  wire [3:0]plusOp__0;
  wire rd_clk;

LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I3),
        .D(Q[0]),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I3),
        .D(Q[1]),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I3),
        .D(Q[2]),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I3),
        .D(Q[3]),
        .Q(I6[3]));
FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(I3),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__0[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__0[2]),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__0[3]),
        .Q(Q[3]));
LUT4 #(
    .INIT(16'hF888)) 
     ram_empty_fb_i_i_1
       (.I0(n_0_ram_empty_fb_i_i_2),
        .I1(n_0_ram_empty_fb_i_i_3),
        .I2(I1),
        .I3(I2),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h9009)) 
     ram_empty_fb_i_i_2
       (.I0(O2[2]),
        .I1(O3[2]),
        .I2(I6[3]),
        .I3(O3[3]),
        .O(n_0_ram_empty_fb_i_i_2));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h9009)) 
     ram_empty_fb_i_i_3
       (.I0(O2[0]),
        .I1(O3[0]),
        .I2(O2[1]),
        .I3(O3[1]),
        .O(n_0_ram_empty_fb_i_i_3));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[0]_i_1 
       (.I0(O2[0]),
        .I1(O2[1]),
        .O(I6[0]));
LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[1]_i_1 
       (.I0(O2[1]),
        .I1(O2[2]),
        .O(I6[1]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[2]_i_1 
       (.I0(O2[2]),
        .I1(I6[3]),
        .O(I6[2]));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module fifo_async_103x16_rd_fwft
   (empty,
    E,
    O1,
    O2,
    O4,
    rd_clk,
    Q,
    rd_en,
    p_18_out,
    O3,
    I1);
  output empty;
  output [0:0]E;
  output O1;
  output [0:0]O2;
  output [0:0]O4;
  input rd_clk;
  input [0:0]Q;
  input rd_en;
  input p_18_out;
  input [0:0]O3;
  input [0:0]I1;

  wire [0:0]E;
  wire [0:0]I1;
  wire O1;
  wire [0:0]O2;
  wire [0:0]O3;
  wire [0:0]O4;
  wire [0:0]Q;
  wire [0:0]curr_fwft_state;
  wire empty;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire \n_0_gpregsm1.curr_fwft_state_reg[1] ;
  wire [1:0]next_fwft_state;
  wire p_18_out;
  wire rd_clk;
  wire rd_en;

(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_fb_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q),
        .Q(empty_fwft_fb));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'hF540)) 
     empty_fwft_i_i_1
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(empty_fwft_fb),
        .O(empty_fwft_i0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q),
        .Q(empty));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h00DF)) 
     \gc0.count_d1[3]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hD0)) 
     \goreg_dm.dout_i[102]_i_1 
       (.I0(curr_fwft_state),
        .I1(rd_en),
        .I2(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h00DF)) 
     \gpr1.dout_i[102]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hAE)) 
     \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(curr_fwft_state),
        .I2(rd_en),
        .O(next_fwft_state[0]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h20FF)) 
     \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(next_fwft_state[1]));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(next_fwft_state[1]),
        .Q(\n_0_gpregsm1.curr_fwft_state_reg[1] ));
LUT6 #(
    .INIT(64'h00DF0000000000DF)) 
     ram_empty_fb_i_i_5
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .I4(O3),
        .I5(I1),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module fifo_async_103x16_rd_logic
   (empty,
    O1,
    E,
    O2,
    I6,
    O4,
    rd_clk,
    Q,
    rd_en,
    I1,
    O3);
  output empty;
  output [2:0]O1;
  output [0:0]E;
  output [0:0]O2;
  output [3:0]I6;
  output [2:0]O4;
  input rd_clk;
  input [0:0]Q;
  input rd_en;
  input I1;
  input [3:0]O3;

  wire [0:0]E;
  wire I1;
  wire [3:0]I6;
  wire [2:0]O1;
  wire [0:0]O2;
  wire [3:0]O3;
  wire [2:0]O4;
  wire [0:0]Q;
  wire empty;
  wire \n_2_gr1.rfwft ;
  wire n_4_rpntr;
  wire p_14_out;
  wire p_18_out;
  wire rd_clk;
  wire rd_en;
  wire [3:3]rd_pntr_plus1;

fifo_async_103x16_rd_fwft \gr1.rfwft 
       (.E(E),
        .I1(rd_pntr_plus1),
        .O1(\n_2_gr1.rfwft ),
        .O2(p_14_out),
        .O3(O3[3]),
        .O4(O2),
        .Q(Q),
        .empty(empty),
        .p_18_out(p_18_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
fifo_async_103x16_rd_status_flags_as \gras.rsts 
       (.I1(n_4_rpntr),
        .Q(Q),
        .p_18_out(p_18_out),
        .rd_clk(rd_clk));
fifo_async_103x16_rd_bin_cntr rpntr
       (.E(p_14_out),
        .I1(I1),
        .I2(\n_2_gr1.rfwft ),
        .I3(Q),
        .I6(I6),
        .O1(n_4_rpntr),
        .O2(O4),
        .O3(O3),
        .Q({rd_pntr_plus1,O1}),
        .rd_clk(rd_clk));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module fifo_async_103x16_rd_status_flags_as
   (p_18_out,
    I1,
    rd_clk,
    Q);
  output p_18_out;
  input I1;
  input rd_clk;
  input [0:0]Q;

  wire I1;
  wire [0:0]Q;
  wire p_18_out;
  wire rd_clk;

(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(I1),
        .PRE(Q),
        .Q(p_18_out));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module fifo_async_103x16_reset_blk_ramfifo
   (rst_d2,
    rst_full_gen_i,
    Q,
    O1,
    wr_clk,
    rst,
    rd_clk);
  output rst_d2;
  output rst_full_gen_i;
  output [2:0]Q;
  output [1:0]O1;
  input wr_clk;
  input rst;
  input rd_clk;

  wire [1:0]O1;
  wire [2:0]Q;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ;
  wire rd_clk;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst;
  wire rst_d1;
  wire rst_d2;
  wire rst_d3;
  wire rst_full_gen_i;
  wire wr_clk;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

FDCE #(
    .INIT(1'b0)) 
     \grstd1.grst_full.grst_f.RST_FULL_GEN_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst),
        .D(rst_d3),
        .Q(rst_full_gen_i));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_d1));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst),
        .Q(rst_d2));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(rst),
        .Q(rst_d3));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(rd_clk),
        .CE(rd_rst_asreg_d1),
        .D(1'b0),
        .PRE(rst),
        .Q(rd_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[1]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(wr_clk),
        .CE(wr_rst_asreg_d1),
        .D(1'b0),
        .PRE(rst),
        .Q(wr_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(O1[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(O1[1]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module fifo_async_103x16_synchronizer_ff
   (Q,
    I1,
    rd_clk,
    I5);
  output [3:0]Q;
  input [3:0]I1;
  input rd_clk;
  input [0:0]I5;

  wire [3:0]I1;
  wire [0:0]I5;
  wire [3:0]Q;
  wire rd_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module fifo_async_103x16_synchronizer_ff_0
   (Q,
    I1,
    wr_clk,
    I4);
  output [3:0]Q;
  input [3:0]I1;
  input wr_clk;
  input [0:0]I4;

  wire [3:0]I1;
  wire [0:0]I4;
  wire [3:0]Q;
  wire wr_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(I1[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module fifo_async_103x16_synchronizer_ff_1
   (p_0_in,
    D,
    rd_clk,
    I5);
  output [3:0]p_0_in;
  input [3:0]D;
  input rd_clk;
  input [0:0]I5;

  wire [3:0]D;
  wire [0:0]I5;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire [3:0]p_0_in;
  wire rd_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[3]),
        .Q(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[0]_i_1 
       (.I0(\n_0_Q_reg_reg[1] ),
        .I1(\n_0_Q_reg_reg[0] ),
        .I2(p_0_in[3]),
        .I3(\n_0_Q_reg_reg[2] ),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[1]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(p_0_in[3]),
        .O(p_0_in[1]));
LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[2]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(p_0_in[3]),
        .O(p_0_in[2]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module fifo_async_103x16_synchronizer_ff_2
   (Q,
    O1,
    D,
    wr_clk,
    I4);
  output [0:0]Q;
  output [2:0]O1;
  input [3:0]D;
  input wr_clk;
  input [0:0]I4;

  wire [3:0]D;
  wire [0:0]I4;
  wire [2:0]O1;
  wire [0:0]Q;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire wr_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I4),
        .D(D[3]),
        .Q(Q));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[0]_i_1 
       (.I0(\n_0_Q_reg_reg[1] ),
        .I1(\n_0_Q_reg_reg[0] ),
        .I2(Q),
        .I3(\n_0_Q_reg_reg[2] ),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[1]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(Q),
        .O(O1[1]));
LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[2]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(Q),
        .O(O1[2]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module fifo_async_103x16_wr_bin_cntr
   (Q,
    O2,
    D,
    ram_full_i,
    O3,
    wr_en,
    p_1_out,
    O1,
    E,
    I1,
    I2,
    rst_full_gen_i,
    wr_clk,
    I3);
  output [2:0]Q;
  output [3:0]O2;
  output [1:0]D;
  output ram_full_i;
  output [3:0]O3;
  input wr_en;
  input p_1_out;
  input [3:0]O1;
  input [0:0]E;
  input I1;
  input I2;
  input rst_full_gen_i;
  input wr_clk;
  input [0:0]I3;

  wire [1:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [3:0]O1;
  wire [3:0]O2;
  wire [3:0]O3;
  wire [2:0]Q;
  wire \n_0_gdiff.diff_pntr_pad[4]_i_2 ;
  wire \n_0_gdiff.diff_pntr_pad[4]_i_3 ;
  wire n_0_ram_full_i_i_2;
  wire n_0_ram_full_i_i_3;
  wire p_1_out;
  wire [3:3]p_8_out;
  wire [3:0]plusOp__1;
  wire ram_full_i;
  wire rst_full_gen_i;
  wire wr_clk;
  wire wr_en;

LUT6 #(
    .INIT(64'h9699999966669699)) 
     \gdiff.diff_pntr_pad[2]_i_1 
       (.I0(Q[1]),
        .I1(O1[1]),
        .I2(p_1_out),
        .I3(wr_en),
        .I4(Q[0]),
        .I5(O1[0]),
        .O(D[0]));
LUT6 #(
    .INIT(64'h9999669969996669)) 
     \gdiff.diff_pntr_pad[4]_i_1 
       (.I0(p_8_out),
        .I1(O1[3]),
        .I2(\n_0_gdiff.diff_pntr_pad[4]_i_2 ),
        .I3(Q[2]),
        .I4(O1[2]),
        .I5(\n_0_gdiff.diff_pntr_pad[4]_i_3 ),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \gdiff.diff_pntr_pad[4]_i_2 
       (.I0(Q[1]),
        .I1(O1[1]),
        .O(\n_0_gdiff.diff_pntr_pad[4]_i_2 ));
LUT6 #(
    .INIT(64'hDD0DFF0F0000DD0D)) 
     \gdiff.diff_pntr_pad[4]_i_3 
       (.I0(wr_en),
        .I1(p_1_out),
        .I2(Q[1]),
        .I3(O1[1]),
        .I4(Q[0]),
        .I5(O1[0]),
        .O(\n_0_gdiff.diff_pntr_pad[4]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \gic0.gc0.count[0]_i_1 
       (.I0(O2[0]),
        .O(plusOp__1[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gic0.gc0.count[1]_i_1 
       (.I0(O2[0]),
        .I1(O2[1]),
        .O(plusOp__1[1]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \gic0.gc0.count[2]_i_1 
       (.I0(O2[2]),
        .I1(O2[1]),
        .I2(O2[0]),
        .O(plusOp__1[2]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \gic0.gc0.count[3]_i_1 
       (.I0(O2[3]),
        .I1(O2[0]),
        .I2(O2[1]),
        .I3(O2[2]),
        .O(plusOp__1[3]));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(O2[0]),
        .PRE(I3),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(I3),
        .D(O2[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(I3),
        .D(O2[2]),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(I3),
        .D(O2[3]),
        .Q(p_8_out));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(I3),
        .D(Q[0]),
        .Q(O3[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(I3),
        .D(Q[1]),
        .Q(O3[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(I3),
        .D(Q[2]),
        .Q(O3[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(I3),
        .D(p_8_out),
        .Q(O3[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__1[0]),
        .Q(O2[0]));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__1[1]),
        .PRE(I3),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__1[2]),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__1[3]),
        .Q(O2[3]));
LUT6 #(
    .INIT(64'h00000000111111F1)) 
     ram_full_i_i_1
       (.I0(n_0_ram_full_i_i_2),
        .I1(n_0_ram_full_i_i_3),
        .I2(E),
        .I3(I1),
        .I4(I2),
        .I5(rst_full_gen_i),
        .O(ram_full_i));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'h6FF6)) 
     ram_full_i_i_2
       (.I0(Q[1]),
        .I1(O1[1]),
        .I2(Q[2]),
        .I3(O1[2]),
        .O(n_0_ram_full_i_i_2));
LUT4 #(
    .INIT(16'h6FF6)) 
     ram_full_i_i_3
       (.I0(p_8_out),
        .I1(O1[3]),
        .I2(O1[0]),
        .I3(Q[0]),
        .O(n_0_ram_full_i_i_3));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module fifo_async_103x16_wr_logic
   (full,
    prog_full,
    Q,
    O2,
    E,
    O3,
    wr_clk,
    rst_d2,
    wr_en,
    O1,
    I1,
    I2,
    rst_full_gen_i,
    I3,
    D);
  output full;
  output prog_full;
  output [2:0]Q;
  output [3:0]O2;
  output [0:0]E;
  output [3:0]O3;
  input wr_clk;
  input rst_d2;
  input wr_en;
  input [3:0]O1;
  input I1;
  input I2;
  input rst_full_gen_i;
  input [0:0]I3;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [3:0]O1;
  wire [3:0]O2;
  wire [3:0]O3;
  wire [2:0]Q;
  wire full;
  wire p_1_out;
  wire [4:2]plusOp;
  wire prog_full;
  wire ram_full_i;
  wire rst_d2;
  wire rst_full_gen_i;
  wire wr_clk;
  wire wr_en;

fifo_async_103x16_wr_pf_as \gwas.gpf.wrpf 
       (.D({plusOp[4],D,plusOp[2]}),
        .I3(I3),
        .p_1_out(p_1_out),
        .prog_full(prog_full),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .wr_clk(wr_clk));
fifo_async_103x16_wr_status_flags_as \gwas.wsts 
       (.E(E),
        .full(full),
        .p_1_out(p_1_out),
        .ram_full_i(ram_full_i),
        .rst_d2(rst_d2),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
fifo_async_103x16_wr_bin_cntr wpntr
       (.D({plusOp[4],plusOp[2]}),
        .E(E),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .p_1_out(p_1_out),
        .ram_full_i(ram_full_i),
        .rst_full_gen_i(rst_full_gen_i),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "wr_pf_as" *) 
module fifo_async_103x16_wr_pf_as
   (prog_full,
    wr_clk,
    rst_d2,
    rst_full_gen_i,
    p_1_out,
    D,
    I3);
  output prog_full;
  input wr_clk;
  input rst_d2;
  input rst_full_gen_i;
  input p_1_out;
  input [2:0]D;
  input [0:0]I3;

  wire [2:0]D;
  wire [0:0]I3;
  wire [3:1]diff_pntr;
  wire \n_0_gpf1.prog_full_i_i_1 ;
  wire p_1_out;
  wire prog_full;
  wire rst_d2;
  wire rst_full_gen_i;
  wire wr_clk;

FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[0]),
        .Q(diff_pntr[1]));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[1]),
        .Q(diff_pntr[2]));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[2]),
        .Q(diff_pntr[3]));
LUT6 #(
    .INIT(64'h00FF00E0000000E0)) 
     \gpf1.prog_full_i_i_1 
       (.I0(diff_pntr[1]),
        .I1(diff_pntr[2]),
        .I2(diff_pntr[3]),
        .I3(rst_full_gen_i),
        .I4(p_1_out),
        .I5(prog_full),
        .O(\n_0_gpf1.prog_full_i_i_1 ));
FDPE #(
    .INIT(1'b1)) 
     \gpf1.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\n_0_gpf1.prog_full_i_i_1 ),
        .PRE(rst_d2),
        .Q(prog_full));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module fifo_async_103x16_wr_status_flags_as
   (full,
    p_1_out,
    E,
    ram_full_i,
    wr_clk,
    rst_d2,
    wr_en);
  output full;
  output p_1_out;
  output [0:0]E;
  input ram_full_i;
  input wr_clk;
  input rst_d2;
  input wr_en;

  wire [0:0]E;
  wire full;
  wire p_1_out;
  wire ram_full_i;
  wire rst_d2;
  wire wr_clk;
  wire wr_en;

LUT2 #(
    .INIT(4'h2)) 
     \gic0.gc0.count_d1[3]_i_1 
       (.I0(wr_en),
        .I1(p_1_out),
        .O(E));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(p_1_out));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(full));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
