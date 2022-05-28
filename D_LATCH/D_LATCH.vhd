library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D_LATCH is
port
(
D, CLK : in STD_LOGIC;
Q      : out STD_LOGIC 
);

end D_LATCH;

architecture Behavioral of D_LATCH is
begin

process(CLK, D)
begin 
if(CLK = '1') then
Q <= D;
end if;
end process;
end Behavioral; 
 