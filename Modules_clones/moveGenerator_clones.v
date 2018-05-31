module moveGenerator
(
input clk,
input engineColor,
input [3:0] castlingFlags,

input [63:0] initialPosition,
input [63:0] movedPosition,
input color_type, //1 is white, 0 is black
input [5:0] movingPiece,//000001: pawn, 000010: rook, 000100: knight , 001000: bishop, 010000: queen, 100000: king
input [5:0] capturedPiece,//000001: pawn, 000010: rook, 000100: knight , 001000: bishop, 010000: queen, 100000: king
input [1:0] castling, //00: no castling 01: Queens side 10: King Side
input [4:0] enpassant,//00001: no enpassant, 00010:UL, 00100: UR , 01000: DL,10000:DR 
input undo,

//control in
input update,
input gen,
input reset,


//Move Gen out

output [31:0] out1,
output [31:0] out2,
output [31:0] out3,
output [31:0] out4,
output [9:0] move_counter_out,
output done, // need to be set to wire
//another done signal for the serializer

//Control out
output software_stop
);
//Control Wire
wire init_wire;
//
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
wire [31:0] UUR_move_out17;
wire [31:0] DDR_move_out17;
wire [31:0] UUR_move_out25;
wire [31:0] DDR_move_out25;
wire [31:0] UUR_move_out33;
wire [31:0] DDR_move_out33;
wire [31:0] UUR_move_out41;
wire [31:0] DDR_move_out41;

wire [63:0] enable_out;

wire [5:0] pieceReg0_out;
wire [5:0] pieceReg1_out;
wire [5:0] pieceReg2_out;
wire [5:0] pieceReg3_out;
wire [5:0] pieceReg4_out;
wire [5:0] pieceReg5_out;
wire [5:0] pieceReg6_out;
wire [5:0] pieceReg7_out;
wire [5:0] pieceReg8_out;
wire [5:0] pieceReg9_out;
wire [5:0] pieceReg10_out;
wire [5:0] pieceReg11_out;
wire [5:0] pieceReg12_out;
wire [5:0] pieceReg13_out;
wire [5:0] pieceReg14_out;
wire [5:0] pieceReg15_out;
wire [5:0] pieceReg16_out;
wire [5:0] pieceReg17_out;
wire [5:0] pieceReg18_out;
wire [5:0] pieceReg19_out;
wire [5:0] pieceReg20_out;
wire [5:0] pieceReg21_out;
wire [5:0] pieceReg22_out;
wire [5:0] pieceReg23_out;
wire [5:0] pieceReg24_out;
wire [5:0] pieceReg25_out;
wire [5:0] pieceReg26_out;
wire [5:0] pieceReg27_out;
wire [5:0] pieceReg28_out;
wire [5:0] pieceReg29_out;
wire [5:0] pieceReg30_out;
wire [5:0] pieceReg31_out;
wire [5:0] pieceReg32_out;
wire [5:0] pieceReg33_out;
wire [5:0] pieceReg34_out;
wire [5:0] pieceReg35_out;
wire [5:0] pieceReg36_out;
wire [5:0] pieceReg37_out;
wire [5:0] pieceReg38_out;
wire [5:0] pieceReg39_out;
wire [5:0] pieceReg40_out;
wire [5:0] pieceReg41_out;
wire [5:0] pieceReg42_out;
wire [5:0] pieceReg43_out;
wire [5:0] pieceReg44_out;
wire [5:0] pieceReg45_out;
wire [5:0] pieceReg46_out;
wire [5:0] pieceReg47_out;
wire [5:0] pieceReg48_out;
wire [5:0] pieceReg49_out;
wire [5:0] pieceReg50_out;
wire [5:0] pieceReg51_out;
wire [5:0] pieceReg52_out;
wire [5:0] pieceReg53_out;
wire [5:0] pieceReg54_out;
wire [5:0] pieceReg55_out;
wire [5:0] pieceReg56_out;
wire [5:0] pieceReg57_out;
wire [5:0] pieceReg58_out;
wire [5:0] pieceReg59_out;
wire [5:0] pieceReg60_out;
wire [5:0] pieceReg61_out;
wire [5:0] pieceReg62_out;
wire [5:0] pieceReg63_out;


control_block control(.clk(clk),
 .gen(gen),
 .update(update), 
 .reset(reset),
 .software_stop(software_stop),
 .init(init_wire));
 
serializer sr(.clk(clk),
 .load(load),
 .in({D_move_out9,
U_move_out9,
L_move_out9,
R_move_out9,
DL_move_out9,
DR_move_out9,
UL_move_out9,
UR_move_out9,
D_move_out10,
U_move_out10,
L_move_out10,
R_move_out10,
DL_move_out10,
DR_move_out10,
UL_move_out10,
UR_move_out10,
D_move_out11,
U_move_out11,
L_move_out11,
R_move_out11,
DL_move_out11,
DR_move_out11,
UL_move_out11,
UR_move_out11,
D_move_out12,
U_move_out12,
L_move_out12,
R_move_out12,
DL_move_out12,
DR_move_out12,
UL_move_out12,
UR_move_out12,
D_move_out13,
U_move_out13,
L_move_out13,
R_move_out13,
DL_move_out13,
DR_move_out13,
UL_move_out13,
UR_move_out13,
D_move_out14,
U_move_out14,
L_move_out14,
R_move_out14,
DL_move_out14,
DR_move_out14,
UL_move_out14,
UR_move_out14,
D_move_out17,
U_move_out17,
L_move_out17,
R_move_out17,
DL_move_out17,
DR_move_out17,
UL_move_out17,
UR_move_out17,
D_move_out18,
U_move_out18,
L_move_out18,
R_move_out18,
DL_move_out18,
DR_move_out18,
UL_move_out18,
UR_move_out18,
D_move_out19,
U_move_out19,
L_move_out19,
R_move_out19,
DL_move_out19,
DR_move_out19,
UL_move_out19,
UR_move_out19,
D_move_out20,
U_move_out20,
L_move_out20,
R_move_out20,
DL_move_out20,
DR_move_out20,
UL_move_out20,
UR_move_out20,
D_move_out21,
U_move_out21,
L_move_out21,
R_move_out21,
DL_move_out21,
DR_move_out21,
UL_move_out21,
UR_move_out21,
D_move_out22,
U_move_out22,
L_move_out22,
R_move_out22,
DL_move_out22,
DR_move_out22,
UL_move_out22,
UR_move_out22,
D_move_out25,
U_move_out25,
L_move_out25,
R_move_out25,
DL_move_out25,
DR_move_out25,
UL_move_out25,
UR_move_out25,
D_move_out26,
U_move_out26,
L_move_out26,
R_move_out26,
DL_move_out26,
DR_move_out26,
UL_move_out26,
UR_move_out26,
D_move_out27,
U_move_out27,
L_move_out27,
R_move_out27,
DL_move_out27,
DR_move_out27,
UL_move_out27,
UR_move_out27,
D_move_out28,
U_move_out28,
L_move_out28,
R_move_out28,
DL_move_out28,
DR_move_out28,
UL_move_out28,
UR_move_out28,
D_move_out29,
U_move_out29,
L_move_out29,
R_move_out29,
DL_move_out29,
DR_move_out29,
UL_move_out29,
UR_move_out29,
D_move_out30,
U_move_out30,
L_move_out30,
R_move_out30,
DL_move_out30,
DR_move_out30,
UL_move_out30,
UR_move_out30,
D_move_out33,
U_move_out33,
L_move_out33,
R_move_out33,
DL_move_out33,
DR_move_out33,
UL_move_out33,
UR_move_out33,
D_move_out34,
U_move_out34,
L_move_out34,
R_move_out34,
DL_move_out34,
DR_move_out34,
UL_move_out34,
UR_move_out34,
D_move_out35,
U_move_out35,
L_move_out35,
R_move_out35,
DL_move_out35,
DR_move_out35,
UL_move_out35,
UR_move_out35,
D_move_out36,
U_move_out36,
L_move_out36,
R_move_out36,
DL_move_out36,
DR_move_out36,
UL_move_out36,
UR_move_out36,
D_move_out37,
U_move_out37,
L_move_out37,
R_move_out37,
DL_move_out37,
DR_move_out37,
UL_move_out37,
UR_move_out37,
D_move_out38,
U_move_out38,
L_move_out38,
R_move_out38,
DL_move_out38,
DR_move_out38,
UL_move_out38,
UR_move_out38,
D_move_out41,
U_move_out41,
L_move_out41,
R_move_out41,
DL_move_out41,
DR_move_out41,
UL_move_out41,
UR_move_out41,
D_move_out42,
U_move_out42,
L_move_out42,
R_move_out42,
DL_move_out42,
DR_move_out42,
UL_move_out42,
UR_move_out42,
D_move_out43,
U_move_out43,
L_move_out43,
R_move_out43,
DL_move_out43,
DR_move_out43,
UL_move_out43,
UR_move_out43,
D_move_out44,
U_move_out44,
L_move_out44,
R_move_out44,
DL_move_out44,
DR_move_out44,
UL_move_out44,
UR_move_out44,
D_move_out45,
U_move_out45,
L_move_out45,
R_move_out45,
DL_move_out45,
DR_move_out45,
UL_move_out45,
UR_move_out45,
D_move_out46,
U_move_out46,
L_move_out46,
R_move_out46,
DL_move_out46,
DR_move_out46,
UL_move_out46,
UR_move_out46,
D_move_out49,
U_move_out49,
L_move_out49,
R_move_out49,
DL_move_out49,
DR_move_out49,
UL_move_out49,
UR_move_out49,
D_move_out50,
U_move_out50,
L_move_out50,
R_move_out50,
DL_move_out50,
DR_move_out50,
UL_move_out50,
UR_move_out50,
D_move_out51,
U_move_out51,
L_move_out51,
R_move_out51,
DL_move_out51,
DR_move_out51,
UL_move_out51,
UR_move_out51,
D_move_out52,
U_move_out52,
L_move_out52,
R_move_out52,
DL_move_out52,
DR_move_out52,
UL_move_out52,
UR_move_out52,
D_move_out53,
U_move_out53,
L_move_out53,
R_move_out53,
DL_move_out53,
DR_move_out53,
UL_move_out53,
UR_move_out53,
D_move_out54,
U_move_out54,
L_move_out54,
R_move_out54,
DL_move_out54,
DR_move_out54,
UL_move_out54,
UR_move_out54,
D_move_out63,
R_move_out63,
DR_move_out63,
D_move_out56,
L_move_out56,
DL_move_out56,
U_move_out0,
L_move_out0,
UL_move_out0,
U_move_out7,
R_move_out7,
UR_move_out7,
U_move_out1,
L_move_out1,
R_move_out1,
UL_move_out1,
UR_move_out1,
U_move_out2,
L_move_out2,
R_move_out2,
UL_move_out2,
UR_move_out2,
U_move_out3,
L_move_out3,
R_move_out3,
UL_move_out3,
UR_move_out3,
U_move_out4,
L_move_out4,
R_move_out4,
UL_move_out4,
UR_move_out4,
U_move_out5,
L_move_out5,
R_move_out5,
UL_move_out5,
UR_move_out5,
U_move_out6,
L_move_out6,
R_move_out6,
UL_move_out6,
UR_move_out6,
D_move_out8,
U_move_out8,
L_move_out8,
DL_move_out8,
UL_move_out8,
D_move_out16,
U_move_out16,
L_move_out16,
DL_move_out16,
UL_move_out16,
D_move_out24,
U_move_out24,
L_move_out24,
DL_move_out24,
UL_move_out24,
D_move_out32,
U_move_out32,
L_move_out32,
DL_move_out32,
UL_move_out32,
D_move_out40,
U_move_out40,
L_move_out40,
DL_move_out40,
UL_move_out40,
D_move_out48,
U_move_out48,
L_move_out48,
DL_move_out48,
UL_move_out48,
D_move_out15,
U_move_out15,
R_move_out15,
DR_move_out15,
UR_move_out15,
D_move_out23,
U_move_out23,
R_move_out23,
DR_move_out23,
UR_move_out23,
D_move_out31,
U_move_out31,
R_move_out31,
DR_move_out31,
UR_move_out31,
D_move_out39,
U_move_out39,
R_move_out39,
DR_move_out39,
UR_move_out39,
D_move_out47,
U_move_out47,
R_move_out47,
DR_move_out47,
UR_move_out47,
D_move_out55,
U_move_out55,
R_move_out55,
DR_move_out55,
UR_move_out55,
D_move_out57,
L_move_out57,
R_move_out57,
DL_move_out57,
DR_move_out57,
D_move_out58,
L_move_out58,
R_move_out58,
DL_move_out58,
DR_move_out58,
D_move_out59,
L_move_out59,
R_move_out59,
DL_move_out59,
DR_move_out59,
D_move_out60,
L_move_out60,
R_move_out60,
DL_move_out60,
DR_move_out60,
D_move_out61,
L_move_out61,
R_move_out61,
DL_move_out61,
DR_move_out61,
D_move_out62,
L_move_out62,
R_move_out62,
DL_move_out62,
DR_move_out62,
LLU_move_out50,
RRU_move_out50,
DDL_move_out50,
DDR_move_out50,
LLD_move_out50,
RRD_move_out50,
LLU_move_out51,
RRU_move_out51,
DDL_move_out51,
DDR_move_out51,
LLD_move_out51,
RRD_move_out51,
LLU_move_out52,
RRU_move_out52,
DDL_move_out52,
DDR_move_out52,
LLD_move_out52,
RRD_move_out52,
LLU_move_out53,
RRU_move_out53,
DDL_move_out53,
DDR_move_out53,
LLD_move_out53,
RRD_move_out53,
UUL_move_out17,
LLU_move_out17,
DDL_move_out17,
LLD_move_out17,
UUL_move_out25,
LLU_move_out25,
DDL_move_out25,
LLD_move_out25,
UUL_move_out33,
LLU_move_out33,
DDL_move_out33,
LLD_move_out33,
UUL_move_out41,
LLU_move_out41,
DDL_move_out41,
LLD_move_out41,
UUL_move_out22,
UUR_move_out22,
RRU_move_out22,
DDL_move_out22,
DDR_move_out22,
RRD_move_out22,
UUL_move_out30,
UUR_move_out30,
RRU_move_out30,
DDL_move_out30,
DDR_move_out30,
RRD_move_out30,
UUL_move_out38,
UUR_move_out38,
RRU_move_out38,
DDL_move_out38,
DDR_move_out38,
RRD_move_out38,
UUL_move_out46,
UUR_move_out46,
RRU_move_out46,
DDL_move_out46,
DDR_move_out46,
RRD_move_out46,
UUL_move_out10,
UUR_move_out10,
LLU_move_out10,
RRU_move_out10,
LLD_move_out10,
RRD_move_out10,
UUL_move_out11,
UUR_move_out11,
LLU_move_out11,
RRU_move_out11,
LLD_move_out11,
RRD_move_out11,
UUL_move_out12,
UUR_move_out12,
LLU_move_out12,
RRU_move_out12,
LLD_move_out12,
RRD_move_out12,
UUL_move_out13,
UUR_move_out13,
LLU_move_out13,
RRU_move_out13,
LLD_move_out13,
RRD_move_out13,
UUR_move_out23,
RRU_move_out23,
DDR_move_out23,
RRD_move_out23,
UUR_move_out31,
RRU_move_out31,
DDR_move_out31,
RRD_move_out31,
UUR_move_out39,
RRU_move_out39,
DDR_move_out39,
RRD_move_out39,
UUR_move_out47,
RRU_move_out47,
DDR_move_out47,
RRD_move_out47,
UUL_move_out18,
UUR_move_out18,
LLU_move_out18,
RRU_move_out18,
DDL_move_out18,
DDR_move_out18,
LLD_move_out18,
RRD_move_out18,
UUL_move_out19,
UUR_move_out19,
LLU_move_out19,
RRU_move_out19,
DDL_move_out19,
DDR_move_out19,
LLD_move_out19,
RRD_move_out19,
UUL_move_out20,
UUR_move_out20,
LLU_move_out20,
RRU_move_out20,
DDL_move_out20,
DDR_move_out20,
LLD_move_out20,
RRD_move_out20,
UUL_move_out21,
UUR_move_out21,
LLU_move_out21,
RRU_move_out21,
DDL_move_out21,
DDR_move_out21,
LLD_move_out21,
RRD_move_out21,
UUL_move_out26,
UUR_move_out26,
LLU_move_out26,
RRU_move_out26,
DDL_move_out26,
DDR_move_out26,
LLD_move_out26,
RRD_move_out26,
UUL_move_out27,
UUR_move_out27,
LLU_move_out27,
RRU_move_out27,
DDL_move_out27,
DDR_move_out27,
LLD_move_out27,
RRD_move_out27,
UUL_move_out28,
UUR_move_out28,
LLU_move_out28,
RRU_move_out28,
DDL_move_out28,
DDR_move_out28,
LLD_move_out28,
RRD_move_out28,
UUL_move_out29,
UUR_move_out29,
LLU_move_out29,
RRU_move_out29,
DDL_move_out29,
DDR_move_out29,
LLD_move_out29,
RRD_move_out29,
UUL_move_out34,
UUR_move_out34,
LLU_move_out34,
RRU_move_out34,
DDL_move_out34,
DDR_move_out34,
LLD_move_out34,
RRD_move_out34,
UUL_move_out35,
UUR_move_out35,
LLU_move_out35,
RRU_move_out35,
DDL_move_out35,
DDR_move_out35,
LLD_move_out35,
RRD_move_out35,
UUL_move_out36,
UUR_move_out36,
LLU_move_out36,
RRU_move_out36,
DDL_move_out36,
DDR_move_out36,
LLD_move_out36,
RRD_move_out36,
UUL_move_out37,
UUR_move_out37,
LLU_move_out37,
RRU_move_out37,
DDL_move_out37,
DDR_move_out37,
LLD_move_out37,
RRD_move_out37,
UUL_move_out42,
UUR_move_out42,
LLU_move_out42,
RRU_move_out42,
DDL_move_out42,
DDR_move_out42,
LLD_move_out42,
RRD_move_out42,
UUL_move_out43,
UUR_move_out43,
LLU_move_out43,
RRU_move_out43,
DDL_move_out43,
DDR_move_out43,
LLD_move_out43,
RRD_move_out43,
UUL_move_out44,
UUR_move_out44,
LLU_move_out44,
RRU_move_out44,
DDL_move_out44,
DDR_move_out44,
LLD_move_out44,
RRD_move_out44,
UUL_move_out45,
UUR_move_out45,
LLU_move_out45,
RRU_move_out45,
DDL_move_out45,
DDR_move_out45,
LLD_move_out45,
RRD_move_out45,
DDR_move_out63,
RRD_move_out63,
DDL_move_out56,
LLD_move_out56,
UUR_move_out7,
RRU_move_out7,
UUL_move_out0,
LLU_move_out0,
UUL_move_out2,
UUR_move_out2,
LLU_move_out2,
RRU_move_out2,
UUL_move_out3,
UUR_move_out3,
LLU_move_out3,
RRU_move_out3,
UUL_move_out4,
UUR_move_out4,
LLU_move_out4,
RRU_move_out4,
UUL_move_out5,
UUR_move_out5,
LLU_move_out5,
RRU_move_out5,
UUL_move_out16,
LLU_move_out16,
DDL_move_out16,
LLD_move_out16,
UUL_move_out24,
LLU_move_out24,
DDL_move_out24,
LLD_move_out24,
UUL_move_out32,
LLU_move_out32,
DDL_move_out32,
LLD_move_out32,
UUL_move_out40,
LLU_move_out40,
DDL_move_out40,
LLD_move_out40,
DDL_move_out58,
DDR_move_out58,
LLD_move_out58,
RRD_move_out58,
DDL_move_out59,
DDR_move_out59,
LLD_move_out59,
RRD_move_out59,
DDL_move_out60,
DDR_move_out60,
LLD_move_out60,
RRD_move_out60,
DDL_move_out61,
DDR_move_out61,
LLD_move_out61,
RRD_move_out61,
DDL_move_out57,
DDR_move_out57,
LLD_move_out57,
DDL_move_out62,
DDR_move_out62,
RRD_move_out62,
LLU_move_out48,
DDL_move_out48,
LLD_move_out48,
LLU_move_out49,
DDL_move_out49,
DDR_move_out49,
LLD_move_out49,
RRU_move_out54,
DDL_move_out54,
DDR_move_out54,
RRD_move_out54,
RRU_move_out55,
DDR_move_out55,
RRD_move_out55,
UUL_move_out8,
LLU_move_out8,
LLD_move_out8,
UUL_move_out9,
UUR_move_out9,
LLU_move_out9,
LLD_move_out9,
UUL_move_out14,
UUR_move_out14,
RRU_move_out14,
RRD_move_out14,
UUR_move_out15,
RRU_move_out15,
RRD_move_out15,
UUL_move_out1,
UUR_move_out1,
LLU_move_out1,
UUL_move_out6,
UUR_move_out6,
RRU_move_out6,
UUR_move_out17,
DDR_move_out17,
UUR_move_out25,
DDR_move_out25,
UUR_move_out33,
DDR_move_out33,
UUR_move_out41,
DDR_move_out41
} 
 ), //Concat
 .out1(out1),
 .out2(out2),
 .out3(out3),
 .out4(out4),
 .move_counter_out(move_counter_out),
 .done(done)
 );

board_updater_tester board_updater0
(
.clk(clk),
.init(init_wire),

.initialPosition(initialPosition),
.movedPosition(movedPosition),
.color_type(color_type),
.movingPiece(movingPiece),//000001: pawn, 000010: rook, 000100: knight , 001000: bishop, 010000: queen, 100000: king
.capturedPiece(capturedPiece),//000001: pawn, 000010: rook, 000100: knight , 001000: bishop, 010000: queen, 100000: king
.castling(castling), //00: no castling 01: Queens side 10: King Side
.enpassant(enpassant),//00001: no enpassant, 00010:UL, 00100: UR , 01000: DL,10000:DR 
.undo(undo),

.enable_out(enable_out),
.pieceReg0_out(pieceReg0_out),
.pieceReg1_out(pieceReg1_out),
.pieceReg2_out(pieceReg2_out),
.pieceReg3_out(pieceReg3_out),
.pieceReg4_out(pieceReg4_out),
.pieceReg5_out(pieceReg5_out),
.pieceReg6_out(pieceReg6_out),
.pieceReg7_out(pieceReg7_out),
.pieceReg8_out(pieceReg8_out),
.pieceReg9_out(pieceReg9_out),
.pieceReg10_out(pieceReg10_out),
.pieceReg11_out(pieceReg11_out),
.pieceReg12_out(pieceReg12_out),
.pieceReg13_out(pieceReg13_out),
.pieceReg14_out(pieceReg14_out),
.pieceReg15_out(pieceReg15_out),
.pieceReg16_out(pieceReg16_out),
.pieceReg17_out(pieceReg17_out),
.pieceReg18_out(pieceReg18_out),
.pieceReg19_out(pieceReg19_out),
.pieceReg20_out(pieceReg20_out),
.pieceReg21_out(pieceReg21_out),
.pieceReg22_out(pieceReg22_out),
.pieceReg23_out(pieceReg23_out),
.pieceReg24_out(pieceReg24_out),
.pieceReg25_out(pieceReg25_out),
.pieceReg26_out(pieceReg26_out),
.pieceReg27_out(pieceReg27_out),
.pieceReg28_out(pieceReg28_out),
.pieceReg29_out(pieceReg29_out),
.pieceReg30_out(pieceReg30_out),
.pieceReg31_out(pieceReg31_out),
.pieceReg32_out(pieceReg32_out),
.pieceReg33_out(pieceReg33_out),
.pieceReg34_out(pieceReg34_out),
.pieceReg35_out(pieceReg35_out),
.pieceReg36_out(pieceReg36_out),
.pieceReg37_out(pieceReg37_out),
.pieceReg38_out(pieceReg38_out),
.pieceReg39_out(pieceReg39_out),
.pieceReg40_out(pieceReg40_out),
.pieceReg41_out(pieceReg41_out),
.pieceReg42_out(pieceReg42_out),
.pieceReg43_out(pieceReg43_out),
.pieceReg44_out(pieceReg44_out),
.pieceReg45_out(pieceReg45_out),
.pieceReg46_out(pieceReg46_out),
.pieceReg47_out(pieceReg47_out),
.pieceReg48_out(pieceReg48_out),
.pieceReg49_out(pieceReg49_out),
.pieceReg50_out(pieceReg50_out),
.pieceReg51_out(pieceReg51_out),
.pieceReg52_out(pieceReg52_out),
.pieceReg53_out(pieceReg53_out),
.pieceReg54_out(pieceReg54_out),
.pieceReg55_out(pieceReg55_out),
.pieceReg56_out(pieceReg56_out),
.pieceReg57_out(pieceReg57_out),
.pieceReg58_out(pieceReg58_out),
.pieceReg59_out(pieceReg59_out),
.pieceReg60_out(pieceReg60_out),
.pieceReg61_out(pieceReg61_out),
.pieceReg62_out(pieceReg62_out),
.pieceReg63_out(pieceReg63_out)
);



chessBoard chessBoard0
(
.clk(clk),.engineColor(engineColor),.enable(enable_out), .castlingFlags(castlingFlags),
.pieceReg0(pieceReg0_out),
.pieceReg1(pieceReg1_out),
.pieceReg2(pieceReg2_out),
.pieceReg3(pieceReg3_out),
.pieceReg4(pieceReg4_out),
.pieceReg5(pieceReg5_out),
.pieceReg6(pieceReg6_out),
.pieceReg7(pieceReg7_out),
.pieceReg8(pieceReg8_out),
.pieceReg9(pieceReg9_out),
.pieceReg10(pieceReg10_out),
.pieceReg11(pieceReg11_out),
.pieceReg12(pieceReg12_out),
.pieceReg13(pieceReg13_out),
.pieceReg14(pieceReg14_out),
.pieceReg15(pieceReg15_out),
.pieceReg16(pieceReg16_out),
.pieceReg17(pieceReg17_out),
.pieceReg18(pieceReg18_out),
.pieceReg19(pieceReg19_out),
.pieceReg20(pieceReg20_out),
.pieceReg21(pieceReg21_out),
.pieceReg22(pieceReg22_out),
.pieceReg23(pieceReg23_out),
.pieceReg24(pieceReg24_out),
.pieceReg25(pieceReg25_out),
.pieceReg26(pieceReg26_out),
.pieceReg27(pieceReg27_out),
.pieceReg28(pieceReg28_out),
.pieceReg29(pieceReg29_out),
.pieceReg30(pieceReg30_out),
.pieceReg31(pieceReg31_out),
.pieceReg32(pieceReg32_out),
.pieceReg33(pieceReg33_out),
.pieceReg34(pieceReg34_out),
.pieceReg35(pieceReg35_out),
.pieceReg36(pieceReg36_out),
.pieceReg37(pieceReg37_out),
.pieceReg38(pieceReg38_out),
.pieceReg39(pieceReg39_out),
.pieceReg40(pieceReg40_out),
.pieceReg41(pieceReg41_out),
.pieceReg42(pieceReg42_out),
.pieceReg43(pieceReg43_out),
.pieceReg44(pieceReg44_out),
.pieceReg45(pieceReg45_out),
.pieceReg46(pieceReg46_out),
.pieceReg47(pieceReg47_out),
.pieceReg48(pieceReg48_out),
.pieceReg49(pieceReg49_out),
.pieceReg50(pieceReg50_out),
.pieceReg51(pieceReg51_out),
.pieceReg52(pieceReg52_out),
.pieceReg53(pieceReg53_out),
.pieceReg54(pieceReg54_out),
.pieceReg55(pieceReg55_out),
.pieceReg56(pieceReg56_out),
.pieceReg57(pieceReg57_out),
.pieceReg58(pieceReg58_out),
.pieceReg59(pieceReg59_out),
.pieceReg60(pieceReg60_out),
.pieceReg61(pieceReg61_out),
.pieceReg62(pieceReg62_out),
.pieceReg63(pieceReg63_out),

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
.RRU_move_out6(RRU_move_out6),
.UUR_move_out17(UUR_move_out17),
.DDR_move_out17(DDR_move_out17),
.UUR_move_out25(UUR_move_out25),
.DDR_move_out25(DDR_move_out25),
.UUR_move_out33(UUR_move_out33),
.DDR_move_out33(DDR_move_out33),
.UUR_move_out41(UUR_move_out41),
.DDR_move_out41(DDR_move_out41)

);





endmodule