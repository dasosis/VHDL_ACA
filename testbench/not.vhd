library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture sim of testbench is
    signal A, Y : STD_LOGIC;
begin
    uut: entity work.NOT_Gate
        port map (
            A => A,
            Y => Y
        );

    process
    begin
        A <= '0'; wait for 10 ns;
        A <= '1'; wait for 10 ns;
        wait;
    end process;
end sim;