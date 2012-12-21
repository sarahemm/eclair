`timescale 1ns/1ps

// simple async-load async-reset up-counter
module counter(clk, reset, out, load, preset, ce);
  parameter WIDTH=8;
  output  reg [WIDTH-1:0] out;
  input                   clk;
  input                   reset;
  input                   load;
  input       [WIDTH-1:0] preset;
  input                   ce; // count enable
  
  initial begin
    out = 8'b0;
  end
  
  always @(posedge clk or posedge reset or posedge load) begin
    //$display("counter: c%0b r%0b l%0b", clk, reset, load);
    if (reset) begin
      out <= #1 0;
      //$display("counter: reset");
    end else if(load) begin
      out <= #1 preset;
      //$display("counter: load");
    end else if(ce) begin
      out <= #1 out + 1;
      //$display("counter: inc");
    end
  end
endmodule 
