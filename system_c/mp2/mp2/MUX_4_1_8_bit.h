#ifndef MUX_4_1_8_bit_H
#define MUX_4_1_8_bit_H

#include "systemc.h"

using namespace std;


SC_MODULE(MUX_4_1_8_bit__behavior) 
{
    //  Define IO Ports
    sc_in  <bool>     i_en      ;
    sc_in  <sc_lv<8>> i_code_0  ;
    sc_in  <sc_lv<8>> i_code_1  ;
    sc_in  <sc_lv<8>> i_code_2  ;
    sc_in  <sc_lv<8>> i_code_3  ;
    sc_in  <sc_lv<2>> i_sel_code;
    sc_out <sc_lv<8>> o_code    ;




    // Architecture Statement - Similar to Process Statement
    void p1()
    {

        if (i_en)
        {
            if (i_sel_code.read() == "00")  o_code = i_code_0;
            if (i_sel_code.read() == "01")  o_code = i_code_1;
            if (i_sel_code.read() == "10")  o_code = i_code_2;
            if (i_sel_code.read() == "11")  o_code = i_code_3;
        }
        else
            o_code = "00000000";
    }


    // Constructor
    SC_CTOR(MUX_4_1_8_bit__behavior) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_en      
                  << i_code_0  
                  << i_code_1  
                  << i_code_2  
                  << i_code_3  
                  << i_sel_code
                  << o_code    
                  ;
    }
};

#endif