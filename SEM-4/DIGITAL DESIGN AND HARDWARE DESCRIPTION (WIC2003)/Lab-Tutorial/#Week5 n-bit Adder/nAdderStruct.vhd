library ieee;
use ieee.std_logic_1164.all;

entity nAdderStruct is
	port (
		a: in std_logic_vector(3 downto 0);
		b: in std_logic_vector(3 downto 0);
		c_in: in std_logic;
		sum: out std_logic_vector(3 downto 0);
		c_out: out std_logic
	);
	
end nAdderStruct;

architecture fulladd of nAdderStruct is
component FA is
	port (
		a, b, c_in: in std_logic;
		s, c_out: out std_logic
	
	);
	
end component;


signal s: std_logic_vector(2 downto 0);

begin


	nAdderStruct_0: FA port map (a=>a(0), b=>b(0), c_in=>c_in, c_out=>s(0), s=>sum(0));
	nAdderStruct_1: FA port map (a=>a(1), b=>b(1), c_in=>s(0), c_out=>s(1), s=>sum(1));
	nAdderStruct_2: FA port map (a=>a(2), b=>b(2), c_in=>s(1), c_out=>s(2), s=>sum(2));
	nAdderStruct_3: FA port map (a=>a(3), b=>b(3), c_in=>s(2), c_out=>c_out, s=>sum(3));

	
end fulladd;
