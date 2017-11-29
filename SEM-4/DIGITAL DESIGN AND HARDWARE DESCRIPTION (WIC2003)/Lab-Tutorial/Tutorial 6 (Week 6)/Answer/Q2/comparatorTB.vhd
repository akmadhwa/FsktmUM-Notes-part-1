library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comparatorTB is
end comparatorTB;

architecture stimulus of comparatorTB is

	component comparator_if is
		port (
		
			a: in std_logic_vector(1 downto 0);
			b: in std_logic_vector(1 downto 0);
			
			less: out std_logic;
			equal: out std_logic;
			greater: out std_logic
			
		);
	
	end component;
	
	component comparator_case is
	
		port (
	
			a: in std_logic_vector(1 downto 0);
			b: in std_logic_vector(1 downto 0);
			
			less: out std_logic;
			equal: out std_logic;
			greater: out std_logic
		
		);
	end component;
	
	constant period : time := 100ns;
	
	signal s_a, s_b : std_logic_vector (1 downto 0);
	signal less_if, equal_if, greater_if : std_logic;
	signal less_case, equal_case, greater_case : std_logic;
	
	signal done : boolean := false;
	
	begin
	
		DUT:	comparator_if port map (
				
					a => s_a,
					b => s_b,
					less => less_if,
					equal => equal_if,
					greater => greater_if
		
				);
				
		DUT2:	comparator_case port map (
					
					a => s_a,
					b => s_b,
					less => less_case,
					equal => equal_case,
					greater => greater_case
		
				);
				
		stimulus1: process
			begin
			
				s_a <= "11";
				s_b <= "00";
				wait for period;
				
				s_a <= "11";
				s_b <= "01";
				wait for period;
				
				s_a <= "11";
				s_b <= "10";
				wait for period;
				
				s_a <= "00";
				s_b <= "01";
				wait for period;

				s_a <= "00";
				s_b <= "10";
				wait for period;				

				s_a <= "00";
				s_b <= "11";
				wait for period;
				
				s_a <= "01";
				s_b <= "01";
				wait for period;
				
			assert less_if = less_case and equal_if = equal_case and greater_if = greater_case	
			report "implementations have different outputs"
			severity error;
				
				done <= true;
				wait;
			
 
			
			
		end process stimulus1;

end stimulus;