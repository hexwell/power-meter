EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Power Meter - RF Section"
Date "2021-12-25"
Rev "A"
Comp "Ettore Forigo"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF:nRF24L01P U?
U 1 1 61E44398
P 3900 1750
AR Path="/61E44398" Ref="U?"  Part="1" 
AR Path="/61E0CDD4/61E44398" Ref="U3"  Part="1" 
F 0 "U3" H 3900 2731 50  0000 C CNN
F 1 "nRF24L01P" H 3900 2640 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.5x2.5mm" H 4100 2550 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2726/34069/file/nRF24L01P_Product_Specification_1_0.pdf" H 3900 1850 50  0001 C CNN
	1    3900 1750
	1    0    0    -1  
$EndComp
$Comp
L RFX2401C:RFX2401C U?
U 1 1 61E443A6
P 2100 4900
AR Path="/61E443A6" Ref="U?"  Part="1" 
AR Path="/61E0CDD4/61E443A6" Ref="U4"  Part="1" 
F 0 "U4" H 2100 5467 50  0000 C CNN
F 1 "RFX2401C" H 2100 5376 50  0000 C CNN
F 2 "RFX2401C:QFN50P300X300X60-17N" H 2100 4900 50  0001 L BNN
F 3 "" H 2100 4900 50  0001 L BNN
F 4 "None" H 2100 4900 50  0001 L BNN "PRICE"
F 5 "RFX2401C" H 2100 4900 50  0001 L BNN "MP"
F 6 "RF Front End 2.4GHz ~ 2.5GHz 802.15.4, Zigbee® 16-QFN (3x3)" H 2100 4900 50  0001 L BNN "DESCRIPTION"
F 7 "Unavailable" H 2100 4900 50  0001 L BNN "AVAILABILITY"
F 8 "https://snapeda.com/shop?store=Mouser&id=556493" H 2100 4900 50  0001 L BNN "MOUSER-PURCHASE-URL"
F 9 "UFQFN-16 Skyworks Solutions" H 2100 4900 50  0001 L BNN "PACKAGE"
F 10 "https://snapeda.com/shop?store=DigiKey&id=556493" H 2100 4900 50  0001 L BNN "DIGIKEY-PURCHASE-URL"
F 11 "Skyworks Solutions" H 2100 4900 50  0001 L BNN "MF"
	1    2100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E443B2
P 850 1700
AR Path="/61E443B2" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E443B2" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 850 1450 50  0001 C CNN
F 1 "GND" H 855 1527 50  0000 C CNN
F 2 "" H 850 1700 50  0001 C CNN
F 3 "" H 850 1700 50  0001 C CNN
	1    850  1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61E443B8
P 1000 1600
AR Path="/61E443B8" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E443B8" Ref="C16"  Part="1" 
F 0 "C16" V 748 1600 50  0000 C CNN
F 1 "22 pF" V 839 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1038 1450 50  0001 C CNN
F 3 "~" H 1000 1600 50  0001 C CNN
	1    1000 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61E443BE
P 1000 1200
AR Path="/61E443BE" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E443BE" Ref="C15"  Part="1" 
F 0 "C15" V 748 1200 50  0000 C CNN
F 1 "22 pF" V 839 1200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1038 1050 50  0001 C CNN
F 3 "~" H 1000 1200 50  0001 C CNN
	1    1000 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	850  1200 850  1600
Wire Wire Line
	850  1700 850  1600
Connection ~ 850  1600
NoConn ~ 3300 1850
Text GLabel 1850 1200 2    50   Input ~ 0
XC1
Text GLabel 1850 1600 2    50   Input ~ 0
XC2
Wire Wire Line
	1850 1200 1650 1200
Wire Wire Line
	1650 1250 1650 1200
Connection ~ 1650 1200
$Comp
L Device:Crystal Y?
U 1 1 61E443CE
P 1650 1400
AR Path="/61E443CE" Ref="Y?"  Part="1" 
AR Path="/61E0CDD4/61E443CE" Ref="Y2"  Part="1" 
F 0 "Y2" V 1696 1269 50  0000 R CNN
F 1 "16 MHz" V 1605 1269 50  0000 R CNN
F 2 "" H 1650 1400 50  0001 C CNN
F 3 "~" H 1650 1400 50  0001 C CNN
	1    1650 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 1600 1650 1600
Wire Wire Line
	1650 1550 1650 1600
Connection ~ 1650 1600
Wire Wire Line
	1650 1600 1250 1600
Text GLabel 4550 2050 2    50   Input ~ 0
XC1
Text GLabel 4550 2250 2    50   Input ~ 0
XC2
Wire Wire Line
	4500 2050 4550 2050
Wire Wire Line
	4500 2250 4550 2250
$Comp
L Device:R R?
U 1 1 61E443E3
P 1250 1400
AR Path="/61E443E3" Ref="R?"  Part="1" 
AR Path="/61E0CDD4/61E443E3" Ref="R6"  Part="1" 
F 0 "R6" H 1320 1446 50  0000 L CNN
F 1 "1M" H 1320 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1180 1400 50  0001 C CNN
F 3 "~" H 1250 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
Connection ~ 1250 1600
Wire Wire Line
	1250 1600 1150 1600
Text GLabel 4550 1650 2    50   Input ~ 0
ANT2
Text GLabel 4550 1450 2    50   Input ~ 0
ANT1
Wire Wire Line
	4500 1450 4550 1450
Wire Wire Line
	4500 1650 4550 1650
$Comp
L power:VDD #PWR?
U 1 1 61E443F3
P 4250 950
AR Path="/61E443F3" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E443F3" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 4250 800 50  0001 C CNN
F 1 "VDD" H 4265 1123 50  0000 C CNN
F 2 "" H 4250 950 50  0001 C CNN
F 3 "" H 4250 950 50  0001 C CNN
	1    4250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 950  3900 950 
Wire Wire Line
	4000 950  3900 950 
Connection ~ 3900 950 
Wire Wire Line
	4000 950  4250 950 
Connection ~ 4000 950 
Text GLabel 3200 1250 0    50   Input ~ 0
NRF_MOSI
Text GLabel 3200 1350 0    50   Input ~ 0
NRF_MISO
Text GLabel 3200 1450 0    50   Input ~ 0
NRF_SCK
Text GLabel 3200 1750 0    50   Input ~ 0
NRF_CE
Text GLabel 3200 1550 0    50   Input ~ 0
NRF_CSN
Wire Wire Line
	3200 1450 3300 1450
Wire Wire Line
	3300 1750 3200 1750
Wire Wire Line
	3200 1350 3300 1350
Wire Wire Line
	3300 1250 3200 1250
Wire Wire Line
	3200 1550 3300 1550
Text GLabel 4300 3000 2    50   Input ~ 0
MOSI
Text GLabel 4300 3100 2    50   Input ~ 0
MISO
Text GLabel 4250 3100 0    50   Input ~ 0
NRF_MISO
Text GLabel 4300 3200 2    50   Input ~ 0
SCK
Text GLabel 4250 3200 0    50   Input ~ 0
NRF_SCK
Text GLabel 4300 3300 2    50   Input ~ 0
D10
Text GLabel 4250 3300 0    50   Input ~ 0
NRF_CSN
Text GLabel 4250 3400 0    50   Input ~ 0
NRF_CE
Text GLabel 4300 3400 2    50   Input ~ 0
D5
Wire Wire Line
	4250 3000 4300 3000
Wire Wire Line
	4250 3100 4300 3100
Wire Wire Line
	4250 3200 4300 3200
Wire Wire Line
	4250 3300 4300 3300
Wire Wire Line
	4250 3400 4300 3400
$Comp
L power:GND #PWR?
U 1 1 61E44416
P 3950 2650
AR Path="/61E44416" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E44416" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 3950 2400 50  0001 C CNN
F 1 "GND" H 3955 2477 50  0000 C CNN
F 2 "" H 3950 2650 50  0001 C CNN
F 3 "" H 3950 2650 50  0001 C CNN
	1    3950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2600 3950 2600
Wire Wire Line
	3950 2650 3950 2600
Connection ~ 3950 2600
Text GLabel 4550 1250 2    50   Input ~ 0
VDD_PA
Wire Wire Line
	4500 1250 4550 1250
Text GLabel 3250 2050 0    50   Input ~ 0
IREF
Text GLabel 3250 2250 0    50   Input ~ 0
DVDD
Wire Wire Line
	3250 2050 3300 2050
Wire Wire Line
	3250 2250 3300 2250
Text GLabel 4250 3000 0    50   Input ~ 0
NRF_MOSI
$Comp
L power:GND #PWR?
U 1 1 61E4442F
P 850 3250
AR Path="/61E4442F" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E4442F" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 850 3000 50  0001 C CNN
F 1 "GND" H 855 3077 50  0000 C CNN
F 2 "" H 850 3250 50  0001 C CNN
F 3 "" H 850 3250 50  0001 C CNN
	1    850  3250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 61E44435
P 850 2950
AR Path="/61E44435" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E44435" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 850 2800 50  0001 C CNN
F 1 "VDD" H 865 3123 50  0000 C CNN
F 2 "" H 850 2950 50  0001 C CNN
F 3 "" H 850 2950 50  0001 C CNN
	1    850  2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61E4443B
P 1350 3100
AR Path="/61E4443B" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E4443B" Ref="C18"  Part="1" 
F 0 "C18" H 1465 3146 50  0000 L CNN
F 1 "10 nF" H 1465 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1388 2950 50  0001 C CNN
F 3 "~" H 1350 3100 50  0001 C CNN
	1    1350 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61E44441
P 1850 3100
AR Path="/61E44441" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E44441" Ref="C19"  Part="1" 
F 0 "C19" H 1965 3146 50  0000 L CNN
F 1 "1 nF" H 1965 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1888 2950 50  0001 C CNN
F 3 "~" H 1850 3100 50  0001 C CNN
	1    1850 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E444C2
P 2800 5250
AR Path="/61E444C2" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E444C2" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 2800 5000 50  0001 C CNN
F 1 "GND" H 2805 5077 50  0000 C CNN
F 2 "" H 2800 5250 50  0001 C CNN
F 3 "" H 2800 5250 50  0001 C CNN
	1    2800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5200 2800 5250
Text GLabel 2850 5000 2    50   Input ~ 0
ANT
Wire Wire Line
	2800 5000 2850 5000
$Comp
L Device:C C?
U 1 1 61E444CB
P 1600 6350
AR Path="/61E444CB" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E444CB" Ref="C26"  Part="1" 
F 0 "C26" H 1715 6396 50  0000 L CNN
F 1 "1 uF" H 1715 6305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1638 6200 50  0001 C CNN
F 3 "~" H 1600 6350 50  0001 C CNN
	1    1600 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E444D1
P 1100 6500
AR Path="/61E444D1" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E444D1" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 1100 6250 50  0001 C CNN
F 1 "GND" H 1105 6327 50  0000 C CNN
F 2 "" H 1100 6500 50  0001 C CNN
F 3 "" H 1100 6500 50  0001 C CNN
	1    1100 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61E444D9
P 2100 6350
AR Path="/61E444D9" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E444D9" Ref="C27"  Part="1" 
F 0 "C27" H 2215 6396 50  0000 L CNN
F 1 "220 pF" H 2215 6305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2138 6200 50  0001 C CNN
F 3 "~" H 2100 6350 50  0001 C CNN
	1    2100 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6500 1600 6500
Connection ~ 1100 6500
Wire Wire Line
	1100 6200 1600 6200
Connection ~ 1100 6200
Text GLabel 1350 4800 0    50   Input ~ 0
RXEN
Text GLabel 1350 4900 0    50   Input ~ 0
TXEN
Wire Wire Line
	1350 4800 1400 4800
Wire Wire Line
	1350 4900 1400 4900
$Comp
L power:VDD #PWR?
U 1 1 61E444E7
P 2800 4550
AR Path="/61E444E7" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E444E7" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 2800 4400 50  0001 C CNN
F 1 "VDD" H 2815 4723 50  0000 C CNN
F 2 "" H 2800 4550 50  0001 C CNN
F 3 "" H 2800 4550 50  0001 C CNN
	1    2800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4550 2800 4600
Text GLabel 2850 4800 2    50   Input ~ 0
TXRX
Wire Wire Line
	2800 4800 2850 4800
Text GLabel 2950 6350 0    50   Input ~ 0
VDD_PA
Text GLabel 3050 6750 2    50   Input ~ 0
TXEN
Wire Wire Line
	2950 6350 3000 6350
Wire Wire Line
	3000 6350 3000 6400
Wire Wire Line
	3000 6700 3000 6750
Wire Wire Line
	3000 6750 3050 6750
$Comp
L Device:R R?
U 1 1 61E444FC
P 3750 6100
AR Path="/61E444FC" Ref="R?"  Part="1" 
AR Path="/61E0CDD4/61E444FC" Ref="R9"  Part="1" 
F 0 "R9" H 3820 6146 50  0000 L CNN
F 1 "1k" H 3820 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3680 6100 50  0001 C CNN
F 3 "~" H 3750 6100 50  0001 C CNN
	1    3750 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E44502
P 3750 6500
AR Path="/61E44502" Ref="R?"  Part="1" 
AR Path="/61E0CDD4/61E44502" Ref="R10"  Part="1" 
F 0 "R10" H 3820 6546 50  0000 L CNN
F 1 "20k" H 3820 6455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3680 6500 50  0001 C CNN
F 3 "~" H 3750 6500 50  0001 C CNN
	1    3750 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6250 3750 6300
Text GLabel 3950 6300 2    50   Input ~ 0
RXEN
$Comp
L power:GND #PWR?
U 1 1 61E4450A
P 3750 6700
AR Path="/61E4450A" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E4450A" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 3750 6450 50  0001 C CNN
F 1 "GND" H 3755 6527 50  0000 C CNN
F 2 "" H 3750 6700 50  0001 C CNN
F 3 "" H 3750 6700 50  0001 C CNN
	1    3750 6700
	1    0    0    -1  
$EndComp
Text GLabel 3700 5900 0    50   Input ~ 0
NRF_CE
Wire Wire Line
	3700 5900 3750 5900
Wire Wire Line
	3750 5900 3750 5950
Wire Wire Line
	3750 6300 3950 6300
Connection ~ 3750 6300
Wire Wire Line
	3750 6300 3750 6350
Wire Wire Line
	3750 6700 3750 6650
$Comp
L Device:L L?
U 1 1 61E44517
P 7750 1250
AR Path="/61E44517" Ref="L?"  Part="1" 
AR Path="/61E0CDD4/61E44517" Ref="L1"  Part="1" 
F 0 "L1" H 7803 1296 50  0000 L CNN
F 1 "8.2 nH" H 7803 1205 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 7750 1250 50  0001 C CNN
F 3 "~" H 7750 1250 50  0001 C CNN
	1    7750 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 61E4451D
P 8200 1000
AR Path="/61E4451D" Ref="L?"  Part="1" 
AR Path="/61E0CDD4/61E4451D" Ref="L2"  Part="1" 
F 0 "L2" V 8390 1000 50  0000 C CNN
F 1 "3.9 nH" V 8299 1000 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 8200 1000 50  0001 C CNN
F 3 "~" H 8200 1000 50  0001 C CNN
	1    8200 1000
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L?
U 1 1 61E44523
P 8200 1500
AR Path="/61E44523" Ref="L?"  Part="1" 
AR Path="/61E0CDD4/61E44523" Ref="L3"  Part="1" 
F 0 "L3" V 8390 1500 50  0000 C CNN
F 1 "2.7 nH" V 8299 1500 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 8200 1500 50  0001 C CNN
F 3 "~" H 8200 1500 50  0001 C CNN
	1    8200 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 61E44529
P 8900 1250
AR Path="/61E44529" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E44529" Ref="C22"  Part="1" 
F 0 "C22" H 9015 1296 50  0000 L CNN
F 1 "1 pF" H 9015 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8938 1100 50  0001 C CNN
F 3 "~" H 8900 1250 50  0001 C CNN
	1    8900 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61E4452F
P 8650 1000
AR Path="/61E4452F" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E4452F" Ref="C21"  Part="1" 
F 0 "C21" V 8398 1000 50  0000 C CNN
F 1 "1.5 pF" V 8489 1000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8688 850 50  0001 C CNN
F 3 "~" H 8650 1000 50  0001 C CNN
	1    8650 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 1000 8900 1000
Wire Wire Line
	8900 1000 8900 1100
Wire Wire Line
	8350 1000 8500 1000
Wire Wire Line
	7750 1100 7750 1000
Wire Wire Line
	7750 1000 8050 1000
Wire Wire Line
	7750 1400 7750 1500
Wire Wire Line
	7750 1500 8050 1500
Text GLabel 9100 1000 2    50   Input ~ 0
TXRX
Wire Wire Line
	8900 1000 9100 1000
Connection ~ 8900 1000
Text GLabel 7650 1000 0    50   Input ~ 0
ANT2
Text GLabel 7650 1500 0    50   Input ~ 0
ANT1
Wire Wire Line
	7650 1000 7750 1000
Connection ~ 7750 1000
Wire Wire Line
	7750 1500 7650 1500
Connection ~ 7750 1500
$Comp
L Device:C C?
U 1 1 61E4454C
P 7750 2000
AR Path="/61E4454C" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E4454C" Ref="C23"  Part="1" 
F 0 "C23" H 7865 2046 50  0000 L CNN
F 1 "2.2 nF" H 7865 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7788 1850 50  0001 C CNN
F 3 "~" H 7750 2000 50  0001 C CNN
	1    7750 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61E44552
P 8450 2000
AR Path="/61E44552" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E44552" Ref="C24"  Part="1" 
F 0 "C24" H 8565 2046 50  0000 L CNN
F 1 "4.7 nF" H 8565 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8488 1850 50  0001 C CNN
F 3 "~" H 8450 2000 50  0001 C CNN
	1    8450 2000
	1    0    0    -1  
$EndComp
Text GLabel 7650 1850 0    50   Input ~ 0
VDD_PA
Wire Wire Line
	7750 1850 7650 1850
Connection ~ 7750 1850
Wire Wire Line
	8350 1500 8450 1500
Wire Wire Line
	7750 1850 8450 1850
$Comp
L power:VDD #PWR?
U 1 1 61E44563
P 1100 6200
AR Path="/61E44563" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E44563" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 1100 6050 50  0001 C CNN
F 1 "VDD" H 1115 6373 50  0000 C CNN
F 2 "" H 1100 6200 50  0001 C CNN
F 3 "" H 1100 6200 50  0001 C CNN
	1    1100 6200
	1    0    0    -1  
$EndComp
Connection ~ 8450 1850
Wire Wire Line
	7750 2150 8450 2150
Connection ~ 8450 2150
Wire Wire Line
	8450 1500 8450 1850
Wire Notes Line
	7200 650  9500 650 
Wire Notes Line
	9500 650  9500 2450
Wire Notes Line
	9500 2450 7200 2450
Wire Notes Line
	7200 2450 7200 650 
Text Notes 7200 650  0    50   ~ 0
Conversion to Unbalanced & Impedance Matching Network
Wire Notes Line
	4300 5800 4300 6950
Wire Notes Line
	900  6950 900  5800
Text Notes 900  5800 0    50   ~ 0
Decoupling & Support Circuitry
Wire Notes Line
	4550 4100 4550 7100
Wire Notes Line
	600  7100 600  4100
Text Notes 600  4100 0    50   ~ 0
RFAxis RFX2401C
Wire Notes Line
	700  800  2150 800 
Wire Notes Line
	2150 800  2150 2050
Wire Notes Line
	2150 2050 700  2050
Wire Notes Line
	700  2050 700  800 
Text Notes 700  800  0    50   ~ 0
Crystal
Wire Notes Line
	700  3600 700  2600
Text Notes 700  2600 0    50   ~ 0
Decoupling & Support Circuitry
Text Notes 600  650  0    50   ~ 0
Nordic Semiconductors nRF24L01P
Text Notes 650  7600 0    50   ~ 0
Original design taken from:\nhttps://easyeda.com/othmane.hammam/nrf24l01-pa-lna\nwith hints from:\nhttps://www.youtube.com/watch?v=14_jh3nLSsU
Wire Wire Line
	1850 2950 1350 2950
Connection ~ 850  2950
Wire Wire Line
	1850 3250 1350 3250
Connection ~ 850  3250
Wire Wire Line
	3900 2550 3900 2600
Wire Wire Line
	3800 2550 3800 2600
Wire Wire Line
	3800 2600 3900 2600
Connection ~ 3900 2600
Wire Wire Line
	4100 2550 4100 2600
Wire Wire Line
	3950 2600 4000 2600
Wire Wire Line
	4000 2600 4000 2550
Connection ~ 4000 2600
Wire Wire Line
	4000 2600 4100 2600
Wire Wire Line
	2900 2850 2900 2900
Wire Wire Line
	2850 2850 2900 2850
$Comp
L power:GND #PWR?
U 1 1 61E44466
P 2900 3200
AR Path="/61E44466" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E44466" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 2900 2950 50  0001 C CNN
F 1 "GND" H 2905 3027 50  0000 C CNN
F 2 "" H 2900 3200 50  0001 C CNN
F 3 "" H 2900 3200 50  0001 C CNN
	1    2900 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61E44460
P 2900 3050
AR Path="/61E44460" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E44460" Ref="C20"  Part="1" 
F 0 "C20" H 3015 3096 50  0000 L CNN
F 1 "33 nF" H 3015 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2938 2900 50  0001 C CNN
F 3 "~" H 2900 3050 50  0001 C CNN
	1    2900 3050
	1    0    0    -1  
$EndComp
Text GLabel 2850 2850 0    50   Input ~ 0
DVDD
Wire Wire Line
	2400 2850 2400 2900
Wire Wire Line
	2350 2850 2400 2850
$Comp
L power:GND #PWR?
U 1 1 61E44456
P 2400 3200
AR Path="/61E44456" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E44456" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 2400 2950 50  0001 C CNN
F 1 "GND" H 2405 3027 50  0000 C CNN
F 2 "" H 2400 3200 50  0001 C CNN
F 3 "" H 2400 3200 50  0001 C CNN
	1    2400 3200
	1    0    0    -1  
$EndComp
Text GLabel 2350 2850 0    50   Input ~ 0
IREF
$Comp
L Device:R R?
U 1 1 61E4444F
P 2400 3050
AR Path="/61E4444F" Ref="R?"  Part="1" 
AR Path="/61E0CDD4/61E4444F" Ref="R7"  Part="1" 
F 0 "R7" H 2470 3096 50  0000 L CNN
F 1 "22k" H 2470 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2330 3050 50  0001 C CNN
F 3 "~" H 2400 3050 50  0001 C CNN
	1    2400 3050
	1    0    0    -1  
$EndComp
Wire Notes Line
	3250 2600 3250 3600
Connection ~ 1350 2950
Wire Wire Line
	1350 2950 850  2950
Connection ~ 1350 3250
Wire Wire Line
	1350 3250 850  3250
$Comp
L Device:C C?
U 1 1 620705C6
P 850 3100
AR Path="/620705C6" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/620705C6" Ref="C17"  Part="1" 
F 0 "C17" H 965 3146 50  0000 L CNN
F 1 "4.7 uF" H 965 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 888 2950 50  0001 C CNN
F 3 "~" H 850 3100 50  0001 C CNN
	1    850  3100
	1    0    0    -1  
$EndComp
Wire Notes Line
	700  2600 3250 2600
Wire Notes Line
	3250 3600 700  3600
Wire Notes Line
	600  650  600  3650
Wire Notes Line
	600  650  5050 650 
Connection ~ 1600 6200
Wire Wire Line
	1600 6200 2100 6200
Connection ~ 1600 6500
Wire Wire Line
	1600 6500 2100 6500
$Comp
L Device:C C?
U 1 1 620E063C
P 1100 6350
AR Path="/620E063C" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/620E063C" Ref="C25"  Part="1" 
F 0 "C25" H 1215 6396 50  0000 L CNN
F 1 "10 uF" H 1215 6305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1138 6200 50  0001 C CNN
F 3 "~" H 1100 6350 50  0001 C CNN
	1    1100 6350
	1    0    0    -1  
$EndComp
Wire Notes Line
	900  5800 4300 5800
Wire Notes Line
	900  6950 4300 6950
Wire Notes Line
	600  7100 4550 7100
Wire Notes Line
	600  4100 4550 4100
Wire Notes Line
	600  3650 5050 3650
Wire Notes Line
	5050 3650 5050 650 
Wire Notes Line
	7200 4050 10350 4050
Text Notes 7200 4050 0    50   ~ 0
Antenna Matching Network
Wire Notes Line
	7200 5100 7200 4050
Wire Wire Line
	7750 4800 7750 4750
Wire Wire Line
	8250 4800 8250 4750
Wire Wire Line
	9250 4800 9250 4750
Wire Wire Line
	9750 4800 9750 4750
$Comp
L power:GND #PWR?
U 1 1 61EAC4AD
P 9750 4800
AR Path="/61EAC4AD" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61EAC4AD" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 9750 4550 50  0001 C CNN
F 1 "GND" H 9755 4627 50  0000 C CNN
F 2 "" H 9750 4800 50  0001 C CNN
F 3 "" H 9750 4800 50  0001 C CNN
	1    9750 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EABF37
P 9250 4800
AR Path="/61EABF37" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61EABF37" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 9250 4550 50  0001 C CNN
F 1 "GND" H 9255 4627 50  0000 C CNN
F 2 "" H 9250 4800 50  0001 C CNN
F 3 "" H 9250 4800 50  0001 C CNN
	1    9250 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EAB99A
P 7750 4800
AR Path="/61EAB99A" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61EAB99A" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 7750 4550 50  0001 C CNN
F 1 "GND" H 7755 4627 50  0000 C CNN
F 2 "" H 7750 4800 50  0001 C CNN
F 3 "" H 7750 4800 50  0001 C CNN
	1    7750 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EAB460
P 8250 4800
AR Path="/61EAB460" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61EAB460" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 8250 4550 50  0001 C CNN
F 1 "GND" H 8255 4627 50  0000 C CNN
F 2 "" H 8250 4800 50  0001 C CNN
F 3 "" H 8250 4800 50  0001 C CNN
	1    8250 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4750 8750 4800
Text Notes 7200 5400 0    50   ~ 0
SMA Connector
Wire Notes Line
	8450 5400 7200 5400
Wire Notes Line
	8450 6200 8450 5400
Wire Notes Line
	7200 6200 8450 6200
Wire Notes Line
	7200 5400 7200 6200
Wire Notes Line
	7200 5100 10350 5100
Connection ~ 7750 4350
Wire Wire Line
	7450 4350 7750 4350
Text GLabel 7450 4350 0    50   Input ~ 0
ANT
$Comp
L power:GND #PWR?
U 1 1 61E444AC
P 8750 4800
AR Path="/61E444AC" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E444AC" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 8750 4550 50  0001 C CNN
F 1 "GND" H 8755 4627 50  0000 C CNN
F 2 "" H 8750 4800 50  0001 C CNN
F 3 "" H 8750 4800 50  0001 C CNN
	1    8750 4800
	1    0    0    -1  
$EndComp
Connection ~ 9750 4350
Wire Wire Line
	10050 4350 9750 4350
Connection ~ 9250 4350
Connection ~ 8750 4350
Wire Wire Line
	8750 4350 9250 4350
Connection ~ 8250 4350
Wire Wire Line
	7750 4350 7750 4450
Wire Wire Line
	8250 4350 7750 4350
Wire Wire Line
	9250 4350 9250 4450
Wire Wire Line
	9350 4350 9250 4350
Wire Wire Line
	9750 4350 9750 4450
Wire Wire Line
	9650 4350 9750 4350
Wire Wire Line
	8750 4350 8650 4350
Wire Wire Line
	8750 4450 8750 4350
Wire Wire Line
	8250 4350 8350 4350
Wire Wire Line
	8250 4450 8250 4350
$Comp
L Device:L L?
U 1 1 61E44496
P 9500 4350
AR Path="/61E44496" Ref="L?"  Part="1" 
AR Path="/61E0CDD4/61E44496" Ref="L5"  Part="1" 
F 0 "L5" V 9690 4350 50  0000 C CNN
F 1 "2.4 nH" V 9599 4350 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 9500 4350 50  0001 C CNN
F 3 "~" H 9500 4350 50  0001 C CNN
	1    9500 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L?
U 1 1 61E44490
P 8500 4350
AR Path="/61E44490" Ref="L?"  Part="1" 
AR Path="/61E0CDD4/61E44490" Ref="L4"  Part="1" 
F 0 "L4" V 8690 4350 50  0000 C CNN
F 1 "2.4 nH" V 8599 4350 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 8500 4350 50  0001 C CNN
F 3 "~" H 8500 4350 50  0001 C CNN
	1    8500 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 61E4448A
P 7750 4600
AR Path="/61E4448A" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E4448A" Ref="C28"  Part="1" 
F 0 "C28" H 7865 4646 50  0000 L CNN
F 1 "0.3 pF" H 7865 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7788 4450 50  0001 C CNN
F 3 "~" H 7750 4600 50  0001 C CNN
	1    7750 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61E44484
P 8250 4600
AR Path="/61E44484" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E44484" Ref="C29"  Part="1" 
F 0 "C29" H 8365 4646 50  0000 L CNN
F 1 "1.5 pF" H 8365 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8288 4450 50  0001 C CNN
F 3 "~" H 8250 4600 50  0001 C CNN
	1    8250 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61E4447E
P 8750 4600
AR Path="/61E4447E" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E4447E" Ref="C30"  Part="1" 
F 0 "C30" H 8865 4646 50  0000 L CNN
F 1 "1.5 pF" H 8865 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8788 4450 50  0001 C CNN
F 3 "~" H 8750 4600 50  0001 C CNN
	1    8750 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61E44478
P 9250 4600
AR Path="/61E44478" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E44478" Ref="C31"  Part="1" 
F 0 "C31" H 9365 4646 50  0000 L CNN
F 1 "1.5 pF" H 9365 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9288 4450 50  0001 C CNN
F 3 "~" H 9250 4600 50  0001 C CNN
	1    9250 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61E44472
P 9750 4600
AR Path="/61E44472" Ref="C?"  Part="1" 
AR Path="/61E0CDD4/61E44472" Ref="C32"  Part="1" 
F 0 "C32" H 9865 4646 50  0000 L CNN
F 1 "1.5 pF" H 9865 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9788 4450 50  0001 C CNN
F 3 "~" H 9750 4600 50  0001 C CNN
	1    9750 4600
	1    0    0    -1  
$EndComp
Text GLabel 10050 4350 2    50   Input ~ 0
SMA
Wire Wire Line
	7500 5600 7550 5600
Text GLabel 7500 5600 0    50   Input ~ 0
SMA
Wire Wire Line
	7750 5800 7750 5850
$Comp
L power:GND #PWR?
U 1 1 61E443D8
P 7750 5850
AR Path="/61E443D8" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E443D8" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 7750 5600 50  0001 C CNN
F 1 "GND" H 7755 5677 50  0000 C CNN
F 2 "" H 7750 5850 50  0001 C CNN
F 3 "" H 7750 5850 50  0001 C CNN
	1    7750 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J?
U 1 1 61E443AC
P 7750 5600
AR Path="/61E443AC" Ref="J?"  Part="1" 
AR Path="/61E0CDD4/61E443AC" Ref="J3"  Part="1" 
F 0 "J3" H 7850 5575 50  0000 L CNN
F 1 "Conn_Coaxial" H 7850 5484 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132203-12_Horizontal" H 7750 5600 50  0001 C CNN
F 3 " ~" H 7750 5600 50  0001 C CNN
	1    7750 5600
	1    0    0    -1  
$EndComp
Wire Notes Line
	10350 4050 10350 5100
$Comp
L Device:R R?
U 1 1 61E444F1
P 3000 6550
AR Path="/61E444F1" Ref="R?"  Part="1" 
AR Path="/61E0CDD4/61E444F1" Ref="R8"  Part="1" 
F 0 "R8" H 3070 6596 50  0000 L CNN
F 1 "1k" H 3070 6505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2930 6550 50  0001 C CNN
F 3 "~" H 3000 6550 50  0001 C CNN
	1    3000 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1550 1250 1600
Wire Wire Line
	1150 1200 1250 1200
Wire Wire Line
	1250 1250 1250 1200
Connection ~ 1250 1200
Wire Wire Line
	1250 1200 1650 1200
$Comp
L power:GND #PWR?
U 1 1 61E44535
P 8900 1400
AR Path="/61E44535" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E44535" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 8900 1150 50  0001 C CNN
F 1 "GND" H 8905 1227 50  0000 C CNN
F 2 "" H 8900 1400 50  0001 C CNN
F 3 "" H 8900 1400 50  0001 C CNN
	1    8900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2200 8450 2150
$Comp
L power:GND #PWR?
U 1 1 61E44559
P 8450 2200
AR Path="/61E44559" Ref="#PWR?"  Part="1" 
AR Path="/61E0CDD4/61E44559" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 8450 1950 50  0001 C CNN
F 1 "GND" H 8455 2027 50  0000 C CNN
F 2 "" H 8450 2200 50  0001 C CNN
F 3 "" H 8450 2200 50  0001 C CNN
	1    8450 2200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
