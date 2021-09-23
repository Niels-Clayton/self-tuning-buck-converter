EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP32-DEVKITC-32D:ESP32-DEVKITC-32D U5
U 1 1 6135B32C
P 5750 3350
F 0 "U5" H 5750 4517 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 5750 4426 50  0000 C CNN
F 2 "MODULE_ESP32-DEVKITC-32D:MODULE_ESP32-DEVKITC-32D" H 5750 3350 50  0001 L BNN
F 3 "" H 5750 3350 50  0001 L BNN
F 4 "Espressif Systems" H 5750 3350 50  0001 L BNN "MANUFACTURER"
F 5 "4" H 5750 3350 50  0001 L BNN "PARTREV"
	1    5750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2450 6800 2450
$Comp
L power:GNDD #PWR020
U 1 1 613620C9
P 6800 3100
F 0 "#PWR020" H 6800 2850 50  0001 C CNN
F 1 "GNDD" H 6804 2945 50  0000 C CNN
F 2 "" H 6800 3100 50  0001 C CNN
F 3 "" H 6800 3100 50  0001 C CNN
	1    6800 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3050 6800 3050
Wire Wire Line
	6800 3050 6800 3100
$Comp
L power:GNDD #PWR018
U 1 1 61364069
P 4700 3800
F 0 "#PWR018" H 4700 3550 50  0001 C CNN
F 1 "GNDD" H 4704 3645 50  0000 C CNN
F 2 "" H 4700 3800 50  0001 C CNN
F 3 "" H 4700 3800 50  0001 C CNN
	1    4700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3800 4700 3750
Wire Wire Line
	4700 3750 4950 3750
NoConn ~ 4950 2550
Text GLabel 4825 2750 0    50   Input ~ 0
V_supply
NoConn ~ 4950 2950
NoConn ~ 4950 3050
NoConn ~ 4950 3150
NoConn ~ 4950 3550
NoConn ~ 4950 3650
NoConn ~ 4950 3850
NoConn ~ 4950 3950
NoConn ~ 4950 4050
NoConn ~ 4950 4150
NoConn ~ 6550 4250
NoConn ~ 6550 4150
NoConn ~ 6550 4050
NoConn ~ 6550 3950
NoConn ~ 6550 3850
NoConn ~ 6550 3750
NoConn ~ 6550 3650
NoConn ~ 6550 3550
NoConn ~ 6550 3450
NoConn ~ 6550 3350
NoConn ~ 6550 3250
NoConn ~ 6550 3150
NoConn ~ 6550 2950
NoConn ~ 6550 2850
NoConn ~ 6550 2750
NoConn ~ 6550 2650
NoConn ~ 6550 2550
$Comp
L power:+12V #PWR025
U 1 1 6136E82D
P 9000 1000
F 0 "#PWR025" H 9000 850 50  0001 C CNN
F 1 "+12V" H 9015 1173 50  0000 C CNN
F 2 "" H 9000 1000 50  0001 C CNN
F 3 "" H 9000 1000 50  0001 C CNN
	1    9000 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 61370C87
P 8900 1350
F 0 "Q1" H 9104 1396 50  0000 L CNN
F 1 "NMOS" H 9104 1305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9100 1450 50  0001 C CNN
F 3 "~" H 8900 1350 50  0001 C CNN
	1    8900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1000 9000 1150
$Comp
L Device:D_Schottky D3
U 1 1 61372223
P 9000 1950
F 0 "D3" V 8954 2030 50  0000 L CNN
F 1 "D_Schottky" V 9045 2030 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P12.70mm_Horizontal" H 9000 1950 50  0001 C CNN
F 3 "~" H 9000 1950 50  0001 C CNN
	1    9000 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 613736F3
P 9000 2225
F 0 "#PWR026" H 9000 1975 50  0001 C CNN
F 1 "GND" H 9005 2052 50  0000 C CNN
F 2 "" H 9000 2225 50  0001 C CNN
F 3 "" H 9000 2225 50  0001 C CNN
	1    9000 2225
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 61375946
P 9300 1750
F 0 "L1" V 9490 1750 50  0000 C CNN
F 1 "L" V 9399 1750 50  0000 C CNN
F 2 "" H 9300 1750 50  0001 C CNN
F 3 "~" H 9300 1750 50  0001 C CNN
	1    9300 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9150 1750 9000 1750
Wire Wire Line
	9000 1750 9000 1800
Wire Wire Line
	9975 1750 9975 1800
Wire Wire Line
	9975 2100 9975 2175
$Comp
L Device:R R15
U 1 1 61379310
P 10350 1950
F 0 "R15" H 10420 1996 50  0000 L CNN
F 1 "10 20W" H 10420 1905 50  0000 L CNN
F 2 "" V 10280 1950 50  0001 C CNN
F 3 "~" H 10350 1950 50  0001 C CNN
	1    10350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9975 1750 10350 1750
Wire Wire Line
	10350 1750 10350 1800
Connection ~ 9975 1750
Wire Wire Line
	10350 2100 10350 2175
Wire Wire Line
	10350 2175 9975 2175
Connection ~ 9975 2175
Text GLabel 10450 1750 2    50   Input ~ 0
V_load
Wire Wire Line
	10450 1750 10350 1750
Connection ~ 10350 1750
$Comp
L Device:R_Small R13
U 1 1 6137AA0B
P 10050 3450
F 0 "R13" H 10109 3496 50  0000 L CNN
F 1 "56k" H 10109 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 10050 3450 50  0001 C CNN
F 3 "~" H 10050 3450 50  0001 C CNN
	1    10050 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3225 10050 3350
$Comp
L Device:R_Small R14
U 1 1 6137C4E4
P 10050 3850
F 0 "R14" H 10109 3896 50  0000 L CNN
F 1 "22k" H 10109 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 10050 3850 50  0001 C CNN
F 3 "~" H 10050 3850 50  0001 C CNN
	1    10050 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 6137CD28
P 10050 4050
F 0 "#PWR031" H 10050 3800 50  0001 C CNN
F 1 "GND" H 10055 3877 50  0000 C CNN
F 2 "" H 10050 4050 50  0001 C CNN
F 3 "" H 10050 4050 50  0001 C CNN
	1    10050 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 6137E635
P 9050 3450
F 0 "R9" H 9109 3496 50  0000 L CNN
F 1 "560k" H 9109 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9050 3450 50  0001 C CNN
F 3 "~" H 9050 3450 50  0001 C CNN
	1    9050 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3225 9050 3350
Wire Wire Line
	9050 3550 9050 3650
$Comp
L power:GND #PWR028
U 1 1 6137E64C
P 9050 4050
F 0 "#PWR028" H 9050 3800 50  0001 C CNN
F 1 "GND" H 9055 3877 50  0000 C CNN
F 2 "" H 9050 4050 50  0001 C CNN
F 3 "" H 9050 4050 50  0001 C CNN
	1    9050 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR027
U 1 1 6137FB09
P 9050 3225
F 0 "#PWR027" H 9050 3075 50  0001 C CNN
F 1 "+12V" H 9065 3398 50  0000 C CNN
F 2 "" H 9050 3225 50  0001 C CNN
F 3 "" H 9050 3225 50  0001 C CNN
	1    9050 3225
	1    0    0    -1  
$EndComp
Text GLabel 9450 3650 2    50   Input ~ 0
V_supply
Wire Wire Line
	9450 3650 9375 3650
Connection ~ 9050 3650
Wire Wire Line
	9050 3650 9050 3750
$Comp
L Device:C_Small C15
U 1 1 61384302
P 9375 3850
F 0 "C15" H 9600 3850 50  0000 R CNN
F 1 "0.1u 16V" H 9800 3925 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9375 3850 50  0001 C CNN
F 3 "~" H 9375 3850 50  0001 C CNN
	1    9375 3850
	1    0    0    1   
$EndComp
$Comp
L power:GNDD #PWR032
U 1 1 61385013
P 10375 4075
F 0 "#PWR032" H 10375 3825 50  0001 C CNN
F 1 "GNDD" H 10379 3920 50  0000 C CNN
F 2 "" H 10375 4075 50  0001 C CNN
F 3 "" H 10375 4075 50  0001 C CNN
	1    10375 4075
	1    0    0    -1  
$EndComp
Text GLabel 10450 3650 2    50   Input ~ 0
load_sense
Text GLabel 4825 2650 0    50   Input ~ 0
load_sense
Wire Wire Line
	9000 2100 9000 2175
Wire Wire Line
	9000 2175 9975 2175
Connection ~ 9000 2175
Wire Wire Line
	9000 2175 9000 2225
$Comp
L Device:R_Small R11
U 1 1 6138FA43
P 9750 1750
F 0 "R11" V 9554 1750 50  0000 C CNN
F 1 "60m" V 9645 1750 50  0000 C CNN
F 2 "" H 9750 1750 50  0001 C CNN
F 3 "~" H 9750 1750 50  0001 C CNN
	1    9750 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	9850 1750 9975 1750
Wire Wire Line
	9450 1750 9550 1750
Connection ~ 9550 1750
Wire Wire Line
	9550 1750 9650 1750
Wire Wire Line
	9975 1750 9975 1400
Text GLabel 4825 3450 0    50   Input ~ 0
PWM
Wire Wire Line
	4825 3450 4950 3450
$Comp
L Device:D_Schottky D2
U 1 1 613BB138
P 7625 875
F 0 "D2" H 7625 658 50  0000 C CNN
F 1 "D_Schottky" H 7625 749 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P12.70mm_Horizontal" H 7625 875 50  0001 C CNN
F 3 "~" H 7625 875 50  0001 C CNN
	1    7625 875 
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 613B85E8
P 8575 1350
F 0 "R7" V 8379 1350 50  0000 C CNN
F 1 "10" V 8470 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8575 1350 50  0001 C CNN
F 3 "~" H 8575 1350 50  0001 C CNN
	1    8575 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	8225 1250 8225 875 
Wire Wire Line
	8225 875  7775 875 
Wire Wire Line
	7475 875  7025 875 
Wire Wire Line
	7025 875  7025 1250
Wire Wire Line
	7025 1250 7275 1250
Connection ~ 8225 1250
Wire Wire Line
	8225 1450 8225 1550
NoConn ~ 7275 1450
$Comp
L Device:C_Small C12
U 1 1 613DFD54
P 8225 1350
F 0 "C12" H 8317 1396 50  0000 L CNN
F 1 "10u 50V" H 8300 1275 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 8225 1350 50  0001 C CNN
F 3 "~" H 8225 1350 50  0001 C CNN
F 4 "860010672009" H 8225 1350 50  0001 C CNN "Part Number"
	1    8225 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 613DE17F
P 7025 1775
F 0 "#PWR022" H 7025 1525 50  0001 C CNN
F 1 "GND" H 7030 1602 50  0000 C CNN
F 2 "" H 7025 1775 50  0001 C CNN
F 3 "" H 7025 1775 50  0001 C CNN
	1    7025 1775
	1    0    0    -1  
$EndComp
Connection ~ 7025 1250
$Comp
L IR2125:IR2125 U6
U 1 1 613ACD65
P 7625 1450
F 0 "U6" H 7625 1915 50  0000 C CNN
F 1 "IR2125" H 7625 1824 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7575 1600 50  0001 C CNN
F 3 "" H 7575 1600 50  0001 C CNN
	1    7625 1450
	1    0    0    -1  
$EndComp
Text GLabel 6750 1350 0    50   Input ~ 0
PWM
Wire Wire Line
	6750 1350 7275 1350
Wire Wire Line
	6800 2450 6800 3050
Connection ~ 6800 3050
Wire Wire Line
	8675 1350 8700 1350
Wire Wire Line
	9000 1550 9000 1750
Connection ~ 9000 1750
$Comp
L Device:C_Small C11
U 1 1 613E072A
P 7025 1350
F 0 "C11" H 6925 1425 50  0000 R CNN
F 1 "10u 50V" H 6975 1500 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 7025 1350 50  0001 C CNN
F 3 "~" H 7025 1350 50  0001 C CNN
F 4 "860010672009" H 7025 1350 50  0001 C CNN "Part Number"
	1    7025 1350
	1    0    0    1   
$EndComp
Wire Wire Line
	7025 1450 7025 1550
Connection ~ 7025 1550
Wire Wire Line
	7275 1550 7025 1550
Wire Wire Line
	7025 1550 7025 1775
Wire Wire Line
	7925 1550 8025 1550
Wire Wire Line
	7925 1450 8025 1450
Wire Wire Line
	8025 1450 8025 1550
Connection ~ 8025 1550
Wire Wire Line
	8025 1550 8225 1550
Wire Wire Line
	7925 1250 8225 1250
$Comp
L power:+12V #PWR021
U 1 1 614D1067
P 7025 825
F 0 "#PWR021" H 7025 675 50  0001 C CNN
F 1 "+12V" H 7040 998 50  0000 C CNN
F 2 "" H 7025 825 50  0001 C CNN
F 3 "" H 7025 825 50  0001 C CNN
	1    7025 825 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7025 825  7025 875 
Connection ~ 7025 875 
Wire Wire Line
	7925 1350 8475 1350
$Comp
L Device:CP C18
U 1 1 614EA6E8
P 9975 1950
F 0 "C18" H 9725 1950 50  0000 L CNN
F 1 "470u 50V" H 9575 1850 50  0000 L CNN
F 2 "" H 10013 1800 50  0001 C CNN
F 3 "~" H 9975 1950 50  0001 C CNN
	1    9975 1950
	1    0    0    -1  
$EndComp
$Comp
L LT1999-50:LT1999MPMS8-50-PBF U4
U 1 1 61526A78
P 2050 5300
F 0 "U4" H 2050 5775 60  0000 C CNN
F 1 "LT1999-50" H 2050 5675 60  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2675 5575 60  0001 C CNN
F 3 "" H 2050 5300 60  0000 C CNN
	1    2050 5300
	1    0    0    -1  
$EndComp
NoConn ~ 2500 5150
Wire Wire Line
	2500 5450 2550 5450
Wire Wire Line
	2500 5350 2550 5350
Wire Wire Line
	2550 5350 2550 5450
Connection ~ 2550 5450
Wire Wire Line
	2500 5250 2550 5250
Text GLabel 2550 5250 2    50   Input ~ 0
Sense_out
$Comp
L power:+5V #PWR07
U 1 1 6153D27E
P 1500 4950
F 0 "#PWR07" H 1500 4800 50  0001 C CNN
F 1 "+5V" H 1515 5123 50  0000 C CNN
F 2 "" H 1500 4950 50  0001 C CNN
F 3 "" H 1500 4950 50  0001 C CNN
	1    1500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5150 1600 5150
Wire Wire Line
	1500 5450 1600 5450
Wire Wire Line
	1500 4950 1500 5150
Connection ~ 1500 5150
Wire Wire Line
	1500 5150 1500 5450
$Comp
L power:GNDD #PWR08
U 1 1 6152F858
P 1500 5825
F 0 "#PWR08" H 1500 5575 50  0001 C CNN
F 1 "GNDD" H 1504 5670 50  0000 C CNN
F 2 "" H 1500 5825 50  0001 C CNN
F 3 "" H 1500 5825 50  0001 C CNN
	1    1500 5825
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5250 1200 5250
Wire Wire Line
	1600 5350 1200 5350
Text Label 1200 5250 0    50   ~ 0
sen_p
Text Label 1200 5350 0    50   ~ 0
sen_n
Wire Wire Line
	9975 1400 10200 1400
Text Label 10200 1400 2    50   ~ 0
sen_n
Wire Wire Line
	9550 1750 9550 1400
Text Label 9775 1400 2    50   ~ 0
sen_p
Wire Wire Line
	9550 1400 9775 1400
$Comp
L Device:C_Small C3
U 1 1 615DA83F
P 975 1575
F 0 "C3" H 825 1650 50  0000 L CNN
F 1 "100u 50V" H 575 1500 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 975 1575 50  0001 C CNN
F 3 "~" H 975 1575 50  0001 C CNN
F 4 "860010675020" H 975 1575 50  0001 C CNN "Part Number"
	1    975  1575
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR05
U 1 1 615DA84D
P 975 1300
F 0 "#PWR05" H 975 1150 50  0001 C CNN
F 1 "+12V" H 990 1473 50  0000 C CNN
F 2 "" H 975 1300 50  0001 C CNN
F 3 "" H 975 1300 50  0001 C CNN
	1    975  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	975  1300 975  1475
$Comp
L power:GND #PWR06
U 1 1 615E8453
P 975 1925
F 0 "#PWR06" H 975 1675 50  0001 C CNN
F 1 "GND" H 975 1750 50  0000 C CNN
F 2 "" H 975 1925 50  0001 C CNN
F 3 "" H 975 1925 50  0001 C CNN
	1    975  1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	975  1675 975  1925
$Comp
L Device:Opamp_Dual_Generic U1
U 1 1 61640CC8
P 3425 7050
F 0 "U1" H 3425 6683 50  0000 C CNN
F 1 "LM7322" H 3425 6774 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3425 7050 50  0001 C CNN
F 3 "~" H 3425 7050 50  0001 C CNN
	1    3425 7050
	1    0    0    1   
$EndComp
$Comp
L Device:Opamp_Dual_Generic U1
U 2 1 616417B3
P 5175 6950
F 0 "U1" H 5175 6583 50  0000 C CNN
F 1 "LM7322" H 5175 6674 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5175 6950 50  0001 C CNN
F 3 "~" H 5175 6950 50  0001 C CNN
	2    5175 6950
	1    0    0    1   
$EndComp
$Comp
L Device:Opamp_Dual_Generic U1
U 3 1 61642627
P 1350 6825
F 0 "U1" V 1445 6825 50  0000 C CNN
F 1 "LM7322" V 1354 6825 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1350 6825 50  0001 C CNN
F 3 "~" H 1350 6825 50  0001 C CNN
	3    1350 6825
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR09
U 1 1 616526D5
P 1700 7250
F 0 "#PWR09" H 1700 7000 50  0001 C CNN
F 1 "GNDD" H 1704 7095 50  0000 C CNN
F 2 "" H 1700 7250 50  0001 C CNN
F 3 "" H 1700 7250 50  0001 C CNN
	1    1700 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR02
U 1 1 61660037
P 975 7250
F 0 "#PWR02" H 975 7000 50  0001 C CNN
F 1 "GNDD" H 979 7095 50  0000 C CNN
F 2 "" H 975 7250 50  0001 C CNN
F 3 "" H 975 7250 50  0001 C CNN
	1    975  7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 61661717
P 975 7100
F 0 "C1" H 1150 7100 50  0000 R CNN
F 1 "0.1u 16V" H 1400 7200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 975 7100 50  0001 C CNN
F 3 "~" H 975 7100 50  0001 C CNN
	1    975  7100
	1    0    0    1   
$EndComp
Wire Wire Line
	975  7200 975  7250
Wire Wire Line
	1050 6925 975  6925
Wire Wire Line
	975  6925 975  7000
Wire Wire Line
	975  6725 975  6925
Connection ~ 975  6925
Wire Wire Line
	1650 6925 1700 6925
Wire Wire Line
	1700 6925 1700 7250
Text GLabel 10050 3225 1    50   Input ~ 0
V_load
$Comp
L Diode:1N4148W D1
U 1 1 616A906E
P 3925 7050
F 0 "D1" H 3925 6833 50  0000 C CNN
F 1 "1N4148W" H 3925 6924 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3925 6875 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 3925 7050 50  0001 C CNN
	1    3925 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3725 7050 3775 7050
Wire Wire Line
	4075 7050 4150 7050
Wire Wire Line
	4150 7050 4150 6575
Wire Wire Line
	4150 6575 3050 6575
Wire Wire Line
	3050 6575 3050 6950
Wire Wire Line
	3050 6950 3125 6950
Connection ~ 4150 7050
$Comp
L Device:R_Small R4
U 1 1 616D94E8
P 4325 7050
F 0 "R4" V 4129 7050 50  0000 C CNN
F 1 "33" V 4220 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4325 7050 50  0001 C CNN
F 3 "~" H 4325 7050 50  0001 C CNN
	1    4325 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 7050 4225 7050
$Comp
L Device:C_Small C9
U 1 1 616E1E84
P 4500 7250
F 0 "C9" H 4400 7325 50  0000 R CNN
F 1 "10n 16V" H 4450 7400 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4500 7250 50  0001 C CNN
F 3 "~" H 4500 7250 50  0001 C CNN
	1    4500 7250
	1    0    0    1   
$EndComp
Wire Wire Line
	4425 7050 4500 7050
Wire Wire Line
	4500 7050 4500 7150
$Comp
L power:GNDD #PWR017
U 1 1 616EBE0D
P 4650 7550
F 0 "#PWR017" H 4650 7300 50  0001 C CNN
F 1 "GNDD" H 4654 7395 50  0000 C CNN
F 2 "" H 4650 7550 50  0001 C CNN
F 3 "" H 4650 7550 50  0001 C CNN
	1    4650 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 616F0891
P 4800 7250
F 0 "R5" H 4700 7325 50  0000 C CNN
F 1 "1M" H 4700 7225 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4800 7250 50  0001 C CNN
F 3 "~" H 4800 7250 50  0001 C CNN
	1    4800 7250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 7050 4800 7150
Wire Wire Line
	4500 7350 4500 7450
Wire Wire Line
	4500 7450 4650 7450
Wire Wire Line
	4800 7450 4800 7350
Wire Wire Line
	4650 7550 4650 7450
Connection ~ 4650 7450
Wire Wire Line
	4650 7450 4800 7450
Wire Wire Line
	4800 6450 4800 6850
Wire Wire Line
	4800 6850 4875 6850
Connection ~ 4500 7050
Wire Wire Line
	4500 7050 4800 7050
Wire Wire Line
	4800 7050 4875 7050
Connection ~ 4800 7050
Text GLabel 2375 7150 0    50   Input ~ 0
Sense_out
Text GLabel 5650 6950 2    50   Input ~ 0
Pk_voltage
Text Notes 3050 6400 0    50   ~ 0
Ripple peak voltage detector.\nOutputs the ripple peak voltage
Text Notes 1250 4650 0    50   ~ 0
Current shunt voltage amplifier\nVoltage Gain = 50\nShunt Resistance 60mOhms
Text Notes 800  875  0    50   ~ 0
Supply voltage reservoir and 5V LDO
$Comp
L Device:C_Small C4
U 1 1 614BE6E3
P 1500 5600
F 0 "C4" H 1400 5600 50  0000 R CNN
F 1 "0.1u 16V" H 1425 5700 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1500 5600 50  0001 C CNN
F 3 "~" H 1500 5600 50  0001 C CNN
	1    1500 5600
	1    0    0    1   
$EndComp
Wire Wire Line
	1500 5500 1500 5450
Connection ~ 1500 5450
Wire Wire Line
	1500 5700 1500 5750
Wire Wire Line
	2550 5450 2550 5750
Wire Wire Line
	1500 5825 1500 5750
Connection ~ 1500 5750
Wire Wire Line
	1500 5750 2550 5750
Wire Wire Line
	9375 4075 9375 3950
Wire Wire Line
	9375 3750 9375 3650
Connection ~ 9375 3650
Wire Wire Line
	9375 3650 9050 3650
$Comp
L Device:R_Small R10
U 1 1 6137E641
P 9050 3850
F 0 "R10" H 9109 3896 50  0000 L CNN
F 1 "120k" H 9109 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9050 3850 50  0001 C CNN
F 3 "~" H 9050 3850 50  0001 C CNN
	1    9050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3650 10375 3650
$Comp
L Device:C_Small C19
U 1 1 615661DB
P 10375 3850
F 0 "C19" H 10600 3850 50  0000 R CNN
F 1 "0.1u 16V" H 10800 3925 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 10375 3850 50  0001 C CNN
F 3 "~" H 10375 3850 50  0001 C CNN
	1    10375 3850
	1    0    0    1   
$EndComp
Wire Wire Line
	10375 3750 10375 3650
Wire Wire Line
	10050 3550 10050 3650
Wire Wire Line
	10375 3650 10050 3650
Connection ~ 10375 3650
Connection ~ 10050 3650
Wire Wire Line
	10050 3650 10050 3750
Wire Wire Line
	4825 2750 4950 2750
Wire Wire Line
	9050 3950 9050 4050
Wire Wire Line
	4825 2650 4950 2650
$Comp
L power:GNDD #PWR029
U 1 1 615943DC
P 9375 4075
F 0 "#PWR029" H 9375 3825 50  0001 C CNN
F 1 "GNDD" H 9379 3920 50  0000 C CNN
F 2 "" H 9375 4075 50  0001 C CNN
F 3 "" H 9375 4075 50  0001 C CNN
	1    9375 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3950 10050 4050
Wire Wire Line
	10375 3950 10375 4075
$Comp
L Device:C_Small C7
U 1 1 614EAD80
P 2550 7150
F 0 "C7" V 2600 7100 50  0000 R CNN
F 1 "100u 16V" V 2675 7350 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2550 7150 50  0001 C CNN
F 3 "~" H 2550 7150 50  0001 C CNN
F 4 "860020374012" V 2550 7150 50  0001 C CNN "Part Number"
	1    2550 7150
	0    -1   1    0   
$EndComp
Wire Wire Line
	2375 7150 2450 7150
$Comp
L Device:R_Small R1
U 1 1 614FDB3E
P 2100 2950
F 0 "R1" H 1950 3025 50  0000 L CNN
F 1 "100k" H 1875 2925 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 2100 2950 50  0001 C CNN
F 3 "~" H 2100 2950 50  0001 C CNN
	1    2100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2775 2100 2850
$Comp
L power:+12V #PWR01
U 1 1 614CFEEF
P 975 6725
F 0 "#PWR01" H 975 6575 50  0001 C CNN
F 1 "+12V" H 990 6898 50  0000 C CNN
F 2 "" H 975 6725 50  0001 C CNN
F 3 "" H 975 6725 50  0001 C CNN
	1    975  6725
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR013
U 1 1 614D084A
P 2100 2775
F 0 "#PWR013" H 2100 2625 50  0001 C CNN
F 1 "+12V" H 2115 2948 50  0000 C CNN
F 2 "" H 2100 2775 50  0001 C CNN
F 3 "" H 2100 2775 50  0001 C CNN
	1    2100 2775
	1    0    0    -1  
$EndComp
$Comp
L MAX11644:MAX11644 U7
U 1 1 61537D6B
P 9075 5725
F 0 "U7" H 9075 6140 50  0000 C CNN
F 1 "MAX11644" H 9075 6049 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 8750 6100 50  0001 C CNN
F 3 "" H 8750 6100 50  0001 C CNN
	1    9075 5725
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 6153CA4F
P 9900 5325
F 0 "R12" V 9704 5325 50  0000 C CNN
F 1 "5" V 9795 5325 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9900 5325 50  0001 C CNN
F 3 "~" H 9900 5325 50  0001 C CNN
	1    9900 5325
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C16
U 1 1 61542A51
P 9600 5575
F 0 "C16" H 9675 5575 50  0000 L CNN
F 1 "0.1u 16V" H 9475 5750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9600 5575 50  0001 C CNN
F 3 "~" H 9600 5575 50  0001 C CNN
	1    9600 5575
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 6154A090
P 9900 5575
F 0 "C17" H 9975 5575 50  0000 L CNN
F 1 "4.7u 16V" H 9775 5425 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9900 5575 50  0001 C CNN
F 3 "~" H 9900 5575 50  0001 C CNN
	1    9900 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5475 9900 5475
Wire Wire Line
	9600 5675 9900 5675
Connection ~ 9600 5675
Wire Wire Line
	9400 5575 9500 5575
Wire Wire Line
	9500 5575 9500 5475
Wire Wire Line
	9500 5475 9600 5475
Connection ~ 9600 5475
Wire Wire Line
	9900 5425 9900 5475
Connection ~ 9900 5475
$Comp
L power:+5V #PWR030
U 1 1 615BB653
P 9900 5200
F 0 "#PWR030" H 9900 5050 50  0001 C CNN
F 1 "+5V" H 9915 5373 50  0000 C CNN
F 2 "" H 9900 5200 50  0001 C CNN
F 3 "" H 9900 5200 50  0001 C CNN
	1    9900 5200
	1    0    0    -1  
$EndComp
Text GLabel 9500 5775 2    50   Input ~ 0
SDA
Text GLabel 9500 5875 2    50   Input ~ 0
SCL
Wire Wire Line
	9400 5675 9600 5675
Wire Wire Line
	9900 5200 9900 5225
Text GLabel 4825 3250 0    50   Input ~ 0
SDA
Text GLabel 4825 3350 0    50   Input ~ 0
SCL
Wire Wire Line
	4825 3250 4950 3250
Wire Wire Line
	4825 3350 4950 3350
Wire Wire Line
	9400 5775 9500 5775
Wire Wire Line
	9400 5875 9500 5875
NoConn ~ 4950 2450
Text GLabel 8625 5575 0    50   Input ~ 0
Pk_voltage
Wire Wire Line
	8625 5575 8750 5575
$Comp
L Device:C_Small C14
U 1 1 616AE0ED
P 8450 6000
F 0 "C14" H 8275 6000 50  0000 L CNN
F 1 "0.1u 16V" H 8075 5925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8450 6000 50  0001 C CNN
F 3 "~" H 8450 6000 50  0001 C CNN
	1    8450 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 616B1590
P 8600 5875
F 0 "R8" V 8525 5875 50  0000 C CNN
F 1 "2k" V 8675 5875 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8600 5875 50  0001 C CNN
F 3 "~" H 8600 5875 50  0001 C CNN
F 4 "RR0816P-163-D" V 8600 5875 50  0001 C CNN "Part Number"
	1    8600 5875
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 5875 8750 5875
Wire Wire Line
	8450 6100 8450 6125
$Comp
L power:GNDD #PWR024
U 1 1 616C8830
P 8450 6125
F 0 "#PWR024" H 8450 5875 50  0001 C CNN
F 1 "GNDD" H 8454 5970 50  0000 C CNN
F 2 "" H 8450 6125 50  0001 C CNN
F 3 "" H 8450 6125 50  0001 C CNN
	1    8450 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5875 8450 5900
Wire Wire Line
	8500 5875 8450 5875
Text GLabel 8625 5675 0    50   Input ~ 0
V_ref
Wire Wire Line
	8625 5675 8750 5675
Wire Wire Line
	2100 3350 2100 3400
$Comp
L power:GNDD #PWR014
U 1 1 614DC645
P 2100 3400
F 0 "#PWR014" H 2100 3150 50  0001 C CNN
F 1 "GNDD" H 2104 3245 50  0000 C CNN
F 2 "" H 2100 3400 50  0001 C CNN
F 3 "" H 2100 3400 50  0001 C CNN
	1    2100 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 614D2EB3
P 2100 3250
F 0 "R2" H 1950 3325 50  0000 L CNN
F 1 "100k" H 1875 3225 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 2100 3250 50  0001 C CNN
F 3 "~" H 2100 3250 50  0001 C CNN
	1    2100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 7150 2850 7150
Wire Wire Line
	2100 3050 2100 3100
$Comp
L power:+12V #PWR03
U 1 1 617C8E66
P 900 2750
F 0 "#PWR03" H 900 2600 50  0001 C CNN
F 1 "+12V" H 915 2923 50  0000 C CNN
F 2 "" H 900 2750 50  0001 C CNN
F 3 "" H 900 2750 50  0001 C CNN
	1    900  2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1625 2950 1625 3400
Wire Wire Line
	1575 2950 1625 2950
Connection ~ 900  2950
Wire Wire Line
	900  2750 900  2950
Wire Wire Line
	900  2950 900  3050
Wire Wire Line
	975  2950 900  2950
Wire Wire Line
	900  3250 900  3400
$Comp
L Device:C_Small C2
U 1 1 617C8E55
P 900 3150
F 0 "C2" H 1075 3150 50  0000 R CNN
F 1 "0.1u 16V" H 1325 3250 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 900 3150 50  0001 C CNN
F 3 "~" H 900 3150 50  0001 C CNN
	1    900  3150
	1    0    0    1   
$EndComp
$Comp
L power:GNDD #PWR04
U 1 1 617C8E4B
P 900 3400
F 0 "#PWR04" H 900 3150 50  0001 C CNN
F 1 "GNDD" H 904 3245 50  0000 C CNN
F 2 "" H 900 3400 50  0001 C CNN
F 3 "" H 900 3400 50  0001 C CNN
	1    900  3400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR011
U 1 1 617C8E41
P 1625 3400
F 0 "#PWR011" H 1625 3150 50  0001 C CNN
F 1 "GNDD" H 1629 3245 50  0000 C CNN
F 2 "" H 1625 3400 50  0001 C CNN
F 3 "" H 1625 3400 50  0001 C CNN
	1    1625 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U2
U 3 1 617C8E37
P 1275 2850
F 0 "U2" V 1370 2850 50  0000 C CNN
F 1 "LM7322" V 1279 2850 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1275 2850 50  0001 C CNN
F 3 "~" H 1275 2850 50  0001 C CNN
	3    1275 2850
	0    -1   -1   0   
$EndComp
Connection ~ 2450 1500
Wire Wire Line
	2450 1300 2450 1500
$Comp
L power:+5V #PWR015
U 1 1 615B65BD
P 2450 1300
F 0 "#PWR015" H 2450 1150 50  0001 C CNN
F 1 "+5V" H 2465 1473 50  0000 C CNN
F 2 "" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0001 C CNN
	1    2450 1300
	1    0    0    -1  
$EndComp
Connection ~ 1550 1500
Wire Wire Line
	1550 1300 1550 1500
$Comp
L power:+12V #PWR010
U 1 1 615B366B
P 1550 1300
F 0 "#PWR010" H 1550 1150 50  0001 C CNN
F 1 "+12V" H 1565 1473 50  0000 C CNN
F 2 "" H 1550 1300 50  0001 C CNN
F 3 "" H 1550 1300 50  0001 C CNN
	1    1550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1900 2000 1950
$Comp
L power:GNDD #PWR012
U 1 1 615A9FCE
P 2000 1950
F 0 "#PWR012" H 2000 1700 50  0001 C CNN
F 1 "GNDD" H 2004 1795 50  0000 C CNN
F 2 "" H 2000 1950 50  0001 C CNN
F 3 "" H 2000 1950 50  0001 C CNN
	1    2000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1900 2450 1900
Connection ~ 2000 1900
Wire Wire Line
	2000 1800 2000 1900
Wire Wire Line
	2450 1900 2450 1800
Wire Wire Line
	1550 1900 2000 1900
Wire Wire Line
	1550 1800 1550 1900
Wire Wire Line
	2450 1500 2450 1600
Wire Wire Line
	2325 1500 2450 1500
Wire Wire Line
	1550 1500 1675 1500
Wire Wire Line
	1550 1600 1550 1500
$Comp
L Device:C_Small C5
U 1 1 61592803
P 1550 1700
F 0 "C5" H 1400 1775 50  0000 L CNN
F 1 "100n 16V" H 1100 1625 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1550 1700 50  0001 C CNN
F 3 "~" H 1550 1700 50  0001 C CNN
	1    1550 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 61590DD3
P 2450 1700
F 0 "C6" H 2300 1775 50  0000 L CNN
F 1 "10u 16V" H 2100 1625 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2450 1700 50  0001 C CNN
F 3 "~" H 2450 1700 50  0001 C CNN
	1    2450 1700
	1    0    0    -1  
$EndComp
Connection ~ 5550 6950
Wire Wire Line
	5550 6950 5650 6950
Wire Wire Line
	5475 6950 5550 6950
Text Notes 4525 5525 0    50   ~ 0
First order passive low pass filter\nOutputs the average ripple voltage\n10Hz cutoff frequency
Text GLabel 5650 5725 2    50   Input ~ 0
Avg_voltage
Connection ~ 5450 5725
Wire Wire Line
	5450 5725 5650 5725
Wire Wire Line
	5450 5975 5450 6025
$Comp
L power:GNDD #PWR019
U 1 1 617B133A
P 5450 6025
F 0 "#PWR019" H 5450 5775 50  0001 C CNN
F 1 "GNDD" H 5454 5870 50  0000 C CNN
F 2 "" H 5450 6025 50  0001 C CNN
F 3 "" H 5450 6025 50  0001 C CNN
	1    5450 6025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5725 5450 5775
Wire Wire Line
	5300 5725 5450 5725
Wire Wire Line
	4950 5725 5100 5725
$Comp
L Device:C_Small C10
U 1 1 617A0393
P 5450 5875
F 0 "C10" H 5675 5875 50  0000 R CNN
F 1 "1u 16V" H 5800 5975 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5450 5875 50  0001 C CNN
F 3 "~" H 5450 5875 50  0001 C CNN
	1    5450 5875
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 6179FB42
P 5200 5725
F 0 "R6" V 5125 5725 50  0000 C CNN
F 1 "16k" V 5300 5725 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 5200 5725 50  0001 C CNN
F 3 "~" H 5200 5725 50  0001 C CNN
F 4 "RR0816P-163-D" V 5200 5725 50  0001 C CNN "Part Number"
	1    5200 5725
	0    1    1    0   
$EndComp
Text GLabel 4950 5725 0    50   Input ~ 0
Sense_out
Wire Wire Line
	5550 6450 4800 6450
Wire Wire Line
	5550 6950 5550 6450
$Comp
L Device:Opamp_Dual_Generic U2
U 1 1 618BC31F
P 2750 3000
F 0 "U2" H 2750 2633 50  0000 C CNN
F 1 "LM7322" H 2750 2724 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2750 3000 50  0001 C CNN
F 3 "~" H 2750 3000 50  0001 C CNN
	1    2750 3000
	1    0    0    1   
$EndComp
Wire Wire Line
	2450 2900 2350 2900
Wire Wire Line
	2350 2900 2350 2550
Wire Wire Line
	2350 2550 3125 2550
Wire Wire Line
	3125 2550 3125 3000
Wire Wire Line
	3125 3000 3050 3000
Wire Wire Line
	2450 3100 2100 3100
Connection ~ 2100 3100
Wire Wire Line
	2100 3100 2100 3150
Wire Wire Line
	3125 3000 3425 3000
Connection ~ 3125 3000
Text GLabel 3425 3000 2    50   Input ~ 0
V_ref
$Comp
L Device:C_Small C8
U 1 1 61934821
P 3125 3200
F 0 "C8" H 3300 3200 50  0000 R CNN
F 1 "0.1u 16V" H 3550 3300 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3125 3200 50  0001 C CNN
F 3 "~" H 3125 3200 50  0001 C CNN
	1    3125 3200
	1    0    0    1   
$EndComp
$Comp
L power:GNDD #PWR016
U 1 1 6193F07B
P 3125 3400
F 0 "#PWR016" H 3125 3150 50  0001 C CNN
F 1 "GNDD" H 3129 3245 50  0000 C CNN
F 2 "" H 3125 3400 50  0001 C CNN
F 3 "" H 3125 3400 50  0001 C CNN
	1    3125 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 3000 3125 3100
Wire Wire Line
	3125 3300 3125 3400
$Comp
L Device:R_Small R3
U 1 1 6195B525
P 2850 6925
F 0 "R3" H 2650 7000 50  0000 L CNN
F 1 "10k" H 2650 6900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 2850 6925 50  0001 C CNN
F 3 "~" H 2850 6925 50  0001 C CNN
	1    2850 6925
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7025 2850 7150
Connection ~ 2850 7150
Wire Wire Line
	2850 7150 3125 7150
Text GLabel 2850 6725 1    50   Input ~ 0
V_ref
Wire Wire Line
	2850 6725 2850 6825
Text GLabel 4825 2850 0    50   Input ~ 0
Avg_voltage
Wire Wire Line
	4825 2850 4950 2850
Text GLabel 8450 3425 1    50   Input ~ 0
Avg_voltage
$Comp
L power:GNDD #PWR023
U 1 1 61B769A3
P 8450 4075
F 0 "#PWR023" H 8450 3825 50  0001 C CNN
F 1 "GNDD" H 8454 3920 50  0000 C CNN
F 2 "" H 8450 4075 50  0001 C CNN
F 3 "" H 8450 4075 50  0001 C CNN
	1    8450 4075
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 61B76D37
P 8450 3750
F 0 "C13" H 8675 3750 50  0000 R CNN
F 1 "0.1u 16V" H 8875 3825 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8450 3750 50  0001 C CNN
F 3 "~" H 8450 3750 50  0001 C CNN
	1    8450 3750
	1    0    0    1   
$EndComp
Wire Wire Line
	8450 3850 8450 4075
Wire Wire Line
	8450 3425 8450 3650
$Comp
L LD1117V50:LD1117V50 U3
U 1 1 61501185
P 2000 1525
F 0 "U3" H 2000 1812 60  0000 C CNN
F 1 "LD1117V50" H 2000 1706 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2000 1700 60  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/99/3b/7d/91/91/51/4b/be/CD00000544.pdf/files/CD00000544.pdf/jcr:content/translations/en.CD00000544.pdf" H 1625 1600 60  0001 C CNN
	1    2000 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4225 4700 4250
Wire Wire Line
	4700 4250 4950 4250
$Comp
L power:+5V #PWR0101
U 1 1 6155D00D
P 4700 4225
F 0 "#PWR0101" H 4700 4075 50  0001 C CNN
F 1 "+5V" H 4715 4398 50  0000 C CNN
F 2 "" H 4700 4225 50  0001 C CNN
F 3 "" H 4700 4225 50  0001 C CNN
	1    4700 4225
	1    0    0    -1  
$EndComp
$EndSCHEMATC
