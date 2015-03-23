
`timescale 1 ns / 1 ps

module elink_tb;
   
   reg aclk;
   reg aresetn;
   reg start;
   wire csysreq = 1'b0;
   
   wire done;
   wire error;

   // Create an instance of the example tb
   elink_testbench dut
       (.aclk(aclk),
        .aresetn(aresetn),
        .csysreq(csysreq),
        .done(done),
        .error(error),
        .start(start));

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
	  wait( done == 1'b1);
	  $display("=== TEST_FINISHED");
	  if ( error ) begin
		 $display("===_TEST: FAILED!");
	  end else begin
		 $display("=== TEST: PASSED!");
	  end

   end
   
endmodule
