`timescale 1ns/1ps

module latch(clk, reset, in, out);
  parameter WIDTH=8;
  output  reg [WIDTH-1:0] out;
  input                   clk;
  input       [WIDTH-1:0] in;
  input                   reset;
  
  always @ (*) begin
    if(reset == 1'b1) begin
      #0.5 out <= 64'b0;
    end else if(clk == 1'b0) begin
      // out tracks in while clk is low, latches to last state when high
      #0.5 out <= in;
    end
  end
endmodule
