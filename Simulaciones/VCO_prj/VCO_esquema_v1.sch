<Qucs Schematic 0.0.20>
<Properties>
  <View=63,-39,1291,765,0.706468,0,0>
  <Grid=10,10,1>
  <DataSet=VCO_esquema_v1.dat>
  <DataDisplay=VCO_esquema_v1.dpl>
  <OpenDisplay=1>
  <Script=VCO_esquema_v1.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Título>
  <FrameText1=Dibujado por:>
  <FrameText2=Fecha:>
  <FrameText3=Revisión:>
</Properties>
<Symbol>
  <.PortSym 40 20 1 0>
  <.PortSym 40 100 3 0>
  <.PortSym 40 130 4 0>
</Symbol>
<Components>
  <GND * 5 580 690 0 0 0 0>
  <GND * 5 460 690 0 0 0 0>
  <L L2 1 260 580 -26 10 0 0 "100 nH" 1 "" 0>
  <GND * 5 310 700 0 0 0 0>
  <GND *1 5 210 700 0 0 0 0>
  <L L3 1 580 520 10 -26 0 1 "2.4 nH" 1 "" 0>
  <GND * 5 720 690 0 0 0 0>
  <GND * 5 930 690 0 0 0 0>
  <GND * 5 840 690 0 0 0 0>
  <L L6 1 930 650 10 -26 0 1 "0 nH" 1 "" 0>
  <C C7 1 840 480 17 -26 0 1 "1 pF" 1 "" 0 "neutral" 0>
  <GND * 5 1150 180 0 0 0 0>
  <GND * 5 800 270 0 0 0 0>
  <GND * 5 460 270 0 0 0 0>
  <R R4 1 930 580 15 -26 0 1 "220 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R1 1 720 320 15 -26 0 1 "1.5 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 1 720 560 15 -26 0 1 "2.7 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C1 1 460 240 17 -26 0 1 "47 nF" 1 "" 0 "neutral" 0>
  <C C2 1 210 650 17 -26 0 1 "47 nF" 1 "" 0 "neutral" 0>
  <C C3 1 400 580 -26 -55 0 2 "4.3 pF" 1 "" 0 "neutral" 0>
  <C C5 1 650 420 -26 17 0 0 "100 pF" 1 "" 0 "neutral" 0>
  <R PH4 1 580 640 15 -26 0 1 "0 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R PH1 1 460 460 15 -26 0 1 "0 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R PH2 1 460 530 15 -26 0 1 "0 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <L L5 1 990 340 10 -26 0 1 "0 nH" 1 "" 0>
  <Sub SUB1 1 310 650 21 -26 1 3 "SMV1234.sch" 1>
  <Port VCC 1 230 180 -23 12 0 0 "1" 1 "analog" 0>
  <GND * 5 290 320 0 0 0 0>
  <Vdc V2 1 290 230 18 -26 0 1 "5 V" 1>
  <Vdc V3 1 140 670 18 -26 0 1 "5 V" 1>
  <GND * 5 140 700 0 0 0 0>
  <Port P1 1 130 580 -23 12 0 0 "3" 1 "analog" 0>
  <C C4 1 460 630 17 -26 0 1 "47 pF" 1 "" 0 "neutral" 0>
  <C C8 1 840 640 17 -26 0 1 "3 pF" 1 "" 0 "neutral" 0>
  <C C6 1 800 230 17 -26 0 1 "47 pF" 1 "" 0 "neutral" 0>
  <C C11 1 1050 520 -26 17 0 0 "33 pF" 1 "" 0 "neutral" 0>
  <.DC DC1 1 330 10 0 37 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Port Out 1 1180 520 4 -50 0 2 "4" 1 "analog" 0>
  <.TR TR1 1 540 10 0 60 0 0 "lin" 1 "0" 1 "10 us" 1 "100001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <GND * 5 1150 630 0 0 0 0>
  <R R5 1 1150 600 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C10 1 1050 180 -26 17 0 0 "47 pF" 1 "" 0 "neutral" 0>
  <Sub SUB2 1 960 450 49 -26 1 3 "BFR92A.sch" 1>
</Components>
<Wires>
  <210 680 210 700 "" 0 0 0 "">
  <210 580 210 620 "" 0 0 0 "">
  <210 580 230 580 "" 0 0 0 "">
  <310 680 310 700 "" 0 0 0 "">
  <290 580 310 580 "" 0 0 0 "">
  <310 580 370 580 "" 0 0 0 "">
  <310 580 310 620 "" 0 0 0 "">
  <460 660 460 690 "" 0 0 0 "">
  <460 560 460 580 "" 0 0 0 "">
  <460 580 460 600 "" 0 0 0 "">
  <430 580 460 580 "" 0 0 0 "">
  <460 490 460 500 "" 0 0 0 "">
  <460 420 460 430 "" 0 0 0 "">
  <460 420 580 420 "" 0 0 0 "">
  <580 670 580 690 "" 0 0 0 "">
  <580 550 580 610 "" 0 0 0 "">
  <580 420 580 490 "" 0 0 0 "">
  <720 590 720 690 "" 0 0 0 "">
  <720 350 720 420 "" 0 0 0 "">
  <720 420 720 530 "" 0 0 0 "">
  <720 420 840 420 "" 0 0 0 "">
  <840 670 840 690 "" 0 0 0 "">
  <930 680 930 690 "" 0 0 0 "">
  <930 610 930 620 "" 0 0 0 "">
  <840 420 930 420 "" 0 0 0 "">
  <840 420 840 450 "" 0 0 0 "">
  <840 510 840 520 "" 0 0 0 "">
  <840 520 840 610 "" 0 0 0 "">
  <930 520 930 550 "" 0 0 0 "">
  <840 520 930 520 "" 0 0 0 "">
  <1080 180 1150 180 "" 0 0 0 "">
  <720 180 800 180 "" 0 0 0 "">
  <800 180 990 180 "" 0 0 0 "">
  <800 180 800 200 "" 0 0 0 "">
  <800 260 800 270 "" 0 0 0 "">
  <460 180 460 210 "" 0 0 0 "">
  <680 420 720 420 "" 0 0 0 "">
  <580 420 620 420 "" 0 0 0 "">
  <140 580 210 580 "" 0 0 0 "">
  <930 520 1020 520 "" 0 0 0 "">
  <930 480 930 520 "" 0 0 0 "">
  <990 370 990 420 "" 0 0 0 "">
  <990 180 1020 180 "" 0 0 0 "">
  <990 180 990 310 "" 0 0 0 "">
  <230 180 290 180 "" 0 0 0 "">
  <290 260 290 320 "" 0 0 0 "">
  <290 180 460 180 "" 0 0 0 "">
  <290 180 290 200 "" 0 0 0 "">
  <140 580 140 640 "" 0 0 0 "">
  <130 580 140 580 "" 0 0 0 "">
  <1080 520 1150 520 "out" 1140 490 23 "">
  <1150 520 1180 520 "" 0 0 0 "">
  <1150 520 1150 570 "" 0 0 0 "">
  <460 180 720 180 "" 0 0 0 "">
  <720 180 720 290 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
