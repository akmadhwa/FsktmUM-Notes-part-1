library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sigvarTB is
end sigvarTB;

architecture stimulus of sigvarTB is

	component sigvar
		port(  
		
			d1    : in std_logic; 
			d2    : in std_logic; 
			out1  : out std_logic;
			out2  : out std_logic
		);
	end component ;
  
	signal s_d1, s_d2 : std_logic;
	signal s_outVAR, s_outSIG: std_logic;
  
  
	begin
		dut : sigvar
			port map (  d1 => s_d1,
				d2 => s_d1,
				out1 => s_outVAR,
				out2 => s_outSIG
             );
      
      
      
		clk1_process : process
		begin
			s_d1 <= '0'; 
			s_d2 <= '1'; 
			wait for 10 ns;
			
			s_d1 <= '1'; 
			s_d2 <= '1'; 
			wait for 10 ns;


			s_d1 <= '0'; 
			s_d2 <= '0'; 
			wait for 10 ns;
			wait;

		end process;

  
end stimulus;