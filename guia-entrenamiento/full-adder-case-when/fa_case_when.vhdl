library ieee;
use ieee.std_logic_1164.all;

entity fa is
    port(
        A      : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
        D      : out STD_LOGIC_VECTOR(1 DOWNTO 0);
        ENABLE : in  STD_LOGIC
    );
end fa;

architecture behavioral of fa is

begin
    
    process (A, ENABLE) is
        variable indata: STD_LOGIC_VECTOR(2 DOWNTO 0);
        begin
            indata := A & ENABLE; 
            case indata is 
                when "001" =>
                    D(0) <= '0' ;
                    D(1) <= '0' ;
                when "011" =>
                    D(0) <= '1' ;
                    D(1) <= '0' ;
                when "101" =>
                    D(0) <= '1' ;
                    D(1) <= '0' ;
                when "111" =>
                    D(0) <= '0' ;
                    D(1) <= '1' ;
                when "000" =>
                    D(0) <= '0' ;
                    D(1) <= '0' ;
                when "010" =>
                    D(0) <= '0' ;
                    D(1) <= '0' ;
                when "100" =>
                    D(0) <= '0' ;
                    D(1) <= '0' ;
                when "110" =>
                    D(0) <= '0' ;
                    D(1) <= '0' ;
                when others =>
                    D(0) <= 'X';
                    D(1) <= 'X';
            end case;
    end process; 

end behavioral;