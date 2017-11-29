library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder4con is
	port (
		a: in std_ulogic_vector(3 downto 0);
		b: in std_ulogic_vector(3 downto 0);
		c: in std_ulogic_vector(0 downto 0);
		--c: in std_ulogic;
		sum: out std_ulogic_vector(3 downto 0);
		cout: out std_ulogic
	);
end adder4con;

architecture behavior of adder4con is
	signal s_a, s_b, s_c: integer;
	signal s_ans: integer;
	signal s_ansvector: std_ulogic_vector(4 downto 0);
	
	begin
	
		s_a <= to_integer(unsigned(a));
		s_b <= to_integer(unsigned(b));
		s_c <= to_integer(unsigned(c));
		
		s_ans <= s_a + s_b + s_c;
		s_ansvector <= std_ulogic_vector(to_unsigned (s_ans, 5));
		
		sum <= s_ansvector(3 downto 0);
		cout <= s_ansvector(4);

end behavior;
		
		