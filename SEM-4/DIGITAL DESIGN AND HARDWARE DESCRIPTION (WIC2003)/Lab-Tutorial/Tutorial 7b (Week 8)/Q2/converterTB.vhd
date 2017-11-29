library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity converterTB is
end converterTB;

architecture stimulus of converterTB is

	component converter is
		port (
			clk, rst, load: in std_ulogic;
			x: in std_ulogic_vector(7 downto 0);
			xout, aout, bout, cout: out std_ulogic_vector(7 downto 0)
		);
		
	end component;
	
	constant period : time := 100ns;
	signal s_clk, s_rst, s_load: std_ulogic;
	signal s_x: std_ulogic_vector (7 downto 0);
	signal s_xout, s_aout, s_bout, s_cout: std_ulogic_vector(7 downto 0);
	signal done: boolean := false;
	
	begin
	
		DUT: converter port map (
		
			clk => s_clk,
			rst => s_rst,
			load => s_load,
			x => s_x,
			xout => s_xout,
			aout => s_aout,
			bout => s_bout,
			cout => s_cout
			
		);
		
		stimulus1: process
		begin
			
			s_clk <= '1';
			wait for 25ns;
			
			s_clk <= '0';
			wait for 25ns;
		
		end process stimulus1;
		
		stimulus2: process
		begin
		
			s_rst <= '1';
			wait for 40ns;
			
			s_rst <= '0';
			
		end process stimulus2;
		
		stimulus3: process
		begin
		
			s_load <= '0';
			wait for 40ns;
			
			s_load <= '1';
			wait for 40ns;
			
			s_load <= '0';
			wait for 200ns;
			
			s_load <= '1';
			wait for 160ns;
			
			s_load <= '0';
			wait for 280ns;
			
			s_load <= '1';
			wait for 60ns;
			
			s_load <= '0';
			wait for 40ns;
			
			s_load <= '1';
			wait for 40ns;
			
			s_load <= '0';
			
		end process stimulus3;
		
		-- stimulus4: process
		-- begin
		
			-- s_xout <= "00000000"
			-- wait for 40ns;
			
			-- s_xout <= "01010000"
			-- wait for 600ns;
			
			-- s_xout <= "00001111"
			
		-- end process stimulus4;
		
		-- stimulus5: process
		-- begin
		
			-- s_aout <= "00000000"
			-- wait for period;
			
			-- s_aout <= "00010000"
			-- wait for 740ns;
			
			-- s_aout <= "00000011"
			-- wait for period;
end stimulus;