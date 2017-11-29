library ieee;
use ieee.std_logic_1164.all;

entity XOR4bit is
	port (
		c_in4, b4: in std_logic_vector(3 downto 0);
		c_out4: out std_logic_vector(3 downto 0)
	);
	
end XOR4bit;

architecture fullXOR of XOR4bit is
component oneXOR is
	port (
		c_in, b: in std_logic;
		c_out: out std_logic
	
	);
	
end component;


signal s: std_logic_vector(1 downto 0);

begin

--s(0)<=cin;


generate_i : for i in 3 downto 0 generate

begin

	XOR4_0: oneXOR port map (c_in4(i), b4(i), c_out4(i));

end generate generate_i;

end fullXOR;