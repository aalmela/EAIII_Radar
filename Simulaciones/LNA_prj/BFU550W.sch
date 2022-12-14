<Qucs Schematic 0.0.20>
<Properties>
  <View=0,93,1044,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=BFU550W.dat>
  <DataDisplay=BFU550W.dpl>
  <OpenDisplay=1>
  <Script=BFU550W.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Título>
  <FrameText1=Dibujado por:>
  <FrameText2=Fecha:>
  <FrameText3=Revisión:>
</Properties>
<Symbol>
  <.PortSym 40 20 2 0>
  <.PortSym 40 60 3 0>
  <.PortSym 40 100 1 0>
</Symbol>
<Components>
  <L L1 1 680 530 10 -26 0 1 "0.001 pH" 1 "" 0>
  <L Lcl 1 680 170 10 -26 0 1 "90 pH" 1 "" 0>
  <Port Emitter 1 680 560 12 4 0 1 "3" 1 "analog" 0>
  <L Lcw 1 680 280 10 -26 0 1 "360 pH" 1 "" 0>
  <Port Collector 1 680 140 -79 -23 0 3 "1" 1 "analog" 0>
  <L Lew 1 680 420 10 -26 0 1 "950 pH" 1 "" 0>
  <L Lbl 1 420 220 -26 10 0 0 "1 fH" 1 "" 0>
  <Port Base 1 330 220 -23 12 0 0 "2" 1 "analog" 0>
  <C Cce 1 930 350 17 -26 0 1 "45 fF" 1 "" 0 "neutral" 0>
  <C Ccb 1 520 220 -26 17 0 0 "65 fF" 1 "" 0 "neutral" 0>
  <C Cbe 1 510 470 -26 -55 0 2 "45 fF" 1 "" 0 "neutral" 0>
  <L Lbw 1 530 350 -26 10 0 0 "800 pH" 1 "" 0>
  <C Cbpad 1 630 310 -26 -55 0 2 "300 fF" 1 "" 0 "neutral" 0>
  <C Cepad 1 840 360 -74 -26 0 3 "270 fF" 1 "" 0 "neutral" 0>
  <_BJT BFU550D_1 1 680 350 8 -26 0 0 "npn" 0 "1.1915e-16" 0 "1" 0 "1" 0 "0.4212" 0 "0.05625" 0 "183.69" 0 "2.4" 0 "1.49e-13" 0 "2.5" 0 "1.1915e-16" 0 "1.1" 0 "133.81" 0 "0.51249" 0 "0.4" 0 "0.04463" 0 "0.54" 0 "0.36" 0 "0.7" 0 "8.434e-13" 0 "0.95" 0 "0.33533" 0 "1.236e-13" 0 "0.72" 0 "0.31844" 0 "0.5" 0 "0" 0 "0.75" 0 "0" 0 "0.85" 0 "1.004e-11" 0 "10" 0 "1" 0 "0.07092" 0 "0" 0 "26.85" 0 "1.0967e-10" 0 "2" 0 "1" 0 "0" 0 "1" 0 "1" 0 "0" 0 "0" 0 "3" 0 "1.11" 0 "26.85" 0 "1" 0>
</Components>
<Wires>
  <680 380 680 390 "" 0 0 0 "">
  <680 470 680 500 "" 0 0 0 "">
  <680 200 680 220 "" 0 0 0 "">
  <680 220 680 250 "" 0 0 0 "">
  <680 310 680 320 "" 0 0 0 "">
  <680 450 680 470 "n8" 710 430 8 "">
  <330 220 390 220 "" 0 0 0 "">
  <680 220 930 220 "n9" 720 190 11 "">
  <680 470 930 470 "" 0 0 0 "">
  <930 380 930 470 "" 0 0 0 "">
  <930 220 930 320 "" 0 0 0 "">
  <560 350 590 350 "" 0 0 0 "">
  <540 470 680 470 "" 0 0 0 "">
  <550 220 680 220 "" 0 0 0 "">
  <450 220 470 220 "" 0 0 0 "">
  <470 470 480 470 "" 0 0 0 "">
  <470 220 490 220 "n4" 510 190 9 "">
  <470 220 470 350 "" 0 0 0 "">
  <470 350 470 470 "" 0 0 0 "">
  <470 350 500 350 "" 0 0 0 "">
  <660 310 680 310 "" 0 0 0 "">
  <590 310 600 310 "" 0 0 0 "">
  <590 350 650 350 "" 0 0 0 "">
  <590 310 590 350 "" 0 0 0 "">
  <680 310 840 310 "" 0 0 0 "">
  <840 310 840 330 "" 0 0 0 "">
  <680 390 840 390 "" 0 0 0 "">
  <650 350 650 350 "n5" 590 390 0 "">
  <680 320 680 320 "n6" 710 290 0 "">
  <680 380 680 380 "n7" 710 350 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 50 280 12 #000000 0 ".SUBCKT BFU550W 1 2 3\nQ1 6 5 7 7 BFU550D\n* SOT23 parasitic model\nLc_w		9 6 360p\nLb_w		4 5 800p \nLe_w		7 8 950p\nLc_l		1 9 90p\nLb_l		2 4 0.001p\nLe_l		3 8 0.001p\nCcb		4 9 65f\nCbasepad	5 6 300f\nCbe		4 8 45f\nCce		8 9 45f\nCemitterpad	6 7 270f\n">
</Paintings>
