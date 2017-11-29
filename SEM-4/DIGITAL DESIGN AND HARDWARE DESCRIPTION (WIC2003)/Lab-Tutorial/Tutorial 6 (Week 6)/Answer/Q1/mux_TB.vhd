library ieee;
use ieee.std_logic_1164.all;

entity mux_TB is
end mux_TB;

architecture stimulus of mux_TB is

	component mux_if is
		PORT (s0               : IN  STD_LOGIC;
         s1               : IN  STD_LOGIC;
         in0              : IN  STD_LOGIC;
         in1              : IN  STD_LOGIC;
         in2              : IN  STD_LOGIC;
         in3              : IN  STD_LOGIC;
         output           : OUT STD_LOGIC
        );
	end component;
	
	component mux_case is
		PORT (s0               : IN  STD_LOGIC;
         s1               : IN  STD_LOGIC;
         in0              : IN  STD_LOGIC;
         in1              : IN  STD_LOGIC;
         in2              : IN  STD_LOGIC;
         in3              : IN  STD_LOGIC;
         output           : OUT STD_LOGIC
        );
	end component;

	component mux_with is
		PORT (s0               : IN  STD_LOGIC;
         s1               : IN  STD_LOGIC;
         in0              : IN  STD_LOGIC;
         in1              : IN  STD_LOGIC;
         in2              : IN  STD_LOGIC;
         in3              : IN  STD_LOGIC;
         output           : OUT STD_LOGIC
        );
	end component;
	
	component mux_cir is
	   PORT (s0               : IN  STD_LOGIC;
         s1               : IN  STD_LOGIC;
         d0              : IN  STD_LOGIC;
         d1              : IN  STD_LOGIC;
         d2              : IN  STD_LOGIC;
         d3              : IN  STD_LOGIC;
         f           : OUT STD_LOGIC
        );
	end component;
	
	component mux_when is
	   PORT (s0               : IN  STD_LOGIC;
         s1               : IN  STD_LOGIC;
         in0              : IN  STD_LOGIC;
         in1              : IN  STD_LOGIC;
         in2              : IN  STD_LOGIC;
         in3              : IN  STD_LOGIC;
         output           : OUT STD_LOGIC
        );
	end component;
	
	constant period : time := 100ns;
	signal s0, s1 : std_logic;
	signal in0, in1, in2, in3 : std_logic;
	signal output_if : std_logic;
	signal output_case : std_logic;
	signal output_with : std_logic;
	signal output_cir : std_logic;
	signal output_when : std_logic;
	
	signal done: boolean := false;
	
	begin
	
		DUT:	mux_if port map (
		
			s0 => s0,
			s1 => s1,
			in0 => in0,
			in1 => in1,
			in2 => in2,
			in3 => in3,
			output => output_if
		
		);
		
		DUT1:	mux_case port map (
		
			s0 => s0,
			s1 => s1,
			in0 => in0,
			in1 => in1,
			in2 => in2,
			in3 => in3,
			output => output_case
		
		);
		
		DUT2:	mux_with port map (
		
			s0 => s0,
			s1 => s1,
			in0 => in0,
			in1 => in1,
			in2 => in2,
			in3 => in3,
			output => output_with
		
		);
		
		DUT3:	mux_cir port map (
		
			s0 => s0,
			s1 => s1,
			d0 => in0,
			d1 => in1,
			d2 => in2,
			d3 => in3,
			f => output_cir
		
		);
		
		DUT4:	mux_when port map (
		
			s0 => s0,
			s1 => s1,
			in0 => in0,
			in1 => in1,
			in2 => in2,
			in3 => in3,
			output => output_when
		
		);
		
		stimulus1: process
		begin
			s0 <= '0';
			s1 <= '0';
			
			in0 <= '0';
			in1 <= '0';
			in2 <= '1';
			in3 <= '1';
			WAIT FOR period;
			
			---------------------------------- 1
			
			s0 <= '0';
			s1 <= '1';
			
			in0 <= '0';
			in1 <= '0';
			in2 <= '1';
			in3 <= '1';
			WAIT FOR period;
			
			------------------------------ 2
			
			s0 <= '1';
			s1 <= '0';
			
			in0 <= '0';
			in1 <= '0';
			in2 <= '1';
			in3 <= '1';
			WAIT FOR period;
			
			------------------------------- 3
			
			s0 <= '1';
			s1 <= '1';
			
			in0 <= '0';
			in1 <= '0';
			in2 <= '1';
			in3 <= '1';
			WAIT FOR period;
			
			------------------------------------- 4
			
			s0 <= '0';
			s1 <= '0';
			
			in0 <= '0';
			in1 <= '1';
			in2 <= '0';
			in3 <= '1';
			WAIT FOR period;
			
			-------------------------------------- 5
			
			s0 <= '0';
			s1 <= '1';
			
			in0 <= '0';
			in1 <= '1';
			in2 <= '0';
			in3 <= '1';
			WAIT FOR period;
			
			------------------------------------- 6
			
			s0 <= '1';
			s1 <= '0';
			
			in0 <= '0';
			in1 <= '1';
			in2 <= '0';
			in3 <= '1';
			WAIT FOR period;
			
			---------------------------- 7
			
			s0 <= '1';
			s1 <= '1';
			
			in0 <= '0';
			in1 <= '1';
			in2 <= '0';
			in3 <= '1';
			WAIT FOR period;
			
			----------------------------------- 8

			assert output_if = output_case and output_with = output_cir and output_cir = output_with
			report "implementations have different outputs"
			severity error;
		
			done <= true;
			wait;
		
		end process stimulus1;
	

end stimulus;