`timescale 1ns/1ps

// magnitude comparitor (modelled after MC10E166)
module magcomp(a, b, gt, lt, eq);
  parameter WIDTH=8;
  input       [WIDTH-1:0] a;
  input       [WIDTH-1:0] b;
  output      eq;
  output      lt;
  output      gt;
  
  assign #0.75 eq = (a==b);
  assign #0.85 lt = (a<b);
  assign #0.85 gt = (a>b);
endmodule
