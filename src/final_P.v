`timescale 1ns / 1ps

module final_P(
    input [0:63] final_in,
    output [0:63] final_out
    );
	 
assign final_out[0] = final_in[39];
assign final_out[1] = final_in[7];
assign final_out[2] = final_in[47];
assign final_out[3] = final_in[15];
assign final_out[4] = final_in[55];
assign final_out[5] = final_in[23];
assign final_out[6] = final_in[63];
assign final_out[7] = final_in[31];
assign final_out[8] = final_in[38];
assign final_out[9] = final_in[6];
assign final_out[10] = final_in[46];
assign final_out[11] = final_in[14];
assign final_out[12] = final_in[54];
assign final_out[13] = final_in[22];
assign final_out[14] = final_in[62];
assign final_out[15] = final_in[30];
assign final_out[16] = final_in[37];
assign final_out[17] = final_in[5];
assign final_out[18] = final_in[45];
assign final_out[19] = final_in[13];
assign final_out[20] = final_in[53];
assign final_out[21] = final_in[21];
assign final_out[22] = final_in[61];
assign final_out[23] = final_in[29];
assign final_out[24] = final_in[36];
assign final_out[25] = final_in[4];
assign final_out[26] = final_in[44];
assign final_out[27] = final_in[12];
assign final_out[28] = final_in[52];
assign final_out[29] = final_in[20];
assign final_out[30] = final_in[60];
assign final_out[31] = final_in[28];
assign final_out[32] = final_in[35];
assign final_out[33] = final_in[3];
assign final_out[34] = final_in[43];
assign final_out[35] = final_in[11];
assign final_out[36] = final_in[51];
assign final_out[37] = final_in[19];
assign final_out[38] = final_in[59];
assign final_out[39] = final_in[27];
assign final_out[40] = final_in[34];
assign final_out[41] = final_in[2];
assign final_out[42] = final_in[42];
assign final_out[43] = final_in[10];
assign final_out[44] = final_in[50];
assign final_out[45] = final_in[18];
assign final_out[46] = final_in[58];
assign final_out[47] = final_in[26];
assign final_out[48] = final_in[33];
assign final_out[49] = final_in[1];
assign final_out[50] = final_in[41];
assign final_out[51] = final_in[9];
assign final_out[52] = final_in[49];
assign final_out[53] = final_in[17];
assign final_out[54] = final_in[57];
assign final_out[55] = final_in[25];
assign final_out[56] = final_in[32];
assign final_out[57] = final_in[0];
assign final_out[58] = final_in[40];
assign final_out[59] = final_in[8];
assign final_out[60] = final_in[48];
assign final_out[61] = final_in[16];
assign final_out[62] = final_in[56];
assign final_out[63] = final_in[24];

endmodule
