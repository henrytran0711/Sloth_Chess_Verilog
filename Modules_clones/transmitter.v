module Transmitter (//In
								engine_color, piece_reg,pos_reg,
								//Out
								U,D,L,R,UL,UR,DL,DR, 
								UUL,UUR,LLU,RRU,DDL,DDR,LLD,RRD);
input  engine_color;
input[5:0] piece_reg;
input[5:0] pos_reg;

//Output
output reg [10:0] U;
output reg [10:0] D;
output reg [10:0] L;
output reg [10:0] R;
output reg [10:0] UL;
output reg [10:0] UR;
output reg [10:0] DL;
output reg [10:0] DR;
//Output knight
output reg [7:0] UUL;
output reg [7:0] UUR;
output reg [7:0] LLU;
output reg [7:0] RRU;
output reg [7:0] DDL;
output reg [7:0] DDR;
output reg [7:0] LLD;
output reg [7:0] RRD;
//Parameters
parameter EMPTY = 6'b000000;
parameter SEND_EMPTY = 11'b00000000000;
parameter SEND_EMPTY_KNIGHT = 8'b00000000;
parameter WHITE = 1'b1;
parameter BLACK = 1'b0;

parameter PAWN = 5'b00010;
parameter KNIGHT = 5'b00001;
parameter KING = 5'b00100;
parameter QUEEN = 5'b11000;
parameter ROOK = 5'b10000;
parameter BISHOP = 5'b01000;
//Logic
 always @(*) 
    begin
		if ( piece_reg == EMPTY || piece_reg[5] != engine_color) //If piece reg is empty, no output is sent
			begin
				U = SEND_EMPTY;
				R = SEND_EMPTY;
				L = SEND_EMPTY;
				D = SEND_EMPTY;
				
				UL = SEND_EMPTY;
				UR = SEND_EMPTY;
				DL = SEND_EMPTY;
				DR = SEND_EMPTY;
				//Night
				UUL =SEND_EMPTY_KNIGHT;
				UUR =SEND_EMPTY_KNIGHT;
				DDL =SEND_EMPTY_KNIGHT;
				DDR =SEND_EMPTY_KNIGHT;
				
				LLU = SEND_EMPTY_KNIGHT;
				RRU = SEND_EMPTY_KNIGHT;
				LLD  = SEND_EMPTY_KNIGHT;
				RRD = SEND_EMPTY_KNIGHT;
			end
	else if (engine_color == piece_reg[5])
			begin
				case (piece_reg[4:0])
					PAWN: //Pawn
						if(engine_color == WHITE)
							begin //only goes up
								U = { piece_reg[5:1], pos_reg};
								R = SEND_EMPTY;
								L = SEND_EMPTY;
								D = SEND_EMPTY;

								UL = { piece_reg[5:1], pos_reg};
								UR ={ piece_reg[5:1], pos_reg};
								DL = SEND_EMPTY;
								DR = SEND_EMPTY;
								//Knight
								UUL = SEND_EMPTY_KNIGHT;
								UUR =SEND_EMPTY_KNIGHT;
								DDL =SEND_EMPTY_KNIGHT;
								DDR =SEND_EMPTY_KNIGHT;

								LLU = SEND_EMPTY_KNIGHT;
								RRU =SEND_EMPTY_KNIGHT;
								LLD = SEND_EMPTY_KNIGHT;
								RRD =SEND_EMPTY_KNIGHT;
							end 
						else if(engine_color == BLACK)
							begin //only goes down
								U = SEND_EMPTY;
								R = SEND_EMPTY;
								L = SEND_EMPTY;
								D = { piece_reg[5:1], pos_reg};

								UL = SEND_EMPTY;
								UR = SEND_EMPTY;
								DL =	{piece_reg[5:1], pos_reg};
								DR =	{ piece_reg[5:1], pos_reg};
								//Knight
								UUL = SEND_EMPTY_KNIGHT;
								UUR =SEND_EMPTY_KNIGHT;
								DDL =SEND_EMPTY_KNIGHT;
								DDR =SEND_EMPTY_KNIGHT;

								LLU = SEND_EMPTY_KNIGHT;
								RRU =SEND_EMPTY_KNIGHT;
								LLD = SEND_EMPTY_KNIGHT;
								RRD =SEND_EMPTY_KNIGHT;
						end 
					KNIGHT: //Knight
						//All Non-knight pieces 0
						begin
								U = SEND_EMPTY;
								R = SEND_EMPTY;
								L = SEND_EMPTY;
								D = SEND_EMPTY;

								UL = SEND_EMPTY;
								UR = SEND_EMPTY;
								DL = SEND_EMPTY;
								DR = SEND_EMPTY;
								//Knight
								UUL = { piece_reg[5],piece_reg[0], pos_reg};
								UUR = { piece_reg[5],piece_reg[0], pos_reg};
								DDL = { piece_reg[5],piece_reg[0], pos_reg};
								DDR = { piece_reg[5],piece_reg[0], pos_reg};

								LLU ={ piece_reg[5],piece_reg[0], pos_reg};
								RRU ={ piece_reg[5],piece_reg[0], pos_reg};
								LLD = { piece_reg[5],piece_reg[0], pos_reg};
								RRD = { piece_reg[5],piece_reg[0], pos_reg};
						end		
								
					ROOK: //Rook
						begin
								U = { piece_reg[5:1], pos_reg};
								R = { piece_reg[5:1], pos_reg};
								L = { piece_reg[5:1], pos_reg};
								D = { piece_reg[5:1], pos_reg};

								UL = SEND_EMPTY;
								UR =SEND_EMPTY;
								DL =	SEND_EMPTY;
								DR =	SEND_EMPTY;
								
								//Knight
								
								UUL = SEND_EMPTY_KNIGHT;
								UUR =SEND_EMPTY_KNIGHT;
								DDL =SEND_EMPTY_KNIGHT;
								DDR =SEND_EMPTY_KNIGHT;

								LLU = SEND_EMPTY_KNIGHT;
								RRU =SEND_EMPTY_KNIGHT;
								LLD = SEND_EMPTY_KNIGHT;
								RRD =SEND_EMPTY_KNIGHT;
						
						end
					QUEEN: //Queen
						begin
								U = { piece_reg[5:1], pos_reg};
								R = { piece_reg[5:1], pos_reg};
								L = { piece_reg[5:1], pos_reg};
								D = { piece_reg[5:1], pos_reg};

								UL = { piece_reg[5:1], pos_reg};
								UR ={ piece_reg[5:1], pos_reg};
								DL =	{ piece_reg[5:1], pos_reg};
								DR =	{piece_reg[5:1], pos_reg};
								
								//Knight
								
								UUL = SEND_EMPTY_KNIGHT;
								UUR =SEND_EMPTY_KNIGHT;
								DDL =SEND_EMPTY_KNIGHT;
								DDR =SEND_EMPTY_KNIGHT;

								LLU = SEND_EMPTY_KNIGHT;
								RRU =SEND_EMPTY_KNIGHT;
								LLD = SEND_EMPTY_KNIGHT;
								RRD =SEND_EMPTY_KNIGHT;
							end
					
					BISHOP: //Bishop
						begin
								U = SEND_EMPTY;
								R = SEND_EMPTY;
								L = SEND_EMPTY;
								D = SEND_EMPTY;

								UL = 	{ piece_reg[5:1], pos_reg};
								UR =		{ piece_reg[5:1], pos_reg};
								DL =		{ piece_reg[5:1], pos_reg};
								DR =		{ piece_reg[5:1], pos_reg};
								
								//Knight
								
								UUL = SEND_EMPTY_KNIGHT;
								UUR =SEND_EMPTY_KNIGHT;
								DDL =SEND_EMPTY_KNIGHT;
								DDR =SEND_EMPTY_KNIGHT;

								LLU = SEND_EMPTY_KNIGHT;
								RRU =SEND_EMPTY_KNIGHT;
								LLD = SEND_EMPTY_KNIGHT;
								RRD =SEND_EMPTY_KNIGHT;
								
							end
						KING: //KING
							begin
								U = { piece_reg[5:1], pos_reg};
								R = { piece_reg[5:1], pos_reg};
								L = { piece_reg[5:1], pos_reg};
								D = { piece_reg[5:1], pos_reg};

								UL = 	{ piece_reg[5:1], pos_reg};
								UR =		{ piece_reg[5:1], pos_reg};
								DL =		{ piece_reg[5:1], pos_reg};
								DR =		{ piece_reg[5:1], pos_reg};
								
								//Knight
								
								UUL = SEND_EMPTY_KNIGHT;
								UUR = SEND_EMPTY_KNIGHT;
								DDL = SEND_EMPTY_KNIGHT;
								DDR = SEND_EMPTY_KNIGHT;

								LLU = SEND_EMPTY_KNIGHT;
								RRU = SEND_EMPTY_KNIGHT;
								LLD = SEND_EMPTY_KNIGHT;
								RRD = SEND_EMPTY_KNIGHT;
							end
				endcase
			end
			
			

end
	
	
endmodule 

