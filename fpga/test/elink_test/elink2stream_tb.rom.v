
`timescale 1 ns / 1 ps

module elink2stream_tb;
   
   reg aclk;
   reg aresetn;
   reg start;
   wire reset = ~aresetn;
   wire done0;
   wire error0;
      
   wire rx_cclk_n;
   wire rx_cclk_p;

   wire [11:0] param_coreid = 12'h810;
   wire TX_rd_wait_n = 1'b1;
   wire TX_rd_wait_p = 1'b0;
   wire TX_wr_wait_n = 1'b1;
   wire TX_wr_wait_p = 1'b0;

   wire [31:0]M00_AXI_araddr;
   wire [1:0]M00_AXI_arburst;
   wire [3:0]M00_AXI_arcache;
   wire [0:0]M00_AXI_arid;
   wire [7:0]M00_AXI_arlen;
   wire M00_AXI_arlock;
   wire [2:0]M00_AXI_arprot;
   wire [3:0]M00_AXI_arqos;
   wire M00_AXI_arready = 1'b1;
   wire [2:0]M00_AXI_arsize;
   wire M00_AXI_arvalid;
   
   wire [31:0]M00_AXI_awaddr;
   wire [1:0]M00_AXI_awburst;
   wire [3:0]M00_AXI_awcache;
   wire [0:0]M00_AXI_awid;
   wire [7:0]M00_AXI_awlen;
   wire M00_AXI_awlock;
   wire [2:0]M00_AXI_awprot;
   wire [3:0]M00_AXI_awqos;
   wire M00_AXI_awready = 1'b1;
   wire [2:0]M00_AXI_awsize;
   wire M00_AXI_awvalid;
   
   wire [0:0]M00_AXI_bid = 1'b0;
   wire M00_AXI_bready;
   wire [1:0]M00_AXI_bresp = 2'b00;
   reg  M00_AXI_bvalid;

   reg  [63:0]M00_AXI_rdata;
   reg  [0:0]M00_AXI_rid = 1'b0;
   reg  M00_AXI_rlast;
   wire M00_AXI_rready;
   wire [1:0]M00_AXI_rresp = 2'b00;
   reg  M00_AXI_rvalid;

   wire [63:0]M00_AXI_wdata;
   wire M00_AXI_wlast;
   wire M00_AXI_wready = 1'b1;
   wire [7:0]M00_AXI_wstrb;
   wire M00_AXI_wvalid;

   wire [7:0]TX_data_n;
   wire [7:0]TX_data_p;
   wire TX_frame_n;
   wire TX_frame_p;
   wire TX_lclk_n;
   wire TX_lclk_p;

   reg  [7:0]RX_data_p;
   wire [7:0]RX_data_n = ~RX_data_p;
   reg  RX_frame_p;
   wire RX_frame_n = ~RX_frame_p;
   wire RX_lclk_n = TX_lclk_n;
   wire RX_lclk_p = TX_lclk_p;
   wire RX_rd_wait_n;
   wire RX_rd_wait_p;
   wire RX_wr_wait_n;
   wire RX_wr_wait_p;

   // Transaction parameters
   reg [31:0] src, dst, data;
   reg [3:0]  ctrlmode;
   reg [1:0]  datamode;
   reg        write;
   reg        access;
   reg        stream;
   reg [31:0] delay;
   reg        done;
   wire       all_done;
   assign     #5000 all_done = done;
   
   // Transmitter state machine
   reg [15:0] pc;
   reg [4:0]  txstate;
   reg [15:0] delaycnt;
   reg        isstream;
   integer    writecount;
   integer    readcount;

   integer    fileid;

   initial begin
      fileid = $fopen("../../test_prog.dat", "r");
      if(fileid == 0) begin
         $display("Unable to open file!");
         $finish;
      end
   end

   task getnext;
      begin   // delay src dst data cmode dmode write access stream done
         $fscanf(fileid, "%d %h %h %h %h %d %d %d %d %d",
                 delay, src, dst, data, ctrlmode, datamode, write, access, stream, done);
         if($feof(fileid)) begin
            $display "Unexpected EOF\n";
            $finish;
         end
      end
   endtask // getnext
   
   always @ ( * ) begin

      // defaults
      src      = 32'd0;
      dst      = 32'd0;
      data     = 32'd0;
      ctrlmode = 4'd0;
      datamode = 2'd0;
      write    = 1'b0;
      access   = 1'b0;
      stream   = 1'b0;
      delay    = 32'd0;
      done     = 1'b0;
            
      case(pc)
        0: delay = 32'd50;

        1: begin
           dst = 32'hE0000005;
           data = 32'h00000012;
           datamode = 2'd0;  // Byte write
           write = 1'b1;
           access = 1'b1;
        end

        2: delay = 32'd5;
        
        3: begin
           dst = 32'hE000000A;
           data = 32'h0000ABCD;
           datamode = 2'd1;  // 16b HWord write
           write = 1'b1;
           access = 1'b1;
        end

        4: delay = 32'd6;
        
        5: begin
           dst = 32'hE0000010;
           data = 32'h87654321;
           datamode = 2'd2;   // 32b Word write
           write = 1'b1;
           access = 1'b1;
        end

        6: delay = 32'd3;
        
        7: begin
           dst = 32'hE0000020;
           data = 32'h9ABCDEF0;
           src = 32'h12345678;
           datamode = 2'd3;  // 64b DWord write
           write = 1'b1;
           access = 1'b1;
        end

        8: delay = 32'd25;

        9: begin
           dst = 32'hE0000040;
           data = 32'h11111111;
           src = 32'h22222222;
           datamode = 2'd3;
           stream = 1'b1;
           write = 1'b1;
           access = 1'b1;
        end

        10: begin
           data = 32'h33333333;
           src = 32'h44444444;
           stream = 1'b1;
        end

        11: begin
           data = 32'h55555555;
           src = 32'h66666666;
        end

        12: delay = 32'd2;

        13: begin
           dst = 32'hE0000040;
           data = 32'h11111111;
           src = 32'h22222222;
           datamode = 2'd3;
           stream = 1'b1;
           write = 1'b1;
           access = 1'b1;
        end

        14: begin
           data = 32'h33333333;
           src = 32'h44444444;
           stream = 1'b1;
        end

        15: begin
           data = 32'h55555555;
           src = 32'h66666666;
        end

        16: delay = 32'd2;

        17: begin
           dst = 32'hE0000040;
           data = 32'h11111111;
           src = 32'h22222222;
           datamode = 2'd3;
           stream = 1'b1;
           write = 1'b1;
           access = 1'b1;
        end

        18: begin
           data = 32'h33333333;
           src = 32'h44444444;
           stream = 1'b1;
        end

        19: begin
           data = 32'h55555555;
           src = 32'h66666666;
        end

        20: delay = 32'd2;

        21: begin
           dst = 32'hE0000040;
           data = 32'h11111111;
           src = 32'h22222222;
           datamode = 2'd3;
           stream = 1'b1;
           write = 1'b1;
           access = 1'b1;
        end

        22: begin
           data = 32'h33333333;
           src = 32'h44444444;
           stream = 1'b1;
        end

        23: begin
           data = 32'h55555555;
           src = 32'h66666666;
        end

        24: delay = 32'd2;

        25: begin
           dst = 32'hE0000040;
           data = 32'h11111111;
           src = 32'h22222222;
           datamode = 2'd3;
           stream = 1'b1;
           write = 1'b1;
           access = 1'b1;
        end

        26: begin
           data = 32'h33333333;
           src = 32'h44444444;
           stream = 1'b1;
        end

        27: begin
           data = 32'h55555555;
           src = 32'h66666666;
        end

        28: delay = 32'd2;

        29: begin
           dst = 32'hE0000040;
           data = 32'h11111111;
           src = 32'h22222222;
           datamode = 2'd3;
           stream = 1'b1;
           write = 1'b1;
           access = 1'b1;
        end

        30: begin
           data = 32'h33333333;
           src = 32'h44444444;
           stream = 1'b1;
        end

        31: begin
           data = 32'h55555555;
           src = 32'h66666666;
        end

        32: delay = 32'd2;

        33: begin
           dst = 32'hE0000040;
           data = 32'h11111111;
           src = 32'h22222222;
           datamode = 2'd3;
           stream = 1'b1;
           write = 1'b1;
           access = 1'b1;
        end

        34: begin
           data = 32'h33333333;
           src = 32'h44444444;
           stream = 1'b1;
        end

        35: begin
           data = 32'h55555555;
           src = 32'h66666666;
        end

        36: delay = 32'd2;

        37: begin
           dst = 32'hE0000040;
           data = 32'h11111111;
           src = 32'h22222222;
           datamode = 2'd3;
           stream = 1'b1;
           write = 1'b1;
           access = 1'b1;
        end

        38: begin
           data = 32'h33333333;
           src = 32'h44444444;
           stream = 1'b1;
        end

        39: begin
           data = 32'h55555555;
           src = 32'h66666666;
        end

        40: begin
           delay = 32'd1;
        end
          
        41: begin
           dst = 32'h88880000;
           data = 32'hDEADBEEF;
           datamode = 2'd2;
           write = 1'b1;
           access = 1'b1;
        end

        42: begin
           delay = 32'd12;
        end
          
        43: begin
           dst = 32'h88880000;
           data = 32'hFEEDF00D;
           datamode = 2'd2;
           write = 1'b1;
           access = 1'b1;
        end

        44: begin
           done = 1'b1;
        end

        default: begin
           src      = 32'hXXXXXXXX;
           dst      = 32'hXXXXXXXX;
           data     = 32'hXXXXXXXX;
           ctrlmode = 4'hX;
           datamode = 2'bXX;
           write    = 1'bX;
           access   = 1'bX;
           stream   = 1'bX;
           delay    = 32'hXXXXXXXX;
           done     = 1'b1;
        end
           
      endcase // case (pc)
   end // always @ ( * )

   wire lclk_delay;
   assign #0.8333 lclk_delay = TX_lclk_p;
      
   // Test transmitter
   always @ (lclk_delay) begin
      if(~done0) begin

         pc         <= 16'd0;
         txstate    <= 5'd0;
         delaycnt   <= 16'd0;
         RX_data_p  <= 8'd0;
         RX_frame_p <= 1'b0;
         isstream   <= 1'b0;
         writecount <= 0;
         readcount  <= 0;
         
      end else begin

         // default is to advance to next state
         txstate <= txstate + 1;
         
         case(txstate)

           5'd0: begin  // Start new transaction or delay
              RX_frame_p <= 1'b0;
              delaycnt <= delay - 16'd2;
              isstream <= 1'b0;

              if(done) begin
                 txstate <= 5'd31;
                 $display("<-- Transmission complete!");
              end else if(delay == 16'd1) begin
                 txstate <= 5'd0;
                 pc <= pc + 16'd1;
                 $display("<-- Waiting 1 cycle");
              end else if(|delay) begin
                 txstate <= 5'd16;
                 $display("<-- Waiting %d cycles", delay);
              end else if(RX_wr_wait_p | RX_rd_wait_p) begin
                 txstate <= 5'd0;
              end else begin
                 if(write) begin
                    $write("<-- %d Writing ", writecount);
                    writecount <= writecount + 1;
                 end else begin
                    $write("<-- %d Reading ", readcount);
                    readcount <= readcount + 1;
                 end

                 case(datamode)
                   2'd0: $write("BYTE ");
                   2'd1: $write("HWORD ");
                   2'd2: $write("WORD ");
                   2'd3: $write("DWORD ");
                 endcase // case (datamode)

                 if(write && datamode == 3'd3)
                   $display("0x%H:0x%H to address 0x%H", src, data, dst);
                 else if(write)
                   $display("0x%H to address 0x%H", data, dst);
                 else
                   $display("from address 0x%H, return to 0x%H", dst, src);
              end
           end

           5'd1: begin  // TRAN byte
              RX_data_p <= {~write, 7'd0};
              RX_frame_p <= 1'b1;
           end

           5'd2:
             RX_data_p <= {ctrlmode, dst[31:28]};

           5'd3:
             RX_data_p <= dst[27:20];

           5'd4:
             RX_data_p <= dst[19:12];

           5'd5:
             RX_data_p <= dst[11:4];

           5'd6:
             RX_data_p <= {dst[3:0], datamode, write, access};

           5'd7: begin
              if(isstream) begin
                 $display("<-- %d Streaming data 0x%H:0x%H", 
                          writecount, src, data);
                 writecount <= writecount + 1;
              end
              RX_data_p <= data[31:24];
           end

           5'd8:
             RX_data_p <= data[23:16];

           5'd9:
             RX_data_p <= data[15:8];

           5'd10:
             RX_data_p <= data[7:0];

           5'd11:
             RX_data_p <= src[31:24];

           5'd12:
             RX_data_p <= src[23:16];
           
           5'd13:
             RX_data_p <= src[15:8];
           
           5'd14: begin
              RX_data_p <= src[7:0];
              pc <= pc + 1;
              isstream <= stream;
              if(stream)
                txstate <= 5'd7;  // next 'data'
              else
                txstate <= 5'd0;
           end
           
           5'd16: begin // delay, hold eLink idle
              delaycnt <= delaycnt - 1;
              if(~|delaycnt) begin
                 pc <= pc + 1;
                 txstate <= 5'd0;
              end else begin
                 txstate <= txstate;  // override default
              end
           end

           5'd31: txstate <= txstate;  // All done
           
         endcase // case (txstate)
         
      end // else: !if(reset)
   end // always @ (TX_lclk_p)

   integer awcount, wcount, arcount;

   initial begin
      awcount = 0;
      wcount  = 0;
      arcount = 0;
   end
   
   always @ (posedge aclk) begin
      if(M00_AXI_awvalid & M00_AXI_awready) begin
         $display("--> %d Write address: 0x%H, size: %d, len: %d", 
                  awcount, M00_AXI_awaddr, M00_AXI_awsize, M00_AXI_awlen);
         awcount <= awcount + 1;
      end
   end   
   
   // Respond to write requests
   always @ (posedge aclk) begin
      if(reset) begin
         M00_AXI_bvalid <= 1'b0;
      end else begin

         if(M00_AXI_awvalid & M00_AXI_awready) begin
            $display("--> %d Write data: 0x%H", wcount, M00_AXI_wdata);
            M00_AXI_bvalid <= 1'b1;
            wcount <= wcount + 1;
         end else if(M00_AXI_bready) begin
            M00_AXI_bvalid <= 1'b0;
         end

      end
   end
   
   // Respond to read requests
   always @ (posedge aclk) begin
      if(reset) begin
         M00_AXI_rdata <= 64'd0;
         M00_AXI_rlast <= 1'b0;
         M00_AXI_rvalid <= 1'b0;
      end else begin

         if(M00_AXI_arvalid & M00_AXI_arready) begin
            $display("--> %d Read request: <TBD>", arcount);
            arcount <= arcount + 1;
         end

      end
   end
   
   
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

	  #500 start = 1'b1;
	  @(posedge aclk);

	  $display("=== TB Started");
	  
	  wait( all_done == 1'b1);
	  $display("=== TEST_FINISHED");
	  if ( wcount != writecount || arcount != readcount ) begin
		 $display("=== TEST: FAILED!\n  %d writes sent, %d writes rcvd\n  %d reads sent, %d reads rcvd",
                  writecount, wcount, readcount, arcount);
	  end else begin
		 $display("=== TEST: PASSED!");
	  end

   end
   
   always @ (posedge done0)
       $display("=== INIT Complete");
   
   always @ (posedge error0)
       if( done0 == 1'b0)
           $display("=== ERROR FLAG INIT @ %T", $time);
 
   // Create an instance of the example
   elink2_stream dut
     (.M00_AXI_araddr(M00_AXI_araddr),
      .M00_AXI_arburst(M00_AXI_arburst),
      .M00_AXI_arcache(M00_AXI_arcache),
      .M00_AXI_arid(M00_AXI_arid),
      .M00_AXI_arlen(M00_AXI_arlen),
      .M00_AXI_arlock(M00_AXI_arlock),
      .M00_AXI_arprot(M00_AXI_arprot),
      .M00_AXI_arqos(M00_AXI_arqos),
      .M00_AXI_arready(M00_AXI_arready),
      .M00_AXI_arsize(M00_AXI_arsize),
      .M00_AXI_arvalid(M00_AXI_arvalid),
      .M00_AXI_awaddr(M00_AXI_awaddr),
      .M00_AXI_awburst(M00_AXI_awburst),
      .M00_AXI_awcache(M00_AXI_awcache),
      .M00_AXI_awid(M00_AXI_awid),
      .M00_AXI_awlen(M00_AXI_awlen),
      .M00_AXI_awlock(M00_AXI_awlock),
      .M00_AXI_awprot(M00_AXI_awprot),
      .M00_AXI_awqos(M00_AXI_awqos),
      .M00_AXI_awready(M00_AXI_awready),
      .M00_AXI_awsize(M00_AXI_awsize),
      .M00_AXI_awvalid(M00_AXI_awvalid),
      .M00_AXI_bid(M00_AXI_bid),
      .M00_AXI_bready(M00_AXI_bready),
      .M00_AXI_bresp(M00_AXI_bresp),
      .M00_AXI_bvalid(M00_AXI_bvalid),
      .M00_AXI_rdata(M00_AXI_rdata),
      .M00_AXI_rid(M00_AXI_rid),
      .M00_AXI_rlast(M00_AXI_rlast),
      .M00_AXI_rready(M00_AXI_rready),
      .M00_AXI_rresp(M00_AXI_rresp),
      .M00_AXI_rvalid(M00_AXI_rvalid),
      .M00_AXI_wdata(M00_AXI_wdata),
      .M00_AXI_wlast(M00_AXI_wlast),
      .M00_AXI_wready(M00_AXI_wready),
      .M00_AXI_wstrb(M00_AXI_wstrb),
      .M00_AXI_wvalid(M00_AXI_wvalid),
      .RX_data_n(RX_data_n),
      .RX_data_p(RX_data_p),
      .RX_frame_n(RX_frame_n),
      .RX_frame_p(RX_frame_p),
      .RX_lclk_n(RX_lclk_n),
      .RX_lclk_p(RX_lclk_p),
      .RX_rd_wait_n(RX_rd_wait_n),
      .RX_rd_wait_p(RX_rd_wait_p),
      .RX_wr_wait_n(RX_wr_wait_n),
      .RX_wr_wait_p(RX_wr_wait_p),
      .TX_data_n(TX_data_n),
      .TX_data_p(TX_data_p),
      .TX_frame_n(TX_frame_n),
      .TX_frame_p(TX_frame_p),
      .TX_lclk_n(TX_lclk_n),
      .TX_lclk_p(TX_lclk_p),
      .TX_rd_wait_n(TX_rd_wait_n),
      .TX_rd_wait_p(TX_rd_wait_p),
      .TX_wr_wait_n(TX_wr_wait_n),
      .TX_wr_wait_p(TX_wr_wait_p),
      .aclk(aclk),
      .aresetn(aresetn),
      .done0(done0),
      .error0(error0),
      .param_coreid(param_coreid),
      .reset(reset),
      .rx_cclk_n(rx_cclk_n),
      .rx_cclk_p(rx_cclk_p),
      .start(start));
   
   
endmodule
