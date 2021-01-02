EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "CloudSmoker - Wifi enabled BBQ Temperature Monitor"
Date "2017-09-14"
Rev "1"
Comp "Carl Greenstreet"
Comment1 ""
Comment2 "Manages multiple sensors through multiplex (MUX) using 4066 Quad bilateral switch"
Comment3 "Includes voltage scaling (OpAmp Level Shifter) for ESP8266 0.2-1.25V ADC"
Comment4 "Thermister Temp Probes"
$EndDescr
$Comp
L CloudSmoker-rescue:4066 U3
U 1 1 59BB773F
P 3150 -700
F 0 "U3" H 3350 -849 50  0000 C CNN
F 1 "4066" H 3350 -550 50  0000 C CNN
F 2 "" H 3150 -700 60  0001 C CNN
F 3 "" H 3150 -700 60  0001 C CNN
	1    3150 -700
	1    0    0    -1  
$EndComp
$Comp
L CloudSmoker-rescue:4066 U3
U 2 1 59BB778B
P 4350 -700
F 0 "U3" H 4550 -849 50  0000 C CNN
F 1 "4066" H 4550 -550 50  0000 C CNN
F 2 "" H 4350 -700 60  0001 C CNN
F 3 "" H 4350 -700 60  0001 C CNN
	2    4350 -700
	1    0    0    -1  
$EndComp
$Comp
L CloudSmoker-rescue:4066 U3
U 3 1 59BB77C2
P 5450 -700
F 0 "U3" H 5650 -849 50  0000 C CNN
F 1 "4066" H 5650 -550 50  0000 C CNN
F 2 "" H 5450 -700 60  0001 C CNN
F 3 "" H 5450 -700 60  0001 C CNN
	3    5450 -700
	1    0    0    -1  
$EndComp
$Comp
L CloudSmoker-rescue:4066 U3
U 4 1 59BB77FC
P 6550 -700
F 0 "U3" H 6750 -849 50  0000 C CNN
F 1 "4066" H 6750 -550 50  0000 C CNN
F 2 "" H 6550 -700 60  0001 C CNN
F 3 "" H 6550 -700 60  0001 C CNN
	4    6550 -700
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR014
U 1 1 59BB79EF
P 5500 -450
F 0 "#PWR014" H 5500 -700 50  0001 C CNN
F 1 "GND" H 5500 -600 50  0000 C CNN
F 2 "" H 5500 -450 50  0001 C CNN
F 3 "" H 5500 -450 50  0001 C CNN
	1    5500 -450
	1    0    0    -1  
$EndComp
$Comp
L power1:+3.3V #PWR015
U 1 1 59BB7C0A
P 6050 -1550
F 0 "#PWR015" H 6050 -1700 50  0001 C CNN
F 1 "+3.3V" H 6050 -1410 50  0000 C CNN
F 2 "" H 6050 -1550 50  0001 C CNN
F 3 "" H 6050 -1550 50  0001 C CNN
	1    6050 -1550
	1    0    0    -1  
$EndComp
NoConn ~ 5750 -700
NoConn ~ 6850 -700
Text HLabel 2700 -550 0    60   Input ~ 0
CTL-A
NoConn ~ 5150 -550
NoConn ~ 6250 -550
Text HLabel 4250 -1650 2    60   Output ~ 0
MUX
Text HLabel 4050 -550 0    60   Input ~ 0
CTL-B
Text Label 4000 -700 2    60   ~ 0
PitADC
Text Label 2700 -700 2    60   ~ 0
MeatADC
Text Notes 4200 2300 0    60   ~ 12
         2:1 Multiplexer - 4066B quad bilateral switch (only 2 switches used)\n
$Comp
L device:R R15
U 1 1 59BBFF26
P 5150 -1200
F 0 "R15" V 5230 -1200 50  0000 C CNN
F 1 "R" V 5150 -1200 50  0000 C CNN
F 2 "" V 5080 -1200 50  0001 C CNN
F 3 "" H 5150 -1200 50  0001 C CNN
	1    5150 -1200
	1    0    0    -1  
$EndComp
$Comp
L device:R R22
U 1 1 59BBFF55
P 6250 -1200
F 0 "R22" V 6330 -1200 50  0000 C CNN
F 1 "R" V 6250 -1200 50  0000 C CNN
F 2 "" V 6180 -1200 50  0001 C CNN
F 3 "" H 6250 -1200 50  0001 C CNN
	1    6250 -1200
	1    0    0    -1  
$EndComp
Text Notes 2150 2850 0    59   ~ 12
2.5mm Probe Jacks\nGround shield not tip
$Comp
L device:R R25
U 1 1 59D4A77C
P 8950 3400
F 0 "R25" V 9030 3400 50  0000 C CNN
F 1 "100k/1%" V 8850 3400 50  0000 C CNN
F 2 "" V 8880 3400 50  0001 C CNN
F 3 "" H 8950 3400 50  0001 C CNN
	1    8950 3400
	0    1    1    0   
$EndComp
$Comp
L device:R R23
U 1 1 59D4A810
P 8300 4100
F 0 "R23" V 8380 4100 50  0000 C CNN
F 1 "10k/1%" V 8200 4100 50  0000 C CNN
F 2 "" V 8230 4100 50  0001 C CNN
F 3 "" H 8300 4100 50  0001 C CNN
	1    8300 4100
	0    1    1    0   
$EndComp
$Comp
L device:R R18
U 1 1 59D4A892
P 7750 4100
F 0 "R18" V 7830 4100 50  0000 C CNN
F 1 "100k/1%" V 7650 4100 50  0000 C CNN
F 2 "" V 7680 4100 50  0001 C CNN
F 3 "" H 7750 4100 50  0001 C CNN
	1    7750 4100
	0    1    1    0   
$EndComp
$Comp
L device:R R16
U 1 1 59D4A906
P 7500 3300
F 0 "R16" V 7580 3300 50  0000 C CNN
F 1 "100k/1%" V 7400 3300 50  0000 C CNN
F 2 "" V 7430 3300 50  0001 C CNN
F 3 "" H 7500 3300 50  0001 C CNN
	1    7500 3300
	0    1    1    0   
$EndComp
$Comp
L device:R R20
U 1 1 59D4A986
P 7800 3550
F 0 "R20" V 7880 3550 50  0000 C CNN
F 1 "39K/1%" V 7700 3550 50  0000 C CNN
F 2 "" V 7730 3550 50  0001 C CNN
F 3 "" H 7800 3550 50  0001 C CNN
	1    7800 3550
	-1   0    0    1   
$EndComp
$Comp
L power1:+3.3V #PWR016
U 1 1 59D4AA1F
P 9950 5150
F 0 "#PWR016" H 9950 5000 50  0001 C CNN
F 1 "+3.3V" H 9950 5290 50  0000 C CNN
F 2 "" H 9950 5150 50  0001 C CNN
F 3 "" H 9950 5150 50  0001 C CNN
	1    9950 5150
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR017
U 1 1 59D4AA60
P 9950 5900
F 0 "#PWR017" H 9950 5650 50  0001 C CNN
F 1 "GND" H 9950 5750 50  0000 C CNN
F 2 "" H 9950 5900 50  0001 C CNN
F 3 "" H 9950 5900 50  0001 C CNN
	1    9950 5900
	1    0    0    -1  
$EndComp
Text Label 9550 3400 0    60   ~ 0
MeatADC
$Comp
L device:C C8
U 1 1 59D4AEB4
P 9250 3650
F 0 "C8" H 9275 3750 50  0000 L CNN
F 1 "0.1u" H 9275 3550 50  0000 L CNN
F 2 "" H 9288 3500 50  0001 C CNN
F 3 "" H 9250 3650 50  0001 C CNN
	1    9250 3650
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR018
U 1 1 59D4AF4B
P 9250 3850
F 0 "#PWR018" H 9250 3600 50  0001 C CNN
F 1 "GND" H 9250 3700 50  0000 C CNN
F 2 "" H 9250 3850 50  0001 C CNN
F 3 "" H 9250 3850 50  0001 C CNN
	1    9250 3850
	1    0    0    -1  
$EndComp
$Comp
L device:R R13
U 1 1 59D4BC04
P 5150 4150
F 0 "R13" V 5230 4150 50  0000 C CNN
F 1 "4.6k/1%" V 5050 4150 50  0000 C CNN
F 2 "" V 5080 4150 50  0001 C CNN
F 3 "" H 5150 4150 50  0001 C CNN
	1    5150 4150
	0    1    1    0   
$EndComp
$Comp
L device:R R14
U 1 1 59D4BC84
P 5500 4400
F 0 "R14" V 5580 4400 50  0000 C CNN
F 1 "75/1%" V 5400 4400 50  0000 C CNN
F 2 "" V 5430 4400 50  0001 C CNN
F 3 "" H 5500 4400 50  0001 C CNN
	1    5500 4400
	-1   0    0    1   
$EndComp
$Comp
L power1:+3.3V #PWR019
U 1 1 59D4BD73
P 4900 4150
F 0 "#PWR019" H 4900 4000 50  0001 C CNN
F 1 "+3.3V" H 4900 4290 50  0000 C CNN
F 2 "" H 4900 4150 50  0001 C CNN
F 3 "" H 4900 4150 50  0001 C CNN
	1    4900 4150
	0    -1   -1   0   
$EndComp
$Comp
L power1:GND #PWR020
U 1 1 59D4BEAB
P 5500 4650
F 0 "#PWR020" H 5500 4400 50  0001 C CNN
F 1 "GND" H 5500 4500 50  0000 C CNN
F 2 "" H 5500 4650 50  0001 C CNN
F 3 "" H 5500 4650 50  0001 C CNN
	1    5500 4650
	1    0    0    -1  
$EndComp
Text Label 5800 4150 0    60   ~ 0
Voffset
Text Label 7550 3800 2    60   ~ 0
Voffset
$Comp
L power1:GND #PWR021
U 1 1 59D4C079
P 7450 4200
F 0 "#PWR021" H 7450 3950 50  0001 C CNN
F 1 "GND" H 7450 4050 50  0000 C CNN
F 2 "" H 7450 4200 50  0001 C CNN
F 3 "" H 7450 4200 50  0001 C CNN
	1    7450 4200
	1    0    0    -1  
$EndComp
$Comp
L device:R R26
U 1 1 59D4C302
P 8900 4800
F 0 "R26" V 8980 4800 50  0000 C CNN
F 1 "100k/1%" V 8800 4800 50  0000 C CNN
F 2 "" V 8830 4800 50  0001 C CNN
F 3 "" H 8900 4800 50  0001 C CNN
	1    8900 4800
	0    1    1    0   
$EndComp
$Comp
L device:R R24
U 1 1 59D4C308
P 8250 5500
F 0 "R24" V 8330 5500 50  0000 C CNN
F 1 "10k/1%" V 8150 5500 50  0000 C CNN
F 2 "" V 8180 5500 50  0001 C CNN
F 3 "" H 8250 5500 50  0001 C CNN
	1    8250 5500
	0    1    1    0   
$EndComp
$Comp
L device:R R19
U 1 1 59D4C30E
P 7700 5500
F 0 "R19" V 7780 5500 50  0000 C CNN
F 1 "100k/1%" V 7600 5500 50  0000 C CNN
F 2 "" V 7630 5500 50  0001 C CNN
F 3 "" H 7700 5500 50  0001 C CNN
	1    7700 5500
	0    1    1    0   
$EndComp
$Comp
L device:R R17
U 1 1 59D4C314
P 7450 4700
F 0 "R17" V 7530 4700 50  0000 C CNN
F 1 "100k/1%" V 7350 4700 50  0000 C CNN
F 2 "" V 7380 4700 50  0001 C CNN
F 3 "" H 7450 4700 50  0001 C CNN
	1    7450 4700
	0    1    1    0   
$EndComp
$Comp
L device:R R21
U 1 1 59D4C31A
P 7750 4950
F 0 "R21" V 7830 4950 50  0000 C CNN
F 1 "39K/1%" V 7650 4950 50  0000 C CNN
F 2 "" V 7680 4950 50  0001 C CNN
F 3 "" H 7750 4950 50  0001 C CNN
	1    7750 4950
	-1   0    0    1   
$EndComp
Text Label 9500 4800 0    60   ~ 0
PitADC
$Comp
L device:C C9
U 1 1 59D4C32E
P 9200 5050
F 0 "C9" H 9225 5150 50  0000 L CNN
F 1 "0.1u" H 9225 4950 50  0000 L CNN
F 2 "" H 9238 4900 50  0001 C CNN
F 3 "" H 9200 5050 50  0001 C CNN
	1    9200 5050
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR024
U 1 1 59D4C336
P 9200 5250
F 0 "#PWR024" H 9200 5000 50  0001 C CNN
F 1 "GND" H 9200 5100 50  0000 C CNN
F 2 "" H 9200 5250 50  0001 C CNN
F 3 "" H 9200 5250 50  0001 C CNN
	1    9200 5250
	1    0    0    -1  
$EndComp
Text Label 7500 5200 2    60   ~ 0
Voffset
$Comp
L power1:GND #PWR025
U 1 1 59D4C352
P 7400 5600
F 0 "#PWR025" H 7400 5350 50  0001 C CNN
F 1 "GND" H 7400 5450 50  0000 C CNN
F 2 "" H 7400 5600 50  0001 C CNN
F 3 "" H 7400 5600 50  0001 C CNN
	1    7400 5600
	1    0    0    -1  
$EndComp
Text Label 3650 4200 0    60   ~ 0
MeatProbe
Text Label 3650 4900 0    60   ~ 0
PitProbe
Text Label 7100 4700 2    60   ~ 0
PitProbe
Text Label 7150 3300 2    60   ~ 0
MeatProbe
Text Notes 4850 3850 0    59   ~ 12
Voltage divider (0.2V offset)
Text Notes 7600 2850 0    59   ~ 12
            OpAmp Level Shifter                      \n(approx 0.2 - 1.15V output for ESP8266 ADC)
Text Notes 5050 2500 0    60   Italic 0
Note: Votage drop across bidirectional \nswitch must be <0.8V (calculated from R-on shown)
$Comp
L device:C C7
U 1 1 59DB4A95
P 7150 -950
F 0 "C7" H 7175 -850 50  0000 L CNN
F 1 "0.1u" H 7175 -1050 50  0000 L CNN
F 2 "" H 7188 -1100 50  0001 C CNN
F 3 "" H 7150 -950 50  0001 C CNN
	1    7150 -950
	1    0    0    -1  
$EndComp
Text Notes 7400 -950 0    60   Italic 0
Place cap as close to Pin14 Vdd as possible
Text Notes 1850 3000 0    60   Italic 0
check to see if these should be off-board
NoConn ~ 1650 4300
NoConn ~ 1650 5000
$Comp
L device:R R?
U 1 1 59EC06E5
P 2350 3600
F 0 "R?" V 2430 3600 50  0000 C CNN
F 1 "9.09k/1%" V 2250 3600 50  0000 C CNN
F 2 "" V 2280 3600 50  0001 C CNN
F 3 "" H 2350 3600 50  0001 C CNN
	1    2350 3600
	-1   0    0    1   
$EndComp
$Comp
L device:R R?
U 1 1 59EC0BB7
P 2750 3600
F 0 "R?" V 2830 3600 50  0000 C CNN
F 1 "75k/1%" V 2650 3600 50  0000 C CNN
F 2 "" V 2680 3600 50  0001 C CNN
F 3 "" H 2750 3600 50  0001 C CNN
	1    2750 3600
	-1   0    0    1   
$EndComp
$Comp
L device:R R?
U 1 1 59EC0E87
P 3000 4200
F 0 "R?" V 3080 4200 50  0000 C CNN
F 1 "100k" V 2900 4200 50  0000 C CNN
F 2 "" V 2930 4200 50  0001 C CNN
F 3 "" H 3000 4200 50  0001 C CNN
	1    3000 4200
	0    1    1    0   
$EndComp
$Comp
L device:R R?
U 1 1 59EC1052
P 2650 4900
F 0 "R?" V 2730 4900 50  0000 C CNN
F 1 "100k" V 2550 4900 50  0000 C CNN
F 2 "" V 2580 4900 50  0001 C CNN
F 3 "" H 2650 4900 50  0001 C CNN
	1    2650 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 -450 7150 -800
Connection ~ 6550 -1450
Wire Wire Line
	7150 -1450 7150 -1100
Wire Wire Line
	7400 5500 7400 5600
Wire Wire Line
	7550 5500 7400 5500
Connection ~ 7750 4700
Wire Wire Line
	7750 4800 7750 4700
Wire Wire Line
	7750 5200 7500 5200
Wire Wire Line
	7750 5100 7750 5200
Wire Wire Line
	7100 4700 7300 4700
Wire Wire Line
	7600 4700 7750 4700
Connection ~ 7950 5500
Wire Wire Line
	7950 4900 7950 5500
Wire Wire Line
	8000 4900 7950 4900
Wire Wire Line
	7850 5500 7950 5500
Connection ~ 8650 4800
Wire Wire Line
	8650 5500 8400 5500
Wire Wire Line
	8650 4800 8650 5500
Wire Wire Line
	8600 4800 8650 4800
Wire Wire Line
	9200 5250 9200 5200
Connection ~ 9200 4800
Wire Wire Line
	9200 4900 9200 4800
Wire Wire Line
	9050 4800 9200 4800
Wire Wire Line
	7450 4100 7450 4200
Wire Wire Line
	7600 4100 7450 4100
Connection ~ 5500 4150
Wire Wire Line
	5500 4550 5500 4650
Wire Wire Line
	5500 4150 5500 4250
Wire Wire Line
	5300 4150 5500 4150
Wire Wire Line
	5000 4150 4900 4150
Connection ~ 7800 3300
Wire Wire Line
	7800 3400 7800 3300
Wire Wire Line
	7800 3800 7550 3800
Wire Wire Line
	7800 3700 7800 3800
Wire Wire Line
	7150 3300 7350 3300
Wire Wire Line
	7650 3300 7800 3300
Connection ~ 8000 4100
Wire Wire Line
	8000 3500 8000 4100
Wire Wire Line
	8050 3500 8000 3500
Wire Wire Line
	7900 4100 8000 4100
Connection ~ 8700 3400
Wire Wire Line
	8700 4100 8450 4100
Wire Wire Line
	8700 3400 8700 4100
Wire Wire Line
	8650 3400 8700 3400
Wire Wire Line
	9250 3850 9250 3800
Connection ~ 9250 3400
Wire Wire Line
	9250 3500 9250 3400
Wire Wire Line
	9100 3400 9250 3400
Connection ~ 4150 -1550
Wire Wire Line
	4150 -1650 4250 -1650
Wire Wire Line
	4150 -1550 4150 -1650
Wire Wire Line
	4700 -700 4650 -700
Wire Wire Line
	4700 -1550 4700 -700
Wire Wire Line
	3500 -1550 4150 -1550
Wire Wire Line
	3500 -700 3500 -1550
Connection ~ 5150 -1450
Wire Wire Line
	5150 -1450 5150 -1350
Connection ~ 6250 -1450
Wire Wire Line
	6250 -1450 6250 -1350
Wire Wire Line
	6250 -700 6250 -1050
Connection ~ 5450 -1450
Wire Wire Line
	5450 -1450 5450 -950
Connection ~ 4350 -1450
Wire Wire Line
	4350 -950 4350 -1450
Connection ~ 6050 -1450
Wire Wire Line
	3150 -1450 3150 -950
Wire Wire Line
	3150 -1450 4350 -1450
Wire Wire Line
	6550 -1450 6550 -950
Wire Wire Line
	3500 -700 3450 -700
Wire Wire Line
	4050 -700 4000 -700
Wire Wire Line
	2850 -550 2700 -550
Wire Wire Line
	2850 -700 2700 -700
Wire Wire Line
	6050 -1450 6050 -1550
Wire Wire Line
	5150 -700 5150 -1050
Connection ~ 4350 -450
Wire Wire Line
	3150 -450 4350 -450
Connection ~ 6550 -450
Connection ~ 5500 -450
Connection ~ 5450 -450
Wire Wire Line
	1650 4200 2750 4200
Wire Wire Line
	2350 4900 2350 3750
Connection ~ 2350 4900
Wire Wire Line
	2750 3750 2750 4200
Connection ~ 2750 4200
Wire Wire Line
	1650 4900 2350 4900
Wire Wire Line
	2350 3450 2350 3350
Wire Wire Line
	2350 3350 2750 3350
Wire Wire Line
	2750 3350 2750 3450
$Comp
L power1:+3.3V #PWR?
U 1 1 59EC1C52
P 2750 3350
F 0 "#PWR?" H 2750 3200 50  0001 C CNN
F 1 "+3.3V" H 2750 3490 50  0000 C CNN
F 2 "" H 2750 3350 50  0001 C CNN
F 3 "" H 2750 3350 50  0001 C CNN
	1    2750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4900 2950 4900
Wire Wire Line
	3150 4200 3400 4200
$Comp
L device:C C?
U 1 1 59EC2116
P 2950 5350
F 0 "C?" H 2975 5450 50  0000 L CNN
F 1 "0.1u" H 2975 5250 50  0000 L CNN
F 2 "" H 2988 5200 50  0001 C CNN
F 3 "" H 2950 5350 50  0001 C CNN
	1    2950 5350
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 59EC21D4
P 3400 5350
F 0 "C?" H 3425 5450 50  0000 L CNN
F 1 "0.1u" H 3425 5250 50  0000 L CNN
F 2 "" H 3438 5200 50  0001 C CNN
F 3 "" H 3400 5350 50  0001 C CNN
	1    3400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5200 2950 4900
Connection ~ 2950 4900
Wire Wire Line
	3400 5200 3400 4200
Connection ~ 3400 4200
Wire Wire Line
	2050 5700 2950 5700
Wire Wire Line
	3400 5700 3400 5500
$Comp
L power1:GND #PWR?
U 1 1 59EC24EC
P 3400 5700
F 0 "#PWR?" H 3400 5450 50  0001 C CNN
F 1 "GND" H 3400 5550 50  0000 C CNN
F 2 "" H 3400 5700 50  0001 C CNN
F 3 "" H 3400 5700 50  0001 C CNN
	1    3400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5500 2950 5700
Connection ~ 2950 5700
Wire Notes Line
	900  3050 4300 3050
Wire Notes Line
	4300 3050 4300 6100
Wire Notes Line
	4300 6100 900  6100
Wire Notes Line
	900  6100 900  3050
Text Notes 2350 5200 0    60   Italic 0
Do I want an RC filter both before and after Opamp?
Text Notes 9500 6300 0    60   Italic 0
add 10nF cap as close to \nsupply pin as possible
Text Notes 9000 3250 0    60   Italic 0
place RC filter as close \nto ADC as possible
Text Notes 8950 4600 0    60   Italic 0
place RC filter as close \nto ADC as possible
Wire Wire Line
	6550 -1450 7150 -1450
Wire Wire Line
	7750 4700 8000 4700
Wire Wire Line
	7950 5500 8100 5500
Wire Wire Line
	8650 4800 8750 4800
Wire Wire Line
	9200 4800 9500 4800
Wire Wire Line
	5500 4150 5800 4150
Wire Wire Line
	7800 3300 8050 3300
Wire Wire Line
	8000 4100 8150 4100
Wire Wire Line
	8700 3400 8800 3400
Wire Wire Line
	9250 3400 9550 3400
Wire Wire Line
	4150 -1550 4700 -1550
Wire Wire Line
	5150 -1450 5450 -1450
Wire Wire Line
	6250 -1450 6550 -1450
Wire Wire Line
	5450 -1450 6050 -1450
Wire Wire Line
	4350 -1450 5150 -1450
Wire Wire Line
	6050 -1450 6250 -1450
Wire Wire Line
	4350 -450 5450 -450
Wire Wire Line
	6550 -450 7150 -450
Wire Wire Line
	5500 -450 6550 -450
Wire Wire Line
	5450 -450 5500 -450
Wire Wire Line
	2350 4900 2500 4900
Wire Wire Line
	2750 4200 2850 4200
Wire Wire Line
	2950 4900 3650 4900
Wire Wire Line
	3400 4200 3650 4200
Wire Wire Line
	2950 5700 3400 5700
$Comp
L 4xxx:4066 U?
U 1 1 5FEF59DE
P 2200 1450
F 0 "U?" H 2200 1277 50  0000 C CNN
F 1 "4066" H 2200 1186 50  0000 C CNN
F 2 "" H 2200 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 2200 1450 50  0001 C CNN
	1    2200 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5FF0E2CD
P 1450 4200
F 0 "J?" H 1482 4525 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1482 4434 50  0000 C CNN
F 2 "" H 1450 4200 50  0001 C CNN
F 3 "~" H 1450 4200 50  0001 C CNN
	1    1450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4100 2050 4100
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5FF2A6A4
P 1450 4900
F 0 "J?" H 1482 5225 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 1482 5134 50  0000 C CNN
F 2 "" H 1450 4900 50  0001 C CNN
F 3 "~" H 1450 4900 50  0001 C CNN
	1    1450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4100 2050 4800
Wire Wire Line
	1650 4800 2050 4800
Connection ~ 2050 4800
Wire Wire Line
	2050 4800 2050 5700
$Comp
L Amplifier_Operational:LM358 U?
U 1 1 5FF3778D
P 8350 3400
F 0 "U?" H 8350 3767 50  0000 C CNN
F 1 "LM358" H 8350 3676 50  0000 C CNN
F 2 "" H 8350 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 8350 3400 50  0001 C CNN
	1    8350 3400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U?
U 2 1 5FF39034
P 8300 4800
F 0 "U?" H 8300 5167 50  0000 C CNN
F 1 "LM358" H 8300 5076 50  0000 C CNN
F 2 "" H 8300 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 8300 4800 50  0001 C CNN
	2    8300 4800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U?
U 3 1 5FF3BB78
P 10050 5600
F 0 "U?" H 9700 5700 50  0000 L CNN
F 1 "LM358" H 9650 5600 50  0000 L CNN
F 2 "" H 10050 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 10050 5600 50  0001 C CNN
	3    10050 5600
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5FF7FB84
P 10350 5300
F 0 "C?" H 10375 5400 50  0000 L CNN
F 1 "10nF" H 10375 5200 50  0000 L CNN
F 2 "" H 10388 5150 50  0001 C CNN
F 3 "" H 10350 5300 50  0001 C CNN
	1    10350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5300 9950 5150
Connection ~ 9950 5150
$Comp
L power1:GND #PWR?
U 1 1 5FF8B6AD
P 10350 5450
F 0 "#PWR?" H 10350 5200 50  0001 C CNN
F 1 "GND" H 10350 5300 50  0000 C CNN
F 2 "" H 10350 5450 50  0001 C CNN
F 3 "" H 10350 5450 50  0001 C CNN
	1    10350 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5150 10350 5150
Wire Notes Line
	6600 6400 10750 6400
Wire Notes Line
	6600 2550 6600 6400
Wire Notes Line
	6600 2550 10750 2550
Wire Notes Line
	10750 2550 10750 6400
Wire Notes Line
	6300 3650 6300 4900
Wire Notes Line
	6300 4900 4600 4900
Wire Notes Line
	4600 4900 4600 3650
Wire Notes Line
	4600 3650 6300 3650
$Comp
L 4xxx:4066 U?
U 2 1 60016902
P 3700 1450
F 0 "U?" H 3700 1277 50  0000 C CNN
F 1 "4066" H 3700 1186 50  0000 C CNN
F 2 "" H 3700 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 3700 1450 50  0001 C CNN
	2    3700 1450
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 3 1 60017197
P 4900 1450
F 0 "U?" H 4900 1277 50  0000 C CNN
F 1 "4066" H 4900 1186 50  0000 C CNN
F 2 "" H 4900 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 4900 1450 50  0001 C CNN
	3    4900 1450
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 4 1 60018893
P 6050 1450
F 0 "U?" H 6050 1277 50  0000 C CNN
F 1 "4066" H 6050 1186 50  0000 C CNN
F 2 "" H 6050 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 6050 1450 50  0001 C CNN
	4    6050 1450
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 5 1 6001AAA2
P 7100 1450
F 0 "U?" H 7330 1496 50  0000 L CNN
F 1 "4066" H 7330 1405 50  0000 L CNN
F 2 "" H 7100 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 7100 1450 50  0001 C CNN
	5    7100 1450
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR?
U 1 1 60023E3D
P 7100 1950
F 0 "#PWR?" H 7100 1700 50  0001 C CNN
F 1 "GND" H 7100 1800 50  0000 C CNN
F 2 "" H 7100 1950 50  0001 C CNN
F 3 "" H 7100 1950 50  0001 C CNN
	1    7100 1950
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 60024C29
P 7600 1100
F 0 "C?" H 7625 1200 50  0000 L CNN
F 1 "0.1u" H 7625 1000 50  0000 L CNN
F 2 "" H 7638 950 50  0001 C CNN
F 3 "" H 7600 1100 50  0001 C CNN
	1    7600 1100
	1    0    0    -1  
$EndComp
$Comp
L power1:+3.3V #PWR?
U 1 1 60026C66
P 7100 850
F 0 "#PWR?" H 7100 700 50  0001 C CNN
F 1 "+3.3V" H 7100 990 50  0000 C CNN
F 2 "" H 7100 850 50  0001 C CNN
F 3 "" H 7100 850 50  0001 C CNN
	1    7100 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 950  7600 950 
Wire Wire Line
	7100 950  7100 850 
Connection ~ 7100 950 
$Comp
L power1:GND #PWR?
U 1 1 6002F449
P 7600 1250
F 0 "#PWR?" H 7600 1000 50  0001 C CNN
F 1 "GND" H 7600 1100 50  0000 C CNN
F 2 "" H 7600 1250 50  0001 C CNN
F 3 "" H 7600 1250 50  0001 C CNN
	1    7600 1250
	1    0    0    -1  
$EndComp
Text Notes 7850 1150 0    60   Italic 0
Place cap as close to \nPin14 Vdd as possible
Text HLabel 3700 1150 1    60   Input ~ 0
CTL-B
Text HLabel 4000 1450 2    60   Output ~ 0
MUX
Text HLabel 2500 1450 2    60   Output ~ 0
MUX
Text HLabel 2200 1150 1    60   Input ~ 0
CTL-A
Text Label 3400 1450 2    60   ~ 0
PitADC
Text Label 1900 1450 2    60   ~ 0
MeatADC
$EndSCHEMATC