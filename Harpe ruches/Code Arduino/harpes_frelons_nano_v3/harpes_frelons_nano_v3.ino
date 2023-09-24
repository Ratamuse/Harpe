//####################### Ratamuse #######################/
//################## ratamuse.pf@googlemail.com ##################/
//######################### October 2023 ######################/
//#################### Arduino Nano V3 3.3V  ####################/
//######################## Version 1.0.0 #######################/


/*
Attention il existe deux types de clones nano V3. Une version en logique 5V et une en logique 3.3V. Utilisez la version 3.3V pour ne pas endommager
le capteur d'humidité Sht41. Sinon, ajouter un circuit de décallage de tension 5V/3.3V ( I2C level shifter) entre votre microcontroleur et la sonde.  
*/

#include "Arduino.h"
#include "LowPower.h"

/*********************VEML7700*******************************/

#include "Adafruit_VEML7700.h"

Adafruit_VEML7700 veml = Adafruit_VEML7700();
float lux = 0;

/********************Sht4x*********************************/

#include <SensirionI2CSht4x.h>
SensirionI2CSht4x sht4x;
uint16_t error0;
float temperature0;
float humidity0;
char errorMessage[256];



#define harpe1 26 //Adapter ici le numéro de broche utilisé sur votre carte
#define harpe2 32 //Adapter ici le numéro de broche utilisé sur votre carte
#define harpe3 25 //Adapter ici le numéro de broche utilisé sur votre carte
#define harpe4 27 //Adapter ici le numéro de broche utilisé sur votre carte


void setup() {

 Serial.begin(115200);
 Wire.begin();
pinMode(harpe1, OUTPUT);
digitalWrite(harpe1, LOW);
pinMode(harpe2, OUTPUT);
digitalWrite(harpe2, LOW);
pinMode(harpe3, OUTPUT);
digitalWrite(harpe3, LOW);
pinMode(harpe4, OUTPUT);
digitalWrite(harpe4, LOW);



  /*********************VEML7700*******************************/

  if (!veml.begin()) {
    Serial.println("Sensor not found");
    while (1)
      ;
  }
  Serial.println("Sensor found");

 /*********************Sht4x*******************************/

  sht4x.begin(Wire);

}

void loop() {

LUX();
sht();

 if (lux >= 50 || humidity0 <= 80 ) {

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
  LowPower.powerDown(SLEEP_8S, ADC_OFF, BOD_OFF);
  
 }
}
/*****************************Intensité lumineuse en LUX****************************/

void LUX()
{

  lux = veml.readLux(VEML_LUX_AUTO);
Serial.println(lux,2);
}

/*****************************Valeur du capteur SHT41****************************/

void sht() {

   error0 = sht4x.measureHighPrecision(temperature0, humidity0);  
   Serial.print(humidity0,2); 
   Serial.println("humidité");
}



