`timescale 1ns/1ps

module microcode_ram(_cs, _oe, _w, addr, data_in, data_out);
  parameter WIDTH=64;

  input           _cs;
  input           _oe;
  input           _w;
  input   [8:0]   addr;
  input   [WIDTH-1:0]  data_in;
  output  [WIDTH-1:0]  data_out;
  reg     [WIDTH-1:0]  ram[0:511];
  wire    [WIDTH-1:0]  data_val;
  
  assign #5 data_val = (!_cs) ? ram[addr] : 64'b0;
  assign data_out = _oe ? 64'bZ : data_val;
  
  always @ (negedge _w) begin
    ram[addr] <= #5 data_in;
    $display("Control store RAM wrote data %b (0x%0h) to address %b (0x%0h)", data_in, data_in, addr, addr);
  end
endmodule