library ieee;
use ieee.std_logic_1164.all;

entity tb_sum1bit is 
end tb_sum1bit;

architecture behavior of tb_sum1bit is 
    component sum1bit is 
        Port(
            p_in_A : in  STD_LOGIC;
            p_in_B : in  STD_LOGIC;
            p_en   : in  STD_LOGIC;
            p_res  : out STD_LOGIC_VECTOR(1 DOWNTO 0)); 
    end component;

    signal pA : std_logic;
    signal pB : std_logic;
    signal pEN : std_logic;
    signal pR : STD_LOGIC_VECTOR(1 DOWNTO 0);

begin 
    uut: sum1bit port map (
        p_in_A => pA,
        p_in_B => pB,
        p_en   => pEN,
        p_res  => pR
    );

    process begin
        pA <= 'X';
        pB <= 'X';
        pEN <= 'X';
        wait for 1 ns;
        pA <= '0';
        pB <= '0';
        pEN <= '1';
        wait for 10 ns;
        pA <= '1';
        pB <= '0';
        wait for 10 ns;
        pA <= '0';
        pB <= '1';
        wait for 10 ns;
        pA <= '1';
        pB <= '1';
        wait for 10 ns;
        pEN <= '0';
        wait for 10 ns;
        assert false report "Reached end of test";
        wait;
    end process;
    
end behavior;