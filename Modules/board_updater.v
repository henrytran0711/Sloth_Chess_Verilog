module board_updater(			
								
//CLOCK
input clk,
input engineColor,
input enable,
input clear,


input [63:0] initialPosition,
input [63:0] movedPosition,
input [5:0] movingPiece,//000001: pawn, 000010: rook, 000100: knight , 001000: bishop, 010000: queen, 100000: king
input [5:0] capturedPiece,//000001: pawn, 000010: rook, 000100: knight , 001000: bishop, 010000: queen, 100000: king
input [2:0] castling, //001: no castling 010: Queens side 100: King Side
input [4:0] enpassant,//00001: no enpassant, 00010:UL, 00100: UR , 01000: DL,10000:DR 




//Output Enable
output [63:0] enable_out,

output [5:0] pieceReg0_out,
output [5:0] pieceReg1_out,
output [5:0] pieceReg2_out,
output [5:0] pieceReg3_out,
output [5:0] pieceReg4_out,
output [5:0] pieceReg5_out,
output [5:0] pieceReg6_out,
output [5:0] pieceReg7_out,
output [5:0] pieceReg8_out,
output [5:0] pieceReg9_out,
output [5:0] pieceReg10_out,
output [5:0] pieceReg11_out,
output [5:0] pieceReg12_out,
output [5:0] pieceReg13_out,
output [5:0] pieceReg14_out,
output [5:0] pieceReg15_out,
output [5:0] pieceReg16_out,
output [5:0] pieceReg17_out,
output [5:0] pieceReg18_out,
output [5:0] pieceReg19_out,
output [5:0] pieceReg20_out,
output [5:0] pieceReg21_out,
output [5:0] pieceReg22_out,
output [5:0] pieceReg23_out,
output [5:0] pieceReg24_out,
output [5:0] pieceReg25_out,
output [5:0] pieceReg26_out,
output [5:0] pieceReg27_out,
output [5:0] pieceReg28_out,
output [5:0] pieceReg29_out,
output [5:0] pieceReg30_out,
output [5:0] pieceReg31_out,
output [5:0] pieceReg32_out,
output [5:0] pieceReg33_out,
output [5:0] pieceReg34_out,
output [5:0] pieceReg35_out,
output [5:0] pieceReg36_out,
output [5:0] pieceReg37_out,
output [5:0] pieceReg38_out,
output [5:0] pieceReg39_out,
output [5:0] pieceReg40_out,
output [5:0] pieceReg41_out,
output [5:0] pieceReg42_out,
output [5:0] pieceReg43_out,
output [5:0] pieceReg44_out,
output [5:0] pieceReg45_out,
output [5:0] pieceReg46_out,
output [5:0] pieceReg47_out,
output [5:0] pieceReg48_out,
output [5:0] pieceReg49_out,
output [5:0] pieceReg50_out,
output [5:0] pieceReg51_out,
output [5:0] pieceReg52_out,
output [5:0] pieceReg53_out,
output [5:0] pieceReg54_out,
output [5:0] pieceReg55_out,
output [5:0] pieceReg56_out,
output [5:0] pieceReg57_out,
output [5:0] pieceReg58_out,
output [5:0] pieceReg59_out,
output [5:0] pieceReg60_out,
output [5:0] pieceReg61_out,
output [5:0] pieceReg62_out,
output [5:0] pieceReg63_out,

);

parameter PAWN = 5'b00010;
parameter KNIGHT = 5'b00001;
parameter KING = 5'b00100;
parameter QUEEN = 5'b11000;
parameter ROOK = 5'b10000;
parameter BISHOP = 5'b01000;

reg [5:0] moved_PieceReg;
reg [5:0] captured_PieceReg;
/*
transceiver Transceiver1(

.clk(clk), .engineColor(engineColor), .pieceReg(pieceRegOut), .posReg(posReg),

.U_in(U_in), .D_in(D_in), .L_in(L_in), .R_in(R_in), .UL_in(UL_in), .UR_in(UR_in), .DL_in(DL_in), .DR_in(DR_in), 
.UUL_in(UUL_in), .UUR_in(UUR_in), .LLU_in(LLU_in), .RRU_in(RRU_in), .DDL_in(DDL_in), .DDR_in(DDR_in), .LLD_in(LLD_in), .RRD_in(RRD_in),

.U_out(U_out), .D_out(D_out), .L_out(L_out), .R_out(R_out), .UL_out(UL_out), .UR_out(UR_out), .DL_out(DL_out), .DR_out(DR_out), 
.UUL_out(UUL_out), .UUR_out(UUR_out), .LLU_out(LLU_out), .RRU_out(RRU_out), .DDL_out(DDL_out), .DDR_out(DDR_out), .LLD_out(LLD_out), .RRD_out(RRD_out),

.U_move(U_move), .D_move(D_move), .L_move(L_move), .R_move(R_move), .UL_move(UL_move), .UR_move(UR_move), .DL_move(DL_move), .DR_move(DR_move), 
.UUL_move(UUL_move), .UUR_move(UUR_move), .LLU_move(LLU_move), .RRU_move(RRU_move), .DDL_move(DDL_move), .DDR_move(DDR_move), .LLD_move(LLD_move), .RRD_move(RRD_move)

);
*/
 always @ (posedge clk) begin
	case(movingPiece)
		6'b000000: //Never happen, dont care
			moved_PieceReg = {6'b000000}
		6'b000001:// Pawn
			moved_PieceReg = {engineColor,PAWN}
		6'b000010:// Rook
			moved_PieceReg = {engineColor,ROOK}
		6'b000100:// Knight
			moved_PieceReg = {engineColor,KNIGHT}
		6'b001000:// Bishop
			moved_PieceReg = {engineColor,BISHOP}		
		6'b010000:// Queen
			moved_PieceReg = {engineColor,QUEEN}	
		6'b100000:// King
			moved_PieceReg = {engineColor,KING}				
	endcase
	
	case(capturedPiece)
		6'b000000: //Quiet
			moved_PieceReg = {6'b000000}
		6'b000001:// Pawn
			moved_PieceReg = {!engineColor,PAWN}
		6'b000010:// Rook
			moved_PieceReg = {!engineColor,ROOK}
		6'b000100:// Knight
			moved_PieceReg = {!engineColor,KNIGHT}
		6'b001000:// Bishop
			moved_PieceReg = {!engineColor,BISHOP}		
		6'b010000:// Queen
			moved_PieceReg = {!engineColor,QUEEN}	
		6'b100000:// King
			moved_PieceReg = {!engineColor,KING}				
	endcase

		
	
	
end
endmodule
