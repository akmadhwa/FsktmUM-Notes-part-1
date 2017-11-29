LIBRARY ieee;
USE ieee.std_logic_1164.ALL;      -- can be different dependent on tool used.
USE ieee.std_logic_unsigned.ALL;  -- can be different dependent on tool used.

ENTITY  mux_when IS
   PORT (s0               : IN  STD_LOGIC;
         s1               : IN  STD_LOGIC;
         in0              : IN  STD_LOGIC;
         in1              : IN  STD_LOGIC;
         in2              : IN  STD_LOGIC;
         in3              : IN  STD_LOGIC;
         output           : OUT STD_LOGIC
        );
END mux_when;

ARCHITECTURE when_example OF mux_when IS

-- =============================================================================
BEGIN 

    output <= in0 WHEN (s1 & s0)="00" ELSE
              in1 WHEN (s1 & s0)="01" ELSE
              in2 WHEN (s1 & s0)="10" ELSE
              in3 WHEN (s1 & s0)="11" ELSE
              'X';
     
END when_example;