`timescale 1ns/1ps

// simple shift register, timings based on MC10E141 but doesn't have all the features that does
module shiftreg(clk, in, out);
  parameter WIDTH=8;

  input       clk;
  input       in;
  output reg  [WIDTH-1:0] out;
  
  initial begin
    out <= 0;
  end
  
  always @(posedge clk) begin
    out <= #0.75 out << 1;
    out[0] <= #0.75 in;
  end
endmodule 
