library ieee;
use ieee.std_logic_1164.all;

entity LEDswitch is
	port (	
		SW: in std_logic_vector (9 downto 0);
		HEX0: out std_logic_vector (6 downto 0);
		HEX1: out std_logic_vector (6 downto 0);
		HEX2: out std_logic_vector (6 downto 0)
	);

end LEDswitch;

architecture behav of LEDSwitch is

	component DEC is
		port (
			SW: in std_logic_vector (1 downto 0);
			MUX: out std_logic_vector (5 downto 0)
	);
	end component;
	
	component mux4to1 is
		port (	
			SW0: in std_logic_vector (9 downto 8);
			SW1: in std_logic_vector (5 downto 0);
			MUXO: out std_logic_vector (1 downto 0)
	);
	end component;
	
	component Seg7 is
		port (
			SW: in std_logic_vector (1 downto 0);
			HEX0: out std_logic_vector (6 downto 0)
	);
	end component;
	
	
	signal s_dec: std_logic_vector (5 downto 0);
	signal muxo_0, muxo_1, muxo_2: std_logic_vector (1 downto 0);
	
	begin
	
		DEC_0:	DEC port map (SW(9 downto 8), s_dec);
		MUX_0:	mux4to1 port map (s_dec (5 downto 4), SW (5 downto 0), muxo_2);
		MUX_1:	mux4to1 port map (s_dec (3 downto 2), SW (5 downto 0), muxo_1);
		MUX_2:	mux4to1 port map (s_dec (1 downto 0), SW (5 downto 0), muxo_0);
		SEG7_0: seg7 port map (muxo_0, HEX0);
		SEG7_1: seg7 port map (muxo_1, HEX1);
		SEG7_2: seg7 port map (muxo_2, HEX2);
		
end behav;
