connect arm hw
source ps7_init.tcl
ps7_init
init_user
source stub.tcl
target 64
rst -processor
dow qspi_programmer.elf
con
