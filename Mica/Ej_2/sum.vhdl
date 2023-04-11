--Sumador de 1 bit, la tabla de verdad sería la siguiente:
-- A B Out Carry
-- 0 0 0    0
-- 0 1 1    0
-- 1 0 1    0
-- 1 1 1    1

-- Por lo tanto necesitamos para el bit de salida del sumador una
-- OR entre las entradas y para el Carry_out una AND entre las entradas
-- Para desarrollar el sumador se usará case / when 
-- Si no se selecciona las señales de entrada en el process no pueden
-- usarse dentro.

library ieee;
use ieee.std_logic_1164.all;

entity sum is 
    Port (  
            A  : in STD_LOGIC_VECTOR(2 DOWNTO 0);
            D  : out STD_LOGIC_VECTOR(1 DOWNTO 0));
end sum;

architecture Behavioral of sum is 
begin   
    process (A) is
        begin   
            case A is
                when "100" =>
                    D(0) <= '0';
                    D(1) <= '0';
                when "101" => 
                    D(0) <= '1';
                    D(1) <= '0';
                when "110" =>
                    D(0) <= '1';
                    D(1) <= '0';
                when "111" =>
                    D(0) <= '1';
                    D(1) <= '1';
                when others =>
                    D(0) <= 'X';
                    D(1) <= 'X';
            end case;
    end process;

end Behavioral;