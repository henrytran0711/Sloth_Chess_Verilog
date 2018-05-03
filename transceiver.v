module transceiver(
clk, engineColor, pieceReg, posReg, U_in,D_in,L_in,R_in,UL_in,UR_in,DL_in,DR_in, 
UUL_in,UUR_in,LLU_in,RRU_in,DDL_in,DDR_in,LLD_in,RRD_in,

U_out,D_out,L_out,R_out,UL_out,UR_out,DL_out,DR_out, 
UUL_out,UUR_out,LLU_out,RRU_out,DDL_out,DDR_out,LLD_out,RRD_out,

U_move,D_move,L_move,R_move,UL_move,UR_move,DL_move,DR_move, 
UUL_move,UUR_move,LLU_move,RRU_move,DDL_move,DDR_move,LLD_move,RRD_move

);
								
								
//CLOCK
input clk;
input engineColor;
input[5:0] pieceReg;
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
output reg [10:0] U_out;
output reg [10:0] D_out;
output reg [10:0] L_out;
output reg [10:0] R_out;
output reg [10:0] UL_out;
output reg [10:0] UR_out;
output reg [10:0] DL_out;
output reg [10:0] DR_out;
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
output reg [10:0] U_move;
output reg [10:0] D_move;
output reg [10:0] L_move;
output reg [10:0] R_move;
output reg [10:0] UL_move;
output reg [10:0] UR_move;
output reg [10:0] DL_move;
output reg [10:0] DR_move;
//Output knight
output reg [7:0] UUL_move;
output reg [7:0] UUR_move;
output reg [7:0] LLU_move;
output reg [7:0] RRU_move;
output reg [7:0] DDL_move;
output reg [7:0] DDR_move;
output reg [7:0] LLD_move;
output reg [7:0] RRD_move;


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


parameter EMPTY_MOVE = 11'b000_0000_0000;
parameter EMPTY_PIECE_REG = 6'b00_0000;

Transmitter Trans(

engineColor, pieceReg, posReg,

//out
U_trans,D_trans,L_trans,R_trans,UL_trans,UR_trans,DL_trans,DR_trans, 
UUL_trans,UUR_trans,LLU_trans,RRU_trans,DDL_trans,DDR_trans,LLD_trans,RRD_trans

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

	if (U_move != EMPTY_MOVE && U_move[9] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //manhattan
		D_out = U_move;
	else
		D_out = D_trans;
		
	if (D_move != EMPTY_MOVE && D_move[9] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //manhattan
		U_out = D_move;
	else
		U_out = U_trans;
	
	if (L_move != EMPTY_MOVE && L_move[9] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //manhattan
		R_out = L_move;
	else
		R_out = R_trans;
	
	if (R_move != EMPTY_MOVE && R_move[9] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //manhattan
		L_out = R_move;
	else
		L_out = L_trans;
	
	if (UL_move != EMPTY_MOVE && UL_move[8] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //diagonal
		DR_out = UL_move;
	else
		DR_out = DR_trans;
	
	if (UR_move != EMPTY_MOVE && UR_move[8] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //diagonal
		DL_out = UR_move;
	else
		DL_out = DL_trans;
	
	if (DL_move != EMPTY_MOVE && DL_move[8] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //diagonal
		UR_out = DL_move;
	else
		UR_out = UR_trans;	

	if (DR_move != EMPTY_MOVE && DR_move[8] == 1'b1 && pieceReg == EMPTY_PIECE_REG) //diagonal
		UL_out = DR_move;
	else
		UL_out = UL_trans;
		
end

 always @(posedge clk)
    begin
		U_move <= U_in;
		D_move <= D_in;
		L_move <= L_in;
		R_move <= R_in;
		
		UL_move <= UL_in;
		UR_move <= UR_in;
		DL_move <= DL_in;
		DR_move <= DR_in;
		
		UUL_move <= UUL_in;
		UUR_move <= UUR_in;
		LLU_move <= LLU_in;
		RRU_move <= RRU_in;
		
		DDL_move <= DDL_in;
		DDR_move <= DDR_in;
		LLD_move <= LLD_in;
		RRD_move <= RRD_in;
	end
	
	
endmodule
