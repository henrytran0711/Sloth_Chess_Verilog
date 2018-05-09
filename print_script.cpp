#include <iostream>
#include <string>
#include <sstream>
#include <fstream>
using namespace std;

int main()
{
    ofstream myfile;
    myfile.open ("output.txt");

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
        for (int i = 0; i < SQUARES; i++){
            general_dir[i] = "";
            knight_dir[i] = "";
        }

  /////////////////Group 1, general direction://///////////////////////
	for (int j = 18 ; j < 42 ; j = j+8){
        for (int k = 0; k < 4; k++){ //For Group 18-> 21,  26->29, 34-> 37, 42 -> 45
			i = k + j;
            general_dir[i].append("square Square");
            self << i;
            converted_self = self.str();

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


			//For Move Up Left out//
			general_dir[i].append("),\n.UL_move_out(");




            //Save Move_out connection
            move_out[move_counter].append("UL_move_out");
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

			///Knight Move Outs/////

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
	////Next for loop



        //Print
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



