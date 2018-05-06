`timescale 1ns/1ps

// we have this as a module and not just & to get realistic propagation delays
module andgate(a, b, y);
  parameter WIDTH=8;
  input       [WIDTH-1:0] a;
  input       [WIDTH-1:0] b;
  output reg  [WIDTH-1:0] y;
  
  always @ (*) begin
    #0.5 y <= a & b;
  end
endmodule
