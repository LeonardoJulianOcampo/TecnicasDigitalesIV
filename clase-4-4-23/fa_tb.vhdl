library ieee;
use ieee.std_logic_1164.all;

entity fa_tb is
end fa_tb;

architecture behavior of fa_tb is
    component p_fullAdder is
        Port(
            DataIN     :  in STD_LOGIC_VECTOR(2 DOWNTO 0);
            D          : out STD_LOGIC_VECTOR(1 DOWNTO 0)                   
        );
    end component;

    signal A1     : std_ulogic;
    signal A2     : std_ulogic;
    signal A3     : std_ulogic;
    signal D1     : std_ulogic;
    signal D2     : std_ulogic;


begin
    uut: p_fullAdder port map(
        DataIN(0) => A1,
        DataIN(1) => A2,
        DataIN(2) => A3,
        D(0)      => D1,
        D(1)      => D2
    );

    process begin
        A1     <= 'X'; 
        A2     <= 'X';
        A3     <= 'X';
        wait for 1 ns;
        A1     <= '0'; 
        A2     <= '0';
        A3     <= '1';
        wait for 1 ns;
        A1     <= '0'; 
        A2     <= 'Z';
        A3     <= '1';
        wait for 1 ns;
        A1     <= '1'; 
        A2     <= '0';
        A3     <= '1';
        wait for 1 ns;
        A1     <= '1'; 
        A2     <= '1';
        A3     <= '1';
        wait for 1 ns;
        A1     <= '0'; 
        A2     <= '0';
        A3     <= '0';
        wait for 1 ns;
        A1     <= '0'; 
        A2     <= '1';
        A3     <= '0';
        wait for 1 ns;
        A1     <= '1'; 
        A2     <= '0';
        A3     <= '0';
        wait for 1 ns;
        A1     <= '1'; 
        A2     <= '1';
        A3     <= '0';
        wait for 1 ns;
        assert false report "Reached end of test";
        wait;
    end process;

end behavior;