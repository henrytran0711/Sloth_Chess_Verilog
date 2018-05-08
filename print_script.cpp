#include <iostream>
#include <string>
#include <sstream>
using namespace std;

int main()
{
    const int SIZE = 1000;
    const int SQUARES = 64;
    int wire_counter = 0;
    int move_counter = 0;
    string general_dir[SQUARES];
    string knight_dir[SQUARES];
    string wire[SIZE];
    string move_out[SIZE];
    string converted_self;
    string converted_temp;
    ostringstream temp;
    ostringstream self;
        for (int i = 0; i < SQUARES; i++){
            general_dir[i] = "";
            knight_dir[i] = "";
        }

    //Group 1, general direction:

        for (int i = 19; i < 55; i++){ //For Group 19 -> 54
            general_dir[i].append("square Square");
            self << i;
            converted_self = self.str();

            general_dir[i].append(converted_self);
            general_dir[i].append("(.clk(clk), .engineColor(engineColor),  .enable(enable), .clear(clear),.pieceReg(pieceReg");
            general_dir[i].append(converted_self);
            general_dir[i].append("),.posReg(6'd");
            general_dir[i].append(converted_self);
            general_dir[i].append("),.D_in(transmit");

            //For Down
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


            self.str("");
            temp.str("");

            }




        //Print
        for (int i = 0; i < SQUARES; i++){
            cout << "Square[" <<i<<"]:" << general_dir[i]  << endl;
        }
        for (int i = 0; i < wire_counter; i++){
            cout << "wire [10:0]" << wire[i] <<";" << endl;
        }
    return 0;
}
