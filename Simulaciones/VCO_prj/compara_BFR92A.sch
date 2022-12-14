<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-17,1907,815,1,0,0>
  <Grid=10,10,1>
  <DataSet=compara_BFR92A.dat>
  <DataDisplay=compara_BFR92A.dpl>
  <OpenDisplay=1>
  <Script=compara_BFR92A.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Título>
  <FrameText1=Dibujado por:>
  <FrameText2=Fecha:>
  <FrameText3=Revisión:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.DC DC1 1 60 310 0 39 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Vdc V1 1 570 260 18 -26 0 1 "3.3 V" 1>
  <GND *1 5 570 290 0 0 0 0>
  <GND *2 5 770 490 0 0 0 0>
  <GND *3 5 630 490 0 0 0 0>
  <Vdc V2 1 470 450 18 -26 0 1 "0.86 V" 1>
  <GND *4 5 470 490 0 0 0 0>
  <GND *5 5 340 490 0 0 0 0>
  <IProbe Pr1 1 610 170 -26 16 0 0>
  <BiasT X1 1 470 360 -26 34 0 0 "100 uH" 0 "100 uF" 0>
  <BiasT X2 1 650 360 -26 -53 0 2 "100 uH" 0 "100 uF" 0>
  <.SP SP1 1 60 400 0 63 0 0 "lin" 1 "100 MHz" 1 "3 GHz" 1 "1000" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <GND *6 5 500 670 0 0 0 0>
  <Pac P4 1 620 700 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND *7 5 620 770 0 0 0 0>
  <Pac P3 1 370 700 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND *8 5 370 770 0 0 0 0>
  <Pac P1 1 340 420 18 -26 0 1 "1" 1 "50 Ohm" 1 "-110 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P2 1 770 420 18 -26 0 1 "2" 1 "50 Ohm" 1 "-100 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Sub SUB1 1 570 390 -26 51 1 2 "BFR92A_v1.sch" 1>
  <SPfile X3 1 500 640 -26 -59 0 0 "BFR92AB.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
</Components>
<Wires>
  <500 360 540 360 "" 0 0 0 "">
  <600 360 620 360 "" 0 0 0 "">
  <680 360 770 360 "" 0 0 0 "">
  <770 360 770 390 "" 0 0 0 "">
  <770 450 770 490 "" 0 0 0 "">
  <600 420 630 420 "" 0 0 0 "">
  <630 420 630 490 "" 0 0 0 "">
  <470 390 470 420 "" 0 0 0 "">
  <470 480 470 490 "" 0 0 0 "">
  <340 360 440 360 "" 0 0 0 "">
  <340 360 340 390 "" 0 0 0 "">
  <340 450 340 490 "" 0 0 0 "">
  <650 170 650 330 "" 0 0 0 "">
  <640 170 650 170 "" 0 0 0 "">
  <570 170 570 230 "" 0 0 0 "">
  <570 170 580 170 "" 0 0 0 "">
  <530 640 620 640 "" 0 0 0 "">
  <620 640 620 670 "" 0 0 0 "">
  <620 730 620 770 "" 0 0 0 "">
  <370 640 470 640 "" 0 0 0 "">
  <370 640 370 670 "" 0 0 0 "">
  <370 730 370 770 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Smith 240 270 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 "" "" "" "">
	<"S[1,1]" #0000ff 0 3 0 0 0>
	  <Mkr 8.66366e+08 -101 -207 3 0 0 1>
	<"S[2,2]" #ff0000 0 3 0 0 0>
	  <Mkr 8.28629e+08 211 -200 3 0 0 1>
  </Smith>
  <Smith 740 260 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 "" "" "" "">
	<"S[1,1]" #0000ff 0 3 0 0 0>
	  <Mkr 8.66366e+08 -101 -207 3 0 0 1>
	<"S[2,2]" #ff0000 0 3 0 0 0>
	  <Mkr 8.28629e+08 211 -200 3 0 0 1>
	<"S[3,3]" #ff00ff 0 3 0 0 0>
	<"S[4,4]" #00ff00 0 3 0 0 0>
  </Smith>
</Diagrams>
<Paintings>
</Paintings>
