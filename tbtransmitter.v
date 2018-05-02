module tb_transmitter;
	reg  color_in;
	reg [5:0] piece_reg_in;
	reg [5:0] pos_reg_in;
	//Output
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

parameter EMPTY = 5'b00000;
parameter SEND_EMPTY = 11'b00000000000;
parameter SEND_EMPTY_KNIGHT = 8'b00000000;
parameter WHITE = 1'b1;
parameter BLACK = 1'b0;

parameter PAWN = 5'b00010;
parameter KNIGHT = 5'b00001;
parameter QUEEN = 5'b11000;
parameter ROOK = 5'b10000;
parameter KING = 5'b00100;
parameter BISHOP = 5'b01000;
	Transmitter Trans (//Inputs
						.engine_color(color_in),
						.piece_reg(piece_reg_in),
						.pos_reg(pos_reg_in),
						//Output
						.U(U_out),
						.D(D_out),
						.L(L_out),
						.R(R_out),
						.UL(UL_out),
						.UR(UR_out),
						.DL(DL_out),
						.DR(DR_out),
						.UUL(UUL_out),
						.UUR(UUR_out),
						.LLU(LLU_out),
						.RRU(RRU_out),
						.DDL(DDL_out),
						.DDR(DDR_out),
						.LLD(LLD_out),
						.RRD(RRD_out)
														);
	initial begin
		color_in = 1'b1;
		piece_reg_in = {1'b1, PAWN};
		pos_reg_in = {6'b000010};
		
	#20
  $display("8 Outputs for non knight are: U:%b D:%b L:%b R:%b UL:%b UR:%b DL:%b DR:%b",U_out,D_out,L_out
  ,R_out,UL_out,UR_out,DL_out,DR_out);
		  
		  
		  end
endmodule