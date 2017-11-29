library ieee;
use ieee.std_logic_1164.all;

entity nAdder is
	generic (n: positive := 7); -- <--- positive, real, natural, time (in second), integer, can be used anywhere outside of entity (e.g. architecture & component)
	port (
		a: in std_logic_vector(n downto 0);
		b: in std_logic_vector(n downto 0);
		c_in: in std_logic;
		sum: out std_logic_vector(n downto 0);
		c_out: out std_logic
	);
	
end nAdder;

architecture fulladd of nAdder is
component FA is
	port (
		a, b, c_in: in std_logic;
		s, c_out: out std_logic
	
	);
	
end component;


signal s4: std_logic_vector(n+1 downto 0);

begin

s4(0)<=c_in;


generate_i : for i in n downto 0 generate
begin

	nAdder_0: FA port map (a(i), b(i), s4(i), sum(i), s4(i+1));

end generate generate_i;

c_out<=s4(n+1);
	
end fulladd;

