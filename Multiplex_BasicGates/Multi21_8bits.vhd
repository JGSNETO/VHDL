library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multi21_8bits is
port(
-- std_logic is for one bit
-- For multiple bits:
d0: IN std_logic_vector( 7 downto 0);
d1: IN std_logic_vector( 7 downto 0); 
s : IN std_logic;
data_out : OUT std_logic_vector( 7 downto 0)

);

end Multi21_8bits;

architecture Behavioral of Multi21_8bits is
begin

data_out <= d0 when (s = '0') 
				else
				d1 when (s = '1');
--data_out <= d1 when (s = '1');

end Behavioral;
 