library ieee ;
use ieee.std_logic_1164.all;
 
entity control_tb is
end;

architecture behav_tb of control_tb is

component control
port( clk : in std_logic;
        key : in std_logic_vector(3 downto 0);
        play, recrd, erase, save, address : out std_logic);
end component;
  
signal sclk : std_logic;
signal skey : std_logic_vector(3 downto 0);
signal splay, srecrd, serase, ssave, saddress : std_logic;


begin
  dut : control port map ( clk=> sclk, key=> skey, play=>splay, recrd=>srecrd, 
				   erase=>serase, save=>ssave, address=>saddress);
 
    clock : process
    begin
      sclk<= '1';
	wait for 10 ns; 
	sclk<= '0';
	wait for 10 ns; 
    end process clock;
   
   stimulus : process
    begin
      skey<= "0001";
	wait for 60 ns; 
      skey<= "0011";
	wait for 60 ns; 

      wait;
    end process stimulus;
   
 
  end behav_tb;




