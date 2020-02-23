-- python C:\Users\BrANDon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__decoder_2_4_active_low_out.do
library ieee;
use ieee.std_logic_1164.all;


entity decoder_2_4_active_low_out is
  port ( 
  
        i_code   : in  std_logic_vector(1 downto 0);
        o_code_n : out std_logic_vector(3 downto 0));

end decoder_2_4_active_low_out;


architecture equation of decoder_2_4_active_low_out is
  begin

    o_code_n <= "1110" when i_code = "00" else
                "1101" when i_code = "01" else
                "1011" when i_code = "10" else
                "0111";-- when i_code = "11" else '
    
    -- o_A <= 'Z' when i_en = '0'      else
           -- '1' when i_code = "1010" or
                    -- i_code = "1011" or
                    -- i_code = "1100" else '0';
       
    -- o_L <= 'Z' when i_en = '0'      else
           -- '1' when i_code = "0011" or
                    -- i_code = "0100" or
                    -- i_code = "0010" or
                    -- i_code = "1110" else '0';
                
    -- o_B <= 'Z' when i_en = '0'      else
           -- '1' when i_code = "1111" else '0';                

    
    
end architecture equation;
