library ieee;
use ieee. std_logic_1164.all;
use work.logicpack.all;

entity funcAND is
PORT( A,B: in std_logic_vector(3 downto 0);
Q: out std_logic_vector(3 downto 0));
end funcAND ;

architecture behavioral of funcAND is
begin
Q<= andpack(A,B); 
end behavioral;
