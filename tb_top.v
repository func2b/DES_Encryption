`timescale 1ns / 1ps

module tb_top;

	// Inputs
	reg clk;
	reg rst_n;
	reg [0:63] plainText;
	reg [0:63] key;

	// Outputs
	wire [63:0] encrypted;
	wire completed;

	// Instantiate the Unit Under Test (UUT)
	des_top uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.plainText(plainText), 
		.key(key), 
		.encrypted(encrypted),
		.completed(completed)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		plainText = 0;
		key = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst_n = 1;
		plainText = 64'hfedcba9876543210;
		key = 64'h1122334455667788;
		forever begin
			#5 clk<=0;
			#5 clk<=1;
		end

	end
	
	initial begin
		#500 plainText = 64'h00dcb00006543210; rst_n = 0;
		#10 rst_n = 1;
	end
      
endmodule

