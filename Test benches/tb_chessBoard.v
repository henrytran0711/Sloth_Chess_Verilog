module tb_chessBoard();

reg clk;
reg engineColor;
reg [63:0] enable;
reg clear;
reg [3:0] castlingFlags;
reg [5:0] pieceReg0;
reg [5:0] pieceReg1;
reg [5:0] pieceReg2;
reg [5:0] pieceReg3;
reg [5:0] pieceReg4;
reg [5:0] pieceReg5;
reg [5:0] pieceReg6;
reg [5:0] pieceReg7;
reg [5:0] pieceReg8;
reg [5:0] pieceReg9;
reg [5:0] pieceReg10;
reg [5:0] pieceReg11;
reg [5:0] pieceReg12;
reg [5:0] pieceReg13;
reg [5:0] pieceReg14;
reg [5:0] pieceReg15;
reg [5:0] pieceReg16;
reg [5:0] pieceReg17;
reg [5:0] pieceReg18;
reg [5:0] pieceReg19;
reg [5:0] pieceReg20;
reg [5:0] pieceReg21;
reg [5:0] pieceReg22;
reg [5:0] pieceReg23;
reg [5:0] pieceReg24;
reg [5:0] pieceReg25;
reg [5:0] pieceReg26;
reg [5:0] pieceReg27;
reg [5:0] pieceReg28;
reg [5:0] pieceReg29;
reg [5:0] pieceReg30;
reg [5:0] pieceReg31;
reg [5:0] pieceReg32;
reg [5:0] pieceReg33;
reg [5:0] pieceReg34;
reg [5:0] pieceReg35;
reg [5:0] pieceReg36;
reg [5:0] pieceReg37;
reg [5:0] pieceReg38;
reg [5:0] pieceReg39;
reg [5:0] pieceReg40;
reg [5:0] pieceReg41;
reg [5:0] pieceReg42;
reg [5:0] pieceReg43;
reg [5:0] pieceReg44;
reg [5:0] pieceReg45;
reg [5:0] pieceReg46;
reg [5:0] pieceReg47;
reg [5:0] pieceReg48;
reg [5:0] pieceReg49;
reg [5:0] pieceReg50;
reg [5:0] pieceReg51;
reg [5:0] pieceReg52;
reg [5:0] pieceReg53;
reg [5:0] pieceReg54;
reg [5:0] pieceReg55;
reg [5:0] pieceReg56;
reg [5:0] pieceReg57;
reg [5:0] pieceReg58;
reg [5:0] pieceReg59;
reg [5:0] pieceReg60;
reg [5:0] pieceReg61;
reg [5:0] pieceReg62;
reg [5:0] pieceReg63;

wire [31:0] D_move_out9;
wire [31:0] U_move_out9;
wire [31:0] L_move_out9;
wire [31:0] R_move_out9;
wire [31:0] DL_move_out9;
wire [31:0] DR_move_out9;
wire [31:0] UL_move_out9;
wire [31:0] UR_move_out9;
wire [31:0] D_move_out10;
wire [31:0] U_move_out10;
wire [31:0] L_move_out10;
wire [31:0] R_move_out10;
wire [31:0] DL_move_out10;
wire [31:0] DR_move_out10;
wire [31:0] UL_move_out10;
wire [31:0] UR_move_out10;
wire [31:0] D_move_out11;
wire [31:0] U_move_out11;
wire [31:0] L_move_out11;
wire [31:0] R_move_out11;
wire [31:0] DL_move_out11;
wire [31:0] DR_move_out11;
wire [31:0] UL_move_out11;
wire [31:0] UR_move_out11;
wire [31:0] D_move_out12;
wire [31:0] U_move_out12;
wire [31:0] L_move_out12;
wire [31:0] R_move_out12;
wire [31:0] DL_move_out12;
wire [31:0] DR_move_out12;
wire [31:0] UL_move_out12;
wire [31:0] UR_move_out12;
wire [31:0] D_move_out13;
wire [31:0] U_move_out13;
wire [31:0] L_move_out13;
wire [31:0] R_move_out13;
wire [31:0] DL_move_out13;
wire [31:0] DR_move_out13;
wire [31:0] UL_move_out13;
wire [31:0] UR_move_out13;
wire [31:0] D_move_out14;
wire [31:0] U_move_out14;
wire [31:0] L_move_out14;
wire [31:0] R_move_out14;
wire [31:0] DL_move_out14;
wire [31:0] DR_move_out14;
wire [31:0] UL_move_out14;
wire [31:0] UR_move_out14;
wire [31:0] D_move_out17;
wire [31:0] U_move_out17;
wire [31:0] L_move_out17;
wire [31:0] R_move_out17;
wire [31:0] DL_move_out17;
wire [31:0] DR_move_out17;
wire [31:0] UL_move_out17;
wire [31:0] UR_move_out17;
wire [31:0] D_move_out18;
wire [31:0] U_move_out18;
wire [31:0] L_move_out18;
wire [31:0] R_move_out18;
wire [31:0] DL_move_out18;
wire [31:0] DR_move_out18;
wire [31:0] UL_move_out18;
wire [31:0] UR_move_out18;
wire [31:0] D_move_out19;
wire [31:0] U_move_out19;
wire [31:0] L_move_out19;
wire [31:0] R_move_out19;
wire [31:0] DL_move_out19;
wire [31:0] DR_move_out19;
wire [31:0] UL_move_out19;
wire [31:0] UR_move_out19;
wire [31:0] D_move_out20;
wire [31:0] U_move_out20;
wire [31:0] L_move_out20;
wire [31:0] R_move_out20;
wire [31:0] DL_move_out20;
wire [31:0] DR_move_out20;
wire [31:0] UL_move_out20;
wire [31:0] UR_move_out20;
wire [31:0] D_move_out21;
wire [31:0] U_move_out21;
wire [31:0] L_move_out21;
wire [31:0] R_move_out21;
wire [31:0] DL_move_out21;
wire [31:0] DR_move_out21;
wire [31:0] UL_move_out21;
wire [31:0] UR_move_out21;
wire [31:0] D_move_out22;
wire [31:0] U_move_out22;
wire [31:0] L_move_out22;
wire [31:0] R_move_out22;
wire [31:0] DL_move_out22;
wire [31:0] DR_move_out22;
wire [31:0] UL_move_out22;
wire [31:0] UR_move_out22;
wire [31:0] D_move_out25;
wire [31:0] U_move_out25;
wire [31:0] L_move_out25;
wire [31:0] R_move_out25;
wire [31:0] DL_move_out25;
wire [31:0] DR_move_out25;
wire [31:0] UL_move_out25;
wire [31:0] UR_move_out25;
wire [31:0] D_move_out26;
wire [31:0] U_move_out26;
wire [31:0] L_move_out26;
wire [31:0] R_move_out26;
wire [31:0] DL_move_out26;
wire [31:0] DR_move_out26;
wire [31:0] UL_move_out26;
wire [31:0] UR_move_out26;
wire [31:0] D_move_out27;
wire [31:0] U_move_out27;
wire [31:0] L_move_out27;
wire [31:0] R_move_out27;
wire [31:0] DL_move_out27;
wire [31:0] DR_move_out27;
wire [31:0] UL_move_out27;
wire [31:0] UR_move_out27;
wire [31:0] D_move_out28;
wire [31:0] U_move_out28;
wire [31:0] L_move_out28;
wire [31:0] R_move_out28;
wire [31:0] DL_move_out28;
wire [31:0] DR_move_out28;
wire [31:0] UL_move_out28;
wire [31:0] UR_move_out28;
wire [31:0] D_move_out29;
wire [31:0] U_move_out29;
wire [31:0] L_move_out29;
wire [31:0] R_move_out29;
wire [31:0] DL_move_out29;
wire [31:0] DR_move_out29;
wire [31:0] UL_move_out29;
wire [31:0] UR_move_out29;
wire [31:0] D_move_out30;
wire [31:0] U_move_out30;
wire [31:0] L_move_out30;
wire [31:0] R_move_out30;
wire [31:0] DL_move_out30;
wire [31:0] DR_move_out30;
wire [31:0] UL_move_out30;
wire [31:0] UR_move_out30;
wire [31:0] D_move_out33;
wire [31:0] U_move_out33;
wire [31:0] L_move_out33;
wire [31:0] R_move_out33;
wire [31:0] DL_move_out33;
wire [31:0] DR_move_out33;
wire [31:0] UL_move_out33;
wire [31:0] UR_move_out33;
wire [31:0] D_move_out34;
wire [31:0] U_move_out34;
wire [31:0] L_move_out34;
wire [31:0] R_move_out34;
wire [31:0] DL_move_out34;
wire [31:0] DR_move_out34;
wire [31:0] UL_move_out34;
wire [31:0] UR_move_out34;
wire [31:0] D_move_out35;
wire [31:0] U_move_out35;
wire [31:0] L_move_out35;
wire [31:0] R_move_out35;
wire [31:0] DL_move_out35;
wire [31:0] DR_move_out35;
wire [31:0] UL_move_out35;
wire [31:0] UR_move_out35;
wire [31:0] D_move_out36;
wire [31:0] U_move_out36;
wire [31:0] L_move_out36;
wire [31:0] R_move_out36;
wire [31:0] DL_move_out36;
wire [31:0] DR_move_out36;
wire [31:0] UL_move_out36;
wire [31:0] UR_move_out36;
wire [31:0] D_move_out37;
wire [31:0] U_move_out37;
wire [31:0] L_move_out37;
wire [31:0] R_move_out37;
wire [31:0] DL_move_out37;
wire [31:0] DR_move_out37;
wire [31:0] UL_move_out37;
wire [31:0] UR_move_out37;
wire [31:0] D_move_out38;
wire [31:0] U_move_out38;
wire [31:0] L_move_out38;
wire [31:0] R_move_out38;
wire [31:0] DL_move_out38;
wire [31:0] DR_move_out38;
wire [31:0] UL_move_out38;
wire [31:0] UR_move_out38;
wire [31:0] D_move_out41;
wire [31:0] U_move_out41;
wire [31:0] L_move_out41;
wire [31:0] R_move_out41;
wire [31:0] DL_move_out41;
wire [31:0] DR_move_out41;
wire [31:0] UL_move_out41;
wire [31:0] UR_move_out41;
wire [31:0] D_move_out42;
wire [31:0] U_move_out42;
wire [31:0] L_move_out42;
wire [31:0] R_move_out42;
wire [31:0] DL_move_out42;
wire [31:0] DR_move_out42;
wire [31:0] UL_move_out42;
wire [31:0] UR_move_out42;
wire [31:0] D_move_out43;
wire [31:0] U_move_out43;
wire [31:0] L_move_out43;
wire [31:0] R_move_out43;
wire [31:0] DL_move_out43;
wire [31:0] DR_move_out43;
wire [31:0] UL_move_out43;
wire [31:0] UR_move_out43;
wire [31:0] D_move_out44;
wire [31:0] U_move_out44;
wire [31:0] L_move_out44;
wire [31:0] R_move_out44;
wire [31:0] DL_move_out44;
wire [31:0] DR_move_out44;
wire [31:0] UL_move_out44;
wire [31:0] UR_move_out44;
wire [31:0] D_move_out45;
wire [31:0] U_move_out45;
wire [31:0] L_move_out45;
wire [31:0] R_move_out45;
wire [31:0] DL_move_out45;
wire [31:0] DR_move_out45;
wire [31:0] UL_move_out45;
wire [31:0] UR_move_out45;
wire [31:0] D_move_out46;
wire [31:0] U_move_out46;
wire [31:0] L_move_out46;
wire [31:0] R_move_out46;
wire [31:0] DL_move_out46;
wire [31:0] DR_move_out46;
wire [31:0] UL_move_out46;
wire [31:0] UR_move_out46;
wire [31:0] D_move_out49;
wire [31:0] U_move_out49;
wire [31:0] L_move_out49;
wire [31:0] R_move_out49;
wire [31:0] DL_move_out49;
wire [31:0] DR_move_out49;
wire [31:0] UL_move_out49;
wire [31:0] UR_move_out49;
wire [31:0] D_move_out50;
wire [31:0] U_move_out50;
wire [31:0] L_move_out50;
wire [31:0] R_move_out50;
wire [31:0] DL_move_out50;
wire [31:0] DR_move_out50;
wire [31:0] UL_move_out50;
wire [31:0] UR_move_out50;
wire [31:0] D_move_out51;
wire [31:0] U_move_out51;
wire [31:0] L_move_out51;
wire [31:0] R_move_out51;
wire [31:0] DL_move_out51;
wire [31:0] DR_move_out51;
wire [31:0] UL_move_out51;
wire [31:0] UR_move_out51;
wire [31:0] D_move_out52;
wire [31:0] U_move_out52;
wire [31:0] L_move_out52;
wire [31:0] R_move_out52;
wire [31:0] DL_move_out52;
wire [31:0] DR_move_out52;
wire [31:0] UL_move_out52;
wire [31:0] UR_move_out52;
wire [31:0] D_move_out53;
wire [31:0] U_move_out53;
wire [31:0] L_move_out53;
wire [31:0] R_move_out53;
wire [31:0] DL_move_out53;
wire [31:0] DR_move_out53;
wire [31:0] UL_move_out53;
wire [31:0] UR_move_out53;
wire [31:0] D_move_out54;
wire [31:0] U_move_out54;
wire [31:0] L_move_out54;
wire [31:0] R_move_out54;
wire [31:0] DL_move_out54;
wire [31:0] DR_move_out54;
wire [31:0] UL_move_out54;
wire [31:0] UR_move_out54;
wire [31:0] D_move_out63;
wire [31:0] R_move_out63;
wire [31:0] DR_move_out63;
wire [31:0] D_move_out56;
wire [31:0] L_move_out56;
wire [31:0] DL_move_out56;
wire [31:0] U_move_out0;
wire [31:0] L_move_out0;
wire [31:0] UL_move_out0;
wire [31:0] U_move_out7;
wire [31:0] R_move_out7;
wire [31:0] UR_move_out7;
wire [31:0] U_move_out1;
wire [31:0] L_move_out1;
wire [31:0] R_move_out1;
wire [31:0] UL_move_out1;
wire [31:0] UR_move_out1;
wire [31:0] U_move_out2;
wire [31:0] L_move_out2;
wire [31:0] R_move_out2;
wire [31:0] UL_move_out2;
wire [31:0] UR_move_out2;
wire [31:0] U_move_out3;
wire [31:0] L_move_out3;
wire [31:0] R_move_out3;
wire [31:0] UL_move_out3;
wire [31:0] UR_move_out3;
wire [31:0] U_move_out4;
wire [31:0] L_move_out4;
wire [31:0] R_move_out4;
wire [31:0] UL_move_out4;
wire [31:0] UR_move_out4;
wire [31:0] U_move_out5;
wire [31:0] L_move_out5;
wire [31:0] R_move_out5;
wire [31:0] UL_move_out5;
wire [31:0] UR_move_out5;
wire [31:0] U_move_out6;
wire [31:0] L_move_out6;
wire [31:0] R_move_out6;
wire [31:0] UL_move_out6;
wire [31:0] UR_move_out6;
wire [31:0] D_move_out8;
wire [31:0] U_move_out8;
wire [31:0] L_move_out8;
wire [31:0] DL_move_out8;
wire [31:0] UL_move_out8;
wire [31:0] D_move_out16;
wire [31:0] U_move_out16;
wire [31:0] L_move_out16;
wire [31:0] DL_move_out16;
wire [31:0] UL_move_out16;
wire [31:0] D_move_out24;
wire [31:0] U_move_out24;
wire [31:0] L_move_out24;
wire [31:0] DL_move_out24;
wire [31:0] UL_move_out24;
wire [31:0] D_move_out32;
wire [31:0] U_move_out32;
wire [31:0] L_move_out32;
wire [31:0] DL_move_out32;
wire [31:0] UL_move_out32;
wire [31:0] D_move_out40;
wire [31:0] U_move_out40;
wire [31:0] L_move_out40;
wire [31:0] DL_move_out40;
wire [31:0] UL_move_out40;
wire [31:0] D_move_out48;
wire [31:0] U_move_out48;
wire [31:0] L_move_out48;
wire [31:0] DL_move_out48;
wire [31:0] UL_move_out48;
wire [31:0] D_move_out15;
wire [31:0] U_move_out15;
wire [31:0] R_move_out15;
wire [31:0] DR_move_out15;
wire [31:0] UR_move_out15;
wire [31:0] D_move_out23;
wire [31:0] U_move_out23;
wire [31:0] R_move_out23;
wire [31:0] DR_move_out23;
wire [31:0] UR_move_out23;
wire [31:0] D_move_out31;
wire [31:0] U_move_out31;
wire [31:0] R_move_out31;
wire [31:0] DR_move_out31;
wire [31:0] UR_move_out31;
wire [31:0] D_move_out39;
wire [31:0] U_move_out39;
wire [31:0] R_move_out39;
wire [31:0] DR_move_out39;
wire [31:0] UR_move_out39;
wire [31:0] D_move_out47;
wire [31:0] U_move_out47;
wire [31:0] R_move_out47;
wire [31:0] DR_move_out47;
wire [31:0] UR_move_out47;
wire [31:0] D_move_out55;
wire [31:0] U_move_out55;
wire [31:0] R_move_out55;
wire [31:0] DR_move_out55;
wire [31:0] UR_move_out55;
wire [31:0] D_move_out57;
wire [31:0] L_move_out57;
wire [31:0] R_move_out57;
wire [31:0] DL_move_out57;
wire [31:0] DR_move_out57;
wire [31:0] D_move_out58;
wire [31:0] L_move_out58;
wire [31:0] R_move_out58;
wire [31:0] DL_move_out58;
wire [31:0] DR_move_out58;
wire [31:0] D_move_out59;
wire [31:0] L_move_out59;
wire [31:0] R_move_out59;
wire [31:0] DL_move_out59;
wire [31:0] DR_move_out59;
wire [31:0] D_move_out60;
wire [31:0] L_move_out60;
wire [31:0] R_move_out60;
wire [31:0] DL_move_out60;
wire [31:0] DR_move_out60;
wire [31:0] D_move_out61;
wire [31:0] L_move_out61;
wire [31:0] R_move_out61;
wire [31:0] DL_move_out61;
wire [31:0] DR_move_out61;
wire [31:0] D_move_out62;
wire [31:0] L_move_out62;
wire [31:0] R_move_out62;
wire [31:0] DL_move_out62;
wire [31:0] DR_move_out62;
wire [31:0] LLU_move_out50;
wire [31:0] RRU_move_out50;
wire [31:0] DDL_move_out50;
wire [31:0] DDR_move_out50;
wire [31:0] LLD_move_out50;
wire [31:0] RRD_move_out50;
wire [31:0] LLU_move_out51;
wire [31:0] RRU_move_out51;
wire [31:0] DDL_move_out51;
wire [31:0] DDR_move_out51;
wire [31:0] LLD_move_out51;
wire [31:0] RRD_move_out51;
wire [31:0] LLU_move_out52;
wire [31:0] RRU_move_out52;
wire [31:0] DDL_move_out52;
wire [31:0] DDR_move_out52;
wire [31:0] LLD_move_out52;
wire [31:0] RRD_move_out52;
wire [31:0] LLU_move_out53;
wire [31:0] RRU_move_out53;
wire [31:0] DDL_move_out53;
wire [31:0] DDR_move_out53;
wire [31:0] LLD_move_out53;
wire [31:0] RRD_move_out53;
wire [31:0] UUL_move_out17;
wire [31:0] LLU_move_out17;
wire [31:0] DDL_move_out17;
wire [31:0] LLD_move_out17;
wire [31:0] UUL_move_out25;
wire [31:0] LLU_move_out25;
wire [31:0] DDL_move_out25;
wire [31:0] LLD_move_out25;
wire [31:0] UUL_move_out33;
wire [31:0] LLU_move_out33;
wire [31:0] DDL_move_out33;
wire [31:0] LLD_move_out33;
wire [31:0] UUL_move_out41;
wire [31:0] LLU_move_out41;
wire [31:0] DDL_move_out41;
wire [31:0] LLD_move_out41;
wire [31:0] UUL_move_out22;
wire [31:0] UUR_move_out22;
wire [31:0] RRU_move_out22;
wire [31:0] DDL_move_out22;
wire [31:0] DDR_move_out22;
wire [31:0] RRD_move_out22;
wire [31:0] UUL_move_out30;
wire [31:0] UUR_move_out30;
wire [31:0] RRU_move_out30;
wire [31:0] DDL_move_out30;
wire [31:0] DDR_move_out30;
wire [31:0] RRD_move_out30;
wire [31:0] UUL_move_out38;
wire [31:0] UUR_move_out38;
wire [31:0] RRU_move_out38;
wire [31:0] DDL_move_out38;
wire [31:0] DDR_move_out38;
wire [31:0] RRD_move_out38;
wire [31:0] UUL_move_out46;
wire [31:0] UUR_move_out46;
wire [31:0] RRU_move_out46;
wire [31:0] DDL_move_out46;
wire [31:0] DDR_move_out46;
wire [31:0] RRD_move_out46;
wire [31:0] UUL_move_out10;
wire [31:0] UUR_move_out10;
wire [31:0] LLU_move_out10;
wire [31:0] RRU_move_out10;
wire [31:0] LLD_move_out10;
wire [31:0] RRD_move_out10;
wire [31:0] UUL_move_out11;
wire [31:0] UUR_move_out11;
wire [31:0] LLU_move_out11;
wire [31:0] RRU_move_out11;
wire [31:0] LLD_move_out11;
wire [31:0] RRD_move_out11;
wire [31:0] UUL_move_out12;
wire [31:0] UUR_move_out12;
wire [31:0] LLU_move_out12;
wire [31:0] RRU_move_out12;
wire [31:0] LLD_move_out12;
wire [31:0] RRD_move_out12;
wire [31:0] UUL_move_out13;
wire [31:0] UUR_move_out13;
wire [31:0] LLU_move_out13;
wire [31:0] RRU_move_out13;
wire [31:0] LLD_move_out13;
wire [31:0] RRD_move_out13;
wire [31:0] UUR_move_out23;
wire [31:0] RRU_move_out23;
wire [31:0] DDR_move_out23;
wire [31:0] RRD_move_out23;
wire [31:0] UUR_move_out31;
wire [31:0] RRU_move_out31;
wire [31:0] DDR_move_out31;
wire [31:0] RRD_move_out31;
wire [31:0] UUR_move_out39;
wire [31:0] RRU_move_out39;
wire [31:0] DDR_move_out39;
wire [31:0] RRD_move_out39;
wire [31:0] UUR_move_out47;
wire [31:0] RRU_move_out47;
wire [31:0] DDR_move_out47;
wire [31:0] RRD_move_out47;
wire [31:0] UUL_move_out18;
wire [31:0] UUR_move_out18;
wire [31:0] LLU_move_out18;
wire [31:0] RRU_move_out18;
wire [31:0] DDL_move_out18;
wire [31:0] DDR_move_out18;
wire [31:0] LLD_move_out18;
wire [31:0] RRD_move_out18;
wire [31:0] UUL_move_out19;
wire [31:0] UUR_move_out19;
wire [31:0] LLU_move_out19;
wire [31:0] RRU_move_out19;
wire [31:0] DDL_move_out19;
wire [31:0] DDR_move_out19;
wire [31:0] LLD_move_out19;
wire [31:0] RRD_move_out19;
wire [31:0] UUL_move_out20;
wire [31:0] UUR_move_out20;
wire [31:0] LLU_move_out20;
wire [31:0] RRU_move_out20;
wire [31:0] DDL_move_out20;
wire [31:0] DDR_move_out20;
wire [31:0] LLD_move_out20;
wire [31:0] RRD_move_out20;
wire [31:0] UUL_move_out21;
wire [31:0] UUR_move_out21;
wire [31:0] LLU_move_out21;
wire [31:0] RRU_move_out21;
wire [31:0] DDL_move_out21;
wire [31:0] DDR_move_out21;
wire [31:0] LLD_move_out21;
wire [31:0] RRD_move_out21;
wire [31:0] UUL_move_out26;
wire [31:0] UUR_move_out26;
wire [31:0] LLU_move_out26;
wire [31:0] RRU_move_out26;
wire [31:0] DDL_move_out26;
wire [31:0] DDR_move_out26;
wire [31:0] LLD_move_out26;
wire [31:0] RRD_move_out26;
wire [31:0] UUL_move_out27;
wire [31:0] UUR_move_out27;
wire [31:0] LLU_move_out27;
wire [31:0] RRU_move_out27;
wire [31:0] DDL_move_out27;
wire [31:0] DDR_move_out27;
wire [31:0] LLD_move_out27;
wire [31:0] RRD_move_out27;
wire [31:0] UUL_move_out28;
wire [31:0] UUR_move_out28;
wire [31:0] LLU_move_out28;
wire [31:0] RRU_move_out28;
wire [31:0] DDL_move_out28;
wire [31:0] DDR_move_out28;
wire [31:0] LLD_move_out28;
wire [31:0] RRD_move_out28;
wire [31:0] UUL_move_out29;
wire [31:0] UUR_move_out29;
wire [31:0] LLU_move_out29;
wire [31:0] RRU_move_out29;
wire [31:0] DDL_move_out29;
wire [31:0] DDR_move_out29;
wire [31:0] LLD_move_out29;
wire [31:0] RRD_move_out29;
wire [31:0] UUL_move_out34;
wire [31:0] UUR_move_out34;
wire [31:0] LLU_move_out34;
wire [31:0] RRU_move_out34;
wire [31:0] DDL_move_out34;
wire [31:0] DDR_move_out34;
wire [31:0] LLD_move_out34;
wire [31:0] RRD_move_out34;
wire [31:0] UUL_move_out35;
wire [31:0] UUR_move_out35;
wire [31:0] LLU_move_out35;
wire [31:0] RRU_move_out35;
wire [31:0] DDL_move_out35;
wire [31:0] DDR_move_out35;
wire [31:0] LLD_move_out35;
wire [31:0] RRD_move_out35;
wire [31:0] UUL_move_out36;
wire [31:0] UUR_move_out36;
wire [31:0] LLU_move_out36;
wire [31:0] RRU_move_out36;
wire [31:0] DDL_move_out36;
wire [31:0] DDR_move_out36;
wire [31:0] LLD_move_out36;
wire [31:0] RRD_move_out36;
wire [31:0] UUL_move_out37;
wire [31:0] UUR_move_out37;
wire [31:0] LLU_move_out37;
wire [31:0] RRU_move_out37;
wire [31:0] DDL_move_out37;
wire [31:0] DDR_move_out37;
wire [31:0] LLD_move_out37;
wire [31:0] RRD_move_out37;
wire [31:0] UUL_move_out42;
wire [31:0] UUR_move_out42;
wire [31:0] LLU_move_out42;
wire [31:0] RRU_move_out42;
wire [31:0] DDL_move_out42;
wire [31:0] DDR_move_out42;
wire [31:0] LLD_move_out42;
wire [31:0] RRD_move_out42;
wire [31:0] UUL_move_out43;
wire [31:0] UUR_move_out43;
wire [31:0] LLU_move_out43;
wire [31:0] RRU_move_out43;
wire [31:0] DDL_move_out43;
wire [31:0] DDR_move_out43;
wire [31:0] LLD_move_out43;
wire [31:0] RRD_move_out43;
wire [31:0] UUL_move_out44;
wire [31:0] UUR_move_out44;
wire [31:0] LLU_move_out44;
wire [31:0] RRU_move_out44;
wire [31:0] DDL_move_out44;
wire [31:0] DDR_move_out44;
wire [31:0] LLD_move_out44;
wire [31:0] RRD_move_out44;
wire [31:0] UUL_move_out45;
wire [31:0] UUR_move_out45;
wire [31:0] LLU_move_out45;
wire [31:0] RRU_move_out45;
wire [31:0] DDL_move_out45;
wire [31:0] DDR_move_out45;
wire [31:0] LLD_move_out45;
wire [31:0] RRD_move_out45;
wire [31:0] DDR_move_out63;
wire [31:0] RRD_move_out63;
wire [31:0] DDL_move_out56;
wire [31:0] LLD_move_out56;
wire [31:0] UUR_move_out7;
wire [31:0] RRU_move_out7;
wire [31:0] UUL_move_out0;
wire [31:0] LLU_move_out0;
wire [31:0] UUL_move_out2;
wire [31:0] UUR_move_out2;
wire [31:0] LLU_move_out2;
wire [31:0] RRU_move_out2;
wire [31:0] UUL_move_out3;
wire [31:0] UUR_move_out3;
wire [31:0] LLU_move_out3;
wire [31:0] RRU_move_out3;
wire [31:0] UUL_move_out4;
wire [31:0] UUR_move_out4;
wire [31:0] LLU_move_out4;
wire [31:0] RRU_move_out4;
wire [31:0] UUL_move_out5;
wire [31:0] UUR_move_out5;
wire [31:0] LLU_move_out5;
wire [31:0] RRU_move_out5;
wire [31:0] UUL_move_out16;
wire [31:0] LLU_move_out16;
wire [31:0] DDL_move_out16;
wire [31:0] LLD_move_out16;
wire [31:0] UUL_move_out24;
wire [31:0] LLU_move_out24;
wire [31:0] DDL_move_out24;
wire [31:0] LLD_move_out24;
wire [31:0] UUL_move_out32;
wire [31:0] LLU_move_out32;
wire [31:0] DDL_move_out32;
wire [31:0] LLD_move_out32;
wire [31:0] UUL_move_out40;
wire [31:0] LLU_move_out40;
wire [31:0] DDL_move_out40;
wire [31:0] LLD_move_out40;
wire [31:0] DDL_move_out58;
wire [31:0] DDR_move_out58;
wire [31:0] LLD_move_out58;
wire [31:0] RRD_move_out58;
wire [31:0] DDL_move_out59;
wire [31:0] DDR_move_out59;
wire [31:0] LLD_move_out59;
wire [31:0] RRD_move_out59;
wire [31:0] DDL_move_out60;
wire [31:0] DDR_move_out60;
wire [31:0] LLD_move_out60;
wire [31:0] RRD_move_out60;
wire [31:0] DDL_move_out61;
wire [31:0] DDR_move_out61;
wire [31:0] LLD_move_out61;
wire [31:0] RRD_move_out61;
wire [31:0] DDL_move_out57;
wire [31:0] DDR_move_out57;
wire [31:0] LLD_move_out57;
wire [31:0] DDL_move_out62;
wire [31:0] DDR_move_out62;
wire [31:0] RRD_move_out62;
wire [31:0] LLU_move_out48;
wire [31:0] DDL_move_out48;
wire [31:0] LLD_move_out48;
wire [31:0] LLU_move_out49;
wire [31:0] DDL_move_out49;
wire [31:0] DDR_move_out49;
wire [31:0] LLD_move_out49;
wire [31:0] RRU_move_out54;
wire [31:0] DDL_move_out54;
wire [31:0] DDR_move_out54;
wire [31:0] RRD_move_out54;
wire [31:0] RRU_move_out55;
wire [31:0] DDR_move_out55;
wire [31:0] RRD_move_out55;
wire [31:0] UUL_move_out8;
wire [31:0] LLU_move_out8;
wire [31:0] LLD_move_out8;
wire [31:0] UUL_move_out9;
wire [31:0] UUR_move_out9;
wire [31:0] LLU_move_out9;
wire [31:0] LLD_move_out9;
wire [31:0] UUL_move_out14;
wire [31:0] UUR_move_out14;
wire [31:0] RRU_move_out14;
wire [31:0] RRD_move_out14;
wire [31:0] UUR_move_out15;
wire [31:0] RRU_move_out15;
wire [31:0] RRD_move_out15;
wire [31:0] UUL_move_out1;
wire [31:0] UUR_move_out1;
wire [31:0] LLU_move_out1;
wire [31:0] UUL_move_out6;
wire [31:0] UUR_move_out6;
wire [31:0] RRU_move_out6;


chessBoard board(
.clk(clk),.engineColor(engineColor),.enable(enable),.clear(clear), .castlingFlags(castlingFlags),
.pieceReg0(pieceReg0),
.pieceReg1(pieceReg1),
.pieceReg2(pieceReg2),
.pieceReg3(pieceReg3),
.pieceReg4(pieceReg4),
.pieceReg5(pieceReg5),
.pieceReg6(pieceReg6),
.pieceReg7(pieceReg7),
.pieceReg8(pieceReg8),
.pieceReg9(pieceReg9),
.pieceReg10(pieceReg10),
.pieceReg11(pieceReg11),
.pieceReg12(pieceReg12),
.pieceReg13(pieceReg13),
.pieceReg14(pieceReg14),
.pieceReg15(pieceReg15),
.pieceReg16(pieceReg16),
.pieceReg17(pieceReg17),
.pieceReg18(pieceReg18),
.pieceReg19(pieceReg19),
.pieceReg20(pieceReg20),
.pieceReg21(pieceReg21),
.pieceReg22(pieceReg22),
.pieceReg23(pieceReg23),
.pieceReg24(pieceReg24),
.pieceReg25(pieceReg25),
.pieceReg26(pieceReg26),
.pieceReg27(pieceReg27),
.pieceReg28(pieceReg28),
.pieceReg29(pieceReg29),
.pieceReg30(pieceReg30),
.pieceReg31(pieceReg31),
.pieceReg32(pieceReg32),
.pieceReg33(pieceReg33),
.pieceReg34(pieceReg34),
.pieceReg35(pieceReg35),
.pieceReg36(pieceReg36),
.pieceReg37(pieceReg37),
.pieceReg38(pieceReg38),
.pieceReg39(pieceReg39),
.pieceReg40(pieceReg40),
.pieceReg41(pieceReg41),
.pieceReg42(pieceReg42),
.pieceReg43(pieceReg43),
.pieceReg44(pieceReg44),
.pieceReg45(pieceReg45),
.pieceReg46(pieceReg46),
.pieceReg47(pieceReg47),
.pieceReg48(pieceReg48),
.pieceReg49(pieceReg49),
.pieceReg50(pieceReg50),
.pieceReg51(pieceReg51),
.pieceReg52(pieceReg52),
.pieceReg53(pieceReg53),
.pieceReg54(pieceReg54),
.pieceReg55(pieceReg55),
.pieceReg56(pieceReg56),
.pieceReg57(pieceReg57),
.pieceReg58(pieceReg58),
.pieceReg59(pieceReg59),
.pieceReg60(pieceReg60),
.pieceReg61(pieceReg61),
.pieceReg62(pieceReg62),
.pieceReg63(pieceReg63),
.D_move_out9(D_move_out9),
.U_move_out9(U_move_out9),
.L_move_out9(L_move_out9),
.R_move_out9(R_move_out9),
.DL_move_out9(DL_move_out9),
.DR_move_out9(DR_move_out9),
.UL_move_out9(UL_move_out9),
.UR_move_out9(UR_move_out9),
.D_move_out10(D_move_out10),
.U_move_out10(U_move_out10),
.L_move_out10(L_move_out10),
.R_move_out10(R_move_out10),
.DL_move_out10(DL_move_out10),
.DR_move_out10(DR_move_out10),
.UL_move_out10(UL_move_out10),
.UR_move_out10(UR_move_out10),
.D_move_out11(D_move_out11),
.U_move_out11(U_move_out11),
.L_move_out11(L_move_out11),
.R_move_out11(R_move_out11),
.DL_move_out11(DL_move_out11),
.DR_move_out11(DR_move_out11),
.UL_move_out11(UL_move_out11),
.UR_move_out11(UR_move_out11),
.D_move_out12(D_move_out12),
.U_move_out12(U_move_out12),
.L_move_out12(L_move_out12),
.R_move_out12(R_move_out12),
.DL_move_out12(DL_move_out12),
.DR_move_out12(DR_move_out12),
.UL_move_out12(UL_move_out12),
.UR_move_out12(UR_move_out12),
.D_move_out13(D_move_out13),
.U_move_out13(U_move_out13),
.L_move_out13(L_move_out13),
.R_move_out13(R_move_out13),
.DL_move_out13(DL_move_out13),
.DR_move_out13(DR_move_out13),
.UL_move_out13(UL_move_out13),
.UR_move_out13(UR_move_out13),
.D_move_out14(D_move_out14),
.U_move_out14(U_move_out14),
.L_move_out14(L_move_out14),
.R_move_out14(R_move_out14),
.DL_move_out14(DL_move_out14),
.DR_move_out14(DR_move_out14),
.UL_move_out14(UL_move_out14),
.UR_move_out14(UR_move_out14),
.D_move_out17(D_move_out17),
.U_move_out17(U_move_out17),
.L_move_out17(L_move_out17),
.R_move_out17(R_move_out17),
.DL_move_out17(DL_move_out17),
.DR_move_out17(DR_move_out17),
.UL_move_out17(UL_move_out17),
.UR_move_out17(UR_move_out17),
.D_move_out18(D_move_out18),
.U_move_out18(U_move_out18),
.L_move_out18(L_move_out18),
.R_move_out18(R_move_out18),
.DL_move_out18(DL_move_out18),
.DR_move_out18(DR_move_out18),
.UL_move_out18(UL_move_out18),
.UR_move_out18(UR_move_out18),
.D_move_out19(D_move_out19),
.U_move_out19(U_move_out19),
.L_move_out19(L_move_out19),
.R_move_out19(R_move_out19),
.DL_move_out19(DL_move_out19),
.DR_move_out19(DR_move_out19),
.UL_move_out19(UL_move_out19),
.UR_move_out19(UR_move_out19),
.D_move_out20(D_move_out20),
.U_move_out20(U_move_out20),
.L_move_out20(L_move_out20),
.R_move_out20(R_move_out20),
.DL_move_out20(DL_move_out20),
.DR_move_out20(DR_move_out20),
.UL_move_out20(UL_move_out20),
.UR_move_out20(UR_move_out20),
.D_move_out21(D_move_out21),
.U_move_out21(U_move_out21),
.L_move_out21(L_move_out21),
.R_move_out21(R_move_out21),
.DL_move_out21(DL_move_out21),
.DR_move_out21(DR_move_out21),
.UL_move_out21(UL_move_out21),
.UR_move_out21(UR_move_out21),
.D_move_out22(D_move_out22),
.U_move_out22(U_move_out22),
.L_move_out22(L_move_out22),
.R_move_out22(R_move_out22),
.DL_move_out22(DL_move_out22),
.DR_move_out22(DR_move_out22),
.UL_move_out22(UL_move_out22),
.UR_move_out22(UR_move_out22),
.D_move_out25(D_move_out25),
.U_move_out25(U_move_out25),
.L_move_out25(L_move_out25),
.R_move_out25(R_move_out25),
.DL_move_out25(DL_move_out25),
.DR_move_out25(DR_move_out25),
.UL_move_out25(UL_move_out25),
.UR_move_out25(UR_move_out25),
.D_move_out26(D_move_out26),
.U_move_out26(U_move_out26),
.L_move_out26(L_move_out26),
.R_move_out26(R_move_out26),
.DL_move_out26(DL_move_out26),
.DR_move_out26(DR_move_out26),
.UL_move_out26(UL_move_out26),
.UR_move_out26(UR_move_out26),
.D_move_out27(D_move_out27),
.U_move_out27(U_move_out27),
.L_move_out27(L_move_out27),
.R_move_out27(R_move_out27),
.DL_move_out27(DL_move_out27),
.DR_move_out27(DR_move_out27),
.UL_move_out27(UL_move_out27),
.UR_move_out27(UR_move_out27),
.D_move_out28(D_move_out28),
.U_move_out28(U_move_out28),
.L_move_out28(L_move_out28),
.R_move_out28(R_move_out28),
.DL_move_out28(DL_move_out28),
.DR_move_out28(DR_move_out28),
.UL_move_out28(UL_move_out28),
.UR_move_out28(UR_move_out28),
.D_move_out29(D_move_out29),
.U_move_out29(U_move_out29),
.L_move_out29(L_move_out29),
.R_move_out29(R_move_out29),
.DL_move_out29(DL_move_out29),
.DR_move_out29(DR_move_out29),
.UL_move_out29(UL_move_out29),
.UR_move_out29(UR_move_out29),
.D_move_out30(D_move_out30),
.U_move_out30(U_move_out30),
.L_move_out30(L_move_out30),
.R_move_out30(R_move_out30),
.DL_move_out30(DL_move_out30),
.DR_move_out30(DR_move_out30),
.UL_move_out30(UL_move_out30),
.UR_move_out30(UR_move_out30),
.D_move_out33(D_move_out33),
.U_move_out33(U_move_out33),
.L_move_out33(L_move_out33),
.R_move_out33(R_move_out33),
.DL_move_out33(DL_move_out33),
.DR_move_out33(DR_move_out33),
.UL_move_out33(UL_move_out33),
.UR_move_out33(UR_move_out33),
.D_move_out34(D_move_out34),
.U_move_out34(U_move_out34),
.L_move_out34(L_move_out34),
.R_move_out34(R_move_out34),
.DL_move_out34(DL_move_out34),
.DR_move_out34(DR_move_out34),
.UL_move_out34(UL_move_out34),
.UR_move_out34(UR_move_out34),
.D_move_out35(D_move_out35),
.U_move_out35(U_move_out35),
.L_move_out35(L_move_out35),
.R_move_out35(R_move_out35),
.DL_move_out35(DL_move_out35),
.DR_move_out35(DR_move_out35),
.UL_move_out35(UL_move_out35),
.UR_move_out35(UR_move_out35),
.D_move_out36(D_move_out36),
.U_move_out36(U_move_out36),
.L_move_out36(L_move_out36),
.R_move_out36(R_move_out36),
.DL_move_out36(DL_move_out36),
.DR_move_out36(DR_move_out36),
.UL_move_out36(UL_move_out36),
.UR_move_out36(UR_move_out36),
.D_move_out37(D_move_out37),
.U_move_out37(U_move_out37),
.L_move_out37(L_move_out37),
.R_move_out37(R_move_out37),
.DL_move_out37(DL_move_out37),
.DR_move_out37(DR_move_out37),
.UL_move_out37(UL_move_out37),
.UR_move_out37(UR_move_out37),
.D_move_out38(D_move_out38),
.U_move_out38(U_move_out38),
.L_move_out38(L_move_out38),
.R_move_out38(R_move_out38),
.DL_move_out38(DL_move_out38),
.DR_move_out38(DR_move_out38),
.UL_move_out38(UL_move_out38),
.UR_move_out38(UR_move_out38),
.D_move_out41(D_move_out41),
.U_move_out41(U_move_out41),
.L_move_out41(L_move_out41),
.R_move_out41(R_move_out41),
.DL_move_out41(DL_move_out41),
.DR_move_out41(DR_move_out41),
.UL_move_out41(UL_move_out41),
.UR_move_out41(UR_move_out41),
.D_move_out42(D_move_out42),
.U_move_out42(U_move_out42),
.L_move_out42(L_move_out42),
.R_move_out42(R_move_out42),
.DL_move_out42(DL_move_out42),
.DR_move_out42(DR_move_out42),
.UL_move_out42(UL_move_out42),
.UR_move_out42(UR_move_out42),
.D_move_out43(D_move_out43),
.U_move_out43(U_move_out43),
.L_move_out43(L_move_out43),
.R_move_out43(R_move_out43),
.DL_move_out43(DL_move_out43),
.DR_move_out43(DR_move_out43),
.UL_move_out43(UL_move_out43),
.UR_move_out43(UR_move_out43),
.D_move_out44(D_move_out44),
.U_move_out44(U_move_out44),
.L_move_out44(L_move_out44),
.R_move_out44(R_move_out44),
.DL_move_out44(DL_move_out44),
.DR_move_out44(DR_move_out44),
.UL_move_out44(UL_move_out44),
.UR_move_out44(UR_move_out44),
.D_move_out45(D_move_out45),
.U_move_out45(U_move_out45),
.L_move_out45(L_move_out45),
.R_move_out45(R_move_out45),
.DL_move_out45(DL_move_out45),
.DR_move_out45(DR_move_out45),
.UL_move_out45(UL_move_out45),
.UR_move_out45(UR_move_out45),
.D_move_out46(D_move_out46),
.U_move_out46(U_move_out46),
.L_move_out46(L_move_out46),
.R_move_out46(R_move_out46),
.DL_move_out46(DL_move_out46),
.DR_move_out46(DR_move_out46),
.UL_move_out46(UL_move_out46),
.UR_move_out46(UR_move_out46),
.D_move_out49(D_move_out49),
.U_move_out49(U_move_out49),
.L_move_out49(L_move_out49),
.R_move_out49(R_move_out49),
.DL_move_out49(DL_move_out49),
.DR_move_out49(DR_move_out49),
.UL_move_out49(UL_move_out49),
.UR_move_out49(UR_move_out49),
.D_move_out50(D_move_out50),
.U_move_out50(U_move_out50),
.L_move_out50(L_move_out50),
.R_move_out50(R_move_out50),
.DL_move_out50(DL_move_out50),
.DR_move_out50(DR_move_out50),
.UL_move_out50(UL_move_out50),
.UR_move_out50(UR_move_out50),
.D_move_out51(D_move_out51),
.U_move_out51(U_move_out51),
.L_move_out51(L_move_out51),
.R_move_out51(R_move_out51),
.DL_move_out51(DL_move_out51),
.DR_move_out51(DR_move_out51),
.UL_move_out51(UL_move_out51),
.UR_move_out51(UR_move_out51),
.D_move_out52(D_move_out52),
.U_move_out52(U_move_out52),
.L_move_out52(L_move_out52),
.R_move_out52(R_move_out52),
.DL_move_out52(DL_move_out52),
.DR_move_out52(DR_move_out52),
.UL_move_out52(UL_move_out52),
.UR_move_out52(UR_move_out52),
.D_move_out53(D_move_out53),
.U_move_out53(U_move_out53),
.L_move_out53(L_move_out53),
.R_move_out53(R_move_out53),
.DL_move_out53(DL_move_out53),
.DR_move_out53(DR_move_out53),
.UL_move_out53(UL_move_out53),
.UR_move_out53(UR_move_out53),
.D_move_out54(D_move_out54),
.U_move_out54(U_move_out54),
.L_move_out54(L_move_out54),
.R_move_out54(R_move_out54),
.DL_move_out54(DL_move_out54),
.DR_move_out54(DR_move_out54),
.UL_move_out54(UL_move_out54),
.UR_move_out54(UR_move_out54),
.D_move_out63(D_move_out63),
.R_move_out63(R_move_out63),
.DR_move_out63(DR_move_out63),
.D_move_out56(D_move_out56),
.L_move_out56(L_move_out56),
.DL_move_out56(DL_move_out56),
.U_move_out0(U_move_out0),
.L_move_out0(L_move_out0),
.UL_move_out0(UL_move_out0),
.U_move_out7(U_move_out7),
.R_move_out7(R_move_out7),
.UR_move_out7(UR_move_out7),
.U_move_out1(U_move_out1),
.L_move_out1(L_move_out1),
.R_move_out1(R_move_out1),
.UL_move_out1(UL_move_out1),
.UR_move_out1(UR_move_out1),
.U_move_out2(U_move_out2),
.L_move_out2(L_move_out2),
.R_move_out2(R_move_out2),
.UL_move_out2(UL_move_out2),
.UR_move_out2(UR_move_out2),
.U_move_out3(U_move_out3),
.L_move_out3(L_move_out3),
.R_move_out3(R_move_out3),
.UL_move_out3(UL_move_out3),
.UR_move_out3(UR_move_out3),
.U_move_out4(U_move_out4),
.L_move_out4(L_move_out4),
.R_move_out4(R_move_out4),
.UL_move_out4(UL_move_out4),
.UR_move_out4(UR_move_out4),
.U_move_out5(U_move_out5),
.L_move_out5(L_move_out5),
.R_move_out5(R_move_out5),
.UL_move_out5(UL_move_out5),
.UR_move_out5(UR_move_out5),
.U_move_out6(U_move_out6),
.L_move_out6(L_move_out6),
.R_move_out6(R_move_out6),
.UL_move_out6(UL_move_out6),
.UR_move_out6(UR_move_out6),
.D_move_out8(D_move_out8),
.U_move_out8(U_move_out8),
.L_move_out8(L_move_out8),
.DL_move_out8(DL_move_out8),
.UL_move_out8(UL_move_out8),
.D_move_out16(D_move_out16),
.U_move_out16(U_move_out16),
.L_move_out16(L_move_out16),
.DL_move_out16(DL_move_out16),
.UL_move_out16(UL_move_out16),
.D_move_out24(D_move_out24),
.U_move_out24(U_move_out24),
.L_move_out24(L_move_out24),
.DL_move_out24(DL_move_out24),
.UL_move_out24(UL_move_out24),
.D_move_out32(D_move_out32),
.U_move_out32(U_move_out32),
.L_move_out32(L_move_out32),
.DL_move_out32(DL_move_out32),
.UL_move_out32(UL_move_out32),
.D_move_out40(D_move_out40),
.U_move_out40(U_move_out40),
.L_move_out40(L_move_out40),
.DL_move_out40(DL_move_out40),
.UL_move_out40(UL_move_out40),
.D_move_out48(D_move_out48),
.U_move_out48(U_move_out48),
.L_move_out48(L_move_out48),
.DL_move_out48(DL_move_out48),
.UL_move_out48(UL_move_out48),
.D_move_out15(D_move_out15),
.U_move_out15(U_move_out15),
.R_move_out15(R_move_out15),
.DR_move_out15(DR_move_out15),
.UR_move_out15(UR_move_out15),
.D_move_out23(D_move_out23),
.U_move_out23(U_move_out23),
.R_move_out23(R_move_out23),
.DR_move_out23(DR_move_out23),
.UR_move_out23(UR_move_out23),
.D_move_out31(D_move_out31),
.U_move_out31(U_move_out31),
.R_move_out31(R_move_out31),
.DR_move_out31(DR_move_out31),
.UR_move_out31(UR_move_out31),
.D_move_out39(D_move_out39),
.U_move_out39(U_move_out39),
.R_move_out39(R_move_out39),
.DR_move_out39(DR_move_out39),
.UR_move_out39(UR_move_out39),
.D_move_out47(D_move_out47),
.U_move_out47(U_move_out47),
.R_move_out47(R_move_out47),
.DR_move_out47(DR_move_out47),
.UR_move_out47(UR_move_out47),
.D_move_out55(D_move_out55),
.U_move_out55(U_move_out55),
.R_move_out55(R_move_out55),
.DR_move_out55(DR_move_out55),
.UR_move_out55(UR_move_out55),
.D_move_out57(D_move_out57),
.L_move_out57(L_move_out57),
.R_move_out57(R_move_out57),
.DL_move_out57(DL_move_out57),
.DR_move_out57(DR_move_out57),
.D_move_out58(D_move_out58),
.L_move_out58(L_move_out58),
.R_move_out58(R_move_out58),
.DL_move_out58(DL_move_out58),
.DR_move_out58(DR_move_out58),
.D_move_out59(D_move_out59),
.L_move_out59(L_move_out59),
.R_move_out59(R_move_out59),
.DL_move_out59(DL_move_out59),
.DR_move_out59(DR_move_out59),
.D_move_out60(D_move_out60),
.L_move_out60(L_move_out60),
.R_move_out60(R_move_out60),
.DL_move_out60(DL_move_out60),
.DR_move_out60(DR_move_out60),
.D_move_out61(D_move_out61),
.L_move_out61(L_move_out61),
.R_move_out61(R_move_out61),
.DL_move_out61(DL_move_out61),
.DR_move_out61(DR_move_out61),
.D_move_out62(D_move_out62),
.L_move_out62(L_move_out62),
.R_move_out62(R_move_out62),
.DL_move_out62(DL_move_out62),
.DR_move_out62(DR_move_out62),
.LLU_move_out50(LLU_move_out50),
.RRU_move_out50(RRU_move_out50),
.DDL_move_out50(DDL_move_out50),
.DDR_move_out50(DDR_move_out50),
.LLD_move_out50(LLD_move_out50),
.RRD_move_out50(RRD_move_out50),
.LLU_move_out51(LLU_move_out51),
.RRU_move_out51(RRU_move_out51),
.DDL_move_out51(DDL_move_out51),
.DDR_move_out51(DDR_move_out51),
.LLD_move_out51(LLD_move_out51),
.RRD_move_out51(RRD_move_out51),
.LLU_move_out52(LLU_move_out52),
.RRU_move_out52(RRU_move_out52),
.DDL_move_out52(DDL_move_out52),
.DDR_move_out52(DDR_move_out52),
.LLD_move_out52(LLD_move_out52),
.RRD_move_out52(RRD_move_out52),
.LLU_move_out53(LLU_move_out53),
.RRU_move_out53(RRU_move_out53),
.DDL_move_out53(DDL_move_out53),
.DDR_move_out53(DDR_move_out53),
.LLD_move_out53(LLD_move_out53),
.RRD_move_out53(RRD_move_out53),
.UUL_move_out17(UUL_move_out17),
.LLU_move_out17(LLU_move_out17),
.DDL_move_out17(DDL_move_out17),
.LLD_move_out17(LLD_move_out17),
.UUL_move_out25(UUL_move_out25),
.LLU_move_out25(LLU_move_out25),
.DDL_move_out25(DDL_move_out25),
.LLD_move_out25(LLD_move_out25),
.UUL_move_out33(UUL_move_out33),
.LLU_move_out33(LLU_move_out33),
.DDL_move_out33(DDL_move_out33),
.LLD_move_out33(LLD_move_out33),
.UUL_move_out41(UUL_move_out41),
.LLU_move_out41(LLU_move_out41),
.DDL_move_out41(DDL_move_out41),
.LLD_move_out41(LLD_move_out41),
.UUL_move_out22(UUL_move_out22),
.UUR_move_out22(UUR_move_out22),
.RRU_move_out22(RRU_move_out22),
.DDL_move_out22(DDL_move_out22),
.DDR_move_out22(DDR_move_out22),
.RRD_move_out22(RRD_move_out22),
.UUL_move_out30(UUL_move_out30),
.UUR_move_out30(UUR_move_out30),
.RRU_move_out30(RRU_move_out30),
.DDL_move_out30(DDL_move_out30),
.DDR_move_out30(DDR_move_out30),
.RRD_move_out30(RRD_move_out30),
.UUL_move_out38(UUL_move_out38),
.UUR_move_out38(UUR_move_out38),
.RRU_move_out38(RRU_move_out38),
.DDL_move_out38(DDL_move_out38),
.DDR_move_out38(DDR_move_out38),
.RRD_move_out38(RRD_move_out38),
.UUL_move_out46(UUL_move_out46),
.UUR_move_out46(UUR_move_out46),
.RRU_move_out46(RRU_move_out46),
.DDL_move_out46(DDL_move_out46),
.DDR_move_out46(DDR_move_out46),
.RRD_move_out46(RRD_move_out46),
.UUL_move_out10(UUL_move_out10),
.UUR_move_out10(UUR_move_out10),
.LLU_move_out10(LLU_move_out10),
.RRU_move_out10(RRU_move_out10),
.LLD_move_out10(LLD_move_out10),
.RRD_move_out10(RRD_move_out10),
.UUL_move_out11(UUL_move_out11),
.UUR_move_out11(UUR_move_out11),
.LLU_move_out11(LLU_move_out11),
.RRU_move_out11(RRU_move_out11),
.LLD_move_out11(LLD_move_out11),
.RRD_move_out11(RRD_move_out11),
.UUL_move_out12(UUL_move_out12),
.UUR_move_out12(UUR_move_out12),
.LLU_move_out12(LLU_move_out12),
.RRU_move_out12(RRU_move_out12),
.LLD_move_out12(LLD_move_out12),
.RRD_move_out12(RRD_move_out12),
.UUL_move_out13(UUL_move_out13),
.UUR_move_out13(UUR_move_out13),
.LLU_move_out13(LLU_move_out13),
.RRU_move_out13(RRU_move_out13),
.LLD_move_out13(LLD_move_out13),
.RRD_move_out13(RRD_move_out13),
.UUR_move_out23(UUR_move_out23),
.RRU_move_out23(RRU_move_out23),
.DDR_move_out23(DDR_move_out23),
.RRD_move_out23(RRD_move_out23),
.UUR_move_out31(UUR_move_out31),
.RRU_move_out31(RRU_move_out31),
.DDR_move_out31(DDR_move_out31),
.RRD_move_out31(RRD_move_out31),
.UUR_move_out39(UUR_move_out39),
.RRU_move_out39(RRU_move_out39),
.DDR_move_out39(DDR_move_out39),
.RRD_move_out39(RRD_move_out39),
.UUR_move_out47(UUR_move_out47),
.RRU_move_out47(RRU_move_out47),
.DDR_move_out47(DDR_move_out47),
.RRD_move_out47(RRD_move_out47),
.UUL_move_out18(UUL_move_out18),
.UUR_move_out18(UUR_move_out18),
.LLU_move_out18(LLU_move_out18),
.RRU_move_out18(RRU_move_out18),
.DDL_move_out18(DDL_move_out18),
.DDR_move_out18(DDR_move_out18),
.LLD_move_out18(LLD_move_out18),
.RRD_move_out18(RRD_move_out18),
.UUL_move_out19(UUL_move_out19),
.UUR_move_out19(UUR_move_out19),
.LLU_move_out19(LLU_move_out19),
.RRU_move_out19(RRU_move_out19),
.DDL_move_out19(DDL_move_out19),
.DDR_move_out19(DDR_move_out19),
.LLD_move_out19(LLD_move_out19),
.RRD_move_out19(RRD_move_out19),
.UUL_move_out20(UUL_move_out20),
.UUR_move_out20(UUR_move_out20),
.LLU_move_out20(LLU_move_out20),
.RRU_move_out20(RRU_move_out20),
.DDL_move_out20(DDL_move_out20),
.DDR_move_out20(DDR_move_out20),
.LLD_move_out20(LLD_move_out20),
.RRD_move_out20(RRD_move_out20),
.UUL_move_out21(UUL_move_out21),
.UUR_move_out21(UUR_move_out21),
.LLU_move_out21(LLU_move_out21),
.RRU_move_out21(RRU_move_out21),
.DDL_move_out21(DDL_move_out21),
.DDR_move_out21(DDR_move_out21),
.LLD_move_out21(LLD_move_out21),
.RRD_move_out21(RRD_move_out21),
.UUL_move_out26(UUL_move_out26),
.UUR_move_out26(UUR_move_out26),
.LLU_move_out26(LLU_move_out26),
.RRU_move_out26(RRU_move_out26),
.DDL_move_out26(DDL_move_out26),
.DDR_move_out26(DDR_move_out26),
.LLD_move_out26(LLD_move_out26),
.RRD_move_out26(RRD_move_out26),
.UUL_move_out27(UUL_move_out27),
.UUR_move_out27(UUR_move_out27),
.LLU_move_out27(LLU_move_out27),
.RRU_move_out27(RRU_move_out27),
.DDL_move_out27(DDL_move_out27),
.DDR_move_out27(DDR_move_out27),
.LLD_move_out27(LLD_move_out27),
.RRD_move_out27(RRD_move_out27),
.UUL_move_out28(UUL_move_out28),
.UUR_move_out28(UUR_move_out28),
.LLU_move_out28(LLU_move_out28),
.RRU_move_out28(RRU_move_out28),
.DDL_move_out28(DDL_move_out28),
.DDR_move_out28(DDR_move_out28),
.LLD_move_out28(LLD_move_out28),
.RRD_move_out28(RRD_move_out28),
.UUL_move_out29(UUL_move_out29),
.UUR_move_out29(UUR_move_out29),
.LLU_move_out29(LLU_move_out29),
.RRU_move_out29(RRU_move_out29),
.DDL_move_out29(DDL_move_out29),
.DDR_move_out29(DDR_move_out29),
.LLD_move_out29(LLD_move_out29),
.RRD_move_out29(RRD_move_out29),
.UUL_move_out34(UUL_move_out34),
.UUR_move_out34(UUR_move_out34),
.LLU_move_out34(LLU_move_out34),
.RRU_move_out34(RRU_move_out34),
.DDL_move_out34(DDL_move_out34),
.DDR_move_out34(DDR_move_out34),
.LLD_move_out34(LLD_move_out34),
.RRD_move_out34(RRD_move_out34),
.UUL_move_out35(UUL_move_out35),
.UUR_move_out35(UUR_move_out35),
.LLU_move_out35(LLU_move_out35),
.RRU_move_out35(RRU_move_out35),
.DDL_move_out35(DDL_move_out35),
.DDR_move_out35(DDR_move_out35),
.LLD_move_out35(LLD_move_out35),
.RRD_move_out35(RRD_move_out35),
.UUL_move_out36(UUL_move_out36),
.UUR_move_out36(UUR_move_out36),
.LLU_move_out36(LLU_move_out36),
.RRU_move_out36(RRU_move_out36),
.DDL_move_out36(DDL_move_out36),
.DDR_move_out36(DDR_move_out36),
.LLD_move_out36(LLD_move_out36),
.RRD_move_out36(RRD_move_out36),
.UUL_move_out37(UUL_move_out37),
.UUR_move_out37(UUR_move_out37),
.LLU_move_out37(LLU_move_out37),
.RRU_move_out37(RRU_move_out37),
.DDL_move_out37(DDL_move_out37),
.DDR_move_out37(DDR_move_out37),
.LLD_move_out37(LLD_move_out37),
.RRD_move_out37(RRD_move_out37),
.UUL_move_out42(UUL_move_out42),
.UUR_move_out42(UUR_move_out42),
.LLU_move_out42(LLU_move_out42),
.RRU_move_out42(RRU_move_out42),
.DDL_move_out42(DDL_move_out42),
.DDR_move_out42(DDR_move_out42),
.LLD_move_out42(LLD_move_out42),
.RRD_move_out42(RRD_move_out42),
.UUL_move_out43(UUL_move_out43),
.UUR_move_out43(UUR_move_out43),
.LLU_move_out43(LLU_move_out43),
.RRU_move_out43(RRU_move_out43),
.DDL_move_out43(DDL_move_out43),
.DDR_move_out43(DDR_move_out43),
.LLD_move_out43(LLD_move_out43),
.RRD_move_out43(RRD_move_out43),
.UUL_move_out44(UUL_move_out44),
.UUR_move_out44(UUR_move_out44),
.LLU_move_out44(LLU_move_out44),
.RRU_move_out44(RRU_move_out44),
.DDL_move_out44(DDL_move_out44),
.DDR_move_out44(DDR_move_out44),
.LLD_move_out44(LLD_move_out44),
.RRD_move_out44(RRD_move_out44),
.UUL_move_out45(UUL_move_out45),
.UUR_move_out45(UUR_move_out45),
.LLU_move_out45(LLU_move_out45),
.RRU_move_out45(RRU_move_out45),
.DDL_move_out45(DDL_move_out45),
.DDR_move_out45(DDR_move_out45),
.LLD_move_out45(LLD_move_out45),
.RRD_move_out45(RRD_move_out45),
.DDR_move_out63(DDR_move_out63),
.RRD_move_out63(RRD_move_out63),
.DDL_move_out56(DDL_move_out56),
.LLD_move_out56(LLD_move_out56),
.UUR_move_out7(UUR_move_out7),
.RRU_move_out7(RRU_move_out7),
.UUL_move_out0(UUL_move_out0),
.LLU_move_out0(LLU_move_out0),
.UUL_move_out2(UUL_move_out2),
.UUR_move_out2(UUR_move_out2),
.LLU_move_out2(LLU_move_out2),
.RRU_move_out2(RRU_move_out2),
.UUL_move_out3(UUL_move_out3),
.UUR_move_out3(UUR_move_out3),
.LLU_move_out3(LLU_move_out3),
.RRU_move_out3(RRU_move_out3),
.UUL_move_out4(UUL_move_out4),
.UUR_move_out4(UUR_move_out4),
.LLU_move_out4(LLU_move_out4),
.RRU_move_out4(RRU_move_out4),
.UUL_move_out5(UUL_move_out5),
.UUR_move_out5(UUR_move_out5),
.LLU_move_out5(LLU_move_out5),
.RRU_move_out5(RRU_move_out5),
.UUL_move_out16(UUL_move_out16),
.LLU_move_out16(LLU_move_out16),
.DDL_move_out16(DDL_move_out16),
.LLD_move_out16(LLD_move_out16),
.UUL_move_out24(UUL_move_out24),
.LLU_move_out24(LLU_move_out24),
.DDL_move_out24(DDL_move_out24),
.LLD_move_out24(LLD_move_out24),
.UUL_move_out32(UUL_move_out32),
.LLU_move_out32(LLU_move_out32),
.DDL_move_out32(DDL_move_out32),
.LLD_move_out32(LLD_move_out32),
.UUL_move_out40(UUL_move_out40),
.LLU_move_out40(LLU_move_out40),
.DDL_move_out40(DDL_move_out40),
.LLD_move_out40(LLD_move_out40),
.DDL_move_out58(DDL_move_out58),
.DDR_move_out58(DDR_move_out58),
.LLD_move_out58(LLD_move_out58),
.RRD_move_out58(RRD_move_out58),
.DDL_move_out59(DDL_move_out59),
.DDR_move_out59(DDR_move_out59),
.LLD_move_out59(LLD_move_out59),
.RRD_move_out59(RRD_move_out59),
.DDL_move_out60(DDL_move_out60),
.DDR_move_out60(DDR_move_out60),
.LLD_move_out60(LLD_move_out60),
.RRD_move_out60(RRD_move_out60),
.DDL_move_out61(DDL_move_out61),
.DDR_move_out61(DDR_move_out61),
.LLD_move_out61(LLD_move_out61),
.RRD_move_out61(RRD_move_out61),
.DDL_move_out57(DDL_move_out57),
.DDR_move_out57(DDR_move_out57),
.LLD_move_out57(LLD_move_out57),
.DDL_move_out62(DDL_move_out62),
.DDR_move_out62(DDR_move_out62),
.RRD_move_out62(RRD_move_out62),
.LLU_move_out48(LLU_move_out48),
.DDL_move_out48(DDL_move_out48),
.LLD_move_out48(LLD_move_out48),
.LLU_move_out49(LLU_move_out49),
.DDL_move_out49(DDL_move_out49),
.DDR_move_out49(DDR_move_out49),
.LLD_move_out49(LLD_move_out49),
.RRU_move_out54(RRU_move_out54),
.DDL_move_out54(DDL_move_out54),
.DDR_move_out54(DDR_move_out54),
.RRD_move_out54(RRD_move_out54),
.RRU_move_out55(RRU_move_out55),
.DDR_move_out55(DDR_move_out55),
.RRD_move_out55(RRD_move_out55),
.UUL_move_out8(UUL_move_out8),
.LLU_move_out8(LLU_move_out8),
.LLD_move_out8(LLD_move_out8),
.UUL_move_out9(UUL_move_out9),
.UUR_move_out9(UUR_move_out9),
.LLU_move_out9(LLU_move_out9),
.LLD_move_out9(LLD_move_out9),
.UUL_move_out14(UUL_move_out14),
.UUR_move_out14(UUR_move_out14),
.RRU_move_out14(RRU_move_out14),
.RRD_move_out14(RRD_move_out14),
.UUR_move_out15(UUR_move_out15),
.RRU_move_out15(RRU_move_out15),
.RRD_move_out15(RRD_move_out15),
.UUL_move_out1(UUL_move_out1),
.UUR_move_out1(UUR_move_out1),
.LLU_move_out1(LLU_move_out1),
.UUL_move_out6(UUL_move_out6),
.UUR_move_out6(UUR_move_out6),
.RRU_move_out6(RRU_move_out6)
);

integer f0;
integer f1;
integer f2;
integer f3;
integer f4;
integer f5;
integer f6;
integer f7;
integer f8;
integer f9;
integer f10;
integer f11;
integer f12;
integer f13;
integer f14;
integer f15;
integer f16;
integer f17;
integer f18;
integer f19;
integer f20;
integer f21;
integer f22;
integer f23;
integer f24;
integer f25;
integer f26;
integer f27;
integer f28;
integer f29;
integer f30;
integer f31;
integer f32;
integer f33;
integer f34;
integer f35;
integer f36;
integer f37;
integer f38;
integer f39;
integer f40;
integer f41;
integer f42;
integer f43;
integer f44;
integer f45;
integer f46;
integer f47;
integer f48;
integer f49;
integer f50;
integer f51;
integer f52;
integer f53;
integer f54;
integer f55;
integer f56;
integer f57;
integer f58;
integer f59;
integer f60;
integer f61;
integer f62;
integer f63;

parameter WHITE = 1'b1;
parameter BLACK = 1'b0;

parameter PAWN_PIECE = 5'b00010;
parameter KNIGHT_PIECE = 5'b00001;
parameter QUEEN_PIECE = 5'b11000;
parameter ROOK_PIECE = 5'b10000;
parameter KING_PIECE = 5'b00100;
parameter BISHOP_PIECE = 5'b01000;
parameter EMPTY_PIECE = 6'b00_0000;

initial begin

clk = 1'b1;
enable = 64'hFFFF_FFFF_FFFF_FFFF;
clear = 1'b0;

engineColor = WHITE;

pieceReg0 = 6'b000000;
pieceReg1 = 6'b000000;
pieceReg2 = 6'b000000;
pieceReg3 = 6'b000000;
pieceReg4 = 6'b000000;
pieceReg5 = 6'b000000;
pieceReg6 = 6'b000000;
pieceReg7 = 6'b000000;
pieceReg8 = 6'b000000;
pieceReg9 = {WHITE, PAWN_PIECE};
pieceReg10 = 6'b000000;
pieceReg11 = 6'b000000;
pieceReg12 = 6'b000000;
pieceReg13 = 6'b000000;
pieceReg14 = 6'b000000;
pieceReg15 = 6'b000000;
pieceReg16 = {WHITE, KNIGHT_PIECE};
pieceReg17 = 6'b000000;
pieceReg18 = 6'b000000;
pieceReg19 = {BLACK, PAWN_PIECE};
pieceReg20 = 6'b000000;
pieceReg21 = 6'b000000;
pieceReg22 = {WHITE, KNIGHT_PIECE};
pieceReg23 = 6'b000000;
pieceReg24 = 6'b000000;
pieceReg25 = 6'b000000;
pieceReg26 = {BLACK, PAWN_PIECE};
pieceReg27 = 6'b000000;
pieceReg28 = {BLACK, PAWN_PIECE};
pieceReg29 = 6'b000000;
pieceReg30 = 6'b000000;
pieceReg31 = 6'b000000;
pieceReg32 = 6'b000000;
pieceReg33 = {BLACK, PAWN_PIECE};
pieceReg34 = 6'b000000;
pieceReg35 = {WHITE, QUEEN_PIECE};
pieceReg36 = 6'b000000;
pieceReg37 = {BLACK, PAWN_PIECE};
pieceReg38 = 6'b000000;
pieceReg39 = 6'b000000;
pieceReg40 = 6'b000000;
pieceReg41 = 6'b000000;
pieceReg42 = {BLACK, PAWN_PIECE};
pieceReg43 = 6'b000000;
pieceReg44 = {BLACK, PAWN_PIECE};
pieceReg45 = 6'b000000;
pieceReg46 = 6'b000000;
pieceReg47 = 6'b000000;
pieceReg48 = 6'b000000;
pieceReg49 = 6'b000000;
pieceReg50 = 6'b000000;
pieceReg51 = {BLACK, PAWN_PIECE};
pieceReg52 = 6'b000000;
pieceReg53 = 6'b000000;
pieceReg54 = 6'b000000;
pieceReg55 = 6'b000000;
pieceReg56 = 6'b000000;
pieceReg57 = {WHITE, KNIGHT_PIECE};
pieceReg58 = 6'b000000;
pieceReg59 = 6'b000000;
pieceReg60 = 6'b000000;
pieceReg61 = {WHITE, KNIGHT_PIECE};
pieceReg62 = 6'b000000;
pieceReg63 = {WHITE, ROOK_PIECE};


castlingFlags = 4'b1111;

#200;

f0 = $fopen("square0.txt");
$fwrite(f0,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out0[27:24],U_move_out0[23:18],U_move_out0[17:12],U_move_out0[11:6],U_move_out0[5:0],pieceReg0);
$fwrite(f0,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out0[27:24],L_move_out0[23:18],L_move_out0[17:12],L_move_out0[11:6],L_move_out0[5:0],pieceReg0);
$fwrite(f0,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out0[27:24],UL_move_out0[23:18],UL_move_out0[17:12],UL_move_out0[11:6],UL_move_out0[5:0],pieceReg0);
$fwrite(f0,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out0[27:24],UUL_move_out0[23:18],UUL_move_out0[17:12],UUL_move_out0[11:6],UUL_move_out0[5:0],pieceReg0);
$fwrite(f0,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out0[27:24],LLU_move_out0[23:18],LLU_move_out0[17:12],LLU_move_out0[11:6],LLU_move_out0[5:0],pieceReg0);

f1 = $fopen("square1.txt");
$fwrite(f1,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out1[27:24],U_move_out1[23:18],U_move_out1[17:12],U_move_out1[11:6],U_move_out1[5:0],pieceReg1);
$fwrite(f1,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out1[27:24],L_move_out1[23:18],L_move_out1[17:12],L_move_out1[11:6],L_move_out1[5:0],pieceReg1);
$fwrite(f1,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out1[27:24],R_move_out1[23:18],R_move_out1[17:12],R_move_out1[11:6],R_move_out1[5:0],pieceReg1);
$fwrite(f1,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out1[27:24],UL_move_out1[23:18],UL_move_out1[17:12],UL_move_out1[11:6],UL_move_out1[5:0],pieceReg1);
$fwrite(f1,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out1[27:24],UR_move_out1[23:18],UR_move_out1[17:12],UR_move_out1[11:6],UR_move_out1[5:0],pieceReg1);
$fwrite(f1,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out1[27:24],UUL_move_out1[23:18],UUL_move_out1[17:12],UUL_move_out1[11:6],UUL_move_out1[5:0],pieceReg1);
$fwrite(f1,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out1[27:24],UUR_move_out1[23:18],UUR_move_out1[17:12],UUR_move_out1[11:6],UUR_move_out1[5:0],pieceReg1);
$fwrite(f1,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out1[27:24],LLU_move_out1[23:18],LLU_move_out1[17:12],LLU_move_out1[11:6],LLU_move_out1[5:0],pieceReg1);

f2 = $fopen("square2.txt");
$fwrite(f2,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out2[27:24],U_move_out2[23:18],U_move_out2[17:12],U_move_out2[11:6],U_move_out2[5:0],pieceReg2);
$fwrite(f2,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out2[27:24],L_move_out2[23:18],L_move_out2[17:12],L_move_out2[11:6],L_move_out2[5:0],pieceReg2);
$fwrite(f2,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out2[27:24],R_move_out2[23:18],R_move_out2[17:12],R_move_out2[11:6],R_move_out2[5:0],pieceReg2);
$fwrite(f2,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out2[27:24],UL_move_out2[23:18],UL_move_out2[17:12],UL_move_out2[11:6],UL_move_out2[5:0],pieceReg2);
$fwrite(f2,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out2[27:24],UR_move_out2[23:18],UR_move_out2[17:12],UR_move_out2[11:6],UR_move_out2[5:0],pieceReg2);
$fwrite(f2,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out2[27:24],UUL_move_out2[23:18],UUL_move_out2[17:12],UUL_move_out2[11:6],UUL_move_out2[5:0],pieceReg2);
$fwrite(f2,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out2[27:24],UUR_move_out2[23:18],UUR_move_out2[17:12],UUR_move_out2[11:6],UUR_move_out2[5:0],pieceReg2);
$fwrite(f2,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out2[27:24],LLU_move_out2[23:18],LLU_move_out2[17:12],LLU_move_out2[11:6],LLU_move_out2[5:0],pieceReg2);
$fwrite(f2,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out2[27:24],RRU_move_out2[23:18],RRU_move_out2[17:12],RRU_move_out2[11:6],RRU_move_out2[5:0],pieceReg2);

f3 = $fopen("square3.txt");
$fwrite(f3,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out3[27:24],U_move_out3[23:18],U_move_out3[17:12],U_move_out3[11:6],U_move_out3[5:0],pieceReg3);
$fwrite(f3,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out3[27:24],L_move_out3[23:18],L_move_out3[17:12],L_move_out3[11:6],L_move_out3[5:0],pieceReg3);
$fwrite(f3,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out3[27:24],R_move_out3[23:18],R_move_out3[17:12],R_move_out3[11:6],R_move_out3[5:0],pieceReg3);
$fwrite(f3,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out3[27:24],UL_move_out3[23:18],UL_move_out3[17:12],UL_move_out3[11:6],UL_move_out3[5:0],pieceReg3);
$fwrite(f3,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out3[27:24],UR_move_out3[23:18],UR_move_out3[17:12],UR_move_out3[11:6],UR_move_out3[5:0],pieceReg3);
$fwrite(f3,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out3[27:24],UUL_move_out3[23:18],UUL_move_out3[17:12],UUL_move_out3[11:6],UUL_move_out3[5:0],pieceReg3);
$fwrite(f3,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out3[27:24],UUR_move_out3[23:18],UUR_move_out3[17:12],UUR_move_out3[11:6],UUR_move_out3[5:0],pieceReg3);
$fwrite(f3,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out3[27:24],LLU_move_out3[23:18],LLU_move_out3[17:12],LLU_move_out3[11:6],LLU_move_out3[5:0],pieceReg3);
$fwrite(f3,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out3[27:24],RRU_move_out3[23:18],RRU_move_out3[17:12],RRU_move_out3[11:6],RRU_move_out3[5:0],pieceReg3);

f4 = $fopen("square4.txt");
$fwrite(f4,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out4[27:24],U_move_out4[23:18],U_move_out4[17:12],U_move_out4[11:6],U_move_out4[5:0],pieceReg4);
$fwrite(f4,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out4[27:24],L_move_out4[23:18],L_move_out4[17:12],L_move_out4[11:6],L_move_out4[5:0],pieceReg4);
$fwrite(f4,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out4[27:24],R_move_out4[23:18],R_move_out4[17:12],R_move_out4[11:6],R_move_out4[5:0],pieceReg4);
$fwrite(f4,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out4[27:24],UL_move_out4[23:18],UL_move_out4[17:12],UL_move_out4[11:6],UL_move_out4[5:0],pieceReg4);
$fwrite(f4,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out4[27:24],UR_move_out4[23:18],UR_move_out4[17:12],UR_move_out4[11:6],UR_move_out4[5:0],pieceReg4);
$fwrite(f4,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out4[27:24],UUL_move_out4[23:18],UUL_move_out4[17:12],UUL_move_out4[11:6],UUL_move_out4[5:0],pieceReg4);
$fwrite(f4,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out4[27:24],UUR_move_out4[23:18],UUR_move_out4[17:12],UUR_move_out4[11:6],UUR_move_out4[5:0],pieceReg4);
$fwrite(f4,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out4[27:24],LLU_move_out4[23:18],LLU_move_out4[17:12],LLU_move_out4[11:6],LLU_move_out4[5:0],pieceReg4);
$fwrite(f4,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out4[27:24],RRU_move_out4[23:18],RRU_move_out4[17:12],RRU_move_out4[11:6],RRU_move_out4[5:0],pieceReg4);

f5 = $fopen("square5.txt");
$fwrite(f5,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out5[27:24],U_move_out5[23:18],U_move_out5[17:12],U_move_out5[11:6],U_move_out5[5:0],pieceReg5);
$fwrite(f5,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out5[27:24],L_move_out5[23:18],L_move_out5[17:12],L_move_out5[11:6],L_move_out5[5:0],pieceReg5);
$fwrite(f5,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out5[27:24],R_move_out5[23:18],R_move_out5[17:12],R_move_out5[11:6],R_move_out5[5:0],pieceReg5);
$fwrite(f5,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out5[27:24],UL_move_out5[23:18],UL_move_out5[17:12],UL_move_out5[11:6],UL_move_out5[5:0],pieceReg5);
$fwrite(f5,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out5[27:24],UR_move_out5[23:18],UR_move_out5[17:12],UR_move_out5[11:6],UR_move_out5[5:0],pieceReg5);
$fwrite(f5,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out5[27:24],UUL_move_out5[23:18],UUL_move_out5[17:12],UUL_move_out5[11:6],UUL_move_out5[5:0],pieceReg5);
$fwrite(f5,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out5[27:24],UUR_move_out5[23:18],UUR_move_out5[17:12],UUR_move_out5[11:6],UUR_move_out5[5:0],pieceReg5);
$fwrite(f5,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out5[27:24],LLU_move_out5[23:18],LLU_move_out5[17:12],LLU_move_out5[11:6],LLU_move_out5[5:0],pieceReg5);
$fwrite(f5,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out5[27:24],RRU_move_out5[23:18],RRU_move_out5[17:12],RRU_move_out5[11:6],RRU_move_out5[5:0],pieceReg5);

f6 = $fopen("square6.txt");
$fwrite(f6,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out6[27:24],U_move_out6[23:18],U_move_out6[17:12],U_move_out6[11:6],U_move_out6[5:0],pieceReg6);
$fwrite(f6,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out6[27:24],L_move_out6[23:18],L_move_out6[17:12],L_move_out6[11:6],L_move_out6[5:0],pieceReg6);
$fwrite(f6,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out6[27:24],R_move_out6[23:18],R_move_out6[17:12],R_move_out6[11:6],R_move_out6[5:0],pieceReg6);
$fwrite(f6,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out6[27:24],UL_move_out6[23:18],UL_move_out6[17:12],UL_move_out6[11:6],UL_move_out6[5:0],pieceReg6);
$fwrite(f6,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out6[27:24],UR_move_out6[23:18],UR_move_out6[17:12],UR_move_out6[11:6],UR_move_out6[5:0],pieceReg6);
$fwrite(f6,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out6[27:24],UUL_move_out6[23:18],UUL_move_out6[17:12],UUL_move_out6[11:6],UUL_move_out6[5:0],pieceReg6);
$fwrite(f6,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out6[27:24],UUR_move_out6[23:18],UUR_move_out6[17:12],UUR_move_out6[11:6],UUR_move_out6[5:0],pieceReg6);
$fwrite(f6,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out6[27:24],RRU_move_out6[23:18],RRU_move_out6[17:12],RRU_move_out6[11:6],RRU_move_out6[5:0],pieceReg6);

f7 = $fopen("square7.txt");
$fwrite(f7,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out7[27:24],U_move_out7[23:18],U_move_out7[17:12],U_move_out7[11:6],U_move_out7[5:0],pieceReg7);
$fwrite(f7,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out7[27:24],R_move_out7[23:18],R_move_out7[17:12],R_move_out7[11:6],R_move_out7[5:0],pieceReg7);
$fwrite(f7,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out7[27:24],UR_move_out7[23:18],UR_move_out7[17:12],UR_move_out7[11:6],UR_move_out7[5:0],pieceReg7);
$fwrite(f7,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out7[27:24],UUR_move_out7[23:18],UUR_move_out7[17:12],UUR_move_out7[11:6],UUR_move_out7[5:0],pieceReg7);
$fwrite(f7,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out7[27:24],RRU_move_out7[23:18],RRU_move_out7[17:12],RRU_move_out7[11:6],RRU_move_out7[5:0],pieceReg7);

f8 = $fopen("square8.txt");
$fwrite(f8,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out8[27:24],D_move_out8[23:18],D_move_out8[17:12],D_move_out8[11:6],D_move_out8[5:0],pieceReg8);
$fwrite(f8,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out8[27:24],U_move_out8[23:18],U_move_out8[17:12],U_move_out8[11:6],U_move_out8[5:0],pieceReg8);
$fwrite(f8,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out8[27:24],L_move_out8[23:18],L_move_out8[17:12],L_move_out8[11:6],L_move_out8[5:0],pieceReg8);
$fwrite(f8,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out8[27:24],DL_move_out8[23:18],DL_move_out8[17:12],DL_move_out8[11:6],DL_move_out8[5:0],pieceReg8);
$fwrite(f8,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out8[27:24],UL_move_out8[23:18],UL_move_out8[17:12],UL_move_out8[11:6],UL_move_out8[5:0],pieceReg8);
$fwrite(f8,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out8[27:24],UUL_move_out8[23:18],UUL_move_out8[17:12],UUL_move_out8[11:6],UUL_move_out8[5:0],pieceReg8);
$fwrite(f8,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out8[27:24],LLU_move_out8[23:18],LLU_move_out8[17:12],LLU_move_out8[11:6],LLU_move_out8[5:0],pieceReg8);
$fwrite(f8,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out8[27:24],LLD_move_out8[23:18],LLD_move_out8[17:12],LLD_move_out8[11:6],LLD_move_out8[5:0],pieceReg8);

f9 = $fopen("square9.txt");
$fwrite(f9,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out9[27:24],D_move_out9[23:18],D_move_out9[17:12],D_move_out9[11:6],D_move_out9[5:0],pieceReg9);
$fwrite(f9,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out9[27:24],U_move_out9[23:18],U_move_out9[17:12],U_move_out9[11:6],U_move_out9[5:0],pieceReg9);
$fwrite(f9,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out9[27:24],L_move_out9[23:18],L_move_out9[17:12],L_move_out9[11:6],L_move_out9[5:0],pieceReg9);
$fwrite(f9,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out9[27:24],R_move_out9[23:18],R_move_out9[17:12],R_move_out9[11:6],R_move_out9[5:0],pieceReg9);
$fwrite(f9,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out9[27:24],DL_move_out9[23:18],DL_move_out9[17:12],DL_move_out9[11:6],DL_move_out9[5:0],pieceReg9);
$fwrite(f9,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out9[27:24],DR_move_out9[23:18],DR_move_out9[17:12],DR_move_out9[11:6],DR_move_out9[5:0],pieceReg9);
$fwrite(f9,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out9[27:24],UL_move_out9[23:18],UL_move_out9[17:12],UL_move_out9[11:6],UL_move_out9[5:0],pieceReg9);
$fwrite(f9,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out9[27:24],UR_move_out9[23:18],UR_move_out9[17:12],UR_move_out9[11:6],UR_move_out9[5:0],pieceReg9);
$fwrite(f9,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out9[27:24],UUL_move_out9[23:18],UUL_move_out9[17:12],UUL_move_out9[11:6],UUL_move_out9[5:0],pieceReg9);
$fwrite(f9,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out9[27:24],UUR_move_out9[23:18],UUR_move_out9[17:12],UUR_move_out9[11:6],UUR_move_out9[5:0],pieceReg9);
$fwrite(f9,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out9[27:24],LLU_move_out9[23:18],LLU_move_out9[17:12],LLU_move_out9[11:6],LLU_move_out9[5:0],pieceReg9);
$fwrite(f9,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out9[27:24],LLD_move_out9[23:18],LLD_move_out9[17:12],LLD_move_out9[11:6],LLD_move_out9[5:0],pieceReg9);

f10 = $fopen("square10.txt");
$fwrite(f10,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out10[27:24],D_move_out10[23:18],D_move_out10[17:12],D_move_out10[11:6],D_move_out10[5:0],pieceReg10);
$fwrite(f10,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out10[27:24],U_move_out10[23:18],U_move_out10[17:12],U_move_out10[11:6],U_move_out10[5:0],pieceReg10);
$fwrite(f10,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out10[27:24],L_move_out10[23:18],L_move_out10[17:12],L_move_out10[11:6],L_move_out10[5:0],pieceReg10);
$fwrite(f10,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out10[27:24],R_move_out10[23:18],R_move_out10[17:12],R_move_out10[11:6],R_move_out10[5:0],pieceReg10);
$fwrite(f10,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out10[27:24],DL_move_out10[23:18],DL_move_out10[17:12],DL_move_out10[11:6],DL_move_out10[5:0],pieceReg10);
$fwrite(f10,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out10[27:24],DR_move_out10[23:18],DR_move_out10[17:12],DR_move_out10[11:6],DR_move_out10[5:0],pieceReg10);
$fwrite(f10,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out10[27:24],UL_move_out10[23:18],UL_move_out10[17:12],UL_move_out10[11:6],UL_move_out10[5:0],pieceReg10);
$fwrite(f10,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out10[27:24],UR_move_out10[23:18],UR_move_out10[17:12],UR_move_out10[11:6],UR_move_out10[5:0],pieceReg10);
$fwrite(f10,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out10[27:24],UUL_move_out10[23:18],UUL_move_out10[17:12],UUL_move_out10[11:6],UUL_move_out10[5:0],pieceReg10);
$fwrite(f10,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out10[27:24],UUR_move_out10[23:18],UUR_move_out10[17:12],UUR_move_out10[11:6],UUR_move_out10[5:0],pieceReg10);
$fwrite(f10,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out10[27:24],LLU_move_out10[23:18],LLU_move_out10[17:12],LLU_move_out10[11:6],LLU_move_out10[5:0],pieceReg10);
$fwrite(f10,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out10[27:24],RRU_move_out10[23:18],RRU_move_out10[17:12],RRU_move_out10[11:6],RRU_move_out10[5:0],pieceReg10);
$fwrite(f10,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out10[27:24],LLD_move_out10[23:18],LLD_move_out10[17:12],LLD_move_out10[11:6],LLD_move_out10[5:0],pieceReg10);
$fwrite(f10,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out10[27:24],RRD_move_out10[23:18],RRD_move_out10[17:12],RRD_move_out10[11:6],RRD_move_out10[5:0],pieceReg10);

f11 = $fopen("square11.txt");
$fwrite(f11,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out11[27:24],D_move_out11[23:18],D_move_out11[17:12],D_move_out11[11:6],D_move_out11[5:0],pieceReg11);
$fwrite(f11,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out11[27:24],U_move_out11[23:18],U_move_out11[17:12],U_move_out11[11:6],U_move_out11[5:0],pieceReg11);
$fwrite(f11,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out11[27:24],L_move_out11[23:18],L_move_out11[17:12],L_move_out11[11:6],L_move_out11[5:0],pieceReg11);
$fwrite(f11,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out11[27:24],R_move_out11[23:18],R_move_out11[17:12],R_move_out11[11:6],R_move_out11[5:0],pieceReg11);
$fwrite(f11,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out11[27:24],DL_move_out11[23:18],DL_move_out11[17:12],DL_move_out11[11:6],DL_move_out11[5:0],pieceReg11);
$fwrite(f11,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out11[27:24],DR_move_out11[23:18],DR_move_out11[17:12],DR_move_out11[11:6],DR_move_out11[5:0],pieceReg11);
$fwrite(f11,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out11[27:24],UL_move_out11[23:18],UL_move_out11[17:12],UL_move_out11[11:6],UL_move_out11[5:0],pieceReg11);
$fwrite(f11,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out11[27:24],UR_move_out11[23:18],UR_move_out11[17:12],UR_move_out11[11:6],UR_move_out11[5:0],pieceReg11);
$fwrite(f11,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out11[27:24],UUL_move_out11[23:18],UUL_move_out11[17:12],UUL_move_out11[11:6],UUL_move_out11[5:0],pieceReg11);
$fwrite(f11,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out11[27:24],UUR_move_out11[23:18],UUR_move_out11[17:12],UUR_move_out11[11:6],UUR_move_out11[5:0],pieceReg11);
$fwrite(f11,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out11[27:24],LLU_move_out11[23:18],LLU_move_out11[17:12],LLU_move_out11[11:6],LLU_move_out11[5:0],pieceReg11);
$fwrite(f11,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out11[27:24],RRU_move_out11[23:18],RRU_move_out11[17:12],RRU_move_out11[11:6],RRU_move_out11[5:0],pieceReg11);
$fwrite(f11,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out11[27:24],LLD_move_out11[23:18],LLD_move_out11[17:12],LLD_move_out11[11:6],LLD_move_out11[5:0],pieceReg11);
$fwrite(f11,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out11[27:24],RRD_move_out11[23:18],RRD_move_out11[17:12],RRD_move_out11[11:6],RRD_move_out11[5:0],pieceReg11);

f12 = $fopen("square12.txt");
$fwrite(f12,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out12[27:24],D_move_out12[23:18],D_move_out12[17:12],D_move_out12[11:6],D_move_out12[5:0],pieceReg12);
$fwrite(f12,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out12[27:24],U_move_out12[23:18],U_move_out12[17:12],U_move_out12[11:6],U_move_out12[5:0],pieceReg12);
$fwrite(f12,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out12[27:24],L_move_out12[23:18],L_move_out12[17:12],L_move_out12[11:6],L_move_out12[5:0],pieceReg12);
$fwrite(f12,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out12[27:24],R_move_out12[23:18],R_move_out12[17:12],R_move_out12[11:6],R_move_out12[5:0],pieceReg12);
$fwrite(f12,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out12[27:24],DL_move_out12[23:18],DL_move_out12[17:12],DL_move_out12[11:6],DL_move_out12[5:0],pieceReg12);
$fwrite(f12,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out12[27:24],DR_move_out12[23:18],DR_move_out12[17:12],DR_move_out12[11:6],DR_move_out12[5:0],pieceReg12);
$fwrite(f12,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out12[27:24],UL_move_out12[23:18],UL_move_out12[17:12],UL_move_out12[11:6],UL_move_out12[5:0],pieceReg12);
$fwrite(f12,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out12[27:24],UR_move_out12[23:18],UR_move_out12[17:12],UR_move_out12[11:6],UR_move_out12[5:0],pieceReg12);
$fwrite(f12,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out12[27:24],UUL_move_out12[23:18],UUL_move_out12[17:12],UUL_move_out12[11:6],UUL_move_out12[5:0],pieceReg12);
$fwrite(f12,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out12[27:24],UUR_move_out12[23:18],UUR_move_out12[17:12],UUR_move_out12[11:6],UUR_move_out12[5:0],pieceReg12);
$fwrite(f12,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out12[27:24],LLU_move_out12[23:18],LLU_move_out12[17:12],LLU_move_out12[11:6],LLU_move_out12[5:0],pieceReg12);
$fwrite(f12,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out12[27:24],RRU_move_out12[23:18],RRU_move_out12[17:12],RRU_move_out12[11:6],RRU_move_out12[5:0],pieceReg12);
$fwrite(f12,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out12[27:24],LLD_move_out12[23:18],LLD_move_out12[17:12],LLD_move_out12[11:6],LLD_move_out12[5:0],pieceReg12);
$fwrite(f12,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out12[27:24],RRD_move_out12[23:18],RRD_move_out12[17:12],RRD_move_out12[11:6],RRD_move_out12[5:0],pieceReg12);

f13 = $fopen("square13.txt");
$fwrite(f13,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out13[27:24],D_move_out13[23:18],D_move_out13[17:12],D_move_out13[11:6],D_move_out13[5:0],pieceReg13);
$fwrite(f13,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out13[27:24],U_move_out13[23:18],U_move_out13[17:12],U_move_out13[11:6],U_move_out13[5:0],pieceReg13);
$fwrite(f13,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out13[27:24],L_move_out13[23:18],L_move_out13[17:12],L_move_out13[11:6],L_move_out13[5:0],pieceReg13);
$fwrite(f13,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out13[27:24],R_move_out13[23:18],R_move_out13[17:12],R_move_out13[11:6],R_move_out13[5:0],pieceReg13);
$fwrite(f13,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out13[27:24],DL_move_out13[23:18],DL_move_out13[17:12],DL_move_out13[11:6],DL_move_out13[5:0],pieceReg13);
$fwrite(f13,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out13[27:24],DR_move_out13[23:18],DR_move_out13[17:12],DR_move_out13[11:6],DR_move_out13[5:0],pieceReg13);
$fwrite(f13,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out13[27:24],UL_move_out13[23:18],UL_move_out13[17:12],UL_move_out13[11:6],UL_move_out13[5:0],pieceReg13);
$fwrite(f13,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out13[27:24],UR_move_out13[23:18],UR_move_out13[17:12],UR_move_out13[11:6],UR_move_out13[5:0],pieceReg13);
$fwrite(f13,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out13[27:24],UUL_move_out13[23:18],UUL_move_out13[17:12],UUL_move_out13[11:6],UUL_move_out13[5:0],pieceReg13);
$fwrite(f13,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out13[27:24],UUR_move_out13[23:18],UUR_move_out13[17:12],UUR_move_out13[11:6],UUR_move_out13[5:0],pieceReg13);
$fwrite(f13,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out13[27:24],LLU_move_out13[23:18],LLU_move_out13[17:12],LLU_move_out13[11:6],LLU_move_out13[5:0],pieceReg13);
$fwrite(f13,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out13[27:24],RRU_move_out13[23:18],RRU_move_out13[17:12],RRU_move_out13[11:6],RRU_move_out13[5:0],pieceReg13);
$fwrite(f13,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out13[27:24],LLD_move_out13[23:18],LLD_move_out13[17:12],LLD_move_out13[11:6],LLD_move_out13[5:0],pieceReg13);
$fwrite(f13,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out13[27:24],RRD_move_out13[23:18],RRD_move_out13[17:12],RRD_move_out13[11:6],RRD_move_out13[5:0],pieceReg13);

f14 = $fopen("square14.txt");
$fwrite(f14,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out14[27:24],D_move_out14[23:18],D_move_out14[17:12],D_move_out14[11:6],D_move_out14[5:0],pieceReg14);
$fwrite(f14,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out14[27:24],U_move_out14[23:18],U_move_out14[17:12],U_move_out14[11:6],U_move_out14[5:0],pieceReg14);
$fwrite(f14,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out14[27:24],L_move_out14[23:18],L_move_out14[17:12],L_move_out14[11:6],L_move_out14[5:0],pieceReg14);
$fwrite(f14,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out14[27:24],R_move_out14[23:18],R_move_out14[17:12],R_move_out14[11:6],R_move_out14[5:0],pieceReg14);
$fwrite(f14,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out14[27:24],DL_move_out14[23:18],DL_move_out14[17:12],DL_move_out14[11:6],DL_move_out14[5:0],pieceReg14);
$fwrite(f14,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out14[27:24],DR_move_out14[23:18],DR_move_out14[17:12],DR_move_out14[11:6],DR_move_out14[5:0],pieceReg14);
$fwrite(f14,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out14[27:24],UL_move_out14[23:18],UL_move_out14[17:12],UL_move_out14[11:6],UL_move_out14[5:0],pieceReg14);
$fwrite(f14,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out14[27:24],UR_move_out14[23:18],UR_move_out14[17:12],UR_move_out14[11:6],UR_move_out14[5:0],pieceReg14);
$fwrite(f14,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out14[27:24],UUL_move_out14[23:18],UUL_move_out14[17:12],UUL_move_out14[11:6],UUL_move_out14[5:0],pieceReg14);
$fwrite(f14,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out14[27:24],UUR_move_out14[23:18],UUR_move_out14[17:12],UUR_move_out14[11:6],UUR_move_out14[5:0],pieceReg14);
$fwrite(f14,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out14[27:24],RRU_move_out14[23:18],RRU_move_out14[17:12],RRU_move_out14[11:6],RRU_move_out14[5:0],pieceReg14);
$fwrite(f14,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out14[27:24],RRD_move_out14[23:18],RRD_move_out14[17:12],RRD_move_out14[11:6],RRD_move_out14[5:0],pieceReg14);

f15 = $fopen("square15.txt");
$fwrite(f15,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out15[27:24],D_move_out15[23:18],D_move_out15[17:12],D_move_out15[11:6],D_move_out15[5:0],pieceReg15);
$fwrite(f15,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out15[27:24],U_move_out15[23:18],U_move_out15[17:12],U_move_out15[11:6],U_move_out15[5:0],pieceReg15);
$fwrite(f15,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out15[27:24],R_move_out15[23:18],R_move_out15[17:12],R_move_out15[11:6],R_move_out15[5:0],pieceReg15);
$fwrite(f15,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out15[27:24],DR_move_out15[23:18],DR_move_out15[17:12],DR_move_out15[11:6],DR_move_out15[5:0],pieceReg15);
$fwrite(f15,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out15[27:24],UR_move_out15[23:18],UR_move_out15[17:12],UR_move_out15[11:6],UR_move_out15[5:0],pieceReg15);
$fwrite(f15,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out15[27:24],UUR_move_out15[23:18],UUR_move_out15[17:12],UUR_move_out15[11:6],UUR_move_out15[5:0],pieceReg15);
$fwrite(f15,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out15[27:24],RRU_move_out15[23:18],RRU_move_out15[17:12],RRU_move_out15[11:6],RRU_move_out15[5:0],pieceReg15);
$fwrite(f15,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out15[27:24],RRD_move_out15[23:18],RRD_move_out15[17:12],RRD_move_out15[11:6],RRD_move_out15[5:0],pieceReg15);

f16 = $fopen("square16.txt");
$fwrite(f16,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out16[27:24],D_move_out16[23:18],D_move_out16[17:12],D_move_out16[11:6],D_move_out16[5:0],pieceReg16);
$fwrite(f16,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out16[27:24],U_move_out16[23:18],U_move_out16[17:12],U_move_out16[11:6],U_move_out16[5:0],pieceReg16);
$fwrite(f16,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out16[27:24],L_move_out16[23:18],L_move_out16[17:12],L_move_out16[11:6],L_move_out16[5:0],pieceReg16);
$fwrite(f16,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out16[27:24],DL_move_out16[23:18],DL_move_out16[17:12],DL_move_out16[11:6],DL_move_out16[5:0],pieceReg16);
$fwrite(f16,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out16[27:24],UL_move_out16[23:18],UL_move_out16[17:12],UL_move_out16[11:6],UL_move_out16[5:0],pieceReg16);
$fwrite(f16,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out16[27:24],UUL_move_out16[23:18],UUL_move_out16[17:12],UUL_move_out16[11:6],UUL_move_out16[5:0],pieceReg16);
$fwrite(f16,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out16[27:24],LLU_move_out16[23:18],LLU_move_out16[17:12],LLU_move_out16[11:6],LLU_move_out16[5:0],pieceReg16);
$fwrite(f16,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out16[27:24],DDL_move_out16[23:18],DDL_move_out16[17:12],DDL_move_out16[11:6],DDL_move_out16[5:0],pieceReg16);
$fwrite(f16,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out16[27:24],LLD_move_out16[23:18],LLD_move_out16[17:12],LLD_move_out16[11:6],LLD_move_out16[5:0],pieceReg16);

f17 = $fopen("square17.txt");
$fwrite(f17,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out17[27:24],D_move_out17[23:18],D_move_out17[17:12],D_move_out17[11:6],D_move_out17[5:0],pieceReg17);
$fwrite(f17,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out17[27:24],U_move_out17[23:18],U_move_out17[17:12],U_move_out17[11:6],U_move_out17[5:0],pieceReg17);
$fwrite(f17,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out17[27:24],L_move_out17[23:18],L_move_out17[17:12],L_move_out17[11:6],L_move_out17[5:0],pieceReg17);
$fwrite(f17,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out17[27:24],R_move_out17[23:18],R_move_out17[17:12],R_move_out17[11:6],R_move_out17[5:0],pieceReg17);
$fwrite(f17,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out17[27:24],DL_move_out17[23:18],DL_move_out17[17:12],DL_move_out17[11:6],DL_move_out17[5:0],pieceReg17);
$fwrite(f17,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out17[27:24],DR_move_out17[23:18],DR_move_out17[17:12],DR_move_out17[11:6],DR_move_out17[5:0],pieceReg17);
$fwrite(f17,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out17[27:24],UL_move_out17[23:18],UL_move_out17[17:12],UL_move_out17[11:6],UL_move_out17[5:0],pieceReg17);
$fwrite(f17,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out17[27:24],UR_move_out17[23:18],UR_move_out17[17:12],UR_move_out17[11:6],UR_move_out17[5:0],pieceReg17);
$fwrite(f17,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out17[27:24],UUL_move_out17[23:18],UUL_move_out17[17:12],UUL_move_out17[11:6],UUL_move_out17[5:0],pieceReg17);
$fwrite(f17,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out17[27:24],UUR_move_out17[23:18],UUR_move_out17[17:12],UUR_move_out17[11:6],UUR_move_out17[5:0],pieceReg17);
$fwrite(f17,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out17[27:24],LLU_move_out17[23:18],LLU_move_out17[17:12],LLU_move_out17[11:6],LLU_move_out17[5:0],pieceReg17);
$fwrite(f17,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out17[27:24],DDL_move_out17[23:18],DDL_move_out17[17:12],DDL_move_out17[11:6],DDL_move_out17[5:0],pieceReg17);
$fwrite(f17,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out17[27:24],DDR_move_out17[23:18],DDR_move_out17[17:12],DDR_move_out17[11:6],DDR_move_out17[5:0],pieceReg17);
$fwrite(f17,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out17[27:24],LLD_move_out17[23:18],LLD_move_out17[17:12],LLD_move_out17[11:6],LLD_move_out17[5:0],pieceReg17);

f18 = $fopen("square18.txt");
$fwrite(f18,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out18[27:24],D_move_out18[23:18],D_move_out18[17:12],D_move_out18[11:6],D_move_out18[5:0],pieceReg18);
$fwrite(f18,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out18[27:24],U_move_out18[23:18],U_move_out18[17:12],U_move_out18[11:6],U_move_out18[5:0],pieceReg18);
$fwrite(f18,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out18[27:24],L_move_out18[23:18],L_move_out18[17:12],L_move_out18[11:6],L_move_out18[5:0],pieceReg18);
$fwrite(f18,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out18[27:24],R_move_out18[23:18],R_move_out18[17:12],R_move_out18[11:6],R_move_out18[5:0],pieceReg18);
$fwrite(f18,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out18[27:24],DL_move_out18[23:18],DL_move_out18[17:12],DL_move_out18[11:6],DL_move_out18[5:0],pieceReg18);
$fwrite(f18,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out18[27:24],DR_move_out18[23:18],DR_move_out18[17:12],DR_move_out18[11:6],DR_move_out18[5:0],pieceReg18);
$fwrite(f18,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out18[27:24],UL_move_out18[23:18],UL_move_out18[17:12],UL_move_out18[11:6],UL_move_out18[5:0],pieceReg18);
$fwrite(f18,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out18[27:24],UR_move_out18[23:18],UR_move_out18[17:12],UR_move_out18[11:6],UR_move_out18[5:0],pieceReg18);
$fwrite(f18,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out18[27:24],UUL_move_out18[23:18],UUL_move_out18[17:12],UUL_move_out18[11:6],UUL_move_out18[5:0],pieceReg18);
$fwrite(f18,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out18[27:24],UUR_move_out18[23:18],UUR_move_out18[17:12],UUR_move_out18[11:6],UUR_move_out18[5:0],pieceReg18);
$fwrite(f18,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out18[27:24],LLU_move_out18[23:18],LLU_move_out18[17:12],LLU_move_out18[11:6],LLU_move_out18[5:0],pieceReg18);
$fwrite(f18,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out18[27:24],RRU_move_out18[23:18],RRU_move_out18[17:12],RRU_move_out18[11:6],RRU_move_out18[5:0],pieceReg18);
$fwrite(f18,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out18[27:24],DDL_move_out18[23:18],DDL_move_out18[17:12],DDL_move_out18[11:6],DDL_move_out18[5:0],pieceReg18);
$fwrite(f18,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out18[27:24],DDR_move_out18[23:18],DDR_move_out18[17:12],DDR_move_out18[11:6],DDR_move_out18[5:0],pieceReg18);
$fwrite(f18,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out18[27:24],LLD_move_out18[23:18],LLD_move_out18[17:12],LLD_move_out18[11:6],LLD_move_out18[5:0],pieceReg18);
$fwrite(f18,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out18[27:24],RRD_move_out18[23:18],RRD_move_out18[17:12],RRD_move_out18[11:6],RRD_move_out18[5:0],pieceReg18);

f19 = $fopen("square19.txt");
$fwrite(f19,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out19[27:24],D_move_out19[23:18],D_move_out19[17:12],D_move_out19[11:6],D_move_out19[5:0],pieceReg19);
$fwrite(f19,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out19[27:24],U_move_out19[23:18],U_move_out19[17:12],U_move_out19[11:6],U_move_out19[5:0],pieceReg19);
$fwrite(f19,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out19[27:24],L_move_out19[23:18],L_move_out19[17:12],L_move_out19[11:6],L_move_out19[5:0],pieceReg19);
$fwrite(f19,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out19[27:24],R_move_out19[23:18],R_move_out19[17:12],R_move_out19[11:6],R_move_out19[5:0],pieceReg19);
$fwrite(f19,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out19[27:24],DL_move_out19[23:18],DL_move_out19[17:12],DL_move_out19[11:6],DL_move_out19[5:0],pieceReg19);
$fwrite(f19,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out19[27:24],DR_move_out19[23:18],DR_move_out19[17:12],DR_move_out19[11:6],DR_move_out19[5:0],pieceReg19);
$fwrite(f19,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out19[27:24],UL_move_out19[23:18],UL_move_out19[17:12],UL_move_out19[11:6],UL_move_out19[5:0],pieceReg19);
$fwrite(f19,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out19[27:24],UR_move_out19[23:18],UR_move_out19[17:12],UR_move_out19[11:6],UR_move_out19[5:0],pieceReg19);
$fwrite(f19,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out19[27:24],UUL_move_out19[23:18],UUL_move_out19[17:12],UUL_move_out19[11:6],UUL_move_out19[5:0],pieceReg19);
$fwrite(f19,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out19[27:24],UUR_move_out19[23:18],UUR_move_out19[17:12],UUR_move_out19[11:6],UUR_move_out19[5:0],pieceReg19);
$fwrite(f19,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out19[27:24],LLU_move_out19[23:18],LLU_move_out19[17:12],LLU_move_out19[11:6],LLU_move_out19[5:0],pieceReg19);
$fwrite(f19,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out19[27:24],RRU_move_out19[23:18],RRU_move_out19[17:12],RRU_move_out19[11:6],RRU_move_out19[5:0],pieceReg19);
$fwrite(f19,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out19[27:24],DDL_move_out19[23:18],DDL_move_out19[17:12],DDL_move_out19[11:6],DDL_move_out19[5:0],pieceReg19);
$fwrite(f19,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out19[27:24],DDR_move_out19[23:18],DDR_move_out19[17:12],DDR_move_out19[11:6],DDR_move_out19[5:0],pieceReg19);
$fwrite(f19,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out19[27:24],LLD_move_out19[23:18],LLD_move_out19[17:12],LLD_move_out19[11:6],LLD_move_out19[5:0],pieceReg19);
$fwrite(f19,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out19[27:24],RRD_move_out19[23:18],RRD_move_out19[17:12],RRD_move_out19[11:6],RRD_move_out19[5:0],pieceReg19);

f20 = $fopen("square20.txt");
$fwrite(f20,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out20[27:24],D_move_out20[23:18],D_move_out20[17:12],D_move_out20[11:6],D_move_out20[5:0],pieceReg20);
$fwrite(f20,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out20[27:24],U_move_out20[23:18],U_move_out20[17:12],U_move_out20[11:6],U_move_out20[5:0],pieceReg20);
$fwrite(f20,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out20[27:24],L_move_out20[23:18],L_move_out20[17:12],L_move_out20[11:6],L_move_out20[5:0],pieceReg20);
$fwrite(f20,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out20[27:24],R_move_out20[23:18],R_move_out20[17:12],R_move_out20[11:6],R_move_out20[5:0],pieceReg20);
$fwrite(f20,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out20[27:24],DL_move_out20[23:18],DL_move_out20[17:12],DL_move_out20[11:6],DL_move_out20[5:0],pieceReg20);
$fwrite(f20,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out20[27:24],DR_move_out20[23:18],DR_move_out20[17:12],DR_move_out20[11:6],DR_move_out20[5:0],pieceReg20);
$fwrite(f20,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out20[27:24],UL_move_out20[23:18],UL_move_out20[17:12],UL_move_out20[11:6],UL_move_out20[5:0],pieceReg20);
$fwrite(f20,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out20[27:24],UR_move_out20[23:18],UR_move_out20[17:12],UR_move_out20[11:6],UR_move_out20[5:0],pieceReg20);
$fwrite(f20,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out20[27:24],UUL_move_out20[23:18],UUL_move_out20[17:12],UUL_move_out20[11:6],UUL_move_out20[5:0],pieceReg20);
$fwrite(f20,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out20[27:24],UUR_move_out20[23:18],UUR_move_out20[17:12],UUR_move_out20[11:6],UUR_move_out20[5:0],pieceReg20);
$fwrite(f20,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out20[27:24],LLU_move_out20[23:18],LLU_move_out20[17:12],LLU_move_out20[11:6],LLU_move_out20[5:0],pieceReg20);
$fwrite(f20,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out20[27:24],RRU_move_out20[23:18],RRU_move_out20[17:12],RRU_move_out20[11:6],RRU_move_out20[5:0],pieceReg20);
$fwrite(f20,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out20[27:24],DDL_move_out20[23:18],DDL_move_out20[17:12],DDL_move_out20[11:6],DDL_move_out20[5:0],pieceReg20);
$fwrite(f20,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out20[27:24],DDR_move_out20[23:18],DDR_move_out20[17:12],DDR_move_out20[11:6],DDR_move_out20[5:0],pieceReg20);
$fwrite(f20,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out20[27:24],LLD_move_out20[23:18],LLD_move_out20[17:12],LLD_move_out20[11:6],LLD_move_out20[5:0],pieceReg20);
$fwrite(f20,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out20[27:24],RRD_move_out20[23:18],RRD_move_out20[17:12],RRD_move_out20[11:6],RRD_move_out20[5:0],pieceReg20);

f21 = $fopen("square21.txt");
$fwrite(f21,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out21[27:24],D_move_out21[23:18],D_move_out21[17:12],D_move_out21[11:6],D_move_out21[5:0],pieceReg21);
$fwrite(f21,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out21[27:24],U_move_out21[23:18],U_move_out21[17:12],U_move_out21[11:6],U_move_out21[5:0],pieceReg21);
$fwrite(f21,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out21[27:24],L_move_out21[23:18],L_move_out21[17:12],L_move_out21[11:6],L_move_out21[5:0],pieceReg21);
$fwrite(f21,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out21[27:24],R_move_out21[23:18],R_move_out21[17:12],R_move_out21[11:6],R_move_out21[5:0],pieceReg21);
$fwrite(f21,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out21[27:24],DL_move_out21[23:18],DL_move_out21[17:12],DL_move_out21[11:6],DL_move_out21[5:0],pieceReg21);
$fwrite(f21,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out21[27:24],DR_move_out21[23:18],DR_move_out21[17:12],DR_move_out21[11:6],DR_move_out21[5:0],pieceReg21);
$fwrite(f21,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out21[27:24],UL_move_out21[23:18],UL_move_out21[17:12],UL_move_out21[11:6],UL_move_out21[5:0],pieceReg21);
$fwrite(f21,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out21[27:24],UR_move_out21[23:18],UR_move_out21[17:12],UR_move_out21[11:6],UR_move_out21[5:0],pieceReg21);
$fwrite(f21,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out21[27:24],UUL_move_out21[23:18],UUL_move_out21[17:12],UUL_move_out21[11:6],UUL_move_out21[5:0],pieceReg21);
$fwrite(f21,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out21[27:24],UUR_move_out21[23:18],UUR_move_out21[17:12],UUR_move_out21[11:6],UUR_move_out21[5:0],pieceReg21);
$fwrite(f21,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out21[27:24],LLU_move_out21[23:18],LLU_move_out21[17:12],LLU_move_out21[11:6],LLU_move_out21[5:0],pieceReg21);
$fwrite(f21,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out21[27:24],RRU_move_out21[23:18],RRU_move_out21[17:12],RRU_move_out21[11:6],RRU_move_out21[5:0],pieceReg21);
$fwrite(f21,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out21[27:24],DDL_move_out21[23:18],DDL_move_out21[17:12],DDL_move_out21[11:6],DDL_move_out21[5:0],pieceReg21);
$fwrite(f21,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out21[27:24],DDR_move_out21[23:18],DDR_move_out21[17:12],DDR_move_out21[11:6],DDR_move_out21[5:0],pieceReg21);
$fwrite(f21,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out21[27:24],LLD_move_out21[23:18],LLD_move_out21[17:12],LLD_move_out21[11:6],LLD_move_out21[5:0],pieceReg21);
$fwrite(f21,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out21[27:24],RRD_move_out21[23:18],RRD_move_out21[17:12],RRD_move_out21[11:6],RRD_move_out21[5:0],pieceReg21);

f22 = $fopen("square22.txt");
$fwrite(f22,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out22[27:24],D_move_out22[23:18],D_move_out22[17:12],D_move_out22[11:6],D_move_out22[5:0],pieceReg22);
$fwrite(f22,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out22[27:24],U_move_out22[23:18],U_move_out22[17:12],U_move_out22[11:6],U_move_out22[5:0],pieceReg22);
$fwrite(f22,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out22[27:24],L_move_out22[23:18],L_move_out22[17:12],L_move_out22[11:6],L_move_out22[5:0],pieceReg22);
$fwrite(f22,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out22[27:24],R_move_out22[23:18],R_move_out22[17:12],R_move_out22[11:6],R_move_out22[5:0],pieceReg22);
$fwrite(f22,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out22[27:24],DL_move_out22[23:18],DL_move_out22[17:12],DL_move_out22[11:6],DL_move_out22[5:0],pieceReg22);
$fwrite(f22,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out22[27:24],DR_move_out22[23:18],DR_move_out22[17:12],DR_move_out22[11:6],DR_move_out22[5:0],pieceReg22);
$fwrite(f22,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out22[27:24],UL_move_out22[23:18],UL_move_out22[17:12],UL_move_out22[11:6],UL_move_out22[5:0],pieceReg22);
$fwrite(f22,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out22[27:24],UR_move_out22[23:18],UR_move_out22[17:12],UR_move_out22[11:6],UR_move_out22[5:0],pieceReg22);
$fwrite(f22,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out22[27:24],UUL_move_out22[23:18],UUL_move_out22[17:12],UUL_move_out22[11:6],UUL_move_out22[5:0],pieceReg22);
$fwrite(f22,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out22[27:24],UUR_move_out22[23:18],UUR_move_out22[17:12],UUR_move_out22[11:6],UUR_move_out22[5:0],pieceReg22);
$fwrite(f22,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out22[27:24],RRU_move_out22[23:18],RRU_move_out22[17:12],RRU_move_out22[11:6],RRU_move_out22[5:0],pieceReg22);
$fwrite(f22,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out22[27:24],DDL_move_out22[23:18],DDL_move_out22[17:12],DDL_move_out22[11:6],DDL_move_out22[5:0],pieceReg22);
$fwrite(f22,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out22[27:24],DDR_move_out22[23:18],DDR_move_out22[17:12],DDR_move_out22[11:6],DDR_move_out22[5:0],pieceReg22);
$fwrite(f22,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out22[27:24],RRD_move_out22[23:18],RRD_move_out22[17:12],RRD_move_out22[11:6],RRD_move_out22[5:0],pieceReg22);

f23 = $fopen("square23.txt");
$fwrite(f23,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out23[27:24],D_move_out23[23:18],D_move_out23[17:12],D_move_out23[11:6],D_move_out23[5:0],pieceReg23);
$fwrite(f23,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out23[27:24],U_move_out23[23:18],U_move_out23[17:12],U_move_out23[11:6],U_move_out23[5:0],pieceReg23);
$fwrite(f23,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out23[27:24],R_move_out23[23:18],R_move_out23[17:12],R_move_out23[11:6],R_move_out23[5:0],pieceReg23);
$fwrite(f23,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out23[27:24],DR_move_out23[23:18],DR_move_out23[17:12],DR_move_out23[11:6],DR_move_out23[5:0],pieceReg23);
$fwrite(f23,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out23[27:24],UR_move_out23[23:18],UR_move_out23[17:12],UR_move_out23[11:6],UR_move_out23[5:0],pieceReg23);
$fwrite(f23,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out23[27:24],UUR_move_out23[23:18],UUR_move_out23[17:12],UUR_move_out23[11:6],UUR_move_out23[5:0],pieceReg23);
$fwrite(f23,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out23[27:24],RRU_move_out23[23:18],RRU_move_out23[17:12],RRU_move_out23[11:6],RRU_move_out23[5:0],pieceReg23);
$fwrite(f23,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out23[27:24],DDR_move_out23[23:18],DDR_move_out23[17:12],DDR_move_out23[11:6],DDR_move_out23[5:0],pieceReg23);
$fwrite(f23,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out23[27:24],RRD_move_out23[23:18],RRD_move_out23[17:12],RRD_move_out23[11:6],RRD_move_out23[5:0],pieceReg23);

f24 = $fopen("square24.txt");
$fwrite(f24,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out24[27:24],D_move_out24[23:18],D_move_out24[17:12],D_move_out24[11:6],D_move_out24[5:0],pieceReg24);
$fwrite(f24,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out24[27:24],U_move_out24[23:18],U_move_out24[17:12],U_move_out24[11:6],U_move_out24[5:0],pieceReg24);
$fwrite(f24,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out24[27:24],L_move_out24[23:18],L_move_out24[17:12],L_move_out24[11:6],L_move_out24[5:0],pieceReg24);
$fwrite(f24,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out24[27:24],DL_move_out24[23:18],DL_move_out24[17:12],DL_move_out24[11:6],DL_move_out24[5:0],pieceReg24);
$fwrite(f24,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out24[27:24],UL_move_out24[23:18],UL_move_out24[17:12],UL_move_out24[11:6],UL_move_out24[5:0],pieceReg24);
$fwrite(f24,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out24[27:24],UUL_move_out24[23:18],UUL_move_out24[17:12],UUL_move_out24[11:6],UUL_move_out24[5:0],pieceReg24);
$fwrite(f24,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out24[27:24],LLU_move_out24[23:18],LLU_move_out24[17:12],LLU_move_out24[11:6],LLU_move_out24[5:0],pieceReg24);
$fwrite(f24,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out24[27:24],DDL_move_out24[23:18],DDL_move_out24[17:12],DDL_move_out24[11:6],DDL_move_out24[5:0],pieceReg24);
$fwrite(f24,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out24[27:24],LLD_move_out24[23:18],LLD_move_out24[17:12],LLD_move_out24[11:6],LLD_move_out24[5:0],pieceReg24);

f25 = $fopen("square25.txt");
$fwrite(f25,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out25[27:24],D_move_out25[23:18],D_move_out25[17:12],D_move_out25[11:6],D_move_out25[5:0],pieceReg25);
$fwrite(f25,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out25[27:24],U_move_out25[23:18],U_move_out25[17:12],U_move_out25[11:6],U_move_out25[5:0],pieceReg25);
$fwrite(f25,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out25[27:24],L_move_out25[23:18],L_move_out25[17:12],L_move_out25[11:6],L_move_out25[5:0],pieceReg25);
$fwrite(f25,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out25[27:24],R_move_out25[23:18],R_move_out25[17:12],R_move_out25[11:6],R_move_out25[5:0],pieceReg25);
$fwrite(f25,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out25[27:24],DL_move_out25[23:18],DL_move_out25[17:12],DL_move_out25[11:6],DL_move_out25[5:0],pieceReg25);
$fwrite(f25,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out25[27:24],DR_move_out25[23:18],DR_move_out25[17:12],DR_move_out25[11:6],DR_move_out25[5:0],pieceReg25);
$fwrite(f25,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out25[27:24],UL_move_out25[23:18],UL_move_out25[17:12],UL_move_out25[11:6],UL_move_out25[5:0],pieceReg25);
$fwrite(f25,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out25[27:24],UR_move_out25[23:18],UR_move_out25[17:12],UR_move_out25[11:6],UR_move_out25[5:0],pieceReg25);
$fwrite(f25,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out25[27:24],UUL_move_out25[23:18],UUL_move_out25[17:12],UUL_move_out25[11:6],UUL_move_out25[5:0],pieceReg25);
$fwrite(f25,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out25[27:24],UUR_move_out25[23:18],UUR_move_out25[17:12],UUR_move_out25[11:6],UUR_move_out25[5:0],pieceReg25);
$fwrite(f25,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out25[27:24],LLU_move_out25[23:18],LLU_move_out25[17:12],LLU_move_out25[11:6],LLU_move_out25[5:0],pieceReg25);
$fwrite(f25,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out25[27:24],DDL_move_out25[23:18],DDL_move_out25[17:12],DDL_move_out25[11:6],DDL_move_out25[5:0],pieceReg25);
$fwrite(f25,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out25[27:24],DDR_move_out25[23:18],DDR_move_out25[17:12],DDR_move_out25[11:6],DDR_move_out25[5:0],pieceReg25);
$fwrite(f25,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out25[27:24],LLD_move_out25[23:18],LLD_move_out25[17:12],LLD_move_out25[11:6],LLD_move_out25[5:0],pieceReg25);

f26 = $fopen("square26.txt");
$fwrite(f26,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out26[27:24],D_move_out26[23:18],D_move_out26[17:12],D_move_out26[11:6],D_move_out26[5:0],pieceReg26);
$fwrite(f26,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out26[27:24],U_move_out26[23:18],U_move_out26[17:12],U_move_out26[11:6],U_move_out26[5:0],pieceReg26);
$fwrite(f26,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out26[27:24],L_move_out26[23:18],L_move_out26[17:12],L_move_out26[11:6],L_move_out26[5:0],pieceReg26);
$fwrite(f26,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out26[27:24],R_move_out26[23:18],R_move_out26[17:12],R_move_out26[11:6],R_move_out26[5:0],pieceReg26);
$fwrite(f26,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out26[27:24],DL_move_out26[23:18],DL_move_out26[17:12],DL_move_out26[11:6],DL_move_out26[5:0],pieceReg26);
$fwrite(f26,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out26[27:24],DR_move_out26[23:18],DR_move_out26[17:12],DR_move_out26[11:6],DR_move_out26[5:0],pieceReg26);
$fwrite(f26,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out26[27:24],UL_move_out26[23:18],UL_move_out26[17:12],UL_move_out26[11:6],UL_move_out26[5:0],pieceReg26);
$fwrite(f26,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out26[27:24],UR_move_out26[23:18],UR_move_out26[17:12],UR_move_out26[11:6],UR_move_out26[5:0],pieceReg26);
$fwrite(f26,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out26[27:24],UUL_move_out26[23:18],UUL_move_out26[17:12],UUL_move_out26[11:6],UUL_move_out26[5:0],pieceReg26);
$fwrite(f26,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out26[27:24],UUR_move_out26[23:18],UUR_move_out26[17:12],UUR_move_out26[11:6],UUR_move_out26[5:0],pieceReg26);
$fwrite(f26,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out26[27:24],LLU_move_out26[23:18],LLU_move_out26[17:12],LLU_move_out26[11:6],LLU_move_out26[5:0],pieceReg26);
$fwrite(f26,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out26[27:24],RRU_move_out26[23:18],RRU_move_out26[17:12],RRU_move_out26[11:6],RRU_move_out26[5:0],pieceReg26);
$fwrite(f26,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out26[27:24],DDL_move_out26[23:18],DDL_move_out26[17:12],DDL_move_out26[11:6],DDL_move_out26[5:0],pieceReg26);
$fwrite(f26,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out26[27:24],DDR_move_out26[23:18],DDR_move_out26[17:12],DDR_move_out26[11:6],DDR_move_out26[5:0],pieceReg26);
$fwrite(f26,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out26[27:24],LLD_move_out26[23:18],LLD_move_out26[17:12],LLD_move_out26[11:6],LLD_move_out26[5:0],pieceReg26);
$fwrite(f26,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out26[27:24],RRD_move_out26[23:18],RRD_move_out26[17:12],RRD_move_out26[11:6],RRD_move_out26[5:0],pieceReg26);

f27 = $fopen("square27.txt");
$fwrite(f27,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out27[27:24],D_move_out27[23:18],D_move_out27[17:12],D_move_out27[11:6],D_move_out27[5:0],pieceReg27);
$fwrite(f27,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out27[27:24],U_move_out27[23:18],U_move_out27[17:12],U_move_out27[11:6],U_move_out27[5:0],pieceReg27);
$fwrite(f27,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out27[27:24],L_move_out27[23:18],L_move_out27[17:12],L_move_out27[11:6],L_move_out27[5:0],pieceReg27);
$fwrite(f27,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out27[27:24],R_move_out27[23:18],R_move_out27[17:12],R_move_out27[11:6],R_move_out27[5:0],pieceReg27);
$fwrite(f27,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out27[27:24],DL_move_out27[23:18],DL_move_out27[17:12],DL_move_out27[11:6],DL_move_out27[5:0],pieceReg27);
$fwrite(f27,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out27[27:24],DR_move_out27[23:18],DR_move_out27[17:12],DR_move_out27[11:6],DR_move_out27[5:0],pieceReg27);
$fwrite(f27,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out27[27:24],UL_move_out27[23:18],UL_move_out27[17:12],UL_move_out27[11:6],UL_move_out27[5:0],pieceReg27);
$fwrite(f27,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out27[27:24],UR_move_out27[23:18],UR_move_out27[17:12],UR_move_out27[11:6],UR_move_out27[5:0],pieceReg27);
$fwrite(f27,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out27[27:24],UUL_move_out27[23:18],UUL_move_out27[17:12],UUL_move_out27[11:6],UUL_move_out27[5:0],pieceReg27);
$fwrite(f27,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out27[27:24],UUR_move_out27[23:18],UUR_move_out27[17:12],UUR_move_out27[11:6],UUR_move_out27[5:0],pieceReg27);
$fwrite(f27,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out27[27:24],LLU_move_out27[23:18],LLU_move_out27[17:12],LLU_move_out27[11:6],LLU_move_out27[5:0],pieceReg27);
$fwrite(f27,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out27[27:24],RRU_move_out27[23:18],RRU_move_out27[17:12],RRU_move_out27[11:6],RRU_move_out27[5:0],pieceReg27);
$fwrite(f27,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out27[27:24],DDL_move_out27[23:18],DDL_move_out27[17:12],DDL_move_out27[11:6],DDL_move_out27[5:0],pieceReg27);
$fwrite(f27,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out27[27:24],DDR_move_out27[23:18],DDR_move_out27[17:12],DDR_move_out27[11:6],DDR_move_out27[5:0],pieceReg27);
$fwrite(f27,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out27[27:24],LLD_move_out27[23:18],LLD_move_out27[17:12],LLD_move_out27[11:6],LLD_move_out27[5:0],pieceReg27);
$fwrite(f27,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out27[27:24],RRD_move_out27[23:18],RRD_move_out27[17:12],RRD_move_out27[11:6],RRD_move_out27[5:0],pieceReg27);

f28 = $fopen("square28.txt");
$fwrite(f28,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out28[27:24],D_move_out28[23:18],D_move_out28[17:12],D_move_out28[11:6],D_move_out28[5:0],pieceReg28);
$fwrite(f28,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out28[27:24],U_move_out28[23:18],U_move_out28[17:12],U_move_out28[11:6],U_move_out28[5:0],pieceReg28);
$fwrite(f28,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out28[27:24],L_move_out28[23:18],L_move_out28[17:12],L_move_out28[11:6],L_move_out28[5:0],pieceReg28);
$fwrite(f28,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out28[27:24],R_move_out28[23:18],R_move_out28[17:12],R_move_out28[11:6],R_move_out28[5:0],pieceReg28);
$fwrite(f28,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out28[27:24],DL_move_out28[23:18],DL_move_out28[17:12],DL_move_out28[11:6],DL_move_out28[5:0],pieceReg28);
$fwrite(f28,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out28[27:24],DR_move_out28[23:18],DR_move_out28[17:12],DR_move_out28[11:6],DR_move_out28[5:0],pieceReg28);
$fwrite(f28,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out28[27:24],UL_move_out28[23:18],UL_move_out28[17:12],UL_move_out28[11:6],UL_move_out28[5:0],pieceReg28);
$fwrite(f28,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out28[27:24],UR_move_out28[23:18],UR_move_out28[17:12],UR_move_out28[11:6],UR_move_out28[5:0],pieceReg28);
$fwrite(f28,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out28[27:24],UUL_move_out28[23:18],UUL_move_out28[17:12],UUL_move_out28[11:6],UUL_move_out28[5:0],pieceReg28);
$fwrite(f28,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out28[27:24],UUR_move_out28[23:18],UUR_move_out28[17:12],UUR_move_out28[11:6],UUR_move_out28[5:0],pieceReg28);
$fwrite(f28,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out28[27:24],LLU_move_out28[23:18],LLU_move_out28[17:12],LLU_move_out28[11:6],LLU_move_out28[5:0],pieceReg28);
$fwrite(f28,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out28[27:24],RRU_move_out28[23:18],RRU_move_out28[17:12],RRU_move_out28[11:6],RRU_move_out28[5:0],pieceReg28);
$fwrite(f28,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out28[27:24],DDL_move_out28[23:18],DDL_move_out28[17:12],DDL_move_out28[11:6],DDL_move_out28[5:0],pieceReg28);
$fwrite(f28,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out28[27:24],DDR_move_out28[23:18],DDR_move_out28[17:12],DDR_move_out28[11:6],DDR_move_out28[5:0],pieceReg28);
$fwrite(f28,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out28[27:24],LLD_move_out28[23:18],LLD_move_out28[17:12],LLD_move_out28[11:6],LLD_move_out28[5:0],pieceReg28);
$fwrite(f28,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out28[27:24],RRD_move_out28[23:18],RRD_move_out28[17:12],RRD_move_out28[11:6],RRD_move_out28[5:0],pieceReg28);

f29 = $fopen("square29.txt");
$fwrite(f29,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out29[27:24],D_move_out29[23:18],D_move_out29[17:12],D_move_out29[11:6],D_move_out29[5:0],pieceReg29);
$fwrite(f29,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out29[27:24],U_move_out29[23:18],U_move_out29[17:12],U_move_out29[11:6],U_move_out29[5:0],pieceReg29);
$fwrite(f29,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out29[27:24],L_move_out29[23:18],L_move_out29[17:12],L_move_out29[11:6],L_move_out29[5:0],pieceReg29);
$fwrite(f29,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out29[27:24],R_move_out29[23:18],R_move_out29[17:12],R_move_out29[11:6],R_move_out29[5:0],pieceReg29);
$fwrite(f29,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out29[27:24],DL_move_out29[23:18],DL_move_out29[17:12],DL_move_out29[11:6],DL_move_out29[5:0],pieceReg29);
$fwrite(f29,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out29[27:24],DR_move_out29[23:18],DR_move_out29[17:12],DR_move_out29[11:6],DR_move_out29[5:0],pieceReg29);
$fwrite(f29,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out29[27:24],UL_move_out29[23:18],UL_move_out29[17:12],UL_move_out29[11:6],UL_move_out29[5:0],pieceReg29);
$fwrite(f29,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out29[27:24],UR_move_out29[23:18],UR_move_out29[17:12],UR_move_out29[11:6],UR_move_out29[5:0],pieceReg29);
$fwrite(f29,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out29[27:24],UUL_move_out29[23:18],UUL_move_out29[17:12],UUL_move_out29[11:6],UUL_move_out29[5:0],pieceReg29);
$fwrite(f29,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out29[27:24],UUR_move_out29[23:18],UUR_move_out29[17:12],UUR_move_out29[11:6],UUR_move_out29[5:0],pieceReg29);
$fwrite(f29,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out29[27:24],LLU_move_out29[23:18],LLU_move_out29[17:12],LLU_move_out29[11:6],LLU_move_out29[5:0],pieceReg29);
$fwrite(f29,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out29[27:24],RRU_move_out29[23:18],RRU_move_out29[17:12],RRU_move_out29[11:6],RRU_move_out29[5:0],pieceReg29);
$fwrite(f29,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out29[27:24],DDL_move_out29[23:18],DDL_move_out29[17:12],DDL_move_out29[11:6],DDL_move_out29[5:0],pieceReg29);
$fwrite(f29,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out29[27:24],DDR_move_out29[23:18],DDR_move_out29[17:12],DDR_move_out29[11:6],DDR_move_out29[5:0],pieceReg29);
$fwrite(f29,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out29[27:24],LLD_move_out29[23:18],LLD_move_out29[17:12],LLD_move_out29[11:6],LLD_move_out29[5:0],pieceReg29);
$fwrite(f29,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out29[27:24],RRD_move_out29[23:18],RRD_move_out29[17:12],RRD_move_out29[11:6],RRD_move_out29[5:0],pieceReg29);

$fclose(f0);
$fclose(f1);
$fclose(f2);
$fclose(f3);
$fclose(f4);
$fclose(f5);
$fclose(f6);
$fclose(f7);
$fclose(f8);
$fclose(f9);
$fclose(f10);
$fclose(f11);
$fclose(f12);
$fclose(f13);
$fclose(f14);
$fclose(f15);
$fclose(f16);
$fclose(f17);
$fclose(f18);
$fclose(f19);
$fclose(f20);
$fclose(f21);
$fclose(f22);
$fclose(f23);
$fclose(f24);
$fclose(f25);
$fclose(f26);
$fclose(f27);
$fclose(f28);
$fclose(f29);


f30 = $fopen("square30.txt");
$fwrite(f30,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out30[27:24],D_move_out30[23:18],D_move_out30[17:12],D_move_out30[11:6],D_move_out30[5:0],pieceReg30);
$fwrite(f30,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out30[27:24],U_move_out30[23:18],U_move_out30[17:12],U_move_out30[11:6],U_move_out30[5:0],pieceReg30);
$fwrite(f30,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out30[27:24],L_move_out30[23:18],L_move_out30[17:12],L_move_out30[11:6],L_move_out30[5:0],pieceReg30);
$fwrite(f30,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out30[27:24],R_move_out30[23:18],R_move_out30[17:12],R_move_out30[11:6],R_move_out30[5:0],pieceReg30);
$fwrite(f30,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out30[27:24],DL_move_out30[23:18],DL_move_out30[17:12],DL_move_out30[11:6],DL_move_out30[5:0],pieceReg30);
$fwrite(f30,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out30[27:24],DR_move_out30[23:18],DR_move_out30[17:12],DR_move_out30[11:6],DR_move_out30[5:0],pieceReg30);
$fwrite(f30,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out30[27:24],UL_move_out30[23:18],UL_move_out30[17:12],UL_move_out30[11:6],UL_move_out30[5:0],pieceReg30);
$fwrite(f30,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out30[27:24],UR_move_out30[23:18],UR_move_out30[17:12],UR_move_out30[11:6],UR_move_out30[5:0],pieceReg30);
$fwrite(f30,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out30[27:24],UUL_move_out30[23:18],UUL_move_out30[17:12],UUL_move_out30[11:6],UUL_move_out30[5:0],pieceReg30);
$fwrite(f30,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out30[27:24],UUR_move_out30[23:18],UUR_move_out30[17:12],UUR_move_out30[11:6],UUR_move_out30[5:0],pieceReg30);
$fwrite(f30,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out30[27:24],RRU_move_out30[23:18],RRU_move_out30[17:12],RRU_move_out30[11:6],RRU_move_out30[5:0],pieceReg30);
$fwrite(f30,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out30[27:24],DDL_move_out30[23:18],DDL_move_out30[17:12],DDL_move_out30[11:6],DDL_move_out30[5:0],pieceReg30);
$fwrite(f30,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out30[27:24],DDR_move_out30[23:18],DDR_move_out30[17:12],DDR_move_out30[11:6],DDR_move_out30[5:0],pieceReg30);
$fwrite(f30,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out30[27:24],RRD_move_out30[23:18],RRD_move_out30[17:12],RRD_move_out30[11:6],RRD_move_out30[5:0],pieceReg30);

f31 = $fopen("square31.txt");
$fwrite(f31,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out31[27:24],D_move_out31[23:18],D_move_out31[17:12],D_move_out31[11:6],D_move_out31[5:0],pieceReg31);
$fwrite(f31,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out31[27:24],U_move_out31[23:18],U_move_out31[17:12],U_move_out31[11:6],U_move_out31[5:0],pieceReg31);
$fwrite(f31,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out31[27:24],R_move_out31[23:18],R_move_out31[17:12],R_move_out31[11:6],R_move_out31[5:0],pieceReg31);
$fwrite(f31,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out31[27:24],DR_move_out31[23:18],DR_move_out31[17:12],DR_move_out31[11:6],DR_move_out31[5:0],pieceReg31);
$fwrite(f31,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out31[27:24],UR_move_out31[23:18],UR_move_out31[17:12],UR_move_out31[11:6],UR_move_out31[5:0],pieceReg31);
$fwrite(f31,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out31[27:24],UUR_move_out31[23:18],UUR_move_out31[17:12],UUR_move_out31[11:6],UUR_move_out31[5:0],pieceReg31);
$fwrite(f31,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out31[27:24],RRU_move_out31[23:18],RRU_move_out31[17:12],RRU_move_out31[11:6],RRU_move_out31[5:0],pieceReg31);
$fwrite(f31,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out31[27:24],DDR_move_out31[23:18],DDR_move_out31[17:12],DDR_move_out31[11:6],DDR_move_out31[5:0],pieceReg31);
$fwrite(f31,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out31[27:24],RRD_move_out31[23:18],RRD_move_out31[17:12],RRD_move_out31[11:6],RRD_move_out31[5:0],pieceReg31);

f32 = $fopen("square32.txt");
$fwrite(f32,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out32[27:24],D_move_out32[23:18],D_move_out32[17:12],D_move_out32[11:6],D_move_out32[5:0],pieceReg32);
$fwrite(f32,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out32[27:24],U_move_out32[23:18],U_move_out32[17:12],U_move_out32[11:6],U_move_out32[5:0],pieceReg32);
$fwrite(f32,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out32[27:24],L_move_out32[23:18],L_move_out32[17:12],L_move_out32[11:6],L_move_out32[5:0],pieceReg32);
$fwrite(f32,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out32[27:24],DL_move_out32[23:18],DL_move_out32[17:12],DL_move_out32[11:6],DL_move_out32[5:0],pieceReg32);
$fwrite(f32,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out32[27:24],UL_move_out32[23:18],UL_move_out32[17:12],UL_move_out32[11:6],UL_move_out32[5:0],pieceReg32);
$fwrite(f32,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out32[27:24],UUL_move_out32[23:18],UUL_move_out32[17:12],UUL_move_out32[11:6],UUL_move_out32[5:0],pieceReg32);
$fwrite(f32,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out32[27:24],LLU_move_out32[23:18],LLU_move_out32[17:12],LLU_move_out32[11:6],LLU_move_out32[5:0],pieceReg32);
$fwrite(f32,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out32[27:24],DDL_move_out32[23:18],DDL_move_out32[17:12],DDL_move_out32[11:6],DDL_move_out32[5:0],pieceReg32);
$fwrite(f32,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out32[27:24],LLD_move_out32[23:18],LLD_move_out32[17:12],LLD_move_out32[11:6],LLD_move_out32[5:0],pieceReg32);

f33 = $fopen("square33.txt");
$fwrite(f33,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out33[27:24],D_move_out33[23:18],D_move_out33[17:12],D_move_out33[11:6],D_move_out33[5:0],pieceReg33);
$fwrite(f33,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out33[27:24],U_move_out33[23:18],U_move_out33[17:12],U_move_out33[11:6],U_move_out33[5:0],pieceReg33);
$fwrite(f33,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out33[27:24],L_move_out33[23:18],L_move_out33[17:12],L_move_out33[11:6],L_move_out33[5:0],pieceReg33);
$fwrite(f33,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out33[27:24],R_move_out33[23:18],R_move_out33[17:12],R_move_out33[11:6],R_move_out33[5:0],pieceReg33);
$fwrite(f33,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out33[27:24],DL_move_out33[23:18],DL_move_out33[17:12],DL_move_out33[11:6],DL_move_out33[5:0],pieceReg33);
$fwrite(f33,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out33[27:24],DR_move_out33[23:18],DR_move_out33[17:12],DR_move_out33[11:6],DR_move_out33[5:0],pieceReg33);
$fwrite(f33,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out33[27:24],UL_move_out33[23:18],UL_move_out33[17:12],UL_move_out33[11:6],UL_move_out33[5:0],pieceReg33);
$fwrite(f33,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out33[27:24],UR_move_out33[23:18],UR_move_out33[17:12],UR_move_out33[11:6],UR_move_out33[5:0],pieceReg33);
$fwrite(f33,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out33[27:24],UUL_move_out33[23:18],UUL_move_out33[17:12],UUL_move_out33[11:6],UUL_move_out33[5:0],pieceReg33);
$fwrite(f33,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out33[27:24],UUR_move_out33[23:18],UUR_move_out33[17:12],UUR_move_out33[11:6],UUR_move_out33[5:0],pieceReg33);
$fwrite(f33,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out33[27:24],LLU_move_out33[23:18],LLU_move_out33[17:12],LLU_move_out33[11:6],LLU_move_out33[5:0],pieceReg33);
$fwrite(f33,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out33[27:24],DDL_move_out33[23:18],DDL_move_out33[17:12],DDL_move_out33[11:6],DDL_move_out33[5:0],pieceReg33);
$fwrite(f33,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out33[27:24],DDR_move_out33[23:18],DDR_move_out33[17:12],DDR_move_out33[11:6],DDR_move_out33[5:0],pieceReg33);
$fwrite(f33,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out33[27:24],LLD_move_out33[23:18],LLD_move_out33[17:12],LLD_move_out33[11:6],LLD_move_out33[5:0],pieceReg33);

f34 = $fopen("square34.txt");
$fwrite(f34,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out34[27:24],D_move_out34[23:18],D_move_out34[17:12],D_move_out34[11:6],D_move_out34[5:0],pieceReg34);
$fwrite(f34,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out34[27:24],U_move_out34[23:18],U_move_out34[17:12],U_move_out34[11:6],U_move_out34[5:0],pieceReg34);
$fwrite(f34,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out34[27:24],L_move_out34[23:18],L_move_out34[17:12],L_move_out34[11:6],L_move_out34[5:0],pieceReg34);
$fwrite(f34,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out34[27:24],R_move_out34[23:18],R_move_out34[17:12],R_move_out34[11:6],R_move_out34[5:0],pieceReg34);
$fwrite(f34,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out34[27:24],DL_move_out34[23:18],DL_move_out34[17:12],DL_move_out34[11:6],DL_move_out34[5:0],pieceReg34);
$fwrite(f34,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out34[27:24],DR_move_out34[23:18],DR_move_out34[17:12],DR_move_out34[11:6],DR_move_out34[5:0],pieceReg34);
$fwrite(f34,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out34[27:24],UL_move_out34[23:18],UL_move_out34[17:12],UL_move_out34[11:6],UL_move_out34[5:0],pieceReg34);
$fwrite(f34,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out34[27:24],UR_move_out34[23:18],UR_move_out34[17:12],UR_move_out34[11:6],UR_move_out34[5:0],pieceReg34);
$fwrite(f34,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out34[27:24],UUL_move_out34[23:18],UUL_move_out34[17:12],UUL_move_out34[11:6],UUL_move_out34[5:0],pieceReg34);
$fwrite(f34,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out34[27:24],UUR_move_out34[23:18],UUR_move_out34[17:12],UUR_move_out34[11:6],UUR_move_out34[5:0],pieceReg34);
$fwrite(f34,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out34[27:24],LLU_move_out34[23:18],LLU_move_out34[17:12],LLU_move_out34[11:6],LLU_move_out34[5:0],pieceReg34);
$fwrite(f34,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out34[27:24],RRU_move_out34[23:18],RRU_move_out34[17:12],RRU_move_out34[11:6],RRU_move_out34[5:0],pieceReg34);
$fwrite(f34,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out34[27:24],DDL_move_out34[23:18],DDL_move_out34[17:12],DDL_move_out34[11:6],DDL_move_out34[5:0],pieceReg34);
$fwrite(f34,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out34[27:24],DDR_move_out34[23:18],DDR_move_out34[17:12],DDR_move_out34[11:6],DDR_move_out34[5:0],pieceReg34);
$fwrite(f34,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out34[27:24],LLD_move_out34[23:18],LLD_move_out34[17:12],LLD_move_out34[11:6],LLD_move_out34[5:0],pieceReg34);
$fwrite(f34,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out34[27:24],RRD_move_out34[23:18],RRD_move_out34[17:12],RRD_move_out34[11:6],RRD_move_out34[5:0],pieceReg34);

f35 = $fopen("square35.txt");
$fwrite(f35,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out35[27:24],D_move_out35[23:18],D_move_out35[17:12],D_move_out35[11:6],D_move_out35[5:0],pieceReg35);
$fwrite(f35,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out35[27:24],U_move_out35[23:18],U_move_out35[17:12],U_move_out35[11:6],U_move_out35[5:0],pieceReg35);
$fwrite(f35,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out35[27:24],L_move_out35[23:18],L_move_out35[17:12],L_move_out35[11:6],L_move_out35[5:0],pieceReg35);
$fwrite(f35,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out35[27:24],R_move_out35[23:18],R_move_out35[17:12],R_move_out35[11:6],R_move_out35[5:0],pieceReg35);
$fwrite(f35,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out35[27:24],DL_move_out35[23:18],DL_move_out35[17:12],DL_move_out35[11:6],DL_move_out35[5:0],pieceReg35);
$fwrite(f35,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out35[27:24],DR_move_out35[23:18],DR_move_out35[17:12],DR_move_out35[11:6],DR_move_out35[5:0],pieceReg35);
$fwrite(f35,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out35[27:24],UL_move_out35[23:18],UL_move_out35[17:12],UL_move_out35[11:6],UL_move_out35[5:0],pieceReg35);
$fwrite(f35,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out35[27:24],UR_move_out35[23:18],UR_move_out35[17:12],UR_move_out35[11:6],UR_move_out35[5:0],pieceReg35);
$fwrite(f35,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out35[27:24],UUL_move_out35[23:18],UUL_move_out35[17:12],UUL_move_out35[11:6],UUL_move_out35[5:0],pieceReg35);
$fwrite(f35,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out35[27:24],UUR_move_out35[23:18],UUR_move_out35[17:12],UUR_move_out35[11:6],UUR_move_out35[5:0],pieceReg35);
$fwrite(f35,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out35[27:24],LLU_move_out35[23:18],LLU_move_out35[17:12],LLU_move_out35[11:6],LLU_move_out35[5:0],pieceReg35);
$fwrite(f35,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out35[27:24],RRU_move_out35[23:18],RRU_move_out35[17:12],RRU_move_out35[11:6],RRU_move_out35[5:0],pieceReg35);
$fwrite(f35,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out35[27:24],DDL_move_out35[23:18],DDL_move_out35[17:12],DDL_move_out35[11:6],DDL_move_out35[5:0],pieceReg35);
$fwrite(f35,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out35[27:24],DDR_move_out35[23:18],DDR_move_out35[17:12],DDR_move_out35[11:6],DDR_move_out35[5:0],pieceReg35);
$fwrite(f35,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out35[27:24],LLD_move_out35[23:18],LLD_move_out35[17:12],LLD_move_out35[11:6],LLD_move_out35[5:0],pieceReg35);
$fwrite(f35,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out35[27:24],RRD_move_out35[23:18],RRD_move_out35[17:12],RRD_move_out35[11:6],RRD_move_out35[5:0],pieceReg35);

f36 = $fopen("square36.txt");
$fwrite(f36,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out36[27:24],D_move_out36[23:18],D_move_out36[17:12],D_move_out36[11:6],D_move_out36[5:0],pieceReg36);
$fwrite(f36,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out36[27:24],U_move_out36[23:18],U_move_out36[17:12],U_move_out36[11:6],U_move_out36[5:0],pieceReg36);
$fwrite(f36,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out36[27:24],L_move_out36[23:18],L_move_out36[17:12],L_move_out36[11:6],L_move_out36[5:0],pieceReg36);
$fwrite(f36,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out36[27:24],R_move_out36[23:18],R_move_out36[17:12],R_move_out36[11:6],R_move_out36[5:0],pieceReg36);
$fwrite(f36,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out36[27:24],DL_move_out36[23:18],DL_move_out36[17:12],DL_move_out36[11:6],DL_move_out36[5:0],pieceReg36);
$fwrite(f36,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out36[27:24],DR_move_out36[23:18],DR_move_out36[17:12],DR_move_out36[11:6],DR_move_out36[5:0],pieceReg36);
$fwrite(f36,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out36[27:24],UL_move_out36[23:18],UL_move_out36[17:12],UL_move_out36[11:6],UL_move_out36[5:0],pieceReg36);
$fwrite(f36,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out36[27:24],UR_move_out36[23:18],UR_move_out36[17:12],UR_move_out36[11:6],UR_move_out36[5:0],pieceReg36);
$fwrite(f36,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out36[27:24],UUL_move_out36[23:18],UUL_move_out36[17:12],UUL_move_out36[11:6],UUL_move_out36[5:0],pieceReg36);
$fwrite(f36,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out36[27:24],UUR_move_out36[23:18],UUR_move_out36[17:12],UUR_move_out36[11:6],UUR_move_out36[5:0],pieceReg36);
$fwrite(f36,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out36[27:24],LLU_move_out36[23:18],LLU_move_out36[17:12],LLU_move_out36[11:6],LLU_move_out36[5:0],pieceReg36);
$fwrite(f36,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out36[27:24],RRU_move_out36[23:18],RRU_move_out36[17:12],RRU_move_out36[11:6],RRU_move_out36[5:0],pieceReg36);
$fwrite(f36,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out36[27:24],DDL_move_out36[23:18],DDL_move_out36[17:12],DDL_move_out36[11:6],DDL_move_out36[5:0],pieceReg36);
$fwrite(f36,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out36[27:24],DDR_move_out36[23:18],DDR_move_out36[17:12],DDR_move_out36[11:6],DDR_move_out36[5:0],pieceReg36);
$fwrite(f36,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out36[27:24],LLD_move_out36[23:18],LLD_move_out36[17:12],LLD_move_out36[11:6],LLD_move_out36[5:0],pieceReg36);
$fwrite(f36,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out36[27:24],RRD_move_out36[23:18],RRD_move_out36[17:12],RRD_move_out36[11:6],RRD_move_out36[5:0],pieceReg36);

f37 = $fopen("square37.txt");
$fwrite(f37,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out37[27:24],D_move_out37[23:18],D_move_out37[17:12],D_move_out37[11:6],D_move_out37[5:0],pieceReg37);
$fwrite(f37,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out37[27:24],U_move_out37[23:18],U_move_out37[17:12],U_move_out37[11:6],U_move_out37[5:0],pieceReg37);
$fwrite(f37,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out37[27:24],L_move_out37[23:18],L_move_out37[17:12],L_move_out37[11:6],L_move_out37[5:0],pieceReg37);
$fwrite(f37,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out37[27:24],R_move_out37[23:18],R_move_out37[17:12],R_move_out37[11:6],R_move_out37[5:0],pieceReg37);
$fwrite(f37,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out37[27:24],DL_move_out37[23:18],DL_move_out37[17:12],DL_move_out37[11:6],DL_move_out37[5:0],pieceReg37);
$fwrite(f37,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out37[27:24],DR_move_out37[23:18],DR_move_out37[17:12],DR_move_out37[11:6],DR_move_out37[5:0],pieceReg37);
$fwrite(f37,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out37[27:24],UL_move_out37[23:18],UL_move_out37[17:12],UL_move_out37[11:6],UL_move_out37[5:0],pieceReg37);
$fwrite(f37,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out37[27:24],UR_move_out37[23:18],UR_move_out37[17:12],UR_move_out37[11:6],UR_move_out37[5:0],pieceReg37);
$fwrite(f37,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out37[27:24],UUL_move_out37[23:18],UUL_move_out37[17:12],UUL_move_out37[11:6],UUL_move_out37[5:0],pieceReg37);
$fwrite(f37,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out37[27:24],UUR_move_out37[23:18],UUR_move_out37[17:12],UUR_move_out37[11:6],UUR_move_out37[5:0],pieceReg37);
$fwrite(f37,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out37[27:24],LLU_move_out37[23:18],LLU_move_out37[17:12],LLU_move_out37[11:6],LLU_move_out37[5:0],pieceReg37);
$fwrite(f37,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out37[27:24],RRU_move_out37[23:18],RRU_move_out37[17:12],RRU_move_out37[11:6],RRU_move_out37[5:0],pieceReg37);
$fwrite(f37,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out37[27:24],DDL_move_out37[23:18],DDL_move_out37[17:12],DDL_move_out37[11:6],DDL_move_out37[5:0],pieceReg37);
$fwrite(f37,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out37[27:24],DDR_move_out37[23:18],DDR_move_out37[17:12],DDR_move_out37[11:6],DDR_move_out37[5:0],pieceReg37);
$fwrite(f37,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out37[27:24],LLD_move_out37[23:18],LLD_move_out37[17:12],LLD_move_out37[11:6],LLD_move_out37[5:0],pieceReg37);
$fwrite(f37,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out37[27:24],RRD_move_out37[23:18],RRD_move_out37[17:12],RRD_move_out37[11:6],RRD_move_out37[5:0],pieceReg37);

f38 = $fopen("square38.txt");
$fwrite(f38,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out38[27:24],D_move_out38[23:18],D_move_out38[17:12],D_move_out38[11:6],D_move_out38[5:0],pieceReg38);
$fwrite(f38,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out38[27:24],U_move_out38[23:18],U_move_out38[17:12],U_move_out38[11:6],U_move_out38[5:0],pieceReg38);
$fwrite(f38,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out38[27:24],L_move_out38[23:18],L_move_out38[17:12],L_move_out38[11:6],L_move_out38[5:0],pieceReg38);
$fwrite(f38,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out38[27:24],R_move_out38[23:18],R_move_out38[17:12],R_move_out38[11:6],R_move_out38[5:0],pieceReg38);
$fwrite(f38,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out38[27:24],DL_move_out38[23:18],DL_move_out38[17:12],DL_move_out38[11:6],DL_move_out38[5:0],pieceReg38);
$fwrite(f38,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out38[27:24],DR_move_out38[23:18],DR_move_out38[17:12],DR_move_out38[11:6],DR_move_out38[5:0],pieceReg38);
$fwrite(f38,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out38[27:24],UL_move_out38[23:18],UL_move_out38[17:12],UL_move_out38[11:6],UL_move_out38[5:0],pieceReg38);
$fwrite(f38,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out38[27:24],UR_move_out38[23:18],UR_move_out38[17:12],UR_move_out38[11:6],UR_move_out38[5:0],pieceReg38);
$fwrite(f38,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out38[27:24],UUL_move_out38[23:18],UUL_move_out38[17:12],UUL_move_out38[11:6],UUL_move_out38[5:0],pieceReg38);
$fwrite(f38,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out38[27:24],UUR_move_out38[23:18],UUR_move_out38[17:12],UUR_move_out38[11:6],UUR_move_out38[5:0],pieceReg38);
$fwrite(f38,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out38[27:24],RRU_move_out38[23:18],RRU_move_out38[17:12],RRU_move_out38[11:6],RRU_move_out38[5:0],pieceReg38);
$fwrite(f38,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out38[27:24],DDL_move_out38[23:18],DDL_move_out38[17:12],DDL_move_out38[11:6],DDL_move_out38[5:0],pieceReg38);
$fwrite(f38,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out38[27:24],DDR_move_out38[23:18],DDR_move_out38[17:12],DDR_move_out38[11:6],DDR_move_out38[5:0],pieceReg38);
$fwrite(f38,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out38[27:24],RRD_move_out38[23:18],RRD_move_out38[17:12],RRD_move_out38[11:6],RRD_move_out38[5:0],pieceReg38);

f39 = $fopen("square39.txt");
$fwrite(f39,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out39[27:24],D_move_out39[23:18],D_move_out39[17:12],D_move_out39[11:6],D_move_out39[5:0],pieceReg39);
$fwrite(f39,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out39[27:24],U_move_out39[23:18],U_move_out39[17:12],U_move_out39[11:6],U_move_out39[5:0],pieceReg39);
$fwrite(f39,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out39[27:24],R_move_out39[23:18],R_move_out39[17:12],R_move_out39[11:6],R_move_out39[5:0],pieceReg39);
$fwrite(f39,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out39[27:24],DR_move_out39[23:18],DR_move_out39[17:12],DR_move_out39[11:6],DR_move_out39[5:0],pieceReg39);
$fwrite(f39,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out39[27:24],UR_move_out39[23:18],UR_move_out39[17:12],UR_move_out39[11:6],UR_move_out39[5:0],pieceReg39);
$fwrite(f39,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out39[27:24],UUR_move_out39[23:18],UUR_move_out39[17:12],UUR_move_out39[11:6],UUR_move_out39[5:0],pieceReg39);
$fwrite(f39,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out39[27:24],RRU_move_out39[23:18],RRU_move_out39[17:12],RRU_move_out39[11:6],RRU_move_out39[5:0],pieceReg39);
$fwrite(f39,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out39[27:24],DDR_move_out39[23:18],DDR_move_out39[17:12],DDR_move_out39[11:6],DDR_move_out39[5:0],pieceReg39);
$fwrite(f39,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out39[27:24],RRD_move_out39[23:18],RRD_move_out39[17:12],RRD_move_out39[11:6],RRD_move_out39[5:0],pieceReg39);

f40 = $fopen("square40.txt");
$fwrite(f40,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out40[27:24],D_move_out40[23:18],D_move_out40[17:12],D_move_out40[11:6],D_move_out40[5:0],pieceReg40);
$fwrite(f40,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out40[27:24],U_move_out40[23:18],U_move_out40[17:12],U_move_out40[11:6],U_move_out40[5:0],pieceReg40);
$fwrite(f40,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out40[27:24],L_move_out40[23:18],L_move_out40[17:12],L_move_out40[11:6],L_move_out40[5:0],pieceReg40);
$fwrite(f40,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out40[27:24],DL_move_out40[23:18],DL_move_out40[17:12],DL_move_out40[11:6],DL_move_out40[5:0],pieceReg40);
$fwrite(f40,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out40[27:24],UL_move_out40[23:18],UL_move_out40[17:12],UL_move_out40[11:6],UL_move_out40[5:0],pieceReg40);
$fwrite(f40,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out40[27:24],UUL_move_out40[23:18],UUL_move_out40[17:12],UUL_move_out40[11:6],UUL_move_out40[5:0],pieceReg40);
$fwrite(f40,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out40[27:24],LLU_move_out40[23:18],LLU_move_out40[17:12],LLU_move_out40[11:6],LLU_move_out40[5:0],pieceReg40);
$fwrite(f40,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out40[27:24],DDL_move_out40[23:18],DDL_move_out40[17:12],DDL_move_out40[11:6],DDL_move_out40[5:0],pieceReg40);
$fwrite(f40,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out40[27:24],LLD_move_out40[23:18],LLD_move_out40[17:12],LLD_move_out40[11:6],LLD_move_out40[5:0],pieceReg40);

f41 = $fopen("square41.txt");
$fwrite(f41,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out41[27:24],D_move_out41[23:18],D_move_out41[17:12],D_move_out41[11:6],D_move_out41[5:0],pieceReg41);
$fwrite(f41,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out41[27:24],U_move_out41[23:18],U_move_out41[17:12],U_move_out41[11:6],U_move_out41[5:0],pieceReg41);
$fwrite(f41,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out41[27:24],L_move_out41[23:18],L_move_out41[17:12],L_move_out41[11:6],L_move_out41[5:0],pieceReg41);
$fwrite(f41,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out41[27:24],R_move_out41[23:18],R_move_out41[17:12],R_move_out41[11:6],R_move_out41[5:0],pieceReg41);
$fwrite(f41,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out41[27:24],DL_move_out41[23:18],DL_move_out41[17:12],DL_move_out41[11:6],DL_move_out41[5:0],pieceReg41);
$fwrite(f41,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out41[27:24],DR_move_out41[23:18],DR_move_out41[17:12],DR_move_out41[11:6],DR_move_out41[5:0],pieceReg41);
$fwrite(f41,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out41[27:24],UL_move_out41[23:18],UL_move_out41[17:12],UL_move_out41[11:6],UL_move_out41[5:0],pieceReg41);
$fwrite(f41,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out41[27:24],UR_move_out41[23:18],UR_move_out41[17:12],UR_move_out41[11:6],UR_move_out41[5:0],pieceReg41);
$fwrite(f41,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out41[27:24],UUL_move_out41[23:18],UUL_move_out41[17:12],UUL_move_out41[11:6],UUL_move_out41[5:0],pieceReg41);
$fwrite(f41,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out41[27:24],UUR_move_out41[23:18],UUR_move_out41[17:12],UUR_move_out41[11:6],UUR_move_out41[5:0],pieceReg41);
$fwrite(f41,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out41[27:24],LLU_move_out41[23:18],LLU_move_out41[17:12],LLU_move_out41[11:6],LLU_move_out41[5:0],pieceReg41);
$fwrite(f41,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out41[27:24],DDL_move_out41[23:18],DDL_move_out41[17:12],DDL_move_out41[11:6],DDL_move_out41[5:0],pieceReg41);
$fwrite(f41,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out41[27:24],DDR_move_out41[23:18],DDR_move_out41[17:12],DDR_move_out41[11:6],DDR_move_out41[5:0],pieceReg41);
$fwrite(f41,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out41[27:24],LLD_move_out41[23:18],LLD_move_out41[17:12],LLD_move_out41[11:6],LLD_move_out41[5:0],pieceReg41);

f42 = $fopen("square42.txt");
$fwrite(f42,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out42[27:24],D_move_out42[23:18],D_move_out42[17:12],D_move_out42[11:6],D_move_out42[5:0],pieceReg42);
$fwrite(f42,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out42[27:24],U_move_out42[23:18],U_move_out42[17:12],U_move_out42[11:6],U_move_out42[5:0],pieceReg42);
$fwrite(f42,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out42[27:24],L_move_out42[23:18],L_move_out42[17:12],L_move_out42[11:6],L_move_out42[5:0],pieceReg42);
$fwrite(f42,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out42[27:24],R_move_out42[23:18],R_move_out42[17:12],R_move_out42[11:6],R_move_out42[5:0],pieceReg42);
$fwrite(f42,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out42[27:24],DL_move_out42[23:18],DL_move_out42[17:12],DL_move_out42[11:6],DL_move_out42[5:0],pieceReg42);
$fwrite(f42,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out42[27:24],DR_move_out42[23:18],DR_move_out42[17:12],DR_move_out42[11:6],DR_move_out42[5:0],pieceReg42);
$fwrite(f42,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out42[27:24],UL_move_out42[23:18],UL_move_out42[17:12],UL_move_out42[11:6],UL_move_out42[5:0],pieceReg42);
$fwrite(f42,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out42[27:24],UR_move_out42[23:18],UR_move_out42[17:12],UR_move_out42[11:6],UR_move_out42[5:0],pieceReg42);
$fwrite(f42,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out42[27:24],UUL_move_out42[23:18],UUL_move_out42[17:12],UUL_move_out42[11:6],UUL_move_out42[5:0],pieceReg42);
$fwrite(f42,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out42[27:24],UUR_move_out42[23:18],UUR_move_out42[17:12],UUR_move_out42[11:6],UUR_move_out42[5:0],pieceReg42);
$fwrite(f42,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out42[27:24],LLU_move_out42[23:18],LLU_move_out42[17:12],LLU_move_out42[11:6],LLU_move_out42[5:0],pieceReg42);
$fwrite(f42,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out42[27:24],RRU_move_out42[23:18],RRU_move_out42[17:12],RRU_move_out42[11:6],RRU_move_out42[5:0],pieceReg42);
$fwrite(f42,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out42[27:24],DDL_move_out42[23:18],DDL_move_out42[17:12],DDL_move_out42[11:6],DDL_move_out42[5:0],pieceReg42);
$fwrite(f42,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out42[27:24],DDR_move_out42[23:18],DDR_move_out42[17:12],DDR_move_out42[11:6],DDR_move_out42[5:0],pieceReg42);
$fwrite(f42,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out42[27:24],LLD_move_out42[23:18],LLD_move_out42[17:12],LLD_move_out42[11:6],LLD_move_out42[5:0],pieceReg42);
$fwrite(f42,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out42[27:24],RRD_move_out42[23:18],RRD_move_out42[17:12],RRD_move_out42[11:6],RRD_move_out42[5:0],pieceReg42);

f43 = $fopen("square43.txt");
$fwrite(f43,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out43[27:24],D_move_out43[23:18],D_move_out43[17:12],D_move_out43[11:6],D_move_out43[5:0],pieceReg43);
$fwrite(f43,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out43[27:24],U_move_out43[23:18],U_move_out43[17:12],U_move_out43[11:6],U_move_out43[5:0],pieceReg43);
$fwrite(f43,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out43[27:24],L_move_out43[23:18],L_move_out43[17:12],L_move_out43[11:6],L_move_out43[5:0],pieceReg43);
$fwrite(f43,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out43[27:24],R_move_out43[23:18],R_move_out43[17:12],R_move_out43[11:6],R_move_out43[5:0],pieceReg43);
$fwrite(f43,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out43[27:24],DL_move_out43[23:18],DL_move_out43[17:12],DL_move_out43[11:6],DL_move_out43[5:0],pieceReg43);
$fwrite(f43,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out43[27:24],DR_move_out43[23:18],DR_move_out43[17:12],DR_move_out43[11:6],DR_move_out43[5:0],pieceReg43);
$fwrite(f43,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out43[27:24],UL_move_out43[23:18],UL_move_out43[17:12],UL_move_out43[11:6],UL_move_out43[5:0],pieceReg43);
$fwrite(f43,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out43[27:24],UR_move_out43[23:18],UR_move_out43[17:12],UR_move_out43[11:6],UR_move_out43[5:0],pieceReg43);
$fwrite(f43,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out43[27:24],UUL_move_out43[23:18],UUL_move_out43[17:12],UUL_move_out43[11:6],UUL_move_out43[5:0],pieceReg43);
$fwrite(f43,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out43[27:24],UUR_move_out43[23:18],UUR_move_out43[17:12],UUR_move_out43[11:6],UUR_move_out43[5:0],pieceReg43);
$fwrite(f43,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out43[27:24],LLU_move_out43[23:18],LLU_move_out43[17:12],LLU_move_out43[11:6],LLU_move_out43[5:0],pieceReg43);
$fwrite(f43,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out43[27:24],RRU_move_out43[23:18],RRU_move_out43[17:12],RRU_move_out43[11:6],RRU_move_out43[5:0],pieceReg43);
$fwrite(f43,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out43[27:24],DDL_move_out43[23:18],DDL_move_out43[17:12],DDL_move_out43[11:6],DDL_move_out43[5:0],pieceReg43);
$fwrite(f43,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out43[27:24],DDR_move_out43[23:18],DDR_move_out43[17:12],DDR_move_out43[11:6],DDR_move_out43[5:0],pieceReg43);
$fwrite(f43,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out43[27:24],LLD_move_out43[23:18],LLD_move_out43[17:12],LLD_move_out43[11:6],LLD_move_out43[5:0],pieceReg43);
$fwrite(f43,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out43[27:24],RRD_move_out43[23:18],RRD_move_out43[17:12],RRD_move_out43[11:6],RRD_move_out43[5:0],pieceReg43);

f44 = $fopen("square44.txt");
$fwrite(f44,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out44[27:24],D_move_out44[23:18],D_move_out44[17:12],D_move_out44[11:6],D_move_out44[5:0],pieceReg44);
$fwrite(f44,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out44[27:24],U_move_out44[23:18],U_move_out44[17:12],U_move_out44[11:6],U_move_out44[5:0],pieceReg44);
$fwrite(f44,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out44[27:24],L_move_out44[23:18],L_move_out44[17:12],L_move_out44[11:6],L_move_out44[5:0],pieceReg44);
$fwrite(f44,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out44[27:24],R_move_out44[23:18],R_move_out44[17:12],R_move_out44[11:6],R_move_out44[5:0],pieceReg44);
$fwrite(f44,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out44[27:24],DL_move_out44[23:18],DL_move_out44[17:12],DL_move_out44[11:6],DL_move_out44[5:0],pieceReg44);
$fwrite(f44,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out44[27:24],DR_move_out44[23:18],DR_move_out44[17:12],DR_move_out44[11:6],DR_move_out44[5:0],pieceReg44);
$fwrite(f44,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out44[27:24],UL_move_out44[23:18],UL_move_out44[17:12],UL_move_out44[11:6],UL_move_out44[5:0],pieceReg44);
$fwrite(f44,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out44[27:24],UR_move_out44[23:18],UR_move_out44[17:12],UR_move_out44[11:6],UR_move_out44[5:0],pieceReg44);
$fwrite(f44,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out44[27:24],UUL_move_out44[23:18],UUL_move_out44[17:12],UUL_move_out44[11:6],UUL_move_out44[5:0],pieceReg44);
$fwrite(f44,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out44[27:24],UUR_move_out44[23:18],UUR_move_out44[17:12],UUR_move_out44[11:6],UUR_move_out44[5:0],pieceReg44);
$fwrite(f44,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out44[27:24],LLU_move_out44[23:18],LLU_move_out44[17:12],LLU_move_out44[11:6],LLU_move_out44[5:0],pieceReg44);
$fwrite(f44,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out44[27:24],RRU_move_out44[23:18],RRU_move_out44[17:12],RRU_move_out44[11:6],RRU_move_out44[5:0],pieceReg44);
$fwrite(f44,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out44[27:24],DDL_move_out44[23:18],DDL_move_out44[17:12],DDL_move_out44[11:6],DDL_move_out44[5:0],pieceReg44);
$fwrite(f44,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out44[27:24],DDR_move_out44[23:18],DDR_move_out44[17:12],DDR_move_out44[11:6],DDR_move_out44[5:0],pieceReg44);
$fwrite(f44,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out44[27:24],LLD_move_out44[23:18],LLD_move_out44[17:12],LLD_move_out44[11:6],LLD_move_out44[5:0],pieceReg44);
$fwrite(f44,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out44[27:24],RRD_move_out44[23:18],RRD_move_out44[17:12],RRD_move_out44[11:6],RRD_move_out44[5:0],pieceReg44);

f45 = $fopen("square45.txt");
$fwrite(f45,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out45[27:24],D_move_out45[23:18],D_move_out45[17:12],D_move_out45[11:6],D_move_out45[5:0],pieceReg45);
$fwrite(f45,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out45[27:24],U_move_out45[23:18],U_move_out45[17:12],U_move_out45[11:6],U_move_out45[5:0],pieceReg45);
$fwrite(f45,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out45[27:24],L_move_out45[23:18],L_move_out45[17:12],L_move_out45[11:6],L_move_out45[5:0],pieceReg45);
$fwrite(f45,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out45[27:24],R_move_out45[23:18],R_move_out45[17:12],R_move_out45[11:6],R_move_out45[5:0],pieceReg45);
$fwrite(f45,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out45[27:24],DL_move_out45[23:18],DL_move_out45[17:12],DL_move_out45[11:6],DL_move_out45[5:0],pieceReg45);
$fwrite(f45,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out45[27:24],DR_move_out45[23:18],DR_move_out45[17:12],DR_move_out45[11:6],DR_move_out45[5:0],pieceReg45);
$fwrite(f45,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out45[27:24],UL_move_out45[23:18],UL_move_out45[17:12],UL_move_out45[11:6],UL_move_out45[5:0],pieceReg45);
$fwrite(f45,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out45[27:24],UR_move_out45[23:18],UR_move_out45[17:12],UR_move_out45[11:6],UR_move_out45[5:0],pieceReg45);
$fwrite(f45,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out45[27:24],UUL_move_out45[23:18],UUL_move_out45[17:12],UUL_move_out45[11:6],UUL_move_out45[5:0],pieceReg45);
$fwrite(f45,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out45[27:24],UUR_move_out45[23:18],UUR_move_out45[17:12],UUR_move_out45[11:6],UUR_move_out45[5:0],pieceReg45);
$fwrite(f45,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out45[27:24],LLU_move_out45[23:18],LLU_move_out45[17:12],LLU_move_out45[11:6],LLU_move_out45[5:0],pieceReg45);
$fwrite(f45,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out45[27:24],RRU_move_out45[23:18],RRU_move_out45[17:12],RRU_move_out45[11:6],RRU_move_out45[5:0],pieceReg45);
$fwrite(f45,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out45[27:24],DDL_move_out45[23:18],DDL_move_out45[17:12],DDL_move_out45[11:6],DDL_move_out45[5:0],pieceReg45);
$fwrite(f45,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out45[27:24],DDR_move_out45[23:18],DDR_move_out45[17:12],DDR_move_out45[11:6],DDR_move_out45[5:0],pieceReg45);
$fwrite(f45,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out45[27:24],LLD_move_out45[23:18],LLD_move_out45[17:12],LLD_move_out45[11:6],LLD_move_out45[5:0],pieceReg45);
$fwrite(f45,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out45[27:24],RRD_move_out45[23:18],RRD_move_out45[17:12],RRD_move_out45[11:6],RRD_move_out45[5:0],pieceReg45);

f46 = $fopen("square46.txt");
$fwrite(f46,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out46[27:24],D_move_out46[23:18],D_move_out46[17:12],D_move_out46[11:6],D_move_out46[5:0],pieceReg46);
$fwrite(f46,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out46[27:24],U_move_out46[23:18],U_move_out46[17:12],U_move_out46[11:6],U_move_out46[5:0],pieceReg46);
$fwrite(f46,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out46[27:24],L_move_out46[23:18],L_move_out46[17:12],L_move_out46[11:6],L_move_out46[5:0],pieceReg46);
$fwrite(f46,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out46[27:24],R_move_out46[23:18],R_move_out46[17:12],R_move_out46[11:6],R_move_out46[5:0],pieceReg46);
$fwrite(f46,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out46[27:24],DL_move_out46[23:18],DL_move_out46[17:12],DL_move_out46[11:6],DL_move_out46[5:0],pieceReg46);
$fwrite(f46,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out46[27:24],DR_move_out46[23:18],DR_move_out46[17:12],DR_move_out46[11:6],DR_move_out46[5:0],pieceReg46);
$fwrite(f46,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out46[27:24],UL_move_out46[23:18],UL_move_out46[17:12],UL_move_out46[11:6],UL_move_out46[5:0],pieceReg46);
$fwrite(f46,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out46[27:24],UR_move_out46[23:18],UR_move_out46[17:12],UR_move_out46[11:6],UR_move_out46[5:0],pieceReg46);
$fwrite(f46,"UUL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUL_move_out46[27:24],UUL_move_out46[23:18],UUL_move_out46[17:12],UUL_move_out46[11:6],UUL_move_out46[5:0],pieceReg46);
$fwrite(f46,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out46[27:24],UUR_move_out46[23:18],UUR_move_out46[17:12],UUR_move_out46[11:6],UUR_move_out46[5:0],pieceReg46);
$fwrite(f46,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out46[27:24],RRU_move_out46[23:18],RRU_move_out46[17:12],RRU_move_out46[11:6],RRU_move_out46[5:0],pieceReg46);
$fwrite(f46,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out46[27:24],DDL_move_out46[23:18],DDL_move_out46[17:12],DDL_move_out46[11:6],DDL_move_out46[5:0],pieceReg46);
$fwrite(f46,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out46[27:24],DDR_move_out46[23:18],DDR_move_out46[17:12],DDR_move_out46[11:6],DDR_move_out46[5:0],pieceReg46);
$fwrite(f46,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out46[27:24],RRD_move_out46[23:18],RRD_move_out46[17:12],RRD_move_out46[11:6],RRD_move_out46[5:0],pieceReg46);

f47 = $fopen("square47.txt");
$fwrite(f47,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out47[27:24],D_move_out47[23:18],D_move_out47[17:12],D_move_out47[11:6],D_move_out47[5:0],pieceReg47);
$fwrite(f47,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out47[27:24],U_move_out47[23:18],U_move_out47[17:12],U_move_out47[11:6],U_move_out47[5:0],pieceReg47);
$fwrite(f47,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out47[27:24],R_move_out47[23:18],R_move_out47[17:12],R_move_out47[11:6],R_move_out47[5:0],pieceReg47);
$fwrite(f47,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out47[27:24],DR_move_out47[23:18],DR_move_out47[17:12],DR_move_out47[11:6],DR_move_out47[5:0],pieceReg47);
$fwrite(f47,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out47[27:24],UR_move_out47[23:18],UR_move_out47[17:12],UR_move_out47[11:6],UR_move_out47[5:0],pieceReg47);
$fwrite(f47,"UUR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UUR_move_out47[27:24],UUR_move_out47[23:18],UUR_move_out47[17:12],UUR_move_out47[11:6],UUR_move_out47[5:0],pieceReg47);
$fwrite(f47,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out47[27:24],RRU_move_out47[23:18],RRU_move_out47[17:12],RRU_move_out47[11:6],RRU_move_out47[5:0],pieceReg47);
$fwrite(f47,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out47[27:24],DDR_move_out47[23:18],DDR_move_out47[17:12],DDR_move_out47[11:6],DDR_move_out47[5:0],pieceReg47);
$fwrite(f47,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out47[27:24],RRD_move_out47[23:18],RRD_move_out47[17:12],RRD_move_out47[11:6],RRD_move_out47[5:0],pieceReg47);

f48 = $fopen("square48.txt");
$fwrite(f48,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out48[27:24],D_move_out48[23:18],D_move_out48[17:12],D_move_out48[11:6],D_move_out48[5:0],pieceReg48);
$fwrite(f48,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out48[27:24],U_move_out48[23:18],U_move_out48[17:12],U_move_out48[11:6],U_move_out48[5:0],pieceReg48);
$fwrite(f48,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out48[27:24],L_move_out48[23:18],L_move_out48[17:12],L_move_out48[11:6],L_move_out48[5:0],pieceReg48);
$fwrite(f48,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out48[27:24],DL_move_out48[23:18],DL_move_out48[17:12],DL_move_out48[11:6],DL_move_out48[5:0],pieceReg48);
$fwrite(f48,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out48[27:24],UL_move_out48[23:18],UL_move_out48[17:12],UL_move_out48[11:6],UL_move_out48[5:0],pieceReg48);
$fwrite(f48,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out48[27:24],LLU_move_out48[23:18],LLU_move_out48[17:12],LLU_move_out48[11:6],LLU_move_out48[5:0],pieceReg48);
$fwrite(f48,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out48[27:24],DDL_move_out48[23:18],DDL_move_out48[17:12],DDL_move_out48[11:6],DDL_move_out48[5:0],pieceReg48);
$fwrite(f48,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out48[27:24],LLD_move_out48[23:18],LLD_move_out48[17:12],LLD_move_out48[11:6],LLD_move_out48[5:0],pieceReg48);

f49 = $fopen("square49.txt");
$fwrite(f49,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out49[27:24],D_move_out49[23:18],D_move_out49[17:12],D_move_out49[11:6],D_move_out49[5:0],pieceReg49);
$fwrite(f49,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out49[27:24],U_move_out49[23:18],U_move_out49[17:12],U_move_out49[11:6],U_move_out49[5:0],pieceReg49);
$fwrite(f49,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out49[27:24],L_move_out49[23:18],L_move_out49[17:12],L_move_out49[11:6],L_move_out49[5:0],pieceReg49);
$fwrite(f49,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out49[27:24],R_move_out49[23:18],R_move_out49[17:12],R_move_out49[11:6],R_move_out49[5:0],pieceReg49);
$fwrite(f49,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out49[27:24],DL_move_out49[23:18],DL_move_out49[17:12],DL_move_out49[11:6],DL_move_out49[5:0],pieceReg49);
$fwrite(f49,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out49[27:24],DR_move_out49[23:18],DR_move_out49[17:12],DR_move_out49[11:6],DR_move_out49[5:0],pieceReg49);
$fwrite(f49,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out49[27:24],UL_move_out49[23:18],UL_move_out49[17:12],UL_move_out49[11:6],UL_move_out49[5:0],pieceReg49);
$fwrite(f49,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out49[27:24],UR_move_out49[23:18],UR_move_out49[17:12],UR_move_out49[11:6],UR_move_out49[5:0],pieceReg49);
$fwrite(f49,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out49[27:24],LLU_move_out49[23:18],LLU_move_out49[17:12],LLU_move_out49[11:6],LLU_move_out49[5:0],pieceReg49);
$fwrite(f49,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out49[27:24],DDL_move_out49[23:18],DDL_move_out49[17:12],DDL_move_out49[11:6],DDL_move_out49[5:0],pieceReg49);
$fwrite(f49,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out49[27:24],DDR_move_out49[23:18],DDR_move_out49[17:12],DDR_move_out49[11:6],DDR_move_out49[5:0],pieceReg49);
$fwrite(f49,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out49[27:24],LLD_move_out49[23:18],LLD_move_out49[17:12],LLD_move_out49[11:6],LLD_move_out49[5:0],pieceReg49);

f50 = $fopen("square50.txt");
$fwrite(f50,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out50[27:24],D_move_out50[23:18],D_move_out50[17:12],D_move_out50[11:6],D_move_out50[5:0],pieceReg50);
$fwrite(f50,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out50[27:24],U_move_out50[23:18],U_move_out50[17:12],U_move_out50[11:6],U_move_out50[5:0],pieceReg50);
$fwrite(f50,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out50[27:24],L_move_out50[23:18],L_move_out50[17:12],L_move_out50[11:6],L_move_out50[5:0],pieceReg50);
$fwrite(f50,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out50[27:24],R_move_out50[23:18],R_move_out50[17:12],R_move_out50[11:6],R_move_out50[5:0],pieceReg50);
$fwrite(f50,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out50[27:24],DL_move_out50[23:18],DL_move_out50[17:12],DL_move_out50[11:6],DL_move_out50[5:0],pieceReg50);
$fwrite(f50,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out50[27:24],DR_move_out50[23:18],DR_move_out50[17:12],DR_move_out50[11:6],DR_move_out50[5:0],pieceReg50);
$fwrite(f50,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out50[27:24],UL_move_out50[23:18],UL_move_out50[17:12],UL_move_out50[11:6],UL_move_out50[5:0],pieceReg50);
$fwrite(f50,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out50[27:24],UR_move_out50[23:18],UR_move_out50[17:12],UR_move_out50[11:6],UR_move_out50[5:0],pieceReg50);
$fwrite(f50,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out50[27:24],LLU_move_out50[23:18],LLU_move_out50[17:12],LLU_move_out50[11:6],LLU_move_out50[5:0],pieceReg50);
$fwrite(f50,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out50[27:24],RRU_move_out50[23:18],RRU_move_out50[17:12],RRU_move_out50[11:6],RRU_move_out50[5:0],pieceReg50);
$fwrite(f50,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out50[27:24],DDL_move_out50[23:18],DDL_move_out50[17:12],DDL_move_out50[11:6],DDL_move_out50[5:0],pieceReg50);
$fwrite(f50,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out50[27:24],DDR_move_out50[23:18],DDR_move_out50[17:12],DDR_move_out50[11:6],DDR_move_out50[5:0],pieceReg50);
$fwrite(f50,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out50[27:24],LLD_move_out50[23:18],LLD_move_out50[17:12],LLD_move_out50[11:6],LLD_move_out50[5:0],pieceReg50);
$fwrite(f50,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out50[27:24],RRD_move_out50[23:18],RRD_move_out50[17:12],RRD_move_out50[11:6],RRD_move_out50[5:0],pieceReg50);

f51 = $fopen("square51.txt");
$fwrite(f51,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out51[27:24],D_move_out51[23:18],D_move_out51[17:12],D_move_out51[11:6],D_move_out51[5:0],pieceReg51);
$fwrite(f51,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out51[27:24],U_move_out51[23:18],U_move_out51[17:12],U_move_out51[11:6],U_move_out51[5:0],pieceReg51);
$fwrite(f51,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out51[27:24],L_move_out51[23:18],L_move_out51[17:12],L_move_out51[11:6],L_move_out51[5:0],pieceReg51);
$fwrite(f51,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out51[27:24],R_move_out51[23:18],R_move_out51[17:12],R_move_out51[11:6],R_move_out51[5:0],pieceReg51);
$fwrite(f51,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out51[27:24],DL_move_out51[23:18],DL_move_out51[17:12],DL_move_out51[11:6],DL_move_out51[5:0],pieceReg51);
$fwrite(f51,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out51[27:24],DR_move_out51[23:18],DR_move_out51[17:12],DR_move_out51[11:6],DR_move_out51[5:0],pieceReg51);
$fwrite(f51,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out51[27:24],UL_move_out51[23:18],UL_move_out51[17:12],UL_move_out51[11:6],UL_move_out51[5:0],pieceReg51);
$fwrite(f51,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out51[27:24],UR_move_out51[23:18],UR_move_out51[17:12],UR_move_out51[11:6],UR_move_out51[5:0],pieceReg51);
$fwrite(f51,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out51[27:24],LLU_move_out51[23:18],LLU_move_out51[17:12],LLU_move_out51[11:6],LLU_move_out51[5:0],pieceReg51);
$fwrite(f51,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out51[27:24],RRU_move_out51[23:18],RRU_move_out51[17:12],RRU_move_out51[11:6],RRU_move_out51[5:0],pieceReg51);
$fwrite(f51,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out51[27:24],DDL_move_out51[23:18],DDL_move_out51[17:12],DDL_move_out51[11:6],DDL_move_out51[5:0],pieceReg51);
$fwrite(f51,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out51[27:24],DDR_move_out51[23:18],DDR_move_out51[17:12],DDR_move_out51[11:6],DDR_move_out51[5:0],pieceReg51);
$fwrite(f51,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out51[27:24],LLD_move_out51[23:18],LLD_move_out51[17:12],LLD_move_out51[11:6],LLD_move_out51[5:0],pieceReg51);
$fwrite(f51,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out51[27:24],RRD_move_out51[23:18],RRD_move_out51[17:12],RRD_move_out51[11:6],RRD_move_out51[5:0],pieceReg51);

f52 = $fopen("square52.txt");
$fwrite(f52,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out52[27:24],D_move_out52[23:18],D_move_out52[17:12],D_move_out52[11:6],D_move_out52[5:0],pieceReg52);
$fwrite(f52,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out52[27:24],U_move_out52[23:18],U_move_out52[17:12],U_move_out52[11:6],U_move_out52[5:0],pieceReg52);
$fwrite(f52,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out52[27:24],L_move_out52[23:18],L_move_out52[17:12],L_move_out52[11:6],L_move_out52[5:0],pieceReg52);
$fwrite(f52,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out52[27:24],R_move_out52[23:18],R_move_out52[17:12],R_move_out52[11:6],R_move_out52[5:0],pieceReg52);
$fwrite(f52,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out52[27:24],DL_move_out52[23:18],DL_move_out52[17:12],DL_move_out52[11:6],DL_move_out52[5:0],pieceReg52);
$fwrite(f52,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out52[27:24],DR_move_out52[23:18],DR_move_out52[17:12],DR_move_out52[11:6],DR_move_out52[5:0],pieceReg52);
$fwrite(f52,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out52[27:24],UL_move_out52[23:18],UL_move_out52[17:12],UL_move_out52[11:6],UL_move_out52[5:0],pieceReg52);
$fwrite(f52,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out52[27:24],UR_move_out52[23:18],UR_move_out52[17:12],UR_move_out52[11:6],UR_move_out52[5:0],pieceReg52);
$fwrite(f52,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out52[27:24],LLU_move_out52[23:18],LLU_move_out52[17:12],LLU_move_out52[11:6],LLU_move_out52[5:0],pieceReg52);
$fwrite(f52,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out52[27:24],RRU_move_out52[23:18],RRU_move_out52[17:12],RRU_move_out52[11:6],RRU_move_out52[5:0],pieceReg52);
$fwrite(f52,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out52[27:24],DDL_move_out52[23:18],DDL_move_out52[17:12],DDL_move_out52[11:6],DDL_move_out52[5:0],pieceReg52);
$fwrite(f52,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out52[27:24],DDR_move_out52[23:18],DDR_move_out52[17:12],DDR_move_out52[11:6],DDR_move_out52[5:0],pieceReg52);
$fwrite(f52,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out52[27:24],LLD_move_out52[23:18],LLD_move_out52[17:12],LLD_move_out52[11:6],LLD_move_out52[5:0],pieceReg52);
$fwrite(f52,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out52[27:24],RRD_move_out52[23:18],RRD_move_out52[17:12],RRD_move_out52[11:6],RRD_move_out52[5:0],pieceReg52);

f53 = $fopen("square53.txt");
$fwrite(f53,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out53[27:24],D_move_out53[23:18],D_move_out53[17:12],D_move_out53[11:6],D_move_out53[5:0],pieceReg53);
$fwrite(f53,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out53[27:24],U_move_out53[23:18],U_move_out53[17:12],U_move_out53[11:6],U_move_out53[5:0],pieceReg53);
$fwrite(f53,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out53[27:24],L_move_out53[23:18],L_move_out53[17:12],L_move_out53[11:6],L_move_out53[5:0],pieceReg53);
$fwrite(f53,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out53[27:24],R_move_out53[23:18],R_move_out53[17:12],R_move_out53[11:6],R_move_out53[5:0],pieceReg53);
$fwrite(f53,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out53[27:24],DL_move_out53[23:18],DL_move_out53[17:12],DL_move_out53[11:6],DL_move_out53[5:0],pieceReg53);
$fwrite(f53,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out53[27:24],DR_move_out53[23:18],DR_move_out53[17:12],DR_move_out53[11:6],DR_move_out53[5:0],pieceReg53);
$fwrite(f53,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out53[27:24],UL_move_out53[23:18],UL_move_out53[17:12],UL_move_out53[11:6],UL_move_out53[5:0],pieceReg53);
$fwrite(f53,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out53[27:24],UR_move_out53[23:18],UR_move_out53[17:12],UR_move_out53[11:6],UR_move_out53[5:0],pieceReg53);
$fwrite(f53,"LLU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLU_move_out53[27:24],LLU_move_out53[23:18],LLU_move_out53[17:12],LLU_move_out53[11:6],LLU_move_out53[5:0],pieceReg53);
$fwrite(f53,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out53[27:24],RRU_move_out53[23:18],RRU_move_out53[17:12],RRU_move_out53[11:6],RRU_move_out53[5:0],pieceReg53);
$fwrite(f53,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out53[27:24],DDL_move_out53[23:18],DDL_move_out53[17:12],DDL_move_out53[11:6],DDL_move_out53[5:0],pieceReg53);
$fwrite(f53,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out53[27:24],DDR_move_out53[23:18],DDR_move_out53[17:12],DDR_move_out53[11:6],DDR_move_out53[5:0],pieceReg53);
$fwrite(f53,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out53[27:24],LLD_move_out53[23:18],LLD_move_out53[17:12],LLD_move_out53[11:6],LLD_move_out53[5:0],pieceReg53);
$fwrite(f53,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out53[27:24],RRD_move_out53[23:18],RRD_move_out53[17:12],RRD_move_out53[11:6],RRD_move_out53[5:0],pieceReg53);

f54 = $fopen("square54.txt");
$fwrite(f54,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out54[27:24],D_move_out54[23:18],D_move_out54[17:12],D_move_out54[11:6],D_move_out54[5:0],pieceReg54);
$fwrite(f54,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out54[27:24],U_move_out54[23:18],U_move_out54[17:12],U_move_out54[11:6],U_move_out54[5:0],pieceReg54);
$fwrite(f54,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out54[27:24],L_move_out54[23:18],L_move_out54[17:12],L_move_out54[11:6],L_move_out54[5:0],pieceReg54);
$fwrite(f54,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out54[27:24],R_move_out54[23:18],R_move_out54[17:12],R_move_out54[11:6],R_move_out54[5:0],pieceReg54);
$fwrite(f54,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out54[27:24],DL_move_out54[23:18],DL_move_out54[17:12],DL_move_out54[11:6],DL_move_out54[5:0],pieceReg54);
$fwrite(f54,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out54[27:24],DR_move_out54[23:18],DR_move_out54[17:12],DR_move_out54[11:6],DR_move_out54[5:0],pieceReg54);
$fwrite(f54,"UL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UL_move_out54[27:24],UL_move_out54[23:18],UL_move_out54[17:12],UL_move_out54[11:6],UL_move_out54[5:0],pieceReg54);
$fwrite(f54,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out54[27:24],UR_move_out54[23:18],UR_move_out54[17:12],UR_move_out54[11:6],UR_move_out54[5:0],pieceReg54);
$fwrite(f54,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out54[27:24],RRU_move_out54[23:18],RRU_move_out54[17:12],RRU_move_out54[11:6],RRU_move_out54[5:0],pieceReg54);
$fwrite(f54,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out54[27:24],DDL_move_out54[23:18],DDL_move_out54[17:12],DDL_move_out54[11:6],DDL_move_out54[5:0],pieceReg54);
$fwrite(f54,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out54[27:24],DDR_move_out54[23:18],DDR_move_out54[17:12],DDR_move_out54[11:6],DDR_move_out54[5:0],pieceReg54);
$fwrite(f54,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out54[27:24],RRD_move_out54[23:18],RRD_move_out54[17:12],RRD_move_out54[11:6],RRD_move_out54[5:0],pieceReg54);

f55 = $fopen("square55.txt");
$fwrite(f55,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out55[27:24],D_move_out55[23:18],D_move_out55[17:12],D_move_out55[11:6],D_move_out55[5:0],pieceReg55);
$fwrite(f55,"U: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,U_move_out55[27:24],U_move_out55[23:18],U_move_out55[17:12],U_move_out55[11:6],U_move_out55[5:0],pieceReg55);
$fwrite(f55,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out55[27:24],R_move_out55[23:18],R_move_out55[17:12],R_move_out55[11:6],R_move_out55[5:0],pieceReg55);
$fwrite(f55,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out55[27:24],DR_move_out55[23:18],DR_move_out55[17:12],DR_move_out55[11:6],DR_move_out55[5:0],pieceReg55);
$fwrite(f55,"UR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,UR_move_out55[27:24],UR_move_out55[23:18],UR_move_out55[17:12],UR_move_out55[11:6],UR_move_out55[5:0],pieceReg55);
$fwrite(f55,"RRU: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRU_move_out55[27:24],RRU_move_out55[23:18],RRU_move_out55[17:12],RRU_move_out55[11:6],RRU_move_out55[5:0],pieceReg55);
$fwrite(f55,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out55[27:24],DDR_move_out55[23:18],DDR_move_out55[17:12],DDR_move_out55[11:6],DDR_move_out55[5:0],pieceReg55);
$fwrite(f55,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out55[27:24],RRD_move_out55[23:18],RRD_move_out55[17:12],RRD_move_out55[11:6],RRD_move_out55[5:0],pieceReg55);

f56 = $fopen("square56.txt");
$fwrite(f56,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out56[27:24],D_move_out56[23:18],D_move_out56[17:12],D_move_out56[11:6],D_move_out56[5:0],pieceReg56);
$fwrite(f56,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out56[27:24],L_move_out56[23:18],L_move_out56[17:12],L_move_out56[11:6],L_move_out56[5:0],pieceReg56);
$fwrite(f56,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out56[27:24],DL_move_out56[23:18],DL_move_out56[17:12],DL_move_out56[11:6],DL_move_out56[5:0],pieceReg56);
$fwrite(f56,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out56[27:24],DDL_move_out56[23:18],DDL_move_out56[17:12],DDL_move_out56[11:6],DDL_move_out56[5:0],pieceReg56);
$fwrite(f56,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out56[27:24],LLD_move_out56[23:18],LLD_move_out56[17:12],LLD_move_out56[11:6],LLD_move_out56[5:0],pieceReg56);

f57 = $fopen("square57.txt");
$fwrite(f57,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out57[27:24],D_move_out57[23:18],D_move_out57[17:12],D_move_out57[11:6],D_move_out57[5:0],pieceReg57);
$fwrite(f57,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out57[27:24],L_move_out57[23:18],L_move_out57[17:12],L_move_out57[11:6],L_move_out57[5:0],pieceReg57);
$fwrite(f57,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out57[27:24],R_move_out57[23:18],R_move_out57[17:12],R_move_out57[11:6],R_move_out57[5:0],pieceReg57);
$fwrite(f57,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out57[27:24],DL_move_out57[23:18],DL_move_out57[17:12],DL_move_out57[11:6],DL_move_out57[5:0],pieceReg57);
$fwrite(f57,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out57[27:24],DR_move_out57[23:18],DR_move_out57[17:12],DR_move_out57[11:6],DR_move_out57[5:0],pieceReg57);
$fwrite(f57,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out57[27:24],DDL_move_out57[23:18],DDL_move_out57[17:12],DDL_move_out57[11:6],DDL_move_out57[5:0],pieceReg57);
$fwrite(f57,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out57[27:24],DDR_move_out57[23:18],DDR_move_out57[17:12],DDR_move_out57[11:6],DDR_move_out57[5:0],pieceReg57);
$fwrite(f57,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out57[27:24],LLD_move_out57[23:18],LLD_move_out57[17:12],LLD_move_out57[11:6],LLD_move_out57[5:0],pieceReg57);

f58 = $fopen("square58.txt");
$fwrite(f58,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out58[27:24],D_move_out58[23:18],D_move_out58[17:12],D_move_out58[11:6],D_move_out58[5:0],pieceReg58);
$fwrite(f58,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out58[27:24],L_move_out58[23:18],L_move_out58[17:12],L_move_out58[11:6],L_move_out58[5:0],pieceReg58);
$fwrite(f58,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out58[27:24],R_move_out58[23:18],R_move_out58[17:12],R_move_out58[11:6],R_move_out58[5:0],pieceReg58);
$fwrite(f58,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out58[27:24],DL_move_out58[23:18],DL_move_out58[17:12],DL_move_out58[11:6],DL_move_out58[5:0],pieceReg58);
$fwrite(f58,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out58[27:24],DR_move_out58[23:18],DR_move_out58[17:12],DR_move_out58[11:6],DR_move_out58[5:0],pieceReg58);
$fwrite(f58,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out58[27:24],DDL_move_out58[23:18],DDL_move_out58[17:12],DDL_move_out58[11:6],DDL_move_out58[5:0],pieceReg58);
$fwrite(f58,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out58[27:24],DDR_move_out58[23:18],DDR_move_out58[17:12],DDR_move_out58[11:6],DDR_move_out58[5:0],pieceReg58);
$fwrite(f58,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out58[27:24],LLD_move_out58[23:18],LLD_move_out58[17:12],LLD_move_out58[11:6],LLD_move_out58[5:0],pieceReg58);
$fwrite(f58,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out58[27:24],RRD_move_out58[23:18],RRD_move_out58[17:12],RRD_move_out58[11:6],RRD_move_out58[5:0],pieceReg58);

f59 = $fopen("square59.txt");
$fwrite(f59,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out59[27:24],D_move_out59[23:18],D_move_out59[17:12],D_move_out59[11:6],D_move_out59[5:0],pieceReg59);
$fwrite(f59,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out59[27:24],L_move_out59[23:18],L_move_out59[17:12],L_move_out59[11:6],L_move_out59[5:0],pieceReg59);
$fwrite(f59,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out59[27:24],R_move_out59[23:18],R_move_out59[17:12],R_move_out59[11:6],R_move_out59[5:0],pieceReg59);
$fwrite(f59,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out59[27:24],DL_move_out59[23:18],DL_move_out59[17:12],DL_move_out59[11:6],DL_move_out59[5:0],pieceReg59);
$fwrite(f59,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out59[27:24],DR_move_out59[23:18],DR_move_out59[17:12],DR_move_out59[11:6],DR_move_out59[5:0],pieceReg59);
$fwrite(f59,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out59[27:24],DDL_move_out59[23:18],DDL_move_out59[17:12],DDL_move_out59[11:6],DDL_move_out59[5:0],pieceReg59);
$fwrite(f59,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out59[27:24],DDR_move_out59[23:18],DDR_move_out59[17:12],DDR_move_out59[11:6],DDR_move_out59[5:0],pieceReg59);
$fwrite(f59,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out59[27:24],LLD_move_out59[23:18],LLD_move_out59[17:12],LLD_move_out59[11:6],LLD_move_out59[5:0],pieceReg59);
$fwrite(f59,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out59[27:24],RRD_move_out59[23:18],RRD_move_out59[17:12],RRD_move_out59[11:6],RRD_move_out59[5:0],pieceReg59);

$fclose(f30);
$fclose(f31);
$fclose(f32);
$fclose(f33);
$fclose(f34);
$fclose(f35);
$fclose(f36);
$fclose(f37);
$fclose(f38);
$fclose(f39);
$fclose(f40);
$fclose(f41);
$fclose(f42);
$fclose(f43);
$fclose(f44);
$fclose(f45);
$fclose(f46);
$fclose(f47);
$fclose(f48);
$fclose(f49);
$fclose(f50);
$fclose(f51);
$fclose(f52);
$fclose(f53);
$fclose(f54);
$fclose(f55);
$fclose(f56);
$fclose(f57);
$fclose(f58);
$fclose(f59);

f60 = $fopen("square60.txt");
$fwrite(f60,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out60[27:24],D_move_out60[23:18],D_move_out60[17:12],D_move_out60[11:6],D_move_out60[5:0],pieceReg60);
$fwrite(f60,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out60[27:24],L_move_out60[23:18],L_move_out60[17:12],L_move_out60[11:6],L_move_out60[5:0],pieceReg60);
$fwrite(f60,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out60[27:24],R_move_out60[23:18],R_move_out60[17:12],R_move_out60[11:6],R_move_out60[5:0],pieceReg60);
$fwrite(f60,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out60[27:24],DL_move_out60[23:18],DL_move_out60[17:12],DL_move_out60[11:6],DL_move_out60[5:0],pieceReg60);
$fwrite(f60,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out60[27:24],DR_move_out60[23:18],DR_move_out60[17:12],DR_move_out60[11:6],DR_move_out60[5:0],pieceReg60);
$fwrite(f60,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out60[27:24],DDL_move_out60[23:18],DDL_move_out60[17:12],DDL_move_out60[11:6],DDL_move_out60[5:0],pieceReg60);
$fwrite(f60,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out60[27:24],DDR_move_out60[23:18],DDR_move_out60[17:12],DDR_move_out60[11:6],DDR_move_out60[5:0],pieceReg60);
$fwrite(f60,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out60[27:24],LLD_move_out60[23:18],LLD_move_out60[17:12],LLD_move_out60[11:6],LLD_move_out60[5:0],pieceReg60);
$fwrite(f60,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out60[27:24],RRD_move_out60[23:18],RRD_move_out60[17:12],RRD_move_out60[11:6],RRD_move_out60[5:0],pieceReg60);

f61 = $fopen("square61.txt");
$fwrite(f61,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out61[27:24],D_move_out61[23:18],D_move_out61[17:12],D_move_out61[11:6],D_move_out61[5:0],pieceReg61);
$fwrite(f61,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out61[27:24],L_move_out61[23:18],L_move_out61[17:12],L_move_out61[11:6],L_move_out61[5:0],pieceReg61);
$fwrite(f61,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out61[27:24],R_move_out61[23:18],R_move_out61[17:12],R_move_out61[11:6],R_move_out61[5:0],pieceReg61);
$fwrite(f61,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out61[27:24],DL_move_out61[23:18],DL_move_out61[17:12],DL_move_out61[11:6],DL_move_out61[5:0],pieceReg61);
$fwrite(f61,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out61[27:24],DR_move_out61[23:18],DR_move_out61[17:12],DR_move_out61[11:6],DR_move_out61[5:0],pieceReg61);
$fwrite(f61,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out61[27:24],DDL_move_out61[23:18],DDL_move_out61[17:12],DDL_move_out61[11:6],DDL_move_out61[5:0],pieceReg61);
$fwrite(f61,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out61[27:24],DDR_move_out61[23:18],DDR_move_out61[17:12],DDR_move_out61[11:6],DDR_move_out61[5:0],pieceReg61);
$fwrite(f61,"LLD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,LLD_move_out61[27:24],LLD_move_out61[23:18],LLD_move_out61[17:12],LLD_move_out61[11:6],LLD_move_out61[5:0],pieceReg61);
$fwrite(f61,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out61[27:24],RRD_move_out61[23:18],RRD_move_out61[17:12],RRD_move_out61[11:6],RRD_move_out61[5:0],pieceReg61);

f62 = $fopen("square62.txt");
$fwrite(f62,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out62[27:24],D_move_out62[23:18],D_move_out62[17:12],D_move_out62[11:6],D_move_out62[5:0],pieceReg62);
$fwrite(f62,"L: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,L_move_out62[27:24],L_move_out62[23:18],L_move_out62[17:12],L_move_out62[11:6],L_move_out62[5:0],pieceReg62);
$fwrite(f62,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out62[27:24],R_move_out62[23:18],R_move_out62[17:12],R_move_out62[11:6],R_move_out62[5:0],pieceReg62);
$fwrite(f62,"DL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DL_move_out62[27:24],DL_move_out62[23:18],DL_move_out62[17:12],DL_move_out62[11:6],DL_move_out62[5:0],pieceReg62);
$fwrite(f62,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out62[27:24],DR_move_out62[23:18],DR_move_out62[17:12],DR_move_out62[11:6],DR_move_out62[5:0],pieceReg62);
$fwrite(f62,"DDL: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDL_move_out62[27:24],DDL_move_out62[23:18],DDL_move_out62[17:12],DDL_move_out62[11:6],DDL_move_out62[5:0],pieceReg62);
$fwrite(f62,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out62[27:24],DDR_move_out62[23:18],DDR_move_out62[17:12],DDR_move_out62[11:6],DDR_move_out62[5:0],pieceReg62);
$fwrite(f62,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out62[27:24],RRD_move_out62[23:18],RRD_move_out62[17:12],RRD_move_out62[11:6],RRD_move_out62[5:0],pieceReg62);

f63 = $fopen("square63.txt");
$fwrite(f63,"D: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,D_move_out63[27:24],D_move_out63[23:18],D_move_out63[17:12],D_move_out63[11:6],D_move_out63[5:0],pieceReg63);
$fwrite(f63,"R: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,R_move_out63[27:24],R_move_out63[23:18],R_move_out63[17:12],R_move_out63[11:6],R_move_out63[5:0],pieceReg63);
$fwrite(f63,"DR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DR_move_out63[27:24],DR_move_out63[23:18],DR_move_out63[17:12],DR_move_out63[11:6],DR_move_out63[5:0],pieceReg63);
$fwrite(f63,"DDR: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,DDR_move_out63[27:24],DDR_move_out63[23:18],DDR_move_out63[17:12],DDR_move_out63[11:6],DDR_move_out63[5:0],pieceReg63);
$fwrite(f63,"RRD: Castling: %b Captured Piece:%b Final Position:%d Initial Piece:%b Inital Position:%d Piece Reg:%b\n" ,RRD_move_out63[27:24],RRD_move_out63[23:18],RRD_move_out63[17:12],RRD_move_out63[11:6],RRD_move_out63[5:0],pieceReg63);


$finish;	

end

always begin
	#10;
	clk = ~clk;

end

endmodule
