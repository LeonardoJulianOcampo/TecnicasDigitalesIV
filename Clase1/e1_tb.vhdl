library ieee;
use ieee.std_logic_1164.all;

entity e1_tb is
end e1_tb;

architecture behavior of e1_tb is
    component e1 is
        port (  
            p_in_A : in  STD_ULOGIC;
            p_in_B : in  STD_ULOGIC;
            p_AND  : out STD_ULOGIC;
            p_OR   : out STD_ULOGIC );
    
    end component;
    signal pa : std_ulogic;
    signal pb : std_ulogic;
    signal pAND :std_ulogic;
    signal pOR :std_ulogic;
begin
    uut: e1 port map (
        p_in_A => pa,
        p_in_B => pb,
        p_AND  => pAND,
        p_OR   => pOR
    );

    process begin
        pa <= 'X';
        pb <= 'X';
        wait for 1 ns;
        pa <= '0';
        pb <= '0';
        wait for 1 ns;
        pa <= '0';
        pb <= '1';
        wait for 1 ns;
        pa <= '1';
        pb <= '0';
        wait for 1 ns;
        pa <= '1';
        pb <= '1';
        wait for 1 ns;
        assert false report "Reached end of test";
        wait;
    end process;

end behavior;
