
`timescale 1 ns / 1 ps

module elink2_tb;
   
   reg aclk;
   reg aresetn;
   reg start;
   wire csysreq = 1'b0;
   wire reset = ~aresetn;
   wire [11:0] param_coreid = 12'h810;
   
   wire [2:0] done;
   wire [2:0] error;

   // Create an instance of the example tb
   elink_testbench dut
          (.aclk          (aclk),
           .aresetn       (aresetn),
           .reset         (reset),
           .csysreq       (csysreq),
           .done0         (done[0]),
           .done1         (done[1]),
           .done2         (done[2]),
           .error0        (error[0]),
           .error1        (error[1]),
           .error2        (error[2]),
           .start         (start),
           .param_coreid  (param_coreid));
           
   // Reset Generator
   initial begin
	  aresetn = 1'b0;
	  #500;
	  // Release the reset on the posedge of the clk.
	  @(posedge aclk);
	  aresetn = 1'b1;
   end

	// Clock Generator
   initial aclk = 1'b0;
   always #5 aclk = ~aclk;

   // Drive the BFM
   initial begin

	  start = 1'b0;

	  // Wait for end of reset
	  wait(aresetn === 0) @(posedge aclk);
	  wait(aresetn === 1) @(posedge aclk);
	  wait(aresetn === 1) @(posedge aclk);
	  wait(aresetn === 1) @(posedge aclk);
	  wait(aresetn === 1) @(posedge aclk);

	  #500 start = 1'b1;

	  $display("=== TB Started");
	  
	  wait( done == 3'b111);
	  $display("=== TEST_FINISHED");
	  if ( error != 3'b000 ) begin
		 $display("===_TEST: FAILED!");
	  end else begin
		 $display("=== TEST: PASSED!");
	  end

   end
   
   always @ (posedge done[2])
       $display("=== INIT Complete");
   
   always @ (posedge done[0])
       $display("=== GOLD->ELINK2 Complete");
   
   always @ (posedge done[1])
       $display("=== ELINK2->GOLD Complete");
       
   always @ (posedge error[0])
       if( error[0] == 1'b1 && done[0] == 1'b0)
           $display("=== ERROR FLAG GOLD->ELINK2 @ %t", $time);
   
   always @ (posedge error[1])
       if( error[1] == 1'b1 && done[1] == 1'b0)
           $display("=== ERROR FLAG ELINK2->GOLD @ %T", $time);
        
   always @ (posedge error[2])
       if( error[2] == 1'b1 && done[2] == 1'b0)
           $display("=== ERROR FLAG INIT @ %T", $time);
                
endmodule
