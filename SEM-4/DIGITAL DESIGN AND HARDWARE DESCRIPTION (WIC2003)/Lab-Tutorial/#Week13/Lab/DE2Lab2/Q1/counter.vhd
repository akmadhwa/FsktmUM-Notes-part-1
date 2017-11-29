library ieee;
use ieee.std_logic_1164.all;

entity counter is
	port (
		clock_50: in std_logic;
		ledr: out std_logic_vector (0 downto 0)
		--ledr: out std_logic
	);
end counter;

architecture behav of counter is

	constant max_count: natural := 50000000;
	--constant max_count: natural := 20;
	
	begin
		comp: process (clock_50)
			variable count: natural;
			
			begin
				if (clock_50'event and clock_50='1') then
				count := count+1;
					if (count <= max_count/2) then
						ledr(0) <= '1';
					elsif(count <= max_count) then
						ledr(0) <= '0';
					end if;
					
					if(count=max_count) then
						count := 0;
					end if;
				
				end if;
		end process comp;
end behav;