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
input undo,



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
			moved_PieceReg = {6'b000000};
		6'b000001:// Pawn
			moved_PieceReg = {engineColor,PAWN};
		6'b000010:// Rook
			moved_PieceReg = {engineColor,ROOK};
		6'b000100:// Knight
			moved_PieceReg = {engineColor,KNIGHT};
		6'b001000:// Bishop
			moved_PieceReg = {engineColor,BISHOP};		
		6'b010000:// Queen
			moved_PieceReg = {engineColor,QUEEN};	
		6'b100000:// King
			moved_PieceReg = {engineColor,KING};			
	endcase
	
	case(capturedPiece)
		6'b000000: //Quiet
			captured_PieceReg = {6'b000000};
		6'b000001:// Pawn
			captured_PieceReg = {!engineColor,PAWN};
		6'b000010:// Rook
			captured_PieceReg = {!engineColor,ROOK};
		6'b000100:// Knight
			captured_PieceReg = {!engineColor,KNIGHT};
		6'b001000:// Bishop
			captured_PieceReg = {!engineColor,BISHOP};	
		6'b010000:// Queen
			captured_PieceReg = {!engineColor,QUEEN};	
		6'b100000:// King
			captured_PieceReg = {!engineColor,KING};				
	endcase
	
	enable_out = initialPosition & movedPosition;
	pieceReg0_out = 6'b000000;
	pieceReg1_out = 6'b000000;
	pieceReg2_out = 6'b000000;
	pieceReg3_out = 6'b000000;
	pieceReg4_out = 6'b000000;
	pieceReg5_out = 6'b000000;
	pieceReg6_out = 6'b000000;
	pieceReg7_out = 6'b000000;
	pieceReg8_out = 6'b000000;
	pieceReg9_out = 6'b000000;
	pieceReg10_out = 6'b000000;
	pieceReg11_out = 6'b000000;
	pieceReg12_out = 6'b000000;
	pieceReg13_out = 6'b000000;
	pieceReg14_out = 6'b000000;
	pieceReg15_out = 6'b000000;
	pieceReg16_out = 6'b000000;
	pieceReg17_out = 6'b000000;
	pieceReg18_out = 6'b000000;
	pieceReg19_out = 6'b000000;
	pieceReg20_out = 6'b000000;
	pieceReg21_out = 6'b000000;
	pieceReg22_out = 6'b000000;
	pieceReg23_out = 6'b000000;
	pieceReg24_out = 6'b000000;
	pieceReg25_out = 6'b000000;
	pieceReg26_out = 6'b000000;
	pieceReg27_out = 6'b000000;
	pieceReg28_out = 6'b000000;
	pieceReg29_out = 6'b000000;
	pieceReg30_out = 6'b000000;
	pieceReg31_out = 6'b000000;
	pieceReg32_out = 6'b000000;
	pieceReg33_out = 6'b000000;
	pieceReg34_out = 6'b000000;
	pieceReg35_out = 6'b000000;
	pieceReg36_out = 6'b000000;
	pieceReg37_out = 6'b000000;
	pieceReg38_out = 6'b000000;
	pieceReg39_out = 6'b000000;
	pieceReg40_out = 6'b000000;
	pieceReg41_out = 6'b000000;
	pieceReg42_out = 6'b000000;
	pieceReg43_out = 6'b000000;
	pieceReg44_out = 6'b000000;
	pieceReg45_out = 6'b000000;
	pieceReg46_out = 6'b000000;
	pieceReg47_out = 6'b000000;
	pieceReg48_out = 6'b000000;
	pieceReg49_out = 6'b000000;
	pieceReg50_out = 6'b000000;
	pieceReg51_out = 6'b000000;
	pieceReg52_out = 6'b000000;
	pieceReg53_out = 6'b000000;
	pieceReg54_out = 6'b000000;
	pieceReg55_out = 6'b000000;
	pieceReg56_out = 6'b000000;
	pieceReg57_out = 6'b000000;
	pieceReg58_out = 6'b000000;
	pieceReg59_out = 6'b000000;
	pieceReg60_out = 6'b000000;
	pieceReg61_out = 6'b000000;
	pieceReg62_out = 6'b000000;
	pieceReg63_out = 6'b000000;
	
	if( !captured_PieceReg && !castling &&!undo) begin // Normal Quiet
		//Only the corresponding enable bit will be sent, so we dont
		//care about the initial position
	
		case (movedPosition)
			64'd1:
				pieceReg0_out = moved_PieceReg;
			64'd2:
				pieceReg1_out = moved_PieceReg;
			64'd4:
				pieceReg2_out = moved_PieceReg;
			64'd8:
				pieceReg3_out = moved_PieceReg;
			64'd16:
				pieceReg4_out = moved_PieceReg;
			64'd32:
				pieceReg5_out = moved_PieceReg;
			64'd64:
				pieceReg6_out = moved_PieceReg;
			64'd128:
				pieceReg7_out = moved_PieceReg;
			64'd256:
				pieceReg8_out = moved_PieceReg;
			64'd512:
				pieceReg9_out = moved_PieceReg;
			64'd1024:
				pieceReg10_out = moved_PieceReg;
			64'd2048:
				pieceReg11_out = moved_PieceReg;
			64'd12:
				pieceReg12_out = moved_PieceReg;
			64'd13:
				pieceReg13_out = moved_PieceReg;
			64'd14:
				pieceReg14_out = moved_PieceReg;
			64'd15:
				pieceReg15_out = moved_PieceReg;
			64'd16:
				pieceReg16_out = moved_PieceReg;
			64'd17:
				pieceReg17_out = moved_PieceReg;
			64'd18:
				pieceReg18_out = moved_PieceReg;
			64'd19:
				pieceReg19_out = moved_PieceReg;
			64'd20:
				pieceReg20_out = moved_PieceReg;
			64'd21:
				pieceReg21_out = moved_PieceReg;
			64'd22:
				pieceReg22_out = moved_PieceReg;
			64'd23:
				pieceReg23_out = moved_PieceReg;
			64'd24:
				pieceReg24_out = moved_PieceReg;
			64'd25:
				pieceReg25_out = moved_PieceReg;
			64'd26:
				pieceReg26_out = moved_PieceReg;
			64'd27:
				pieceReg27_out = moved_PieceReg;
			64'd28:
				pieceReg28_out = moved_PieceReg;
			64'd29:
				pieceReg29_out = moved_PieceReg;
			64'd30:
				pieceReg30_out = moved_PieceReg;
			64'd31:
				pieceReg31_out = moved_PieceReg;
			64'd32:
				pieceReg32_out = moved_PieceReg;
			64'd33:
				pieceReg33_out = moved_PieceReg;
			64'd34:
				pieceReg34_out = moved_PieceReg;
			64'd35:
				pieceReg35_out = moved_PieceReg;
			64'd36:
				pieceReg36_out = moved_PieceReg;
			64'd37:
				pieceReg37_out = moved_PieceReg;
			64'd38:
				pieceReg38_out = moved_PieceReg;
			64'd39:
				pieceReg39_out = moved_PieceReg;
			64'd40:
				pieceReg40_out = moved_PieceReg;
			64'd41:
				pieceReg41_out = moved_PieceReg;
			64'd42:
				pieceReg42_out = moved_PieceReg;
			64'd43:
				pieceReg43_out = moved_PieceReg;
			64'd44:
				pieceReg44_out = moved_PieceReg;
			64'd45:
				pieceReg45_out = moved_PieceReg;
			64'd46:
				pieceReg46_out = moved_PieceReg;
			64'd47:
				pieceReg47_out = moved_PieceReg;
			64'd48:
				pieceReg48_out = moved_PieceReg;
			64'd49:
				pieceReg49_out = moved_PieceReg;
			64'd50:
				pieceReg50_out = moved_PieceReg;
			64'd51:
				pieceReg51_out = moved_PieceReg;
			64'd52:
				pieceReg52_out = moved_PieceReg;
			64'd53:
				pieceReg53_out = moved_PieceReg;
			64'd54:
				pieceReg54_out = moved_PieceReg;
			64'd55:
				pieceReg55_out = moved_PieceReg;
			64'd56:
				pieceReg56_out = moved_PieceReg;
			64'd57:
				pieceReg57_out = moved_PieceReg;
			64'd58:
				pieceReg58_out = moved_PieceReg;
			64'd59:
				pieceReg59_out = moved_PieceReg;
			64'd60:
				pieceReg60_out = moved_PieceReg;
			64'd61:
				pieceReg61_out = moved_PieceReg;
			64'd62:
				pieceReg62_out = moved_PieceReg;
			64'd63:
				pieceReg63_out = moved_PieceReg;		
		end case
	
	end
	
	if( captured_PieceReg && !castling &&!undo) begin // Normal Capture
	
	
	end
	
	
end
endmodule
