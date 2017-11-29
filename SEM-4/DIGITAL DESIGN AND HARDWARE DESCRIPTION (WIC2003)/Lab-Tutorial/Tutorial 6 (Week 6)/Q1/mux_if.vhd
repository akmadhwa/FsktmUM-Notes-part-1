LIBRARY ieee;
USE ieee.std_logic_1164.ALL;      -- can be different dependent on tool used.
USE ieee.std_logic_unsigned.ALL;  -- can be different dependent on tool used.

ENTITY  mux_if IS
   PORT (s0               : IN  STD_LOGIC;
         s1               : IN  STD_LOGIC;
         in0              : IN  STD_LOGIC;
         in1              : IN  STD_LOGIC;
         in2              : IN  STD_LOGIC;
         in3              : IN  STD_LOGIC;
         output           : OUT STD_LOGIC
        );
END mux_if;

ARCHITECTURE if_example OF mux_if IS

-- =============================================================================
BEGIN 

mux:PROCESS(s0, s1, in0, in1, in2, in3)
BEGIN

  IF    (s0='0' AND s1='0') THEN
    output <= in0;
  ELSIF (s0='1' AND s1='0') THEN
    output <= in1;
  ELSIF (s0='0' AND s1='1') THEN
    output <= in2;
  ELSIF (s0='1' AND s1='1') THEN
    output <= in3;
  ELSE          -- (s0 or s1 are not 0 or 1)
    output <= 'X';
  END IF;

END PROCESS mux;

END if_example;
