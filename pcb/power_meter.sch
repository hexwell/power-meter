EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
P 1200 1400
F 0 "J1" H 1257 1867 50  0000 C CNN
F 1 "USB_B" H 1257 1776 50  0000 C CNN
F 2 "" H 1350 1350 50  0001 C CNN
F 3 " ~" H 1350 1350 50  0001 C CNN
	1    1200 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J?
U 1 1 5FE7E4BC
P 1650 3750
F 0 "J?" H 1632 4075 50  0000 C CNN
F 1 "AudioJack3" H 1632 3984 50  0000 C CNN
F 2 "" H 1650 3750 50  0001 C CNN
F 3 "~" H 1650 3750 50  0001 C CNN
	1    1650 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE7EDAF
P 2550 3650
F 0 "R?" H 2620 3696 50  0000 L CNN
F 1 "R" H 2620 3605 50  0000 L CNN
F 2 "" V 2480 3650 50  0001 C CNN
F 3 "~" H 2550 3650 50  0001 C CNN
	1    2550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE7F0F5
P 2550 3250
F 0 "R?" H 2620 3296 50  0000 L CNN
F 1 "R" H 2620 3205 50  0000 L CNN
F 2 "" V 2480 3250 50  0001 C CNN
F 3 "~" H 2550 3250 50  0001 C CNN
	1    2550 3250
	1    0    0    -1  
$EndComp
$Comp
L RF:nRF24L01P U?
U 1 1 5FE7F852
P 2000 6050
F 0 "U?" H 2000 7031 50  0000 C CNN
F 1 "nRF24L01P" H 2000 6940 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.5x2.5mm" H 2200 6850 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2726/34069/file/nRF24L01P_Product_Specification_1_0.pdf" H 2000 6150 50  0001 C CNN
	1    2000 6050
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega32U4-MU U?
U 1 1 5FE8B4AB
P 8250 3100
F 0 "U?" H 8250 1211 50  0000 C CNN
F 1 "ATmega32U4-MU" H 8250 1120 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-44-1EP_7x7mm_P0.5mm_EP5.2x5.2mm" H 8250 3100 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 8250 3100 50  0001 C CNN
	1    8250 3100
	1    0    0    -1  
$EndComp
$Comp
L RFX2401C:RFX2401C U?
U 1 1 5FE8CB7D
P 4200 6050
F 0 "U?" H 4200 6617 50  0000 C CNN
F 1 "RFX2401C" H 4200 6526 50  0000 C CNN
F 2 "QFN50P300X300X60-17N" H 4200 6050 50  0001 L BNN
F 3 "" H 4200 6050 50  0001 L BNN
F 4 "None" H 4200 6050 50  0001 L BNN "PRICE"
F 5 "RFX2401C" H 4200 6050 50  0001 L BNN "MP"
F 6 "RF Front End 2.4GHz ~ 2.5GHz 802.15.4, Zigbee® 16-QFN (3x3)" H 4200 6050 50  0001 L BNN "DESCRIPTION"
F 7 "Unavailable" H 4200 6050 50  0001 L BNN "AVAILABILITY"
F 8 "https://snapeda.com/shop?store=Mouser&id=556493" H 4200 6050 50  0001 L BNN "MOUSER-PURCHASE-URL"
F 9 "UFQFN-16 Skyworks Solutions" H 4200 6050 50  0001 L BNN "PACKAGE"
F 10 "https://snapeda.com/shop?store=DigiKey&id=556493" H 4200 6050 50  0001 L BNN "DIGIKEY-PURCHASE-URL"
F 11 "Skyworks Solutions" H 4200 6050 50  0001 L BNN "MF"
	1    4200 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5FE8D92D
P 6000 6050
F 0 "J?" H 6100 6025 50  0000 L CNN
F 1 "Conn_Coaxial" H 6100 5934 50  0000 L CNN
F 2 "" H 6000 6050 50  0001 C CNN
F 3 " ~" H 6000 6050 50  0001 C CNN
	1    6000 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:D_TVS D?
U 1 1 5FE8E645
P 2150 3650
F 0 "D?" H 2150 3867 50  0000 C CNN
F 1 "D_TVS" H 2150 3776 50  0000 C CNN
F 2 "" H 2150 3650 50  0001 C CNN
F 3 "~" H 2150 3650 50  0001 C CNN
	1    2150 3650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U?
U 1 1 5FE97E75
P 4900 1250
F 0 "U?" H 4900 1492 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 4900 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4900 1450 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 5000 1000 50  0001 C CNN
	1    4900 1250
	1    0    0    -1  
$EndComp
Text GLabel 1900 1400 2    50   Input ~ 0
D+
$Comp
L Device:R R1
U 1 1 60C9F7E8
P 1700 1400
F 0 "R1" V 1493 1400 50  0000 C CNN
F 1 "22" V 1584 1400 50  0000 C CNN
F 2 "" V 1630 1400 50  0001 C CNN
F 3 "~" H 1700 1400 50  0001 C CNN
	1    1700 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 60C9FD55
P 1700 1750
F 0 "R2" V 1493 1750 50  0000 C CNN
F 1 "22" V 1584 1750 50  0000 C CNN
F 2 "" V 1630 1750 50  0001 C CNN
F 3 "~" H 1700 1750 50  0001 C CNN
	1    1700 1750
	0    1    1    0   
$EndComp
Text GLabel 1900 1750 2    50   Input ~ 0
D-
Wire Wire Line
	1500 1400 1550 1400
Wire Wire Line
	1900 1400 1850 1400
NoConn ~ 1100 1800
$Comp
L power:GND #PWR?
U 1 1 60CBD80A
P 1200 1900
F 0 "#PWR?" H 1200 1650 50  0001 C CNN
F 1 "GND" H 1205 1727 50  0000 C CNN
F 2 "" H 1200 1900 50  0001 C CNN
F 3 "" H 1200 1900 50  0001 C CNN
	1    1200 1900
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 60CC7D82
P 1600 1050
F 0 "#PWR?" H 1600 900 50  0001 C CNN
F 1 "VBUS" H 1615 1223 50  0000 C CNN
F 2 "" H 1600 1050 50  0001 C CNN
F 3 "" H 1600 1050 50  0001 C CNN
	1    1600 1050
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 60D18018
P 7300 2400
F 0 "#PWR?" H 7300 2250 50  0001 C CNN
F 1 "VBUS" H 7315 2573 50  0000 C CNN
F 2 "" H 7300 2400 50  0001 C CNN
F 3 "" H 7300 2400 50  0001 C CNN
	1    7300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2400 7300 2400
$Comp
L power:VBUS #PWR?
U 1 1 60D18F51
P 8000 1050
F 0 "#PWR?" H 8000 900 50  0001 C CNN
F 1 "VBUS" H 8015 1223 50  0000 C CNN
F 2 "" H 8000 1050 50  0001 C CNN
F 3 "" H 8000 1050 50  0001 C CNN
	1    8000 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60D1B20E
P 7550 1200
F 0 "R?" H 7620 1246 50  0000 L CNN
F 1 "10k" H 7620 1155 50  0000 L CNN
F 2 "" V 7480 1200 50  0001 C CNN
F 3 "~" H 7550 1200 50  0001 C CNN
	1    7550 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60D1C9A7
P 7550 1050
F 0 "#PWR?" H 7550 900 50  0001 C CNN
F 1 "VCC" H 7565 1223 50  0000 C CNN
F 2 "" H 7550 1050 50  0001 C CNN
F 3 "" H 7550 1050 50  0001 C CNN
	1    7550 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 60D1EC36
P 6950 1850
F 0 "Y?" V 6996 1719 50  0000 R CNN
F 1 "Crystal" V 6905 1719 50  0000 R CNN
F 2 "" H 6950 1850 50  0001 C CNN
F 3 "~" H 6950 1850 50  0001 C CNN
	1    6950 1850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D2509B
P 6550 2100
F 0 "#PWR?" H 6550 1850 50  0001 C CNN
F 1 "GND" H 6555 1927 50  0000 C CNN
F 2 "" H 6550 2100 50  0001 C CNN
F 3 "" H 6550 2100 50  0001 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60D272F2
P 6700 2000
F 0 "C?" V 6448 2000 50  0000 C CNN
F 1 "C" V 6539 2000 50  0000 C CNN
F 2 "" H 6738 1850 50  0001 C CNN
F 3 "~" H 6700 2000 50  0001 C CNN
	1    6700 2000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60D2588C
P 6700 1700
F 0 "C?" V 6448 1700 50  0000 C CNN
F 1 "C" V 6539 1700 50  0000 C CNN
F 2 "" H 6738 1550 50  0001 C CNN
F 3 "~" H 6700 1700 50  0001 C CNN
	1    6700 1700
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60DACBB2
P 6900 3050
F 0 "C?" H 7015 3096 50  0000 L CNN
F 1 "100 nF" H 7015 3005 50  0000 L CNN
F 2 "" H 6938 2900 50  0001 C CNN
F 3 "~" H 6900 3050 50  0001 C CNN
	1    6900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60DADB2F
P 6900 3250
F 0 "#PWR?" H 6900 3000 50  0001 C CNN
F 1 "GND" H 6905 3077 50  0000 C CNN
F 2 "" H 6900 3250 50  0001 C CNN
F 3 "" H 6900 3250 50  0001 C CNN
	1    6900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3250 6900 3200
Wire Wire Line
	7650 2200 7500 2200
Wire Wire Line
	7500 2200 7500 2100
Wire Wire Line
	7500 2100 6900 2100
Wire Wire Line
	6900 2100 6900 2900
Text GLabel 7550 2600 0    50   Input ~ 0
D+
Text GLabel 7550 2750 0    50   Input ~ 0
D-
Wire Wire Line
	7650 2700 7600 2700
Wire Wire Line
	7600 2700 7600 2750
Wire Wire Line
	7600 2750 7550 2750
Wire Wire Line
	7650 2600 7550 2600
$Comp
L power:VCC #PWR?
U 1 1 60DB87B8
P 8350 1050
F 0 "#PWR?" H 8350 900 50  0001 C CNN
F 1 "VCC" H 8365 1223 50  0000 C CNN
F 2 "" H 8350 1050 50  0001 C CNN
F 3 "" H 8350 1050 50  0001 C CNN
	1    8350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1300 8250 1050
Wire Wire Line
	8250 1050 8350 1050
Wire Wire Line
	8350 1300 8350 1050
Connection ~ 8350 1050
Wire Wire Line
	6550 1700 6550 2000
Wire Wire Line
	6550 2100 6550 2000
Connection ~ 6550 2000
Wire Wire Line
	6850 2000 6950 2000
Wire Wire Line
	6850 1700 6950 1700
Wire Wire Line
	7650 1800 7200 1800
Wire Wire Line
	7200 1800 7200 1700
Wire Wire Line
	7200 1700 6950 1700
Connection ~ 6950 1700
Wire Wire Line
	7650 2000 6950 2000
Connection ~ 6950 2000
Wire Wire Line
	7650 1600 7550 1600
Wire Wire Line
	7550 1600 7550 1350
Wire Wire Line
	8150 1300 8150 1200
Wire Wire Line
	8150 1200 8000 1200
Wire Wire Line
	8000 1200 8000 1050
Text GLabel 9250 1700 2    50   Input ~ 0
SCK
Wire Wire Line
	8850 1700 9250 1700
Text GLabel 9250 1850 2    50   Input ~ 0
MOSI
Wire Wire Line
	8850 1800 9100 1800
Wire Wire Line
	9100 1800 9100 1850
Wire Wire Line
	9100 1850 9250 1850
Text GLabel 9250 2000 2    50   Input ~ 0
MISO
Wire Wire Line
	8850 1900 9050 1900
Wire Wire Line
	9050 1900 9050 2000
Wire Wire Line
	9050 2000 9250 2000
$Comp
L Device:C C?
U 1 1 60E1DD6F
P 7400 3050
F 0 "C?" H 7515 3096 50  0000 L CNN
F 1 "1 uF" H 7515 3005 50  0000 L CNN
F 2 "" H 7438 2900 50  0001 C CNN
F 3 "~" H 7400 3050 50  0001 C CNN
	1    7400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2900 7400 2900
Wire Wire Line
	7400 3200 6900 3200
Connection ~ 6900 3200
$Comp
L power:GND #PWR?
U 1 1 60C90189
P 8700 5050
F 0 "#PWR?" H 8700 4800 50  0001 C CNN
F 1 "GND" H 8705 4877 50  0000 C CNN
F 2 "" H 8700 5050 50  0001 C CNN
F 3 "" H 8700 5050 50  0001 C CNN
	1    8700 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4900 8250 4900
Wire Wire Line
	8700 5050 8700 4900
Wire Wire Line
	8700 4900 8250 4900
Connection ~ 8250 4900
NoConn ~ 8850 1600
NoConn ~ 8850 2000
NoConn ~ 8850 2100
NoConn ~ 8850 2200
NoConn ~ 8850 2300
NoConn ~ 8850 2500
NoConn ~ 8850 2600
NoConn ~ 8850 2800
NoConn ~ 8850 2900
NoConn ~ 8850 3000
NoConn ~ 8850 3100
NoConn ~ 8850 3200
NoConn ~ 8850 3300
NoConn ~ 8850 3400
NoConn ~ 8850 3500
NoConn ~ 8850 3700
NoConn ~ 8850 3800
NoConn ~ 8850 4000
NoConn ~ 8850 4100
NoConn ~ 8850 4200
NoConn ~ 8850 4300
NoConn ~ 8850 4400
NoConn ~ 8850 4500
Wire Wire Line
	1200 1800 1200 1900
Wire Wire Line
	1500 1500 1500 1750
Wire Wire Line
	1500 1750 1550 1750
Wire Wire Line
	1900 1750 1850 1750
Wire Wire Line
	1500 1200 1600 1200
Wire Wire Line
	1600 1200 1600 1050
Wire Notes Line
	750  650  2700 650 
Wire Notes Line
	2700 650  2700 2250
Wire Notes Line
	2700 2250 750  2250
Wire Notes Line
	750  2250 750  650 
Text Notes 750  650  0    50   ~ 0
USB Connector
Text Notes 1650 2200 0    50   ~ 0
Shield is grounded at the\nhost side.
NoConn ~ 1400 6150
$EndSCHEMATC