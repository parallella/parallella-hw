// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3.1 (lin64) Build 1056140 Thu Oct 30 16:30:39 MDT 2014
// Date        : Wed Apr  8 23:17:41 2015
// Host        : parallella running 64-bit Ubuntu 14.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/aolofsson/Work_all/parallella-hw/fpga/ip/xilinx/fifo_async_103x32/fifo_async_103x32_stub.v
// Design      : fifo_async_103x32
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v12_0,Vivado 2014.3.1" *)
module fifo_async_103x32(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty, prog_full)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[102:0],wr_en,rd_en,dout[102:0],full,empty,prog_full" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [102:0]din;
  input wr_en;
  input rd_en;
  output [102:0]dout;
  output full;
  output empty;
  output prog_full;
endmodule
