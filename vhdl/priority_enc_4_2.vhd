-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_4_2.do
library ieee;
use ieee.std_logic_1164.all;


  -- (input  [3:0] i_code,
   -- output [1:0] o_code,
   -- output       o_valid);
entity priority_enc_4_2 is
  port ( 
         i_code : in  std_logic_vector(3 downto 0);
         o_code : out std_logic_vector(1 downto 0);
         o_valid: out std_logic);
end priority_enc_4_2;



architecture equation of priority_enc_4_2 is
  begin
    -- o_f <= (i_a or i_b or i_c or i_d);
    
    -- o_code <= "01";
    -- o_valid <= '1';
    
    o_code <= "00" when i_code(0) = '1' else 
              "01" when i_code(1) = '1' else 
              "10" when i_code(2) = '1' else 
              "11" when i_code(3) = '1' else 
              "00";
              
    o_valid <= i_code(0) or 
               i_code(1) or 
               i_code(2) or 
               i_code(3); 
    
  -- assign o_code = i_code[0] ? 2'b00:
                  -- i_code[1] ? 2'b01:
                  -- i_code[2] ? 2'b10:
                  -- i_code[3] ? 2'b11:
                  -- 2'b00;
           
  -- // equation model
  -- assign o_valid  = i_code[0] |
                    -- i_code[1] |
                    -- i_code[2] |
                    -- i_code[3];
    
    
    
end architecture equation;


-- ------------------------------
-- Behavior Model
-- ------------------------------
-- architecture behavior of priority_enc_4_2 is
  -- begin

           
    -- o_f <= '1' when i_a = '1' else 
           -- '1' when i_b = '1' else 
           -- '1' when i_c = '1' else 
           -- '1' when i_d = '1' else 
           -- '0';
-- end architecture behavior;



    
    








