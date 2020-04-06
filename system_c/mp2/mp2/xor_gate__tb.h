#ifndef xor4_gate_TB_TEST
#define xor4_gate_TB_TEST

#include <systemc.h> 

#include<vector>
#include<cmath>

#include "vector_print.h"
#include "system_c_utils.h"

#include "xor4_gate.h"

using namespace std;



void xor4_gate__tb()
{
                                        //===============================================================//
    int num_bits_needed_in_sim_vec = 4; // <----- SET THIS TO THE NUMBER OF INPUTS YOU NEED TO SIMULATE 
                                        //===============================================================//        

    //=============================//
    //  Define IO Ports
    //=============================//
    sc_signal<bool> i_a,
                    i_b,
                    i_c,
                    i_d,
                    o_f;

    //=============================//
    //  Select Which Model to Test
    //=============================//
    //xor4__equation DUT("xor4_gate.h");
    xor4__behavior DUT("xor4_gate.h");
    //xor4_cmpnt_self DUT("xor4_gate.h");


    //=============================//
    //  Port Map
    //=============================//
    DUT.i_a(i_a);
    DUT.i_b(i_b);
    DUT.i_c(i_c);
    DUT.i_d(i_d);
    DUT.o_f(o_f);


    // trace file to look at sim output
    sc_trace_file* fp1;  //create VCD file: file pointer fp1
    fp1 = sc_create_vcd_trace_file("wave1");  // open(fp1), create wave1.vcd file


    //=============================//
    //  Add Signals to Trace File
    //=============================//
    sc_trace(fp1, i_a, "i_a");
    sc_trace(fp1, i_b, "i_b");
    sc_trace(fp1, i_c, "i_c");
    sc_trace(fp1, i_d, "i_d");
    sc_trace(fp1, o_f, "o_f");


    //--------------//
    //  Simulation  //
    //--------------//
    print_sim_header("xor4_gate");
    double num_combos_to_test = pow(num_bits_needed_in_sim_vec, 2) + 2; // run 2 extra so waveform always ends with all high, then all low

    for (int i = 0; i < num_combos_to_test; i++)
    {
        vector<int> sv = int_to_binary_vec__with_rollover(i, num_bits_needed_in_sim_vec); // simulation vector
        cout << "In xor4_gate__tb.h, Sim:  i:" << i << "    sv:" << sv << endl;


        //=============================//
        //  Set Inputs      
        //=============================//
        i_a = sv[0];
        i_b = sv[1];
        i_c = sv[2];
        i_d = sv[3];


        sc_start(10, SC_NS); // run sim for 10 ns
    }

    // last change that wont show on EDA plai_bground
    sc_close_vcd_trace_file(fp1); // close(fp1)
}
#endif  