`timescale 1ns/1ps

// 4-bit carry lookahead generator
module clag_4(g, p, cn, cn2, cn4, pg, gg);
  input [3:0]   g;
  input [3:0]   p;
  input         cn;
  output        cn2;
  output        cn4;
  output        pg;
  output        gg;
  wire          gate1_out, gate2_out, gate3_out, gate4_out, gate5_out;
  wire          gate6_out, gate7_out, gate8_out, gate9_out;
  
  // TODO: realistic propagation delays
  assign gate1_out = ~g[3];
  assign gate2_out = ~(p[3] | g[2]);
  assign gate3_out = ~(p[3] | p[2] | g[1]);
  assign gate4_out = ~(p[3] | p[2] | g[0] | p[1]);
  assign gate5_out = ~(p[3] | p[2] | p[0] | p[1] | cn);
  assign gate6_out = ~(p[3] | p[2] | p[0] | p[1]);
  assign gate7_out = ~g[1];
  assign gate8_out = ~(p[1] | g[0]);
  assign gate9_out = ~(p[1] | cn | p[0]);
  assign #2.5 cn2 = ~(gate7_out | gate8_out | gate9_out);
  assign #2.5 cn4 = ~(gate1_out | gate2_out | gate3_out | gate4_out | gate5_out);
  assign #2.5 gg  = ~(gate1_out | gate2_out | gate3_out | gate4_out);
  assign #2.5 pg = gate6_out;
endmodule
