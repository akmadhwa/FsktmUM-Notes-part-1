library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sigvar is

	port (
	
		d1: in std_logic;
		d2: in std_logic;
		
		out1: out std_logic;
		out2: out std_logic
		
	);
	
end sigvar;

architecture sigvar of sigvar is
	signal sig_s1: std_logic;
	begin
		proc1: process(d1,d2)
	
			variable var_s1: std_logic;
 
			begin
				var_s1 := d1 and d2;
				out1 <= not var_s1;
		end process;
		

		proc2: process(d1,d2)
			begin
				sig_s1 <= d1 and d2;
				out2 <= not sig_s1;
		end process;

end sigvar;