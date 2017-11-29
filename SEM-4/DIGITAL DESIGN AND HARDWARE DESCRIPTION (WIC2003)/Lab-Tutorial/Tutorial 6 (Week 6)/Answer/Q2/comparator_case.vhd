LIBRARY ieee;
USE ieee.std_logic_1164.ALL;      -- can be different dependent on tool used.
USE ieee.std_logic_unsigned.ALL;  -- can be different dependent on tool used.

entity comparator_case is

	port (
	
		a: in std_logic_vector(1 downto 0);
		b: in std_logic_vector(1 downto 0);
		
		less: out std_logic;
		equal: out std_logic;
		greater: out std_logic
		
	);
	
end comparator_case;

architecture comparator_case of comparator_case is

	begin
	
		comp_case: process(a, b)
		
		
			begin
			
				case a > b is
					when true => greater <= '1';
					when others => greater <= '0';
				end case;
				
				case a < b is
					when true => less <= '1';
					when others => less <= '0';
				end case;
				
				case a = b is
					when true => equal <= '1';
					when others => equal <= '0';
				end case;
			
		end process comp_case;

end comparator_case;