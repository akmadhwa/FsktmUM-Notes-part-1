library ieee;
use ieee.std_logic_1164.all;

entity DEC is
	port (
		SW: in std_logic_vector (1 downto 0);
		MUX: out std_logic_vector (5 downto 0)
	);
end DEC;

architecture behav of DEC is

	begin
		
		WITH SW SELECT
		
			MUX <= "000110" WHEN "00",
					  "011000" WHEN "01",
					  "100001" WHEN "10",
					  "111111" WHEN "11",
					"000000" WHEN others;
		
end behav;
