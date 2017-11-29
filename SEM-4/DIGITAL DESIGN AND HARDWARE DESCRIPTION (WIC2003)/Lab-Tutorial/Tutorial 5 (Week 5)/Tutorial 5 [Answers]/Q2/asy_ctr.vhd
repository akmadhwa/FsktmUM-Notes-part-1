library ieee;
use ieee.std_logic_1164.all;

entity asy_ctr is
	port (
		high_in: in std_logic;
		clk: in std_logic;
		r: in std_logic;
		q: out std_logic_vector(3 downto 0);
		qbar: out std_logic_vector (3 downto 0)
	);

end asy_ctr;

architecture asy_ctr of asy_ctr is
	component t_ff is
		port (
			r, t, clk: in std_logic;
			-- clk: inout std_logic;
			q, qbar: out std_logic
		
		);
	end component;
	
	signal s: std_logic_vector(4 downto 0);
	
	begin
	
	s(0)<= clk;
	
		FF0: t_ff port map (r=>r, t=>high_in, clk=>s(0), q=>q(0), qbar=>s(1));
		FF1: t_ff port map (r=>r, t=>high_in, clk=>s(1), q=>q(1), qbar=>s(2));
		FF2: t_ff port map (r=>r, t=>high_in, clk=>s(2), q=>q(2), qbar=>s(3));
		FF3: t_ff port map (r=>r, t=>high_in, clk=>s(3), q=>q(3), qbar=>s(4));

qbar <= s(4 downto 1);

end asy_ctr;