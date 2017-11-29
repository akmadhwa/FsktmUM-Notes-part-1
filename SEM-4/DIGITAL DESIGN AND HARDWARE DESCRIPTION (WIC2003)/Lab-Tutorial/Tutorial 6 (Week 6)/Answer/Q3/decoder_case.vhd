library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity decoder_case is

	port (
	
		din: in std_logic_vector(1 downto 0);
		
		dout: out std_logic_vector(3 downto 0)
	
	);
	
end decoder_case;

architecture decoder of decoder_case is

	begin
	
		process (din)
			
			begin
				
				
			case din is
			
				when "00" =>
					dout <= "0001";
					
				when "01" =>
					dout <= "0010";
					
				when "10" =>
					dout <= "0100";
					
				when "11" =>
					dout <= "1000";
					
				when others =>
					dout <= "XXXX";
			
			end case;
		
		end process;

end decoder;