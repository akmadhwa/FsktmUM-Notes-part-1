library ieee;
use ieee.std_logic_1164.all;

entity simple is
	port (
		A: in std_logic_vector (3 downto 0);
		S: out std_logic_vector (3 downto 0)
	);
end simple;

architecture behav of simple is

	begin
	
		s <= NOT A;

end behav;
