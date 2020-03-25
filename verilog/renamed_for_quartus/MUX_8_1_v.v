// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__MUX_8_1_v.do


///////////////////////////////////////////
//  Behavior Model
///////////////////////////////////////////
module MUX_8_1_v
// module MUX_8_1_v__behavior
  (
  input        i_en,
  input  [7:0] i_code,
  input  [2:0] i_sel_code, 
  output       o_f);
  

  assign o_f = i_sel_code == 3'b000 & i_code[0] & i_en ? 1 :
               i_sel_code == 3'b001 & i_code[1] & i_en ? 1 :
               i_sel_code == 3'b010 & i_code[2] & i_en ? 1 :
               i_sel_code == 3'b011 & i_code[3] & i_en ? 1 :
               i_sel_code == 3'b100 & i_code[4] & i_en ? 1 :
               i_sel_code == 3'b101 & i_code[5] & i_en ? 1 :
               i_sel_code == 3'b110 & i_code[6] & i_en ? 1 :
               i_sel_code == 3'b111 & i_code[7] & i_en ? 1 : 0;
  
endmodule


///////////////////////////////////////////
//  Component Model - Using 2:1 MUXs
///////////////////////////////////////////
// module MUX_8_1_v
module MUX_8_1_v__cmpnt
  (
  input        i_en,
  input  [7:0] i_code,
  input  [2:0] i_sel_code, 
  output       o_f);
  
  wire fi01;
  wire fi23;
  wire fi45;
  wire fi67;
  wire fi0123;
  wire fi4567;
  
  MUX_2_1_v mux0 (i_en, i_code[1:0], i_sel_code[0], fi01);
  MUX_2_1_v mux1 (i_en,                                   {fi23, fi01}, i_sel_code[1], fi0123);
  MUX_2_1_v mux2 (i_en, i_code[3:2], i_sel_code[0], fi23);
  MUX_2_1_v mux3 (i_en,                                                                         {fi4567, fi0123}, i_sel_code[2], o_f);
  MUX_2_1_v mux4 (i_en, i_code[5:4], i_sel_code[0], fi45);
  MUX_2_1_v mux5 (i_en,                                   {fi67, fi45}, i_sel_code[1], fi4567);
  MUX_2_1_v mux6 (i_en, i_code[7:6], i_sel_code[0], fi67);
                                                         

endmodule


















































