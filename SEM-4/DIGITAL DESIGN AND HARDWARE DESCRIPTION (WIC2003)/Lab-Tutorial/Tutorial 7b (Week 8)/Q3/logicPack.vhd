library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package logicpack is
	function andpack (a: std_logic_vector; b: std_logic_vector) return std_logic_vector;
end logicPack;

package body logicpack is

	function andpack(a: std_logic_vector; b: std_logic_vector) return std_logic_vector is
		
		variable c: std_logic_vector (7 downto 0);
		
		begin
		
			c := a AND b;
			
			
			
			return c;
			
	end andpack;

end logicpack;