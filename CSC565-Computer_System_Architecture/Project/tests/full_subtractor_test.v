
module full_subtractor_test;

	// Inputs
	reg inbit_0;
	reg inbit_1;
	reg borrow_in; // reg carry_in;

	// Outputs
	wire outbit_0;
	wire borrow_out; // wire carry_out;

	// Instantiate the Unit Under Test (UUT)
	full_subtractor uut (
		.inbit_0(inbit_0), 
		.inbit_1(inbit_1), 
		.borrow_in(borrow_in), // .carry_in(carry_in),
		.outbit_0(outbit_0),
		.borrow_out(borrow_out) // .carry_out(carry_out)
	);

	initial begin
		// Initialize Inputs
		inbit_0 = 0;
		inbit_1 = 0;	  
		borrow_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here: 100 INPUTS

        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        borrow_in = 0;
        #100;


    end
endmodule
