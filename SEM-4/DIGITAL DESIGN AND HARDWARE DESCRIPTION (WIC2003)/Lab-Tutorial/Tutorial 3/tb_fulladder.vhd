library ieee;
use ieee.std_logic_1164.all;

entity TESTBENCH is
end TESTBENCH;

architecture stimulus of TESTBENCH is
component fulladder is
	port (
		a: in std_logic_vector(3 downto 0);
		b: in std_logic_vector(3 downto 0);
		cin: in std_logic;
		sum: out std_logic_vector(3 downto 0);
		c_out: out std_logic
		
		);
end component;

constant PERIOD: time := 100 ns;
signal a: std_logic_vector(3 downto 0);
signal b: std_logic_vector(3 downto 0);
signal cin: std_logic;
signal sum: std_logic_vector(3 downto 0);
signal c_out: std_logic;
signal done: boolean := false;

begin
	DUT: fulladder port map (
		a,
		b,
		cin,
		sum,
		c_out
	);
	
	STIMULUS1: process
	begin
		a <= "0001";
		b <= "0010";
		cin <= '1';
		wait for PERIOD; --- <-- wait for one clock cycle

		a <= "0101";
		b <= "0011";
		cin <= '1';
		wait for PERIOD;

		a <= "0111";
		b <= "0001";
		cin <= '1';
		wait for PERIOD;

		a <= "1111";
		b <= "1111";
		cin <= '1';
		wait for PERIOD;

		a <= "1001";
		b <= "0101";
		cin <= '0';
		wait for PERIOD;

		a <= "1100";
		b <= "0101";
		cin <= '0';
		wait for PERIOD;

		a <= "1010";
		b <= "0101";
		cin <= '0';
		wait for PERIOD;

		a <= "1111";
		b <= "1111";
		cin <= '0';
		wait for PERIOD;
		
		done <= true; -- <-- turn off the clock
		wait;				-- <-- suspend animation
	end process STIMULUS1;

end stimulus;