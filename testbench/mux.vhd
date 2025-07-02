library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture sim of testbench is
    signal I0, I1, I2, I3 : STD_LOGIC;
    signal S0, S1 : STD_LOGIC;
    signal Y : STD_LOGIC;
begin
    uut: entity work.MUX_4to1
        port map (
            I0 => I0,
            I1 => I1,
            I2 => I2,
            I3 => I3,
            S0 => S0,
            S1 => S1,
            Y => Y
        );

    process
    begin
        I0 <= '0'; I1 <= '1'; I2 <= '0'; I3 <= '1';
        S0 <= '0'; S1 <= '0'; wait for 10 ns;
        S0 <= '1'; S1 <= '0'; wait for 10 ns;
        S0 <= '0'; S1 <= '1'; wait for 10 ns;
        S0 <= '1'; S1 <= '1'; wait for 10 ns;
        wait;
    end process;
end sim;
