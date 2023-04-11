--Sumador de 1 bit, la tabla de verdad sería la siguiente:
-- A B Out Carry
-- 0 0 0    0
-- 0 1 1    0
-- 1 0 1    0
-- 1 1 1    1

-- Por lo tanto necesitamos para el bit de salida del sumador una
-- OR entre las entradas y para el Carry_out una AND entre las entradas

library ieee;
use ieee.std_logic_1164.all;

entity sum1bit is 
    Port (  p_in_A : in  STD_LOGIC;
            p_in_B : in  STD_LOGIC;
            p_en   : in  STD_LOGIC;
            p_res  : out STD_LOGIC_VECTOR(1 DOWNTO 0));
end sum1bit;


architecture Behavioral of sum1bit is 
    begin
        p_res(0) <= p_in_A OR p_in_B when p_en = '1' else
                    '0';
        p_res(1) <= p_in_A AND p_in_B when p_en = '1' else
                    '0';

end Behavioral;