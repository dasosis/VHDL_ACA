library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMUX_1to4 is
    Port ( I : in STD_LOGIC;
        S0, S1 : in STD_LOGIC;
        Y0, Y1, Y2, Y3 : out STD_LOGIC);
    end DEMUX_1to4;

architecture Behavioral of DEMUX_1to4 is
begin
    Y0 <= I when (S1 = '0' and S0 = '0') else '0';
    Y1 <= I when (S1 = '0' and S0 = '1') else '0';
    Y2 <= I when (S1 = '1' and S0 = '0') else '0';
    Y3 <= I when (S1 = '1' and S0 = '1') else '0';
end Behavioral;