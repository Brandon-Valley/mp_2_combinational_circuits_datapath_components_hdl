-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_4_2.do
library ieee;
use ieee.std_logic_1164.all;



entity priority_enc_4_2 is
  port ( 
         i_code : in  std_logic_vector(3 downto 0);
         o_code : out std_logic_vector(1 downto 0);
         o_valid: out std_logic);
end priority_enc_4_2;



architecture behavior of priority_enc_4_2 is
  begin

    o_code <= "00" when i_code(0) = '1' else 
              "01" when i_code(1) = '1' else 
              "10" when i_code(2) = '1' else 
              "11" when i_code(3) = '1' else 
              "00";
              
              
    o_valid <= '1' when i_code(0) = '1' else 
               '1' when i_code(1) = '1' else 
               '1' when i_code(2) = '1' else 
               '1' when i_code(3) = '1' else 
               '0';         
    -- o_valid <= i_code(0) or 
               -- i_code(1) or 
               -- i_code(2) or 
               -- i_code(3); 
    
end architecture behavior;


architecture equation of priority_enc_4_2 is
  begin

    -- o_code(0) <= ( i_code(2) = '1' and i_code(3) = '0' ) or ( i_code(0) = '1' and i_code(1) = '0' and i_code(3) = '0' );
    -- o_code(1) <= ( i_code(1) = '1' and i_code(2) = '0' and i_code(3) = '0' ) or (i_code(0) = '1' and i_code(2) = '0' and i_code(3) = '0');

    o_code(0) <= ( i_code(2) and i_code(3) ) or ( i_code(0)  and i_code(1) and i_code(3) );
    o_code(1) <= ( i_code(1) and i_code(2)  and i_code(3) ) or (i_code(0) and i_code(2) and i_code(3) );

    o_valid <= i_code(0) or 
               i_code(1) or 
               i_code(2) or 
               i_code(3); 
    
end architecture equation;



    
    








