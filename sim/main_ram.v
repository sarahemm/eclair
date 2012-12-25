`timescale 1ns/1ps

module main_ram(_cs, _oe, _w, addr, data_in, data_out);
  parameter WIDTH=8;
  
  input               _cs;
  input               _oe;
  input               _w;
  input   [19:0]      addr;
  input   [WIDTH-1:0] data_in;
  output  [WIDTH-1:0] data_out;
  reg     [WIDTH-1:0] ram[0:1024];
  wire    [WIDTH-1:0] data_val;
  
  assign #5 data_val = (!_cs) ? ram[addr] : 16'bZ;
  assign data_out = _oe ? 16'bZ : data_val;
  
  always @ (negedge _w) begin
    ram[addr] <= data_in;
    $display("Main RAM wrote word %d to %b", addr, data_in);
  end
endmodule