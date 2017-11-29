library ieee;
use ieee.std_logic_1164.all;

entity FA is
	port (
		a, b, c_in: in std_logic;
		s, c_out: out std_logic
	);
	
end FA;

architecture add of FA is
signal s0, s1, s2: std_logic;
begin
	s0 <= a XOR b;
	s1 <= c_in AND s0;
	s2 <= a AND b;
	s <= s0 XOR c_in;
	c_out <= s1 OR s2;
end add;