/*
  File: version.v
 
  This file is part of the Parallella Project

  Copyright (C) 2013 Adapteva, Inc.
  Contributed by Andreas Olofsson <support@adapteva.com>

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

// This version info is local to each project.

// Version register is {8'Generation, 8'Platform, 8'Type, 8'Version}
//  Please see versions.txt in the top-level fpga directory.
// Generation 1 - Parallella-I
// Platform   1 - E16, 7Z020, GPIO
// Type       3 - Headless, 48 singled-ended GPIOs from EMIO

// Version    1 - First E16/Type3 4/22/14, FH
//            2 - Added cclk gating on e-reset, tx-disable, 5/5/14, FH

`define VERSION_VALUE   {8'h01, 8'd01, 8'd03, 8'd02}

// Define one of the following for target FPGA
//`define TARGET_7Z010 1
`define TARGET_7Z020 1

// Define one of the following for target processor
`define TARGET_E16 1
//`define TARGET_E64 1

// Define included features
//`define FEATURE_HDMI  1
`define FEATURE_GPIO_EMIO 1
//`define FEATURE_GPIO_DIFF 1
`define FEATURE_CCLK_DIV 1

// Set IOSTANDARD for GPIO pins
`define IOSTD_GPIO       "LVCMOS25"
//`define IOSTD_GPIO       "LVDS_25"
