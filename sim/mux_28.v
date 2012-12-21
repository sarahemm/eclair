`timescale 1ns/1ps

module mux_28(sel, a, b, y);
  input   sel;
  input   [7:0] a;
  input   [7:0] b;
  output  [7:0] y;

  assign #0.85 y = (sel) ? b : a;
endmodule