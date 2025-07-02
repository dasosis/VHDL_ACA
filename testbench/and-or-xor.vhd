library ieee;
use ieee.std_logic_1164.all;

entity AND_Gate_tb is
end AND_Gate_tb;

architecture behavior of AND_Gate_tb is
    signal A, B : std_logic := '0';
    signal Y : std_logic;
begin
    uut: entity work.AND_Gate
        port map (
            A => A,
            B => B,
            Y => Y
        );

    process
    begin
        A <= '0'; B <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; wait for 10 ns;
        wait;
    end process;
end behavior;
