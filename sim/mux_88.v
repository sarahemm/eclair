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
			  y <= a;
			end
			3'b001: begin
		    y <= b;
			end
			3'b010: begin
	      y <= c;
			end
			3'b011: begin
        y <= d;
			end
			3'b100: begin
        y <= e;
			end
			3'b101: begin
        y <= f;
			end
			3'b110: begin
        y <= g;
			end
			3'b111: begin
        y <= h;
			end	
		endcase
	end
endmodule


