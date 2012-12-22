`timescale 1ns/1ps

module flipflop_d(clk, reset, in, out);
  parameter WIDTH=8;
  input                   clk;
  input                   reset;
  input       [WIDTH-1:0] in;
  output reg  [WIDTH-1:0] out;
  
  always @ (posedge clk or posedge reset) begin
    #0.5 out <= reset ? 64'b0 : in;
  end
endmodule
