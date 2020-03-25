#ifndef or4_gate_H
#define or4_gate_H

#include "systemc.h"

using namespace std;

   
/////////////////////////////////////////////////////
//  Equation Model
/////////////////////////////////////////////////////
SC_MODULE(or4__equation) 
{
    //  Define IO Ports
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;


    //=======================================================//
    // Architecture Statement - Similar to Process Statement
    //=======================================================//
    void p1()
    {
        o_f.write(i_a.read() || i_b.read() || i_c.read() || i_d.read());
    }


    // Constructor
    SC_CTOR(or4__equation) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_a
                  << i_b
                  << i_c
                  << i_d
                  ;
    }
};



/////////////////////////////////////////////////////
//  Behavior Model
/////////////////////////////////////////////////////
SC_MODULE(or4__behavior) 
{
    //  Define IO Ports
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;


    //=======================================================//
    // Architecture Statement - Similar to Process Statement
    //=======================================================//
    void p1()
    {
        if (i_a.read() || i_b.read() || i_c.read() || i_d.read())
            o_f.write(1);
        else
            o_f.write(0);
    }


    // Constructor
    SC_CTOR(or4__behavior) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive << i_a
                  << i_b
                  << i_c
                  << i_d
                  ;
    }
};



///////////////////////////////////////////////////////
//  Component Model - Self and Primitive 
///////////////////////////////////////////////////////
#include "or2_gate.h"

SC_MODULE(or4_cmpnt_self) 
{
    //  Define IO Ports
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;

    //  Component Instances
    or2_gate or2_1;
    or2_gate or2_2;
    or2_gate or2_3;

    //  Internal Signals
    sc_signal <bool> fi1;
    sc_signal <bool> fi2;

    // Constructor
    SC_CTOR(or4_cmpnt_self) : 
                                or2_1("G1"),
                                or2_2("G2"),
                                or2_3("G3")
    {
        or2_1(i_a, i_b, fi1);
        or2_2(i_c, i_d, fi2);
        or2_3(fi1, fi2, o_f);
    }
};




#endif