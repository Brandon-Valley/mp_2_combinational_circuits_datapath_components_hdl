// Code your testbench here
// or browse Examples
#ifndef nand2_H
#define nand2_H

#include "systemc.h"

SC_MODULE(nand2) {
  sc_in <bool> X, Y;
  sc_out <bool> F1;
  
  void p1() {
    F1.write(!(X.read() && Y.read()));
  }
  
  SC_CTOR(nand2) {
    SC_METHOD(p1);
    sensitive << X << Y;
  }
};
#endif