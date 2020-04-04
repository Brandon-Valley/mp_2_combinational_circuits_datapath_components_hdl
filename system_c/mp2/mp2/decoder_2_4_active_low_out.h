#ifndef decoder_2_4_active_low_out_gate_H
#define decoder_2_4_active_low_out_gate_H

#include "systemc.h"

using namespace std;



SC_MODULE(decoder_2_4_active_low_out__behavior) 
{
    //  Define IO Ports
    sc_in  <sc_lv<2>> i_code;
    sc_out <sc_lv<4>> o_code;


    // Architecture Statement - Similar to Process Statement
    void p1()
    {
        if      (i_code.read() == "00") o_code = "1110"; 
        else if (i_code.read() == "01") o_code = "1101";
        else if (i_code.read() == "10") o_code = "1011";
        else                            o_code = "0111";
    }


    // Constructor
    SC_CTOR(decoder_2_4_active_low_out__behavior) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_code
                  << o_code
                  ;
    }
};



SC_MODULE(decoder_2_4_active_low_out__equation) 
{
    //  Define IO Ports
    sc_in  <sc_lv<2>> i_code;
    sc_out <sc_lv<4>> o_code;


    // Architecture Statement - Similar to Process Statement
    void p1()
    {
        sc_lv<4> o;

        o[0] = (i_code.read()[1].to_bool()) or (i_code.read()[0].to_bool());
        o[1] = (not i_code.read()[0].to_bool()) or (i_code.read()[1].to_bool());
        o[2] = (not i_code.read()[1].to_bool()) or (i_code.read()[0].to_bool());
        o[3] = (not i_code.read()[1].to_bool()) or (not i_code.read()[0].to_bool());

        o_code.write(o);
    }


    // Constructor
    SC_CTOR(decoder_2_4_active_low_out__equation) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_code
                  << o_code
                  ;
    }
};

#endif