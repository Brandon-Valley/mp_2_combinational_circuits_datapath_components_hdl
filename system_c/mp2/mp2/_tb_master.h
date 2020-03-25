#ifndef _TB_MASTER_H
#define _TB_MASTER_H


#include <string>
using namespace std;


char const EQUATION_MODEL[]       = "EQUATION_MODEL__KEY";
char const BEHAVIOR_MODEL[]       = "BEHAVIOR_MODEL__KEY";
char const COMPONENT_MODEL_SELF[] = "COMPONENT_MODEL_SELF__KEY";
char const COMPONENT_MODEL_PRIM[] = "COMPONENT_MODEL_PRIM__KEY";


//==================================================//
//  Define which test-bench to run with which model
//==================================================//

/////////////////////////
// nand4_gate
/////////////////////////
//string const TB_TO_RUN = "nand4_gate";  string const MODEL = EQUATION_MODEL;
//string const TB_TO_RUN = "nand4_gate";  string const MODEL = BEHAVIOR_MODEL;
string const TB_TO_RUN = "nand4_gate";  string const MODEL = COMPONENT_MODEL_SELF;




#endif


    