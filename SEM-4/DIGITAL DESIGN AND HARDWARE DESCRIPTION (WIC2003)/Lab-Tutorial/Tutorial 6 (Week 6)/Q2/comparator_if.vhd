LIBRARY ieee;
USE ieee.std_logic_1164.ALL;      -- can be different dependent on tool used.
USE ieee.std_logic_unsigned.ALL;  -- can be different dependent on tool used.

entity comparator_if is

	port (
	
		a: in std_logic_vector(1 downto 0);
		b: in std_logic_vector(1 downto 0);
		
		less: out std_logic;
		equal: out std_logic;
		greater: out std_logic
		
	);
	
end comparator_if;

architecture comparator_if of comparator_if is

	begin
	
	-- less <= '0';
	-- equal <= '0';
	-- greater <= '0';
	
		comp_if: process(a, b)
		
			begin
			
				if (a < b) then
					less <= '1';
					equal <= '0';
					greater <= '0';
					
					
				elsif (a > b) then
					greater <= '1';
					less <= '0';
					equal <= '0';
				
				
				elsif (a = b) then
					equal <= '1';
					less <= '0';
					greater <= '0';
				
				end if;
			
		end process comp_if;

end comparator_if;