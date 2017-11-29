library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity adder4conTB is
end adder4conTB;

architecture stimulus of adder4conTB is

	component adder4con is
		port (
		a: in std_ulogic_vector(3 downto 0);
		b: in std_ulogic_vector(3 downto 0);
		c: in std_ulogic_vector(0 downto 0);
		sum: out std_ulogic_vector(3 downto 0);
		cout: out std_ulogic
	);
	end component;
	
	constant period: time := 10ns;
	
	signal s_a: std_ulogic_vector(3 downto 0);
	signal s_b: std_ulogic_vector(3 downto 0);
	signal s_c: std_ulogic_vector(0 downto 0);
	signal s_sum: std_ulogic_vector(3 downto 0);
	signal s_cout: std_ulogic;
	signal done: boolean := false;
	
	begin
	
		DUT: adder4con port map (
		
			a => s_a,
			b => s_b,
			c => s_c,
			sum => s_sum,
			cout => s_cout
			
		);
		
		stimulus1: process
		begin
			
			s_c <= "1";
			s_a <= "0011";
			s_b <= "0001";
			wait for period;
			
			s_a <= "0111";
			s_b <= "0010";
			wait for period;
			
			s_c <= "0";
			wait for period;
			
			s_a <= "1111";
			s_b <= "1010";
			wait for period;
			
			done <= true;
			wait;
		
		end process stimulus1;
		
end stimulus;
			
	
	