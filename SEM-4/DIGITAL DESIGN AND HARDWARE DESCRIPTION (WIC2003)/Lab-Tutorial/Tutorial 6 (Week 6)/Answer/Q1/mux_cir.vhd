LIBRARY ieee;
USE ieee.std_logic_1164.ALL;      -- can be different dependent on tool used.
USE ieee.std_logic_unsigned.ALL;  -- can be different dependent on tool used.

ENTITY  mux_cir IS
   PORT (s0               : IN  STD_LOGIC;
         s1               : IN  STD_LOGIC;
         d0              : IN  STD_LOGIC;
         d1              : IN  STD_LOGIC;
         d2              : IN  STD_LOGIC;
         d3              : IN  STD_LOGIC;
         f           : OUT STD_LOGIC
        );
END mux_cir;

ARCHITECTURE circuit of mux_cir IS

signal q0, q1, q2, q3: STD_LOGIC;
signal o0, o1: STD_LOGIC;


BEGIN

	q0 <= NOT(s1) AND NOT(s0) AND d0;
	q1 <= NOT(s1) AND s0 AND d1;
	q2 <= s1 AND NOT (s0) AND d2;
	q3 <= s1 AND s0 AND d3;
	
	o0 <= q0 OR q1;
	o1 <= q2 OR q3;
	
	f <= o0 OR o1;

END circuit;