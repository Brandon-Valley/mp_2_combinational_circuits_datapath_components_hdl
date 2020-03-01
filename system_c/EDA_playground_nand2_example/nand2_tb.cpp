#include <systemc.h>
#include "nand2.h"

int sc_main(int argc, char* argv[])
{
  sc_signal<bool> X, Y, F1; 
  
  nand2 DUT("nand2.h");
  
  // port map
  DUT.X(X);
  DUT.Y(Y);
  DUT.F1(F1);
  
  // trace file to look at sim output
  sc_trace_file *fp1;  //create VCD file: file pointer fp1
  fp1 = sc_create_vcd_trace_file("wave1");  // open(fp1), create wave1.vcd file
  
  // fp1 -> set_time_unit(100, SC_PS);  // set tracing resolution to ns
  
  // add signals to trace file
  sc_trace(fp1, X, "X");
  sc_trace(fp1, Y, "Y");
  sc_trace(fp1, F1, "F1");
  
  // sim
  X = false;
  Y = false;
  
  sc_start(10, SC_NS); // run sim for 10 ns
  
  X = true;
  Y = true;
  
  sc_start(10, SC_NS); // run sim for 10 ns
  
  // last change that wont show on EDA playground
  X = false;
  Y = false;
  
  sc_start(10, SC_NS); // run sim for 10 ns

  
  sc_close_vcd_trace_file(fp1); // close(fp1)
  
  return 0;
  
}
  