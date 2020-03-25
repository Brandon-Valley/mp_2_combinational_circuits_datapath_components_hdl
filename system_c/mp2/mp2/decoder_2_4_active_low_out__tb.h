#ifndef decoder_2_4_active_low_out_TB_TEST
#define decoder_2_4_active_low_out_TB_TEST

#include <systemc.h> 

#include<vector>
#include<cmath>

#include "vector_print.h"
#include "system_c_utils.h"

#include "decoder_2_4_active_low_out.h"

using namespace std;



void decoder_2_4_active_low_out__tb()
{
                                        //===============================================================//
    int num_bits_needed_in_sim_vec = 4; // <----- SET THIS TO THE NUMBER OF INPUTS YOU NEED TO SIMULATE 
                                        //===============================================================//        

    //=============================//
    //  Define IO Ports
    //=============================//
    sc_signal<sc_lv<2>> i_code;
    sc_signal<sc_lv<4>> o_code;
    sc_signal<bool> o_valid;


    //=============================//
    //  Select Which Model to Test
    //=============================//
    //decoder_2_4_active_low_out__equation DUT("decoder_2_4_active_low_out.h");
    decoder_2_4_active_low_out__behavior DUT("decoder_2_4_active_low_out.h");



    //=============================//
    //  Port Map
    //=============================//
    DUT.i_code(i_code);
    DUT.o_code(o_code);


    // trace file to look at sim output
    sc_trace_file* fp1;  //create VCD file: file pointer fp1
    fp1 = sc_create_vcd_trace_file("wave1");  // open(fp1), create wave1.vcd file


    //=============================//
    //  Add Signals to Trace File
    //=============================//
    sc_trace(fp1, i_code,  "i_code");
    sc_trace(fp1, o_code,  "o_code");


    //--------------//
    //  Simulation  //
    //--------------//
    print_sim_header("decoder_2_4_active_low_out");
    double num_combos_to_test = pow(num_bits_needed_in_sim_vec, 2) + 2; // run 2 extra so waveform always ends with all high, then all low

    for (int i = 0; i < pow(4, 2) + 1; i++)
    {
        vector<int> sv = int_to_binary_vec__with_rollover(i, num_bits_needed_in_sim_vec); // simulation vector
        cout << "In decoder_2_4_active_low_out__tb.h, Sim:  i:" << i << "    sv:" << sv << endl;

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