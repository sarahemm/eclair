`timescale 1ns/1ps

module main_ram(_cs, _oe, _w, addr, data_in, data_out);
  parameter WIDTH=8;
  parameter ADDR_WIDTH=20;
  parameter TYPE="Unknown";
  
  input               _cs;
  input               _oe;
  input               _w;
  input   [ADDR_WIDTH-1:0]      addr;
  input   [WIDTH-1:0] data_in;
  output  [WIDTH-1:0] data_out;
  reg     [WIDTH-1:0] ram[0:2048];
  wire    [WIDTH-1:0] data_val;
  
  assign #5 data_val = (!_cs) ? ram[addr] : 16'bZ;
  assign data_out = _oe ? 16'b0 : data_val; // it's ECL, there's no hi-Z but turning the output off should make it output zeroes
  
  always @ (negedge _w) begin
    #4 ram[addr] <= data_in;
    $display("%s RAM wrote data %b (0x%0h) to address %b (0x%0h)", TYPE, data_in, data_in, addr, addr);
  end
endmodule