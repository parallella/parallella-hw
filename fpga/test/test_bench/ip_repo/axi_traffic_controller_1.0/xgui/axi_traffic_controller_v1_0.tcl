# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  set Component_Name  [  ipgui::add_param $IPINST -name "Component_Name" -display_name {Component Name}]
  set_property tooltip {Component Name} ${Component_Name}
  #Adding Page
  set Page_0  [  ipgui::add_page $IPINST -name "Page 0" -display_name {Page 0}]
  set_property tooltip {Page 0} ${Page_0}
  set C_M_AXI_START_DATA_VALUE  [  ipgui::add_param $IPINST -name "C_M_AXI_START_DATA_VALUE" -parent ${Page_0} -display_name {C M AXI START DATA VALUE}]
  set_property tooltip {The master will start generating data from the C_M_START_DATA_VALUE value} ${C_M_AXI_START_DATA_VALUE}
  set C_M_AXI_TARGET_SLAVE_BASE_ADDR  [  ipgui::add_param $IPINST -name "C_M_AXI_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0} -display_name {C M AXI TARGET SLAVE BASE ADDR}]
  set_property tooltip {The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.} ${C_M_AXI_TARGET_SLAVE_BASE_ADDR}
  set C_M_AXI_ADDR_WIDTH  [  ipgui::add_param $IPINST -name "C_M_AXI_ADDR_WIDTH" -parent ${Page_0} -display_name {C M AXI ADDR WIDTH}]
  set_property tooltip {Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.} ${C_M_AXI_ADDR_WIDTH}
  set C_M_AXI_DATA_WIDTH  [  ipgui::add_param $IPINST -name "C_M_AXI_DATA_WIDTH" -parent ${Page_0} -display_name {C M AXI DATA WIDTH}]
  set_property tooltip {Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH} ${C_M_AXI_DATA_WIDTH}
  set C_M_AXI_TRANSACTIONS_NUM  [  ipgui::add_param $IPINST -name "C_M_AXI_TRANSACTIONS_NUM" -parent ${Page_0} -display_name {C M AXI TRANSACTIONS NUM}]
  set_property tooltip {Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.} ${C_M_AXI_TRANSACTIONS_NUM}

  #Adding Group
  set Files  [  ipgui::add_group $IPINST -name "Files" -display_name {Files}]
  set_property tooltip {Files} ${Files}
  set write_addr_file  [  ipgui::add_param $IPINST -name "write_addr_file" -parent ${Files} -display_name {write_addr_file}]
  set_property tooltip {write_addr_file} ${write_addr_file}
  set write_data_file  [  ipgui::add_param $IPINST -name "write_data_file" -parent ${Files} -display_name {write_data_file}]
  set_property tooltip {write_data_file} ${write_data_file}
  set read_data_file  [  ipgui::add_param $IPINST -name "read_data_file" -parent ${Files} -display_name {read_data_file}]
  set_property tooltip {read_data_file} ${read_data_file}
  set read_addr_file  [  ipgui::add_param $IPINST -name "read_addr_file" -parent ${Files} -display_name {read_addr_file}]
  set_property tooltip {read_addr_file} ${read_addr_file}


}

proc update_PARAM_VALUE.write_data_file { PARAM_VALUE.write_data_file } {
	# Procedure called to update write_data_file when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.write_data_file { PARAM_VALUE.write_data_file } {
	# Procedure called to validate write_data_file
	return true
}

proc update_PARAM_VALUE.write_addr_file { PARAM_VALUE.write_addr_file } {
	# Procedure called to update write_addr_file when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.write_addr_file { PARAM_VALUE.write_addr_file } {
	# Procedure called to validate write_addr_file
	return true
}

proc update_PARAM_VALUE.read_data_file { PARAM_VALUE.read_data_file } {
	# Procedure called to update read_data_file when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_data_file { PARAM_VALUE.read_data_file } {
	# Procedure called to validate read_data_file
	return true
}

proc update_PARAM_VALUE.read_addr_file { PARAM_VALUE.read_addr_file } {
	# Procedure called to update read_addr_file when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_addr_file { PARAM_VALUE.read_addr_file } {
	# Procedure called to validate read_addr_file
	return true
}

proc update_PARAM_VALUE.C_M_AXI_START_DATA_VALUE { PARAM_VALUE.C_M_AXI_START_DATA_VALUE } {
	# Procedure called to update C_M_AXI_START_DATA_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_START_DATA_VALUE { PARAM_VALUE.C_M_AXI_START_DATA_VALUE } {
	# Procedure called to validate C_M_AXI_START_DATA_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M_AXI_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M_AXI_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_TRANSACTIONS_NUM { PARAM_VALUE.C_M_AXI_TRANSACTIONS_NUM } {
	# Procedure called to update C_M_AXI_TRANSACTIONS_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_TRANSACTIONS_NUM { PARAM_VALUE.C_M_AXI_TRANSACTIONS_NUM } {
	# Procedure called to validate C_M_AXI_TRANSACTIONS_NUM
	return true
}


proc update_MODELPARAM_VALUE.C_M_AXI_START_DATA_VALUE { MODELPARAM_VALUE.C_M_AXI_START_DATA_VALUE PARAM_VALUE.C_M_AXI_START_DATA_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_START_DATA_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_START_DATA_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_TRANSACTIONS_NUM { MODELPARAM_VALUE.C_M_AXI_TRANSACTIONS_NUM PARAM_VALUE.C_M_AXI_TRANSACTIONS_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_TRANSACTIONS_NUM}] ${MODELPARAM_VALUE.C_M_AXI_TRANSACTIONS_NUM}
}

proc update_MODELPARAM_VALUE.write_data_file { MODELPARAM_VALUE.write_data_file PARAM_VALUE.write_data_file } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.write_data_file}] ${MODELPARAM_VALUE.write_data_file}
}

proc update_MODELPARAM_VALUE.write_addr_file { MODELPARAM_VALUE.write_addr_file PARAM_VALUE.write_addr_file } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.write_addr_file}] ${MODELPARAM_VALUE.write_addr_file}
}

proc update_MODELPARAM_VALUE.read_data_file { MODELPARAM_VALUE.read_data_file PARAM_VALUE.read_data_file } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_data_file}] ${MODELPARAM_VALUE.read_data_file}
}

proc update_MODELPARAM_VALUE.read_addr_file { MODELPARAM_VALUE.read_addr_file PARAM_VALUE.read_addr_file } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_addr_file}] ${MODELPARAM_VALUE.read_addr_file}
}

