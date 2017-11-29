library ieee;
use ieee.std_logic_1164.all;

entity XOR16bit is
	port (
		c_in16, b16: in std_logic_vector(15 downto 0);
		c_out16: out std_logic_vector(15 downto 0)
	);
	
end XOR16bit;

architecture fullXOR of XOR16bit is
component XOR4bit is
	port (
		c_in4, b4: in std_logic_vector(3 downto 0);
		c_out4: out std_logic_vector(3 downto 0)
	
	);
	
end component;

--signal s: std_logic_vector(1 downto 0);

begin

--s(0)<=cin;


generate_i : for i in 3 downto 0 generate

begin

	XOR16_0: XOR4bit port map (c_in16((4*i+3) downto 4*i), b16((4*i+3) downto 4*i), c_out16((4*i+3) downto 4*i));

end generate generate_i;

end fullXOR;