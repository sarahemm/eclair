`timescale 1ns/1ps

module demux_38(in, out);
  input   [2:0] in;
  output  [7:0] out;
  
  assign #0.85 out = (in == 3'b000) ? 8'b1111_1110:
               (in == 3'b001) ? 8'b1111_1101:
               (in == 3'b010) ? 8'b1111_1011:
               (in == 3'b011) ? 8'b1111_0111:
               (in == 3'b100) ? 8'b1110_1111:
               (in == 3'b101) ? 8'b1101_1111:
               (in == 3'b110) ? 8'b1011_1111:
               (in == 3'b111) ? 8'b0111_1111:
                                8'b1111_1111;
endmodule