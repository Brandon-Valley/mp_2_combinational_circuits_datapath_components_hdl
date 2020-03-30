


//  Behavior Model
module priority_enc_2_1_v
  (
  input  [1:0] i_code,
  output       o_f);
  

  assign o_f =  i_code[0] ? 0 : 
                i_code[1] ? 1 : 0;  
endmodule

