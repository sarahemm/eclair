module alu(clk, alu_op, x, y, z);
  input           clk;
  input           alu_op;
  input   [15:0]   x;
  input   [15:0]   y;
  output  [15:0]   z;
  
  assign z = x;
endmodule
