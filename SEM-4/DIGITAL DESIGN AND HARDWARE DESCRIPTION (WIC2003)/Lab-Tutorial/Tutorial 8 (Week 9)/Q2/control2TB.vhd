library ieee ;
use ieee.std_logic_1164.all;
 
entity control2tb is
end;

architecture behav_tb of control2tb is

	component control2
		port (
			clk: in std_logic;
			a: in std_logic;
			r, y, g: out std_logic
		);
	end component;
	
	signal s_clk, s_a, s_r, s_y, s_g: std_logic;

	begin
	
		DUT: control2 port map (
		
			clk => s_clk,
			a => s_a,
			r => s_r,
			y => s_y,
			g => s_g
		
		);
		
		clock: process
		begin
			s_clk <= '1';
			wait for 10ns;
			
			s_clk <= '0';
			wait for 10ns;
		end process clock;
		
		stimulus1: process
		begin
			s_a<= '0';
			wait for 50ns;
			
			s_a<= '1';
			wait for 50ns;
					
		end process stimulus1;

end behav_tb;