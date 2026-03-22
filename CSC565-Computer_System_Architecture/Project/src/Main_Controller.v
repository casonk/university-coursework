module Main_Controller(data_in, enable, data_out, IR, R0, R1, clk);
// This module handles data loads, alu operations, and register write backs.
// This is done primarily working with the enable pins and the instruction loaded. 
    input       clk;
	input  wire	[1:0] 	enable;
	input  wire	[7:0] 	data_in;
	output reg	[7:0] 	IR, R0, R1, data_out;
	wire	    [7:0] 	IR_data, R0_data, R1_data, operand_0, operand_1, result;
    wire        [1:0]   flags, destination, operation;
    wire                select_0, select_1, alu_disable;

    assign R0_data      = R0;
    assign R1_data      = R1;
    assign destination  = IR[1:0];
    assign operation    = IR[5:4];
    assign select_0     = IR[2];
    assign select_1     = IR[3];
    assign alu_disable  = IR[0] | IR[1];                                // if destination set for write back.


    bit8_2to1mux m0  (operand_0, select_0, R1_data, R0_data);           // select operand_0.
    bit8_2to1mux m1  (operand_1, select_1, R1_data, R0_data);           // select operand_1.
    ALU          alu (operand_0, operand_1, operation, result, flags);  // perform alu operation on operands.

	always @ (negedge clk) begin
		case (enable)
			2'b11 : IR <= data_in;                                      // IR load.
			2'b10 : R1 <= data_in;	                                    // R1 load.
			2'b01 : R0 <= data_in;                                      // R0 load.
			2'b00 : begin
                case (destination)
                    2'b11 : begin                                       // R0 & R1 writeback.
                        R0       <= result;
                        R1       <= result;
                    end
                    2'b10 : begin                                       // R1 writeback.
                        R1       <= result;
                    end
                    2'b01 : begin                                       // R0 writeback.
                        R0       <= result;                             
                    end
                endcase
                data_out <= result;                                     // always send alu output to the bus.
                IR[7:6]  <= flags;                                      // always update the flags.
                if (alu_disable) begin
                    IR[1:0]  <= enable;                                 // reset destination to prevent double writeback.
                end
            end
		endcase
	end

endmodule