Board Description
-----------------

board designation           : MYRIAD RF / Parallela 
board version		    : r1.1	
board type                  : Lead Free
board size                  : 100.33mm x 68.58mm
board thickness             : 1.6 mm +/- 10 %
board material              : IT-180A
number of layers            : 6
 


minimum finished hole size  :  200 um
minimum spacing             :  100 um
minimum track width         :  100 um

drill diameters             : finished hole

plating finish (both sides) : immersion gold
                              0.05-0.10 um of gold over
                              2.50-5.00 um of nickel


Important Notes
---------------

DRCs must be run on Gerber files before building boards.

All through hole vias may be plated shut.

Solder mask : black TAIYO, both sides, halogen free.

Silkscreen : white epoxy ink, halogen free, both sides.

Electrical test : 100 % netlist.

Boards are to be individually bagged.

Design software used:  KiCad



Controlled Impedance
--------------------

  * 50 Ohm coated single ended microstrip (Top layer) track width 310 um


Board Stackup
----------------

1. Solder Paste Front		: MYRIAD_RF-F_Paste.gtp
2. Silk Screen Front		: MYRIAD_RF-F_SilkS.gto
3. SolderMask Front		: MYRIAD_RF-F_Mask.gts

4. Front Layer			: MYRIAD_RF-Front.gtl
5. Inner GND Layer		: MYRIAD_RF-Inner_GND.gbr																	
6. Inner Analog Signal Layer	: MYRIAD_RF-Inner_Analog_Signal.gbr
7. Inner Power Layer		: MYRIAD_RF-Inner_Power.gbr
8. Inner Digital Signal Layer	: MYRIAD_RF-Inner_Digital_Signal.gbr
9. Back Layer			: MYRIAD_RF-Back.gbl

10. SolderMask Back		: MYRIAD_RF-B_Mask.gbs
11. Silk Screen Back		: MYRIAD_RF-B_SilkS.gbo
12. Solder Paste Back      	: MYRIAD_RF-B_Paste.gbp

--------------------------------------------------
13. PCB edges           	: MYRIAD_RF-Edge_Cuts.gbr
14. Drawings			: MYRIAD_RF-Dwgs_User.gbr

15. Drill map            	: MYRIAD_RF-drl_map.pho
16. NC Drill file	 	: MYRIAD_RF.drl



Reports folder
--------------
                  
MYRIAD_RF-drc.txt
MYRIAD_RF-drl.rpt.txt
MYRIAD_RF.net




