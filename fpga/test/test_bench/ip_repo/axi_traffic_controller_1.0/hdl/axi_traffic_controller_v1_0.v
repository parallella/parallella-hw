
`timescale 1 ns / 1 ps

	module axi_traffic_controller_v1_0 #
	(
		// Users to add parameters here
        parameter write_data_file = "wire_data_example",
        parameter write_addr_file = "write_addr_example",
        parameter read_data_file = "read_data_example",
        parameter read_addr_file = "read_addr_example",
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M_AXI
		parameter  C_M_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M_AXI_DATA_WIDTH	= 32,
		parameter integer C_M_AXI_TRANSACTIONS_NUM	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M_AXI
		input wire  m_axi_init_axi_txn,
		output wire  m_axi_error,
		output wire  m_axi_txn_done,
		input wire  m_axi_aclk,
		input wire  m_axi_aresetn,
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] m_axi_awaddr,
		output wire [2 : 0] m_axi_awprot,
		output wire  m_axi_awvalid,
		input wire  m_axi_awready,
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] m_axi_wdata,
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] m_axi_wstrb,
		output wire  m_axi_wvalid,
		input wire  m_axi_wready,
		input wire [1 : 0] m_axi_bresp,
		input wire  m_axi_bvalid,
		output wire  m_axi_bready,
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] m_axi_araddr,
		output wire [2 : 0] m_axi_arprot,
		output wire  m_axi_arvalid,
		input wire  m_axi_arready,
		input wire [C_M_AXI_DATA_WIDTH-1 : 0] m_axi_rdata,
		input wire [1 : 0] m_axi_rresp,
		input wire  m_axi_rvalid,
		output wire  m_axi_rready
	);
// Instantiation of Axi Bus Interface M_AXI
	axi_traffic_controller_v1_0_M_AXI # (
	    .write_data_file(write_data_file), 
	    .write_addr_file(write_addr_file), 
	    .read_data_file(read_data_file), 
	    .read_addr_file(read_addr_file), 
		.C_M_START_DATA_VALUE(C_M_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M_AXI_TRANSACTIONS_NUM)
	) axi_traffic_controller_v1_0_M_AXI_inst (
		.INIT_AXI_TXN(m_axi_init_axi_txn),
		.ERROR(m_axi_error),
		.TXN_DONE(m_axi_txn_done),
		.M_AXI_ACLK(m_axi_aclk),
		.M_AXI_ARESETN(m_axi_aresetn),
		.M_AXI_AWADDR(m_axi_awaddr),
		.M_AXI_AWPROT(m_axi_awprot),
		.M_AXI_AWVALID(m_axi_awvalid),
		.M_AXI_AWREADY(m_axi_awready),
		.M_AXI_WDATA(m_axi_wdata),
		.M_AXI_WSTRB(m_axi_wstrb),
		.M_AXI_WVALID(m_axi_wvalid),
		.M_AXI_WREADY(m_axi_wready),
		.M_AXI_BRESP(m_axi_bresp),
		.M_AXI_BVALID(m_axi_bvalid),
		.M_AXI_BREADY(m_axi_bready),
		.M_AXI_ARADDR(m_axi_araddr),
		.M_AXI_ARPROT(m_axi_arprot),
		.M_AXI_ARVALID(m_axi_arvalid),
		.M_AXI_ARREADY(m_axi_arready),
		.M_AXI_RDATA(m_axi_rdata),
		.M_AXI_RRESP(m_axi_rresp),
		.M_AXI_RVALID(m_axi_rvalid),
		.M_AXI_RREADY(m_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
