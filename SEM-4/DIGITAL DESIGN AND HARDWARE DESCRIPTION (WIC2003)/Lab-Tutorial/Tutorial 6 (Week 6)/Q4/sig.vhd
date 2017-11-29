library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sig is

	port (
	
		d1: in std_logic;
		d2: in std_logic;
		
		out2: out std_logic
		
	);
	
end sig;

architecture sig of sig is
signal sig_s1: std_logic;
	begin
		
		
		proc2: process(d1,d2)

			begin
			
				sig_s1 <= d1 and d2;
				out2 <= not sig_s1;
				
		end process proc2;

end sig;