`timescale 1ns/1ps

// simple jk flip-flop
module flipflop_jk(clk, j, k, q, _q);
  input       clk;
  input       j;
  input       k;
  output reg  q;
  output reg  _q;
  
  initial begin
    q = 1'b0;
    _q = 1'b1;
  end
  
  always @(posedge clk) begin
    if(j && k) begin
      //$display("flipflop_jk: toggling");
      q  <= #0.5 ~q;
      _q <= #0.5 q;
    end else if(j && !k) begin
      //$display("flipflop_jk: flipping");
      #0.5 q  <= 1'b1;
      #0.5 _q <= 1'b0;
    end else if(k && !j) begin
      //$display("flipflop_jk: flopping");
      #0.5 q  <= 1'b0;
      #0.5 _q <= 1'b1;
    end
  end
endmodule 
