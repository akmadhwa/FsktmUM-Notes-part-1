library ieee;
use ieee.std_logic_1164.all;

package conversions is
	function to_unsigned1 (a: std_ulogic_vector) return integer;
	function to_vector (size: integer; num: integer) return std_ulogic_vector;
end conversions;

package body conversions is
	
	-- convert a std_ulogic_vector to an unsigned integer
	function to_unsigned1 (a: std_ulogic_vector) return integer is
		alias av: std_ulogic_vector (1 to a'length) is a;
		variable ret, d: integer;
		
		begin
			d := 1;
			ret := 0;
			
			for i in a'length downto 1 loop
				if (av(i) = '1') then
					ret := ret + d;
				end if;
				
				d := d * 2;
			end loop;
			
			return ret;
	
	end to_unsigned1;
	
	-- Convert an integer to a std_ulogic_vector
	
	function to_vector (size: integer; num: integer) return std_ulogic_vector is
		variable ret: std_ulogic_vector (1 to size);
		variable a: integer;
		
		begin
			a := num;
			
			for i in size downto 1 loop
				if((a mod 2) = 1) then
					ret(i) := '1';
				else
					ret(i) := '0';
				end if;
				
				a := a/2;
			end loop;
			
			return ret;
			
	end to_vector;

end conversions;