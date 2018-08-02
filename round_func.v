`timescale 1ns / 1ps

module round_func(
	 input rst_n,
    input [0:31] LX,
    input [0:31] RX, 
	 input [0:47] key,
	 
    output [0:31] LX_next,
    output [0:31] RX_next
    );
wire [0:47] EtoXOR;
wire [0:31] StoP;
wire [0:31] PtoXOR;

E_box E_box1 (
    .R(RX), 
    .ER(EtoXOR)
    );

S_boxes S_boxes1 (
	 .rst_n(rst_n),
    .S_in(EtoXOR ^ key), 
    .S_out(StoP)
    );

P_box P_box1 (
    .P_in(StoP), 
    .P_out(PtoXOR)
    );

assign RX_next = PtoXOR ^ LX;
assign LX_next = RX;

endmodule
