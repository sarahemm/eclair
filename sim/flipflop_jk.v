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
      q <= _q;
      _q <= q;
    end else if(j && !k) begin
      //$display("flipflop_jk: flipping");
      q <= 1'b1;
      _q <= 1'b0;
    end else if(k && !j) begin
      //$display("flipflop_jk: flopping");
      q <= 1'b0;
      _q <= 1'b1;
    end
  end
endmodule 
