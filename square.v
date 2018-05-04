module square(
clk, engineColor, pieceReg, enable, clear, posReg, 

U_in,D_in,L_in,R_in,UL_in,UR_in,DL_in,DR_in, 
UUL_in,UUR_in,LLU_in,RRU_in,DDL_in,DDR_in,LLD_in,RRD_in,

U_out,D_out,L_out,R_out,UL_out,UR_out,DL_out,DR_out, 
UUL_out,UUR_out,LLU_out,RRU_out,DDL_out,DDR_out,LLD_out,RRD_out,

U_move_out,D_move_out,L_move_out,R_move_out,UL_move_out,UR_move_out,DL_move_out,DR_move_out, 
UUL_move_out,UUR_move_out,LLU_move_out,RRU_move_out,DDL_move_out,DDR_move_out,LLD_move_out,RRD_move_out

);
								
								
//CLOCK
input clk;
input engineColor;
input[5:0] pieceReg;
input enable;
input clear;

input[5:0] posReg;
//Input Reg
input [10:0] U_in;
input [10:0] D_in ;
input [10:0] L_in;
input [10:0] R_in;
input [10:0] UL_in;
input [10:0] UR_in ;
input [10:0] DL_in;
input [10:0] DR_in;
//Input knight
input [7:0] UUL_in;
input [7:0] UUR_in;
input [7:0] LLU_in;
input [7:0] RRU_in;
input [7:0] DDL_in;
input [7:0] DDR_in;
input [7:0] LLD_in;
input [7:0] RRD_in;

//Output Non knight
output [10:0] U_out;
output [10:0] D_out;
output [10:0] L_out;
output [10:0] R_out;
output [10:0] UL_out;
output [10:0] UR_out;
output [10:0] DL_out;
output [10:0] DR_out;
//Output knight
output [7:0] UUL_out;
output [7:0] UUR_out;
output [7:0] LLU_out;
output [7:0] RRU_out;
output [7:0] DDL_out;
output [7:0] DDR_out;
output [7:0] LLD_out;
output [7:0] RRD_out;


//Output Non knight
output reg [23:0] U_move_out;
output reg [23:0] D_move_out;
output reg [23:0] L_move_out;
output reg [23:0] R_move_out;
output reg [23:0] UL_move_out;
output reg [23:0] UR_move_out;
output reg [23:0] DL_move_out;
output reg [23:0] DR_move_out;
//Output knight
output reg [23:0] UUL_move_out;
output reg [23:0] UUR_move_out;
output reg [23:0] LLU_move_out;
output reg [23:0] RRU_move_out;
output reg [23:0] DDL_move_out;
output reg [23:0] DDR_move_out;
output reg [23:0] LLD_move_out;
output reg [23:0] RRD_move_out;

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



parameter EMPTY_MOVE = 11'b000_0000_0000;
parameter EMPTY_KNIGHT_MOVE = 8'b0000_0000;

parameter EMPTY_MOVE_OUT = 24'h00_0000;
parameter EMPTY_KNIGHT_MOVE_OUT = 24'h00_0000;

pieceReg pieceReg1(
  pieceReg,
  enable,
  clear,
  clk,
  pieceRegOut

);

transceiver Transceiver1(

clk, engineColor, pieceRegOut, posReg,

U_in,D_in,L_in,R_in,UL_in,UR_in,DL_in,DR_in, 
UUL_in,UUR_in,LLU_in,RRU_in,DDL_in,DDR_in,LLD_in,RRD_in,

U_out,D_out,L_out,R_out,UL_out,UR_out,DL_out,DR_out, 
UUL_out,UUR_out,LLU_out,RRU_out,DDL_out,DDR_out,LLD_out,RRD_out,

U_move,D_move,L_move,R_move,UL_move,UR_move,DL_move,DR_move, 
UUL_move,UUR_move,LLU_move,RRU_move,DDL_move,DDR_move,LLD_move,RRD_move

);

always @(*) begin


	U_move_out = {2'b00, posReg, 2'b00, U_move[10:6], 1'b0, 2'b00, U_move[5:0]};
	D_move_out = {2'b00, posReg, 2'b00, D_move[10:6], 1'b0, 2'b00, D_move[5:0]};
	L_move_out = {2'b00, posReg, 2'b00, L_move[10:6], 1'b0, 2'b00, L_move[5:0]};
	R_move_out = {2'b00, posReg, 2'b00, R_move[10:6], 1'b0, 2'b00, R_move[5:0]};
	UL_move_out = {2'b00, posReg, 2'b00, UL_move[10:6], 1'b0, 2'b00, UL_move[5:0]};
	UR_move_out = {2'b00, posReg, 2'b00, UR_move[10:6], 1'b0, 2'b00, UR_move[5:0]};
	DL_move_out = {2'b00, posReg, 2'b00, DL_move[10:6], 1'b0, 2'b00, DL_move[5:0]};
	DR_move_out = {2'b00, posReg, 2'b00, DR_move[10:6], 1'b0, 2'b00, DR_move[5:0]};

	UUL_move_out = {2'b00, posReg, 2'b00, UUL_move[7], 4'b0000, UUL_move[6], 2'b00, UUL_move[5:0]};
	UUR_move_out = {2'b00, posReg, 2'b00, UUR_move[7], 4'b0000, UUR_move[6], 2'b00, UUR_move[5:0]};
	LLU_move_out = {2'b00, posReg, 2'b00, LLU_move[7], 4'b0000, LLU_move[6], 2'b00, LLU_move[5:0]};
	RRU_move_out = {2'b00, posReg, 2'b00, RRU_move[7], 4'b0000, RRU_move[6], 2'b00, RRU_move[5:0]};
	DDL_move_out = {2'b00, posReg, 2'b00, DDL_move[7], 4'b0000, DDL_move[6], 2'b00, DDL_move[5:0]};
	DDR_move_out = {2'b00, posReg, 2'b00, DDR_move[7], 4'b0000, DDR_move[6], 2'b00, DDR_move[5:0]};
	LLD_move_out = {2'b00, posReg, 2'b00, LLD_move[7], 4'b0000, LLD_move[6], 2'b00, LLD_move[5:0]};
	RRD_move_out = {2'b00, posReg, 2'b00, RRD_move[7], 4'b0000, RRD_move[6], 2'b00, RRD_move[5:0]};
	
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
	if (UUL_move == EMPTY_MOVE)
		UUL_move_out = EMPTY_MOVE_OUT;
	if (UUR_move == EMPTY_MOVE)
		UUR_move_out = EMPTY_MOVE_OUT;
	if (LLU_move == EMPTY_MOVE)
		LLU_move_out = EMPTY_MOVE_OUT;
	if (RRU_move == EMPTY_MOVE)
		RRU_move_out = EMPTY_MOVE_OUT;
	if (DDL_move == EMPTY_MOVE)
		DDL_move_out = EMPTY_MOVE_OUT;
	if (DDR_move == EMPTY_MOVE)
		DDR_move_out = EMPTY_MOVE_OUT;
	if (LLD_move == EMPTY_MOVE)
		LLD_move_out = EMPTY_MOVE_OUT;
	if (RRD_move == EMPTY_MOVE)
		RRD_move_out = EMPTY_MOVE_OUT;		
	
end
endmodule
