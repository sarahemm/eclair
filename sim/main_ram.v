module main_ram(_cs, _oe, _w, addr, data_in, data_out);
  input           _cs;
  input           _oe;
  input           _w;
  input   [19:0]   addr;
  input   [7:0]  data_in;
  output  [7:0]  data_out;
  reg     [7:0]  ram[0:1024];
  wire    [7:0]  data_val;
  
  assign data_val = (!_cs) ? ram[addr] : 7'bZ;
  assign data_out = _oe ? 7'bZ : data_val;
  
  always @ (negedge _w) begin
    ram[addr] <= data_in;
    $display("Main RAM wrote word %d to %b", addr, data_in);
  end
endmodule