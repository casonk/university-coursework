module mux2to1(out, select, in0, in1);
// This module takes 2 bits as input, along with a select bit.
// If the select bit is 1 then out is assigned to in0.
// Elif the select bit is 0 then out is assigned to in1.
	input in0, in1, select;
	output out;
	wire not_select, w0, w1;
	
	not (not_select, select);   // Invert select for in1.
	and (w0, select, in0);      // If select set w0 to in0.
	and (w1, not_select, in1);  // If not select set w0 to in1.
	or(out, w0, w1);
	
endmodule

module bit8_2to1mux(out, select, in0, in1);
// This module takes 2 bytes as input, along with a select bit.
// If the select bit is 1 then out is assigned to in0.
// Elif the select bit is 0 then out is assigned to in1.
	input [7:0] in0, in1;
	output [7:0] out;
	input select;
	genvar j;											// Tmp variable for the generate loop.												
	
	generate 
		for (j = 0; j < 8; j = j + 1) begin: mux_loop   // mux_loop is the name of the loop.
			mux2to1 m1(out[j], select, in0[j], in1[j]); // mux2to1 is instantiated every time it is called.
		end
	endgenerate
	
endmodule