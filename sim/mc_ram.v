module microcode_ram(_cs, _oe, _w, addr, data_in, data_out);
  input           _cs;
  input           _oe;
  input           _w;
  input   [7:0]   addr;
  input   [63:0]  data_in;
  output  [63:0]  data_out;
  reg     [63:0]  ram[0:511];
  wire    [63:0]  data_val;
  
  assign data_val = (!_cs) ? ram[addr] : 64'b0;
  assign data_out = _oe ? 64'bZ : data_val;
  
  always @ (negedge _w) begin
    ram[addr] <= data_in;
    $display("RAM control store wrote word %d to %b", addr, data_in);
  end
endmodule