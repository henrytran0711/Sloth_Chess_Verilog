module Transmitter (//In
								engine_color, mode, mask, piece_reg,pos_reg, arb_posout
								//Out
								U,D,L,R,UL,UR,DL,DR, 
								UUL,LLU,UUR,RRU,DLL,DDL,RRD,DDR);
input  engine_color;
input [1:0] mode; // 00 Init, 10 Capture, 01 Quiet, 11 Promote
input mask;// To prevent duplications when writting back to mem
input[5:0] piece_reg;
input[5:0] pos_reg;
input[5:0] arb_posout;
//Output
output reg [4:0] U;
output reg [4:0] D;
output reg [4:0] L;
output reg [4:0] R;
output reg [4:0] UL;
output reg [4:0] UR;
output reg [4:0] DL;
output reg [4:0] DR;

output reg [4:0] UUL;
output reg [4:0] UUR;
output reg [4:0] LLU;
output reg [4:0] RRU;
output reg [4:0] DDL;
output reg [4:0] DDR;
output reg [4:0] LLD;
output reg [4:0] RRD;
//Parameters
parameter INIT = 2'b00;
parameter CAPTURE = 2'b10;
parameter QUIET = 2'b01;
parameter PROMOTE = 2'b11;
//Logic
  always @(*) 
    begin
if (in1 > in2)
	out = in1;
	outpos = inpos1;
else if (in2 >= in1)
	out = in2;
	outpos = inpos2;
 	 end
endmodule 

