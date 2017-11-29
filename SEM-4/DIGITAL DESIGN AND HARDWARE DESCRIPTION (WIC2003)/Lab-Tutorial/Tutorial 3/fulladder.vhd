library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
	port (
		a: in std_logic_vector(3 downto 0);
		b: in std_logic_vector(3 downto 0);
		cin: in std_logic;
		sum: out std_logic_vector(3 downto 0);
		c_out: out std_logic
	);
	
end fulladder;

architecture fulladd of fulladder is
component adder1 is
	port (
		a, b, cin: in std_logic;
		s, cout: out std_logic
	
	);
	
end component;


signal s: std_logic_vector(2 downto 0);

begin

	fa0: adder1 port map (a=>a(0), b=>b(0), cin=>cin, cout=>s(0), s=>sum(0));
	fa1: adder1 port map (a=>a(1), b=>b(1), cin=>s(0), cout=>s(1), s=>sum(1));
	fa2: adder1 port map (a=>a(2), b=>b(2), cin=>s(1), cout=>s(2), s=>sum(2));
	fa3: adder1 port map (a=>a(3), b=>b(3), cin=>s(2), cout=>c_out, s=>sum(3));
	
end fulladd;

