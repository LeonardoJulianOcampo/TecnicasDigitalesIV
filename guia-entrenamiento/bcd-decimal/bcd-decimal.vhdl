library ieee;
use ieee.std_logic_1164.all;

entity bcdToDec is
    port(
        input  : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
        RESET  : in  STD_LOGIC                   ;
        CLOCK  : in  STD_LOGIC                   ;
        OUTPUT : out STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
end bcdToDec;


architecture behavioral of bcdToDec is
    begin
        process (CLOCK,RESET)
            begin    
                if (RESET = '1') then 
                OUTPUT <= "0000000000";
                elsif rising_edge(CLOCK) then

								case input is
									when "0000" => 
                                        OUTPUT <= "0000000001";
                                    when "0001" => 
                                        OUTPUT <= "0000000010";
                                    when "0010" => 
                                        OUTPUT <= "0000000100";
                                    when "0011" => 
                                        OUTPUT <= "0000001000";
                                    when "0100" => 
                                        OUTPUT <= "0000010000";
                                    when "0101" => 
                                        OUTPUT <= "0000100000";
                                    when "0110" => 
                                        OUTPUT <= "0001000000";
                                    when "0111" => 
                                        OUTPUT <= "0010000000";
                                    when "1000" => 
                                        OUTPUT <= "0100000000";
                                    when "1001" =>
                                        OUTPUT <= "1000000000";
                                    when others =>
                                        OUTPUT <= "0000000000";  
                        end case;

                end if;

        end process;

                end behavioral;