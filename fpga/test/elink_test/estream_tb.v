//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2014 02:03:49 PM
// Design Name: 
// Module Name: estream_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

`define NULL 0
`define EOF 32'hFFFF_FFFF
`define MAX_LINE_LENGTH 200

module estream_tb(    );

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire                 rx_access;              // From rxi of ewrapper_link_rxi.v
   wire [3:0]           rx_ctrlmode;            // From rxi of ewrapper_link_rxi.v
   wire [31:0]          rx_data;                // From rxi of ewrapper_link_rxi.v
   wire [1:0]           rx_datamode;            // From rxi of ewrapper_link_rxi.v
   wire [31:0]          rx_dstaddr;             // From rxi of ewrapper_link_rxi.v
   wire [31:0]          rx_srcaddr;             // From rxi of ewrapper_link_rxi.v
   wire                 rx_write;               // From rxi of ewrapper_link_rxi.v
   wire                 rxo_wait;               // From rxi of ewrapper_link_rxi.v
   wire [71:0]          tx_in;                  // From txo of ewrapper_link_txo.v
   wire                 txo_wait;               // From txo of ewrapper_link_txo.v
   // End of automatics

   // Static inputs
   wire                 burst_en = 1'b1;
   wire                 rxi_rd = 1'b0;
   wire                 rx_wait = 1'b0;  // RXI FIFO hold-off
   
   wire [63:0]          rxi_data = tx_in[63:0];
   wire [7:0]           rxi_frame = tx_in[71:64];
   
   // Transaction parameters
   reg [31:0] srcaddr, dstaddr, data;
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
   reg        clock;
   reg        reset;
   reg [15:0] pc;
   reg [4:0]  txstate;
   reg [15:0] delaycnt;
   reg        isstream;
   integer    writecount;
   integer    readcount;

   integer    fileid;
   integer    fscanret;
   reg [8*`MAX_LINE_LENGTH:0] line;

   initial begin
      reset <= 1'b1;
      clock <= 1'b1;
      #500;
      reset <= 1'b0;
   end

   always
      #5 clock <= ~clock;

   wire txo_lclk = clock;
   wire rxi_lclk = clock;
   
   
   task getnext;
      begin   // delay srcaddr dstaddr data cmode dmode write access stream done
         if($feof(fileid)) begin
            $display("Unexpected EOF");
            $finish;
         end
         fscanret = $fgets(line, fileid);
         fscanret = $sscanf(line, "%d %h %h %h %h %d %d %d %d %d",
                            delay, srcaddr, dstaddr, data, ctrlmode, datamode,
                            write, access, stream, done);
         if(fscanret == 1) begin
            srcaddr <= 32'd0;
            dstaddr <= 32'd0;
            data <= 32'd0;
            ctrlmode <= 4'd0;
            datamode <= 2'd0;
            write <= 1'b0;
            access <= 1'b0;
            stream <= 1'b0;
            done <= 1'b0;
         end else if(fscanret != 10) begin
            $display("ERROR: Wrong number of entries in file: (position %d) %s",
                     $ftell(fileid), line);
            $finish;
         end
      end
   endtask // getnext

   initial begin
      fileid = $fopen("../../test_estream.dat", "r");
      if(fileid == 0) begin
         $display("Unable to open file!");
         $finish;
      end
      getnext();
   end

   // Test transmitter
   always @ (posedge txo_lclk) begin
      if(reset) begin

         pc         <= 16'd1;
         txstate    <= 5'd0;
         delaycnt   <= 16'd0;
         isstream   <= 1'b0;
         writecount <= 0;
         readcount  <= 0;
         
      end else begin

         // default is to advance to next state
         txstate <= txstate + 1;
         
         case(txstate)

           5'd0: begin  // Start new transaction or delay
              delaycnt <= delay - 16'd2;
              isstream <= 1'b0;

              if(done) begin
                 txstate <= 5'd31;
                 $display("<-- Transmission complete!");
              end else if(delay == 16'd1) begin
                 txstate <= 5'd0;
                 pc <= pc + 16'd1;
                 getnext();
                 $display("<-- Waiting 1 cycle");
              end else if(|delay) begin
                 txstate <= 5'd16;
                 $display("<-- Waiting %d cycles", delay);
//              end else if(RX_wr_wait_p | RX_rd_wait_p) begin
//                 txstate <= 5'd0;
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
                   $display("0x%H:0x%H to address 0x%H", srcaddr, data, dstaddr);
                 else if(write)
                   $display("0x%H to address 0x%H", data, dstaddr);
                 else
                   $display("from address 0x%H, return to 0x%H", dstaddr, srcaddr);

                 pc <= pc + 16'd1;
                 getnext();
                 txstate <=5'd0;
                 
              end
           end

           5'd16: begin // delay, hold eLink idle
              delaycnt <= delaycnt - 1;
              if(~|delaycnt) begin
                 pc <= pc + 1;
                 getnext();
                 txstate <= 5'd0;
              end else begin
                 txstate <= txstate;  // override default
              end
           end

           5'd31: txstate <= txstate;  // All done
           
         endcase // case (txstate)
         
      end // else: !if(reset)
   end // always @ (TX_lclk_p)

   integer wrcount, rdcount;

   
   // RXI Decoder
   always @ (posedge rxi_lclk) begin
      if(reset) begin
         wrcount <= 0;
         rdcount <= 0;
      end else begin

         if(rx_access) begin
            if(rx_write) begin
               $write("--> %d Write ", wrcount);
               wrcount <= wrcount + 1;
               case(rx_datamode)
                 2'd0: $write("BYTE  0x%02X ", rx_data[7:0]);
                 2'd1: $write("HWORD 0x%04X ", rx_data[15:0]);
                 2'd2: $write("WORD  0x%08X ", rx_data[31:0]);
                 2'd3: $write("DWORD 0x%08X:%08X ", rx_srcaddr, rx_data);
               endcase // case (rx_datamode)
               $display("to address 0x%08X", rx_dstaddr);
            end else begin
               $display("--> %d Read  ", rdcount);
               rdcount <= rdcount + 1;
               case(rx_datamode)
                 2'd0: $write("BYTE  ");
                 2'd1: $write("HWORD ");
                 2'd2: $write("WORD  ");
                 2'd3: $write("DWORD ");
               endcase // case (rx_datamode)
               $display("from address 0x%08X, return address 0x%08X",
                        rx_dstaddr, rx_srcaddr);
            end
         end         
      end // else: !if(reset)
   end // always @ (posedge rxi_lclk)

   /* ewrapper_link_txo AUTO_TEMPLATE (
    .txo_emesh_wait      (txo_wait),
    .txo_emesh_\(.*\)    (\1[]),
    );
    */
   
   ewrapper_link_txo txo
     (/*AUTOINST*/
      // Outputs
      .txo_emesh_wait                   (txo_wait),              // Templated
      .tx_in                            (tx_in[71:0]),
      // Inputs
      .reset                            (reset),
      .txo_lclk                         (txo_lclk),
      .txo_emesh_access                 (access),                // Templated
      .txo_emesh_write                  (write),                 // Templated
      .txo_emesh_datamode               (datamode[1:0]),         // Templated
      .txo_emesh_ctrlmode               (ctrlmode[3:0]),         // Templated
      .txo_emesh_dstaddr                (dstaddr[31:0]),         // Templated
      .txo_emesh_srcaddr                (srcaddr[31:0]),         // Templated
      .txo_emesh_data                   (data[31:0]),            // Templated
      .burst_en                         (burst_en));

   /* ewrapper_link_rxi AUTO_TEMPLATE (
    .emesh_\(.*\)_inb        (rx_\1[]),
    .emesh_\(.*\)_outb       (rx_\1[]),
    )
    */

   ewrapper_link_rxi rxi
     (/*AUTOINST*/
      // Outputs
      .rxo_wait                         (rxo_wait),
      .emesh_access_inb                 (rx_access),             // Templated
      .emesh_write_inb                  (rx_write),              // Templated
      .emesh_datamode_inb               (rx_datamode[1:0]),      // Templated
      .emesh_ctrlmode_inb               (rx_ctrlmode[3:0]),      // Templated
      .emesh_dstaddr_inb                (rx_dstaddr[31:0]),      // Templated
      .emesh_srcaddr_inb                (rx_srcaddr[31:0]),      // Templated
      .emesh_data_inb                   (rx_data[31:0]),         // Templated
      // Inputs
      .reset                            (reset),
      .rxi_data                         (rxi_data[63:0]),
      .rxi_lclk                         (rxi_lclk),
      .rxi_frame                        (rxi_frame[7:0]),
      .emesh_wait_outb                  (rx_wait),               // Templated
      .rxi_rd                           (rxi_rd));
   
   
   
endmodule // estream_tb


    // Local Variables:
    // verilog-library-directories:("." "../../hdl/elink-gold")
    // End:
