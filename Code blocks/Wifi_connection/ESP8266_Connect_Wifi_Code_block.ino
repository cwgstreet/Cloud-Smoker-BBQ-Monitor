/*   
 |-----------------------------------------------------------------------------------|
 |   Code Block:  ESP8266 Connect Wifi as Access Point                               |
 |                                                                                   |
 |    C. Greenstreet       Ver 0.1        Oct 2016                                   |
 |                                                                                   |
 |   Code adaptaded from:  ESP8266Wifi.h Examples                                                    |
 |-----------------------------------------------------------------------------------|
 */

//Include libraries (as needed) 
#include <ESP8266WiFi.h>  // Comment out if using Adafruit library instead
#include "cloudSmokerConnectParams.h"  //contains Wifi SSID & Password and Thinkspeak API key; broken out to keep secure


//INIT
const char* ssid     = MY_SSID;
const char* password = MY_PWD;
const char* apiKey = MY_API_KEY;


////////////////////////// SETUP //////////////////////////////////////////////////////

void setup() {
  
  Serial.begin(115200);  // may need to reduce to 9600 if module acts up
  delay(100);
 
  // Connect to Wifi Network
 
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
 
  Serial.println("");
  Serial.println("WiFi connected");  
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}


////////////////////////// LOOP //////////////////////////////////////////////////////

void loop() {
  // put your main code here, to run repeatedly:

}
