EESchema Schematic File Version 4
LIBS:meta_breakout-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Meta Breakout Board"
Date "2018-06-10"
Rev "Rev A"
Comp "Andreas Olofsson, Copyright 2018"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 750  750  0    50   ~ 0
LCLK_IN_P0
Wire Wire Line
	750  750  1400 750 
Text Label 750  650  0    50   ~ 0
LCLK_IN_N0
Wire Wire Line
	750  650  1400 650 
Text Label 750  950  0    50   ~ 0
FRAME_IN_P0
Text Label 750  850  0    50   ~ 0
FRAME_IN_N0
Text Label 750  1150 0    50   ~ 0
WAIT_WR_OUT_N0
Wire Wire Line
	750  1150 1400 1150
Text Label 750  1350 0    50   ~ 0
WAIT_RD_OUT_N0
Wire Wire Line
	750  1350 1400 1350
Text Label 750  1250 0    50   ~ 0
WAIT_WR_OUT_P0
Wire Wire Line
	750  1250 1400 1250
Text Label 750  1550 0    50   ~ 0
VDD0
Wire Wire Line
	750  1550 1400 1550
Text Label 750  1450 0    50   ~ 0
WAIT_RD_OUT_P0
Wire Wire Line
	750  1450 1400 1450
Text Label 750  1750 0    50   ~ 0
DATA_IN_P0
Wire Wire Line
	750  1750 1400 1750
Text Label 750  1650 0    50   ~ 0
DATA_IN_N0
Wire Wire Line
	750  1650 1400 1650
Text Label 750  1950 0    50   ~ 0
DATA_IN_P1
Wire Wire Line
	750  1950 1400 1950
Text Label 750  1850 0    50   ~ 0
DATA_IN_N1
Wire Wire Line
	750  1850 1400 1850
Wire Wire Line
	750  2150 1400 2150
Text Label 750  2350 0    50   ~ 0
DATA_IN_N3
Wire Wire Line
	750  2350 1400 2350
Text Label 750  2250 0    50   ~ 0
DATA_IN_P2
Wire Wire Line
	750  2250 1400 2250
Text Label 750  2450 0    50   ~ 0
DATA_IN_P3
Wire Wire Line
	750  2450 1400 2450
Text Label 750  2750 0    50   ~ 0
DATA_IN_P4
Wire Wire Line
	750  2750 1400 2750
Text Label 750  2650 0    50   ~ 0
DATA_IN_N4
Wire Wire Line
	750  2650 1400 2650
Text Label 750  2950 0    50   ~ 0
DATA_IN_P5
Wire Wire Line
	750  2950 1400 2950
Text Label 750  2850 0    50   ~ 0
DATA_IN_N5
Wire Wire Line
	750  2850 1400 2850
Text Label 750  3150 0    50   ~ 0
DATA_IN_N6
Wire Wire Line
	750  3150 1400 3150
Text Label 750  3350 0    50   ~ 0
DATA_IN_N7
Wire Wire Line
	750  3350 1400 3350
Text Label 750  3250 0    50   ~ 0
DATA_IN_P6
Wire Wire Line
	750  3250 1400 3250
Wire Wire Line
	750  3450 1400 3450
Text Label 750  3450 0    50   ~ 0
DATA_IN_P7
$Comp
L Samtec:BSH-120 J1
U 1 1 5B19D69A
P 1650 2100
F 0 "J1" H 1650 3767 50  0000 C CNN
F 1 "BSH-120" H 1650 3676 50  0000 C CNN
F 2 "Connector_Samtec_BSH:BSH-120-01-X-D-A" H 1600 1650 50  0001 C CNN
F 3 "~" H 1600 1650 50  0001 C CNN
	1    1650 2100
	1    0    0    -1  
$EndComp
Text Label 750  2150 0    50   ~ 0
DATA_IN_N2
Wire Wire Line
	1400 1050 750  1050
Text Label 750  1050 0    50   ~ 0
GND
Wire Wire Line
	750  850  1400 850 
Wire Wire Line
	750  950  1400 950 
Wire Wire Line
	1400 2050 750  2050
Text Label 750  2050 0    50   ~ 0
GND
Text Label 750  2550 0    50   ~ 0
VDDIO0
Wire Wire Line
	750  2550 1400 2550
Text Label 750  3050 0    50   ~ 0
GND
Wire Wire Line
	750  3050 1400 3050
Text Label 750  3550 0    50   ~ 0
CTRL_IN0
Wire Wire Line
	750  3550 1400 3550
Text Label 2550 750  2    50   ~ 0
LCLK_OUT_P0
Wire Wire Line
	2550 750  1900 750 
Text Label 2550 650  2    50   ~ 0
LCLK_OUT_N0
Wire Wire Line
	2550 650  1900 650 
Text Label 2550 950  2    50   ~ 0
FRAME_OUT_P0
Text Label 2550 850  2    50   ~ 0
FRAME_OUT_N0
Text Label 2550 1150 2    50   ~ 0
WAIT_WR_IN_N0
Wire Wire Line
	2550 1150 1900 1150
Text Label 2550 1350 2    50   ~ 0
WAIT_RD_IN_N0
Wire Wire Line
	2550 1350 1900 1350
Text Label 2550 1250 2    50   ~ 0
WAIT_WR_IN_P0
Wire Wire Line
	2550 1250 1900 1250
Text Label 2550 1550 2    50   ~ 0
VDD0
Wire Wire Line
	2550 1550 1900 1550
Text Label 2550 1450 2    50   ~ 0
WAIT_RD_IN_P0
Wire Wire Line
	2550 1450 1900 1450
Text Label 2550 1750 2    50   ~ 0
DATA_OUT_P0
Wire Wire Line
	2550 1750 1900 1750
Text Label 2550 1650 2    50   ~ 0
DATA_OUT_N0
Wire Wire Line
	2550 1650 1900 1650
Text Label 2550 1950 2    50   ~ 0
DATA_OUT_P1
Wire Wire Line
	2550 1950 1900 1950
Text Label 2550 1850 2    50   ~ 0
DATA_OUT_N1
Wire Wire Line
	2550 1850 1900 1850
Wire Wire Line
	2550 2150 1900 2150
Text Label 2550 2350 2    50   ~ 0
DATA_OUT_N3
Wire Wire Line
	2550 2350 1900 2350
Text Label 2550 2250 2    50   ~ 0
DATA_OUT_P2
Wire Wire Line
	2550 2250 1900 2250
Text Label 2550 2450 2    50   ~ 0
DATA_OUT_P3
Wire Wire Line
	2550 2450 1900 2450
Text Label 2550 2750 2    50   ~ 0
DATA_OUT_P4
Wire Wire Line
	2550 2750 1900 2750
Text Label 2550 2650 2    50   ~ 0
DATA_OUT_N4
Wire Wire Line
	2550 2650 1900 2650
Text Label 2550 2950 2    50   ~ 0
DATA_OUT_P5
Wire Wire Line
	2550 2950 1900 2950
Text Label 2550 2850 2    50   ~ 0
DATA_OUT_N5
Wire Wire Line
	2550 2850 1900 2850
Text Label 2550 3150 2    50   ~ 0
DATA_OUT_N6
Wire Wire Line
	2550 3150 1900 3150
Text Label 2550 3350 2    50   ~ 0
DATA_OUT_N7
Wire Wire Line
	2550 3350 1900 3350
Text Label 2550 3250 2    50   ~ 0
DATA_OUT_P6
Wire Wire Line
	2550 3250 1900 3250
Wire Wire Line
	2550 3450 1900 3450
Text Label 2550 3450 2    50   ~ 0
DATA_OUT_P7
Text Label 2550 2150 2    50   ~ 0
DATA_OUT_N2
Wire Wire Line
	1900 1050 2550 1050
Text Label 2550 1050 2    50   ~ 0
GND
Wire Wire Line
	2550 850  1900 850 
Wire Wire Line
	2550 950  1900 950 
Wire Wire Line
	1900 2050 2550 2050
Text Label 2550 2050 2    50   ~ 0
GND
Text Label 2550 2550 2    50   ~ 0
VDDIO0
Wire Wire Line
	2550 2550 1900 2550
Text Label 2550 3050 2    50   ~ 0
GND
Wire Wire Line
	2550 3050 1900 3050
Text Label 2550 3550 2    50   ~ 0
CTRL_OUT0
Wire Wire Line
	2550 3550 1900 3550
Text Label 2700 750  0    50   ~ 0
LCLK_IN_P1
Wire Wire Line
	2700 750  3350 750 
Text Label 2700 650  0    50   ~ 0
LCLK_IN_N1
Wire Wire Line
	2700 650  3350 650 
Text Label 2700 950  0    50   ~ 0
FRAME_IN_P1
Text Label 2700 850  0    50   ~ 0
FRAME_IN_N1
Text Label 2700 1150 0    50   ~ 0
WAIT_WR_OUT_N1
Wire Wire Line
	2700 1150 3350 1150
Text Label 2700 1350 0    50   ~ 0
WAIT_RD_OUT_N1
Wire Wire Line
	2700 1350 3350 1350
Text Label 2700 1250 0    50   ~ 0
WAIT_WR_OUT_P1
Wire Wire Line
	2700 1250 3350 1250
Text Label 2700 1550 0    50   ~ 0
VDD1
Wire Wire Line
	2700 1550 3350 1550
Text Label 2700 1450 0    50   ~ 0
WAIT_RD_OUT_P1
Wire Wire Line
	2700 1450 3350 1450
Text Label 2700 1750 0    50   ~ 0
DATA_IN_P8
Wire Wire Line
	2700 1750 3350 1750
Text Label 2700 1650 0    50   ~ 0
DATA_IN_N8
Wire Wire Line
	2700 1650 3350 1650
Text Label 2700 1950 0    50   ~ 0
DATA_IN_P9
Wire Wire Line
	2700 1950 3350 1950
Text Label 2700 1850 0    50   ~ 0
DATA_IN_N9
Wire Wire Line
	2700 1850 3350 1850
Wire Wire Line
	2700 2150 3350 2150
Text Label 2700 2350 0    50   ~ 0
DATA_IN_N11
Wire Wire Line
	2700 2350 3350 2350
Text Label 2700 2250 0    50   ~ 0
DATA_IN_P10
Wire Wire Line
	2700 2250 3350 2250
Text Label 2700 2450 0    50   ~ 0
DATA_IN_P11
Wire Wire Line
	2700 2450 3350 2450
Text Label 2700 2750 0    50   ~ 0
DATA_IN_P12
Wire Wire Line
	2700 2750 3350 2750
Text Label 2700 2650 0    50   ~ 0
DATA_IN_N12
Wire Wire Line
	2700 2650 3350 2650
Text Label 2700 2950 0    50   ~ 0
DATA_IN_P13
Wire Wire Line
	2700 2950 3350 2950
Text Label 2700 2850 0    50   ~ 0
DATA_IN_N13
Wire Wire Line
	2700 2850 3350 2850
Text Label 2700 3150 0    50   ~ 0
DATA_IN_N14
Wire Wire Line
	2700 3150 3350 3150
Text Label 2700 3350 0    50   ~ 0
DATA_IN_N15
Wire Wire Line
	2700 3350 3350 3350
Text Label 2700 3250 0    50   ~ 0
DATA_IN_P14
Wire Wire Line
	2700 3250 3350 3250
Wire Wire Line
	2700 3450 3350 3450
Text Label 2700 3450 0    50   ~ 0
DATA_IN_P15
Text Label 2700 2150 0    50   ~ 0
DATA_IN_N10
Wire Wire Line
	3350 1050 2700 1050
Text Label 2700 1050 0    50   ~ 0
GND
Wire Wire Line
	2700 850  3350 850 
Wire Wire Line
	2700 950  3350 950 
Wire Wire Line
	3350 2050 2700 2050
Text Label 2700 2050 0    50   ~ 0
GND
Text Label 2700 2550 0    50   ~ 0
VDDIO1
Wire Wire Line
	2700 2550 3350 2550
Text Label 2700 3050 0    50   ~ 0
GND
Wire Wire Line
	2700 3050 3350 3050
Text Label 2700 3550 0    50   ~ 0
CTRL_IN1
Wire Wire Line
	2700 3550 3350 3550
Text Label 4500 750  2    50   ~ 0
LCLK_OUT_P1
Wire Wire Line
	4500 750  3850 750 
Text Label 4500 650  2    50   ~ 0
LCLK_OUT_N1
Wire Wire Line
	4500 650  3850 650 
Text Label 4500 950  2    50   ~ 0
FRAME_OUT_P1
Text Label 4500 850  2    50   ~ 0
FRAME_OUT_N1
Text Label 4500 1150 2    50   ~ 0
WAIT_WR_IN_N1
Wire Wire Line
	4500 1150 3850 1150
Text Label 4500 1350 2    50   ~ 0
WAIT_RD_IN_N1
Wire Wire Line
	4500 1350 3850 1350
Text Label 4500 1250 2    50   ~ 0
WAIT_WR_IN_P1
Wire Wire Line
	4500 1250 3850 1250
Text Label 4500 1550 2    50   ~ 0
VDD1
Wire Wire Line
	4500 1550 3850 1550
Text Label 4500 1450 2    50   ~ 0
WAIT_RD_IN_P1
Wire Wire Line
	4500 1450 3850 1450
Text Label 4500 1750 2    50   ~ 0
DATA_OUT_P8
Wire Wire Line
	4500 1750 3850 1750
Text Label 4500 1650 2    50   ~ 0
DATA_OUT_N8
Wire Wire Line
	4500 1650 3850 1650
Text Label 4500 1950 2    50   ~ 0
DATA_OUT_P9
Wire Wire Line
	4500 1950 3850 1950
Text Label 4500 1850 2    50   ~ 0
DATA_OUT_N9
Wire Wire Line
	4500 1850 3850 1850
Wire Wire Line
	4500 2150 3850 2150
Text Label 4500 2350 2    50   ~ 0
DATA_OUT_N11
Wire Wire Line
	4500 2350 3850 2350
Text Label 4500 2250 2    50   ~ 0
DATA_OUT_P10
Wire Wire Line
	4500 2250 3850 2250
Text Label 4500 2450 2    50   ~ 0
DATA_OUT_P11
Wire Wire Line
	4500 2450 3850 2450
Text Label 4500 2750 2    50   ~ 0
DATA_OUT_P12
Wire Wire Line
	4500 2750 3850 2750
Text Label 4500 2650 2    50   ~ 0
DATA_OUT_N12
Wire Wire Line
	4500 2650 3850 2650
Text Label 4500 2950 2    50   ~ 0
DATA_OUT_P13
Wire Wire Line
	4500 2950 3850 2950
Text Label 4500 2850 2    50   ~ 0
DATA_OUT_N13
Wire Wire Line
	4500 2850 3850 2850
Text Label 4500 3150 2    50   ~ 0
DATA_OUT_N14
Wire Wire Line
	4500 3150 3850 3150
Text Label 4500 3350 2    50   ~ 0
DATA_OUT_N15
Wire Wire Line
	4500 3350 3850 3350
Text Label 4500 3250 2    50   ~ 0
DATA_OUT_P14
Wire Wire Line
	4500 3250 3850 3250
Wire Wire Line
	4500 3450 3850 3450
Text Label 4500 3450 2    50   ~ 0
DATA_OUT_P15
Text Label 4500 2150 2    50   ~ 0
DATA_OUT_N10
Wire Wire Line
	3850 1050 4500 1050
Text Label 4500 1050 2    50   ~ 0
GND
Wire Wire Line
	4500 850  3850 850 
Wire Wire Line
	4500 950  3850 950 
Wire Wire Line
	3850 2050 4500 2050
Text Label 4500 2050 2    50   ~ 0
GND
Text Label 4500 2550 2    50   ~ 0
VDDIO1
Wire Wire Line
	4500 2550 3850 2550
Text Label 4500 3050 2    50   ~ 0
GND
Wire Wire Line
	4500 3050 3850 3050
Text Label 4500 3550 2    50   ~ 0
CTRL_OUT1
Wire Wire Line
	4500 3550 3850 3550
Text Label 4650 750  0    50   ~ 0
LCLK_IN_P2
Wire Wire Line
	4650 750  5300 750 
Text Label 4650 650  0    50   ~ 0
LCLK_IN_N2
Wire Wire Line
	4650 650  5300 650 
Text Label 4650 950  0    50   ~ 0
FRAME_IN_P2
Text Label 4650 850  0    50   ~ 0
FRAME_IN_N2
Text Label 4650 1150 0    50   ~ 0
WAIT_WR_OUT_N2
Wire Wire Line
	4650 1150 5300 1150
Text Label 4650 1350 0    50   ~ 0
WAIT_RD_OUT_N2
Wire Wire Line
	4650 1350 5300 1350
Text Label 4650 1250 0    50   ~ 0
WAIT_WR_OUT_P2
Wire Wire Line
	4650 1250 5300 1250
Text Label 4650 1550 0    50   ~ 0
VDD2
Wire Wire Line
	4650 1550 5300 1550
Text Label 4650 1450 0    50   ~ 0
WAIT_RD_OUT_P2
Wire Wire Line
	4650 1450 5300 1450
Text Label 4650 1750 0    50   ~ 0
DATA_IN_P16
Wire Wire Line
	4650 1750 5300 1750
Text Label 4650 1650 0    50   ~ 0
DATA_IN_N16
Wire Wire Line
	4650 1650 5300 1650
Text Label 4650 1950 0    50   ~ 0
DATA_IN_P17
Wire Wire Line
	4650 1950 5300 1950
Text Label 4650 1850 0    50   ~ 0
DATA_IN_N17
Wire Wire Line
	4650 1850 5300 1850
Wire Wire Line
	4650 2150 5300 2150
Text Label 4650 2350 0    50   ~ 0
DATA_IN_N19
Wire Wire Line
	4650 2350 5300 2350
Text Label 4650 2250 0    50   ~ 0
DATA_IN_P18
Wire Wire Line
	4650 2250 5300 2250
Text Label 4650 2450 0    50   ~ 0
DATA_IN_P19
Wire Wire Line
	4650 2450 5300 2450
Text Label 4650 2750 0    50   ~ 0
DATA_IN_P20
Wire Wire Line
	4650 2750 5300 2750
Text Label 4650 2650 0    50   ~ 0
DATA_IN_N20
Wire Wire Line
	4650 2650 5300 2650
Text Label 4650 2950 0    50   ~ 0
DATA_IN_P21
Wire Wire Line
	4650 2950 5300 2950
Text Label 4650 2850 0    50   ~ 0
DATA_IN_N21
Wire Wire Line
	4650 2850 5300 2850
Text Label 4650 3150 0    50   ~ 0
DATA_IN_N22
Wire Wire Line
	4650 3150 5300 3150
Text Label 4650 3350 0    50   ~ 0
DATA_IN_N23
Wire Wire Line
	4650 3350 5300 3350
Text Label 4650 3250 0    50   ~ 0
DATA_IN_P22
Wire Wire Line
	4650 3250 5300 3250
Wire Wire Line
	4650 3450 5300 3450
Text Label 4650 3450 0    50   ~ 0
DATA_IN_P23
Text Label 4650 2150 0    50   ~ 0
DATA_IN_N18
Wire Wire Line
	5300 1050 4650 1050
Text Label 4650 1050 0    50   ~ 0
GND
Wire Wire Line
	4650 850  5300 850 
Wire Wire Line
	4650 950  5300 950 
Wire Wire Line
	5300 2050 4650 2050
Text Label 4650 2050 0    50   ~ 0
GND
Text Label 4650 2550 0    50   ~ 0
VDDIO2
Wire Wire Line
	4650 2550 5300 2550
Text Label 4650 3050 0    50   ~ 0
GND
Wire Wire Line
	4650 3050 5300 3050
Text Label 4650 3550 0    50   ~ 0
CTRL_IN2
Wire Wire Line
	4650 3550 5300 3550
Text Label 6450 750  2    50   ~ 0
LCLK_OUT_P2
Wire Wire Line
	6450 750  5800 750 
Text Label 6450 650  2    50   ~ 0
LCLK_OUT_N2
Wire Wire Line
	6450 650  5800 650 
Text Label 6450 950  2    50   ~ 0
FRAME_OUT_P2
Text Label 6450 850  2    50   ~ 0
FRAME_OUT_N2
Text Label 6450 1150 2    50   ~ 0
WAIT_WR_IN_N2
Wire Wire Line
	6450 1150 5800 1150
Text Label 6450 1350 2    50   ~ 0
WAIT_RD_IN_N2
Wire Wire Line
	6450 1350 5800 1350
Text Label 6450 1250 2    50   ~ 0
WAIT_WR_IN_P2
Wire Wire Line
	6450 1250 5800 1250
Text Label 6450 1550 2    50   ~ 0
VDD2
Wire Wire Line
	6450 1550 5800 1550
Text Label 6450 1450 2    50   ~ 0
WAIT_RD_IN_P2
Wire Wire Line
	6450 1450 5800 1450
Text Label 6450 1750 2    50   ~ 0
DATA_OUT_P16
Wire Wire Line
	6450 1750 5800 1750
Text Label 6450 1650 2    50   ~ 0
DATA_OUT_N16
Wire Wire Line
	6450 1650 5800 1650
Text Label 6450 1950 2    50   ~ 0
DATA_OUT_P17
Wire Wire Line
	6450 1950 5800 1950
Text Label 6450 1850 2    50   ~ 0
DATA_OUT_N17
Wire Wire Line
	6450 1850 5800 1850
Wire Wire Line
	6450 2150 5800 2150
Text Label 6450 2350 2    50   ~ 0
DATA_OUT_N19
Wire Wire Line
	6450 2350 5800 2350
Text Label 6450 2250 2    50   ~ 0
DATA_OUT_P18
Wire Wire Line
	6450 2250 5800 2250
Text Label 6450 2450 2    50   ~ 0
DATA_OUT_P19
Wire Wire Line
	6450 2450 5800 2450
Text Label 6450 2750 2    50   ~ 0
DATA_OUT_P20
Wire Wire Line
	6450 2750 5800 2750
Text Label 6450 2650 2    50   ~ 0
DATA_OUT_N20
Wire Wire Line
	6450 2650 5800 2650
Text Label 6450 2950 2    50   ~ 0
DATA_OUT_P21
Wire Wire Line
	6450 2950 5800 2950
Text Label 6450 2850 2    50   ~ 0
DATA_OUT_N21
Wire Wire Line
	6450 2850 5800 2850
Text Label 6450 3150 2    50   ~ 0
DATA_OUT_N22
Wire Wire Line
	6450 3150 5800 3150
Text Label 6450 3350 2    50   ~ 0
DATA_OUT_N23
Wire Wire Line
	6450 3350 5800 3350
Text Label 6450 3250 2    50   ~ 0
DATA_OUT_P22
Wire Wire Line
	6450 3250 5800 3250
Wire Wire Line
	6450 3450 5800 3450
Text Label 6450 3450 2    50   ~ 0
DATA_OUT_P23
Text Label 6450 2150 2    50   ~ 0
DATA_OUT_N18
Wire Wire Line
	5800 1050 6450 1050
Text Label 6450 1050 2    50   ~ 0
GND
Wire Wire Line
	6450 850  5800 850 
Wire Wire Line
	6450 950  5800 950 
Wire Wire Line
	5800 2050 6450 2050
Text Label 6450 2050 2    50   ~ 0
GND
Text Label 6450 2550 2    50   ~ 0
VDDIO2
Wire Wire Line
	6450 2550 5800 2550
Text Label 6450 3050 2    50   ~ 0
GND
Wire Wire Line
	6450 3050 5800 3050
Text Label 6450 3550 2    50   ~ 0
CTRL_OUT2
Wire Wire Line
	6450 3550 5800 3550
Text Label 6600 750  0    50   ~ 0
LCLK_IN_P3
Wire Wire Line
	6600 750  7250 750 
Text Label 6600 650  0    50   ~ 0
LCLK_IN_N3
Wire Wire Line
	6600 650  7250 650 
Text Label 6600 950  0    50   ~ 0
FRAME_IN_P3
Text Label 6600 850  0    50   ~ 0
FRAME_IN_N3
Text Label 6600 1150 0    50   ~ 0
WAIT_WR_OUT_N3
Wire Wire Line
	6600 1150 7250 1150
Text Label 6600 1350 0    50   ~ 0
WAIT_RD_OUT_N3
Wire Wire Line
	6600 1350 7250 1350
Text Label 6600 1250 0    50   ~ 0
WAIT_WR_OUT_P3
Wire Wire Line
	6600 1250 7250 1250
Text Label 6600 1550 0    50   ~ 0
VDD3
Wire Wire Line
	6600 1550 7250 1550
Text Label 6600 1450 0    50   ~ 0
WAIT_RD_OUT_P3
Wire Wire Line
	6600 1450 7250 1450
Text Label 6600 1750 0    50   ~ 0
DATA_IN_P24
Wire Wire Line
	6600 1750 7250 1750
Text Label 6600 1650 0    50   ~ 0
DATA_IN_N24
Wire Wire Line
	6600 1650 7250 1650
Text Label 6600 1950 0    50   ~ 0
DATA_IN_P25
Wire Wire Line
	6600 1950 7250 1950
Text Label 6600 1850 0    50   ~ 0
DATA_IN_N25
Wire Wire Line
	6600 1850 7250 1850
Wire Wire Line
	6600 2150 7250 2150
Text Label 6600 2350 0    50   ~ 0
DATA_IN_N27
Wire Wire Line
	6600 2350 7250 2350
Text Label 6600 2250 0    50   ~ 0
DATA_IN_P26
Wire Wire Line
	6600 2250 7250 2250
Text Label 6600 2450 0    50   ~ 0
DATA_IN_P27
Wire Wire Line
	6600 2450 7250 2450
Text Label 6600 2750 0    50   ~ 0
DATA_IN_P28
Wire Wire Line
	6600 2750 7250 2750
Text Label 6600 2650 0    50   ~ 0
DATA_IN_N28
Wire Wire Line
	6600 2650 7250 2650
Text Label 6600 2950 0    50   ~ 0
DATA_IN_P29
Wire Wire Line
	6600 2950 7250 2950
Text Label 6600 2850 0    50   ~ 0
DATA_IN_N29
Wire Wire Line
	6600 2850 7250 2850
Text Label 6600 3150 0    50   ~ 0
DATA_IN_N30
Wire Wire Line
	6600 3150 7250 3150
Text Label 6600 3350 0    50   ~ 0
DATA_IN_N31
Wire Wire Line
	6600 3350 7250 3350
Text Label 6600 3250 0    50   ~ 0
DATA_IN_P30
Wire Wire Line
	6600 3250 7250 3250
Wire Wire Line
	6600 3450 7250 3450
Text Label 6600 3450 0    50   ~ 0
DATA_IN_P31
Text Label 6600 2150 0    50   ~ 0
DATA_IN_N26
Wire Wire Line
	7250 1050 6600 1050
Text Label 6600 1050 0    50   ~ 0
GND
Wire Wire Line
	6600 850  7250 850 
Wire Wire Line
	6600 950  7250 950 
Wire Wire Line
	7250 2050 6600 2050
Text Label 6600 2050 0    50   ~ 0
GND
Text Label 6600 2550 0    50   ~ 0
VDDIO3
Wire Wire Line
	6600 2550 7250 2550
Text Label 6600 3050 0    50   ~ 0
GND
Wire Wire Line
	6600 3050 7250 3050
Text Label 6600 3550 0    50   ~ 0
CTRL_IN3
Wire Wire Line
	6600 3550 7250 3550
Text Label 8400 750  2    50   ~ 0
LCLK_OUT_P3
Wire Wire Line
	8400 750  7750 750 
Text Label 8400 650  2    50   ~ 0
LCLK_OUT_N3
Wire Wire Line
	8400 650  7750 650 
Text Label 8400 950  2    50   ~ 0
FRAME_OUT_P3
Text Label 8400 850  2    50   ~ 0
FRAME_OUT_N3
Text Label 8400 1150 2    50   ~ 0
WAIT_WR_IN_N3
Wire Wire Line
	8400 1150 7750 1150
Text Label 8400 1350 2    50   ~ 0
WAIT_RD_IN_N3
Wire Wire Line
	8400 1350 7750 1350
Text Label 8400 1250 2    50   ~ 0
WAIT_WR_IN_P3
Wire Wire Line
	8400 1250 7750 1250
Text Label 8400 1550 2    50   ~ 0
VDD3
Wire Wire Line
	8400 1550 7750 1550
Text Label 8400 1450 2    50   ~ 0
WAIT_RD_IN_P3
Wire Wire Line
	8400 1450 7750 1450
Text Label 8400 1750 2    50   ~ 0
DATA_OUT_P24
Wire Wire Line
	8400 1750 7750 1750
Text Label 8400 1650 2    50   ~ 0
DATA_OUT_N24
Wire Wire Line
	8400 1650 7750 1650
Text Label 8400 1950 2    50   ~ 0
DATA_OUT_P25
Wire Wire Line
	8400 1950 7750 1950
Text Label 8400 1850 2    50   ~ 0
DATA_OUT_N25
Wire Wire Line
	8400 1850 7750 1850
Wire Wire Line
	8400 2150 7750 2150
Text Label 8400 2350 2    50   ~ 0
DATA_OUT_N27
Wire Wire Line
	8400 2350 7750 2350
Text Label 8400 2250 2    50   ~ 0
DATA_OUT_P26
Wire Wire Line
	8400 2250 7750 2250
Text Label 8400 2450 2    50   ~ 0
DATA_OUT_P27
Wire Wire Line
	8400 2450 7750 2450
Text Label 8400 2750 2    50   ~ 0
DATA_OUT_P28
Wire Wire Line
	8400 2750 7750 2750
Text Label 8400 2650 2    50   ~ 0
DATA_OUT_N28
Wire Wire Line
	8400 2650 7750 2650
Text Label 8400 2950 2    50   ~ 0
DATA_OUT_P29
Wire Wire Line
	8400 2950 7750 2950
Text Label 8400 2850 2    50   ~ 0
DATA_OUT_N29
Wire Wire Line
	8400 2850 7750 2850
Text Label 8400 3150 2    50   ~ 0
DATA_OUT_N30
Wire Wire Line
	8400 3150 7750 3150
Text Label 8400 3350 2    50   ~ 0
DATA_OUT_N31
Wire Wire Line
	8400 3350 7750 3350
Text Label 8400 3250 2    50   ~ 0
DATA_OUT_P30
Wire Wire Line
	8400 3250 7750 3250
Wire Wire Line
	8400 3450 7750 3450
Text Label 8400 3450 2    50   ~ 0
DATA_OUT_P31
Text Label 8400 2150 2    50   ~ 0
DATA_OUT_N26
Wire Wire Line
	7750 1050 8400 1050
Text Label 8400 1050 2    50   ~ 0
GND
Wire Wire Line
	8400 850  7750 850 
Wire Wire Line
	8400 950  7750 950 
Wire Wire Line
	7750 2050 8400 2050
Text Label 8400 2050 2    50   ~ 0
GND
Text Label 8400 2550 2    50   ~ 0
VDDIO3
Wire Wire Line
	8400 2550 7750 2550
Text Label 8400 3050 2    50   ~ 0
GND
Wire Wire Line
	8400 3050 7750 3050
Text Label 8400 3550 2    50   ~ 0
CTRL_OUT3
Wire Wire Line
	8400 3550 7750 3550
$Comp
L Samtec:BSH-120 J1
U 3 1 5B2373D1
P 5550 2100
F 0 "J1" H 5550 3767 50  0000 C CNN
F 1 "BSH-120" H 5550 3676 50  0000 C CNN
F 2 "Connector_Samtec_BSH:BSH-120-01-X-D-A" H 5500 1650 50  0001 C CNN
F 3 "~" H 5500 1650 50  0001 C CNN
	3    5550 2100
	1    0    0    -1  
$EndComp
$Comp
L Samtec:BSH-120 J1
U 4 1 5B2374B9
P 7500 2100
F 0 "J1" H 7500 3767 50  0000 C CNN
F 1 "BSH-120" H 7500 3676 50  0000 C CNN
F 2 "Connector_Samtec_BSH:BSH-120-01-X-D-A" H 7450 1650 50  0001 C CNN
F 3 "~" H 7450 1650 50  0001 C CNN
	4    7500 2100
	1    0    0    -1  
$EndComp
Text Label 750  3900 0    50   ~ 0
LCLK_IN_P0
Wire Wire Line
	750  3900 1400 3900
Text Label 750  3800 0    50   ~ 0
LCLK_IN_N0
Wire Wire Line
	750  3800 1400 3800
Text Label 750  4100 0    50   ~ 0
FRAME_IN_P0
Text Label 750  4000 0    50   ~ 0
FRAME_IN_N0
Text Label 750  4300 0    50   ~ 0
WAIT_WR_OUT_N0
Wire Wire Line
	750  4300 1400 4300
Text Label 750  4500 0    50   ~ 0
WAIT_RD_OUT_N0
Wire Wire Line
	750  4500 1400 4500
Text Label 750  4400 0    50   ~ 0
WAIT_WR_OUT_P0
Wire Wire Line
	750  4400 1400 4400
Text Label 750  4700 0    50   ~ 0
VDD0
Wire Wire Line
	750  4700 1400 4700
Text Label 750  4600 0    50   ~ 0
WAIT_RD_OUT_P0
Wire Wire Line
	750  4600 1400 4600
Text Label 750  4900 0    50   ~ 0
DATA_IN_P0
Wire Wire Line
	750  4900 1400 4900
Text Label 750  4800 0    50   ~ 0
DATA_IN_N0
Wire Wire Line
	750  4800 1400 4800
Text Label 750  5100 0    50   ~ 0
DATA_IN_P1
Wire Wire Line
	750  5100 1400 5100
Text Label 750  5000 0    50   ~ 0
DATA_IN_N1
Wire Wire Line
	750  5000 1400 5000
Wire Wire Line
	750  5300 1400 5300
Text Label 750  5500 0    50   ~ 0
DATA_IN_N3
Wire Wire Line
	750  5500 1400 5500
Text Label 750  5400 0    50   ~ 0
DATA_IN_P2
Wire Wire Line
	750  5400 1400 5400
Text Label 750  5600 0    50   ~ 0
DATA_IN_P3
Wire Wire Line
	750  5600 1400 5600
Text Label 750  5900 0    50   ~ 0
DATA_IN_P4
Wire Wire Line
	750  5900 1400 5900
Text Label 750  5800 0    50   ~ 0
DATA_IN_N4
Wire Wire Line
	750  5800 1400 5800
Text Label 750  6100 0    50   ~ 0
DATA_IN_P5
Wire Wire Line
	750  6100 1400 6100
Text Label 750  6000 0    50   ~ 0
DATA_IN_N5
Wire Wire Line
	750  6000 1400 6000
Text Label 750  6300 0    50   ~ 0
DATA_IN_N6
Wire Wire Line
	750  6300 1400 6300
Text Label 750  6500 0    50   ~ 0
DATA_IN_N7
Wire Wire Line
	750  6500 1400 6500
Text Label 750  6400 0    50   ~ 0
DATA_IN_P6
Wire Wire Line
	750  6400 1400 6400
Wire Wire Line
	750  6600 1400 6600
Text Label 750  6600 0    50   ~ 0
DATA_IN_P7
Text Label 750  5300 0    50   ~ 0
DATA_IN_N2
Wire Wire Line
	1400 4200 750  4200
Text Label 750  4200 0    50   ~ 0
GND
Wire Wire Line
	750  4000 1400 4000
Wire Wire Line
	750  4100 1400 4100
Wire Wire Line
	1400 5200 750  5200
Text Label 750  5200 0    50   ~ 0
GND
Text Label 750  5700 0    50   ~ 0
VDDIO0
Wire Wire Line
	750  5700 1400 5700
Text Label 750  6200 0    50   ~ 0
GND
Wire Wire Line
	750  6200 1400 6200
Text Label 750  6700 0    50   ~ 0
CTRL_IN0
Wire Wire Line
	750  6700 1400 6700
Text Label 2550 3900 2    50   ~ 0
LCLK_OUT_P0
Wire Wire Line
	2550 3900 1900 3900
Text Label 2550 3800 2    50   ~ 0
LCLK_OUT_N0
Wire Wire Line
	2550 3800 1900 3800
Text Label 2550 4100 2    50   ~ 0
FRAME_OUT_P0
Text Label 2550 4000 2    50   ~ 0
FRAME_OUT_N0
Text Label 2550 4300 2    50   ~ 0
WAIT_WR_IN_N0
Wire Wire Line
	2550 4300 1900 4300
Text Label 2550 4500 2    50   ~ 0
WAIT_RD_IN_N0
Wire Wire Line
	2550 4500 1900 4500
Text Label 2550 4400 2    50   ~ 0
WAIT_WR_IN_P0
Wire Wire Line
	2550 4400 1900 4400
Text Label 2550 4700 2    50   ~ 0
VDD0
Wire Wire Line
	2550 4700 1900 4700
Text Label 2550 4600 2    50   ~ 0
WAIT_RD_IN_P0
Wire Wire Line
	2550 4600 1900 4600
Text Label 2550 4900 2    50   ~ 0
DATA_OUT_P0
Wire Wire Line
	2550 4900 1900 4900
Text Label 2550 4800 2    50   ~ 0
DATA_OUT_N0
Wire Wire Line
	2550 4800 1900 4800
Text Label 2550 5100 2    50   ~ 0
DATA_OUT_P1
Wire Wire Line
	2550 5100 1900 5100
Text Label 2550 5000 2    50   ~ 0
DATA_OUT_N1
Wire Wire Line
	2550 5000 1900 5000
Wire Wire Line
	2550 5300 1900 5300
Text Label 2550 5500 2    50   ~ 0
DATA_OUT_N3
Wire Wire Line
	2550 5500 1900 5500
Text Label 2550 5400 2    50   ~ 0
DATA_OUT_P2
Wire Wire Line
	2550 5400 1900 5400
Text Label 2550 5600 2    50   ~ 0
DATA_OUT_P3
Wire Wire Line
	2550 5600 1900 5600
Text Label 2550 5900 2    50   ~ 0
DATA_OUT_P4
Wire Wire Line
	2550 5900 1900 5900
Text Label 2550 5800 2    50   ~ 0
DATA_OUT_N4
Wire Wire Line
	2550 5800 1900 5800
Text Label 2550 6100 2    50   ~ 0
DATA_OUT_P5
Wire Wire Line
	2550 6100 1900 6100
Text Label 2550 6000 2    50   ~ 0
DATA_OUT_N5
Wire Wire Line
	2550 6000 1900 6000
Text Label 2550 6300 2    50   ~ 0
DATA_OUT_N6
Wire Wire Line
	2550 6300 1900 6300
Text Label 2550 6500 2    50   ~ 0
DATA_OUT_N7
Wire Wire Line
	2550 6500 1900 6500
Text Label 2550 6400 2    50   ~ 0
DATA_OUT_P6
Wire Wire Line
	2550 6400 1900 6400
Wire Wire Line
	2550 6600 1900 6600
Text Label 2550 6600 2    50   ~ 0
DATA_OUT_P7
Text Label 2550 5300 2    50   ~ 0
DATA_OUT_N2
Wire Wire Line
	1900 4200 2550 4200
Text Label 2550 4200 2    50   ~ 0
GND
Wire Wire Line
	2550 4000 1900 4000
Wire Wire Line
	2550 4100 1900 4100
Wire Wire Line
	1900 5200 2550 5200
Text Label 2550 5200 2    50   ~ 0
GND
Text Label 2550 5700 2    50   ~ 0
VDDIO0
Wire Wire Line
	2550 5700 1900 5700
Text Label 2550 6200 2    50   ~ 0
GND
Wire Wire Line
	2550 6200 1900 6200
Text Label 2550 6700 2    50   ~ 0
CTRL_OUT0
Wire Wire Line
	2550 6700 1900 6700
Text Label 2700 3900 0    50   ~ 0
LCLK_IN_P1
Wire Wire Line
	2700 3900 3350 3900
Text Label 2700 3800 0    50   ~ 0
LCLK_IN_N1
Wire Wire Line
	2700 3800 3350 3800
Text Label 2700 4100 0    50   ~ 0
FRAME_IN_P1
Text Label 2700 4000 0    50   ~ 0
FRAME_IN_N1
Text Label 2700 4300 0    50   ~ 0
WAIT_WR_OUT_N1
Wire Wire Line
	2700 4300 3350 4300
Text Label 2700 4500 0    50   ~ 0
WAIT_RD_OUT_N1
Wire Wire Line
	2700 4500 3350 4500
Text Label 2700 4400 0    50   ~ 0
WAIT_WR_OUT_P1
Wire Wire Line
	2700 4400 3350 4400
Text Label 2700 4700 0    50   ~ 0
VDD1
Wire Wire Line
	2700 4700 3350 4700
Text Label 2700 4600 0    50   ~ 0
WAIT_RD_OUT_P1
Wire Wire Line
	2700 4600 3350 4600
Text Label 2700 4900 0    50   ~ 0
DATA_IN_P8
Wire Wire Line
	2700 4900 3350 4900
Text Label 2700 4800 0    50   ~ 0
DATA_IN_N8
Wire Wire Line
	2700 4800 3350 4800
Text Label 2700 5100 0    50   ~ 0
DATA_IN_P9
Wire Wire Line
	2700 5100 3350 5100
Text Label 2700 5000 0    50   ~ 0
DATA_IN_N9
Wire Wire Line
	2700 5000 3350 5000
Wire Wire Line
	2700 5300 3350 5300
Text Label 2700 5500 0    50   ~ 0
DATA_IN_N11
Wire Wire Line
	2700 5500 3350 5500
Text Label 2700 5400 0    50   ~ 0
DATA_IN_P10
Wire Wire Line
	2700 5400 3350 5400
Text Label 2700 5600 0    50   ~ 0
DATA_IN_P11
Wire Wire Line
	2700 5600 3350 5600
Text Label 2700 5900 0    50   ~ 0
DATA_IN_P12
Wire Wire Line
	2700 5900 3350 5900
Text Label 2700 5800 0    50   ~ 0
DATA_IN_N12
Wire Wire Line
	2700 5800 3350 5800
Text Label 2700 6100 0    50   ~ 0
DATA_IN_P13
Wire Wire Line
	2700 6100 3350 6100
Text Label 2700 6000 0    50   ~ 0
DATA_IN_N13
Wire Wire Line
	2700 6000 3350 6000
Text Label 2700 6300 0    50   ~ 0
DATA_IN_N14
Wire Wire Line
	2700 6300 3350 6300
Text Label 2700 6500 0    50   ~ 0
DATA_IN_N15
Wire Wire Line
	2700 6500 3350 6500
Text Label 2700 6400 0    50   ~ 0
DATA_IN_P14
Wire Wire Line
	2700 6400 3350 6400
Wire Wire Line
	2700 6600 3350 6600
Text Label 2700 6600 0    50   ~ 0
DATA_IN_P15
Text Label 2700 5300 0    50   ~ 0
DATA_IN_N10
Wire Wire Line
	3350 4200 2700 4200
Text Label 2700 4200 0    50   ~ 0
GND
Wire Wire Line
	2700 4000 3350 4000
Wire Wire Line
	2700 4100 3350 4100
Wire Wire Line
	3350 5200 2700 5200
Text Label 2700 5200 0    50   ~ 0
GND
Text Label 2700 5700 0    50   ~ 0
VDDIO1
Wire Wire Line
	2700 5700 3350 5700
Text Label 2700 6200 0    50   ~ 0
GND
Wire Wire Line
	2700 6200 3350 6200
Text Label 2700 6700 0    50   ~ 0
CTRL_IN1
Wire Wire Line
	2700 6700 3350 6700
Text Label 4500 3900 2    50   ~ 0
LCLK_OUT_P1
Wire Wire Line
	4500 3900 3850 3900
Text Label 4500 3800 2    50   ~ 0
LCLK_OUT_N1
Wire Wire Line
	4500 3800 3850 3800
Text Label 4500 4100 2    50   ~ 0
FRAME_OUT_P1
Text Label 4500 4000 2    50   ~ 0
FRAME_OUT_N1
Text Label 4500 4300 2    50   ~ 0
WAIT_WR_IN_N1
Wire Wire Line
	4500 4300 3850 4300
Text Label 4500 4500 2    50   ~ 0
WAIT_RD_IN_N1
Wire Wire Line
	4500 4500 3850 4500
Text Label 4500 4400 2    50   ~ 0
WAIT_WR_IN_P1
Wire Wire Line
	4500 4400 3850 4400
Text Label 4500 4700 2    50   ~ 0
VDD1
Wire Wire Line
	4500 4700 3850 4700
Text Label 4500 4600 2    50   ~ 0
WAIT_RD_IN_P1
Wire Wire Line
	4500 4600 3850 4600
Text Label 4500 4900 2    50   ~ 0
DATA_OUT_P8
Wire Wire Line
	4500 4900 3850 4900
Text Label 4500 4800 2    50   ~ 0
DATA_OUT_N8
Wire Wire Line
	4500 4800 3850 4800
Text Label 4500 5100 2    50   ~ 0
DATA_OUT_P9
Wire Wire Line
	4500 5100 3850 5100
Text Label 4500 5000 2    50   ~ 0
DATA_OUT_N9
Wire Wire Line
	4500 5000 3850 5000
Wire Wire Line
	4500 5300 3850 5300
Text Label 4500 5500 2    50   ~ 0
DATA_OUT_N11
Wire Wire Line
	4500 5500 3850 5500
Text Label 4500 5400 2    50   ~ 0
DATA_OUT_P10
Wire Wire Line
	4500 5400 3850 5400
Text Label 4500 5600 2    50   ~ 0
DATA_OUT_P11
Wire Wire Line
	4500 5600 3850 5600
Text Label 4500 5900 2    50   ~ 0
DATA_OUT_P12
Wire Wire Line
	4500 5900 3850 5900
Text Label 4500 5800 2    50   ~ 0
DATA_OUT_N12
Wire Wire Line
	4500 5800 3850 5800
Text Label 4500 6100 2    50   ~ 0
DATA_OUT_P13
Wire Wire Line
	4500 6100 3850 6100
Text Label 4500 6000 2    50   ~ 0
DATA_OUT_N13
Wire Wire Line
	4500 6000 3850 6000
Text Label 4500 6300 2    50   ~ 0
DATA_OUT_N14
Wire Wire Line
	4500 6300 3850 6300
Text Label 4500 6500 2    50   ~ 0
DATA_OUT_N15
Wire Wire Line
	4500 6500 3850 6500
Text Label 4500 6400 2    50   ~ 0
DATA_OUT_P14
Wire Wire Line
	4500 6400 3850 6400
Wire Wire Line
	4500 6600 3850 6600
Text Label 4500 6600 2    50   ~ 0
DATA_OUT_P15
Text Label 4500 5300 2    50   ~ 0
DATA_OUT_N10
Wire Wire Line
	3850 4200 4500 4200
Text Label 4500 4200 2    50   ~ 0
GND
Wire Wire Line
	4500 4000 3850 4000
Wire Wire Line
	4500 4100 3850 4100
Wire Wire Line
	3850 5200 4500 5200
Text Label 4500 5200 2    50   ~ 0
GND
Text Label 4500 5700 2    50   ~ 0
VDDIO1
Wire Wire Line
	4500 5700 3850 5700
Text Label 4500 6200 2    50   ~ 0
GND
Wire Wire Line
	4500 6200 3850 6200
Text Label 4500 6700 2    50   ~ 0
CTRL_OUT1
Wire Wire Line
	4500 6700 3850 6700
Text Label 4650 3900 0    50   ~ 0
LCLK_IN_P2
Wire Wire Line
	4650 3900 5300 3900
Text Label 4650 3800 0    50   ~ 0
LCLK_IN_N2
Wire Wire Line
	4650 3800 5300 3800
Text Label 4650 4100 0    50   ~ 0
FRAME_IN_P2
Text Label 4650 4000 0    50   ~ 0
FRAME_IN_N2
Text Label 4650 4300 0    50   ~ 0
WAIT_WR_OUT_N2
Wire Wire Line
	4650 4300 5300 4300
Text Label 4650 4500 0    50   ~ 0
WAIT_RD_OUT_N2
Wire Wire Line
	4650 4500 5300 4500
Text Label 4650 4400 0    50   ~ 0
WAIT_WR_OUT_P2
Wire Wire Line
	4650 4400 5300 4400
Text Label 4650 4700 0    50   ~ 0
VDD2
Wire Wire Line
	4650 4700 5300 4700
Text Label 4650 4600 0    50   ~ 0
WAIT_RD_OUT_P2
Wire Wire Line
	4650 4600 5300 4600
Text Label 4650 4900 0    50   ~ 0
DATA_IN_P16
Wire Wire Line
	4650 4900 5300 4900
Text Label 4650 4800 0    50   ~ 0
DATA_IN_N16
Wire Wire Line
	4650 4800 5300 4800
Text Label 4650 5100 0    50   ~ 0
DATA_IN_P17
Wire Wire Line
	4650 5100 5300 5100
Text Label 4650 5000 0    50   ~ 0
DATA_IN_N17
Wire Wire Line
	4650 5000 5300 5000
Wire Wire Line
	4650 5300 5300 5300
Text Label 4650 5500 0    50   ~ 0
DATA_IN_N19
Wire Wire Line
	4650 5500 5300 5500
Text Label 4650 5400 0    50   ~ 0
DATA_IN_P18
Wire Wire Line
	4650 5400 5300 5400
Text Label 4650 5600 0    50   ~ 0
DATA_IN_P19
Wire Wire Line
	4650 5600 5300 5600
Text Label 4650 5900 0    50   ~ 0
DATA_IN_P20
Wire Wire Line
	4650 5900 5300 5900
Text Label 4650 5800 0    50   ~ 0
DATA_IN_N20
Wire Wire Line
	4650 5800 5300 5800
Text Label 4650 6100 0    50   ~ 0
DATA_IN_P21
Wire Wire Line
	4650 6100 5300 6100
Text Label 4650 6000 0    50   ~ 0
DATA_IN_N21
Wire Wire Line
	4650 6000 5300 6000
Text Label 4650 6300 0    50   ~ 0
DATA_IN_N22
Wire Wire Line
	4650 6300 5300 6300
Text Label 4650 6500 0    50   ~ 0
DATA_IN_N23
Wire Wire Line
	4650 6500 5300 6500
Text Label 4650 6400 0    50   ~ 0
DATA_IN_P22
Wire Wire Line
	4650 6400 5300 6400
Wire Wire Line
	4650 6600 5300 6600
Text Label 4650 6600 0    50   ~ 0
DATA_IN_P23
Text Label 4650 5300 0    50   ~ 0
DATA_IN_N18
Wire Wire Line
	5300 4200 4650 4200
Text Label 4650 4200 0    50   ~ 0
GND
Wire Wire Line
	4650 4000 5300 4000
Wire Wire Line
	4650 4100 5300 4100
Wire Wire Line
	5300 5200 4650 5200
Text Label 4650 5200 0    50   ~ 0
GND
Text Label 4650 5700 0    50   ~ 0
VDDIO2
Wire Wire Line
	4650 5700 5300 5700
Text Label 4650 6200 0    50   ~ 0
GND
Wire Wire Line
	4650 6200 5300 6200
Text Label 4650 6700 0    50   ~ 0
CTRL_IN2
Wire Wire Line
	4650 6700 5300 6700
Text Label 6450 3900 2    50   ~ 0
LCLK_OUT_P2
Wire Wire Line
	6450 3900 5800 3900
Text Label 6450 3800 2    50   ~ 0
LCLK_OUT_N2
Wire Wire Line
	6450 3800 5800 3800
Text Label 6450 4100 2    50   ~ 0
FRAME_OUT_P2
Text Label 6450 4000 2    50   ~ 0
FRAME_OUT_N2
Text Label 6450 4300 2    50   ~ 0
WAIT_WR_IN_N2
Wire Wire Line
	6450 4300 5800 4300
Text Label 6450 4500 2    50   ~ 0
WAIT_RD_IN_N2
Wire Wire Line
	6450 4500 5800 4500
Text Label 6450 4400 2    50   ~ 0
WAIT_WR_IN_P2
Wire Wire Line
	6450 4400 5800 4400
Text Label 6450 4700 2    50   ~ 0
VDD2
Wire Wire Line
	6450 4700 5800 4700
Text Label 6450 4600 2    50   ~ 0
WAIT_RD_IN_P2
Wire Wire Line
	6450 4600 5800 4600
Text Label 6450 4900 2    50   ~ 0
DATA_OUT_P16
Wire Wire Line
	6450 4900 5800 4900
Text Label 6450 4800 2    50   ~ 0
DATA_OUT_N16
Wire Wire Line
	6450 4800 5800 4800
Text Label 6450 5100 2    50   ~ 0
DATA_OUT_P17
Wire Wire Line
	6450 5100 5800 5100
Text Label 6450 5000 2    50   ~ 0
DATA_OUT_N17
Wire Wire Line
	6450 5000 5800 5000
Wire Wire Line
	6450 5300 5800 5300
Text Label 6450 5500 2    50   ~ 0
DATA_OUT_N19
Wire Wire Line
	6450 5500 5800 5500
Text Label 6450 5400 2    50   ~ 0
DATA_OUT_P18
Wire Wire Line
	6450 5400 5800 5400
Text Label 6450 5600 2    50   ~ 0
DATA_OUT_P19
Wire Wire Line
	6450 5600 5800 5600
Text Label 6450 5900 2    50   ~ 0
DATA_OUT_P20
Wire Wire Line
	6450 5900 5800 5900
Text Label 6450 5800 2    50   ~ 0
DATA_OUT_N20
Wire Wire Line
	6450 5800 5800 5800
Text Label 6450 6100 2    50   ~ 0
DATA_OUT_P21
Wire Wire Line
	6450 6100 5800 6100
Text Label 6450 6000 2    50   ~ 0
DATA_OUT_N21
Wire Wire Line
	6450 6000 5800 6000
Text Label 6450 6300 2    50   ~ 0
DATA_OUT_N22
Wire Wire Line
	6450 6300 5800 6300
Text Label 6450 6500 2    50   ~ 0
DATA_OUT_N23
Wire Wire Line
	6450 6500 5800 6500
Text Label 6450 6400 2    50   ~ 0
DATA_OUT_P22
Wire Wire Line
	6450 6400 5800 6400
Wire Wire Line
	6450 6600 5800 6600
Text Label 6450 6600 2    50   ~ 0
DATA_OUT_P23
Text Label 6450 5300 2    50   ~ 0
DATA_OUT_N18
Wire Wire Line
	5800 4200 6450 4200
Text Label 6450 4200 2    50   ~ 0
GND
Wire Wire Line
	6450 4000 5800 4000
Wire Wire Line
	6450 4100 5800 4100
Wire Wire Line
	5800 5200 6450 5200
Text Label 6450 5200 2    50   ~ 0
GND
Text Label 6450 5700 2    50   ~ 0
VDDIO2
Wire Wire Line
	6450 5700 5800 5700
Text Label 6450 6200 2    50   ~ 0
GND
Wire Wire Line
	6450 6200 5800 6200
Text Label 6450 6700 2    50   ~ 0
CTRL_OUT2
Wire Wire Line
	6450 6700 5800 6700
Text Label 6600 3900 0    50   ~ 0
LCLK_IN_P3
Wire Wire Line
	6600 3900 7250 3900
Text Label 6600 3800 0    50   ~ 0
LCLK_IN_N3
Wire Wire Line
	6600 3800 7250 3800
Text Label 6600 4100 0    50   ~ 0
FRAME_IN_P3
Text Label 6600 4000 0    50   ~ 0
FRAME_IN_N3
Text Label 6600 4300 0    50   ~ 0
WAIT_WR_OUT_N3
Wire Wire Line
	6600 4300 7250 4300
Text Label 6600 4500 0    50   ~ 0
WAIT_RD_OUT_N3
Wire Wire Line
	6600 4500 7250 4500
Text Label 6600 4400 0    50   ~ 0
WAIT_WR_OUT_P3
Wire Wire Line
	6600 4400 7250 4400
Text Label 6600 4700 0    50   ~ 0
VDD3
Wire Wire Line
	6600 4700 7250 4700
Text Label 6600 4600 0    50   ~ 0
WAIT_RD_OUT_P3
Wire Wire Line
	6600 4600 7250 4600
Text Label 6600 4900 0    50   ~ 0
DATA_IN_P24
Wire Wire Line
	6600 4900 7250 4900
Text Label 6600 4800 0    50   ~ 0
DATA_IN_N24
Wire Wire Line
	6600 4800 7250 4800
Text Label 6600 5100 0    50   ~ 0
DATA_IN_P25
Wire Wire Line
	6600 5100 7250 5100
Text Label 6600 5000 0    50   ~ 0
DATA_IN_N25
Wire Wire Line
	6600 5000 7250 5000
Wire Wire Line
	6600 5300 7250 5300
Text Label 6600 5500 0    50   ~ 0
DATA_IN_N27
Wire Wire Line
	6600 5500 7250 5500
Text Label 6600 5400 0    50   ~ 0
DATA_IN_P26
Wire Wire Line
	6600 5400 7250 5400
Text Label 6600 5600 0    50   ~ 0
DATA_IN_P27
Wire Wire Line
	6600 5600 7250 5600
Text Label 6600 5900 0    50   ~ 0
DATA_IN_P28
Wire Wire Line
	6600 5900 7250 5900
Text Label 6600 5800 0    50   ~ 0
DATA_IN_N28
Wire Wire Line
	6600 5800 7250 5800
Text Label 6600 6100 0    50   ~ 0
DATA_IN_P29
Wire Wire Line
	6600 6100 7250 6100
Text Label 6600 6000 0    50   ~ 0
DATA_IN_N29
Wire Wire Line
	6600 6000 7250 6000
Text Label 6600 6300 0    50   ~ 0
DATA_IN_N30
Wire Wire Line
	6600 6300 7250 6300
Text Label 6600 6500 0    50   ~ 0
DATA_IN_N31
Wire Wire Line
	6600 6500 7250 6500
Text Label 6600 6400 0    50   ~ 0
DATA_IN_P30
Wire Wire Line
	6600 6400 7250 6400
Wire Wire Line
	6600 6600 7250 6600
Text Label 6600 6600 0    50   ~ 0
DATA_IN_P31
Text Label 6600 5300 0    50   ~ 0
DATA_IN_N26
Wire Wire Line
	7250 4200 6600 4200
Text Label 6600 4200 0    50   ~ 0
GND
Wire Wire Line
	6600 4000 7250 4000
Wire Wire Line
	6600 4100 7250 4100
Wire Wire Line
	7250 5200 6600 5200
Text Label 6600 5200 0    50   ~ 0
GND
Text Label 6600 5700 0    50   ~ 0
VDDIO3
Wire Wire Line
	6600 5700 7250 5700
Text Label 6600 6200 0    50   ~ 0
GND
Wire Wire Line
	6600 6200 7250 6200
Text Label 6600 6700 0    50   ~ 0
CTRL_IN3
Wire Wire Line
	6600 6700 7250 6700
Text Label 8400 3900 2    50   ~ 0
LCLK_OUT_P3
Wire Wire Line
	8400 3900 7750 3900
Text Label 8400 3800 2    50   ~ 0
LCLK_OUT_N3
Wire Wire Line
	8400 3800 7750 3800
Text Label 8400 4100 2    50   ~ 0
FRAME_OUT_P3
Text Label 8400 4000 2    50   ~ 0
FRAME_OUT_N3
Text Label 8400 4300 2    50   ~ 0
WAIT_WR_IN_N3
Wire Wire Line
	8400 4300 7750 4300
Text Label 8400 4500 2    50   ~ 0
WAIT_RD_IN_N3
Wire Wire Line
	8400 4500 7750 4500
Text Label 8400 4400 2    50   ~ 0
WAIT_WR_IN_P3
Wire Wire Line
	8400 4400 7750 4400
Text Label 8400 4700 2    50   ~ 0
VDD3
Wire Wire Line
	8400 4700 7750 4700
Text Label 8400 4600 2    50   ~ 0
WAIT_RD_IN_P3
Wire Wire Line
	8400 4600 7750 4600
Text Label 8400 4900 2    50   ~ 0
DATA_OUT_P24
Wire Wire Line
	8400 4900 7750 4900
Text Label 8400 4800 2    50   ~ 0
DATA_OUT_N24
Wire Wire Line
	8400 4800 7750 4800
Text Label 8400 5100 2    50   ~ 0
DATA_OUT_P25
Wire Wire Line
	8400 5100 7750 5100
Text Label 8400 5000 2    50   ~ 0
DATA_OUT_N25
Wire Wire Line
	8400 5000 7750 5000
Wire Wire Line
	8400 5300 7750 5300
Text Label 8400 5500 2    50   ~ 0
DATA_OUT_N27
Wire Wire Line
	8400 5500 7750 5500
Text Label 8400 5400 2    50   ~ 0
DATA_OUT_P26
Wire Wire Line
	8400 5400 7750 5400
Text Label 8400 5600 2    50   ~ 0
DATA_OUT_P27
Wire Wire Line
	8400 5600 7750 5600
Text Label 8400 5900 2    50   ~ 0
DATA_OUT_P28
Wire Wire Line
	8400 5900 7750 5900
Text Label 8400 5800 2    50   ~ 0
DATA_OUT_N28
Wire Wire Line
	8400 5800 7750 5800
Text Label 8400 6100 2    50   ~ 0
DATA_OUT_P29
Wire Wire Line
	8400 6100 7750 6100
Text Label 8400 6000 2    50   ~ 0
DATA_OUT_N29
Wire Wire Line
	8400 6000 7750 6000
Text Label 8400 6300 2    50   ~ 0
DATA_OUT_N30
Wire Wire Line
	8400 6300 7750 6300
Text Label 8400 6500 2    50   ~ 0
DATA_OUT_N31
Wire Wire Line
	8400 6500 7750 6500
Text Label 8400 6400 2    50   ~ 0
DATA_OUT_P30
Wire Wire Line
	8400 6400 7750 6400
Wire Wire Line
	8400 6600 7750 6600
Text Label 8400 6600 2    50   ~ 0
DATA_OUT_P31
Text Label 8400 5300 2    50   ~ 0
DATA_OUT_N26
Wire Wire Line
	7750 4200 8400 4200
Text Label 8400 4200 2    50   ~ 0
GND
Wire Wire Line
	8400 4000 7750 4000
Wire Wire Line
	8400 4100 7750 4100
Wire Wire Line
	7750 5200 8400 5200
Text Label 8400 5200 2    50   ~ 0
GND
Text Label 8400 5700 2    50   ~ 0
VDDIO3
Wire Wire Line
	8400 5700 7750 5700
Text Label 8400 6200 2    50   ~ 0
GND
Wire Wire Line
	8400 6200 7750 6200
Text Label 8400 6700 2    50   ~ 0
CTRL_OUT3
Wire Wire Line
	8400 6700 7750 6700
$Comp
L Connector_Generic:Conn_02x30_Odd_Even J4
U 1 1 5B61945A
P 5500 5200
F 0 "J4" H 5550 6725 50  0000 C CNN
F 1 "Conn_02x30_Odd_Even" V 5550 6726 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x30_P2.54mm_Vertical" H 5500 5200 50  0001 C CNN
F 3 "~" H 5500 5200 50  0001 C CNN
	1    5500 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x30_Odd_Even J3
U 1 1 5B26B579
P 3550 5200
F 0 "J3" H 3600 6725 50  0000 C CNN
F 1 "Conn_02x30_Odd_Even" V 3600 6726 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x30_P2.54mm_Vertical" H 3550 5200 50  0001 C CNN
F 3 "~" H 3550 5200 50  0001 C CNN
	1    3550 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x30_Odd_Even J2
U 1 1 5B2D32A0
P 1600 5200
F 0 "J2" H 1650 6725 50  0000 C CNN
F 1 "Conn_02x30_Odd_Even" V 1650 6726 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x30_P2.54mm_Vertical" H 1600 5200 50  0001 C CNN
F 3 "~" H 1600 5200 50  0001 C CNN
	1    1600 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x30_Odd_Even J5
U 1 1 5B33B032
P 7450 5200
F 0 "J5" H 7500 6725 50  0000 C CNN
F 1 "Conn_02x30_Odd_Even" V 7500 6726 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x30_P2.54mm_Vertical" H 7450 5200 50  0001 C CNN
F 3 "~" H 7450 5200 50  0001 C CNN
	1    7450 5200
	1    0    0    -1  
$EndComp
$Comp
L Samtec:BSH-120 J1
U 2 1 5B1C85BB
P 3600 2100
F 0 "J1" H 3600 3767 50  0000 C CNN
F 1 "BSH-120" H 3600 3676 50  0000 C CNN
F 2 "Connector_Samtec_BSH:BSH-120-01-X-D-A" H 3550 1650 50  0001 C CNN
F 3 "~" H 3550 1650 50  0001 C CNN
	2    3600 2100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
