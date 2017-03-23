library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity programCounter is
    Port ( data : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           dataOut : out  STD_LOGIC_VECTOR (31 downto 0));
end programCounter;

architecture Behavioral of programCounter is

begin
process (clk, rst)
begin
	if(rising_edge(clk)) then
		if (rst = '1') then
			dataOut <= "00000000000000000000000000000000";
		else
			dataOut <= data;
		end if;
	end if;
end process;
end Behavioral;

