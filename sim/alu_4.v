`timescale 1ns/1ps

module alu_4(s, a, b, cn, m, f, gg, pg, cn4);
  input   [3:0]   s;
  input   [3:0]   a;
  input   [3:0]   b;
  input           cn;
  input           m;
  output  [3:0]   f;
  output          gg;
  output          pg;
  output          cn4;
  wire            gate_0l, gate_0m0, gate_0m1, gate_0m2, gate_0m3, gate_0m4, gate_0r0, gate_0r1;
  wire            gate_1l, gate_1m0, gate_1m1, gate_1m2, gate_1m3, gate_1m4, gate_1r0, gate_1r1;
  wire            gate_2l, gate_2m0, gate_2m1, gate_2m2, gate_2m3, gate_2m4, gate_2r0, gate_2r1;
  wire            gate_3l, gate_3m0, gate_3m1, gate_3m2, gate_3m3, gate_3m4, gate_3r0, gate_3r1;
  wire            gate_fa0, gate_fa1, gate_fa2, gate_fa3; 
  wire            gate_fb0, gate_fb1, gate_fb2, gate_fb3, gate_fb4, gate_fb5, gate_fb6, gate_fb7;
  wire            gate_fb8, gate_fb9, gate_fb11, gate_fb12, gate_fb13, gate_fb14, gate_fb15; 
  wire            gate_fc0, gate_fc1, gate_fc2, gate_fc3;
  
  // TODO: realistic propagation delays
  
  // bit 0
  assign gate_0l  = ~b[0];
  assign gate_0m0 = ~(s[3] | b[0] | a[0]);
  assign gate_0m1 = ~(s[2] | gate_0l | a[0]);
  assign gate_0m2 = ~(s[1] | gate_0l);
  assign gate_0m3 = ~(s[0] | b[0]);
  assign gate_0m4 = ~a[0];
  assign gate_0r0 = ~(gate_0m0 | gate_0m1);
  assign gate_0r1 = ~(gate_0m2 | gate_0m3 | gate_0m4);
  
  // bit 1
  assign gate_1l  = ~b[1];
  assign gate_1m0 = ~(s[3] | b[1] | a[1]);
  assign gate_1m1 = ~(s[2] | gate_1l | a[1]);
  assign gate_1m2 = ~(s[1] | gate_1l);
  assign gate_1m3 = ~(s[0] | b[1]);
  assign gate_1m4 = ~a[1];
  assign gate_1r0 = ~(gate_1m0 | gate_1m1);
  assign gate_1r1 = ~(gate_1m2 | gate_1m3 | gate_1m4);
  
  // bit 2
  assign gate_2l  = ~b[2];
  assign gate_2m0 = ~(s[3] | b[2] | a[2]);
  assign gate_2m1 = ~(s[2] | gate_2l | a[2]);
  assign gate_2m2 = ~(s[1] | gate_2l);
  assign gate_2m3 = ~(s[0] | b[2]);
  assign gate_2m4 = ~a[2];
  assign gate_2r0 = ~(gate_2m0 | gate_2m1);
  assign gate_2r1 = ~(gate_2m2 | gate_2m3 | gate_2m4);
  
  // bit 3
  assign gate_3l  = ~b[3];
  assign gate_3m0 = ~(s[3] | b[3] | a[3]);
  assign gate_3m1 = ~(s[2] | gate_3l | a[3]);
  assign gate_3m2 = ~(s[1] | gate_3l);
  assign gate_3m3 = ~(s[0] | b[3]);
  assign gate_3m4 = ~a[3];
  assign gate_3r0 = ~(gate_3m0 | gate_3m1);
  assign gate_3r1 = ~(gate_3m2 | gate_3m3 | gate_3m4);
  
  // finalization
  assign gate_fa0 = gate_0r0 ^ gate_0r1;
  assign gate_fa1 = gate_1r0 ^ gate_1r1;
  assign gate_fa2 = gate_2r0 ^ gate_2r1;
  assign gate_fa3 = gate_3r0 ^ gate_3r1;
  
  assign gate_fb0 = ~(m | cn);
  
  assign gate_fb1 = ~(m | gate_0r0);
  assign gate_fb2 = ~(m | gate_0r1 | cn);
  
  assign gate_fb3 = ~(m | gate_1r0); // was 0r1
  assign gate_fb4 = ~(m | gate_1r1 | gate_0r0);
  assign gate_fb5 = ~(m | gate_1r1 | gate_0r1 | cn);
  
  assign gate_fb6 = ~(m | gate_2r0);
  assign gate_fb7 = ~(m | gate_2r1 | gate_1r0);
  assign gate_fb8 = ~(m | gate_2r1 | gate_1r1 | gate_0r0);
  assign gate_fb9 = ~(m | gate_2r1 | gate_1r1 | gate_0r1 | cn);
  
  assign pg = gate_3r1 | gate_2r1 | gate_1r1 | gate_0r1;
  
  assign gate_fb11 = ~gate_3r0;
  assign gate_fb12 = ~(gate_3r1 | gate_2r0);
  assign gate_fb13 = ~(gate_3r1 | gate_2r1 | gate_1r0);
  assign gate_fb14 = ~(gate_0r0 | gate_1r1 | gate_2r1 | gate_3r1);
  assign gate_fb15 = ~(gate_0r1 | gate_1r1 | gate_2r1 | gate_3r1 | cn);
  
  assign gate_fc0 = gate_fb1  | gate_fb2;
  assign gate_fc1 = gate_fb3  | gate_fb4  | gate_fb5;
  assign gate_fc2 = gate_fb6  | gate_fb7  | gate_fb8  | gate_fb9;
  assign gate_fc3 = gate_fb11 | gate_fb12 | gate_fb13 | gate_fb14;
  assign gg = ~gate_fc3;
  
  assign f[0] = gate_fa0 ~^ gate_fb0;
  assign f[1] = gate_fa1 ~^ gate_fc0;
  assign f[2] = gate_fa2 ~^ gate_fc1;
  assign f[3] = gate_fa3 ~^ gate_fc2;
  assign cn4 = gate_fb15 ~| gate_fc3;
endmodule
