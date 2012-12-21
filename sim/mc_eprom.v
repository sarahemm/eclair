`timescale 1ns/1ps

module microcode_eprom(_cs, _oe, addr, data);
  parameter ROM_FILE="eprom.bin";
  parameter WIDTH=64;
  
  input                 _cs;
  input                 _oe;
  input   [7:0]         addr;
  output  [WIDTH-1:0]   data; 
  reg     [WIDTH-1:0]   rom[0:511];
  wire    [WIDTH-1:0]   data_val;
  
  assign #40 data_val = (!_cs) ? rom[addr] : 64'b0;
  assign #40 data = _oe ? 64'bZ : data_val;
  
  initial begin
    $readmemb(ROM_FILE, rom);
    $display("Microcode loaded from disk to ROM.");
  end  
endmodule