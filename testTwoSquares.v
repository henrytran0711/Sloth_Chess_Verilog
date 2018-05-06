module testTwoSquares(

//CLOCK
input clk,
input engineColor,
input[5:0] pieceReg1,
input enable,
input clear,

//Input Reg
input [10:0] U_in1,
input [10:0] D_in1,
input [10:0] L_in1,

input [10:0] UL_in1,
input [10:0] UR_in1,
input [10:0] DL_in1,
input [10:0] DR_in1,
//Input knight
input [7:0] UUL_in1,
input [7:0] UUR_in1,
input [7:0] LLU_in1,
input [7:0] RRU_in1,
input [7:0] DDL_in1,
input [7:0] DDR_in1,
input [7:0] LLD_in1,
input [7:0] RRD_in1,

//Output Non knight
output [10:0] U_out1,
output [10:0] D_out1,
output [10:0] L_out1,

output [10:0] UL_out1,
output [10:0] UR_out1,
output [10:0] DL_out1,
output [10:0] DR_out1,
//Output knight
output [7:0] UUL_out1,
output [7:0] UUR_out1,
output [7:0] LLU_out1,
output [7:0] RRU_out1,
output [7:0] DDL_out1,
output [7:0] DDR_out1,
output [7:0] LLD_out1,
output [7:0] RRD_out1,


//Output Non knight
output reg [31:0] U_move_out1,
output reg [31:0] D_move_out1,
output reg [31:0] L_move_out1,
output reg [31:0] R_move_out1,
output reg [31:0] UL_move_out1,
output reg [31:0] UR_move_out1,
output reg [31:0] DL_move_out1,
output reg [31:0] DR_move_out1,
//Output knight
output reg [31:0] UUL_move_out1,
output reg [31:0] UUR_move_out1,
output reg [31:0] LLU_move_out1,
output reg [31:0] RRU_move_out1,
output reg [31:0] DDL_move_out1,
output reg [31:0] DDR_move_out1,
output reg [31:0] LLD_move_out1,
output reg [31:0] RRD_move_out1,




input[5:0] pieceReg2,

//Input Reg
input [10:0] U_in2,
input [10:0] D_in2,
input [10:0] R_in2,

input [10:0] UL_in2,
input [10:0] UR_in2,
input [10:0] DL_in2,
input [10:0] DR_in2,
//Input knight
input [7:0] UUL_in2,
input [7:0] UUR_in2,
input [7:0] LLU_in2,
input [7:0] RRU_in2,
input [7:0] DDL_in2,
input [7:0] DDR_in2,
input [7:0] LLD_in2,
input [7:0] RRD_in2,

//Output Non knight
output [10:0] U_out2,
output [10:0] D_out2,
output [10:0] R_out2,

output [10:0] UL_out2,
output [10:0] UR_out2,
output [10:0] DL_out2,
output [10:0] DR_out2,
//Output knight
output [7:0] UUL_out2,
output [7:0] UUR_out2,
output [7:0] LLU_out2,
output [7:0] RRU_out2,
output [7:0] DDL_out2,
output [7:0] DDR_out2,
output [7:0] LLD_out2,
output [7:0] RRD_out2,


//Output Non knight
output reg [31:0] U_move_out2,
output reg [31:0] D_move_out2,
output reg [31:0] L_move_out2,
output reg [31:0] R_move_out2,
output reg [31:0] UL_move_out2,
output reg [31:0] UR_move_out2,
output reg [31:0] DL_move_out2,
output reg [31:0] DR_move_out2,
//Output knight
output reg [31:0] UUL_move_out2,
output reg [31:0] UUR_move_out2,
output reg [31:0] LLU_move_out2,
output reg [31:0] RRU_move_out2,
output reg [31:0] DDL_move_out2,
output reg [31:0] DDR_move_out2,
output reg [31:0] LLD_move_out2,
output reg [31:0] RRD_move_out2

);


wire [10:0] transmit_right;
wire [10:0] transmit_left;

square SquareLeft(

clk, engineColor, pieceReg1, enable, clear, 6'd26, //6'b01_1100 

U_in1,D_in1,L_in1,transmit_left,UL_in1,UR_in1,DL_in1,DR_in1, 
UUL_in1,UUR_in1,LLU_in1,RRU_in1,DDL_in1,DDR_in1,LLD_in1,RRD_in1,

U_out1,D_out1,L_out1,transmit_right,UL_out1,UR_out1,DL_out1,DR_out1, 
UUL_out1,UUR_out1,LLU_out1,RRU_out1,DDL_out1,DDR_out1,LLD_out1,RRD_out1,

U_move_out1,D_move_out1,L_move_out1,R_move_out1,UL_move_out1,UR_move_out1,DL_move_out1,DR_move_out1, 
UUL_move_out1,UUR_move_out1,LLU_move_out1,RRU_move_out1,DDL_move_out1,DDR_move_out1,LLD_move_out1,RRD_move_out1



);


square SquareRight(

clk, engineColor, pieceReg2, enable, clear, 6'd27, //6'b01_1101 

U_in2,D_in2,transmit_right,R_in2,UL_in2,UR_in2,DL_in2,DR_in2, 
UUL_in2,UUR_in2,LLU_in2,RRU_in2,DDL_in2,DDR_in2,LLD_in2,RRD_in2,

U_out2,D_out2,transmit_left,R_out2,UL_out2,UR_out2,DL_out2,DR_out2, 
UUL_out2,UUR_out2,LLU_out2,RRU_out2,DDL_out2,DDR_out2,LLD_out2,RRD_out2,

U_move_out2,D_move_out2,L_move_out2,R_move_out2,UL_move_out2,UR_move_out2,DL_move_out2,DR_move_out2, 
UUL_move_out2,UUR_move_out2,LLU_move_out2,RRU_move_out2,DDL_move_out2,DDR_move_out2,LLD_move_out2,RRD_move_out2



);



endmodule