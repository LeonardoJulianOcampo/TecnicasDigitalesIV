library ieee;
use ieee.std_logic_1164.all;

entity fa is
    port(
        A      : in     STD_LOGIC_VECTOR(1 DOWNTO 0);
        D      : out    STD_LOGIC_VECTOR(1 DOWNTO 0);
        ENABLE : in     STD_LOGIC       
    );
end fa;

architecture behavioral of fa is
begin
    D(0) <= A(0) AND A(1) when (ENABLE = '1') else '0' ;
    D(1) <= A(0) XOR A(1) when (ENABLE = '1') else '0' ; 
end behavioral;