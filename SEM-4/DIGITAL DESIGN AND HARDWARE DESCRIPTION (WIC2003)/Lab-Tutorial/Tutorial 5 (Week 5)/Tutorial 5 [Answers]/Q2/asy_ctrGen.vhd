library ieee;
use ieee.std_logic_1164.all;

entity asy_ctrGen is
	generic(n: positive := 3);
	port (
		r: in std_logic;
		high_in: in std_logic;
		clk: in std_logic;
		q: out std_logic_vector(n downto 0);
		qbar: out std_logic_vector(n downto 0)
	);

end asy_ctrGen;

architecture asy_ctr of asy_ctrGen is
	component t_ff is
		port (
			r, t, clk: in std_logic;
			-- clk: inout std_logic;
			q, qbar: out std_logic
		
		);
	end component;
	
	signal s: std_logic_vector(n+1 downto 0);
	
	begin
		
		s(0)<=clk;
		
		generate_n: for i in n downto 0 generate
	
		--FF0: t_ff port map (r=>r, t=>high_in, clk=>clk, q=>q(0), qbar=>s(0));
		--FF1: t_ff port map (r=>r, t=>high_in, clk=>s(0), q=>q(1), qbar=>s(1));
		--FF2: t_ff port map (r=>r, t=>high_in, clk=>s(1), q=>q(2), qbar=>s(2));
		--FF3: t_ff port map (r=>r, t=>high_in, clk=>s(2), q=>q(3), qbar=>s(3));
		
			FF: t_ff port map(r, high_in, s(i), q(i), s(i+1));
		
		end generate generate_n;

qbar <= s((n+1) downto 1);
end asy_ctr;
