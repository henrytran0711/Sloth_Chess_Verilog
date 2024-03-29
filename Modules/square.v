module square(			
								
//CLOCK
input clk,
input engineColor,
input enable,
input clear,

input[5:0] pieceReg,
input[5:0] posReg,
input castling,
input pawnPass,

//Input Reg
input [10:0] U_in,
input [10:0] D_in,
input [10:0] L_in,
input [10:0] R_in,
input [10:0] UL_in,
input [10:0] UR_in,
input [10:0] DL_in,
input [10:0] DR_in,
//Input knight
input [7:0] UUL_in,
input [7:0] UUR_in,
input [7:0] LLU_in,
input [7:0] RRU_in,
input [7:0] DDL_in,
input [7:0] DDR_in,
input [7:0] LLD_in,
input [7:0] RRD_in,

//Output Non knight
output [10:0] U_out,
output [10:0] D_out,
output [10:0] L_out,
output [10:0] R_out,
output [10:0] UL_out,
output [10:0] UR_out,
output [10:0] DL_out,
output [10:0] DR_out,
//Output knight
output [7:0] UUL_out,
output [7:0] UUR_out,
output [7:0] LLU_out,
output [7:0] RRU_out,
output [7:0] DDL_out,
output [7:0] DDR_out,
output [7:0] LLD_out,
output [7:0] RRD_out,


//Output Non knight
output reg [31:0] U_move_out,
output reg [31:0] D_move_out,
output reg [31:0] L_move_out,
output reg [31:0] R_move_out,
output reg [31:0] UL_move_out,
output reg [31:0] UR_move_out,
output reg [31:0] DL_move_out,
output reg [31:0] DR_move_out,
//Output knight
output reg [31:0] UUL_move_out,
output reg [31:0] UUR_move_out,
output reg [31:0] LLU_move_out,
output reg [31:0] RRU_move_out,
output reg [31:0] DDL_move_out,
output reg [31:0] DDR_move_out,
output reg [31:0] LLD_move_out,
output reg [31:0] RRD_move_out

);

wire [10:0] U_move;
wire [10:0] D_move;
wire [10:0] L_move;
wire [10:0] R_move;
wire [10:0] UL_move;
wire [10:0] UR_move;
wire [10:0] DL_move;
wire [10:0] DR_move;
//Output knight
wire [7:0] UUL_move;
wire [7:0] UUR_move;
wire [7:0] LLU_move;
wire [7:0] RRU_move;
wire [7:0] DDL_move;
wire [7:0] DDR_move;
wire [7:0] LLD_move;
wire [7:0] RRD_move;


wire [5:0] pieceRegOut;

reg [5:0] capturedPieceU;
reg [5:0] capturedPieceD;
reg [5:0] capturedPieceL;
reg [5:0] capturedPieceR;
reg [5:0] capturedPieceUL;
reg [5:0] capturedPieceUR;
reg [5:0] capturedPieceDL;
reg [5:0] capturedPieceDR;

reg [5:0] capturedPieceUUL;
reg [5:0] capturedPieceUUR;
reg [5:0] capturedPieceLLU;
reg [5:0] capturedPieceRRU;
reg [5:0] capturedPieceDDL;
reg [5:0] capturedPieceDDR;
reg [5:0] capturedPieceLLD;
reg [5:0] capturedPieceRRD;

reg [3:0] castlingL;
reg [3:0] castlingR;


parameter EMPTY_MOVE = 11'b000_0000_0000;
parameter EMPTY_KNIGHT_MOVE = 8'b0000_0000;

parameter EMPTY_MOVE_OUT = 32'h0000_0000;
parameter EMPTY_KNIGHT_MOVE_OUT = 32'h0000_0000;

parameter EMPTY_PIECE_REG = 6'b00_0000;

parameter WHITE_KINGS_SIDE = 4'b0001;
parameter WHITE_QUEENS_SIDE = 4'b0010;
parameter BLACK_KINGS_SIDE = 4'b0100;
parameter BLACK_QUEENS_SIDE = 4'b1000;

parameter WHITE = 1'b1;
parameter BLACK = 1'b0;


pieceReg pieceReg1(
  pieceReg,
  enable,
  clear,
  clk,
  pieceRegOut

);

transceiver Transceiver1(

.clk(clk), .engineColor(engineColor), .pieceReg(pieceRegOut), .posReg(posReg), .pawnPass(pawnPass),

.U_in(U_in), .D_in(D_in), .L_in(L_in), .R_in(R_in), .UL_in(UL_in), .UR_in(UR_in), .DL_in(DL_in), .DR_in(DR_in), 
.UUL_in(UUL_in), .UUR_in(UUR_in), .LLU_in(LLU_in), .RRU_in(RRU_in), .DDL_in(DDL_in), .DDR_in(DDR_in), .LLD_in(LLD_in), .RRD_in(RRD_in),

.U_out(U_out), .D_out(D_out), .L_out(L_out), .R_out(R_out), .UL_out(UL_out), .UR_out(UR_out), .DL_out(DL_out), .DR_out(DR_out), 
.UUL_out(UUL_out), .UUR_out(UUR_out), .LLU_out(LLU_out), .RRU_out(RRU_out), .DDL_out(DDL_out), .DDR_out(DDR_out), .LLD_out(LLD_out), .RRD_out(RRD_out),

.U_move(U_move), .D_move(D_move), .L_move(L_move), .R_move(R_move), .UL_move(UL_move), .UR_move(UR_move), .DL_move(DL_move), .DR_move(DR_move), 
.UUL_move(UUL_move), .UUR_move(UUR_move), .LLU_move(LLU_move), .RRU_move(RRU_move), .DDL_move(DDL_move), .DDR_move(DDR_move), .LLD_move(LLD_move), .RRD_move(RRD_move)

);

always @(*) begin
	
	capturedPieceU = EMPTY_PIECE_REG;
	capturedPieceD = EMPTY_PIECE_REG;
	capturedPieceL = EMPTY_PIECE_REG;
	capturedPieceR = EMPTY_PIECE_REG;
	capturedPieceUL = EMPTY_PIECE_REG;
	capturedPieceUR = EMPTY_PIECE_REG;
	capturedPieceDL = EMPTY_PIECE_REG;
	capturedPieceDR = EMPTY_PIECE_REG;
	capturedPieceUUL = EMPTY_PIECE_REG;
	capturedPieceUUR = EMPTY_PIECE_REG;
	capturedPieceLLU = EMPTY_PIECE_REG;
	capturedPieceRRU = EMPTY_PIECE_REG;
	capturedPieceDDL = EMPTY_PIECE_REG;
	capturedPieceDDR = EMPTY_PIECE_REG;
	capturedPieceLLD = EMPTY_PIECE_REG;
	capturedPieceRRD = EMPTY_PIECE_REG;
	
	// if captured move
	if (U_move[10] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceU = pieceRegOut; 
	if (D_move[10] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceD = pieceRegOut; 
	if (L_move[10] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceL = pieceRegOut; 
	if (R_move[10] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceR = pieceRegOut; 
	if (UL_move[10] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceUL = pieceRegOut; 
	if (UR_move[10] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceUR = pieceRegOut; 
	if (DL_move[10] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceDL = pieceRegOut; 
	if (DR_move[10] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceDR = pieceRegOut;  

	if (UUL_move[7] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceUUL = pieceRegOut; 
	if (UUR_move[7] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceUUR = pieceRegOut; 
	if (LLU_move[7] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceLLU = pieceRegOut; 
	if (RRU_move[7] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceRRU = pieceRegOut; 
	if (DDL_move[7] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceDDL = pieceRegOut; 
	if (DDR_move[7] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceDDR = pieceRegOut; 
	if (LLD_move[7] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceLLD = pieceRegOut; 
	if (RRD_move[7] != pieceRegOut[5] && pieceRegOut != EMPTY_PIECE_REG)
		capturedPieceRRD = pieceRegOut; 
		
	
	if (castling == 1'b1) begin
		if (engineColor == WHITE) begin
			if (pieceRegOut == EMPTY_PIECE_REG && L_move[7] == 1'b1 && L_move[5:0] == 6'd03)
				castlingL = WHITE_KINGS_SIDE;
			else
				castlingL = 4'b0000;
				
			if (pieceRegOut == EMPTY_PIECE_REG && R_move[7] == 1'b1 && R_move[5:0] == 6'd03)
				castlingR = WHITE_QUEENS_SIDE;
			else
				castlingR = 4'b0000;	
			
		end
		
		else begin //enginecolor == black
			if (pieceRegOut == EMPTY_PIECE_REG && L_move[7] == 1'b1 && L_move[5:0] == 6'd59)
				castlingL = BLACK_KINGS_SIDE;
			else
				castlingL = 4'b0000;
				
			if (pieceRegOut == EMPTY_PIECE_REG && R_move[7] == 1'b1 && R_move[5:0] == 6'd59)
				castlingR = BLACK_QUEENS_SIDE;
			else
				castlingR = 4'b0000;	
		end
	
	end
	
	else begin //no castling
		castlingL = 4'b0000;
		castlingR = 4'b0000;
	end
	
// creating the 32 bit move format
		
	U_move_out = {8'b0000_0000, capturedPieceU, posReg, U_move[10:6], 1'b0, U_move[5:0]};
	D_move_out = {8'b0000_0000, capturedPieceD, posReg, D_move[10:6], 1'b0, D_move[5:0]};
	L_move_out = {4'b0000, castlingL, capturedPieceL, posReg, L_move[10:6], 1'b0, L_move[5:0]};
	R_move_out = {4'b0000, castlingR, capturedPieceR, posReg, R_move[10:6], 1'b0, R_move[5:0]};
	UL_move_out = {8'b0000_0000, capturedPieceUL, posReg, UL_move[10:6], 1'b0, UL_move[5:0]};
	UR_move_out = {8'b0000_0000, capturedPieceUR, posReg, UR_move[10:6], 1'b0, UR_move[5:0]};
	DL_move_out = {8'b0000_0000, capturedPieceDL, posReg, DL_move[10:6], 1'b0, DL_move[5:0]};
	DR_move_out = {8'b0000_0000, capturedPieceDR, posReg, DR_move[10:6], 1'b0, DR_move[5:0]};

	UUL_move_out = {8'b0000_0000, capturedPieceUUL, posReg, UUL_move[7], 4'b0000, UUL_move[6], UUL_move[5:0]};
	UUR_move_out = {8'b0000_0000, capturedPieceUUR, posReg, UUR_move[7], 4'b0000, UUR_move[6], UUR_move[5:0]};
	LLU_move_out = {8'b0000_0000, capturedPieceLLU, posReg, LLU_move[7], 4'b0000, LLU_move[6], LLU_move[5:0]};
	RRU_move_out = {8'b0000_0000, capturedPieceRRU, posReg, RRU_move[7], 4'b0000, RRU_move[6], RRU_move[5:0]};
	DDL_move_out = {8'b0000_0000, capturedPieceDDL, posReg, DDL_move[7], 4'b0000, DDL_move[6], DDL_move[5:0]};
	DDR_move_out = {8'b0000_0000, capturedPieceDDR, posReg, DDR_move[7], 4'b0000, DDR_move[6], DDR_move[5:0]};
	LLD_move_out = {8'b0000_0000, capturedPieceLLD, posReg, LLD_move[7], 4'b0000, LLD_move[6], LLD_move[5:0]};
	RRD_move_out = {8'b0000_0000, capturedPieceRRD, posReg, RRD_move[7], 4'b0000, RRD_move[6], RRD_move[5:0]};
	
	if (U_move == EMPTY_MOVE)
		U_move_out = EMPTY_MOVE_OUT;
	if (D_move == EMPTY_MOVE)
		D_move_out = EMPTY_MOVE_OUT;
	if (L_move == EMPTY_MOVE)
		L_move_out = EMPTY_MOVE_OUT;
	if (R_move == EMPTY_MOVE)
		R_move_out = EMPTY_MOVE_OUT;
	if (UL_move == EMPTY_MOVE)
		UL_move_out = EMPTY_MOVE_OUT;
	if (UR_move == EMPTY_MOVE)
		UR_move_out = EMPTY_MOVE_OUT;
	if (DL_move == EMPTY_MOVE)
		DL_move_out = EMPTY_MOVE_OUT;
	if (DR_move == EMPTY_MOVE)
		DR_move_out = EMPTY_MOVE_OUT;
	if (UUL_move == EMPTY_KNIGHT_MOVE)
		UUL_move_out = EMPTY_KNIGHT_MOVE_OUT;
	if (UUR_move == EMPTY_KNIGHT_MOVE)
		UUR_move_out = EMPTY_KNIGHT_MOVE_OUT;
	if (LLU_move == EMPTY_KNIGHT_MOVE)
		LLU_move_out = EMPTY_KNIGHT_MOVE_OUT;
	if (RRU_move == EMPTY_KNIGHT_MOVE)
		RRU_move_out = EMPTY_KNIGHT_MOVE_OUT;
	if (DDL_move == EMPTY_KNIGHT_MOVE)
		DDL_move_out = EMPTY_KNIGHT_MOVE_OUT;
	if (DDR_move == EMPTY_KNIGHT_MOVE)
		DDR_move_out = EMPTY_KNIGHT_MOVE_OUT;
	if (LLD_move == EMPTY_KNIGHT_MOVE)
		LLD_move_out = EMPTY_KNIGHT_MOVE_OUT;
	if (RRD_move == EMPTY_KNIGHT_MOVE)
		RRD_move_out = EMPTY_KNIGHT_MOVE_OUT;		
		
		
	if (castling == 1'b1) begin
		if (castlingL == 4'b0000)
			L_move_out = EMPTY_MOVE_OUT;
		if (castlingR == 4'b0000)
			R_move_out = EMPTY_MOVE_OUT;
	end
	
end
endmodule
