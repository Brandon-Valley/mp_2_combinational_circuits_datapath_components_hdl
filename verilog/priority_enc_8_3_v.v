// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_8_3_v.do

////////////////////////////////
// Not Using Always
////////////////////////////////
module priority_enc_8_3_v
  (
  input  [7:0] i_code,
  output [2:0] o_code);
  
  // assign o_code = 3'b010;
   
   
  wire [1:0] f0_code;
  wire       f0_v;
  wire [1:0] f1_code;
  wire       f1_v;
       
  priority_enc_4_2_v__no_always pe42_0 (i_code[3:0], f0_code, f0_v);  
  priority_enc_4_2_v__no_always pe42_1 (i_code[7:4], f1_code, f1_v);  
  
  priority_enc_2_1_v pe21_0({f0_code[0], f1_code[0]}, f0_v, o_code[0]);  
  priority_enc_2_1_v pe21_1({f0_code[1], f1_code[1]}, f0_v, o_code[1]);  
  priority_enc_2_1_v pe21_2({f0_v      , f1_v      }, 1'b1, o_code[2]);  
  
  // priority_enc_2_1_v pe21_0({f0_code[1], f1_code[1]}, f0_v, o_code[0]);  
  // priority_enc_2_1_v pe21_1({f0_code[0], f1_code[0]}, f0_v, o_code[1]);  
  // priority_enc_2_1_v pe21_2({f0_v      , f1_v      }, 1   , o_code[2]);  
   
  // // behavior model
  // // line 0 hase highest priority
  // assign o_code = i_code[0] ? 2'b00:
                  // i_code[1] ? 2'b01:
                  // i_code[2] ? 2'b11:
                  // 2'b00;
           
  // // equation model
  // assign o_valid  = i_code[0] |
                    // i_code[1] |
                    // i_code[2] |
                    // i_code[3];
                 
endmodule

   
  // wire fi1, fi2, fi3, fi4; // internal outputs
   
  // NAND2_v nand1 (i_a, i_b, fi1);
  // NAND2_v nand2 (fi1, fi1, fi2); // NOT
  // NAND2_v nand3 (i_c, i_d, fi3);
  // NAND2_v nand4 (fi3, fi3, fi4); // NOT
  // NAND2_v nand5 (fi2, fi4, o_f);






