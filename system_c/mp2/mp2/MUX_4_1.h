#ifndef MUX_4_1_H
#define MUX_4_1_H

#include "systemc.h"

using namespace std;


SC_MODULE(MUX_4_1__behavior) 
{
    //  Define IO Ports
    sc_in  <bool>     i_en      ;
    sc_in  <sc_lv<4>> i_code    ;
    sc_in  <sc_lv<2>> i_sel_code;
    sc_out <sc_logic> o_f       ;


    // Architecture Statement - Similar to Process Statement
    void p1()
    {
        if ( ! i_en )
            o_f.write(SC_LOGIC_Z);
        else
        {
            if      ( i_sel_code.read() == "00" && i_code.read()[0].to_bool() )  o_f.write(SC_LOGIC_1);
            else if ( i_sel_code.read() == "01" && i_code.read()[1].to_bool() )  o_f.write(SC_LOGIC_1);
            else if ( i_sel_code.read() == "10" && i_code.read()[2].to_bool() )  o_f.write(SC_LOGIC_1);
            else if ( i_sel_code.read() == "11" && i_code.read()[3].to_bool() )  o_f.write(SC_LOGIC_1);
            else                                                                 o_f.write(SC_LOGIC_0);
        }
    }


    // Constructor
    SC_CTOR(MUX_4_1__behavior) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_en      
                  << i_code    
                  << i_sel_code
                  ;
    }
};

#endif