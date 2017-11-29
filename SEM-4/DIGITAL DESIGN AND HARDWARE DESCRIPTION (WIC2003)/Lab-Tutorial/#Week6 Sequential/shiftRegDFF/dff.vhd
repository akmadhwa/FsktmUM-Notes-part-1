library ieee;
use ieee. std_logic_1164.all;

entity D_FF is
PORT( CLR,D,CLOCK: in std_logic;
Q: out std_logic);
end D_FF;

architecture behavioral of D_FF is
begin
process(CLOCK)
begin
	if CLR='1' then
		Q<='0';
	elsif (CLOCK='1' and CLOCK'EVENT) then
		Q <= D;
	end if;
end process;
end behavioral;
