library ieee;
use ieee.std_logic_1164.all;

entity oneXOR is
	port (
		c_in, b: in std_logic;
		c_out: out std_logic
	);
	
end oneXOR;

architecture func of oneXOR is

signal s: std_logic_vector(1 downto 0);

begin

	s(0) <= NOT(c_in AND b);
	s(1) <= c_in OR b;
	c_out <= s(0) AND s(1);
	
end func;