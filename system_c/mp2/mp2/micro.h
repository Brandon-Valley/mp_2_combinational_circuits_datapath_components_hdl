#ifndef micro_H
#define micro_H

#include "systemc.h"

using namespace std;


SC_MODULE(micro__behavior) 
{
    //  Define IO Ports
    sc_in  <bool>     i_en  ;
    sc_in  <sc_lv<4>> i_code;
    sc_out <sc_logic>     o_A   ;
    sc_out <sc_logic>     o_L   ;
    sc_out <sc_logic>     o_B   ;


    // Architecture Statement - Similar to Process Statement
    void p1()
    {

        //if (i_en)
        //{
        //    if (i_sel_code.read() == "00")  o_code = i_code_0;
        //    if (i_sel_code.read() == "01")  o_code = i_code_1;
        //    if (i_sel_code.read() == "10")  o_code = i_code_2;
        //    if (i_sel_code.read() == "11")  o_code = i_code_3;
        //}
        //else
        //    o_code = "00000000";

        //o_A = "1";
        //o_L = "0";
        //o_B = "1";

        //o_A = SC_LOGIC_0;
        //o_B = SC_LOGIC_1;
        ////o_L.write('0');
        ////o_B.write('Z');

        ////o_L = '0';
        ////o_B.write('z');
        //o_B = SC_LOGIC_Z;



        if (!i_en)
        {
            o_A = SC_LOGIC_Z;
            o_L = SC_LOGIC_Z;
            o_B = SC_LOGIC_Z;
        }
        else
        {
            if ( i_code.read() == "1010" ||
                 i_code.read() == "1011" ||
                 i_code.read() == "1100")
                                            o_A = SC_LOGIC_1;
            else
                                            o_A = SC_LOGIC_0;

            if ( i_code.read() == "0011" ||
                 i_code.read() == "0100" ||
                 i_code.read() == "0010" ||
                 i_code.read() == "1110")
                                            o_L = SC_LOGIC_1;
            else
                                            o_L = SC_LOGIC_0;

            if (i_code.read() == "1111")
                                            o_B = SC_LOGIC_1;
            else
                                            o_B = SC_LOGIC_0;

        }


    }


    // Constructor
    SC_CTOR(micro__behavior) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_en  
                  << i_code 
                  ;
    }
};

#endif