library ieee;
use ieee.std_logic_1164.all;

entity T_FF is

	port (
		r, t, clk: in std_logic;
		-- clk: inout std_logic;
		q: out std_logic
	
	);

end T_FF;

architecture T_FF of T_FF is
signal s_q: std_logic;

	begin
		process (r, t, clk) --<---- apa yang ada dalam ni adalah sensitivity
			begin
				
				if (r = '1') then
					s_q <= '0'; -- <--- use signal, so it can be both input and output
				elsif (clk = '1' AND clk'event) then
					if(t = '0') then
						s_q <= s_q; -- <-- output <= input
					else
						s_q <= NOT s_q;
					end if;
			
				end if;
		
		end process;
q <= s_q;


end T_FF;