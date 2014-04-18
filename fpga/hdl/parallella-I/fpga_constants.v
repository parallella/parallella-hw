/*
  File: fpga_constants.v
 
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

`include "version.v"

`ifdef TARGET_E16
 `define AXI_COORD       12'h810
`elsif TARGET_E64
 `define AXI_COORD       12'h820
`endif

`define IOSTD_ELINK      "PPDS_25"
  
`define VIRT_EXT_MEM     4'h8
`define CHIP_CORE0_ID   12'h808    //core ID of chip's core 0
`define PHYS_EXT_MEM     4'h3
`define MM_MMR           4'b1111   //bits 19:16
`define MM_FPGA          4'b1111   //bits 11:8
`define REG_SYSCFG       6'h00 //bits 7:2
`define REG_RESET        6'h01 
`define REG_VERSION      6'h02
`define REG_FILTERL      6'h03
`define REG_FILTERH      6'h04
`define REG_FILTERC      6'h05
`define REG_TIMEOUT      6'h06
`define TIMEOUT_DEFAULT 32'h04000000 //Default (1 - 7 sec)

