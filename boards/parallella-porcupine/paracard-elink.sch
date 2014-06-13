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
Date "09 May 2014"
Rev "*"
Comp "Adapteva, Inc., 1666 Massachusetts Ave., Lexington, MA, 02420"
Comment1 "Porcupin Top Level"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 8250 7200 0    150  ~ 0
eLINK
Wire Wire Line
	8950 3400 9100 3400
Wire Wire Line
	9100 3400 9100 3000
Wire Wire Line
	7950 3400 7800 3400
Wire Wire Line
	7800 3400 7800 3000
Connection ~ 7800 3000
Text HLabel 7700 3000 0    60   Output ~ 0
VDDIO
Wire Wire Line
	6900 3500 7950 3500
Text Label 7100 3500 0    60   ~ 0
RXI_DATA_N1
Wire Wire Line
	7950 3600 7050 3600
Text Label 7100 3600 0    60   ~ 0
RXI_DATA_P1
Text Label 7100 3700 0    60   ~ 0
RXI_DATA_N3
Text Label 7100 3800 0    60   ~ 0
RXI_DATA_P3
Text Label 7100 4000 0    60   ~ 0
RXI_DATA_N5
Text Label 7100 4100 0    60   ~ 0
RXI_DATA_P5
Text Label 7100 4200 0    60   ~ 0
RXI_DATA_N7
Text Label 7100 4300 0    60   ~ 0
RXI_DATA_P7
Wire Wire Line
	6900 3700 7950 3700
Wire Wire Line
	7950 3800 7050 3800
Wire Wire Line
	6900 4000 7950 4000
Wire Wire Line
	7950 4100 7050 4100
Wire Wire Line
	6900 4200 7950 4200
Wire Wire Line
	7950 4300 7050 4300
Wire Wire Line
	8950 3500 10000 3500
Wire Wire Line
	8950 3600 9850 3600
Wire Wire Line
	8950 3700 10000 3700
Wire Wire Line
	8950 3800 9850 3800
Wire Wire Line
	8950 4000 10000 4000
Wire Wire Line
	8950 4100 9850 4100
Wire Wire Line
	8950 4200 10000 4200
Wire Wire Line
	8950 4300 9850 4300
Text Label 9750 3500 2    60   ~ 0
RXI_DATA_N0
Text Label 9750 3600 2    60   ~ 0
RXI_DATA_P0
Text Label 9750 3700 2    60   ~ 0
RXI_DATA_N2
Text Label 9750 3800 2    60   ~ 0
RXI_DATA_P2
Text Label 9750 4000 2    60   ~ 0
RXI_DATA_N4
Text Label 9750 4100 2    60   ~ 0
RXI_DATA_P4
Text Label 9750 4200 2    60   ~ 0
RXI_DATA_N6
Text Label 9750 4300 2    60   ~ 0
RXI_DATA_P6
Wire Wire Line
	7950 4500 7650 4500
Wire Wire Line
	7950 4600 7650 4600
Wire Wire Line
	7950 4700 7650 4700
Wire Wire Line
	7950 4800 7650 4800
Wire Wire Line
	8950 4500 9250 4500
Wire Wire Line
	8950 4600 9250 4600
Wire Wire Line
	8950 4700 9250 4700
Wire Wire Line
	8950 4800 9250 4800
Text HLabel 7650 4500 0    60   Input ~ 0
RXI_FRAME_N
Text HLabel 7650 4600 0    60   Input ~ 0
RXI_FRAME_P
Text HLabel 7650 4700 0    60   Output ~ 0
RXO_WR_WAIT_N
Text HLabel 7650 4800 0    60   Output ~ 0
RXO_WR_WAIT_P
Wire Wire Line
	7950 5000 7650 5000
Wire Wire Line
	7950 5100 7650 5100
Wire Wire Line
	7950 5200 7650 5200
Wire Wire Line
	7950 5300 7650 5300
Wire Wire Line
	8950 5000 9250 5000
Wire Wire Line
	8950 5100 9250 5100
Wire Wire Line
	8950 5200 9250 5200
Wire Wire Line
	8950 5300 9250 5300
Text HLabel 7650 5000 0    60   Input ~ 0
TXI_WR_WAIT_N
Text HLabel 7650 5100 0    60   Input ~ 0
TXI_WR_WAIT_P
Text HLabel 7650 5200 0    60   Input ~ 0
TXI_RD_WAIT_N
Text HLabel 7650 5300 0    60   Input ~ 0
TXI_RD_WAIT_P
Wire Wire Line
	6900 5500 7950 5500
Wire Wire Line
	7950 5600 7050 5600
Wire Wire Line
	6900 5700 7950 5700
Wire Wire Line
	7950 5800 7050 5800
Wire Wire Line
	6900 6000 7950 6000
Wire Wire Line
	7950 6100 7050 6100
Wire Wire Line
	6900 6200 7950 6200
Wire Wire Line
	7950 6300 7050 6300
Wire Wire Line
	8950 5500 10000 5500
Wire Wire Line
	8950 5600 9850 5600
Wire Wire Line
	8950 5700 10000 5700
Wire Wire Line
	8950 5800 9850 5800
Wire Wire Line
	8950 6000 10000 6000
Wire Wire Line
	8950 6100 9850 6100
Wire Wire Line
	8950 6200 10000 6200
Wire Wire Line
	8950 6300 9850 6300
Text Label 7150 5500 0    60   ~ 0
TXO_DATA_N1
Text Label 7150 5600 0    60   ~ 0
TXO_DATA_P1
Text Label 7150 5700 0    60   ~ 0
TXO_DATA_N3
Text Label 7150 5800 0    60   ~ 0
TXO_DATA_P3
Text Label 7150 6000 0    60   ~ 0
TXO_DATA_N5
Text Label 7150 6100 0    60   ~ 0
TXO_DATA_P5
Text Label 7150 6200 0    60   ~ 0
TXO_DATA_N7
Text Label 7150 6300 0    60   ~ 0
TXO_DATA_P7
Text Label 9750 5500 2    60   ~ 0
TXO_DATA_N0
Text Label 9750 5600 2    60   ~ 0
TXO_DATA_P0
Text Label 9750 5700 2    60   ~ 0
TXO_DATA_N2
Text Label 9750 5800 2    60   ~ 0
TXO_DATA_P2
Text Label 9750 6000 2    60   ~ 0
TXO_DATA_N4
Text Label 9750 6100 2    60   ~ 0
TXO_DATA_P4
Text Label 9750 6200 2    60   ~ 0
TXO_DATA_N6
Text Label 9750 6300 2    60   ~ 0
TXO_DATA_P6
Text HLabel 9250 4500 2    60   Input ~ 0
RXI_LCLK_N
Text HLabel 9250 4600 2    60   Input ~ 0
RXI_LCLK_P
Text HLabel 9250 4700 2    60   Output ~ 0
RXO_RD_WAIT_N
Text HLabel 9250 4800 2    60   Output ~ 0
RXO_RD_WAIT_P
Text HLabel 9250 5000 2    60   Output ~ 0
TXO_FRAME_N
Text HLabel 9250 5100 2    60   Output ~ 0
TXO_FRAME_P
Text HLabel 9250 5200 2    60   Output ~ 0
TXO_LCLK_N
Text HLabel 9250 5300 2    60   Output ~ 0
TXO_LCLK_P
Wire Bus Line
	6950 4200 6950 2800
Wire Bus Line
	6300 2800 9950 2800
Wire Bus Line
	9950 2800 9950 4200
Wire Bus Line
	6800 4100 6800 2650
Wire Bus Line
	6300 2650 10100 2650
Wire Bus Line
	10100 2650 10100 4100
Entry Wire Line
	6950 4200 7050 4300
Entry Wire Line
	6950 4000 7050 4100
Entry Wire Line
	6950 3700 7050 3800
Entry Wire Line
	6950 3500 7050 3600
Entry Wire Line
	9850 4300 9950 4200
Entry Wire Line
	9850 4100 9950 4000
Entry Wire Line
	9850 3800 9950 3700
Entry Wire Line
	9850 3600 9950 3500
Entry Wire Line
	10000 4200 10100 4100
Entry Wire Line
	10000 4000 10100 3900
Entry Wire Line
	10000 3700 10100 3600
Entry Wire Line
	10000 3500 10100 3400
Entry Wire Line
	6800 4100 6900 4200
Entry Wire Line
	6800 3900 6900 4000
Entry Wire Line
	6800 3600 6900 3700
Entry Wire Line
	6800 3400 6900 3500
Text HLabel 6300 2650 0    60   Input ~ 0
RXI_DATA_N[0..7]
Text HLabel 6300 2800 0    60   Input ~ 0
RXI_DATA_P[0..7]
Wire Bus Line
	6950 5700 6950 6700
Wire Bus Line
	6950 6700 10800 6700
Wire Bus Line
	9950 6700 9950 5700
Entry Wire Line
	9850 5600 9950 5700
Entry Wire Line
	9850 5800 9950 5900
Entry Wire Line
	9850 6100 9950 6200
Entry Wire Line
	9850 6300 9950 6400
Entry Wire Line
	6950 5700 7050 5600
Entry Wire Line
	6950 5900 7050 5800
Entry Wire Line
	6950 6200 7050 6100
Entry Wire Line
	6950 6400 7050 6300
Wire Bus Line
	6800 5600 6800 6850
Wire Bus Line
	6800 6850 10800 6850
Wire Bus Line
	10100 6850 10100 5600
Entry Wire Line
	6800 5600 6900 5500
Entry Wire Line
	6800 5800 6900 5700
Entry Wire Line
	6800 6100 6900 6000
Entry Wire Line
	6800 6300 6900 6200
Entry Wire Line
	10000 5500 10100 5600
Entry Wire Line
	10000 5700 10100 5800
Entry Wire Line
	10000 6000 10100 6100
Entry Wire Line
	10000 6200 10100 6300
Text HLabel 10800 6700 2    60   Output ~ 0
TXO_DATA_P[0..7]
Text HLabel 10800 6850 2    60   Output ~ 0
TXO_DATA_N[0..7]
$Comp
L GND #PWR03
U 1 1 53875004
P 6500 7100
AR Path="/5386858E/53875004" Ref="#PWR03"  Part="1" 
AR Path="/538F26B7/53875004" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 6500 7100 30  0001 C CNN
F 1 "GND" H 6500 7030 30  0001 C CNN
F 2 "" H 6500 7100 60  0000 C CNN
F 3 "" H 6500 7100 60  0000 C CNN
	1    6500 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 53875018
P 10400 7100
AR Path="/5386858E/53875018" Ref="#PWR04"  Part="1" 
AR Path="/538F26B7/53875018" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 10400 7100 30  0001 C CNN
F 1 "GND" H 10400 7030 30  0001 C CNN
F 2 "" H 10400 7100 60  0000 C CNN
F 3 "" H 10400 7100 60  0000 C CNN
	1    10400 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 7100 10400 3900
Wire Wire Line
	10400 3900 8950 3900
Wire Wire Line
	8950 4400 10400 4400
Connection ~ 10400 4400
Wire Wire Line
	8950 4900 10400 4900
Connection ~ 10400 4900
Wire Wire Line
	8950 5400 10400 5400
Connection ~ 10400 5400
Wire Wire Line
	8950 5900 10400 5900
Connection ~ 10400 5900
Wire Wire Line
	6500 7100 6500 3900
Wire Wire Line
	6500 3900 7950 3900
Wire Wire Line
	7950 4400 6500 4400
Connection ~ 6500 4400
Wire Wire Line
	7950 4900 6500 4900
Connection ~ 6500 4900
Wire Wire Line
	7950 5400 6500 5400
Connection ~ 6500 5400
Wire Wire Line
	7950 5900 6500 5900
Connection ~ 6500 5900
Wire Wire Line
	9100 3000 7700 3000
$Comp
L CONN\SAMTEC\BTH\60 P2
U 1 1 53893761
P 8450 4850
AR Path="/5386858E/53893761" Ref="P2"  Part="1" 
AR Path="/538F26B7/53893761" Ref="P4"  Part="1" 
F 0 "P4" H 8450 6550 60  0000 C CNN
F 1 "CONN\\SAMTEC\\BTH\\60" V 8350 4850 60  0000 C CNN
F 2 "CONN_SAMTEC_BTH_60" V 8550 4850 60  0001 C CNN
F 3 "/mnt/windowsC/Adapteva/Fred-suppliers/Suppliers/www.samtec.com/BTH-XXX-XX-X-D-XX-MKT.pdf" H 8550 5750 60  0001 C CNN
F 4 "BTH-030-01-F-D-A" V 8450 4850 80  0000 C CNN "MFRPN"
F 5 "Samtec" V 8450 3650 60  0000 C CNN "MFR"
	1    8450 4850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
