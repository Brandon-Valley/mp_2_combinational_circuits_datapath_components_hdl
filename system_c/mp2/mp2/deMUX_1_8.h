#ifndef deMUX_1_8_H
#define deMUX_1_8_H

#include "systemc.h"

using namespace std;


SC_MODULE(deMUX_1_8__behavior) 
{
    //  Define IO Ports
    sc_in  <bool>     i_a       ;
    sc_in  <sc_lv<3>> i_sel_code;
    sc_out <sc_lv<8>> o_code    ;


    // Architecture Statement - Similar to Process Statement
    void p1()
    {

        if ( ! i_a.read() )
            o_code.write("00000000");
        else
        {
            if ( i_sel_code.read() == "000" )  o_code.write("00000001");
            if ( i_sel_code.read() == "001" )  o_code.write("00000010");
            if ( i_sel_code.read() == "010" )  o_code.write("00000100");
            if ( i_sel_code.read() == "011" )  o_code.write("00001000");
            if ( i_sel_code.read() == "100" )  o_code.write("00010000");
            if ( i_sel_code.read() == "101" )  o_code.write("00100000");
            if ( i_sel_code.read() == "110" )  o_code.write("01000000");
            if ( i_sel_code.read() == "111" )  o_code.write("10000000");
        }
    }


    // Constructor
    SC_CTOR(deMUX_1_8__behavior) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_a       
                  << i_sel_code
                  ;
    }
};

#endif