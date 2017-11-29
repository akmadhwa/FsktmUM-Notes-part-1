LIBRARY ieee;
USE ieee.std_logic_1164.ALL;      -- can be different dependent on tool used.
USE ieee.std_logic_unsigned.ALL;  -- can be different dependent on tool used.

ENTITY  mux_with IS
   PORT (s0               : IN  STD_LOGIC;
         s1               : IN  STD_LOGIC;
         in0              : IN  STD_LOGIC;
         in1              : IN  STD_LOGIC;
         in2              : IN  STD_LOGIC;
         in3              : IN  STD_LOGIC;
         output           : OUT STD_LOGIC
        );
END mux_with;

ARCHITECTURE with_example OF mux_with IS

SIGNAL  sel  :  STD_LOGIC_VECTOR(1 DOWNTO 0);
-- =============================================================================
BEGIN 
  sel <= s1 & s0;  -- concatenate s1 and s0
  WITH sel  SELECT
    output <= in0 WHEN "00",
              in1 WHEN "01",
              in2 WHEN "10",
              in3 WHEN "11",
              'X' WHEN OTHERS;
     
END with_example;

