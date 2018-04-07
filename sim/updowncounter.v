`timescale 1ns/1ps

// sync-load async-reset up/down counter (like MC10E136)
module updowncounter(clk, reset, out, preset, mode);
  parameter WIDTH=8;
  output  reg [WIDTH-1:0] out;
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
      out <= #1.25 0;
      $display("udcounter: reset");
    end else if(mode == 2'b00) begin
      out <= #1.25 preset;
      $display("udcounter: load");
    end else if(mode == 2'b01) begin
      out <= #1.25 out - 1;
      $display("udcounter: count up");
    end else if(mode == 2'b10) begin
      out <= #1.25 out + 1;
      $display("udcounter: count up");
    end
  end
endmodule 
