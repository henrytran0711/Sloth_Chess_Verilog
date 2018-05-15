module tb_chessBoard();

reg clk;
reg engineColor;
reg enable;
reg clear;
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

wire [39:0] D_move_out9;
wire [39:0] U_move_out9;
wire [39:0] L_move_out9;
wire [39:0] R_move_out9;
wire [39:0] DL_move_out9;
wire [39:0] DR_move_out9;
wire [39:0] UL_move_out9;
wire [39:0] UR_move_out9;
wire [39:0] D_move_out10;
wire [39:0] U_move_out10;
wire [39:0] L_move_out10;
wire [39:0] R_move_out10;
wire [39:0] DL_move_out10;
wire [39:0] DR_move_out10;
wire [39:0] UL_move_out10;
wire [39:0] UR_move_out10;
wire [39:0] D_move_out11;
wire [39:0] U_move_out11;
wire [39:0] L_move_out11;
wire [39:0] R_move_out11;
wire [39:0] DL_move_out11;
wire [39:0] DR_move_out11;
wire [39:0] UL_move_out11;
wire [39:0] UR_move_out11;
wire [39:0] D_move_out12;
wire [39:0] U_move_out12;
wire [39:0] L_move_out12;
wire [39:0] R_move_out12;
wire [39:0] DL_move_out12;
wire [39:0] DR_move_out12;
wire [39:0] UL_move_out12;
wire [39:0] UR_move_out12;
wire [39:0] D_move_out13;
wire [39:0] U_move_out13;
wire [39:0] L_move_out13;
wire [39:0] R_move_out13;
wire [39:0] DL_move_out13;
wire [39:0] DR_move_out13;
wire [39:0] UL_move_out13;
wire [39:0] UR_move_out13;
wire [39:0] D_move_out14;
wire [39:0] U_move_out14;
wire [39:0] L_move_out14;
wire [39:0] R_move_out14;
wire [39:0] DL_move_out14;
wire [39:0] DR_move_out14;
wire [39:0] UL_move_out14;
wire [39:0] UR_move_out14;
wire [39:0] D_move_out17;
wire [39:0] U_move_out17;
wire [39:0] L_move_out17;
wire [39:0] R_move_out17;
wire [39:0] DL_move_out17;
wire [39:0] DR_move_out17;
wire [39:0] UL_move_out17;
wire [39:0] UR_move_out17;
wire [39:0] D_move_out18;
wire [39:0] U_move_out18;
wire [39:0] L_move_out18;
wire [39:0] R_move_out18;
wire [39:0] DL_move_out18;
wire [39:0] DR_move_out18;
wire [39:0] UL_move_out18;
wire [39:0] UR_move_out18;
wire [39:0] D_move_out19;
wire [39:0] U_move_out19;
wire [39:0] L_move_out19;
wire [39:0] R_move_out19;
wire [39:0] DL_move_out19;
wire [39:0] DR_move_out19;
wire [39:0] UL_move_out19;
wire [39:0] UR_move_out19;
wire [39:0] D_move_out20;
wire [39:0] U_move_out20;
wire [39:0] L_move_out20;
wire [39:0] R_move_out20;
wire [39:0] DL_move_out20;
wire [39:0] DR_move_out20;
wire [39:0] UL_move_out20;
wire [39:0] UR_move_out20;
wire [39:0] D_move_out21;
wire [39:0] U_move_out21;
wire [39:0] L_move_out21;
wire [39:0] R_move_out21;
wire [39:0] DL_move_out21;
wire [39:0] DR_move_out21;
wire [39:0] UL_move_out21;
wire [39:0] UR_move_out21;
wire [39:0] D_move_out22;
wire [39:0] U_move_out22;
wire [39:0] L_move_out22;
wire [39:0] R_move_out22;
wire [39:0] DL_move_out22;
wire [39:0] DR_move_out22;
wire [39:0] UL_move_out22;
wire [39:0] UR_move_out22;
wire [39:0] D_move_out25;
wire [39:0] U_move_out25;
wire [39:0] L_move_out25;
wire [39:0] R_move_out25;
wire [39:0] DL_move_out25;
wire [39:0] DR_move_out25;
wire [39:0] UL_move_out25;
wire [39:0] UR_move_out25;
wire [39:0] D_move_out26;
wire [39:0] U_move_out26;
wire [39:0] L_move_out26;
wire [39:0] R_move_out26;
wire [39:0] DL_move_out26;
wire [39:0] DR_move_out26;
wire [39:0] UL_move_out26;
wire [39:0] UR_move_out26;
wire [39:0] D_move_out27;
wire [39:0] U_move_out27;
wire [39:0] L_move_out27;
wire [39:0] R_move_out27;
wire [39:0] DL_move_out27;
wire [39:0] DR_move_out27;
wire [39:0] UL_move_out27;
wire [39:0] UR_move_out27;
wire [39:0] D_move_out28;
wire [39:0] U_move_out28;
wire [39:0] L_move_out28;
wire [39:0] R_move_out28;
wire [39:0] DL_move_out28;
wire [39:0] DR_move_out28;
wire [39:0] UL_move_out28;
wire [39:0] UR_move_out28;
wire [39:0] D_move_out29;
wire [39:0] U_move_out29;
wire [39:0] L_move_out29;
wire [39:0] R_move_out29;
wire [39:0] DL_move_out29;
wire [39:0] DR_move_out29;
wire [39:0] UL_move_out29;
wire [39:0] UR_move_out29;
wire [39:0] D_move_out30;
wire [39:0] U_move_out30;
wire [39:0] L_move_out30;
wire [39:0] R_move_out30;
wire [39:0] DL_move_out30;
wire [39:0] DR_move_out30;
wire [39:0] UL_move_out30;
wire [39:0] UR_move_out30;
wire [39:0] D_move_out33;
wire [39:0] U_move_out33;
wire [39:0] L_move_out33;
wire [39:0] R_move_out33;
wire [39:0] DL_move_out33;
wire [39:0] DR_move_out33;
wire [39:0] UL_move_out33;
wire [39:0] UR_move_out33;
wire [39:0] D_move_out34;
wire [39:0] U_move_out34;
wire [39:0] L_move_out34;
wire [39:0] R_move_out34;
wire [39:0] DL_move_out34;
wire [39:0] DR_move_out34;
wire [39:0] UL_move_out34;
wire [39:0] UR_move_out34;
wire [39:0] D_move_out35;
wire [39:0] U_move_out35;
wire [39:0] L_move_out35;
wire [39:0] R_move_out35;
wire [39:0] DL_move_out35;
wire [39:0] DR_move_out35;
wire [39:0] UL_move_out35;
wire [39:0] UR_move_out35;
wire [39:0] D_move_out36;
wire [39:0] U_move_out36;
wire [39:0] L_move_out36;
wire [39:0] R_move_out36;
wire [39:0] DL_move_out36;
wire [39:0] DR_move_out36;
wire [39:0] UL_move_out36;
wire [39:0] UR_move_out36;
wire [39:0] D_move_out37;
wire [39:0] U_move_out37;
wire [39:0] L_move_out37;
wire [39:0] R_move_out37;
wire [39:0] DL_move_out37;
wire [39:0] DR_move_out37;
wire [39:0] UL_move_out37;
wire [39:0] UR_move_out37;
wire [39:0] D_move_out38;
wire [39:0] U_move_out38;
wire [39:0] L_move_out38;
wire [39:0] R_move_out38;
wire [39:0] DL_move_out38;
wire [39:0] DR_move_out38;
wire [39:0] UL_move_out38;
wire [39:0] UR_move_out38;
wire [39:0] D_move_out41;
wire [39:0] U_move_out41;
wire [39:0] L_move_out41;
wire [39:0] R_move_out41;
wire [39:0] DL_move_out41;
wire [39:0] DR_move_out41;
wire [39:0] UL_move_out41;
wire [39:0] UR_move_out41;
wire [39:0] D_move_out42;
wire [39:0] U_move_out42;
wire [39:0] L_move_out42;
wire [39:0] R_move_out42;
wire [39:0] DL_move_out42;
wire [39:0] DR_move_out42;
wire [39:0] UL_move_out42;
wire [39:0] UR_move_out42;
wire [39:0] D_move_out43;
wire [39:0] U_move_out43;
wire [39:0] L_move_out43;
wire [39:0] R_move_out43;
wire [39:0] DL_move_out43;
wire [39:0] DR_move_out43;
wire [39:0] UL_move_out43;
wire [39:0] UR_move_out43;
wire [39:0] D_move_out44;
wire [39:0] U_move_out44;
wire [39:0] L_move_out44;
wire [39:0] R_move_out44;
wire [39:0] DL_move_out44;
wire [39:0] DR_move_out44;
wire [39:0] UL_move_out44;
wire [39:0] UR_move_out44;
wire [39:0] D_move_out45;
wire [39:0] U_move_out45;
wire [39:0] L_move_out45;
wire [39:0] R_move_out45;
wire [39:0] DL_move_out45;
wire [39:0] DR_move_out45;
wire [39:0] UL_move_out45;
wire [39:0] UR_move_out45;
wire [39:0] D_move_out46;
wire [39:0] U_move_out46;
wire [39:0] L_move_out46;
wire [39:0] R_move_out46;
wire [39:0] DL_move_out46;
wire [39:0] DR_move_out46;
wire [39:0] UL_move_out46;
wire [39:0] UR_move_out46;
wire [39:0] D_move_out49;
wire [39:0] U_move_out49;
wire [39:0] L_move_out49;
wire [39:0] R_move_out49;
wire [39:0] DL_move_out49;
wire [39:0] DR_move_out49;
wire [39:0] UL_move_out49;
wire [39:0] UR_move_out49;
wire [39:0] D_move_out50;
wire [39:0] U_move_out50;
wire [39:0] L_move_out50;
wire [39:0] R_move_out50;
wire [39:0] DL_move_out50;
wire [39:0] DR_move_out50;
wire [39:0] UL_move_out50;
wire [39:0] UR_move_out50;
wire [39:0] D_move_out51;
wire [39:0] U_move_out51;
wire [39:0] L_move_out51;
wire [39:0] R_move_out51;
wire [39:0] DL_move_out51;
wire [39:0] DR_move_out51;
wire [39:0] UL_move_out51;
wire [39:0] UR_move_out51;
wire [39:0] D_move_out52;
wire [39:0] U_move_out52;
wire [39:0] L_move_out52;
wire [39:0] R_move_out52;
wire [39:0] DL_move_out52;
wire [39:0] DR_move_out52;
wire [39:0] UL_move_out52;
wire [39:0] UR_move_out52;
wire [39:0] D_move_out53;
wire [39:0] U_move_out53;
wire [39:0] L_move_out53;
wire [39:0] R_move_out53;
wire [39:0] DL_move_out53;
wire [39:0] DR_move_out53;
wire [39:0] UL_move_out53;
wire [39:0] UR_move_out53;
wire [39:0] D_move_out54;
wire [39:0] U_move_out54;
wire [39:0] L_move_out54;
wire [39:0] R_move_out54;
wire [39:0] DL_move_out54;
wire [39:0] DR_move_out54;
wire [39:0] UL_move_out54;
wire [39:0] UR_move_out54;
wire [39:0] D_move_out63;
wire [39:0] R_move_out63;
wire [39:0] DR_move_out63;
wire [39:0] D_move_out56;
wire [39:0] L_move_out56;
wire [39:0] DL_move_out56;
wire [39:0] U_move_out0;
wire [39:0] L_move_out0;
wire [39:0] UL_move_out0;
wire [39:0] U_move_out7;
wire [39:0] R_move_out7;
wire [39:0] UR_move_out7;
wire [39:0] U_move_out1;
wire [39:0] L_move_out1;
wire [39:0] R_move_out1;
wire [39:0] UL_move_out1;
wire [39:0] UR_move_out1;
wire [39:0] U_move_out2;
wire [39:0] L_move_out2;
wire [39:0] R_move_out2;
wire [39:0] UL_move_out2;
wire [39:0] UR_move_out2;
wire [39:0] U_move_out3;
wire [39:0] L_move_out3;
wire [39:0] R_move_out3;
wire [39:0] UL_move_out3;
wire [39:0] UR_move_out3;
wire [39:0] U_move_out4;
wire [39:0] L_move_out4;
wire [39:0] R_move_out4;
wire [39:0] UL_move_out4;
wire [39:0] UR_move_out4;
wire [39:0] U_move_out5;
wire [39:0] L_move_out5;
wire [39:0] R_move_out5;
wire [39:0] UL_move_out5;
wire [39:0] UR_move_out5;
wire [39:0] U_move_out6;
wire [39:0] L_move_out6;
wire [39:0] R_move_out6;
wire [39:0] UL_move_out6;
wire [39:0] UR_move_out6;
wire [39:0] D_move_out8;
wire [39:0] U_move_out8;
wire [39:0] L_move_out8;
wire [39:0] DL_move_out8;
wire [39:0] UL_move_out8;
wire [39:0] D_move_out16;
wire [39:0] U_move_out16;
wire [39:0] L_move_out16;
wire [39:0] DL_move_out16;
wire [39:0] UL_move_out16;
wire [39:0] D_move_out24;
wire [39:0] U_move_out24;
wire [39:0] L_move_out24;
wire [39:0] DL_move_out24;
wire [39:0] UL_move_out24;
wire [39:0] D_move_out32;
wire [39:0] U_move_out32;
wire [39:0] L_move_out32;
wire [39:0] DL_move_out32;
wire [39:0] UL_move_out32;
wire [39:0] D_move_out40;
wire [39:0] U_move_out40;
wire [39:0] L_move_out40;
wire [39:0] DL_move_out40;
wire [39:0] UL_move_out40;
wire [39:0] D_move_out48;
wire [39:0] U_move_out48;
wire [39:0] L_move_out48;
wire [39:0] DL_move_out48;
wire [39:0] UL_move_out48;
wire [39:0] D_move_out15;
wire [39:0] U_move_out15;
wire [39:0] R_move_out15;
wire [39:0] DR_move_out15;
wire [39:0] UR_move_out15;
wire [39:0] D_move_out23;
wire [39:0] U_move_out23;
wire [39:0] R_move_out23;
wire [39:0] DR_move_out23;
wire [39:0] UR_move_out23;
wire [39:0] D_move_out31;
wire [39:0] U_move_out31;
wire [39:0] R_move_out31;
wire [39:0] DR_move_out31;
wire [39:0] UR_move_out31;
wire [39:0] D_move_out39;
wire [39:0] U_move_out39;
wire [39:0] R_move_out39;
wire [39:0] DR_move_out39;
wire [39:0] UR_move_out39;
wire [39:0] D_move_out47;
wire [39:0] U_move_out47;
wire [39:0] R_move_out47;
wire [39:0] DR_move_out47;
wire [39:0] UR_move_out47;
wire [39:0] D_move_out55;
wire [39:0] U_move_out55;
wire [39:0] R_move_out55;
wire [39:0] DR_move_out55;
wire [39:0] UR_move_out55;
wire [39:0] D_move_out57;
wire [39:0] L_move_out57;
wire [39:0] R_move_out57;
wire [39:0] DL_move_out57;
wire [39:0] DR_move_out57;
wire [39:0] D_move_out58;
wire [39:0] L_move_out58;
wire [39:0] R_move_out58;
wire [39:0] DL_move_out58;
wire [39:0] DR_move_out58;
wire [39:0] D_move_out59;
wire [39:0] L_move_out59;
wire [39:0] R_move_out59;
wire [39:0] DL_move_out59;
wire [39:0] DR_move_out59;
wire [39:0] D_move_out60;
wire [39:0] L_move_out60;
wire [39:0] R_move_out60;
wire [39:0] DL_move_out60;
wire [39:0] DR_move_out60;
wire [39:0] D_move_out61;
wire [39:0] L_move_out61;
wire [39:0] R_move_out61;
wire [39:0] DL_move_out61;
wire [39:0] DR_move_out61;
wire [39:0] D_move_out62;
wire [39:0] L_move_out62;
wire [39:0] R_move_out62;
wire [39:0] DL_move_out62;
wire [39:0] DR_move_out62;
wire [39:0] LLU_move_out50;
wire [39:0] RRU_move_out50;
wire [39:0] DDL_move_out50;
wire [39:0] DDR_move_out50;
wire [39:0] LLD_move_out50;
wire [39:0] RRD_move_out50;
wire [39:0] LLU_move_out51;
wire [39:0] RRU_move_out51;
wire [39:0] DDL_move_out51;
wire [39:0] DDR_move_out51;
wire [39:0] LLD_move_out51;
wire [39:0] RRD_move_out51;
wire [39:0] LLU_move_out52;
wire [39:0] RRU_move_out52;
wire [39:0] DDL_move_out52;
wire [39:0] DDR_move_out52;
wire [39:0] LLD_move_out52;
wire [39:0] RRD_move_out52;
wire [39:0] LLU_move_out53;
wire [39:0] RRU_move_out53;
wire [39:0] DDL_move_out53;
wire [39:0] DDR_move_out53;
wire [39:0] LLD_move_out53;
wire [39:0] RRD_move_out53;
wire [39:0] UUL_move_out17;
wire [39:0] LLU_move_out17;
wire [39:0] DDL_move_out17;
wire [39:0] LLD_move_out17;
wire [39:0] UUL_move_out25;
wire [39:0] LLU_move_out25;
wire [39:0] DDL_move_out25;
wire [39:0] LLD_move_out25;
wire [39:0] UUL_move_out33;
wire [39:0] LLU_move_out33;
wire [39:0] DDL_move_out33;
wire [39:0] LLD_move_out33;
wire [39:0] UUL_move_out41;
wire [39:0] LLU_move_out41;
wire [39:0] DDL_move_out41;
wire [39:0] LLD_move_out41;
wire [39:0] UUL_move_out22;
wire [39:0] UUR_move_out22;
wire [39:0] RRU_move_out22;
wire [39:0] DDL_move_out22;
wire [39:0] DDR_move_out22;
wire [39:0] RRD_move_out22;
wire [39:0] UUL_move_out30;
wire [39:0] UUR_move_out30;
wire [39:0] RRU_move_out30;
wire [39:0] DDL_move_out30;
wire [39:0] DDR_move_out30;
wire [39:0] RRD_move_out30;
wire [39:0] UUL_move_out38;
wire [39:0] UUR_move_out38;
wire [39:0] RRU_move_out38;
wire [39:0] DDL_move_out38;
wire [39:0] DDR_move_out38;
wire [39:0] RRD_move_out38;
wire [39:0] UUL_move_out46;
wire [39:0] UUR_move_out46;
wire [39:0] RRU_move_out46;
wire [39:0] DDL_move_out46;
wire [39:0] DDR_move_out46;
wire [39:0] RRD_move_out46;
wire [39:0] UUL_move_out10;
wire [39:0] UUR_move_out10;
wire [39:0] LLU_move_out10;
wire [39:0] RRU_move_out10;
wire [39:0] LLD_move_out10;
wire [39:0] RRD_move_out10;
wire [39:0] UUL_move_out11;
wire [39:0] UUR_move_out11;
wire [39:0] LLU_move_out11;
wire [39:0] RRU_move_out11;
wire [39:0] LLD_move_out11;
wire [39:0] RRD_move_out11;
wire [39:0] UUL_move_out12;
wire [39:0] UUR_move_out12;
wire [39:0] LLU_move_out12;
wire [39:0] RRU_move_out12;
wire [39:0] LLD_move_out12;
wire [39:0] RRD_move_out12;
wire [39:0] UUL_move_out13;
wire [39:0] UUR_move_out13;
wire [39:0] LLU_move_out13;
wire [39:0] RRU_move_out13;
wire [39:0] LLD_move_out13;
wire [39:0] RRD_move_out13;
wire [39:0] UUR_move_out23;
wire [39:0] RRU_move_out23;
wire [39:0] DDR_move_out23;
wire [39:0] RRD_move_out23;
wire [39:0] UUR_move_out31;
wire [39:0] RRU_move_out31;
wire [39:0] DDR_move_out31;
wire [39:0] RRD_move_out31;
wire [39:0] UUR_move_out39;
wire [39:0] RRU_move_out39;
wire [39:0] DDR_move_out39;
wire [39:0] RRD_move_out39;
wire [39:0] UUR_move_out47;
wire [39:0] RRU_move_out47;
wire [39:0] DDR_move_out47;
wire [39:0] RRD_move_out47;
wire [39:0] UUL_move_out18;
wire [39:0] UUR_move_out18;
wire [39:0] LLU_move_out18;
wire [39:0] RRU_move_out18;
wire [39:0] DDL_move_out18;
wire [39:0] DDR_move_out18;
wire [39:0] LLD_move_out18;
wire [39:0] RRD_move_out18;
wire [39:0] UUL_move_out19;
wire [39:0] UUR_move_out19;
wire [39:0] LLU_move_out19;
wire [39:0] RRU_move_out19;
wire [39:0] DDL_move_out19;
wire [39:0] DDR_move_out19;
wire [39:0] LLD_move_out19;
wire [39:0] RRD_move_out19;
wire [39:0] UUL_move_out20;
wire [39:0] UUR_move_out20;
wire [39:0] LLU_move_out20;
wire [39:0] RRU_move_out20;
wire [39:0] DDL_move_out20;
wire [39:0] DDR_move_out20;
wire [39:0] LLD_move_out20;
wire [39:0] RRD_move_out20;
wire [39:0] UUL_move_out21;
wire [39:0] UUR_move_out21;
wire [39:0] LLU_move_out21;
wire [39:0] RRU_move_out21;
wire [39:0] DDL_move_out21;
wire [39:0] DDR_move_out21;
wire [39:0] LLD_move_out21;
wire [39:0] RRD_move_out21;
wire [39:0] UUL_move_out26;
wire [39:0] UUR_move_out26;
wire [39:0] LLU_move_out26;
wire [39:0] RRU_move_out26;
wire [39:0] DDL_move_out26;
wire [39:0] DDR_move_out26;
wire [39:0] LLD_move_out26;
wire [39:0] RRD_move_out26;
wire [39:0] UUL_move_out27;
wire [39:0] UUR_move_out27;
wire [39:0] LLU_move_out27;
wire [39:0] RRU_move_out27;
wire [39:0] DDL_move_out27;
wire [39:0] DDR_move_out27;
wire [39:0] LLD_move_out27;
wire [39:0] RRD_move_out27;
wire [39:0] UUL_move_out28;
wire [39:0] UUR_move_out28;
wire [39:0] LLU_move_out28;
wire [39:0] RRU_move_out28;
wire [39:0] DDL_move_out28;
wire [39:0] DDR_move_out28;
wire [39:0] LLD_move_out28;
wire [39:0] RRD_move_out28;
wire [39:0] UUL_move_out29;
wire [39:0] UUR_move_out29;
wire [39:0] LLU_move_out29;
wire [39:0] RRU_move_out29;
wire [39:0] DDL_move_out29;
wire [39:0] DDR_move_out29;
wire [39:0] LLD_move_out29;
wire [39:0] RRD_move_out29;
wire [39:0] UUL_move_out34;
wire [39:0] UUR_move_out34;
wire [39:0] LLU_move_out34;
wire [39:0] RRU_move_out34;
wire [39:0] DDL_move_out34;
wire [39:0] DDR_move_out34;
wire [39:0] LLD_move_out34;
wire [39:0] RRD_move_out34;
wire [39:0] UUL_move_out35;
wire [39:0] UUR_move_out35;
wire [39:0] LLU_move_out35;
wire [39:0] RRU_move_out35;
wire [39:0] DDL_move_out35;
wire [39:0] DDR_move_out35;
wire [39:0] LLD_move_out35;
wire [39:0] RRD_move_out35;
wire [39:0] UUL_move_out36;
wire [39:0] UUR_move_out36;
wire [39:0] LLU_move_out36;
wire [39:0] RRU_move_out36;
wire [39:0] DDL_move_out36;
wire [39:0] DDR_move_out36;
wire [39:0] LLD_move_out36;
wire [39:0] RRD_move_out36;
wire [39:0] UUL_move_out37;
wire [39:0] UUR_move_out37;
wire [39:0] LLU_move_out37;
wire [39:0] RRU_move_out37;
wire [39:0] DDL_move_out37;
wire [39:0] DDR_move_out37;
wire [39:0] LLD_move_out37;
wire [39:0] RRD_move_out37;
wire [39:0] UUL_move_out42;
wire [39:0] UUR_move_out42;
wire [39:0] LLU_move_out42;
wire [39:0] RRU_move_out42;
wire [39:0] DDL_move_out42;
wire [39:0] DDR_move_out42;
wire [39:0] LLD_move_out42;
wire [39:0] RRD_move_out42;
wire [39:0] UUL_move_out43;
wire [39:0] UUR_move_out43;
wire [39:0] LLU_move_out43;
wire [39:0] RRU_move_out43;
wire [39:0] DDL_move_out43;
wire [39:0] DDR_move_out43;
wire [39:0] LLD_move_out43;
wire [39:0] RRD_move_out43;
wire [39:0] UUL_move_out44;
wire [39:0] UUR_move_out44;
wire [39:0] LLU_move_out44;
wire [39:0] RRU_move_out44;
wire [39:0] DDL_move_out44;
wire [39:0] DDR_move_out44;
wire [39:0] LLD_move_out44;
wire [39:0] RRD_move_out44;
wire [39:0] UUL_move_out45;
wire [39:0] UUR_move_out45;
wire [39:0] LLU_move_out45;
wire [39:0] RRU_move_out45;
wire [39:0] DDL_move_out45;
wire [39:0] DDR_move_out45;
wire [39:0] LLD_move_out45;
wire [39:0] RRD_move_out45;
wire [39:0] DDR_move_out63;
wire [39:0] RRD_move_out63;
wire [39:0] DDL_move_out56;
wire [39:0] LLD_move_out56;
wire [39:0] UUR_move_out7;
wire [39:0] RRU_move_out7;
wire [39:0] UUL_move_out0;
wire [39:0] LLU_move_out0;
wire [39:0] UUL_move_out2;
wire [39:0] UUR_move_out2;
wire [39:0] LLU_move_out2;
wire [39:0] RRU_move_out2;
wire [39:0] UUL_move_out3;
wire [39:0] UUR_move_out3;
wire [39:0] LLU_move_out3;
wire [39:0] RRU_move_out3;
wire [39:0] UUL_move_out4;
wire [39:0] UUR_move_out4;
wire [39:0] LLU_move_out4;
wire [39:0] RRU_move_out4;
wire [39:0] UUL_move_out5;
wire [39:0] UUR_move_out5;
wire [39:0] LLU_move_out5;
wire [39:0] RRU_move_out5;
wire [39:0] UUL_move_out16;
wire [39:0] LLU_move_out16;
wire [39:0] DDL_move_out16;
wire [39:0] LLD_move_out16;
wire [39:0] UUL_move_out24;
wire [39:0] LLU_move_out24;
wire [39:0] DDL_move_out24;
wire [39:0] LLD_move_out24;
wire [39:0] UUL_move_out32;
wire [39:0] LLU_move_out32;
wire [39:0] DDL_move_out32;
wire [39:0] LLD_move_out32;
wire [39:0] UUL_move_out40;
wire [39:0] LLU_move_out40;
wire [39:0] DDL_move_out40;
wire [39:0] LLD_move_out40;
wire [39:0] DDL_move_out58;
wire [39:0] DDR_move_out58;
wire [39:0] LLD_move_out58;
wire [39:0] RRD_move_out58;
wire [39:0] DDL_move_out59;
wire [39:0] DDR_move_out59;
wire [39:0] LLD_move_out59;
wire [39:0] RRD_move_out59;
wire [39:0] DDL_move_out60;
wire [39:0] DDR_move_out60;
wire [39:0] LLD_move_out60;
wire [39:0] RRD_move_out60;
wire [39:0] DDL_move_out61;
wire [39:0] DDR_move_out61;
wire [39:0] LLD_move_out61;
wire [39:0] RRD_move_out61;
wire [39:0] DDL_move_out57;
wire [39:0] DDR_move_out57;
wire [39:0] LLD_move_out57;
wire [39:0] DDL_move_out62;
wire [39:0] DDR_move_out62;
wire [39:0] RRD_move_out62;
wire [39:0] LLU_move_out48;
wire [39:0] DDL_move_out48;
wire [39:0] LLD_move_out48;
wire [39:0] LLU_move_out49;
wire [39:0] DDL_move_out49;
wire [39:0] DDR_move_out49;
wire [39:0] LLD_move_out49;
wire [39:0] RRU_move_out54;
wire [39:0] DDL_move_out54;
wire [39:0] DDR_move_out54;
wire [39:0] RRD_move_out54;
wire [39:0] RRU_move_out55;
wire [39:0] DDR_move_out55;
wire [39:0] RRD_move_out55;
wire [39:0] UUL_move_out8;
wire [39:0] LLU_move_out8;
wire [39:0] LLD_move_out8;
wire [39:0] UUL_move_out9;
wire [39:0] UUR_move_out9;
wire [39:0] LLU_move_out9;
wire [39:0] LLD_move_out9;
wire [39:0] UUL_move_out14;
wire [39:0] UUR_move_out14;
wire [39:0] RRU_move_out14;
wire [39:0] RRD_move_out14;
wire [39:0] UUR_move_out15;
wire [39:0] RRU_move_out15;
wire [39:0] RRD_move_out15;
wire [39:0] UUL_move_out1;
wire [39:0] UUR_move_out1;
wire [39:0] LLU_move_out1;
wire [39:0] UUL_move_out6;
wire [39:0] UUR_move_out6;
wire [39:0] RRU_move_out6;


chessBoard board(
.clk(clk),.engineColor(engineColor),.enable(enable),.clear(clear),
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
enable = 1'b1;
clear = 1'b0;

engineColor = BLACK;

pieceReg0 = 6'b000000;
pieceReg1 = 6'b000000;
pieceReg2 = 6'b000000;
pieceReg3 = {WHITE, KING_PIECE};
pieceReg4 = 6'b000000;
pieceReg5 = 6'b000000;
pieceReg6 = 6'b000000;
pieceReg7 = {BLACK, BISHOP_PIECE};
pieceReg8 = 6'b000000;
pieceReg9 = 6'b000000;
pieceReg10 = 6'b000000;
pieceReg11 = 6'b000000;
pieceReg12 = 6'b000000;
pieceReg13 = 6'b000000;
pieceReg14 = 6'b000000;
pieceReg15 = 6'b000000;
pieceReg16 = 6'b000000;
pieceReg17 = 6'b000000;
pieceReg18 = 6'b000000;
pieceReg19 = 6'b000000;
pieceReg20 = 6'b000000;
pieceReg21 = 6'b000000;
pieceReg22 = 6'b000000;
pieceReg23 = 6'b000000;
pieceReg24 = 6'b000000;
pieceReg25 = 6'b000000;
pieceReg26 = 6'b000000;
pieceReg27 = {WHITE, KNIGHT_PIECE};
pieceReg28 = 6'b000000;
pieceReg29 = 6'b000000;
pieceReg30 = 6'b000000;
pieceReg31 = 6'b000000;
pieceReg32 = 6'b000000;
pieceReg33 = {BLACK, BISHOP_PIECE};
pieceReg34 = 6'b000000;
pieceReg35 = 6'b000000;
pieceReg36 = 6'b000000;
pieceReg37 = 6'b000000;
pieceReg38 = 6'b000000;
pieceReg39 = 6'b000000;
pieceReg40 = 6'b000000;
pieceReg41 = 6'b000000;
pieceReg42 = 6'b000000;
pieceReg43 = 6'b000000;
pieceReg44 = 6'b000000;
pieceReg45 = 6'b000000;
pieceReg46 = 6'b000000;
pieceReg47 = 6'b000000;
pieceReg48 = 6'b000000;
pieceReg49 = 6'b000000;
pieceReg50 = 6'b000000;
pieceReg51 = 6'b000000;
pieceReg52 = 6'b000000;
pieceReg53 = 6'b000000;
pieceReg54 = 6'b000000;
pieceReg55 = {WHITE, QUEEN_PIECE};
pieceReg56 = 6'b000000;
pieceReg57 = 6'b000000;
pieceReg58 = 6'b000000;
pieceReg59 = {BLACK, KING_PIECE};
pieceReg60 = 6'b000000;
pieceReg61 = 6'b000000;
pieceReg62 = 6'b000000;
pieceReg63 = 6'b000000;

#200;
//check castling
$display(" L Move wire (40 bits) for SQUARE 1:");
	$display("Castling: %b Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",L_move_out1[35:32],L_move_out1[29:24],L_move_out1[21:16],L_move_out1[13:8],L_move_out1[5:0]);
	
$display(" R Move wire (40 bits) for SQUARE 5:");
	$display("Castling: %b Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",R_move_out5[35:32],R_move_out5[29:24],R_move_out5[21:16],R_move_out5[13:8],R_move_out5[5:0]);
	
	
$display(" L Move wire (40 bits) for SQUARE 57:");
	$display("Castling: %b Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",L_move_out57[35:32],L_move_out57[29:24],L_move_out57[21:16],L_move_out57[13:8],L_move_out57[5:0]);
	
$display(" R Move wire (40 bits) for SQUARE 61:");
	$display("Castling: %b Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",R_move_out61[35:32],R_move_out61[29:24],R_move_out61[21:16],R_move_out61[13:8],R_move_out61[5:0]);
	
	
	
$display(" DL Move wire (40 bits) for SQUARE 14:");
	$display("Castling: %b Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",DL_move_out14[35:32],DL_move_out14[29:24],DL_move_out14[21:16],DL_move_out14[13:8],DL_move_out14[5:0]);
	
	$display(" DL Move wire (32 bits) for SQUARE 21:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",DL_move_out21[29:24],DL_move_out21[21:16],DL_move_out21[13:8],DL_move_out21[5:0]);
	
	$display(" DL Move wire (32 bits) for SQUARE 28:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",DL_move_out28[29:24],DL_move_out28[21:16],DL_move_out28[13:8],DL_move_out28[5:0]);
	
	$display(" DL Move wire (32 bits) for SQUARE 35:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",DL_move_out35[29:24],DL_move_out35[21:16],DL_move_out35[13:8],DL_move_out35[5:0]);
	
	$display(" DL Move wire (32 bits) for SQUARE 42:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",DL_move_out42[29:24],DL_move_out42[21:16],DL_move_out42[13:8],DL_move_out42[5:0]);
	
	$display(" DL Move wire (32 bits) for SQUARE 49:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",DL_move_out49[29:24],DL_move_out49[21:16],DL_move_out49[13:8],DL_move_out49[5:0]);
	
	$display(" DL Move wire (32 bits) for SQUARE 56:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",DL_move_out56[29:24],DL_move_out56[21:16],DL_move_out56[13:8],DL_move_out56[5:0]);
	
	
	
	
	$display(" DDR Move wire (32 bits) for SQUARE 44:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",DDR_move_out44[29:24],DDR_move_out44[21:16],DDR_move_out44[13:8],DDR_move_out44[5:0]);
	
	$display(" DDL Move wire (32 bits) for SQUARE 42:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",DDL_move_out42[29:24],DDL_move_out42[21:16],DDL_move_out42[13:8],DDL_move_out42[5:0]);
	
	$display(" RRD Move wire (32 bits) for SQUARE 37:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",RRD_move_out37[29:24],RRD_move_out37[21:16],RRD_move_out37[13:8],RRD_move_out37[5:0]);
	
	$display(" LLD Move wire (32 bits) for SQUARE 33:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",LLD_move_out33[29:24],LLD_move_out33[21:16],LLD_move_out33[13:8],LLD_move_out33[5:0]);
	
	$display(" UUL Move wire (32 bits) for SQUARE 10:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",UUL_move_out10[29:24],UUL_move_out10[21:16],UUL_move_out10[13:8],UUL_move_out10[5:0]);
	
	$display(" RRU Move wire (32 bits) for SQUARE 21:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",RRU_move_out21[29:24],RRU_move_out21[21:16],RRU_move_out21[13:8],RRU_move_out21[5:0]);
	
	$display(" LLU Move wire (32 bits) for SQUARE 17:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",LLU_move_out17[29:24],LLU_move_out17[21:16],LLU_move_out17[13:8],LLU_move_out17[5:0]);
	
	
	pieceReg7 = {WHITE, PAWN_PIECE};
	
	#200;
	
	$display(" D Move wire (32 bits) for SQUARE 15:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",D_move_out15[29:24],D_move_out15[21:16],D_move_out15[13:8],D_move_out15[5:0]);
	
	$display(" D Move wire (32 bits) for SQUARE 23:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",D_move_out23[29:24],D_move_out23[21:16],D_move_out23[13:8],D_move_out23[5:0]);
	
	$display(" D Move wire (32 bits) for SQUARE 31:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",D_move_out31[29:24],D_move_out31[21:16],D_move_out31[13:8],D_move_out31[5:0]);
	
	$display(" D Move wire (32 bits) for SQUARE 39:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",D_move_out39[29:24],D_move_out39[21:16],D_move_out39[13:8],D_move_out39[5:0]);
	
	$display(" D Move wire (32 bits) for SQUARE 47:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",D_move_out47[29:24],D_move_out47[21:16],D_move_out47[13:8],D_move_out47[5:0]);
	
	$display(" D Move wire (32 bits) for SQUARE 55:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",D_move_out55[29:24],D_move_out55[21:16],D_move_out55[13:8],D_move_out55[5:0]);
	
	$display(" D Move wire (32 bits) for SQUARE 65:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",D_move_out63[29:24],D_move_out63[21:16],D_move_out63[13:8],D_move_out63[5:0]);
	
	
	#200;
	
	

end

always begin
	#10;
	clk = ~clk;

end

endmodule
