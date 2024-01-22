--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schemat_drc.vhf
-- /___/   /\     Timestamp : 01/09/2024 12:39:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family xbr -flat -suppress -vhdl schemat_drc.vhf -w C:/students_ulic/mf/proj_vhdl/schemat.sch
--Design Name: schemat
--Device: xbr
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schemat is
   port ( CLK         : in    std_logic; 
          RESET       : in    std_logic; 
          STOP        : in    std_logic; 
          anody       : out   std_logic_vector (3 downto 0); 
          liczba_7seg : out   std_logic_vector (6 downto 0));
end schemat;

architecture BEHAVIORAL of schemat is
   signal XLXN_1      : std_logic;
   signal XLXN_2      : std_logic;
   signal XLXN_3      : std_logic_vector (3 downto 0);
   signal XLXN_4      : std_logic_vector (3 downto 0);
   signal XLXN_6      : std_logic_vector (3 downto 0);
   signal XLXN_7      : std_logic_vector (3 downto 0);
   signal XLXN_9      : std_logic_vector (1 downto 0);
   signal XLXN_10     : std_logic_vector (3 downto 0);
   component licznik
      port ( zegar    : in    std_logic; 
             reset    : in    std_logic; 
             stop     : in    std_logic; 
             wyjscie1 : out   std_logic_vector (3 downto 0); 
             wyjscie2 : out   std_logic_vector (3 downto 0); 
             wyjscie3 : out   std_logic_vector (3 downto 0); 
             wyjscie4 : out   std_logic_vector (3 downto 0));
   end component;
   
   component multiplekser
      port ( liczba1 : in    std_logic_vector (3 downto 0); 
             liczba2 : in    std_logic_vector (3 downto 0); 
             liczba3 : in    std_logic_vector (3 downto 0); 
             liczba4 : in    std_logic_vector (3 downto 0); 
             kanal   : in    std_logic_vector (1 downto 0); 
             wyjscie : out   std_logic_vector (3 downto 0));
   end component;
   
   component demultiplekser
      port ( kanal : in    std_logic_vector (1 downto 0); 
             anody : out   std_logic_vector (3 downto 0));
   end component;
   
   component licznik4
      port ( CLK_400Hz : in    std_logic; 
             kanal     : out   std_logic_vector (0 to 1));
   end component;
   
   component czestotliwosc_1hz
      port ( CLK     : in    std_logic; 
             CLK_1Hz : out   std_logic);
   end component;
   
   component czestotliwosc_400Hz
      port ( CLK       : in    std_logic; 
             CLK_400Hz : out   std_logic);
   end component;
   
   component transkoder
      port ( liczba      : in    std_logic_vector (3 downto 0); 
             liczba_7seg : out   std_logic_vector (6 downto 0));
   end component;
   
begin
   XLXI_1 : licznik
      port map (reset=>RESET,
                stop=>STOP,
                zegar=>XLXN_2,
                wyjscie1(3 downto 0)=>XLXN_3(3 downto 0),
                wyjscie2(3 downto 0)=>XLXN_4(3 downto 0),
                wyjscie3(3 downto 0)=>XLXN_7(3 downto 0),
                wyjscie4(3 downto 0)=>XLXN_6(3 downto 0));
   
   XLXI_2 : multiplekser
      port map (kanal(1 downto 0)=>XLXN_9(1 downto 0),
                liczba1(3 downto 0)=>XLXN_3(3 downto 0),
                liczba2(3 downto 0)=>XLXN_4(3 downto 0),
                liczba3(3 downto 0)=>XLXN_7(3 downto 0),
                liczba4(3 downto 0)=>XLXN_6(3 downto 0),
                wyjscie(3 downto 0)=>XLXN_10(3 downto 0));
   
   XLXI_4 : demultiplekser
      port map (kanal(1 downto 0)=>XLXN_9(1 downto 0),
                anody(3 downto 0)=>anody(3 downto 0));
   
   XLXI_5 : licznik4
      port map (CLK_400Hz=>XLXN_1,
                kanal(0 to 1)=>XLXN_9(1 downto 0));
   
   XLXI_6 : czestotliwosc_1hz
      port map (CLK=>CLK,
                CLK_1Hz=>XLXN_2);
   
   XLXI_7 : czestotliwosc_400Hz
      port map (CLK=>CLK,
                CLK_400Hz=>XLXN_1);
   
   XLXI_8 : transkoder
      port map (liczba(3 downto 0)=>XLXN_10(3 downto 0),
                liczba_7seg(6 downto 0)=>liczba_7seg(6 downto 0));
   
end BEHAVIORAL;


