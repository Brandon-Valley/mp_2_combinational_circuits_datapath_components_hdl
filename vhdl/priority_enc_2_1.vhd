-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_2_1.do
library ieee;
use ieee.std_logic_1164.all;

-- //  Behavior Model
-- module priority_enc_2_1_v
  -- (
  -- input  [1:0] i_code,
  -- output       o_f);
  

  -- assign o_f =  i_code[0] ? 0 : 
                -- i_code[1] ? 1 : 0;  
-- endmodule


entity priority_enc_2_1 is
  port ( 
         i_code : in  std_logic_vector(1 downto 0);
         o_f    : out std_logic);
         
end priority_enc_2_1;



architecture equation of priority_enc_2_1 is
  begin

    o_f <= '0' when i_code(0) = '1' else 
           '1' when i_code(1) = '1';
end architecture equation;




    
    








