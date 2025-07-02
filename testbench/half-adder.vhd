library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture sim of testbench is
    signal A, B : STD_LOGIC;
    signal SUM, CARRY : STD_LOGIC;
begin
    uut: entity work.Half_Adder
        port map (
            A => A,
            B => B,
            SUM => SUM,
            CARRY => CARRY
        );

    process
    begin
        A <= '0'; B <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; wait for 10 ns;
        wait;
    end process;
end sim;