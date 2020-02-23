-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_4_2.do

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity priority_enc_4_2_tb is
end entity priority_enc_4_2_tb;

architecture verify of priority_enc_4_2_tb is
  signal i_a   : std_logic;
  signal i_b   : std_logic;
  signal i_c   : std_logic;
  signal i_d   : std_logic;
  signal o_f   : std_logic;
  signal input : std_logic_vector (3 downto 0) := "0000";

begin
  -- Model Options:  cmpnt, equation, behavior
  duv: entity work.priority_enc_4_2(cmpnt)
    port map( i_a => i_a,
              i_b => i_b,
              i_c => i_c,
              i_d => i_d,
              o_f => o_f);
              
  apply_test_cases : process is
    procedure apply_test
      ( a_test, b_test, c_test, d_test : in std_logic) is
    begin 
      i_a <= a_test;
      i_b <= b_test;
      i_c <= c_test;
      i_d <= d_test;
      wait for 1 ms;
    end procedure apply_test;
    
  begin
    for i in 0 to 16 loop
      apply_test(input(3), input(2), input(1), input(0));
      input <= input + "0001";
     end loop;
  
  
  
    -- -- test
    -- apply_test('0', '0', '0', '0');
    -- apply_test('0', '1', '0', '0');
    -- apply_test('1', '1', '1', '1');


    
    wait;
end process apply_test_cases;

end architecture verify;

    
    
    
    
    
    
    

    

    


    



    




  
  

