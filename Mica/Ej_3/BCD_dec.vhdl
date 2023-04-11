-- Conversor BCD a Decimal 
-- con CLK y RESET 
-- Tabla de verdad:
-- A B C D  Q9 Q8 Q7 Q6 Q5 Q4 Q3 Q2 Q1 Q0
-- 0 0 0 0                              1
-- 0 0 0 1                           1
-- 0 0 1 0                        1
-- 0 0 1 1                     1
-- 0 1 0 0                  1
-- 0 1 0 1               1
-- 0 1 1 0            1
-- 0 1 1 1        1
-- 1 0 0 0     1
-- 1 0 0 1  1

library ieee;
use ieee.std_logic_1164.all;

entity bcd_dec is 
    Port (  
            clk : in STD_LOGIC;
            r   : in STD_LOGIC;
            I   : in STD_LOGIC_VECTOR(3 DOWNTO 0);
            O   : out STD_LOGIC_VECTOR(9 DOWNTO 0));
end bcd_dec;

architecture Behavioral of tb_bcd is 
begin   
    
    process (clk, r, I) is
    begin   
        
end Behavioral;