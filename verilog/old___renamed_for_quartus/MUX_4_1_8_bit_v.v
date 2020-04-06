// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__MUX_4_1_8_bit_v.do



//  Behavior Model
module MUX_4_1_8_bit_v
  (
  input        i_en,
  input  [7:0] i_code_0,
  input  [7:0] i_code_1,
  input  [7:0] i_code_2,
  input  [7:0] i_code_3,
  input  [1:0] i_sel_code, 
  output [7:0] o_code);
  
  
  assign o_code = i_sel_code == 2'b00 & i_en ? i_code_0 :
                  i_sel_code == 2'b01 & i_en ? i_code_1 :
                  i_sel_code == 2'b10 & i_en ? i_code_2 :
                  i_sel_code == 2'b11 & i_en ? i_code_3 : 8'b00000000;
  
endmodule









