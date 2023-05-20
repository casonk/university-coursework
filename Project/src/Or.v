module eightBitOr  (out, in0, in1);
// This module performs the bitwise or operation on 2 bytes in0, in0.
	input 	[7:0] 	in0, in1;
	output 	[7:0] 	out;					 
	
	assign {out}  = in0 | in1;		
	
endmodule