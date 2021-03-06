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
Sheet 2 5
Title "CloudSmoker - Wifi enabled BBQ Temperature Monitor"
Date "2017-09-14"
Rev "1"
Comp "Carl Greenstreet"
Comment1 ""
Comment2 "Power Regulation and 5V->3.3V stepdown"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_01x03 J?
U 1 1 59DD970A
P 3200 2950
F 0 "J?" H 3200 3150 50  0000 C CNN
F 1 "Conn_01x03" H 3200 2750 50  0000 C CNN
F 2 "" H 3200 2950 50  0001 C CNN
F 3 "" H 3200 2950 50  0001 C CNN
	1    3200 2950
	-1   0    0    -1  
$EndComp
$Comp
L 5V-3V3_StepDown_module_off-board U?
U 1 1 59DD9A7C
P 1800 2950
F 0 "U?" H 1800 3250 50  0000 C CNN
F 1 "5V-3V3_StepDown_module_off-board" H 1800 2690 50  0000 C CNN
F 2 "" H 1700 3110 50  0001 C CNN
F 3 "" H 1800 3210 50  0001 C CNN
	1    1800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2850 3750 2850
Wire Wire Line
	3400 2950 4150 2950
Text GLabel 3750 2850 2    60   Input ~ 0
+5V
Text GLabel 6100 2700 2    60   Output ~ 0
+3.3V
Wire Wire Line
	3400 3050 3750 3050
Text GLabel 3750 3050 2    60   Input ~ 0
GND
Wire Notes Line
	3100 2850 2200 2850
Wire Notes Line
	3100 2950 2200 2950
Wire Notes Line
	3100 3050 2200 3050
Wire Notes Line
	900  2300 900  3600
Wire Notes Line
	900  3600 2600 3600
Wire Notes Line
	2600 3600 2600 2300
Wire Notes Line
	2600 2300 900  2300
Text Notes 1300 2450 0    60   ~ 0
Off-Board Module
$Comp
L L L?
U 1 1 59DD9D34
P 4500 2700
F 0 "L?" V 4450 2700 50  0000 C CNN
F 1 "10 uH" V 4575 2700 50  0000 C CNN
F 2 "" H 4500 2700 50  0001 C CNN
F 3 "" H 4500 2700 50  0001 C CNN
	1    4500 2700
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59DD9D88
P 5050 2700
F 0 "R?" V 5130 2700 50  0000 C CNN
F 1 "10" V 5050 2700 50  0000 C CNN
F 2 "" V 4980 2700 50  0001 C CNN
F 3 "" H 5050 2700 50  0001 C CNN
	1    5050 2700
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 59DD9DCC
P 5400 3100
F 0 "C?" H 5425 3200 50  0000 L CNN
F 1 "0.1uF" H 5425 3000 50  0000 L CNN
F 2 "" H 5438 2950 50  0001 C CNN
F 3 "" H 5400 3100 50  0001 C CNN
	1    5400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3050 3700 3050
Wire Wire Line
	3700 3050 3700 3450
Wire Wire Line
	3700 3450 6100 3450
Wire Wire Line
	6100 3450 6100 3550
Connection ~ 3700 3050
$Comp
L GND #PWR?
U 1 1 59DD9EBE
P 6100 3550
F 0 "#PWR?" H 6100 3300 50  0001 C CNN
F 1 "GND" H 6100 3400 50  0000 C CNN
F 2 "" H 6100 3550 50  0001 C CNN
F 3 "" H 6100 3550 50  0001 C CNN
	1    6100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2950 3400 2700
Wire Wire Line
	3400 2700 4350 2700
Connection ~ 3400 2950
Wire Wire Line
	5400 3250 5400 3450
Connection ~ 5400 3450
Wire Wire Line
	5800 3250 5800 3450
Connection ~ 5800 3450
Wire Wire Line
	5200 2700 6100 2700
Wire Wire Line
	5800 2700 5800 2950
Connection ~ 5800 2700
Wire Wire Line
	5400 2950 5400 2700
Connection ~ 5400 2700
Wire Wire Line
	4900 2700 4650 2700
Text Notes 4350 2450 0    60   ~ 0
RLC Lowpass Power Filtering 
$Comp
L CP C?
U 1 1 59DDA307
P 5800 3100
F 0 "C?" H 5825 3200 50  0000 L CNN
F 1 "10uF" H 5825 3000 50  0000 L CNN
F 2 "" H 5838 2950 50  0001 C CNN
F 3 "" H 5800 3100 50  0001 C CNN
	1    5800 3100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 59DDA429
P 4150 2950
F 0 "#PWR?" H 4150 2800 50  0001 C CNN
F 1 "+3.3V" H 4150 3090 50  0000 C CNN
F 2 "" H 4150 2950 50  0001 C CNN
F 3 "" H 4150 2950 50  0001 C CNN
	1    4150 2950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
