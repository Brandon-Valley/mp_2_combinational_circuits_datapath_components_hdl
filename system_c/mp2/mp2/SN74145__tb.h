#ifndef SN74145_TB_TEST
#define SN74145_TB_TEST

#include <systemc.h> 

#include<vector>
#include<cmath>

#include "vector_print.h"
#include "system_c_utils.h"

#include "SN74145.h"

using namespace std;



void SN74145__tb()
{
                                         //===============================================================//
    int num_bits_needed_in_sim_vec = 17; // <----- SET THIS TO THE NUMBER OF INPUTS YOU NEED TO SIMULATE 
                                         //===============================================================//        

    //=============================//
    //  Define IO Ports
    //=============================//
    sc_signal<bool> i_a;
    sc_signal<bool> i_b;
    sc_signal<bool> i_c;
    sc_signal<bool> i_d;
    
    sc_signal<bool> i_cs;
    sc_signal<bool> i_n_cs_0;
    sc_signal<bool> i_n_cs_1;
    
    sc_signal<bool> o_0;
    sc_signal<bool> o_1;
    sc_signal<bool> o_2;
    sc_signal<bool> o_3;
    sc_signal<bool> o_4;
    sc_signal<bool> o_5;
    sc_signal<bool> o_6;
    sc_signal<bool> o_7;
    sc_signal<bool> o_8;
    sc_signal<bool> o_9;



    //=============================//
    //  Select Which Model to Test
    //=============================//
    //SN74145__equation DUT("SN74145.h");
    SN74145__behavior DUT("SN74145.h");



    //=============================//
    //  Port Map
    //=============================//
    DUT.i_a      (i_a     );
    DUT.i_b      (i_b     );
    DUT.i_c      (i_c     );
    DUT.i_d      (i_d     );
    
    DUT.i_cs     (i_cs    );
    DUT.i_n_cs_0 (i_n_cs_0);
    DUT.i_n_cs_1 (i_n_cs_1);
    
    DUT.o_0      (o_0     );
    DUT.o_1      (o_1     );
    DUT.o_2      (o_2     );
    DUT.o_3      (o_3     );
    DUT.o_4      (o_4     );
    DUT.o_5      (o_5     );
    DUT.o_6      (o_6     );
    DUT.o_7      (o_7     );
    DUT.o_8      (o_8     );
    DUT.o_9      (o_9     );
    


    // trace file to look at sim output
    sc_trace_file* fp1;  //create VCD file: file pointer fp1
    fp1 = sc_create_vcd_trace_file("wave1");  // open(fp1), create wave1.vcd file


    //=============================//
    //  Add Signals to Trace File
    //=============================//
    sc_trace(fp1, i_a     ,  "i_a");
    sc_trace(fp1, i_b     ,  "i_b");
    sc_trace(fp1, i_c     ,  "i_c");
    sc_trace(fp1, i_d     ,  "i_d");

    sc_trace(fp1, i_cs    ,  "i_cs");
    sc_trace(fp1, i_n_cs_0,  "i_n_cs_0");
    sc_trace(fp1, i_n_cs_1,  "i_n_cs_1");

    sc_trace(fp1, o_0     ,  "o_0");
    sc_trace(fp1, o_1     ,  "o_1");
    sc_trace(fp1, o_2     ,  "o_2");
    sc_trace(fp1, o_3     ,  "o_3");
    sc_trace(fp1, o_4     ,  "o_4");
    sc_trace(fp1, o_5     ,  "o_5");
    sc_trace(fp1, o_6     ,  "o_6");
    sc_trace(fp1, o_7     ,  "o_7");
    sc_trace(fp1, o_8     ,  "o_8");
    sc_trace(fp1, o_9     ,  "o_9");



    //--------------//
    //  Simulation  //
    //--------------//
    print_sim_header("SN74145");
    double num_combos_to_test = pow(num_bits_needed_in_sim_vec, 2) + 2; // run 2 extra so waveform always ends with all high, then all low

    //for (int i = 0; i < pow(4, 2) + 1; i++)
    for (int i = 0; i < num_combos_to_test; i++)
    {
        vector<int> sv = int_to_binary_vec__with_rollover(i, num_bits_needed_in_sim_vec); // simulation vector
        cout << "In SN74145__tb.h, Sim:  i:" << i << "    sv:" << sv << endl;

        i_a      = sv[0 ];
        i_b      = sv[1 ];
        i_c      = sv[2 ];
        i_d      = sv[3 ];

        i_cs     = sv[4 ];
        i_n_cs_0 = sv[5 ];
        i_n_cs_1 = sv[6 ];

        o_0      = sv[7 ];
        o_1      = sv[8 ];
        o_2      = sv[9 ];
        o_3      = sv[10];
        o_4      = sv[11];
        o_5      = sv[12];
        o_6      = sv[13];
        o_7      = sv[14];
        o_8      = sv[15];
        o_9      = sv[16];

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