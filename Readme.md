# Cloud Smoker BBQ Monitor Project


**Note**:  *This project exists as a hands-on opportunity to learn more about electronics, IoT, Aruino / ESP8266 programming and GitHub*

<p align="center">

<img src="http://www.iconsplace.com/icons/preview/yellow/under-construction-256.png">

<br><br>

<b>Please see table at end of this note for references and credits</b><br>
<br><br>
 </p>
 


## 1.	Introduction

I recently started smoking large cuts of meat (brisket, pork shoulders, etc) within my trusty 20-year old Webber Kettle Barbecue grill.  The finished product has been fantastic and received rave reviews from my family.  Yet, depending on the meat cut and many other complex factors, the “low and slow” cooking times can span 10 to 15 hours and requires ongoing monitoring and adjustment.  During a long cook, I find myself checking the digital thermometers on the grill at least hourly and adjusting vents as necessary to maintain desired cooking performance.  Clearly a remote temperature monitor would make monitoring easier and there are a number of commercial models available that do just this, albeit often costly (another case illustrating  “you get what you pay for”).When considering buying a commercial monitor, I immediately wondered if I could build a bespoke barbecue temperature monitor that is lower cost yet specifically tailored to have the features I’m interested in.  Having just become semi-retired at the start of the year, I’ve used the extra time to begin learning electronics and to pursue other technology / Maker hobbies.  This project presents a great learning (or frustration?) opportunity to gain further knowledge across a number of electronics, microprocessor and web technologies.I fully recognise that this project is nothing new or particularly innovative; the Internet is chocka-block with similar projects, often much more sophisticated and cleverer than what I have in mind.  However, rather than just copying another’s project, working up a hybrid gives me the opportunity to pick the best ideas and bring them together into my project to meet my objectives.  The downside is that being new and inexperienced means that “what you don’t know you don’t know” is a major obstacle and it is quite likely that better solutions may be available that I am simply not yet aware of.  However, a long journey starts with a single step, so lets get after it!   ##2.	Design Goals
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
*  Electronic notifications of some type  (SMS text, email, push, et) for key conditions:  1) alarm if temperatures deviate from desired parameters (pit is too hot or too cold); 2) predictive and actual time to get internal meat temperature above food poisoning “danger zone”, between 40 and 140 deg F where food poisoning bacterial growth risks are greater (note this is mostly on the meat surface so pit temp is the key factor, unless meat is stuffed or contamination pushed into meat by the probe); and  3) alarm when food reaches desired cooking temperature to make final checks and remove from grill and rest meat within [**faux Cambro**](http://amazingribs.com/tips_and_technique/faux_cambro.html).

## 3.	Process Logic

To be documented

## 4.	Parts
  

|Part| Function | Cost| Source|
|----|------|-----:|------|
|ESP8266 ESP07| Microprocessor / Wireless| A$ 2.90| [Ebay AU] (http://www.ebay.com.au/itm/351762667226?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|ESP8266 Adaptor Plate| Easier connections| A$ 1.00| [EBAY AU] (http://www.ebay.com.au/itm/ESP8266-Serial-WIFI-Module-Adapter-Plate-For-ESP-07-ESP-08-ESP-12-WK-/272164913171?hash=item3f5e4b0013:g:u00AAOSwP~tW4i6e)|
|Ext Antenna 3Dbi U-Fi|Improved connectivity|A$ 2.54| [Ebay AU] (http://www.ebay.com.au/itm/301988843393?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|TI CMOS CD4066BE| Analog multiplexing| A$ 0.27| [Ebay AU] (http://www.ebay.com.au/itm/301924717351?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|AMS1117 Step down module| 5V to 3.3V conversion|A$ 0.67|[Ebay AU](http://www.ebay.com.au/itm/301980725005?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|xxx| Project Box| A$ x.xx| [Jaycar] (www.jaycar.com.au)|
|Maverick ET-732/ET-733 Food Probe| Meat High Temp Probe w/ 6ft stainless steel braided cable| US$16.99| [Amazon USA] (http://www.ebay.com.au/itm/301980725005?_trksid=p2057872.m2749.l2649&ssPageName=STRK%3AMEBIDX%3AIT)|
|Maverick ET732/ET733 Pit Probe| Smoker & Chamber Probe w/ 6ft stainless steel braided cable| US$15.50| [Amazon USA] (https://www.amazon.com/gp/product/B006XLWL7K/ref=oh_aui_detailpage_o01_s00?ie=UTF8&psc=1)|
| 2.5mm mono audio jack - panel mount| 3 pieces| A$ x.xx|[RS Componentsts] (link |


The following subsections discusses the design logic behind the hardware selections

### 4.1 Microcontroller

Looking over my design objectives, I immediately gravitated to an Arduino development board solution given the huge amount of support and examples around for this open source microcontroller platform.  Several of the more sophisticated projects found online centre around a Raspberry Pi,  but using a tiny computer versus a microcontroller seemed way overkill for my needs and would only drive up costs. 

However, most low cost Arduino boards do not have wireless connectivity built in which caused me to evaluate various external wireless solutions such as WiFi, Bluetooth LE, Zigbee, etc.  Ultimately, wifi seemed to be the simplest solution for my application which led me to Espiriff’s 3.3V ESP8266 chip which has rapidly become the darling of the hobbyist IoT community.

Initially, I planned to use this in conjuntion with an Arduino (probably a 3.3V Adruino Pro mini to make it power compatible), however, upon further investigation, I realised that the ESP8266 arguably **is a microcontroller** in its own right.

### 4.2 Temberature Probe Sensors


### 4.3 Multiplexer


### 4.4 Power Source / Conditioning

#### 4.4.1 Battery
I plan to use a Jackery Giant+ 5V battery bank that I have successfully used for other projects such as powering a dew heater for Milky Way photography

Specs:

#### 4.4.3 Power Adjustment - Buck Convertor



## 5.	Hardware Construction
## 6.	Code
###6.1.	ESP8266 (Arduino programmer)
###6.2.	Thinkspeak Dashboard
###6.3.	IFFT Notifications
##7.	Wrap-up / Future modification possibilities 

##8.	Inspiration and Credits

Inspiration / Idea | Who |Source |
:------------------ | ---| :------ |
ESP8266 as a microcontroller  - Intro into replacing Arduino w/ ESP8266| Dave - Arduino Board | [link](https://www.arduino-board.com/arduino/esp8266-arduino) |
  Meet the Arduino Killer: ESP8266 - Good info on replacing Arduino with ESP8266  |   | [link] (http://www.makeuseof.com/tag/meet-arduino-killer-esp8266/) |  
 Thermister4 - Ketch code ideas & Input Power Filtering subcircuit | MODAT7  | [link] (http://playground.arduino.cc/ComponentLib/Thermistor4)
 Huge data source for complex open source Heatmeter monitor project; I used the detailed information on temperature probes plus neat Probe Range Comparison tool|Bryan Mayland| [link] (https://github.com/CapnBry/HeaterMeter/wiki/HeaterMeter-Probes)|
 |||
 |||
 |||
 |||
 |||
 |||
 |||
 |||
 

Yet to be  completed