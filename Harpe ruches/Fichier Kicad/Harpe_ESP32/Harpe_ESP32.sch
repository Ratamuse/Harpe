EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Testboard V2.3"
Date "2021-12-11"
Rev "V0.2"
Comp "Ratamuse"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	9650 1000 9650 750 
Wire Wire Line
	9650 750  8650 750 
Wire Wire Line
	9550 1000 9550 850 
Wire Wire Line
	9550 850  8650 850 
Wire Wire Line
	8650 850  8650 750 
Connection ~ 8650 750 
Text GLabel 7300 750  0    50   Input ~ 0
+3V3
Connection ~ 8250 750 
Text GLabel 8200 2300 0    50   Input ~ 0
USBD_P
Text GLabel 8200 2400 0    50   Input ~ 0
USBD_N
Wire Wire Line
	8200 2300 9050 2300
Wire Wire Line
	9050 2400 8200 2400
Text GLabel 7000 2200 0    50   Input ~ 0
VBUS
Wire Wire Line
	7600 2200 7600 2300
Connection ~ 7600 2200
Wire Wire Line
	7600 2200 9050 2200
$Comp
L Device:R R12
U 1 1 5F616393
P 7400 2200
F 0 "R12" V 7193 2200 50  0000 C CNN
F 1 "22.1K" V 7284 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7330 2200 50  0001 C CNN
F 3 "~" H 7400 2200 50  0001 C CNN
	1    7400 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 2200 7600 2200
$Comp
L Device:R R13
U 1 1 5F616D03
P 7600 2450
F 0 "R13" H 7530 2404 50  0000 R CNN
F 1 "47.5k" H 7530 2495 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7530 2450 50  0001 C CNN
F 3 "~" H 7600 2450 50  0001 C CNN
	1    7600 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7600 2600 7600 2800
$Comp
L power:GND #PWR0108
U 1 1 5F6195E1
P 7600 2800
F 0 "#PWR0108" H 7600 2550 50  0001 C CNN
F 1 "GND" H 7605 2627 50  0000 C CNN
F 2 "" H 7600 2800 50  0001 C CNN
F 3 "" H 7600 2800 50  0001 C CNN
	1    7600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2800 9650 2950
Wire Wire Line
	9650 2950 9700 2950
Wire Wire Line
	9750 2950 9750 2800
Wire Wire Line
	9700 2950 9700 3050
Connection ~ 9700 2950
Wire Wire Line
	9700 2950 9750 2950
$Comp
L power:GND #PWR0109
U 1 1 5F61B799
P 9700 3050
F 0 "#PWR0109" H 9700 2800 50  0001 C CNN
F 1 "GND" H 9705 2877 50  0000 C CNN
F 2 "" H 9700 3050 50  0001 C CNN
F 3 "" H 9700 3050 50  0001 C CNN
	1    9700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1900 10550 1900
Wire Wire Line
	10250 1500 10550 1500
Wire Wire Line
	10250 1600 10800 1600
Wire Wire Line
	10250 1700 10800 1700
Text GLabel 10550 1500 2    50   Output ~ 0
RTS
Text GLabel 10800 1600 2    50   Input ~ 0
UOTXD
Text GLabel 10800 1700 2    50   Output ~ 0
UORXD
Text GLabel 10550 1900 2    50   Output ~ 0
DTR
$Comp
L UMH3N:UMH3N Q1
U 1 1 5F621C4B
P 9750 3400
F 0 "Q1" H 10200 3665 50  0000 C CNN
F 1 "UMH3N" H 10200 3574 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 10500 3500 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Changjiang-Electronics-Tech-CJ-UMH3N_C62892.pdf" H 10500 3400 50  0001 L CNN
F 4 "2 NPN pre-biased (Dual) 100mA 50V SC-70-6(SOT-363) Digital Transistors RoHS" H 10500 3300 50  0001 L CNN "Description"
F 5 "1.1" H 10500 3200 50  0001 L CNN "Height"
F 6 "Changjiang Electronics Tech (CJ)" H 10500 3100 50  0001 L CNN "Manufacturer_Name"
F 7 "UMH3N" H 10500 3000 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 10500 2900 50  0001 L CNN "Mouser Part Number"
F 9 "" H 10500 2800 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 10500 2700 50  0001 L CNN "RS Part Number"
F 11 "" H 10500 2600 50  0001 L CNN "RS Price/Stock"
	1    9750 3400
	1    0    0    -1  
$EndComp
Text GLabel 9750 3400 0    50   Input ~ 0
RTS
Text GLabel 9750 3500 0    50   Input ~ 0
DTR
Text GLabel 9750 3600 0    50   Input ~ 0
IO0
Text GLabel 10650 3500 2    50   Input ~ 0
RTS
Text GLabel 10650 3600 2    50   Input ~ 0
DTR
Text GLabel 10650 3400 2    50   Input ~ 0
RST_EN
Text GLabel 7200 4150 0    50   Input ~ 0
+5V
$Comp
L power:GND #PWR0110
U 1 1 5F62CBD0
P 8950 4800
F 0 "#PWR0110" H 8950 4550 50  0001 C CNN
F 1 "GND" H 8955 4627 50  0000 C CNN
F 2 "" H 8950 4800 50  0001 C CNN
F 3 "" H 8950 4800 50  0001 C CNN
	1    8950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4150 8100 4300
Wire Wire Line
	8100 4600 8100 4750
$Comp
L Device:C C9
U 1 1 5F6315DF
P 8100 4450
F 0 "C9" H 8215 4496 50  0000 L CNN
F 1 "0.1µF" H 8215 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8138 4300 50  0001 C CNN
F 3 "~" H 8100 4450 50  0001 C CNN
	1    8100 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F6315D5
P 8100 4750
F 0 "#PWR0112" H 8100 4500 50  0001 C CNN
F 1 "GND" H 8105 4577 50  0000 C CNN
F 2 "" H 8100 4750 50  0001 C CNN
F 3 "" H 8100 4750 50  0001 C CNN
	1    8100 4750
	1    0    0    -1  
$EndComp
Text GLabel 10600 4250 2    50   Output ~ 0
+3V3
Text GLabel 800  3350 0    50   Input ~ 0
+3V3
Wire Wire Line
	1200 3350 1200 3500
Wire Wire Line
	1200 3800 1200 3950
$Comp
L power:GND #PWR0115
U 1 1 5F64E118
P 900 3950
F 0 "#PWR0115" H 900 3700 50  0001 C CNN
F 1 "GND" H 905 3777 50  0000 C CNN
F 2 "" H 900 3950 50  0001 C CNN
F 3 "" H 900 3950 50  0001 C CNN
	1    900  3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F64E122
P 1200 3650
F 0 "C2" H 1315 3696 50  0000 L CNN
F 1 "0.1µF" H 1315 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1238 3500 50  0001 C CNN
F 3 "~" H 1200 3650 50  0001 C CNN
	1    1200 3650
	1    0    0    -1  
$EndComp
Connection ~ 1200 3350
$Comp
L power:GND #PWR0116
U 1 1 5F64E12E
P 1200 3950
F 0 "#PWR0116" H 1200 3700 50  0001 C CNN
F 1 "GND" H 1205 3777 50  0000 C CNN
F 2 "" H 1200 3950 50  0001 C CNN
F 3 "" H 1200 3950 50  0001 C CNN
	1    1200 3950
	1    0    0    -1  
$EndComp
Connection ~ 900  3350
Wire Wire Line
	900  3350 1200 3350
Wire Wire Line
	800  3350 900  3350
Wire Wire Line
	900  3350 900  3500
Wire Wire Line
	900  3800 900  3950
$Comp
L Device:C C1
U 1 1 5F64E13D
P 900 3650
F 0 "C1" H 1015 3696 50  0000 L CNN
F 1 "22µF" H 1015 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 938 3500 50  0001 C CNN
F 3 "~" H 900 3650 50  0001 C CNN
	1    900  3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4100 2650 3350
Wire Wire Line
	1200 3350 1500 3350
Wire Wire Line
	1500 3350 1500 3750
Connection ~ 1500 3350
Wire Wire Line
	1500 3350 2650 3350
Text GLabel 1850 4000 1    50   Output ~ 0
RST_EN
Text GLabel 1850 4600 3    50   Output ~ 0
Reset_PB
$Comp
L Device:R R1
U 1 1 5F6611A6
P 1500 3900
F 0 "R1" H 1570 3946 50  0000 L CNN
F 1 "10K" H 1570 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1430 3900 50  0001 C CNN
F 3 "~" H 1500 3900 50  0001 C CNN
	1    1500 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5F66193F
P 1500 4900
F 0 "#PWR0117" H 1500 4650 50  0001 C CNN
F 1 "GND" H 1505 4727 50  0000 C CNN
F 2 "" H 1500 4900 50  0001 C CNN
F 3 "" H 1500 4900 50  0001 C CNN
	1    1500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4750 1500 4900
$Comp
L Device:C C3
U 1 1 5F66194B
P 1500 4600
F 0 "C3" H 1615 4646 50  0000 L CNN
F 1 "22µF" H 1615 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1538 4450 50  0001 C CNN
F 3 "~" H 1500 4600 50  0001 C CNN
	1    1500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4000 1850 4300
Wire Wire Line
	1500 4050 1500 4300
Wire Wire Line
	2050 4300 1850 4300
Connection ~ 1850 4300
Wire Wire Line
	1850 4300 1850 4600
Wire Wire Line
	1850 4300 1500 4300
Connection ~ 1500 4300
Wire Wire Line
	1500 4300 1500 4450
$Comp
L Isolator:PC817 U4
U 1 1 5F683148
P 4650 2600
F 0 "U4" H 4650 2925 50  0000 C CNN
F 1 "PC817" H 4650 2834 50  0000 C CNN
F 2 "Empreintes:SOP254P960X420-4N" H 4450 2400 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4650 2600 50  0001 L CNN
	1    4650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2700 4250 2700
Wire Wire Line
	4250 2700 4250 2800
$Comp
L power:GND #PWR0118
U 1 1 5F686D13
P 4250 2800
F 0 "#PWR0118" H 4250 2550 50  0001 C CNN
F 1 "GND" H 4255 2627 50  0000 C CNN
F 2 "" H 4250 2800 50  0001 C CNN
F 3 "" H 4250 2800 50  0001 C CNN
	1    4250 2800
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U5
U 1 1 5F68DD66
P 4650 3300
F 0 "U5" H 4650 3625 50  0000 C CNN
F 1 "PC817" H 4650 3534 50  0000 C CNN
F 2 "Empreintes:SOP254P960X420-4N" H 4450 3100 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4650 3300 50  0001 L CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3400 4250 3400
Wire Wire Line
	4250 3400 4250 3500
$Comp
L power:GND #PWR0119
U 1 1 5F68DD72
P 4250 3500
F 0 "#PWR0119" H 4250 3250 50  0001 C CNN
F 1 "GND" H 4255 3327 50  0000 C CNN
F 2 "" H 4250 3500 50  0001 C CNN
F 3 "" H 4250 3500 50  0001 C CNN
	1    4250 3500
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U6
U 1 1 5F691D15
P 5300 4000
F 0 "U6" H 5300 4325 50  0000 C CNN
F 1 "PC817" H 5300 4234 50  0000 C CNN
F 2 "Empreintes:SOP254P960X420-4N" H 5100 3800 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 5300 4000 50  0001 L CNN
	1    5300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4100 4900 4100
Wire Wire Line
	4900 4100 4900 4200
$Comp
L power:GND #PWR0120
U 1 1 5F691D21
P 4900 4200
F 0 "#PWR0120" H 4900 3950 50  0001 C CNN
F 1 "GND" H 4905 4027 50  0000 C CNN
F 2 "" H 4900 4200 50  0001 C CNN
F 3 "" H 4900 4200 50  0001 C CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U7
U 1 1 5F691D2C
P 5300 4650
F 0 "U7" H 5300 4975 50  0000 C CNN
F 1 "PC817" H 5300 4884 50  0000 C CNN
F 2 "Empreintes:SOP254P960X420-4N" H 5100 4450 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 5300 4650 50  0001 L CNN
	1    5300 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4750 4900 4750
Wire Wire Line
	4900 4750 4900 4850
$Comp
L power:GND #PWR0121
U 1 1 5F691D38
P 4900 4850
F 0 "#PWR0121" H 4900 4600 50  0001 C CNN
F 1 "GND" H 4905 4677 50  0000 C CNN
F 2 "" H 4900 4850 50  0001 C CNN
F 3 "" H 4900 4850 50  0001 C CNN
	1    4900 4850
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U8
U 1 1 5F69F168
P 5300 5300
F 0 "U8" H 5300 5625 50  0000 C CNN
F 1 "PC817" H 5300 5534 50  0000 C CNN
F 2 "Empreintes:SOP254P960X420-4N" H 5100 5100 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 5300 5300 50  0001 L CNN
	1    5300 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5400 4900 5400
$Comp
L power:GND #PWR0122
U 1 1 5F69F173
P 4900 5500
F 0 "#PWR0122" H 4900 5250 50  0001 C CNN
F 1 "GND" H 4905 5327 50  0000 C CNN
F 2 "" H 4900 5500 50  0001 C CNN
F 3 "" H 4900 5500 50  0001 C CNN
	1    4900 5500
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U9
U 1 1 5F69F17E
P 5300 5950
F 0 "U9" H 5300 6275 50  0000 C CNN
F 1 "PC817" H 5300 6184 50  0000 C CNN
F 2 "Empreintes:SOP254P960X420-4N" H 5100 5750 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 5300 5950 50  0001 L CNN
	1    5300 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6050 4900 6050
$Comp
L power:GND #PWR0123
U 1 1 5F69F189
P 4900 6150
F 0 "#PWR0123" H 4900 5900 50  0001 C CNN
F 1 "GND" H 4905 5977 50  0000 C CNN
F 2 "" H 4900 6150 50  0001 C CNN
F 3 "" H 4900 6150 50  0001 C CNN
	1    4900 6150
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U10
U 1 1 5F69F194
P 5300 6650
F 0 "U10" H 5300 6975 50  0000 C CNN
F 1 "PC817" H 5300 6884 50  0000 C CNN
F 2 "Empreintes:SOP254P960X420-4N" H 5100 6450 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 5300 6650 50  0001 L CNN
	1    5300 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6750 4900 6750
$Comp
L power:GND #PWR0124
U 1 1 5F69F19F
P 4900 6850
F 0 "#PWR0124" H 4900 6600 50  0001 C CNN
F 1 "GND" H 4905 6677 50  0000 C CNN
F 2 "" H 4900 6850 50  0001 C CNN
F 3 "" H 4900 6850 50  0001 C CNN
	1    4900 6850
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U11
U 1 1 5F69F1AA
P 5300 7350
F 0 "U11" H 5300 7675 50  0000 C CNN
F 1 "PC817" H 5300 7584 50  0000 C CNN
F 2 "Empreintes:SOP254P960X420-4N" H 5100 7150 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 5300 7350 50  0001 L CNN
	1    5300 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 7450 4900 7450
$Comp
L power:GND #PWR0125
U 1 1 5F69F1B5
P 4900 7550
F 0 "#PWR0125" H 4900 7300 50  0001 C CNN
F 1 "GND" H 4905 7377 50  0000 C CNN
F 2 "" H 4900 7550 50  0001 C CNN
F 3 "" H 4900 7550 50  0001 C CNN
	1    4900 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1950 4250 1950
Wire Wire Line
	4250 1950 4250 2050
$Comp
L power:GND #PWR0127
U 1 1 5F6C8DF9
P 4250 2050
F 0 "#PWR0127" H 4250 1800 50  0001 C CNN
F 1 "GND" H 4255 1877 50  0000 C CNN
F 2 "" H 4250 2050 50  0001 C CNN
F 3 "" H 4250 2050 50  0001 C CNN
	1    4250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 7450 4900 7550
Wire Wire Line
	4900 6750 4900 6850
Wire Wire Line
	4900 6050 4900 6150
Wire Wire Line
	4900 5400 4900 5500
Wire Wire Line
	3250 4300 3450 4300
Wire Wire Line
	3250 4400 3450 4400
Wire Wire Line
	3450 4600 3250 4600
$Comp
L Device:R R4
U 1 1 5F75D14B
P 3950 2500
F 0 "R4" V 3743 2500 50  0000 C CNN
F 1 "1K" V 3834 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 2500 50  0001 C CNN
F 3 "~" H 3950 2500 50  0001 C CNN
	1    3950 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F75D141
P 3950 3200
F 0 "R5" V 3743 3200 50  0000 C CNN
F 1 "1K" V 3834 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 3200 50  0001 C CNN
F 3 "~" H 3950 3200 50  0001 C CNN
	1    3950 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 4700 3450 4700
Wire Wire Line
	3250 5300 3450 5300
Wire Wire Line
	3250 5000 3450 5000
Wire Wire Line
	3250 6000 3450 6000
$Comp
L Device:R R8
U 1 1 5F76A1B9
P 4600 5200
F 0 "R8" V 4393 5200 50  0000 C CNN
F 1 "1K" V 4484 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 5200 50  0001 C CNN
F 3 "~" H 4600 5200 50  0001 C CNN
	1    4600 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 5600 3450 5600
$Comp
L Device:R R6
U 1 1 5F76A1CF
P 4600 3900
F 0 "R6" V 4393 3900 50  0000 C CNN
F 1 "1K" V 4484 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 3900 50  0001 C CNN
F 3 "~" H 4600 3900 50  0001 C CNN
	1    4600 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F76A1D9
P 4600 4550
F 0 "R7" V 4393 4550 50  0000 C CNN
F 1 "1K" V 4484 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 4550 50  0001 C CNN
F 3 "~" H 4600 4550 50  0001 C CNN
	1    4600 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 5400 3450 5400
Wire Wire Line
	3250 5500 3450 5500
$Comp
L Device:R R9
U 1 1 5F7767CC
P 4600 5850
F 0 "R9" V 4393 5850 50  0000 C CNN
F 1 "1K" V 4484 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 5850 50  0001 C CNN
F 3 "~" H 4600 5850 50  0001 C CNN
	1    4600 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 6100 3450 6100
Wire Wire Line
	3450 6200 3250 6200
Wire Wire Line
	3250 6300 3450 6300
Wire Wire Line
	3250 5800 3750 5800
Wire Wire Line
	3250 5700 3750 5700
Text GLabel 3750 5700 2    50   BiDi ~ 0
SDA
Text GLabel 3750 5800 2    50   BiDi ~ 0
SCL
Wire Wire Line
	4950 1950 5250 1950
$Comp
L Connector_Generic_MountingPin:Conn_01x04_MountingPin J3
U 1 1 5F86E38B
P 5500 2850
F 0 "J3" H 5588 2764 50  0000 L CNN
F 1 "Conn_01x04_MountingPin" H 5588 2673 50  0000 L CNN
F 2 "Empreintes:JST_PH_S4B-PH-K_1x04_P2.00mm_Horizontal_ratamuse" H 5500 2850 50  0001 C CNN
F 3 "~" H 5500 2850 50  0001 C CNN
	1    5500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2500 5250 2750
Wire Wire Line
	5250 2750 5300 2750
Wire Wire Line
	4950 2500 5250 2500
Wire Wire Line
	5200 2700 5200 2850
Wire Wire Line
	5200 2850 5300 2850
Wire Wire Line
	4950 2700 5100 2700
Wire Wire Line
	5300 2950 5200 2950
Wire Wire Line
	5200 3200 4950 3200
Wire Wire Line
	4950 3400 5250 3400
Wire Wire Line
	5250 3050 5300 3050
Wire Wire Line
	5850 4250 5950 4250
Wire Wire Line
	5950 4350 5850 4350
Wire Wire Line
	5850 4550 5600 4550
Wire Wire Line
	5600 4750 5900 4750
Wire Wire Line
	5900 4450 5950 4450
$Comp
L Connector_Generic_MountingPin:Conn_01x04_MountingPin J5
U 1 1 5F88602C
P 6150 5550
F 0 "J5" H 6238 5464 50  0000 L CNN
F 1 "Conn_01x04_MountingPin" H 6238 5373 50  0000 L CNN
F 2 "Empreintes:JST_PH_S4B-PH-K_1x04_P2.00mm_Horizontal_ratamuse" H 6150 5550 50  0001 C CNN
F 3 "~" H 6150 5550 50  0001 C CNN
	1    6150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5200 5900 5450
Wire Wire Line
	5900 5450 5950 5450
Wire Wire Line
	5600 5200 5900 5200
Wire Wire Line
	5850 5400 5850 5550
Wire Wire Line
	5850 5550 5950 5550
Wire Wire Line
	5600 5400 5800 5400
Wire Wire Line
	5950 5650 5850 5650
Wire Wire Line
	5850 5850 5600 5850
Wire Wire Line
	5600 6050 5900 6050
Wire Wire Line
	5900 5750 5950 5750
$Comp
L Connector_Generic_MountingPin:Conn_01x04_MountingPin J6
U 1 1 5F894586
P 6150 6900
F 0 "J6" H 6238 6814 50  0000 L CNN
F 1 "Conn_01x04_MountingPin" H 6238 6723 50  0000 L CNN
F 2 "Empreintes:JST_PH_S4B-PH-K_1x04_P2.00mm_Horizontal_ratamuse" H 6150 6900 50  0001 C CNN
F 3 "~" H 6150 6900 50  0001 C CNN
	1    6150 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6550 5900 6800
Wire Wire Line
	5900 6800 5950 6800
Wire Wire Line
	5600 6550 5900 6550
Wire Wire Line
	5850 6750 5850 6900
Wire Wire Line
	5850 6900 5950 6900
Wire Wire Line
	5600 6750 5800 6750
Wire Wire Line
	5950 7000 5850 7000
Wire Wire Line
	5850 7250 5600 7250
Wire Wire Line
	5600 7450 5900 7450
Wire Wire Line
	5900 7100 5950 7100
Text GLabel 3450 5600 2    50   Output ~ 0
IO19
Text GLabel 3650 2500 0    50   Input ~ 0
IO17
Wire Wire Line
	4100 2500 4350 2500
Text GLabel 3650 3200 0    50   Input ~ 0
IO16
Wire Wire Line
	4100 3200 4350 3200
Text GLabel 4400 3900 0    50   Input ~ 0
IO04
Wire Wire Line
	4750 3900 5000 3900
Text GLabel 4400 4550 0    50   Input ~ 0
IO13
Wire Wire Line
	4750 4550 5000 4550
Text GLabel 4400 5200 0    50   Input ~ 0
IO27
Wire Wire Line
	4750 5200 5000 5200
Text GLabel 4400 5850 0    50   Input ~ 0
IO26
Wire Wire Line
	4750 5850 5000 5850
Wire Wire Line
	4750 6550 5000 6550
Wire Wire Line
	4750 7250 5000 7250
Text GLabel 3450 5500 2    50   Output ~ 0
IO18
Text GLabel 3450 5400 2    50   Output ~ 0
IO17
Text GLabel 3450 5300 2    50   Output ~ 0
IO16
Text GLabel 3450 4700 2    50   Output ~ 0
IO04
Text GLabel 3450 5000 2    50   Output ~ 0
IO13
Text GLabel 3450 6100 2    50   Output ~ 0
IO26
Text GLabel 3450 4600 2    50   Input ~ 0
UORXD
Text GLabel 3450 4400 2    50   Output ~ 0
UOTXD
Text GLabel 3450 4300 2    50   Output ~ 0
IO0
Text GLabel 4400 7250 0    50   Input ~ 0
IO25
Text GLabel 4400 6550 0    50   Input ~ 0
IO32
Text GLabel 3450 6000 2    50   Output ~ 0
IO25
Text GLabel 3450 6300 2    50   Output ~ 0
IO32
$Comp
L Device:R R11
U 1 1 5F7767B8
P 4600 7250
F 0 "R11" V 4393 7250 50  0000 C CNN
F 1 "1K" V 4484 7250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 7250 50  0001 C CNN
F 3 "~" H 4600 7250 50  0001 C CNN
	1    4600 7250
	0    1    1    0   
$EndComp
$Comp
L Interface_USB:CP2102N-A01-GQFN24 U12
U 1 1 5F6010DC
P 9650 1900
F 0 "U12" H 9650 2981 50  0000 C CNN
F 1 "CP2102N-A02-GQFN24" H 9650 2890 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 10100 1100 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 9700 850 50  0001 C CNN
	1    9650 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F7767AE
P 4600 6550
F 0 "R10" V 4393 6550 50  0000 C CNN
F 1 "1K" V 4484 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 6550 50  0001 C CNN
F 3 "~" H 4600 6550 50  0001 C CNN
	1    4600 6550
	0    1    1    0   
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32D U1
U 1 1 5F6443E3
P 2650 5500
F 0 "U1" H 2650 7081 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 2650 6990 50  0000 C CNN
F 2 "Empreintes:ESP32WROOM32EM113EH2800PH3Q0" H 2650 4000 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 2350 5550 50  0001 C CNN
	1    2650 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5FE3A979
P 2650 7050
F 0 "#PWR0128" H 2650 6800 50  0001 C CNN
F 1 "GND" H 2655 6877 50  0000 C CNN
F 2 "" H 2650 7050 50  0001 C CNN
F 3 "" H 2650 7050 50  0001 C CNN
	1    2650 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6900 2650 7050
Text GLabel 7800 5550 0    50   Input ~ 0
Reset_PB
Wire Wire Line
	7800 5550 8250 5550
Wire Wire Line
	8650 5550 9250 5550
Wire Wire Line
	9250 5550 9250 5750
$Comp
L power:GND #PWR0129
U 1 1 5F58972C
P 9250 5750
F 0 "#PWR0129" H 9250 5500 50  0001 C CNN
F 1 "GND" H 9255 5577 50  0000 C CNN
F 2 "" H 9250 5750 50  0001 C CNN
F 3 "" H 9250 5750 50  0001 C CNN
	1    9250 5750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F5702DE
P 8450 5550
F 0 "SW1" H 8450 5835 50  0000 C CNN
F 1 "SW_Push" H 8450 5744 50  0000 C CNN
F 2 "Empreintes:PTS636SL43SMTRLFS" H 8450 5750 50  0001 C CNN
F 3 "~" H 8450 5750 50  0001 C CNN
	1    8450 5550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID1
U 1 1 5F76D7B9
P 7550 6250
F 0 "FID1" H 7635 6296 50  0000 L CNN
F 1 "Fiducial" H 7635 6205 50  0000 L CNN
F 2 "Fiducial:Fiducial_1.5mm_Mask3mm" H 7550 6250 50  0001 C CNN
F 3 "~" H 7550 6250 50  0001 C CNN
	1    7550 6250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID2
U 1 1 5F76EC74
P 8000 6250
F 0 "FID2" H 8085 6296 50  0000 L CNN
F 1 "Fiducial" H 8085 6205 50  0000 L CNN
F 2 "Fiducial:Fiducial_1.5mm_Mask3mm" H 8000 6250 50  0001 C CNN
F 3 "~" H 8000 6250 50  0001 C CNN
	1    8000 6250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID3
U 1 1 5F76F874
P 8500 6250
F 0 "FID3" H 8585 6296 50  0000 L CNN
F 1 "Fiducial" H 8585 6205 50  0000 L CNN
F 2 "Fiducial:Fiducial_1.5mm_Mask3mm" H 8500 6250 50  0001 C CNN
F 3 "~" H 8500 6250 50  0001 C CNN
	1    8500 6250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID4
U 1 1 5F76FD9E
P 9000 6250
F 0 "FID4" H 9085 6296 50  0000 L CNN
F 1 "Fiducial" H 9085 6205 50  0000 L CNN
F 2 "Fiducial:Fiducial_1.5mm_Mask3mm" H 9000 6250 50  0001 C CNN
F 3 "~" H 9000 6250 50  0001 C CNN
	1    9000 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2950 5200 3000
Wire Wire Line
	5250 3050 5250 3300
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5F8C7734
P 4650 2300
F 0 "JP3" H 4650 2505 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4650 2414 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4650 2300 50  0001 C CNN
F 3 "~" H 4650 2300 50  0001 C CNN
	1    4650 2300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5F8C86F3
P 4650 3000
F 0 "JP4" H 4650 3205 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4650 3114 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4650 3000 50  0001 C CNN
F 3 "~" H 4650 3000 50  0001 C CNN
	1    4650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2500 3750 2500
Wire Wire Line
	3750 2500 3750 2300
Wire Wire Line
	3750 2300 4500 2300
Connection ~ 3750 2500
Wire Wire Line
	3750 2500 3800 2500
Wire Wire Line
	4800 2300 5250 2300
Wire Wire Line
	5250 2300 5250 2500
Connection ~ 5250 2500
Wire Wire Line
	3650 3200 3750 3200
Wire Wire Line
	3750 3200 3750 3000
Wire Wire Line
	3750 3000 4500 3000
Connection ~ 3750 3200
Wire Wire Line
	3750 3200 3800 3200
Wire Wire Line
	4800 3000 5200 3000
Connection ~ 5200 3000
Wire Wire Line
	5200 3000 5200 3200
$Comp
L Jumper:SolderJumper_2_Open JP6
U 1 1 5F9E625C
P 5300 4350
F 0 "JP6" H 5300 4555 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5300 4464 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5300 4350 50  0001 C CNN
F 3 "~" H 5300 4350 50  0001 C CNN
	1    5300 4350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 5FA0631B
P 5300 3700
F 0 "JP5" H 5300 3905 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5300 3814 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5300 3700 50  0001 C CNN
F 3 "~" H 5300 3700 50  0001 C CNN
	1    5300 3700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP7
U 1 1 5FA265EC
P 5300 5000
F 0 "JP7" H 5300 5205 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5300 5114 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5300 5000 50  0001 C CNN
F 3 "~" H 5300 5000 50  0001 C CNN
	1    5300 5000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP8
U 1 1 5FA36A46
P 5300 5650
F 0 "JP8" H 5300 5855 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5300 5764 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5300 5650 50  0001 C CNN
F 3 "~" H 5300 5650 50  0001 C CNN
	1    5300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4350 5850 4550
Wire Wire Line
	5900 4450 5900 4750
Wire Wire Line
	4400 3900 4450 3900
Wire Wire Line
	4450 3900 4450 3700
Wire Wire Line
	4450 3700 5150 3700
Connection ~ 4450 3900
Wire Wire Line
	4400 4550 4450 4550
Wire Wire Line
	4450 4550 4450 4350
Wire Wire Line
	4450 4350 5150 4350
Connection ~ 4450 4550
Wire Wire Line
	5450 4350 5850 4350
Connection ~ 5850 4350
Wire Wire Line
	4400 5200 4450 5200
Wire Wire Line
	4450 5200 4450 5000
Wire Wire Line
	4450 5000 5150 5000
Connection ~ 4450 5200
Wire Wire Line
	5450 5000 5900 5000
Wire Wire Line
	5900 5000 5900 5200
Connection ~ 5900 5200
Wire Wire Line
	4400 5850 4450 5850
Wire Wire Line
	4450 5850 4450 5650
Wire Wire Line
	4450 5650 5150 5650
Connection ~ 4450 5850
Wire Wire Line
	5450 5650 5850 5650
Connection ~ 5850 5650
Wire Wire Line
	5850 5650 5850 5850
Wire Wire Line
	5900 5750 5900 6050
$Comp
L Jumper:SolderJumper_2_Open JP9
U 1 1 5FC00950
P 5300 6350
F 0 "JP9" H 5300 6555 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5300 6464 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5300 6350 50  0001 C CNN
F 3 "~" H 5300 6350 50  0001 C CNN
	1    5300 6350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP10
U 1 1 5FC1351E
P 5300 7050
F 0 "JP10" H 5300 7255 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5300 7164 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5300 7050 50  0001 C CNN
F 3 "~" H 5300 7050 50  0001 C CNN
	1    5300 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 7000 5850 7050
Wire Wire Line
	5900 7100 5900 7450
Wire Wire Line
	5450 7050 5850 7050
Connection ~ 5850 7050
Wire Wire Line
	5850 7050 5850 7250
Wire Wire Line
	4400 7250 4450 7250
Wire Wire Line
	4400 6550 4450 6550
Wire Wire Line
	4450 6550 4450 6350
Wire Wire Line
	4450 6350 5150 6350
Connection ~ 4450 6550
Wire Wire Line
	5450 6350 5900 6350
Wire Wire Line
	5900 6350 5900 6550
Connection ~ 5900 6550
Wire Wire Line
	4450 7250 4450 7050
Wire Wire Line
	4450 7050 5150 7050
Connection ~ 4450 7250
$Comp
L Jumper:SolderJumper_2_Open JP11
U 1 1 5FD4E0E5
P 5400 1950
F 0 "JP11" H 5400 2155 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5400 2064 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5400 1950 50  0001 C CNN
F 3 "~" H 5400 1950 50  0001 C CNN
	1    5400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1950 5550 2050
$Comp
L power:GND #PWR0130
U 1 1 5FD63FBE
P 5550 2050
F 0 "#PWR0130" H 5550 1800 50  0001 C CNN
F 1 "GND" H 5555 1877 50  0000 C CNN
F 2 "" H 5550 2050 50  0001 C CNN
F 3 "" H 5550 2050 50  0001 C CNN
	1    5550 2050
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP12
U 1 1 5FD78871
P 5400 3300
F 0 "JP12" H 5400 3505 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5400 3414 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5400 3300 50  0001 C CNN
F 3 "~" H 5400 3300 50  0001 C CNN
	1    5400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3300 5550 3400
$Comp
L power:GND #PWR0131
U 1 1 5FD7887C
P 5550 3400
F 0 "#PWR0131" H 5550 3150 50  0001 C CNN
F 1 "GND" H 5555 3227 50  0000 C CNN
F 2 "" H 5550 3400 50  0001 C CNN
F 3 "" H 5550 3400 50  0001 C CNN
	1    5550 3400
	1    0    0    -1  
$EndComp
Connection ~ 5250 3300
Wire Wire Line
	5250 3300 5250 3400
$Comp
L Jumper:SolderJumper_2_Open JP15
U 1 1 5FD8E7CD
P 6050 4750
F 0 "JP15" H 6050 4955 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6050 4864 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6050 4750 50  0001 C CNN
F 3 "~" H 6050 4750 50  0001 C CNN
	1    6050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4750 6200 4850
$Comp
L power:GND #PWR0132
U 1 1 5FD8E7D8
P 6200 4850
F 0 "#PWR0132" H 6200 4600 50  0001 C CNN
F 1 "GND" H 6205 4677 50  0000 C CNN
F 2 "" H 6200 4850 50  0001 C CNN
F 3 "" H 6200 4850 50  0001 C CNN
	1    6200 4850
	1    0    0    -1  
$EndComp
Connection ~ 5900 4750
$Comp
L Jumper:SolderJumper_2_Open JP16
U 1 1 5FDA4506
P 6050 6050
F 0 "JP16" H 6050 6255 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6050 6164 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6050 6050 50  0001 C CNN
F 3 "~" H 6050 6050 50  0001 C CNN
	1    6050 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5FDA4510
P 6200 6150
F 0 "#PWR0133" H 6200 5900 50  0001 C CNN
F 1 "GND" H 6205 5977 50  0000 C CNN
F 2 "" H 6200 6150 50  0001 C CNN
F 3 "" H 6200 6150 50  0001 C CNN
	1    6200 6150
	1    0    0    -1  
$EndComp
Connection ~ 5900 6050
Wire Wire Line
	6200 6150 6200 6050
$Comp
L Jumper:SolderJumper_2_Open JP17
U 1 1 5FDCDC2C
P 6050 7450
F 0 "JP17" H 6050 7655 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6050 7564 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6050 7450 50  0001 C CNN
F 3 "~" H 6050 7450 50  0001 C CNN
	1    6050 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5FDCDC36
P 6200 7550
F 0 "#PWR0134" H 6200 7300 50  0001 C CNN
F 1 "GND" H 6205 7377 50  0000 C CNN
F 2 "" H 6200 7550 50  0001 C CNN
F 3 "" H 6200 7550 50  0001 C CNN
	1    6200 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 7550 6200 7450
Connection ~ 5900 7450
Wire Wire Line
	5800 6750 5800 6650
Wire Wire Line
	5800 6650 6300 6650
Connection ~ 5800 6750
Wire Wire Line
	5800 6750 5850 6750
$Comp
L Jumper:SolderJumper_3_Open JP20
U 1 1 5FE2510B
P 6450 6650
F 0 "JP20" V 6404 6718 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 6495 6718 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 6450 6650 50  0001 C CNN
F 3 "~" H 6450 6650 50  0001 C CNN
	1    6450 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 5300 6300 5300
$Comp
L Jumper:SolderJumper_3_Open JP19
U 1 1 5FEED8DC
P 6450 5300
F 0 "JP19" V 6404 5368 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 6495 5368 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 6450 5300 50  0001 C CNN
F 3 "~" H 6450 5300 50  0001 C CNN
	1    6450 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 5300 5800 5400
Connection ~ 5800 5400
Wire Wire Line
	5800 5400 5850 5400
Wire Wire Line
	6450 5500 6650 5500
Wire Wire Line
	6450 5100 6650 5100
Wire Wire Line
	6450 6450 6650 6450
Wire Wire Line
	6450 6850 6650 6850
Text GLabel 6650 6850 2    50   Input ~ 0
+3V3
Text GLabel 6650 6450 2    50   Input ~ 0
+5V
$Comp
L Jumper:SolderJumper_3_Open JP18
U 1 1 5FFB195A
P 6450 4000
F 0 "JP18" V 6404 4068 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 6495 4068 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 6450 4000 50  0001 C CNN
F 3 "~" H 6450 4000 50  0001 C CNN
	1    6450 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 3800 6650 3800
Wire Wire Line
	6450 4200 6650 4200
Text GLabel 6650 4200 2    50   Input ~ 0
+3V3
Text GLabel 6650 3800 2    50   Input ~ 0
+5V
$Comp
L Jumper:SolderJumper_3_Open JP14
U 1 1 5FFC9E65
P 5800 2600
F 0 "JP14" V 5754 2668 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 5845 2668 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 5800 2600 50  0001 C CNN
F 3 "~" H 5800 2600 50  0001 C CNN
	1    5800 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2400 6000 2400
Wire Wire Line
	5800 2800 6000 2800
Text GLabel 6000 2800 2    50   Input ~ 0
+3V3
Text GLabel 6000 2400 2    50   Input ~ 0
+5V
Wire Wire Line
	5100 2600 5100 2700
Wire Wire Line
	5100 2600 5650 2600
Connection ~ 5100 2700
Wire Wire Line
	5100 2700 5200 2700
Text GLabel 6650 5500 2    50   Input ~ 0
+3V3
Text GLabel 6650 5100 2    50   Input ~ 0
+5V
Wire Wire Line
	8450 4350 8350 4350
Text GLabel 8350 4750 3    50   Input ~ 0
CE
Text GLabel 3450 6400 2    50   Output ~ 0
PS_HOLD_IO33
Wire Wire Line
	3450 6400 3250 6400
Text GLabel 1450 5300 0    50   Input ~ 0
Sensor_VN_IO39
Wire Wire Line
	2050 4600 1950 4600
Wire Wire Line
	1950 4600 1950 5300
Wire Wire Line
	1950 5300 1450 5300
Text GLabel 3450 4500 2    50   Output ~ 0
IO2
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 5F978EBB
P 10400 5850
F 0 "J9" H 10480 5892 50  0000 L CNN
F 1 "Conn_01x03" H 10480 5801 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 10400 5850 50  0001 C CNN
F 3 "~" H 10400 5850 50  0001 C CNN
	1    10400 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 5750 10000 5750
Wire Wire Line
	10200 5850 10000 5850
Wire Wire Line
	10200 5950 10050 5950
Wire Wire Line
	10050 5950 10050 6100
$Comp
L power:GND #PWR0153
U 1 1 5FA0E1F5
P 10050 6100
F 0 "#PWR0153" H 10050 5850 50  0001 C CNN
F 1 "GND" H 10055 5927 50  0000 C CNN
F 2 "" H 10050 6100 50  0001 C CNN
F 3 "" H 10050 6100 50  0001 C CNN
	1    10050 6100
	1    0    0    -1  
$EndComp
Text GLabel 10000 5750 0    50   Input ~ 0
IO2
Text GLabel 10000 5850 0    50   Input ~ 0
+5V
Text GLabel 3450 6200 2    50   Output ~ 0
IO27
Wire Wire Line
	3250 4500 3450 4500
Connection ~ 5250 1950
Wire Wire Line
	5100 1150 5200 1150
Connection ~ 5100 1150
Wire Wire Line
	5100 1100 5650 1100
Wire Wire Line
	5100 1100 5100 1150
Text GLabel 6000 900  2    50   Input ~ 0
+5V
Text GLabel 6000 1300 2    50   Input ~ 0
+3V3
Wire Wire Line
	5800 1300 6000 1300
Wire Wire Line
	5800 900  6000 900 
$Comp
L Jumper:SolderJumper_3_Open JP13
U 1 1 5FFE1C98
P 5800 1100
F 0 "JP13" V 5754 1168 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 5845 1168 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 5800 1100 50  0001 C CNN
F 3 "~" H 5800 1100 50  0001 C CNN
	1    5800 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 1550 5200 1750
Connection ~ 5200 1550
Wire Wire Line
	4800 1550 5200 1550
Wire Wire Line
	3750 1750 3800 1750
Connection ~ 3750 1750
Wire Wire Line
	3750 1550 4500 1550
Wire Wire Line
	3750 1750 3750 1550
Wire Wire Line
	3650 1750 3750 1750
Connection ~ 5250 950 
Wire Wire Line
	5250 750  5250 950 
Wire Wire Line
	4800 750  5250 750 
Wire Wire Line
	3750 950  3800 950 
Connection ~ 3750 950 
Wire Wire Line
	3750 750  4500 750 
Wire Wire Line
	3750 950  3750 750 
Wire Wire Line
	3650 950  3750 950 
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5F8BAB20
P 4650 1550
F 0 "JP2" H 4650 1755 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4650 1664 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4650 1550 50  0001 C CNN
F 3 "~" H 4650 1550 50  0001 C CNN
	1    4650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1500 5250 1950
Wire Wire Line
	5200 1400 5200 1550
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5F7D30B6
P 4650 750
F 0 "JP1" H 4650 955 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4650 864 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4650 750 50  0001 C CNN
F 3 "~" H 4650 750 50  0001 C CNN
	1    4650 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1750 4350 1750
Text GLabel 3650 1750 0    50   Input ~ 0
IO18
Wire Wire Line
	4100 950  4350 950 
Text GLabel 3650 950  0    50   Input ~ 0
IO19
Wire Wire Line
	5250 1500 5300 1500
Wire Wire Line
	5200 1750 4950 1750
Wire Wire Line
	5300 1400 5200 1400
Wire Wire Line
	4950 1150 5100 1150
Wire Wire Line
	5200 1300 5300 1300
Wire Wire Line
	5200 1150 5200 1300
Wire Wire Line
	4950 950  5250 950 
Wire Wire Line
	5250 1200 5300 1200
Wire Wire Line
	5250 950  5250 1200
$Comp
L Connector_Generic_MountingPin:Conn_01x04_MountingPin J2
U 1 1 5F84A6C2
P 5500 1300
F 0 "J2" H 5588 1214 50  0000 L CNN
F 1 "Conn_01x04_MountingPin" H 5588 1123 50  0000 L CNN
F 2 "Empreintes:JST_PH_S4B-PH-K_1x04_P2.00mm_Horizontal_ratamuse" H 5500 1300 50  0001 C CNN
F 3 "~" H 5500 1300 50  0001 C CNN
	1    5500 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F74D494
P 3950 1750
F 0 "R3" V 3743 1750 50  0000 C CNN
F 1 "1K" V 3834 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 1750 50  0001 C CNN
F 3 "~" H 3950 1750 50  0001 C CNN
	1    3950 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F673998
P 3950 950
F 0 "R2" V 3743 950 50  0000 C CNN
F 1 "1K" V 3834 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 950 50  0001 C CNN
F 3 "~" H 3950 950 50  0001 C CNN
	1    3950 950 
	0    1    1    0   
$EndComp
$Comp
L Isolator:PC817 U3
U 1 1 5F6C8DED
P 4650 1850
F 0 "U3" H 4650 2175 50  0000 C CNN
F 1 "PC817" H 4650 2084 50  0000 C CNN
F 2 "Empreintes:SOP254P960X420-4N" H 4450 1650 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4650 1850 50  0001 L CNN
	1    4650 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5F6C8DE2
P 4250 1250
F 0 "#PWR0126" H 4250 1000 50  0001 C CNN
F 1 "GND" H 4255 1077 50  0000 C CNN
F 2 "" H 4250 1250 50  0001 C CNN
F 3 "" H 4250 1250 50  0001 C CNN
	1    4250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1150 4250 1250
Wire Wire Line
	4350 1150 4250 1150
$Comp
L Isolator:PC817 U2
U 1 1 5F6C8DD6
P 4650 1050
F 0 "U2" H 4650 1375 50  0000 C CNN
F 1 "PC817" H 4650 1284 50  0000 C CNN
F 2 "Empreintes:SOP254P960X420-4N" H 4450 850 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4650 1050 50  0001 L CNN
	1    4650 1050
	1    0    0    -1  
$EndComp
Text GLabel 2950 1400 2    50   Output ~ 0
USBD_N
Text GLabel 2950 1300 2    50   Output ~ 0
USBD_P
Text GLabel 2950 1100 2    50   Output ~ 0
VBUS
$Comp
L SP1003-01DTG:SP1003-01DTG D3
U 1 1 5FA2346D
P 2750 1750
F 0 "D3" V 3004 1878 50  0000 L CNN
F 1 "SP1003-01DTG" V 3095 1878 50  0000 L CNN
F 2 "Empreintes:SODFL1406X65N" H 3150 1900 50  0001 L BNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/tvs_diode_arrays/littelfuse_tvs_diode_array_sp1003_datasheet.pdf.pdf" H 3150 1800 50  0001 L BNN
F 4 "1 Ch 30KV 30pF TVS Diode Array SOD-723" H 3150 1700 50  0001 L BNN "Description"
F 5 "0.65" H 3150 1600 50  0001 L BNN "Height"
F 6 "LITTELFUSE" H 3150 1500 50  0001 L BNN "Manufacturer_Name"
F 7 "SP1003-01DTG" H 3150 1400 50  0001 L BNN "Manufacturer_Part_Number"
F 8 "SP1003-01DTG" H 3150 1300 50  0001 L BNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/sp1003-01dtg/littelfuse" H 3150 1200 50  0001 L BNN "Arrow Price/Stock"
F 10 "576-SP1003-01DTG" H 3150 1100 50  0001 L BNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Littelfuse/SP1003-01DTG?qs=Xb8IjHhkxj76JbYOs4IgRA%3D%3D" H 3150 1000 50  0001 L BNN "Mouser Price/Stock"
	1    2750 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 1750 2750 1400
Connection ~ 2750 1400
Wire Wire Line
	2750 1400 2950 1400
$Comp
L SP1003-01DTG:SP1003-01DTG D2
U 1 1 5FB1DFC7
P 2400 1750
F 0 "D2" V 2654 1878 50  0000 L CNN
F 1 "SP1003-01DTG" V 2745 1878 50  0000 L CNN
F 2 "Empreintes:SODFL1406X65N" H 2800 1900 50  0001 L BNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/tvs_diode_arrays/littelfuse_tvs_diode_array_sp1003_datasheet.pdf.pdf" H 2800 1800 50  0001 L BNN
F 4 "1 Ch 30KV 30pF TVS Diode Array SOD-723" H 2800 1700 50  0001 L BNN "Description"
F 5 "0.65" H 2800 1600 50  0001 L BNN "Height"
F 6 "LITTELFUSE" H 2800 1500 50  0001 L BNN "Manufacturer_Name"
F 7 "SP1003-01DTG" H 2800 1400 50  0001 L BNN "Manufacturer_Part_Number"
F 8 "SP1003-01DTG" H 2800 1300 50  0001 L BNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/sp1003-01dtg/littelfuse" H 2800 1200 50  0001 L BNN "Arrow Price/Stock"
F 10 "576-SP1003-01DTG" H 2800 1100 50  0001 L BNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Littelfuse/SP1003-01DTG?qs=Xb8IjHhkxj76JbYOs4IgRA%3D%3D" H 2800 1000 50  0001 L BNN "Mouser Price/Stock"
	1    2400 1750
	0    1    1    0   
$EndComp
$Comp
L SP1003-01DTG:SP1003-01DTG D1
U 1 1 5FB1F046
P 2050 1750
F 0 "D1" V 2304 1878 50  0000 L CNN
F 1 "SP1003-01DTG" V 2395 1878 50  0000 L CNN
F 2 "Empreintes:SODFL1406X65N" H 2450 1900 50  0001 L BNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/tvs_diode_arrays/littelfuse_tvs_diode_array_sp1003_datasheet.pdf.pdf" H 2450 1800 50  0001 L BNN
F 4 "1 Ch 30KV 30pF TVS Diode Array SOD-723" H 2450 1700 50  0001 L BNN "Description"
F 5 "0.65" H 2450 1600 50  0001 L BNN "Height"
F 6 "LITTELFUSE" H 2450 1500 50  0001 L BNN "Manufacturer_Name"
F 7 "SP1003-01DTG" H 2450 1400 50  0001 L BNN "Manufacturer_Part_Number"
F 8 "SP1003-01DTG" H 2450 1300 50  0001 L BNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/sp1003-01dtg/littelfuse" H 2450 1200 50  0001 L BNN "Arrow Price/Stock"
F 10 "576-SP1003-01DTG" H 2450 1100 50  0001 L BNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Littelfuse/SP1003-01DTG?qs=Xb8IjHhkxj76JbYOs4IgRA%3D%3D" H 2450 1000 50  0001 L BNN "Mouser Price/Stock"
	1    2050 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1750 2400 1300
Connection ~ 2400 1300
Wire Wire Line
	2400 1300 2950 1300
Wire Wire Line
	2050 1750 2050 1100
Connection ~ 2050 1100
Wire Wire Line
	2050 1100 2950 1100
Wire Wire Line
	2050 2350 2050 2600
Wire Wire Line
	2400 2350 2400 2600
Wire Wire Line
	2750 2350 2750 2600
$Comp
L power:GND #PWR0102
U 1 1 5FBB8135
P 2050 2600
F 0 "#PWR0102" H 2050 2350 50  0001 C CNN
F 1 "GND" H 2055 2427 50  0000 C CNN
F 2 "" H 2050 2600 50  0001 C CNN
F 3 "" H 2050 2600 50  0001 C CNN
	1    2050 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FBD1EC2
P 2400 2600
F 0 "#PWR0103" H 2400 2350 50  0001 C CNN
F 1 "GND" H 2405 2427 50  0000 C CNN
F 2 "" H 2400 2600 50  0001 C CNN
F 3 "" H 2400 2600 50  0001 C CNN
	1    2400 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FBD2AA2
P 2750 2600
F 0 "#PWR0104" H 2750 2350 50  0001 C CNN
F 1 "GND" H 2755 2427 50  0000 C CNN
F 2 "" H 2750 2600 50  0001 C CNN
F 3 "" H 2750 2600 50  0001 C CNN
	1    2750 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 5FC8497A
P 8450 3300
F 0 "D6" H 8443 3045 50  0000 C CNN
F 1 "LED" H 8443 3136 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 8450 3300 50  0001 C CNN
F 3 "~" H 8450 3300 50  0001 C CNN
	1    8450 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R21
U 1 1 5FC85B4F
P 8000 3300
F 0 "R21" V 7793 3300 50  0000 C CNN
F 1 "1K" V 7884 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7930 3300 50  0001 C CNN
F 3 "~" H 8000 3300 50  0001 C CNN
	1    8000 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3300 7600 3300
Wire Wire Line
	8150 3300 8300 3300
Wire Wire Line
	8600 3300 8850 3300
Text GLabel 8850 3300 2    50   Output ~ 0
RXLED
Text GLabel 7600 3300 0    50   Input ~ 0
+3V3
$Comp
L Device:LED D7
U 1 1 5FD575D1
P 8450 3650
F 0 "D7" H 8443 3395 50  0000 C CNN
F 1 "LED" H 8443 3486 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 8450 3650 50  0001 C CNN
F 3 "~" H 8450 3650 50  0001 C CNN
	1    8450 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R22
U 1 1 5FD575DB
P 8000 3650
F 0 "R22" V 7793 3650 50  0000 C CNN
F 1 "1K" V 7884 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7930 3650 50  0001 C CNN
F 3 "~" H 8000 3650 50  0001 C CNN
	1    8000 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3650 7600 3650
Wire Wire Line
	8150 3650 8300 3650
Wire Wire Line
	8600 3650 8850 3650
Text GLabel 8850 3650 2    50   Output ~ 0
TXLED
Text GLabel 7600 3650 0    50   Input ~ 0
+3V3
Text GLabel 10400 2400 2    50   Input ~ 0
RXLED
Text GLabel 10400 2500 2    50   Input ~ 0
TXLED
Wire Wire Line
	10250 2400 10400 2400
Wire Wire Line
	10250 2500 10400 2500
Connection ~ 7950 750 
Wire Wire Line
	8250 750  7950 750 
Wire Wire Line
	7950 750  7950 900 
Wire Wire Line
	7950 1200 7950 1350
$Comp
L Device:C C6
U 1 1 5F610EA9
P 7950 1050
F 0 "C6" H 8065 1096 50  0000 L CNN
F 1 "4.7µF" H 8065 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7988 900 50  0001 C CNN
F 3 "~" H 7950 1050 50  0001 C CNN
	1    7950 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F610EB3
P 8250 1050
F 0 "C7" H 8365 1096 50  0000 L CNN
F 1 "0.1µF" H 8365 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8288 900 50  0001 C CNN
F 3 "~" H 8250 1050 50  0001 C CNN
	1    8250 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F60E8C8
P 8250 1350
F 0 "#PWR0106" H 8250 1100 50  0001 C CNN
F 1 "GND" H 8255 1177 50  0000 C CNN
F 2 "" H 8250 1350 50  0001 C CNN
F 3 "" H 8250 1350 50  0001 C CNN
	1    8250 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F60DE22
P 7950 1350
F 0 "#PWR0105" H 7950 1100 50  0001 C CNN
F 1 "GND" H 7955 1177 50  0000 C CNN
F 2 "" H 7950 1350 50  0001 C CNN
F 3 "" H 7950 1350 50  0001 C CNN
	1    7950 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1200 8250 1350
Wire Wire Line
	8250 750  8250 900 
Wire Wire Line
	9050 1300 8900 1300
$Comp
L Device:R R14
U 1 1 5F606A23
P 8750 1300
F 0 "R14" V 8543 1300 50  0000 C CNN
F 1 "1K" V 8634 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8680 1300 50  0001 C CNN
F 3 "~" H 8750 1300 50  0001 C CNN
	1    8750 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 750  8500 750 
Wire Wire Line
	7000 2200 7250 2200
Wire Wire Line
	7750 1300 7750 750 
Wire Wire Line
	7750 1300 8600 1300
Connection ~ 7750 750 
Wire Wire Line
	7750 750  7950 750 
Wire Wire Line
	7300 750  7750 750 
Wire Wire Line
	8500 750  8500 1900
Wire Wire Line
	8500 1900 9050 1900
Connection ~ 8500 750 
Wire Wire Line
	8500 750  8650 750 
Wire Wire Line
	3250 6500 3450 6500
Wire Wire Line
	3250 6600 3450 6600
Text GLabel 3450 6600 2    50   Input ~ 0
IO35
Text GLabel 3450 6500 2    50   Input ~ 0
IO34
Wire Wire Line
	5750 4100 5850 4100
Connection ~ 5750 4100
Wire Wire Line
	5750 4000 6300 4000
Wire Wire Line
	5750 4000 5750 4100
Connection ~ 5900 3900
Wire Wire Line
	5900 3700 5900 3900
Wire Wire Line
	5450 3700 5900 3700
Wire Wire Line
	5600 4100 5750 4100
Wire Wire Line
	5850 4100 5850 4250
Wire Wire Line
	5600 3900 5900 3900
Wire Wire Line
	5900 4150 5950 4150
Wire Wire Line
	5900 3900 5900 4150
$Comp
L Connector_Generic_MountingPin:Conn_01x04_MountingPin J4
U 1 1 5F879673
P 6150 4250
F 0 "J4" H 6238 4164 50  0000 L CNN
F 1 "Conn_01x04_MountingPin" H 6238 4073 50  0000 L CNN
F 2 "Empreintes:JST_PH_S4B-PH-K_1x04_P2.00mm_Horizontal_ratamuse" H 6150 4250 50  0001 C CNN
F 3 "~" H 6150 4250 50  0001 C CNN
	1    6150 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Receptacle_USB2.0 J13
U 1 1 60D461EF
P 900 1700
F 0 "J13" H 1007 2567 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0 USB4105-GF-A " H 1007 2476 50  0000 C CNN
F 2 "Empreintes:TYPE-C-31-M-12" H 1050 1700 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1050 1700 50  0001 C CNN
	1    900  1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1100 2050 1100
Wire Wire Line
	1500 1600 1650 1600
Wire Wire Line
	1650 1600 1650 1700
Wire Wire Line
	1650 1700 1500 1700
Wire Wire Line
	1650 1600 1650 1400
Wire Wire Line
	1650 1400 2750 1400
Connection ~ 1650 1600
Wire Wire Line
	1500 1800 1650 1800
Wire Wire Line
	1650 1800 1650 1900
Wire Wire Line
	1650 1900 1500 1900
Wire Wire Line
	1650 1800 1850 1800
Wire Wire Line
	1850 1800 1850 1300
Wire Wire Line
	1850 1300 2400 1300
Connection ~ 1650 1800
Wire Wire Line
	1500 1300 1600 1300
Wire Wire Line
	1600 700  1850 700 
Wire Wire Line
	1600 700  1600 1300
Wire Wire Line
	1500 1400 1550 1400
Wire Wire Line
	1550 1400 1550 900 
Wire Wire Line
	1550 900  1850 900 
$Comp
L Device:R R33
U 1 1 60EABFA9
P 2000 700
F 0 "R33" V 1793 700 50  0000 C CNN
F 1 "5.1K" V 1884 700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1930 700 50  0001 C CNN
F 3 "~" H 2000 700 50  0001 C CNN
	1    2000 700 
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 60EACF42
P 2000 900
F 0 "R34" V 1793 900 50  0000 C CNN
F 1 "5.1K" V 1884 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1930 900 50  0001 C CNN
F 3 "~" H 2000 900 50  0001 C CNN
	1    2000 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 900  2350 900 
Wire Wire Line
	2350 900  2350 800 
Wire Wire Line
	2350 700  2150 700 
Wire Wire Line
	2700 800  2700 850 
Wire Wire Line
	2350 800  2700 800 
Connection ~ 2350 800 
Wire Wire Line
	2350 800  2350 700 
$Comp
L power:GND #PWR0101
U 1 1 60EE6D36
P 2700 850
F 0 "#PWR0101" H 2700 600 50  0001 C CNN
F 1 "GND" H 2705 677 50  0000 C CNN
F 2 "" H 2700 850 50  0001 C CNN
F 3 "" H 2700 850 50  0001 C CNN
	1    2700 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0163
U 1 1 60EE9A92
P 900 2750
F 0 "#PWR0163" H 900 2500 50  0001 C CNN
F 1 "GND" H 905 2577 50  0000 C CNN
F 2 "" H 900 2750 50  0001 C CNN
F 3 "" H 900 2750 50  0001 C CNN
	1    900  2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2600 900  2750
$Comp
L Device:R R26
U 1 1 60F24EBA
P 600 2800
F 0 "R26" V 393 2800 50  0000 C CNN
F 1 "1M" V 484 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 530 2800 50  0001 C CNN
F 3 "~" H 600 2800 50  0001 C CNN
	1    600  2800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0164
U 1 1 60F992D3
P 600 3000
F 0 "#PWR0164" H 600 2750 50  0001 C CNN
F 1 "GND" H 605 2827 50  0000 C CNN
F 2 "" H 600 3000 50  0001 C CNN
F 3 "" H 600 3000 50  0001 C CNN
	1    600  3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  3000 600  2950
Wire Wire Line
	600  2650 600  2600
Wire Wire Line
	10300 4250 10600 4250
$Comp
L Jumper:SolderJumper_2_Open JP21
U 1 1 611603B3
P 10300 4500
F 0 "JP21" V 10254 4568 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 10345 4568 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10300 4500 50  0001 C CNN
F 3 "~" H 10300 4500 50  0001 C CNN
	1    10300 4500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D15
U 1 1 6119BB9E
P 10300 5150
F 0 "D15" H 10293 4895 50  0000 C CNN
F 1 "LED Green" H 10293 4986 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 10300 5150 50  0001 C CNN
F 3 "~" H 10300 5150 50  0001 C CNN
	1    10300 5150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 6119C5BC
P 10300 4800
F 0 "R29" V 10093 4800 50  0000 C CNN
F 1 "10K" V 10184 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10230 4800 50  0001 C CNN
F 3 "~" H 10300 4800 50  0001 C CNN
	1    10300 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 4950 10300 5000
$Comp
L power:GND #PWR0166
U 1 1 6124F321
P 10300 5350
F 0 "#PWR0166" H 10300 5100 50  0001 C CNN
F 1 "GND" H 10305 5177 50  0000 C CNN
F 2 "" H 10300 5350 50  0001 C CNN
F 3 "" H 10300 5350 50  0001 C CNN
	1    10300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 5300 10300 5350
$Comp
L Device:R R37
U 1 1 616E1E53
P 7300 4400
F 0 "R37" V 7093 4400 50  0000 C CNN
F 1 "100K" V 7184 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7230 4400 50  0001 C CNN
F 3 "~" H 7300 4400 50  0001 C CNN
	1    7300 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 4150 7300 4150
Wire Wire Line
	7300 4650 7300 4550
Wire Wire Line
	7300 4250 7300 4150
Connection ~ 7300 4150
Wire Wire Line
	8950 4650 8950 4800
Wire Wire Line
	8450 4250 8400 4250
Wire Wire Line
	8400 4250 8400 4650
Wire Wire Line
	8400 4650 8950 4650
Connection ~ 10300 4250
Wire Wire Line
	10300 4250 10300 4350
$Sheet
S 0    8500 3050 2300
U 6011445D
F0 "TestboardV2.3a" 50
F1 "TestboardV2.3a.sch" 50
$EndSheet
$Sheet
S 0    11400 4000 2550
U 609E7AF1
F0 "TestboardV2.3b" 50
F1 "TestboardV2.3b.sch" 50
$EndSheet
Connection ~ 9600 4250
Wire Wire Line
	9600 4250 10050 4250
Wire Wire Line
	9550 4250 9600 4250
Wire Wire Line
	9600 4300 9600 4250
$Comp
L XC6220B331MR-G:XC6220B331MR-G U13
U 1 1 5F625E52
P 8450 4150
F 0 "U13" H 8450 4517 50  0000 C CNN
F 1 "XC6220B331MR" H 8450 4426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8450 4150 50  0001 C CNN
F 3 "https://www.torexsemi.com/file/xc6220/XC6220.pdf" H 9200 3150 50  0001 C CNN
	1    8450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4600 9600 4750
$Comp
L power:GND #PWR0114
U 1 1 5F63996B
P 9600 4750
F 0 "#PWR0114" H 9600 4500 50  0001 C CNN
F 1 "GND" H 9605 4577 50  0000 C CNN
F 2 "" H 9600 4750 50  0001 C CNN
F 3 "" H 9600 4750 50  0001 C CNN
	1    9600 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F639961
P 9600 4450
F 0 "C11" H 9715 4496 50  0000 L CNN
F 1 "0.1µF" H 9715 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9638 4300 50  0001 C CNN
F 3 "~" H 9600 4450 50  0001 C CNN
	1    9600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4300 10050 4250
Wire Wire Line
	10050 4600 10050 4750
$Comp
L power:GND #PWR0161
U 1 1 61BFC9C6
P 10050 4750
F 0 "#PWR0161" H 10050 4500 50  0001 C CNN
F 1 "GND" H 10055 4577 50  0000 C CNN
F 2 "" H 10050 4750 50  0001 C CNN
F 3 "" H 10050 4750 50  0001 C CNN
	1    10050 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 61BFC9D0
P 10050 4450
F 0 "C25" H 10165 4496 50  0000 L CNN
F 1 "10µF" H 10165 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10088 4300 50  0001 C CNN
F 3 "~" H 10050 4450 50  0001 C CNN
	1    10050 4450
	1    0    0    -1  
$EndComp
Connection ~ 10050 4250
Wire Wire Line
	10050 4250 10300 4250
Wire Wire Line
	8350 4350 8350 4650
Wire Wire Line
	7300 4150 7700 4150
Wire Wire Line
	7700 4150 7700 4300
Wire Wire Line
	7700 4600 7700 4750
$Comp
L Device:C C24
U 1 1 61C7827C
P 7700 4450
F 0 "C24" H 7815 4496 50  0000 L CNN
F 1 "10µF" H 7815 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7738 4300 50  0001 C CNN
F 3 "~" H 7700 4450 50  0001 C CNN
	1    7700 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 61C78286
P 7700 4750
F 0 "#PWR0162" H 7700 4500 50  0001 C CNN
F 1 "GND" H 7705 4577 50  0000 C CNN
F 2 "" H 7700 4750 50  0001 C CNN
F 3 "" H 7700 4750 50  0001 C CNN
	1    7700 4750
	1    0    0    -1  
$EndComp
Connection ~ 7700 4150
Wire Wire Line
	7700 4150 8100 4150
Connection ~ 8100 4150
Wire Wire Line
	8100 4150 8450 4150
Wire Wire Line
	7300 4650 8350 4650
Connection ~ 8350 4650
Wire Wire Line
	8350 4650 8350 4750
$EndSCHEMATC
