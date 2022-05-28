--Header
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--Defining I/O
entity SR_LATCH is
port
(
S, R : in STD_LOGIC;
Q : inout STD_LOGIC -- It is not possible read an output and use as input, to fix that we use: inout
);

end SR_LATCH;

--How the component works
architecture Behavioral of SR_LATCH is 
signal notQ  :  STD_LOGIC;

begin

Q <= R nor notQ;
notQ <= S nor Q;

end Behavioral;