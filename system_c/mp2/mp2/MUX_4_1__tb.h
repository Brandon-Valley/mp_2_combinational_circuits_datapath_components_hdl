#ifndef MUX_4_1_TB_TEST
#define MUX_4_1_TB_TEST

#include <systemc.h> 

#include<vector>
#include<cmath>

#include "vector_print.h"
#include "system_c_utils.h"

#include "MUX_4_1.h"

using namespace std;



void MUX_4_1__tb()
{
                                        //===============================================================//
    int num_bits_needed_in_sim_vec = 4; // <----- SET THIS TO THE NUMBER OF INPUTS YOU NEED TO SIMULATE 
                                        //===============================================================//        

    //=============================//
    //  Define IO Ports
    //=============================//
    sc_signal <bool>     i_en      ;
    sc_signal <sc_lv<4>> i_code    ;
    sc_signal <sc_lv<2>> i_sel_code;
    sc_signal <sc_logic> o_f       ;


    //=============================//
    //  Select Which Model to Test
    //=============================//
    MUX_4_1__behavior DUT("MUX_4_1.h");


    //=============================//
    //  Port Map
    //=============================//
    DUT.i_en      (i_en      );
    DUT.i_code    (i_code    );
    DUT.i_sel_code(i_sel_code);
    DUT.o_f       (o_f       );


    // trace file to look at sim output
    sc_trace_file* fp1;  //create VCD file: file pointer fp1
    fp1 = sc_create_vcd_trace_file("wave1");  // open(fp1), create wave1.vcd file


    //=============================//
    //  Add Signals to Trace File
    //=============================//
    sc_trace(fp1, i_en      ,  "i_en");
    sc_trace(fp1, i_code    ,  "i_code");
    sc_trace(fp1, i_sel_code,  "i_sel_code");
    sc_trace(fp1, o_f       ,  "o_f");


    //--------------//
    //  Simulation  //
    //--------------//
    print_sim_header("MUX_4_1");
    double num_combos_to_test = pow(num_bits_needed_in_sim_vec, 2) + 2; // run 2 extra so waveform always ends with all high, then all low

    for (int i = 0; i < pow(4, 2) + 1; i++)
    {
        vector<int> sv = int_to_binary_vec__with_rollover(i, num_bits_needed_in_sim_vec); // simulation vector
        cout << "In MUX_4_1__tb.h, Sim:  i:" << i << "    sv:" << sv << endl;


        //=============================//
        //  Set Inputs      
        //=============================//
        
        i_en = 0;

        i_sel_code = 0;
        i_code = i;

        sc_start(10, SC_NS); // run sim for 10 ns
        
        i_sel_code = 1;
        i_code = i;

        sc_start(10, SC_NS); // run sim for 10 ns
        
        i_sel_code = 2;
        i_code = i;

        sc_start(10, SC_NS); // run sim for 10 ns
        
        i_sel_code = 3;
        i_code = i;

        sc_start(10, SC_NS); // run sim for 10 ns




        i_en = 1;

        i_sel_code = 0;
        i_code = i;

        sc_start(10, SC_NS); // run sim for 10 ns
        
        i_sel_code = 1;
        i_code = i;

        sc_start(10, SC_NS); // run sim for 10 ns
        
        i_sel_code = 2;
        i_code = i;

        sc_start(10, SC_NS); // run sim for 10 ns
        
        i_sel_code = 3;
        i_code = i;

        sc_start(10, SC_NS); // run sim for 10 ns
    }

    // last change that wont show on EDA plao_codeground
    sc_close_vcd_trace_file(fp1); // close(fp1)
}
#endif  