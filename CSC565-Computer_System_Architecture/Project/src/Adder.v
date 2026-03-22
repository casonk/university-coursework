module halfAdder(sum, carry, in0, in1);
// The halfAdder takes no carry in but will produce a carry out.
	input 			in0, in1;
	output 			sum, carry;
	
	xor 			x1(sum, in0, in1);
	and 			a1(carry, in0, in1);
	
endmodule

module oneBitFullAdder(sum, carry, in0, in1, cin);
// This fullAdder performs addition given a carry in.
	input 			in0, in1, cin;
	output 			sum, carry;
	wire 			s1, c1, c2;
	
	halfAdder 		ha1(s1, c1, in0, in1); // Add in0 and in1 to s1.
	halfAdder 		ha2(sum, c2, s1, cin); // Add s1 and cin to sum.
	or 				o1 (carry, c1, c2);    // Check carry from either halfAdder.
	
endmodule

module fourBitFullAdder(sum, carry, in0, in1, cin);
// This is a fullAdder on a half-byte.
	input 	[3:0] 	in0, in1;
	input 			cin;
	output 	[3:0] 	sum;
	output 			carry;
	wire 			c0, c1, c2;
	
	// Chain 4 bit fullAdders together.
	oneBitFullAdder obfa1(sum[0], c0, in0[0], in1[0], cin);
	oneBitFullAdder obfa2(sum[1], c1, in0[1], in1[1], c0);
	oneBitFullAdder obfa3(sum[2], c2, in0[2], in1[2], c1);
	oneBitFullAdder obfa4(sum[3], carry, in0[3], in1[3], c2);
	
endmodule

module eightBitFullAdder(sum, carry, in0, in1, cin);
// This is a fullAdder on a byte.
	input 	[7:0] 	in0, in1;
	input 			cin;
	output 	[7:0] 	sum;
	output 			carry;
	wire 			caux;
	
	// Chain 2 half-byte fullAdders together.
	fourBitFullAdder fbfa1(sum[3:0], caux, in0[3:0], in1[3:0], cin);
	fourBitFullAdder fbfa2(sum[7:4], carry, in0[7:4], in1[7:4], caux);
	
endmodule