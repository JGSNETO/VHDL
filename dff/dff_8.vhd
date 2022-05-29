library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dff_8 is
port
(
D : in STD_LOGIC_VECTOR ( 7 downto 0); 
CLK, RST : in STD_LOGIC; 
Q : out STD_LOGIC_VECTOR (7 downto 0)
);

end dff_8;

architecture behavioral of dff_8 is
begin
--For sequential circuits we need process
process(CLK, RST)
begin
if RST = '1' then
Q <= (others =>'0'); -- Set every bit to 0
elsif (rising_edge(CLK)) then
Q <= D;

end if;
end process;
end behavioral;

