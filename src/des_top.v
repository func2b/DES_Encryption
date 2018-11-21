`timescale 1ns / 1ps

module des_top(
	input clk,
	input rst_n,
	input [0:63] plainText,
	input [0:63] key,
	output reg [63:0] encrypted,
	output reg completed
    );

wire [0:47] subkeys[1:16];
wire [0:63] final_result;
wire [0:31] L0;
wire [0:31] R0;

gen_keys genkeys (
    .key(key),
    .k1(subkeys[1]), 
    .k2(subkeys[2]), 
    .k3(subkeys[3]), 
    .k4(subkeys[4]), 
    .k5(subkeys[5]), 
    .k6(subkeys[6]), 
    .k7(subkeys[7]), 
    .k8(subkeys[8]), 
    .k9(subkeys[9]), 
    .k10(subkeys[10]), 
    .k11(subkeys[11]), 
    .k12(subkeys[12]), 
    .k13(subkeys[13]), 
    .k14(subkeys[14]), 
    .k15(subkeys[15]), 
    .k16(subkeys[16])
    );

initial_p initP (
    .data_in(plainText), 
    .L0(L0), 
    .R0(R0)
    );

reg[3:0] cycle;
initial cycle = 4'd0;
reg[0:31] LREG;
reg[0:31] RREG;
wire[0:31] LREG_next;
wire[0:31] RREG_next; //round_function outputs depend on inputs
reg[0:47] keyREG;


round_func rf (
		.rst_n(rst_n),
		.LX(LREG), 
		.RX(RREG), 
		.key(keyREG), 
		.LX_next(LREG_next), 
		.RX_next(RREG_next)
		);

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		cycle<=4'd0;
		completed <= 0;
	end
	else begin
		if(!completed) begin
			keyREG <= subkeys[cycle + 1];
			if(cycle == 4'd0) begin 
				LREG <= L0;
				RREG <= R0;
			end
			else begin
				LREG <= LREG_next;
				RREG <= RREG_next;
			end
			if(cycle < 4'd15) cycle <= cycle + 4'd1;
			else completed <= 1;
		end 
	end
end

final_P finalP (
    .final_in({RREG_next,LREG_next}), 
    .final_out(final_result)
    );

always@(*) begin
	encrypted <= completed?final_result:64'hzzzzzzzzzzzzzzzz;
end
endmodule