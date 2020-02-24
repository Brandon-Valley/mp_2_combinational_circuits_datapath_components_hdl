-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_8_3.do
library ieee;
use ieee.std_logic_1164.all;



entity priority_enc_8_3 is
  port ( 
         i_code : in  std_logic_vector(7 downto 0);
         o_code : out std_logic_vector(2 downto 0));
end priority_enc_8_3;



architecture equation of priority_enc_8_3 is
  begin

    o_code <= "001";

    -- o_code <= "00" when i_code(0) = '1' else 
              -- "01" when i_code(1) = '1' else 
              -- "10" when i_code(2) = '1' else 
              -- "11" when i_code(3) = '1' else 
              -- "00";
              
    -- o_valid <= i_code(0) or 
               -- i_code(1) or 
               -- i_code(2) or 
               -- i_code(3); 
    

    
    
    
end architecture equation;





-- `timescale 1ms/1ms

-- module priority_enc_8_3_tb_v;
  
  -- reg  [7:0] i_code;
  -- wire [2:0] o_code;
  
  -- // reg i_a, i_b, i_c, i_d;
  -- reg [7:0] d_in = 4'b0000;
  -- integer i;
  
  -- // duv port map options:
  -- priority_enc_8_3_v duv (.i_code(i_code), .o_code(o_code)); 
  
  -- //procedure statement
  -- initial begin

      -- for (i = 0 ; i < 258 ; i = i + 1) begin
        -- #1000 i_code = d_in;
        -- // #1000 o_code[0] = d_in[0]; o_code[1] = d_in[1]; o_code[2] = d_in[]; i_d = d_in[4];
        -- d_in = d_in + 1;
      -- end

      
      
      
          
    -- end

-- endmodule









