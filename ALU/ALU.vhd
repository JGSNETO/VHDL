LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; --Use unsigned numbers
use IEEE.NUMERIC_STD.ALL; -- Use integers in VHDL

entity ALU is

port
(
A , B : in STD_LOGIC_VECTOR( 7 downto 0);
OP : in STD_LOGIC_VECTOR(2 downto 0); --Suport 3 operations (3 bits)
Result : out STD_LOGIC_VECTOR (7 downto 0);
carry :  out STD_LOGIC
);

end ALU;

architecture Behavioral of ALU is

--Just a intermediate signal between two components
--When connect two component through a wire this intermediate wire is a signal 
signal ALU_RESULT : STD_LOGIC_VECTOR ( 7 downto 0);
signal temp : STD_LOGIC_VECTOR ( 8 downto 0);

--When use case is import have signal
begin
process (A,B,OP)--Works just like a function
begin
case(op) is 
when "000" => -- adition 
ALU_RESULT <= A + B;
temp <= ('0' & A) + ('0' & B);

when "001" => --subtraction
ALU_RESULT <= A - B;
temp <= ('0' & A) - ('0' & B);

when "010" => --Multiplication
ALU_RESULT <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) * to_integer(unsigned(B)),8));

when "011" => -- Division
ALU_RESULT <= std_logic_vector(to_unsigned(to_integer(unsigned(A))/ to_integer(unsigned(B)),8));

when "100" =>--XOR
ALU_RESULT <= A xor B;

when "101" => --Xnor
ALU_RESULT <= A Xnor B;

when "110" => --A equals B
if (A=B) then 
ALU_RESULT <= x"01"; --I care about the first 2 bits. The others dont matter; 
else
ALU_RESULT <= x"00";
end if;

when "111" => --A greater then B
if (A > B) then 
ALU_RESULT <= x"01"; --I care about the first 2 bits. The others dont matter; 
else
ALU_RESULT <= x"00";
end if;


end case;
end process;

RESULT <= ALU_RESULT;
--Indicate a overflow
--Extensions 
--Turn 8 bit into 9 bit
--temp <= ('0' & A) + ('0' & B);
--Ife there is a carryout, the 9 bit will be 1.
carry <= temp(8);
end Behavioral;


