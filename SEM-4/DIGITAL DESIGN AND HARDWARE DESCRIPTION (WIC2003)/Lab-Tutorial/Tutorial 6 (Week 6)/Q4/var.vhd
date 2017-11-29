library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity var is

	port (
	
		d1: in std_logic;
		d2: in std_logic;
		
		out1: out std_logic
		
	);
	
end var;

architecture var of var is

	begin
	
	proc1: process(d1,d2)	
	
    variable var_s1: std_logic;
	
    begin
	
        var_s1 := d1 and d2;
		out1 <= not var_s1;
		 
	end process;

end var;