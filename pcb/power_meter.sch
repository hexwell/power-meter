EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Power Meter"
Date "2021-06-15"
Rev "A"
Comp "Ettore Forigo"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B J1
U 1 1 5FE7D2AE
P 900 1300
F 0 "J1" H 957 1767 50  0000 C CNN
F 1 "USB_B" H 957 1676 50  0000 C CNN
F 2 "Connector_USB:USB_B_Lumberg_2411_02_Horizontal" H 1050 1250 50  0001 C CNN
F 3 " ~" H 1050 1250 50  0001 C CNN
	1    900  1300
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega32U4-MU U2
U 1 1 5FE8B4AB
P 10050 2800
F 0 "U2" H 10050 911 50  0000 C CNN
F 1 "ATmega32U4-MU" H 10050 820 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-44-1EP_7x7mm_P0.5mm_EP5.2x5.2mm" H 10050 2800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 10050 2800 50  0001 C CNN
	1    10050 2800
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 5FE97E75
P 4650 1250
F 0 "U1" H 4650 1492 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 4650 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4650 1450 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 4750 1000 50  0001 C CNN
	1    4650 1250
	1    0    0    -1  
$EndComp
Text GLabel 1600 1300 2    50   Input ~ 0
D+
$Comp
L Device:R R1
U 1 1 60C9F7E8
P 1400 1300
F 0 "R1" V 1193 1300 50  0000 C CNN
F 1 "22" V 1284 1300 50  0000 C CNN
F 2 "" V 1330 1300 50  0001 C CNN
F 3 "~" H 1400 1300 50  0001 C CNN
	1    1400 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 60C9FD55
P 1400 1650
F 0 "R2" V 1193 1650 50  0000 C CNN
F 1 "22" V 1284 1650 50  0000 C CNN
F 2 "" V 1330 1650 50  0001 C CNN
F 3 "~" H 1400 1650 50  0001 C CNN
	1    1400 1650
	0    1    1    0   
$EndComp
Text GLabel 1600 1650 2    50   Input ~ 0
D-
Wire Wire Line
	1200 1300 1250 1300
Wire Wire Line
	1600 1300 1550 1300
NoConn ~ 800  1700
$Comp
L power:GND #PWR0101
U 1 1 60CBD80A
P 900 1800
F 0 "#PWR0101" H 900 1550 50  0001 C CNN
F 1 "GND" H 905 1627 50  0000 C CNN
F 2 "" H 900 1800 50  0001 C CNN
F 3 "" H 900 1800 50  0001 C CNN
	1    900  1800
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0102
U 1 1 60CC7D82
P 1200 950
F 0 "#PWR0102" H 1200 800 50  0001 C CNN
F 1 "VBUS" H 1215 1123 50  0000 C CNN
F 2 "" H 1200 950 50  0001 C CNN
F 3 "" H 1200 950 50  0001 C CNN
	1    1200 950 
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0103
U 1 1 60D18018
P 8950 2100
F 0 "#PWR0103" H 8950 1950 50  0001 C CNN
F 1 "VBUS" H 8965 2273 50  0000 C CNN
F 2 "" H 8950 2100 50  0001 C CNN
F 3 "" H 8950 2100 50  0001 C CNN
	1    8950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2100 8950 2100
$Comp
L power:VBUS #PWR0104
U 1 1 60D18F51
P 10050 950
F 0 "#PWR0104" H 10050 800 50  0001 C CNN
F 1 "VBUS" H 10065 1123 50  0000 C CNN
F 2 "" H 10050 950 50  0001 C CNN
F 3 "" H 10050 950 50  0001 C CNN
	1    10050 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60D1B20E
P 7600 4200
F 0 "R5" H 7670 4246 50  0000 L CNN
F 1 "10k" H 7670 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7530 4200 50  0001 C CNN
F 3 "~" H 7600 4200 50  0001 C CNN
	1    7600 4200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 60D1C9A7
P 7600 4050
F 0 "#PWR0105" H 7600 3900 50  0001 C CNN
F 1 "VCC" H 7615 4223 50  0000 C CNN
F 2 "" H 7600 4050 50  0001 C CNN
F 3 "" H 7600 4050 50  0001 C CNN
	1    7600 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 60DACBB2
P 8950 4200
F 0 "C14" H 9065 4246 50  0000 L CNN
F 1 "1 uF" H 9065 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8988 4050 50  0001 C CNN
F 3 "~" H 8950 4200 50  0001 C CNN
	1    8950 4200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60DADB2F
P 8300 4350
F 0 "#PWR0106" H 8300 4100 50  0001 C CNN
F 1 "GND" H 8305 4177 50  0000 C CNN
F 2 "" H 8300 4350 50  0001 C CNN
F 3 "" H 8300 4350 50  0001 C CNN
	1    8300 4350
	1    0    0    -1  
$EndComp
Text GLabel 9400 2300 0    50   Input ~ 0
D+
Text GLabel 9400 2400 0    50   Input ~ 0
D-
Wire Wire Line
	9450 2400 9400 2400
Text GLabel 10700 1400 2    50   Input ~ 0
SCK
Text GLabel 10700 1500 2    50   Input ~ 0
MOSI
Text GLabel 10700 1600 2    50   Input ~ 0
MISO
$Comp
L Device:C C13
U 1 1 60E1DD6F
P 8300 4200
F 0 "C13" H 8415 4246 50  0000 L CNN
F 1 "100 nF" H 8415 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8338 4050 50  0001 C CNN
F 3 "~" H 8300 4200 50  0001 C CNN
	1    8300 4200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60C90189
P 10550 4600
F 0 "#PWR0107" H 10550 4350 50  0001 C CNN
F 1 "GND" H 10555 4427 50  0000 C CNN
F 2 "" H 10550 4600 50  0001 C CNN
F 3 "" H 10550 4600 50  0001 C CNN
	1    10550 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4600 10050 4600
Connection ~ 10050 4600
NoConn ~ 10650 1300
NoConn ~ 10650 1700
NoConn ~ 10650 1800
NoConn ~ 10650 2000
NoConn ~ 10650 2300
NoConn ~ 10650 2500
NoConn ~ 10650 2600
NoConn ~ 10650 2700
NoConn ~ 10650 2800
NoConn ~ 10650 2900
NoConn ~ 10650 3000
NoConn ~ 10650 3100
NoConn ~ 10650 3200
NoConn ~ 10650 3400
NoConn ~ 10650 3500
NoConn ~ 10650 3700
NoConn ~ 10650 3800
NoConn ~ 10650 3900
NoConn ~ 10650 4000
NoConn ~ 10650 4100
Wire Wire Line
	900  1700 900  1800
Wire Wire Line
	1200 1400 1200 1650
Wire Wire Line
	1200 1650 1250 1650
Wire Wire Line
	1600 1650 1550 1650
Wire Wire Line
	1200 1100 1200 950 
Wire Notes Line
	600  650  2550 650 
Wire Notes Line
	2550 2500 600  2500
Text Notes 600  650  0    50   ~ 0
USB Connector
Text Notes 1150 2250 0    50   ~ 0
- Shield is grounded at\nthe host side.\n- 22 Ohms resistors are required\nby the USB standard.
Wire Wire Line
	10650 1500 10700 1500
Text GLabel 9400 1500 0    50   Input ~ 0
XTAL1
Text GLabel 9400 1700 0    50   Input ~ 0
XTAL2
Wire Wire Line
	9400 1700 9450 1700
Wire Wire Line
	9450 1500 9400 1500
Wire Wire Line
	10050 4600 10550 4600
Text GLabel 9400 1900 0    50   Input ~ 0
AREF
Wire Wire Line
	9400 1900 9450 1900
Text GLabel 9400 2600 0    50   Input ~ 0
UCAP
Wire Wire Line
	9400 2600 9450 2600
Text GLabel 8200 4000 0    50   Input ~ 0
AREF
Text GLabel 8850 4000 0    50   Input ~ 0
UCAP
Wire Wire Line
	8850 4000 8950 4000
Wire Wire Line
	8950 4000 8950 4050
Wire Wire Line
	8200 4000 8300 4000
Wire Wire Line
	8300 4000 8300 4050
$Comp
L power:GND #PWR0108
U 1 1 60CD804F
P 8950 4350
F 0 "#PWR0108" H 8950 4100 50  0001 C CNN
F 1 "GND" H 8955 4177 50  0000 C CNN
F 2 "" H 8950 4350 50  0001 C CNN
F 3 "" H 8950 4350 50  0001 C CNN
	1    8950 4350
	1    0    0    -1  
$EndComp
Text GLabel 9400 1300 0    50   Input ~ 0
RESET
Wire Wire Line
	9450 1300 9400 1300
Text GLabel 7500 4450 0    50   Input ~ 0
RESET
Text Notes 7050 650  0    50   ~ 0
Atmel ATmega32U4-MU
Wire Notes Line
	7150 1050 8650 1050
Wire Notes Line
	8650 1050 8650 2300
Wire Notes Line
	8650 2300 7150 2300
Wire Notes Line
	7150 2300 7150 1050
Text Notes 7150 1050 0    50   ~ 0
Crystal
Text Notes 7150 2750 0    50   ~ 0
Support Circuitry & Decoupling
Wire Notes Line
	7050 650  7050 5100
Text Notes 7100 5050 0    50   ~ 0
Crystal and support circuitry were taken from the\nSparkfun Arduino Pro Micro schematic:\nhttps://cdn.sparkfun.com/datasheets/Dev/Arduino/Boards/Pro_Micro_v13b.pdf
Text GLabel 10700 4200 2    50   Input ~ 0
A0
Wire Wire Line
	10650 4200 10700 4200
Wire Notes Line
	11100 650  11100 5100
Text GLabel 10700 1900 2    50   Input ~ 0
D10
Wire Wire Line
	10650 1900 10700 1900
Wire Wire Line
	10650 1600 10700 1600
Wire Wire Line
	10650 1400 10700 1400
$Comp
L power:GND #PWR0111
U 1 1 60DF6CD7
P 7450 1900
F 0 "#PWR0111" H 7450 1650 50  0001 C CNN
F 1 "GND" H 7455 1727 50  0000 C CNN
F 2 "" H 7450 1900 50  0001 C CNN
F 3 "" H 7450 1900 50  0001 C CNN
	1    7450 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 60DF7011
P 7600 1800
F 0 "C9" V 7348 1800 50  0000 C CNN
F 1 "22 pF" V 7439 1800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7638 1650 50  0001 C CNN
F 3 "~" H 7600 1800 50  0001 C CNN
	1    7600 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 60DF701B
P 7600 1400
F 0 "C8" V 7348 1400 50  0000 C CNN
F 1 "22 pF" V 7439 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7638 1250 50  0001 C CNN
F 3 "~" H 7600 1400 50  0001 C CNN
	1    7600 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 1400 7450 1800
Wire Wire Line
	7450 1900 7450 1800
Connection ~ 7450 1800
Text GLabel 8150 1400 2    50   Input ~ 0
XTAL1
Text GLabel 8150 1800 2    50   Input ~ 0
XTAL2
$Comp
L Device:Crystal Y1
U 1 1 60DF702E
P 7900 1600
F 0 "Y1" V 7946 1469 50  0000 R CNN
F 1 "16 MHz" V 7855 1469 50  0000 R CNN
F 2 "" H 7900 1600 50  0001 C CNN
F 3 "~" H 7900 1600 50  0001 C CNN
	1    7900 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7750 1800 7900 1800
Wire Wire Line
	7900 1450 7900 1400
Wire Wire Line
	7900 1400 7750 1400
Wire Wire Line
	8150 1400 7900 1400
Connection ~ 7900 1400
Wire Wire Line
	7900 1750 7900 1800
Connection ~ 7900 1800
Wire Wire Line
	7900 1800 8150 1800
Wire Wire Line
	9400 2300 9450 2300
Text GLabel 10700 2200 2    50   Input ~ 0
D5
Wire Wire Line
	10700 2200 10650 2200
$Comp
L Graphic:Logo_Open_Hardware_Small LOGO1
U 1 1 61D318B8
P 10850 6250
F 0 "LOGO1" H 10850 6525 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10850 6025 50  0001 C CNN
F 2 "Symbol:OSHW-Logo2_9.8x8mm_SilkScreen" H 10850 6250 50  0001 C CNN
F 3 "~" H 10850 6250 50  0001 C CNN
	1    10850 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1000 10150 1000
$Sheet
S 7050 5450 1500 700 
U 61E0CDD4
F0 "RF" 50
F1 "rf.sch" 50
$EndSheet
$Comp
L power:VBUS #PWR0113
U 1 1 61D073F3
P 3300 1050
F 0 "#PWR0113" H 3300 900 50  0001 C CNN
F 1 "VBUS" H 3315 1223 50  0000 C CNN
F 2 "" H 3300 1050 50  0001 C CNN
F 3 "" H 3300 1050 50  0001 C CNN
	1    3300 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 61D13832
P 3500 1250
F 0 "F1" V 3275 1250 50  0000 C CNN
F 1 "Polyfuse" V 3366 1250 50  0000 C CNN
F 2 "" H 3550 1050 50  0001 L CNN
F 3 "~" H 3500 1250 50  0001 C CNN
	1    3500 1250
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 61D19719
P 4050 1400
F 0 "C1" H 4165 1446 50  0000 L CNN
F 1 "10 uF" H 4165 1355 50  0000 L CNN
F 2 "" H 4088 1250 50  0001 C CNN
F 3 "~" H 4050 1400 50  0001 C CNN
	1    4050 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 61D1AC7E
P 3800 1250
F 0 "D1" H 3800 1467 50  0000 C CNN
F 1 "D" H 3800 1376 50  0000 C CNN
F 2 "" H 3800 1250 50  0001 C CNN
F 3 "~" H 3800 1250 50  0001 C CNN
	1    3800 1250
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61D343E6
P 5200 1400
F 0 "C2" H 5315 1446 50  0000 L CNN
F 1 "10 uF" H 5315 1355 50  0000 L CNN
F 2 "" H 5238 1250 50  0001 C CNN
F 3 "~" H 5200 1400 50  0001 C CNN
	1    5200 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 61D34F4F
P 5650 1400
F 0 "C3" H 5765 1446 50  0000 L CNN
F 1 "1 uF" H 5765 1355 50  0000 L CNN
F 2 "" H 5688 1250 50  0001 C CNN
F 3 "~" H 5650 1400 50  0001 C CNN
	1    5650 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61D358B2
P 6050 1400
F 0 "C4" H 6165 1446 50  0000 L CNN
F 1 "100 nF" H 6165 1355 50  0000 L CNN
F 2 "" H 6088 1250 50  0001 C CNN
F 3 "~" H 6050 1400 50  0001 C CNN
	1    6050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1050 3300 1250
Wire Wire Line
	3300 1250 3350 1250
Wire Wire Line
	4050 1250 3950 1250
$Comp
L power:GND #PWR0115
U 1 1 61D839C6
P 4050 1550
F 0 "#PWR0115" H 4050 1300 50  0001 C CNN
F 1 "GND" H 4055 1377 50  0000 C CNN
F 2 "" H 4050 1550 50  0001 C CNN
F 3 "" H 4050 1550 50  0001 C CNN
	1    4050 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 61D83D11
P 5200 1550
F 0 "#PWR0116" H 5200 1300 50  0001 C CNN
F 1 "GND" H 5205 1377 50  0000 C CNN
F 2 "" H 5200 1550 50  0001 C CNN
F 3 "" H 5200 1550 50  0001 C CNN
	1    5200 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 61D84620
P 5650 1550
F 0 "#PWR0117" H 5650 1300 50  0001 C CNN
F 1 "GND" H 5655 1377 50  0000 C CNN
F 2 "" H 5650 1550 50  0001 C CNN
F 3 "" H 5650 1550 50  0001 C CNN
	1    5650 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 61D84BBF
P 6050 1550
F 0 "#PWR0118" H 6050 1300 50  0001 C CNN
F 1 "GND" H 6055 1377 50  0000 C CNN
F 2 "" H 6050 1550 50  0001 C CNN
F 3 "" H 6050 1550 50  0001 C CNN
	1    6050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1250 5650 1250
Wire Wire Line
	6050 1250 5650 1250
Connection ~ 5650 1250
$Comp
L power:GND #PWR0119
U 1 1 61D9B29A
P 4650 1550
F 0 "#PWR0119" H 4650 1300 50  0001 C CNN
F 1 "GND" H 4655 1377 50  0000 C CNN
F 2 "" H 4650 1550 50  0001 C CNN
F 3 "" H 4650 1550 50  0001 C CNN
	1    4650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1250 4050 1250
Connection ~ 4050 1250
Wire Wire Line
	4950 1250 5200 1250
Connection ~ 5200 1250
Wire Notes Line
	11100 650  7050 650 
Wire Notes Line
	7050 5100 11100 5100
Wire Notes Line
	7150 2750 9150 2750
$Comp
L power:VDD #PWR0120
U 1 1 61F25CE2
P 6200 1050
F 0 "#PWR0120" H 6200 900 50  0001 C CNN
F 1 "VDD" H 6215 1223 50  0000 C CNN
F 2 "" H 6200 1050 50  0001 C CNN
F 3 "" H 6200 1050 50  0001 C CNN
	1    6200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1250 6200 1250
Wire Wire Line
	6200 1250 6200 1050
Connection ~ 6050 1250
Wire Wire Line
	9950 1000 10050 1000
Connection ~ 10050 1000
Wire Wire Line
	10050 950  10050 1000
Text Notes 3100 650  0    50   ~ 0
Power
Wire Notes Line
	3100 2800 6550 2800
Wire Notes Line
	6550 650  3100 650 
Wire Notes Line
	600  650  600  2500
Wire Notes Line
	2550 2500 2550 650 
Wire Wire Line
	7500 4450 7600 4450
Wire Wire Line
	7600 4450 7600 4350
$Comp
L Device:C C10
U 1 1 61CA0FF9
P 7300 3150
F 0 "C10" H 7415 3196 50  0000 L CNN
F 1 "4.7 uF" H 7415 3105 50  0000 L CNN
F 2 "" H 7338 3000 50  0001 C CNN
F 3 "~" H 7300 3150 50  0001 C CNN
	1    7300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 61CA46E1
P 7300 3300
F 0 "#PWR0112" H 7300 3050 50  0001 C CNN
F 1 "GND" H 7305 3127 50  0000 C CNN
F 2 "" H 7300 3300 50  0001 C CNN
F 3 "" H 7300 3300 50  0001 C CNN
	1    7300 3300
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0114
U 1 1 61D60102
P 7300 3000
F 0 "#PWR0114" H 7300 2850 50  0001 C CNN
F 1 "VBUS" H 7315 3173 50  0000 C CNN
F 2 "" H 7300 3000 50  0001 C CNN
F 3 "" H 7300 3000 50  0001 C CNN
	1    7300 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 61CAB0A3
P 7800 3150
F 0 "C11" H 7915 3196 50  0000 L CNN
F 1 "1 uF" H 7915 3105 50  0000 L CNN
F 2 "" H 7838 3000 50  0001 C CNN
F 3 "~" H 7800 3150 50  0001 C CNN
	1    7800 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 61CAE734
P 8250 3150
F 0 "C12" H 8365 3196 50  0000 L CNN
F 1 "100 nF" H 8365 3105 50  0000 L CNN
F 2 "" H 8288 3000 50  0001 C CNN
F 3 "~" H 8250 3150 50  0001 C CNN
	1    8250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3300 7300 3300
Connection ~ 7300 3300
Wire Wire Line
	7300 3000 7800 3000
Connection ~ 7300 3000
Wire Wire Line
	8250 3000 7800 3000
Connection ~ 7800 3000
Wire Wire Line
	8250 3300 7800 3300
Connection ~ 7800 3300
Wire Notes Line
	9150 4650 7150 4650
Text Notes 7950 3550 0    50   ~ 0
USB standard mandatas\ninput capacitance <= 10 uF.
Wire Notes Line
	9150 2750 9150 4650
Wire Notes Line
	7150 4650 7150 2750
Text Notes 3150 2750 0    50   ~ 0
Capacitors of decreasing values are used to decouple noise of increasing frequency.\nThis technique is used throughout all of the schematic\n\nCurrent requirements: 500 mA\n\nCurrent sensing: 0.02 mA\nMCU: 27 mA\nRF:\n13.5 mA\n350 mA
Wire Notes Line
	600  7650 600  3450
Wire Notes Line
	4550 7650 600  7650
Wire Notes Line
	4550 3450 4550 7650
Wire Notes Line
	600  3450 4550 3450
Wire Wire Line
	2500 4400 2050 4400
Connection ~ 2500 4400
Wire Wire Line
	2500 4400 2900 4400
Connection ~ 2900 4400
Connection ~ 3400 4400
Wire Wire Line
	3400 4400 2900 4400
Wire Wire Line
	2900 4100 2500 4100
Connection ~ 2900 4100
Wire Wire Line
	2500 4100 2050 4100
Connection ~ 2500 4100
Wire Wire Line
	2050 4100 1900 4100
Connection ~ 2050 4100
Connection ~ 1900 4100
Connection ~ 3400 4100
Wire Wire Line
	3400 4100 2900 4100
$Comp
L Device:C C7
U 1 1 61CB0712
P 2900 4250
F 0 "C7" H 3015 4296 50  0000 L CNN
F 1 "100 nF" H 3015 4205 50  0000 L CNN
F 2 "" H 2938 4100 50  0001 C CNN
F 3 "~" H 2900 4250 50  0001 C CNN
	1    2900 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61CAF9D9
P 2050 4250
F 0 "C5" H 2165 4296 50  0000 L CNN
F 1 "10 uF" H 2165 4205 50  0000 L CNN
F 2 "" H 2088 4100 50  0001 C CNN
F 3 "~" H 2050 4250 50  0001 C CNN
	1    2050 4250
	1    0    0    -1  
$EndComp
Connection ~ 1900 3750
Wire Wire Line
	1750 3750 1900 3750
Wire Wire Line
	1750 3800 1750 3750
Wire Wire Line
	1700 3800 1750 3800
Wire Wire Line
	1750 4100 1900 4100
Wire Wire Line
	1750 4000 1750 4100
Wire Wire Line
	1700 4000 1750 4000
Wire Wire Line
	2650 3600 2700 3600
Text GLabel 2700 3600 2    50   Input ~ 0
A0
Text GLabel 2650 3600 0    50   Input ~ 0
CURRENT
Wire Wire Line
	1900 3750 2250 3750
Text GLabel 2250 3750 2    50   Input ~ 0
CURRENT
$Comp
L Device:R R4
U 1 1 5FE7EDAF
P 3400 4250
F 0 "R4" H 3470 4296 50  0000 L CNN
F 1 "100k" H 3470 4205 50  0000 L CNN
F 2 "" V 3330 4250 50  0001 C CNN
F 3 "~" H 3400 4250 50  0001 C CNN
	1    3400 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FE7F0F5
P 3400 3950
F 0 "R3" H 3470 3996 50  0000 L CNN
F 1 "100k" H 3470 3905 50  0000 L CNN
F 2 "" V 3330 3950 50  0001 C CNN
F 3 "~" H 3400 3950 50  0001 C CNN
	1    3400 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 60D27AEC
P 3400 4400
F 0 "#PWR0110" H 3400 4150 50  0001 C CNN
F 1 "GND" H 3405 4227 50  0000 C CNN
F 2 "" H 3400 4400 50  0001 C CNN
F 3 "" H 3400 4400 50  0001 C CNN
	1    3400 4400
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0109
U 1 1 60D42A93
P 3400 3800
F 0 "#PWR0109" H 3400 3650 50  0001 C CNN
F 1 "VBUS" H 3415 3973 50  0000 C CNN
F 2 "" H 3400 3800 50  0001 C CNN
F 3 "" H 3400 3800 50  0001 C CNN
	1    3400 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60D24FF9
P 2500 4250
F 0 "C6" H 2615 4296 50  0000 L CNN
F 1 "1 uF" H 2615 4205 50  0000 L CNN
F 2 "" H 2538 4100 50  0001 C CNN
F 3 "~" H 2500 4250 50  0001 C CNN
	1    2500 4250
	1    0    0    -1  
$EndComp
Text Notes 600  3450 0    50   ~ 0
Current Sensing
Text Notes 650  7600 0    50   ~ 0
This section was taken from:\nhttps://www.instructables.com/Simple-Arduino-Home-Energy-Meter/\nCT datasheet:\nhttps://www.mcielectronics.cl/website_MCI/static/documents/Datasheet_SCT013.pdf
Wire Wire Line
	1900 4050 1900 4100
Text Notes 650  6950 0    50   ~ 0
Current sensing is done via an external current transformer (CT).\nThe current transformer used (SCT-013-000V) has an integrated burden/sampling/shunt resistor\nacross the terminals. The datasheet indicates that the current flows across the resistor\nfrom the K terminal (connected to the tip (T) of the connector (J2))\nto the L terminal (connected to the sleeve (S)).\n\nThis means that the tip will be positive and the sleeve negative. I also verified this experimentally.\n(This only matters for DC transient currents.\nThe transformer has a marking showing how it should be mounted on the cable to obtain\nthe correct polarity.\nThis project currently aims at measuring AC, but the board could be repurposed to measure\nDC transients by reprogramming the MCU.)\n\nA voltage divider (R3, R4) is used DC-bias the current transformer, in order to move the\ncurrent waveform in the safe and measurable range of the Arduino ADC (since, in the negative\nhalf cycle, the voltage across the sensor is negative).\nThe capacitors to ground (C?, C?, C?) are for stability/decoupling of the bias voltage.\n\nA transient voltage suppression diode (D2) is added to protect the ADC and circuitry from\ntransients.\n\nA lower rating transformer version can be used to get better resolution.\nThis circuit can only take (VBUS / 2) input voltage, so the maximum peak current the meter\ncan take is <transformer input current> * (VBUS / 2) / <transformer output voltage>.\nFor electrical systems rated 3.3 kW at 230 V the maximum amperage is 14.34 A,\nbut peaks can greatly exceed this value, so at least 10x of this value should be accounted for\nin the design and transformer choice.\n
NoConn ~ 1700 3900
$Comp
L Device:D_TVS D2
U 1 1 5FE8E645
P 1900 3900
F 0 "D2" H 1900 4117 50  0000 C CNN
F 1 "D_TVS" H 1900 4026 50  0000 C CNN
F 2 "" H 1900 3900 50  0001 C CNN
F 3 "~" H 1900 3900 50  0001 C CNN
	1    1900 3900
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack3 J2
U 1 1 5FE7E4BC
P 1500 3900
F 0 "J2" H 1482 4225 50  0000 C CNN
F 1 "AudioJack3" H 1482 4134 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ-3523-SMT_Horizontal" H 1500 3900 50  0001 C CNN
F 3 "~" H 1500 3900 50  0001 C CNN
	1    1500 3900
	1    0    0    1   
$EndComp
Wire Notes Line
	3100 650  3100 2800
Wire Notes Line
	6550 650  6550 2800
$EndSCHEMATC
