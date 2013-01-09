`timescale 1ns/1ps

module mux_18(sel, a, b, c, d, e, f, g, h, y);
  input       [2:0] sel;
  input             a;
  input             b;
  input             c;
  input             d;
  input             e;
  input             f;
  input             g;
  input             h;
  output reg        y;

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


