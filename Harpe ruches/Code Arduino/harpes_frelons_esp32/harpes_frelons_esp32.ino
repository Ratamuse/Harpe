//####################### Ratamuse #######################/
//################## ratamuse.pf@googlemail.com ##################/
//######################### Septembre 2023 ######################/
//#################### ESP32 Devboard 3.3V  ####################/
//######################## Version 1.0.0 #######################/

#include "Arduino.h"
#include <Wire.h>

/********************VEML7700******************************/

#include "Adafruit_VEML7700.h"

Adafruit_VEML7700 veml = Adafruit_VEML7700();
float lux = 0;

/*******************Sht4x********************************/


#include <SensirionI2CSht4x.h>

SensirionI2CSht4x sht4x;
uint16_t error0;
float temperature0;
float humidity0;
char errorMessage[256];


#define SDA_PIN 21
#define SCL_PIN 22
#define SDA_PIN1 17
#define SCL_PIN1 16


#define harpe1 26
#define harpe2 32
#define harpe3 25
#define harpe4 27

#define uS_TO_S_FACTOR 1000000ULL  /* Conversion factor for micro seconds to seconds */
#define TIME_TO_SLEEP  600        /* Time ESP32 will go to sleep (in seconds) */

void setup() {

 Serial.begin(115200);
 Wire.begin(SDA_PIN, SCL_PIN);
 Wire1.begin(SDA_PIN1, SCL_PIN1);
pinMode(harpe1, OUTPUT);
digitalWrite(harpe1, LOW);
pinMode(harpe2, OUTPUT);
digitalWrite(harpe2, LOW);
pinMode(harpe3, OUTPUT);
digitalWrite(harpe3, LOW);
pinMode(harpe4, OUTPUT);
digitalWrite(harpe4, LOW);


esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);


  /********************VEML7700******************************/

  if (!veml.begin()) {
    Serial.println("Sensor not found");
    while (1)
      ;
  }
  Serial.println("Sensor found");

 /********************Sht4x******************************/

  
  sht4x.begin(Wire1);

}

void loop() {

LUX();
sht();

 if (lux >= 50 && humidity0 <= 80 ) {

digitalWrite(harpe1, HIGH);
delay(1000);
digitalWrite(harpe1, LOW);
delay(100);
digitalWrite(harpe2, HIGH);
delay(1000);
digitalWrite(harpe2, LOW);
delay(100);
digitalWrite(harpe3, HIGH);
delay(1000);
digitalWrite(harpe3, LOW);
delay(100);
digitalWrite(harpe4, HIGH);
delay(1000);
digitalWrite(harpe4, LOW);
delay(100);

 }

 else {

 Serial.println("Going to sleep now");
  Serial.flush(); 
  esp_deep_sleep_start();
  Serial.println("This will never be printed");
 }
}
/****************************Intensité lumineuse en LUX***************************/

void LUX()
{

  lux = veml.readLux(VEML_LUX_AUTO);
Serial.print(lux,2);
Serial.println("lux");
}

/****************************Valeur du capteur SHT41***************************/

void sht() {

  
  error0 = sht4x.measureHighPrecision(temperature0, humidity0);  
 Serial.print(humidity0,2); 
 Serial.println("humidité");
  
}