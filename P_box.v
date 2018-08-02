`timescale 1ns / 1ps

module P_box(
    input [0:31] P_in,
    output [0:31] P_out
    );
assign P_out[0] = P_in[15];
assign P_out[1] = P_in[6];
assign P_out[2] = P_in[19];
assign P_out[3] = P_in[20];
assign P_out[4] = P_in[28];
assign P_out[5] = P_in[11];
assign P_out[6] = P_in[27];
assign P_out[7] = P_in[16];
assign P_out[8] = P_in[0];
assign P_out[9] = P_in[14];
assign P_out[10] = P_in[22];
assign P_out[11] = P_in[25];
assign P_out[12] = P_in[4];
assign P_out[13] = P_in[17];
assign P_out[14] = P_in[30];
assign P_out[15] = P_in[9];
assign P_out[16] = P_in[1];
assign P_out[17] = P_in[7];
assign P_out[18] = P_in[23];
assign P_out[19] = P_in[13];
assign P_out[20] = P_in[31];
assign P_out[21] = P_in[26];
assign P_out[22] = P_in[2];
assign P_out[23] = P_in[8];
assign P_out[24] = P_in[18];
assign P_out[25] = P_in[12];
assign P_out[26] = P_in[29];
assign P_out[27] = P_in[5];
assign P_out[28] = P_in[21];
assign P_out[29] = P_in[10];
assign P_out[30] = P_in[3];
assign P_out[31] = P_in[24];
endmodule
