
module chessBoard(

input clk,
input engineColor,
input [63:0] enable,
input clear,
input [3:0] castlingFlags,
input [5:0] pieceReg0,
input [5:0] pieceReg1,
input [5:0] pieceReg2,
input [5:0] pieceReg3,
input [5:0] pieceReg4,
input [5:0] pieceReg5,
input [5:0] pieceReg6,
input [5:0] pieceReg7,
input [5:0] pieceReg8,
input [5:0] pieceReg9,
input [5:0] pieceReg10,
input [5:0] pieceReg11,
input [5:0] pieceReg12,
input [5:0] pieceReg13,
input [5:0] pieceReg14,
input [5:0] pieceReg15,
input [5:0] pieceReg16,
input [5:0] pieceReg17,
input [5:0] pieceReg18,
input [5:0] pieceReg19,
input [5:0] pieceReg20,
input [5:0] pieceReg21,
input [5:0] pieceReg22,
input [5:0] pieceReg23,
input [5:0] pieceReg24,
input [5:0] pieceReg25,
input [5:0] pieceReg26,
input [5:0] pieceReg27,
input [5:0] pieceReg28,
input [5:0] pieceReg29,
input [5:0] pieceReg30,
input [5:0] pieceReg31,
input [5:0] pieceReg32,
input [5:0] pieceReg33,
input [5:0] pieceReg34,
input [5:0] pieceReg35,
input [5:0] pieceReg36,
input [5:0] pieceReg37,
input [5:0] pieceReg38,
input [5:0] pieceReg39,
input [5:0] pieceReg40,
input [5:0] pieceReg41,
input [5:0] pieceReg42,
input [5:0] pieceReg43,
input [5:0] pieceReg44,
input [5:0] pieceReg45,
input [5:0] pieceReg46,
input [5:0] pieceReg47,
input [5:0] pieceReg48,
input [5:0] pieceReg49,
input [5:0] pieceReg50,
input [5:0] pieceReg51,
input [5:0] pieceReg52,
input [5:0] pieceReg53,
input [5:0] pieceReg54,
input [5:0] pieceReg55,
input [5:0] pieceReg56,
input [5:0] pieceReg57,
input [5:0] pieceReg58,
input [5:0] pieceReg59,
input [5:0] pieceReg60,
input [5:0] pieceReg61,
input [5:0] pieceReg62,
input [5:0] pieceReg63,

output [31:0] D_move_out9,
output [31:0] U_move_out9,
output [31:0] L_move_out9,
output [31:0] R_move_out9,
output [31:0] DL_move_out9,
output [31:0] DR_move_out9,
output [31:0] UL_move_out9,
output [31:0] UR_move_out9,
output [31:0] D_move_out10,
output [31:0] U_move_out10,
output [31:0] L_move_out10,
output [31:0] R_move_out10,
output [31:0] DL_move_out10,
output [31:0] DR_move_out10,
output [31:0] UL_move_out10,
output [31:0] UR_move_out10,
output [31:0] D_move_out11,
output [31:0] U_move_out11,
output [31:0] L_move_out11,
output [31:0] R_move_out11,
output [31:0] DL_move_out11,
output [31:0] DR_move_out11,
output [31:0] UL_move_out11,
output [31:0] UR_move_out11,
output [31:0] D_move_out12,
output [31:0] U_move_out12,
output [31:0] L_move_out12,
output [31:0] R_move_out12,
output [31:0] DL_move_out12,
output [31:0] DR_move_out12,
output [31:0] UL_move_out12,
output [31:0] UR_move_out12,
output [31:0] D_move_out13,
output [31:0] U_move_out13,
output [31:0] L_move_out13,
output [31:0] R_move_out13,
output [31:0] DL_move_out13,
output [31:0] DR_move_out13,
output [31:0] UL_move_out13,
output [31:0] UR_move_out13,
output [31:0] D_move_out14,
output [31:0] U_move_out14,
output [31:0] L_move_out14,
output [31:0] R_move_out14,
output [31:0] DL_move_out14,
output [31:0] DR_move_out14,
output [31:0] UL_move_out14,
output [31:0] UR_move_out14,
output [31:0] D_move_out17,
output [31:0] U_move_out17,
output [31:0] L_move_out17,
output [31:0] R_move_out17,
output [31:0] DL_move_out17,
output [31:0] DR_move_out17,
output [31:0] UL_move_out17,
output [31:0] UR_move_out17,
output [31:0] D_move_out18,
output [31:0] U_move_out18,
output [31:0] L_move_out18,
output [31:0] R_move_out18,
output [31:0] DL_move_out18,
output [31:0] DR_move_out18,
output [31:0] UL_move_out18,
output [31:0] UR_move_out18,
output [31:0] D_move_out19,
output [31:0] U_move_out19,
output [31:0] L_move_out19,
output [31:0] R_move_out19,
output [31:0] DL_move_out19,
output [31:0] DR_move_out19,
output [31:0] UL_move_out19,
output [31:0] UR_move_out19,
output [31:0] D_move_out20,
output [31:0] U_move_out20,
output [31:0] L_move_out20,
output [31:0] R_move_out20,
output [31:0] DL_move_out20,
output [31:0] DR_move_out20,
output [31:0] UL_move_out20,
output [31:0] UR_move_out20,
output [31:0] D_move_out21,
output [31:0] U_move_out21,
output [31:0] L_move_out21,
output [31:0] R_move_out21,
output [31:0] DL_move_out21,
output [31:0] DR_move_out21,
output [31:0] UL_move_out21,
output [31:0] UR_move_out21,
output [31:0] D_move_out22,
output [31:0] U_move_out22,
output [31:0] L_move_out22,
output [31:0] R_move_out22,
output [31:0] DL_move_out22,
output [31:0] DR_move_out22,
output [31:0] UL_move_out22,
output [31:0] UR_move_out22,
output [31:0] D_move_out25,
output [31:0] U_move_out25,
output [31:0] L_move_out25,
output [31:0] R_move_out25,
output [31:0] DL_move_out25,
output [31:0] DR_move_out25,
output [31:0] UL_move_out25,
output [31:0] UR_move_out25,
output [31:0] D_move_out26,
output [31:0] U_move_out26,
output [31:0] L_move_out26,
output [31:0] R_move_out26,
output [31:0] DL_move_out26,
output [31:0] DR_move_out26,
output [31:0] UL_move_out26,
output [31:0] UR_move_out26,
output [31:0] D_move_out27,
output [31:0] U_move_out27,
output [31:0] L_move_out27,
output [31:0] R_move_out27,
output [31:0] DL_move_out27,
output [31:0] DR_move_out27,
output [31:0] UL_move_out27,
output [31:0] UR_move_out27,
output [31:0] D_move_out28,
output [31:0] U_move_out28,
output [31:0] L_move_out28,
output [31:0] R_move_out28,
output [31:0] DL_move_out28,
output [31:0] DR_move_out28,
output [31:0] UL_move_out28,
output [31:0] UR_move_out28,
output [31:0] D_move_out29,
output [31:0] U_move_out29,
output [31:0] L_move_out29,
output [31:0] R_move_out29,
output [31:0] DL_move_out29,
output [31:0] DR_move_out29,
output [31:0] UL_move_out29,
output [31:0] UR_move_out29,
output [31:0] D_move_out30,
output [31:0] U_move_out30,
output [31:0] L_move_out30,
output [31:0] R_move_out30,
output [31:0] DL_move_out30,
output [31:0] DR_move_out30,
output [31:0] UL_move_out30,
output [31:0] UR_move_out30,
output [31:0] D_move_out33,
output [31:0] U_move_out33,
output [31:0] L_move_out33,
output [31:0] R_move_out33,
output [31:0] DL_move_out33,
output [31:0] DR_move_out33,
output [31:0] UL_move_out33,
output [31:0] UR_move_out33,
output [31:0] D_move_out34,
output [31:0] U_move_out34,
output [31:0] L_move_out34,
output [31:0] R_move_out34,
output [31:0] DL_move_out34,
output [31:0] DR_move_out34,
output [31:0] UL_move_out34,
output [31:0] UR_move_out34,
output [31:0] D_move_out35,
output [31:0] U_move_out35,
output [31:0] L_move_out35,
output [31:0] R_move_out35,
output [31:0] DL_move_out35,
output [31:0] DR_move_out35,
output [31:0] UL_move_out35,
output [31:0] UR_move_out35,
output [31:0] D_move_out36,
output [31:0] U_move_out36,
output [31:0] L_move_out36,
output [31:0] R_move_out36,
output [31:0] DL_move_out36,
output [31:0] DR_move_out36,
output [31:0] UL_move_out36,
output [31:0] UR_move_out36,
output [31:0] D_move_out37,
output [31:0] U_move_out37,
output [31:0] L_move_out37,
output [31:0] R_move_out37,
output [31:0] DL_move_out37,
output [31:0] DR_move_out37,
output [31:0] UL_move_out37,
output [31:0] UR_move_out37,
output [31:0] D_move_out38,
output [31:0] U_move_out38,
output [31:0] L_move_out38,
output [31:0] R_move_out38,
output [31:0] DL_move_out38,
output [31:0] DR_move_out38,
output [31:0] UL_move_out38,
output [31:0] UR_move_out38,
output [31:0] D_move_out41,
output [31:0] U_move_out41,
output [31:0] L_move_out41,
output [31:0] R_move_out41,
output [31:0] DL_move_out41,
output [31:0] DR_move_out41,
output [31:0] UL_move_out41,
output [31:0] UR_move_out41,
output [31:0] D_move_out42,
output [31:0] U_move_out42,
output [31:0] L_move_out42,
output [31:0] R_move_out42,
output [31:0] DL_move_out42,
output [31:0] DR_move_out42,
output [31:0] UL_move_out42,
output [31:0] UR_move_out42,
output [31:0] D_move_out43,
output [31:0] U_move_out43,
output [31:0] L_move_out43,
output [31:0] R_move_out43,
output [31:0] DL_move_out43,
output [31:0] DR_move_out43,
output [31:0] UL_move_out43,
output [31:0] UR_move_out43,
output [31:0] D_move_out44,
output [31:0] U_move_out44,
output [31:0] L_move_out44,
output [31:0] R_move_out44,
output [31:0] DL_move_out44,
output [31:0] DR_move_out44,
output [31:0] UL_move_out44,
output [31:0] UR_move_out44,
output [31:0] D_move_out45,
output [31:0] U_move_out45,
output [31:0] L_move_out45,
output [31:0] R_move_out45,
output [31:0] DL_move_out45,
output [31:0] DR_move_out45,
output [31:0] UL_move_out45,
output [31:0] UR_move_out45,
output [31:0] D_move_out46,
output [31:0] U_move_out46,
output [31:0] L_move_out46,
output [31:0] R_move_out46,
output [31:0] DL_move_out46,
output [31:0] DR_move_out46,
output [31:0] UL_move_out46,
output [31:0] UR_move_out46,
output [31:0] D_move_out49,
output [31:0] U_move_out49,
output [31:0] L_move_out49,
output [31:0] R_move_out49,
output [31:0] DL_move_out49,
output [31:0] DR_move_out49,
output [31:0] UL_move_out49,
output [31:0] UR_move_out49,
output [31:0] D_move_out50,
output [31:0] U_move_out50,
output [31:0] L_move_out50,
output [31:0] R_move_out50,
output [31:0] DL_move_out50,
output [31:0] DR_move_out50,
output [31:0] UL_move_out50,
output [31:0] UR_move_out50,
output [31:0] D_move_out51,
output [31:0] U_move_out51,
output [31:0] L_move_out51,
output [31:0] R_move_out51,
output [31:0] DL_move_out51,
output [31:0] DR_move_out51,
output [31:0] UL_move_out51,
output [31:0] UR_move_out51,
output [31:0] D_move_out52,
output [31:0] U_move_out52,
output [31:0] L_move_out52,
output [31:0] R_move_out52,
output [31:0] DL_move_out52,
output [31:0] DR_move_out52,
output [31:0] UL_move_out52,
output [31:0] UR_move_out52,
output [31:0] D_move_out53,
output [31:0] U_move_out53,
output [31:0] L_move_out53,
output [31:0] R_move_out53,
output [31:0] DL_move_out53,
output [31:0] DR_move_out53,
output [31:0] UL_move_out53,
output [31:0] UR_move_out53,
output [31:0] D_move_out54,
output [31:0] U_move_out54,
output [31:0] L_move_out54,
output [31:0] R_move_out54,
output [31:0] DL_move_out54,
output [31:0] DR_move_out54,
output [31:0] UL_move_out54,
output [31:0] UR_move_out54,
output [31:0] D_move_out63,
output [31:0] R_move_out63,
output [31:0] DR_move_out63,
output [31:0] D_move_out56,
output [31:0] L_move_out56,
output [31:0] DL_move_out56,
output [31:0] U_move_out0,
output [31:0] L_move_out0,
output [31:0] UL_move_out0,
output [31:0] U_move_out7,
output [31:0] R_move_out7,
output [31:0] UR_move_out7,
output [31:0] U_move_out1,
output reg [31:0] L_move_out1,
output [31:0] R_move_out1,
output [31:0] UL_move_out1,
output [31:0] UR_move_out1,
output [31:0] U_move_out2,
output [31:0] L_move_out2,
output [31:0] R_move_out2,
output [31:0] UL_move_out2,
output [31:0] UR_move_out2,
output [31:0] U_move_out3,
output [31:0] L_move_out3,
output [31:0] R_move_out3,
output [31:0] UL_move_out3,
output [31:0] UR_move_out3,
output [31:0] U_move_out4,
output [31:0] L_move_out4,
output [31:0] R_move_out4,
output [31:0] UL_move_out4,
output [31:0] UR_move_out4,
output [31:0] U_move_out5,
output [31:0] L_move_out5,
output reg [31:0] R_move_out5,
output [31:0] UL_move_out5,
output [31:0] UR_move_out5,
output [31:0] U_move_out6,
output [31:0] L_move_out6,
output [31:0] R_move_out6,
output [31:0] UL_move_out6,
output [31:0] UR_move_out6,
output [31:0] D_move_out8,
output [31:0] U_move_out8,
output [31:0] L_move_out8,
output [31:0] DL_move_out8,
output [31:0] UL_move_out8,
output [31:0] D_move_out16,
output [31:0] U_move_out16,
output [31:0] L_move_out16,
output [31:0] DL_move_out16,
output [31:0] UL_move_out16,
output [31:0] D_move_out24,
output [31:0] U_move_out24,
output [31:0] L_move_out24,
output [31:0] DL_move_out24,
output [31:0] UL_move_out24,
output [31:0] D_move_out32,
output [31:0] U_move_out32,
output [31:0] L_move_out32,
output [31:0] DL_move_out32,
output [31:0] UL_move_out32,
output [31:0] D_move_out40,
output [31:0] U_move_out40,
output [31:0] L_move_out40,
output [31:0] DL_move_out40,
output [31:0] UL_move_out40,
output [31:0] D_move_out48,
output [31:0] U_move_out48,
output [31:0] L_move_out48,
output [31:0] DL_move_out48,
output [31:0] UL_move_out48,
output [31:0] D_move_out15,
output [31:0] U_move_out15,
output [31:0] R_move_out15,
output [31:0] DR_move_out15,
output [31:0] UR_move_out15,
output [31:0] D_move_out23,
output [31:0] U_move_out23,
output [31:0] R_move_out23,
output [31:0] DR_move_out23,
output [31:0] UR_move_out23,
output [31:0] D_move_out31,
output [31:0] U_move_out31,
output [31:0] R_move_out31,
output [31:0] DR_move_out31,
output [31:0] UR_move_out31,
output [31:0] D_move_out39,
output [31:0] U_move_out39,
output [31:0] R_move_out39,
output [31:0] DR_move_out39,
output [31:0] UR_move_out39,
output [31:0] D_move_out47,
output [31:0] U_move_out47,
output [31:0] R_move_out47,
output [31:0] DR_move_out47,
output [31:0] UR_move_out47,
output [31:0] D_move_out55,
output [31:0] U_move_out55,
output [31:0] R_move_out55,
output [31:0] DR_move_out55,
output [31:0] UR_move_out55,
output [31:0] D_move_out57,
output reg [31:0] L_move_out57,
output [31:0] R_move_out57,
output [31:0] DL_move_out57,
output [31:0] DR_move_out57,
output [31:0] D_move_out58,
output [31:0] L_move_out58,
output [31:0] R_move_out58,
output [31:0] DL_move_out58,
output [31:0] DR_move_out58,
output [31:0] D_move_out59,
output [31:0] L_move_out59,
output [31:0] R_move_out59,
output [31:0] DL_move_out59,
output [31:0] DR_move_out59,
output [31:0] D_move_out60,
output [31:0] L_move_out60,
output [31:0] R_move_out60,
output [31:0] DL_move_out60,
output [31:0] DR_move_out60,
output [31:0] D_move_out61,
output [31:0] L_move_out61,
output reg [31:0] R_move_out61,
output [31:0] DL_move_out61,
output [31:0] DR_move_out61,
output [31:0] D_move_out62,
output [31:0] L_move_out62,
output [31:0] R_move_out62,
output [31:0] DL_move_out62,
output [31:0] DR_move_out62,
output [31:0] LLU_move_out50,
output [31:0] RRU_move_out50,
output [31:0] DDL_move_out50,
output [31:0] DDR_move_out50,
output [31:0] LLD_move_out50,
output [31:0] RRD_move_out50,
output [31:0] LLU_move_out51,
output [31:0] RRU_move_out51,
output [31:0] DDL_move_out51,
output [31:0] DDR_move_out51,
output [31:0] LLD_move_out51,
output [31:0] RRD_move_out51,
output [31:0] LLU_move_out52,
output [31:0] RRU_move_out52,
output [31:0] DDL_move_out52,
output [31:0] DDR_move_out52,
output [31:0] LLD_move_out52,
output [31:0] RRD_move_out52,
output [31:0] LLU_move_out53,
output [31:0] RRU_move_out53,
output [31:0] DDL_move_out53,
output [31:0] DDR_move_out53,
output [31:0] LLD_move_out53,
output [31:0] RRD_move_out53,
output [31:0] UUL_move_out17,
output [31:0] LLU_move_out17,
output [31:0] DDL_move_out17,
output [31:0] LLD_move_out17,
output [31:0] UUL_move_out25,
output [31:0] LLU_move_out25,
output [31:0] DDL_move_out25,
output [31:0] LLD_move_out25,
output [31:0] UUL_move_out33,
output [31:0] LLU_move_out33,
output [31:0] DDL_move_out33,
output [31:0] LLD_move_out33,
output [31:0] UUL_move_out41,
output [31:0] LLU_move_out41,
output [31:0] DDL_move_out41,
output [31:0] LLD_move_out41,
output [31:0] UUL_move_out22,
output [31:0] UUR_move_out22,
output [31:0] RRU_move_out22,
output [31:0] DDL_move_out22,
output [31:0] DDR_move_out22,
output [31:0] RRD_move_out22,
output [31:0] UUL_move_out30,
output [31:0] UUR_move_out30,
output [31:0] RRU_move_out30,
output [31:0] DDL_move_out30,
output [31:0] DDR_move_out30,
output [31:0] RRD_move_out30,
output [31:0] UUL_move_out38,
output [31:0] UUR_move_out38,
output [31:0] RRU_move_out38,
output [31:0] DDL_move_out38,
output [31:0] DDR_move_out38,
output [31:0] RRD_move_out38,
output [31:0] UUL_move_out46,
output [31:0] UUR_move_out46,
output [31:0] RRU_move_out46,
output [31:0] DDL_move_out46,
output [31:0] DDR_move_out46,
output [31:0] RRD_move_out46,
output [31:0] UUL_move_out10,
output [31:0] UUR_move_out10,
output [31:0] LLU_move_out10,
output [31:0] RRU_move_out10,
output [31:0] LLD_move_out10,
output [31:0] RRD_move_out10,
output [31:0] UUL_move_out11,
output [31:0] UUR_move_out11,
output [31:0] LLU_move_out11,
output [31:0] RRU_move_out11,
output [31:0] LLD_move_out11,
output [31:0] RRD_move_out11,
output [31:0] UUL_move_out12,
output [31:0] UUR_move_out12,
output [31:0] LLU_move_out12,
output [31:0] RRU_move_out12,
output [31:0] LLD_move_out12,
output [31:0] RRD_move_out12,
output [31:0] UUL_move_out13,
output [31:0] UUR_move_out13,
output [31:0] LLU_move_out13,
output [31:0] RRU_move_out13,
output [31:0] LLD_move_out13,
output [31:0] RRD_move_out13,
output [31:0] UUR_move_out23,
output [31:0] RRU_move_out23,
output [31:0] DDR_move_out23,
output [31:0] RRD_move_out23,
output [31:0] UUR_move_out31,
output [31:0] RRU_move_out31,
output [31:0] DDR_move_out31,
output [31:0] RRD_move_out31,
output [31:0] UUR_move_out39,
output [31:0] RRU_move_out39,
output [31:0] DDR_move_out39,
output [31:0] RRD_move_out39,
output [31:0] UUR_move_out47,
output [31:0] RRU_move_out47,
output [31:0] DDR_move_out47,
output [31:0] RRD_move_out47,
output [31:0] UUL_move_out18,
output [31:0] UUR_move_out18,
output [31:0] LLU_move_out18,
output [31:0] RRU_move_out18,
output [31:0] DDL_move_out18,
output [31:0] DDR_move_out18,
output [31:0] LLD_move_out18,
output [31:0] RRD_move_out18,
output [31:0] UUL_move_out19,
output [31:0] UUR_move_out19,
output [31:0] LLU_move_out19,
output [31:0] RRU_move_out19,
output [31:0] DDL_move_out19,
output [31:0] DDR_move_out19,
output [31:0] LLD_move_out19,
output [31:0] RRD_move_out19,
output [31:0] UUL_move_out20,
output [31:0] UUR_move_out20,
output [31:0] LLU_move_out20,
output [31:0] RRU_move_out20,
output [31:0] DDL_move_out20,
output [31:0] DDR_move_out20,
output [31:0] LLD_move_out20,
output [31:0] RRD_move_out20,
output [31:0] UUL_move_out21,
output [31:0] UUR_move_out21,
output [31:0] LLU_move_out21,
output [31:0] RRU_move_out21,
output [31:0] DDL_move_out21,
output [31:0] DDR_move_out21,
output [31:0] LLD_move_out21,
output [31:0] RRD_move_out21,
output [31:0] UUL_move_out26,
output [31:0] UUR_move_out26,
output [31:0] LLU_move_out26,
output [31:0] RRU_move_out26,
output [31:0] DDL_move_out26,
output [31:0] DDR_move_out26,
output [31:0] LLD_move_out26,
output [31:0] RRD_move_out26,
output [31:0] UUL_move_out27,
output [31:0] UUR_move_out27,
output [31:0] LLU_move_out27,
output [31:0] RRU_move_out27,
output [31:0] DDL_move_out27,
output [31:0] DDR_move_out27,
output [31:0] LLD_move_out27,
output [31:0] RRD_move_out27,
output [31:0] UUL_move_out28,
output [31:0] UUR_move_out28,
output [31:0] LLU_move_out28,
output [31:0] RRU_move_out28,
output [31:0] DDL_move_out28,
output [31:0] DDR_move_out28,
output [31:0] LLD_move_out28,
output [31:0] RRD_move_out28,
output [31:0] UUL_move_out29,
output [31:0] UUR_move_out29,
output [31:0] LLU_move_out29,
output [31:0] RRU_move_out29,
output [31:0] DDL_move_out29,
output [31:0] DDR_move_out29,
output [31:0] LLD_move_out29,
output [31:0] RRD_move_out29,
output [31:0] UUL_move_out34,
output [31:0] UUR_move_out34,
output [31:0] LLU_move_out34,
output [31:0] RRU_move_out34,
output [31:0] DDL_move_out34,
output [31:0] DDR_move_out34,
output [31:0] LLD_move_out34,
output [31:0] RRD_move_out34,
output [31:0] UUL_move_out35,
output [31:0] UUR_move_out35,
output [31:0] LLU_move_out35,
output [31:0] RRU_move_out35,
output [31:0] DDL_move_out35,
output [31:0] DDR_move_out35,
output [31:0] LLD_move_out35,
output [31:0] RRD_move_out35,
output [31:0] UUL_move_out36,
output [31:0] UUR_move_out36,
output [31:0] LLU_move_out36,
output [31:0] RRU_move_out36,
output [31:0] DDL_move_out36,
output [31:0] DDR_move_out36,
output [31:0] LLD_move_out36,
output [31:0] RRD_move_out36,
output [31:0] UUL_move_out37,
output [31:0] UUR_move_out37,
output [31:0] LLU_move_out37,
output [31:0] RRU_move_out37,
output [31:0] DDL_move_out37,
output [31:0] DDR_move_out37,
output [31:0] LLD_move_out37,
output [31:0] RRD_move_out37,
output [31:0] UUL_move_out42,
output [31:0] UUR_move_out42,
output [31:0] LLU_move_out42,
output [31:0] RRU_move_out42,
output [31:0] DDL_move_out42,
output [31:0] DDR_move_out42,
output [31:0] LLD_move_out42,
output [31:0] RRD_move_out42,
output [31:0] UUL_move_out43,
output [31:0] UUR_move_out43,
output [31:0] LLU_move_out43,
output [31:0] RRU_move_out43,
output [31:0] DDL_move_out43,
output [31:0] DDR_move_out43,
output [31:0] LLD_move_out43,
output [31:0] RRD_move_out43,
output [31:0] UUL_move_out44,
output [31:0] UUR_move_out44,
output [31:0] LLU_move_out44,
output [31:0] RRU_move_out44,
output [31:0] DDL_move_out44,
output [31:0] DDR_move_out44,
output [31:0] LLD_move_out44,
output [31:0] RRD_move_out44,
output [31:0] UUL_move_out45,
output [31:0] UUR_move_out45,
output [31:0] LLU_move_out45,
output [31:0] RRU_move_out45,
output [31:0] DDL_move_out45,
output [31:0] DDR_move_out45,
output [31:0] LLD_move_out45,
output [31:0] RRD_move_out45,
output [31:0] DDR_move_out63,
output [31:0] RRD_move_out63,
output [31:0] DDL_move_out56,
output [31:0] LLD_move_out56,
output [31:0] UUR_move_out7,
output [31:0] RRU_move_out7,
output [31:0] UUL_move_out0,
output [31:0] LLU_move_out0,
output [31:0] UUL_move_out2,
output [31:0] UUR_move_out2,
output [31:0] LLU_move_out2,
output [31:0] RRU_move_out2,
output [31:0] UUL_move_out3,
output [31:0] UUR_move_out3,
output [31:0] LLU_move_out3,
output [31:0] RRU_move_out3,
output [31:0] UUL_move_out4,
output [31:0] UUR_move_out4,
output [31:0] LLU_move_out4,
output [31:0] RRU_move_out4,
output [31:0] UUL_move_out5,
output [31:0] UUR_move_out5,
output [31:0] LLU_move_out5,
output [31:0] RRU_move_out5,
output [31:0] UUL_move_out16,
output [31:0] LLU_move_out16,
output [31:0] DDL_move_out16,
output [31:0] LLD_move_out16,
output [31:0] UUL_move_out24,
output [31:0] LLU_move_out24,
output [31:0] DDL_move_out24,
output [31:0] LLD_move_out24,
output [31:0] UUL_move_out32,
output [31:0] LLU_move_out32,
output [31:0] DDL_move_out32,
output [31:0] LLD_move_out32,
output [31:0] UUL_move_out40,
output [31:0] LLU_move_out40,
output [31:0] DDL_move_out40,
output [31:0] LLD_move_out40,
output [31:0] DDL_move_out58,
output [31:0] DDR_move_out58,
output [31:0] LLD_move_out58,
output [31:0] RRD_move_out58,
output [31:0] DDL_move_out59,
output [31:0] DDR_move_out59,
output [31:0] LLD_move_out59,
output [31:0] RRD_move_out59,
output [31:0] DDL_move_out60,
output [31:0] DDR_move_out60,
output [31:0] LLD_move_out60,
output [31:0] RRD_move_out60,
output [31:0] DDL_move_out61,
output [31:0] DDR_move_out61,
output [31:0] LLD_move_out61,
output [31:0] RRD_move_out61,
output [31:0] DDL_move_out57,
output [31:0] DDR_move_out57,
output [31:0] LLD_move_out57,
output [31:0] DDL_move_out62,
output [31:0] DDR_move_out62,
output [31:0] RRD_move_out62,
output [31:0] LLU_move_out48,
output [31:0] DDL_move_out48,
output [31:0] LLD_move_out48,
output [31:0] LLU_move_out49,
output [31:0] DDL_move_out49,
output [31:0] DDR_move_out49,
output [31:0] LLD_move_out49,
output [31:0] RRU_move_out54,
output [31:0] DDL_move_out54,
output [31:0] DDR_move_out54,
output [31:0] RRD_move_out54,
output [31:0] RRU_move_out55,
output [31:0] DDR_move_out55,
output [31:0] RRD_move_out55,
output [31:0] UUL_move_out8,
output [31:0] LLU_move_out8,
output [31:0] LLD_move_out8,
output [31:0] UUL_move_out9,
output [31:0] UUR_move_out9,
output [31:0] LLU_move_out9,
output [31:0] LLD_move_out9,
output [31:0] UUL_move_out14,
output [31:0] UUR_move_out14,
output [31:0] RRU_move_out14,
output [31:0] RRD_move_out14,
output [31:0] UUR_move_out15,
output [31:0] RRU_move_out15,
output [31:0] RRD_move_out15,
output [31:0] UUL_move_out1,
output [31:0] UUR_move_out1,
output [31:0] LLU_move_out1,
output [31:0] UUL_move_out6,
output [31:0] UUR_move_out6,
output [31:0] RRU_move_out6
);

	
wire [31:0] R_move_out61_tmp;
wire [31:0] L_move_out57_tmp;
wire [31:0] R_move_out5_tmp;
wire [31:0] L_move_out1_tmp;

wire [10:0] transmit1_9;
wire [10:0] transmit17_9;
wire [10:0] transmit10_9;
wire [10:0] transmit8_9;
wire [10:0] transmit2_9;
wire [10:0] transmit0_9;
wire [10:0] transmit18_9;
wire [10:0] transmit16_9;
wire [10:0] transmit9_1;
wire [10:0] transmit9_17;
wire [10:0] transmit9_10;
wire [10:0] transmit9_8;
wire [10:0] transmit9_2;
wire [10:0] transmit9_0;
wire [10:0] transmit9_18;
wire [10:0] transmit9_16;
wire [10:0] transmit2_10;
wire [10:0] transmit18_10;
wire [10:0] transmit11_10;
wire [10:0] transmit3_10;
wire [10:0] transmit1_10;
wire [10:0] transmit19_10;
wire [10:0] transmit17_10;
wire [10:0] transmit10_2;
wire [10:0] transmit10_18;
wire [10:0] transmit10_11;
wire [10:0] transmit10_3;
wire [10:0] transmit10_1;
wire [10:0] transmit10_19;
wire [10:0] transmit10_17;
wire [10:0] transmit3_11;
wire [10:0] transmit19_11;
wire [10:0] transmit12_11;
wire [10:0] transmit4_11;
wire [10:0] transmit2_11;
wire [10:0] transmit20_11;
wire [10:0] transmit18_11;
wire [10:0] transmit11_3;
wire [10:0] transmit11_19;
wire [10:0] transmit11_12;
wire [10:0] transmit11_4;
wire [10:0] transmit11_2;
wire [10:0] transmit11_20;
wire [10:0] transmit11_18;
wire [10:0] transmit4_12;
wire [10:0] transmit20_12;
wire [10:0] transmit13_12;
wire [10:0] transmit5_12;
wire [10:0] transmit3_12;
wire [10:0] transmit21_12;
wire [10:0] transmit19_12;
wire [10:0] transmit12_4;
wire [10:0] transmit12_20;
wire [10:0] transmit12_13;
wire [10:0] transmit12_5;
wire [10:0] transmit12_3;
wire [10:0] transmit12_21;
wire [10:0] transmit12_19;
wire [10:0] transmit5_13;
wire [10:0] transmit21_13;
wire [10:0] transmit14_13;
wire [10:0] transmit6_13;
wire [10:0] transmit4_13;
wire [10:0] transmit22_13;
wire [10:0] transmit20_13;
wire [10:0] transmit13_5;
wire [10:0] transmit13_21;
wire [10:0] transmit13_14;
wire [10:0] transmit13_6;
wire [10:0] transmit13_4;
wire [10:0] transmit13_22;
wire [10:0] transmit13_20;
wire [10:0] transmit6_14;
wire [10:0] transmit22_14;
wire [10:0] transmit15_14;
wire [10:0] transmit7_14;
wire [10:0] transmit5_14;
wire [10:0] transmit23_14;
wire [10:0] transmit21_14;
wire [10:0] transmit14_6;
wire [10:0] transmit14_22;
wire [10:0] transmit14_15;
wire [10:0] transmit14_7;
wire [10:0] transmit14_5;
wire [10:0] transmit14_23;
wire [10:0] transmit14_21;
wire [10:0] transmit25_17;
wire [10:0] transmit18_17;
wire [10:0] transmit16_17;
wire [10:0] transmit8_17;
wire [10:0] transmit26_17;
wire [10:0] transmit24_17;
wire [10:0] transmit17_25;
wire [10:0] transmit17_18;
wire [10:0] transmit17_16;
wire [10:0] transmit17_8;
wire [10:0] transmit17_26;
wire [10:0] transmit17_24;
wire [10:0] transmit26_18;
wire [10:0] transmit19_18;
wire [10:0] transmit27_18;
wire [10:0] transmit25_18;
wire [10:0] transmit18_26;
wire [10:0] transmit18_19;
wire [10:0] transmit18_27;
wire [10:0] transmit18_25;
wire [10:0] transmit27_19;
wire [10:0] transmit20_19;
wire [10:0] transmit28_19;
wire [10:0] transmit26_19;
wire [10:0] transmit19_27;
wire [10:0] transmit19_20;
wire [10:0] transmit19_28;
wire [10:0] transmit19_26;
wire [10:0] transmit28_20;
wire [10:0] transmit21_20;
wire [10:0] transmit29_20;
wire [10:0] transmit27_20;
wire [10:0] transmit20_28;
wire [10:0] transmit20_21;
wire [10:0] transmit20_29;
wire [10:0] transmit20_27;
wire [10:0] transmit29_21;
wire [10:0] transmit22_21;
wire [10:0] transmit30_21;
wire [10:0] transmit28_21;
wire [10:0] transmit21_29;
wire [10:0] transmit21_22;
wire [10:0] transmit21_30;
wire [10:0] transmit21_28;
wire [10:0] transmit30_22;
wire [10:0] transmit23_22;
wire [10:0] transmit15_22;
wire [10:0] transmit31_22;
wire [10:0] transmit29_22;
wire [10:0] transmit22_30;
wire [10:0] transmit22_23;
wire [10:0] transmit22_15;
wire [10:0] transmit22_31;
wire [10:0] transmit22_29;
wire [10:0] transmit33_25;
wire [10:0] transmit26_25;
wire [10:0] transmit24_25;
wire [10:0] transmit16_25;
wire [10:0] transmit34_25;
wire [10:0] transmit32_25;
wire [10:0] transmit25_33;
wire [10:0] transmit25_26;
wire [10:0] transmit25_24;
wire [10:0] transmit25_16;
wire [10:0] transmit25_34;
wire [10:0] transmit25_32;
wire [10:0] transmit34_26;
wire [10:0] transmit27_26;
wire [10:0] transmit35_26;
wire [10:0] transmit33_26;
wire [10:0] transmit26_34;
wire [10:0] transmit26_27;
wire [10:0] transmit26_35;
wire [10:0] transmit26_33;
wire [10:0] transmit35_27;
wire [10:0] transmit28_27;
wire [10:0] transmit36_27;
wire [10:0] transmit34_27;
wire [10:0] transmit27_35;
wire [10:0] transmit27_28;
wire [10:0] transmit27_36;
wire [10:0] transmit27_34;
wire [10:0] transmit36_28;
wire [10:0] transmit29_28;
wire [10:0] transmit37_28;
wire [10:0] transmit35_28;
wire [10:0] transmit28_36;
wire [10:0] transmit28_29;
wire [10:0] transmit28_37;
wire [10:0] transmit28_35;
wire [10:0] transmit37_29;
wire [10:0] transmit30_29;
wire [10:0] transmit38_29;
wire [10:0] transmit36_29;
wire [10:0] transmit29_37;
wire [10:0] transmit29_30;
wire [10:0] transmit29_38;
wire [10:0] transmit29_36;
wire [10:0] transmit38_30;
wire [10:0] transmit31_30;
wire [10:0] transmit23_30;
wire [10:0] transmit39_30;
wire [10:0] transmit37_30;
wire [10:0] transmit30_38;
wire [10:0] transmit30_31;
wire [10:0] transmit30_23;
wire [10:0] transmit30_39;
wire [10:0] transmit30_37;
wire [10:0] transmit41_33;
wire [10:0] transmit34_33;
wire [10:0] transmit32_33;
wire [10:0] transmit24_33;
wire [10:0] transmit42_33;
wire [10:0] transmit40_33;
wire [10:0] transmit33_41;
wire [10:0] transmit33_34;
wire [10:0] transmit33_32;
wire [10:0] transmit33_24;
wire [10:0] transmit33_42;
wire [10:0] transmit33_40;
wire [10:0] transmit42_34;
wire [10:0] transmit35_34;
wire [10:0] transmit43_34;
wire [10:0] transmit41_34;
wire [10:0] transmit34_42;
wire [10:0] transmit34_35;
wire [10:0] transmit34_43;
wire [10:0] transmit34_41;
wire [10:0] transmit43_35;
wire [10:0] transmit36_35;
wire [10:0] transmit44_35;
wire [10:0] transmit42_35;
wire [10:0] transmit35_43;
wire [10:0] transmit35_36;
wire [10:0] transmit35_44;
wire [10:0] transmit35_42;
wire [10:0] transmit44_36;
wire [10:0] transmit37_36;
wire [10:0] transmit45_36;
wire [10:0] transmit43_36;
wire [10:0] transmit36_44;
wire [10:0] transmit36_37;
wire [10:0] transmit36_45;
wire [10:0] transmit36_43;
wire [10:0] transmit45_37;
wire [10:0] transmit38_37;
wire [10:0] transmit46_37;
wire [10:0] transmit44_37;
wire [10:0] transmit37_45;
wire [10:0] transmit37_38;
wire [10:0] transmit37_46;
wire [10:0] transmit37_44;
wire [10:0] transmit46_38;
wire [10:0] transmit39_38;
wire [10:0] transmit31_38;
wire [10:0] transmit47_38;
wire [10:0] transmit45_38;
wire [10:0] transmit38_46;
wire [10:0] transmit38_39;
wire [10:0] transmit38_31;
wire [10:0] transmit38_47;
wire [10:0] transmit38_45;
wire [10:0] transmit49_41;
wire [10:0] transmit42_41;
wire [10:0] transmit40_41;
wire [10:0] transmit32_41;
wire [10:0] transmit50_41;
wire [10:0] transmit48_41;
wire [10:0] transmit41_49;
wire [10:0] transmit41_42;
wire [10:0] transmit41_40;
wire [10:0] transmit41_32;
wire [10:0] transmit41_50;
wire [10:0] transmit41_48;
wire [10:0] transmit50_42;
wire [10:0] transmit43_42;
wire [10:0] transmit51_42;
wire [10:0] transmit49_42;
wire [10:0] transmit42_50;
wire [10:0] transmit42_43;
wire [10:0] transmit42_51;
wire [10:0] transmit42_49;
wire [10:0] transmit51_43;
wire [10:0] transmit44_43;
wire [10:0] transmit52_43;
wire [10:0] transmit50_43;
wire [10:0] transmit43_51;
wire [10:0] transmit43_44;
wire [10:0] transmit43_52;
wire [10:0] transmit43_50;
wire [10:0] transmit52_44;
wire [10:0] transmit45_44;
wire [10:0] transmit53_44;
wire [10:0] transmit51_44;
wire [10:0] transmit44_52;
wire [10:0] transmit44_45;
wire [10:0] transmit44_53;
wire [10:0] transmit44_51;
wire [10:0] transmit53_45;
wire [10:0] transmit46_45;
wire [10:0] transmit54_45;
wire [10:0] transmit52_45;
wire [10:0] transmit45_53;
wire [10:0] transmit45_46;
wire [10:0] transmit45_54;
wire [10:0] transmit45_52;
wire [10:0] transmit54_46;
wire [10:0] transmit47_46;
wire [10:0] transmit39_46;
wire [10:0] transmit55_46;
wire [10:0] transmit53_46;
wire [10:0] transmit46_54;
wire [10:0] transmit46_47;
wire [10:0] transmit46_39;
wire [10:0] transmit46_55;
wire [10:0] transmit46_53;
wire [10:0] transmit57_49;
wire [10:0] transmit50_49;
wire [10:0] transmit48_49;
wire [10:0] transmit40_49;
wire [10:0] transmit58_49;
wire [10:0] transmit56_49;
wire [10:0] transmit49_57;
wire [10:0] transmit49_50;
wire [10:0] transmit49_48;
wire [10:0] transmit49_40;
wire [10:0] transmit49_58;
wire [10:0] transmit49_56;
wire [10:0] transmit58_50;
wire [10:0] transmit51_50;
wire [10:0] transmit59_50;
wire [10:0] transmit57_50;
wire [10:0] transmit50_58;
wire [10:0] transmit50_51;
wire [10:0] transmit50_59;
wire [10:0] transmit50_57;
wire [10:0] transmit59_51;
wire [10:0] transmit52_51;
wire [10:0] transmit60_51;
wire [10:0] transmit58_51;
wire [10:0] transmit51_59;
wire [10:0] transmit51_52;
wire [10:0] transmit51_60;
wire [10:0] transmit51_58;
wire [10:0] transmit60_52;
wire [10:0] transmit53_52;
wire [10:0] transmit61_52;
wire [10:0] transmit59_52;
wire [10:0] transmit52_60;
wire [10:0] transmit52_53;
wire [10:0] transmit52_61;
wire [10:0] transmit52_59;
wire [10:0] transmit61_53;
wire [10:0] transmit54_53;
wire [10:0] transmit62_53;
wire [10:0] transmit60_53;
wire [10:0] transmit53_61;
wire [10:0] transmit53_54;
wire [10:0] transmit53_62;
wire [10:0] transmit53_60;
wire [10:0] transmit62_54;
wire [10:0] transmit55_54;
wire [10:0] transmit47_54;
wire [10:0] transmit63_54;
wire [10:0] transmit61_54;
wire [10:0] transmit54_62;
wire [10:0] transmit54_55;
wire [10:0] transmit54_47;
wire [10:0] transmit54_63;
wire [10:0] transmit54_61;
wire [10:0] transmit55_63;
wire [10:0] transmit62_63;
wire [10:0] transmit63_55;
wire [10:0] transmit63_62;
wire [10:0] transmit48_56;
wire [10:0] transmit57_56;
wire [10:0] transmit56_48;
wire [10:0] transmit56_57;
wire [10:0] transmit8_0;
wire [10:0] transmit1_0;
wire [10:0] transmit0_8;
wire [10:0] transmit0_1;
wire [10:0] transmit15_7;
wire [10:0] transmit6_7;
wire [10:0] transmit7_15;
wire [10:0] transmit7_6;
wire [10:0] transmit2_1;
wire [10:0] transmit8_1;
wire [10:0] transmit1_2;
wire [10:0] transmit1_8;
wire [10:0] transmit3_2;
wire [10:0] transmit2_3;
wire [10:0] transmit4_3;
wire [10:0] transmit3_4;
wire [10:0] transmit5_4;
wire [10:0] transmit4_5;
wire [10:0] transmit6_5;
wire [10:0] transmit5_6;
wire [10:0] transmit15_6;
wire [10:0] transmit6_15;
wire [10:0] transmit16_8;
wire [10:0] transmit8_16;
wire [10:0] transmit24_16;
wire [10:0] transmit16_24;
wire [10:0] transmit32_24;
wire [10:0] transmit24_32;
wire [10:0] transmit40_32;
wire [10:0] transmit32_40;
wire [10:0] transmit48_40;
wire [10:0] transmit40_48;
wire [10:0] transmit57_48;
wire [10:0] transmit48_57;
wire [10:0] transmit23_15;
wire [10:0] transmit15_23;
wire [10:0] transmit31_23;
wire [10:0] transmit23_31;
wire [10:0] transmit39_31;
wire [10:0] transmit31_39;
wire [10:0] transmit47_39;
wire [10:0] transmit39_47;
wire [10:0] transmit55_47;
wire [10:0] transmit47_55;
wire [10:0] transmit62_55;
wire [10:0] transmit55_62;
wire [10:0] transmit58_57;
wire [10:0] transmit57_58;
wire [10:0] transmit59_58;
wire [10:0] transmit58_59;
wire [10:0] transmit60_59;
wire [10:0] transmit59_60;
wire [10:0] transmit61_60;
wire [10:0] transmit60_61;
wire [10:0] transmit62_61;
wire [10:0] transmit61_62;
wire [7:0] transmit60_50;
wire [7:0] transmit56_50;
wire [7:0] transmit35_50;
wire [7:0] transmit33_50;
wire [7:0] transmit44_50;
wire [7:0] transmit40_50;
wire [7:0] transmit50_60;
wire [7:0] transmit50_56;
wire [7:0] transmit50_35;
wire [7:0] transmit50_33;
wire [7:0] transmit50_44;
wire [7:0] transmit50_40;
wire [7:0] transmit61_51;
wire [7:0] transmit57_51;
wire [7:0] transmit36_51;
wire [7:0] transmit34_51;
wire [7:0] transmit45_51;
wire [7:0] transmit41_51;
wire [7:0] transmit51_61;
wire [7:0] transmit51_57;
wire [7:0] transmit51_36;
wire [7:0] transmit51_34;
wire [7:0] transmit51_45;
wire [7:0] transmit51_41;
wire [7:0] transmit62_52;
wire [7:0] transmit58_52;
wire [7:0] transmit37_52;
wire [7:0] transmit35_52;
wire [7:0] transmit46_52;
wire [7:0] transmit42_52;
wire [7:0] transmit52_62;
wire [7:0] transmit52_58;
wire [7:0] transmit52_37;
wire [7:0] transmit52_35;
wire [7:0] transmit52_46;
wire [7:0] transmit52_42;
wire [7:0] transmit63_53;
wire [7:0] transmit59_53;
wire [7:0] transmit38_53;
wire [7:0] transmit36_53;
wire [7:0] transmit47_53;
wire [7:0] transmit43_53;
wire [7:0] transmit53_63;
wire [7:0] transmit53_59;
wire [7:0] transmit53_38;
wire [7:0] transmit53_36;
wire [7:0] transmit53_47;
wire [7:0] transmit53_43;
wire [7:0] transmit34_17;
wire [7:0] transmit27_17;
wire [7:0] transmit2_17;
wire [7:0] transmit11_17;
wire [7:0] transmit17_34;
wire [7:0] transmit17_27;
wire [7:0] transmit17_2;
wire [7:0] transmit17_11;
wire [7:0] transmit42_25;
wire [7:0] transmit35_25;
wire [7:0] transmit10_25;
wire [7:0] transmit19_25;
wire [7:0] transmit25_42;
wire [7:0] transmit25_35;
wire [7:0] transmit25_10;
wire [7:0] transmit25_19;
wire [7:0] transmit43_33;
wire [7:0] transmit18_33;
wire [7:0] transmit27_33;
wire [7:0] transmit33_43;
wire [7:0] transmit33_18;
wire [7:0] transmit33_27;
wire [7:0] transmit58_41;
wire [7:0] transmit26_41;
wire [7:0] transmit35_41;
wire [7:0] transmit41_58;
wire [7:0] transmit41_26;
wire [7:0] transmit41_35;
wire [7:0] transmit39_22;
wire [7:0] transmit37_22;
wire [7:0] transmit28_22;
wire [7:0] transmit7_22;
wire [7:0] transmit5_22;
wire [7:0] transmit12_22;
wire [7:0] transmit22_39;
wire [7:0] transmit22_37;
wire [7:0] transmit22_28;
wire [7:0] transmit22_7;
wire [7:0] transmit22_5;
wire [7:0] transmit22_12;
wire [7:0] transmit47_30;
wire [7:0] transmit45_30;
wire [7:0] transmit36_30;
wire [7:0] transmit15_30;
wire [7:0] transmit13_30;
wire [7:0] transmit20_30;
wire [7:0] transmit30_47;
wire [7:0] transmit30_45;
wire [7:0] transmit30_36;
wire [7:0] transmit30_15;
wire [7:0] transmit30_13;
wire [7:0] transmit30_20;
wire [7:0] transmit55_38;
wire [7:0] transmit44_38;
wire [7:0] transmit23_38;
wire [7:0] transmit21_38;
wire [7:0] transmit28_38;
wire [7:0] transmit38_55;
wire [7:0] transmit38_44;
wire [7:0] transmit38_23;
wire [7:0] transmit38_21;
wire [7:0] transmit38_28;
wire [7:0] transmit63_46;
wire [7:0] transmit61_46;
wire [7:0] transmit31_46;
wire [7:0] transmit29_46;
wire [7:0] transmit36_46;
wire [7:0] transmit46_63;
wire [7:0] transmit46_61;
wire [7:0] transmit46_31;
wire [7:0] transmit46_29;
wire [7:0] transmit46_36;
wire [7:0] transmit27_10;
wire [7:0] transmit20_10;
wire [7:0] transmit16_10;
wire [7:0] transmit4_10;
wire [7:0] transmit0_10;
wire [7:0] transmit10_27;
wire [7:0] transmit10_20;
wire [7:0] transmit10_16;
wire [7:0] transmit10_4;
wire [7:0] transmit10_0;
wire [7:0] transmit28_11;
wire [7:0] transmit26_11;
wire [7:0] transmit21_11;
wire [7:0] transmit5_11;
wire [7:0] transmit1_11;
wire [7:0] transmit11_28;
wire [7:0] transmit11_26;
wire [7:0] transmit11_21;
wire [7:0] transmit11_5;
wire [7:0] transmit11_1;
wire [7:0] transmit29_12;
wire [7:0] transmit27_12;
wire [7:0] transmit18_12;
wire [7:0] transmit6_12;
wire [7:0] transmit2_12;
wire [7:0] transmit12_29;
wire [7:0] transmit12_27;
wire [7:0] transmit12_18;
wire [7:0] transmit12_6;
wire [7:0] transmit12_2;
wire [7:0] transmit28_13;
wire [7:0] transmit23_13;
wire [7:0] transmit19_13;
wire [7:0] transmit7_13;
wire [7:0] transmit3_13;
wire [7:0] transmit13_28;
wire [7:0] transmit13_23;
wire [7:0] transmit13_19;
wire [7:0] transmit13_7;
wire [7:0] transmit13_3;
wire [7:0] transmit29_23;
wire [7:0] transmit6_23;
wire [7:0] transmit23_29;
wire [7:0] transmit23_6;
wire [7:0] transmit37_31;
wire [7:0] transmit14_31;
wire [7:0] transmit21_31;
wire [7:0] transmit31_37;
wire [7:0] transmit31_14;
wire [7:0] transmit31_21;
wire [7:0] transmit54_39;
wire [7:0] transmit45_39;
wire [7:0] transmit29_39;
wire [7:0] transmit39_54;
wire [7:0] transmit39_45;
wire [7:0] transmit39_29;
wire [7:0] transmit62_47;
wire [7:0] transmit37_47;
wire [7:0] transmit47_62;
wire [7:0] transmit47_37;
wire [7:0] transmit35_18;
wire [7:0] transmit28_18;
wire [7:0] transmit24_18;
wire [7:0] transmit3_18;
wire [7:0] transmit1_18;
wire [7:0] transmit8_18;
wire [7:0] transmit18_35;
wire [7:0] transmit18_28;
wire [7:0] transmit18_24;
wire [7:0] transmit18_3;
wire [7:0] transmit18_1;
wire [7:0] transmit18_8;
wire [7:0] transmit36_19;
wire [7:0] transmit34_19;
wire [7:0] transmit29_19;
wire [7:0] transmit4_19;
wire [7:0] transmit2_19;
wire [7:0] transmit9_19;
wire [7:0] transmit19_36;
wire [7:0] transmit19_34;
wire [7:0] transmit19_29;
wire [7:0] transmit19_4;
wire [7:0] transmit19_2;
wire [7:0] transmit19_9;
wire [7:0] transmit37_20;
wire [7:0] transmit35_20;
wire [7:0] transmit26_20;
wire [7:0] transmit5_20;
wire [7:0] transmit3_20;
wire [7:0] transmit14_20;
wire [7:0] transmit20_37;
wire [7:0] transmit20_35;
wire [7:0] transmit20_26;
wire [7:0] transmit20_5;
wire [7:0] transmit20_3;
wire [7:0] transmit20_14;
wire [7:0] transmit36_21;
wire [7:0] transmit27_21;
wire [7:0] transmit6_21;
wire [7:0] transmit4_21;
wire [7:0] transmit15_21;
wire [7:0] transmit21_36;
wire [7:0] transmit21_27;
wire [7:0] transmit21_6;
wire [7:0] transmit21_4;
wire [7:0] transmit21_15;
wire [7:0] transmit43_26;
wire [7:0] transmit36_26;
wire [7:0] transmit32_26;
wire [7:0] transmit9_26;
wire [7:0] transmit16_26;
wire [7:0] transmit26_43;
wire [7:0] transmit26_36;
wire [7:0] transmit26_32;
wire [7:0] transmit26_9;
wire [7:0] transmit26_16;
wire [7:0] transmit44_27;
wire [7:0] transmit42_27;
wire [7:0] transmit37_27;
wire [7:0] transmit27_44;
wire [7:0] transmit27_42;
wire [7:0] transmit27_37;
wire [7:0] transmit45_28;
wire [7:0] transmit43_28;
wire [7:0] transmit34_28;
wire [7:0] transmit28_45;
wire [7:0] transmit28_43;
wire [7:0] transmit28_34;
wire [7:0] transmit44_29;
wire [7:0] transmit35_29;
wire [7:0] transmit14_29;
wire [7:0] transmit29_44;
wire [7:0] transmit29_35;
wire [7:0] transmit29_14;
wire [7:0] transmit49_34;
wire [7:0] transmit44_34;
wire [7:0] transmit40_34;
wire [7:0] transmit24_34;
wire [7:0] transmit34_49;
wire [7:0] transmit34_44;
wire [7:0] transmit34_40;
wire [7:0] transmit34_24;
wire [7:0] transmit45_35;
wire [7:0] transmit35_45;
wire [7:0] transmit42_36;
wire [7:0] transmit36_42;
wire [7:0] transmit54_37;
wire [7:0] transmit43_37;
wire [7:0] transmit37_54;
wire [7:0] transmit37_43;
wire [7:0] transmit59_42;
wire [7:0] transmit57_42;
wire [7:0] transmit48_42;
wire [7:0] transmit32_42;
wire [7:0] transmit42_59;
wire [7:0] transmit42_57;
wire [7:0] transmit42_48;
wire [7:0] transmit42_32;
wire [7:0] transmit60_43;
wire [7:0] transmit58_43;
wire [7:0] transmit49_43;
wire [7:0] transmit43_60;
wire [7:0] transmit43_58;
wire [7:0] transmit43_49;
wire [7:0] transmit61_44;
wire [7:0] transmit59_44;
wire [7:0] transmit54_44;
wire [7:0] transmit44_61;
wire [7:0] transmit44_59;
wire [7:0] transmit44_54;
wire [7:0] transmit62_45;
wire [7:0] transmit60_45;
wire [7:0] transmit55_45;
wire [7:0] transmit45_62;
wire [7:0] transmit45_60;
wire [7:0] transmit45_55;
wire [7:0] transmit41_56;
wire [7:0] transmit56_41;
wire [7:0] transmit17_0;
wire [7:0] transmit0_17;
wire [7:0] transmit8_2;
wire [7:0] transmit2_8;
wire [7:0] transmit9_3;
wire [7:0] transmit3_9;
wire [7:0] transmit14_4;
wire [7:0] transmit4_14;
wire [7:0] transmit15_5;
wire [7:0] transmit5_15;
wire [7:0] transmit33_16;
wire [7:0] transmit1_16;
wire [7:0] transmit16_33;
wire [7:0] transmit16_1;
wire [7:0] transmit41_24;
wire [7:0] transmit9_24;
wire [7:0] transmit24_41;
wire [7:0] transmit24_9;
wire [7:0] transmit49_32;
wire [7:0] transmit17_32;
wire [7:0] transmit32_49;
wire [7:0] transmit32_17;
wire [7:0] transmit57_40;
wire [7:0] transmit25_40;
wire [7:0] transmit40_57;
wire [7:0] transmit40_25;
wire [7:0] transmit48_58;
wire [7:0] transmit58_48;
wire [7:0] transmit49_59;
wire [7:0] transmit59_49;
wire [7:0] transmit54_60;
wire [7:0] transmit60_54;
wire [7:0] transmit55_61;
wire [7:0] transmit61_55;
wire [7:0] transmit33_48;
wire [7:0] transmit48_33;
wire [7:0] transmit25_8;
wire [7:0] transmit8_25;

parameter EMPTY_MOVE_OUT = 32'h0000_0000; 

parameter WHITE_KINGS_SIDE = 4'b0001;
parameter WHITE_QUEENS_SIDE = 4'b0010;
parameter BLACK_KINGS_SIDE = 4'b0100;
parameter BLACK_QUEENS_SIDE = 4'b1000;

//Square[0]:
square Square0(.clk(clk),.engineColor(engineColor),.enable(enable[0]),.clear(clear),.pieceReg(pieceReg0),.posReg(6'd0),.castling(1'b0),.U_in(transmit8_0),.L_in(transmit1_0),.UL_in(transmit9_0),.U_out(transmit0_8),.L_out(transmit0_1),.UL_out(transmit0_9),.U_move_out(U_move_out0),.L_move_out(L_move_out0),
.UL_move_out(UL_move_out0),
.UUL_move_out(UUL_move_out0),.LLU_move_out(LLU_move_out0),
.UUL_in(transmit17_0),.LLU_in(transmit10_0),
.UUL_out(transmit0_17),.LLU_out(transmit0_10) );
//Square[1]:
square Square1(.clk(clk),.engineColor(engineColor),.enable(enable[1]),.clear(clear),.pieceReg(pieceReg1),.posReg(6'd1),.castling(1'b1),.U_in(transmit9_1),.L_in(transmit2_1),.R_in(transmit0_1),.UL_in(transmit10_1),.UR_in(transmit8_1),.U_out(transmit1_9),.L_out(transmit1_2),.R_out(transmit1_0),.UL_out(transmit1_10),.UR_out(transmit1_8),.U_move_out(U_move_out1),.L_move_out(L_move_out1_tmp),.R_move_out(R_move_out1),
.UL_move_out(UL_move_out1),.UR_move_out(UR_move_out1),
.UUL_move_out(UUL_move_out1),.UUR_move_out(UUR_move_out1),.LLU_move_out(LLU_move_out1),
.UUL_in(transmit18_1),.UUR_in(transmit16_1),.LLU_in(transmit11_1),
.UUL_out(transmit1_18),.UUR_out(transmit1_16),.LLU_out(transmit1_11) );
//Square[2]:
square Square2(.clk(clk),.engineColor(engineColor),.enable(enable[2]),.clear(clear),.pieceReg(pieceReg2),.posReg(6'd2),.castling(1'b0),.U_in(transmit10_2),.L_in(transmit3_2),.R_in(transmit1_2),.UL_in(transmit11_2),.UR_in(transmit9_2),.U_out(transmit2_10),.L_out(transmit2_3),.R_out(transmit2_1),.UL_out(transmit2_11),.UR_out(transmit2_9),.U_move_out(U_move_out2),.L_move_out(L_move_out2),.R_move_out(R_move_out2),
.UL_move_out(UL_move_out2),.UR_move_out(UR_move_out2),
.UUL_move_out(UUL_move_out2),.UUR_move_out(UUR_move_out2),.LLU_move_out(LLU_move_out2),.RRU_move_out(RRU_move_out2),
.UUL_in(transmit19_2),.UUR_in(transmit17_2),.LLU_in(transmit12_2),.RRU_in(transmit8_2),
.UUL_out(transmit2_19),.UUR_out(transmit2_17),.LLU_out(transmit2_12),.RRU_out(transmit2_8) );
//Square[3]:
square Square3(.clk(clk),.engineColor(engineColor),.enable(enable[3]),.clear(clear),.pieceReg(pieceReg3),.posReg(6'd3),.castling(1'b0),.U_in(transmit11_3),.L_in(transmit4_3),.R_in(transmit2_3),.UL_in(transmit12_3),.UR_in(transmit10_3),.U_out(transmit3_11),.L_out(transmit3_4),.R_out(transmit3_2),.UL_out(transmit3_12),.UR_out(transmit3_10),.U_move_out(U_move_out3),.L_move_out(L_move_out3),.R_move_out(R_move_out3),
.UL_move_out(UL_move_out3),.UR_move_out(UR_move_out3),
.UUL_move_out(UUL_move_out3),.UUR_move_out(UUR_move_out3),.LLU_move_out(LLU_move_out3),.RRU_move_out(RRU_move_out3),
.UUL_in(transmit20_3),.UUR_in(transmit18_3),.LLU_in(transmit13_3),.RRU_in(transmit9_3),
.UUL_out(transmit3_20),.UUR_out(transmit3_18),.LLU_out(transmit3_13),.RRU_out(transmit3_9) );
//Square[4]:
square Square4(.clk(clk),.engineColor(engineColor),.enable(enable[4]),.clear(clear),.pieceReg(pieceReg4),.posReg(6'd4),.castling(1'b0),.U_in(transmit12_4),.L_in(transmit5_4),.R_in(transmit3_4),.UL_in(transmit13_4),.UR_in(transmit11_4),.U_out(transmit4_12),.L_out(transmit4_5),.R_out(transmit4_3),.UL_out(transmit4_13),.UR_out(transmit4_11),.U_move_out(U_move_out4),.L_move_out(L_move_out4),.R_move_out(R_move_out4),
.UL_move_out(UL_move_out4),.UR_move_out(UR_move_out4),
.UUL_move_out(UUL_move_out4),.UUR_move_out(UUR_move_out4),.LLU_move_out(LLU_move_out4),.RRU_move_out(RRU_move_out4),
.UUL_in(transmit21_4),.UUR_in(transmit19_4),.LLU_in(transmit14_4),.RRU_in(transmit10_4),
.UUL_out(transmit4_21),.UUR_out(transmit4_19),.LLU_out(transmit4_14),.RRU_out(transmit4_10) );
//Square[5]:
square Square5(.clk(clk),.engineColor(engineColor),.enable(enable[5]),.clear(clear),.pieceReg(pieceReg5),.posReg(6'd5),.castling(1'b1),.U_in(transmit13_5),.L_in(transmit6_5),.R_in(transmit4_5),.UL_in(transmit14_5),.UR_in(transmit12_5),.U_out(transmit5_13),.L_out(transmit5_6),.R_out(transmit5_4),.UL_out(transmit5_14),.UR_out(transmit5_12),.U_move_out(U_move_out5),.L_move_out(L_move_out5),.R_move_out(R_move_out5_tmp),
.UL_move_out(UL_move_out5),.UR_move_out(UR_move_out5),
.UUL_move_out(UUL_move_out5),.UUR_move_out(UUR_move_out5),.LLU_move_out(LLU_move_out5),.RRU_move_out(RRU_move_out5),
.UUL_in(transmit22_5),.UUR_in(transmit20_5),.LLU_in(transmit15_5),.RRU_in(transmit11_5),
.UUL_out(transmit5_22),.UUR_out(transmit5_20),.LLU_out(transmit5_15),.RRU_out(transmit5_11) );
//Square[6]:
square Square6(.clk(clk),.engineColor(engineColor),.enable(enable[6]),.clear(clear),.pieceReg(pieceReg6),.posReg(6'd6),.castling(1'b0),.U_in(transmit14_6),.L_in(transmit7_6),.R_in(transmit5_6),.UL_in(transmit15_6),.UR_in(transmit13_6),.U_out(transmit6_14),.L_out(transmit6_7),.R_out(transmit6_5),.UL_out(transmit6_15),.UR_out(transmit6_13),.U_move_out(U_move_out6),.L_move_out(L_move_out6),.R_move_out(R_move_out6),
.UL_move_out(UL_move_out6),.UR_move_out(UR_move_out6),
.UUL_move_out(UUL_move_out6),.UUR_move_out(UUR_move_out6),.RRU_move_out(RRU_move_out6),
.UUL_in(transmit23_6),.UUR_in(transmit21_6),.RRU_in(transmit12_6),
.UUL_out(transmit6_23),.UUR_out(transmit6_21),.RRU_out(transmit6_12) );
//Square[7]:
square Square7(.clk(clk),.engineColor(engineColor),.enable(enable[7]),.clear(clear),.pieceReg(pieceReg7),.posReg(6'd7),.castling(1'b0),.U_in(transmit15_7),.R_in(transmit6_7),.UR_in(transmit14_7),.U_out(transmit7_15),.R_out(transmit7_6),.UR_out(transmit7_14),.U_move_out(U_move_out7),.R_move_out(R_move_out7),.UR_move_out(UR_move_out7),.UUR_move_out(UUR_move_out7),.RRU_move_out(RRU_move_out7),.UUR_in(transmit22_7),.RRU_in(transmit13_7),.UUR_out(transmit7_22),.RRU_out(transmit7_13) );
//Square[8]:
square Square8(.clk(clk),.engineColor(engineColor),.enable(enable[8]),.clear(clear),.pieceReg(pieceReg8),.posReg(6'd8),.castling(1'b0),
.D_in(transmit0_8),.U_in(transmit16_8),.L_in(transmit9_8),
.DL_in(transmit1_8),.UL_in(transmit17_8),
.D_out(transmit8_0),.U_out(transmit8_16),.L_out(transmit8_9),
.DL_out(transmit8_1),.UL_out(transmit8_17),
.D_move_out(D_move_out8),.U_move_out(U_move_out8),.L_move_out(L_move_out8),.DL_move_out(DL_move_out8),
.UL_move_out(UL_move_out8),
.UUL_move_out(UUL_move_out8),.LLU_move_out(LLU_move_out8),.LLD_move_out(LLD_move_out8),
.UUL_in(transmit25_8),.LLU_in(transmit18_8),.LLD_in(transmit2_8),
.UUL_out(transmit8_25),.LLU_out(transmit8_18),.LLD_out(transmit8_2) );
//Square[9]:
square Square9(.clk(clk),.engineColor(engineColor),.enable(enable[9]),.clear(clear),.pieceReg(pieceReg9),.posReg(6'd9),.castling(1'b0),
.D_in(transmit1_9),.U_in(transmit17_9),.L_in(transmit10_9),.R_in(transmit8_9),
.DL_in(transmit2_9),.DR_in(transmit0_9),.UL_in(transmit18_9),.UR_in(transmit16_9),
.D_out(transmit9_1),.U_out(transmit9_17),.L_out(transmit9_10),.R_out(transmit9_8),
.DL_out(transmit9_2),.DR_out(transmit9_0),.UL_out(transmit9_18),.UR_out(transmit9_16),
.D_move_out(D_move_out9),.U_move_out(U_move_out9),.L_move_out(L_move_out9),.R_move_out(R_move_out9),.DL_move_out(DL_move_out9),.DR_move_out(DR_move_out9),
.UL_move_out(UL_move_out9),.UR_move_out(UR_move_out9),
.UUL_move_out(UUL_move_out9),.UUR_move_out(UUR_move_out9),.LLU_move_out(LLU_move_out9),.LLD_move_out(LLD_move_out9),
.UUL_in(transmit26_9),.UUR_in(transmit24_9),.LLU_in(transmit19_9),.LLD_in(transmit3_9),
.UUL_out(transmit9_26),.UUR_out(transmit9_24),.LLU_out(transmit9_19),.LLD_out(transmit9_3) );
//Square[10]:
square Square10(.clk(clk),.engineColor(engineColor),.enable(enable[10]),.clear(clear),.pieceReg(pieceReg10),.posReg(6'd10),.castling(1'b0),
.D_in(transmit2_10),.U_in(transmit18_10),.L_in(transmit11_10),.R_in(transmit9_10),
.DL_in(transmit3_10),.DR_in(transmit1_10),.UL_in(transmit19_10),.UR_in(transmit17_10),
.D_out(transmit10_2),.U_out(transmit10_18),.L_out(transmit10_11),.R_out(transmit10_9),
.DL_out(transmit10_3),.DR_out(transmit10_1),.UL_out(transmit10_19),.UR_out(transmit10_17),
.D_move_out(D_move_out10),.U_move_out(U_move_out10),.L_move_out(L_move_out10),.R_move_out(R_move_out10),.DL_move_out(DL_move_out10),.DR_move_out(DR_move_out10),
.UL_move_out(UL_move_out10),.UR_move_out(UR_move_out10),
.UUL_move_out(UUL_move_out10),.UUR_move_out(UUR_move_out10),.LLU_move_out(LLU_move_out10),.RRU_move_out(RRU_move_out10),.LLD_move_out(LLD_move_out10),.RRD_move_out(RRD_move_out10),
.UUL_in(transmit27_10),.UUR_in(transmit25_10),.LLU_in(transmit20_10),.RRU_in(transmit16_10),.LLD_in(transmit4_10),.RRD_in(transmit0_10),
.UUL_out(transmit10_27),.UUR_out(transmit10_25),.LLU_out(transmit10_20),.RRU_out(transmit10_16),.LLD_out(transmit10_4),.RRD_out(transmit10_0) );
//Square[11]:
square Square11(.clk(clk),.engineColor(engineColor),.enable(enable[11]),.clear(clear),.pieceReg(pieceReg11),.posReg(6'd11),.castling(1'b0),
.D_in(transmit3_11),.U_in(transmit19_11),.L_in(transmit12_11),.R_in(transmit10_11),
.DL_in(transmit4_11),.DR_in(transmit2_11),.UL_in(transmit20_11),.UR_in(transmit18_11),
.D_out(transmit11_3),.U_out(transmit11_19),.L_out(transmit11_12),.R_out(transmit11_10),
.DL_out(transmit11_4),.DR_out(transmit11_2),.UL_out(transmit11_20),.UR_out(transmit11_18),
.D_move_out(D_move_out11),.U_move_out(U_move_out11),.L_move_out(L_move_out11),.R_move_out(R_move_out11),.DL_move_out(DL_move_out11),.DR_move_out(DR_move_out11),
.UL_move_out(UL_move_out11),.UR_move_out(UR_move_out11),
.UUL_move_out(UUL_move_out11),.UUR_move_out(UUR_move_out11),.LLU_move_out(LLU_move_out11),.RRU_move_out(RRU_move_out11),.LLD_move_out(LLD_move_out11),.RRD_move_out(RRD_move_out11),
.UUL_in(transmit28_11),.UUR_in(transmit26_11),.LLU_in(transmit21_11),.RRU_in(transmit17_11),.LLD_in(transmit5_11),.RRD_in(transmit1_11),
.UUL_out(transmit11_28),.UUR_out(transmit11_26),.LLU_out(transmit11_21),.RRU_out(transmit11_17),.LLD_out(transmit11_5),.RRD_out(transmit11_1) );
//Square[12]:
square Square12(.clk(clk),.engineColor(engineColor),.enable(enable[12]),.clear(clear),.pieceReg(pieceReg12),.posReg(6'd12),.castling(1'b0),
.D_in(transmit4_12),.U_in(transmit20_12),.L_in(transmit13_12),.R_in(transmit11_12),
.DL_in(transmit5_12),.DR_in(transmit3_12),.UL_in(transmit21_12),.UR_in(transmit19_12),
.D_out(transmit12_4),.U_out(transmit12_20),.L_out(transmit12_13),.R_out(transmit12_11),
.DL_out(transmit12_5),.DR_out(transmit12_3),.UL_out(transmit12_21),.UR_out(transmit12_19),
.D_move_out(D_move_out12),.U_move_out(U_move_out12),.L_move_out(L_move_out12),.R_move_out(R_move_out12),.DL_move_out(DL_move_out12),.DR_move_out(DR_move_out12),
.UL_move_out(UL_move_out12),.UR_move_out(UR_move_out12),
.UUL_move_out(UUL_move_out12),.UUR_move_out(UUR_move_out12),.LLU_move_out(LLU_move_out12),.RRU_move_out(RRU_move_out12),.LLD_move_out(LLD_move_out12),.RRD_move_out(RRD_move_out12),
.UUL_in(transmit29_12),.UUR_in(transmit27_12),.LLU_in(transmit22_12),.RRU_in(transmit18_12),.LLD_in(transmit6_12),.RRD_in(transmit2_12),
.UUL_out(transmit12_29),.UUR_out(transmit12_27),.LLU_out(transmit12_22),.RRU_out(transmit12_18),.LLD_out(transmit12_6),.RRD_out(transmit12_2) );
//Square[13]:
square Square13(.clk(clk),.engineColor(engineColor),.enable(enable[13]),.clear(clear),.pieceReg(pieceReg13),.posReg(6'd13),.castling(1'b0),
.D_in(transmit5_13),.U_in(transmit21_13),.L_in(transmit14_13),.R_in(transmit12_13),
.DL_in(transmit6_13),.DR_in(transmit4_13),.UL_in(transmit22_13),.UR_in(transmit20_13),
.D_out(transmit13_5),.U_out(transmit13_21),.L_out(transmit13_14),.R_out(transmit13_12),
.DL_out(transmit13_6),.DR_out(transmit13_4),.UL_out(transmit13_22),.UR_out(transmit13_20),
.D_move_out(D_move_out13),.U_move_out(U_move_out13),.L_move_out(L_move_out13),.R_move_out(R_move_out13),.DL_move_out(DL_move_out13),.DR_move_out(DR_move_out13),
.UL_move_out(UL_move_out13),.UR_move_out(UR_move_out13),
.UUL_move_out(UUL_move_out13),.UUR_move_out(UUR_move_out13),.LLU_move_out(LLU_move_out13),.RRU_move_out(RRU_move_out13),.LLD_move_out(LLD_move_out13),.RRD_move_out(RRD_move_out13),
.UUL_in(transmit30_13),.UUR_in(transmit28_13),.LLU_in(transmit23_13),.RRU_in(transmit19_13),.LLD_in(transmit7_13),.RRD_in(transmit3_13),
.UUL_out(transmit13_30),.UUR_out(transmit13_28),.LLU_out(transmit13_23),.RRU_out(transmit13_19),.LLD_out(transmit13_7),.RRD_out(transmit13_3) );
//Square[14]:
square Square14(.clk(clk),.engineColor(engineColor),.enable(enable[14]),.clear(clear),.pieceReg(pieceReg14),.posReg(6'd14),.castling(1'b0),
.D_in(transmit6_14),.U_in(transmit22_14),.L_in(transmit15_14),.R_in(transmit13_14),
.DL_in(transmit7_14),.DR_in(transmit5_14),.UL_in(transmit23_14),.UR_in(transmit21_14),
.D_out(transmit14_6),.U_out(transmit14_22),.L_out(transmit14_15),.R_out(transmit14_13),
.DL_out(transmit14_7),.DR_out(transmit14_5),.UL_out(transmit14_23),.UR_out(transmit14_21),
.D_move_out(D_move_out14),.U_move_out(U_move_out14),.L_move_out(L_move_out14),.R_move_out(R_move_out14),.DL_move_out(DL_move_out14),.DR_move_out(DR_move_out14),
.UL_move_out(UL_move_out14),.UR_move_out(UR_move_out14),
.UUL_move_out(UUL_move_out14),.UUR_move_out(UUR_move_out14),.RRU_move_out(RRU_move_out14),.RRD_move_out(RRD_move_out14),
.UUL_in(transmit31_14),.UUR_in(transmit29_14),.RRU_in(transmit20_14),.RRD_in(transmit4_14),
.UUL_out(transmit14_31),.UUR_out(transmit14_29),.RRU_out(transmit14_20),.RRD_out(transmit14_4) );
//Square[15]:
square Square15(.clk(clk),.engineColor(engineColor),.enable(enable[15]),.clear(clear),.pieceReg(pieceReg15),.posReg(6'd15),.castling(1'b0),
.D_in(transmit7_15),.U_in(transmit23_15),.R_in(transmit14_15),.DR_in(transmit6_15),.UR_in(transmit22_15),
.D_out(transmit15_7),.U_out(transmit15_23),.R_out(transmit15_14),.DR_out(transmit15_6),.UR_out(transmit15_22),
.D_move_out(D_move_out15),.U_move_out(U_move_out15),.R_move_out(R_move_out15),.DR_move_out(DR_move_out15),.UR_move_out(UR_move_out15),.UUR_move_out(UUR_move_out15),.RRU_move_out(RRU_move_out15),.RRD_move_out(RRD_move_out15),.UUR_in(transmit30_15),.RRU_in(transmit21_15),.RRD_in(transmit5_15),.UUR_out(transmit15_30),.RRU_out(transmit15_21),.RRD_out(transmit15_5) );
//Square[16]:
square Square16(.clk(clk),.engineColor(engineColor),.enable(enable[16]),.clear(clear),.pieceReg(pieceReg16),.posReg(6'd16),.castling(1'b0),
.D_in(transmit8_16),.U_in(transmit24_16),.L_in(transmit17_16),
.DL_in(transmit9_16),.UL_in(transmit25_16),
.D_out(transmit16_8),.U_out(transmit16_24),.L_out(transmit16_17),
.DL_out(transmit16_9),.UL_out(transmit16_25),
.D_move_out(D_move_out16),.U_move_out(U_move_out16),.L_move_out(L_move_out16),.DL_move_out(DL_move_out16),
.UL_move_out(UL_move_out16),
.UUL_move_out(UUL_move_out16),.LLU_move_out(LLU_move_out16),
.DDL_move_out(DDL_move_out16),.LLD_move_out(LLD_move_out16),
.UUL_in(transmit33_16),.LLU_in(transmit26_16),
.DDL_in(transmit1_16),.LLD_in(transmit10_16),
.UUL_out(transmit16_33),.LLU_out(transmit16_26),
.DDL_out(transmit16_1),.LLD_out(transmit16_10) );
//Square[17]:
square Square17(.clk(clk),.engineColor(engineColor),.enable(enable[17]),.clear(clear),.pieceReg(pieceReg17),.posReg(6'd17),.castling(1'b0),
.D_in(transmit9_17),.U_in(transmit25_17),.L_in(transmit18_17),.R_in(transmit16_17),
.DL_in(transmit10_17),.DR_in(transmit8_17),.UL_in(transmit26_17),.UR_in(transmit24_17),
.D_out(transmit17_9),.U_out(transmit17_25),.L_out(transmit17_18),.R_out(transmit17_16),
.DL_out(transmit17_10),.DR_out(transmit17_8),.UL_out(transmit17_26),.UR_out(transmit17_24),
.D_move_out(D_move_out17),.U_move_out(U_move_out17),.L_move_out(L_move_out17),.R_move_out(R_move_out17),.DL_move_out(DL_move_out17),.DR_move_out(DR_move_out17),
.UL_move_out(UL_move_out17),.UR_move_out(UR_move_out17),
.UUL_move_out(UUL_move_out17),.LLU_move_out(LLU_move_out17),
.DDL_move_out(DDL_move_out17),.LLD_move_out(LLD_move_out17),
.UUL_in(transmit34_17),.LLU_in(transmit27_17),
.DDL_in(transmit2_17),.LLD_in(transmit11_17),
.UUL_out(transmit17_34),.LLU_out(transmit17_27),
.DDL_out(transmit17_2),.LLD_out(transmit17_11) );
//Square[18]:
square Square18(.clk(clk),.engineColor(engineColor),.enable(enable[18]),.clear(clear),.pieceReg(pieceReg18),.posReg(6'd18),.castling(1'b0),
.D_in(transmit10_18),.U_in(transmit26_18),.L_in(transmit19_18),.R_in(transmit17_18),
.DL_in(transmit11_18),.DR_in(transmit9_18),.UL_in(transmit27_18),.UR_in(transmit25_18),
.D_out(transmit18_10),.U_out(transmit18_26),.L_out(transmit18_19),.R_out(transmit18_17),
.DL_out(transmit18_11),.DR_out(transmit18_9),.UL_out(transmit18_27),.UR_out(transmit18_25),
.D_move_out(D_move_out18),.U_move_out(U_move_out18),.L_move_out(L_move_out18),.R_move_out(R_move_out18),.DL_move_out(DL_move_out18),.DR_move_out(DR_move_out18),
.UL_move_out(UL_move_out18),.UR_move_out(UR_move_out18),
.UUL_move_out(UUL_move_out18),.UUR_move_out(UUR_move_out18),.LLU_move_out(LLU_move_out18),.RRU_move_out(RRU_move_out18),
.DDL_move_out(DDL_move_out18),.DDR_move_out(DDR_move_out18),.LLD_move_out(LLD_move_out18),.RRD_move_out(RRD_move_out18),
.UUL_in(transmit35_18),.UUR_in(transmit33_18),.LLU_in(transmit28_18),.RRU_in(transmit24_18),
.DDL_in(transmit3_18),.DDR_in(transmit1_18),.LLD_in(transmit12_18),.RRD_in(transmit8_18),
.UUL_out(transmit18_35),.UUR_out(transmit18_33),.LLU_out(transmit18_28),.RRU_out(transmit18_24),
.DDL_out(transmit18_3),.DDR_out(transmit18_1),.LLD_out(transmit18_12),.RRD_out(transmit18_8) );
//Square[19]:
square Square19(.clk(clk),.engineColor(engineColor),.enable(enable[19]),.clear(clear),.pieceReg(pieceReg19),.posReg(6'd19),.castling(1'b0),
.D_in(transmit11_19),.U_in(transmit27_19),.L_in(transmit20_19),.R_in(transmit18_19),
.DL_in(transmit12_19),.DR_in(transmit10_19),.UL_in(transmit28_19),.UR_in(transmit26_19),
.D_out(transmit19_11),.U_out(transmit19_27),.L_out(transmit19_20),.R_out(transmit19_18),
.DL_out(transmit19_12),.DR_out(transmit19_10),.UL_out(transmit19_28),.UR_out(transmit19_26),
.D_move_out(D_move_out19),.U_move_out(U_move_out19),.L_move_out(L_move_out19),.R_move_out(R_move_out19),.DL_move_out(DL_move_out19),.DR_move_out(DR_move_out19),
.UL_move_out(UL_move_out19),.UR_move_out(UR_move_out19),
.UUL_move_out(UUL_move_out19),.UUR_move_out(UUR_move_out19),.LLU_move_out(LLU_move_out19),.RRU_move_out(RRU_move_out19),
.DDL_move_out(DDL_move_out19),.DDR_move_out(DDR_move_out19),.LLD_move_out(LLD_move_out19),.RRD_move_out(RRD_move_out19),
.UUL_in(transmit36_19),.UUR_in(transmit34_19),.LLU_in(transmit29_19),.RRU_in(transmit25_19),
.DDL_in(transmit4_19),.DDR_in(transmit2_19),.LLD_in(transmit13_19),.RRD_in(transmit9_19),
.UUL_out(transmit19_36),.UUR_out(transmit19_34),.LLU_out(transmit19_29),.RRU_out(transmit19_25),
.DDL_out(transmit19_4),.DDR_out(transmit19_2),.LLD_out(transmit19_13),.RRD_out(transmit19_9) );
//Square[20]:
square Square20(.clk(clk),.engineColor(engineColor),.enable(enable[20]),.clear(clear),.pieceReg(pieceReg20),.posReg(6'd20),.castling(1'b0),
.D_in(transmit12_20),.U_in(transmit28_20),.L_in(transmit21_20),.R_in(transmit19_20),
.DL_in(transmit13_20),.DR_in(transmit11_20),.UL_in(transmit29_20),.UR_in(transmit27_20),
.D_out(transmit20_12),.U_out(transmit20_28),.L_out(transmit20_21),.R_out(transmit20_19),
.DL_out(transmit20_13),.DR_out(transmit20_11),.UL_out(transmit20_29),.UR_out(transmit20_27),
.D_move_out(D_move_out20),.U_move_out(U_move_out20),.L_move_out(L_move_out20),.R_move_out(R_move_out20),.DL_move_out(DL_move_out20),.DR_move_out(DR_move_out20),
.UL_move_out(UL_move_out20),.UR_move_out(UR_move_out20),
.UUL_move_out(UUL_move_out20),.UUR_move_out(UUR_move_out20),.LLU_move_out(LLU_move_out20),.RRU_move_out(RRU_move_out20),
.DDL_move_out(DDL_move_out20),.DDR_move_out(DDR_move_out20),.LLD_move_out(LLD_move_out20),.RRD_move_out(RRD_move_out20),
.UUL_in(transmit37_20),.UUR_in(transmit35_20),.LLU_in(transmit30_20),.RRU_in(transmit26_20),
.DDL_in(transmit5_20),.DDR_in(transmit3_20),.LLD_in(transmit14_20),.RRD_in(transmit10_20),
.UUL_out(transmit20_37),.UUR_out(transmit20_35),.LLU_out(transmit20_30),.RRU_out(transmit20_26),
.DDL_out(transmit20_5),.DDR_out(transmit20_3),.LLD_out(transmit20_14),.RRD_out(transmit20_10) );
//Square[21]:
square Square21(.clk(clk),.engineColor(engineColor),.enable(enable[21]),.clear(clear),.pieceReg(pieceReg21),.posReg(6'd21),.castling(1'b0),
.D_in(transmit13_21),.U_in(transmit29_21),.L_in(transmit22_21),.R_in(transmit20_21),
.DL_in(transmit14_21),.DR_in(transmit12_21),.UL_in(transmit30_21),.UR_in(transmit28_21),
.D_out(transmit21_13),.U_out(transmit21_29),.L_out(transmit21_22),.R_out(transmit21_20),
.DL_out(transmit21_14),.DR_out(transmit21_12),.UL_out(transmit21_30),.UR_out(transmit21_28),
.D_move_out(D_move_out21),.U_move_out(U_move_out21),.L_move_out(L_move_out21),.R_move_out(R_move_out21),.DL_move_out(DL_move_out21),.DR_move_out(DR_move_out21),
.UL_move_out(UL_move_out21),.UR_move_out(UR_move_out21),
.UUL_move_out(UUL_move_out21),.UUR_move_out(UUR_move_out21),.LLU_move_out(LLU_move_out21),.RRU_move_out(RRU_move_out21),
.DDL_move_out(DDL_move_out21),.DDR_move_out(DDR_move_out21),.LLD_move_out(LLD_move_out21),.RRD_move_out(RRD_move_out21),
.UUL_in(transmit38_21),.UUR_in(transmit36_21),.LLU_in(transmit31_21),.RRU_in(transmit27_21),
.DDL_in(transmit6_21),.DDR_in(transmit4_21),.LLD_in(transmit15_21),.RRD_in(transmit11_21),
.UUL_out(transmit21_38),.UUR_out(transmit21_36),.LLU_out(transmit21_31),.RRU_out(transmit21_27),
.DDL_out(transmit21_6),.DDR_out(transmit21_4),.LLD_out(transmit21_15),.RRD_out(transmit21_11) );
//Square[22]:
square Square22(.clk(clk),.engineColor(engineColor),.enable(enable[22]),.clear(clear),.pieceReg(pieceReg22),.posReg(6'd22),.castling(1'b0),
.D_in(transmit14_22),.U_in(transmit30_22),.L_in(transmit23_22),.R_in(transmit21_22),
.DL_in(transmit15_22),.DR_in(transmit13_22),.UL_in(transmit31_22),.UR_in(transmit29_22),
.D_out(transmit22_14),.U_out(transmit22_30),.L_out(transmit22_23),.R_out(transmit22_21),
.DL_out(transmit22_15),.DR_out(transmit22_13),.UL_out(transmit22_31),.UR_out(transmit22_29),
.D_move_out(D_move_out22),.U_move_out(U_move_out22),.L_move_out(L_move_out22),.R_move_out(R_move_out22),.DL_move_out(DL_move_out22),.DR_move_out(DR_move_out22),
.UL_move_out(UL_move_out22),.UR_move_out(UR_move_out22),
.UUL_move_out(UUL_move_out22),.UUR_move_out(UUR_move_out22),.RRU_move_out(RRU_move_out22),
.DDL_move_out(DDL_move_out22),.DDR_move_out(DDR_move_out22),.RRD_move_out(RRD_move_out22),
.UUL_in(transmit39_22),.UUR_in(transmit37_22),.RRU_in(transmit28_22),
.DDL_in(transmit7_22),.DDR_in(transmit5_22),.RRD_in(transmit12_22),
.UUL_out(transmit22_39),.UUR_out(transmit22_37),.RRU_out(transmit22_28),
.DDL_out(transmit22_7),.DDR_out(transmit22_5),.RRD_out(transmit22_12) );
//Square[23]:
square Square23(.clk(clk),.engineColor(engineColor),.enable(enable[23]),.clear(clear),.pieceReg(pieceReg23),.posReg(6'd23),.castling(1'b0),
.D_in(transmit15_23),.U_in(transmit31_23),.R_in(transmit22_23),.DR_in(transmit14_23),.UR_in(transmit30_23),
.D_out(transmit23_15),.U_out(transmit23_31),.R_out(transmit23_22),.DR_out(transmit23_14),.UR_out(transmit23_30),
.D_move_out(D_move_out23),.U_move_out(U_move_out23),.R_move_out(R_move_out23),.DR_move_out(DR_move_out23),.UR_move_out(UR_move_out23),.UUR_move_out(UUR_move_out23),.RRU_move_out(RRU_move_out23),.DDR_move_out(DDR_move_out23),.RRD_move_out(RRD_move_out23),.UUR_in(transmit38_23),.RRU_in(transmit29_23),.DDR_in(transmit6_23),.RRD_in(transmit13_23),.UUR_out(transmit23_38),.RRU_out(transmit23_29),.DDR_out(transmit23_6),.RRD_out(transmit23_13) );
//Square[24]:
square Square24(.clk(clk),.engineColor(engineColor),.enable(enable[24]),.clear(clear),.pieceReg(pieceReg24),.posReg(6'd24),.castling(1'b0),
.D_in(transmit16_24),.U_in(transmit32_24),.L_in(transmit25_24),
.DL_in(transmit17_24),.UL_in(transmit33_24),
.D_out(transmit24_16),.U_out(transmit24_32),.L_out(transmit24_25),
.DL_out(transmit24_17),.UL_out(transmit24_33),
.D_move_out(D_move_out24),.U_move_out(U_move_out24),.L_move_out(L_move_out24),.DL_move_out(DL_move_out24),
.UL_move_out(UL_move_out24),
.UUL_move_out(UUL_move_out24),.LLU_move_out(LLU_move_out24),
.DDL_move_out(DDL_move_out24),.LLD_move_out(LLD_move_out24),
.UUL_in(transmit41_24),.LLU_in(transmit34_24),
.DDL_in(transmit9_24),.LLD_in(transmit18_24),
.UUL_out(transmit24_41),.LLU_out(transmit24_34),
.DDL_out(transmit24_9),.LLD_out(transmit24_18) );
//Square[25]:
square Square25(.clk(clk),.engineColor(engineColor),.enable(enable[25]),.clear(clear),.pieceReg(pieceReg25),.posReg(6'd25),.castling(1'b0),
.D_in(transmit17_25),.U_in(transmit33_25),.L_in(transmit26_25),.R_in(transmit24_25),
.DL_in(transmit18_25),.DR_in(transmit16_25),.UL_in(transmit34_25),.UR_in(transmit32_25),
.D_out(transmit25_17),.U_out(transmit25_33),.L_out(transmit25_26),.R_out(transmit25_24),
.DL_out(transmit25_18),.DR_out(transmit25_16),.UL_out(transmit25_34),.UR_out(transmit25_32),
.D_move_out(D_move_out25),.U_move_out(U_move_out25),.L_move_out(L_move_out25),.R_move_out(R_move_out25),.DL_move_out(DL_move_out25),.DR_move_out(DR_move_out25),
.UL_move_out(UL_move_out25),.UR_move_out(UR_move_out25),
.UUL_move_out(UUL_move_out25),.LLU_move_out(LLU_move_out25),
.DDL_move_out(DDL_move_out25),.LLD_move_out(LLD_move_out25),
.UUL_in(transmit42_25),.LLU_in(transmit35_25),
.DDL_in(transmit10_25),.LLD_in(transmit19_25),
.UUL_out(transmit25_42),.LLU_out(transmit25_35),
.DDL_out(transmit25_10),.LLD_out(transmit25_19) );
//Square[26]:
square Square26(.clk(clk),.engineColor(engineColor),.enable(enable[26]),.clear(clear),.pieceReg(pieceReg26),.posReg(6'd26),.castling(1'b0),
.D_in(transmit18_26),.U_in(transmit34_26),.L_in(transmit27_26),.R_in(transmit25_26),
.DL_in(transmit19_26),.DR_in(transmit17_26),.UL_in(transmit35_26),.UR_in(transmit33_26),
.D_out(transmit26_18),.U_out(transmit26_34),.L_out(transmit26_27),.R_out(transmit26_25),
.DL_out(transmit26_19),.DR_out(transmit26_17),.UL_out(transmit26_35),.UR_out(transmit26_33),
.D_move_out(D_move_out26),.U_move_out(U_move_out26),.L_move_out(L_move_out26),.R_move_out(R_move_out26),.DL_move_out(DL_move_out26),.DR_move_out(DR_move_out26),
.UL_move_out(UL_move_out26),.UR_move_out(UR_move_out26),
.UUL_move_out(UUL_move_out26),.UUR_move_out(UUR_move_out26),.LLU_move_out(LLU_move_out26),.RRU_move_out(RRU_move_out26),
.DDL_move_out(DDL_move_out26),.DDR_move_out(DDR_move_out26),.LLD_move_out(LLD_move_out26),.RRD_move_out(RRD_move_out26),
.UUL_in(transmit43_26),.UUR_in(transmit41_26),.LLU_in(transmit36_26),.RRU_in(transmit32_26),
.DDL_in(transmit11_26),.DDR_in(transmit9_26),.LLD_in(transmit20_26),.RRD_in(transmit16_26),
.UUL_out(transmit26_43),.UUR_out(transmit26_41),.LLU_out(transmit26_36),.RRU_out(transmit26_32),
.DDL_out(transmit26_11),.DDR_out(transmit26_9),.LLD_out(transmit26_20),.RRD_out(transmit26_16) );
//Square[27]:
square Square27(.clk(clk),.engineColor(engineColor),.enable(enable[27]),.clear(clear),.pieceReg(pieceReg27),.posReg(6'd27),.castling(1'b0),
.D_in(transmit19_27),.U_in(transmit35_27),.L_in(transmit28_27),.R_in(transmit26_27),
.DL_in(transmit20_27),.DR_in(transmit18_27),.UL_in(transmit36_27),.UR_in(transmit34_27),
.D_out(transmit27_19),.U_out(transmit27_35),.L_out(transmit27_28),.R_out(transmit27_26),
.DL_out(transmit27_20),.DR_out(transmit27_18),.UL_out(transmit27_36),.UR_out(transmit27_34),
.D_move_out(D_move_out27),.U_move_out(U_move_out27),.L_move_out(L_move_out27),.R_move_out(R_move_out27),.DL_move_out(DL_move_out27),.DR_move_out(DR_move_out27),
.UL_move_out(UL_move_out27),.UR_move_out(UR_move_out27),
.UUL_move_out(UUL_move_out27),.UUR_move_out(UUR_move_out27),.LLU_move_out(LLU_move_out27),.RRU_move_out(RRU_move_out27),
.DDL_move_out(DDL_move_out27),.DDR_move_out(DDR_move_out27),.LLD_move_out(LLD_move_out27),.RRD_move_out(RRD_move_out27),
.UUL_in(transmit44_27),.UUR_in(transmit42_27),.LLU_in(transmit37_27),.RRU_in(transmit33_27),
.DDL_in(transmit12_27),.DDR_in(transmit10_27),.LLD_in(transmit21_27),.RRD_in(transmit17_27),
.UUL_out(transmit27_44),.UUR_out(transmit27_42),.LLU_out(transmit27_37),.RRU_out(transmit27_33),
.DDL_out(transmit27_12),.DDR_out(transmit27_10),.LLD_out(transmit27_21),.RRD_out(transmit27_17) );
//Square[28]:
square Square28(.clk(clk),.engineColor(engineColor),.enable(enable[28]),.clear(clear),.pieceReg(pieceReg28),.posReg(6'd28),.castling(1'b0),
.D_in(transmit20_28),.U_in(transmit36_28),.L_in(transmit29_28),.R_in(transmit27_28),
.DL_in(transmit21_28),.DR_in(transmit19_28),.UL_in(transmit37_28),.UR_in(transmit35_28),
.D_out(transmit28_20),.U_out(transmit28_36),.L_out(transmit28_29),.R_out(transmit28_27),
.DL_out(transmit28_21),.DR_out(transmit28_19),.UL_out(transmit28_37),.UR_out(transmit28_35),
.D_move_out(D_move_out28),.U_move_out(U_move_out28),.L_move_out(L_move_out28),.R_move_out(R_move_out28),.DL_move_out(DL_move_out28),.DR_move_out(DR_move_out28),
.UL_move_out(UL_move_out28),.UR_move_out(UR_move_out28),
.UUL_move_out(UUL_move_out28),.UUR_move_out(UUR_move_out28),.LLU_move_out(LLU_move_out28),.RRU_move_out(RRU_move_out28),
.DDL_move_out(DDL_move_out28),.DDR_move_out(DDR_move_out28),.LLD_move_out(LLD_move_out28),.RRD_move_out(RRD_move_out28),
.UUL_in(transmit45_28),.UUR_in(transmit43_28),.LLU_in(transmit38_28),.RRU_in(transmit34_28),
.DDL_in(transmit13_28),.DDR_in(transmit11_28),.LLD_in(transmit22_28),.RRD_in(transmit18_28),
.UUL_out(transmit28_45),.UUR_out(transmit28_43),.LLU_out(transmit28_38),.RRU_out(transmit28_34),
.DDL_out(transmit28_13),.DDR_out(transmit28_11),.LLD_out(transmit28_22),.RRD_out(transmit28_18) );
//Square[29]:
square Square29(.clk(clk),.engineColor(engineColor),.enable(enable[29]),.clear(clear),.pieceReg(pieceReg29),.posReg(6'd29),.castling(1'b0),
.D_in(transmit21_29),.U_in(transmit37_29),.L_in(transmit30_29),.R_in(transmit28_29),
.DL_in(transmit22_29),.DR_in(transmit20_29),.UL_in(transmit38_29),.UR_in(transmit36_29),
.D_out(transmit29_21),.U_out(transmit29_37),.L_out(transmit29_30),.R_out(transmit29_28),
.DL_out(transmit29_22),.DR_out(transmit29_20),.UL_out(transmit29_38),.UR_out(transmit29_36),
.D_move_out(D_move_out29),.U_move_out(U_move_out29),.L_move_out(L_move_out29),.R_move_out(R_move_out29),.DL_move_out(DL_move_out29),.DR_move_out(DR_move_out29),
.UL_move_out(UL_move_out29),.UR_move_out(UR_move_out29),
.UUL_move_out(UUL_move_out29),.UUR_move_out(UUR_move_out29),.LLU_move_out(LLU_move_out29),.RRU_move_out(RRU_move_out29),
.DDL_move_out(DDL_move_out29),.DDR_move_out(DDR_move_out29),.LLD_move_out(LLD_move_out29),.RRD_move_out(RRD_move_out29),
.UUL_in(transmit46_29),.UUR_in(transmit44_29),.LLU_in(transmit39_29),.RRU_in(transmit35_29),
.DDL_in(transmit14_29),.DDR_in(transmit12_29),.LLD_in(transmit23_29),.RRD_in(transmit19_29),
.UUL_out(transmit29_46),.UUR_out(transmit29_44),.LLU_out(transmit29_39),.RRU_out(transmit29_35),
.DDL_out(transmit29_14),.DDR_out(transmit29_12),.LLD_out(transmit29_23),.RRD_out(transmit29_19) );
//Square[30]:
square Square30(.clk(clk),.engineColor(engineColor),.enable(enable[30]),.clear(clear),.pieceReg(pieceReg30),.posReg(6'd30),.castling(1'b0),
.D_in(transmit22_30),.U_in(transmit38_30),.L_in(transmit31_30),.R_in(transmit29_30),
.DL_in(transmit23_30),.DR_in(transmit21_30),.UL_in(transmit39_30),.UR_in(transmit37_30),
.D_out(transmit30_22),.U_out(transmit30_38),.L_out(transmit30_31),.R_out(transmit30_29),
.DL_out(transmit30_23),.DR_out(transmit30_21),.UL_out(transmit30_39),.UR_out(transmit30_37),
.D_move_out(D_move_out30),.U_move_out(U_move_out30),.L_move_out(L_move_out30),.R_move_out(R_move_out30),.DL_move_out(DL_move_out30),.DR_move_out(DR_move_out30),
.UL_move_out(UL_move_out30),.UR_move_out(UR_move_out30),
.UUL_move_out(UUL_move_out30),.UUR_move_out(UUR_move_out30),.RRU_move_out(RRU_move_out30),
.DDL_move_out(DDL_move_out30),.DDR_move_out(DDR_move_out30),.RRD_move_out(RRD_move_out30),
.UUL_in(transmit47_30),.UUR_in(transmit45_30),.RRU_in(transmit36_30),
.DDL_in(transmit15_30),.DDR_in(transmit13_30),.RRD_in(transmit20_30),
.UUL_out(transmit30_47),.UUR_out(transmit30_45),.RRU_out(transmit30_36),
.DDL_out(transmit30_15),.DDR_out(transmit30_13),.RRD_out(transmit30_20) );
//Square[31]:
square Square31(.clk(clk),.engineColor(engineColor),.enable(enable[31]),.clear(clear),.pieceReg(pieceReg31),.posReg(6'd31),.castling(1'b0),
.D_in(transmit23_31),.U_in(transmit39_31),.R_in(transmit30_31),.DR_in(transmit22_31),.UR_in(transmit38_31),
.D_out(transmit31_23),.U_out(transmit31_39),.R_out(transmit31_30),.DR_out(transmit31_22),.UR_out(transmit31_38),
.D_move_out(D_move_out31),.U_move_out(U_move_out31),.R_move_out(R_move_out31),.DR_move_out(DR_move_out31),.UR_move_out(UR_move_out31),.UUR_move_out(UUR_move_out31),.RRU_move_out(RRU_move_out31),.DDR_move_out(DDR_move_out31),.RRD_move_out(RRD_move_out31),.UUR_in(transmit46_31),.RRU_in(transmit37_31),.DDR_in(transmit14_31),.RRD_in(transmit21_31),.UUR_out(transmit31_46),.RRU_out(transmit31_37),.DDR_out(transmit31_14),.RRD_out(transmit31_21) );
//Square[32]:
square Square32(.clk(clk),.engineColor(engineColor),.enable(enable[32]),.clear(clear),.pieceReg(pieceReg32),.posReg(6'd32),.castling(1'b0),
.D_in(transmit24_32),.U_in(transmit40_32),.L_in(transmit33_32),
.DL_in(transmit25_32),.UL_in(transmit41_32),
.D_out(transmit32_24),.U_out(transmit32_40),.L_out(transmit32_33),
.DL_out(transmit32_25),.UL_out(transmit32_41),
.D_move_out(D_move_out32),.U_move_out(U_move_out32),.L_move_out(L_move_out32),.DL_move_out(DL_move_out32),
.UL_move_out(UL_move_out32),
.UUL_move_out(UUL_move_out32),.LLU_move_out(LLU_move_out32),
.DDL_move_out(DDL_move_out32),.LLD_move_out(LLD_move_out32),
.UUL_in(transmit49_32),.LLU_in(transmit42_32),
.DDL_in(transmit17_32),.LLD_in(transmit26_32),
.UUL_out(transmit32_49),.LLU_out(transmit32_42),
.DDL_out(transmit32_17),.LLD_out(transmit32_26) );
//Square[33]:
square Square33(.clk(clk),.engineColor(engineColor),.enable(enable[33]),.clear(clear),.pieceReg(pieceReg33),.posReg(6'd33),.castling(1'b0),
.D_in(transmit25_33),.U_in(transmit41_33),.L_in(transmit34_33),.R_in(transmit32_33),
.DL_in(transmit26_33),.DR_in(transmit24_33),.UL_in(transmit42_33),.UR_in(transmit40_33),
.D_out(transmit33_25),.U_out(transmit33_41),.L_out(transmit33_34),.R_out(transmit33_32),
.DL_out(transmit33_26),.DR_out(transmit33_24),.UL_out(transmit33_42),.UR_out(transmit33_40),
.D_move_out(D_move_out33),.U_move_out(U_move_out33),.L_move_out(L_move_out33),.R_move_out(R_move_out33),.DL_move_out(DL_move_out33),.DR_move_out(DR_move_out33),
.UL_move_out(UL_move_out33),.UR_move_out(UR_move_out33),
.UUL_move_out(UUL_move_out33),.LLU_move_out(LLU_move_out33),
.DDL_move_out(DDL_move_out33),.LLD_move_out(LLD_move_out33),
.UUL_in(transmit50_33),.LLU_in(transmit43_33),
.DDL_in(transmit18_33),.LLD_in(transmit27_33),
.UUL_out(transmit33_50),.LLU_out(transmit33_43),
.DDL_out(transmit33_18),.LLD_out(transmit33_27) );
//Square[34]:
square Square34(.clk(clk),.engineColor(engineColor),.enable(enable[34]),.clear(clear),.pieceReg(pieceReg34),.posReg(6'd34),.castling(1'b0),
.D_in(transmit26_34),.U_in(transmit42_34),.L_in(transmit35_34),.R_in(transmit33_34),
.DL_in(transmit27_34),.DR_in(transmit25_34),.UL_in(transmit43_34),.UR_in(transmit41_34),
.D_out(transmit34_26),.U_out(transmit34_42),.L_out(transmit34_35),.R_out(transmit34_33),
.DL_out(transmit34_27),.DR_out(transmit34_25),.UL_out(transmit34_43),.UR_out(transmit34_41),
.D_move_out(D_move_out34),.U_move_out(U_move_out34),.L_move_out(L_move_out34),.R_move_out(R_move_out34),.DL_move_out(DL_move_out34),.DR_move_out(DR_move_out34),
.UL_move_out(UL_move_out34),.UR_move_out(UR_move_out34),
.UUL_move_out(UUL_move_out34),.UUR_move_out(UUR_move_out34),.LLU_move_out(LLU_move_out34),.RRU_move_out(RRU_move_out34),
.DDL_move_out(DDL_move_out34),.DDR_move_out(DDR_move_out34),.LLD_move_out(LLD_move_out34),.RRD_move_out(RRD_move_out34),
.UUL_in(transmit51_34),.UUR_in(transmit49_34),.LLU_in(transmit44_34),.RRU_in(transmit40_34),
.DDL_in(transmit19_34),.DDR_in(transmit17_34),.LLD_in(transmit28_34),.RRD_in(transmit24_34),
.UUL_out(transmit34_51),.UUR_out(transmit34_49),.LLU_out(transmit34_44),.RRU_out(transmit34_40),
.DDL_out(transmit34_19),.DDR_out(transmit34_17),.LLD_out(transmit34_28),.RRD_out(transmit34_24) );
//Square[35]:
square Square35(.clk(clk),.engineColor(engineColor),.enable(enable[35]),.clear(clear),.pieceReg(pieceReg35),.posReg(6'd35),.castling(1'b0),
.D_in(transmit27_35),.U_in(transmit43_35),.L_in(transmit36_35),.R_in(transmit34_35),
.DL_in(transmit28_35),.DR_in(transmit26_35),.UL_in(transmit44_35),.UR_in(transmit42_35),
.D_out(transmit35_27),.U_out(transmit35_43),.L_out(transmit35_36),.R_out(transmit35_34),
.DL_out(transmit35_28),.DR_out(transmit35_26),.UL_out(transmit35_44),.UR_out(transmit35_42),
.D_move_out(D_move_out35),.U_move_out(U_move_out35),.L_move_out(L_move_out35),.R_move_out(R_move_out35),.DL_move_out(DL_move_out35),.DR_move_out(DR_move_out35),
.UL_move_out(UL_move_out35),.UR_move_out(UR_move_out35),
.UUL_move_out(UUL_move_out35),.UUR_move_out(UUR_move_out35),.LLU_move_out(LLU_move_out35),.RRU_move_out(RRU_move_out35),
.DDL_move_out(DDL_move_out35),.DDR_move_out(DDR_move_out35),.LLD_move_out(LLD_move_out35),.RRD_move_out(RRD_move_out35),
.UUL_in(transmit52_35),.UUR_in(transmit50_35),.LLU_in(transmit45_35),.RRU_in(transmit41_35),
.DDL_in(transmit20_35),.DDR_in(transmit18_35),.LLD_in(transmit29_35),.RRD_in(transmit25_35),
.UUL_out(transmit35_52),.UUR_out(transmit35_50),.LLU_out(transmit35_45),.RRU_out(transmit35_41),
.DDL_out(transmit35_20),.DDR_out(transmit35_18),.LLD_out(transmit35_29),.RRD_out(transmit35_25) );
//Square[36]:
square Square36(.clk(clk),.engineColor(engineColor),.enable(enable[36]),.clear(clear),.pieceReg(pieceReg36),.posReg(6'd36),.castling(1'b0),
.D_in(transmit28_36),.U_in(transmit44_36),.L_in(transmit37_36),.R_in(transmit35_36),
.DL_in(transmit29_36),.DR_in(transmit27_36),.UL_in(transmit45_36),.UR_in(transmit43_36),
.D_out(transmit36_28),.U_out(transmit36_44),.L_out(transmit36_37),.R_out(transmit36_35),
.DL_out(transmit36_29),.DR_out(transmit36_27),.UL_out(transmit36_45),.UR_out(transmit36_43),
.D_move_out(D_move_out36),.U_move_out(U_move_out36),.L_move_out(L_move_out36),.R_move_out(R_move_out36),.DL_move_out(DL_move_out36),.DR_move_out(DR_move_out36),
.UL_move_out(UL_move_out36),.UR_move_out(UR_move_out36),
.UUL_move_out(UUL_move_out36),.UUR_move_out(UUR_move_out36),.LLU_move_out(LLU_move_out36),.RRU_move_out(RRU_move_out36),
.DDL_move_out(DDL_move_out36),.DDR_move_out(DDR_move_out36),.LLD_move_out(LLD_move_out36),.RRD_move_out(RRD_move_out36),
.UUL_in(transmit53_36),.UUR_in(transmit51_36),.LLU_in(transmit46_36),.RRU_in(transmit42_36),
.DDL_in(transmit21_36),.DDR_in(transmit19_36),.LLD_in(transmit30_36),.RRD_in(transmit26_36),
.UUL_out(transmit36_53),.UUR_out(transmit36_51),.LLU_out(transmit36_46),.RRU_out(transmit36_42),
.DDL_out(transmit36_21),.DDR_out(transmit36_19),.LLD_out(transmit36_30),.RRD_out(transmit36_26) );
//Square[37]:
square Square37(.clk(clk),.engineColor(engineColor),.enable(enable[37]),.clear(clear),.pieceReg(pieceReg37),.posReg(6'd37),.castling(1'b0),
.D_in(transmit29_37),.U_in(transmit45_37),.L_in(transmit38_37),.R_in(transmit36_37),
.DL_in(transmit30_37),.DR_in(transmit28_37),.UL_in(transmit46_37),.UR_in(transmit44_37),
.D_out(transmit37_29),.U_out(transmit37_45),.L_out(transmit37_38),.R_out(transmit37_36),
.DL_out(transmit37_30),.DR_out(transmit37_28),.UL_out(transmit37_46),.UR_out(transmit37_44),
.D_move_out(D_move_out37),.U_move_out(U_move_out37),.L_move_out(L_move_out37),.R_move_out(R_move_out37),.DL_move_out(DL_move_out37),.DR_move_out(DR_move_out37),
.UL_move_out(UL_move_out37),.UR_move_out(UR_move_out37),
.UUL_move_out(UUL_move_out37),.UUR_move_out(UUR_move_out37),.LLU_move_out(LLU_move_out37),.RRU_move_out(RRU_move_out37),
.DDL_move_out(DDL_move_out37),.DDR_move_out(DDR_move_out37),.LLD_move_out(LLD_move_out37),.RRD_move_out(RRD_move_out37),
.UUL_in(transmit54_37),.UUR_in(transmit52_37),.LLU_in(transmit47_37),.RRU_in(transmit43_37),
.DDL_in(transmit22_37),.DDR_in(transmit20_37),.LLD_in(transmit31_37),.RRD_in(transmit27_37),
.UUL_out(transmit37_54),.UUR_out(transmit37_52),.LLU_out(transmit37_47),.RRU_out(transmit37_43),
.DDL_out(transmit37_22),.DDR_out(transmit37_20),.LLD_out(transmit37_31),.RRD_out(transmit37_27) );
//Square[38]:
square Square38(.clk(clk),.engineColor(engineColor),.enable(enable[38]),.clear(clear),.pieceReg(pieceReg38),.posReg(6'd38),.castling(1'b0),
.D_in(transmit30_38),.U_in(transmit46_38),.L_in(transmit39_38),.R_in(transmit37_38),
.DL_in(transmit31_38),.DR_in(transmit29_38),.UL_in(transmit47_38),.UR_in(transmit45_38),
.D_out(transmit38_30),.U_out(transmit38_46),.L_out(transmit38_39),.R_out(transmit38_37),
.DL_out(transmit38_31),.DR_out(transmit38_29),.UL_out(transmit38_47),.UR_out(transmit38_45),
.D_move_out(D_move_out38),.U_move_out(U_move_out38),.L_move_out(L_move_out38),.R_move_out(R_move_out38),.DL_move_out(DL_move_out38),.DR_move_out(DR_move_out38),
.UL_move_out(UL_move_out38),.UR_move_out(UR_move_out38),
.UUL_move_out(UUL_move_out38),.UUR_move_out(UUR_move_out38),.RRU_move_out(RRU_move_out38),
.DDL_move_out(DDL_move_out38),.DDR_move_out(DDR_move_out38),.RRD_move_out(RRD_move_out38),
.UUL_in(transmit55_38),.UUR_in(transmit53_38),.RRU_in(transmit44_38),
.DDL_in(transmit23_38),.DDR_in(transmit21_38),.RRD_in(transmit28_38),
.UUL_out(transmit38_55),.UUR_out(transmit38_53),.RRU_out(transmit38_44),
.DDL_out(transmit38_23),.DDR_out(transmit38_21),.RRD_out(transmit38_28) );
//Square[39]:
square Square39(.clk(clk),.engineColor(engineColor),.enable(enable[39]),.clear(clear),.pieceReg(pieceReg39),.posReg(6'd39),.castling(1'b0),
.D_in(transmit31_39),.U_in(transmit47_39),.R_in(transmit38_39),.DR_in(transmit30_39),.UR_in(transmit46_39),
.D_out(transmit39_31),.U_out(transmit39_47),.R_out(transmit39_38),.DR_out(transmit39_30),.UR_out(transmit39_46),
.D_move_out(D_move_out39),.U_move_out(U_move_out39),.R_move_out(R_move_out39),.DR_move_out(DR_move_out39),.UR_move_out(UR_move_out39),.UUR_move_out(UUR_move_out39),.RRU_move_out(RRU_move_out39),.DDR_move_out(DDR_move_out39),.RRD_move_out(RRD_move_out39),.UUR_in(transmit54_39),.RRU_in(transmit45_39),.DDR_in(transmit22_39),.RRD_in(transmit29_39),.UUR_out(transmit39_54),.RRU_out(transmit39_45),.DDR_out(transmit39_22),.RRD_out(transmit39_29) );
//Square[40]:
square Square40(.clk(clk),.engineColor(engineColor),.enable(enable[40]),.clear(clear),.pieceReg(pieceReg40),.posReg(6'd40),.castling(1'b0),
.D_in(transmit32_40),.U_in(transmit48_40),.L_in(transmit41_40),
.DL_in(transmit33_40),.UL_in(transmit49_40),
.D_out(transmit40_32),.U_out(transmit40_48),.L_out(transmit40_41),
.DL_out(transmit40_33),.UL_out(transmit40_49),
.D_move_out(D_move_out40),.U_move_out(U_move_out40),.L_move_out(L_move_out40),.DL_move_out(DL_move_out40),
.UL_move_out(UL_move_out40),
.UUL_move_out(UUL_move_out40),.LLU_move_out(LLU_move_out40),
.DDL_move_out(DDL_move_out40),.LLD_move_out(LLD_move_out40),
.UUL_in(transmit57_40),.LLU_in(transmit50_40),
.DDL_in(transmit25_40),.LLD_in(transmit34_40),
.UUL_out(transmit40_57),.LLU_out(transmit40_50),
.DDL_out(transmit40_25),.LLD_out(transmit40_34) );
//Square[41]:
square Square41(.clk(clk),.engineColor(engineColor),.enable(enable[41]),.clear(clear),.pieceReg(pieceReg41),.posReg(6'd41),.castling(1'b0),
.D_in(transmit33_41),.U_in(transmit49_41),.L_in(transmit42_41),.R_in(transmit40_41),
.DL_in(transmit34_41),.DR_in(transmit32_41),.UL_in(transmit50_41),.UR_in(transmit48_41),
.D_out(transmit41_33),.U_out(transmit41_49),.L_out(transmit41_42),.R_out(transmit41_40),
.DL_out(transmit41_34),.DR_out(transmit41_32),.UL_out(transmit41_50),.UR_out(transmit41_48),
.D_move_out(D_move_out41),.U_move_out(U_move_out41),.L_move_out(L_move_out41),.R_move_out(R_move_out41),.DL_move_out(DL_move_out41),.DR_move_out(DR_move_out41),
.UL_move_out(UL_move_out41),.UR_move_out(UR_move_out41),
.UUL_move_out(UUL_move_out41),.LLU_move_out(LLU_move_out41),
.DDL_move_out(DDL_move_out41),.LLD_move_out(LLD_move_out41),
.UUL_in(transmit58_41),.LLU_in(transmit51_41),
.DDL_in(transmit26_41),.LLD_in(transmit35_41),
.UUL_out(transmit41_58),.LLU_out(transmit41_51),
.DDL_out(transmit41_26),.LLD_out(transmit41_35) );
//Square[42]:
square Square42(.clk(clk),.engineColor(engineColor),.enable(enable[42]),.clear(clear),.pieceReg(pieceReg42),.posReg(6'd42),.castling(1'b0),
.D_in(transmit34_42),.U_in(transmit50_42),.L_in(transmit43_42),.R_in(transmit41_42),
.DL_in(transmit35_42),.DR_in(transmit33_42),.UL_in(transmit51_42),.UR_in(transmit49_42),
.D_out(transmit42_34),.U_out(transmit42_50),.L_out(transmit42_43),.R_out(transmit42_41),
.DL_out(transmit42_35),.DR_out(transmit42_33),.UL_out(transmit42_51),.UR_out(transmit42_49),
.D_move_out(D_move_out42),.U_move_out(U_move_out42),.L_move_out(L_move_out42),.R_move_out(R_move_out42),.DL_move_out(DL_move_out42),.DR_move_out(DR_move_out42),
.UL_move_out(UL_move_out42),.UR_move_out(UR_move_out42),
.UUL_move_out(UUL_move_out42),.UUR_move_out(UUR_move_out42),.LLU_move_out(LLU_move_out42),.RRU_move_out(RRU_move_out42),
.DDL_move_out(DDL_move_out42),.DDR_move_out(DDR_move_out42),.LLD_move_out(LLD_move_out42),.RRD_move_out(RRD_move_out42),
.UUL_in(transmit59_42),.UUR_in(transmit57_42),.LLU_in(transmit52_42),.RRU_in(transmit48_42),
.DDL_in(transmit27_42),.DDR_in(transmit25_42),.LLD_in(transmit36_42),.RRD_in(transmit32_42),
.UUL_out(transmit42_59),.UUR_out(transmit42_57),.LLU_out(transmit42_52),.RRU_out(transmit42_48),
.DDL_out(transmit42_27),.DDR_out(transmit42_25),.LLD_out(transmit42_36),.RRD_out(transmit42_32) );
//Square[43]:
square Square43(.clk(clk),.engineColor(engineColor),.enable(enable[43]),.clear(clear),.pieceReg(pieceReg43),.posReg(6'd43),.castling(1'b0),
.D_in(transmit35_43),.U_in(transmit51_43),.L_in(transmit44_43),.R_in(transmit42_43),
.DL_in(transmit36_43),.DR_in(transmit34_43),.UL_in(transmit52_43),.UR_in(transmit50_43),
.D_out(transmit43_35),.U_out(transmit43_51),.L_out(transmit43_44),.R_out(transmit43_42),
.DL_out(transmit43_36),.DR_out(transmit43_34),.UL_out(transmit43_52),.UR_out(transmit43_50),
.D_move_out(D_move_out43),.U_move_out(U_move_out43),.L_move_out(L_move_out43),.R_move_out(R_move_out43),.DL_move_out(DL_move_out43),.DR_move_out(DR_move_out43),
.UL_move_out(UL_move_out43),.UR_move_out(UR_move_out43),
.UUL_move_out(UUL_move_out43),.UUR_move_out(UUR_move_out43),.LLU_move_out(LLU_move_out43),.RRU_move_out(RRU_move_out43),
.DDL_move_out(DDL_move_out43),.DDR_move_out(DDR_move_out43),.LLD_move_out(LLD_move_out43),.RRD_move_out(RRD_move_out43),
.UUL_in(transmit60_43),.UUR_in(transmit58_43),.LLU_in(transmit53_43),.RRU_in(transmit49_43),
.DDL_in(transmit28_43),.DDR_in(transmit26_43),.LLD_in(transmit37_43),.RRD_in(transmit33_43),
.UUL_out(transmit43_60),.UUR_out(transmit43_58),.LLU_out(transmit43_53),.RRU_out(transmit43_49),
.DDL_out(transmit43_28),.DDR_out(transmit43_26),.LLD_out(transmit43_37),.RRD_out(transmit43_33) );
//Square[44]:
square Square44(.clk(clk),.engineColor(engineColor),.enable(enable[44]),.clear(clear),.pieceReg(pieceReg44),.posReg(6'd44),.castling(1'b0),
.D_in(transmit36_44),.U_in(transmit52_44),.L_in(transmit45_44),.R_in(transmit43_44),
.DL_in(transmit37_44),.DR_in(transmit35_44),.UL_in(transmit53_44),.UR_in(transmit51_44),
.D_out(transmit44_36),.U_out(transmit44_52),.L_out(transmit44_45),.R_out(transmit44_43),
.DL_out(transmit44_37),.DR_out(transmit44_35),.UL_out(transmit44_53),.UR_out(transmit44_51),
.D_move_out(D_move_out44),.U_move_out(U_move_out44),.L_move_out(L_move_out44),.R_move_out(R_move_out44),.DL_move_out(DL_move_out44),.DR_move_out(DR_move_out44),
.UL_move_out(UL_move_out44),.UR_move_out(UR_move_out44),
.UUL_move_out(UUL_move_out44),.UUR_move_out(UUR_move_out44),.LLU_move_out(LLU_move_out44),.RRU_move_out(RRU_move_out44),
.DDL_move_out(DDL_move_out44),.DDR_move_out(DDR_move_out44),.LLD_move_out(LLD_move_out44),.RRD_move_out(RRD_move_out44),
.UUL_in(transmit61_44),.UUR_in(transmit59_44),.LLU_in(transmit54_44),.RRU_in(transmit50_44),
.DDL_in(transmit29_44),.DDR_in(transmit27_44),.LLD_in(transmit38_44),.RRD_in(transmit34_44),
.UUL_out(transmit44_61),.UUR_out(transmit44_59),.LLU_out(transmit44_54),.RRU_out(transmit44_50),
.DDL_out(transmit44_29),.DDR_out(transmit44_27),.LLD_out(transmit44_38),.RRD_out(transmit44_34) );
//Square[45]:
square Square45(.clk(clk),.engineColor(engineColor),.enable(enable[45]),.clear(clear),.pieceReg(pieceReg45),.posReg(6'd45),.castling(1'b0),
.D_in(transmit37_45),.U_in(transmit53_45),.L_in(transmit46_45),.R_in(transmit44_45),
.DL_in(transmit38_45),.DR_in(transmit36_45),.UL_in(transmit54_45),.UR_in(transmit52_45),
.D_out(transmit45_37),.U_out(transmit45_53),.L_out(transmit45_46),.R_out(transmit45_44),
.DL_out(transmit45_38),.DR_out(transmit45_36),.UL_out(transmit45_54),.UR_out(transmit45_52),
.D_move_out(D_move_out45),.U_move_out(U_move_out45),.L_move_out(L_move_out45),.R_move_out(R_move_out45),.DL_move_out(DL_move_out45),.DR_move_out(DR_move_out45),
.UL_move_out(UL_move_out45),.UR_move_out(UR_move_out45),
.UUL_move_out(UUL_move_out45),.UUR_move_out(UUR_move_out45),.LLU_move_out(LLU_move_out45),.RRU_move_out(RRU_move_out45),
.DDL_move_out(DDL_move_out45),.DDR_move_out(DDR_move_out45),.LLD_move_out(LLD_move_out45),.RRD_move_out(RRD_move_out45),
.UUL_in(transmit62_45),.UUR_in(transmit60_45),.LLU_in(transmit55_45),.RRU_in(transmit51_45),
.DDL_in(transmit30_45),.DDR_in(transmit28_45),.LLD_in(transmit39_45),.RRD_in(transmit35_45),
.UUL_out(transmit45_62),.UUR_out(transmit45_60),.LLU_out(transmit45_55),.RRU_out(transmit45_51),
.DDL_out(transmit45_30),.DDR_out(transmit45_28),.LLD_out(transmit45_39),.RRD_out(transmit45_35) );
//Square[46]:
square Square46(.clk(clk),.engineColor(engineColor),.enable(enable[46]),.clear(clear),.pieceReg(pieceReg46),.posReg(6'd46),.castling(1'b0),
.D_in(transmit38_46),.U_in(transmit54_46),.L_in(transmit47_46),.R_in(transmit45_46),
.DL_in(transmit39_46),.DR_in(transmit37_46),.UL_in(transmit55_46),.UR_in(transmit53_46),
.D_out(transmit46_38),.U_out(transmit46_54),.L_out(transmit46_47),.R_out(transmit46_45),
.DL_out(transmit46_39),.DR_out(transmit46_37),.UL_out(transmit46_55),.UR_out(transmit46_53),
.D_move_out(D_move_out46),.U_move_out(U_move_out46),.L_move_out(L_move_out46),.R_move_out(R_move_out46),.DL_move_out(DL_move_out46),.DR_move_out(DR_move_out46),
.UL_move_out(UL_move_out46),.UR_move_out(UR_move_out46),
.UUL_move_out(UUL_move_out46),.UUR_move_out(UUR_move_out46),.RRU_move_out(RRU_move_out46),
.DDL_move_out(DDL_move_out46),.DDR_move_out(DDR_move_out46),.RRD_move_out(RRD_move_out46),
.UUL_in(transmit63_46),.UUR_in(transmit61_46),.RRU_in(transmit52_46),
.DDL_in(transmit31_46),.DDR_in(transmit29_46),.RRD_in(transmit36_46),
.UUL_out(transmit46_63),.UUR_out(transmit46_61),.RRU_out(transmit46_52),
.DDL_out(transmit46_31),.DDR_out(transmit46_29),.RRD_out(transmit46_36) );
//Square[47]:
square Square47(.clk(clk),.engineColor(engineColor),.enable(enable[47]),.clear(clear),.pieceReg(pieceReg47),.posReg(6'd47),.castling(1'b0),
.D_in(transmit39_47),.U_in(transmit55_47),.R_in(transmit46_47),.DR_in(transmit38_47),.UR_in(transmit54_47),
.D_out(transmit47_39),.U_out(transmit47_55),.R_out(transmit47_46),.DR_out(transmit47_38),.UR_out(transmit47_54),
.D_move_out(D_move_out47),.U_move_out(U_move_out47),.R_move_out(R_move_out47),.DR_move_out(DR_move_out47),.UR_move_out(UR_move_out47),.UUR_move_out(UUR_move_out47),.RRU_move_out(RRU_move_out47),.DDR_move_out(DDR_move_out47),.RRD_move_out(RRD_move_out47),.UUR_in(transmit62_47),.RRU_in(transmit53_47),.DDR_in(transmit30_47),.RRD_in(transmit37_47),.UUR_out(transmit47_62),.RRU_out(transmit47_53),.DDR_out(transmit47_30),.RRD_out(transmit47_37) );
//Square[48]:
square Square48(.clk(clk),.engineColor(engineColor),.enable(enable[48]),.clear(clear),.pieceReg(pieceReg48),.posReg(6'd48),.castling(1'b0),
.D_in(transmit40_48),.U_in(transmit56_48),.L_in(transmit49_48),
.DL_in(transmit41_48),.UL_in(transmit57_48),
.D_out(transmit48_40),.U_out(transmit48_56),.L_out(transmit48_49),
.DL_out(transmit48_41),.UL_out(transmit48_57),
.D_move_out(D_move_out48),.U_move_out(U_move_out48),.L_move_out(L_move_out48),.DL_move_out(DL_move_out48),
.UL_move_out(UL_move_out48),.LLU_move_out(LLU_move_out48),
.DDL_move_out(DDL_move_out48),.LLD_move_out(LLD_move_out48),.LLU_in(transmit58_48),
.DDL_in(transmit33_48),.LLD_in(transmit42_48),.LLU_out(transmit48_58),
.DDL_out(transmit48_33),.LLD_out(transmit48_42) );
//Square[49]:
square Square49(.clk(clk),.engineColor(engineColor),.enable(enable[49]),.clear(clear),.pieceReg(pieceReg49),.posReg(6'd49),.castling(1'b0),
.D_in(transmit41_49),.U_in(transmit57_49),.L_in(transmit50_49),.R_in(transmit48_49),
.DL_in(transmit42_49),.DR_in(transmit40_49),.UL_in(transmit58_49),.UR_in(transmit56_49),
.D_out(transmit49_41),.U_out(transmit49_57),.L_out(transmit49_50),.R_out(transmit49_48),
.DL_out(transmit49_42),.DR_out(transmit49_40),.UL_out(transmit49_58),.UR_out(transmit49_56),
.D_move_out(D_move_out49),.U_move_out(U_move_out49),.L_move_out(L_move_out49),.R_move_out(R_move_out49),.DL_move_out(DL_move_out49),.DR_move_out(DR_move_out49),
.UL_move_out(UL_move_out49),.UR_move_out(UR_move_out49),.LLU_move_out(LLU_move_out49),
.DDL_move_out(DDL_move_out49),.DDR_move_out(DDR_move_out49),.LLD_move_out(LLD_move_out49),.LLU_in(transmit59_49),
.DDL_in(transmit34_49),.DDR_in(transmit32_49),.LLD_in(transmit43_49),.LLU_out(transmit49_59),
.DDL_out(transmit49_34),.DDR_out(transmit49_32),.LLD_out(transmit49_43) );
//Square[50]:
square Square50(.clk(clk),.engineColor(engineColor),.enable(enable[50]),.clear(clear),.pieceReg(pieceReg50),.posReg(6'd50),.castling(1'b0),
.D_in(transmit42_50),.U_in(transmit58_50),.L_in(transmit51_50),.R_in(transmit49_50),
.DL_in(transmit43_50),.DR_in(transmit41_50),.UL_in(transmit59_50),.UR_in(transmit57_50),
.D_out(transmit50_42),.U_out(transmit50_58),.L_out(transmit50_51),.R_out(transmit50_49),
.DL_out(transmit50_43),.DR_out(transmit50_41),.UL_out(transmit50_59),.UR_out(transmit50_57),
.D_move_out(D_move_out50),.U_move_out(U_move_out50),.L_move_out(L_move_out50),.R_move_out(R_move_out50),.DL_move_out(DL_move_out50),.DR_move_out(DR_move_out50),
.UL_move_out(UL_move_out50),.UR_move_out(UR_move_out50),.LLU_move_out(LLU_move_out50),.RRU_move_out(RRU_move_out50),
.DDL_move_out(DDL_move_out50),.DDR_move_out(DDR_move_out50),.LLD_move_out(LLD_move_out50),.RRD_move_out(RRD_move_out50),.LLU_in(transmit60_50),.RRU_in(transmit56_50),
.DDL_in(transmit35_50),.DDR_in(transmit33_50),.LLD_in(transmit44_50),.RRD_in(transmit40_50),.LLU_out(transmit50_60),.RRU_out(transmit50_56),
.DDL_out(transmit50_35),.DDR_out(transmit50_33),.LLD_out(transmit50_44),.RRD_out(transmit50_40) );
//Square[51]:
square Square51(.clk(clk),.engineColor(engineColor),.enable(enable[51]),.clear(clear),.pieceReg(pieceReg51),.posReg(6'd51),.castling(1'b0),
.D_in(transmit43_51),.U_in(transmit59_51),.L_in(transmit52_51),.R_in(transmit50_51),
.DL_in(transmit44_51),.DR_in(transmit42_51),.UL_in(transmit60_51),.UR_in(transmit58_51),
.D_out(transmit51_43),.U_out(transmit51_59),.L_out(transmit51_52),.R_out(transmit51_50),
.DL_out(transmit51_44),.DR_out(transmit51_42),.UL_out(transmit51_60),.UR_out(transmit51_58),
.D_move_out(D_move_out51),.U_move_out(U_move_out51),.L_move_out(L_move_out51),.R_move_out(R_move_out51),.DL_move_out(DL_move_out51),.DR_move_out(DR_move_out51),
.UL_move_out(UL_move_out51),.UR_move_out(UR_move_out51),.LLU_move_out(LLU_move_out51),.RRU_move_out(RRU_move_out51),
.DDL_move_out(DDL_move_out51),.DDR_move_out(DDR_move_out51),.LLD_move_out(LLD_move_out51),.RRD_move_out(RRD_move_out51),.LLU_in(transmit61_51),.RRU_in(transmit57_51),
.DDL_in(transmit36_51),.DDR_in(transmit34_51),.LLD_in(transmit45_51),.RRD_in(transmit41_51),.LLU_out(transmit51_61),.RRU_out(transmit51_57),
.DDL_out(transmit51_36),.DDR_out(transmit51_34),.LLD_out(transmit51_45),.RRD_out(transmit51_41) );
//Square[52]:
square Square52(.clk(clk),.engineColor(engineColor),.enable(enable[52]),.clear(clear),.pieceReg(pieceReg52),.posReg(6'd52),.castling(1'b0),
.D_in(transmit44_52),.U_in(transmit60_52),.L_in(transmit53_52),.R_in(transmit51_52),
.DL_in(transmit45_52),.DR_in(transmit43_52),.UL_in(transmit61_52),.UR_in(transmit59_52),
.D_out(transmit52_44),.U_out(transmit52_60),.L_out(transmit52_53),.R_out(transmit52_51),
.DL_out(transmit52_45),.DR_out(transmit52_43),.UL_out(transmit52_61),.UR_out(transmit52_59),
.D_move_out(D_move_out52),.U_move_out(U_move_out52),.L_move_out(L_move_out52),.R_move_out(R_move_out52),.DL_move_out(DL_move_out52),.DR_move_out(DR_move_out52),
.UL_move_out(UL_move_out52),.UR_move_out(UR_move_out52),.LLU_move_out(LLU_move_out52),.RRU_move_out(RRU_move_out52),
.DDL_move_out(DDL_move_out52),.DDR_move_out(DDR_move_out52),.LLD_move_out(LLD_move_out52),.RRD_move_out(RRD_move_out52),.LLU_in(transmit62_52),.RRU_in(transmit58_52),
.DDL_in(transmit37_52),.DDR_in(transmit35_52),.LLD_in(transmit46_52),.RRD_in(transmit42_52),.LLU_out(transmit52_62),.RRU_out(transmit52_58),
.DDL_out(transmit52_37),.DDR_out(transmit52_35),.LLD_out(transmit52_46),.RRD_out(transmit52_42) );
//Square[53]:
square Square53(.clk(clk),.engineColor(engineColor),.enable(enable[53]),.clear(clear),.pieceReg(pieceReg53),.posReg(6'd53),.castling(1'b0),
.D_in(transmit45_53),.U_in(transmit61_53),.L_in(transmit54_53),.R_in(transmit52_53),
.DL_in(transmit46_53),.DR_in(transmit44_53),.UL_in(transmit62_53),.UR_in(transmit60_53),
.D_out(transmit53_45),.U_out(transmit53_61),.L_out(transmit53_54),.R_out(transmit53_52),
.DL_out(transmit53_46),.DR_out(transmit53_44),.UL_out(transmit53_62),.UR_out(transmit53_60),
.D_move_out(D_move_out53),.U_move_out(U_move_out53),.L_move_out(L_move_out53),.R_move_out(R_move_out53),.DL_move_out(DL_move_out53),.DR_move_out(DR_move_out53),
.UL_move_out(UL_move_out53),.UR_move_out(UR_move_out53),.LLU_move_out(LLU_move_out53),.RRU_move_out(RRU_move_out53),
.DDL_move_out(DDL_move_out53),.DDR_move_out(DDR_move_out53),.LLD_move_out(LLD_move_out53),.RRD_move_out(RRD_move_out53),.LLU_in(transmit63_53),.RRU_in(transmit59_53),
.DDL_in(transmit38_53),.DDR_in(transmit36_53),.LLD_in(transmit47_53),.RRD_in(transmit43_53),.LLU_out(transmit53_63),.RRU_out(transmit53_59),
.DDL_out(transmit53_38),.DDR_out(transmit53_36),.LLD_out(transmit53_47),.RRD_out(transmit53_43) );
//Square[54]:
square Square54(.clk(clk),.engineColor(engineColor),.enable(enable[54]),.clear(clear),.pieceReg(pieceReg54),.posReg(6'd54),.castling(1'b0),
.D_in(transmit46_54),.U_in(transmit62_54),.L_in(transmit55_54),.R_in(transmit53_54),
.DL_in(transmit47_54),.DR_in(transmit45_54),.UL_in(transmit63_54),.UR_in(transmit61_54),
.D_out(transmit54_46),.U_out(transmit54_62),.L_out(transmit54_55),.R_out(transmit54_53),
.DL_out(transmit54_47),.DR_out(transmit54_45),.UL_out(transmit54_63),.UR_out(transmit54_61),
.D_move_out(D_move_out54),.U_move_out(U_move_out54),.L_move_out(L_move_out54),.R_move_out(R_move_out54),.DL_move_out(DL_move_out54),.DR_move_out(DR_move_out54),
.UL_move_out(UL_move_out54),.UR_move_out(UR_move_out54),.RRU_move_out(RRU_move_out54),
.DDL_move_out(DDL_move_out54),.DDR_move_out(DDR_move_out54),.RRD_move_out(RRD_move_out54),.RRU_in(transmit60_54),
.DDL_in(transmit39_54),.DDR_in(transmit37_54),.RRD_in(transmit44_54),.RRU_out(transmit54_60),
.DDL_out(transmit54_39),.DDR_out(transmit54_37),.RRD_out(transmit54_44) );
//Square[55]:
square Square55(.clk(clk),.engineColor(engineColor),.enable(enable[55]),.clear(clear),.pieceReg(pieceReg55),.posReg(6'd55),.castling(1'b0),
.D_in(transmit47_55),.U_in(transmit63_55),.R_in(transmit54_55),.DR_in(transmit46_55),.UR_in(transmit62_55),
.D_out(transmit55_47),.U_out(transmit55_63),.R_out(transmit55_54),.DR_out(transmit55_46),.UR_out(transmit55_62),
.D_move_out(D_move_out55),.U_move_out(U_move_out55),.R_move_out(R_move_out55),.DR_move_out(DR_move_out55),.UR_move_out(UR_move_out55),.RRU_move_out(RRU_move_out55),.DDR_move_out(DDR_move_out55),.RRD_move_out(RRD_move_out55),.RRU_in(transmit61_55),.DDR_in(transmit38_55),.RRD_in(transmit45_55),.RRU_out(transmit55_61),.DDR_out(transmit55_38),.RRD_out(transmit55_45) );
//Square[56]:
square Square56(.clk(clk),.engineColor(engineColor),.enable(enable[56]),.clear(clear),.pieceReg(pieceReg56),.posReg(6'd56),.castling(1'b0),
.D_in(transmit48_56),.L_in(transmit57_56),
.DL_in(transmit49_56),
.D_out(transmit56_48),.L_out(transmit56_57),
.DL_out(transmit56_49),
.D_move_out(D_move_out56),.L_move_out(L_move_out56),.DL_move_out(DL_move_out56),
.DDL_move_out(DDL_move_out56),.LLD_move_out(LLD_move_out56),
.DDL_in(transmit41_56),.LLD_in(transmit50_56),
.DDL_out(transmit56_41),.LLD_out(transmit56_50) );
//Square[57]:
square Square57(.clk(clk),.engineColor(engineColor),.enable(enable[57]),.clear(clear),.pieceReg(pieceReg57),.posReg(6'd57),.castling(1'b1),
.D_in(transmit49_57),.L_in(transmit58_57),.R_in(transmit56_57),
.DL_in(transmit50_57),.DR_in(transmit48_57),
.D_out(transmit57_49),.L_out(transmit57_58),.R_out(transmit57_56),
.DL_out(transmit57_50),.DR_out(transmit57_48),
.D_move_out(D_move_out57),.L_move_out(L_move_out57_tmp),.R_move_out(R_move_out57),.DL_move_out(DL_move_out57),.DR_move_out(DR_move_out57),
.DDL_move_out(DDL_move_out57),.DDR_move_out(DDR_move_out57),.LLD_move_out(LLD_move_out57),
.DDL_in(transmit42_57),.DDR_in(transmit40_57),.LLD_in(transmit51_57),
.DDL_out(transmit57_42),.DDR_out(transmit57_40),.LLD_out(transmit57_51) );
//Square[58]:
square Square58(.clk(clk),.engineColor(engineColor),.enable(enable[58]),.clear(clear),.pieceReg(pieceReg58),.posReg(6'd58),.castling(1'b0),
.D_in(transmit50_58),.L_in(transmit59_58),.R_in(transmit57_58),
.DL_in(transmit51_58),.DR_in(transmit49_58),
.D_out(transmit58_50),.L_out(transmit58_59),.R_out(transmit58_57),
.DL_out(transmit58_51),.DR_out(transmit58_49),
.D_move_out(D_move_out58),.L_move_out(L_move_out58),.R_move_out(R_move_out58),.DL_move_out(DL_move_out58),.DR_move_out(DR_move_out58),
.DDL_move_out(DDL_move_out58),.DDR_move_out(DDR_move_out58),.LLD_move_out(LLD_move_out58),.RRD_move_out(RRD_move_out58),
.DDL_in(transmit43_58),.DDR_in(transmit41_58),.LLD_in(transmit52_58),.RRD_in(transmit48_58),
.DDL_out(transmit58_43),.DDR_out(transmit58_41),.LLD_out(transmit58_52),.RRD_out(transmit58_48) );
//Square[59]:
square Square59(.clk(clk),.engineColor(engineColor),.enable(enable[59]),.clear(clear),.pieceReg(pieceReg59),.posReg(6'd59),.castling(1'b0),
.D_in(transmit51_59),.L_in(transmit60_59),.R_in(transmit58_59),
.DL_in(transmit52_59),.DR_in(transmit50_59),
.D_out(transmit59_51),.L_out(transmit59_60),.R_out(transmit59_58),
.DL_out(transmit59_52),.DR_out(transmit59_50),
.D_move_out(D_move_out59),.L_move_out(L_move_out59),.R_move_out(R_move_out59),.DL_move_out(DL_move_out59),.DR_move_out(DR_move_out59),
.DDL_move_out(DDL_move_out59),.DDR_move_out(DDR_move_out59),.LLD_move_out(LLD_move_out59),.RRD_move_out(RRD_move_out59),
.DDL_in(transmit44_59),.DDR_in(transmit42_59),.LLD_in(transmit53_59),.RRD_in(transmit49_59),
.DDL_out(transmit59_44),.DDR_out(transmit59_42),.LLD_out(transmit59_53),.RRD_out(transmit59_49) );
//Square[60]:
square Square60(.clk(clk),.engineColor(engineColor),.enable(enable[60]),.clear(clear),.pieceReg(pieceReg60),.posReg(6'd60),.castling(1'b0),
.D_in(transmit52_60),.L_in(transmit61_60),.R_in(transmit59_60),
.DL_in(transmit53_60),.DR_in(transmit51_60),
.D_out(transmit60_52),.L_out(transmit60_61),.R_out(transmit60_59),
.DL_out(transmit60_53),.DR_out(transmit60_51),
.D_move_out(D_move_out60),.L_move_out(L_move_out60),.R_move_out(R_move_out60),.DL_move_out(DL_move_out60),.DR_move_out(DR_move_out60),
.DDL_move_out(DDL_move_out60),.DDR_move_out(DDR_move_out60),.LLD_move_out(LLD_move_out60),.RRD_move_out(RRD_move_out60),
.DDL_in(transmit45_60),.DDR_in(transmit43_60),.LLD_in(transmit54_60),.RRD_in(transmit50_60),
.DDL_out(transmit60_45),.DDR_out(transmit60_43),.LLD_out(transmit60_54),.RRD_out(transmit60_50) );
//Square[61]:
square Square61(.clk(clk),.engineColor(engineColor),.enable(enable[61]),.clear(clear),.pieceReg(pieceReg61),.posReg(6'd61),.castling(1'b1),
.D_in(transmit53_61),.L_in(transmit62_61),.R_in(transmit60_61),
.DL_in(transmit54_61),.DR_in(transmit52_61),
.D_out(transmit61_53),.L_out(transmit61_62),.R_out(transmit61_60),
.DL_out(transmit61_54),.DR_out(transmit61_52),
.D_move_out(D_move_out61),.L_move_out(L_move_out61),.R_move_out(R_move_out61_tmp),.DL_move_out(DL_move_out61),.DR_move_out(DR_move_out61),
.DDL_move_out(DDL_move_out61),.DDR_move_out(DDR_move_out61),.LLD_move_out(LLD_move_out61),.RRD_move_out(RRD_move_out61),
.DDL_in(transmit46_61),.DDR_in(transmit44_61),.LLD_in(transmit55_61),.RRD_in(transmit51_61),
.DDL_out(transmit61_46),.DDR_out(transmit61_44),.LLD_out(transmit61_55),.RRD_out(transmit61_51) );
//Square[62]:
square Square62(.clk(clk),.engineColor(engineColor),.enable(enable[62]),.clear(clear),.pieceReg(pieceReg62),.posReg(6'd62),.castling(1'b0),
.D_in(transmit54_62),.L_in(transmit63_62),.R_in(transmit61_62),
.DL_in(transmit55_62),.DR_in(transmit53_62),
.D_out(transmit62_54),.L_out(transmit62_63),.R_out(transmit62_61),
.DL_out(transmit62_55),.DR_out(transmit62_53),
.D_move_out(D_move_out62),.L_move_out(L_move_out62),.R_move_out(R_move_out62),.DL_move_out(DL_move_out62),.DR_move_out(DR_move_out62),
.DDL_move_out(DDL_move_out62),.DDR_move_out(DDR_move_out62),.RRD_move_out(RRD_move_out62),
.DDL_in(transmit47_62),.DDR_in(transmit45_62),.RRD_in(transmit52_62),
.DDL_out(transmit62_47),.DDR_out(transmit62_45),.RRD_out(transmit62_52) );
//Square[63]:
square Square63(.clk(clk),.engineColor(engineColor),.enable(enable[63]),.clear(clear),.pieceReg(pieceReg63),.posReg(6'd63),.castling(1'b0),
.D_in(transmit55_63),.R_in(transmit62_63),.DR_in(transmit54_63),
.D_out(transmit63_55),.R_out(transmit63_62),.DR_out(transmit63_54),
.D_move_out(D_move_out63),.R_move_out(R_move_out63),.DR_move_out(DR_move_out63),.DDR_move_out(DDR_move_out63),.RRD_move_out(RRD_move_out63),.DDR_in(transmit46_63),.RRD_in(transmit53_63),.DDR_out(transmit63_46),.RRD_out(transmit63_53) );




//check for illegal castlings based on flags
always @(*) begin

L_move_out1 = L_move_out1_tmp;
R_move_out5 = R_move_out5_tmp;
L_move_out57 = L_move_out57_tmp;
R_move_out61 = R_move_out61_tmp;

if (castlingFlags[0] == 1'b0 && L_move_out1_tmp[27:24] == WHITE_KINGS_SIDE)
	L_move_out1 = EMPTY_MOVE_OUT;
	
if (castlingFlags[1] == 1'b0 && R_move_out5_tmp[27:24] == WHITE_QUEENS_SIDE)
	R_move_out5 = EMPTY_MOVE_OUT;
	
if (castlingFlags[2] == 1'b0 && L_move_out57_tmp[27:24] == BLACK_KINGS_SIDE)
	L_move_out57 = EMPTY_MOVE_OUT;
	
if (castlingFlags[3] == 1'b0 && R_move_out61_tmp[27:24] == BLACK_QUEENS_SIDE)
	R_move_out61 = EMPTY_MOVE_OUT;
end
		
	
endmodule
