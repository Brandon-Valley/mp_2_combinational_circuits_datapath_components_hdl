-- python C:\Users\BrANDon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__decoder_2_4_active_low_out.do
library ieee;
use ieee.std_logic_1164.all;


entity decoder_2_4_active_low_out is
  port ( 
        i_code   : in  std_logic_vector(1 downto 0);
        o_code_n : out std_logic_vector(3 downto 0));

end decoder_2_4_active_low_out;


----------------------------------
-- Equation Model
----------------------------------
architecture equation of decoder_2_4_active_low_out is
  begin

  o_code_n(0) <= (i_code(1)) or (i_code(0));
  o_code_n(1) <= (not i_code(0)) or (i_code(1));
  o_code_n(2) <= (not i_code(1)) or (i_code(0));
  o_code_n(3) <= (not i_code(1)) or (not i_code(0));
  
    -- o_code_n <= "1110" when i_code = "00" else
                -- "1101" when i_code = "01" else
                -- "1011" when i_code = "10" else
                -- "0111";
end architecture equation;

----------------------------------
-- Behavioral Model
----------------------------------
architecture behavior of decoder_2_4_active_low_out is
  begin

    o_code_n <= "1110" when i_code = "00" else
                "1101" when i_code = "01" else
                "1011" when i_code = "10" else
                "0111";
                
end architecture behavior;








