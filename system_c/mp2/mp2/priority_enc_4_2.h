#ifndef priority_enc_4_2_gate_H
#define priority_enc_4_2_gate_H

#include "systemc.h"

using namespace std;



SC_MODULE(priority_enc_4_2__behavior) 
{
    //  Define IO Ports
    sc_in  <sc_lv<4>> i_code;
    sc_out <sc_lv<2>> o_code;
    sc_out  <bool>    o_valid;


    // Architecture Statement - Similar to Process Statement
    void p1()
    {
        if      (i_code.read()[0].to_bool()) { o_code.write("00");   o_valid.write('1'); }
        else if (i_code.read()[1].to_bool()) { o_code.write("01");   o_valid.write('1'); }
        else if (i_code.read()[2].to_bool()) { o_code.write("10");   o_valid.write('1'); }
        else if (i_code.read()[3].to_bool()) { o_code.write("11");   o_valid.write('1'); }
        else                                   o_code.write("00");        
    }


    // Constructor
    SC_CTOR(priority_enc_4_2__behavior) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_code
                  ;
    }
};



SC_MODULE(priority_enc_4_2__equation) 
{
    //  Define IO Ports
    sc_in  <sc_lv<4>> i_code;
    sc_out <sc_lv<2>> o_code;
    sc_out  <bool>    o_valid;


    // Architecture Statement - Similar to Process Statement
    void p1()
    {
        sc_lv<2> o;

        cout << i_code << endl;
        cout << o << endl;

        o[0] = (i_code.read()[1].to_bool() & ! i_code.read()[0].to_bool()) | (i_code.read()[3].to_bool() & ! i_code.read()[2].to_bool() & ! i_code.read()[0].to_bool());
        o[1] = (i_code.read()[2].to_bool() & ! i_code.read()[1].to_bool() & ! i_code.read()[0].to_bool()) | (i_code.read()[3].to_bool() & ! i_code.read()[1].to_bool() & ! i_code.read()[0].to_bool());

        o_code.write(o);

        o_valid.write(i_code.read()[0].to_bool() ||
                      i_code.read()[1].to_bool() ||
                      i_code.read()[2].to_bool() ||
                      i_code.read()[3].to_bool() );
    }


    // Constructor
    SC_CTOR(priority_enc_4_2__equation) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_code
                  ;
    }
};

#endif