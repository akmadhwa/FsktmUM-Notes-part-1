library ieee;
use ieee.std_logic_1164.all;

entity counter_tb is
end counter_tb;

architecture stimulus of counter_tb is

	component counter is
		port (
			clock_50: in std_logic;
			ledr: out std_logic_vector (0 downto 0)
		--ledr: out std_logic
		);
	end component;
	
	signal s_clock_50: std_logic;
	signal s_ledr: std_logic_vector (0 downto 0);
	
	begin
	
		DUT: counter port map (
		
			clock_50 => s_clock_50,
			ledr => s_ledr
		
		);
		
		stimulus1: process
		begin
		
			s_clk <= "0";
			wait for 5us;
			
			s_clk <= '1';
			wait for 10us;
			
		end process;

end stimulus;