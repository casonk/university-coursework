
module subtractor_signed_byte_test;

	// Inputs
	reg signed_flag;
	reg inbit_0_0;
	reg inbit_0_1;
	reg inbit_0_2;
	reg inbit_0_3;
	reg inbit_0_4;
	reg inbit_0_5;
	reg inbit_0_6;
	reg inbit_0_7;
	reg inbit_1_0;
	reg inbit_1_1;
	reg inbit_1_2;
	reg inbit_1_3;
	reg inbit_1_4;
	reg inbit_1_5;
	reg inbit_1_6;
	reg inbit_1_7;

	// Outputs
	wire outbit_0_0;
	wire outbit_0_1;
	wire outbit_0_2;
	wire outbit_0_3;
	wire outbit_0_4;
	wire outbit_0_5;
	wire outbit_0_6;
	wire outbit_0_7;
	// wire carry_out;
	wire overflow_flag;
	wire sink;


	// Instantiate the Unit Under Test (UUT)
	subtractor_signed_byte uut (
		.signed_flag(signed_flag), 
		.inbit_0_0(inbit_0_0), 
		.inbit_0_1(inbit_0_1), 
		.inbit_0_2(inbit_0_2), 
		.inbit_0_3(inbit_0_3), 
		.inbit_0_4(inbit_0_4), 
		.inbit_0_5(inbit_0_5), 
		.inbit_0_6(inbit_0_6), 
		.inbit_0_7(inbit_0_7), 
		.inbit_1_0(inbit_1_0), 
		.inbit_1_1(inbit_1_1), 
		.inbit_1_2(inbit_1_2), 
		.inbit_1_3(inbit_1_3), 
		.inbit_1_4(inbit_1_4), 
		.inbit_1_5(inbit_1_5), 
		.inbit_1_6(inbit_1_6), 
		.inbit_1_7(inbit_1_7), 
		.outbit_0_0(outbit_0_0),
		.outbit_0_1(outbit_0_1),
		.outbit_0_2(outbit_0_2),
		.outbit_0_3(outbit_0_3),
		.outbit_0_4(outbit_0_4),
		.outbit_0_5(outbit_0_5),
		.outbit_0_6(outbit_0_6),
		.outbit_0_7(outbit_0_7),
		// .carry_out(carry_out)
		.overflow_flag(overflow_flag),
		.sink(sink)
	);

	initial begin
		// Initialize Inputs
		signed_flag = 1;
	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here: 100 INPUTS

	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 1;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 1;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 0;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 0;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 1;
	    inbit_1_4 = 0;
	    inbit_1_5 = 1;
	    inbit_1_6 = 0;
	    inbit_1_7 = 1;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 1;
	    inbit_0_3 = 0;
	    inbit_0_4 = 0;
	    inbit_0_5 = 1;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 0;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 1;
	    inbit_0_1 = 0;
	    inbit_0_2 = 0;
	    inbit_0_3 = 1;
	    inbit_0_4 = 0;
	    inbit_0_5 = 0;
	    inbit_0_6 = 1;
	    inbit_0_7 = 1;
	    inbit_1_0 = 0;
	    inbit_1_1 = 0;
	    inbit_1_2 = 0;
	    inbit_1_3 = 1;
	    inbit_1_4 = 1;
	    inbit_1_5 = 1;
	    inbit_1_6 = 1;
	    inbit_1_7 = 0;
        #100;


	    inbit_0_0 = 0;
	    inbit_0_1 = 1;
	    inbit_0_2 = 1;
	    inbit_0_3 = 1;
	    inbit_0_4 = 1;
	    inbit_0_5 = 0;
	    inbit_0_6 = 0;
	    inbit_0_7 = 0;
	    inbit_1_0 = 0;
	    inbit_1_1 = 1;
	    inbit_1_2 = 1;
	    inbit_1_3 = 0;
	    inbit_1_4 = 0;
	    inbit_1_5 = 0;
	    inbit_1_6 = 1;
	    inbit_1_7 = 1;
        #100;


    end
endmodule
