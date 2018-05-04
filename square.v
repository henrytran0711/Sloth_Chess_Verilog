module square(
clk, engineColor, pieceReg, enable, clear, posReg, 

U_in,D_in,L_in,R_in,UL_in,UR_in,DL_in,DR_in, 
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
output [10:0] U_move;
output [10:0] D_move;
output [10:0] L_move;
output [10:0] R_move;
output [10:0] UL_move;
output [10:0] UR_move;
output [10:0] DL_move;
output [10:0] DR_move;
//Output knight
output [7:0] UUL_move;
output [7:0] UUR_move;
output [7:0] LLU_move;
output [7:0] RRU_move;
output [7:0] DDL_move;
output [7:0] DDR_move;
output [7:0] LLD_move;
output [7:0] RRD_move;


wire [5:0] pieceRegOut;



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



endmodule
