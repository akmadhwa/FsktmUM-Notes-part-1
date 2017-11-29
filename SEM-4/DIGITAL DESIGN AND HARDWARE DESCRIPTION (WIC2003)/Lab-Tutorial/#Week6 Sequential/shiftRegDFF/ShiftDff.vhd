library ieee;
use ieee.std_logic_1164.all;

entity shiftDff is
generic (sizebit: integer := 4);
    port (
        CLR, D, CLOCK: in std_logic;
        Qout: out std_logic;
	Qparallel: out std_logic_vector((sizebit-1) downto 0)
    );

end shiftDff;

architecture STRUCT of shiftDff is

component D_FF is
PORT( CLR,D,CLOCK: in std_logic;
Q: out std_logic);
end component;

signal s_q: std_logic_vector(sizebit downto 0);

begin
s_q(0)<=D;
tstgen: for i in 0 to (sizebit-1) generate
	begin
	Full1: component D_FF port map (CLR=>CLR, D=>s_q(i), CLOCK=>CLOCK, Q=>s_q(i+1));
	end generate tstgen;
Qout<=s_q(sizebit);
Qparallel<=s_q((sizebit-1) downto 0);
          
end STRUCT;
