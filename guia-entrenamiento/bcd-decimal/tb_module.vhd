library ieee;
use ieee.std_logic_1164.all;

entity tb_BCD2DEC is
end tb_BCD2DEC;

architecture behavioral of tb_BCD2DEC is
    component bcdToDec is
        port(
            input  : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
            RESET  : in  STD_LOGIC                   ;
            CLOCK  : in  STD_LOGIC                   ;
            OUTPUT : out STD_LOGIC_VECTOR(9 DOWNTO 0)
        );
        end component;
		  

    signal tb_INPUT  : STD_LOGIC_VECTOR(3 DOWNTO 0);
    signal tb_RESET  : STD_LOGIC                   ;
    signal tb_CLOCK  : STD_LOGIC                   ;
    signal tb_OUTPUT : STD_LOGIC_VECTOR(9 DOWNTO 0);


    begin 
        DUT: bcdToDec port map(
            input  => tb_INPUT,
            RESET  => tb_RESET,
            CLOCK  => tb_CLOCK,
            OUTPUT => tb_OUTPUT 
        );
    

	tb_RESET <= '1', '0' after 1 ns;

    process 
    
    begin
        tb_INPUT <= "0000";
        wait for      10 ns;
        tb_INPUT <= "0001";
        wait for      10 ns;
        tb_INPUT <= "0010";
        wait for      10 ns;
        tb_INPUT <= "0011";
        wait for      10 ns;
        tb_INPUT <= "0100";
        wait for      10 ns;
        tb_INPUT <= "0101";
        wait for      10 ns;
        tb_INPUT <= "0110";
        wait for      10 ns;
        tb_INPUT <= "0111";
        wait for      10 ns;
        tb_INPUT <= "1000";
        wait for      10 ns;
        tb_INPUT <= "1001";
        wait for      10 ns;
        tb_INPUT <= "1010";
        wait for      10 ns;
        tb_INPUT <= "1011";
        wait for      10 ns;
        tb_INPUT <= "1100";
        wait for      10 ns;
        tb_INPUT <= "1101";
        wait for      10 ns;
        tb_INPUT <= "1110";
        wait for      10 ns;
        tb_INPUT <= "1111";
    end process;

process

begin
   tb_CLOCK <= '0';
   wait for 10 ns;  -- la mitad del perodo del reloj
   tb_CLOCK <= '1';
	wait for 10 ns;
end process;



end behavioral;
