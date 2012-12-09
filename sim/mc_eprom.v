module microcode_eprom(_cs, _oe, addr, data);
  parameter ROM_FILE="eprom.bin";
  
  input           _cs;
  input           _oe;
  input   [7:0]   addr;
  output  [63:0]  data; 
  reg     [63:0]  rom[0:511];
  wire    [63:0]  data_val;
  
  assign data_val = (!_cs) ? rom[addr] : 64'b0;
  assign data = _oe ? 64'bZ : data_val;
  
  initial begin
    $readmemb(ROM_FILE, rom);
    $display("Microcode loaded from disk to ROM.");
  end  
endmodule