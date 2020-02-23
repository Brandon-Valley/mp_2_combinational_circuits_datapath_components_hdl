-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__decoder_2_4_active_low_out.do

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity decoder_2_4_active_low_out_tb is
end entity decoder_2_4_active_low_out_tb;

architecture verify of decoder_2_4_active_low_out_tb is


  signal i_code   : std_logic_vector(1 downto 0);
  signal o_code_n : std_logic_vector(3 downto 0);


  signal input : std_logic_vector (1 downto 0) := "00"; -- must be correct

begin
  duv: entity work.decoder_2_4_active_low_out(equation)

 
  port map(i_code   => i_code  ,   
           o_code_n => o_code_n 
          ); 
              
              
  apply_test_cases : process is
    procedure apply_test
      ( itst : in std_logic_vector(1 downto 0)) is
        
    begin 
        
      i_code <= itst;
      -- i_en       <= itst(4);
        
    
      wait for 1 ms;
    end procedure apply_test;
    
  begin
    for i in 0 to 6 loop
      apply_test(input);
      input <= input + "01";
     end loop;    
    wait;
end process apply_test_cases;

end architecture verify;

    
    