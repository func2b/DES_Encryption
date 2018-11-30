`timescale 1ns / 1ps

module tb_top;

	`ifdef FSDB
	initial begin
		$fsdbDumpfile("wave.fsdb");
		$fsdbDumpvars("+all");
	end
	`endif

	`ifdef VCD
	initial begin
		$dumpfile("wave.vcd");
		$dumpvars(0,tb_top);
	end
	`endif

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
		forever begin
			#5 clk<=0;
			#5 clk<=1;
		end
	end
	
	initial begin
		#0 plainText = 64'hfedcba9876543210; key = 64'h1122334455667788;
		#10 rst_n = 1;
		#400 $display("plainText:\t%H\tkey:\t%H\tencrypted:\t%H\n",plainText,key,encrypted); 
		
		#100 plainText = 64'h00dcb00006543210; key = 64'h1122334455667788; rst_n = 0;
		#10 rst_n = 1;
		#400 $display("plainText:\t%H\tkey:\t%H\tencrypted:\t%H\n",plainText,key,encrypted);
		
		#100 plainText = 64'h00dcb00006543210; key = 64'h8877665544332211;  rst_n = 0;
		#10 rst_n = 1;
		#400 $display("plainText:\t%H\tkey:\t%H\tencrypted:\t%H\n",plainText,key,encrypted);
		
		#100 plainText = 64'hfedcba9876543210; key = 64'h8877665544332211; rst_n = 0;
		#10 rst_n = 1;
		#400 $display("plainText:\t%H\tkey:\t%H\tencrypted:\t%H\n",plainText,key,encrypted);
		
		#100 rst_n = 0;
	       	#10 $finish;
	end  
endmodule

