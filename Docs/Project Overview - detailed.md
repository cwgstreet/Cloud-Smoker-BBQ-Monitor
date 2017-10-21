# Cloud Smoker BBQ Temperature Monitor Project

<img style="float: right;" src="https://raw.githubusercontent.com/cwgstreet/Cloud-Smoker-BBQ-Monitor/master/Images/CloudSmoker%20Icon%20colour.jpg" width="150"/>


**Note**:  *This project exists as a hands-on opportunity to learn more about electronics, IoT, Arduino / ESP8266 programming and GitHub*

<p align="center">

<img src="http://www.iconsplace.com/icons/preview/yellow/under-construction-256.png"  width="200">

<br><br>

<b>Please see table at end of this note for references and credits</b><br>
<br><br>
 </p>
 
---
 *Table of Contents - will have to manually generate at end as GitHub markdown does not have automatic TOC generation like most MD renderers such as MacDown (amazing they lack this...)*
  
[TOC]  

---
 <br>

## 1.	Introduction

I recently started smoking large cuts of meat (eg brisket, pork shoulders, etc) within my trusty 22-year old Webber Kettle Barbecue grill.  The finished product has been fantastic and has received rave reviews from my family.  Yet, depending on the meat cut and many other complex factors, the “low and slow” method cooking times can span as long as 10 to 15 hours and requires ongoing monitoring and adjustment.  During a long cook, I find myself checking the digital thermometers on the grill at least hourly and adjusting the Webber grill vents as necessary to maintain desired cooking performance.  Clearly a remote temperature monitor would make monitoring easier and there are a number of commercial models available that do just this, albeit often costly (although perhaps another case illustrating  “*you get what you pay for*”).When considering buying a commercial monitor, I immediately wondered if I could build a bespoke barbecue temperature monitor that is lower cost yet specifically tailored to have the particular features I’m interested in.  Having recently become semi-retired, I’ve used the extra time to begin learning electronics and to pursue other technology / Maker hobbies.  This project presents a great learning (or frustration?) opportunity to gain further knowledge across a number of electronics, microprocessor and web technologies.I fully recognise that this project in itself is nothing new or particularly innovative; the Internet is chocka-block with similar projects, often much more sophisticated and cleverer than what I have in mind.  However, rather than just blindly copying another’s project, working up my own version of a hybrid project forces me to learn broadly as well as providing me the opportunity to pick the best ideas and bring them together into my project to meet my personal objectives.  

I'm taking the time to thoroughly document my work as I find it helps me retain what I leaned plus it becomes a useful reference to refer back to.  Perhaps this project description will also be helpful to someone else.

The downside is that being inexperienced means that “*what you don’t know you don’t know*” is a major obstacle and it is quite likely that better solutions may be available that I am simply not yet aware of.  I also make lots of mistakes although argably this is the best way to learn!  However, a long journey starts with a single step, so lets get after it!   ## 2.	Design Goals
After some consideration and research, I decided that I wanted my project to have the following features:

* Modest cost by seeking efficient design, using fit-for-purpose electronic components and free web services where possible
* Reasonably small footprint and battery powered
* Energy efficient (look into low power / deep sleep options) to ensure that battery is sufficient for long cooking times **`may not be an issue, => will check
`**
* 	Two temperature probes:  one skewer-type probe to measure internal meat temperature and one blunt pit probe to show pit chamber temperature.  Note that many existing DIY projects online are much more sophisticated and often set up for large smokers having four or more temperature probes and often a PID-controller blower to control air flow as well.  My trusty Webber grill is a much more simple barbecue grill than these smokers and generally will only fit one large cut of meat meaning this level of sophistication is unnecessary for my project.  I have considered the possibility of probe expansion and may consider adding an extra thermistor jack and code extension to allow a third probe in the future.
*  Wireless
*  Fit-for-purpose IoT security 
*  Ability to monitor the cooking performance from any smart phone, tablet or computer that can open a browser; prefer a WAN solution over a LAN-only approach
*  Ability to enter temperature set-points on device and also through web browser
*  Ability to view current temperatures both numerically and also trends graphically through a dashboard; possibly include forward performance modelling in an attempt to predict total cook time (note: not sure the prediction feasibility due the hard-to-predict infamous [**"Stall"**](http://amazingribs.com/tips_and_technique/the_stall.html), the bane of novice and wannabe pitmasters).
*  Display of current temps on LCD upon button push 
*  Electronic notifications of some type  (SMS text, email, push, etc) for key conditions:  1) alarm if temperatures deviate from desired parameters (pit is too hot or too cold); 2) predictive and actual time to get internal meat temperature above food poisoning “danger zone”, between 40 and 140 deg F (4.5 to 60 deg C) where food poisoning bacterial growth risks are greater (note this is mostly on the meat surface so pit temp is the key factor, unless meat is stuffed or contamination pushed into meat by the probe); and  3) alarm when food reaches desired cooking temperature to make final checks and remove from grill and rest meat within a [faux Cambro](http://amazingribs.com/tips_and_technique/faux_cambro.html).

## 3.	Process Flow


<img src="https://raw.githubusercontent.com/cwgstreet/Cloud-Smoker-BBQ-Monitor/master/Images/CloudSmoker%20Process%20Diagram.jpg">  
 
The process flow has two distinct domains: 
1) Hardware based activities - primarily reading thermistor values, smoothing them, converting ADC voltage to temperature and uploading data periodically to the cloud, and device number entry & display; and 
2) Cloud software based activities - graphical dashboard display, user input of set points, exception notifications and creation of historical logs.

As much as possible, I sought to minimise the work done on the ESP8266 and move processing onto the Cloud.  



## 4.	Parts
  

|Part| Function | Cost| Source|
|----|------|-----:|------|
|ESP8266 ESP07| Microprocessor / Wireless| A$ 2.90| [Ebay AU] (http://www.ebay.com.au/itm/351762667226?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|ESP8266 Adaptor Plate| Easier connections - **considering dropping this** | A$ 1.00| [EBAY AU] (http://www.ebay.com.au/itm/ESP8266-Serial-WIFI-Module-Adapter-Plate-For-ESP-07-ESP-08-ESP-12-WK-/272164913171?hash=item3f5e4b0013:g:u00AAOSwP~tW4i6e)|
|Ext Antenna 3Dbi U-Fi|Improved connectivity|A$ 2.54| [Ebay AU] (http://www.ebay.com.au/itm/301988843393?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|TI CD4066BE| CMOS Quad bilateral switch used for analog multiplexing| A$ 0.27| [Ebay AU] (http://www.ebay.com.au/itm/301924717351?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|AMS1117 Step down module| 5V to 3.3V conversion|A$ 0.67|[Ebay AU](http://www.ebay.com.au/itm/301980725005?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|Adafruit White Enclosure for Arduino| Project Box| A$ 22.56| [Core Electronics] (http://core-electronics.com.au/white-enclosure-for-arduino-electronics-enclosure-1-0.html)|
|LCD 1602 I2C display| Digital 2-line temperature display| A$ 1.50| [Ebay AU] (http://www.ebay.com.au/itm/302095885649?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|Rotary Encoder Switch Module KY-40| Menu & character entry| A$ 0.76| [Aliexpress] (https://www.aliexpress.com/item/The-32TA1600-logic-board-320WA01C-BF-C67271-In-stock-Best-price-and-good-service/599712551.html?spm=a2g0s.9042311.0.0.MmtRXJ)|
|Rotary Encoder knob| Turn knob| A$ 0.26| [Aliexpress] (https://www.aliexpress.com/item/10Pcs-Volume-Control-Rotary-Knobs-Black-For-6mm-Dia-Knurled-Shaft-Potentiometer/32718318416.html?spm=a2g0s.9042311.0.0.MmtRXJ)|
|Maverick ET-732/ET-733 Food Probe| Meat High Temp Probe w/ 6ft stainless steel braided cable| US$16.99| [Amazon USA] (http://www.ebay.com.au/itm/301980725005?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|Maverick ET732/ET733 Temp Probes| Smoker & Chamber Probe w/ 6ft stainless steel braided cable| US$15.50| [Amazon USA] (https://www.amazon.com/gp/product/B006XLWL7K/ref=oh_aui_detailpage_o01_s00?ie=UTF8&psc=1)|
| 2.5mm mono audio jack - panel mount| Enclosure temp probe receptical jack (2 pieces)| A$ 1.90|[Jaycar] (https://www.jaycar.com.au/2-5mm-socket-mono-switched/p/PS0105)|
| LM358 Dual OpAmp| Thermistor voltage scaling and offset for ADC specs (SOP8 SMD)| A$ 1.90|[Aliexpress] (https://www.aliexpress.com/item/FREE-SHIPPING-50piece-LM358DR-SOP8-LM358-SOP-LM358DT-SMD-LM358DR2G-new/32773543339.html?spm=a2g0s.9042311.0.0.MmtRXJ)|
|Miscellaneous passive electronic components|1) 2x 43k resistors (1%) for thermister pullups<br>2) female / female Dupont wires to connect LCD<br>3) 1x Inductor (10 uH) and 2x ceramic capacitors (47nF / 47uF) for RCL lowpass power filtering,<br>4)2x BSS138 transistors and 4x 10k resistors for logic level conversion<br>5) 2x 10k resistors to pull unused 4066B control pins low| <A$ 5.00|[Jaycar] (https://www.jaycar.com.au) or [EBAY AU] (www.ebay.com.au), etc.|


The following subsections discusses the design logic behind the hardware selections:

### 4.1 Microcontroller

Looking over my design objectives, I immediately gravitated to an Arduino development board solution given the huge amount of support and examples around for this popular open source microcontroller platform.  Several of the more sophisticated projects found online centre around a Raspberry Pi,  but using a tiny computer versus a microcontroller seemed way overkill for my needs and would only drive up costs. 

However, most low cost Arduino boards do not have built-in wireless connectivity which caused me to evaluate various external wireless solutions such as WiFi, Bluetooth LE, Zigbee, etc.  Ultimately, wifi seemed to be the simplest solution for my application which led me to Espiriff’s 3.3V ESP8266 chip which has rapidly become the darling of the hobbyist IoT community.

Initially, I planned to use this in conjuntion with an Arduino microcontroller (probably a 3.3V Adruino Pro mini to make it voltage compatible; I even went so far as to purchase several), however, upon further investigation, I realised that the ESP8266 arguably **is a microcontroller** in its own right, actually with superior specs to the AT microcontrollers driving most Arduinos.  Even better, the open source community has extended the Arduino IDE to encompass the ESP8266, making it relatively easier / familiar to program.

#### ESP8266 Selection ####
There are a number of low cost ESP8266 based boards out there, each with their own pros and cons.  At the end of the day, I decided to choose two:  A NodeMCU Ver1 Development board and an AI-Thinker ESP-07 varient.  The NodeMCU board was relatively expensive but already configured to be breadboard and programming friendly plus it has built in 3.3V voltage regulation and an onboard serial to USB chip.  I decided to use this board for initial proptyping and then port the system to the lower cost ESP-07 module. 

The ESP-07 module has a reasonably large number of pins exposed (pinout is same as ESP-12 variant) but has the advantage of having a connection for an external antenna.  Given I intended to use this project beside my barbecue in an outside area where my home Wifi signal can be intermittant, I was attracted to this feature.  The downside of the ESP-07 module (but not unique to it) is that 1) pinspacing is not breadboard friendly, 2) requires 3.3V and a realaitvely high current source, with no onboard power regulation and 3) requires an interface like a FTDI board for flash programming.

![](https://sites.google.com/site/tgmaxx/_/rsrc/1453562635906/esp8266-wifi-module/ESP-07%20Pinout.jpg?height=400&width=309)

####Adaptor Plate - (Remove this as not used?) ####
To make it easier to work with the ESP-07, I purchased one of the commonly available adaptor plates.  This plate allows you to solder on the ESP8266 ESP07 (or ESP12 which has the same pinout) and then add breadboard friendly spacing header pins.  The adaptor plate also has a pad for a voltage regulator and has an onboard LED (which I may remove to reduce power draw and increase battery life).  Although the plate is quite large, spanning most of a typical M2 breadboard, many people use it to span across the power rails of two side-by-side M2 breadboards.

<img src="https://www.fabtolab.com/image/cache/data/Radio/Wifi/espplt2-900x700.jpg" width="500">


### 4.2 Temperature Probe Sensors

I chose Maverick brand (replacement) temperature probes for my project, one blunt-ended probe for the pit temperature, ET-733 (image on left) and one skewer for the internal meat temperature, ET-732 (image on right).  
<img src="https://images-na.ssl-images-amazon.com/images/I/61oRTA1X9AL._SX425_.jpg" width="300"> <img src="https://images-na.ssl-images-amazon.com/images/I/212uAku-EvL.jpg" width="300">

My choice of the ETS-732/733 units was made based seeing these used on a number of online projects and the 4 1/2 star customer ratings on Amazon.  These probes are based on NPN thermistors (ie. resistance lowers as probe heats up).  The initial drawback with these probes were that 1) they are reasonably costly; and 2) the probes appear to have a high failure rate as apparently they are moisture sensitive.  Some people have reported better run lives by sealing the top of the thermistor tube with food-grade high temperature silicon (which I have not been able to easily source in Australia) as well as ensuring that probes are not submerged in water when cleaning. 

Only after I had purchased these probes did I come across the excellent open source Heatmeter project documentation.  This group [**tested a number of probes**](https://github.com/CapnBry/HeaterMeter/wiki/HeaterMeter-Probes) 
and only rated the Maverick ET-732/733 probes as ***Acceptable*** rather than ***Highly Recommnended*** due to 1) lower resolution and 2) mysterious errors that they sought to mitigate by groundinbg the shielded cable.

Regarding resolution, the Heatmeter crowd found that the low end resolution was poor with a 10K voltage divider resistor and recommended using a 22K or even a 47K 1% resisitor - see their graph below.  For my project, I purchased a 39k 1% resistor.

<img src="https://camo.githubusercontent.com/51294a4e50c053ab478d95f847b743ad953e9dc5/687474703a2f2f692e696d6775722e636f6d2f754a594b6141512e706e67" width="500">

See section xxx for further discussion on the thermistor resolution and datasheet

### 4.3 Multiplexer
One issue with the ESP8266 is that it only has a single ADC pin yet my project design requires two or three analog temperature sensors as discussed in the previous section.  At first I thought this might force me back to the Arduino solution (which has multiple analog pins) when I stumbled across multiplexing as a solution.  Multiplexing allows me to combine multiple analog signals into a single signal.

There are a number of multiplexer chips avaible.  I ended up buying TI's CMOS 4066B Quad Bilateral Switch which can also be configured for mux / demux applications for up to four different analog signals [(datasheet info)](http://www.ti.com/product/CD4066B/description). The 4066B uses a digital control pin to "turn on/off" a switch across two analog input/output pins as shown in the diagram.  In retrospect, I'm not completely sure that this chip was the best choice for multiplexing.  On the positive side, switching between analog signals is easy by using software to instruct the ESP8266 to pull the repesctive 4066B control pin high to turn on the analog pin.  On the negative side, the lower the voltage, the higher the pin impedance becomes.  For my case using 3.3V, the datasheet indicates impedance could be as high as 250 ohms.  I'll investigate whether that causes me any issues but was encouraged after seeing online reports suggesting it works at 3.3V.

<img src="http://thumbs4.picclick.com/d/l400/pict/261829114091_/100Pcs-Cd4066-Cd4066Be-Ti-Dip-14-Cmos-Quad-Bilateral.jpg" width="250"> <img src="https://hackadaycom.files.wordpress.com/2015/06/4066_pinout.png" width="200">


Note that the datasheet recommends not to float unused inputs, therefore all unused control pins need to be pulled low, in my case the unused control pin for switches C & D (pins 6 & 12).

### 4.4 Power Source / Conditioning

#### 4.4.1 Battery
I plan to use a Jackery Giant+ 5V battery bank that I already own and have successfully used for other projects such as powering a dew heater for Milky Way star photography.  The (nominal) 1200 mA-hr Jackary Giant+ has both 5V 1A and 2.1A USB jack outputs.  I previously built a power cable that I will reuse which has a male USB power jack on one end, a 2A inline fuse and a male DC power jack on the other end.

<img src="http://topsmartphones.biz/wp-content/uploads/2015/05/8a7212b7e09b.jpg" width="400">

#### 4.4.2 Step-down (buck) power conversion ####
Although the adaptor plate has pads to solder on a simple AMS voltage regulator, I chose to purchase a pre-built [step-down converter](http://www.ebay.com.au/itm/301980725005?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT) which should be suitable to take my 5V battery down to the 3.3V required by the ESP8266.  This module has some power filtering capacitors built in.

<img src="http://g01.a.alicdn.com/kf/HTB16vh2LXXXXXXsaXXXq6xXFXXXl/5V-to-3-3V-DC-DC-Step-Down-Power-Supply-Buck-Module-AMS1117-800mA.jpg" width="250">

#### 4.4.3 Power Filtering ####
I've also read that the ESP8266 is power hungry with potential high current draws plus is sensitive to power flucuations which can cause resets or other problems.  Additionally, the analog thermisters and ADC are easily impacted by noise.

To mitigate this, I've chosen to add a "power input filtering subcircuit" that I came across [here](http://playground.arduino.cc/ComponentLib/Thermistor4) which consists of an axial inductor in series with a small resistor followed two capacitors in parallel.  This [Lowpass RLC Filter](https://en.wikipedia.org/wiki/RLC_circuit) configuration is intended to filter out high frequency noise and stabilise voltage fluccation.  Basically the inductor blocks AC and the two capacitors shunt higher frequency noise to ground.  One Arduino forum member suggests the very small 1-10 ohm resistor (RP) in the RLP filter is unnecessary as the inductor choke has enough resistance on its own.  **To Do: measure inductor resistance on DMM**

Given the stepdown LDO regulator already has smoothing capacitors built into the modules, this level of filtering is probably overkill.

![Power Filtering Circuit](http://playground.arduino.cc/uploads/ComponentLib/Thermistor4_Schematic.png) 



#### 4.4.4 Anthing else?






## 5.	Hardware

### 5.1	Schematic / Board Design & Layout

#### 5.11 Approach - KiCad wins!

While learning electronics, I've found stripboards to be non-intuitive, frustrating to build and difficult to debug when they invarribly don't work.   I end up first testing the prototype circuit on a breadboard, then re-drawing it in ***FRITZING*** on a stripboard (Veroboard) layout where I cross-check the schematic vs the stripboard layout to ensure I had not drawn it incorrectly.  Even with this level of effort, I often found that I did not propperly allow for component size (electrolyte capacitors are the worst!) forcing me to adjust the stripboard on the fly while constucting it - so no surprise when it fails to work!!

Consequently, I decided to use a proper EAD CAD program for schematic and board generation.  

I initially considered ***FRITZING***.  FRITZING is unsurpassed in generating 3D breadboard illustrations but FRITZING schematics are cumbersome and, if you chose to take it further, I understand the board layout features are also problematic.  See Hackaday article:  [Creating a PCB In Everything: Friends Don’t Let Friends Use FRITZING] (http://www.ebay.com.au/itm/301980725005?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT) 


I started this project using ***EAGLE*** given the huge software support base out there amongst electronic enthusiasts, despite the limitations of the free version (non-commercial use, small board size and lower complexity). I've successfully built several small projects using EAGLE and climbed the learning curve.  However, during the course of the project, EAGLE changed their licencing approach which prompted me to look into alternatives.

I ended up using the open-source ***KICAD*** package.  Climbing another learning curve was not attractive and explains some of the delays in completing this project.  However, once I got familiar with KiCad, I really liked the tool - especially that it was full featured (heirachical schematics, no size or complexity limitations, superb 3D visualisation, etc.)

#### 5.12 Schematic Overview (Heirachical)
All KiCad files are available within the /hardware/KiCad directory.

The 

##### 5.121 PowerReg Module - 5V to 3.3V conversion and regulation

##### 5.122 ESP8266-07 (Microcontroller) Module

###### Pin-out. ######

One of the many ESP8266 challenges are the limited number of pins,  including a single ADC pin and only six available GPIO pins (ESP-07/12 modules; less pins on other modules).  In general, the other pins are used for start-up or IC operations. 

GPIO pins 6 to 11 are used to connect to flash memory and therefore not availble for use, leaving nine remaining GPIO pins on the ESP-07 module. However, three of these pins are needed for start-up / reset functions as shown in the table below:

<img src="http://www.forward.com.au/pfod/ESP8266/GPIOpins/ESP8266BootOptions.jpg" width="800">

This essentially leaves six GPIO pins free for general use.

This initially presented some issues to me as I  considered my project design, where, after iterating through a number of ideas, I still needed a total of seven GPIO pins:    
  1. read at least two thermistors into the single ADC (solution:  multiplexing, at the cost of using two GPIO pins);
  2. Connect a 16x2 LCD display (solution: I2C, requiring another two GPIO pins); and
  3. Have some sort of LCD menu control & entry (solution: rotary encoder button, requiring an additional three GPIO pins)

 So how to  

  
  
I played with 

[ref](http://www.forward.com.au/pfod/ESP8266/GPIOpins/ESP8266_01_pin_magic.html)


 

Note: Before using I2C, pins for SDA and SCL need to be set by calling `Wire.begin(int sda, int scl)`, i.e. `Wire.begin(0, 2)` on ESP-01, else they default to pins 4(SDA) and 5(SCL).

Ref: [ Esp8266 Arduino Core Documentation - I2C (Wire Library)](https://arduino-esp8266.readthedocs.io/en/latest/libraries.html#i2c-wire-library) 

|**Pin** |**Function**|**Connection** | I/O |**Comment**|
|--------|-------|---------------|-----------|----|
|VCC|Power|3.3V power rail||
|GND| Ground
|Rest    |Reset | Pull Low to reset chip
|ADC     |Analog-Digital Converter|MUX (4066B Quad Switch) |Input|0-1V 10bit ADC
|CH_PD|Chip Enable|VCC / 4.7k pull-up||Pulled-high to enable ESP8266; connect to ground to disable ESP8266
|TX|Transmit|FTDI RX pin
|RX|Receive| FTDI TX pin
|GPIO0|1) Flash mode entry (low on startup), 2) I2C	SDA| 1)GND through momentary switch 2) SDA (470 ohm resistor in series to SDA to limit current <12mA) |bidirectional | Pull low at startup to enter flash mode, otherwise I2C SDA pin
|GPIO2| 1) Pull high during startup 2) I2C SCL| VCC/4.7k pull-up|bidirectional|
|GPI04|CLK on rotary encoder|CLK/4.7k pull-up|Input|
|GPIO5|DT on rotary encoder|DT/4.7k pull-up|Input|
|GPIO12|CTL-B 4066B quad switch|CTL-B/3.3k pull-down|Switch-B control|Turn switch A on/off for multiplexing
|GPIO13|Rotary Encoder switch|SW|Input|Push switch on rotary encoder
|GPIO14|CTL-A 4066B quad switch|CTL-A/3.3k pull-down|Switch-A control|Turn switch A on/off for multiplexing
|GPIO15|Start-up|GND/10k pull-down||Must be driven low at start-up
|GPIO16|Deep Sleep low power enable|REST/Shottkey diode (cathode towards GPIO16)|Output|GPIO16 is ony pin belonging to RTC (real time clock) module.  During deep sleep, GPIO16 pin is high.  When RTC triggers wake-up, it drives GPIO16 pin low, which also drives REST pin low, tirggering reset



##### 5.123 Thermistors Module - Temperature measurement, signal conditioning  & multiplexing

Dave at *Internet at Home Things* has a nice blog [8 ESP8266 analog inputs for 22 cents] (https://internetofhomethings.com/homethings/?p=530) which got me thinking about a couple of ideas: 1) multiplexing to get around using multiple sensors with the single ESP8266 ADC and 2) using a differential amplifier to better scale the thermistor voltages to the ESP8266 ADC voltage requirements.

OpAmp level shifter circuit also at http://www.esp8266-projects.com/2015/06/mailbag-arrival-acs712-current-sensor.html/


###### 5.123 Multiplexing with the CD4066 Quad bilateral switch ######

One problem with the CD4066 switch is that it is "active high"; basically when a high signal is sent down the Control line, it turns the switch on.  

>Most microcontrollers behave this way due to internal pullups on IO pins- 
The typical way we handle this case where your output device is active-high, and can't tolerate the glitch, is to put a *stronger* external pulldown on the lO line. 
Typically the internal pullups are pretty weak, in the 80-150K range -
The pullup value is usually given in the datasheet, but its not listed in the ESP-8266 summary datasheet that i found. 
However they do mention a "hold" function that requires 5uA to override, and that GPIO maximum output current is 12mA ;
So a pulldown current of up to ~ 1-2mA would be safe to use - i.e. in the ballpark of 3.3kohm @3.3V should do the trick. 
Putting large capacitors on IO lines is not generally not recommended, as this can cause high peak currents on those IO when they switch, make edge rates very slow, and cause EMI / latchup issues later on -
so not good for reliability?>
[Ref: GPIO12-14 high initial state during boot] (http://www.esp8266.com/viewtopic.php?f=13&t=951&start=4)


##### 5.124 LCD Module - Display & Control



#### 5.13 Enclosure


#### 5.14 Board Layout

## 6.	Code
###6.1.	ESP8266 (Arduino IDE)
###6.2.	Thinkspeak Dashboard
###6.3.	IFFT Notifications
##7.	Wrap-up / Future modification possibilities 

Future project extensions / additions / fixes that I am considering:

* OTA firmware updates
* tbc


## 7.	Construction


## 8.	Inspiration and Credits

As a newbie, I spent far too long on this project (over 18 months, interspersed with other projects!) researching on the web, reading and bookmarking countless helpful websites on a wide variety of topics and issues.  In fact, the deep learning was one of the key attractions to me.  I've tried to refer to specific sites in relevant sections of the write-up.  The table below also lists some of the more general useful sites that I found ideas around this project.  Nevertheless it would be impossible to include an exhaustive list so my apologies to all those that helped me along the way yet I failed to acknowledge.

Inspiration / Idea | Who |Source |
:------------------ | :---:| :------ |
ESP8266 as a microcontroller  - Intro into replacing Arduino w/ ESP8266| Dave - Arduino Board | [link](https://www.arduino-board.com/arduino/esp8266-arduino) |
  Meet the Arduino Killer: ESP8266 - Good info on replacing Arduino with ESP8266  |   | [link](http://www.makeuseof.com/tag/meet-arduino-killer-esp8266/) |  
 Thermister4 - Used the Input Power Filtering subcircuit idea plus useful sketch info | MODAT7  | [link](http://playground.arduino.cc/ComponentLib/Thermistor4)
 Huge informtion source for the complex open source Heatmeter project; I found the detailed information on temperature probes and the neat Probe Range Comparison tool quite useful|Bryan Mayland| [link](https://github.com/CapnBry/HeaterMeter/wiki/HeaterMeter-Probes)|
 Logic Level Conversion between 3.3V ESP8266 and 5V LCD - Application note that is the basis for most simple level convertor modules|Herman Shutte, Philips|[link](https://cdn-shop.adafruit.com/datasheets/an97055.pdf)|
 |||
 |||
 |||
 |||
 |||
 |||
***{Yet to be  completed}*** |||
 

test