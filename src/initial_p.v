`timescale 1ns / 1ps

module initial_p(
    input [0:63] data_in,
    output [0:31] L0,
    output [0:31] R0
    );
wire[0:63] data;

assign data[0] = data_in[57];
assign data[1] = data_in[49];
assign data[2] = data_in[41];
assign data[3] = data_in[33];
assign data[4] = data_in[25];
assign data[5] = data_in[17];
assign data[6] = data_in[9];
assign data[7] = data_in[1];
assign data[8] = data_in[59];
assign data[9] = data_in[51];
assign data[10] = data_in[43];
assign data[11] = data_in[35];
assign data[12] = data_in[27];
assign data[13] = data_in[19];
assign data[14] = data_in[11];
assign data[15] = data_in[3];
assign data[16] = data_in[61];
assign data[17] = data_in[53];
assign data[18] = data_in[45];
assign data[19] = data_in[37];
assign data[20] = data_in[29];
assign data[21] = data_in[21];
assign data[22] = data_in[13];
assign data[23] = data_in[5];
assign data[24] = data_in[63];
assign data[25] = data_in[55];
assign data[26] = data_in[47];
assign data[27] = data_in[39];
assign data[28] = data_in[31];
assign data[29] = data_in[23];
assign data[30] = data_in[15];
assign data[31] = data_in[7];
assign data[32] = data_in[56];
assign data[33] = data_in[48];
assign data[34] = data_in[40];
assign data[35] = data_in[32];
assign data[36] = data_in[24];
assign data[37] = data_in[16];
assign data[38] = data_in[8];
assign data[39] = data_in[0];
assign data[40] = data_in[58];
assign data[41] = data_in[50];
assign data[42] = data_in[42];
assign data[43] = data_in[34];
assign data[44] = data_in[26];
assign data[45] = data_in[18];
assign data[46] = data_in[10];
assign data[47] = data_in[2];
assign data[48] = data_in[60];
assign data[49] = data_in[52];
assign data[50] = data_in[44];
assign data[51] = data_in[36];
assign data[52] = data_in[28];
assign data[53] = data_in[20];
assign data[54] = data_in[12];
assign data[55] = data_in[4];
assign data[56] = data_in[62];
assign data[57] = data_in[54];
assign data[58] = data_in[46];
assign data[59] = data_in[38];
assign data[60] = data_in[30];
assign data[61] = data_in[22];
assign data[62] = data_in[14];
assign data[63] = data_in[6];

assign L0 = data[0:31];
assign R0 = data[32:63];

endmodule
