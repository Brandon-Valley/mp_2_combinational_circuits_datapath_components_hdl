#ifndef not1_gate_H
#define not1_gate_H


#include "systemc.h"
 

SC_MODULE(not1_gate) 
{   
    //  Define IO Ports
    sc_in  <bool> i_a;                        
    sc_out <bool> o_f;                         


    //=======================================================//
    // Architecture Statement - Similar to Process Statement
    //=======================================================//
    void p1() 
    {
        o_f.write(!i_a.read());
    }


    // Constructor
    SC_CTOR(not1_gate) 
    {
        SC_METHOD(p1);
        sensitive << i_a
                  ;
    }
};
#endif