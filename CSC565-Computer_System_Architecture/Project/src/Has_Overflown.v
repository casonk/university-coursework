module Has_Overflown  (overflow, in0, in1, subtrahand);
// This module tests if overflow has occured on twos complement subtraction of the form : in0 - in1 = subtrahand
// Overflow occurs if in0 and in0 have different sign while additionally in1 and subtrahand have the same sign.
	input 	 	in0, in1, subtrahand;
	output 	 	overflow;	
	wire        w0, w1;				 
	
	xor	x0 (w0, in0, in1);		  // 1 if the two inputs have different sign.
	xor	x1 (w1, in1, subtrahand); // 1 if the output the subtrahand have different sign.
	and a0 (overflow, w0, ~w1);   // 1 if overflow has occured.
	
endmodule