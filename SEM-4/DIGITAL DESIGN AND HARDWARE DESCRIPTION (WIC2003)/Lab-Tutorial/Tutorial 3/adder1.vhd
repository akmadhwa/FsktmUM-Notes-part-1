library ieee;
use ieee.std_logic_1164.all;

entity adder1 is
	port (
		a, b, cin: in std_logic;
		s, cout: out std_logic
	);
	
end adder1;

architecture add of adder1 is
signal s0, s1, s2: std_logic;
begin
	s0 <= a XOR b;
	s1 <= cin AND s0;
	s2 <= a AND b;
	s <= s0 XOR cin;
	cout <= s1 OR s2;
end add;