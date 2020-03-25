#ifndef micro_TB_TEST
#define micro_TB_TEST

#include <systemc.h> 

#include<vector>
#include<cmath>

#include "vector_print.h"
#include "system_c_utils.h"

#include "micro.h"

using namespace std;



void micro__tb()
{
                                        //===============================================================//
    int num_bits_needed_in_sim_vec = 4; // <----- SET THIS TO THE NUMBER OF INPUTS YOU NEED TO SIMULATE 
                                        //===============================================================//        

    //=============================//
    //  Define IO Ports
    //=============================//
    sc_signal <bool>     i_en  ;
    sc_signal <sc_lv<4>> i_code;
    sc_signal <sc_logic> o_A   ;
    sc_signal <sc_logic> o_L   ;
    sc_signal <sc_logic> o_B   ;


    //=============================//
    //  Select Which Model to Test
    //=============================//
    micro__behavior DUT("micro.h");


    //=============================//
    //  Port Map
    //=============================//
    DUT.i_en  (i_en  );
    DUT.i_code(i_code);
    DUT.o_A   (o_A   );
    DUT.o_L   (o_L   );
    DUT.o_B   (o_B   );
    

    // trace file to look at sim output
    sc_trace_file* fp1;  //create VCD file: file pointer fp1
    fp1 = sc_create_vcd_trace_file("wave1");  // open(fp1), create wave1.vcd file


    //=============================//
    //  Add Signals to Trace File
    //=============================//
    sc_trace(fp1, i_en  ,  "i_en");
    sc_trace(fp1, i_code,  "i_code");
    sc_trace(fp1, o_A   ,  "o_A");
    sc_trace(fp1, o_L   ,  "o_L");
    sc_trace(fp1, o_B   ,  "o_B");


    //--------------//
    //  Simulation  //
    //--------------//
    print_sim_header("micro");
    double num_combos_to_test = pow(num_bits_needed_in_sim_vec, 2) + 2; // run 2 extra so waveform always ends with all high, then all low

    for (int i = 0; i < pow(4, 2) + 1; i++)
    {
        vector<int> sv = int_to_binary_vec__with_rollover(i, num_bits_needed_in_sim_vec); // simulation vector
        cout << "In micro__tb.h, Sim:  i:" << i << "    sv:" << sv << endl;

        i_en = 0;
        i_code = i;

        sc_start(10, SC_NS); // run sim for 10 ns

        i_en = 1;
        i_code = i;



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