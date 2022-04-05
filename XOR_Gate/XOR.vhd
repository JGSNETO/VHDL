library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_GATE is
port(
INPUT_A, INPUT_B, INPUT_C : in STD_LOGIC;
OUTPUT : out 

);

end XOR_GATE;

architecture behaviour of XOR_GATE is
begin
OUTPUT <= INPUT_A xor INPUT_B xor INPUT_C;

end;