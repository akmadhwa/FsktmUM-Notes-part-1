library ieee;
use ieee.std_logic_1164.all;
use work.vm_pack2.all;

entity control2 is

	port (
		clk: in std_logic;
		a: in std_logic;
		r, y, g: out std_logic
	);
	
end control2;

architecture state of control2 is
	signal next_state, current_state : t_vm_state;
	
	begin
	
		process(current_state, a)
		
		begin
			
			r <='0';
			y <='0';
			g <='0';
			
			
			case current_state is
				when st_r =>
					if (a='0') then
						next_state <= st_r;
						r<='1';
					else
						next_state <= st_y;
						y<='1';
					end if;
					
				when st_y =>
					if (a='0') then
						next_state <= st_y;
						y<='1';
					else
						next_state <= st_g;
						g<='1';
					end if;
					
				when st_g =>
					if (a='0') then
						next_state <= st_g;
						g<='1';
					else
						next_state <= st_r;
						r<='1';
					end if;
			
			end case;
		
		end process;
		
		process
		begin
			wait until clk='1' and clk'event;
			
			current_state<=next_state;
		end process;
end state;
