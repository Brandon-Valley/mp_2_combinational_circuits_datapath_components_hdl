
library ieee;
use ieee.std_logic_1164.all;


entity OR2 is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         o_f : out std_logic);
end OR2;

architecture equation of OR2 is
  begin
    o_f <= i_a or i_b;
end equation;




