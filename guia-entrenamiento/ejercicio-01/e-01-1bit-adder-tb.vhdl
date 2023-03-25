library ieee;
use ieee.std_logic_1164.all;

entity fa_tb is
end fa_tb;

architecture behavior of fa_tb is
    component fa is
        Port(
            A      :  in STD_LOGIC_VECTOR(1 DOWNTO 0);
            D      : out STD_LOGIC_VECTOR(1 DOWNTO 0); 
            ENABLE :  in STD_LOGIC                   
        );
    end component;

    signal A1     : std_ulogic;
    signal A2     : std_ulogic;
    signal D1     : std_ulogic;
    signal D2     : std_ulogic;
    signal ENABLE : std_ulogic;

begin
    uut: fa port map(
        A(0)    =>   A1,
        A(1)    =>   A2,
        D(0)    =>   D1,
        D(1)    =>   D2,
        ENABLE  => ENABLE
    );

    process begin
        A1     <= 'X'; 
        A2     <= 'X';
        ENABLE <= 'X';
        wait for 1 ns;
        A1     <= '0'; 
        A2     <= '0';
        ENABLE <= '1';
        wait for 1 ns;
        A1     <= '0'; 
        A2     <= '1';
        ENABLE <= '1';
        wait for 1 ns;
        A1     <= '1'; 
        A2     <= '0';
        ENABLE <= '1';
        wait for 1 ns;
        A1     <= '1'; 
        A2     <= '1';
        ENABLE <= '1';
        wait for 1 ns;
        A1     <= '0'; 
        A2     <= '0';
        ENABLE <= '0';
        wait for 1 ns;
        A1     <= '0'; 
        A2     <= '1';
        ENABLE <= '0';
        wait for 1 ns;
        A1     <= '1'; 
        A2     <= '0';
        ENABLE <= '0';
        wait for 1 ns;
        A1     <= '1'; 
        A2     <= '1';
        ENABLE <= '0';
        wait for 1 ns;
        assert false report "Reached end of test";
        wait;
    end process;

end behavior;