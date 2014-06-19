EESchema Schematic File Version 2
LIBS:adapteva_kicad
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:porcupine-cache
EELAYER 24 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 9 10
Title "Parallella Breakout Daughtercard"
Date "19 Jun 2014"
Rev "*"
Comp "Adapteva, Inc., 1666 Massachusetts Ave., Lexington, MA, 02420"
Comment1 "Elink Connectors"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 3700 0    60   ~ 0
RXI_DATA_N1
Text Label 8000 3700 2    60   ~ 0
RXI_DATA_P1
Text Label 8950 3400 0    60   ~ 0
RXI_DATA_N3
Text Label 8000 3400 2    60   ~ 0
RXI_DATA_P3
Text Label 8950 3100 0    60   ~ 0
RXI_DATA_N5
Text Label 8000 3100 2    60   ~ 0
RXI_DATA_P5
Text Label 8950 2900 0    60   ~ 0
RXI_DATA_N7
Text Label 8000 2900 2    60   ~ 0
RXI_DATA_P7
Text Label 8950 3800 0    60   ~ 0
RXI_DATA_N0
Text Label 8000 3800 2    60   ~ 0
RXI_DATA_P0
Text Label 8950 3500 0    60   ~ 0
RXI_DATA_N2
Text Label 8000 3500 2    60   ~ 0
RXI_DATA_P2
Text Label 8950 3300 0    60   ~ 0
RXI_DATA_N4
Text Label 8000 3300 2    60   ~ 0
RXI_DATA_P4
Text Label 8950 3000 0    60   ~ 0
RXI_DATA_N6
Text Label 8000 3000 2    60   ~ 0
RXI_DATA_P6
Text HLabel 9050 4300 2    60   Output ~ 0
RXI_FRAME_N
Text HLabel 7850 4300 0    60   Output ~ 0
RXI_FRAME_P
Text HLabel 9050 4200 2    60   Input ~ 0
RXO_WR_WAIT_N
Text HLabel 7850 4200 0    60   Input ~ 0
RXO_WR_WAIT_P
Text HLabel 9050 6650 2    60   Output ~ 0
TXI_WR_WAIT_N
Text HLabel 7850 6650 0    60   Output ~ 0
TXI_WR_WAIT_P
Text HLabel 9050 6350 2    60   Output ~ 0
TXI_RD_WAIT_N
Text HLabel 7850 6350 0    60   Output ~ 0
TXI_RD_WAIT_P
Text Label 9550 6150 2    60   ~ 0
TXO_DATA_N1
Text Label 7350 6150 0    60   ~ 0
TXO_DATA_P1
Text Label 9550 5850 2    60   ~ 0
TXO_DATA_N3
Text Label 7350 5850 0    60   ~ 0
TXO_DATA_P3
Text Label 9550 5550 2    60   ~ 0
TXO_DATA_N5
Text Label 7350 5550 0    60   ~ 0
TXO_DATA_P5
Text Label 9550 5350 2    60   ~ 0
TXO_DATA_N7
Text Label 7350 5350 0    60   ~ 0
TXO_DATA_P7
Text Label 9550 6250 2    60   ~ 0
TXO_DATA_N0
Text Label 7350 6250 0    60   ~ 0
TXO_DATA_P0
Text Label 9550 5950 2    60   ~ 0
TXO_DATA_N2
Text Label 7350 5950 0    60   ~ 0
TXO_DATA_P2
Text Label 9550 5750 2    60   ~ 0
TXO_DATA_N4
Text Label 7350 5750 0    60   ~ 0
TXO_DATA_P4
Text Label 9550 5450 2    60   ~ 0
TXO_DATA_N6
Text Label 7350 5450 0    60   ~ 0
TXO_DATA_P6
Text HLabel 9050 4100 2    60   Output ~ 0
RXI_LCLK_N
Text HLabel 7850 4100 0    60   Output ~ 0
RXI_LCLK_P
Text HLabel 9050 3900 2    60   Input ~ 0
RXO_RD_WAIT_N
Text HLabel 7850 3900 0    60   Input ~ 0
RXO_RD_WAIT_P
Text HLabel 9050 6750 2    60   Input ~ 0
TXO_FRAME_N
Text HLabel 7850 6750 0    60   Input ~ 0
TXO_FRAME_P
Text HLabel 9050 6550 2    60   Input ~ 0
TXO_LCLK_N
Text HLabel 7850 6550 0    60   Input ~ 0
TXO_LCLK_P
Text HLabel 10200 2600 2    60   Output ~ 0
RXI_DATA_N[0..7]
Text HLabel 10200 2450 2    60   Output ~ 0
RXI_DATA_P[0..7]
Text HLabel 6550 5000 0    60   Input ~ 0
TXO_DATA_P[0..7]
Text HLabel 6550 4850 0    60   Input ~ 0
TXO_DATA_N[0..7]
$Comp
L GND #PWR023
U 1 1 538E831F
P 8850 6950
AR Path="/538C99D9/538E831F" Ref="#PWR023"  Part="1" 
AR Path="/538F26CD/538E831F" Ref="#PWR027"  Part="1" 
F 0 "#PWR023" H 8850 6950 30  0001 C CNN
F 1 "GND" H 8850 6880 30  0001 C CNN
F 2 "" H 8850 6950 60  0000 C CNN
F 3 "" H 8850 6950 60  0000 C CNN
	1    8850 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 538E9F0A
P 8050 6950
AR Path="/538C99D9/538E9F0A" Ref="#PWR024"  Part="1" 
AR Path="/538F26CD/538E9F0A" Ref="#PWR028"  Part="1" 
F 0 "#PWR024" H 8050 6950 30  0001 C CNN
F 1 "GND" H 8050 6880 30  0001 C CNN
F 2 "" H 8050 6950 60  0000 C CNN
F 3 "" H 8050 6950 60  0000 C CNN
	1    8050 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3700 9800 3700
Wire Wire Line
	8150 3700 7250 3700
Wire Wire Line
	8750 3400 9800 3400
Wire Wire Line
	8150 3400 7250 3400
Wire Wire Line
	8750 3100 9800 3100
Wire Wire Line
	8150 3100 7250 3100
Wire Wire Line
	8750 2900 9800 2900
Wire Wire Line
	8150 2900 7250 2900
Wire Wire Line
	8750 3800 9800 3800
Wire Wire Line
	7250 3800 8150 3800
Wire Wire Line
	8750 3500 9800 3500
Wire Wire Line
	7250 3500 8150 3500
Wire Wire Line
	8750 3300 9800 3300
Wire Wire Line
	7250 3300 8150 3300
Wire Wire Line
	8750 3000 9800 3000
Wire Wire Line
	7250 3000 8150 3000
Wire Wire Line
	8750 4300 9050 4300
Wire Wire Line
	8150 4300 7850 4300
Wire Wire Line
	8750 4200 9050 4200
Wire Wire Line
	8150 4200 7850 4200
Wire Wire Line
	8750 4100 9050 4100
Wire Wire Line
	8150 4100 7850 4100
Wire Wire Line
	8750 3900 9050 3900
Wire Wire Line
	8150 3900 7850 3900
Wire Wire Line
	8750 6650 9050 6650
Wire Wire Line
	8150 6650 7850 6650
Wire Wire Line
	8750 6350 9050 6350
Wire Wire Line
	8150 6350 7850 6350
Wire Wire Line
	8750 6750 9050 6750
Wire Wire Line
	8150 6750 7850 6750
Wire Wire Line
	8750 6550 9050 6550
Wire Wire Line
	8150 6550 7850 6550
Wire Wire Line
	9800 6150 8750 6150
Wire Wire Line
	8150 6150 7250 6150
Wire Wire Line
	8750 5850 9800 5850
Wire Wire Line
	8150 5850 7250 5850
Wire Wire Line
	9800 5550 8750 5550
Wire Wire Line
	8150 5550 7250 5550
Wire Wire Line
	9800 5350 8750 5350
Wire Wire Line
	8150 5350 7250 5350
Wire Wire Line
	8750 6250 9800 6250
Wire Wire Line
	8150 6250 7250 6250
Wire Wire Line
	8750 5950 9800 5950
Wire Wire Line
	8150 5950 7250 5950
Wire Wire Line
	8750 5750 9800 5750
Wire Wire Line
	7250 5750 8150 5750
Wire Wire Line
	8750 5450 9800 5450
Wire Wire Line
	8150 5450 7250 5450
Wire Wire Line
	8150 5650 8050 5650
Wire Wire Line
	8050 5650 8050 6950
Wire Wire Line
	8150 6450 8050 6450
Connection ~ 8050 6450
Wire Wire Line
	8150 6050 8050 6050
Connection ~ 8050 6050
Wire Wire Line
	8750 5650 8850 5650
Wire Wire Line
	8850 5650 8850 6950
Wire Wire Line
	8750 6050 8850 6050
Connection ~ 8850 6050
Wire Wire Line
	8750 6450 8850 6450
Connection ~ 8850 6450
Wire Bus Line
	6550 5000 7150 5000
Wire Bus Line
	7150 5000 7150 6150
Wire Bus Line
	6550 4850 9900 4850
Wire Bus Line
	9900 4850 9900 6150
Entry Wire Line
	7150 5250 7250 5350
Entry Wire Line
	7150 5350 7250 5450
Entry Wire Line
	7150 5450 7250 5550
Entry Wire Line
	7150 5650 7250 5750
Entry Wire Line
	7150 5750 7250 5850
Entry Wire Line
	7150 5850 7250 5950
Entry Wire Line
	7150 6050 7250 6150
Entry Wire Line
	7150 6150 7250 6250
Entry Wire Line
	9800 5350 9900 5250
Entry Wire Line
	9800 5450 9900 5350
Entry Wire Line
	9800 5550 9900 5450
Entry Wire Line
	9800 5750 9900 5650
Entry Wire Line
	9800 5850 9900 5750
Entry Wire Line
	9800 5950 9900 5850
Entry Wire Line
	9800 6150 9900 6050
Entry Wire Line
	9800 6250 9900 6150
Wire Bus Line
	7150 3700 7150 2450
Wire Bus Line
	7150 2450 10200 2450
Wire Bus Line
	9900 3700 9900 2600
Wire Bus Line
	9900 2600 10200 2600
Entry Wire Line
	9800 2900 9900 2800
Entry Wire Line
	9800 3000 9900 2900
Entry Wire Line
	9800 3100 9900 3000
Entry Wire Line
	9800 3300 9900 3200
Entry Wire Line
	9800 3400 9900 3300
Entry Wire Line
	9800 3500 9900 3400
Entry Wire Line
	9800 3700 9900 3600
Entry Wire Line
	9800 3800 9900 3700
Entry Wire Line
	7150 2800 7250 2900
Entry Wire Line
	7150 2900 7250 3000
Entry Wire Line
	7150 3000 7250 3100
Entry Wire Line
	7150 3200 7250 3300
Entry Wire Line
	7150 3300 7250 3400
Entry Wire Line
	7150 3400 7250 3500
Entry Wire Line
	7150 3600 7250 3700
Entry Wire Line
	7150 3700 7250 3800
$Comp
L GND #PWR025
U 1 1 538F4EDD
P 8850 4450
AR Path="/538C99D9/538F4EDD" Ref="#PWR025"  Part="1" 
AR Path="/538F26CD/538F4EDD" Ref="#PWR029"  Part="1" 
F 0 "#PWR025" H 8850 4450 30  0001 C CNN
F 1 "GND" H 8850 4380 30  0001 C CNN
F 2 "" H 8850 4450 60  0000 C CNN
F 3 "" H 8850 4450 60  0000 C CNN
	1    8850 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 538F4EDE
P 8050 4450
AR Path="/538C99D9/538F4EDE" Ref="#PWR026"  Part="1" 
AR Path="/538F26CD/538F4EDE" Ref="#PWR030"  Part="1" 
F 0 "#PWR026" H 8050 4450 30  0001 C CNN
F 1 "GND" H 8050 4380 30  0001 C CNN
F 2 "" H 8050 4450 60  0000 C CNN
F 3 "" H 8050 4450 60  0000 C CNN
	1    8050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4450 8050 3200
Wire Wire Line
	8050 3200 8150 3200
Wire Wire Line
	8150 3600 8050 3600
Connection ~ 8050 3600
Wire Wire Line
	8150 4000 8050 4000
Connection ~ 8050 4000
Wire Wire Line
	8750 3200 8850 3200
Wire Wire Line
	8850 3200 8850 4450
Wire Wire Line
	8750 3600 8850 3600
Connection ~ 8850 3600
Wire Wire Line
	8750 4000 8850 4000
Connection ~ 8850 4000
$Comp
L CONN\HDR\2MM\2R15\SHD J8
U 1 1 53977A3A
P 8450 3600
AR Path="/538C99D9/53977A3A" Ref="J8"  Part="1" 
AR Path="/538F26CD/53977A3A" Ref="J10"  Part="1" 
F 0 "J8" H 8100 4450 60  0000 C CNN
F 1 "CONN\\HDR\\2MM\\2R15\\SHD" H 8450 4750 60  0001 C CNN
F 2 "CONN_HDR_2MM_2R15_SHD" H 8450 4550 60  0000 C CNN
F 3 "" H 8450 4500 60  0001 C CNN
F 4 "0878313020" H 8475 4450 50  0000 C CNN "MFRPN"
F 5 "Molex" H 8450 4650 50  0001 C CNN "Manufacturer"
	1    8450 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN\HDR\2MM\2R15\SHD J9
U 1 1 53977A5C
P 8450 6050
AR Path="/538C99D9/53977A5C" Ref="J9"  Part="1" 
AR Path="/538F26CD/53977A5C" Ref="J11"  Part="1" 
F 0 "J9" H 8100 6900 60  0000 C CNN
F 1 "CONN\\HDR\\2MM\\2R15\\SHD" H 8450 7200 60  0001 C CNN
F 2 "CONN_HDR_2MM_2R15_SHD" H 8450 7000 60  0000 C CNN
F 3 "" H 8450 6950 60  0001 C CNN
F 4 "0878313020" H 8475 6900 50  0000 C CNN "MFRPN"
F 5 "Molex" H 8450 7100 50  0001 C CNN "Manufacturer"
	1    8450 6050
	1    0    0    -1  
$EndComp
Text Notes 6700 3250 2    100  ~ 0
Use Molex 0875683093\nas IDT mating connector.
$EndSCHEMATC
