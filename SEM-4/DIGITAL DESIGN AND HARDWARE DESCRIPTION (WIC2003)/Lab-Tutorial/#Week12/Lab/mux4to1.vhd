library ieee;
use ieee.std_logic_1164.all;

entity mux4to1 is
	port (	
		SW0:in std_logic_vector (9 downto 8);
		SW1: in std_logic_vector (5 downto 0);
		MUXO: out std_logic_vector (1 downto 0)
	);
end mux4to1;

architecture behav of mux4to1 is

	begin
	
		process (SW0, SW1)
			begin
				if(SW0(9 downto 8) = "00") then
					MUXO <= SW1(5 downto 4);
				elsif(SW0(9 downto 8) = "01") then
					MUXO <= SW1(3 downto 2);
				elsif(SW0(9 downto 8) = "10") then
					MUXO <= SW1(1 downto 0);
				end if;
		end process;
end behav;
