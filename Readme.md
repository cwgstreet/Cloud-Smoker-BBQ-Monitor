# Cloud Smoker BBQ Monitor Project


**Note**:  *This project exists as a hands-on opportunity to learn more about electronics, IoT, Aruino / ESP8266 programming and GitHub*

<p align="center">

<img src="http://www.iconsplace.com/icons/preview/yellow/under-construction-256.png">

<br><br>

<b>Work in Progress</b><br>
<br><br>
 </p>
 


## Project Summary

The Cloud Smoker Barbecue Monitor project is an IoT device / workflow to read two temperatures (pit and internal meat temperatures) within my smoker and upload these to a cloud based dashboard allowing me to set cooking notification setpoints, view temp vs time graphs and dials and to received text notifications to my smartphone if pit temperatures go outside acceptable ranges and when the meat is done and ready to be removed.

The overall process flow is as follows:


<img src="http://raw.githubusercontent.com/cwgstreet/Cloud-Smoker-BBQ-Monitor/master/Images/CloudSmoker%20Process%20Diagram.jpg"> 


Hardware is based around the ESP8266 ESP-07 module (both Wifi access and microcontroller), two Maverick ET-732 thermistor probes, and a 4066B switch to allow multiplexing due to the single ADC pin on the ESP-07.

Coding was done using the Arduino IDE with data uploaded to ThingSpeak for display and further processing.  IFTT used for text notifications and Google Sheets for creating barbeque logs


### Project Overview Document###

A thorough project overview document can be found [here] (http://github.com/cwgstreet/Cloud-Smoker-BBQ-Monitor/blob/master/Docs/Project%20Overview.md) covering design goals, hardware, software, etc.
