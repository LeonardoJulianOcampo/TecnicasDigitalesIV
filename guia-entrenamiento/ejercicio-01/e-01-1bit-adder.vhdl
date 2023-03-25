library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa is
    Port(
        A      :  in STD_LOGIC_VECTOR(1 DOWNTO 0);
        D      : out STD_LOGIC_VECTOR(1 DOWNTO 0); 
        ENABLE :  in STD_LOGIC                   
    );
end fa;

architecture behavioral of fa is

    signal andEnable1 : STD_LOGIC;
    signal andEnable2 : STD_LOGIC;
    
    begin
        
        andEnable1 <= A(0) AND ENABLE;
        andEnable2 <= A(1) AND ENABLE;

        D(0) <= andEnable1 AND andEnable2;
        D(1) <= andEnable1 XOR andEnable2;
    end behavioral;