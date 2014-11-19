
`timescale 1 ns / 1 ps

module elink2_tb;
   
   reg aclk;
   reg aresetn;
   reg start;
   wire csysreq = 1'b0;
   
   wire [1:0] done;
   wire [1:0] error;

   // Create an instance of the example tb
   elink_testbench dut
          (.aclk          (aclk),
           .aresetn       (aresetn),
           .csysreq       (csysreq),
           .done0         (done[0]),
           .done1         (done[1]),
           .error0        (error[0]),
           .error1        (error[1]),
           .start         (start));
   
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
	  
	  wait( done == 2'b11);
	  $display("=== TEST_FINISHED");
	  if ( error != 2'b00 ) begin
		 $display("===_TEST: FAILED!");
	  end else begin
		 $display("=== TEST: PASSED!");
	  end

   end
   
    always @ (posedge error[0])
        if( error[0] == 1'b1 )
            $display("=== ERROR FLAG 0 @ %t", $time);
   
    always @ (posedge error[1])
        if( error[1] == 1'b1 )
            $display("=== ERROR FLAG 1 @ %T", $time);
        
endmodule
