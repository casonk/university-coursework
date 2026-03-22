
module half_subtractor_test;

	// Inputs
	reg inbit_0;
	reg inbit_1;

	// Outputs
	wire outbit_0;
	wire borrow_out;

	// Instantiate the Unit Under Test (UUT)
	half_subtractor uut (
		.inbit_0(inbit_0), 
		.inbit_1(inbit_1), 
		.outbit_0(outbit_0),
		.borrow_out(borrow_out)
	);

	initial begin
		// Initialize Inputs
		inbit_0 = 0;
		inbit_1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here: 100 INPUTS

        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 1;
        #100;


        inbit_0 = 1;
        inbit_1 = 1;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 0;
        inbit_1 = 0;
        #100;


        inbit_0 = 1;
        inbit_1 = 0;
        #100;


    end
endmodule
