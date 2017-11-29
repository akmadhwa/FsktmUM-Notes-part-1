library ieee;
use ieee.std_logic_1164.all;
entity TESTBNCH is
end TESTBNCH;

architecture stimulus of TESTBNCH is

component andtst is
  port (a,b: in std_logic_vector(3 downto 0);
        c: out std_logic_vector(3 downto 0)
);
end component;


component andtstgen is
  generic (n: positive := 3);
  port (a,b: in std_logic_vector(n downto 0);
        c: out std_logic_vector(n downto 0)
);
end component;

constant PERIOD: time := 100 ns;
-- Top level signals go here...
signal s_a: std_logic_vector(3 downto 0);
signal s_b: std_logic_vector(3 downto 0);
signal s_c,s_c1: std_logic_vector(3 downto 0);
signal done: boolean := false;

begin
    DUT: andtst port map ( 
            a=>s_a,
            b=>s_b,
            c=>s_c
          );
          
    DUT2: andtstgen port map ( 
            a=>s_a,
            b=>s_b,
            c=>s_c1
          );
    STIMULUS1: process
    begin
		
		s_a<="0111";
		s_b<="0010";
        wait for PERIOD; -- Wait one clock cycle

--			 assert s_c = "0010"
			 assert s_c = s_c1
			 report "sc error at 0-100ns, answer should be 0010"
			 severity error;


		s_a<="0111";
		s_b<="0011";

        wait for PERIOD;
			 assert s_c = s_c1
			 report "sc error at 100-200ns, answer should be 0010"
			 severity error;


        
        done <= true;    -- Turn off the clock
        wait;            -- Suspend simulation
    end process STIMULUS1;

--verify : process is
	--   begin
		--	 wait for PERIOD;
			-- assert s_sum = s_sum1 and s_cout = s_cout1
--			 report "implementations have different outputs"
	--		 severity error;
--	 end process verify;



end stimulus;


