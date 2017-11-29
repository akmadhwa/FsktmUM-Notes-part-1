USE WORK.vm_pack.ALL;
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY control IS
  PORT( clk : in std_logic;
        key : in std_logic_vector(3 downto 0);
        play, recrd, erase, save, address : out std_logic);
END control;

ARCHITECTURE synth OF control IS
  SIGNAL next_state, current_state : t_vm_state;
BEGIN
  PROCESS(current_state, key)
  BEGIN
    play <= '0';
    save <= '0';
    erase <= '0';
    recrd <= '0';
    address <= '0';

    CASE current_state IS
      WHEN main_st => 
        IF (key = "0001") THEN
          next_state <= review_st;
        ELSIF (key = "0010") THEN
          next_state <= send_st;
        ELSE
          next_state <= main_st;
        END IF;

      WHEN review_st =>
        IF (key = "0001") THEN
          next_state <= repeat_st;
        ELSIF (key = "0010") THEN
          next_state <= save_st;
        ELSIF (key = "0011") THEN
          next_state <= erase_st;
        ELSIF (key = "1011") THEN
          next_state <= main_st;
        ELSE
          next_state <= review_st;
        END IF;

      WHEN repeat_st =>
        play <= '1';
        next_state <= review_st;

      WHEN save_st =>
        save <= '1';
        next_state <= review_st;

      WHEN erase_st =>
        erase <= '1';
        next_state <= review_st;

      WHEN send_st =>
        next_state <= address_st;

      WHEN address_st =>
        address <= '1';
        IF (key = "1011") THEN
          next_state <= record_st;
        ELSE
          next_state <= address_st;
        END IF;

      WHEN record_st =>
        IF (key = "0101") THEN
          next_state <= begin_rec_st;
        ELSE 
          next_state <= record_st;
        END IF;

      WHEN begin_rec_st =>
        recrd <= '1';
        next_state <= message_st;

      WHEN message_st =>
          recrd <= '1';
          IF (key = "1011") THEN
            next_state <= send_st;
          ELSE
            next_state <= message_st;
          END IF;
    END CASE;
  END PROCESS;

  PROCESS
  BEGIN
    WAIT UNTIL clk = '1' AND clk'EVENT;

    current_state <= next_state;
  END PROCESS;
END synth;


