library ieee;
use ieee.std_logic_1164.all;

entity rotateTB is
end entity;

architecture stimulus of rotateTB is

	component rotate is
		port (
			CLOCK: in std_logic;
			SW: in std_logic;
			RST: in std_logic;
			LEDR: out std_logic_vector (7 downto 0)
		);
	end component;
	
	signal s_clk, s_sw, s_rst: std_logic;
	signal s_ledr: std_logic_vector (7 downto 0);
	
	begin
	
		DUT: rotate port map (
		
			clock => s_clk,
			sw => s_sw,
			rst => s_rst,
			ledr => s_ledr
		);
		
		stimulus1: process
		
		begin
			
			s_rst <= '1';
			wait for 10ns;
			
			s_rst <= '0';
			wait for 90ns;
	
		end process stimulus1;
		
		------------------------------
		
		stimulus2: process
		
		begin
			
			s_clk <= '1';
			wait for 10ns;
			
			s_clk <= '0';
			wait for 10ns;
	
		end process stimulus2;

		--------------------------------

		stimulus3: process
		
		begin
			
			s_sw <= '0';
			wait for 100ns;

			s_sw <= '1';
			wait for 100ns;

	
		end process stimulus3;		
	
end stimulus;