#ifndef nand4_gate_H
#define nand4_gate_H

#include "systemc.h"

using namespace std;


/////////////////////////////////////////////////////
//  Equation Model
/////////////////////////////////////////////////////
SC_MODULE(nand4__equation) 
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
        o_f.write(!(i_a.read() && i_b.read() && i_c.read() && i_d.read()));
    }


    // Constructor
    SC_CTOR(nand4__equation) 
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
SC_MODULE(nand4__behavior) 
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
        if (i_a.read() && i_b.read() && i_c.read() && i_d.read())
            o_f.write(0);
        else
            o_f.write(1);
    }


    // Constructor
    SC_CTOR(nand4__behavior) 
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
//  Component Model - Self
///////////////////////////////////////////////////////
#include "nand2_gate.h"

SC_MODULE(nand4_cmpnt_self) 
{
    //  Define IO Ports
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;

    //  Component Instances
    nand2_gate nand2_1;
    nand2_gate nand2_2;
    nand2_gate nand2_3;
    nand2_gate nand2_4;
    nand2_gate nand2_5;

    //  Internal Signals
    sc_signal <bool> fi1;
    sc_signal <bool> fi2;
    sc_signal <bool> fi3;
    sc_signal <bool> fi4;

    // Constructor
    SC_CTOR(nand4_cmpnt_self) : 
                                nand2_1("G1"),
                                nand2_2("G2"),
                                nand2_3("G3"),
                                nand2_4("G4"),
                                nand2_5("G5")
    {
        nand2_1(i_a, i_b, fi1);
        nand2_2(fi1, fi1, fi2); // NOT
        nand2_3(i_c, i_d, fi3);
        nand2_4(fi3, fi3, fi4); // NOT
        nand2_5(fi2, fi4, o_f);
    }
};



///////////////////////////////////////////////////////
//  Component Model - Primitive
///////////////////////////////////////////////////////
#include  "and2_gate.h"
#include  "not1_gate.h"

SC_MODULE(nand4_cmpnt_prim) 
{
    //  Define IO Ports
    sc_in  <bool> i_a;
    sc_in  <bool> i_b;
    sc_in  <bool> i_c;
    sc_in  <bool> i_d;
    sc_out <bool> o_f;

    //  Component Instances
    and2_gate and2_1;
    and2_gate and2_2;
    and2_gate and2_3;
    not1_gate not1_1;

    //  Internal Signals
    sc_signal <bool> fi1;
    sc_signal <bool> fi2;
    sc_signal <bool> fi3;

    // Constructor
    SC_CTOR(nand4_cmpnt_prim) : 
                                 and2_1("G11"),
                                 and2_2("G22"),
                                 and2_3("G33"),
                                 not1_1("G44")
    {
        and2_1(i_a, i_b, fi1);
        and2_2(i_c, i_d, fi2);
        and2_3(fi1, fi2, fi3);
        not1_1(fi3,      o_f);
    }
};




#endif