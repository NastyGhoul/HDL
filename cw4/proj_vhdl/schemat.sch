<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(3:0)" />
        <signal name="XLXN_6(3:0)" />
        <signal name="XLXN_7(3:0)" />
        <signal name="XLXN_9(1:0)" />
        <signal name="XLXN_10(3:0)" />
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="STOP" />
        <signal name="liczba_7seg(6:0)" />
        <signal name="anody(3:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="STOP" />
        <port polarity="Output" name="liczba_7seg(6:0)" />
        <port polarity="Output" name="anody(3:0)" />
        <blockdef name="licznik">
            <timestamp>2024-1-9T11:27:5</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="multiplekser">
            <timestamp>2024-1-9T11:27:11</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="demultiplekser">
            <timestamp>2024-1-9T11:26:49</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="licznik4">
            <timestamp>2024-1-9T11:26:56</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="czestotliwosc_1hz">
            <timestamp>2024-1-9T11:26:37</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="czestotliwosc_400Hz">
            <timestamp>2024-1-9T11:26:42</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="transkoder_a">
            <timestamp>2024-1-9T11:42:6</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <block symbolname="licznik" name="XLXI_1">
            <blockpin signalname="XLXN_2" name="zegar" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="STOP" name="stop" />
            <blockpin signalname="XLXN_3(3:0)" name="wyjscie1(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="wyjscie2(3:0)" />
            <blockpin signalname="XLXN_7(3:0)" name="wyjscie3(3:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="wyjscie4(3:0)" />
        </block>
        <block symbolname="multiplekser" name="XLXI_2">
            <blockpin signalname="XLXN_3(3:0)" name="liczba1(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="liczba2(3:0)" />
            <blockpin signalname="XLXN_7(3:0)" name="liczba3(3:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="liczba4(3:0)" />
            <blockpin signalname="XLXN_9(1:0)" name="kanal(1:0)" />
            <blockpin signalname="XLXN_10(3:0)" name="wyjscie(3:0)" />
        </block>
        <block symbolname="demultiplekser" name="XLXI_4">
            <blockpin signalname="XLXN_9(1:0)" name="kanal(1:0)" />
            <blockpin signalname="anody(3:0)" name="anody(3:0)" />
        </block>
        <block symbolname="licznik4" name="XLXI_5">
            <blockpin signalname="XLXN_1" name="CLK_400Hz" />
            <blockpin signalname="XLXN_9(1:0)" name="kanal(0:1)" />
        </block>
        <block symbolname="czestotliwosc_1hz" name="XLXI_6">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_2" name="CLK_1Hz" />
        </block>
        <block symbolname="czestotliwosc_400Hz" name="XLXI_7">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_1" name="CLK_400Hz" />
        </block>
        <block symbolname="transkoder_a" name="XLXI_9">
            <blockpin signalname="XLXN_10(3:0)" name="liczba(3:0)" />
            <blockpin signalname="liczba_7seg(6:0)" name="liczba_7seg(6:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1728" y="1568" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1120" y="1808" name="XLXI_5" orien="R0">
        </instance>
        <instance x="656" y="1312" name="XLXI_6" orien="R0">
        </instance>
        <instance x="592" y="1808" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1120" y1="1776" y2="1776" x1="976" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1216" y1="1280" y2="1280" x1="1040" />
        </branch>
        <branch name="XLXN_3(3:0)">
            <wire x2="1728" y1="1280" y2="1280" x1="1600" />
        </branch>
        <branch name="XLXN_4(3:0)">
            <wire x2="1728" y1="1344" y2="1344" x1="1600" />
        </branch>
        <branch name="XLXN_6(3:0)">
            <wire x2="1728" y1="1472" y2="1472" x1="1600" />
        </branch>
        <branch name="XLXN_7(3:0)">
            <wire x2="1728" y1="1408" y2="1408" x1="1600" />
        </branch>
        <branch name="XLXN_9(1:0)">
            <wire x2="1616" y1="1776" y2="1776" x1="1504" />
            <wire x2="1792" y1="1776" y2="1776" x1="1616" />
            <wire x2="1616" y1="1536" y2="1776" x1="1616" />
            <wire x2="1728" y1="1536" y2="1536" x1="1616" />
        </branch>
        <branch name="XLXN_10(3:0)">
            <wire x2="2224" y1="1280" y2="1280" x1="2112" />
        </branch>
        <branch name="CLK">
            <wire x2="464" y1="1280" y2="1280" x1="416" />
            <wire x2="464" y1="1280" y2="1776" x1="464" />
            <wire x2="592" y1="1776" y2="1776" x1="464" />
            <wire x2="656" y1="1280" y2="1280" x1="464" />
        </branch>
        <iomarker fontsize="28" x="416" y="1280" name="CLK" orien="R180" />
        <branch name="RESET">
            <wire x2="1200" y1="1376" y2="1376" x1="1136" />
            <wire x2="1216" y1="1376" y2="1376" x1="1200" />
        </branch>
        <branch name="STOP">
            <wire x2="1200" y1="1472" y2="1472" x1="1120" />
            <wire x2="1216" y1="1472" y2="1472" x1="1200" />
        </branch>
        <branch name="liczba_7seg(6:0)">
            <wire x2="2688" y1="1280" y2="1280" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1280" name="liczba_7seg(6:0)" orien="R0" />
        <branch name="anody(3:0)">
            <wire x2="2432" y1="1776" y2="1776" x1="2176" />
        </branch>
        <instance x="1216" y="1504" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1136" y="1376" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="1120" y="1472" name="STOP" orien="R180" />
        <iomarker fontsize="28" x="2432" y="1776" name="anody(3:0)" orien="R0" />
        <instance x="1792" y="1808" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2224" y="1312" name="XLXI_9" orien="R0">
        </instance>
    </sheet>
</drawing>