----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:27:31 03/21/2023 
-- Design Name: 
-- Module Name:    e1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;



entity e1 is
    Port ( p_in_A : in  STD_LOGIC;
           p_in_B : in  STD_LOGIC;
            p_AND : out STD_LOGIC;
		    p_OR  : out STD_LOGIC );
end e1;

architecture Behavioral of e1 is

begin
	p_AND <= p_in_A and p_in_B;
	p_OR  <= p_in_A or  p_in_B;
 
end Behavioral;

