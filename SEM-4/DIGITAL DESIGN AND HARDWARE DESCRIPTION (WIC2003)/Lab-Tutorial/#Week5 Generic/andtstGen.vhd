
library ieee;
use ieee.std_logic_1164.all;

entity andtstgen is
  generic (n: positive := 3);
  port (a,b: in std_logic_vector(n downto 0);
        c: out std_logic_vector(n downto 0)
);
end andtstgen;

architecture behaviour of andtstgen is
begin
  c<=a and b;
end behaviour;

