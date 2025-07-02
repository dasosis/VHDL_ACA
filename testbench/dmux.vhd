library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture sim of testbench is
    signal I  : STD_LOGIC;
    signal S0 : STD_LOGIC;
    signal S1 : STD_LOGIC;
    signal Y0 : STD_LOGIC;
    signal Y1 : STD_LOGIC;
    signal Y2 : STD_LOGIC;
    signal Y3 : STD_LOGIC;
begin
    uut: entity work.DEMUX_1to4
        port map (
            I  => I,
            S0 => S0,
            S1 => S1,
            Y0 => Y0,
            Y1 => Y1,
            Y2 => Y2,
            Y3 => Y3
        );

    process
    begin
        -- Test all combinations of I, S0, S1 (each is 1 bit)
        I <= '0'; S0 <= '0'; S1 <= '0'; wait for 10 ns;
        I <= '0'; S0 <= '0'; S1 <= '1'; wait for 10 ns;
        I <= '0'; S0 <= '1'; S1 <= '0'; wait for 10 ns;
        I <= '0'; S0 <= '1'; S1 <= '1'; wait for 10 ns;
        I <= '1'; S0 <= '0'; S1 <= '0'; wait for 10 ns;
        I <= '1'; S0 <= '0'; S1 <= '1'; wait for 10 ns;
        I <= '1'; S0 <= '1'; S1 <= '0'; wait for 10 ns;
        I <= '1'; S0 <= '1'; S1 <= '1'; wait for 10 ns;
        wait;
    end process;
end sim;
