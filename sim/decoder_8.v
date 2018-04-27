`timescale 1ns/1ps

// models an MC10H161 Binary to 1-8 Decoder w/ Active Low Output

module decoder_8(in, out, enable);
  input   [2:0] in;
  input         enable;
  output  [7:0] out;
  wire          master_enable;

  assign #0.5 master_enable = enable;
  assign #1.25 out = (master_enable == 1'b1) ? 8'b1111_1111:
               (in == 3'b000) ? 8'b1111_1110:
               (in == 3'b001) ? 8'b1111_1101:
               (in == 3'b010) ? 8'b1111_1011:
               (in == 3'b011) ? 8'b1111_0111:
               (in == 3'b100) ? 8'b1110_1111:
               (in == 3'b101) ? 8'b1101_1111:
               (in == 3'b110) ? 8'b1011_1111:
               (in == 3'b111) ? 8'b0111_1111:
                                8'b1111_1111;
endmodule
