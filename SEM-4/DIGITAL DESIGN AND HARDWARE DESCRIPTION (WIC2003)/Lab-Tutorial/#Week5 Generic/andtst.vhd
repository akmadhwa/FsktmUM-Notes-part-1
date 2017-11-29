library ieee;
use ieee.std_logic_1164.all;

entity andtst is
  port (a,b: in std_logic_vector(3 downto 0);
        c: out std_logic_vector(3 downto 0)
);
end andtst;

architecture behaviour of andtst is
begin
  c<=a and b;
end behaviour;
