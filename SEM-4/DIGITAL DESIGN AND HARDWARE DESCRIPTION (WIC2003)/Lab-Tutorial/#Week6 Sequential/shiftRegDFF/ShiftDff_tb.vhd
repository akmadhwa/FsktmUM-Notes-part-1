-- test_addsub.vhd

library ieee;
use ieee.std_logic_1164.all;

entity TESTBNCH is
end TESTBNCH;

architecture stimulus of TESTBNCH is
component shiftDff is
generic (sizebit: integer := 4);
    port (
        CLR, D, CLOCK: in std_logic;
        Qout: out std_logic;
	Qparallel: out std_logic_vector((sizebit-1) downto 0)
    );
end component;

constant c_sizebit: integer:= 4;

constant PERIOD: time := 100 ns;
signal S_CLR, S_D, S_CLOCK,S_Qout: std_logic;
signal S_Qparallel: std_logic_vector((c_sizebit-1) downto 0);
signal done: boolean := false;

begin
    DUT: shiftDff  port map ( 
        CLR=>S_CLR, D=>S_D, CLOCK=>S_CLOCK, Qout=>S_Qout, Qparallel=>S_Qparallel);

    STIMULUS1: process
    begin
		S_CLR<='1'; 
		S_D<='1';
        wait for PERIOD; -- Wait one clock cycle
		S_CLR<='0'; 
		S_D<='1';
        wait for PERIOD; -- Wait one clock cycle
		S_CLR<='0'; 
		S_D<='1';
        wait for PERIOD; -- Wait one clock cycle
		S_CLR<='0'; 
		S_D<='0';
        wait for PERIOD; -- Wait one clock cycle
		S_CLR<='0'; 
		S_D<='1';
        wait for PERIOD; -- Wait one clock cycle

        done <= true;    -- Turn off the clock
        wait;            -- Suspend simulation
    end process STIMULUS1;

    STIMULUS2: process
    begin
		S_CLOCK<='0'; 
        wait for PERIOD/4; -- Wait one clock cycle
		S_CLOCK<='1';
        wait for PERIOD/4; -- Wait one clock cycle
    end process STIMULUS2;

end stimulus;

