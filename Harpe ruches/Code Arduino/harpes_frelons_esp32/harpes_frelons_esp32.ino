
/*********************VEML7700*******************************/

#include "Adafruit_VEML7700.h"

Adafruit_VEML7700 veml = Adafruit_VEML7700();
float lux = 0;

#define SDA_PIN 21
#define SCL_PIN 22
#define harpe1 26
#define harpe2 32
#define harpe3 25

#define uS_TO_S_FACTOR 1000000ULL  /* Conversion factor for micro seconds to seconds */
#define TIME_TO_SLEEP  600        /* Time ESP32 will go to sleep (in seconds) */

void setup() {

 Serial.begin(115200);
 Wire.begin(SDA_PIN, SCL_PIN);
pinMode(harpe1, OUTPUT);
digitalWrite(harpe1, LOW);
pinMode(harpe2, OUTPUT);
digitalWrite(harpe2, LOW);
pinMode(harpe3, OUTPUT);
digitalWrite(harpe3, LOW);


esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);
  /*********************VEML7700*******************************/

  if (!veml.begin()) {
    Serial.println("Sensor not found");
    while (1)
      ;
  }
  Serial.println("Sensor found");
}

void loop() {

LUX();

 if (lux >= 50) {

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

 }

 else {

 Serial.println("Going to sleep now");
  Serial.flush(); 
  esp_deep_sleep_start();
  Serial.println("This will never be printed");
 }
}
/*****************************Intensité lumineuse en LUX****************************/

void LUX()
{

  lux = veml.readLux(VEML_LUX_AUTO);
Serial.println(lux,2);
}