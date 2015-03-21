###############################################################
##  Location constraints for the Parallella-I board
##  3/12/14 F. Huettig
##  Updated to XDC format 7/1/14 F. Huettig
####
## This file defines pin locations & standards for the Parallella-I
##   and Zynq 7010 or 7020.  See the file parallella_z7020_loc.ucf
##    for pins added with the 7020.
## Timing constraints are defined elsewhere.
###############################################################

#  NOTE:  IOSTANDARDS for e-link and gpio have been removed
#    from these files.  IOSTANDARDS are to be set in the 
#    verilog instead.

#######################
# HDMI constraints
#######################

set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_*}]

set_property PACKAGE_PIN Y18 [get_ports {HDMI_D[8]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[8]}]
set_property PACKAGE_PIN W18 [get_ports {HDMI_D[9]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[9]}]
set_property PACKAGE_PIN V18 [get_ports {HDMI_D[10]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[10]}]
set_property PACKAGE_PIN V15 [get_ports {HDMI_D[11]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[11]}]
set_property PACKAGE_PIN R18 [get_ports {HDMI_D[12]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[12]}]
set_property PACKAGE_PIN P18 [get_ports {HDMI_D[13]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[13]}]
set_property PACKAGE_PIN Y19 [get_ports {HDMI_D[14]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[14]}]
set_property PACKAGE_PIN W19 [get_ports {HDMI_D[15]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[15]}]
set_property PACKAGE_PIN W15 [get_ports {HDMI_D[16]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[16]}]
set_property PACKAGE_PIN T19 [get_ports {HDMI_D[17]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[17]}]
set_property PACKAGE_PIN R19 [get_ports {HDMI_D[18]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[18]}]
set_property PACKAGE_PIN P19 [get_ports {HDMI_D[19]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[19]}]
set_property PACKAGE_PIN W20 [get_ports {HDMI_D[20]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[20]}]
set_property PACKAGE_PIN V20 [get_ports {HDMI_D[21]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[21]}]
set_property PACKAGE_PIN U20 [get_ports {HDMI_D[22]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[22]}]
set_property PACKAGE_PIN T20 [get_ports {HDMI_D[23]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[23]}]
set_property PACKAGE_PIN R17 [get_ports HDMI_CLK]
#set_property IOSTANDARD LVCMOS25 [get_ports HDMI_CLK]
set_property PACKAGE_PIN V17 [get_ports HDMI_VSYNC]
#set_property IOSTANDARD LVCMOS25 [get_ports HDMI_VSYNC]
set_property PACKAGE_PIN T17 [get_ports HDMI_HSYNC]
#set_property IOSTANDARD LVCMOS25 [get_ports HDMI_HSYNC]
set_property PACKAGE_PIN Y17 [get_ports HDMI_DE]
#set_property IOSTANDARD LVCMOS25 [get_ports HDMI_DE]
set_property PACKAGE_PIN Y16 [get_ports HDMI_SPDIF]
#set_property IOSTANDARD LVCMOS25 [get_ports HDMI_SPDIF]
set_property PACKAGE_PIN P20 [get_ports HDMI_INT]
#set_property IOSTANDARD LVCMOS25 [get_ports HDMI_INT]

#####################
# I2C
#####################
set_property PACKAGE_PIN N18 [get_ports PS_I2C_SCL]
set_property IOSTANDARD LVCMOS25 [get_ports PS_I2C_SCL]
set_property PACKAGE_PIN N17 [get_ports PS_I2C_SDA]
set_property IOSTANDARD LVCMOS25 [get_ports PS_I2C_SDA]

#####################
# MISC
#####################
set_property PACKAGE_PIN R16 [get_ports TURBO_MODE]
set_property IOSTANDARD LVCMOS25 [get_ports TURBO_MODE]
set_property PACKAGE_PIN N20 [get_ports PROG_IO]
set_property IOSTANDARD LVCMOS25 [get_ports PROG_IO]

#####################
# Epiphany Interface
#####################
set_property PACKAGE_PIN H16 [get_ports RXI_CCLK_P]
set_property PACKAGE_PIN H17 [get_ports RXI_CCLK_N]
set_property PACKAGE_PIN G14 [get_ports DSP_RESET_N]
set_property IOSTANDARD LVCMOS25 [get_ports DSP_RESET_N]
set_property DRIVE 4 [get_ports DSP_RESET_N]
set_property PACKAGE_PIN F16 [get_ports RXI_LCLK_P]
set_property PACKAGE_PIN F17 [get_ports RXI_LCLK_N]
set_property PACKAGE_PIN B19 [get_ports {RXI_DATA_P[0]}]
set_property PACKAGE_PIN A20 [get_ports {RXI_DATA_N[0]}]
set_property PACKAGE_PIN C20 [get_ports {RXI_DATA_P[1]}]
set_property PACKAGE_PIN B20 [get_ports {RXI_DATA_N[1]}]
set_property PACKAGE_PIN D19 [get_ports {RXI_DATA_P[2]}]
set_property PACKAGE_PIN D20 [get_ports {RXI_DATA_N[2]}]
set_property PACKAGE_PIN E18 [get_ports {RXI_DATA_P[3]}]
set_property PACKAGE_PIN E19 [get_ports {RXI_DATA_N[3]}]
set_property PACKAGE_PIN E17 [get_ports {RXI_DATA_P[4]}]
set_property PACKAGE_PIN D18 [get_ports {RXI_DATA_N[4]}]
set_property PACKAGE_PIN F19 [get_ports {RXI_DATA_P[5]}]
set_property PACKAGE_PIN F20 [get_ports {RXI_DATA_N[5]}]
set_property PACKAGE_PIN G17 [get_ports {RXI_DATA_P[6]}]
set_property PACKAGE_PIN G18 [get_ports {RXI_DATA_N[6]}]
set_property PACKAGE_PIN G19 [get_ports {RXI_DATA_P[7]}]
set_property PACKAGE_PIN G20 [get_ports {RXI_DATA_N[7]}]
set_property PACKAGE_PIN H15 [get_ports RXI_FRAME_P]
set_property PACKAGE_PIN G15 [get_ports RXI_FRAME_N]
set_property PACKAGE_PIN J15 [get_ports RXO_RD_WAIT]
set_property IOSTANDARD LVCMOS25 [get_ports RXO_RD_WAIT]
#NET "RXO_RD_WAIT_N" LOC = "H17";
set_property PACKAGE_PIN J18 [get_ports RXO_WR_WAIT_P]
set_property PACKAGE_PIN H18 [get_ports RXO_WR_WAIT_N]
set_property PACKAGE_PIN K17 [get_ports TXO_LCLK_P]
set_property PACKAGE_PIN K18 [get_ports TXO_LCLK_N]
set_property PACKAGE_PIN K19 [get_ports {TXO_DATA_P[0]}]
set_property PACKAGE_PIN J19 [get_ports {TXO_DATA_N[0]}]
set_property PACKAGE_PIN L14 [get_ports {TXO_DATA_P[1]}]
set_property PACKAGE_PIN L15 [get_ports {TXO_DATA_N[1]}]
set_property PACKAGE_PIN L16 [get_ports {TXO_DATA_P[2]}]
set_property PACKAGE_PIN L17 [get_ports {TXO_DATA_N[2]}]
set_property PACKAGE_PIN M14 [get_ports {TXO_DATA_P[3]}]
set_property PACKAGE_PIN M15 [get_ports {TXO_DATA_N[3]}]
set_property PACKAGE_PIN L19 [get_ports {TXO_DATA_P[4]}]
set_property PACKAGE_PIN L20 [get_ports {TXO_DATA_N[4]}]
set_property PACKAGE_PIN M19 [get_ports {TXO_DATA_P[5]}]
set_property PACKAGE_PIN M20 [get_ports {TXO_DATA_N[5]}]
set_property PACKAGE_PIN M17 [get_ports {TXO_DATA_P[6]}]
set_property PACKAGE_PIN M18 [get_ports {TXO_DATA_N[6]}]
set_property PACKAGE_PIN N15 [get_ports {TXO_DATA_P[7]}]
set_property PACKAGE_PIN N16 [get_ports {TXO_DATA_N[7]}]
set_property PACKAGE_PIN J20 [get_ports TXO_FRAME_P]
set_property PACKAGE_PIN H20 [get_ports TXO_FRAME_N]
set_property PACKAGE_PIN K14 [get_ports TXI_RD_WAIT_P]
set_property PACKAGE_PIN J14 [get_ports TXI_RD_WAIT_N]
set_property PACKAGE_PIN K16 [get_ports TXI_WR_WAIT_P]
set_property PACKAGE_PIN J16 [get_ports TXI_WR_WAIT_N]

#######################
# GPIO
#  First 12 pairs are present on all parts, next 12 on 7020 only
#######################
set_property PACKAGE_PIN T16 [get_ports {GPIO_P[0]}]
set_property PACKAGE_PIN U17 [get_ports {GPIO_N[0]}]
set_property PACKAGE_PIN V16 [get_ports {GPIO_P[1]}]
set_property PACKAGE_PIN W16 [get_ports {GPIO_N[1]}]
set_property PACKAGE_PIN P15 [get_ports {GPIO_P[2]}]
set_property PACKAGE_PIN P16 [get_ports {GPIO_N[2]}]
set_property PACKAGE_PIN U18 [get_ports {GPIO_P[3]}]
set_property PACKAGE_PIN U19 [get_ports {GPIO_N[3]}]
set_property PACKAGE_PIN P14 [get_ports {GPIO_P[4]}]
set_property PACKAGE_PIN R14 [get_ports {GPIO_N[4]}]
set_property PACKAGE_PIN T14 [get_ports {GPIO_P[5]}]
set_property PACKAGE_PIN T15 [get_ports {GPIO_N[5]}]
set_property PACKAGE_PIN U14 [get_ports {GPIO_P[6]}]
set_property PACKAGE_PIN U15 [get_ports {GPIO_N[6]}]
set_property PACKAGE_PIN W14 [get_ports {GPIO_P[7]}]
set_property PACKAGE_PIN Y14 [get_ports {GPIO_N[7]}]
set_property PACKAGE_PIN U13 [get_ports {GPIO_P[8]}]
set_property PACKAGE_PIN V13 [get_ports {GPIO_N[8]}]
set_property PACKAGE_PIN V12 [get_ports {GPIO_P[9]}]
set_property PACKAGE_PIN W13 [get_ports {GPIO_N[9]}]
set_property PACKAGE_PIN T12 [get_ports {GPIO_P[10]}]
set_property PACKAGE_PIN U12 [get_ports {GPIO_N[10]}]
set_property PACKAGE_PIN T11 [get_ports {GPIO_P[11]}]
set_property PACKAGE_PIN T10 [get_ports {GPIO_N[11]}]

