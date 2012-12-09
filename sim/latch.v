module latch(clk, in, out);
  parameter WIDTH=8;
  output  reg [WIDTH-1:0] out;
  input                   clk;
  input       [WIDTH-1:0] in;

  always @ (posedge clk) begin
    out <= in;
  end
endmodule
