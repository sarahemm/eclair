`timescale 1ns/1ps

// sync-load async-reset up/down counter (like MC10E136)
module updowncounter(clk, reset, out, preset, mode, cout, clout);
  parameter WIDTH=8;
  output  reg [WIDTH-1:0] out;
  output  reg             cout;
  output  reg             clout;
  input                   clk;
  input                   reset;
  input                   load;
  input       [WIDTH-1:0] preset;
  input       [1:0]       mode; // 00=Preset, 01=Count Down, 10=Count Up, 11=Hold Count
  
  initial begin
    out = 8'b0;
  end
  
  always @(posedge clk or posedge reset) begin
    $display("udcounter: c%0b r%0b l%0b", clk, reset, load);
    if (reset) begin
      // reset
      out <= #1.25 0;
      cout <= 0;
      clout <= 1;
    end else if(mode == 2'b00) begin
      // load
      out <= #1.25 preset;
    end else if(mode == 2'b01) begin
      // decrement
      clout <= #1.25 out == 2;
      cout  <= #1.25 out == 1;
      out   <= #1.25 out - 1;
    end else if(mode == 2'b10) begin
      // increment
      // TODO: support carry outputs with increment like we do with decrement
      out <= #1.25 out + 1;
    end
  end
endmodule 
