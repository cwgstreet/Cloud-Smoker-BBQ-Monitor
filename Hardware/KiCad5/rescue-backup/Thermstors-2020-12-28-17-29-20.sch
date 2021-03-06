EESchema Schematic File Version 2
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
LIBS:ESP8266
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:nxp
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:cg_device
LIBS:cg_display
LIBS:cg_modules
LIBS:cg_off-board
LIBS:CloudSmoker-cache
EELAYER 25 0
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
L 4066 U3
U 1 1 59BB773F
P 4200 1700
F 0 "U3" H 4400 1551 50  0000 C CNN
F 1 "4066" H 4400 1850 50  0000 C CNN
F 2 "" H 4200 1700 60  0001 C CNN
F 3 "" H 4200 1700 60  0001 C CNN
	1    4200 1700
	1    0    0    -1  
$EndComp
$Comp
L 4066 U3
U 2 1 59BB778B
P 5400 1700
F 0 "U3" H 5600 1551 50  0000 C CNN
F 1 "4066" H 5600 1850 50  0000 C CNN
F 2 "" H 5400 1700 60  0001 C CNN
F 3 "" H 5400 1700 60  0001 C CNN
	2    5400 1700
	1    0    0    -1  
$EndComp
$Comp
L 4066 U3
U 3 1 59BB77C2
P 6500 1700
F 0 "U3" H 6700 1551 50  0000 C CNN
F 1 "4066" H 6700 1850 50  0000 C CNN
F 2 "" H 6500 1700 60  0001 C CNN
F 3 "" H 6500 1700 60  0001 C CNN
	3    6500 1700
	1    0    0    -1  
$EndComp
$Comp
L 4066 U3
U 4 1 59BB77FC
P 7600 1700
F 0 "U3" H 7800 1551 50  0000 C CNN
F 1 "4066" H 7800 1850 50  0000 C CNN
F 2 "" H 7600 1700 60  0001 C CNN
F 3 "" H 7600 1700 60  0001 C CNN
	4    7600 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 59BB79EF
P 6550 1950
F 0 "#PWR014" H 6550 1700 50  0001 C CNN
F 1 "GND" H 6550 1800 50  0000 C CNN
F 2 "" H 6550 1950 50  0001 C CNN
F 3 "" H 6550 1950 50  0001 C CNN
	1    6550 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 59BB7C0A
P 7100 850
F 0 "#PWR015" H 7100 700 50  0001 C CNN
F 1 "+3.3V" H 7100 990 50  0000 C CNN
F 2 "" H 7100 850 50  0001 C CNN
F 3 "" H 7100 850 50  0001 C CNN
	1    7100 850 
	1    0    0    -1  
$EndComp
NoConn ~ 6800 1700
NoConn ~ 7900 1700
Text HLabel 3750 1850 0    60   Input ~ 0
CTL-A
NoConn ~ 6200 1850
NoConn ~ 7300 1850
Text HLabel 5300 750  2    60   Output ~ 0
MUX
Text HLabel 5100 1850 0    60   Input ~ 0
CTL-B
Text Label 5050 1700 2    60   ~ 0
PitADC
Text Label 3750 1700 2    60   ~ 0
MeatADC
Text Notes 4200 2300 0    60   ~ 12
         2:1 Multiplexer - 4066B quad bilateral switch (only 2 switches used)\n
$Comp
L R R15
U 1 1 59BBFF26
P 6200 1200
F 0 "R15" V 6280 1200 50  0000 C CNN
F 1 "R" V 6200 1200 50  0000 C CNN
F 2 "" V 6130 1200 50  0001 C CNN
F 3 "" H 6200 1200 50  0001 C CNN
	1    6200 1200
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 59BBFF55
P 7300 1200
F 0 "R22" V 7380 1200 50  0000 C CNN
F 1 "R" V 7300 1200 50  0000 C CNN
F 2 "" V 7230 1200 50  0001 C CNN
F 3 "" H 7300 1200 50  0001 C CNN
	1    7300 1200
	1    0    0    -1  
$EndComp
$Comp
L Audio-Jack-2_Switch J5
U 1 1 59BDFF62
P 1450 4100
F 0 "J5" H 1450 4000 50  0000 C CNN
F 1 "Audio-Jack-2_Switch" H 1450 4350 50  0000 C CNN
F 2 "" H 1700 4200 50  0001 C CNN
F 3 "" H 1700 4200 50  0001 C CNN
	1    1450 4100
	1    0    0    1   
$EndComp
$Comp
L Audio-Jack-2_Switch J4
U 1 1 59BDFFFD
P 1450 4800
F 0 "J4" H 1450 4700 50  0000 C CNN
F 1 "Audio-Jack-2_Switch" H 1450 5050 50  0000 C CNN
F 2 "" H 1700 4900 50  0001 C CNN
F 3 "" H 1700 4900 50  0001 C CNN
	1    1450 4800
	1    0    0    1   
$EndComp
Text Notes 2150 2850 0    59   ~ 12
2.5mm Probe Jacks\nGround shield not tip
$Comp
L LM358 U4
U 1 1 59D4A294
P 8950 3500
F 0 "U4" H 8950 3700 50  0000 L CNN
F 1 "LM358" H 8950 3300 50  0000 L CNN
F 2 "" H 8950 3500 50  0001 C CNN
F 3 "" H 8950 3500 50  0001 C CNN
	1    8950 3500
	1    0    0    -1  
$EndComp
$Comp
L LM358 U4
U 2 1 59D4A33C
P 8950 5300
F 0 "U4" H 8950 5500 50  0000 L CNN
F 1 "LM358" H 8950 5100 50  0000 L CNN
F 2 "" H 8950 5300 50  0001 C CNN
F 3 "" H 8950 5300 50  0001 C CNN
	2    8950 5300
	1    0    0    -1  
$EndComp
$Comp
L R R25
U 1 1 59D4A77C
P 9550 3500
F 0 "R25" V 9630 3500 50  0000 C CNN
F 1 "100k/1%" V 9450 3500 50  0000 C CNN
F 2 "" V 9480 3500 50  0001 C CNN
F 3 "" H 9550 3500 50  0001 C CNN
	1    9550 3500
	0    1    1    0   
$EndComp
$Comp
L R R23
U 1 1 59D4A810
P 8900 4200
F 0 "R23" V 8980 4200 50  0000 C CNN
F 1 "10k/1%" V 8800 4200 50  0000 C CNN
F 2 "" V 8830 4200 50  0001 C CNN
F 3 "" H 8900 4200 50  0001 C CNN
	1    8900 4200
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 59D4A892
P 8350 4200
F 0 "R18" V 8430 4200 50  0000 C CNN
F 1 "100k/1%" V 8250 4200 50  0000 C CNN
F 2 "" V 8280 4200 50  0001 C CNN
F 3 "" H 8350 4200 50  0001 C CNN
	1    8350 4200
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 59D4A906
P 8100 3400
F 0 "R16" V 8180 3400 50  0000 C CNN
F 1 "100k/1%" V 8000 3400 50  0000 C CNN
F 2 "" V 8030 3400 50  0001 C CNN
F 3 "" H 8100 3400 50  0001 C CNN
	1    8100 3400
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 59D4A986
P 8400 3650
F 0 "R20" V 8480 3650 50  0000 C CNN
F 1 "39K/1%" V 8300 3650 50  0000 C CNN
F 2 "" V 8330 3650 50  0001 C CNN
F 3 "" H 8400 3650 50  0001 C CNN
	1    8400 3650
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR016
U 1 1 59D4AA1F
P 8850 3200
F 0 "#PWR016" H 8850 3050 50  0001 C CNN
F 1 "+3.3V" H 8850 3340 50  0000 C CNN
F 2 "" H 8850 3200 50  0001 C CNN
F 3 "" H 8850 3200 50  0001 C CNN
	1    8850 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 59D4AA60
P 8850 3800
F 0 "#PWR017" H 8850 3550 50  0001 C CNN
F 1 "GND" H 8850 3650 50  0000 C CNN
F 2 "" H 8850 3800 50  0001 C CNN
F 3 "" H 8850 3800 50  0001 C CNN
	1    8850 3800
	1    0    0    -1  
$EndComp
Text Label 10150 3500 0    60   ~ 0
MeatADC
$Comp
L C C8
U 1 1 59D4AEB4
P 9850 3750
F 0 "C8" H 9875 3850 50  0000 L CNN
F 1 "0.1u" H 9875 3650 50  0000 L CNN
F 2 "" H 9888 3600 50  0001 C CNN
F 3 "" H 9850 3750 50  0001 C CNN
	1    9850 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 59D4AF4B
P 9850 3950
F 0 "#PWR018" H 9850 3700 50  0001 C CNN
F 1 "GND" H 9850 3800 50  0000 C CNN
F 2 "" H 9850 3950 50  0001 C CNN
F 3 "" H 9850 3950 50  0001 C CNN
	1    9850 3950
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 59D4BC04
P 5400 4200
F 0 "R13" V 5480 4200 50  0000 C CNN
F 1 "4.6k/1%" V 5300 4200 50  0000 C CNN
F 2 "" V 5330 4200 50  0001 C CNN
F 3 "" H 5400 4200 50  0001 C CNN
	1    5400 4200
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 59D4BC84
P 5750 4450
F 0 "R14" V 5830 4450 50  0000 C CNN
F 1 "75/1%" V 5650 4450 50  0000 C CNN
F 2 "" V 5680 4450 50  0001 C CNN
F 3 "" H 5750 4450 50  0001 C CNN
	1    5750 4450
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR019
U 1 1 59D4BD73
P 5150 4200
F 0 "#PWR019" H 5150 4050 50  0001 C CNN
F 1 "+3.3V" H 5150 4340 50  0000 C CNN
F 2 "" H 5150 4200 50  0001 C CNN
F 3 "" H 5150 4200 50  0001 C CNN
	1    5150 4200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR020
U 1 1 59D4BEAB
P 5750 4700
F 0 "#PWR020" H 5750 4450 50  0001 C CNN
F 1 "GND" H 5750 4550 50  0000 C CNN
F 2 "" H 5750 4700 50  0001 C CNN
F 3 "" H 5750 4700 50  0001 C CNN
	1    5750 4700
	1    0    0    -1  
$EndComp
Text Label 6050 4200 0    60   ~ 0
Voffset
Text Label 8150 3900 2    60   ~ 0
Voffset
$Comp
L GND #PWR021
U 1 1 59D4C079
P 8050 4300
F 0 "#PWR021" H 8050 4050 50  0001 C CNN
F 1 "GND" H 8050 4150 50  0000 C CNN
F 2 "" H 8050 4300 50  0001 C CNN
F 3 "" H 8050 4300 50  0001 C CNN
	1    8050 4300
	1    0    0    -1  
$EndComp
$Comp
L R R26
U 1 1 59D4C302
P 9550 5300
F 0 "R26" V 9630 5300 50  0000 C CNN
F 1 "100k/1%" V 9450 5300 50  0000 C CNN
F 2 "" V 9480 5300 50  0001 C CNN
F 3 "" H 9550 5300 50  0001 C CNN
	1    9550 5300
	0    1    1    0   
$EndComp
$Comp
L R R24
U 1 1 59D4C308
P 8900 6000
F 0 "R24" V 8980 6000 50  0000 C CNN
F 1 "10k/1%" V 8800 6000 50  0000 C CNN
F 2 "" V 8830 6000 50  0001 C CNN
F 3 "" H 8900 6000 50  0001 C CNN
	1    8900 6000
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 59D4C30E
P 8350 6000
F 0 "R19" V 8430 6000 50  0000 C CNN
F 1 "100k/1%" V 8250 6000 50  0000 C CNN
F 2 "" V 8280 6000 50  0001 C CNN
F 3 "" H 8350 6000 50  0001 C CNN
	1    8350 6000
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 59D4C314
P 8100 5200
F 0 "R17" V 8180 5200 50  0000 C CNN
F 1 "100k/1%" V 8000 5200 50  0000 C CNN
F 2 "" V 8030 5200 50  0001 C CNN
F 3 "" H 8100 5200 50  0001 C CNN
	1    8100 5200
	0    1    1    0   
$EndComp
$Comp
L R R21
U 1 1 59D4C31A
P 8400 5450
F 0 "R21" V 8480 5450 50  0000 C CNN
F 1 "39K/1%" V 8300 5450 50  0000 C CNN
F 2 "" V 8330 5450 50  0001 C CNN
F 3 "" H 8400 5450 50  0001 C CNN
	1    8400 5450
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR022
U 1 1 59D4C320
P 8850 5000
F 0 "#PWR022" H 8850 4850 50  0001 C CNN
F 1 "+3.3V" H 8850 5140 50  0000 C CNN
F 2 "" H 8850 5000 50  0001 C CNN
F 3 "" H 8850 5000 50  0001 C CNN
	1    8850 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 59D4C326
P 8850 5600
F 0 "#PWR023" H 8850 5350 50  0001 C CNN
F 1 "GND" H 8850 5450 50  0000 C CNN
F 2 "" H 8850 5600 50  0001 C CNN
F 3 "" H 8850 5600 50  0001 C CNN
	1    8850 5600
	1    0    0    -1  
$EndComp
Text Label 10150 5300 0    60   ~ 0
PitADC
$Comp
L C C9
U 1 1 59D4C32E
P 9850 5550
F 0 "C9" H 9875 5650 50  0000 L CNN
F 1 "0.1u" H 9875 5450 50  0000 L CNN
F 2 "" H 9888 5400 50  0001 C CNN
F 3 "" H 9850 5550 50  0001 C CNN
	1    9850 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 59D4C336
P 9850 5750
F 0 "#PWR024" H 9850 5500 50  0001 C CNN
F 1 "GND" H 9850 5600 50  0000 C CNN
F 2 "" H 9850 5750 50  0001 C CNN
F 3 "" H 9850 5750 50  0001 C CNN
	1    9850 5750
	1    0    0    -1  
$EndComp
Text Label 8150 5700 2    60   ~ 0
Voffset
$Comp
L GND #PWR025
U 1 1 59D4C352
P 8050 6100
F 0 "#PWR025" H 8050 5850 50  0001 C CNN
F 1 "GND" H 8050 5950 50  0000 C CNN
F 2 "" H 8050 6100 50  0001 C CNN
F 3 "" H 8050 6100 50  0001 C CNN
	1    8050 6100
	1    0    0    -1  
$EndComp
Text Label 3650 4200 0    60   ~ 0
MeatProbe
Text Label 3650 4900 0    60   ~ 0
PitProbe
Text Label 7750 5200 2    60   ~ 0
PitProbe
Text Label 7750 3400 2    60   ~ 0
MeatProbe
Text Notes 5100 3900 0    59   ~ 12
Voltage divider (0.2V offset)
Text Notes 7950 2850 0    59   ~ 12
                  Level Shifter                      \n(approx 0.2 - 1.15V output for ESP8266 ADC)
Text Notes 5050 2500 0    60   Italic 0
Note: Votage drop across bidirectional \nswitch must be <0.8V (calculated from R-on shown)
$Comp
L C C7
U 1 1 59DB4A95
P 8200 1450
F 0 "C7" H 8225 1550 50  0000 L CNN
F 1 "0.1u" H 8225 1350 50  0000 L CNN
F 2 "" H 8238 1300 50  0001 C CNN
F 3 "" H 8200 1450 50  0001 C CNN
	1    8200 1450
	1    0    0    -1  
$EndComp
Text Notes 8450 1450 0    60   Italic 0
Place cap as close to Pin14 Vdd as possible
Text Notes 1850 3000 0    60   Italic 0
check to see if these should be off-board
NoConn ~ 1650 4100
NoConn ~ 1650 4800
$Comp
L R R?
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
L R R?
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
L R R?
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
L R R?
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
	8200 1950 8200 1600
Connection ~ 7600 950 
Wire Wire Line
	8200 950  8200 1300
Wire Notes Line
	10750 2600 7050 2600
Wire Notes Line
	10750 6400 10750 2600
Wire Notes Line
	7050 6400 10750 6400
Wire Notes Line
	7050 2600 7050 6400
Wire Wire Line
	8050 6000 8050 6100
Wire Wire Line
	8200 6000 8050 6000
Connection ~ 8400 5200
Wire Wire Line
	8400 5300 8400 5200
Wire Wire Line
	8400 5700 8150 5700
Wire Wire Line
	8400 5600 8400 5700
Wire Wire Line
	7750 5200 7950 5200
Wire Wire Line
	8250 5200 8650 5200
Connection ~ 8600 6000
Wire Wire Line
	8600 5400 8600 6000
Wire Wire Line
	8650 5400 8600 5400
Wire Wire Line
	8500 6000 8750 6000
Connection ~ 9300 5300
Wire Wire Line
	9300 6000 9050 6000
Wire Wire Line
	9300 5300 9300 6000
Wire Wire Line
	9250 5300 9400 5300
Wire Wire Line
	9850 5750 9850 5700
Connection ~ 9850 5300
Wire Wire Line
	9850 5400 9850 5300
Wire Wire Line
	9700 5300 10150 5300
Wire Wire Line
	8050 4200 8050 4300
Wire Wire Line
	8200 4200 8050 4200
Connection ~ 5750 4200
Wire Wire Line
	5750 4600 5750 4700
Wire Wire Line
	5750 4200 5750 4300
Wire Wire Line
	5550 4200 6050 4200
Wire Wire Line
	5250 4200 5150 4200
Connection ~ 8400 3400
Wire Wire Line
	8400 3500 8400 3400
Wire Wire Line
	8400 3900 8150 3900
Wire Wire Line
	8400 3800 8400 3900
Wire Wire Line
	7750 3400 7950 3400
Wire Wire Line
	8250 3400 8650 3400
Connection ~ 8600 4200
Wire Wire Line
	8600 3600 8600 4200
Wire Wire Line
	8650 3600 8600 3600
Wire Wire Line
	8500 4200 8750 4200
Connection ~ 9300 3500
Wire Wire Line
	9300 4200 9050 4200
Wire Wire Line
	9300 3500 9300 4200
Wire Wire Line
	9250 3500 9400 3500
Wire Wire Line
	9850 3950 9850 3900
Connection ~ 9850 3500
Wire Wire Line
	9850 3600 9850 3500
Wire Wire Line
	9700 3500 10150 3500
Connection ~ 5200 850 
Wire Wire Line
	5200 750  5300 750 
Wire Wire Line
	5200 850  5200 750 
Wire Wire Line
	5750 1700 5700 1700
Wire Wire Line
	5750 850  5750 1700
Wire Wire Line
	4550 850  5750 850 
Wire Wire Line
	4550 1700 4550 850 
Connection ~ 6200 950 
Wire Wire Line
	6200 950  6200 1050
Connection ~ 7300 950 
Wire Wire Line
	7300 950  7300 1050
Wire Wire Line
	7300 1700 7300 1350
Connection ~ 6500 950 
Wire Wire Line
	6500 950  6500 1450
Connection ~ 5400 950 
Wire Wire Line
	5400 1450 5400 950 
Connection ~ 7100 950 
Wire Wire Line
	4200 950  4200 1450
Wire Wire Line
	4200 950  8200 950 
Wire Wire Line
	7600 950  7600 1450
Wire Wire Line
	4550 1700 4500 1700
Wire Wire Line
	5100 1700 5050 1700
Wire Wire Line
	3900 1850 3750 1850
Wire Wire Line
	3900 1700 3750 1700
Wire Wire Line
	7100 950  7100 850 
Wire Wire Line
	6200 1700 6200 1350
Connection ~ 5400 1950
Wire Wire Line
	4200 1950 8200 1950
Connection ~ 7600 1950
Connection ~ 6550 1950
Connection ~ 6500 1950
Wire Wire Line
	1650 4200 2850 4200
Wire Wire Line
	1250 4000 1250 3900
Wire Wire Line
	1250 4700 1250 4550
Wire Wire Line
	1250 3900 2050 3900
Wire Wire Line
	1250 4550 2050 4550
Wire Wire Line
	2050 3900 2050 5700
Connection ~ 2050 4550
Wire Wire Line
	2350 4900 2350 3750
Connection ~ 2350 4900
Wire Wire Line
	2750 3750 2750 4200
Connection ~ 2750 4200
Wire Wire Line
	1650 4900 2500 4900
Wire Wire Line
	2350 3450 2350 3350
Wire Wire Line
	2350 3350 2750 3350
Wire Wire Line
	2750 3350 2750 3450
$Comp
L +3.3V #PWR?
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
	2800 4900 3650 4900
Wire Wire Line
	3150 4200 3650 4200
$Comp
L C C?
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
L C C?
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
	2050 5700 3400 5700
Wire Wire Line
	3400 5700 3400 5500
$Comp
L GND #PWR?
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
Text Notes 8000 3000 0    60   Italic 0
add 10nF cap between opamp V+ and gnd. as as possible
Text Notes 10050 3800 0    60   Italic 0
place RC filter as close \nto ADC as possible
Text Notes 10050 5600 0    60   Italic 0
place RC filter as close \nto ADC as possible
$EndSCHEMATC
