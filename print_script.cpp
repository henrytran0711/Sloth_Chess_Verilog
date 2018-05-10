#include <iostream>
#include <string>
#include <sstream>
#include <fstream>
using namespace std;


const int SIZE = 1000;
const int SQUARES = 64;
int wire_counter = 0;
int knight_wire_counter = 0;
int move_counter = 0;
int i = 0;
string general_dir[SQUARES];
string knight_dir[SQUARES];
string wire[SIZE];
string knight_wire[SIZE];
string move_out[SIZE];
string converted_self;
string converted_temp;
ostringstream temp;
ostringstream self;
 ofstream myfile;

void print_setup (int i){
general_dir[i].append("square Square");
self << i;
converted_self = self.str();

general_dir[i].append(converted_self);
general_dir[i].append("(.clk(clk),.engineColor(engineColor),.enable(enable),.clear(clear),.pieceReg(pieceReg");
general_dir[i].append(converted_self);
general_dir[i].append("),.posReg(6'd");
general_dir[i].append(converted_self);
}

void print_Down_in (int i){
//For Down in
general_dir[i].append("),\n.D_in(transmit");
temp << i - 8;
converted_temp = temp.str();

general_dir[i].append(converted_temp);
general_dir[i].append("_");
general_dir[i].append(converted_self);
//Save wire connection
wire[wire_counter].append("transmit");
wire[wire_counter].append(converted_temp);
wire[wire_counter].append("_");
wire[wire_counter].append(converted_self);
wire_counter++;
temp.str("");
}

void print_Up_in(int i) {//For Up in
general_dir[i].append("),.U_in(transmit");
temp << i + 8;
converted_temp = temp.str();

general_dir[i].append(converted_temp);
general_dir[i].append("_");
general_dir[i].append(converted_self);

//Save wire connection
wire[wire_counter].append("transmit");
wire[wire_counter].append(converted_temp);
wire[wire_counter].append("_");
wire[wire_counter].append(converted_self);
wire_counter++;
temp.str("");
}

void print_Left_in(int i){
//For Left in
 general_dir[i].append("),.L_in(transmit");
temp << i + 1;
converted_temp = temp.str();

general_dir[i].append(converted_temp);
general_dir[i].append("_");
general_dir[i].append(converted_self);

//Save wire connection
wire[wire_counter].append("transmit");
wire[wire_counter].append(converted_temp);
wire[wire_counter].append("_");
wire[wire_counter].append(converted_self);
wire_counter++;
temp.str("");
	
}


void print_Right_in(int i){
 //For Right in
general_dir[i].append("),.R_in(transmit");
temp << i - 1;
converted_temp = temp.str();

general_dir[i].append(converted_temp);
general_dir[i].append("_");
general_dir[i].append(converted_self);
   //Save wire connection
wire[wire_counter].append("transmit");
wire[wire_counter].append(converted_temp);
wire[wire_counter].append("_");
wire[wire_counter].append(converted_self);
wire_counter++;
temp.str("");	
	
}

void print_Down_left_in(int i){
//For Down Left in
general_dir[i].append("),\n.DL_in(transmit");
temp << i - 7;
converted_temp = temp.str();

general_dir[i].append(converted_temp);
general_dir[i].append("_");
general_dir[i].append(converted_self);
//Save wire connection
wire[wire_counter].append("transmit");
wire[wire_counter].append(converted_temp);
wire[wire_counter].append("_");
wire[wire_counter].append(converted_self);
wire_counter++;
temp.str("");	

}
void print_Down_right_in(int i){
//For Down Right in
general_dir[i].append("),.DR_in(transmit");
temp << i - 9;
converted_temp = temp.str();

general_dir[i].append(converted_temp);
general_dir[i].append("_");
general_dir[i].append(converted_self);

//Save wire connection
wire[wire_counter].append("transmit");
wire[wire_counter].append(converted_temp);
wire[wire_counter].append("_");
wire[wire_counter].append(converted_self);
wire_counter++;
temp.str("");	
}

void print_Up_left_in(int i){
 //For Up Left in
 general_dir[i].append("),.UL_in(transmit");
temp << i + 9;
converted_temp = temp.str();

general_dir[i].append(converted_temp);
general_dir[i].append("_");
general_dir[i].append(converted_self);

//Save wire connection
wire[wire_counter].append("transmit");
wire[wire_counter].append(converted_temp);
wire[wire_counter].append("_");
wire[wire_counter].append(converted_self);
wire_counter++;
temp.str("");	
}

void print_Up_right_in(int i){
//For Up Right in
 general_dir[i].append("),.UR_in(transmit");
temp << i + 7;
converted_temp = temp.str();

general_dir[i].append(converted_temp);
general_dir[i].append("_");
general_dir[i].append(converted_self);

//Save wire connection
wire[wire_counter].append("transmit");
wire[wire_counter].append(converted_temp);
wire[wire_counter].append("_");
wire[wire_counter].append(converted_self);
wire_counter++;
temp.str("");

	
}
////////////Out General Directions/////////////////
void print_Down_out(int i){
 //For Down out
			general_dir[i].append("),\n.D_out(transmit");
            temp << i - 8;
            converted_temp = temp.str();

            general_dir[i].append(converted_self);
            general_dir[i].append("_");
            general_dir[i].append(converted_temp);
            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
            wire_counter++;
			temp.str("");
}
void print_Up_out(int i){
			 //For Up out
			 general_dir[i].append("),.U_out(transmit");
            temp << i + 8;
            converted_temp = temp.str();

            general_dir[i].append(converted_self);
            general_dir[i].append("_");
            general_dir[i].append(converted_temp);

            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
            wire_counter++;
			temp.str("");
}
void print_Left_out(int i){
			 //For Left out
			 general_dir[i].append("),.L_out(");
            temp << i + 1;
            converted_temp = temp.str();



            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);

			general_dir[i].append(wire[wire_counter]);

            wire_counter++;
			temp.str("");
}

void print_Right_out(int i){			 
		//For Right out
			 general_dir[i].append("),.R_out(");
            temp << i - 1;
            converted_temp = temp.str();

            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
			 general_dir[i].append(wire[wire_counter]);
            wire_counter++;
			temp.str("");
}
			void print_Down_left_out(int i){
			//For Down Left out
			general_dir[i].append("),\n.DL_out(");
            temp << i - 7;
            converted_temp = temp.str();



            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
			general_dir[i].append(wire[wire_counter]);
            wire_counter++;
			temp.str("");
			}
			
		void print_Down_right_out(int i){	 //For Down Right out
			 general_dir[i].append("),.DR_out(");
            temp << i - 9;
            converted_temp = temp.str();




            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
			general_dir[i].append(wire[wire_counter]);
            wire_counter++;
			temp.str("");
		}

		void print_Up_left_out(int i){
			 //For Up Left out
			general_dir[i].append("),.UL_out(");
            temp << i + 9;
            converted_temp = temp.str();



            //Save wire connection
			wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
			general_dir[i].append(wire[wire_counter]);
            wire_counter++;
			temp.str("");
		}
		
		void print_Up_right_out(int i){
			 //For Up Right out
			 general_dir[i].append("),.UR_out(");
            temp << i + 7;
            converted_temp = temp.str();

            //Save wire connection
			wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
			general_dir[i].append(wire[wire_counter]);
            wire_counter++;
			temp.str("");
		}

//Move out, General Direction///////////////////////
void print_Move_Down_out(int i){
 //For Move Down out//
			general_dir[i].append("),\n.D_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("D_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			move_counter++;
}
void print_Move_Up_out(int i){
			//For Move Up out//
			general_dir[i].append("),.U_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("U_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;
}

void print_Move_Left_out(int i){
			//For Move Left out//
			general_dir[i].append("),.L_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("L_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;
}
void print_Move_Right_out(int i){

			//For Move Right out//
			general_dir[i].append("),.R_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("R_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;

}
void print_Move_Up_left_out(int i){
			//For Move Up Left out//
			general_dir[i].append("),\n.UL_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("UL_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			            move_counter++;
}
void print_Move_Up_right_out(int i){
			//For Move Up Right out//
			general_dir[i].append("),.UR_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("UR_move_out");
            move_out[move_counter].append(converted_self);
          general_dir[i].append(move_out[move_counter]);
			  move_counter++;
}
void print_Move_Down_left_out(int i){

			//For Move Down Left out//
			general_dir[i].append("),.DL_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("DL_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
            move_counter++;
}
void print_Move_Down_right_out(int i){

			//For Move Down Right out//
			general_dir[i].append("),.DR_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("DR_move_out");
            move_out[move_counter].append(converted_self);


			general_dir[i].append(move_out[move_counter]);
			  move_counter++;
}
//Move Knight Out///////////
///////////////////////////////////
void print_move_knight_UUL_out(int i){
 //For Up Up Left out//
general_dir[i].append("),\n.UUL_move_out(");


//Save Move_out connection
move_out[move_counter].append("UUL_move_out");
move_out[move_counter].append(converted_self);
general_dir[i].append(move_out[move_counter]);
move_counter++;
}
void print_move_knight_UUR_out(int i){
//For Up Up Right out//
general_dir[i].append("),.UUR_move_out(");



//Save Move_out connection
move_out[move_counter].append("UUR_move_out");
move_out[move_counter].append(converted_self);
general_dir[i].append(move_out[move_counter]);
 move_counter++;
}
void print_move_knight_LLU_out(int i){
//For Left Left Up move out//
general_dir[i].append("),.LLU_move_out(");




//Save Move_out connection
move_out[move_counter].append("LLU_move_out");
move_out[move_counter].append(converted_self);
general_dir[i].append(move_out[move_counter]);
 move_counter++;
}
void print_move_knight_RRU_out(int i){
//For Move Right Right Up out//
general_dir[i].append("),.RRU_move_out(");



//Save Move_out connection
move_out[move_counter].append("RRU_move_out");
move_out[move_counter].append(converted_self);
general_dir[i].append(move_out[move_counter]);
 move_counter++;
}

void print_move_knight_DDL_out(int i){
//For Move Down Down Left out//
general_dir[i].append("),\n.DDL_move_out(");




//Save Move_out connection
move_out[move_counter].append("DDL_move_out");
move_out[move_counter].append(converted_self);
general_dir[i].append(move_out[move_counter]);
			move_counter++;
}

void print_move_knight_DDR_out(int i){
//For Move Down Down Right out//
general_dir[i].append("),.DDR_move_out(");




//Save Move_out connection
move_out[move_counter].append("DDR_move_out");
move_out[move_counter].append(converted_self);
general_dir[i].append(move_out[move_counter]);
  move_counter++;
}

void print_move_knight_LLD_out(int i){
//For Move Left Left Down out//
general_dir[i].append("),.LLD_move_out(");




//Save Move_out connection
move_out[move_counter].append("LLD_move_out");
move_out[move_counter].append(converted_self);
general_dir[i].append(move_out[move_counter]);
move_counter++;
}

void print_move_knight_RRD_out(int i){
//For Move Right Right Down out//
general_dir[i].append("),.RRD_move_out(");



//Save Move_out connection
move_out[move_counter].append("RRD_move_out");
move_out[move_counter].append(converted_self);


general_dir[i].append(move_out[move_counter]);
 move_counter++;
}

//////////////Print Knight In/////////////////

void print_knight_UUL_in(int i){
//For Up Up Left in
			knight_dir[i].append("),\n.UUL_in(transmit");
            temp << i + 8 + 8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");
}
void print_knight_UUR_in(int i){
			 //For Up Up Right in
			 knight_dir[i].append("),.UUR_in(transmit");
            temp << i + 8 + 8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");
}
void print_knight_LLU_in(int i){
			 //For Left Left Up in
			 knight_dir[i].append("),.LLU_in(transmit");
            temp << i + 1 + 1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");
}

void print_knight_RRU_in(int i){
			 //For Right Right Up in
			 knight_dir[i].append("),.RRU_in(transmit");
            temp << i - 1 -1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
			   //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");
}

void print_knight_DDL_in(int i){
			//For Down Down Left in
			knight_dir[i].append("),\n.DDL_in(transmit");
            temp << i - 8 -8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");
}

void print_knight_DDR_in(int i){
			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_in(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");
}

void print_knight_LLD_in(int i){
			 //For  Left Left Down in
			 knight_dir[i].append("),.LLD_in(transmit");
            temp << i + 1 +1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");
}

void print_knight_RRD_in(int i){
			 //For Right Right Down
			 knight_dir[i].append("),.RRD_in(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

}

////Print Knight Out///////////////////////////
void print_knight_UUL_out(int i){
			//For Up Up Left Out
			knight_dir[i].append("),\n.UUL_out(transmit");
            temp << i + 8 + 8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");
}
void print_knight_UUR_out(int i){
			 //For Up Up Right out
			 knight_dir[i].append("),.UUR_out(transmit");
            temp << i + 8 + 8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");
}
void print_knight_LLU_out(int i){
			 //For Left Left Up Out
			 knight_dir[i].append("),.LLU_out(transmit");
            temp << i + 1 + 1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");
}
void print_knight_RRU_out(int i){
			 //For Right Right Up in
			 knight_dir[i].append("),.RRU_out(transmit");
            temp << i - 1 -1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
			   //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");
}

void print_knight_DDL_out(int i){
			//For Down Down Left in
			knight_dir[i].append("),\n.DDL_out(transmit");
            temp << i - 8 -8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");
}

void print_knight_DDR_out(int i){
			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_out(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");
}
void print_knight_LLD_out(int i){
			 //For  Left Left Down out
			 knight_dir[i].append("),.LLD_out(transmit");
            temp << i + 1 +1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");
}
void print_knight_RRD_out(int i){
			 //For Right Right Down Out
			 knight_dir[i].append("),.RRD_out(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");
}

int main()
{
   
    myfile.open ("output.txt");

        for (int i = 0; i < SQUARES; i++){
            general_dir[i] = "";
            knight_dir[i] = "";
        }
	int Down_in = 0;
	int Up_in = 0;
	int Left_in = 0;
	int Right_in = 0;
	int Down_left_in = 0;
	int Down_right_in = 0;
	int Up_left_in = 0;
	int Up_right_in = 0;
	
	int Down_out = 0;
	int Up_out = 0;
	int Left_out= 0;
	int Right_out = 0;
	int Down_left_out = 0;
	int Down_right_out = 0;
	int Up_left_out = 0;
	int Up_right_out = 0;
	
	
	int Move_Down_out = 0;
	int Move_Up_out = 0;
	int Move_Left_out= 0;
	int Move_Right_out = 0;
	int Move_Down_left_out = 0;
	int Move_Down_right_out = 0;
	int Move_Up_left_out = 0;
	int Move_Up_right_out = 0;
	
	int move_knight_UUL_out = 0;
	int move_knight_UUR_out = 0;
	int move_knight_LLU_out = 0;
	int move_knight_RRU_out = 0;
	int move_knight_DDL_out = 0;
	int move_knight_DDR_out = 0;
	int move_knight_LLD_out = 0;
	int move_knight_RRD_out = 0;
	
	int	knight_UUL_out = 0;
	int knight_UUR_out = 0;
	int knight_LLU_out = 0;
	int knight_RRU_out = 0;
	int knight_DDL_out = 0;
	int knight_DDR_out = 0;
	int  knight_LLD_out = 0;
	int  knight_RRD_out = 0;
	 
	int knight_UUL_in = 0;
	int knight_UUR_in = 0;
	int knight_LLU_in = 0;
	int knight_RRU_in = 0;
	int knight_DDL_in = 0;
	int knight_DDR_in = 0;
	int knight_LLD_in = 0;
	int knight_RRD_in = 0;	
	 
	
	//////////////General Direction, Group 1/////////
	//In//
	Down_in = 1;
	Up_in = 1;
	Left_in = 1;
	Right_in = 1;
	
	Down_left_in = 1;
	Down_right_in = 1;
	Up_left_in = 1;
	Up_right_in = 1;
	//Out//
	Down_out = 1;
	Up_out = 1;
	Left_out = 1;
	Right_out = 1;
	
	Down_left_out = 1;
	Down_right_out = 1;
	Up_left_out = 1;
	Up_right_out = 1;
	//Move out//
	Move_Down_out = 1;
	Move_Up_out = 1;
	Move_Left_out = 1;
	Move_Right_out = 1;
	
	Move_Down_left_out = 1;
	Move_Down_right_out = 1;
	Move_Up_left_out = 1;
	Move_Up_right_out = 1;
	
	for (int j = 9 ; j < 50 ; j = j+8){
        for (int k = 0; k < 6; k++){ //For Group 9-> 14 till  49->54
			i = k + j;
			
			print_setup (i);

			//Print Down in
			if(Down_in)
			print_Down_in(i);

			//Print Up in
			if(Up_in)
			print_Up_in(i);

			//Print Left in
			if(Left_in)
			print_Left_in(i);

			//Print Right in
			if(Right_in)
			print_Right_in(i);

			//Print Down Left in
			if(Down_left_in)
			print_Down_left_in(i);	
			
			//Print Down Right in
			if(Down_right_in)
			print_Down_right_in(i);	
			
			//Print Up Left in
			if(Up_left_in)
			print_Up_left_in(i);	
			
			//Print Up Right in
			if(Up_right_in)
			print_Up_right_in(i);	
		
			

		

////////////////For Out/////////////////////////////////

				//Print Down out
			if(Down_out)
			print_Down_out(i);

			//Print Up out
			if(Up_out)
			print_Up_out(i);

			//Print Left out
			if(Left_out)
			print_Left_out(i);

			//Print Right out
			if(Right_out)
			print_Right_out(i);

			//Print Down Left out
			if(Down_left_out)
			print_Down_left_out(i);	
			
			//Print Down Right out
			if(Down_right_out)
			print_Down_right_out(i);	
			
			//Print Up Left out
			if(Up_left_out)
			print_Up_left_out(i);	
			
			//Print Up Right out
			if(Up_right_out)
			print_Up_right_out(i);	
		   

			////////////////For Move Out/////////////////////////////////
		   

			//Print Move Down out
			if(Move_Down_out)
			print_Move_Down_out(i);

			//Print Move  Up out
			if(Move_Up_out)
			print_Move_Up_out(i);

			//Print Move  Left out
			if(Move_Left_out)
			print_Move_Left_out(i);

			//Print Move  Right out
			if(Move_Right_out)
			print_Move_Right_out(i);

			//Print Move  Down Left out
			if(Move_Down_left_out)
			print_Move_Down_left_out(i);	
			
			//Print Move  Down Right out
			if(Move_Down_right_out)
			print_Move_Down_right_out(i);	
			
			//Print Move  Up Left out
			if(Move_Up_left_out)
			print_Move_Up_left_out(i);	
			
			//Print Move  Up Right out
			if(Move_Up_right_out)
			print_Move_Up_right_out(i);	



            self.str("");
            temp.str("");


            }

	}
	i = 0;
////////Square 63 General Directions/////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
//In//
	Down_in = 1;
	Up_in = 0;
	Left_in = 0;
	Right_in = 1;
	
	Down_left_in = 0;
	Down_right_in = 1;
	Up_left_in = 0;
	Up_right_in = 0;
	//Out//
	Down_out = 1;
	Up_out = 0;
	Left_out = 0;
	Right_out = 1;
	
	Down_left_out = 0;
	Down_right_out = 1;
	Up_left_out = 0;
	Up_right_out = 0;
	//Move out//
	Move_Down_out = 1;
	Move_Up_out = 0;
	Move_Left_out = 0;
	Move_Right_out = 1;
	
	Move_Down_left_out = 0;
	Move_Down_right_out = 1;
	Move_Up_left_out = 0;
	Move_Up_right_out = 0;
	
	for (int j = 63 ; j < 64 ; j++){
        for (int k = 0; k < 1; k++){ //For Group 63
			i = k + j;
			
			print_setup (i);

			//Print Down in
			if(Down_in)
			print_Down_in(i);

			//Print Up in
			if(Up_in)
			print_Up_in(i);

			//Print Left in
			if(Left_in)
			print_Left_in(i);

			//Print Right in
			if(Right_in)
			print_Right_in(i);

			//Print Down Left in
			if(Down_left_in)
			print_Down_left_in(i);	
			
			//Print Down Right in
			if(Down_right_in)
			print_Down_right_in(i);	
			
			//Print Up Left in
			if(Up_left_in)
			print_Up_left_in(i);	
			
			//Print Up Right in
			if(Up_right_in)
			print_Up_right_in(i);	
		
			

		

////////////////For Out/////////////////////////////////

				//Print Down out
			if(Down_out)
			print_Down_out(i);

			//Print Up out
			if(Up_out)
			print_Up_out(i);

			//Print Left out
			if(Left_out)
			print_Left_out(i);

			//Print Right out
			if(Right_out)
			print_Right_out(i);

			//Print Down Left out
			if(Down_left_out)
			print_Down_left_out(i);	
			
			//Print Down Right out
			if(Down_right_out)
			print_Down_right_out(i);	
			
			//Print Up Left out
			if(Up_left_out)
			print_Up_left_out(i);	
			
			//Print Up Right out
			if(Up_right_out)
			print_Up_right_out(i);	
		   

			////////////////For Move Out/////////////////////////////////
		   

			//Print Move Down out
			if(Move_Down_out)
			print_Move_Down_out(i);

			//Print Move  Up out
			if(Move_Up_out)
			print_Move_Up_out(i);

			//Print Move  Left out
			if(Move_Left_out)
			print_Move_Left_out(i);

			//Print Move  Right out
			if(Move_Right_out)
			print_Move_Right_out(i);

			//Print Move  Down Left out
			if(Move_Down_left_out)
			print_Move_Down_left_out(i);	
			
			//Print Move  Down Right out
			if(Move_Down_right_out)
			print_Move_Down_right_out(i);	
			
			//Print Move  Up Left out
			if(Move_Up_left_out)
			print_Move_Up_left_out(i);	
			
			//Print Move  Up Right out
			if(Move_Up_right_out)
			print_Move_Up_right_out(i);	



            self.str("");
            temp.str("");


            }

	}
	i = 0;
/////////////////////////General Direction, Square 56///////////////
//In//
	Down_in = 1;
	Up_in = 0;
	Left_in = 1;
	Right_in = 0;
	
	Down_left_in = 1;
	Down_right_in = 0;
	Up_left_in = 0;
	Up_right_in = 0;
	//Out//
	Down_out = 1;
	Up_out = 0;
	Left_out = 1;
	Right_out = 0;
	
	Down_left_out = 1;
	Down_right_out = 0;
	Up_left_out = 0;
	Up_right_out = 0;
	//Move out//
	Move_Down_out = 1;
	Move_Up_out = 0;
	Move_Left_out = 1;
	Move_Right_out = 0;
	
	Move_Down_left_out = 1;
	Move_Down_right_out = 0;
	Move_Up_left_out = 0;
	Move_Up_right_out = 0;
	
	for (int j = 56 ; j < 57 ; j++){
        for (int k = 0; k < 1; k++){ //For Square 56
			i = k + j;
			
			print_setup (i);

			//Print Down in
			if(Down_in)
			print_Down_in(i);

			//Print Up in
			if(Up_in)
			print_Up_in(i);

			//Print Left in
			if(Left_in)
			print_Left_in(i);

			//Print Right in
			if(Right_in)
			print_Right_in(i);

			//Print Down Left in
			if(Down_left_in)
			print_Down_left_in(i);	
			
			//Print Down Right in
			if(Down_right_in)
			print_Down_right_in(i);	
			
			//Print Up Left in
			if(Up_left_in)
			print_Up_left_in(i);	
			
			//Print Up Right in
			if(Up_right_in)
			print_Up_right_in(i);	
		
			

		

////////////////For Out/////////////////////////////////

				//Print Down out
			if(Down_out)
			print_Down_out(i);

			//Print Up out
			if(Up_out)
			print_Up_out(i);

			//Print Left out
			if(Left_out)
			print_Left_out(i);

			//Print Right out
			if(Right_out)
			print_Right_out(i);

			//Print Down Left out
			if(Down_left_out)
			print_Down_left_out(i);	
			
			//Print Down Right out
			if(Down_right_out)
			print_Down_right_out(i);	
			
			//Print Up Left out
			if(Up_left_out)
			print_Up_left_out(i);	
			
			//Print Up Right out
			if(Up_right_out)
			print_Up_right_out(i);	
		   

			////////////////For Move Out/////////////////////////////////
		   

			//Print Move Down out
			if(Move_Down_out)
			print_Move_Down_out(i);

			//Print Move  Up out
			if(Move_Up_out)
			print_Move_Up_out(i);

			//Print Move  Left out
			if(Move_Left_out)
			print_Move_Left_out(i);

			//Print Move  Right out
			if(Move_Right_out)
			print_Move_Right_out(i);

			//Print Move  Down Left out
			if(Move_Down_left_out)
			print_Move_Down_left_out(i);	
			
			//Print Move  Down Right out
			if(Move_Down_right_out)
			print_Move_Down_right_out(i);	
			
			//Print Move  Up Left out
			if(Move_Up_left_out)
			print_Move_Up_left_out(i);	
			
			//Print Move  Up Right out
			if(Move_Up_right_out)
			print_Move_Up_right_out(i);	



            self.str("");
            temp.str("");


            }

	}
	i = 0;
////////////////////////Square 0, General Direction//////////////
//In//
	Down_in = 0;
	Up_in = 1;
	Left_in = 1;
	Right_in = 0;
	
	Down_left_in = 0;
	Down_right_in = 0;
	Up_left_in = 1;
	Up_right_in = 0;
	//Out//
	Down_out = 0;
	Up_out = 1;
	Left_out = 1;
	Right_out = 0;
	
	Down_left_out = 0;
	Down_right_out = 0;
	Up_left_out = 1;
	Up_right_out = 0;
	//Move out//
	Move_Down_out = 0;
	Move_Up_out = 1;
	Move_Left_out = 1;
	Move_Right_out = 0;
	
	Move_Down_left_out = 0;
	Move_Down_right_out = 0;
	Move_Up_left_out = 1;
	Move_Up_right_out = 0;
	
	for (int j = 0 ; j < 1 ; j++){
        for (int k = 0; k < 1; k++){ //For Square 0
			i = k + j;
			
			print_setup (i);

			//Print Down in
			if(Down_in)
			print_Down_in(i);

			//Print Up in
			if(Up_in)
			print_Up_in(i);

			//Print Left in
			if(Left_in)
			print_Left_in(i);

			//Print Right in
			if(Right_in)
			print_Right_in(i);

			//Print Down Left in
			if(Down_left_in)
			print_Down_left_in(i);	
			
			//Print Down Right in
			if(Down_right_in)
			print_Down_right_in(i);	
			
			//Print Up Left in
			if(Up_left_in)
			print_Up_left_in(i);	
			
			//Print Up Right in
			if(Up_right_in)
			print_Up_right_in(i);	
		
			

		

////////////////For Out/////////////////////////////////

				//Print Down out
			if(Down_out)
			print_Down_out(i);

			//Print Up out
			if(Up_out)
			print_Up_out(i);

			//Print Left out
			if(Left_out)
			print_Left_out(i);

			//Print Right out
			if(Right_out)
			print_Right_out(i);

			//Print Down Left out
			if(Down_left_out)
			print_Down_left_out(i);	
			
			//Print Down Right out
			if(Down_right_out)
			print_Down_right_out(i);	
			
			//Print Up Left out
			if(Up_left_out)
			print_Up_left_out(i);	
			
			//Print Up Right out
			if(Up_right_out)
			print_Up_right_out(i);	
		   

			////////////////For Move Out/////////////////////////////////
		   

			//Print Move Down out
			if(Move_Down_out)
			print_Move_Down_out(i);

			//Print Move  Up out
			if(Move_Up_out)
			print_Move_Up_out(i);

			//Print Move  Left out
			if(Move_Left_out)
			print_Move_Left_out(i);

			//Print Move  Right out
			if(Move_Right_out)
			print_Move_Right_out(i);

			//Print Move  Down Left out
			if(Move_Down_left_out)
			print_Move_Down_left_out(i);	
			
			//Print Move  Down Right out
			if(Move_Down_right_out)
			print_Move_Down_right_out(i);	
			
			//Print Move  Up Left out
			if(Move_Up_left_out)
			print_Move_Up_left_out(i);	
			
			//Print Move  Up Right out
			if(Move_Up_right_out)
			print_Move_Up_right_out(i);	



            self.str("");
            temp.str("");


            }

	}
	i = 0;
///////////////////////General Direction Square 7////////////
//In//
	Down_in = 0;
	Up_in = 1;
	Left_in = 0;
	Right_in = 1;
	
	Down_left_in = 0;
	Down_right_in = 0;
	Up_left_in = 0;
	Up_right_in = 1;
	//Out//
	Down_out = 0;
	Up_out = 1;
	Left_out = 0;
	Right_out = 1;
	
	Down_left_out = 0;
	Down_right_out = 0;
	Up_left_out = 0;
	Up_right_out = 1;
	//Move out//
	Move_Down_out = 0;
	Move_Up_out = 1;
	Move_Left_out = 0;
	Move_Right_out = 1;
	
	Move_Down_left_out = 0;
	Move_Down_right_out = 0;
	Move_Up_left_out = 0;
	Move_Up_right_out = 1;
	
	for (int j = 7; j < 8 ; j++){
        for (int k = 0; k < 1; k++){ //For Group 63
			i = k + j;
			
			print_setup (i);

			//Print Down in
			if(Down_in)
			print_Down_in(i);

			//Print Up in
			if(Up_in)
			print_Up_in(i);

			//Print Left in
			if(Left_in)
			print_Left_in(i);

			//Print Right in
			if(Right_in)
			print_Right_in(i);

			//Print Down Left in
			if(Down_left_in)
			print_Down_left_in(i);	
			
			//Print Down Right in
			if(Down_right_in)
			print_Down_right_in(i);	
			
			//Print Up Left in
			if(Up_left_in)
			print_Up_left_in(i);	
			
			//Print Up Right in
			if(Up_right_in)
			print_Up_right_in(i);	
		
			

		

////////////////For Out/////////////////////////////////

				//Print Down out
			if(Down_out)
			print_Down_out(i);

			//Print Up out
			if(Up_out)
			print_Up_out(i);

			//Print Left out
			if(Left_out)
			print_Left_out(i);

			//Print Right out
			if(Right_out)
			print_Right_out(i);

			//Print Down Left out
			if(Down_left_out)
			print_Down_left_out(i);	
			
			//Print Down Right out
			if(Down_right_out)
			print_Down_right_out(i);	
			
			//Print Up Left out
			if(Up_left_out)
			print_Up_left_out(i);	
			
			//Print Up Right out
			if(Up_right_out)
			print_Up_right_out(i);	
		   

			////////////////For Move Out/////////////////////////////////
		   

			//Print Move Down out
			if(Move_Down_out)
			print_Move_Down_out(i);

			//Print Move  Up out
			if(Move_Up_out)
			print_Move_Up_out(i);

			//Print Move  Left out
			if(Move_Left_out)
			print_Move_Left_out(i);

			//Print Move  Right out
			if(Move_Right_out)
			print_Move_Right_out(i);

			//Print Move  Down Left out
			if(Move_Down_left_out)
			print_Move_Down_left_out(i);	
			
			//Print Move  Down Right out
			if(Move_Down_right_out)
			print_Move_Down_right_out(i);	
			
			//Print Move  Up Left out
			if(Move_Up_left_out)
			print_Move_Up_left_out(i);	
			
			//Print Move  Up Right out
			if(Move_Up_right_out)
			print_Move_Up_right_out(i);	



            self.str("");
            temp.str("");


            }

	}
	i = 0;
/////////////////////////General Direction South, Group 2///////////
	//In//
	Down_in = 0;
	Up_in = 1;
	Left_in = 1;
	Right_in = 1;
	
	Down_left_in = 0;
	Down_right_in = 0;
	Up_left_in = 1;
	Up_right_in = 1;
	//Out//
	Down_out = 0;
	Up_out = 1;
	Left_out = 1;
	Right_out = 1;
	
	Down_left_out = 0;
	Down_right_out = 0;
	Up_left_out = 1;
	Up_right_out = 1;
	//Move out//
	Move_Down_out = 0;
	Move_Up_out = 1;
	Move_Left_out = 1;
	Move_Right_out = 1;
	
	Move_Down_left_out = 0;
	Move_Down_right_out = 0;
	Move_Up_left_out = 1;
	Move_Up_right_out = 1;
	
	for (int j = 1 ; j < 7 ; j++){
        for (int k = 0; k < 1; k++){ //For Group 9-> 14 till  49->54
			i = k + j;
			
			print_setup (i);

			//Print Down in
			if(Down_in)
			print_Down_in(i);

			//Print Up in
			if(Up_in)
			print_Up_in(i);

			//Print Left in
			if(Left_in)
			print_Left_in(i);

			//Print Right in
			if(Right_in)
			print_Right_in(i);

			//Print Down Left in
			if(Down_left_in)
			print_Down_left_in(i);	
			
			//Print Down Right in
			if(Down_right_in)
			print_Down_right_in(i);	
			
			//Print Up Left in
			if(Up_left_in)
			print_Up_left_in(i);	
			
			//Print Up Right in
			if(Up_right_in)
			print_Up_right_in(i);	
		
			

		

////////////////For Out/////////////////////////////////

				//Print Down out
			if(Down_out)
			print_Down_out(i);

			//Print Up out
			if(Up_out)
			print_Up_out(i);

			//Print Left out
			if(Left_out)
			print_Left_out(i);

			//Print Right out
			if(Right_out)
			print_Right_out(i);

			//Print Down Left out
			if(Down_left_out)
			print_Down_left_out(i);	
			
			//Print Down Right out
			if(Down_right_out)
			print_Down_right_out(i);	
			
			//Print Up Left out
			if(Up_left_out)
			print_Up_left_out(i);	
			
			//Print Up Right out
			if(Up_right_out)
			print_Up_right_out(i);	
		   

			////////////////For Move Out/////////////////////////////////
		   

			//Print Move Down out
			if(Move_Down_out)
			print_Move_Down_out(i);

			//Print Move  Up out
			if(Move_Up_out)
			print_Move_Up_out(i);

			//Print Move  Left out
			if(Move_Left_out)
			print_Move_Left_out(i);

			//Print Move  Right out
			if(Move_Right_out)
			print_Move_Right_out(i);

			//Print Move  Down Left out
			if(Move_Down_left_out)
			print_Move_Down_left_out(i);	
			
			//Print Move  Down Right out
			if(Move_Down_right_out)
			print_Move_Down_right_out(i);	
			
			//Print Move  Up Left out
			if(Move_Up_left_out)
			print_Move_Up_left_out(i);	
			
			//Print Move  Up Right out
			if(Move_Up_right_out)
			print_Move_Up_right_out(i);	



            self.str("");
            temp.str("");


            }

	}
	i = 0;
//////General Direction Group 2 East ///////////////////////
	//In//
	Down_in = 1;
	Up_in = 1;
	Left_in = 1;
	Right_in = 0;
	
	Down_left_in = 1;
	Down_right_in = 0;
	Up_left_in = 1;
	Up_right_in = 0;
	//Out//
	Down_out = 1;
	Up_out = 1;
	Left_out = 1;
	Right_out = 0;
	
	Down_left_out = 1;
	Down_right_out = 0;
	Up_left_out = 1;
	Up_right_out = 0;
	//Move out//
	Move_Down_out = 1;
	Move_Up_out = 1;
	Move_Left_out = 1;
	Move_Right_out = 0;
	
	Move_Down_left_out = 1;
	Move_Down_right_out = 0;
	Move_Up_left_out = 1;
	Move_Up_right_out = 0;
	
	for (int j = 16 ; j < 41 ; j = j+8){
        for (int k = 0; k < 1; k++){ //16 24 32 40
			i = k + j;
			
			print_setup (i);

			//Print Down in
			if(Down_in)
			print_Down_in(i);

			//Print Up in
			if(Up_in)
			print_Up_in(i);

			//Print Left in
			if(Left_in)
			print_Left_in(i);

			//Print Right in
			if(Right_in)
			print_Right_in(i);

			//Print Down Left in
			if(Down_left_in)
			print_Down_left_in(i);	
			
			//Print Down Right in
			if(Down_right_in)
			print_Down_right_in(i);	
			
			//Print Up Left in
			if(Up_left_in)
			print_Up_left_in(i);	
			
			//Print Up Right in
			if(Up_right_in)
			print_Up_right_in(i);	
		
			

		

////////////////For Out/////////////////////////////////

				//Print Down out
			if(Down_out)
			print_Down_out(i);

			//Print Up out
			if(Up_out)
			print_Up_out(i);

			//Print Left out
			if(Left_out)
			print_Left_out(i);

			//Print Right out
			if(Right_out)
			print_Right_out(i);

			//Print Down Left out
			if(Down_left_out)
			print_Down_left_out(i);	
			
			//Print Down Right out
			if(Down_right_out)
			print_Down_right_out(i);	
			
			//Print Up Left out
			if(Up_left_out)
			print_Up_left_out(i);	
			
			//Print Up Right out
			if(Up_right_out)
			print_Up_right_out(i);	
		   

			////////////////For Move Out/////////////////////////////////
		   

			//Print Move Down out
			if(Move_Down_out)
			print_Move_Down_out(i);

			//Print Move  Up out
			if(Move_Up_out)
			print_Move_Up_out(i);

			//Print Move  Left out
			if(Move_Left_out)
			print_Move_Left_out(i);

			//Print Move  Right out
			if(Move_Right_out)
			print_Move_Right_out(i);

			//Print Move  Down Left out
			if(Move_Down_left_out)
			print_Move_Down_left_out(i);	
			
			//Print Move  Down Right out
			if(Move_Down_right_out)
			print_Move_Down_right_out(i);	
			
			//Print Move  Up Left out
			if(Move_Up_left_out)
			print_Move_Up_left_out(i);	
			
			//Print Move  Up Right out
			if(Move_Up_right_out)
			print_Move_Up_right_out(i);	



            self.str("");
            temp.str("");


            }

	}//Group 2 General DIrection East
	i = 0;


//////////////General Direction West, Group 2/////////
	for (int j = 15 ; j < 56 ; j = j+8){
        for (int k = 0; k < 1; k++){ //For Left Most Squares 15->55
			i = k + j;
            general_dir[i].append("square Square");
            self << i;
            converted_self = self.str();
// Group 2 West wont have L,UL,DL
            general_dir[i].append(converted_self);
            general_dir[i].append("(.clk(clk),.engineColor(engineColor),.enable(enable),.clear(clear),.pieceReg(pieceReg");
            general_dir[i].append(converted_self);
            general_dir[i].append("),.posReg(6'd");
            general_dir[i].append(converted_self);


            //For Down in
			general_dir[i].append("),\n.D_in(transmit");
            temp << i - 8;
            converted_temp = temp.str();

            general_dir[i].append(converted_temp);
            general_dir[i].append("_");
            general_dir[i].append(converted_self);
            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");

			 //For Up in
			 general_dir[i].append("),.U_in(transmit");
            temp << i + 8;
            converted_temp = temp.str();

            general_dir[i].append(converted_temp);
            general_dir[i].append("_");
            general_dir[i].append(converted_self);

            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");

			 //For Right in
			 general_dir[i].append("),.R_in(transmit");
            temp << i - 1;
            converted_temp = temp.str();

            general_dir[i].append(converted_temp);
            general_dir[i].append("_");
            general_dir[i].append(converted_self);
			   //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");
            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");

			 //For Down Right in
			 general_dir[i].append("),.DR_in(transmit");
            temp << i - 9;
            converted_temp = temp.str();

            general_dir[i].append(converted_temp);
            general_dir[i].append("_");
            general_dir[i].append(converted_self);

            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");

		

            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");

			 //For Up Right in
			 general_dir[i].append("),.UR_in(transmit");
            temp << i + 7;
            converted_temp = temp.str();

            general_dir[i].append(converted_temp);
            general_dir[i].append("_");
            general_dir[i].append(converted_self);

            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");


////////////////For Out/////////////////////////////////
		    //For Down out
			general_dir[i].append("),\n.D_out(transmit");
            temp << i - 8;
            converted_temp = temp.str();

            general_dir[i].append(converted_self);
            general_dir[i].append("_");
            general_dir[i].append(converted_temp);
            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
            wire_counter++;
			temp.str("");

			 //For Up out
			 general_dir[i].append("),.U_out(transmit");
            temp << i + 8;
            converted_temp = temp.str();

            general_dir[i].append(converted_self);
            general_dir[i].append("_");
            general_dir[i].append(converted_temp);

            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
            wire_counter++;
			temp.str("");

		

			 //For Right out
			 general_dir[i].append("),.R_out(");
            temp << i - 1;
            converted_temp = temp.str();

            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
			 general_dir[i].append(wire[wire_counter]);
            wire_counter++;
			temp.str("");

			 //For Down Right out
			 general_dir[i].append("),.DR_out(");
            temp << i - 9;
            converted_temp = temp.str();




            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
			general_dir[i].append(wire[wire_counter]);
            wire_counter++;
			temp.str("");

			 //For Up Right out
			 general_dir[i].append("),.UR_out(");
            temp << i + 7;
            converted_temp = temp.str();

            //Save wire connection
			wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
			general_dir[i].append(wire[wire_counter]);
            wire_counter++;
			temp.str("");

			////////////////For Move Out/////////////////////////////////
		    //For Move Down out//
			general_dir[i].append("),\n.D_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("D_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			move_counter++;


			//For Move Up out//
			general_dir[i].append("),.U_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("U_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;

			

			//For Move Right out//
			general_dir[i].append("),.R_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("R_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;


		

			//For Move Up Right out//
			general_dir[i].append("),.UR_move_out(");

            //Save Move_out connection
            move_out[move_counter].append("UR_move_out");
            move_out[move_counter].append(converted_self);
          general_dir[i].append(move_out[move_counter]);
			  move_counter++;

			//For Move Down Right out//
			general_dir[i].append("),.DR_move_out(");

		//Save Move_out connection
            move_out[move_counter].append("DR_move_out");
            move_out[move_counter].append(converted_self);


			general_dir[i].append(move_out[move_counter]);
			  move_counter++;

			self.str("");
            temp.str("");


            }

	}//General Direction West Group 2
	i = 0;
	

	//////////////General Direction North, Group 2/////////
	for (int j = 57 ; j < 63 ;  j++){
        for (int k = 0; k < 1; k++){ //For Group 57-> 62
			i = k + j;
            general_dir[i].append("square Square");
            self << i;
            converted_self = self.str();

            general_dir[i].append(converted_self);
            general_dir[i].append("(.clk(clk),.engineColor(engineColor),.enable(enable),.clear(clear),.pieceReg(pieceReg");
            general_dir[i].append(converted_self);
            general_dir[i].append("),.posReg(6'd");
            general_dir[i].append(converted_self);
//General Intended Discription:
  // No U, UL, UR in out
  // No U, UL,UR move

            //For Down in
			general_dir[i].append("),\n.D_in(transmit");
            temp << i - 8;
            converted_temp = temp.str();

            general_dir[i].append(converted_temp);
            general_dir[i].append("_");
            general_dir[i].append(converted_self);
            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");

			

			 //For Left in
			 general_dir[i].append("),.L_in(transmit");
            temp << i + 1;
            converted_temp = temp.str();

            general_dir[i].append(converted_temp);
            general_dir[i].append("_");
            general_dir[i].append(converted_self);

            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");

			 //For Right in
			 general_dir[i].append("),.R_in(transmit");
            temp << i - 1;
            converted_temp = temp.str();

            general_dir[i].append(converted_temp);
            general_dir[i].append("_");
            general_dir[i].append(converted_self);
			   //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");

			//For Down Left in
			general_dir[i].append("),\n.DL_in(transmit");
            temp << i - 7;
            converted_temp = temp.str();

            general_dir[i].append(converted_temp);
            general_dir[i].append("_");
            general_dir[i].append(converted_self);
            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");

			 //For Down Right in
			 general_dir[i].append("),.DR_in(transmit");
            temp << i - 9;
            converted_temp = temp.str();

            general_dir[i].append(converted_temp);
            general_dir[i].append("_");
            general_dir[i].append(converted_self);

            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_temp);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_self);
            wire_counter++;
			temp.str("");

			

////////////////For Out/////////////////////////////////
		    //For Down out
			general_dir[i].append("),\n.D_out(transmit");
            temp << i - 8;
            converted_temp = temp.str();

            general_dir[i].append(converted_self);
            general_dir[i].append("_");
            general_dir[i].append(converted_temp);
            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
            wire_counter++;
			temp.str("");


			 //For Left out
			 general_dir[i].append("),.L_out(");
            temp << i + 1;
            converted_temp = temp.str();



            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);

			general_dir[i].append(wire[wire_counter]);

            wire_counter++;
			temp.str("");

			 //For Right out
			 general_dir[i].append("),.R_out(");
            temp << i - 1;
            converted_temp = temp.str();

            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
			 general_dir[i].append(wire[wire_counter]);
            wire_counter++;
			temp.str("");

			//For Down Left out
			general_dir[i].append("),\n.DL_out(");
            temp << i - 7;
            converted_temp = temp.str();



            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
			general_dir[i].append(wire[wire_counter]);
            wire_counter++;
			temp.str("");

			 //For Down Right out
			 general_dir[i].append("),.DR_out(");
            temp << i - 9;
            converted_temp = temp.str();




            //Save wire connection
            wire[wire_counter].append("transmit");
            wire[wire_counter].append(converted_self);
            wire[wire_counter].append("_");
            wire[wire_counter].append(converted_temp);
			general_dir[i].append(wire[wire_counter]);
            wire_counter++;
			temp.str("");

			
			////////////////For Move Out/////////////////////////////////
		    //For Move Down out//
			general_dir[i].append("),\n.D_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("D_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			move_counter++;


			//For Move Left out//
			general_dir[i].append("),.L_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("L_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;

			//For Move Right out//
			general_dir[i].append("),.R_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("R_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;




			//For Move Down Left out//
			general_dir[i].append("),.DL_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("DL_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
            move_counter++;



			//For Move Down Right out//
			general_dir[i].append("),.DR_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("DR_move_out");
            move_out[move_counter].append(converted_self);


			general_dir[i].append(move_out[move_counter]);
			  move_counter++;

			



            self.str("");
            temp.str("");


            }

	}// General Direction North Group 2
	i = 0;
	
////////////////////////////////////////
////KNIGHT APPENDING STRING///////////
////////////////////////////////////////  
  
  /////////////////Group 1 North, Knight Directions ://///////////////////////
	for (int j = 50 ; j < 54 ; j++){
        for (int k = 0; k < 1; k++){ //For Group  50->53
			i = k + j;
            self << i;
            converted_self = self.str();
				// No UUL,UUR 
			///Knight Move Outs/////
	//////////////////////////////////////
			    

			//For Left Left Up move out//
			general_dir[i].append("),\n.LLU_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("LLU_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;

			//For Move Right Right Up out//
			general_dir[i].append("),.RRU_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("RRU_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;


			//For Move Down Down Left out//
			general_dir[i].append("),\n.DDL_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("DDL_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			            move_counter++;

			//For Move Down Down Right out//
			general_dir[i].append("),.DDR_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("DDR_move_out");
            move_out[move_counter].append(converted_self);
          general_dir[i].append(move_out[move_counter]);
			  move_counter++;


			//For Move Left Left Down out//
			general_dir[i].append("),.LLD_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("LLD_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
            move_counter++;



			//For Move Right Right Down out//
			general_dir[i].append("),.RRD_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("RRD_move_out");
            move_out[move_counter].append(converted_self);


			general_dir[i].append(move_out[move_counter]);
			 move_counter++;



	     /////////For knights in //////////////////////
				///input [7:0] UUL_in,
			//	input [7:0] UUR_in,
				//input [7:0] LLU_in,
				//input [7:0] RRU_in,
				//input [7:0] DDL_in,
				//input [7:0] DDR_in,
			//	input [7:0] LLD_in,
			//	input [7:0] RRD_in,

			

			 //For Left Left Up in
			 knight_dir[i].append("),\n.LLU_in(transmit");
            temp << i + 1 + 1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Up in
			 knight_dir[i].append("),.RRU_in(transmit");
            temp << i - 1 -1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
			   //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			//For Down Down Left in
			knight_dir[i].append("),\n.DDL_in(transmit");
            temp << i - 8 -8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_in(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For  Left Left Down in
			 knight_dir[i].append("),.LLD_in(transmit");
            temp << i + 1 +1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Down
			 knight_dir[i].append("),.RRD_in(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");



///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////

			
			 //For Left Left Up Out
			 knight_dir[i].append("),\n.LLU_out(transmit");
            temp << i + 1 + 1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Up in
			 knight_dir[i].append("),.RRU_out(transmit");
            temp << i - 1 -1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
			   //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			//For Down Down Left in
			knight_dir[i].append("),\n.DDL_out(transmit");
            temp << i - 8 -8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_out(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For  Left Left Down out
			 knight_dir[i].append("),.LLD_out(transmit");
            temp << i + 1 +1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Down Out
			 knight_dir[i].append("),.RRD_out(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");




            self.str("");
            temp.str("");


            }

	}
	i = 0;
	
	
 /////////////////Group 1 East Knight Directions ://///////////////////////
	for (int j = 17 ; j < 42 ; j = j+8){
        for (int k = 0; k < 1; k++){ //For Group 1 West
			i = k + j;
            self << i;
            converted_self = self.str();
//Group 1 East won't have RRU,RRD

			///Knight Move Outs/////
	//////////////////////////////////////
			    //For Up Up Left out//
			general_dir[i].append("),\n.UUL_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("UUL_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			move_counter++;


			//For Up Up Right out//
			general_dir[i].append("),.UUR_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("UUR_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;

			//For Left Left Up move out//
			general_dir[i].append("),.LLU_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("LLU_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;

		


			//For Move Down Down Left out//
			general_dir[i].append("),\n.DDL_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("DDL_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			            move_counter++;

			//For Move Down Down Right out//
			general_dir[i].append("),.DDR_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("DDR_move_out");
            move_out[move_counter].append(converted_self);
          general_dir[i].append(move_out[move_counter]);
			  move_counter++;


			//For Move Left Left Down out//
			general_dir[i].append("),.LLD_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("LLD_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
            move_counter++;



			



	     /////////For knights in //////////////////////
				///input [7:0] UUL_in,
			//	input [7:0] UUR_in,
				//input [7:0] LLU_in,
				//input [7:0] RRU_in,
				//input [7:0] DDL_in,
				//input [7:0] DDR_in,
			//	input [7:0] LLD_in,
			//	input [7:0] RRD_in,

			//For Up Up Left in
			knight_dir[i].append("),\n.UUL_in(transmit");
            temp << i + 8 + 8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Up Up Right in
			 knight_dir[i].append("),.UUR_in(transmit");
            temp << i + 8 + 8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Left Left Up in
			 knight_dir[i].append("),.LLU_in(transmit");
            temp << i + 1 + 1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			
			//For Down Down Left in
			knight_dir[i].append("),\n.DDL_in(transmit");
            temp << i - 8 -8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_in(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For  Left Left Down in
			 knight_dir[i].append("),.LLD_in(transmit");
            temp << i + 1 +1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");



///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////

			//For Up Up Left Out
			knight_dir[i].append("),\n.UUL_out(transmit");
            temp << i + 8 + 8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Up Up Right out
			 knight_dir[i].append("),.UUR_out(transmit");
            temp << i + 8 + 8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Left Left Up Out
			 knight_dir[i].append("),.LLU_out(transmit");
            temp << i + 1 + 1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");


			//For Down Down Left in
			knight_dir[i].append("),\n.DDL_out(transmit");
            temp << i - 8 -8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_out(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For  Left Left Down out
			 knight_dir[i].append("),.LLD_out(transmit");
            temp << i + 1 +1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			


            self.str("");
            temp.str("");


            }

	}//Group 1 East Knight
	i = 0;
	
/////////////////Group 1 West Knight Directions ://///////////////////////
	for (int j = 22 ; j < 47 ; j = j+8){
        for (int k = 0; k < 1; k++){ //For 22, 30, 38, 46
			i = k + j;
            self << i;
            converted_self = self.str();
// No LLU, LLD
			///Knight Move Outs/////
	//////////////////////////////////////
			    //For Up Up Left out//
			general_dir[i].append("),\n.UUL_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("UUL_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			move_counter++;


			//For Up Up Right out//
			general_dir[i].append("),.UUR_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("UUR_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;

			

			//For Move Right Right Up out//
			general_dir[i].append("),.RRU_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("RRU_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;


			//For Move Down Down Left out//
			general_dir[i].append("),\n.DDL_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("DDL_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			            move_counter++;

			//For Move Down Down Right out//
			general_dir[i].append("),.DDR_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("DDR_move_out");
            move_out[move_counter].append(converted_self);
          general_dir[i].append(move_out[move_counter]);
			  move_counter++;


			//For Move Right Right Down out//
			general_dir[i].append("),.RRD_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("RRD_move_out");
            move_out[move_counter].append(converted_self);


			general_dir[i].append(move_out[move_counter]);
			 move_counter++;



	     /////////For knights in //////////////////////
				///input [7:0] UUL_in,
			//	input [7:0] UUR_in,
				//input [7:0] LLU_in,
				//input [7:0] RRU_in,
				//input [7:0] DDL_in,
				//input [7:0] DDR_in,
			//	input [7:0] LLD_in,
			//	input [7:0] RRD_in,

			//For Up Up Left in
			knight_dir[i].append("),\n.UUL_in(transmit");
            temp << i + 8 + 8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Up Up Right in
			 knight_dir[i].append("),.UUR_in(transmit");
            temp << i + 8 + 8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

		

			 //For Right Right Up in
			 knight_dir[i].append("),.RRU_in(transmit");
            temp << i - 1 -1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
			   //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			//For Down Down Left in
			knight_dir[i].append("),\n.DDL_in(transmit");
            temp << i - 8 -8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_in(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 
			 //For Right Right Down
			 knight_dir[i].append("),.RRD_in(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");



///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////

			//For Up Up Left Out
			knight_dir[i].append("),\n.UUL_out(transmit");
            temp << i + 8 + 8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Up Up Right out
			 knight_dir[i].append("),.UUR_out(transmit");
            temp << i + 8 + 8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Up in
			 knight_dir[i].append("),.RRU_out(transmit");
            temp << i - 1 -1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
			   //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			//For Down Down Left in
			knight_dir[i].append("),\n.DDL_out(transmit");
            temp << i - 8 -8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_out(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

		

			 //For Right Right Down Out
			 knight_dir[i].append("),.RRD_out(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");




            self.str("");
            temp.str("");


            }

	}//Group 1 West Knight
	i = 0;
	
/////////////////Group 1 South Knight Directions ://///////////////////////
	for (int j = 10 ; j < 14 ; j++){
        for (int k = 0; k < 1; k++){ //For Group 10->13, knight
			i = k + j;
            self << i;
            converted_self = self.str();
	// Group 1 South wont have: DDL,DDR

			///Knight Move Outs/////
	//////////////////////////////////////
			    //For Up Up Left out//
			general_dir[i].append("),\n.UUL_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("UUL_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			move_counter++;


			//For Up Up Right out//
			general_dir[i].append("),.UUR_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("UUR_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;

			//For Left Left Up move out//
			general_dir[i].append("),.LLU_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("LLU_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;

			//For Move Right Right Up out//
			general_dir[i].append("),.RRU_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("RRU_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;


			//For Move Left Left Down out//
			general_dir[i].append("),.LLD_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("LLD_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
            move_counter++;



			//For Move Right Right Down out//
			general_dir[i].append("),.RRD_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("RRD_move_out");
            move_out[move_counter].append(converted_self);


			general_dir[i].append(move_out[move_counter]);
			 move_counter++;



	     /////////For knights in //////////////////////
				///input [7:0] UUL_in,
			//	input [7:0] UUR_in,
				//input [7:0] LLU_in,
				//input [7:0] RRU_in,
				//input [7:0] DDL_in,
				//input [7:0] DDR_in,
			//	input [7:0] LLD_in,
			//	input [7:0] RRD_in,

			//For Up Up Left in
			knight_dir[i].append("),\n.UUL_in(transmit");
            temp << i + 8 + 8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Up Up Right in
			 knight_dir[i].append("),.UUR_in(transmit");
            temp << i + 8 + 8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Left Left Up in
			 knight_dir[i].append("),.LLU_in(transmit");
            temp << i + 1 + 1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Up in
			 knight_dir[i].append("),.RRU_in(transmit");
            temp << i - 1 -1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
			   //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");


			 //For  Left Left Down in
			 knight_dir[i].append("),.LLD_in(transmit");
            temp << i + 1 +1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Down
			 knight_dir[i].append("),.RRD_in(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");



///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////

			//For Up Up Left Out
			knight_dir[i].append("),\n.UUL_out(transmit");
            temp << i + 8 + 8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Up Up Right out
			 knight_dir[i].append("),.UUR_out(transmit");
            temp << i + 8 + 8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Left Left Up Out
			 knight_dir[i].append("),.LLU_out(transmit");
            temp << i + 1 + 1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Up in
			 knight_dir[i].append("),.RRU_out(transmit");
            temp << i - 1 -1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
			   //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			
			 //For  Left Left Down out
			 knight_dir[i].append("),.LLD_out(transmit");
            temp << i + 1 +1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Down Out
			 knight_dir[i].append("),.RRD_out(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");




            self.str("");
            temp.str("");


            }

	}//Group 1 South Knight
	i = 0;	
	
/////////////////Group 2 West Knight Directions ://///////////////////////
	for (int j = 23 ; j < 48 ; j = j+8){
        for (int k = 0; k < 1; k++){ //For Group 23->47, left most knight move
			i = k + j;
            self << i;
            converted_self = self.str();
			
	// Group 2 West Knight won't have: LLU,LLD,UUL,DDL

			///Knight Move Outs/////
	//////////////////////////////////////
			    

			//For Up Up Right out//
			general_dir[i].append("),\n.UUR_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("UUR_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;


			//For Move Right Right Up out//
			general_dir[i].append("),.RRU_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("RRU_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			 move_counter++;


		

			//For Move Down Down Right out//
			general_dir[i].append("),.DDR_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("DDR_move_out");
            move_out[move_counter].append(converted_self);
          general_dir[i].append(move_out[move_counter]);
			  move_counter++;


			
			//For Move Right Right Down out//
			general_dir[i].append("),.RRD_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("RRD_move_out");
            move_out[move_counter].append(converted_self);


			general_dir[i].append(move_out[move_counter]);
			 move_counter++;



	     /////////For knights in //////////////////////
				///input [7:0] UUL_in,
			//	input [7:0] UUR_in,
				//input [7:0] LLU_in,
				//input [7:0] RRU_in,
				//input [7:0] DDL_in,
				//input [7:0] DDR_in,
			//	input [7:0] LLD_in,
			//	input [7:0] RRD_in,

		
			 //For Up Up Right in
			 knight_dir[i].append("),\n.UUR_in(transmit");
            temp << i + 8 + 8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Up in
			 knight_dir[i].append("),.RRU_in(transmit");
            temp << i - 1 -1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
			   //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");


			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_in(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			
			 //For Right Right Down
			 knight_dir[i].append("),.RRD_in(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");



///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////


			 //For Up Up Right out
			 knight_dir[i].append("),\n.UUR_out(transmit");
            temp << i + 8 + 8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Up in
			 knight_dir[i].append("),.RRU_out(transmit");
            temp << i - 1 -1 +8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
			   //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

		
			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_out(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			
			 //For Right Right Down Out
			 knight_dir[i].append("),.RRD_out(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");




            self.str("");
            temp.str("");


            }

	}//Group 2 West Knight
	i = 0;		
/////////////////Group 1 Center Knight Directions ://///////////////////////
	move_knight_UUL_out = 1;
	 move_knight_UUR_out = 1;
	 move_knight_LLU_out = 1;
	 move_knight_RRU_out = 1;
	 move_knight_DDL_out = 1;
	 move_knight_DDR_out = 1;
	 move_knight_LLD_out = 1;
	 move_knight_RRD_out = 1;

	knight_UUL_out = 1;
	knight_UUR_out = 1;
	knight_LLU_out = 1;
	knight_RRU_out = 1;
	knight_DDL_out = 1;
	 knight_DDR_out = 1;
	 knight_LLD_out = 1;
	 knight_RRD_out = 1;
	 
	 knight_UUL_in = 1;
	knight_UUR_in = 1;
	knight_LLU_in = 1;
	knight_RRU_in = 1;
	knight_DDL_in = 1;
	 knight_DDR_in = 1;
	 knight_LLD_in = 1;
	 knight_RRD_in = 1;	
	 
	for (int j = 18 ; j < 43 ; j = j+8){
        for (int k = 0; k < 4; k++){ //For Group 18-> 21,  26->29, 34-> 37, 42 -> 45
			i = k + j;
            self << i;
            converted_self = self.str();

			///Knight Move Outs/////
			//////////////////////////////////////
			if(move_knight_UUL_out)
				print_move_knight_UUL_out(i);
			
			if(move_knight_UUR_out)
				print_move_knight_UUR_out(i);
			
			if(move_knight_LLU_out)
				print_move_knight_LLU_out(i);
			
			if(move_knight_RRU_out)
				print_move_knight_RRU_out( i);
			
			if(move_knight_DDL_out)
				print_move_knight_DDL_out(i);
			
			if(move_knight_DDR_out)
				print_move_knight_DDR_out(i);
			
			if(move_knight_LLD_out)
				print_move_knight_LLD_out(i);
			
			if(move_knight_RRD_out)
				print_move_knight_RRD_out(i);
	


	     /////////For knights in //////////////////////
			///input [7:0] UUL_in,
			//input [7:0] UUR_in,
			//input [7:0] LLU_in,
			//input [7:0] RRU_in,
			//input [7:0] DDL_in,
			//input [7:0] DDR_in,
			//input [7:0] LLD_in,
			//input [7:0] RRD_in,

				if(knight_UUL_in)
				print_knight_UUL_in(i);
			
			if(knight_UUR_in)
				print_knight_UUR_in(i);
			
			if(knight_LLU_in)
				print_knight_LLU_in(i);
			
			if(knight_RRU_in)
				print_knight_RRU_in(i);
			
			if(knight_DDL_in)
				print_knight_DDL_in(i);
			
			if(knight_DDR_in)
				print_knight_DDR_in(i);
			
			if(knight_LLD_in)
				print_knight_LLD_in(i);
			
			if(knight_RRD_in)
				print_knight_RRD_in(i);
	


///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////
			if(knight_UUL_out)
				print_knight_UUL_out(i);
			
			if(knight_UUR_out)
				print_knight_UUR_out(i);
			
			if(knight_LLU_out)
				print_knight_LLU_out(i);
			
			if(knight_RRU_out)
				print_knight_RRU_out(i);
			
			if(knight_DDL_out)
				print_knight_DDL_out(i);
			
			if(knight_DDR_out)
				print_knight_DDR_out(i);
			
			if(knight_LLD_out)
				print_knight_LLD_out(i);
			
			if(knight_RRD_out)
				print_knight_RRD_out(i);
			



            self.str("");
            temp.str("");


            }

	}//Group 1 Center Knight
	i = 0;	

/////////////////Square 63 Knight ///////////////////

	move_knight_UUL_out = 0;
	 move_knight_UUR_out = 0;
	 move_knight_LLU_out = 0;
	 move_knight_RRU_out = 0;
	 move_knight_DDL_out = 0;
	 move_knight_DDR_out = 1;
	 move_knight_LLD_out = 0;
	 move_knight_RRD_out = 1;

	knight_UUL_out = 0;
	knight_UUR_out = 0;
	knight_LLU_out = 0;
	knight_RRU_out = 0;
	knight_DDL_out = 0;
	 knight_DDR_out = 1;
	 knight_LLD_out = 0;
	 knight_RRD_out = 1;
	 
	 knight_UUL_in = 0;
	knight_UUR_in = 0;
	knight_LLU_in = 0;
	knight_RRU_in = 0;
	knight_DDL_in = 0;
	 knight_DDR_in = 1;
	 knight_LLD_in = 0;
	 knight_RRD_in = 1;	
	 
	for (int j = 63 ; j < 64 ; j++){
        for (int k = 0; k < 1; k++){ //For Square 63
			i = k + j;
            self << i;
            converted_self = self.str();

			///Knight Move Outs/////
			//////////////////////////////////////
			if(move_knight_UUL_out)
				print_move_knight_UUL_out(i);
			
			if(move_knight_UUR_out)
				print_move_knight_UUR_out(i);
			
			if(move_knight_LLU_out)
				print_move_knight_LLU_out(i);
			
			if(move_knight_RRU_out)
				print_move_knight_RRU_out( i);
			
			if(move_knight_DDL_out)
				print_move_knight_DDL_out(i);
			
			if(move_knight_DDR_out)
				print_move_knight_DDR_out(i);
			
			if(move_knight_LLD_out)
				print_move_knight_LLD_out(i);
			
			if(move_knight_RRD_out)
				print_move_knight_RRD_out(i);
	


	     /////////For knights in //////////////////////
			///input [7:0] UUL_in,
			//input [7:0] UUR_in,
			//input [7:0] LLU_in,
			//input [7:0] RRU_in,
			//input [7:0] DDL_in,
			//input [7:0] DDR_in,
			//input [7:0] LLD_in,
			//input [7:0] RRD_in,

				if(knight_UUL_in)
				print_knight_UUL_in(i);
			
			if(knight_UUR_in)
				print_knight_UUR_in(i);
			
			if(knight_LLU_in)
				print_knight_LLU_in(i);
			
			if(knight_RRU_in)
				print_knight_RRU_in(i);
			
			if(knight_DDL_in)
				print_knight_DDL_in(i);
			
			if(knight_DDR_in)
				print_knight_DDR_in(i);
			
			if(knight_LLD_in)
				print_knight_LLD_in(i);
			
			if(knight_RRD_in)
				print_knight_RRD_in(i);
	


///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////
			if(knight_UUL_out)
				print_knight_UUL_out(i);
			
			if(knight_UUR_out)
				print_knight_UUR_out(i);
			
			if(knight_LLU_out)
				print_knight_LLU_out(i);
			
			if(knight_RRU_out)
				print_knight_RRU_out(i);
			
			if(knight_DDL_out)
				print_knight_DDL_out(i);
			
			if(knight_DDR_out)
				print_knight_DDR_out(i);
			
			if(knight_LLD_out)
				print_knight_LLD_out(i);
			
			if(knight_RRD_out)
				print_knight_RRD_out(i);
			



            self.str("");
            temp.str("");


            }

	}//63 square Knight
	i = 0;	
/////////////////Square 56 Knight////////////////
/////////////////////////////////////////

	move_knight_UUL_out = 0;
	 move_knight_UUR_out = 0;
	 move_knight_LLU_out = 0;
	 move_knight_RRU_out = 0;
	 move_knight_DDL_out = 1;
	 move_knight_DDR_out = 0;
	 move_knight_LLD_out = 1;
	 move_knight_RRD_out = 0;

	knight_UUL_out = 0;
	knight_UUR_out = 0;
	knight_LLU_out = 0;
	knight_RRU_out = 0;
	knight_DDL_out = 1;
	 knight_DDR_out = 0;
	 knight_LLD_out = 1;
	 knight_RRD_out = 0;
	 
	 knight_UUL_in = 0;
	knight_UUR_in = 0;
	knight_LLU_in = 0;
	knight_RRU_in = 0;
	knight_DDL_in = 1;
	 knight_DDR_in = 0;
	 knight_LLD_in = 1;
	 knight_RRD_in = 0;	
	 
	for (int j = 56 ; j < 57 ; j++){
        for (int k = 0; k < 1; k++){ //For Square 56
			i = k + j;
            self << i;
            converted_self = self.str();

			///Knight Move Outs/////
			//////////////////////////////////////
			if(move_knight_UUL_out)
				print_move_knight_UUL_out(i);
			
			if(move_knight_UUR_out)
				print_move_knight_UUR_out(i);
			
			if(move_knight_LLU_out)
				print_move_knight_LLU_out(i);
			
			if(move_knight_RRU_out)
				print_move_knight_RRU_out( i);
			
			if(move_knight_DDL_out)
				print_move_knight_DDL_out(i);
			
			if(move_knight_DDR_out)
				print_move_knight_DDR_out(i);
			
			if(move_knight_LLD_out)
				print_move_knight_LLD_out(i);
			
			if(move_knight_RRD_out)
				print_move_knight_RRD_out(i);
	


	     /////////For knights in //////////////////////
			///input [7:0] UUL_in,
			//input [7:0] UUR_in,
			//input [7:0] LLU_in,
			//input [7:0] RRU_in,
			//input [7:0] DDL_in,
			//input [7:0] DDR_in,
			//input [7:0] LLD_in,
			//input [7:0] RRD_in,

				if(knight_UUL_in)
				print_knight_UUL_in(i);
			
			if(knight_UUR_in)
				print_knight_UUR_in(i);
			
			if(knight_LLU_in)
				print_knight_LLU_in(i);
			
			if(knight_RRU_in)
				print_knight_RRU_in(i);
			
			if(knight_DDL_in)
				print_knight_DDL_in(i);
			
			if(knight_DDR_in)
				print_knight_DDR_in(i);
			
			if(knight_LLD_in)
				print_knight_LLD_in(i);
			
			if(knight_RRD_in)
				print_knight_RRD_in(i);
	


///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////
			if(knight_UUL_out)
				print_knight_UUL_out(i);
			
			if(knight_UUR_out)
				print_knight_UUR_out(i);
			
			if(knight_LLU_out)
				print_knight_LLU_out(i);
			
			if(knight_RRU_out)
				print_knight_RRU_out(i);
			
			if(knight_DDL_out)
				print_knight_DDL_out(i);
			
			if(knight_DDR_out)
				print_knight_DDR_out(i);
			
			if(knight_LLD_out)
				print_knight_LLD_out(i);
			
			if(knight_RRD_out)
				print_knight_RRD_out(i);
			



            self.str("");
            temp.str("");


            }

	}//56 square Knight
	i = 0;	
//////////////////////////////////////////////////////
//////////////Square 7 Knight ////////////////////////

	move_knight_UUL_out = 0;
	 move_knight_UUR_out = 1;
	 move_knight_LLU_out = 0;
	 move_knight_RRU_out = 1;
	 move_knight_DDL_out = 0;
	 move_knight_DDR_out = 0;
	 move_knight_LLD_out = 0;
	 move_knight_RRD_out = 0;

	knight_UUL_out = 0;
	knight_UUR_out = 1;
	knight_LLU_out = 0;
	knight_RRU_out = 1;
	knight_DDL_out = 0;
	 knight_DDR_out = 0;
	 knight_LLD_out = 0;
	 knight_RRD_out = 0;
	 
	 knight_UUL_in = 0;
	knight_UUR_in = 1;
	knight_LLU_in = 0;
	knight_RRU_in = 1;
	knight_DDL_in = 0;
	 knight_DDR_in = 0;
	 knight_LLD_in = 0;
	 knight_RRD_in = 0;	
	 
	for (int j = 7 ; j < 8 ; j++){
        for (int k = 0; k < 1; k++){ //For Square 7
			i = k + j;
            self << i;
            converted_self = self.str();

			///Knight Move Outs/////
			//////////////////////////////////////
			if(move_knight_UUL_out)
				print_move_knight_UUL_out(i);
			
			if(move_knight_UUR_out)
				print_move_knight_UUR_out(i);
			
			if(move_knight_LLU_out)
				print_move_knight_LLU_out(i);
			
			if(move_knight_RRU_out)
				print_move_knight_RRU_out( i);
			
			if(move_knight_DDL_out)
				print_move_knight_DDL_out(i);
			
			if(move_knight_DDR_out)
				print_move_knight_DDR_out(i);
			
			if(move_knight_LLD_out)
				print_move_knight_LLD_out(i);
			
			if(move_knight_RRD_out)
				print_move_knight_RRD_out(i);
	


	     /////////For knights in //////////////////////
			///input [7:0] UUL_in,
			//input [7:0] UUR_in,
			//input [7:0] LLU_in,
			//input [7:0] RRU_in,
			//input [7:0] DDL_in,
			//input [7:0] DDR_in,
			//input [7:0] LLD_in,
			//input [7:0] RRD_in,

				if(knight_UUL_in)
				print_knight_UUL_in(i);
			
			if(knight_UUR_in)
				print_knight_UUR_in(i);
			
			if(knight_LLU_in)
				print_knight_LLU_in(i);
			
			if(knight_RRU_in)
				print_knight_RRU_in(i);
			
			if(knight_DDL_in)
				print_knight_DDL_in(i);
			
			if(knight_DDR_in)
				print_knight_DDR_in(i);
			
			if(knight_LLD_in)
				print_knight_LLD_in(i);
			
			if(knight_RRD_in)
				print_knight_RRD_in(i);
	


///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////
			if(knight_UUL_out)
				print_knight_UUL_out(i);
			
			if(knight_UUR_out)
				print_knight_UUR_out(i);
			
			if(knight_LLU_out)
				print_knight_LLU_out(i);
			
			if(knight_RRU_out)
				print_knight_RRU_out(i);
			
			if(knight_DDL_out)
				print_knight_DDL_out(i);
			
			if(knight_DDR_out)
				print_knight_DDR_out(i);
			
			if(knight_LLD_out)
				print_knight_LLD_out(i);
			
			if(knight_RRD_out)
				print_knight_RRD_out(i);
			



            self.str("");
            temp.str("");


            }

	}//7 square Knight
	i = 0;	

///////////////////////Square 0 Knight //////////////////

	move_knight_UUL_out = 1;
	 move_knight_UUR_out = 0;
	 move_knight_LLU_out = 1;
	 move_knight_RRU_out = 0;
	 move_knight_DDL_out = 0;
	 move_knight_DDR_out = 0;
	 move_knight_LLD_out = 0;
	 move_knight_RRD_out = 0;

	knight_UUL_out = 1;
	knight_UUR_out = 0;
	knight_LLU_out = 1;
	knight_RRU_out = 0;
	knight_DDL_out = 0;
	 knight_DDR_out = 0;
	 knight_LLD_out = 0;
	 knight_RRD_out = 0;
	 
	 knight_UUL_in = 1;
	knight_UUR_in = 0;
	knight_LLU_in = 1;
	knight_RRU_in = 0;
	knight_DDL_in = 0;
	 knight_DDR_in = 0;
	 knight_LLD_in = 0;
	 knight_RRD_in = 0;	
	 
	for (int j = 0 ; j < 1 ; j++){
        for (int k = 0; k < 1; k++){ //For Square 63
			i = k + j;
            self << i;
            converted_self = self.str();

			///Knight Move Outs/////
			//////////////////////////////////////
			if(move_knight_UUL_out)
				print_move_knight_UUL_out(i);
			
			if(move_knight_UUR_out)
				print_move_knight_UUR_out(i);
			
			if(move_knight_LLU_out)
				print_move_knight_LLU_out(i);
			
			if(move_knight_RRU_out)
				print_move_knight_RRU_out( i);
			
			if(move_knight_DDL_out)
				print_move_knight_DDL_out(i);
			
			if(move_knight_DDR_out)
				print_move_knight_DDR_out(i);
			
			if(move_knight_LLD_out)
				print_move_knight_LLD_out(i);
			
			if(move_knight_RRD_out)
				print_move_knight_RRD_out(i);
	


	     /////////For knights in //////////////////////
			///input [7:0] UUL_in,
			//input [7:0] UUR_in,
			//input [7:0] LLU_in,
			//input [7:0] RRU_in,
			//input [7:0] DDL_in,
			//input [7:0] DDR_in,
			//input [7:0] LLD_in,
			//input [7:0] RRD_in,

				if(knight_UUL_in)
				print_knight_UUL_in(i);
			
			if(knight_UUR_in)
				print_knight_UUR_in(i);
			
			if(knight_LLU_in)
				print_knight_LLU_in(i);
			
			if(knight_RRU_in)
				print_knight_RRU_in(i);
			
			if(knight_DDL_in)
				print_knight_DDL_in(i);
			
			if(knight_DDR_in)
				print_knight_DDR_in(i);
			
			if(knight_LLD_in)
				print_knight_LLD_in(i);
			
			if(knight_RRD_in)
				print_knight_RRD_in(i);
	


///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////
			if(knight_UUL_out)
				print_knight_UUL_out(i);
			
			if(knight_UUR_out)
				print_knight_UUR_out(i);
			
			if(knight_LLU_out)
				print_knight_LLU_out(i);
			
			if(knight_RRU_out)
				print_knight_RRU_out(i);
			
			if(knight_DDL_out)
				print_knight_DDL_out(i);
			
			if(knight_DDR_out)
				print_knight_DDR_out(i);
			
			if(knight_LLD_out)
				print_knight_LLD_out(i);
			
			if(knight_RRD_out)
				print_knight_RRD_out(i);
			



            self.str("");
            temp.str("");


            }

	}//0-square Knight
	i = 0;	

	//////////////////////////////////////////////////////////
//////////////////Group 2 South, Knight Directions://////////////////////
move_knight_UUL_out = 1;
	 move_knight_UUR_out = 1;
	 move_knight_LLU_out = 1;
	 move_knight_RRU_out = 1;
	 move_knight_DDL_out = 0;
	 move_knight_DDR_out = 0;
	 move_knight_LLD_out = 0;
	 move_knight_RRD_out = 0;

	knight_UUL_out = 1;
	knight_UUR_out = 1;
	knight_LLU_out = 1;
	knight_RRU_out = 1;
	knight_DDL_out = 0;
	 knight_DDR_out = 0;
	 knight_LLD_out = 0;
	 knight_RRD_out = 0;
	 
	 knight_UUL_in = 1;
	knight_UUR_in = 1;
	knight_LLU_in = 1;
	knight_RRU_in = 1;
	knight_DDL_in = 0;
	 knight_DDR_in = 0;
	 knight_LLD_in = 0;
	 knight_RRD_in = 0;	
	 
	for (int j = 2 ; j < 6 ; j++){
        for (int k = 0; k < 1; k++){ //2,3,4,5
			i = k + j;
            self << i;
            converted_self = self.str();

			///Knight Move Outs/////
			//////////////////////////////////////
			if(move_knight_UUL_out)
				print_move_knight_UUL_out(i);
			
			if(move_knight_UUR_out)
				print_move_knight_UUR_out(i);
			
			if(move_knight_LLU_out)
				print_move_knight_LLU_out(i);
			
			if(move_knight_RRU_out)
				print_move_knight_RRU_out( i);
			
			if(move_knight_DDL_out)
				print_move_knight_DDL_out(i);
			
			if(move_knight_DDR_out)
				print_move_knight_DDR_out(i);
			
			if(move_knight_LLD_out)
				print_move_knight_LLD_out(i);
			
			if(move_knight_RRD_out)
				print_move_knight_RRD_out(i);
	


	     /////////For knights in //////////////////////
			///input [7:0] UUL_in,
			//input [7:0] UUR_in,
			//input [7:0] LLU_in,
			//input [7:0] RRU_in,
			//input [7:0] DDL_in,
			//input [7:0] DDR_in,
			//input [7:0] LLD_in,
			//input [7:0] RRD_in,

				if(knight_UUL_in)
				print_knight_UUL_in(i);
			
			if(knight_UUR_in)
				print_knight_UUR_in(i);
			
			if(knight_LLU_in)
				print_knight_LLU_in(i);
			
			if(knight_RRU_in)
				print_knight_RRU_in(i);
			
			if(knight_DDL_in)
				print_knight_DDL_in(i);
			
			if(knight_DDR_in)
				print_knight_DDR_in(i);
			
			if(knight_LLD_in)
				print_knight_LLD_in(i);
			
			if(knight_RRD_in)
				print_knight_RRD_in(i);
	


///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////
			if(knight_UUL_out)
				print_knight_UUL_out(i);
			
			if(knight_UUR_out)
				print_knight_UUR_out(i);
			
			if(knight_LLU_out)
				print_knight_LLU_out(i);
			
			if(knight_RRU_out)
				print_knight_RRU_out(i);
			
			if(knight_DDL_out)
				print_knight_DDL_out(i);
			
			if(knight_DDR_out)
				print_knight_DDR_out(i);
			
			if(knight_LLD_out)
				print_knight_LLD_out(i);
			
			if(knight_RRD_out)
				print_knight_RRD_out(i);
			



            self.str("");
            temp.str("");


            }

	}//Group 1 Center Knight
	i = 0;	
	
///////////////////Group 2 East, Knight DIrections////////////////////////
move_knight_UUL_out = 1;
	 move_knight_UUR_out = 0;
	 move_knight_LLU_out = 1;
	 move_knight_RRU_out = 0;
	 move_knight_DDL_out = 1;
	 move_knight_DDR_out = 0;
	 move_knight_LLD_out = 1;
	 move_knight_RRD_out = 0;

	knight_UUL_out = 1;
	knight_UUR_out = 0;
	knight_LLU_out = 1;
	knight_RRU_out = 0;
	knight_DDL_out = 1;
	 knight_DDR_out = 0;
	 knight_LLD_out = 1;
	 knight_RRD_out = 0;
	 
	 knight_UUL_in = 1;
	knight_UUR_in = 0;
	knight_LLU_in = 1;
	knight_RRU_in = 0;
	knight_DDL_in = 1;
	 knight_DDR_in = 0;
	 knight_LLD_in = 1;
	 knight_RRD_in = 0;	
	 
	for (int j = 16 ; j < 41 ; j = j + 8){
        for (int k = 0; k < 1; k++){ //For Group 16 24 32 40
			i = k + j;
            self << i;
            converted_self = self.str();

			///Knight Move Outs/////
			//////////////////////////////////////
			if(move_knight_UUL_out)
				print_move_knight_UUL_out(i);
			
			if(move_knight_UUR_out)
				print_move_knight_UUR_out(i);
			
			if(move_knight_LLU_out)
				print_move_knight_LLU_out(i);
			
			if(move_knight_RRU_out)
				print_move_knight_RRU_out( i);
			
			if(move_knight_DDL_out)
				print_move_knight_DDL_out(i);
			
			if(move_knight_DDR_out)
				print_move_knight_DDR_out(i);
			
			if(move_knight_LLD_out)
				print_move_knight_LLD_out(i);
			
			if(move_knight_RRD_out)
				print_move_knight_RRD_out(i);
	


	     /////////For knights in //////////////////////
			///input [7:0] UUL_in,
			//input [7:0] UUR_in,
			//input [7:0] LLU_in,
			//input [7:0] RRU_in,
			//input [7:0] DDL_in,
			//input [7:0] DDR_in,
			//input [7:0] LLD_in,
			//input [7:0] RRD_in,

				if(knight_UUL_in)
				print_knight_UUL_in(i);
			
			if(knight_UUR_in)
				print_knight_UUR_in(i);
			
			if(knight_LLU_in)
				print_knight_LLU_in(i);
			
			if(knight_RRU_in)
				print_knight_RRU_in(i);
			
			if(knight_DDL_in)
				print_knight_DDL_in(i);
			
			if(knight_DDR_in)
				print_knight_DDR_in(i);
			
			if(knight_LLD_in)
				print_knight_LLD_in(i);
			
			if(knight_RRD_in)
				print_knight_RRD_in(i);
	


///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////
			if(knight_UUL_out)
				print_knight_UUL_out(i);
			
			if(knight_UUR_out)
				print_knight_UUR_out(i);
			
			if(knight_LLU_out)
				print_knight_LLU_out(i);
			
			if(knight_RRU_out)
				print_knight_RRU_out(i);
			
			if(knight_DDL_out)
				print_knight_DDL_out(i);
			
			if(knight_DDR_out)
				print_knight_DDR_out(i);
			
			if(knight_LLD_out)
				print_knight_LLD_out(i);
			
			if(knight_RRD_out)
				print_knight_RRD_out(i);
			



            self.str("");
            temp.str("");


            }

	}//Group 2  Knight East
	i = 0;	

		
 /////////////////Group 2 North, Knight Directions ://///////////////////////
	for (int j = 58 ; j < 62 ; j++){
        for (int k = 0; k < 1; k++){ //For Group 59->61
			i = k + j;
            self << i;
            converted_self = self.str();
//
//No UUL, UUR, LLU,RRU in,out,moves
//
//
//
			///Knight Move Outs/////
	//////////////////////////////////////
			   


			//For Move Down Down Left out//
			general_dir[i].append("),\n.DDL_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("DDL_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
			            move_counter++;

			//For Move Down Down Right out//
			general_dir[i].append("),.DDR_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("DDR_move_out");
            move_out[move_counter].append(converted_self);
          general_dir[i].append(move_out[move_counter]);
			  move_counter++;


			//For Move Left Left Down out//
			general_dir[i].append("),.LLD_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("LLD_move_out");
            move_out[move_counter].append(converted_self);
			general_dir[i].append(move_out[move_counter]);
            move_counter++;



			//For Move Right Right Down out//
			general_dir[i].append("),.RRD_move_out(");



            //Save Move_out connection
            move_out[move_counter].append("RRD_move_out");
            move_out[move_counter].append(converted_self);


			general_dir[i].append(move_out[move_counter]);
			 move_counter++;



	     /////////For knights in //////////////////////
				///input [7:0] UUL_in,
			//	input [7:0] UUR_in,
				//input [7:0] LLU_in,
				//input [7:0] RRU_in,
				//input [7:0] DDL_in,
				//input [7:0] DDR_in,
			//	input [7:0] LLD_in,
			//	input [7:0] RRD_in,

			

			//For Down Down Left in
			knight_dir[i].append("),\n.DDL_in(transmit");
            temp << i - 8 -8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_in(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For  Left Left Down in
			 knight_dir[i].append("),.LLD_in(transmit");
            temp << i + 1 +1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Down
			 knight_dir[i].append("),.RRD_in(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_temp);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_self);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire_counter++;
			temp.str("");



///For Knight Out/////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////

		
			//For Down Down Left in
			knight_dir[i].append("),\n.DDL_out(transmit");
            temp << i - 8 -8 +1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);
            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Down Down Right in
			 knight_dir[i].append("),.DDR_out(transmit");
            temp << i - 8 -8 -1;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For  Left Left Down out
			 knight_dir[i].append("),.LLD_out(transmit");
            temp << i + 1 +1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");

			 //For Right Right Down Out
			 knight_dir[i].append("),.RRD_out(transmit");
            temp << i - 1 -1 -8;
            converted_temp = temp.str();

            knight_dir[i].append(converted_self);
            knight_dir[i].append("_");
            knight_dir[i].append(converted_temp);

            //Save knight_wire connection
            knight_wire[knight_wire_counter].append("transmit");
            knight_wire[knight_wire_counter].append(converted_self);
            knight_wire[knight_wire_counter].append("_");
            knight_wire[knight_wire_counter].append(converted_temp);
            knight_wire_counter++;
			temp.str("");




            self.str("");
            temp.str("");


            }

	} //Group 2 North knight
	i = 0;
	
   ////////////////////////////Print////////////////////////////////////////////////
   //////////////////////////////////////////////////////////////////////////////////
   /////////////////////////////////////////////////////////////////////////////////////
        for (int i = 0; i < SQUARES; i++){
            myfile << "Square[" <<i<<"]:" <<endl << general_dir[i] << knight_dir[i] <<") );"<< endl;


        }
        for (int i = 0; i < wire_counter; i++){
            myfile << "wire [10:0] " << wire[i] <<";" << endl;
        }
        
         for (int i = 0; i < knight_wire_counter; i++){
            myfile << "wire [7:0] " << knight_wire[i] <<";" << endl;
        }
		
		for (int i = 0; i < move_counter; i++){
            myfile << "output [31:0] " << move_out[i] <<";" << endl;
        }
         myfile.close();
    return 0;
}



