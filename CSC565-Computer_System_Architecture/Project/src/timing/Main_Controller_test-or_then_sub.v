
module Main_Controller_test_or_then_sub;

	// Inputs
	reg [7:0] data_in;
	reg [7:0] IR;
	reg [7:0] R0;
	reg [7:0] R1;
	reg [1:0] enable;
	reg 	  clk;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Main_Controller uut (
		.data_in(data_in),
		.enable(enable),
		.clk(clk),
		.data_out(data_out),
		.IR(IR),
		.R0(R0),
		.R1(R1)
	);

	// Simulate system clock
	parameter    clk_period = 100;
    always     #(clk_period/2) clk = ~clk;    

	initial begin
		// Initialize Inputs
		clk = 1'b0;
		data_in = 8'b00000000;
		enable  = 2'b00;

		// Wait 50 ns for global reset to finish
		#50;
        
		// Add stimulus here: 1000 INPUTS

		// Reset all registers
		data_in = 8'b00000000;
		enable  = 2'b01;
		#100;
		data_in = 8'b00000000;
		enable  = 2'b10;
		#100;
		data_in = 8'b00000000;
		enable  = 2'b11;
		#100;

		// Add stimulus here	  
		
		$display("STARTING Register Load");
		
		// Load R0
		data_in = 8'b11111111; // FF
		enable  = 2'b01;
		#100;


		// Load R1
		data_in = 8'b00000000; // 00
		enable  = 2'b10;
		#100;


		// Load IR
		data_in = 8'b00101011; // data_out, R0, R1 = R0 | R1 = FF
		enable  = 2'b11;		 
		#100;

		$display("STARTING OR");
		
		// Compute Data Out and Write Back
		data_in = 8'b00000000; // R0 updates to FF
		enable  = 2'b00;	
		#100;
		
		// No Op
		data_in = 8'b00000000;
		enable  = 2'b00;		
		#100;

		// Load IR
		data_in = 8'b00011011; // data_out, R0, R1 = R0 - R1 = 00
		enable  = 2'b11;		 
		#100; 
		
		$display("STARTING SUB");
		
		// Compute Data Out and Write Back
		data_in = 8'b00000000;
		enable  = 2'b00;	
		#100;
		

		// No Op
		data_in = 8'b00000000;
		enable  = 2'b00;		
		#100;		  
		
		// No Op
		data_in = 8'b00000000;
		enable  = 2'b00;		
		#100;
		
    	$stop;
	end			
	
endmodule
