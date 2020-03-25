#ifndef SN74145_gate_H
#define SN74145_gate_H

#include "systemc.h"

using namespace std;



SC_MODULE(SN74145__behavior) 
{
    //  Define IO Ports
    sc_in <bool> i_a     ;
    sc_in <bool> i_b     ;
    sc_in <bool> i_c     ;
    sc_in <bool> i_d     ;

    sc_in <bool> i_cs    ;
    sc_in <bool> i_n_cs_0;
    sc_in <bool> i_n_cs_1;

    sc_out<bool> o_0     ;
    sc_out<bool> o_1     ;
    sc_out<bool> o_2     ;
    sc_out<bool> o_3     ;
    sc_out<bool> o_4     ;
    sc_out<bool> o_5     ;
    sc_out<bool> o_6     ;
    sc_out<bool> o_7     ;
    sc_out<bool> o_8     ;
    sc_out<bool> o_9     ;



    // Architecture Statement - Similar to Process Statement
    void p1()
    {
        if (( ! i_a && ! i_b && ! i_c && ! i_d )   &&   (i_cs && ! i_n_cs_0 && ! i_n_cs_1))  o_0 = 1;  else  o_0 = 0;
        if (( ! i_a && ! i_b && ! i_c &&   i_d )   &&   (i_cs && ! i_n_cs_0 && ! i_n_cs_1))  o_1 = 1;  else  o_1 = 0;
        if (( ! i_a && ! i_b &&   i_c && ! i_d )   &&   (i_cs && ! i_n_cs_0 && ! i_n_cs_1))  o_2 = 1;  else  o_2 = 0;
        if (( ! i_a && ! i_b &&   i_c &&   i_d )   &&   (i_cs && ! i_n_cs_0 && ! i_n_cs_1))  o_3 = 1;  else  o_3 = 0;
        if (( ! i_a &&   i_b && ! i_c && ! i_d )   &&   (i_cs && ! i_n_cs_0 && ! i_n_cs_1))  o_4 = 1;  else  o_4 = 0;
        if (( ! i_a &&   i_b && ! i_c &&   i_d )   &&   (i_cs && ! i_n_cs_0 && ! i_n_cs_1))  o_5 = 1;  else  o_5 = 0;
        if (( ! i_a &&   i_b &&   i_c && ! i_d )   &&   (i_cs && ! i_n_cs_0 && ! i_n_cs_1))  o_6 = 1;  else  o_6 = 0;
        if (( ! i_a &&   i_b &&   i_c &&   i_d )   &&   (i_cs && ! i_n_cs_0 && ! i_n_cs_1))  o_7 = 1;  else  o_7 = 0;
        if ((   i_a && ! i_b && ! i_c && ! i_d )   &&   (i_cs && ! i_n_cs_0 && ! i_n_cs_1))  o_8 = 1;  else  o_8 = 0;
        if ((   i_a && ! i_b && ! i_c &&   i_d )   &&   (i_cs && ! i_n_cs_0 && ! i_n_cs_1))  o_9 = 1;  else  o_9 = 0;
    }


    // Constructor
    SC_CTOR(SN74145__behavior) 
    {
        SC_METHOD(p1);

        //  Input Sensitivity List
        sensitive 
                  << i_a     
                  << i_b     
                  << i_c     
                  << i_d     

                  << i_cs    
                  << i_n_cs_0
                  << i_n_cs_1

                  << o_0     
                  << o_1     
                  << o_2     
                  << o_3     
                  << o_4     
                  << o_5     
                  << o_6     
                  << o_7     
                  << o_8     
                  << o_9     
                  ;
    }
};

#endif