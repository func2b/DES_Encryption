`timescale 1ns / 1ps

module PC2(
    input [0:55] CD,
    output [0:47] K
    );
	 
assign K[0]= CD[13];
assign K[1]= CD[16];
assign K[2]= CD[10];
assign K[3]= CD[23];
assign K[4]= CD[0];
assign K[5]= CD[4];
assign K[6]= CD[2];
assign K[7]= CD[27];
assign K[8]= CD[14];
assign K[9]= CD[5];
assign K[10]= CD[20];
assign K[11]= CD[9];
assign K[12]= CD[22];
assign K[13]= CD[18];
assign K[14]= CD[11];
assign K[15]= CD[3];
assign K[16]= CD[25];
assign K[17]= CD[7];
assign K[18]= CD[15];
assign K[19]= CD[6];
assign K[20]= CD[26];
assign K[21]= CD[19];
assign K[22]= CD[12];
assign K[23]= CD[1];
assign K[24]= CD[40];
assign K[25]= CD[51];
assign K[26]= CD[30];
assign K[27]= CD[36];
assign K[28]= CD[46];
assign K[29]= CD[54];
assign K[30]= CD[29];
assign K[31]= CD[39];
assign K[32]= CD[50];
assign K[33]= CD[44];
assign K[34]= CD[32];
assign K[35]= CD[47];
assign K[36]= CD[43];
assign K[37]= CD[48];
assign K[38]= CD[38];
assign K[39]= CD[55];
assign K[40]= CD[33];
assign K[41]= CD[52];
assign K[42]= CD[45];
assign K[43]= CD[41];
assign K[44]= CD[49];
assign K[45]= CD[35];
assign K[46]= CD[28];
assign K[47]= CD[31];

endmodule
