EESchema Schematic File Version 2
LIBS:power
LIBS:racon_txco_nf
LIBS:MYRIAD_RF-cache
EELAYER 27 0
EELAYER END
$Descr User 8266 11692
encoding utf-8
Sheet 5 7
Title "MYRIAD RF_Parallella v.1.r2"
Date "29 jul 2014"
Rev "1"
Comp ""
Comment1 "THIS WORK IS COVERED UNDER A CREATIVE COMMONS LICENSE (CC BY 3.0)"
Comment2 "Copyright 2014 AZIO Electronics Co., Ltd."
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5300 4150 2    45   Output ~ 0
RXCLK
Text GLabel 2600 4250 0    45   Output ~ 0
TXEN
Text GLabel 5250 4850 2    45   Input ~ 0
CLK_IN
Text GLabel 5450 4250 2    45   Output ~ 0
RXEN
Text GLabel 5250 4350 2    45   Output ~ 0
SAEN(SPI_NCS0)
Text GLabel 5250 4450 2    45   Output ~ 0
SACLK(SPI_CLK)
Text GLabel 5250 4750 2    45   Output ~ 0
SADIO(SPI_MOSI)
Text GLabel 5400 5150 2    45   Output ~ 0
TXCLK
$Comp
L GND #PWR068
U 1 1 4FED9BA7
P 3100 5550
F 0 "#PWR068" H 3100 5650 50  0001 C CNN
F 1 "GND" H 3100 5450 50  0000 C CNN
F 2 "" H 3100 5550 60  0001 C CNN
F 3 "" H 3100 5550 60  0001 C CNN
	1    3100 5550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR069
U 1 1 4FED9BA0
P 3100 5050
F 0 "#PWR069" H 3100 5150 50  0001 C CNN
F 1 "GND" H 3100 4950 50  0000 C CNN
F 2 "" H 3100 5050 60  0001 C CNN
F 3 "" H 3100 5050 60  0001 C CNN
	1    3100 5050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR070
U 1 1 4FED9B9A
P 3100 4550
F 0 "#PWR070" H 3100 4650 50  0001 C CNN
F 1 "GND" H 3100 4450 50  0000 C CNN
F 2 "" H 3100 4550 60  0001 C CNN
F 3 "" H 3100 4550 60  0001 C CNN
	1    3100 4550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR071
U 1 1 4FED9B7C
P 4800 6550
F 0 "#PWR071" H 4800 6650 50  0001 C CNN
F 1 "GND" H 4800 6450 50  0000 C CNN
F 2 "" H 4800 6550 60  0001 C CNN
F 3 "" H 4800 6550 60  0001 C CNN
	1    4800 6550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR072
U 1 1 4FED9B72
P 4800 5550
F 0 "#PWR072" H 4800 5650 50  0001 C CNN
F 1 "GND" H 4800 5450 50  0000 C CNN
F 2 "" H 4800 5550 60  0001 C CNN
F 3 "" H 4800 5550 60  0001 C CNN
	1    4800 5550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR073
U 1 1 4FED9B66
P 2700 8900
F 0 "#PWR073" H 2700 9000 50  0001 C CNN
F 1 "GND" H 2700 8800 50  0000 C CNN
F 2 "" H 2700 8900 60  0001 C CNN
F 3 "" H 2700 8900 60  0001 C CNN
	1    2700 8900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR074
U 1 1 4FED9B61
P 4050 8900
F 0 "#PWR074" H 4050 9000 50  0001 C CNN
F 1 "GND" H 4050 8800 50  0000 C CNN
F 2 "" H 4050 8900 60  0001 C CNN
F 3 "" H 4050 8900 60  0001 C CNN
	1    4050 8900
	0    -1   -1   0   
$EndComp
$Comp
L CONN_5 X5
U 1 1 4FEB431B
P 3100 8900
F 0 "X5" H 3100 9220 50  0000 C CNN
F 1 "5-104348-3" H 3100 8560 50  0001 C CNN
F 2 "VR_pinhead5" H 3100 8900 60  0001 C CNN
F 3 "" H 3100 8900 60  0001 C CNN
F 4 ".100 inch AMPMODU Headers; RIGHT ANGLE; 5WAY;" H 3100 8900 60  0001 C CNN "Description"
F 5 "5-104348-3" H 3100 8900 60  0001 C CNN "Manufacturer Part Number"
F 6 "TE Connectivity" H 3100 8900 60  0001 C CNN "Manufacturer"
F 7 "TTI" H 3100 8900 60  0001 C CNN "Vendor"
F 8 "5-104348-3" H 3100 8900 60  0001 C CNN "Vendor Part Number"
	1    3100 8900
	-1   0    0    -1  
$EndComp
$Comp
L CONN_5 X4
U 1 1 4FEB4303
P 1850 8900
F 0 "X4" H 1850 9220 50  0000 C CNN
F 1 "5-104348-3" H 1850 8560 50  0001 C CNN
F 2 "VR_pinhead5" H 1850 8900 60  0001 C CNN
F 3 "" H 1850 8900 60  0001 C CNN
F 4 ".100 inch AMPMODU Headers; RIGHT ANGLE; 5WAY;" H 1850 8900 60  0001 C CNN "Description"
F 5 "5-104348-3" H 1850 8900 60  0001 C CNN "Manufacturer Part Number"
F 6 "TE Connectivity" H 1850 8900 60  0001 C CNN "Manufacturer"
F 7 "TTI" H 1850 8900 60  0001 C CNN "Vendor"
F 8 "5-104348-3" H 1850 8900 60  0001 C CNN "Vendor Part Number"
	1    1850 8900
	-1   0    0    -1  
$EndComp
Text GLabel 3650 9100 2    45   Output ~ 0
RXOUTQP
Text GLabel 3650 9000 2    45   Output ~ 0
RXOUTQN
Text GLabel 3650 8800 2    45   Output ~ 0
RXOUTIP
Text GLabel 3650 8700 2    45   Output ~ 0
RXOUTIN
Text GLabel 2400 9100 2    45   Input ~ 0
TXINQN
Text GLabel 2400 9000 2    45   Input ~ 0
TXINQP
Text GLabel 2400 8800 2    45   Input ~ 0
TXINIP
Text GLabel 2400 8700 2    45   Input ~ 0
TXININ
Text GLabel 2600 6950 0    45   Output ~ 0
GPIO2
Text GLabel 2600 4450 0    45   Output ~ 0
GPIO1
Text GLabel 2600 4650 0    45   Output ~ 0
GPIO0
Text GLabel 2600 4750 0    45   Input ~ 0
RXD10
Text GLabel 5250 5650 2    45   Input ~ 0
RXD8
Text GLabel 5250 5750 2    45   Input ~ 0
RXD6
Text GLabel 5250 5950 2    45   Input ~ 0
RXD4
Text GLabel 2600 5450 0    45   Input ~ 0
RXD2
Text GLabel 5250 6150 2    45   Input ~ 0
RXD0
Text GLabel 2600 5750 0    45   Input ~ 0
RXIQSEL
Text GLabel 2600 6450 0    45   Input ~ 0
TXD10
Text GLabel 2600 6350 0    45   Input ~ 0
TXD8
Text GLabel 5250 6850 2    45   Input ~ 0
TXD6
Text GLabel 5250 6950 2    45   Output ~ 0
TXD4
Text GLabel 5250 6750 2    45   Output ~ 0
TXD2
Text GLabel 5250 6650 2    45   Output ~ 0
TXD0
Text GLabel 5250 6350 2    45   Output ~ 0
TXIQSEL
Text GLabel 5250 5450 2    45   Input ~ 0
RXD11
Text GLabel 2600 4850 0    45   Input ~ 0
RXD9
Text GLabel 2600 4950 0    45   Input ~ 0
RXD7
Text GLabel 2600 5150 0    45   Input ~ 0
RXD5
Text GLabel 5250 5850 2    45   Input ~ 0
RXD3
Text GLabel 2600 5650 0    45   Input ~ 0
RXD1
Text GLabel 2600 6850 0    45   Output ~ 0
TXD11
Text GLabel 2600 6750 0    45   Output ~ 0
TXD9
Text GLabel 2600 5850 0    45   Output ~ 0
TXD7
Text GLabel 2600 5950 0    45   Output ~ 0
TXD5
Text GLabel 2600 6150 0    45   Output ~ 0
TXD3
Text GLabel 5250 6450 2    45   Output ~ 0
TXD1
$Comp
L R R44
U 1 1 4FEB1F3B
P 5050 5150
F 0 "R44" V 5140 5150 50  0000 C CNN
F 1 "0" V 4960 5150 50  0000 C CNN
F 2 "R_SM0402" H 5050 5150 60  0001 C CNN
F 3 "" H 5050 5150 60  0001 C CNN
F 4 "RESISTOR; 0402; 0R; REEL 10000;" H 5050 5150 60  0001 C CNN "Description"
F 5 "RC0402JR-070RL" H 5050 5150 60  0001 C CNN "Manufacturer Part Number"
F 6 "YAGEO (PHYCOMP)" H 5050 5150 60  0001 C CNN "Manufacturer"
F 7 "Farnell" H 5050 5150 60  0001 C CNN "Vendor"
F 8 "1117280" H 5050 5150 60  0001 C CNN "Vendor Part Number"
F 9 "NF" V 5050 5150 60  0000 C CNN "Install"
F 10 "NOFIT" V 5050 5150 60  0001 C CNN "Assemble"
	1    5050 5150
	0    -1   -1   0   
$EndComp
Text GLabel 5010 8800 2    45   Output ~ 0
RESET
Text GLabel 5010 8900 2    45   Output ~ 0
SAEN(SPI_NCS0)
Text GLabel 5010 9000 2    45   Output ~ 0
SACLK(SPI_CLK)
Text GLabel 5010 9100 2    45   Output ~ 0
SADIO(SPI_MOSI)
Text GLabel 5010 9200 2    45   Output ~ 0
SADO(SPI_MISO)
$Comp
L GND #PWR075
U 1 1 501A6731
P 5420 8700
F 0 "#PWR075" H 5420 8800 50  0001 C CNN
F 1 "GND" H 5420 8600 50  0000 C CNN
F 2 "" H 5420 8700 60  0001 C CNN
F 3 "" H 5420 8700 60  0001 C CNN
	1    5420 8700
	0    -1   -1   0   
$EndComp
$Comp
L CONN_6 X9
U 1 1 501A66CB
P 4500 8950
F 0 "X9" H 4500 9320 60  0000 C CNN
F 1 "CONN_6" V 4550 8950 60  0001 C CNN
F 2 "pinhead6" H 4500 8950 60  0001 C CNN
F 3 "" H 4500 8950 60  0001 C CNN
F 4 "Headers & Wire Housings 06 MODII HDR SRST B/A W/HD;" H 4500 8950 60  0001 C CNN "Description"
F 5 "104345-4" H 4500 8950 60  0001 C CNN "Manufacturer Part Number"
F 6 "TE Connectivity" H 4500 8950 60  0001 C CNN "Manufacturer"
F 7 "TTI" H 4500 8950 60  0001 C CNN "Vendor"
F 8 "104345-4" H 4500 8950 60  0001 C CNN "Vendor Part Number"
	1    4500 8950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 8700 3650 8700
Wire Wire Line
	3500 9100 3650 9100
Wire Wire Line
	3500 8800 3650 8800
Wire Wire Line
	2250 9100 2400 9100
Wire Wire Line
	2250 8900 2700 8900
Wire Wire Line
	2250 8700 2400 8700
Wire Wire Line
	2250 8800 2400 8800
Wire Wire Line
	2250 9000 2400 9000
Wire Wire Line
	3500 8900 4050 8900
Wire Wire Line
	3500 9000 3650 9000
Wire Wire Line
	4850 8700 5420 8700
Wire Wire Line
	4850 8800 5010 8800
Wire Wire Line
	4850 8900 5010 8900
Wire Wire Line
	4850 9000 5010 9000
Wire Wire Line
	4850 9100 5010 9100
Wire Wire Line
	4850 9200 5010 9200
$Comp
L R R23
U 1 1 5048E6C1
P 5150 4250
F 0 "R23" V 5240 4250 50  0000 C CNN
F 1 "0" V 5060 4250 50  0000 C CNN
F 2 "R_SM0402" H 5150 4250 60  0001 C CNN
F 3 "" H 5150 4250 60  0001 C CNN
F 4 "RESISTOR; 0402; 0R; REEL 10000;" H 5150 4250 60  0001 C CNN "Description"
F 5 "RC0402JR-070RL" H 5150 4250 60  0001 C CNN "Manufacturer Part Number"
F 6 "YAGEO (PHYCOMP)" H 5150 4250 60  0001 C CNN "Manufacturer"
F 7 "Farnell" H 5150 4250 60  0001 C CNN "Vendor"
F 8 "1117280" H 5150 4250 60  0001 C CNN "Vendor Part Number"
	1    5150 4250
	0    1    -1   0   
$EndComp
$Comp
L R R24
U 1 1 5048E6F4
P 2950 4250
F 0 "R24" V 3050 4250 50  0000 C CNN
F 1 "0" V 2860 4250 50  0000 C CNN
F 2 "R_SM0402" H 2950 4250 60  0001 C CNN
F 3 "" H 2950 4250 60  0001 C CNN
F 4 "RESISTOR; 0402; 0R; REEL 10000;" H 2950 4250 60  0001 C CNN "Description"
F 5 "RC0402JR-070RL" H 2950 4250 60  0001 C CNN "Manufacturer Part Number"
F 6 "YAGEO (PHYCOMP)" H 2950 4250 60  0001 C CNN "Manufacturer"
F 7 "Farnell" H 2950 4250 60  0001 C CNN "Vendor"
F 8 "1117280" H 2950 4250 60  0001 C CNN "Vendor Part Number"
	1    2950 4250
	0    1    1    0   
$EndComp
$Comp
L R R46
U 1 1 5048E6FF
P 4850 4150
F 0 "R46" V 4940 4150 50  0000 C CNN
F 1 "0" V 4760 4150 50  0000 C CNN
F 2 "R_SM0402" H 4850 4150 60  0001 C CNN
F 3 "" H 4850 4150 60  0001 C CNN
F 4 "RESISTOR; 0402; 0R; REEL 10000;" H 4850 4150 60  0001 C CNN "Description"
F 5 "RC0402JR-070RL" H 4850 4150 60  0001 C CNN "Manufacturer Part Number"
F 6 "YAGEO (PHYCOMP)" H 4850 4150 60  0001 C CNN "Manufacturer"
F 7 "Farnell" H 4850 4150 60  0001 C CNN "Vendor"
F 8 "1117280" H 4850 4150 60  0001 C CNN "Vendor Part Number"
F 9 "NF" V 4850 4150 60  0000 C CNN "Install"
F 10 "NOFIT" V 4850 4150 60  0001 C CNN "Assemble"
	1    4850 4150
	0    -1   -1   0   
$EndComp
Text Notes 2750 1650 0    79   ~ 0
"Myriad RF" and "Parallella" connector
Text GLabel 2600 4150 0    45   Output ~ 0
VCT
$Comp
L BTH-030-01-F-D-A X3
U 1 1 53831885
P 3950 5500
F 0 "X3" H 4050 7150 60  0000 C CNN
F 1 "BTH-030-01-F-D-A" H 3950 3850 60  0000 C CNN
F 2 "" H 3950 5500 60  0000 C CNN
F 3 "" H 3950 5500 60  0000 C CNN
	1    3950 5500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR076
U 1 1 53831A8C
P 3100 6050
F 0 "#PWR076" H 3100 6150 50  0001 C CNN
F 1 "GND" H 3100 5950 50  0000 C CNN
F 2 "" H 3100 6050 60  0001 C CNN
F 3 "" H 3100 6050 60  0001 C CNN
	1    3100 6050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR077
U 1 1 53831B12
P 3100 6550
F 0 "#PWR077" H 3100 6650 50  0001 C CNN
F 1 "GND" H 3100 6450 50  0000 C CNN
F 2 "" H 3100 6550 60  0001 C CNN
F 3 "" H 3100 6550 60  0001 C CNN
	1    3100 6550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR078
U 1 1 53831B1A
P 4800 4550
F 0 "#PWR078" H 4800 4650 50  0001 C CNN
F 1 "GND" H 4800 4450 50  0000 C CNN
F 2 "" H 4800 4550 60  0001 C CNN
F 3 "" H 4800 4550 60  0001 C CNN
	1    4800 4550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR079
U 1 1 53831B6C
P 4800 5050
F 0 "#PWR079" H 4800 5150 50  0001 C CNN
F 1 "GND" H 4800 4950 50  0000 C CNN
F 2 "" H 4800 5050 60  0001 C CNN
F 3 "" H 4800 5050 60  0001 C CNN
	1    4800 5050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR080
U 1 1 53831C0D
P 4800 6050
F 0 "#PWR080" H 4800 6150 50  0001 C CNN
F 1 "GND" H 4800 5950 50  0000 C CNN
F 2 "" H 4800 6050 60  0001 C CNN
F 3 "" H 4800 6050 60  0001 C CNN
	1    4800 6050
	0    -1   -1   0   
$EndComp
Text GLabel 5250 4650 2    45   Output ~ 0
SADO(SPI_MISO)
Wire Wire Line
	4550 6850 5250 6850
Wire Wire Line
	4550 6750 5250 6750
Wire Wire Line
	4550 6450 5250 6450
Wire Wire Line
	4550 5750 5250 5750
Wire Wire Line
	4550 4650 5250 4650
NoConn ~ 4550 4050
NoConn ~ 3350 4050
Text Notes 3800 3750 0    45   ~ 0
PEC-GPIO
Text Notes 3900 4100 0    45   ~ 0
VDD_GPIO
Wire Wire Line
	3100 6550 3350 6550
Wire Wire Line
	4550 6550 4800 6550
Wire Wire Line
	4550 6050 4800 6050
Wire Wire Line
	4550 4550 4800 4550
Wire Wire Line
	4550 5050 4800 5050
Wire Wire Line
	4550 5550 4800 5550
Wire Wire Line
	4550 6650 5250 6650
NoConn ~ 4550 5250
NoConn ~ 3350 5350
NoConn ~ 3350 5250
Wire Wire Line
	5300 5150 5400 5150
NoConn ~ 3350 6650
Wire Wire Line
	4550 4950 5250 4950
Wire Wire Line
	4550 4450 5250 4450
NoConn ~ 4550 5350
Wire Wire Line
	4550 4750 5250 4750
Wire Wire Line
	4550 5450 5250 5450
Wire Wire Line
	4550 5650 5250 5650
NoConn ~ 4550 6250
Text GLabel 5250 4950 2    45   Output ~ 0
RESET
Wire Wire Line
	2600 4150 3350 4150
Wire Wire Line
	2600 4450 3350 4450
Wire Wire Line
	3100 4550 3350 4550
Wire Wire Line
	2600 4650 3350 4650
Wire Wire Line
	2600 4750 3350 4750
Wire Wire Line
	2600 4850 3350 4850
Wire Wire Line
	2600 4950 3350 4950
Wire Wire Line
	3100 5050 3350 5050
Wire Wire Line
	2600 5150 3350 5150
Wire Wire Line
	2600 5450 3350 5450
Wire Wire Line
	3100 5550 3350 5550
Wire Wire Line
	2600 5650 3350 5650
Wire Wire Line
	2600 5750 3350 5750
Wire Wire Line
	2600 5850 3350 5850
Wire Wire Line
	2600 5950 3350 5950
Wire Wire Line
	3100 6050 3350 6050
Wire Wire Line
	2600 6150 3350 6150
Wire Wire Line
	2600 6350 3350 6350
Wire Wire Line
	2600 6450 3350 6450
Wire Wire Line
	2600 6750 3350 6750
Wire Wire Line
	2600 6850 3350 6850
Wire Wire Line
	2600 6950 3350 6950
Wire Wire Line
	2600 4250 2700 4250
Wire Wire Line
	3200 4250 3350 4250
Wire Wire Line
	4550 4350 5250 4350
Wire Wire Line
	4550 5150 4800 5150
Wire Wire Line
	4550 5850 5250 5850
Wire Wire Line
	4550 5950 5250 5950
Wire Wire Line
	4550 6150 5250 6150
Wire Wire Line
	5250 6950 4550 6950
Wire Wire Line
	4550 6350 5250 6350
NoConn ~ 3350 6250
NoConn ~ 3350 4350
Wire Wire Line
	4550 4850 5250 4850
Wire Wire Line
	5100 4150 5300 4150
Wire Wire Line
	4550 4150 4600 4150
Wire Wire Line
	4550 4250 4900 4250
Wire Wire Line
	5400 4250 5450 4250
$EndSCHEMATC
