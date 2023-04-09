library ieee;
use ieee.std_logic_1164.all;

entity bcdToDec is
    port(
        input  : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
        RESET  : in  STD_LOGIC_VECTOR            ;
        CLOCK  : in  STD_LOGIC_VECTOR            ;
        OUTPUT : out STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
end bcdToDec;


architecture behavioral of bcdToDec is
    begin
        process (RESET,CLOCK)
            begin    
                if rising_edge(RESET) then 
                output <= "0000000000";
                else 
                    if rising_edge(CLOCK) then

                        if input = "000" then
                            OUTPUT <= "0000000001";
                        end if;
                    
                        if input = "0001" then
                            OUTPUT <= "0000000010";
                        end if;
                        
                        if input = "0010" then
                            OUTPUT <= "0000000100";
                        end if;
                    
                        if input = "0011" then
                            OUTPUT <= "0000001000";
                        end if;

                        if input = "0100" then
                            OUTPUT <= "0000010000";
                        end if;
                    
                        if input = "0101" then
                            OUTPUT <= "0000100000";
                        end if;
                        
                        if input = "0110" then
                            OUTPUT <= "0001000000";
                        end if;
                    
                        if input = "0111" then
                            OUTPUT <= "0010000000";
                        end if;

                        if input = "1000" then
                            OUTPUT <= "0100000000";
                        end if;
                    
                        if input = "1001" then
                            OUTPUT <= "1000000000";
                        end if;
                        
                        if input = "1010" then
                            OUTPUT <= "0000000000";
                        end if;
                    
                        if input = "1011" then
                            OUTPUT <= "0000000000";
                        end if;

                        if input = "1100" then
                            OUTPUT <= "0000000000";
                        end if;
                    
                        if input = "1101" then
                            OUTPUT <= "0000000000";
                        end if;
                        
                        if input = "1110" then
                            OUTPUT <= "0000000000";
                        end if;
                    
                        if input = "1111" then
                            OUTPUT <= "0000000000";
                        end if;
                    
                        else OUTPUT <= OUTPUT;
                    
                    end if;
                end if;



        end process;

                end behavioral;