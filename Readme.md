# Cloud Smoker BBQ Monitor Project


<img style="float: right;" src="https://raw.githubusercontent.com/cwgstreet/Cloud-Smoker-BBQ-Monitor/master/Images/CloudSmoker%20Icon%20colour.jpg" width="150"/>


**Note**:  *This project exists as a hands-on opportunity to learn more about electronics, IoT, Arduino / ESP8266 programming, GitHub markdown, etc*

<p align="center">

<img src="http://www.iconsplace.com/icons/preview/yellow/under-construction-256.png" width="150">

<br><br>

<b>Work in Progress</b><br>
<br><br>
 </p>
 


## Project Summary

The Cloud Smoker Barbecue Monitor project is an IoT device / workflow to read two temperatures (pit and internal meat temperatures) within my Weber BBQ smoker and upload these to a cloud based dashboard allowing me to set cooking notification setpoints, view temp vs time graphs and dials within a dashboard and to received text notifications to my smartphone if pit temperatures go outside acceptable ranges and when the meat is done and ready to be removed.

The overall process flow is as follows:


<img src="https://raw.githubusercontent.com/cwgstreet/Cloud-Smoker-BBQ-Monitor/master/Images/CloudSmoker%20Process%20Diagram.jpg"> 


Hardware is based around the ESP8266 ESP-07 module (both for WiFi access and microcontroller), two Maverick ET-732 thermistor probes, and a 4066B switch to allow multiplexing due to limitation of having only the single ADC pin on the ESP-07.

Coding was done using the Arduino IDE with data uploaded to ThingSpeak for display and further processing.  IFTT used for text notifications and Google Sheets for creating barbeque logs.


### Project Overview Document ###

A thorough project overview and description document can be found in the Docs folder [here] (https://github.com/cwgstreet/Cloud-Smoker-BBQ-Monitor/blob/master/Docs/Project%20Overview%20-%20detailed.md) covering design goals, hardware, software, etc.
### Hardware ###

The Hardware folder contains 1) some datasheets and 2) KiCad schematics and PCB board layouts.

### Software ###

The Software folder contains the full CloudSmoker sketch as well as individual (function) code blocks that made it easier to individually test functionality and to hopefully re-use in future projects.

### Images ###

Self-explanatory


--- END ---