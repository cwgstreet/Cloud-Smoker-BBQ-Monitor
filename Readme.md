# Cloud Smoker BBQ Monitor Project


**Note**:  *This project exists as a learning project to learn more about electronics, IoT, Aruino / ESP8266 programming and GitHub*


## 1.	Introduction

I recently started smoking large cuts of meat (brisket, pork shoulders, etc) within my trusty 20-year old Webber Kettle Barbecue grill.  The finished product has been fantastic and received rave reviews from my family.  Yet, depending on the meat cut and many other complex factors, the “low and slow” cooking times can span 10 to 15 hours and requires ongoing monitoring and adjustment.  During a long cook, I find myself checking the digital thermometers on the grill at least hourly and adjusting vents as necessary to maintain desired cooking performance.  Clearly a remote temperature monitor would make monitoring easier and there are a number of commercial models available that do just this, albeit often costly (another case illustrating  “you get what you pay for”).
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
*  Electronic notifications of some type  (SMS text, email, push, et) for key conditions:  1) alarm if temperatures deviate from desired parameters (pit is too hot or too cold); 2) predictive and actual time to get internal meat temperature above food poisoning “danger zone”, between 40 and 140 deg F where food poisoning bacterial growth risks are greater (note this is mostly on the meat surface so pit temp is the key factor, unless meat is stuffed or contamination pushed into meat by the probe); and  3) alarm when food reaches desired cooking temperature to make final checks and remove from grill and rest meat within [**faux Cambro**](http://amazingribs.com/tips_and_technique/faux_cambro.html).

## 3.	Process Logic

To be documented

## 4.	Parts

Table of parts next.  Logic behind choices follows

### 4.1 Microprocessor

Looking over my design objectives, I immediately gravitated to an Arduino solution.  Several of the more sophisticated projects found online centre around a Raspberry Pi,  but using a tiny computer versus a microcontroller seemed way overkill for my needs and would only drive up costs.   Most lower cost Arduino boards do not have wireless built in which led me to various Wifi add-on boards using Espiriff’s 3V3 ESP8266 chip which is rapidly become the darling for those into IoT projects.  Initially, I planned to 

### 4.2 Sensors


### 4.3 Multiplexer


### 4.4 Power Source / Conditioning

#### 4.4.1 Battery
I plan to use a Jackery Giant+ 5V battery bank that I have successfully used for other projects such as powering a dew heater for Milky Way photography

Specs:

#### 4.4.3 Power Adjustment - Buck Convertor



## 5.	Hardware Construction






##8.	Inspiration and Credits

Inspiration / Idea |   Comments                |
------------------ | :-----------------------: |
sdsdsdsdsdsdsdsdd  | sdfdssdfsfsfsfsdfsdfsdfsdfsdfsfsdfsf|
	