module transceiver(						
								
//CLOCK
input clk,
input engineColor,
input[5:0] pieceReg,
input[5:0] posReg,
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
output reg [10:0] U_out,
output reg [10:0] D_out,
output reg [10:0] L_out,
output reg [10:0] R_out,
output reg [10:0] UL_out,
output reg [10:0] UR_out,
output reg [10:0] DL_out,
output reg [10:0] DR_out,
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
output reg [10:0] U_move,
output reg [10:0] D_move,
output reg [10:0] L_move,
output reg [10:0] R_move,
output reg [10:0] UL_move,
output reg [10:0] UR_move,
output reg [10:0] DL_move,
output reg [10:0] DR_move,
//Output knight
output reg [7:0] UUL_move,
output reg [7:0] UUR_move,
output reg [7:0] LLU_move,
output reg [7:0] RRU_move,
output reg [7:0] DDL_move,
output reg [7:0] DDR_move,
output reg [7:0] LLD_move,
output reg [7:0] RRD_move
);

wire [10:0] U_trans;
wire [10:0] D_trans;
wire [10:0] L_trans;
wire [10:0] R_trans;
wire [10:0] UL_trans;
wire [10:0] UR_trans;
wire [10:0] DL_trans;
wire [10:0] DR_trans;
wire [7:0] UUL_trans;
wire [7:0] UUR_trans;
wire [7:0] LLU_trans;
wire [7:0] RRU_trans;
wire [7:0] DDL_trans;
wire [7:0] DDR_trans;
wire [7:0] LLD_trans;
wire [7:0] RRD_trans;

reg [10:0] U_move_in;
reg [10:0] D_move_in ;
reg [10:0] L_move_in;
reg [10:0] R_move_in;
reg [10:0] UL_move_in;
reg [10:0] UR_move_in ;
reg [10:0] DL_move_in;
reg [10:0] DR_move_in;
//Input knight
reg [7:0] UUL_move_in;
reg [7:0] UUR_move_in;
reg [7:0] LLU_move_in;
reg [7:0] RRU_move_in;
reg [7:0] DDL_move_in;
reg [7:0] DDR_move_in;
reg [7:0] LLD_move_in;
reg [7:0] RRD_move_in;


parameter EMPTY_MOVE = 11'b000_0000_0000;
parameter EMPTY_KNIGHT_MOVE = 8'b0000_0000;

parameter EMPTY_PIECE_REG = 6'b00_0000;

parameter WHITE = 1'b1;
parameter BLACK = 1'b0;


Transmitter Trans(

.engine_color(engineColor), 
.piece_reg(pieceReg), 
.pos_reg(posReg),

//out
.U(U_trans), .D(D_trans), .L(L_trans), .R(R_trans), .UL(UL_trans), .UR(UR_trans), .DL(DL_trans), .DR(DR_trans), 
.UUL(UUL_trans), .UUR(UUR_trans), .LLU(LLU_trans), .RRU(RRU_trans), .DDL(DDL_trans), .DDR(DDR_trans), .LLD(LLD_trans), .RRD(RRD_trans)

);


assign UUL_out = UUL_trans;
assign UUR_out = UUR_trans;
assign LLU_out = LLU_trans;
assign RRU_out = RRU_trans;
assign DDL_out = DDL_trans;
assign DDR_out = DDR_trans;
assign LLD_out = LLD_trans;
assign RRD_out = RRD_trans;



always @(*) begin

	U_move_in = U_in;	
	D_move_in = D_in;
	L_move_in = L_in;
	R_move_in = R_in;
	UL_move_in = UL_in;
	UR_move_in = UR_in;
	DL_move_in = DL_in;
	DR_move_in = DR_in;
	
	UUL_move_in = UUL_in;
	UUR_move_in = UUR_in;
	LLU_move_in = LLU_in;
	RRU_move_in = RRU_in;
	DDL_move_in = DDL_in;
	DDR_move_in = DDR_in;
	LLD_move_in = LLD_in;
	RRD_move_in = RRD_in;
	
	// collisions of same color
	
	if (pieceReg[5] == U_in[10] && pieceReg != EMPTY_PIECE_REG)
		U_move_in = EMPTY_MOVE;
		
	if (pieceReg[5] == D_in[10] && pieceReg != EMPTY_PIECE_REG)
		D_move_in = EMPTY_MOVE;
	
	if (pieceReg[5] == L_in[10] && pieceReg != EMPTY_PIECE_REG)
		L_move_in = EMPTY_MOVE;
	
	if (pieceReg[5] == R_in[10] && pieceReg != EMPTY_PIECE_REG)
		R_move_in = EMPTY_MOVE;
	
	if (pieceReg[5] == UL_in[10] && pieceReg != EMPTY_PIECE_REG)
		UL_move_in = EMPTY_MOVE;
	
	if (pieceReg[5] == UR_in[10] && pieceReg != EMPTY_PIECE_REG)
		UR_move_in = EMPTY_MOVE;
	
	if (pieceReg[5] == DL_in[10] && pieceReg != EMPTY_PIECE_REG)
		DL_move_in = EMPTY_MOVE;
	
	if (pieceReg[5] == DR_in[10] && pieceReg != EMPTY_PIECE_REG)
		DR_move_in = EMPTY_MOVE;
		
	if (pieceReg[5] == UUL_in[7] && pieceReg != EMPTY_PIECE_REG)
		UUL_move_in = EMPTY_KNIGHT_MOVE;	

	if (pieceReg[5] == UUR_in[7] && pieceReg != EMPTY_PIECE_REG)
		UUR_move_in = EMPTY_KNIGHT_MOVE;
		
	if (pieceReg[5] == LLU_in[7] && pieceReg != EMPTY_PIECE_REG)
		LLU_move_in = EMPTY_KNIGHT_MOVE;

	if (pieceReg[5] == RRU_in[7] && pieceReg != EMPTY_PIECE_REG)
		RRU_move_in = EMPTY_KNIGHT_MOVE;

	if (pieceReg[5] == DDL_in[7] && pieceReg != EMPTY_PIECE_REG)
		DDL_move_in = EMPTY_KNIGHT_MOVE;

	if (pieceReg[5] == DDR_in[7] && pieceReg != EMPTY_PIECE_REG)
		DDR_move_in = EMPTY_KNIGHT_MOVE;

	if (pieceReg[5] == LLD_in[7] && pieceReg != EMPTY_PIECE_REG)
		LLD_move_in = EMPTY_KNIGHT_MOVE;

	if (pieceReg[5] == RRD_in[7] && pieceReg != EMPTY_PIECE_REG)
		RRD_move_in = EMPTY_KNIGHT_MOVE;
		
		
	//pawns cannot capture straight
		
	if (U_in[6] == 1'b1 && pieceReg != EMPTY_PIECE_REG)
		U_move_in = EMPTY_MOVE;
		
	if (D_in[6] == 1'b1 && pieceReg != EMPTY_PIECE_REG)
		D_move_in = EMPTY_MOVE;
		
		
	// pawns cannot quiet move diagonally
	
	if (UL_in[6] == 1'b1 && pieceReg == EMPTY_PIECE_REG)
		UL_move_in = EMPTY_MOVE;
		
	if (UR_in[6] == 1'b1 && pieceReg == EMPTY_PIECE_REG)
		UR_move_in = EMPTY_MOVE;
		
	if (DL_in[6] == 1'b1 && pieceReg == EMPTY_PIECE_REG)
		DL_move_in = EMPTY_MOVE;
	
	if (DR_in[6] == 1'b1 && pieceReg == EMPTY_PIECE_REG)
		DR_move_in = EMPTY_MOVE;
	

	D_out = D_trans;
	U_out = U_trans;
	R_out = R_trans;
	L_out = L_trans;
	DR_out = DR_trans;
	DL_out = DL_trans;
	UR_out = UR_trans;
	UL_out = UL_trans;
	
	//pass through

	if (U_move != EMPTY_MOVE && U_move[9] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //manhattan
		D_out = U_move;
		
	if (D_move != EMPTY_MOVE && D_move[9] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //manhattan
		U_out = D_move;
	
	if (L_move != EMPTY_MOVE && L_move[9] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //manhattan
		R_out = L_move;
		
	if (L_move != EMPTY_MOVE && L_move[7] == 1'b1 && pieceReg == EMPTY_PIECE_REG && (posReg == 6'd02 || posReg == 6'd58)) //king passthru for castling
		R_out = L_move;
	
	if (R_move != EMPTY_MOVE && R_move[9] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //manhattan
		L_out = R_move;
		
	if (R_move != EMPTY_MOVE && R_move[7] == 1'b1 && pieceReg == EMPTY_PIECE_REG && (posReg == 6'd04 || posReg == 6'd60)) //king passthru for castling
		L_out = R_move;
	
	if (UL_move != EMPTY_MOVE && UL_move[8] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //diagonal
		DR_out = UL_move;
	
	if (UR_move != EMPTY_MOVE && UR_move[8] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //diagonal
		DL_out = UR_move;
	
	if (DL_move != EMPTY_MOVE && DL_move[8] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //diagonal
		UR_out = DL_move;	

	if (DR_move != EMPTY_MOVE && DR_move[8] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //diagonal
		UL_out = DR_move;
		
	if (pawnPass == 1'b1) begin
		if (U_move[6] == 1'b1)
			D_out = U_move;
		if (D_move[6] == 1'b1)
			U_out = D_move;
	end

		
end

 always @(posedge clk)
    begin
		U_move <= U_move_in;
		D_move <= D_move_in;
		L_move <= L_move_in;
		R_move <= R_move_in;
		
		UL_move <= UL_move_in;
		UR_move <= UR_move_in;
		DL_move <= DL_move_in;
		DR_move <= DR_move_in;
		
		UUL_move <= UUL_move_in;
		UUR_move <= UUR_move_in;
		LLU_move <= LLU_move_in;
		RRU_move <= RRU_move_in;
		
		DDL_move <= DDL_move_in;
		DDR_move <= DDR_move_in;
		LLD_move <= LLD_move_in;
		RRD_move <= RRD_move_in;
	end
	

endmodule
