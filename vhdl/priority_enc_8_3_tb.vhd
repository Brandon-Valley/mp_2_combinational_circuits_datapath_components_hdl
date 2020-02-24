-- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_8_3.do

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity priority_enc_8_3_tb is
end entity priority_enc_8_3_tb;

architecture verify of priority_enc_8_3_tb is


  signal i_code : std_logic_vector(7 downto 0);
  signal o_code : std_logic_vector(2 downto 0);
  
  -- signal i_code : std_logic_vector(3 downto 0);
  -- signal o_code : std_logic_vector(1 downto 0);
  -- signal o_valid: std_logic;
  
  signal input : std_logic_vector (7 downto 0) := "00000000";


  
  

begin
  duv: entity work.priority_enc_8_3(equation)
    -- port map( i_a => i_a,
              -- i_b => i_b,
              -- i_c => i_c,
              -- i_d => i_d,
              -- o_f => o_f);
    port map(i_code => i_code,
             o_code => o_code);
    
    
    
    
    
              -- i_code => i_code,
              -- o_code => o_code,
              -- o_valid => o_valid);

              
  apply_test_cases : process is
    procedure apply_test
      ( input_test : in std_logic_vector(7 downto 0)) is
      -- ( e0, e1, e2, e3 : in std_logic) is
    begin 
  
      i_code <= input_test;
  
      -- i_code(0) <= e0;
      -- i_code(1) <= e1;
      -- i_code(2) <= e2;
      -- i_code(3) <= e3;
      
      
      wait for 1 ms;
    end procedure apply_test;
    
  begin
    for i in 0 to 258 loop
      -- apply_test(input(3), input(2), input(1), input(0));
      apply_test(input);
      
      -- i_code <= input;
      -- i_code <= "0010";
      -- wait for 1 ms;
      
      
      input <= input + "0001";
     end loop;
  
  
  
    -- -- test
    -- apply_test('0', '0', '0', '0');
    -- apply_test('0', '1', '0', '0');
    -- apply_test('1', '1', '1', '1');


    
    wait;
end process apply_test_cases;

end architecture verify;

    
    
    
    
    
    
-- begin
  -- -- Model Options:  cmpnt, equation, behavior
  -- duv: entity work.OR4(cmpnt)
    -- port map( i_a => i_a,
              -- i_b => i_b,
              -- i_c => i_c,
              -- i_d => i_d,
              -- o_f => o_f);
              
  -- apply_test_cases : process is
    -- procedure apply_test
      -- ( e0, e1, e2, e3 : in std_logic) is
    -- begin 
      -- i_a <= e0;
      -- i_b <= e1;
      -- i_c <= e2;
      -- i_d <= e3;
      -- wait for 1 ms;
    -- end procedure apply_test;
    
  -- begin
    -- for i in 0 to 16 loop
      -- apply_test(input(3), input(2), input(1), input(0));
      -- input <= input + "0001";
     -- end loop;
  
  
  
    -- test
    -- -- apply_test('0', '0', '0', '0');
    -- -- apply_test('0', '1', '0', '0');
    -- -- apply_test('1', '1', '1', '1');


    
    -- wait;
-- end process apply_test_cases;

-- end architecture verify;

    

    


    



    




  
  

