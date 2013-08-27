`define AXI_COORD       12'h810 
`define VIRT_EXT_MEM     4'h8
`define PHYS_EXT_MEM     4'h3
`define CHIP_CORE0_ID   12'h808    //core ID of chip's core 0
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
`define VERSION_VALUE   32'h13080601 //Firmware version YY_MM_DD_COUNT
