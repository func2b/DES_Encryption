`timescale 1ns / 1ps

module gen_keys(
    input [0:63] key,
    output [0:47] k1,
    output [0:47] k2,
    output [0:47] k3,
    output [0:47] k4,
    output [0:47] k5,
    output [0:47] k6,
    output [0:47] k7,
    output [0:47] k8,
    output [0:47] k9,
    output [0:47] k10,
    output [0:47] k11,
    output [0:47] k12,
    output [0:47] k13,
    output [0:47] k14,
    output [0:47] k15,
    output [0:47] k16
    );

wire [0:55] key56;
wire [0:27] C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16;
wire [0:27] D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,D16;
wire [0:55] CD1,CD2,CD3,CD4,CD5,CD6,CD7,CD8,CD9,CD10,CD11,CD12,CD13,CD14,CD15,CD16;

assign key56[0] = key[56];		assign key56[1] = key[48];		assign key56[2] = key[40];
assign key56[3] = key[32];		assign key56[4] = key[24];		assign key56[5] = key[16];
assign key56[6] = key[8];		assign key56[7] = key[0];		assign key56[8] = key[57];
assign key56[9] = key[49];		assign key56[10] = key[41];	assign key56[11] = key[33];
assign key56[12] = key[25];	assign key56[13] = key[17];	assign key56[14] = key[9];
assign key56[15] = key[1];		assign key56[16] = key[58];	assign key56[17] = key[50];
assign key56[18] = key[42];	assign key56[19] = key[34];	assign key56[20] = key[26];
assign key56[21] = key[18];	assign key56[22] = key[10];	assign key56[23] = key[2];
assign key56[24] = key[59];	assign key56[25] = key[51];	assign key56[26] = key[43];
assign key56[27] = key[35];	assign key56[28] = key[62];	assign key56[29] = key[54];
assign key56[30] = key[46];	assign key56[31] = key[38];	assign key56[32] = key[30];
assign key56[33] = key[22];	assign key56[34] = key[14];	assign key56[35] = key[6];
assign key56[36] = key[61];	assign key56[37] = key[53];	assign key56[38] = key[45];
assign key56[39] = key[37];	assign key56[40] = key[29];	assign key56[41] = key[21];
assign key56[42] = key[13];	assign key56[43] = key[5];		assign key56[44] = key[60];
assign key56[45] = key[52];	assign key56[46] = key[44];	assign key56[47] = key[36];
assign key56[48] = key[28];	assign key56[49] = key[20];	assign key56[50] = key[12];
assign key56[51] = key[4];		assign key56[52] = key[27];	assign key56[53] = key[19];
assign key56[54] = key[11];	assign key56[55] = key[3];

assign C0 = key56[0:27];				assign D0 = key56[28:55];
assign C1 = {C0[1:27],C0[0]};			assign D1 = {D0[1:27],D0[0]};
assign C2 = {C1[1:27],C1[0]};			assign D2 = {D1[1:27],D1[0]};
assign C3 = {C2[2:27],C2[0:1]};		assign D3 = {D2[2:27],D2[0:1]};
assign C4 = {C3[2:27],C3[0:1]};		assign D4 = {D3[2:27],D3[0:1]};
assign C5 = {C4[2:27],C4[0:1]};		assign D5 = {D4[2:27],D4[0:1]};
assign C6 = {C5[2:27],C5[0:1]};		assign D6 = {D5[2:27],D5[0:1]};
assign C7 = {C6[2:27],C6[0:1]};		assign D7 = {D6[2:27],D6[0:1]};
assign C8 = {C7[2:27],C7[0:1]};		assign D8 = {D7[2:27],D7[0:1]};
assign C9 = {C8[1:27],C8[0]};			assign D9 = {D8[1:27],D8[0]};
assign C10 = {C9[2:27],C9[0:1]};		assign D10 = {D9[2:27],D9[0:1]};
assign C11 = {C10[2:27],C10[0:1]};	assign D11 = {D10[2:27],D10[0:1]};
assign C12 = {C11[2:27],C11[0:1]};	assign D12 = {D11[2:27],D11[0:1]};
assign C13 = {C12[2:27],C12[0:1]};	assign D13 = {D12[2:27],D12[0:1]};
assign C14 = {C13[2:27],C13[0:1]};	assign D14 = {D13[2:27],D13[0:1]};
assign C15 = {C14[2:27],C14[0:1]};	assign D15 = {D14[2:27],D14[0:1]};
assign C16 = {C15[1:27],C15[0]};		assign D16 = {D15[1:27],D15[0]};

assign CD1[0:55] = {C1[0:27],D1[0:27]};
assign CD2[0:55] = {C2[0:27],D2[0:27]};
assign CD3[0:55] = {C3[0:27],D3[0:27]};
assign CD4[0:55] = {C4[0:27],D4[0:27]};
assign CD5[0:55] = {C5[0:27],D5[0:27]};
assign CD6[0:55] = {C6[0:27],D6[0:27]};
assign CD7[0:55] = {C7[0:27],D7[0:27]};
assign CD8[0:55] = {C8[0:27],D8[0:27]};
assign CD9[0:55] = {C9[0:27],D9[0:27]};
assign CD10[0:55] = {C10[0:27],D10[0:27]};
assign CD11[0:55] = {C11[0:27],D11[0:27]};
assign CD12[0:55] = {C12[0:27],D12[0:27]};
assign CD13[0:55] = {C13[0:27],D13[0:27]};
assign CD14[0:55] = {C14[0:27],D14[0:27]};
assign CD15[0:55] = {C15[0:27],D15[0:27]};
assign CD16[0:55] = {C16[0:27],D16[0:27]};

PC2 i1(.CD(CD1), .K(k1));
PC2 i2(.CD(CD2), .K(k2));
PC2 i3(.CD(CD3), .K(k3));
PC2 i4(.CD(CD4), .K(k4));
PC2 i5(.CD(CD5), .K(k5));
PC2 i6(.CD(CD6), .K(k6));
PC2 i7(.CD(CD7), .K(k7));
PC2 i8(.CD(CD8), .K(k8));
PC2 i9(.CD(CD9), .K(k9));
PC2 i10(.CD(CD10), .K(k10));
PC2 i11(.CD(CD11), .K(k11));
PC2 i12(.CD(CD12), .K(k12));
PC2 i13(.CD(CD13), .K(k13));
PC2 i14(.CD(CD14), .K(k14));
PC2 i15(.CD(CD15), .K(k15));
PC2 i16(.CD(CD16), .K(k16));

endmodule
