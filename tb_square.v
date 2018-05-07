module tb_square;

reg clk;

reg engineColor;
reg enable;
reg clear;

reg [5:0] pieceReg;
reg[5:0] posReg;


reg [10:0] U_in;
reg [10:0] D_in ;
reg [10:0] R_in;
reg [10:0] L_in;
reg [10:0] UL_in;
reg [10:0] UR_in ;
reg [10:0] DL_in;
reg [10:0] DR_in;
//Input knight
reg [7:0] UUL_in;
reg [7:0] UUR_in;
reg [7:0] LLU_in;
reg [7:0] RRU_in;
reg [7:0] DDL_in;
reg [7:0] DDR_in;
reg [7:0] LLD_in;
reg [7:0] RRD_in;

//Output Non knight
wire [10:0] U_out;
wire [10:0] D_out;
wire [10:0] L_out;
wire [10:0] R_out;
wire [10:0] UL_out;
wire [10:0] UR_out;
wire [10:0] DL_out;
wire [10:0] DR_out;
//Output knight
wire [7:0] UUL_out;
wire [7:0] UUR_out;
wire [7:0] LLU_out;
wire [7:0] RRU_out;
wire [7:0] DDL_out;
wire [7:0] DDR_out;
wire [7:0] LLD_out;
wire [7:0] RRD_out;


//Move_Reg Non knight
wire [31:0] U_move;
wire [31:0] D_move;
wire [31:0] L_move;
wire [31:0] R_move;
wire [31:0] UL_move;
wire [31:0] UR_move;
wire [31:0] DL_move;
wire [31:0] DR_move;
//Move_Reg knight
wire [31:0] UUL_move;
wire [31:0] UUR_move;
wire [31:0] LLU_move;
wire [31:0] RRU_move;
wire [31:0] DDL_move;
wire [31:0] DDR_move;
wire [31:0] LLD_move;
wire [31:0] RRD_move;

parameter WHITE = 1'b1;
parameter BLACK = 1'b0;

parameter PAWN_PIECE = 5'b00010;
parameter KNIGHT_PIECE = 5'b00001;
parameter QUEEN_PIECE = 5'b11000;
parameter ROOK_PIECE = 5'b10000;
parameter KING_PIECE = 5'b00100;
parameter BISHOP_PIECE = 5'b01000;
parameter EMPTY_PIECE = 6'b00_0000;

parameter PAWN_ATTACK = 4'b0001;
parameter KNIGHT_ATTACK = 1'b1;
parameter QUEEN_ATTACK = 4'b1100;
parameter ROOK_ATTACK = 4'b1000;
parameter KING_ATTACK = 4'b0010;
parameter BISHOP_ATTACK = 4'b0100;

parameter EMPTY_MOVE = 32'h0000_0000;
parameter EMPTY_KNIGHT_MOVE = 32'h0000_0000; 

square square1(
clk, engineColor, enable, clear, pieceReg, posReg, 

U_in,D_in,L_in,R_in,UL_in,UR_in,DL_in,DR_in, 
UUL_in,UUR_in,LLU_in,RRU_in,DDL_in,DDR_in,LLD_in,RRD_in,

U_out,D_out,L_out,R_out,UL_out,UR_out,DL_out,DR_out, 
UUL_out,UUR_out,LLU_out,RRU_out,DDL_out,DDR_out,LLD_out,RRD_out,

U_move,D_move,L_move,R_move,UL_move,UR_move,DL_move,DR_move, 
UUL_move,UUR_move,LLU_move,RRU_move,DDL_move,DDR_move,LLD_move,RRD_move
);


initial begin
	clk = 1'b0;
	engineColor = BLACK;
	pieceReg = {WHITE, QUEEN_PIECE};
	enable = 1'b1;
	clear = 1'b0;
	
	posReg = 6'b01_1100; //28
	
	
U_in = EMPTY_MOVE;
D_in = {BLACK, ROOK_ATTACK, 6'b01_0100}; // 20
R_in = EMPTY_MOVE;
L_in = {BLACK, QUEEN_ATTACK, 6'b01_1101}; //29
UL_in = EMPTY_MOVE;
UR_in = EMPTY_MOVE ;
DL_in = {BLACK, BISHOP_ATTACK, 6'b01_0011}; // 21
DR_in = EMPTY_MOVE;
//Input knight
UUL_in = EMPTY_KNIGHT_MOVE;
UUR_in = {BLACK, KNIGHT_ATTACK, 6'b10_1011}; // 43
LLU_in = EMPTY_KNIGHT_MOVE;
RRU_in = EMPTY_KNIGHT_MOVE;
DDL_in = EMPTY_KNIGHT_MOVE;
DDR_in = EMPTY_KNIGHT_MOVE;
LLD_in = EMPTY_KNIGHT_MOVE;
RRD_in = EMPTY_KNIGHT_MOVE;
	
	
	#40;
	 $display("8 Outputs for non knight are: U:%b D:%b L:%b R:%b UL:%b UR:%b DL:%b DR:%b",U_out,D_out,L_out
  ,R_out,UL_out,UR_out,DL_out,DR_out);
 
   $display("8 Outputs for knight are: UUL:%b UUR:%b DDL:%b DDR:%b LLU:%b RRU:%b LLD:%b RRD:%b",UUL_out,UUR_out,DDL_out
  ,DDR_out,LLU_out,RRU_out,LLD_out,RRD_out);
  
  
  	 $display("8 Moves for non knight are: U:%b D:%b L:%b R:%b UL:%b UR:%b DL:%b DR:%b",U_move,D_move,L_move
  ,R_move,UL_move,UR_move,DL_move,DR_move);
 
   $display("8 Moves knight are: UUL:%b UUR:%b DDL:%b DDR:%b LLU:%b RRU:%b LLD:%b RRD:%b",UUL_move,UUR_move,DDL_move
  ,DDR_move,LLU_move,RRU_move,LLD_move,RRD_move);
	

	
	$finish;
end

always begin
	#10;
	clk = ~clk;

end

endmodule
