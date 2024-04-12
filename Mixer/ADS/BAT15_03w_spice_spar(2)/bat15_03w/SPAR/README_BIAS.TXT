S-Parameter Files:
------------------

Within this directory you are able to see the main operating point
information within the filename:

For bipolar transistors you have to read as follows:
the filename XXAAABBB.S2P is coded:
             XX           internal type definition
               AAA        shows the voltage; V means Volt;
                          the character stands instead of the decimal point
                          ie. 10V means 10Volts; 1V0 means 1.0Volts
                  BBB     shows the current; M means mA, 
                          A means Ampere, U means µA;
                          the character stands instead of the decimal point
                          ie. 10M means 10mA; 1M0 stands for 1.0mA; 
                          A10 for 0.1A; 10U for 10µA;
                          (this is also valid for the GaAs FETs)

For diodes you have to read as follows:
the filename  XXAAABBB.S1P is coded:
              XX           internal type definition
                AAA        shows the voltage; V means Volt;
                           the character stands instead of the decimal point
                           ie. 10V means 10Volts; 1V0 means 1.0Volts
                   BBB     shows the current; M means mA, 
                           A means Ampere; U means µA
                           the character stands instead of the decimal point
                           ie. 10M means 10mA; 1M0 stands for 1.0mA; 
                           A10 for 0.1A; 10U for 10µA;
if the voltage is V00 the diode is foreward biased and a current is shown
if the current is U00 the shown voltage is the backward biasing voltage

For files , changed v( volt) into p, are measured in forward direction
forward direction is marked with negativ VR

For MOS FETs and dual gate GaAs-FETs you have to read as follows:
the filename  XXAABBCC.S2P is coded:
              XX           internal type definition
                AA         is UDS in V*0.1 i.e 50 means 5.0V; 15 means 1.5V;
                  BB       is UG(2)S in V*0.1 ie 35 means 3.5V; 10 means 1.0V;
                    CC     is ID in mA ie 10 means 10mA; 05 means 5mA;




README.TXT      V4.0      September 2000
