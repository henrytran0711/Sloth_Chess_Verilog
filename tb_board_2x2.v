module tb_board_2x2();

reg clk;
reg engineColor;
reg enable;
reg clear;

reg [5:0] pieceReg0;
reg [5:0] pieceReg1;
reg [5:0] pieceReg2;
reg [5:0] pieceReg3;

wire [31:0] U_move0;
wire [31:0] L_move0;
wire [31:0] UL_move0;

wire [31:0] U_move1;
wire [31:0] R_move1;
wire [31:0] UR_move1;

wire [31:0] D_move2;
wire [31:0] L_move2;
wire [31:0] DL_move2;

wire [31:0] D_move3;
wire [31:0] R_move3;
wire [31:0] DR_move3;


parameter WHITE = 1'b1;
parameter BLACK = 1'b0;

parameter PAWN_PIECE = 5'b00010;
parameter KNIGHT_PIECE = 5'b00001;
parameter QUEEN_PIECE = 5'b11000;
parameter ROOK_PIECE = 5'b10000;
parameter KING_PIECE = 5'b00100;
parameter BISHOP_PIECE = 5'b01000;
parameter EMPTY_PIECE = 6'b00_0000;

board_2x2 Board0(

.clk(clk), .engineColor(engineColor), .enable(enable), .clear(clear),

.pieceReg0(pieceReg0),

.U_move_out0(U_move0),
.L_move_out0(L_move0),
.UL_move_out0(UL_move0),



.pieceReg1(pieceReg1),

.U_move_out1(U_move1),
.R_move_out1(R_move1),
.UR_move_out1(UR_move1),



.pieceReg2(pieceReg2),

.D_move_out2(D_move2),
.L_move_out2(L_move2),
.DL_move_out2(DL_move2),



.pieceReg3(pieceReg3),

.D_move_out3(D_move3),
.R_move_out3(R_move3),
.DR_move_out3(DR_move3)
);



initial begin

	clk = 1'b0;
	engineColor = WHITE;
	enable = 1'b1;
	clear = 1'b0;
	
	pieceReg0 = {WHITE, QUEEN_PIECE};
	pieceReg1 = {WHITE, PAWN_PIECE};
	pieceReg2 = {BLACK, QUEEN_PIECE};
	pieceReg3 = {BLACK, ROOK_PIECE};

	#40;
	
	$display(" L Move Output (32 bits) for SQUARE 0:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",L_move0[29:24],L_move0[21:16],L_move0[13:8],L_move0[5:0]);
	
	$display(" U Move Output (32 bits) for SQUARE 0:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",U_move0[29:24],U_move0[21:16],U_move0[13:8],U_move0[5:0]);
	
	$display(" UL Move Output (32 bits) for SQUARE 0:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",UL_move0[29:24],UL_move0[21:16],UL_move0[13:8],UL_move0[5:0]);
	
	
	
	$display(" R Move Output (32 bits) for SQUARE 1:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",R_move1[29:24],R_move1[21:16],R_move1[13:8],R_move1[5:0]);
	
	$display(" U Move Output (32 bits) for SQUARE 1:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",U_move1[29:24],U_move1[21:16],U_move1[13:8],U_move1[5:0]);
	
	$display(" UR Move Output (32 bits) for SQUARE 1:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",UR_move1[29:24],UR_move1[21:16],UR_move1[13:8],UR_move1[5:0]);
	
	
	
	$display(" L Move Output (32 bits) for SQUARE 2:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",L_move2[29:24],L_move2[21:16],L_move2[13:8],L_move2[5:0]);
	
	$display(" D Move Output (32 bits) for SQUARE 2:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",D_move2[29:24],D_move2[21:16],D_move2[13:8],D_move2[5:0]);
	
	$display(" DL Move Output (32 bits) for SQUARE 2:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",DL_move2[29:24],DL_move2[21:16],DL_move2[13:8],DL_move2[5:0]);
	
	
	
	$display(" R Move Output (32 bits) for SQUARE 3:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",R_move3[29:24],R_move3[21:16],R_move3[13:8],R_move3[5:0]);
	
	$display(" D Move Output (32 bits) for SQUARE 3:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",D_move3[29:24],D_move3[21:16],D_move3[13:8],D_move3[5:0]);
	
	$display(" DR Move Output (32 bits) for SQUARE 3:");
	$display("Captured Piece:%b Final Position:%b Initial Piece:%b Inital Position:%b",DR_move3[29:24],DR_move3[21:16],DR_move3[13:8],DR_move3[5:0]);
	
	
	
	
end

always begin
	#10;
	clk = ~clk;

end

endmodule