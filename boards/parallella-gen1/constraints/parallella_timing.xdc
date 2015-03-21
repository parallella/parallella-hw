###############################################################
##  Timing constraints for the Parallella-I board
##  3/12/14 F. Huettig
##  Updated to XDC format 7/1/14 F. Huettig
####
## This file defines timing constraints for the Parallella-I
##   and Zynq 7010 or 7020.  
## Pin constraints are defined elsewhere.
###############################################################

#######################
# Internal constraints
#######################
# TX at I/O is TX -FROM- the Epiphany, RX into the FPGA
create_clock -name TXO_LCLK_P -period 6.660 [get_ports TXO_LCLK_P]
set_input_jitter TXO_LCLK_P 0.100

create_clock -name CLK_OUT2 -period 3.330 [get_pins parallella/ewrapper_link_top/io_clock_gen/clkout2_buf/O]
set_input_jitter CLK_OUT2 0.100

create_clock -name CLK_OUT4 -period 3.330 [get_pins parallella/ewrapper_link_top/io_clock_gen/clkout4_buf/O]
set_input_jitter CLK_OUT4 0.100

# The following cross clock domain false path constraints can be uncommented in order to mimic ucf constraints behavior (see message at the beginning of this file)
set_false_path -from [get_clocks TXO_LCLK_P] -to [get_clocks [list CLK_OUT2 CLK_OUT4 FCLK_CLK0 FCLK_CLK3]]
set_false_path -from [get_clocks CLK_OUT2] -to [get_clocks [list TXO_LCLK_P CLK_OUT4 FCLK_CLK0 FCLK_CLK3]]
set_false_path -from [get_clocks CLK_OUT4] -to [get_clocks [list TXO_LCLK_P CLK_OUT2 FCLK_CLK0 FCLK_CLK3]]
# set_false_path -from [get_clocks FCLK_CLK0] -to [get_clocks [list TXO_LCLK_P CLK_OUT2 CLK_OUT4 FCLK_CLK3]]
# set_false_path -from [get_clocks FCLK_CLK3] -to [get_clocks [list TXO_LCLK_P CLK_OUT2 CLK_OUT4 FCLK_CLK0]]

#INST "rst_sync*" ASYNC_REG = TRUE;
#PIN "CLK_RESET" TIG;
#PIN "IO_RESET" TIG;

# These constraints will be forwarded from the PS module, no need to duplicate them here.
#NET "system_stub/system_i/processing_system7_0/FCLK_CLK3" TNM_NET = clk_fpga_3;
#TIMESPEC TS_clk_fpga_3 = PERIOD clk_fpga_3 40000 kHz;

#NET "system_stub/system_i/processing_system7_0/FCLK_CLK2" TNM_NET = clk_fpga_2;
#TIMESPEC TS_clk_fpga_2 = PERIOD clk_fpga_2 200000 kHz;

#NET "system_stub/system_i/processing_system7_0/FCLK_CLK1" TNM_NET = clk_fpga_1;
#TIMESPEC TS_clk_fpga_1 = PERIOD clk_fpga_1 200000 kHz;

#NET "system_stub/system_i/processing_system7_0/FCLK_CLK0" TNM_NET = clk_fpga_0;
#TIMESPEC TS_clk_fpga_0 = PERIOD clk_fpga_0 100000 kHz;
