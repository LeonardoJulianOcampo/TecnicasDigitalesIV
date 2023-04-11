library ieee;
use ieee.std_logic_1164.all;

entity tb_bcd is 
end tb_bcd;

architecture behavior of tb_bcd is 
    component bcd_dec is
        Port(
            clk : in STD_LOGIC;
            r   : in STD_LOGIC;
            I   : in STD_LOGIC_VECTOR(3 DOWNTO 0);
            O   : out STD_LOGIC_VECTOR(9 DOWNTO 0));
    end component;
    
    signal clk : STD_LOGIC;
    signal r   : STD_LOGIC;
    signal i0  : STD_ULOGIC;
    signal i1  : STD_ULOGIC;
    signal i2  : STD_ULOGIC;
    signal o   : STD_LOGIC_VECTOR (9 DOWNTO 0));

begin
    uut: bcd_dec port map (
        clk  => clk,
        r    => r,
        I(0) => i0,
        I(1) => i1,
        I(2) => i2,
        O    => o
    );

    process begin 
        clk <= 
        wait for 20/2