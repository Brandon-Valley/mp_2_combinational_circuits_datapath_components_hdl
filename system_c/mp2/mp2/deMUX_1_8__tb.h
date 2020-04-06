#ifndef deMUX_1_8_TB_TEST
#define deMUX_1_8_TB_TEST

#include <systemc.h> 

#include<vector>
#include<cmath>

#include "vector_print.h"
#include "system_c_utils.h"

#include "deMUX_1_8.h"

using namespace std;



void deMUX_1_8__tb()
{
                                        //===============================================================//
    int num_bits_needed_in_sim_vec = 4; // <----- SET THIS TO THE NUMBER OF INPUTS YOU NEED TO SIMULATE 
                                        //===============================================================//        

    //=============================//
    //  Define IO Ports
    //=============================//
    sc_signal <bool>     i_a       ;
    sc_signal <sc_lv<3>> i_sel_code;
    sc_signal <sc_lv<8>> o_code    ;


    //=============================//
    //  Select Which Model to Test
    //=============================//
    //deMUX_1_8__equation DUT("deMUX_1_8.h");
    deMUX_1_8__behavior DUT("deMUX_1_8.h");



    //=============================//
    //  Port Map
    //=============================//
    DUT.i_a       (i_a       );
    DUT.i_sel_code(i_sel_code);
    DUT.o_code    (o_code    );


    // trace file to look at sim output
    sc_trace_file* fp1;  //create VCD file: file pointer fp1
    fp1 = sc_create_vcd_trace_file("wave1");  // open(fp1), create wave1.vcd file


    //=============================//
    //  Add Signals to Trace File
    //=============================//
    sc_trace(fp1, i_a       ,  "i_a");
    sc_trace(fp1, i_sel_code,  "i_sel_code");
    sc_trace(fp1, o_code    ,  "o_code");


    //--------------//
    //  Simulation  //
    //--------------//
    print_sim_header("deMUX_1_8");
    double num_combos_to_test = pow(num_bits_needed_in_sim_vec, 2) + 2; // run 2 extra so waveform always ends with all high, then all low

    for (int i = 0; i < pow(4, 2) + 1; i++)
    {
        vector<int> sv = int_to_binary_vec__with_rollover(i, num_bits_needed_in_sim_vec); // simulation vector
        cout << "In deMUX_1_8__tb.h, Sim:  i:" << i << "    sv:" << sv << endl;

        i_a = i % 2;

        i_sel_code = i - 1;



        //=============================//
        //  Set Inputs      
        //=============================//
        //i_code[0] = sv[0];
        //i_code = i;
        //o_valid = sv[2];
        //i_d = sv[3];


        sc_start(10, SC_NS); // run sim for 10 ns
    }

    // last change that wont show on EDA plao_codeground
    sc_close_vcd_trace_file(fp1); // close(fp1)
}
#endif  