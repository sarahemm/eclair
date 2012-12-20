`timescale 1ns/1ps

// simple async-load async-reset up-counter
module counter(clk, reset, out, load, preset);
  parameter WIDTH=8;
  output  reg [WIDTH-1:0] out;
  input                   clk;
  input                   reset;
  input                   load;
  input       [WIDTH-1:0] preset;
  
  initial begin
    out = 8'b0;
  end
  
  always @(posedge clk or posedge reset or posedge load) begin
    if (reset) begin
      out <= 0;
      //$display("counter: reset");
    end else if(load) begin
      out <= preset;
      //$display("counter: load");
    end else begin
      out <= out + 1;
    end
  end
endmodule 
