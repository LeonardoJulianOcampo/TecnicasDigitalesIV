library ieee;
use ieee.std_logic_1164.all;

entity tb_sum is 
end tb_sum;

architecture behavior of tb_sum is 
    component sum is 
        Port(
            A  : in STD_LOGIC_VECTOR(2 DOWNTO 0);
            D  : out STD_LOGIC_VECTOR(1 DOWNTO 0));
    end component;

    signal A1 : std_ulogic;
    signal A2 : std_ulogic;
    signal EN : std_ulogic;
    signal D  : STD_LOGIC_VECTOR(1 DOWNTO 0);

begin 
    uut: sum port map (
        A(0) => A1,
        A(1) => A2,
        A(2) => EN,
        D    => D
    );

    process begin
        A1 <= 'X';
        A2 <= 'X';
        EN <= 'X';
        wait for 1 ns;
        A1 <= '0';
        A2 <= '0';
        wait for 10 ns;
        EN <= '1';
        wait for 10 ns;
        A1 <= '1';
        wait for 10 ns;
        A1 <= '0';
        A2 <= '1';
        wait for 10 ns;
        A1 <= '1';
        wait for 10 ns;
        assert false report "Reached end of test";
        wait;
    end process;
    
end behavior;