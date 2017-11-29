library ieee;
use ieee.std_logic_1164.all;

entity Adder4 is
	port (
		a4: in std_logic_vector(3 downto 0);
		b4: in std_logic_vector(3 downto 0);
		c_in4: in std_logic;
		sum4: out std_logic_vector(3 downto 0);
		c_out4: out std_logic
	);
	
end Adder4;

architecture fulladd of Adder4 is
component FA is
	port (
		a, b, c_in: in std_logic;
		s, c_out: out std_logic
	
	);
	
end component;


signal s4: std_logic_vector(4 downto 0);

begin

s4(0)<=c_in4;


generate_i : for i in 3 downto 0 generate
begin
	Adder4_0: FA port map (a4(i), b4(i), s4(i), sum4(i), s4(i+1));
	--fa0: FA port map (a=>a(0), b=>b(0), cin=>cin, cout=>s(0), s=>sum(0));
	--fa1: FA port map (a=>a(1), b=>b(1), cin=>s(0), cout=>s(1), s=>sum(1));
	--fa2: FA port map (a=>a(2), b=>b(2), cin=>s(1), cout=>s(2), s=>sum(2));
	--fa3: FA port map (a=>a(3), b=>b(3), cin=>s(2), cout=>s(3), s=>sum(3));
	--fa4: FA port map (a=>a(4), b=>b(4), cin=>s(3), cout=>s(4), s=>sum(4));
	--fa5: FA port map (a=>a(5), b=>b(5), cin=>s(4), cout=>s(5), s=>sum(5));
	--fa6: FA port map (a=>a(6), b=>b(6), cin=>s(5), cout=>s(6), s=>sum(6));
	--fa7: FA port map (a=>a(7), b=>b(7), cin=>s(6), cout=>c_out, s=>sum(7));
end generate generate_i;

c_out4<=s4(4);
	
end fulladd;

