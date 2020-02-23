-- python C:\Users\BrANDon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__decoder_2_4_active_low_out.do
library ieee;
use ieee.std_logic_1164.all;

-- sim:/decoder_2_4_active_low_out_tb/i_code \
-- sim:/decoder_2_4_active_low_out_tb/0_code_n 
entity decoder_2_4_active_low_out is
  port ( 
  
        i_code   : in  std_logic_vector(1 downto 0);
        o_code_n : out std_logic_vector(3 downto 0));

end decoder_2_4_active_low_out;


architecture equation of decoder_2_4_active_low_out is
  begin

    o_code_n <= "0010";
    
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
