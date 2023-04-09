library ieee;
use ieee.std_logic_1164.all;

entity bcdToDec is
    port(
        input  : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
        RESET  : in  STD_LOGIC_VECTOR            ;
        CLOCK  : in  STD_LOGIC_VECTOR            ;
        OUTPUT : out STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
end bcdToDec;

architecture behavioral of bcdToDec is

begin
process(RESET,CLOCK)
    variable indata: STD_LOGIC_VECTOR(3 DOWNTO 0);
    
begin
    indata := INPUT;    
    OUTPUT <= 
        "0000000000" when rising_edge(RESET)                     else
        "0000000001" when rising_edge(CLOCK) and indata = "0000" else
        "0000000010" when rising_edge(CLOCK) and indata = "0001" else
        "0000000100" when rising_edge(CLOCK) and indata = "0010" else
        "0000001000" when rising_edge(CLOCK) and indata = "0011" else
        "0000010000" when rising_edge(CLOCK) and indata = "0100" else
        "0000100000" when rising_edge(CLOCK) and indata = "0101" else
        "0001000000" when rising_edge(CLOCK) and indata = "0110" else
        "0010000000" when rising_edge(CLOCK) and indata = "0111" else
        "0100000000" when rising_edge(CLOCK) and indata = "1000" else
        "1000000000" when rising_edge(CLOCK) and indata = "1001" else
        "0000000000" when rising_edge(CLOCK) and indata = "1010" else
        "0000000000" when rising_edge(CLOCK) and indata = "1011" else
        "0000000000" when rising_edge(CLOCK) and indata = "1100" else
        "0000000000" when rising_edge(CLOCK) and indata = "1101" else
        "0000000000" when rising_edge(CLOCK) and indata = "1110" else
        "0000000000" when rising_edge(CLOCK) and indata = "1111" else
        "0000000000";
end process;

end behavioral;