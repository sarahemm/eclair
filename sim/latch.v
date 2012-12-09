module latch(clk, in, out);
  parameter WIDTH=8;
  output  reg [WIDTH-1:0] out;
  input                   clk;
  input       [WIDTH-1:0] in;

  always @ (*) begin
    if(clk == 1'b0) begin
      // out tracks in while clk is low, latches to last state when high
      out <= in;
    end
  end
endmodule
