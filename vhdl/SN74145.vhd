-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__SN74145.do
library ieee;
use ieee.std_logic_1164.all;


  -- (input  [3:0] i_code,
   -- output [1:0] o_code,
   -- output       o_valid);
entity SN74145 is
  port ( 
         i_code : in  std_logic_vector(3 downto 0);
         o_code : out std_logic_vector(1 downto 0);
         o_valid: out std_logic);
end SN74145;



architecture equation of SN74145 is
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

    
    
end architecture equation;


    
    








