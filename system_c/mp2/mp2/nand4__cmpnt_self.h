//#ifndef nand4_cmpnt_self_H
//#define nand4_cmpnt_self_H
//
//#include "systemc.h"
//
//#include <cassert>
//
//// Use (void) to silent unused warnings.
//#define assertm(exp, msg) assert(((void)msg, exp))
//
//
//#include "_tb_master.h"
//#include "nand2_gate.h"
//using namespace std;
//
//
//SC_MODULE(nand4_cmpnt_self) 
//{
//    //=============================//
//    //  Define IO Ports
//    //=============================//
//    sc_in  <bool> i_a;
//    sc_in  <bool> i_b;
//    sc_in  <bool> i_c;
//    sc_in  <bool> i_d;
//    sc_out <bool> o_f;
//
//    //=============================//
//    //  Component Instances
//    //=============================//
//    nand2_gate nand2_0;
//    //nand2_gate nand2_1;
//    //nand2_gate nand2_2;
//    //nand2_gate nand2_3;
//    //nand2_gate nand2_4;
//
//    // Internal Signals
//    sc_signal <bool> fi0;
//
//    // Constructor
//    SC_CTOR(nand4_cmpnt_self) : nand2_0("NAND2_0")
//    {
//        //nand2_0.i_a(i_a);
//        //nand2_0.i_b(i_b);
//        //nand2_0.o_f(o_f);
//        nand2_0(i_a, i_b, o_f);
//    }
//
//};
//#endif