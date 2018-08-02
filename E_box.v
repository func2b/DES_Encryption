`timescale 1ns / 1ps

module E_box(
    input [0:31] R,
    output [0:47] ER
    );
assign ER[0] = R[31];
assign ER[1] = R[0];
assign ER[2] = R[1];
assign ER[3] = R[2];
assign ER[4] = R[3];
assign ER[5] = R[4];
assign ER[6] = R[3];
assign ER[7] = R[4];
assign ER[8] = R[5];
assign ER[9] = R[6];
assign ER[10] = R[7];
assign ER[11] = R[8];
assign ER[12] = R[7];
assign ER[13] = R[8];
assign ER[14] = R[9];
assign ER[15] = R[10];
assign ER[16] = R[11];
assign ER[17] = R[12];
assign ER[18] = R[11];
assign ER[19] = R[12];
assign ER[20] = R[13];
assign ER[21] = R[14];
assign ER[22] = R[15];
assign ER[23] = R[16];
assign ER[24] = R[15];
assign ER[25] = R[16];
assign ER[26] = R[17];
assign ER[27] = R[18];
assign ER[28] = R[19];
assign ER[29] = R[20];
assign ER[30] = R[19];
assign ER[31] = R[20];
assign ER[32] = R[21];
assign ER[33] = R[22];
assign ER[34] = R[23];
assign ER[35] = R[24];
assign ER[36] = R[23];
assign ER[37] = R[24];
assign ER[38] = R[25];
assign ER[39] = R[26];
assign ER[40] = R[27];
assign ER[41] = R[28];
assign ER[42] = R[27];
assign ER[43] = R[28];
assign ER[44] = R[29];
assign ER[45] = R[30];
assign ER[46] = R[31];
assign ER[47] = R[0];
endmodule
