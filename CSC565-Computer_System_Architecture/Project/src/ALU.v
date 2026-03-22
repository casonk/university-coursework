module 	ALU            (operand_0, operand_1, operation, result, flags);
	input	    [1:0] 	operation; // operation[1] = OR, operation[0] = SUB
	input	    [7:0] 	operand_0, operand_1;
    output      [1:0]   flags;       
    output      [7:0]   result;
	wire 		[7:0]	or_result, sub_result;
	wire 				select, valid_op, sign, overflow, sub_borrow;
	
	eightBitOr             ebor (or_result, operand_0, operand_1);                     // Compute logical or.
	// The fullSubtractor leverages the fullAdder via 2's complement.
	// By negating the subtrahand and setting the carry to 1 we perform 2's complement on the subtrahand.
	eightBitFullAdder      ebfa (sub_result, sub_borrow, operand_0, ~operand_1, 1'b1); // Compute integer sub.

	xor 		  x0  (valid_op, operation[0], operation[1]);                          // Require only one opcode is set.
	and           a0  (select, operation[0], valid_op);                                // Set select to SUB value if opcode is valid.
	bit8_2to1mux  mr  (result, select, sub_result, or_result);                         // Set result based on opcode.
	assign sign     =  result[7];                                                      // Set sign flag based on result.
	Has_Overflown h0  (overflow, operand_0[7], operand_1[7], sign);                    // Detect overflow. Note: only relevant for sub.
	assign flags    = {overflow, sign};                                                // Concat overflow and sign to the output flags.
	
endmodule