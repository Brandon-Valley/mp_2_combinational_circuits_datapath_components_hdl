#ifndef xor2_gate_H
#define xor2_gate_H


#include "systemc.h"

#include "or2_gate.h"
#include "and2_gate.h"
#include "not1_gate.h"
 

SC_MODULE(xor2_gate) 
{   
    //  Define IO Ports
    sc_in  <bool> i_a;                        
    sc_in  <bool> i_b;                        
    sc_out <bool> o_f;                         


  //  Component Instances
    or2_gate  or2_1;
    and2_gate and2_1;
    and2_gate and2_2;
    not1_gate not1_1;

    //  Internal Signals
    sc_signal <bool> fi1;
    sc_signal <bool> fi2;
    sc_signal <bool> fi3;

    // Constructor
    SC_CTOR(xor2_gate) : 
                                or2_1 ("G1"),
                                and2_1("G2"),
                                and2_2("G3"),
                                not1_1("G4")
    {
        or2_1 (i_a, i_b, fi1);
        and2_1(i_a, i_b, fi2);
        not1_1(fi2,      fi3);
        and2_2(fi1, fi3, o_f);
    }
};
#endif