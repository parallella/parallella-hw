//##############################################################
//# This block is a "slow" version of "ewrapper_io_rx" block.
//# The main difference between this block and a regular
//# (fast) version of "ewrapper_io_rx" is the fact that regular
//# version instantiates serdes ip while slow version does not.
//##############################################################
module ewrapper_io_rx_slow (/*AUTOARG*/
   // Outputs
   CLK_DIV_OUT, DATA_IN_TO_DEVICE,
   // Inputs
   CLK_IN_P, CLK_IN_N, CLK_RESET, IO_RESET, DATA_IN_FROM_PINS_P,
   DATA_IN_FROM_PINS_N, BITSLIP
   );

   //###########
   //# INPUTS
   //###########
   input       CLK_IN_P; // Differential clock from IOB
   input       CLK_IN_N;
   input       CLK_RESET;
   input       IO_RESET;
   
   input [8:0] DATA_IN_FROM_PINS_P;
   input [8:0] DATA_IN_FROM_PINS_N;
   input       BITSLIP; 
   

   //#############
   //# OUTPUTS
   //#############
   output 	 CLK_DIV_OUT; // Slow clock output
   output [71:0] DATA_IN_TO_DEVICE;
   
   //############
   //# REGS
   //############
   reg [1:0] 	 clk_cnt;
   reg [8:0] 	 clk_even_reg;
   reg [8:0] 	 clk_odd_reg;
   reg [8:0] 	 clk0_even;
   reg [8:0] 	 clk1_even;
   reg [8:0] 	 clk2_even;
   reg [8:0] 	 clk3_even;
   reg [8:0] 	 clk0_odd;
   reg [8:0] 	 clk1_odd;
   reg [8:0] 	 clk2_odd;
   reg [8:0] 	 clk3_odd;
   reg [71:0] 	 rx_out_sync_pos;
   reg 		 rx_outclock_del_45;
   reg 		 rx_outclock_del_135;
   reg [71:0] 	 rx_out;
      
   //############
   //# WIRES
   //############
   wire 	 reset;
   wire 	 rx_outclock;
   wire 	 rxi_lclk;
   wire [71:0] 	 rx_out_int;
   wire 	 rx_pedge_first;
   wire [8:0] 	 rx_in;
   wire [8:0] 	 clk_even;
   wire [8:0] 	 clk_odd;
      

   /*AUTOINPUT*/
   /*AUTOWIRE*/

   assign reset                   = IO_RESET;
   assign DATA_IN_TO_DEVICE[71:0] = rx_out[71:0];
   assign CLK_DIV_OUT             = rx_outclock;
   
   //################################
   //# Input Buffers Instantiation
   //################################
   genvar 	 pin_count;
   generate 
      for (pin_count = 0; pin_count < 9; pin_count = pin_count + 1) begin: pins
	 IBUFDS 
	   #(.DIFF_TERM  ("TRUE"),     // Differential termination
           .IOSTANDARD ("LVDS_25"))
	 ibufds_inst
	   (.I     (DATA_IN_FROM_PINS_P[pin_count]),
           .IB     (DATA_IN_FROM_PINS_N[pin_count]),
           .O      (rx_in[pin_count]));
      end
   endgenerate
   
   //#####################
   //# Clock Buffers
   //#####################

   IBUFGDS 
     #(.DIFF_TERM  ("TRUE"),   // Differential termination
       .IOSTANDARD ("LVDS_25"))
   ibufds_clk_inst
     (.I          (CLK_IN_P),
      .IB         (CLK_IN_N),
      .O          (rxi_lclk));

   // BUFR generates the slow clock
   BUFR
     #(.SIM_DEVICE("7SERIES"),
     .BUFR_DIVIDE("4"))
   clkout_buf_inst
     (.O (rx_outclock),
      .CE(1'b1),
      .CLR(CLK_RESET),
      .I (rxi_lclk));

   //#################################
   //# De-serialization Cycle Counter
   //#################################

   always @ (posedge rxi_lclk or posedge reset)
     if(reset)
       clk_cnt[1:0] <= 2'b00;
     else if(rx_pedge_first)
       clk_cnt[1:0] <= 2'b11;
     else
       clk_cnt[1:0] <= clk_cnt[1:0] + 2'b01;

   //################################################################
   //# Posedge Detection of the Slow Clock in the Fast Clock Domain
   //################################################################
   
   always @ (negedge rxi_lclk)
     rx_outclock_del_45  <= rx_outclock;

   always @ (negedge rxi_lclk)
     rx_outclock_del_135 <= rx_outclock_del_45;
      
   assign rx_pedge_first = rx_outclock_del_45 & ~rx_outclock_del_135;

   //#############################
   //# De-serialization Output
   //#############################

   // Synchronizing the clocks (fast to slow)
   always @ (posedge rxi_lclk or posedge reset)
     if(reset)
       rx_out_sync_pos[71:0] <= {(72){1'b0}};
     else
       rx_out_sync_pos[71:0] <= rx_out_int[71:0];

   always @ (posedge rx_outclock or posedge reset)
     if(reset)
       rx_out[71:0] <= {(72){1'b0}};
     else
       rx_out[71:0] <= rx_out_sync_pos[71:0];

   //#############################
   //# IDDR instantiation
   //#############################
   
   genvar 	 iddr_cnt;
   generate 
      for (iddr_cnt = 0; iddr_cnt < 9; iddr_cnt = iddr_cnt + 1) begin: iddrs
	 IDDR #(
		.DDR_CLK_EDGE  ("SAME_EDGE_PIPELINED"),     
		.SRTYPE ("ASYNC"))
	 iddr_inst (
		    .Q1  (clk_even[iddr_cnt]),
		    .Q2  (clk_odd[iddr_cnt]),
		    .C   (rxi_lclk),
		    .CE  (1'b1),
		    .D   (rx_in[iddr_cnt]),
		    .R   (reset),
		    .S   (1'b0));
      end
   endgenerate

   //#############################
   //# De-serialization Registers
   //#############################

   always @ (posedge rxi_lclk or posedge reset)
     if(reset)
       begin
	  clk_even_reg[8:0] <= {(8){1'b0}};
	  clk_odd_reg[8:0]  <= {(8){1'b0}};
       end
     else
       begin
	  clk_even_reg[8:0] <= clk_even[8:0];
	  clk_odd_reg[8:0]  <= clk_odd[8:0];
       end
   
   //# even bytes
   always @ (posedge rxi_lclk or posedge reset)
     if(reset)
       clk0_even[8:0] <= {(8){1'b0}};
     else if(clk_cnt[1:0] == 2'b00)
       clk0_even[8:0] <= clk_even_reg[8:0];
   
   always @ (posedge rxi_lclk or posedge reset)
     if(reset)
       clk1_even[8:0] <= {(8){1'b0}};
     else if(clk_cnt[1:0] == 2'b01)
       clk1_even[8:0] <= clk_even_reg[8:0];
   
   always @ (posedge rxi_lclk or posedge reset)
     if(reset)
       clk2_even[8:0] <= {(8){1'b0}};
     else if(clk_cnt[1:0] == 2'b10)
       clk2_even[8:0] <= clk_even_reg[8:0];
   
   always @ (posedge rxi_lclk or posedge reset)
     if(reset)
       clk3_even[8:0] <= {(8){1'b0}};
     else if(clk_cnt[1:0] == 2'b11)
       clk3_even[8:0] <= clk_even_reg[8:0];
   
   //# odd bytes
   always @ (posedge rxi_lclk or posedge reset)
     if(reset)
       clk0_odd[8:0] <= {(8){1'b0}};
     else if(clk_cnt[1:0] == 2'b00)
       clk0_odd[8:0] <= clk_odd_reg[8:0];
   
   always @ (posedge rxi_lclk or posedge reset)
     if(reset)
       clk1_odd[8:0] <= {(8){1'b0}};
     else if(clk_cnt[1:0] == 2'b01)
       clk1_odd[8:0] <= clk_odd_reg[8:0];
   
   always @ (posedge rxi_lclk or posedge reset)
     if(reset)
       clk2_odd[8:0] <= {(8){1'b0}};
     else if(clk_cnt[1:0] == 2'b10)
       clk2_odd[8:0] <= clk_odd_reg[8:0];
   
   always @ (posedge rxi_lclk or posedge reset)
     if(reset)
       clk3_odd[8:0] <= {(8){1'b0}};
     else if(clk_cnt[1:0] == 2'b11)
       clk3_odd[8:0] <= clk_odd_reg[8:0];
   
   //#####################################
   //# De-serialization Data Construction
   //#####################################

   assign rx_out_int[71:64]={clk0_even[8],clk0_odd[8],clk1_even[8],clk1_odd[8],
			     clk2_even[8],clk2_odd[8],clk3_even[8],clk3_odd[8]};
   
   assign rx_out_int[63:56]={clk0_even[7],clk0_odd[7],clk1_even[7],clk1_odd[7],
			     clk2_even[7],clk2_odd[7],clk3_even[7],clk3_odd[7]};
   
   assign rx_out_int[55:48]={clk0_even[6],clk0_odd[6],clk1_even[6],clk1_odd[6],
			     clk2_even[6],clk2_odd[6],clk3_even[6],clk3_odd[6]};
   
   assign rx_out_int[47:40]={clk0_even[5],clk0_odd[5],clk1_even[5],clk1_odd[5],
			     clk2_even[5],clk2_odd[5],clk3_even[5],clk3_odd[5]};
   
   assign rx_out_int[39:32]={clk0_even[4],clk0_odd[4],clk1_even[4],clk1_odd[4],
			     clk2_even[4],clk2_odd[4],clk3_even[4],clk3_odd[4]};
   
   assign rx_out_int[31:24]={clk0_even[3],clk0_odd[3],clk1_even[3],clk1_odd[3],
			     clk2_even[3],clk2_odd[3],clk3_even[3],clk3_odd[3]};
   
   assign rx_out_int[23:16]={clk0_even[2],clk0_odd[2],clk1_even[2],clk1_odd[2],
			     clk2_even[2],clk2_odd[2],clk3_even[2],clk3_odd[2]};
   
   assign rx_out_int[15:8] ={clk0_even[1],clk0_odd[1],clk1_even[1],clk1_odd[1],
			     clk2_even[1],clk2_odd[1],clk3_even[1],clk3_odd[1]};
   
   assign rx_out_int[7:0]  ={clk0_even[0],clk0_odd[0],clk1_even[0],clk1_odd[0],
			     clk2_even[0],clk2_odd[0],clk3_even[0],clk3_odd[0]};
   
  
endmodule // dv_io_rx
