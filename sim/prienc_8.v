`timescale 1ns/1ps

// TODO: should be redone using the logic from a real chip
// FIXME: clk isn't hooked up to anything yet
module prienc_8(clk, a, y);
  input             clk;
  input       [7:0] a;
  output reg  [3:0] y;

  always @ (*) begin
    if(a[0]) begin
      y = 4'b0001;
    end else if(a[1]) begin
      y = 4'b0010;
    end else if(a[2]) begin
      y = 4'b0011;
    end else if(a[3]) begin
      y = 4'b0100;
    end else if(a[4]) begin
      y = 4'b0101;
    end else if(a[5]) begin
      y = 4'b0110;
    end else if(a[6]) begin
      y = 4'b0111;
    end else if(a[7]) begin
      y = 4'b1000;
    end else begin
      y = 4'b0000;
    end
  end
endmodule


