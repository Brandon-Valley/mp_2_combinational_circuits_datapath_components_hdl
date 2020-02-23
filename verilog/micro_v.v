// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__micro_v.do


//  Behavior Model
module micro_v
  (
  input        i_en,
  input  [3:0] i_code,
  output       o_A,
  output       o_L,
  output       o_B);
  
  
  assign o_A = ~i_en ? 'Z:
               i_code == 4'b1010 | 
               i_code == 4'b1011 |
               i_code == 4'b1100 ? 1 : 0;
  
  assign o_L = ~i_en ? 'Z:
               i_code == 4'b0011 | 
               i_code == 4'b0100 |
               i_code == 4'b0010 |
               i_code == 4'b1110 ? 1 : 0;
               
  assign o_B = ~i_en ? 'Z:
               i_code == 4'b1111 ? 1 : 0;
  
endmodule



