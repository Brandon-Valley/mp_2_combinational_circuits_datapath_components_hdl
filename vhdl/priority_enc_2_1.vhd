-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_2_1.do
library ieee;
use ieee.std_logic_1164.all;



entity priority_enc_2_1 is
  port ( 
         i_code : in  std_logic_vector(3 downto 0);
         o_code : out std_logic_vector(1 downto 0);
         o_valid: out std_logic);
end priority_enc_2_1;



architecture equation of priority_enc_2_1 is
  begin

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




    
    








