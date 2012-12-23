`timescale 1ns/1ps

// module which checks that registers match expected values
module test_validator(clk, cs_addr, pc, reg_a, reg_b, reg_c, reg_d);
  parameter TESTDATA="testdata.bin";
  input                   clk;
  input       [7:0]       cs_addr;
  input       [15:0]      pc;
  input       [15:0]      reg_a;
  input       [15:0]      reg_b;
  input       [15:0]      reg_c;
  input       [15:0]      reg_d;
  reg         [63:0]      testdata[0:1024];
  reg         [15:0]      last_pc;
  
  initial begin
    $readmemb(TESTDATA, testdata);
    $display("Test data loaded from disk.");
    last_pc = 8'd0;
  end
  
  always @(posedge clk) begin
    if(cs_addr == 8'd2) begin
      if(testdata[pc][7:0] == 8'bx) begin
      end else begin
        if(testdata[pc][7:0] != reg_a[7:0]) begin
        $display("\nTEST FAILURE (register al is %08b, should be %08b)", reg_a[7:0], testdata[pc][7:0]);
          $finish;
        end
      end
      if(testdata[pc][15:8] == 8'bx) begin
      end else begin
        if(testdata[pc][15:8] != reg_a[15:8]) begin
          $display("\nTEST FAILURE (register ah is %08b, should be %08b)", reg_a[15:8], testdata[pc][15:8]);
          $finish;
        end
      end
      if(testdata[pc][23:16] == 8'bx) begin
      end else begin
        if(testdata[pc][23:16] != reg_b[7:0]) begin
        $display("\nTEST FAILURE (register bl is %08b, should be %08b)", reg_b[7:0], testdata[pc][23:16]);
          $finish;
        end
      end
      if(testdata[pc][31:24] == 8'bx) begin
      end else begin
        if(testdata[pc][31:24] != reg_b[15:8]) begin
          $display("\nTEST FAILURE (register bh is %08b, should be %08b)", reg_b[15:8], testdata[pc][31:24]);
          $finish;
        end
      end
      last_pc = pc;
    end
  end
endmodule 
