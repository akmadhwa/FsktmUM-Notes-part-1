LIBRARY ieee;
USE ieee.std_logic_1164.ALL;      -- can be different dependent on tool used.
USE ieee.std_logic_unsigned.ALL;  -- can be different dependent on tool used.

ENTITY  mux_case IS
   PORT (s0               : IN  STD_LOGIC;
         s1               : IN  STD_LOGIC;
         in0              : IN  STD_LOGIC;
         in1              : IN  STD_LOGIC;
         in2              : IN  STD_LOGIC;
         in3              : IN  STD_LOGIC;
         output           : OUT STD_LOGIC
        );
END mux_case;

ARCHITECTURE case_example OF mux_case IS

-- =============================================================================
BEGIN 

mux:PROCESS(s0, s1, in0, in1, in2, in3)
  VARIABLE  sel  :  STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
  sel := s1 & s0;   -- concatenate s1 and s0  

  CASE sel IS
    WHEN  "00"  =>  output <= in0;
    WHEN  "01"  =>  output <= in1;
    WHEN  "10"  =>  output <= in2;
    WHEN  "11"  =>  output <= in3;
    WHEN OTHERS =>  output <= 'X';
  END CASE;

END PROCESS mux;
  
END case_example;