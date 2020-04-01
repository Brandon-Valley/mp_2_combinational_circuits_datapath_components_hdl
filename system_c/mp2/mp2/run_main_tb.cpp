#include <systemc.h>

#include "nand4_gate__tb.h"
#include "or4_gate__tb.h"
#include "xor_gate__tb.h"
#include "priority_enc_4_2__tb.h"
#include "decoder_2_4_active_low_out__tb.h"
#include "SN74145__tb.h"
#include "deMUX_1_8__tb.h"
#include "MUX_4_1_8_bit__tb.h"
#include "micro__tb.h"
#include "MUX_4_1__tb.h"


int sc_main(int argc, char* argv[])
{
    //nand4_gate__tb();
    //or4_gate__tb();
    //xor4_gate__tb();

    priority_enc_4_2__tb();
    //decoder_2_4_active_low_out__tb();
    //SN74145__tb();
    //deMUX_1_8__tb();
    //MUX_4_1_8_bit__tb();
    //micro__tb();
    //MUX_4_1__tb();

    return 0;
}

 

































//#include <iostream>
//// uncomment to disable assert()
//// #define NDEBUG
//#include <cassert>
//
//// Use (void) to silent unused warnings.
//#define assertm(exp, msg) assert(((void)msg, exp))
//using namespace std;
//
//int main()
//{
//    int i = 5;
//
//    if (i == 6)
//        cout << "yay, the program was a success!" << endl;
//    assertm(2+2==5, "I want this error to work like the first one");
//
//}


//
//#include <iostream>
//
//using namespace std;
//const int i = 1;
//int main()
//{
//	cout << "hi <=" << endl;
//	//int i = 1;
//	//static_assert(i == 0,"Swap requires copying");
//	static_assert((i == 0),"Swap requires copying");
//}

