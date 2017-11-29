library ieee;
use ieee.std_logic_1164.all;

entity shiftcon is
port (
	rst, d, clock: in std_logic;
	q: out std_logic_vector (7 downto 0)
	);
end shiftcon;

architecture behavioral of shiftcon is

	signal s_Q: std_logic_vector(7 downto 0);
	
	begin
		process (clock, rst, d)
			begin
				if rst='1' then
					s_Q <= (others => '0');
				elsif (clock='1' and clock'event) then
					s_Q <= d & s_Q(7 downto 1);
				end if;
			end process;
			
	Q<=s_Q;
end behavioral;

