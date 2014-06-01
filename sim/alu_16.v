`timescale 1ns/1ps

module alu_16(alu_op, mode, x, y, c_in, z, c_out8, c_out16);
  input   [3:0]     alu_op;
  input             mode;
  input   [15:0]    x;
  input   [15:0]    y;
  input             c_in;
  output  [15:0]    z;
  output            c_out8, c_out16;
  wire    [3:0]     p;
  wire    [3:0]     g;
  wire              cn4a, cn4b, clag_cn2;
  
  alu_4   alu0(.s(alu_op), .a(x[3:0]),   .b(y[3:0]),   .cn(c_in),     .m(mode), .f(z[3:0]),   .pg(p[0]), .gg(g[0]), .cn4(cn4a));
  alu_4   alu1(.s(alu_op), .a(x[7:4]),   .b(y[7:4]),   .cn(cn4a),     .m(mode), .f(z[7:4]),   .pg(p[1]), .gg(g[1]), .cn4(c_out8));
  alu_4   alu2(.s(alu_op), .a(x[11:8]),  .b(y[11:8]),  .cn(clag_cn2), .m(mode), .f(z[11:8]),  .pg(p[2]), .gg(g[2]), .cn4(cn4b));
  alu_4   alu3(.s(alu_op), .a(x[15:12]), .b(y[15:12]), .cn(cn4b),     .m(mode), .f(z[15:12]), .pg(p[3]), .gg(g[3]), .cn4(c_out16));
  clag_4  clag4(.cn(c_in), .p(p), .g(g), .cn2(clag_cn2));
endmodule
