`timescale 1ns/1ps

// 3x 4-input 3-bit mux-with-latches (MC10E156) in parallel to make a 4-input 9-bit mux

module mux_94(sel, reset, lat, a, b, c, d, y);
  
  input       [1:0] sel;
  input             reset;
  input             lat;
  input       [8:0] a;
  input       [8:0] b;
  input       [8:0] c;
  input       [8:0] d;
  output      [8:0] y;


  assign #1 y = reset ? 9'b000000000 : lat ? y : sel[1] ? (sel[0] ? d : c) : (sel[0] ? b : a);
endmodule


