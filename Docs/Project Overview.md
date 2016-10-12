# Cloud Smoker BBQ Monitor Project


**Note**:  *This project exists as a hands-on opportunity to learn more about electronics, IoT, Aruino / ESP8266 programming and GitHub*

<p align="center">

<img src="http://www.iconsplace.com/icons/preview/yellow/under-construction-256.png">

<br><br>

<b>Please see table at end of this note for references and credits</b><br>
<br><br>
 </p>
 


## 1.	Introduction

I recently started smoking large cuts of meat (brisket, pork shoulders, etc) within my trusty 20-year old Webber Kettle Barbecue grill.  The finished product has been fantastic and has received rave reviews from my family.  Yet, depending on the meat cut and many other complex factors, the “low and slow” cooking times can span as long as 10 to 15 hours and requires ongoing monitoring and adjustment.  During a long cook, I find myself checking the digital thermometers on the grill at least hourly and adjusting vents as necessary to maintain desired cooking performance.  Clearly a remote temperature monitor would make monitoring easier and there are a number of commercial models available that do just this, albeit often costly (another case illustrating  “you get what you pay for”).When considering buying a commercial monitor, I immediately wondered if I could build a bespoke barbecue temperature monitor that is lower cost yet specifically tailored to have the features I’m interested in.  Having just become semi-retired at the start of the year, I’ve used the extra time to begin learning electronics and to pursue other technology / Maker hobbies.  This project presents a great learning (or frustration?) opportunity to gain further knowledge across a number of electronics, microprocessor and web technologies.I fully recognise that this project is nothing new or particularly innovative; the Internet is chocka-block with similar projects, often much more sophisticated and cleverer than what I have in mind.  However, rather than just copying another’s project, working up a hybrid gives me the opportunity to pick the best ideas and bring them together into my project to meet my objectives.  The downside is that being new and inexperienced means that “what you don’t know you don’t know” is a major obstacle and it is quite likely that better solutions may be available that I am simply not yet aware of.  However, a long journey starts with a single step, so lets get after it!   ##2.	Design Goals
After some consideration and research, I decided that I wanted my project to have the following features:

* Modest cost by seeking efficient design, using fit-for-purpose electronic components and free web services where possible
* Reasonably small footprint and battery powered
* Energy efficient (look into low power / deep sleep options) to ensure that battery is sufficient for long cooking times **`may not be an issue, will check
`**
* 	Two temperature probes:  one skewer probe to measure internal meat temperature and one pit probe showing pit chamber temperature.  Note that many existing DIY projects online are much more sophisticated and often set up for large smokers by having four or more temperature probes and many times a PID-controller blower to control air flow.  My trusty Webber grill is much more simple barbecue than these smokers and generally will only fit one large cut of meat meaning this level of sophistication is unnecessary for my project.  I have considered the possibility of probe expansion and may consider adding an extra jack and code extension to allow a third probe in the future.
*  Ability to monitor the cooking performance from any smart phone, tablet or computer that can open a browser; preferred WAN solution over a LAN-only approach
*  Wireless
*  Fit-for-purpose IoT security 
*  Ability to view current temperatures numerically and trends graphically; possibly include forward performance modelling in an attempt to predict total cook time (note: not sure the prediction feasibility  due the hard-to-predict infamous [**Stall**](http://amazingribs.com/tips_and_technique/the_stall.html), the bane of novice and wannabe pitmasters).
*  Show LED display of current temps when button pushed 
*  Electronic notifications of some type  (SMS text, email, push, et) for key conditions:  1) alarm if temperatures deviate from desired parameters (pit is too hot or too cold); 2) predictive and actual time to get internal meat temperature above food poisoning “danger zone”, between 40 and 140 deg F where food poisoning bacterial growth risks are greater (note this is mostly on the meat surface so pit temp is the key factor, unless meat is stuffed or contamination pushed into meat by the probe); and  3) alarm when food reaches desired cooking temperature to make final checks and remove from grill and rest meat within a [faux Cambro](http://amazingribs.com/tips_and_technique/faux_cambro.html).

## 3.	Process Flow


<img src="http://raw.githubusercontent.com/cwgstreet/Cloud-Smoker-BBQ-Monitor/master/Images/CloudSmoker%20Process%20Diagram.jpg"> 
 
The process flow has two distinct domains: 
1) Hardware based activities - primarily reading thermistor values, smoothing them, converting ADC voltage to temperature and uploading data periodically to the cloue; and 
2) Cloud software based activities - graphical dashboard display, user input of set points, exception notifications and creation of historical logs.

As much as possible, I sought to minimise the work on the ESP8266 and move this onto the Cloud.  



## 4.	Parts
  

|Part| Function | Cost| Source|
|----|------|-----:|------|
|ESP8266 ESP07| Microprocessor / Wireless| A$ 2.90| [Ebay AU] (http://www.ebay.com.au/itm/351762667226?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|ESP8266 Adaptor Plate| Easier connections| A$ 1.00| [EBAY AU] (http://www.ebay.com.au/itm/ESP8266-Serial-WIFI-Module-Adapter-Plate-For-ESP-07-ESP-08-ESP-12-WK-/272164913171?hash=item3f5e4b0013:g:u00AAOSwP~tW4i6e)|
|Ext Antenna 3Dbi U-Fi|Improved connectivity|A$ 2.54| [Ebay AU] (http://www.ebay.com.au/itm/301988843393?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|TI CD4066BE| CMOS Quad bilateral switch used for analog multiplexing| A$ 0.27| [Ebay AU] (http://www.ebay.com.au/itm/301924717351?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|AMS1117 Step down module| 5V to 3.3V conversion|A$ 0.67|[Ebay AU](http://www.ebay.com.au/itm/301980725005?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|xxx| Project Box| A$ x.xx| [Jaycar] (www.jaycar.com.au)|
|Maverick ET-732/ET-733 Food Probe| Meat High Temp Probe w/ 6ft stainless steel braided cable| US$16.99| [Amazon USA] (http://www.ebay.com.au/itm/301980725005?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|Maverick ET732/ET733 Pit Probe| Smoker & Chamber Probe w/ 6ft stainless steel braided cable| US$15.50| [Amazon USA] (https://www.amazon.com/gp/product/B006XLWL7K/ref=oh_aui_detailpage_o01_s00?ie=UTF8&psc=1)|
| 2.5mm mono audio jack - panel mount| 3 pieces| A$ x.xx|[RS Components] (link.. |
|


The following subsections discusses the design logic behind the hardware selections

### 4.1 Microcontroller

Looking over my design objectives, I immediately gravitated to an Arduino development board solution given the huge amount of support and examples around for this open source microcontroller platform.  Several of the more sophisticated projects found online centre around a Raspberry Pi,  but using a tiny computer versus a microcontroller seemed way overkill for my needs and would only drive up costs. 

However, most low cost Arduino boards do not have wireless connectivity built in which caused me to evaluate various external wireless solutions such as WiFi, Bluetooth LE, Zigbee, etc.  Ultimately, wifi seemed to be the simplest solution for my application which led me to Espiriff’s 3.3V ESP8266 chip which has rapidly become the darling of the hobbyist IoT community.

Initially, I planned to use this in conjuntion with an Arduino (probably a 3.3V Adruino Pro mini to make it power compatible, which I even went so far as to purchase several), however, upon further investigation, I realised that the ESP8266 arguably **is a microcontroller** in its own right, actually with superior specs to the AT micorcontrollers within most Arduinos.  Even better, the open source community has extended the Arduino IDE to encompass the ESP8266, making it realaitvely easy to use.

####ESP8266 Selection####
There are a number of low cost ESP8266 based boards out there, each with their own pros and cons.  At the end of the day, I decided to choose two:  A NodeMCU Ver1 Development board and an AI-Thinker ESP-07 varient.  The NodeMCU board was relatively expensive but already configured to be breadboard and programming friendly plus it has built in 3.3V voltage regulation and a serial to USB chip.  I decided to use this board for initial proptyping and then port the system to the lower cost ESP-07 module. 

The ESP-07 module has a reasonably large number of pins exposed (pinout is same as ESP-12 variant) but has the advantage of having a connection for an external antenna.  Given I intended to use this project outside by my barbecue in an area where my home Wifi can be intermittant, I was attracted to this feature.  The downside of the ESP-07 module is that 1) pinspacing is not breadboard friendly, 2) requires 3.3V and a realaitvely high current source, with no onboard power regulation and 3) requires an interface like a FTDI board for flash programming.

![](https://sites.google.com/site/tgmaxx/_/rsrc/1453562635906/esp8266-wifi-module/ESP-07%20Pinout.jpg?height=400&width=309)

####Adaptor Plate####
To make it easier to work with the ESP-07, I purchased one of the commonly available adaptor plates.  This plate allows you to solder on the ESP8266 ESP07 (or ESP12 which has the same pinout) and then add breadboard friendly spacing header pins.  The adaptor plate also has a pad for a voltage regulator and has an onboard LED.  Although the plate is quite large, spanning most of a typical M2 breadboard, many people use it across the power rails of two side-by-side M2 breadboards.

<img src="https://www.fabtolab.com/image/cache/data/Radio/Wifi/espplt2-900x700.jpg" width="500">


### 4.2 Temberature Probe Sensors

I chose Maverick replacement temperature probes for my project, one blunt probe for the pit temperature (image on left) and one skewer for the internal meat temperature (image on right).  
<img src="https://images-na.ssl-images-amazon.com/images/I/61oRTA1X9AL._SX425_.jpg" width="250"> <img src="https://images-na.ssl-images-amazon.com/images/I/212uAku-EvL.jpg" width="250">

My choice of the ETS-732/733 units was made based on a number of online projects and the 4 1/2 star ratings on Amazon.  I believe these probes are based on NPN thermistors (resistance lowers as probe heats up).  The initial drawback with these probes were that 1) they are reasonably costly; and 2) the probes have a high failure rate as apparently they are moisture sensitive.  Some people have reported better run lives by sealing the top of the theermistor tub with food grade high temperature silicon as well as ensuring that probes are not submerged in water when cleaning. 

Only after I had purchased these probes did I come across the excellent open source Heatmeter project documentation.  This group [tested a number of probes] (https://github.com/CapnBry/HeaterMeter/wiki/HeaterMeter-Probes) and only rated the Maverick ET-732/733 probes as acceptable rather than highly recommnended due to 1) lower resolution and 2) mysterious errors that they sought to mitigate by groundinbg the shielded cable.

Regarding resolution, the Heatmeter crowd found that the low end resolution was poor with a 10K voltage divider resistor and recommended using a 22K or even a 47K 1% resisitor - see their graph below.  For my project, I purchased a 43k 1% resistor.

<img src="https://camo.githubusercontent.com/51294a4e50c053ab478d95f847b743ad953e9dc5/687474703a2f2f692e696d6775722e636f6d2f754a594b6141512e706e67" width="500">

### 4.3 Multiplexer
One issue with the ESP8266 is that it only has a single ADC pin yet my project design requires two or three analog temperature sensors as discussed in the previous section.  At first I thought this might force me back to the Arduino solution (which has multiple analog pins) when I stumbled across multiplexing as a solution.  Multiplexing allows me to combine multiple analog signals into a single signal.

There are a number of multiplexer chips avaible.  I ended up buying TI's CMOS 4066B Quad Bilateral Switch which can also be configured for mux / demux applications for up to four different analog signals [(datasheet info)] (http://www.ti.com/product/CD4066B/description). The 4066B uses a digital control pin to "turn on/off" a switch across two analog input/outputpins as shown in the diagram.  In retrospect, I'm not completely sure that this chip was the best choice for multiplexing.  On the positive side, switching between analog signals is easy by using software to instruct the ESP8266 to pull the repesctive 4066B control pin high to turn on the analog pin.  On the negative side, the pin impedance becomes higher, the lower the voltage.  For my case using 3.3V, the datasheet indicates impedance could be as high as 250 ohms.  I'll investigate whether that causes me any issues.

<img src="http://thumbs4.picclick.com/d/l400/pict/261829114091_/100Pcs-Cd4066-Cd4066Be-Ti-Dip-14-Cmos-Quad-Bilateral.jpg" width="250"> <img src="https://hackadaycom.files.wordpress.com/2015/06/4066_pinout.png" width="200">


Note that the datasheet recommends not to float unused inputs, therefore all unused control pins need to be pulled low, in my case the unused control pin for switches C & D (pins 6 & 12).

### 4.4 Power Source / Conditioning

#### 4.4.1 Battery
I plan to use a Jackery Giant+ 5V battery bank that I have successfully used for other projects such as powering a dew heater for Milky Way star photography.  The (nominal) 1200 mA-hr Jackary Giant+ has both 5V 1A and 2.1A USB outputs.  I previously built a power cable that I will reuse which has a USB power jack on one end, a 2A inline fuse and a male DC power jack on the other end.

<img src="http://topsmartphones.biz/wp-content/uploads/2015/05/8a7212b7e09b.jpg" width="400">

####4.4.2 Voltage Regulation####
Although the adaptor plate has pads to solder on a simple AMS voltage regulator, I chose to purchase a pre-built [step-down converter](http://www.ebay.com.au/itm/301980725005?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT) which should be suitable to take my 5V battery down to the 3.3V required by the ESP8266.  

<img src="http://g01.a.alicdn.com/kf/HTB16vh2LXXXXXXsaXXXq6xXFXXXl/5V-to-3-3V-DC-DC-Step-Down-Power-Supply-Buck-Module-AMS1117-800mA.jpg" width="250">

####4.4.3 Power Filtering####
I've also read that the ESP8266 is power hungry with potential high current draws plus sensitive to power flucuations which can cause resets or other problems.  To mitigate this, I've chosen to add on a "power input filtering subcircuit" that I came across [here] (http://playground.arduino.cc/ComponentLib/Thermistor4) which consists of an axial inductor, a resister and two parallel capacitors.  This [RLC Filter] (https://en.wikipedia.org/wiki/RLC_circuit) configuration is intended to filter out high frequency noise and stabilise voltage fluccation.  Given the stepdown LDO regulator already has smoothing capacitors built into the modules, this is probably overkill

![Power Filtering Circuit](http://playground.arduino.cc/uploads/ComponentLib/Thermistor4_Schematic.png) 



#### 4.4.4 Power Adjustment - Buck Convertor



## 5.	Hardware Construction

## 6.	Code
###6.1.	ESP8266 (Arduino programmer)
###6.2.	Thinkspeak Dashboard
###6.3.	IFFT Notifications
##7.	Wrap-up / Future modification possibilities 

Future extensions / additions that I am considering:
* OTA firmware updates

##8.	Inspiration and Credits

As a newbie, I spent far too long researching this project on the web, reading and bookmarking countless helpful websites on a wide variety of topics and issues.  The table below lists some of the best sites that I made use of for this project.

Inspiration / Idea | Who |Source |
:------------------ | :---:| :------ |
ESP8266 as a microcontroller  - Intro into replacing Arduino w/ ESP8266| Dave - Arduino Board | [link](https://www.arduino-board.com/arduino/esp8266-arduino) |
  Meet the Arduino Killer: ESP8266 - Good info on replacing Arduino with ESP8266  |   | [link] (http://www.makeuseof.com/tag/meet-arduino-killer-esp8266/) |  
 Thermister4 - Used the Input Power Filtering subcircuit idea plus useful sketch info | MODAT7  | [link] (http://playground.arduino.cc/ComponentLib/Thermistor4)
 Huge informtion source for the complex open source Heatmeter project; I found the detailed information on temperature probes and the neat Probe Range Comparison tool quite useful|Bryan Mayland| [link] (https://github.com/CapnBry/HeaterMeter/wiki/HeaterMeter-Probes)|
 |||
 |||
 |||
 |||
 |||
 |||
 |||
 |||
 

Yet to be  completed