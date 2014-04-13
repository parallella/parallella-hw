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

// Version register is {8'Reserved, 8'Revision, 8'Type, 8'Platform}
//  Please see versions.txt in the top-level fpga directory.
// Platform 5   - Parallella-I, E64, 7Z020, GPIO
// Type     2   - Headless, GPIO unused
`define VERSION_VALUE   {8'h00, 8'd01, 8'd02, 8'd05}

// Define one of the following for target FPGA
//`define TARGET_7Z010 1
`define TARGET_7Z020 1

// Define one of the following for target processor
//`define TARGET_E16 1
`define TARGET_E64 1

// Define included features
//`define FEATURE_HDMI  1
