`timescale 1ns/1ps

module mux_21(sel, a, b, y);
  input   sel;
  input   a;
  input   b;
  output  y;

  assign #0.85 y = (sel) ? b : a;
endmodule