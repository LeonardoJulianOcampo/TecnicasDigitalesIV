--sumador de 1 bit

library ieee;
use ieee.std_logic_1164.all;

entity p_fullAdder is
    port(
        DataIN :    in  STD_LOGIC_VECTOR(2 DOWNTO 0);
        D:          out STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
    end p_fullAdder;


architecture behavioral of p_fullAdder is

begin

    
    process (DataIN) is
        begin
            case DataIN is 
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