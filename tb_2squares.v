module tb_2squares;

reg clk;
reg engineColor;
reg enable;
reg clear;

reg [5:0] pieceReg1;

reg [10:0] U_in1;
reg [10:0] D_in1;
reg [10:0] L_in1;

reg [10:0] UL_in1;
reg [10:0] UR_in1 ;
reg [10:0] DL_in1;
reg [10:0] DR_in1;
//Input knight
reg [7:0] UUL_in1;
reg [7:0] UUR_in1;
reg [7:0] LLU_in1;
reg [7:0] RRU_in1;
reg [7:0] DDL_in1;
reg [7:0] DDR_in1;
reg [7:0] LLD_in1;
reg [7:0] RRD_in1;

//Output Non knight
wire [10:0] U_out1;
wire [10:0] D_out1;
wire [10:0] L_out1;

wire [10:0] UL_out1;
wire [10:0] UR_out1;
wire [10:0] DL_out1;
wire [10:0] DR_out1;
//Output knight
wire [7:0] UUL_out1;
wire [7:0] UUR_out1;
wire [7:0] LLU_out1;
wire [7:0] RRU_out1;
wire [7:0] DDL_out1;
wire [7:0] DDR_out1;
wire [7:0] LLD_out1;
wire [7:0] RRD_out1;


//Move_Reg Non knight
wire [31:0] U_move1;
wire [31:0] D_move1;
wire [31:0] L_move1;
wire [31:0] R_move1;
wire [31:0] UL_move1;
wire [31:0] UR_move1;
wire [31:0] DL_move1;
wire [31:0] DR_move1;
//Move_Reg knight
wire [31:0] UUL_move1;
wire [31:0] UUR_move1;
wire [31:0] LLU_move1;
wire [31:0] RRU_move1;
wire [31:0] DDL_move1;
wire [31:0] DDR_move1;
wire [31:0] LLD_move1;
wire [31:0] RRD_move1;

///Square 2, Right
reg [5:0] pieceReg2;

reg [10:0] U_in2;
reg [10:0] D_in2;
reg [10:0] R_in2;

reg [10:0] UL_in2;
reg [10:0] UR_in2 ;
reg [10:0] DL_in2;
reg [10:0] DR_in2;
//Input knight
reg [7:0] UUL_in2;
reg [7:0] UUR_in2;
reg [7:0] LLU_in2;
reg [7:0] RRU_in2;
reg [7:0] DDL_in2;
reg [7:0] DDR_in2;
reg [7:0] LLD_in2;
reg [7:0] RRD_in2;

//Output Non knight
wire [10:0] U_out2;
wire [10:0] D_out2;
wire [10:0] R_out2;

wire [10:0] UL_out2;
wire [10:0] UR_out2;
wire [10:0] DL_out2;
wire [10:0] DR_out2;
//Output knight
wire [7:0] UUL_out2;
wire [7:0] UUR_out2;
wire [7:0] LLU_out2;
wire [7:0] RRU_out2;
wire [7:0] DDL_out2;
wire [7:0] DDR_out2;
wire [7:0] LLD_out2;
wire [7:0] RRD_out2;


//Move_Reg Non knight
wire [31:0] U_move2;
wire [31:0] D_move2;
wire [31:0] L_move2;
wire [31:0] R_move2;
wire [31:0] UL_move2;
wire [31:0] UR_move2;
wire [31:0] DL_move2;
wire [31:0] DR_move2;
//Move_Reg knight
wire [31:0] UUL_move2;
wire [31:0] UUR_move2;
wire [31:0] LLU_move2;
wire [31:0] RRU_move2;
wire [31:0] DDL_move2;
wire [31:0] DDR_move2;
wire [31:0] LLD_move2;
wire [31:0] RRD_move2;

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


testTwoSquares test2squares(


.clk(clk),
.engineColor(engineColor),
.enable(enable),
.clear(clear),

.pieceReg1(pieceReg1),

//Input Reg
.U_in1(U_in1),
.D_in1(D_in1),
.L_in1(L_in1),

.UL_in1(UL_in1),
.UR_in1(UR_in1),
.DL_in1(DL_in1),
.DR_in1(DL_in1),
//Input knight
.UUL_in1(UUL_in1),
.UUR_in1(UUR_in1),
.LLU_in1(LLU_in1),
.RRU_in1(RRU_in1),
.DDL_in1(DDL_in1),
.DDR_in1(DDR_in1),
.LLD_in1(LLD_in1),
.RRD_in1(RRD_in1),

//Output Non knight
.U_out1(U_out1),
.D_out1(D_out1),
.L_out1(L_out1),

.UL_out1(UL_out1),
.UR_out1(UR_out1),
.DL_out1(DL_out1),
.DR_out1(DR_out1),
//Output knight
.UUL_out1(UUL_out1),
.UUR_out1(UUR_out1),
.LLU_out1(LLU_out1),
.RRU_out1(RRU_out1),
.DDL_out1(DDL_out1),
.DDR_out1(DDR_out1),
.LLD_out1(LLD_out1),
.RRD_out1(RRD_out1),


//Output Non knight
.U_move_out1(U_move1),
.D_move_out1(D_move1),
.L_move_out1(L_move1),
.R_move_out1(R_move1),
.UL_move_out1(UL_move1),
.UR_move_out1(UR_move1),
.DL_move_out1(DL_move1),
.DR_move_out1(DR_move1),
//Output knight
.UUL_move_out1(UUL_move1),
.UUR_move_out1(UUR_move1),
.LLU_move_out1(LLU_move1),
.RRU_move_out1(RRU_move1),
.DDL_move_out1(DDL_move1),
.DDR_move_out1(DDR_move1),
.LLD_move_out1(LLD_move1),
.RRD_move_out1(RRD_move1),




.pieceReg2(pieceReg2),

//Input Reg
.U_in2(U_in2),
.D_in2(D_in2),
.R_in2(R_in2),

.UL_in2(UL_in2),
.UR_in2(UR_in2),
.DL_in2(DL_in2),
.DR_in2(DR_in2),
//Input knight
.UUL_in2(UUL_in2),
.UUR_in2(UUR_in2),
.LLU_in2(LLU_in2),
.RRU_in2(RRU_in2),
.DDL_in2(DDL_in2),
.DDR_in2(DDR_in2),
.LLD_in2(LLD_in2),
.RRD_in2(RRD_in2),

//Output Non knight
.U_out2(U_out2),
.D_out2(D_out2),
.R_out2(R_out2),

.UL_out2(UL_out2),
.UR_out2(UR_out2),
.DL_out2(DL_out2),
.DR_out2(DR_out2),
//Output knight
.UUL_out2(UUL_out2),
.UUR_out2(UUR_out2),
.LLU_out2(LLU_out2),
.RRU_out2(RRU_out2),
.DDL_out2(DDL_out2),
.DDR_out2(DDR_out2),
.LLD_out2(LLD_out2),
.RRD_out2(RRD_out2),


//Output Non knight
.U_move_out2(U_move2),
.D_move_out2(D_move2),
.L_move_out2(L_move2),
.R_move_out2(R_move2),
.UL_move_out2(UL_move2),
.UR_move_out2(UR_move2),
.DL_move_out2(DL_move2),
.DR_move_out2(DR_move2),
//Output knight
.UUL_move_out2(UUL_move2),
.UUR_move_out2(UUR_move2),
.LLU_move_out2(LLU_move2),
.RRU_move_out2(RRU_move2),
.DDL_move_out2(DDL_move2),
.DDR_move_out2(DDR_move2),
.LLD_move_out2(LLD_move2),
.RRD_move_out2(RRD_move2)
);



initial begin
	clk = 1'b0;
	engineColor = BLACK;
	enable = 1'b1;
	clear = 1'b0;
	
	pieceReg1 = {BLACK,ROOK_PIECE};
	pieceReg1 = {BLACK,QUEEN_PIECE};
//Square Left
U_in1 = EMPTY_MOVE;
D_in1 = {BLACK, ROOK_ATTACK, 6'b01_0100}; // 20
L_in1 = EMPTY_MOVE;
UL_in1 = EMPTY_MOVE;
UR_in1 = EMPTY_MOVE ;
DL_in1 = {BLACK, BISHOP_ATTACK, 6'b01_0011}; // 21
DR_in1 = EMPTY_MOVE;
//Input knight
UUL_in1 = EMPTY_KNIGHT_MOVE;
UUR_in1 = {BLACK, KNIGHT_ATTACK, 6'b10_1011}; // 43
LLU_in1 = EMPTY_KNIGHT_MOVE;
RRU_in1 = EMPTY_KNIGHT_MOVE;
DDL_in1 = EMPTY_KNIGHT_MOVE;
DDR_in1 = EMPTY_KNIGHT_MOVE;
LLD_in1 = EMPTY_KNIGHT_MOVE;
RRD_in1 = EMPTY_KNIGHT_MOVE;
///////////////////////////Square Right 
U_in2 = EMPTY_MOVE;
D_in2 = {BLACK, ROOK_ATTACK, 6'b01_0111}; // 
R_in2 = EMPTY_MOVE;
UL_in2 = EMPTY_MOVE;
UR_in2 = EMPTY_MOVE ;
DL_in2 = {BLACK, BISHOP_ATTACK, 6'b01_1111}; // 
DR_in2 = EMPTY_MOVE;
//Input knight
UUL_in2 = EMPTY_KNIGHT_MOVE;
UUR_in2 = {BLACK, KNIGHT_ATTACK, 6'b10_1100}; // 
LLU_in2 = EMPTY_KNIGHT_MOVE;
RRU_in2 = EMPTY_KNIGHT_MOVE;
DDL_in2 = EMPTY_KNIGHT_MOVE;
DDR_in2 = EMPTY_KNIGHT_MOVE;
LLD_in2 = EMPTY_KNIGHT_MOVE;
RRD_in2 = EMPTY_KNIGHT_MOVE;
////////////////////////////////
	

	
	
	#40;
	$display(" L Output (32 bits) for LEFT SQUARE:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",L_move1[29:24],L_move1[21:16],L_move1[13:8],L_move1[5:0]);
	$display(" R Output (32 bits) for LEFT SQUARE:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",R_move1[29:24],R_move1[21:16],R_move1[13:8],R_move1[5:0]);
	$display(" U Output (32 bits) for LEFT SQUARE:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",U_move1[29:24],U_move1[21:16],U_move1[13:8],U_move1[5:0]);
	$display(" D Output (32 bits) for LEFT SQUARE:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",D_move1[29:24],D_move1[21:16],D_move1[13:8],D_move1[5:0]);
	
	
	
	
	
	
	
	
	
	
	$display(" R Output (32 bits) for RIGHT SQUARE:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",R_move2[29:24],R_move2[21:16],R_move2[13:8],R_move2[5:0]);

	
	$finish;
end

always begin
	#10;
	clk = ~clk;

end

endmodule
