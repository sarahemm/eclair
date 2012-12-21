`timescale 1ns/1ps

module main_eprom(_cs, _oe, addr, data);
  parameter ROM_FILE="eprom.bin";
  
  input           _cs;
  input           _oe;
  input   [19:0]  addr;
  output  [7:0]  data; 
  reg     [7:0]  rom[0:1024];
  wire    [7:0]  data_val;
  
  // TODO: make this have a realistic propagation delay
  assign data_val = (!_cs) ? rom[addr] : 8'b0;
  assign data = _oe ? 8'bZ : data_val;
  
  initial begin
    $readmemb(ROM_FILE, rom);
    $display("Boot ROM loaded from disk to ROM.");
  end
endmodule