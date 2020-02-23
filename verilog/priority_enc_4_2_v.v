// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_4_2_v.do
//
////////////////////////////////
// Not Using Always
////////////////////////////////
module priority_enc_4_2_v__no_always
  (input  [3:0] i_code,
   output [1:0] o_code,
   output       o_valid);
   
  // behavior model
  // line 0 hase highest priority
  assign o_code = i_code[0] ? 2'b00:
                  i_code[1] ? 2'b01:
                  i_code[2] ? 2'b11:
                  2'b00;
           
  // equation model
  assign o_valid  = i_code[0] |
                    i_code[1] |
                    i_code[2] |
                    i_code[3];
                 
endmodule


////////////////////////////////
// Using Always
////////////////////////////////
module priority_enc_4_2_v__always (
  input  [3:0] i_code,
  output reg [1:0] o_code,
  output reg     o_valid);

  always @*
    case (i_code)
      4'b0000 : begin o_code = 2'b00; o_valid = 0; end
      4'b0001 : begin o_code = 2'b00; o_valid = 1; end
      4'b0010 : begin o_code = 2'b01; o_valid = 1; end
      4'b0011 : begin o_code = 2'b00; o_valid = 1; end
      4'b0100 : begin o_code = 2'b10; o_valid = 1; end
      4'b0101 : begin o_code = 2'b00; o_valid = 1; end
      4'b0110 : begin o_code = 2'b01; o_valid = 1; end
      4'b0111 : begin o_code = 2'b00; o_valid = 1; end
      4'b1000 : begin o_code = 2'b11; o_valid = 1; end
      4'b1001 : begin o_code = 2'b00; o_valid = 1; end
      4'b1010 : begin o_code = 2'b01; o_valid = 1; end
      4'b1011 : begin o_code = 2'b00; o_valid = 1; end
      4'b1100 : begin o_code = 2'b10; o_valid = 1; end
      4'b1101 : begin o_code = 2'b00; o_valid = 1; end
      4'b1110 : begin o_code = 2'b01; o_valid = 1; end
      4'b1111 : begin o_code = 2'b00; o_valid = 1; end
    endcase
                 
endmodule










