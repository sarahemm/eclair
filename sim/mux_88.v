`timescale 1ns/1ps

module mux_88(sel, a, b, c, d, e, f, g, h, y);
  input       [2:0] sel;
  input       [7:0] a;
  input       [7:0] b;
  input       [7:0] c;
  input       [7:0] d;
  input       [7:0] e;
  input       [7:0] f;
  input       [7:0] g;
  input       [7:0] h;
  output reg  [7:0] y;

  always @ (*) begin
		case(sel)
			3'b000: begin
			  #0.85 y <= a;
			end
			3'b001: begin
		    #0.85 y <= b;
			end
			3'b010: begin
	      #0.85 y <= c;
			end
			3'b011: begin
        #0.85 y <= d;
			end
			3'b100: begin
        #0.85 y <= e;
			end
			3'b101: begin
        #0.85 y <= f;
			end
			3'b110: begin
        #0.85 y <= g;
			end
			3'b111: begin
        #0.85 y <= h;
			end	
		endcase
	end
endmodule


